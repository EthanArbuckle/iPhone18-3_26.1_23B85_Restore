void *sub_100653ED8(void (*a1)(char *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v44 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharingCircleSecret();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  __chkstk_darwin(v11 - 8);
  v49 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v14)
  {
    v40 = v10;
    v51 = _swiftEmptyArrayStorage;
    v42 = v7;
    sub_101124114(0, v14, 0);
    v16 = v42;
    v17 = -1 << *(a3 + 32);
    v47 = a3 + 64;
    v48 = v51;
    result = _HashTable.startBucket.getter();
    v18 = result;
    v19 = 0;
    v38 = v16 + 16;
    v39 = (v16 + 8);
    v35 = a3 + 72;
    v36 = v14;
    v37 = v6;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a3 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v47 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_24;
      }

      v46 = v19;
      v22 = *(a3 + 36);
      v23 = v40;
      (*(v16 + 16))(v40, *(a3 + 48) + *(v16 + 72) * v18, v6);
      v43(v23, &v50);
      if (v4)
      {
        (*v39)(v23, v6);
      }

      v45 = 0;
      (*v39)(v23, v6);
      v24 = v48;
      v51 = v48;
      v26 = v48[2];
      v25 = v48[3];
      if (v26 >= v25 >> 1)
      {
        sub_101124114(v25 > 1, v26 + 1, 1);
        v24 = v51;
      }

      v24[2] = v26 + 1;
      v27 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v48 = v24;
      result = sub_100654908(v49, v24 + v27 + *(v41 + 72) * v26, type metadata accessor for SharingCircleSecret);
      v20 = 1 << *(a3 + 32);
      if (v18 >= v20)
      {
        goto LABEL_25;
      }

      v28 = *(v47 + 8 * v21);
      if ((v28 & (1 << v18)) == 0)
      {
        goto LABEL_26;
      }

      if (v22 != *(a3 + 36))
      {
        goto LABEL_27;
      }

      v29 = v28 & (-2 << (v18 & 0x3F));
      if (v29)
      {
        v20 = __clz(__rbit64(v29)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v6 = v37;
      }

      else
      {
        v30 = v21 << 6;
        v31 = v21 + 1;
        v32 = (v35 + 8 * v21);
        v6 = v37;
        while (v31 < (v20 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_1000BB408(v18, v22, 0);
            v20 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_1000BB408(v18, v22, 0);
      }

LABEL_4:
      v4 = v45;
      v19 = v46 + 1;
      v18 = v20;
      v16 = v42;
      if (v46 + 1 == v36)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void *sub_1006542D8(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for CryptoKeys();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_101124D20(0, v11, 0);
    v12 = v22;
    v13 = *(type metadata accessor for TimeBasedKey() - 8);
    v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    while (1)
    {
      v19(v14, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_101124D20(v15 > 1, v16 + 1, 1);
        v12 = v22;
      }

      v12[2] = v16 + 1;
      sub_100654908(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for CryptoKeys);
      v14 += v18;
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_1006544D8()
{
  v2 = type metadata accessor for SharingCircleSecret();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for OwnerSharingCircle();
  (*(v8 + 16))(v11, v0 + *(v12 + 20), v7);
  v13 = *(v0 + *(v12 + 32));
  v24 = v11;

  v14 = sub_100653ED8(sub_1006549A4, v23, v13);
  if (v1)
  {

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v22 = v14;

    if (qword_101694560 != -1)
    {
      swift_once();
    }

    v15 = sub_1000076D4(v7, qword_10177A900);
    sub_100D6A5C4(v15, v11, v6);
    sub_1000BC4D4(&qword_101698D88, &qword_101390910);
    v16 = *(v3 + 72);
    v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10138B360;
    v19 = (v18 + v17);
    sub_100D6ACB0(v11, v19);
    sub_100D6AFF8(v11, &v19[v16]);
    sub_1006548A4(v6, &v19[2 * v16]);
    v25 = v22;
    sub_1003980F8(v18);
    sub_100654848(v6);
    v13 = v25;
    (*(v8 + 8))(v11, v7);
  }

  return v13;
}

uint64_t sub_100654848(uint64_t a1)
{
  v2 = type metadata accessor for SharingCircleSecret();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006548A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingCircleSecret();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100654908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100654970@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  result = sub_100D6A5C4(a1, *(v3 + 16), a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1006549BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100654A7C, v1, 0);
}

uint64_t sub_100654A7C()
{
  (*(v0[5] + 16))(v0[6], v0[3] + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_tempUniqueIdentifier, v0[4]);
  if (MKBGetDeviceLockState() == 2 || (v1 = MKBGetDeviceLockState(), v2 = 0, v1 == 1))
  {
    v2 = 1;
  }

  v0[7] = v2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100654B5C;

  return daemon.getter();
}

uint64_t sub_100654B5C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100656334(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100656334(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100654D38;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100654D38(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v8 = *(v4 + 24);
    v9 = sub_100655184;
  }

  else
  {
    *(v4 + 96) = a1;
    v9 = sub_100654E90;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100654E90()
{
  v1 = *(*(v0 + 96) + 128);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100654F24;

  return sub_100A9A4DC();
}

uint64_t sub_100654F24(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_10065503C, v3, 0);
}

uint64_t sub_10065503C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  v8 = type metadata accessor for ProximityPairingInfo();
  v7[3] = v8;
  v7[4] = sub_100656334(&qword_1016A6DF0, type metadata accessor for ProximityPairingInfo);
  v9 = sub_1000280DC(v7);
  (*(v6 + 32))(v9, v3, v5);
  *(v9 + v8[5]) = 0;
  *(v9 + v8[6]) = 0;
  *(v9 + v8[7]) = v4;
  *(v9 + v8[8]) = xmmword_10138C660;
  *(v9 + v8[9]) = 2;
  *(v9 + v8[10]) = v1;
  *(v9 + v8[11]) = 1;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100655184()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t sub_100655204(uint64_t a1)
{
  swift_defaultActor_initialize();
  UUID.init()();
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPeripheral) = 0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryMetadata) = 1;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryProductInfo) = 1;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_pairingPolicyInformation) = -1;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryUserConfiguration) = 0;
  v3 = v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPairingConfiguration;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryDetails) = 0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessories) = a1;
  return v1;
}

uint64_t sub_1006552B4()
{
  v1 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_tempUniqueIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessories);

  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPeripheral);

  sub_10065637C(v0 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPairingConfiguration);
  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryDetails);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MultiDetectionPairingInfoStore()
{
  result = qword_1016A6BF0;
  if (!qword_1016A6BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006553D0()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1006554F8@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPeripheral;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_100655550(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPeripheral;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_100655608@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryMetadata;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_10065565C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryMetadata;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_10065570C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryProductInfo;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_100655760(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryProductInfo;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id sub_100655824@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_100655888(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_1006559A4()
{
  type metadata accessor for MultiDetectionPairingInfoStore();

  return PairingInfoStore.accessory.getter();
}

uint64_t sub_1006559F0()
{
  v1 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessories;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100655A38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessories;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100655AF0()
{
  v0 = type metadata accessor for MultiDetectionPairingInfoStore();
  v1 = sub_100656334(&qword_1016A6DE8, type metadata accessor for MultiDetectionPairingInfoStore);

  return TypedPairingInfoStore.productIDValue.getter(v0, v1);
}

uint64_t sub_100655B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = type metadata accessor for MultiDetectionPairingInfoStore();
  v4 = sub_100656334(&qword_1016A6DE8, type metadata accessor for MultiDetectionPairingInfoStore);

  return a3(v3, v4);
}

uint64_t sub_100655C44()
{
  v0 = type metadata accessor for MultiDetectionPairingInfoStore();
  v1 = sub_100656334(&qword_1016A6DE8, type metadata accessor for MultiDetectionPairingInfoStore);

  return TypedPairingInfoStore.pairingPolicyInformationValue.getter(v0, v1);
}

uint64_t sub_100655CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_1006549BC(a1);
}

uint64_t sub_100655D78()
{
  v1 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryDetails;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100655DC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryDetails;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100655F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for MultiDetectionPairingInfoStore();
  v11 = sub_100656334(&qword_1016A6DE8, type metadata accessor for MultiDetectionPairingInfoStore);
  return a6(a1, v10, a2, v11, a3);
}

unint64_t sub_1006560D0()
{
  result = qword_1016B7E40;
  if (!qword_1016B7E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016B7E40);
  }

  return result;
}

unint64_t sub_100656120()
{
  result = qword_1016A6DC8;
  if (!qword_1016A6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DC8);
  }

  return result;
}

unint64_t sub_1006561C0()
{
  result = qword_1016A6DD0;
  if (!qword_1016A6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DD0);
  }

  return result;
}

unint64_t sub_100656218()
{
  result = qword_1016A6DD8;
  if (!qword_1016A6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DD8);
  }

  return result;
}

unint64_t sub_100656270()
{
  result = qword_1016A6DE0;
  if (!qword_1016A6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DE0);
  }

  return result;
}

uint64_t sub_1006562C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A12E0, &qword_1013A51D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100656334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10065637C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A12E0, &qword_1013A51D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006563E4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B048);
  sub_1000076D4(v0, qword_10177B048);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100656488()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v0, qword_1016A6DF8);
  sub_1000076D4(v0, qword_1016A6DF8);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_1006564DC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A6E10);
  v1 = sub_1000076D4(v0, qword_1016A6E10);
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B048);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006565A4()
{
  v1[3] = v0;
  v2 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for CentralManager.Options();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10065669C, 0, 0);
}

uint64_t sub_10065669C()
{
  v1 = *(*(v0 + 24) + 32);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1006566C0, v1, 0);
}

uint64_t sub_1006566C0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = v0[4];
    v5 = *(v1 + 112);

    v6 = v0[1];

    return v6(v3);
  }

  else
  {
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[4];
    sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
    v11 = *(v9 + 72);
    v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10138B360;
    static CentralManager.Options.enableFindMy.getter();
    static CentralManager.Options.receiveSystemEvents.getter();
    static CentralManager.Options.receiveIncomingObjectDiscoveryData.getter();
    v0[2] = v13;
    sub_100003E44(&unk_1016C1210, &type metadata accessor for CentralManager.Options);
    sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
    sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for CentralManager();
    (*(v9 + 16))(v10, v2, v8);
    (*(v9 + 56))(v10, 0, 1, v8);
    v14 = async function pointer to CentralManager.__allocating_init(options:)[1];
    v15 = swift_task_alloc();
    v0[9] = v15;
    *v15 = v0;
    v15[1] = sub_100656948;
    v16 = v0[4];

    return CentralManager.__allocating_init(options:)(v16);
  }
}

uint64_t sub_100656948(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100656A60, v3, 0);
}

uint64_t sub_100656A60()
{
  v1 = v0[10];
  v2 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v3 = *(v2 + 112);
  *(v2 + 112) = v1;

  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[4];

  v7 = v0[1];

  return v7(v4);
}

uint64_t sub_100657074(uint64_t a1, void (*a2)(uint64_t, uint64_t), void *a3, void *a4)
{
  v5 = v4;
  v237 = a4;
  v244 = a2;
  v242 = a1;
  v233 = type metadata accessor for DispatchTime();
  v232 = *(v233 - 8);
  v7 = *(v232 + 64);
  v8 = __chkstk_darwin(v233);
  v230 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v231 = &v220 - v10;
  v235 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(*(v235 - 8) + 64);
  __chkstk_darwin(v235);
  v236 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for UUID();
  v13 = *(v246 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v246);
  v238 = &v220 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v241 = &v220 - v18;
  v19 = __chkstk_darwin(v17);
  v223 = &v220 - v20;
  v21 = __chkstk_darwin(v19);
  v225 = &v220 - v22;
  v23 = __chkstk_darwin(v21);
  v228 = (&v220 - v24);
  v25 = __chkstk_darwin(v23);
  v224 = &v220 - v26;
  v27 = __chkstk_darwin(v25);
  v227 = &v220 - v28;
  __chkstk_darwin(v27);
  v30 = &v220 - v29;
  v234 = type metadata accessor for AccessoryCommand();
  v31 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v234);
  v33 = &v220 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchPredicate();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = (&v220 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v5[9];
  *v38 = v39;
  (*(v35 + 104))(v38, enum case for DispatchPredicate.onQueue(_:), v34);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  (*(v35 + 8))(v38, v34);
  if (v39)
  {
    if (qword_101694838 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_121;
  }

  while (1)
  {
    __break(1u);
LABEL_121:
    swift_once();
LABEL_3:
    v226 = type metadata accessor for Logger();
    v41 = sub_1000076D4(v226, qword_1016A6E10);
    sub_10067B9CC(v242, v33, type metadata accessor for AccessoryCommand);
    v42 = a3;
    v239 = v41;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    v45 = os_log_type_enabled(v43, v44);
    p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
    v240 = v13;
    v245 = v30;
    v229 = v40;
    v243 = v42;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      aBlock = v222;
      *v47 = 136446466;
      v48 = [*&v243[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v49 = v13;
      v50 = v246;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v54 = v49;
      v30 = v245;
      (*(v54 + 8))(v245, v50);
      v55 = sub_1000136BC(v51, v53, &aBlock);

      *(v47 + 4) = v55;
      *(v47 + 12) = 2082;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      sub_10067BA34(v33, type metadata accessor for AccessoryCommand);
      v59 = sub_1000136BC(v56, v58, &aBlock);
      p_weak_ivar_lyt = (&ShareStopUseCase + 56);

      *(v47 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v43, v44, "Cleaning up for peripheral %{public}s CommandId %{public}s", v47, 0x16u);
      swift_arrayDestroy();

      v42 = v243;
    }

    else
    {

      sub_10067BA34(v33, type metadata accessor for AccessoryCommand);
    }

    v60 = v241;
    v61 = v5[12];
    v5[12] = 0;

    if (v237)
    {
      v63 = v237[2];
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      aBlock = 13;
      v249 = 0u;
      v250 = 0u;
      LOBYTE(v251) = 11;
      sub_100A5A2B8(&aBlock);
      v62 = sub_100101B04(&aBlock);
    }

    v64 = v240;
    v65 = *(*(v5[7] + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
    __chkstk_darwin(v62);
    *(&v220 - 2) = v66;
    *(&v220 - 1) = v42;
    Lock.callAsFunction<A>(_:)();
    if (!v244)
    {
      goto LABEL_34;
    }

    v67 = *&v42[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

    v68 = [v67 p_weak_ivar_lyt[388]];
    v69 = v227;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = v69;
    swift_beginAccess();
    v71 = v5[13];
    if (!*(v71 + 16))
    {
      goto LABEL_17;
    }

    v72 = v5[13];

    v73 = sub_1000210EC(v70);
    if ((v74 & 1) == 0)
    {

LABEL_17:
      v227 = *(v64 + 8);
      (v227)(v70, v246);
      goto LABEL_25;
    }

    v222 = v67;
    v237 = v5;
    v75 = v70;
    v76 = *(*(v71 + 56) + 8 * v73);
    v77 = *(v64 + 8);

    v227 = v77;
    (v77)(v75, v246);

    v257 = v76;
    sub_1010F798C();

    if (qword_101694828 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v226, qword_10177B048);
    v78 = v257;
    swift_bridgeObjectRetain_n();
    v79 = v42;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();

    v82 = os_log_type_enabled(v80, v81);
    v67 = v222;
    if (v82)
    {
      v83 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      aBlock = v221;
      *v83 = 136315394;
      v84 = [v67 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v85 = v246;
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      (v227)(v30, v85);
      v89 = sub_1000136BC(v86, v88, &aBlock);

      *(v83 + 4) = v89;
      *(v83 + 12) = 2048;
      v90 = v78 & 0xC000000000000001;
      if ((v78 & 0xC000000000000001) != 0)
      {
        v91 = __CocoaSet.count.getter();
      }

      else
      {
        v91 = *(v78 + 16);
      }

      v5 = v237;

      *(v83 + 14) = v91;

      _os_log_impl(&_mh_execute_header, v80, v81, "Peripheral %s. commandSubscriptions count %ld", v83, 0x16u);
      sub_100007BAC(v221);

      v64 = v240;
      v30 = v245;
      v60 = v241;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v90 = v78 & 0xC000000000000001;
      v5 = v237;
    }

    v92 = [v67 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v243;
    if (!v90)
    {
      p_weak_ivar_lyt = (&ShareStopUseCase + 56);
      if (*(v78 + 16))
      {
        goto LABEL_24;
      }

LABEL_23:

      v78 = 0;
      goto LABEL_24;
    }

    p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_23;
    }

LABEL_24:
    swift_beginAccess();
    sub_1001DF6E4(v78, v224);
    swift_endAccess();
LABEL_25:
    v93 = [v67 p_weak_ivar_lyt[388]];
    v94 = v228;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v95 = v94;
    swift_beginAccess();
    v96 = v5[11];
    if (!*(v96 + 16))
    {
      goto LABEL_33;
    }

    v97 = v5[11];

    v98 = sub_1000210EC(v95);
    if ((v99 & 1) == 0)
    {

LABEL_33:

      (v227)(v95, v246);
      goto LABEL_34;
    }

    v222 = v67;
    v100 = v95;
    v101 = *(*(v96 + 56) + 8 * v98);

    v237 = (v64 + 8);
    (v227)(v100, v246);

    v257 = v101;
    sub_1010F798C();

    if (qword_101694828 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v226, qword_10177B048);
    v102 = v257;
    swift_bridgeObjectRetain_n();
    v103 = v42;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();

    v106 = os_log_type_enabled(v104, v105);
    v107 = v222;
    if (v106)
    {
      v108 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      aBlock = v228;
      *v108 = 136315394;
      v109 = [v107 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v110 = v246;
      v111 = dispatch thunk of CustomStringConvertible.description.getter();
      v113 = v112;
      (v227)(v30, v110);
      v114 = sub_1000136BC(v111, v113, &aBlock);

      *(v108 + 4) = v114;
      *(v108 + 12) = 2048;
      v115 = v102 & 0xC000000000000001;
      v116 = (v102 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v102 + 16);

      *(v108 + 14) = v116;

      _os_log_impl(&_mh_execute_header, v104, v105, "Peripheral %s. notifySubscriptions count %ld", v108, 0x16u);
      sub_100007BAC(v228);

      v64 = v240;
      v30 = v245;
      v60 = v241;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v115 = v102 & 0xC000000000000001;
    }

    v209 = [v107 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v243;
    if (v115)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_108;
      }
    }

    else if (!*(v102 + 16))
    {
LABEL_108:
      v210 = 0;
      goto LABEL_109;
    }

    v210 = v102;
LABEL_109:
    swift_beginAccess();
    sub_1001DF6E4(v210, v225);
    swift_endAccess();
    if (v115)
    {
      v211 = __CocoaSet.count.getter();

      p_weak_ivar_lyt = (&ShareStopUseCase + 56);
      if (!v211)
      {
        goto LABEL_34;
      }
    }

    else
    {

      v212 = *(v102 + 16);

      p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
      if (!v212)
      {
        goto LABEL_34;
      }
    }

    v213 = [v107 p_weak_ivar_lyt[388]];
    v214 = v223;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v215 = v5[13];
    if (*(v215 + 16))
    {
      v216 = v5[13];

      v217 = sub_1000210EC(v214);
      if (v218)
      {
        v219 = *(*(v215 + 56) + 8 * v217);

        (v227)(v214, v246);
      }
    }

    (v227)(v214, v246);
LABEL_34:
    v117 = *&v42[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
    v118 = [v117 p_weak_ivar_lyt[388]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v119 = v5[13];
    v120 = *(v119 + 16);
    v33 = v238;
    v241 = v117;
    if (!v120)
    {
      goto LABEL_40;
    }

    v121 = sub_1000210EC(v60);
    if ((v122 & 1) == 0)
    {

LABEL_40:
      v244 = *(v64 + 8);
      v244(v60, v246);
      goto LABEL_64;
    }

    v237 = v5;
    v13 = *(*(v119 + 56) + 8 * v121);
    v123 = *(v64 + 8);

    v244 = v123;
    v123(v60, v246);

    v124 = v42;

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      aBlock = v128;
      *v127 = 134218242;
      v228 = (v13 & 0xC000000000000001);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v129 = __CocoaSet.count.getter();
      }

      else
      {
        v129 = *(v13 + 16);
      }

      *(v127 + 4) = v129;

      *(v127 + 12) = 2080;
      v131 = [v241 identifier];
      v132 = v245;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v133 = v246;
      v134 = dispatch thunk of CustomStringConvertible.description.getter();
      v136 = v135;
      v244(v132, v133);
      v137 = sub_1000136BC(v134, v136, &aBlock);

      *(v127 + 14) = v137;
      _os_log_impl(&_mh_execute_header, v125, v126, "Cancelling command subscriptions[%ld] for peripheral %s", v127, 0x16u);
      sub_100007BAC(v128);

      if (v228)
      {
LABEL_42:
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCancellable();
        sub_100003E44(&qword_1016BC180, &type metadata accessor for AnyCancellable);
        Set.Iterator.init(_cocoa:)();
        v30 = v252;
        a3 = v253;
        v130 = v254;
        v5 = v255;
        v33 = v256;
        goto LABEL_52;
      }
    }

    else
    {

      if ((v13 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }
    }

    v138 = -1 << *(v13 + 32);
    a3 = (v13 + 56);
    v130 = ~v138;
    v139 = -v138;
    v140 = v139 < 64 ? ~(-1 << v139) : -1;
    v33 = (v140 & *(v13 + 56));

    v5 = 0;
    v30 = v13;
LABEL_52:
    if (v30 < 0)
    {
      break;
    }

LABEL_53:
    v141 = v5;
    v142 = v33;
    v40 = v5;
    if (v33)
    {
LABEL_57:
      v143 = (v142 - 1) & v142;
      v144 = *(*(v30 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v142)))));

      if (v144)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }

    while (1)
    {
      v40 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        break;
      }

      if (v40 >= ((v130 + 64) >> 6))
      {
        goto LABEL_63;
      }

      v142 = *(a3 + v40);
      v141 = (v141 + 1);
      if (v142)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
  }

  while (1)
  {
    v145 = __CocoaSet.Iterator.next()();
    if (!v145)
    {
      break;
    }

    v257 = v145;
    type metadata accessor for AnyCancellable();
    swift_dynamicCast();
    v40 = v5;
    v143 = v33;
    if (!aBlock)
    {
      break;
    }

LABEL_61:
    AnyCancellable.cancel()();

    v5 = v40;
    v33 = v143;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_53;
    }
  }

LABEL_63:
  sub_1000128F8();

  v5 = v237;
  v30 = v245;
  p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
  v42 = v243;
  v33 = v238;
  v117 = v241;
LABEL_64:
  v146 = [v117 p_weak_ivar_lyt[388]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v147 = v5[11];
  if (!*(v147 + 16))
  {
    goto LABEL_70;
  }

  v148 = v5[11];

  v149 = sub_1000210EC(v33);
  if (v150)
  {
    v237 = v5;
    v13 = *(*(v147 + 56) + 8 * v149);

    v244(v33, v246);

    v151 = v42;

    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock = v155;
      *v154 = 134218242;
      v238 = (v13 & 0xC000000000000001);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v156 = __CocoaSet.count.getter();
      }

      else
      {
        v156 = *(v13 + 16);
      }

      *(v154 + 4) = v156;

      *(v154 + 12) = 2080;
      v159 = [v241 identifier];
      v160 = v245;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v33 = v246;
      v161 = dispatch thunk of CustomStringConvertible.description.getter();
      v163 = v162;
      v244(v160, v33);
      v164 = sub_1000136BC(v161, v163, &aBlock);

      *(v154 + 14) = v164;
      _os_log_impl(&_mh_execute_header, v152, v153, "Cancelling notify subscriptions[%ld] for peripheral %s", v154, 0x16u);
      sub_100007BAC(v155);

      if (!v238)
      {
LABEL_75:
        v165 = -1 << *(v13 + 32);
        a3 = (v13 + 56);
        v157 = ~v165;
        v166 = -v165;
        if (v166 < 64)
        {
          v167 = ~(-1 << v166);
        }

        else
        {
          v167 = -1;
        }

        v158 = (v167 & *(v13 + 56));

        v5 = 0;
        v30 = v13;
LABEL_79:
        if (v30 < 0)
        {
          while (1)
          {
            v171 = __CocoaSet.Iterator.next()();
            if (!v171)
            {
              break;
            }

            v247 = v171;
            type metadata accessor for AnyCancellable();
            swift_dynamicCast();
            v40 = v5;
            v33 = v158;
            if (!aBlock)
            {
              break;
            }

LABEL_88:
            AnyCancellable.cancel()();

            v5 = v40;
            v158 = v33;
            if ((v30 & 0x8000000000000000) == 0)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
LABEL_80:
          v168 = v5;
          v169 = v158;
          v40 = v5;
          if (!v158)
          {
            do
            {
              v40 = v168 + 1;
              if (__OFADD__(v168, 1))
              {
                goto LABEL_119;
              }

              if (v40 >= ((v157 + 64) >> 6))
              {
                goto LABEL_90;
              }

              v169 = *(a3 + v40);
              v168 = (v168 + 1);
            }

            while (!v169);
          }

          v33 = ((v169 - 1) & v169);
          v170 = *(*(v30 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v169)))));

          if (v170)
          {
            goto LABEL_88;
          }
        }

LABEL_90:
        sub_1000128F8();

        v5 = v237;
        v30 = v245;
        p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
        v42 = v243;
        v117 = v241;
        goto LABEL_91;
      }
    }

    else
    {

      if ((v13 & 0xC000000000000001) == 0)
      {
        goto LABEL_75;
      }
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_100003E44(&qword_1016BC180, &type metadata accessor for AnyCancellable);
    Set.Iterator.init(_cocoa:)();
    v30 = v257;
    a3 = v258;
    v157 = v259;
    v5 = v260;
    v158 = v261;
    goto LABEL_79;
  }

LABEL_70:
  v244(v33, v246);
LABEL_91:
  v172 = [v117 p_weak_ivar_lyt[388]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DF6E4(0, v30);
  swift_endAccess();
  v173 = [v117 p_weak_ivar_lyt[388]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DF6E4(0, v30);
  swift_endAccess();
  v174 = v42;
  v175 = v117;
  v176 = Logger.logObject.getter();
  v177 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    aBlock = v179;
    *v178 = 136446210;
    v180 = [v175 p_weak_ivar_lyt[388]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v181 = v246;
    v182 = dispatch thunk of CustomStringConvertible.description.getter();
    v184 = v183;
    v244(v245, v181);
    v185 = sub_1000136BC(v182, v184, &aBlock);

    *(v178 + 4) = v185;
    _os_log_impl(&_mh_execute_header, v176, v177, "No more notify subscriptions for peripheral %{public}s. Scheduling disconnection...", v178, 0xCu);
    sub_100007BAC(v179);
    v30 = v245;
  }

  v186 = swift_allocObject();
  swift_weakInit();
  v187 = swift_allocObject();
  *(v187 + 16) = v186;
  *(v187 + 24) = v174;
  *(&v250 + 1) = sub_100680DA0;
  v251 = v187;
  aBlock = _NSConcreteStackBlock;
  *&v249 = 1107296256;
  *(&v249 + 1) = sub_100006684;
  *&v250 = &unk_10162D5E0;
  _Block_copy(&aBlock);
  v247 = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  v188 = v174;

  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v189 = type metadata accessor for DispatchWorkItem();
  v190 = *(v189 + 48);
  v191 = *(v189 + 52);
  swift_allocObject();
  v192 = DispatchWorkItem.init(flags:block:)();

  v193 = (v242 + *(v234 + 24));
  v194 = (v193[4] >> 59) & 6 | ((v193[1] & 0x2000000000000000) != 0);
  if ((v194 - 1) >= 4)
  {
    if (v194)
    {
      v206 = *v193;
      v207 = v193[5];
      v208 = v193[2] | v193[3];
      goto LABEL_94;
    }

    if (qword_101694828 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v226, qword_10177B048);
    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      *v205 = 0;
      _os_log_impl(&_mh_execute_header, v203, v204, "command requiresImmediateDisconnection: Disconnecting now.", v205, 2u);
    }

    dispatch thunk of DispatchWorkItem.perform()();
  }

  else
  {
LABEL_94:
    v195 = [v241 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();

    v196 = v5[14];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v247 = v5[14];
    v5[14] = 0x8000000000000000;
    sub_100FFF1D8(v192, v30, isUniquelyReferenced_nonNull_native);
    v244(v30, v246);
    v5[14] = v247;
    swift_endAccess();
    v198 = v230;
    static DispatchTime.now()();
    v199 = v231;
    + infix(_:_:)();
    v200 = *(v232 + 8);
    v201 = v233;
    v200(v198, v233);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v200)(v199, v201);
  }
}

uint64_t sub_1006591FC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177B048);
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136446210;
      v15 = [*&v11[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v4 + 8))(v7, v3);
      v19 = sub_1000136BC(v16, v18, &v26);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Disconnecting from %{public}s", v14, 0xCu);
      sub_100007BAC(v25);
    }

    v20 = *(*(v9 + 56) + 24);

    v21 = sub_10131FAE0(v11);

    v26 = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v11;
    *(v22 + 24) = v9;
    v23 = v11;

    sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
    Publisher.oneshot(_:)();
  }

  return result;
}

uint64_t sub_10065956C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  __chkstk_darwin(v6);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, &aBlock, &unk_1016A6150, &unk_10139DB30);
  v52 = a2;
  if (v58[25])
  {
    v18 = a3;
    v59 = aBlock;
    v60[0] = *v58;
    *(v60 + 9) = *&v58[9];
    sub_100101B58();
    swift_willThrowTypedImpl();
    swift_allocError();
    v19 = *(v60 + 9);
    v20 = v60[0];
    *v21 = v59;
    v21[1] = v20;
    *(v21 + 25) = v19;
    swift_errorRetain();
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177B048);
    v23 = a2;
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543618;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *(v26 + 12) = 2114;
      *(v26 + 14) = v23;
      *v27 = v28;
      v27[1] = v23;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Disconnection failure: %{public}@ %{public}@!", v26, 0x16u);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();
    }

    else
    {
    }

    a3 = v18;
  }

  else
  {
    v51 = v6;
    sub_10000B3A8(&aBlock, &unk_1016A6150, &unk_10139DB30);
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177B048);
    v31 = a2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = a3;
      v36 = v35;
      *&aBlock = v35;
      *v34 = 136446210;
      v37 = [*&v31[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v14 + 8))(v17, v13);
      v41 = sub_1000136BC(v38, v40, &aBlock);

      *(v34 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Disconnected from %{public}s", v34, 0xCu);
      sub_100007BAC(v36);
      a3 = v50;
    }

    v6 = v51;
  }

  v42 = *(a3 + 72);
  v43 = swift_allocObject();
  v44 = v52;
  *(v43 + 16) = a3;
  *(v43 + 24) = v44;
  *&v58[16] = sub_100680DB0;
  *&v58[24] = v43;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *v58 = sub_100006684;
  *&v58[8] = &unk_10162D658;
  v45 = _Block_copy(&aBlock);
  v46 = v44;

  static DispatchQoS.unspecified.getter();
  *&v59 = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v47 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);
  (*(v56 + 8))(v47, v6);
  (*(v53 + 8))(v12, v54);
}

uint64_t sub_100659C88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(a2 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DF908(0, v6);
  return swift_endAccess();
}

uint64_t sub_100659D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for MACAddress();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_100659E84, 0, 0);
}

uint64_t sub_100659E84()
{
  v92 = v0;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B048);
  v88 = *(v3 + 16);
  v88(v1, v6, v2);
  sub_100017D5C(v5, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100016590(v5, v4);
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  v13 = v0[9];
  v12 = v0[10];
  if (v10)
  {
    v86 = v0[5];
    v87 = v0[6];
    v14 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v14 = 136446723;
    sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress);
    v85 = v9;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000136BC(v15, v17, v91);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    v20 = Data.hexString.getter();
    v22 = sub_1000136BC(v20, v21, v91);

    *(v14 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v8, v85, "Connect using %{public}s and LTK %{private,mask.hash}s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v0[15] = v18;
  v23 = v0[9];
  v24 = v0[10];
  v25 = v0[8];
  v26 = v0[4];
  MACAddress.data.getter();
  MACAddress.type.getter();
  MACAddress.init(addressToSanitize:type:)();
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    v27 = v0[11];
    v28 = v0[9];
    v29 = v0[4];
    sub_10000B3A8(v0[8], &qword_1016A40D0, &unk_10138BE70);
    v88(v27, v29, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[10];
    v34 = v0[11];
    v35 = v0[9];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v91[0] = v37;
      *v36 = 136446210;
      sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v18;
      v40 = v38;
      v42 = v41;
      v39(v34, v35);
      v43 = sub_1000136BC(v40, v42, v91);

      *(v36 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "Invalid MAC address %{public}s", v36, 0xCu);
      sub_100007BAC(v37);
    }

    else
    {

      v18(v34, v35);
    }

    goto LABEL_19;
  }

  v44 = v0[13];
  v45 = v0[7];
  (*(v0[10] + 32))(v44, v0[8], v0[9]);
  v46 = *(*(v45 + 56) + 24);
  v47 = *(v46 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  v48 = swift_task_alloc();
  *(v48 + 16) = v44;
  *(v48 + 24) = v46;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();

  v49 = v0[2];
  v0[16] = v49;
  if (!v49)
  {
    v88(v0[12], v0[4], v0[9]);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[12];
    v68 = v0[13];
    v70 = v0[9];
    v69 = v0[10];
    if (v66)
    {
      v90 = v0[13];
      v71 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v91[0] = v89;
      *v71 = 136446210;
      sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v18(v67, v70);
      v75 = sub_1000136BC(v72, v74, v91);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v64, v65, "No peripheral for MAC address %{public}s", v71, 0xCu);
      sub_100007BAC(v89);

      v18(v90, v70);
    }

    else
    {

      v18(v67, v70);
      v18(v68, v70);
    }

LABEL_19:
    v76 = v0[3];
    v77 = type metadata accessor for OwnerCommandManager.Error();
    swift_storeEnumTagMultiPayload();
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
    v79 = v0[13];
    v78 = v0[14];
    v81 = v0[11];
    v80 = v0[12];
    v82 = v0[8];

    v83 = v0[1];

    return v83();
  }

  v50 = v49;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138543362;
    *(v53 + 4) = v50;
    *v54 = v49;
    v55 = v50;
    _os_log_impl(&_mh_execute_header, v51, v52, "Peripheral to connect: %{public}@", v53, 0xCu);
    sub_10000B3A8(v54, &qword_10169BB30, &unk_10138B3C0);
  }

  v57 = v0[6];
  v56 = v0[7];
  v58 = v0[5];

  v59 = swift_task_alloc();
  v0[17] = v59;
  v59[2] = v56;
  v59[3] = v50;
  v59[4] = v58;
  v59[5] = v57;
  v60 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v61 = swift_task_alloc();
  v0[18] = v61;
  v62 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  *v61 = v0;
  v61[1] = sub_10065A7AC;
  v63 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v63, 0, 0, 0xD00000000000001BLL, 0x800000010135C5A0, sub_100680BE4, v59, v62);
}

uint64_t sub_10065A7AC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_10065A8C4, 0, 0);
}

uint64_t sub_10065A8C4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  v1(v2, v3);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 64);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10065AA20(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v22 = a6;
  v24 = a1;
  v21 = sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v21);
  v12 = &v21 - v11;
  v23 = sub_1000BC4D4(&qword_1016A7268, &unk_1013B6060);
  v25 = *(v23 - 8);
  v13 = *(v25 + 64);
  __chkstk_darwin(v23);
  v15 = &v21 - v14;
  v26 = sub_100664888(a3, a4, a5);
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  type metadata accessor for OwnerCommandManager.Error();
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
  Publisher.mapError<A>(_:)();

  v16 = v21;
  (*(v9 + 16))(v12, v22, v21);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  (*(v9 + 32))(v18 + v17, v12, v16);
  sub_1000041A4(&qword_1016A7270, &qword_1016A7268, &unk_1013B6060);

  v19 = v23;
  Publisher.oneshot(_:)();

  return (*(v25 + 8))(v15, v19);
}

uint64_t sub_10065AD5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10065AE54, 0, 0);
}

uint64_t sub_10065AE54()
{
  v39 = v0;
  v1 = v0[3];
  if (!*(v1 + 184))
  {
    goto LABEL_4;
  }

  v2 = v0[7];
  v3 = v0[2];
  v4 = *(v1 + 184);

  sub_100AA33AC(v3, v2);

  v5 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v5 - 8) + 48))(v2, 1, v5) == 1)
  {
    sub_10000B3A8(v0[7], &unk_1016A9A20, &qword_10138B280);
LABEL_4:
    v6 = 0;
    goto LABEL_12;
  }

  v7 = v0[7];
  v8 = sub_100D60CD0();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v14 = v0[7];

  sub_10067BA34(v14, type metadata accessor for OwnedBeaconRecord);
LABEL_12:
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v15 = v0[5];
  v16 = v0[6];
  v17 = v0[4];
  v18 = v0[2];
  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177B048);
  (*(v15 + 16))(v16, v18, v17);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[5];
  v24 = v0[6];
  v25 = v0[4];
  if (v22)
  {
    v26 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v26 = 141558531;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v23 + 8))(v24, v25);
    v30 = sub_1000136BC(v27, v29, &v38);

    *(v26 + 14) = v30;
    *(v26 + 22) = 1024;
    *(v26 + 24) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "Read TX Power for %{private,mask.hash}s. isHELE: %{BOOL}d", v26, 0x1Cu);
    sub_100007BAC(v37);

    if ((v6 & 1) == 0)
    {
LABEL_16:
      v31 = swift_task_alloc();
      v0[9] = v31;
      *v31 = v0;
      v31[1] = sub_10065B3DC;
      v32 = v0[2];

      return sub_10067C7A0(v32);
    }
  }

  else
  {

    (*(v23 + 8))(v24, v25);
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v34 = swift_task_alloc();
  v0[8] = v34;
  *v34 = v0;
  v34[1] = sub_10065B294;
  v35 = v0[2];
  v36 = v0[3];

  return sub_10065B524(v35);
}

uint64_t sub_10065B294(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  v7 = *(v4 + 56);
  v8 = *(v4 + 48);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_10065B3DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  v7 = *(v4 + 56);
  v8 = *(v4 + 48);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_10065B524(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for AccessoryCommand();
  v2[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10065B670, 0, 0);
}

uint64_t sub_10065B670()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  (*(v5 + 56))(v2, 1, 1, v4);
  (*(v5 + 16))(v3, v6, v4);
  sub_1000D2A70(v2, v1, &qword_1016980D0, &unk_10138F3B0);
  v7 = *(v5 + 48);
  v8 = v7(v1, 1, v4);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  if (v8 == 1)
  {
    v12 = v0[5];
    v13 = v0[7];
    UUID.init()();
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    if (v7(v10, 1, v12) != 1)
    {
      sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v14 = v0[5];
    v15 = v0[6];
    sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
    (*(v15 + 32))(v11, v10, v14);
  }

  v16 = v0[13];
  v17 = v0[11];
  v18 = v0[8];
  v19 = v0[5];
  v20 = *(v0[6] + 32);
  v26 = *(v0 + 3);
  v20(v16, v0[7], v19);
  v20(v16 + v17[5], v18, v19);
  v21 = v16 + v17[6];
  *v21 = xmmword_1013B5E80;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = xmmword_10139BF70;
  *(v16 + v17[7]) = 1;
  *(v16 + v17[8]) = 1;
  v22 = swift_task_alloc();
  v0[14] = v22;
  v22[1] = vextq_s8(v26, v26, 8uLL);
  v22[2].i64[0] = v16;
  v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  v0[15] = v24;
  *v24 = v0;
  v24[1] = sub_10065B938;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x800000010135C580, sub_100680A8C, v22, &type metadata for Int);
}

uint64_t sub_10065B938()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_10065BCBC;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_10065BA54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10065BA54()
{
  v23 = v0;
  v1 = v0[2];
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v2 = v0[13];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B048);
  sub_10067B9CC(v2, v3, type metadata accessor for AccessoryCommand);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 134218242;
    *(v9 + 4) = v1;
    *(v9 + 12) = 2080;
    v11 = sub_1010C00BC(v10);
    v13 = v12;
    sub_10067BA34(v8, type metadata accessor for AccessoryCommand);
    v14 = sub_1000136BC(v11, v13, &v22);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Read TX Power HELE: %ld. Command %s", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_10067BA34(v8, type metadata accessor for AccessoryCommand);
  }

  v15 = v0[12];
  v17 = v0[9];
  v16 = v0[10];
  v19 = v0[7];
  v18 = v0[8];
  sub_10067BA34(v0[13], type metadata accessor for AccessoryCommand);

  v20 = v0[1];

  return v20(v1);
}

uint64_t sub_10065BCBC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  sub_10067BA34(v2, type metadata accessor for AccessoryCommand);

  v8 = v0[1];
  v9 = v0[16];

  return v8();
}

uint64_t sub_10065BD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v7 = type metadata accessor for AccessoryCommand();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  v14 = sub_1000BC4D4(&qword_1016998F0, &qword_1013B60E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a3);
  v23 = sub_1000BC4D4(&qword_1016C3210, &qword_101392040);
  v24 = *(v23 - 8);
  (*(v24 + 16))(v17, a1, v23);
  (*(v24 + 56))(v17, 0, 1, v23);
  swift_beginAccess();
  sub_1001DFAC8(v17, v21);
  swift_endAccess();
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  sub_10067B9CC(v29, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryCommand);
  v26 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a2;
  sub_10067B810(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for AccessoryCommand);

  sub_100A838D4(0, 0, v13, &unk_1013B6230, v27);
}

uint64_t sub_10065C0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014650;

  return sub_10065D4FC(a5);
}

uint64_t sub_10065C190(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for MACAddress();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10065C2A4, 0, 0);
}

uint64_t sub_10065C2A4()
{
  v71 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  MACAddress.data.getter();
  MACAddress.type.getter();
  MACAddress.init(addressToSanitize:type:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[6], &qword_1016A40D0, &unk_10138BE70);
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    v8 = v0[4];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B048);
    (*(v6 + 16))(v5, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[7];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v70[0] = v17;
      *v16 = 136446210;
      sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v13 + 8))(v14, v15);
      v21 = sub_1000136BC(v18, v20, v70);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid MAC address %{public}s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    else
    {

      (*(v13 + 8))(v14, v15);
    }

LABEL_20:
    v60 = v0[3];
    v61 = type metadata accessor for OwnerCommandManager.Error();
    swift_storeEnumTagMultiPayload();
    (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    v63 = v0[10];
    v62 = v0[11];
    v64 = v0[9];
    v65 = v0[6];

    v66 = v0[1];

    return v66();
  }

  v22 = v0[11];
  v23 = v0[5];
  (*(v0[8] + 32))(v22, v0[6], v0[7]);
  v24 = *(*(v23 + 56) + 24);
  v25 = *(v24 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  v26 = swift_task_alloc();
  *(v26 + 16) = v22;
  *(v26 + 24) = v24;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();

  v27 = v0[2];
  v0[12] = v27;
  if (!v27)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v41 = v0[10];
    v42 = v0[7];
    v43 = v0[8];
    v44 = v0[4];
    v45 = type metadata accessor for Logger();
    sub_1000076D4(v45, qword_10177B048);
    (*(v43 + 16))(v41, v44, v42);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[10];
    v50 = v0[11];
    v52 = v0[7];
    v51 = v0[8];
    if (v48)
    {
      v69 = v0[11];
      v53 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70[0] = v68;
      *v53 = 136446210;
      sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v57 = *(v51 + 8);
      v57(v49, v52);
      v58 = sub_1000136BC(v54, v56, v70);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "No peripheral for MAC address %{public}s", v53, 0xCu);
      sub_100007BAC(v68);

      v57(v69, v52);
    }

    else
    {

      v59 = *(v51 + 8);
      v59(v49, v52);
      v59(v50, v52);
    }

    goto LABEL_20;
  }

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177B048);
  v29 = v27;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138543362;
    *(v32 + 4) = v29;
    *v33 = v27;
    v34 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "Peripheral to disconnect: %{public}@", v32, 0xCu);
    sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);
  }

  v35 = v0[5];

  v36 = swift_task_alloc();
  v0[13] = v36;
  *(v36 + 16) = v35;
  *(v36 + 24) = v29;
  v37 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v38 = swift_task_alloc();
  v0[14] = v38;
  v39 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  *v38 = v0;
  v38[1] = sub_10065CA48;
  v40 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v40, 0, 0, 0xD000000000000011, 0x800000010135C540, sub_100680A50, v36, v39);
}

uint64_t sub_10065CA48()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_10065CB60, 0, 0);
}

uint64_t sub_10065CB60()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10065CC9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v20 = a4;
  v22 = a1;
  v19 = sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v19);
  v9 = &v19 - v8;
  v21 = sub_1000BC4D4(&qword_1016A7268, &unk_1013B6060);
  v23 = *(v21 - 8);
  v10 = *(v23 + 64);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  v13 = *(*(a2 + 56) + 24);
  v24 = sub_10131FAE0(a3);
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  type metadata accessor for OwnerCommandManager.Error();
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
  Publisher.mapError<A>(_:)();

  v14 = v19;
  (*(v6 + 16))(v9, v20, v19);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  (*(v6 + 32))(v16 + v15, v9, v14);
  sub_1000041A4(&qword_1016A7270, &qword_1016A7268, &unk_1013B6060);

  v17 = v21;
  Publisher.oneshot(_:)();

  return (*(v23 + 8))(v12, v17);
}

void sub_10065CFD0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v39 = a4;
  v40 = a5;
  v42 = a3;
  v41 = type metadata accessor for OwnerCommandManager.Error();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v41);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v38 - v15;
  v17 = sub_1000BC4D4(&qword_1016A7278, &qword_1013B6070);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v38 - v19);
  Transaction.capture()();
  sub_1000D2A70(a1, v20, &qword_1016A7278, &qword_1013B6070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10067B810(v20, v12, type metadata accessor for OwnerCommandManager.Error);
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177B048);
    sub_10067B9CC(v12, v10, type metadata accessor for OwnerCommandManager.Error);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136446210;
      v26 = sub_100656B14();
      v28 = v27;
      sub_10067BA34(v10, type metadata accessor for OwnerCommandManager.Error);
      v29 = sub_1000136BC(v26, v28, &v43);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, v40, v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      sub_10067BA34(v10, type metadata accessor for OwnerCommandManager.Error);
    }

    sub_10067B9CC(v12, v16, type metadata accessor for OwnerCommandManager.Error);
    (*(v6 + 56))(v16, 0, 1, v41);
    sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
    CheckedContinuation.resume(returning:)();
    sub_10067BA34(v12, type metadata accessor for OwnerCommandManager.Error);
  }

  else
  {
    v30 = *v20;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177B048);
    v32 = v30;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, v39, v35, 0xCu);
      sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);
    }

    (*(v6 + 56))(v16, 1, 1, v41);
    sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10065D4FC(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = type metadata accessor for BinaryDecoder();
  v2[62] = v3;
  v4 = *(v3 - 8);
  v2[63] = v4;
  v5 = *(v4 + 64) + 15;
  v2[64] = swift_task_alloc();
  v6 = type metadata accessor for BinaryEncoder();
  v2[65] = v6;
  v7 = *(v6 - 8);
  v2[66] = v7;
  v8 = *(v7 + 64) + 15;
  v2[67] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[68] = v9;
  v10 = *(v9 - 8);
  v2[69] = v10;
  v11 = *(v10 + 64) + 15;
  v2[70] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[71] = v12;
  v13 = *(v12 - 8);
  v2[72] = v13;
  v14 = *(v13 + 64) + 15;
  v2[73] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v2[74] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v2[75] = swift_task_alloc();
  v17 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[76] = v17;
  v18 = *(v17 - 8);
  v2[77] = v18;
  v19 = *(v18 + 64) + 15;
  v2[78] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v2[79] = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v22 = type metadata accessor for CentralManager.State();
  v2[81] = v22;
  v23 = *(v22 - 8);
  v2[82] = v23;
  v24 = *(v23 + 64) + 15;
  v2[83] = swift_task_alloc();
  v25 = type metadata accessor for AccessoryCommand();
  v2[84] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v2[85] = swift_task_alloc();
  v27 = type metadata accessor for UUID();
  v2[86] = v27;
  v28 = *(v27 - 8);
  v2[87] = v28;
  v29 = *(v28 + 64) + 15;
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();

  return _swift_task_switch(sub_10065D954, 0, 0);
}

uint64_t sub_10065D954()
{
  v36 = v0;
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[60];
  v6 = *(v0[84] + 20);
  v7 = *(v3 + 16);
  v0[95] = v7;
  v0[96] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5 + v6, v4);
  v7(v2, v5, v4);
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v8 = v0[94];
  v9 = v0[92];
  v10 = v0[86];
  v11 = v0[85];
  v12 = v0[60];
  v13 = type metadata accessor for Logger();
  v0[97] = sub_1000076D4(v13, qword_10177B048);
  sub_10067B9CC(v12, v11, type metadata accessor for AccessoryCommand);
  v7(v9, v8, v10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[92];
  v18 = v0[87];
  v19 = v0[86];
  v20 = v0[85];
  if (v16)
  {
    v21 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v21 = 136446723;
    v22 = sub_1010C00BC(v34);
    v24 = v23;
    sub_10067BA34(v20, type metadata accessor for AccessoryCommand);
    v25 = sub_1000136BC(v22, v24, &v35);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2160;
    *(v21 + 14) = 1752392040;
    *(v21 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v18 + 8);
    v29(v17, v19);
    v30 = sub_1000136BC(v26, v28, &v35);

    *(v21 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v14, v15, "[FindMyBluetooth] Execute command %{public}s for beacon %{private,mask.hash}s", v21, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v18 + 8);
    v29(v17, v19);
    sub_10067BA34(v20, type metadata accessor for AccessoryCommand);
  }

  v0[98] = v29;
  v31 = swift_task_alloc();
  v0[99] = v31;
  *v31 = v0;
  v31[1] = sub_10065DCE4;
  v32 = v0[61];

  return sub_1006565A4();
}

uint64_t sub_10065DCE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 792);
  v7 = *v2;
  *(v3 + 800) = a1;
  *(v3 + 808) = v1;

  if (v1)
  {
    v5 = sub_100660B70;
  }

  else
  {
    v5 = sub_10065DDFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10065DDFC()
{
  (*(v0[82] + 104))(v0[83], enum case for CentralManager.State.poweredOn(_:), v0[81]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[102] = v2;
  v3 = type metadata accessor for CentralManager();
  v4 = sub_100003E44(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_10065DF10;
  v5 = v0[100];
  v6 = v0[83];

  return CentralManagerProtocol.await(state:)(v6, v3, v4);
}

uint64_t sub_10065DF10()
{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 824) = v0;

  (*(v2[82] + 8))(v2[83], v2[81]);
  if (v0)
  {
    v5 = sub_100660D14;
  }

  else
  {
    v5 = sub_10065E078;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10065E078()
{
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[87];
  v5 = v0[86];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v6 = *(v4 + 72);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[104] = v8;
  *(v8 + 16) = xmmword_101385D80;
  v2(v8 + v7, v3, v5);
  v9 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:) + 1);
  v13 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:));
  v10 = swift_task_alloc();
  v0[105] = v10;
  *v10 = v0;
  v10[1] = sub_10065E19C;
  v11 = v0[100];

  return v13(v8);
}

uint64_t sub_10065E19C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 840);
  v6 = *v2;
  *(v4 + 848) = a1;
  *(v4 + 856) = v1;

  v7 = *(v3 + 832);

  if (v1)
  {
    v8 = sub_100660EC4;
  }

  else
  {
    v8 = sub_10065E2DC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10065E2DC()
{
  v1 = v0[106];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v22 = v0[106];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v23 = v0[106];
    v24 = v0[98];
    v25 = v0[96];
    v26 = v0[95];
    v27 = v0[94];
    v50 = v0[93];
    v52 = v0[100];
    v28 = v0[87];
    v29 = v0[86];

    type metadata accessor for OwnerCommandManager.Error();
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    swift_allocError();
    v26(v30, v27, v29);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v24(v50, v29);
    v24(v27, v29);
    v31 = v0[94];
    v32 = v0[93];
    v33 = v0[92];
    v34 = v0[91];
    v35 = v0[90];
    v36 = v0[89];
    v37 = v0[88];
    v38 = v0[85];
    v39 = v0[83];
    v40 = v0[80];
    v44 = v0[79];
    v45 = v0[78];
    v46 = v0[75];
    v47 = v0[74];
    v48 = v0[73];
    v49 = v0[70];
    v51 = v0[67];
    v53 = v0[64];

    v41 = v0[1];

    return v41();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v42 = v0[106];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v43 = v0[106];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[106] + 32);
  }

  v0[108] = v3;
  v4 = v0[80];
  v54 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[60];

  sub_1010BF2CC(v4);
  v11 = type metadata accessor for ConnectUseCase();
  (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v12 = *(v6 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[56] = v14;
  sub_100003E44(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = type metadata accessor for LongTermKey();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v17 = type metadata accessor for Peripheral.Options();
  (*(*(v17 - 8) + 56))(v54, 0, 1, v17);
  v18 = *(&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + 1);
  v55 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
  v19 = swift_task_alloc();
  v0[109] = v19;
  *v19 = v0;
  v19[1] = sub_10065E860;
  v20 = v0[80];
  v21 = v0[79];

  return v55(v20, v21);
}

uint64_t sub_10065E860()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *v1;
  *(*v1 + 880) = v0;

  v5 = *(v2 + 640);
  sub_10000B3A8(*(v2 + 632), &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v6 = sub_100661074;
  }

  else
  {
    v6 = sub_10065E9D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10065E9D0()
{
  v53 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 776);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 864);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v52 = v7;
    *v6 = 136315138;
    *(v0 + 472) = v5;
    type metadata accessor for Peripheral();
    sub_100003E44(&qword_1016972D0, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v52);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connected to peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(v0 + 480);
  sub_1010BF57C((v0 + 128));
  v12 = *(v0 + 136);
  *(v0 + 888) = *(v0 + 128);
  *(v0 + 896) = v12;
  v13 = *(v0 + 160);
  *(v0 + 904) = v13;
  if ((~(v12 & v13) & 0x3000000000000000) != 0)
  {
    v38 = *(v0 + 584);
    *(v0 + 416) = *(v0 + 144);
    type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    v39 = *(&async function pointer to dispatch thunk of Peripheral.subscript.getter + 1);
    v51 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
    v40 = swift_task_alloc();
    *(v0 + 920) = v40;
    *v40 = v0;
    v40[1] = sub_10065EE1C;
    v41 = *(v0 + 864);
    v42 = *(v0 + 584);

    return v51(v42);
  }

  else
  {
    v14 = *(v0 + 776);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 864);
    v19 = *(v0 + 800);
    v20 = *(v0 + 752);
    v21 = *(v0 + 744);
    v22 = *(v0 + 696);
    v23 = *(v0 + 688);
    if (v17)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No command to execute. Calling completion.", v24, 2u);
    }

    v25 = *(v22 + 8);
    v25(v21, v23);
    v25(v20, v23);
    v26 = *(v0 + 752);
    v27 = *(v0 + 744);
    v28 = *(v0 + 736);
    v29 = *(v0 + 728);
    v30 = *(v0 + 720);
    v31 = *(v0 + 712);
    v32 = *(v0 + 704);
    v33 = *(v0 + 680);
    v34 = *(v0 + 664);
    v35 = *(v0 + 640);
    v43 = *(v0 + 632);
    v44 = *(v0 + 624);
    v45 = *(v0 + 600);
    v46 = *(v0 + 592);
    v47 = *(v0 + 584);
    v48 = *(v0 + 560);
    v49 = *(v0 + 536);
    v50 = *(v0 + 512);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_10065EE1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  v4[116] = a1;
  v4[117] = v1;

  (*(v3[72] + 8))(v3[73], v3[71]);
  if (v1)
  {
    v7 = sub_10066122C;
  }

  else
  {
    v7 = sub_10065EF90;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10065EF90()
{
  v1 = v0[70];
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = *(&async function pointer to dispatch thunk of Service.subscript.getter + 1);
  v7 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v3 = swift_task_alloc();
  v0[118] = v3;
  *v3 = v0;
  v3[1] = sub_10065F064;
  v4 = v0[116];
  v5 = v0[70];

  return v7(v5);
}

uint64_t sub_10065F064(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 944);
  v6 = *v2;
  v4[119] = a1;
  v4[120] = v1;

  v7 = v3[116];
  (*(v3[69] + 8))(v3[70], v3[68]);

  if (v1)
  {
    v8 = sub_100661400;
  }

  else
  {
    v8 = sub_10065F1F4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10065F1F4()
{
  v1 = *(v0 + 776);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy services and Config characteristic.", v4, 2u);
  }

  v5 = *(v0 + 960);
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  v8 = *(v0 + 896);
  v9 = *(v0 + 888);
  v10 = *(v0 + 536);

  BinaryEncoder.init()();
  *(v0 + 176) = v9;
  *(v0 + 184) = v8;
  *(v0 + 192) = *(v0 + 416);
  *(v0 + 208) = v7;
  *(v0 + 216) = v6;
  *(v0 + 968) = sub_10067C1D4();
  *(v0 + 976) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 984) = v11;
  if (v5)
  {
    v12 = *(v0 + 952);
    v13 = *(v0 + 864);
    v14 = *(v0 + 800);
    v15 = *(v0 + 752);
    v16 = *(v0 + 744);
    v17 = *(v0 + 696);
    v18 = *(v0 + 688);
    v19 = *(v0 + 536);
    v20 = *(v0 + 528);
    v21 = *(v0 + 520);

    (*(v20 + 8))(v19, v21);
    v22 = *(v17 + 8);
    v22(v16, v18);
    v22(v15, v18);
    sub_10000B3A8(v0 + 128, &qword_1016A72E8, &unk_1013B60D0);
    v23 = *(v0 + 752);
    v24 = *(v0 + 744);
    v25 = *(v0 + 736);
    v26 = *(v0 + 728);
    v27 = *(v0 + 720);
    v28 = *(v0 + 712);
    v29 = *(v0 + 704);
    v30 = *(v0 + 680);
    v31 = *(v0 + 664);
    v32 = *(v0 + 640);
    v38 = *(v0 + 632);
    v39 = *(v0 + 624);
    v40 = *(v0 + 600);
    v41 = *(v0 + 592);
    v42 = *(v0 + 584);
    v43 = *(v0 + 560);
    v44 = *(v0 + 536);
    v45 = *(v0 + 512);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v35 = *(&async function pointer to dispatch thunk of Characteristic.mtu.getter + 1);
    v46 = (&async function pointer to dispatch thunk of Characteristic.mtu.getter + async function pointer to dispatch thunk of Characteristic.mtu.getter);
    v36 = swift_task_alloc();
    *(v0 + 992) = v36;
    *v36 = v0;
    v36[1] = sub_10065F548;
    v37 = *(v0 + 952);

    return v46();
  }
}

uint64_t sub_10065F548(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 992);
  v6 = *v2;
  *(*v2 + 1000) = v1;

  if (v1)
  {
    v7 = sub_1006615D4;
  }

  else
  {
    *(v4 + 1008) = a1;
    v7 = sub_10065F670;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10065F670()
{
  v1 = v0[126];
  v2 = v0[123];
  v3 = v0[122];
  v4 = fragment(data:mtu:)();
  v0[127] = v4;
  v5 = v0[119];
  v6 = swift_allocObject();
  v0[128] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = async function pointer to withTimeout<A>(_:block:)[1];

  v8 = swift_task_alloc();
  v0[129] = v8;
  *v8 = v0;
  v8[1] = sub_10065F790;

  return withTimeout<A>(_:block:)(v0 + 54, 0x40AAD21B3B700000, 3, &unk_1013B6208, v6, &type metadata for Data);
}

uint64_t sub_10065F790()
{
  v2 = *v1;
  v3 = *(*v1 + 1032);
  v4 = *v1;
  v2[130] = v0;

  v5 = v2[128];
  if (v0)
  {
    v6 = v2[127];

    v7 = sub_1006617E8;
  }

  else
  {

    v7 = sub_10065F8D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10065F8D4()
{
  v186 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 776);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 864);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v185[0] = v9;
    *v8 = 136315138;
    *(v0 + 456) = v7;
    type metadata accessor for Peripheral();
    sub_100003E44(&qword_1016972D0, &type metadata accessor for Peripheral);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_1000136BC(v10, v11, v185);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Command successfully sent to: %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v13 = *(v0 + 1040);
  v14 = *(v0 + 512);
  BinaryDecoder.init()();
  v15 = sub_10067C180();
  BinaryDecoder.decode<A>(_:from:)();
  if (v13)
  {
    v16 = *(v0 + 1016);
    v17 = *(v0 + 984);
    v18 = v3;
    v19 = *(v0 + 976);
    v162 = *(v0 + 952);
    v167 = *(v0 + 864);
    v20 = *(v0 + 800);
    v176 = *(v0 + 744);
    v179 = *(v0 + 752);
    v21 = v4;
    v22 = *(v0 + 696);
    v23 = *(v0 + 688);
    v173 = *(v0 + 536);
    v24 = *(v0 + 528);
    v170 = *(v0 + 520);
    v25 = *(v0 + 504);
    v158 = *(v0 + 512);
    v26 = *(v0 + 496);
    sub_100016590(v21, v18);
    sub_100016590(v19, v17);
    sub_10000B3A8(v0 + 128, &qword_1016A72E8, &unk_1013B60D0);

    (*(v25 + 8))(v158, v26);
    (*(v24 + 8))(v173, v170);
    v27 = *(v22 + 8);
    v27(v176, v23);
    v27(v179, v23);
LABEL_13:
    v104 = *(v0 + 752);
    v105 = *(v0 + 744);
    v106 = *(v0 + 736);
    v107 = *(v0 + 728);
    v108 = *(v0 + 720);
    v109 = *(v0 + 712);
    v110 = *(v0 + 704);
    v111 = *(v0 + 680);
    v112 = *(v0 + 664);
    v113 = *(v0 + 640);
    v157 = *(v0 + 632);
    v161 = *(v0 + 624);
    v166 = *(v0 + 600);
    v169 = *(v0 + 592);
    v172 = *(v0 + 584);
    v175 = *(v0 + 560);
    v178 = *(v0 + 536);
    v181 = *(v0 + 512);

    v114 = *(v0 + 8);

    return v114();
  }

  v28 = *(v0 + 968);
  v180 = v3;
  v182 = *(v0 + 488);
  v163 = *(v0 + 480);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  v32 = *(v0 + 240);
  v31 = *(v0 + 248);
  v34 = *(v0 + 256);
  v33 = *(v0 + 264);
  *(v0 + 296) = &type metadata for AccessoryConfigCommand;
  *(v0 + 304) = v15;
  *(v0 + 312) = v28;
  v35 = swift_allocObject();
  *(v0 + 272) = v35;
  v35[2] = v29;
  v35[3] = v30;
  v35[4] = v32;
  v35[5] = v31;
  v35[6] = v34;
  v35[7] = v33;
  v168 = v29;
  v171 = v30;
  v174 = v32;
  v177 = v31;
  v36 = v32;
  v37 = v33;
  sub_10067F4FC(v29, v30, v36, v31, v34, v33, sub_100017D5C);
  sub_1006739AC(v0 + 272, v163, (v0 + 16));
  sub_100007BAC((v0 + 272));
  sub_1000D2A70(v0 + 16, v0 + 72, &qword_1016A72E0, &qword_1013B60C8);
  if (*(v0 + 121))
  {
    v155 = v33;
    v159 = v34;
    v164 = v4;
    v38 = *(v0 + 1016);
    v39 = *(v0 + 776);
    v40 = *(v0 + 768);
    v41 = *(v0 + 760);
    v42 = *(v0 + 752);
    v43 = *(v0 + 744);
    v44 = *(v0 + 712);
    v45 = *(v0 + 704);
    v46 = *(v0 + 688);

    v47 = *(v0 + 88);
    *(v0 + 320) = *(v0 + 72);
    *(v0 + 336) = v47;
    *(v0 + 345) = *(v0 + 97);
    v154 = v0 + 320;
    sub_100101AA8(v0 + 320, v0 + 368);
    v41(v44, v42, v46);
    v41(v45, v43, v46);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 712);
    v52 = *(v0 + 704);
    v53 = *(v0 + 696);
    v54 = *(v0 + 688);
    if (v50)
    {
      v55 = swift_slowAlloc();
      v185[0] = swift_slowAlloc();
      *v55 = 136446979;
      v149 = v49;
      v56 = sub_1013181BC();
      v58 = v57;
      sub_100101B04(v0 + 368);
      v59 = sub_1000136BC(v56, v58, v185);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2160;
      *(v55 + 14) = 1752392040;
      *(v55 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v48;
      v62 = v61;
      v63 = *(v53 + 8);
      v63(v51, v54);
      v64 = sub_1000136BC(v60, v62, v185);

      *(v55 + 24) = v64;
      *(v55 + 32) = 2082;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v152 = v63;
      v63(v52, v54);
      v68 = sub_1000136BC(v65, v67, v185);

      *(v55 + 34) = v68;
      _os_log_impl(&_mh_execute_header, log, v149, "Command failed with %{public}s.\nBeacon %{private,mask.hash}s Command %{public}s", v55, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v95 = *(v53 + 8);
      v95(v52, v54);
      v152 = v95;
      v95(v51, v54);
      sub_100101B04(v0 + 368);
    }

    v96 = *(v0 + 984);
    v97 = *(v0 + 976);
    v139 = *(v0 + 952);
    v140 = *(v0 + 864);
    v138 = *(v0 + 800);
    logb = *(v0 + 744);
    v151 = *(v0 + 752);
    v144 = *(v0 + 536);
    v145 = *(v0 + 688);
    v98 = *(v0 + 528);
    v99 = *(v0 + 504);
    v142 = *(v0 + 512);
    v143 = *(v0 + 520);
    v141 = *(v0 + 496);
    type metadata accessor for OwnerCommandManager.Error();
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    swift_allocError();
    v101 = v100;
    sub_100101B58();
    v102 = swift_allocError();
    sub_100101AA8(v154, v103);
    *v101 = v102;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100016590(v164, v180);
    sub_100016590(v97, v96);
    sub_10000B3A8(v0 + 128, &qword_1016A72E8, &unk_1013B60D0);

    sub_10067F4FC(v168, v171, v174, v177, v159, v155, sub_100016590);

    sub_100101B04(v154);
    sub_10000B3A8(v0 + 16, &qword_1016A72E0, &qword_1013B60C8);
    (*(v99 + 8))(v142, v141);
    (*(v98 + 8))(v144, v143);
    v152(logb, v145);
    v152(v151, v145);
    goto LABEL_13;
  }

  v69 = *(v0 + 120);
  sub_10067F5FC(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  if (v69 == 1)
  {
    v160 = v34;
    v165 = v4;
    v70 = *(v0 + 776);
    v71 = *(v0 + 768);
    v72 = *(v0 + 760);
    v73 = *(v0 + 744);
    v74 = *(v0 + 720);
    v75 = *(v0 + 688);
    v72(*(v0 + 728), *(v0 + 752), v75);
    v72(v74, v73, v75);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 728);
    v80 = *(v0 + 720);
    v81 = *(v0 + 696);
    v82 = *(v0 + 688);
    v183 = *(v0 + 512);
    v83 = *(v0 + 496);
    v84 = (*(v0 + 504) + 8);
    if (v78)
    {
      v150 = *(v0 + 720);
      v85 = swift_slowAlloc();
      v185[0] = swift_slowAlloc();
      *v85 = 141558531;
      *(v85 + 4) = 1752392040;
      *(v85 + 12) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v153 = v83;
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v37;
      v88 = v87;
      loga = v77;
      v89 = *(v81 + 8);
      v89(v79, v82);
      v90 = sub_1000136BC(v86, v88, v185);

      *(v85 + 14) = v90;
      *(v85 + 22) = 2082;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v89(v150, v82);
      v94 = sub_1000136BC(v91, v93, v185);

      *(v85 + 24) = v94;
      _os_log_impl(&_mh_execute_header, v76, loga, "Command completed successfully! Beacon %{private,mask.hash}s Command %{public}s.", v85, 0x20u);
      swift_arrayDestroy();

      sub_100016590(v165, v180);

      sub_10067F4FC(v168, v171, v174, v177, v160, v156, sub_100016590);
      sub_10000B3A8(v0 + 16, &qword_1016A72E0, &qword_1013B60C8);
      (*v84)(v183, v153);
    }

    else
    {
      sub_100016590(v165, v180);

      sub_10067F4FC(v168, v171, v174, v177, v160, v37, sub_100016590);
      v89 = *(v81 + 8);
      v89(v80, v82);
      v89(v79, v82);
      sub_10000B3A8(v0 + 16, &qword_1016A72E0, &qword_1013B60C8);
      (*v84)(v183, v83);
    }

    *(v0 + 1048) = v89;
    v124 = *(v0 + 1016);
    v125 = *(v0 + 864);
    v126 = *(v0 + 776);

    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = *(v0 + 864);
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v185[0] = v131;
      *v130 = 136315138;
      *(v0 + 464) = v129;
      type metadata accessor for Peripheral();
      sub_100003E44(&qword_1016972D0, &type metadata accessor for Peripheral);
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = sub_1000136BC(v132, v133, v185);

      *(v130 + 4) = v134;
      _os_log_impl(&_mh_execute_header, v127, v128, "Canceling connection to %s", v130, 0xCu);
      sub_100007BAC(v131);
    }

    v135 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v184 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v136 = swift_task_alloc();
    *(v0 + 1056) = v136;
    *v136 = v0;
    v136[1] = sub_10066084C;
    v137 = *(v0 + 864);

    return v184();
  }

  else
  {
    v116 = *(v0 + 504);
    v117 = *(v0 + 512);
    v118 = *(v0 + 496);
    sub_100016590(v4, v180);
    sub_10067F4FC(v168, v30, v174, v177, v34, v37, sub_100016590);
    sub_10000B3A8(v0 + 16, &qword_1016A72E0, &qword_1013B60C8);
    (*(v116 + 8))(v117, v118);
    v119 = *(v0 + 1016);
    v120 = *(v0 + 952);
    v121 = swift_allocObject();
    *(v0 + 1024) = v121;
    *(v121 + 16) = v120;
    *(v121 + 24) = v119;
    v122 = async function pointer to withTimeout<A>(_:block:)[1];

    v123 = swift_task_alloc();
    *(v0 + 1032) = v123;
    *v123 = v0;
    v123[1] = sub_10065F790;

    return withTimeout<A>(_:block:)(v0 + 432, 0x40AAD21B3B700000, 3, &unk_1013B6208, v121, &type metadata for Data);
  }
}

uint64_t sub_10066084C()
{
  v2 = *(*v1 + 1056);
  v5 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v3 = sub_1006619FC;
  }

  else
  {
    v3 = sub_100660960;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100660960()
{
  v1 = v0[131];
  v2 = v0[119];
  v3 = v0[108];
  v4 = v0[100];
  v28 = v0[93];
  v30 = v0[94];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[65];
  sub_100016590(v0[122], v0[123]);
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  (*(v8 + 8))(v7, v9);
  v1(v28, v6);
  v1(v30, v6);
  v10 = v0[94];
  v11 = v0[93];
  v12 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[89];
  v16 = v0[88];
  v17 = v0[85];
  v18 = v0[83];
  v19 = v0[80];
  v22 = v0[79];
  v23 = v0[78];
  v24 = v0[75];
  v25 = v0[74];
  v26 = v0[73];
  v27 = v0[70];
  v29 = v0[67];
  v31 = v0[64];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100660B70()
{
  v1 = v0[98];
  v2 = v0[94];
  v3 = v0[86];
  v4 = v0[87] + 8;
  v1(v0[93], v3);
  v1(v2, v3);
  v25 = v0[101];
  v5 = v0[94];
  v6 = v0[93];
  v7 = v0[92];
  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[89];
  v11 = v0[88];
  v12 = v0[85];
  v13 = v0[83];
  v14 = v0[80];
  v17 = v0[79];
  v18 = v0[78];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[73];
  v22 = v0[70];
  v23 = v0[67];
  v24 = v0[64];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100660D14()
{
  v1 = v0[100];
  v2 = v0[98];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[87];
  v6 = v0[86];

  v2(v4, v6);
  v2(v3, v6);
  v27 = v0[103];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[92];
  v10 = v0[91];
  v11 = v0[90];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[85];
  v15 = v0[83];
  v16 = v0[80];
  v19 = v0[79];
  v20 = v0[78];
  v21 = v0[75];
  v22 = v0[74];
  v23 = v0[73];
  v24 = v0[70];
  v25 = v0[67];
  v26 = v0[64];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100660EC4()
{
  v1 = v0[100];
  v2 = v0[98];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[87];
  v6 = v0[86];

  v2(v4, v6);
  v2(v3, v6);
  v27 = v0[107];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[92];
  v10 = v0[91];
  v11 = v0[90];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[85];
  v15 = v0[83];
  v16 = v0[80];
  v19 = v0[79];
  v20 = v0[78];
  v21 = v0[75];
  v22 = v0[74];
  v23 = v0[73];
  v24 = v0[70];
  v25 = v0[67];
  v26 = v0[64];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100661074()
{
  v1 = v0[108];
  v2 = v0[100];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[87];
  v6 = v0[86];

  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);
  v28 = v0[110];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[85];
  v16 = v0[83];
  v17 = v0[80];
  v20 = v0[79];
  v21 = v0[78];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[70];
  v26 = v0[67];
  v27 = v0[64];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10066122C()
{
  v1 = v0[108];
  v2 = v0[100];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[87];
  v6 = v0[86];
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);
  v28 = v0[117];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[85];
  v16 = v0[83];
  v17 = v0[80];
  v20 = v0[79];
  v21 = v0[78];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[70];
  v26 = v0[67];
  v27 = v0[64];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100661400()
{
  v1 = v0[108];
  v2 = v0[100];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[87];
  v6 = v0[86];
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);
  v28 = v0[120];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[85];
  v16 = v0[83];
  v17 = v0[80];
  v20 = v0[79];
  v21 = v0[78];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[70];
  v26 = v0[67];
  v27 = v0[64];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1006615D4()
{
  v1 = v0[119];
  v2 = v0[108];
  v3 = v0[100];
  v31 = v0[94];
  v4 = v0[93];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[65];
  sub_100016590(v0[122], v0[123]);
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v31, v6);
  v32 = v0[125];
  v11 = v0[94];
  v12 = v0[93];
  v13 = v0[92];
  v14 = v0[91];
  v15 = v0[90];
  v16 = v0[89];
  v17 = v0[88];
  v18 = v0[85];
  v19 = v0[83];
  v20 = v0[80];
  v23 = v0[79];
  v24 = v0[78];
  v25 = v0[75];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[70];
  v29 = v0[67];
  v30 = v0[64];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1006617E8()
{
  v1 = v0[119];
  v2 = v0[108];
  v3 = v0[100];
  v31 = v0[94];
  v4 = v0[93];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[65];
  sub_100016590(v0[122], v0[123]);
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v31, v6);
  v32 = v0[130];
  v11 = v0[94];
  v12 = v0[93];
  v13 = v0[92];
  v14 = v0[91];
  v15 = v0[90];
  v16 = v0[89];
  v17 = v0[88];
  v18 = v0[85];
  v19 = v0[83];
  v20 = v0[80];
  v23 = v0[79];
  v24 = v0[78];
  v25 = v0[75];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[70];
  v29 = v0[67];
  v30 = v0[64];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1006619FC()
{
  v1 = v0[131];
  v2 = v0[119];
  v3 = v0[108];
  v4 = v0[100];
  v29 = v0[93];
  v31 = v0[94];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[65];
  sub_100016590(v0[122], v0[123]);
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  (*(v8 + 8))(v7, v9);
  v1(v29, v6);
  v1(v31, v6);
  v32 = v0[133];
  v10 = v0[94];
  v11 = v0[93];
  v12 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[89];
  v16 = v0[88];
  v17 = v0[85];
  v18 = v0[83];
  v19 = v0[80];
  v22 = v0[79];
  v23 = v0[78];
  v24 = v0[75];
  v25 = v0[74];
  v26 = v0[73];
  v27 = v0[70];
  v28 = v0[67];
  v30 = v0[64];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100661C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v9 = *(&async function pointer to dispatch thunk of Characteristic.write(data:) + 1);
  v12 = (&async function pointer to dispatch thunk of Characteristic.write(data:) + async function pointer to dispatch thunk of Characteristic.write(data:));
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1000EFFFC;

  return v12(v8, a3);
}

uint64_t sub_100661D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = type metadata accessor for AccessoryCommand();
  v4[20] = v12;
  v13 = *(v12 - 8);
  v4[21] = v13;
  v4[22] = *(v13 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v4[25] = v14;
  v15 = *(v14 - 8);
  v4[26] = v15;
  v16 = *(v15 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_100661F7C, 0, 0);
}

uint64_t sub_100661F7C()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[9];
  v5 = v0[10];
  v6 = *(v0[20] + 20);
  v7 = *(v3 + 16);
  v3 += 16;
  v0[30] = v7;
  v0[31] = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);
  v8 = *(v5 + 56);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v9 = *(v3 + 56);
  v10 = (*(v3 + 64) + 32) & ~*(v3 + 64);
  v11 = swift_allocObject();
  v0[32] = v11;
  *(v11 + 16) = xmmword_101385D80;
  v7(v11 + v10, v1, v2);
  v12 = *(v8 + 24);
  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = sub_1006620C4;

  return sub_10131BD2C(v11);
}

uint64_t sub_1006620C4(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_1006621E4, 0, 0);
}

uint64_t sub_1006621E4()
{
  v91 = v0;
  v1 = v0[34];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v39 = v0[34];

    if (qword_101694828 == -1)
    {
LABEL_16:
      v41 = v0[30];
      v40 = v0[31];
      v42 = v0[29];
      v43 = v0[27];
      v44 = v0[25];
      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177B048);
      v41(v43, v42, v44);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      v48 = os_log_type_enabled(v46, v47);
      v50 = v0[26];
      v49 = v0[27];
      v51 = v0[25];
      if (v48)
      {
        v52 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = v89;
        *v52 = 141558275;
        *(v52 + 4) = 1752392040;
        *(v52 + 12) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        aBlock = v47;
        v55 = v54;
        v56 = *(v50 + 8);
        v56(v49, v51);
        v57 = sub_1000136BC(v53, v55, &v90);

        *(v52 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v46, aBlock, "No peripheral for beacon %{private,mask.hash}s", v52, 0x16u);
        sub_100007BAC(v89);
      }

      else
      {

        v56 = *(v50 + 8);
        v56(v49, v51);
      }

      v58 = v0[29];
      v59 = v0[25];
      v60 = v0[12];
      v61 = v0[13];
      v62 = v0[11];
      v63 = type metadata accessor for OwnerCommandManager.Error();
      swift_storeEnumTagMultiPayload();
      (*(*(v63 - 8) + 56))(v61, 0, 1, v63);
      v62(v61);
      sub_10000B3A8(v61, &qword_1016A7258, &qword_1013B6050);
      v56(v58, v59);
      goto LABEL_20;
    }

LABEL_25:
    swift_once();
    goto LABEL_16;
  }

  if (v1 < 0)
  {
    v38 = v0[34];
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v74 = v0[34];
    v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v75 = v0[34];
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v88 = *(v0[34] + 32);
LABEL_6:

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[9];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177B048);
  sub_10067B9CC(v8, v7, type metadata accessor for AccessoryCommand);
  v3(v4, v5, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v90 = v84;
    *v17 = 136446723;
    v18 = sub_1010C00BC(v84);
    v20 = v19;
    sub_10067BA34(v16, type metadata accessor for AccessoryCommand);
    v21 = sub_1000136BC(v18, v20, &v90);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v86 = *(v14 + 8);
    v86(v13, v15);
    v25 = sub_1000136BC(v22, v24, &v90);

    *(v17 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "Executing %{public}s for beacon %{private,mask.hash}s", v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v86 = *(v14 + 8);
    v86(v13, v15);
    sub_10067BA34(v16, type metadata accessor for AccessoryCommand);
  }

  v83 = v0[25];
  v85 = v0[29];
  v26 = v0[22];
  v27 = v0[23];
  v28 = v0[21];
  v81 = v0[18];
  v82 = v0[17];
  v76 = v0[19];
  v77 = v0[16];
  v78 = v0[14];
  v30 = v0[11];
  v29 = v0[12];
  v31 = v0[10];
  v79 = *(v31 + 72);
  v80 = v0[15];
  sub_10067B9CC(v0[9], v27, type metadata accessor for AccessoryCommand);
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v88;
  sub_10067B810(v27, v33 + v32, type metadata accessor for AccessoryCommand);
  v34 = (v33 + ((v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = v30;
  v34[1] = v29;
  v0[6] = sub_10067B730;
  v0[7] = v33;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_10162CC80;
  v35 = _Block_copy(v0 + 2);

  v36 = v88;

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v80 + 8))(v77, v78);
  (*(v81 + 8))(v76, v82);
  v86(v85, v83);
  v37 = v0[7];

LABEL_20:
  v65 = v0[28];
  v64 = v0[29];
  v66 = v0[27];
  v68 = v0[23];
  v67 = v0[24];
  v69 = v0[19];
  v70 = v0[16];
  v71 = v0[13];

  v72 = v0[1];

  return v72();
}

uint64_t sub_100662A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(*(sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v12 = *(v11 + 64) + 15;
  v5[20] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v5[21] = v13;
  v14 = *(v13 - 8);
  v5[22] = v14;
  v5[23] = *(v14 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_100662C58, 0, 0);
}

uint64_t sub_100662C58()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 80);
  v4 = *(*(v0 + 72) + 56);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v0 + 256) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 216) = v8;
  *(v8 + 16) = xmmword_101385D80;
  v9 = *(v2 + 16);
  *(v0 + 224) = v9;
  *(v0 + 232) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v8 + v7, v3, v1);
  v10 = *(v4 + 24);
  v11 = swift_task_alloc();
  *(v0 + 240) = v11;
  *v11 = v0;
  v11[1] = sub_100662D7C;

  return sub_10131BD2C(v8);
}

uint64_t sub_100662D7C(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_100662E9C, 0, 0);
}

uint64_t sub_100662E9C()
{
  v67 = v0;
  v1 = v0[31];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    v18 = v0[31];

    if (qword_101694828 == -1)
    {
LABEL_11:
      v20 = v0[28];
      v19 = v0[29];
      v21 = v0[24];
      v22 = v0[21];
      v23 = v0[10];
      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177B048);
      v20(v21, v23, v22);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[24];
      v29 = v0[21];
      v30 = v0[22];
      if (v27)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v66 = v32;
        *v31 = 141558275;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        (*(v30 + 8))(v28, v29);
        v36 = sub_1000136BC(v33, v35, &v66);

        *(v31 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v25, v26, "No peripheral for beacon %{private,mask.hash}s", v31, 0x16u);
        sub_100007BAC(v32);
      }

      else
      {

        (*(v30 + 8))(v28, v29);
      }

      v37 = v0[14];
      v39 = v0[11];
      v38 = v0[12];
      v40 = type metadata accessor for OwnerCommandManager.Error();
      swift_storeEnumTagMultiPayload();
      (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
      v39(v37);
      sub_10000B3A8(v37, &qword_1016A7258, &qword_1013B6050);
      goto LABEL_15;
    }

LABEL_20:
    swift_once();
    goto LABEL_11;
  }

  if (v1 < 0)
  {
    v17 = v0[31];
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v49 = v0[31];
    v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v50 = v0[31];
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_20;
  }

  v59 = *(v0[31] + 32);
LABEL_6:
  v52 = v0[28];
  v53 = v0[29];
  v2 = *(v0 + 256);
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[22];
  v54 = v3;
  v55 = v0[23];
  v6 = v0[21];
  v58 = v0[20];
  v64 = v0[19];
  v65 = v0[18];
  v60 = v0[17];
  v63 = v0[16];
  v62 = v0[15];
  v51 = v0[13];
  v7 = v0[10];
  v56 = v0[11];
  v57 = v0[12];
  v8 = v0[9];

  v9 = (v2 + 32) & ~v2;
  v61 = *(v8 + 72);
  v52(v4, v7, v6);
  v52(v3, v51, v6);
  v10 = (v55 + v2 + v9) & ~v2;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v59;
  v12 = *(v5 + 32);
  v12(v11 + v9, v4, v6);
  v12(v11 + v10, v54, v6);
  v13 = (v11 + ((v55 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v56;
  v13[1] = v57;
  v0[6] = sub_10067B878;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_10162CCD0;
  v14 = _Block_copy(v0 + 2);

  v15 = v59;

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v63 + 8))(v60, v62);
  (*(v64 + 8))(v58, v65);
  v16 = v0[7];

LABEL_15:
  v42 = v0[25];
  v41 = v0[26];
  v43 = v0[24];
  v44 = v0[20];
  v45 = v0[17];
  v46 = v0[14];

  v47 = v0[1];

  return v47();
}

uint64_t sub_1006634C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v95 = a5;
  v102 = a4;
  v94 = sub_1000BC4D4(&qword_1016A7268, &unk_1013B6060);
  v98 = *(v94 - 8);
  v10 = *(v98 + 64);
  __chkstk_darwin(v94);
  v96 = &v83[-v11];
  v101 = type metadata accessor for UUID();
  v12 = *(v101 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v101);
  v93 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v91 = &v83[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v83[-v19];
  v21 = __chkstk_darwin(v18);
  v23 = &v83[-v22];
  v92 = v24;
  __chkstk_darwin(v21);
  v26 = &v83[-v25];
  v27 = *&a2[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  v28 = [v27 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v100 = a1;
  v29 = *(a1 + 112);
  v30 = *(v29 + 16);
  v97 = a6;
  if (!v30)
  {
    goto LABEL_9;
  }

  v31 = sub_1000210EC(v26);
  if ((v32 & 1) == 0)
  {

LABEL_9:
    v49 = v101;
    v99 = *(v12 + 8);
    v99(v26, v101);
    goto LABEL_10;
  }

  v89 = *(*(v29 + 56) + 8 * v31);
  v90 = v12;
  v33 = *(v12 + 8);

  v99 = v33;
  v33(v26, v101);

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177B048);
  v88 = a2;
  v35 = a2;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v103[0] = v87;
    *v38 = 136446210;
    v39 = [v27 identifier];
    LODWORD(v86) = v37;
    v40 = v39;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v41 = a3;
    v42 = v101;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = v42;
    a3 = v41;
    v99(v23, v46);
    v47 = sub_1000136BC(v43, v45, v103);

    *(v38 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v36, v86, "Canceling disconnection block for %{public}s", v38, 0xCu);
    sub_100007BAC(v87);
  }

  v12 = v90;
  dispatch thunk of DispatchWorkItem.cancel()();
  v48 = [v27 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DF908(0, v23);
  swift_endAccess();

  v49 = v101;
  a2 = v88;
LABEL_10:
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_1000076D4(v50, qword_10177B048);
  v51 = *(v12 + 16);
  v101 = a3;
  v51(v20, a3, v49);
  v52 = v91;
  v89 = v51;
  v90 = v12 + 16;
  v51(v91, v102, v49);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v88 = a2;
    v56 = v55;
    v86 = swift_slowAlloc();
    v103[0] = v86;
    *v56 = 141558531;
    *(v56 + 4) = 1752392040;
    *(v56 + 12) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v85 = v53;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    v87 = v23;
    v84 = v54;
    v60 = v99;
    v99(v20, v49);
    v61 = sub_1000136BC(v57, v59, v103);

    *(v56 + 14) = v61;
    *(v56 + 22) = 2082;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v60(v52, v49);
    v23 = v87;
    v65 = sub_1000136BC(v62, v64, v103);

    *(v56 + 24) = v65;
    v66 = v85;
    _os_log_impl(&_mh_execute_header, v85, v84, "Disconnecting from beacon %{private,mask.hash}s. CommandId: %{public}s", v56, 0x20u);
    swift_arrayDestroy();

    a2 = v88;
  }

  else
  {

    v67 = v99;
    v99(v52, v49);
    v67(v20, v49);
  }

  v68 = *(*(v100 + 56) + 24);
  v103[0] = sub_10131FAE0(a2);
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  type metadata accessor for OwnerCommandManager.Error();
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
  v69 = v96;
  Publisher.mapError<A>(_:)();

  v70 = v89;
  v89(v23, v101, v49);
  v71 = v23;
  v72 = v93;
  v70(v93, v102, v49);
  v73 = *(v12 + 80);
  v74 = (v73 + 16) & ~v73;
  v75 = (v92 + v73 + v74) & ~v73;
  v76 = (v92 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = *(v12 + 32);
  v78(v77 + v74, v71, v49);
  v78(v77 + v75, v72, v49);
  v79 = (v77 + v76);
  v80 = v97;
  *v79 = v95;
  v79[1] = v80;
  sub_1000041A4(&qword_1016A7270, &qword_1016A7268, &unk_1013B6060);

  v81 = v94;
  Publisher.oneshot(_:)();

  return (*(v98 + 8))(v69, v81);
}

uint64_t sub_100663EA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100101B58();
  v4 = swift_allocError();
  sub_100101AA8(a1, v5);
  *a2 = v4;
  type metadata accessor for OwnerCommandManager.Error();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100663F1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v91 = a5;
  v92 = a4;
  v85 = a2;
  v86 = a3;
  v6 = type metadata accessor for OwnerCommandManager.Error();
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = *(v89 + 64);
  v8 = __chkstk_darwin(v6);
  v84 = (&v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = &v80 - v10;
  v12 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v88 = &v80 - v14;
  v15 = type metadata accessor for UUID();
  v87 = *(v15 - 8);
  v16 = *(v87 + 64);
  v17 = __chkstk_darwin(v15);
  v83 = (&v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v21 = &v80 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v80 - v23;
  __chkstk_darwin(v22);
  v26 = &v80 - v25;
  v27 = sub_1000BC4D4(&qword_1016A7278, &qword_1013B6070);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v80 - v29);
  sub_1000D2A70(a1, &v80 - v29, &qword_1016A7278, &qword_1013B6070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10067B810(v30, v11, type metadata accessor for OwnerCommandManager.Error);
    v31 = v11;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177B048);
    v33 = v87;
    v34 = *(v87 + 16);
    v34(v21, v85, v15);
    v35 = v84;
    sub_10067B9CC(v11, v84, type metadata accessor for OwnerCommandManager.Error);
    v36 = v83;
    v34(v83, v86, v15);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v93 = v85;
      *v39 = 141558787;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v82 = v38;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v31;
      v42 = v41;
      v81 = v37;
      v43 = *(v33 + 8);
      v43(v21, v15);
      v44 = sub_1000136BC(v40, v42, &v93);

      *(v39 + 14) = v44;
      *(v39 + 22) = 2082;
      v46 = sub_100656B14(v45);
      v48 = v47;
      sub_10067BA34(v35, type metadata accessor for OwnerCommandManager.Error);
      v49 = sub_1000136BC(v46, v48, &v93);

      *(v39 + 24) = v49;
      *(v39 + 32) = 2082;
      v31 = v86;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v43(v36, v15);
      v53 = sub_1000136BC(v50, v52, &v93);

      *(v39 + 34) = v53;
      v54 = v81;
      _os_log_impl(&_mh_execute_header, v81, v82, "Disconnection from beacon: %{private,mask.hash}s failed due to %{public}s. CommandId: %{public}s.", v39, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v75 = *(v33 + 8);
      v75(v36, v15);
      sub_10067BA34(v35, type metadata accessor for OwnerCommandManager.Error);
      v75(v21, v15);
    }

    v76 = v88;
    sub_10067B9CC(v31, v88, type metadata accessor for OwnerCommandManager.Error);
    (*(v89 + 56))(v76, 0, 1, v90);
    v92(v76);
    sub_10000B3A8(v76, &qword_1016A7258, &qword_1013B6050);
    return sub_10067BA34(v31, type metadata accessor for OwnerCommandManager.Error);
  }

  else
  {
    v55 = *v30;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000076D4(v56, qword_10177B048);
    v57 = v87;
    v58 = *(v87 + 16);
    v58(v26, v85, v15);
    v58(v24, v86, v15);
    v59 = v55;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v93 = v86;
      *v62 = 141558787;
      *(v62 + 4) = 1752392040;
      *(v62 + 12) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v85) = v61;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v83 = v60;
      v66 = *(v57 + 8);
      v66(v26, v15);
      v67 = sub_1000136BC(v63, v65, &v93);

      *(v62 + 14) = v67;
      *(v62 + 22) = 2114;
      *(v62 + 24) = v59;
      v68 = v84;
      *v84 = v59;
      *(v62 + 32) = 2082;
      v69 = v59;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v66(v24, v15);
      v73 = sub_1000136BC(v70, v72, &v93);

      *(v62 + 34) = v73;
      v74 = v83;
      _os_log_impl(&_mh_execute_header, v83, v85, "Disconnected from beacon: %{private,mask.hash}s. Peripheral: %{public}@. CommandId: %{public}s.", v62, 0x2Au);
      sub_10000B3A8(v68, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();
    }

    else
    {

      v78 = *(v57 + 8);
      v78(v24, v15);
      v78(v26, v15);
    }

    v79 = v88;
    (*(v89 + 56))(v88, 1, 1, v90);
    v92(v79);

    return sub_10000B3A8(v79, &qword_1016A7258, &qword_1013B6050);
  }
}

uint64_t sub_100664888(char *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v53 = &type metadata for Bool;
  LOBYTE(v52) = 1;
  sub_1001E6224(&v52, v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFB368(v51, v8, v10, isUniquelyReferenced_nonNull_native);

  v13 = a3 >> 62;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_11;
    }

    v16 = *(a2 + 16);
    v15 = *(a2 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (!v17)
    {
      if (v18 != 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v13)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 != 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (BYTE6(a3) != 16)
  {
LABEL_11:
    v22 = Data.subdata(in:)();
    v24 = v23;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177B048);
    sub_100017D5C(v22, v24);
    sub_100017D5C(v22, v24);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      sub_100016590(v22, v24);
      sub_100016590(v22, v24);

LABEL_27:
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v37;
      v53 = &type metadata for Data;
      *&v52 = v22;
      *(&v52 + 1) = v24;
      sub_1001E6224(&v52, v51);
      goto LABEL_28;
    }

    v50 = v4;
    v28 = a1;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v52 = v30;
    *v29 = 136315394;
    v31 = Data.hexString.getter();
    v33 = sub_1000136BC(v31, v32, &v52);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2048;
    v34 = v24 >> 62;
    if ((v24 >> 62) <= 1)
    {
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      if (!v34)
      {
        sub_100016590(v22, v24);
        v35 = BYTE6(v24);
LABEL_26:
        *(v29 + 14) = v35;
        sub_100016590(v22, v24);
        _os_log_impl(&_mh_execute_header, v26, v27, "Trimmed LTK: %s. Count: %ld", v29, 0x16u);
        sub_100007BAC(v30);

        a1 = v28;
        v4 = v50;
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    if (v34 == 2)
    {
      p_weak_ivar_lyt = *(v22 + 16);
      v36 = *(v22 + 24);
      sub_100016590(v22, v24);
      v35 = v36 - p_weak_ivar_lyt;
      if (__OFSUB__(v36, p_weak_ivar_lyt))
      {
        __break(1u);
LABEL_22:
        result = sub_100016590(v22, v24);
        LODWORD(v35) = HIDWORD(v22) - v22;
        if (!__OFSUB__(HIDWORD(v22), v22))
        {
          v35 = v35;
          goto LABEL_26;
        }

LABEL_35:
        __break(1u);
        return result;
      }
    }

    else
    {
      sub_100016590(v22, v24);
      v35 = 0;
    }

    p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
    goto LABEL_26;
  }

LABEL_8:
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v53 = &type metadata for Data;
  *&v52 = a2;
  *(&v52 + 1) = a3;
  sub_1001E6224(&v52, v51);
  sub_100017D5C(a2, a3);
LABEL_28:
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFB368(v51, v19, v21, v38);

  if (p_weak_ivar_lyt[261] != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177B048);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v52 = v43;
    *v42 = 136315138;

    v44 = Dictionary.description.getter();
    v46 = v45;

    v47 = sub_1000136BC(v44, v46, &v52);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "Connecting with options %s", v42, 0xCu);
    sub_100007BAC(v43);
  }

  v48 = *(*(v4 + 56) + 24);

  v49 = sub_10131F050(a1, _swiftEmptyDictionarySingleton);
  swift_bridgeObjectRelease_n();
  return v49;
}

uint64_t sub_100664DCC(char *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v87 = a4;
  v91 = a2;
  v93 = a1;
  v85 = *v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v89 = &v79[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v86 = &v79[-v12];
  v13 = __chkstk_darwin(v11);
  v90 = &v79[-v14];
  v15 = __chkstk_darwin(v13);
  v17 = &v79[-v16];
  v18 = __chkstk_darwin(v15);
  v20 = &v79[-v19];
  __chkstk_darwin(v18);
  v22 = &v79[-v21];
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v79[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v97[0] = 0x7365547265646E75;
  v97[1] = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v94 & 1) == 0)
  {
    v84 = v17;
    v29 = v92;
    v30 = *(v92 + 72);
    *v27 = v30;
    (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
    v31 = v30;
    v32 = _dispatchPreconditionTest(_:)();
    (*(v24 + 8))(v27, v23);
    if ((v32 & 1) == 0)
    {
      __break(1u);
LABEL_29:
      swift_once();
LABEL_15:
      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177B048);
      sub_100A245E8(0xD000000000000021, v32 | 0x8000000000000000);
      (v23)(v27, v29, v6);
      (v23)(v20, a3, v6);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v97[0] = v82;
        *v56 = 141558531;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
        LODWORD(v81) = v55;
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        v60 = v88;
        v88(v27, v6);
        v61 = sub_1000136BC(v57, v59, v97);
        v62 = v90;

        *(v56 + 14) = v61;
        *(v56 + 22) = 2082;
        v63 = v89;
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        v60(v63, v6);
        v29 = v84;
        v67 = v64;
        a3 = v62;
        v68 = sub_1000136BC(v67, v66, v97);

        *(v56 + 24) = v68;
        _os_log_impl(&_mh_execute_header, v54, v81, "Beacon %{private,mask.hash}s Command %{public}s.", v56, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v69 = v88;
        v88(v20, v6);
        v69(v27, v6);
      }

      v70 = v83;
      v71 = v92;
      if (*(v92 + 184))
      {
        v72 = *(v92 + 184);

        sub_100025020(v29, &v94);

        if (*(&v95 + 1))
        {
          sub_100031694(&v94, v97);
          v73 = v98;
          v74 = v99;
          sub_1000035D0(v97, v98);
          if ((*(v74 + 96))(v73, v74))
          {
            sub_100667F30(v93, v91, v70, v87);
            sub_100007BAC(v97);
LABEL_26:
            v78 = v88;
            v88(a3, v6);
            return v78(v29, v6);
          }

          sub_100007BAC(v97);
LABEL_25:
          v75 = type metadata accessor for Transaction();
          __chkstk_darwin(v75);
          v76 = v93;
          *&v79[-80] = v71;
          *&v79[-72] = v76;
          *&v79[-64] = v91;
          *&v79[-56] = &off_101609A80;
          v77 = v87;
          *&v79[-48] = v70;
          *&v79[-40] = v77;
          *&v79[-32] = v29;
          *&v79[-24] = a3;
          *&v79[-16] = v85;
          static Transaction.named<A>(_:with:)();
          goto LABEL_26;
        }
      }

      else
      {
        v96 = 0;
        v94 = 0u;
        v95 = 0u;
      }

      sub_10000B3A8(&v94, &qword_101696920, &unk_10138B200);
      goto LABEL_25;
    }

    v83 = a3;
    v33 = *&v93[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
    v34 = [v33 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v35 = *(v29 + 112);
    v29 = v84;
    if (*(v35 + 16))
    {

      v36 = sub_1000210EC(v22);
      if (v37)
      {
        v38 = v7[1];
        v82 = *(*(v35 + 56) + 8 * v36);

        v88 = v38;
        v38(v22, v6);

        if (qword_101694828 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_1000076D4(v39, qword_10177B048);
        v40 = v93;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v97[0] = v81;
          *v43 = 136446210;
          v44 = [v33 identifier];
          v80 = v42;
          v45 = v44;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          v88(v20, v6);
          v49 = sub_1000136BC(v46, v48, v97);

          *(v43 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v41, v80, "Canceling disconnection block for %{public}s", v43, 0xCu);
          sub_100007BAC(v81);
        }

        dispatch thunk of DispatchWorkItem.cancel()();
        v50 = [v33 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_beginAccess();
        sub_1001DF908(0, v20);
        swift_endAccess();

LABEL_14:
        v51 = type metadata accessor for AccessoryCommand();
        v23 = v7[2];
        v52 = v91;
        (v23)(v29, &v91[*(v51 + 20)], v6);
        a3 = v90;
        (v23)(v90, v52, v6);
        v32 = "Connected to AirTag peripheral:";
        v20 = v89;
        v27 = v86;
        if (qword_101694828 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_29;
      }
    }

    v88 = v7[1];
    v88(v22, v6);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10066589C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v122 = a8;
  v127 = a7;
  v123 = a6;
  v110 = a5;
  v137 = a3;
  v126 = a1;
  v120 = a9;
  v125 = type metadata accessor for UUID();
  v124 = *(v125 - 8);
  v11 = *(v124 + 64);
  v12 = __chkstk_darwin(v125);
  v132 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v13;
  __chkstk_darwin(v12);
  v131 = v89 - v14;
  v15 = type metadata accessor for AccessoryCommand();
  v116 = *(v15 - 8);
  v16 = *(v116 + 64);
  __chkstk_darwin(v15 - 8);
  v117 = v17;
  v118 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v89 - v20;
  v93 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v94 = *(v93 - 8);
  v22 = v94[8];
  __chkstk_darwin(v93);
  v24 = v89 - v23;
  v96 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v98 = *(v96 - 8);
  v25 = *(v98 + 64);
  __chkstk_darwin(v96);
  v90 = v89 - v26;
  v99 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v100 = *(v99 - 8);
  v27 = *(v100 + 64);
  __chkstk_darwin(v99);
  v91 = v89 - v28;
  v101 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v102 = *(v101 - 8);
  v29 = *(v102 + 64);
  __chkstk_darwin(v101);
  v95 = v89 - v30;
  v103 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v104 = *(v103 - 8);
  v31 = *(v104 + 64);
  __chkstk_darwin(v103);
  v97 = v89 - v32;
  v107 = sub_1000BC4D4(&qword_1016A7480, &qword_1013B61D0);
  v105 = *(v107 - 8);
  v33 = *(v105 + 64);
  __chkstk_darwin(v107);
  v92 = v89 - v34;
  v109 = sub_1000BC4D4(&qword_1016A7488, &qword_1013B61D8);
  v108 = *(v109 - 8);
  v35 = *(v108 + 64);
  __chkstk_darwin(v109);
  v106 = v89 - v36;
  v113 = sub_1000BC4D4(&qword_1016A7490, &qword_1013B61E0);
  v112 = *(v113 - 8);
  v37 = *(v112 + 64);
  __chkstk_darwin(v113);
  v111 = v89 - v38;
  v115 = sub_1000BC4D4(&qword_1016A7498, &qword_1013B61E8);
  v114 = *(v115 - 8);
  v39 = *(v114 + 64);
  __chkstk_darwin(v115);
  v130 = v89 - v40;
  v41 = *(a2 + 56);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v43;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v44;
  v119 = a4;
  v45 = sub_1010BF910();
  *(inited + 120) = &type metadata for UInt32;
  *(inited + 96) = v45;
  v46 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  v47 = *(v41 + 24);
  v48 = sub_10131F050(v137, v46);

  v138 = v48;
  v133 = a2;
  v139 = *(a2 + 72);
  v49 = v139;
  v129 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v50 = *(v129 - 8);
  v134 = *(v50 + 56);
  v137 = (v50 + 56);
  v134(v21, 1, 1, v129);
  v51 = v49;
  v52 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v136 = sub_1000BC488();
  v53 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  v135 = sub_100003E44(&qword_1016AF9C0, sub_1000BC488);
  v89[1] = v52;
  v89[2] = v53;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v21, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v128 = type metadata accessor for Peripheral();
  v89[0] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30);
  v54 = v90;
  v55 = v93;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (v94[1])(v24, v55);
  v138 = v51;
  v56 = v21;
  v134(v21, 1, 1, v129);
  v94 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500);
  v57 = v51;
  v58 = v91;
  v59 = v96;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v56, &unk_1016B0FE0, &unk_101391980);

  (*(v98 + 8))(v54, v59);
  *(swift_allocObject() + 16) = v110;

  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40);
  v60 = v95;
  v61 = v99;
  v62 = v129;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v100 + 8))(v58, v61);
  v138 = v57;
  v134(v56, 1, 1, v62);
  v63 = v92;
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510);
  v64 = v97;
  v65 = v101;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v56, &unk_1016B0FE0, &unk_101391980);

  (*(v102 + 8))(v60, v65);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50);
  v66 = v103;
  Publisher.compactMap<A>(_:)();
  (*(v104 + 8))(v64, v66);
  if (qword_101694830 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v67, qword_1016A6DF8);
  v138 = v57;
  v134(v56, 1, 1, v62);
  sub_1000041A4(&qword_1016A74A0, &qword_1016A7480, &qword_1013B61D0);
  v68 = v106;
  v69 = v107;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v56, &unk_1016B0FE0, &unk_101391980);

  (*(v105 + 8))(v63, v69);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  sub_1000041A4(&qword_1016A74A8, &qword_1016A7488, &qword_1013B61D8);
  v70 = v111;
  v71 = v109;
  Publisher.map<A>(_:)();
  (*(v108 + 8))(v68, v71);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016A74B0, &qword_1016A7490, &qword_1013B61E0);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
  v72 = v113;
  Publisher.catch<A>(_:)();
  (*(v112 + 8))(v70, v72);
  v73 = swift_allocObject();
  swift_weakInit();
  v137 = type metadata accessor for AccessoryCommand;
  v74 = v118;
  sub_10067B9CC(v119, v118, type metadata accessor for AccessoryCommand);
  v75 = v124;
  v76 = *(v124 + 16);
  v77 = v125;
  v76(v131, v122, v125);
  v76(v132, v120, v77);
  v78 = (*(v116 + 80) + 48) & ~*(v116 + 80);
  v79 = *(v75 + 80);
  v80 = (v117 + v79 + v78) & ~v79;
  v81 = (v121 + v79 + v80) & ~v79;
  v82 = swift_allocObject();
  v83 = v126;
  *(v82 + 2) = v73;
  *(v82 + 3) = v83;
  v84 = v127;
  *(v82 + 4) = v123;
  *(v82 + 5) = v84;
  sub_10067B810(v74, &v82[v78], v137);
  v85 = *(v75 + 32);
  v85(&v82[v80], v131, v77);
  v85(&v82[v81], v132, v77);
  sub_1000041A4(&qword_1016A74B8, &qword_1016A7498, &qword_1013B61E8);

  v86 = v115;
  v87 = v130;
  Publisher<>.sink(receiveValue:)();

  (*(v114 + 8))(v87, v86);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100666AF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B048);
  sub_100A245E8(0xD000000000000018, 0x800000010135C520);
  sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = &type metadata for BAServiceIdentifier;
  *(inited + 64) = &off_10162CAF0;
  *(inited + 32) = 1;
  v6 = (inited + 32);
  v7 = sub_100A255C8(inited);
  swift_setDeallocating();
  result = sub_100007BAC(v6);
  *a2 = v7;
  return result;
}

uint64_t sub_100666BF4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v5 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = *a1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B048);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Discovered FindMy services.", v17, 2u);
  }

  v36[3] = &type metadata for BAServiceIdentifier;
  v36[4] = &off_10162CAF0;
  LOBYTE(v36[0]) = 1;
  v18 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v19 = swift_beginAccess();
  v20 = *&v13[v18];
  __chkstk_darwin(v19);
  *(&v33 - 2) = v36;

  v21 = sub_1012BBDB4(sub_1001DB3F8, (&v33 - 4), v20);

  sub_100007BAC(v36);
  if (v21)
  {
    v22 = sub_10039C428(a2);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v24 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();

    v36[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v27 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No FindMy service", v31, 2u);
    }

    v36[0] = v13;
    type metadata accessor for Peripheral();
    v32 = v13;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v33 + 8))(v8, v5);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v27 = Publisher.eraseToAnyPublisher()();
    result = (*(v34 + 8))(v12, v9);
  }

  *v35 = v27;
  return result;
}

uint64_t sub_1006670BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v98 = a7;
  v96 = a6;
  v100 = a5;
  v101 = a4;
  v10 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v93[-v12];
  v14 = type metadata accessor for UUID();
  v99 = *(v14 - 8);
  v15 = *(v99 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v93[-v20];
  __chkstk_darwin(v19);
  v23 = &v93[-v22];
  v24 = type metadata accessor for AccessoryCommand();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v93[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v97 = result;
  Transaction.capture()();
  sub_1000D2A70(a1, &v105, &unk_1016A6150, &unk_10139DB30);
  if (v107)
  {
    v108 = v105;
    *v109 = *v106;
    *&v109[9] = *&v106[9];
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177B048);
    sub_100101AA8(&v108, v104);
    v30 = v99;
    v31 = *(v99 + 16);
    v31(v21, v98, v14);
    v31(v18, a8, v14);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v103[0] = v98;
      *v34 = 136446979;
      sub_100101B58();
      LODWORD(v96) = v33;
      v35 = Error.localizedDescription.getter();
      v37 = v36;
      sub_100101B04(v104);
      v38 = sub_1000136BC(v35, v37, v103);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2160;
      *(v34 + 14) = 1752392040;
      *(v34 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v95 = v32;
      v42 = *(v30 + 8);
      v42(v21, v14);
      v43 = sub_1000136BC(v39, v41, v103);

      *(v34 + 24) = v43;
      *(v34 + 32) = 2082;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v42(v18, v14);
      v47 = sub_1000136BC(v44, v46, v103);

      *(v34 + 34) = v47;
      v48 = v95;
      _os_log_impl(&_mh_execute_header, v95, v96, "ownerCommand error: %{public}s. Beacon %{private,mask.hash}s Command %{public}s.", v34, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v64 = *(v30 + 8);
      v64(v18, v14);
      v64(v21, v14);
      sub_100101B04(v104);
    }

    sub_100101B58();
    v65 = swift_allocError();
    sub_100101AA8(&v108, v66);
    *v13 = v65;
    v67 = type metadata accessor for OwnerCommandManager.Error();
    swift_storeEnumTagMultiPayload();
    (*(*(v67 - 8) + 56))(v13, 0, 1, v67);
    v101(v13);

    sub_10000B3A8(v13, &qword_1016A7258, &qword_1013B6050);
    return sub_100101B04(&v108);
  }

  v49 = v105;
  *&v109[8] = &type metadata for BAServiceIdentifier;
  *&v109[16] = &off_10162CAF0;
  LOBYTE(v108) = 1;
  v50 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v51 = swift_beginAccess();
  v95 = v49;
  v52 = *(&v49->isa + v50);
  __chkstk_darwin(v51);
  *&v93[-16] = &v108;

  v53 = sub_1012BBDB4(sub_1001DB280, &v93[-32], v52);

  sub_100007BAC(&v108);
  if (!v53)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000076D4(v68, qword_10177B048);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "No FindMy service!", v71, 2u);
    }

    v72 = type metadata accessor for OwnerCommandManager.Error();
    swift_storeEnumTagMultiPayload();
    (*(*(v72 - 8) + 56))(v13, 0, 1, v72);
    v101(v13);

    goto LABEL_27;
  }

  *&v109[8] = &type metadata for BACharacteristicIdentifier.FindMy;
  *&v109[16] = &off_10162CAD0;
  LOBYTE(v108) = 1;
  v54 = swift_beginAccess();
  v55 = *(v53 + 40);
  __chkstk_darwin(v54);
  *&v93[-16] = &v108;

  v56 = sub_1012BBE10(sub_1001DB2A0, &v93[-32], v55);

  sub_100007BAC(&v108);
  if (!v56)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_1000076D4(v73, qword_10177B048);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Missing Config Characteristic!", v76, 2u);
    }

    v77 = type metadata accessor for OwnerCommandManager.Error();
    swift_storeEnumTagMultiPayload();
    (*(*(v77 - 8) + 56))(v13, 0, 1, v77);
    v101(v13);

    goto LABEL_27;
  }

  v57 = v96;
  sub_1010BF57C(&v108);
  if ((~(*(&v108 + 1) & *&v109[16]) & 0x3000000000000000) == 0)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177B048);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "No config command to execute. Calling completion.", v61, 2u);
    }

    v62 = v95;
    sub_100657074(v57, 0, v95, v56);

    v63 = type metadata accessor for OwnerCommandManager.Error();
    (*(*(v63 - 8) + 56))(v13, 1, 1, v63);
    v101(v13);

LABEL_27:

    return sub_10000B3A8(v13, &qword_1016A7258, &qword_1013B6050);
  }

  sub_10000B3A8(&v108, &qword_1016A72E8, &unk_1013B60D0);
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  sub_1000076D4(v78, qword_10177B048);
  sub_10067B9CC(v57, v27, type metadata accessor for AccessoryCommand);
  v79 = v99;
  (*(v99 + 16))(v23, v98, v14);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v98 = v83;
    v102 = v83;
    *v82 = 136446723;
    v94 = v81;
    v84 = sub_1010C00BC(v83);
    v86 = v85;
    sub_10067BA34(v27, type metadata accessor for AccessoryCommand);
    v87 = sub_1000136BC(v84, v86, &v102);

    *(v82 + 4) = v87;
    *(v82 + 12) = 2160;
    *(v82 + 14) = 1752392040;
    *(v82 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v89;
    (*(v79 + 8))(v23, v14);
    v91 = sub_1000136BC(v88, v90, &v102);
    v57 = v96;

    *(v82 + 24) = v91;
    _os_log_impl(&_mh_execute_header, v80, v94, "Execute command %{public}s for beacon %{private,mask.hash}s", v82, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v79 + 8))(v23, v14);
    sub_10067BA34(v27, type metadata accessor for AccessoryCommand);
  }

  v92 = v95;
  sub_10066FC04(v57, v95, v56);
  sub_10066C564(v57, v92, v56, v101, v100);
}

uint64_t sub_100667F30(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a4;
  v69 = a3;
  v7 = *v4;
  v66 = a1;
  v67 = v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v65 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v64 = &v55[-v14];
  v15 = __chkstk_darwin(v13);
  v17 = &v55[-v16];
  __chkstk_darwin(v15);
  v19 = &v55[-v18];
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v55[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = v5[9];
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  v27 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v24, v20);
  if (v27)
  {
    v28 = *(type metadata accessor for AccessoryCommand() + 20);
    v61 = v9;
    v27 = *(v9 + 16);
    (v27)(v19, &a2[v28], v8);
    (v27)(v17, a2, v8);
    v62 = a2;
    a2 = v17;
    if (qword_101694828 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v63 = v5;
  v29 = type metadata accessor for Logger();
  sub_1000076D4(v29, qword_10177B048);
  v30 = v64;
  (v27)(v64, v19, v8);
  v31 = v65;
  (v27)(v65, a2, v8);
  v32 = v66;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v58 = v36;
    v59 = swift_slowAlloc();
    v70[0] = v59;
    *v35 = 138413059;
    *(v35 + 4) = v32;
    *v36 = v32;
    *(v35 + 12) = 2160;
    *(v35 + 14) = 1752392040;
    *(v35 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v66 = v19;
    v60 = a2;
    v37 = v31;
    v38 = v32;
    v57 = v33;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v56 = v34;
    v42 = *(v61 + 8);
    v42(v30, v8);
    v43 = sub_1000136BC(v39, v41, v70);

    *(v35 + 24) = v43;
    *(v35 + 32) = 2082;
    a2 = v60;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    v42(v37, v8);
    v47 = sub_1000136BC(v44, v46, v70);
    v19 = v66;

    *(v35 + 34) = v47;
    v48 = v57;
    _os_log_impl(&_mh_execute_header, v57, v56, "Attempt to connect to AirTag using peripheral: %@. Beacon %{private,mask.hash}s Command %{public}s.", v35, 0x2Au);
    sub_10000B3A8(v58, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {

    v42 = *(v61 + 8);
    v42(v31, v8);
    v42(v30, v8);
  }

  v49 = v62;
  v50 = type metadata accessor for Transaction();
  __chkstk_darwin(v50);
  *&v55[-64] = v63;
  *&v55[-56] = v32;
  v51 = v68;
  v52 = v69;
  *&v55[-48] = v49;
  *&v55[-40] = v52;
  *&v55[-32] = v51;
  *&v55[-24] = v19;
  v53 = v67;
  *&v55[-16] = a2;
  *&v55[-8] = v53;
  static Transaction.named<A>(_:with:)();
  v42(a2, v8);
  return (v42)(v19, v8);
}

uint64_t sub_100668550(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v103 = a8;
  v101 = a7;
  v107 = a6;
  v105 = a5;
  v100 = a4;
  v117 = a1;
  v106 = type metadata accessor for UUID();
  v104 = *(v106 - 8);
  v10 = *(v104 + 64);
  v11 = __chkstk_darwin(v106);
  v116 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v12;
  __chkstk_darwin(v11);
  v115 = v78 - v13;
  v14 = type metadata accessor for AccessoryCommand();
  v98 = *(v14 - 8);
  v15 = *(v98 + 64);
  __chkstk_darwin(v14 - 8);
  v97 = v16;
  v99 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v78 - v19;
  v83 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v84 = *(v83 - 8);
  v21 = *(v84 + 64);
  __chkstk_darwin(v83);
  v81 = v78 - v22;
  v85 = sub_1000BC4D4(&qword_1016A7410, &qword_1013B6190);
  v86 = *(v85 - 8);
  v23 = *(v86 + 64);
  __chkstk_darwin(v85);
  v82 = v78 - v24;
  v89 = sub_1000BC4D4(&qword_1016A7418, &qword_1013B6198);
  v87 = *(v89 - 8);
  v25 = *(v87 + 64);
  __chkstk_darwin(v89);
  v113 = v78 - v26;
  v91 = sub_1000BC4D4(&qword_1016A7420, &qword_1013B61A0);
  v90 = *(v91 - 8);
  v27 = *(v90 + 64);
  __chkstk_darwin(v91);
  v88 = v78 - v28;
  v94 = sub_1000BC4D4(&qword_1016A7428, &qword_1013B61A8);
  v93 = *(v94 - 8);
  v29 = *(v93 + 64);
  __chkstk_darwin(v94);
  v92 = v78 - v30;
  v96 = sub_1000BC4D4(&qword_1016A7430, &unk_1013B61B0);
  v95 = *(v96 - 8);
  v31 = *(v95 + 64);
  __chkstk_darwin(v96);
  v114 = v78 - v32;
  v33 = a2;
  v112 = a2;
  v34 = *(a2 + 56);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v36;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v37;
  *(inited + 120) = &type metadata for UInt32;
  *(inited + 96) = 0x10000;
  v38 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  v39 = *(v34 + 24);
  v108 = a3;
  v40 = sub_10131F050(a3, v38);
  v78[1] = v40;

  v119 = v40;
  v118 = *(v33 + 72);
  v41 = v118;
  v80 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v42 = *(v80 - 8);
  v109 = *(v42 + 56);
  v110 = v42 + 56;
  v109(v20, 1, 1, v80);
  v79 = v41;
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v111 = sub_1000BC488();
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  sub_100003E44(&qword_1016AF9C0, sub_1000BC488);
  v43 = v81;
  v78[0] = v20;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v20, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016A7438, &unk_101409F00);
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30);
  sub_1000041A4(&qword_1016A7440, &qword_1016A7438, &unk_101409F00);
  v44 = v82;
  v45 = v83;
  v46 = v78[0];
  v47 = v80;
  v48 = v43;
  v49 = v79;
  Publisher.flatMap<A>(maxPublishers:_:)();

  (*(v84 + 8))(v48, v45);
  v119 = v49;
  v109(v46, 1, 1, v47);
  sub_1000041A4(&qword_1016A7448, &qword_1016A7410, &qword_1013B6190);
  v50 = v85;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v46, &unk_1016B0FE0, &unk_101391980);

  (*(v86 + 8))(v44, v50);
  if (qword_101694830 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v51, qword_1016A6DF8);
  v119 = v49;
  v109(v46, 1, 1, v47);
  sub_1000041A4(&qword_1016A7450, &qword_1016A7418, &qword_1013B6198);
  v52 = v88;
  v53 = v89;
  v54 = v113;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v46, &unk_1016B0FE0, &unk_101391980);

  (*(v87 + 8))(v54, v53);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  sub_1000041A4(&qword_1016A7458, &qword_1016A7420, &qword_1013B61A0);
  v55 = v92;
  v56 = v91;
  Publisher.map<A>(_:)();
  (*(v90 + 8))(v52, v56);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016A7460, &qword_1016A7428, &qword_1013B61A8);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
  v57 = v94;
  Publisher.catch<A>(_:)();
  (*(v93 + 8))(v55, v57);
  v113 = swift_allocObject();
  swift_weakInit();
  v112 = type metadata accessor for AccessoryCommand;
  v58 = v99;
  sub_10067B9CC(v100, v99, type metadata accessor for AccessoryCommand);
  v59 = v104;
  v60 = *(v104 + 16);
  v61 = v106;
  v60(v115, v101, v106);
  v60(v116, v103, v61);
  v62 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v63 = (v97 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = *(v59 + 80);
  v65 = (v64 + v63 + 16) & ~v64;
  v66 = (v102 + v64 + v65) & ~v64;
  v67 = (v102 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v117;
  *(v68 + 16) = v113;
  *(v68 + 24) = v69;
  sub_10067B810(v58, v68 + v62, v112);
  v70 = (v68 + v63);
  v71 = v107;
  *v70 = v105;
  v70[1] = v71;
  v72 = *(v59 + 32);
  v72(v68 + v65, v115, v61);
  v72(v68 + v66, v116, v61);
  v73 = v108;
  *(v68 + v67) = v108;
  sub_1000041A4(&qword_1016A7468, &qword_1016A7430, &unk_1013B61B0);

  v74 = v73;
  v75 = v96;
  v76 = v114;
  Publisher<>.sink(receiveValue:)();

  (*(v95 + 8))(v76, v75);
  AnyCancellable.store(in:)();
}

uint64_t sub_100669414@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B048);
  sub_100A245E8(0xD00000000000001FLL, 0x800000010135C490);
  v7 = *(a2 + 56);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v9 = sub_1000BC4D4(&qword_1016A7470, &unk_1013B61C0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = v5;
  Future.init(_:)();
  sub_1000041A4(&qword_1016A7478, &qword_1016A7470, &unk_1013B61C0);
  v13 = Publisher.eraseToAnyPublisher()();

  *a3 = v13;
  return result;
}

uint64_t sub_10066958C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v74 = a6;
  v75 = a5;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v18 = &v68[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v68[-v19];
  v21 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v73 = &v68[-v23];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    Transaction.capture()();
    sub_1000D2A70(a1, &v78, &unk_1016A6150, &unk_10139DB30);
    if (v80)
    {
      v81 = v78;
      *v82 = *v79;
      *&v82[9] = *&v79[9];
      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v72 = a9;
      v26 = type metadata accessor for Logger();
      sub_1000076D4(v26, qword_10177B048);
      sub_100101AA8(&v81, v77);
      v27 = v14[2];
      v27(v20, a7, v13);
      v27(v18, a8, v13);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v70 = v28;
        v31 = v30;
        v71 = swift_slowAlloc();
        v76 = v71;
        *v31 = 136446979;
        sub_100101B58();
        v69 = v29;
        v32 = Error.localizedDescription.getter();
        v34 = v33;
        sub_100101B04(v77);
        v35 = sub_1000136BC(v32, v34, &v76);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2160;
        *(v31 + 14) = 1752392040;
        *(v31 + 22) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        v39 = v14[1];
        v39(v20, v13);
        v40 = sub_1000136BC(v36, v38, &v76);

        *(v31 + 24) = v40;
        *(v31 + 32) = 2082;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        v39(v18, v13);
        v44 = sub_1000136BC(v41, v43, &v76);

        *(v31 + 34) = v44;
        v45 = v70;
        _os_log_impl(&_mh_execute_header, v70, v69, "connectAirTag error: %{public}s. Beacon %{private,mask.hash}s Command %{public}s.", v31, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        v59 = v14[1];
        v59(v18, v13);
        v59(v20, v13);
        sub_100101B04(v77);
      }

      v60 = *(*(v25 + 56) + 24);

      v61 = v72;
      v62 = sub_10131FAE0(v72);

      v77[0] = v62;
      *(swift_allocObject() + 16) = v61;
      v63 = v61;
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
      Publisher.oneshot(_:)();

      sub_100101B58();
      v64 = swift_allocError();
      sub_100101AA8(&v81, v65);
      v66 = v73;
      *v73 = v64;
      v67 = type metadata accessor for OwnerCommandManager.Error();
      swift_storeEnumTagMultiPayload();
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      v75(v66);

      sub_10000B3A8(v66, &qword_1016A7258, &qword_1013B6050);
      return sub_100101B04(&v81);
    }

    else
    {
      v46 = v78;
      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_1000076D4(v47, qword_10177B048);
      v48 = v46;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        *(v51 + 4) = v48;
        *v52 = v48;
        v53 = v48;
        _os_log_impl(&_mh_execute_header, v49, v50, "AirTag %@ is connected and ready to send data.", v51, 0xCu);
        sub_10000B3A8(v52, &qword_10169BB30, &unk_10138B3C0);
      }

      sub_1010BF57C(&v81);
      if ((~(*(&v81 + 1) & *&v82[16]) & 0x3000000000000000) != 0)
      {
        sub_10000B3A8(&v81, &qword_1016A72E8, &unk_1013B60D0);
        sub_10066DC64(a4, v48);
        sub_10066A0B0(a4, v48, v75, v74);
      }

      else
      {
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "No AirTag command to execute. Calling completion.", v56, 2u);
        }

        sub_100657074(a4, 0, v48, 0);
        v57 = type metadata accessor for OwnerCommandManager.Error();
        v58 = v73;
        (*(*(v57 - 8) + 56))(v73, 1, 1, v57);
        v75(v58);

        return sub_10000B3A8(v58, &qword_1016A7258, &qword_1013B6050);
      }
    }
  }

  return result;
}

uint64_t sub_100669E80(uint64_t a1, void *a2)
{
  sub_1000D2A70(a1, &v15, &unk_1016A6150, &unk_10139DB30);
  if ((v17 & 1) == 0)
  {
    return sub_10000B3A8(&v15, &unk_1016A6150, &unk_10139DB30);
  }

  v13 = v15;
  *v14 = *v16;
  *&v14[9] = *&v16[9];
  sub_100101B58();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v3 = v13;
  v3[1] = *v14;
  *(v3 + 25) = *&v14[9];
  swift_errorRetain();
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B048);
  swift_errorRetain();
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *(v8 + 12) = 2114;
    *(v8 + 14) = v5;
    *v9 = v10;
    v9[1] = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Disconnection failure: %{public}@ %{public}@!", v8, 0x16u);
    sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10066A0B0(void *a1, char *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v175 = a3;
  v176 = a4;
  v169 = a2;
  v6 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v174 = &v143 - v8;
  v168 = type metadata accessor for UUID();
  v166 = *(v168 - 8);
  v9 = *(v166 + 64);
  v10 = __chkstk_darwin(v168);
  v165 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v164 = &v143 - v12;
  v13 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v177 = &v143 - v15;
  v153 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v151 = *(v153 - 8);
  v16 = *(v151 + 64);
  __chkstk_darwin(v153);
  v150 = &v143 - v17;
  v155 = sub_1000BC4D4(&qword_1016A73E0, &qword_1013B6178);
  v154 = *(v155 - 8);
  v18 = *(v154 + 64);
  __chkstk_darwin(v155);
  v152 = &v143 - v19;
  v160 = sub_1000BC4D4(&qword_1016A73E8, &qword_1013B6180);
  v159 = *(v160 - 8);
  v20 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v143 - v21;
  v163 = sub_1000BC4D4(&qword_1016A73F0, &qword_1013B6188);
  v162 = *(v163 - 8);
  v22 = *(v162 + 64);
  __chkstk_darwin(v163);
  v161 = &v143 - v23;
  v24 = type metadata accessor for AccessoryCommand();
  v157 = *(v24 - 8);
  v25 = *(v157 + 64);
  v26 = __chkstk_darwin(v24);
  v27 = __chkstk_darwin(v26);
  v29 = &v143 - v28;
  v30 = __chkstk_darwin(v27);
  v156 = &v143 - v31;
  __chkstk_darwin(v30);
  v167 = &v143 - v32;
  v33 = type metadata accessor for BinaryEncoder();
  v171 = *(v33 - 8);
  v172 = v33;
  v34 = *(v171 + 64);
  __chkstk_darwin(v33);
  v173 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchPredicate();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = (&v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = v4;
  v41 = *(v4 + 72);
  *v40 = v41;
  (*(v37 + 104))(v40, enum case for DispatchPredicate.onQueue(_:), v36);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  (*(v37 + 8))(v40, v36);
  if ((v41 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  v43 = (a1 + *(v24 + 24));
  v44 = v43[1];
  v45 = v43[4];
  v46 = (v45 >> 59) & 6 | ((v44 & 0x2000000000000000) != 0);
  v40 = a1;
  if (v46 <= 1)
  {
    v149 = v42;
    v47 = v177;
    if (v46)
    {
      v57 = 1;
      v58 = &off_101609AA8;
    }

    else
    {
      v57 = 2;
      v58 = 1;
    }

    goto LABEL_12;
  }

  v47 = v177;
  if ((v46 - 2) < 3 || (v63 = *v43, v64 = v43[5], v65 = v43[2] | v43[3], !v64) && v45 == 0x2000000000000000 && v44 == 0x2000000000000000 && !(v65 | v63) || v64 || v45 != 0x2000000000000000 || v44 != 0x2000000000000000 || v63 != 1 || v65)
  {
    if (qword_101694828 == -1)
    {
LABEL_5:
      v48 = type metadata accessor for Logger();
      sub_1000076D4(v48, qword_10177B048);
      sub_10067B9CC(v40, v29, type metadata accessor for AccessoryCommand);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v180 = v52;
        *v51 = 136446210;
        v53 = sub_1010C00BC(v52);
        v55 = v54;
        sub_10067BA34(v29, type metadata accessor for AccessoryCommand);
        v56 = sub_1000136BC(v53, v55, &v180);

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v49, v50, "_executeAirTag invalid command %{public}s", v51, 0xCu);
        sub_100007BAC(v52);
      }

      else
      {

        sub_10067BA34(v29, type metadata accessor for AccessoryCommand);
      }

      v59 = v175;
      v60 = v174;
      v61 = type metadata accessor for OwnerCommandManager.Error();
      swift_storeEnumTagMultiPayload();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      v59(v60);
      return sub_10000B3A8(v60, &qword_1016A7258, &qword_1013B6050);
    }

LABEL_47:
    swift_once();
    goto LABEL_5;
  }

  v149 = v42;
  v58 = 0;
  v57 = 2;
LABEL_12:
  BinaryEncoder.init()();
  v180 = v58;
  v181 = v57;
  sub_10067C27C();
  v62 = BinaryEncoder.encode<A>(_:)();
  v67 = v66;
  v68 = v62;
  v147 = v58;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  LODWORD(v174) = v57;
  v69 = type metadata accessor for Logger();
  sub_1000076D4(v69, qword_10177B048);
  v70 = v167;
  sub_10067B9CC(v40, v167, type metadata accessor for AccessoryCommand);
  v71 = v68;
  sub_100017D5C(v68, v67);
  sub_100017D5C(v68, v67);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  v74 = os_log_type_enabled(v72, v73);
  v148 = v40;
  if (!v74)
  {
    sub_100016590(v68, v67);
    sub_100016590(v68, v67);

    sub_10067BA34(v70, type metadata accessor for AccessoryCommand);
    goto LABEL_38;
  }

  LODWORD(v146) = v73;
  v75 = swift_slowAlloc();
  v145 = swift_slowAlloc();
  v180 = v145;
  *v75 = 136315650;
  v76 = Data.hexString.getter();
  v78 = sub_1000136BC(v76, v77, &v180);

  *(v75 + 4) = v78;
  *(v75 + 12) = 2048;
  v79 = v67 >> 62;
  if ((v67 >> 62) > 1)
  {
    if (v79 != 2)
    {
      v71 = v68;
      sub_100016590(v68, v67);
      v80 = 0;
      goto LABEL_37;
    }

    v82 = *(v68 + 16);
    v83 = *(v68 + 24);
    result = sub_100016590(v68, v67);
    v80 = v83 - v82;
    if (!__OFSUB__(v83, v82))
    {
      v71 = v68;
      goto LABEL_37;
    }

    __break(1u);
  }

  else
  {
    v71 = v68;
    if (!v79)
    {
      sub_100016590(v68, v67);
      v80 = BYTE6(v67);
LABEL_37:
      *(v75 + 14) = v80;
      sub_100016590(v71, v67);
      *(v75 + 22) = 2082;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      sub_10067BA34(v70, type metadata accessor for AccessoryCommand);
      v88 = sub_1000136BC(v85, v87, &v180);

      *(v75 + 24) = v88;
      _os_log_impl(&_mh_execute_header, v72, v146, "_executeAirTag: Sending %s count %ld commandId: %{public}s", v75, 0x20u);
      swift_arrayDestroy();

      v47 = v177;
LABEL_38:
      v89 = *(*(v170 + 56) + 24);
      v146 = v71;
      v167 = v67;
      v180 = sub_10131FDD8(v71, v67, v169);
      v90 = v149;
      v179 = v149;
      v91 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v144 = *(*(v91 - 8) + 56);
      v144(v47, 1, 1, v91);
      v149 = v90;
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      v92 = sub_1000BC488();
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
      sub_100003E44(&qword_1016AF9C0, sub_1000BC488);
      v93 = v150;
      v94 = v177;
      v145 = v92;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v94, &unk_1016B0FE0, &unk_101391980);

      v95 = v169;
      if (qword_101694830 != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
      sub_1000076D4(v96, qword_1016A6DF8);
      v97 = v149;
      v180 = v149;
      v144(v94, 1, 1, v91);
      sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30);
      v98 = v94;
      v99 = v152;
      v100 = v153;
      Publisher.timeout<A>(_:scheduler:options:customError:)();
      sub_10000B3A8(v98, &unk_1016B0FE0, &unk_101391980);

      (*(v151 + 8))(v93, v100);
      sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
      sub_1000041A4(&qword_1016A73F8, &qword_1016A73E0, &qword_1013B6178);
      v101 = v158;
      v102 = v155;
      Publisher.map<A>(_:)();
      (*(v154 + 8))(v99, v102);
      sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
      sub_1000041A4(&qword_1016A7400, &qword_1016A73E8, &qword_1013B6180);
      sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
      v103 = v161;
      v104 = v160;
      Publisher.catch<A>(_:)();
      (*(v159 + 8))(v101, v104);
      v105 = swift_allocObject();
      v106 = v170;
      swift_weakInit();
      v107 = v156;
      sub_10067B9CC(v148, v156, type metadata accessor for AccessoryCommand);
      v108 = (*(v157 + 80) + 33) & ~*(v157 + 80);
      v109 = swift_allocObject();
      v110 = v147;
      *(v109 + 16) = v105;
      *(v109 + 24) = v110;
      *(v109 + 32) = v174;
      sub_10067B810(v107, v109 + v108, type metadata accessor for AccessoryCommand);
      v111 = (v109 + ((v25 + v108 + 7) & 0xFFFFFFFFFFFFFFF8));
      v112 = v176;
      *v111 = v175;
      v111[1] = v112;
      sub_1000041A4(&qword_1016A7408, &qword_1016A73F0, &qword_1013B6188);

      v113 = v163;
      v114 = Publisher<>.sink(receiveValue:)();

      (*(v162 + 8))(v103, v113);
      v115 = *&v95[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

      v116 = [v115 identifier];
      v117 = v164;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v118 = *(v106 + 104);
      v119 = v146;
      if (*(v118 + 16))
      {
        v120 = *(v106 + 104);

        v121 = sub_1000210EC(v117);
        if (v122)
        {
          v123 = *(*(v118 + 56) + 8 * v121);
          v124 = *(v166 + 8);

          v125 = v117;
          v126 = v168;
          v124(v125, v168);

          v182 = v123;

          sub_100DEF098(&v179, v114);

          v127 = [v115 identifier];
          v128 = v165;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v129 = v182;
          swift_beginAccess();
          v130 = *(v106 + 104);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v178 = *(v106 + 104);
          *(v106 + 104) = 0x8000000000000000;
          sub_100FFF1EC(v129, v128, isUniquelyReferenced_nonNull_native);
          v124(v128, v126);
          v132 = v178;
LABEL_45:
          *(v106 + 104) = v132;
          swift_endAccess();

          sub_100016590(v119, v167);
          return (*(v171 + 8))(v173, v172);
        }
      }

      v133 = *(v166 + 8);
      v134 = v117;
      v135 = v168;
      v133(v134, v168);
      v136 = [v115 identifier];
      v137 = v165;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10138C320;
      *(inited + 32) = v114;

      v139 = sub_10112AE04(inited);
      swift_setDeallocating();
      v140 = *(inited + 16);
      swift_arrayDestroy();
      swift_beginAccess();
      v141 = *(v106 + 104);
      v142 = swift_isUniquelyReferenced_nonNull_native();
      v182 = *(v106 + 104);
      *(v106 + 104) = 0x8000000000000000;
      sub_100FFF1EC(v139, v137, v142);
      v133(v137, v135);
      v132 = v182;
      goto LABEL_45;
    }

    v84 = HIDWORD(v68);
    result = sub_100016590(v71, v67);
    LODWORD(v80) = v84 - v71;
    if (!__OFSUB__(v84, v71))
    {
      v80 = v80;
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10066B8E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v91 = a7;
  v92 = a6;
  v90 = a5;
  v83 = a4;
  v82 = a3;
  v8 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v77 - v10;
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v89 - 8);
  v12 = *(v88 + 64);
  __chkstk_darwin(v89);
  v86 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  v14 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for AccessoryCommand();
  v81 = *(v77 - 8);
  v16 = *(v81 + 64);
  v17 = __chkstk_darwin(v77);
  v18 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v77 - v20;
  __chkstk_darwin(v19);
  v23 = &v77 - v22;
  v24 = type metadata accessor for DispatchQoS.QoSClass();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v80 = v11;
    v79 = result;
    v30 = *(result + 64);
    if (v30)
    {
      v78 = *(result + 64);
    }

    else
    {
      sub_1000BC488();
      (*(v25 + 104))(v28, enum case for DispatchQoS.QoSClass.default(_:), v24);
      v78 = static OS_dispatch_queue.global(qos:)();
      (*(v25 + 8))(v28, v24);
    }

    sub_1000D2A70(a1, &v97, &unk_1016A6150, &unk_10139DB30);
    if (v99)
    {
      aBlock = v97;
      *v94 = *v98;
      *&v94[9] = *&v98[9];
      v31 = qword_101694828;
      v32 = v30;
      if (v31 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_10177B048);
      sub_100101AA8(&aBlock, v96);
      v34 = v90;
      sub_10067B9CC(v90, v21, type metadata accessor for AccessoryCommand);
      sub_10067B9CC(v34, v18, type metadata accessor for AccessoryCommand);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v95 = v90;
        *v37 = 136446979;
        sub_100101B58();
        v38 = Error.localizedDescription.getter();
        v40 = v39;
        sub_100101B04(v96);
        v41 = sub_1000136BC(v38, v40, &v95);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2160;
        *(v37 + 14) = 1752392040;
        *(v37 + 22) = 2081;
        v42 = *(v77 + 20);
        type metadata accessor for UUID();
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        sub_10067BA34(v21, type metadata accessor for AccessoryCommand);
        v46 = sub_1000136BC(v43, v45, &v95);

        *(v37 + 24) = v46;
        *(v37 + 32) = 2082;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        sub_10067BA34(v18, type metadata accessor for AccessoryCommand);
        v50 = sub_1000136BC(v47, v49, &v95);

        *(v37 + 34) = v50;
        _os_log_impl(&_mh_execute_header, v35, v36, "_executeAirTag error: %{public}s. Beacon %{private,mask.hash}s Command %{public}s.", v37, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_10067BA34(v18, type metadata accessor for AccessoryCommand);
        sub_10067BA34(v21, type metadata accessor for AccessoryCommand);
        sub_100101B04(v96);
      }

      v73 = v80;
      sub_100101B58();
      v74 = swift_allocError();
      sub_100101AA8(&aBlock, v75);
      *v73 = v74;
      v76 = type metadata accessor for OwnerCommandManager.Error();
      swift_storeEnumTagMultiPayload();
      (*(*(v76 - 8) + 56))(v73, 0, 1, v76);
      v92(v73);

      sub_10000B3A8(v73, &qword_1016A7258, &qword_1013B6050);
      return sub_100101B04(&aBlock);
    }

    else
    {
      v51 = v97;
      v52 = qword_101694828;
      v53 = v30;
      if (v52 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_1000076D4(v54, qword_10177B048);
      v55 = v51;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      v58 = os_log_type_enabled(v56, v57);
      v59 = v80;
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v55;
        *v61 = v55;
        v62 = v55;
        _os_log_impl(&_mh_execute_header, v56, v57, "Command successfully sent to AirTag %@", v60, 0xCu);
        sub_10000B3A8(v61, &qword_10169BB30, &unk_10138B3C0);
      }

      sub_10067B9CC(v90, v23, type metadata accessor for AccessoryCommand);
      v63 = (*(v81 + 80) + 40) & ~*(v81 + 80);
      v64 = swift_allocObject();
      v65 = v82;
      *(v64 + 16) = v82;
      v66 = v83;
      *(v64 + 24) = v83;
      *(v64 + 32) = v79;
      sub_10067B810(v23, v64 + v63, type metadata accessor for AccessoryCommand);
      *&v94[16] = sub_10068062C;
      *&v94[24] = v64;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *v94 = sub_100006684;
      *&v94[8] = &unk_10162D400;
      v67 = _Block_copy(&aBlock);
      sub_10067FBD8(v65, v66);

      v68 = v84;
      static DispatchQoS.unspecified.getter();
      v96[0] = _swiftEmptyArrayStorage;
      sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v69 = v86;
      v70 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v71 = v78;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v67);
      (*(v88 + 8))(v69, v70);
      (*(v85 + 8))(v68, v87);

      v72 = type metadata accessor for OwnerCommandManager.Error();
      (*(*(v72 - 8) + 56))(v59, 1, 1, v72);
      v92(v59);

      return sub_10000B3A8(v59, &qword_1016A7258, &qword_1013B6050);
    }
  }

  return result;
}

uint64_t sub_10066C474(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return result;
  }

  if (a2 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = *(type metadata accessor for AccessoryCommand() + 20);
    v7 = "SPPlaySound didStartPlayingSoundOnDevice %{private,mask.hash}s error %{public}s. CommandId: %{public}s";
    v8 = sub_10082A3B0;
  }

  else
  {
    v9 = result;
    result = swift_unknownObjectWeakLoadStrong();
    v5 = result;
    if (v9)
    {
      if (!result)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (!result)
    {
      return result;
    }

    v6 = *(type metadata accessor for AccessoryCommand() + 20);
    v7 = "SPPlaySound didStopPlayingSoundOnDevice %{private,mask.hash}s error %{public}s. CommandId: %{public}s";
    v8 = sub_10082DB80;
  }

  sub_10067BD08(a4 + v6, a4, 0, v5, v7, v8);
LABEL_11:

  return swift_unknownObjectRelease();
}

uint64_t sub_10066C564(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v6 = v5;
  v43 = a4;
  v44 = a5;
  v41 = a3;
  v42 = a2;
  v8 = *v6;
  v9 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for AccessoryCommand();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v6[9];
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1010BF57C(&v45);
  if ((~(v46 & v48) & 0x3000000000000000) == 0)
  {
    if (qword_101694828 == -1)
    {
LABEL_4:
      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177B048);
      sub_10067B9CC(a1, v16, type metadata accessor for AccessoryCommand);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v50[0] = v28;
        *v27 = 136446210;
        v29 = sub_1010C00BC(v28);
        v31 = v30;
        sub_10067BA34(v16, type metadata accessor for AccessoryCommand);
        v32 = sub_1000136BC(v29, v31, v50);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "_execute invalid command %{public}s", v27, 0xCu);
        sub_100007BAC(v28);
      }

      else
      {

        sub_10067BA34(v16, type metadata accessor for AccessoryCommand);
      }

      v39 = type metadata accessor for OwnerCommandManager.Error();
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(v12, 0, 1, v39);
      v43(v12);
      return sub_10000B3A8(v12, &qword_1016A7258, &qword_1013B6050);
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v50[0] = v45;
  v50[1] = v46;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  v33 = a1 + *(v13 + 24);
  if (!((*(v33 + 32) >> 59) & 6 | ((*(v33 + 8) & 0x2000000000000000) != 0)))
  {
    *(v6 + 176) = *v33 & 1;
  }

  v34 = type metadata accessor for Transaction();
  __chkstk_darwin(v34);
  *(&v40 - 8) = v6;
  *(&v40 - 7) = v50;
  v35 = v42;
  *(&v40 - 6) = v41;
  *(&v40 - 5) = a1;
  v37 = v43;
  v36 = v44;
  *(&v40 - 4) = v35;
  *(&v40 - 3) = v37;
  *(&v40 - 2) = v36;
  *(&v40 - 1) = v8;
  static Transaction.named<A>(_:with:)();
  return sub_10000B3A8(&v45, &qword_1016A72E8, &unk_1013B60D0);
}

uint64_t sub_10066CA58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v112 = a8;
  v108 = a7;
  v110 = a6;
  v107 = a5;
  v109 = a1;
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v116 = type metadata accessor for UUID();
  v115 = *(v116 - 8);
  v13 = *(v115 + 64);
  v14 = __chkstk_darwin(v116);
  v114 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v91 - v16;
  v17 = type metadata accessor for AccessoryCommand();
  v105 = *(v17 - 8);
  v18 = *(v105 + 64);
  __chkstk_darwin(v17 - 8);
  v104 = v19;
  v106 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v91 - v22;
  v95 = sub_1000BC4D4(&qword_1016A73A0, &qword_1013B6150);
  v93 = *(v95 - 8);
  v24 = *(v93 + 64);
  __chkstk_darwin(v95);
  v117 = &v91 - v25;
  v97 = sub_1000BC4D4(&qword_1016A73A8, &qword_1013B6158);
  v96 = *(v97 - 8);
  v26 = *(v96 + 64);
  __chkstk_darwin(v97);
  v94 = &v91 - v27;
  v100 = sub_1000BC4D4(&qword_1016A73B0, &qword_1013B6160);
  v99 = *(v100 - 8);
  v28 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v91 - v29;
  v103 = sub_1000BC4D4(&qword_1016A73B8, &unk_1013B6168);
  v102 = *(v103 - 8);
  v30 = *(v102 + 64);
  __chkstk_darwin(v103);
  v118 = &v91 - v31;
  v32 = swift_allocObject();
  v119 = v32;
  *(v32 + 16) = 0;
  v101 = v32 + 16;
  v33 = *(a3 + 16);
  v124[0] = *a3;
  v124[1] = v33;
  v125 = v11;
  v126 = v12;
  v127 = 0;
  sub_10067C2E0(a3, &v123);
  v111 = a4;
  v34 = sub_100677DD8(v124, a4);
  sub_10000B3A8(v124, &qword_1016A72E0, &qword_1013B60C8);
  *&v124[0] = v34;
  v120 = a2;
  v123 = *(a2 + 72);
  v35 = v123;
  v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v91 = *(*(v36 - 8) + 56);
  v91(v23, 1, 1, v36);
  v92 = v35;
  sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
  sub_1000BC488();
  sub_1000041A4(&qword_1016A7320, &qword_1016A72D8, &qword_1013B60C0);
  sub_100003E44(&qword_1016AF9C0, sub_1000BC488);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v23, &unk_1016B0FE0, &unk_101391980);

  if (qword_101694830 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v37, qword_1016A6DF8);
  v38 = v92;
  *&v124[0] = v92;
  v91(v23, 1, 1, v36);
  sub_1000041A4(&qword_1016A73C0, &qword_1016A73A0, &qword_1013B6150);
  v39 = v94;
  v40 = v95;
  v41 = v117;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v23, &unk_1016B0FE0, &unk_101391980);

  (*(v93 + 8))(v41, v40);
  sub_1000BC4D4(&qword_1016A72B0, &qword_1013B60A8);
  sub_1000041A4(&qword_1016A73C8, &qword_1016A73A8, &qword_1013B6158);
  v42 = v98;
  v43 = v97;
  Publisher.map<A>(_:)();
  (*(v96 + 8))(v39, v43);
  sub_1000BC4D4(&qword_1016A7338, &unk_1013B6118);
  sub_1000041A4(&qword_1016A73D0, &qword_1016A73B0, &qword_1013B6160);
  sub_1000041A4(&qword_1016A7348, &qword_1016A7338, &unk_1013B6118);
  v44 = v100;
  Publisher.catch<A>(_:)();
  (*(v99 + 8))(v42, v44);
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = v106;
  sub_10067B9CC(v107, v106, type metadata accessor for AccessoryCommand);
  v47 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v48 = (v104 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v45;
  *(v51 + 24) = v109;
  sub_10067B810(v46, v51 + v47, type metadata accessor for AccessoryCommand);
  v52 = v119;
  *(v51 + v48) = v119;
  v53 = v110;
  *(v51 + v49) = v110;
  *(v51 + v50) = v111;
  v54 = (v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8));
  v55 = v112;
  *v54 = v108;
  v54[1] = v55;
  sub_1000041A4(&qword_1016A73D8, &qword_1016A73B8, &unk_1013B6168);

  v56 = v53;

  v57 = v103;
  v58 = v118;
  v59 = Publisher<>.sink(receiveValue:)();

  (*(v102 + 8))(v58, v57);
  swift_beginAccess();
  v60 = *(v52 + 16);
  *(v52 + 16) = v59;

  v61 = *&v56[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  v118 = v59;

  v62 = [v61 identifier];
  v63 = v113;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = v120;
  swift_beginAccess();
  v65 = *(v64 + 104);
  if (!*(v65 + 16))
  {
    goto LABEL_7;
  }

  v66 = *(v64 + 104);

  v67 = sub_1000210EC(v63);
  if ((v68 & 1) == 0)
  {

LABEL_7:
    v80 = *(v115 + 8);
    v81 = v63;
    v82 = v116;
    v80(v81, v116);
    v83 = [v61 identifier];
    v84 = v114;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138C320;
    *(inited + 32) = v118;

    v86 = sub_10112AE04(inited);
    swift_setDeallocating();
    v87 = *(inited + 16);
    swift_arrayDestroy();
    swift_beginAccess();
    v88 = *(v64 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v64 + 104);
    *(v64 + 104) = 0x8000000000000000;
    sub_100FFF1EC(v86, v84, isUniquelyReferenced_nonNull_native);
    v80(v84, v82);
    v79 = v128;
    goto LABEL_8;
  }

  v69 = *(*(v65 + 56) + 8 * v67);
  v70 = *(v115 + 8);

  v71 = v63;
  v72 = v116;
  v70(v71, v116);

  v128 = v69;
  v73 = v118;

  sub_100DEF098(&v122, v73);

  v74 = [v61 identifier];
  v75 = v114;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v76 = v128;
  swift_beginAccess();
  v77 = *(v64 + 104);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *(v64 + 104);
  *(v64 + 104) = 0x8000000000000000;
  sub_100FFF1EC(v76, v75, v78);
  v70(v75, v72);
  v79 = v121;
LABEL_8:
  *(v64 + 104) = v79;
  swift_endAccess();
}

uint64_t sub_10066D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void (*a8)(void), uint64_t a9)
{
  v45 = a6;
  v14 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = (&v40 - v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    Transaction.capture()();
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177B048);
    sub_1000D2A70(a1, &v49, &qword_1016A72B0, &qword_1013B60A8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v44 = v19;
      v24 = v23;
      v25 = swift_slowAlloc();
      v43 = a9;
      v40 = v25;
      v48 = v25;
      *v24 = 136446210;
      v42 = a7;
      v41 = v17;
      sub_1000D2A70(&v49, &v46, &qword_1016A72B0, &qword_1013B60A8);
      sub_1000BC4D4(&qword_1016A72B0, &qword_1013B60A8);
      v26 = a4;
      v27 = String.init<A>(describing:)();
      v28 = a1;
      v29 = a5;
      v30 = a8;
      v32 = v31;
      v17 = v41;
      sub_10000B3A8(&v49, &qword_1016A72B0, &qword_1013B60A8);
      v33 = v27;
      a4 = v26;
      v34 = sub_1000136BC(v33, v32, &v48);
      a8 = v30;
      a5 = v29;
      a1 = v28;

      *(v24 + 4) = v34;
      a7 = v42;
      _os_log_impl(&_mh_execute_header, v21, v22, "commandSubscription result: %{public}s", v24, 0xCu);
      sub_100007BAC(v40);
    }

    else
    {

      sub_10000B3A8(&v49, &qword_1016A72B0, &qword_1013B60A8);
    }

    sub_1000D2A70(a1, &v49, &qword_1016A72B0, &qword_1013B60A8);
    if (v51)
    {
      v46 = v49;
      v47[0] = *v50;
      *(v47 + 9) = *&v50[9];
      swift_beginAccess();
      v35 = *(a5 + 16);

      sub_100657074(a4, v35, v45, a7);

      sub_100101B58();
      v36 = swift_allocError();
      sub_100101AA8(&v46, v37);
      *v17 = v36;
      v38 = type metadata accessor for OwnerCommandManager.Error();
      swift_storeEnumTagMultiPayload();
      (*(*(v38 - 8) + 56))(v17, 0, 1, v38);
      a8(v17);

      sub_10000B3A8(v17, &qword_1016A7258, &qword_1013B6050);
      return sub_100101B04(&v46);
    }

    else
    {
      sub_10000B3A8(&v49, &qword_1016A72B0, &qword_1013B60A8);
      v39 = type metadata accessor for OwnerCommandManager.Error();
      (*(*(v39 - 8) + 56))(v17, 1, 1, v39);
      a8(v17);

      return sub_10000B3A8(v17, &qword_1016A7258, &qword_1013B6050);
    }
  }

  return result;
}

uint64_t sub_10066DC64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v59 = a2;
  v60 = v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v61 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v58 = &v51[-v12];
  v13 = __chkstk_darwin(v11);
  v15 = &v51[-v14];
  __chkstk_darwin(v13);
  v17 = &v51[-v16];
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v51[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = v3[9];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  v27 = *(v19 + 8);
  v26 = (v19 + 8);
  v27(v22, v18);
  if (v25)
  {
    v28 = *(type metadata accessor for AccessoryCommand() + 20);
    v56 = v7;
    v25 = *(v7 + 16);
    (v25)(v17, a1 + v28, v6);
    (v25)(v15, a1, v6);
    v26 = v15;
    if (qword_101694828 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v57 = v3;
  v29 = type metadata accessor for Logger();
  sub_1000076D4(v29, qword_10177B048);
  v30 = v58;
  (v25)(v58, v17, v6);
  (v25)(v61, v26, v6);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = v17;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = swift_slowAlloc();
    v55 = a1;
    v35 = v34;
    v53 = swift_slowAlloc();
    v62[0] = v53;
    *v35 = 141558531;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v54 = v26;
    v52 = v32;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v17;
    v39 = v38;
    v40 = *(v56 + 8);
    v40(v30, v6);
    v41 = sub_1000136BC(v36, v39, v62);
    v33 = v37;

    *(v35 + 14) = v41;
    *(v35 + 22) = 2082;
    v42 = v61;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v40(v42, v6);
    v46 = sub_1000136BC(v43, v45, v62);
    v26 = v54;

    *(v35 + 24) = v46;
    _os_log_impl(&_mh_execute_header, v31, v52, "receiveData: beacon %{private,mask.hash}s Command %{public}s", v35, 0x20u);
    swift_arrayDestroy();

    a1 = v55;
  }

  else
  {

    v40 = *(v56 + 8);
    v40(v61, v6);
    v40(v30, v6);
  }

  v47 = type metadata accessor for Transaction();
  __chkstk_darwin(v47);
  v49 = v59;
  v48 = v60;
  *&v51[-48] = v57;
  *&v51[-40] = v49;
  *&v51[-32] = a1;
  *&v51[-24] = v33;
  *&v51[-16] = v26;
  *&v51[-8] = v48;
  static Transaction.named<A>(_:with:)();
  v40(v26, v6);
  return (v40)(v33, v6);
}

uint64_t sub_10066E208(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)())
{
  v128 = a6;
  v126 = a5;
  v132 = a4;
  v137 = a1;
  v138 = type metadata accessor for UUID();
  v140 = *(v138 - 8);
  v9 = v140[8];
  v10 = __chkstk_darwin(v138);
  v130 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v136 = v105 - v13;
  v127 = v14;
  __chkstk_darwin(v12);
  v139 = v105 - v15;
  v16 = type metadata accessor for AccessoryCommand();
  v117 = *(v16 - 8);
  v135 = *(v117 + 64);
  __chkstk_darwin(v16 - 8);
  v141 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v105 - v20;
  v113 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v114 = *(v113 - 8);
  v22 = *(v114 + 64);
  __chkstk_darwin(v113);
  v24 = v105 - v23;
  v115 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v116 = *(v115 - 8);
  v25 = *(v116 + 64);
  __chkstk_darwin(v115);
  v110 = v105 - v26;
  v119 = sub_1000BC4D4(&qword_1016A7358, &qword_1013B6128);
  v118 = *(v119 - 8);
  v27 = *(v118 + 64);
  __chkstk_darwin(v119);
  v112 = v105 - v28;
  v122 = sub_1000BC4D4(&qword_1016A7360, &qword_1013B6130);
  v121 = *(v122 - 8);
  v29 = *(v121 + 64);
  __chkstk_darwin(v122);
  v120 = v105 - v30;
  v125 = sub_1000BC4D4(&qword_1016A7368, &qword_1013B6138);
  v124 = *(v125 - 8);
  v31 = *(v124 + 64);
  __chkstk_darwin(v125);
  v133 = v105 - v32;
  v33 = swift_allocObject();
  v134 = v33;
  *(v33 + 16) = 0;
  v123 = v33 + 16;
  v34 = *(*(*(a2 + 56) + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  v142 = *(*(a2 + 56) + 24);
  v143 = a3;
  v129 = a3;
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  Lock.callAsFunction<A>(_:)();
  v131 = v6;
  v146 = *(a2 + 72);
  v35 = v146;
  v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v109 = v36;
  v108 = v38;
  v107 = v37 + 56;
  (v38)(v21, 1, 1);
  v39 = sub_1000BC488();
  sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0);
  v40 = sub_100003E44(&qword_1016AF9C0, sub_1000BC488);
  v106 = v35;
  v111 = v39;
  v105[1] = v40;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v21, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
  sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0);
  v41 = a2;
  sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0);
  v42 = v110;
  v43 = v113;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v114 + 8))(v24, v43);
  v44 = v141;
  sub_10067B9CC(v132, v141, type metadata accessor for AccessoryCommand);
  v45 = *(v117 + 80);
  v117 = ~v45;
  v46 = swift_allocObject();
  *(v46 + 16) = v41;
  v47 = v112;
  sub_10067B810(v44, v46 + ((v45 + 24) & ~v45), type metadata accessor for AccessoryCommand);

  sub_1000BC4D4(&qword_1016A7370, &qword_1013B6140);
  sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0);
  v48 = v115;
  Publisher.map<A>(_:)();

  (*(v116 + 8))(v42, v48);
  if (qword_101694830 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v49, qword_1016A6DF8);
  v50 = v106;
  v147 = v106;
  v108(v21, 1, 1, v109);
  sub_1000041A4(&qword_1016A7378, &qword_1016A7358, &qword_1013B6128);
  v51 = v120;
  v52 = v119;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v21, &unk_1016B0FE0, &unk_101391980);

  (*(v118 + 8))(v47, v52);
  sub_1000BC4D4(&qword_1016A7380, &qword_1013B6148);
  sub_1000041A4(&qword_1016A7388, &qword_1016A7360, &qword_1013B6130);
  sub_1000041A4(&qword_1016A7390, &qword_1016A7380, &qword_1013B6148);
  v53 = v122;
  Publisher.catch<A>(_:)();
  (*(v121 + 8))(v51, v53);
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = v140;
  v56 = v140[2];
  v57 = v139;
  v58 = v138;
  v56(v139, v126, v138);
  v56(v136, v128, v58);
  v128 = type metadata accessor for AccessoryCommand;
  sub_10067B9CC(v132, v141, type metadata accessor for AccessoryCommand);
  v59 = *(v55 + 80);
  v60 = (v59 + 32) & ~v59;
  v61 = v41;
  v62 = (v127 + v59 + v60) & ~v59;
  v63 = (v127 + v45 + v62) & v117;
  v135 = (v135 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v66 = v137;
  *(v65 + 16) = v54;
  *(v65 + 24) = v66;
  v67 = v55[4];
  v68 = v65 + v60;
  v69 = v138;
  v67(v68, v57, v138);
  v70 = v65 + v62;
  v71 = v69;
  v67(v70, v136, v69);
  v72 = v61;
  sub_10067B810(v141, v65 + v63, v128);
  v73 = v134;
  *(v65 + v135) = v134;
  v74 = v129;
  *(v65 + v64) = v129;
  sub_1000041A4(&qword_1016A7398, &qword_1016A7368, &qword_1013B6138);

  v75 = v74;
  v76 = v125;
  v77 = v133;
  v78 = Publisher<>.sink(receiveValue:)();

  (*(v124 + 8))(v77, v76);
  swift_beginAccess();
  v79 = *(v73 + 16);
  *(v73 + 16) = v78;

  v80 = *&v75[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

  v81 = [v80 identifier];
  v82 = v130;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v83 = *(v72 + 88);
  if (!*(v83 + 16))
  {
    goto LABEL_7;
  }

  v84 = *(v72 + 88);

  v85 = sub_1000210EC(v82);
  if ((v86 & 1) == 0)
  {

LABEL_7:
    v96 = v140[1];
    v96(v82, v71);
    v97 = [v80 identifier];
    v98 = v139;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138C320;
    *(inited + 32) = v78;

    v100 = sub_10112AE04(inited);
    swift_setDeallocating();
    v101 = *(inited + 16);
    swift_arrayDestroy();
    swift_beginAccess();
    v102 = *(v72 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = *(v72 + 88);
    *(v72 + 88) = 0x8000000000000000;
    sub_100FFF1EC(v100, v98, isUniquelyReferenced_nonNull_native);
    v96(v98, v71);
    v95 = v148;
    goto LABEL_8;
  }

  v87 = v82;
  v88 = *(*(v83 + 56) + 8 * v85);
  v89 = v140[1];

  v89(v87, v71);

  v148 = v88;

  sub_100DEF098(&v145, v78);

  v90 = [v80 identifier];
  v91 = v139;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v92 = v148;
  swift_beginAccess();
  v93 = *(v72 + 88);
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *(v72 + 88);
  *(v72 + 88) = 0x8000000000000000;
  sub_100FFF1EC(v92, v91, v94);
  v89(v91, v71);
  v95 = v144;
LABEL_8:
  *(v72 + 88) = v95;
  swift_endAccess();
}

uint64_t sub_10066F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v88 = a8;
  v87 = a7;
  v89 = a4;
  v90 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v79 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v79 - v20;
  __chkstk_darwin(v19);
  v23 = &v79 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v84 = a5;
  v85 = v23;
  v86 = result;
  Transaction.capture()();
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000076D4(v25, qword_10177B048);
  sub_1000D2A70(v90, &v95, &qword_1016A7370, &qword_1013B6140);
  v83 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v82 = a6;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v80 = v15;
    v32 = v31;
    v94[0] = v31;
    *v30 = 136446210;
    v81 = v11;
    v79 = v21;
    sub_1000D2A70(&v95, &v91, &qword_1016A7370, &qword_1013B6140);
    sub_1000BC4D4(&qword_1016A7370, &qword_1013B6140);
    v33 = v10;
    v34 = String.init<A>(describing:)();
    v36 = v35;
    v21 = v79;
    sub_10000B3A8(&v95, &qword_1016A7370, &qword_1013B6140);
    v37 = sub_1000136BC(v34, v36, v94);

    *(v30 + 4) = v37;
    v11 = v81;
    v10 = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "receiveData result: %{public}s", v30, 0xCu);
    sub_100007BAC(v32);
    v15 = v80;
  }

  else
  {

    sub_10000B3A8(&v95, &qword_1016A7370, &qword_1013B6140);
  }

  sub_1000D2A70(v90, &v95, &qword_1016A7370, &qword_1013B6140);
  v38 = v85;
  if ((v97 & 1) == 0)
  {
    v57 = BYTE9(v95);
    sub_100680474(v95, SBYTE8(v95));
    v58 = v11[2];
    v58(v38, v89, v10);
    v58(v21, v84, v10);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v91 = v89;
      *v61 = 67109891;
      *(v61 + 4) = v57;
      *(v61 + 8) = 2160;
      *(v61 + 10) = 1752392040;
      *(v61 + 18) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v90) = v57;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v38;
      v65 = v64;
      v66 = v11[1];
      v66(v63, v10);
      v67 = sub_1000136BC(v62, v65, &v91);

      *(v61 + 20) = v67;
      *(v61 + 28) = 2082;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v66(v21, v10);
      v71 = sub_1000136BC(v68, v70, &v91);
      LODWORD(v70) = v90;

      *(v61 + 30) = v71;
      _os_log_impl(&_mh_execute_header, v59, v60, "receiveData success complete? %{BOOL}d. Beacon %{private,mask.hash}s Command %{public}s.", v61, 0x26u);
      swift_arrayDestroy();

      if (!v70)
      {
      }
    }

    else
    {

      v75 = v11[1];
      v75(v21, v10);
      v75(v38, v10);
      if (!v57)
      {
      }
    }

    v76 = v87;
    swift_beginAccess();
    v77 = *(v76 + 16);

    sub_100657074(v82, v77, v88, 0);

    swift_beginAccess();
    v78 = *(v76 + 16);
    *(v76 + 16) = 0;
  }

  v91 = v95;
  v92[0] = *v96;
  *(v92 + 9) = *&v96[9];
  sub_100101AA8(&v91, v94);
  v39 = v11[2];
  v39(v18, v89, v10);
  v39(v15, v84, v10);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v93 = v90;
    *v42 = 136446979;
    LODWORD(v89) = v41;
    v43 = sub_1013181BC();
    v45 = v44;
    sub_100101B04(v94);
    v46 = sub_1000136BC(v43, v45, &v93);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2160;
    *(v42 + 14) = 1752392040;
    *(v42 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v15;
    v50 = v49;
    v51 = v11[1];
    v51(v18, v10);
    v52 = sub_1000136BC(v47, v50, &v93);

    *(v42 + 24) = v52;
    *(v42 + 32) = 2082;
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v51(v48, v10);
    v56 = sub_1000136BC(v53, v55, &v93);

    *(v42 + 34) = v56;
    _os_log_impl(&_mh_execute_header, v40, v89, "receiveData error %{public}s.\nBeacon %{private,mask.hash}s Command %{public}s", v42, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v72 = v11[1];
    v72(v15, v10);
    v72(v18, v10);
    sub_100101B04(v94);
  }

  v73 = v87;
  swift_beginAccess();
  v74 = *(v73 + 16);

  sub_100657074(v82, v74, v88, 0);

  return sub_100101B04(&v91);
}

uint64_t sub_10066FC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a3;
  v29 = a2;
  v27 = *v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v3[9];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = type metadata accessor for AccessoryCommand();
    v23 = v7[2];
    v23(v13, a1 + *(v22 + 20), v6);
    v23(v11, a1, v6);
    v24 = type metadata accessor for Transaction();
    __chkstk_darwin(v24);
    v25 = v29;
    *(&v27 - 8) = v28;
    *(&v27 - 7) = v4;
    *(&v27 - 6) = a1;
    *(&v27 - 5) = v13;
    *(&v27 - 4) = v11;
    *(&v27 - 3) = v25;
    *(&v27 - 2) = v27;
    static Transaction.named<A>(_:with:)();
    v26 = v7[1];
    v26(v11, v6);
    return (v26)(v13, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10066FEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v161 = a7;
  v160 = a6;
  v157 = a5;
  v166 = a4;
  v174 = a3;
  v170 = a1;
  v8 = type metadata accessor for UUID();
  v171 = *(v8 - 8);
  v172 = v8;
  v9 = v171[8];
  v10 = __chkstk_darwin(v8);
  v162 = v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v168 = v129 - v13;
  v159 = v14;
  __chkstk_darwin(v12);
  v175 = v129 - v15;
  v16 = type metadata accessor for AccessoryCommand();
  v147 = *(v16 - 8);
  v17 = *(v147 + 64);
  __chkstk_darwin(v16 - 8);
  v167 = v18;
  v164 = v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v165 = v129 - v21;
  v144 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v143 = *(v144 - 8);
  v22 = *(v143 + 64);
  __chkstk_darwin(v144);
  v142 = v129 - v23;
  v148 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v146 = *(v148 - 8);
  v24 = *(v146 + 64);
  __chkstk_darwin(v148);
  v145 = v129 - v25;
  v151 = sub_1000BC4D4(&qword_1016A72F0, &qword_1013B60E8);
  v150 = *(v151 - 8);
  v26 = *(v150 + 64);
  __chkstk_darwin(v151);
  v149 = v129 - v27;
  v153 = sub_1000BC4D4(&qword_1016A72F8, &qword_1013B60F0);
  v152 = *(v153 - 8);
  v28 = *(v152 + 64);
  __chkstk_darwin(v153);
  v163 = (v129 - v29);
  v155 = sub_1000BC4D4(&qword_1016A7300, &qword_1013B60F8);
  v154 = *(v155 - 8);
  v30 = *(v154 + 64);
  __chkstk_darwin(v155);
  v32 = v129 - v31;
  v33 = sub_1000BC4D4(&qword_1016A7308, &qword_1013B6100);
  v156 = *(v33 - 8);
  v34 = *(v156 + 64);
  __chkstk_darwin(v33);
  v36 = v129 - v35;
  v37 = sub_1000BC4D4(&qword_1016A7310, &unk_1013B6108);
  v158 = *(v37 - 8);
  v38 = *(v158 + 64);
  __chkstk_darwin(v37);
  v40 = v129 - v39;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = *(a2 + 16);
  v43 = sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v169 = a2;
  v141 = v43;
  v44 = v173;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (!v44)
  {
    v134 = v32;
    v135 = v36;
    v136 = v33;
    v137 = v41 + 16;
    v173 = v40;
    v138 = v37;
    v140 = v41;
    v139 = 0;
    v53 = v174;
    v178 = *(v174 + 72);
    v54 = v178;
    v55 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v56 = *(v55 - 8);
    v57 = *(v56 + 56);
    v58 = v165;
    v133 = v55;
    v132 = v57;
    v131 = v56 + 56;
    (v57)(v165, 1, 1);
    v59 = sub_1000BC488();
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0);
    v60 = sub_100003E44(&qword_1016AF9C0, sub_1000BC488);
    v130 = v54;
    v61 = v142;
    v141 = v59;
    v129[1] = v60;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v58, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0);
    v129[0] = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0);
    v62 = v145;
    v63 = v144;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v143 + 8))(v61, v63);
    v64 = v164;
    sub_10067B9CC(v166, v164, type metadata accessor for AccessoryCommand);
    v65 = *(v147 + 80);
    v144 = ~v65;
    v66 = (v65 + 24) & ~v65;
    v147 = v65;
    v67 = swift_allocObject();
    *(v67 + 16) = v53;
    sub_10067B810(v64, v67 + v66, type metadata accessor for AccessoryCommand);

    sub_1000BC4D4(&qword_1016A72E0, &qword_1013B60C8);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0);
    v68 = v149;
    v69 = v148;
    Publisher.map<A>(_:)();

    (*(v146 + 8))(v62, v69);
    v70 = swift_allocObject();
    v71 = v169;
    *(v70 + 16) = v53;
    *(v70 + 24) = v71;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
    sub_1000041A4(&qword_1016A7318, &qword_1016A72F0, &qword_1013B60E8);
    sub_1000041A4(&qword_1016A7320, &qword_1016A72D8, &qword_1013B60C0);
    v72 = v151;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v150 + 8))(v68, v72);
    v73 = v166;
    if (qword_101694830 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v74, qword_1016A6DF8);
    v75 = v130;
    v179 = v130;
    v76 = v165;
    v132(v165, 1, 1, v133);
    sub_1000041A4(&qword_1016A7328, &qword_1016A72F8, &qword_1013B60F0);
    v77 = v134;
    v78 = v153;
    v79 = v163;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v76, &unk_1016B0FE0, &unk_101391980);

    (*(v152 + 8))(v79, v78);
    sub_1000BC4D4(&qword_1016A72B0, &qword_1013B60A8);
    sub_1000041A4(&qword_1016A7330, &qword_1016A7300, &qword_1013B60F8);
    v80 = v135;
    v81 = v155;
    Publisher.map<A>(_:)();
    (*(v154 + 8))(v77, v81);
    sub_1000BC4D4(&qword_1016A7338, &unk_1013B6118);
    sub_1000041A4(&qword_1016A7340, &qword_1016A7308, &qword_1013B6100);
    sub_1000041A4(&qword_1016A7348, &qword_1016A7338, &unk_1013B6118);
    v82 = v136;
    Publisher.catch<A>(_:)();
    (*(v156 + 8))(v80, v82);
    v165 = swift_allocObject();
    swift_weakInit();
    v83 = v171;
    v84 = v172;
    v85 = v171[2];
    v85(v175, v157, v172);
    v85(v168, v160, v84);
    v163 = type metadata accessor for AccessoryCommand;
    sub_10067B9CC(v73, v64, type metadata accessor for AccessoryCommand);
    v86 = *(v83 + 80);
    v87 = (v86 + 32) & ~v86;
    v88 = (v159 + v86 + v87) & ~v86;
    v89 = (v159 + v147 + v88) & v144;
    v167 = (v167 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    v92 = v170;
    *(v91 + 16) = v165;
    *(v91 + 24) = v92;
    v93 = v83[4];
    v93(v91 + v87, v175, v84);
    v93(v91 + v88, v168, v84);
    sub_10067B810(v164, v91 + v89, v163);
    v94 = v140;
    *(v91 + v167) = v140;
    v95 = v161;
    *(v91 + v90) = v161;
    *(v91 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8)) = v169;
    sub_1000041A4(&qword_1016A7350, &qword_1016A7310, &unk_1013B6108);

    v96 = v95;
    v97 = v138;
    v98 = v173;
    v99 = Publisher<>.sink(receiveValue:)();

    (*(v158 + 8))(v98, v97);
    swift_beginAccess();
    v100 = *(v94 + 16);
    *(v94 + 16) = v99;

    v101 = *&v96[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

    v102 = [v101 identifier];
    v103 = v162;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v104 = v174;
    swift_beginAccess();
    v105 = v104;
    v106 = *(v104 + 88);
    if (*(v106 + 16))
    {

      v107 = sub_1000210EC(v103);
      if (v108)
      {
        v109 = *(*(v106 + 56) + 8 * v107);
        v110 = v171[1];

        v111 = v103;
        v112 = v172;
        v110(v111, v172);

        v180 = v109;

        sub_100DEF098(&v177, v99);

        v113 = [v101 identifier];
        v114 = v175;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v115 = v180;
        swift_beginAccess();
        v116 = *(v105 + 88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v176 = *(v105 + 88);
        *(v105 + 88) = 0x8000000000000000;
        sub_100FFF1EC(v115, v114, isUniquelyReferenced_nonNull_native);
        v110(v114, v112);
        v118 = v176;
LABEL_14:
        *(v105 + 88) = v118;
        swift_endAccess();

        return;
      }
    }

    v119 = v171[1];
    v120 = v103;
    v121 = v172;
    v119(v120, v172);
    v122 = [v101 identifier];
    v123 = v175;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138C320;
    *(inited + 32) = v99;

    v125 = sub_10112AE04(inited);
    swift_setDeallocating();
    v126 = *(inited + 16);
    swift_arrayDestroy();
    swift_beginAccess();
    v127 = *(v105 + 88);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v180 = *(v105 + 88);
    *(v105 + 88) = 0x8000000000000000;
    sub_100FFF1EC(v125, v123, v128);
    v119(v123, v121);
    v118 = v180;
    goto LABEL_14;
  }

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_1000076D4(v45, qword_10177B048);
  swift_errorRetain();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v179 = v49;
    *v48 = 136446210;
    v178 = v44;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v50 = String.init<A>(describing:)();
    v52 = sub_1000136BC(v50, v51, &v179);

    *(v48 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "Notify error: %{public}s", v48, 0xCu);
    sub_100007BAC(v49);
  }

  else
  {
  }
}

uint64_t sub_1006713D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a2 + 72);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    return sub_1006739AC(a1, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100671504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v95 = a8;
  v94 = a7;
  v97 = a1;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v96 = &v84 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v84 - v21;
  __chkstk_darwin(v20);
  v24 = &v84 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v91 = a4;
  v92 = a5;
  v93 = result;
  Transaction.capture()();
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v88 = a9;
  v26 = type metadata accessor for Logger();
  v27 = sub_1000076D4(v26, qword_10177B048);
  sub_1000D2A70(v97, &v102, &qword_1016A72B0, &qword_1013B60A8);
  v90 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  v30 = os_log_type_enabled(v28, v29);
  v89 = a6;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v87 = v12;
    v33 = v32;
    v101[0] = v32;
    *v31 = 136446210;
    v86 = v13;
    v85 = v24;
    sub_1000D2A70(&v102, &v98, &qword_1016A72B0, &qword_1013B60A8);
    sub_1000BC4D4(&qword_1016A72B0, &qword_1013B60A8);
    v34 = v17;
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v13 = v86;
    v24 = v85;
    sub_10000B3A8(&v102, &qword_1016A72B0, &qword_1013B60A8);
    v38 = sub_1000136BC(v35, v37, v101);

    *(v31 + 4) = v38;
    v17 = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "handleNotify result: %{public}s", v31, 0xCu);
    sub_100007BAC(v33);
    v12 = v87;
  }

  else
  {

    sub_10000B3A8(&v102, &qword_1016A72B0, &qword_1013B60A8);
  }

  v39 = v92;
  sub_1000D2A70(v97, &v102, &qword_1016A72B0, &qword_1013B60A8);
  v40 = v91;
  if ((v104 & 1) == 0)
  {
    v60 = v102;
    v61 = v13[2];
    v61(v24, v91, v12);
    v61(v22, v39, v12);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v98 = v96;
      *v64 = 67109891;
      *(v64 + 4) = v60;
      *(v64 + 8) = 2160;
      *(v64 + 10) = 1752392040;
      *(v64 + 18) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v24;
      v67 = v12;
      v69 = v68;
      LODWORD(v97) = v60;
      v70 = v13[1];
      v70(v66, v67);
      v71 = sub_1000136BC(v65, v69, &v98);

      *(v64 + 20) = v71;
      *(v64 + 28) = 2082;
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v75 = v97;
      v70(v22, v67);
      v76 = sub_1000136BC(v72, v74, &v98);

      *(v64 + 30) = v76;
      _os_log_impl(&_mh_execute_header, v62, v63, "handleNotify success complete? %{BOOL}d. Beacon %{private,mask.hash}s Command %{public}s.", v64, 0x26u);
      swift_arrayDestroy();

      if (!v75)
      {
      }
    }

    else
    {

      v80 = v13[1];
      v80(v22, v12);
      v80(v24, v12);
      if (!v60)
      {
      }
    }

    v81 = v94;
    swift_beginAccess();
    v82 = *(v81 + 16);

    sub_100657074(v89, v82, v95, v88);

    swift_beginAccess();
    v83 = *(v81 + 16);
    *(v81 + 16) = 0;
  }

  v98 = v102;
  v99[0] = *v103;
  *(v99 + 9) = *&v103[9];
  sub_100101AA8(&v98, v101);
  v41 = v13[2];
  v41(v96, v40, v12);
  v41(v17, v39, v12);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v100 = v97;
    *v44 = 136446979;
    LODWORD(v92) = v43;
    v45 = sub_1013181BC();
    v47 = v46;
    sub_100101B04(v101);
    v48 = sub_1000136BC(v45, v47, &v100);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2160;
    *(v44 + 14) = 1752392040;
    *(v44 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v49 = v96;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v12;
    v53 = v52;
    v54 = v13[1];
    v54(v49, v51);
    v55 = sub_1000136BC(v50, v53, &v100);

    *(v44 + 24) = v55;
    *(v44 + 32) = 2082;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    v54(v17, v51);
    v59 = sub_1000136BC(v56, v58, &v100);

    *(v44 + 34) = v59;
    _os_log_impl(&_mh_execute_header, v42, v92, "handleNotify error %{public}s.\nBeacon %{private,mask.hash}s Command %{public}s", v44, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v77 = v13[1];
    v77(v17, v12);
    v77(v96, v12);
    sub_100101B04(v101);
  }

  v78 = v94;
  swift_beginAccess();
  v79 = *(v78 + 16);

  sub_100657074(v89, v79, v95, v88);

  return sub_100101B04(&v98);
}

uint64_t sub_100671EB4@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v238 = a3;
  v239 = a2;
  v236 = a1;
  v242 = type metadata accessor for AccessoryCommand();
  v217 = *(v242 - 8);
  v4 = *(v217 + 64);
  __chkstk_darwin(v242);
  v218 = v5;
  v231 = &v207 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for DispatchWorkItemFlags();
  v228 = *(v229 - 8);
  v6 = *(v228 + 64);
  __chkstk_darwin(v229);
  v225 = &v207 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for DispatchQoS();
  v226 = *(v227 - 8);
  v8 = *(v226 + 64);
  __chkstk_darwin(v227);
  v224 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for DispatchQoS.QoSClass();
  v220 = *(v221 - 8);
  v10 = *(v220 + 64);
  __chkstk_darwin(v221);
  v219 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v230 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v216 = &v207 - v17;
  v18 = __chkstk_darwin(v16);
  v222 = &v207 - v19;
  v20 = __chkstk_darwin(v18);
  v214 = &v207 - v21;
  v22 = __chkstk_darwin(v20);
  v212 = &v207 - v23;
  v24 = __chkstk_darwin(v22);
  v215 = &v207 - v25;
  v26 = __chkstk_darwin(v24);
  v213 = &v207 - v27;
  v28 = __chkstk_darwin(v26);
  v237 = &v207 - v29;
  v30 = __chkstk_darwin(v28);
  v234 = &v207 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v207 - v33;
  __chkstk_darwin(v32);
  v36 = &v207 - v35;
  v37 = type metadata accessor for DispatchPredicate();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = (&v207 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v232 = v3;
  v42 = *(v3 + 72);
  *v41 = v42;
  (*(v38 + 104))(v41, enum case for DispatchPredicate.onQueue(_:), v37);
  v43 = v42;
  v44 = _dispatchPreconditionTest(_:)();
  (*(v38 + 8))(v41, v37);
  if ((v44 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    swift_once();
LABEL_4:
    v48 = type metadata accessor for Logger();
    v49 = sub_1000076D4(v48, qword_10177B048);
    v50 = v234;
    v51 = v242;
    (v3)(v234, v233, v242);
    v236 = v3;
    (v3)(v237, v34, v51);
    sub_10067FBD8(v36, v44);
    v211 = v49;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    sub_10067FBEC(v36, v44);
    v54 = os_log_type_enabled(v52, v53);
    v223 = v13;
    v230 = v36;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock = v56;
      *v55 = 136315907;
      v210 = v44;
      v209 = v52;
      v208 = v53;
      v207 = v56;
      if (v44)
      {
        v57 = v234;
        if (v44 == 1)
        {
          v58 = 0x7453646E756F732ELL;
          v59 = 0xEB00000000747261;
        }

        else
        {
          if (v36)
          {
            v58 = 0x726961706E752ELL;
          }

          else
          {
            v58 = 0x7453646E756F732ELL;
          }

          if (v36)
          {
            v59 = 0xE700000000000000;
          }

          else
          {
            v59 = 0xEA0000000000706FLL;
          }
        }
      }

      else
      {
        v58 = 0x646E616D6D6F632ELL;
        v59 = 0xEB000000006B6341;
        v57 = v234;
      }

      v85 = sub_1000136BC(v58, v59, &aBlock);

      *(v55 + 4) = v85;
      *(v55 + 12) = 2160;
      *(v55 + 14) = 1752392040;
      *(v55 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v86 = v242;
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v90 = v223[1];
      v90(v57, v86);
      v91 = sub_1000136BC(v87, v89, &aBlock);
      v92 = v86;

      *(v55 + 24) = v91;
      *(v55 + 32) = 2082;
      v93 = v237;
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      v237 = v90;
      v90(v93, v92);
      v97 = sub_1000136BC(v94, v96, &aBlock);

      *(v55 + 34) = v97;
      v98 = v209;
      _os_log_impl(&_mh_execute_header, v209, v208, "AirTag command: %s. Beacon %{private,mask.hash}s Command %{public}s", v55, 0x2Au);
      swift_arrayDestroy();

      v82 = v231;
      v44 = v210;
    }

    else
    {

      v80 = v13[1];
      v81 = v242;
      v80(v237, v242);
      v237 = v80;
      v80(v50, v81);
      v82 = v231;
    }

    v99 = v232;
    v100 = *(v232 + 64);
    v101 = v236;
    if (v100)
    {
      v102 = *(v232 + 64);
      v103 = v240;
      if (v44)
      {
LABEL_25:
        if (v44 == 1)
        {
          v104 = v222;
          v105 = v242;
          v101(v222, v233, v242);
          v236 = v100;
          v106 = v105;
          v107 = v216;
          v101(v216, v103, v105);
          v239 = v102;
          v108 = v223;
          v109 = *(v223 + 80);
          v110 = (v109 + 24) & ~v109;
          v111 = (v14 + v109 + v110) & ~v109;
          v112 = swift_allocObject();
          *(v112 + 16) = v99;
          v113 = v108[4];
          v113(v112 + v110, v104, v106);
          v114 = v106;
          v113(v112 + v111, v107, v106);
          v250 = sub_10067FED0;
          v251 = v112;
          aBlock = _NSConcreteStackBlock;
          v247 = 1107296256;
          v248 = sub_100006684;
          v249 = &unk_10162D270;
          v115 = _Block_copy(&aBlock);
          v116 = v236;

          v117 = v224;
          static DispatchQoS.unspecified.getter();
          v243 = _swiftEmptyArrayStorage;
          sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v118 = v225;
          v119 = v229;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v120 = v239;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v115);
          sub_10067FBEC(v230, 1);
          (*(v228 + 8))(v118, v119);
          (*(v226 + 8))(v117, v227);
          v121 = v237;
          (v237)(v240, v114);
          v122 = v233;
          v123 = v114;
        }

        else
        {
          sub_10067B9CC(v239, v82, type metadata accessor for AccessoryCommand);
          if (v230)
          {
            v153 = (*(v217 + 80) + 24) & ~*(v217 + 80);
            v154 = v103;
            v155 = swift_allocObject();
            *(v155 + 16) = v99;
            sub_10067B810(v82, v155 + v153, type metadata accessor for AccessoryCommand);
            v250 = sub_10067FC00;
            v251 = v155;
            aBlock = _NSConcreteStackBlock;
            v247 = 1107296256;
            v248 = sub_100006684;
            v249 = &unk_10162D1D0;
            v156 = _Block_copy(&aBlock);
            v157 = v100;

            v158 = v224;
            static DispatchQoS.unspecified.getter();
            v243 = _swiftEmptyArrayStorage;
            sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
            v159 = v225;
            v160 = v229;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v156);
            (*(v228 + 8))(v159, v160);
            (*(v226 + 8))(v158, v227);
            v161 = v154;
            v162 = v242;
            v121 = v237;
            (v237)(v161, v242);
            v122 = v233;
            v123 = v162;
          }

          else
          {
            v189 = v222;
            v190 = v242;
            v101(v222, v103, v242);
            v191 = (*(v217 + 80) + 24) & ~*(v217 + 80);
            v239 = v102;
            v192 = v223;
            v193 = (v218 + *(v223 + 80) + v191) & ~*(v223 + 80);
            v194 = swift_allocObject();
            *(v194 + 16) = v99;
            sub_10067B810(v82, v194 + v191, type metadata accessor for AccessoryCommand);
            (v192[4])(v194 + v193, v189, v190);
            v250 = sub_10067FDC4;
            v251 = v194;
            aBlock = _NSConcreteStackBlock;
            v247 = 1107296256;
            v248 = sub_100006684;
            v249 = &unk_10162D220;
            v195 = _Block_copy(&aBlock);
            v196 = v100;

            v197 = v224;
            static DispatchQoS.unspecified.getter();
            v243 = _swiftEmptyArrayStorage;
            sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
            v198 = v225;
            v199 = v229;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v200 = v239;
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v195);
            (*(v228 + 8))(v198, v199);
            (*(v226 + 8))(v197, v227);
            v121 = v237;
            (v237)(v240, v190);
            v122 = v233;
            v123 = v190;
          }
        }

        v121(v122, v123);

        v84 = v238;
        *v238 = 0;
        v201 = 511;
        goto LABEL_52;
      }
    }

    else
    {
      sub_1000BC488();
      v124 = v220;
      v125 = v219;
      v126 = v221;
      (*(v220 + 104))(v219, enum case for DispatchQoS.QoSClass.default(_:), v221);
      v127 = static OS_dispatch_queue.global(qos:)();
      v101 = v236;
      v128 = v127;
      v129 = v125;
      v102 = v128;
      (*(v124 + 8))(v129, v126);
      v103 = v240;
      if (v44)
      {
        goto LABEL_25;
      }
    }

    v130 = v230;
    v131 = sub_100421B08(v230);
    if (v131 == 4)
    {
      v132 = v212;
      v133 = v233;
      v134 = v242;
      v101(v212, v233, v242);
      v135 = v214;
      v101(v214, v103, v134);
      v136 = v100;
      v137 = v103;
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v138, v139))
      {

        v202 = v242;
        v203 = v237;
        (v237)(v135, v242);
        v203(v132, v202);
        v203(v137, v202);
        result = (v203)(v133, v202);
        goto LABEL_51;
      }

      v140 = v130;
      v141 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      aBlock = v241;
      *v141 = 16909315;
      *(v141 + 4) = v140;
      *(v141 + 5) = 2160;
      *(v141 + 7) = 1752392040;
      *(v141 + 15) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v142 = v242;
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v132;
      v146 = v145;
      v239 = v102;
      v147 = v237;
      (v237)(v144, v142);
      v148 = sub_1000136BC(v143, v146, &aBlock);

      *(v141 + 17) = v148;
      *(v141 + 25) = 2082;
      v149 = dispatch thunk of CustomStringConvertible.description.getter();
      v151 = v150;
      v147(v135, v142);
      v152 = sub_1000136BC(v149, v151, &aBlock);

      *(v141 + 27) = v152;
      _os_log_impl(&_mh_execute_header, v138, v139, "Invalid opcode: %{public}hhu. Beacon %{private,mask.hash}s Command %{public}s.", v141, 0x23u);
      swift_arrayDestroy();
    }

    else
    {
      v163 = v131;
      v239 = v102;
      v164 = v213;
      v165 = v233;
      v166 = v242;
      v101(v213, v233, v242);
      v167 = v215;
      v101(v215, v103, v166);
      v168 = v100;
      v169 = v103;
      v138 = Logger.logObject.getter();
      v170 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v138, v170))
      {

        v204 = v167;
        v205 = v242;
        v206 = v237;
        (v237)(v204, v242);
        v206(v164, v205);
        v206(v169, v205);
        result = (v206)(v165, v205);
        goto LABEL_51;
      }

      v171 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v171 = 136315907;
      v172 = 0xEB000000006B6341;
      v173 = 0x7453646E756F732ELL;
      v174 = 0xEA0000000000706FLL;
      if (v163 != 2)
      {
        v173 = 0x726961706E752ELL;
        v174 = 0xE700000000000000;
      }

      v175 = 0x7453646E756F732ELL;
      if (v163)
      {
        v172 = 0xEB00000000747261;
      }

      else
      {
        v175 = 0x646E616D6D6F632ELL;
      }

      if (v163 <= 1u)
      {
        v176 = v175;
      }

      else
      {
        v176 = v173;
      }

      if (v163 <= 1u)
      {
        v177 = v172;
      }

      else
      {
        v177 = v174;
      }

      v178 = sub_1000136BC(v176, v177, &aBlock);

      *(v171 + 4) = v178;
      *(v171 + 12) = 2160;
      *(v171 + 14) = 1752392040;
      *(v171 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v142 = v242;
      v179 = dispatch thunk of CustomStringConvertible.description.getter();
      v180 = v164;
      v182 = v181;
      v147 = v237;
      (v237)(v180, v142);
      v183 = sub_1000136BC(v179, v182, &aBlock);

      *(v171 + 24) = v183;
      *(v171 + 32) = 2082;
      v184 = v215;
      v185 = dispatch thunk of CustomStringConvertible.description.getter();
      v187 = v186;
      v147(v184, v142);
      v188 = sub_1000136BC(v185, v187, &aBlock);

      *(v171 + 34) = v188;
      _os_log_impl(&_mh_execute_header, v138, v170, ".commandAck opcode: %s. Beacon %{private,mask.hash}s. Command %{public}s.", v171, 0x2Au);
      swift_arrayDestroy();
    }

    v147(v240, v142);
    result = (v147)(v233, v142);
LABEL_51:
    v84 = v238;
    *v238 = 0;
    v201 = 255;
LABEL_52:
    *(v84 + 4) = v201;
    goto LABEL_53;
  }

  v3 = v13[2];
  v45 = v239;
  (v3)(v36, &v239[*(v242 + 20)], v12);
  v241 = (v13 + 2);
  (v3)(v34, v45, v12);
  v46 = v236;
  sub_1001011C0(v236, &aBlock);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  v47 = swift_dynamicCast();
  v242 = v12;
  v235 = v47;
  v240 = v34;
  if (v47)
  {
    v233 = v36;
    v36 = v243;
    v44 = v244;
    if (qword_101694828 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_55;
  }

  v60 = v3;
  v61 = v242;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_1000076D4(v62, qword_10177B048);
  sub_1001011C0(v46, &aBlock);
  v63 = v230;
  v64 = v61;
  v60(v230, v36, v61);
  v65 = Logger.logObject.getter();
  v66 = v36;
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v67))
  {
    v68 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v68 = 136315651;
    sub_1001011C0(&aBlock, &v243);
    v69 = v66;
    v70 = String.init<A>(describing:)();
    v72 = v71;
    sub_100007BAC(&aBlock);
    v73 = sub_1000136BC(v70, v72, &v245);

    *(v68 + 4) = v73;
    *(v68 + 12) = 2160;
    *(v68 + 14) = 1752392040;
    *(v68 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    v77 = v13[1];
    v77(v63, v64);
    v78 = sub_1000136BC(v74, v76, &v245);

    *(v68 + 24) = v78;
    _os_log_impl(&_mh_execute_header, v65, v67, "Invalid AirTag command from payload %s for %{private,mask.hash}s", v68, 0x20u);
    swift_arrayDestroy();

    v77(v240, v64);
    result = (v77)(v69, v64);
  }

  else
  {

    v83 = v13[1];
    v83(v63, v64);
    sub_100007BAC(&aBlock);
    v83(v240, v64);
    result = (v83)(v66, v64);
  }

  v84 = v238;
  *v238 = 14;
  *(v84 + 1) = 0u;
  *(v84 + 3) = 0u;
  *(v84 + 40) = 11;
LABEL_53:
  *(v84 + 41) = v235 ^ 1;
  return result;
}
uint64_t sub_100019540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000195D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000196A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000196F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000197C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000198A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000198E8()
{
  result = qword_101697350;
  if (!qword_101697350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697350);
  }

  return result;
}

uint64_t sub_10001993C(int a1)
{
  v2 = type metadata accessor for Bit();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v32 = a1;
  sub_1000198E8();
  result = FixedWidthInteger.bits()();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = result;
  v20 = a1;
  v12 = *(v3 + 16);
  v21 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v24 = v12;
  (v12)(v9);
  v13 = *(v3 + 104);
  v23 = enum case for Bit.one(_:);
  v22 = v13;
  v13(v7);
  sub_100019DF0();
  v25 = v11;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v3 + 8);
  v14(v7, v2);
  result = (v14)(v9, v2);
  if (*(v25 + 16) < 2uLL)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v18 = v30;
  v19 = v31;
  v15 = *(v3 + 72);
  v24(v9, v21 + v15, v2);
  v22(v7, v23, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = v25;
  v14(v7, v2);
  result = (v14)(v9, v2);
  if (*(v16 + 16) >= 4uLL)
  {
    v17 = v29 == v28;
    v19 = v19 == v18;
    v24(v9, v21 + 3 * v15, v2);

    v22(v7, v23, v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v14(v7, v2);
    v14(v9, v2);
    return v20 & 0xB | (v19 << 8) | (v17 << 16) | ((v27 == v26) << 24);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100019CF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100019D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019D54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100019D9C()
{
  result = qword_10169CAD8;
  if (!qword_10169CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CAD8);
  }

  return result;
}

unint64_t sub_100019DF0()
{
  result = qword_101698660;
  if (!qword_101698660)
  {
    type metadata accessor for Bit();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698660);
  }

  return result;
}

uint64_t sub_100019E48()
{
  Bool.intValue.getter();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  Bool.intValue.getter();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  Bool.intValue.getter();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

uint64_t sub_100019F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100019FF0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = *(*(sub_1000BC4D4(&qword_1016AA430, &unk_101392650) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for ObservedAdvertisement(0);
  v2[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v7 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v12 = swift_task_alloc();
  v2[24] = v12;
  *v12 = v2;
  v12[1] = sub_10001A62C;

  return sub_10001A268(a1);
}

uint64_t sub_10001A268(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for BeaconStatus(0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for MACAddress();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v2[15] = *(v9 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10001A43C, v1, 0);
}

uint64_t sub_10001A43C()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[18] = v2;
  v3 = *(v1 + 24);
  v0[19] = v3;
  if ((v3 & 0x2000000000000000) != 0)
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B5D8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Not a wild advertisement - ignoring wild mode association record update.", v9, 2u);
    }

    v11 = v0[16];
    v10 = v0[17];
    v13 = v0[11];
    v12 = v0[12];
    v15 = v0[8];
    v14 = v0[9];

    v16 = v0[1];

    return v16();
  }

  else
  {
    sub_100017D5C(v2, v3);
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_10002EEF0;

    return daemon.getter();
  }
}

uint64_t sub_10001A61C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_100017D5C(v2, v3);
}

uint64_t sub_10001A62C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10001A73C, v2, 0);
}

uint64_t sub_10001A73C()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10002AF84;
  v5 = v0[22];
  v6 = v0[4];

  return sub_10001A7EC(v5, v3, v2);
}

uint64_t sub_10001A7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v4[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v4[14] = v11;
  *v11 = v4;
  v11[1] = sub_10001A934;

  return daemon.getter();
}

uint64_t sub_10001A934(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  v3[15] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[16] = v6;
  v7 = type metadata accessor for Daemon();
  v3[17] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[18] = v9;
  v10 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_10001AB38;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10001AB38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 152) = a1;

  v7 = *(v3 + 120);
  if (v1)
  {
    v8 = *(v4 + 48);

    return _swift_task_switch(sub_1000208B0, v8, 0);
  }

  else
  {

    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    *(v4 + 160) = v10;
    *v10 = v6;
    v10[1] = sub_10001ACE8;

    return daemon.getter();
  }
}

uint64_t sub_10001ACE8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;
  v3[21] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[22] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100019588(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v7 = v5;
  v7[1] = sub_10001AE9C;
  v10 = v3[18];
  v11 = v3[17];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10001AE9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = a1;
  v4[24] = v1;

  if (v1)
  {
    v7 = v4[21];

    v8 = v4[6];
    v9 = sub_1008E2734;
  }

  else
  {
    v9 = sub_10001AFE0;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10001AFE0()
{
  v1 = v0[23];
  v2 = v0[24];
  sub_10001B108();
  v0[25] = v3;
  v4 = v0[21];
  v5 = v0[17];
  if (v2)
  {

    sub_100019588(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_1008E26C0;
  }

  else
  {
    sub_100019588(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_10001F3B8;
  }

  return _swift_task_switch(v9, v6, v8);
}

void sub_10001B108()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      sub_10001F280(v4, v6);
      sub_1000BC4D4(&qword_10169EF08, &qword_10139FBE8);
      type metadata accessor for BeaconManagerService();
      if (swift_dynamicCast())
      {
        return;
      }

      ++v3;
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_1003BE54C();
    swift_allocError();
    *v5 = 0xD000000000000014;
    v5[1] = 0x800000010134D3C0;
    swift_willThrow();
  }
}

uint64_t sub_10001B21C()
{
  v86 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  sub_1000D2A70(v0[11] + *(v0[15] + 52), v3, &qword_101699DB0, &unk_101393100);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[26], &qword_101699DB0, &unk_101393100);
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[29];
    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[24];
    v11 = v0[21];
    v10 = v0[22];
    v13 = v0[19];
    v12 = v0[20];
    v80 = v0[18];
    log = v0[17];
    v82 = v0[14];
    v84 = v0[13];

    v14 = v0[1];

    return v14();
  }

  v16 = v0[31];
  v17 = v0[25];
  v18 = v0[23];
  v19 = v0[12];
  sub_100018118(v0[26], v16, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v20 = getuid();
  sub_1000294F0(v20);
  v21 = *(v18 + 20);
  v22 = type metadata accessor for UUID();
  v0[32] = v22;
  (*(*(v22 - 8) + 16))(v17 + v21, v16, v22);
  v23 = OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_lastAdvertisementCache;
  swift_beginAccess();
  v24 = *(v19 + v23);
  if (*(v24 + 16))
  {
    v25 = v0[25];
    v26 = *(v19 + v23);

    v27 = sub_100038994(v25);
    if (v28)
    {
      v30 = v0[21];
      v29 = v0[22];
      sub_10002963C(*(v24 + 56) + *(v0[16] + 72) * v27, v30, type metadata accessor for ObservedAdvertisement);

      sub_100018118(v30, v29, type metadata accessor for ObservedAdvertisement);
      goto LABEL_10;
    }
  }

  v31 = v0[24];
  v32 = v0[22];
  v33 = v0[15];
  v34 = v0[16];
  v35 = v0[14];
  v36 = v0[11];
  sub_10002963C(v0[25], v31, type metadata accessor for BeaconIdentifier);
  sub_10002963C(v36, v35, type metadata accessor for ObservedAdvertisement);
  (*(v34 + 56))(v35, 0, 1, v33);
  swift_beginAccess();
  sub_100038C24(v35, v31);
  swift_endAccess();
  sub_10002963C(v36, v32, type metadata accessor for ObservedAdvertisement);
LABEL_10:
  v37 = v0[22];
  v38 = v0[15];
  v39 = v0[11];
  v40 = *(v38 + 44);
  type metadata accessor for Date();
  sub_100019588(&qword_1016C9070, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v41 = v0[22];
    v43 = v0[19];
    v42 = v0[20];
    v45 = v0[17];
    v44 = v0[18];
    v46 = v0[11];
    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177B5D8);
    sub_10002963C(v46, v42, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v41, v43, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v46, v44, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v41, v45, type metadata accessor for ObservedAdvertisement);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v52 = v0[19];
    v51 = v0[20];
    v53 = v0[17];
    v54 = v0[18];
    if (v50)
    {
      v55 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v55 = 136315906;
      v56 = (sub_100018680)();
      v83 = v49;
      v58 = v57;
      sub_10001F210(v51, type metadata accessor for ObservedAdvertisement);
      v59 = sub_1000136BC(v56, v58, &v85);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v61 = sub_100018680(v60);
      v63 = v62;
      sub_10001F210(v52, type metadata accessor for ObservedAdvertisement);
      v64 = sub_1000136BC(v61, v63, &v85);

      *(v55 + 14) = v64;
      *(v55 + 22) = 2048;
      v65 = v54 + *(v38 + 44);
      v66 = Date.epoch.getter();
      sub_10001F210(v54, type metadata accessor for ObservedAdvertisement);
      *(v55 + 24) = v66;
      *(v55 + 32) = 2048;
      v67 = v53 + *(v38 + 44);
      v68 = Date.epoch.getter();
      sub_10001F210(v53, type metadata accessor for ObservedAdvertisement);
      *(v55 + 34) = v68;
      _os_log_impl(&_mh_execute_header, v48, v83, "Not caching because observation with equal or newer scanDate already cached.\nobserved: %s\nexisting: %s\nepochs: [observed: %lld, existing: %lld]", v55, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      sub_10001F210(v0[17], type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v54, type metadata accessor for ObservedAdvertisement);

      sub_10001F210(v52, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v51, type metadata accessor for ObservedAdvertisement);
    }

    v77 = swift_task_alloc();
    v0[34] = v77;
    *v77 = v0;
    v77[1] = sub_100039558;
    v78 = v0[31];
    v79 = v0[12];

    return sub_100036DE8(v78);
  }

  else
  {
    v69 = v0[24];
    v70 = v0[15];
    v71 = v0[16];
    v72 = v0[14];
    v73 = v0[11];
    sub_10002963C(v0[25], v69, type metadata accessor for BeaconIdentifier);
    sub_10002963C(v73, v72, type metadata accessor for ObservedAdvertisement);
    (*(v71 + 56))(v72, 0, 1, v70);
    swift_beginAccess();
    sub_100038C24(v72, v69);
    swift_endAccess();
    v74 = swift_task_alloc();
    v0[33] = v74;
    *v74 = v0;
    v74[1] = sub_10003676C;
    v75 = v0[11];
    v76 = v0[12];

    return sub_1000391C0(v75);
  }
}

uint64_t sub_10001BA08()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001BA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BC08()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_1008E3178, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v3;
    v5[1] = sub_10001BFA0;
    v6 = v3[3];
    v7 = v3[2];

    return sub_10001BD78(v7);
  }
}

uint64_t sub_10001BD78(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for ObservedAdvertisement(0);
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for BeaconIdentifier();
  v2[23] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v10 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[27] = v10;
  v11 = *(v10 - 8);
  v2[28] = v11;
  v12 = *(v11 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10001B21C, v1, 0);
}

uint64_t sub_10001BFA0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10001C0B0, v2, 0);
}

uint64_t sub_10001C0B0()
{
  v34 = v0;
  v1 = v0[15];
  v2 = v0[11];
  ContinuousClock.now.getter();
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177B5D8);
  v10 = *(v8 + 16);
  v10(v5, v4, v7);
  v10(v6, v3, v7);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[9];
  v14 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v13)
  {
    v19 = v0[5];
    v18 = v0[6];
    v30 = v0[4];
    v32 = v12;
    v20 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v20 = 136446210;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100019588(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
    v29 = static Duration.description<A>(_:_:units:)();
    v22 = v21;
    (*(v19 + 8))(v18, v30);
    v23 = *(v16 + 8);
    v23(v15, v17);
    v23(v14, v17);
    v24 = sub_1000136BC(v29, v22, &v33);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v11, v32, "insert(observedAdvertisement:): %{public}s", v20, 0xCu);
    sub_100007BAC(v31);
  }

  else
  {

    v23 = *(v16 + 8);
    v23(v15, v17);
    v23(v14, v17);
  }

  v0[24] = v23;
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_10001C7FC;
  v26 = v0[2];
  v27 = v0[3];

  return sub_10001C3B4(v26);
}

uint64_t sub_10001C3B4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for KeyGenerationBeaconInfo();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v16 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[20] = v16;
  v17 = *(v16 - 8);
  v2[21] = v17;
  v18 = *(v17 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10001C634, v1, 0);
}

uint64_t sub_10001C634()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[4];
  v5 = type metadata accessor for ObservedAdvertisement(0);
  sub_1000D2A70(v4 + *(v5 + 52), v3, &qword_101699DB0, &unk_101393100);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[19], &qword_101699DB0, &unk_101393100);
    v7 = v0[22];
    v6 = v0[23];
    v9 = v0[18];
    v8 = v0[19];
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[11];
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_100018118(v0[19], v0[23], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v16 = async function pointer to daemon.getter[1];
    v17 = swift_task_alloc();
    v0[24] = v17;
    *v17 = v0;
    v17[1] = sub_10004444C;

    return daemon.getter();
  }
}

uint64_t sub_10001C7FC()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_1008E3278, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[27] = v5;
    *v5 = v3;
    v5[1] = sub_10001D8F4;
    v6 = v3[3];

    return sub_10001C968();
  }
}

uint64_t sub_10001C968()
{
  *(v1 + 16) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_10001C9FC;

  return daemon.getter();
}

uint64_t sub_10001C9FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  v3[4] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[5] = v6;
  v7 = type metadata accessor for Daemon();
  v3[6] = v7;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[7] = v9;
  v10 = sub_100019588(&qword_101696C78, type metadata accessor for FindMyNetworkPublishActivityService);
  *v6 = v12;
  v6[1] = sub_10001CC94;

  return ActorServiceDaemon.getService<A>()(v7, MyNetworkPublishActivityService, v9, v10);
}

uint64_t sub_10001CC00(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CC94(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;

  v8 = v4[4];
  if (v1)
  {

    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    v5[10] = v10;
    *v10 = v7;
    v10[1] = sub_10001D5B0;

    return daemon.getter();
  }

  else
  {

    v5[8] = a1;
    v11 = swift_task_alloc();
    v5[9] = v11;
    *v11 = v7;
    v11[1] = sub_10001D408;

    return sub_10001CE74();
  }
}

uint64_t sub_10001CE74()
{
  v1[6] = v0;
  v2 = type metadata accessor for XPCActivity.State();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001CF34, v0, 0);
}

uint64_t sub_10001CF34()
{
  v1 = *(v0 + 48);
  if (*(v1 + 176) == 1)
  {
    *(v1 + 176) = 0;
    swift_beginAccess();
    v2 = *(v1 + 168);
    *(v0 + 80) = v2;
    v3 = *(v2 + 32);
    *(v0 + 120) = v3;
    v4 = -1;
    v5 = -1 << v3;
    if (-(-1 << v3) < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v2 + 64);

    if (v6)
    {
      v8 = 0;
LABEL_17:
      *(v0 + 88) = v6;
      *(v0 + 96) = v8;
      v17 = __clz(__rbit64(v6)) | (v8 << 6);
      v18 = *(*(v7 + 48) + v17);
      *(v0 + 104) = *(*(v7 + 56) + 8 * v17);
      v19 = qword_101694428;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000076D4(v20, qword_10177A488);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_42;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *(v0 + 40) = v24;
      *v23 = 136446210;
      if (v18 > 3)
      {
        if (v18 > 5)
        {
          if (v18 != 6)
          {
            if (v18 == 7)
            {
              v25 = 0xEF79627261654E6ELL;
              v26 = 0x6F696E61706D6F63;
            }

            else
            {
              v25 = 0xEF646E756F466E65;
              v26 = 0x6857796669746F6ELL;
            }

            goto LABEL_41;
          }

          v25 = 0xEF6C6C65436E4F79;
          goto LABEL_39;
        }

        if (v18 != 4)
        {
          v25 = 0xEF694669576E4F79;
LABEL_39:
          v27 = 0x747461426E6FLL;
          goto LABEL_40;
        }

        v28 = 0x6C6C65436ELL;
        goto LABEL_36;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          v28 = 0x694669576ELL;
LABEL_36:
          v25 = v28 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          v26 = 0x4F7265776F506E6FLL;
          goto LABEL_41;
        }

        v25 = 0xE900000000000072;
        v26 = 0x65776F5068676968;
      }

      else
      {
        if (!v18)
        {
          v25 = 0xE800000000000000;
          v27 = 0x776F50776F6CLL;
LABEL_40:
          v26 = v27 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          goto LABEL_41;
        }

        v25 = 0xEB00000000726577;
        v26 = 0x6F506D756964656DLL;
      }

LABEL_41:
      v29 = sub_1000136BC(v26, v25, (v0 + 40));

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "FindMyNetworkPublishActivityService updateCriteria %{public}s.", v23, 0xCu);
      sub_100007BAC(v24);

LABEL_42:

      v30 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
      v33 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
      v31 = swift_task_alloc();
      *(v0 + 112) = v31;
      *v31 = v0;
      v31[1] = sub_1000D67F8;
      v32 = *(v0 + 72);

      return v33(v32);
    }

    v16 = 0;
    while (((63 - v5) >> 6) - 1 != v16)
    {
      v8 = v16 + 1;
      v6 = *(v7 + 8 * v16++ + 72);
      if (v6)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (qword_101694428 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177A488);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "FindMyNetworkPublishActivityService maintaining existing criteria.", v12, 2u);
    }
  }

  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10001D408()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10001D518, v2, 0);
}

uint64_t sub_10001D518()
{
  v1 = *(v0 + 64);

  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_10001D5B0;

  return daemon.getter();
}

uint64_t sub_10001D5B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;
  v3[11] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[12] = v7;
  v8 = type metadata accessor for CompanionPublishActivity();
  v9 = sub_100019588(&qword_1016A00B0, type metadata accessor for CompanionPublishActivity);
  *v7 = v5;
  v7[1] = sub_10001D788;
  v10 = v3[7];
  v11 = v3[6];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10001D788(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[11];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = v4[11];
    v11 = v4[2];

    v4[13] = a1;

    return _swift_task_switch(sub_10001BA08, v11, 0);
  }
}

uint64_t sub_10001D8F4()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10001DA04, v2, 0);
}

uint64_t sub_10001DA04()
{
  v1 = v0[24];
  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v10 = v0[7];
  v13 = v0[9];
  v14 = v0[6];

  v1(v7, v10);
  v1(v6, v10);
  (*(v4 + 8))(v3, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001DB18()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1008EAD80;
  }

  else
  {
    v6 = sub_10001DC44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10001DC44()
{
  v1 = v0[22];
  v2 = v0[23];
  sub_10001F210(v0[8], type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v1, &unk_1016C1120, &qword_1013C49D0);
  sub_10000B3A8(v2, &qword_101699DB0, &unk_101393100);
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[9];
  v18 = v0[8];
  v19 = v0[6];
  v20 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10001DDBC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100260D78;
  }

  else
  {
    v3 = sub_10001DED0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001DED0()
{
  v36 = v1;
  v2 = *(v1 + 80);

  sub_100018CA0(v2, type metadata accessor for ObservedAdvertisement);
  v3 = *(v1 + 104);
  if (v3 == *(v1 + 88))
  {
LABEL_2:
    v5 = *(v1 + 72);
    v4 = *(v1 + 80);
    v6 = *(v1 + 48);
    v7 = *(v1 + 32);
    (*(v1 + 24))(0);

    v8 = *(v1 + 8);

    return v8();
  }

  else
  {
    while (1)
    {
      v10 = *(v1 + 16);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(v10 + 8 * v3 + 32);
      }

      *(v1 + 96) = v11;
      *(v1 + 104) = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = *(v1 + 56);
      v13 = *(v1 + 64);
      v14 = *(v1 + 48);
      v0 = v11;
      sub_1000166F0(v0, 1, v14);
      if ((*(v13 + 48))(v14, 1, v12) != 1)
      {
        break;
      }

      sub_10000B3A8(*(v1 + 48), &unk_10169BB50, &unk_101395760);
      if (qword_1016944F0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177A7D8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Error inserting observedAdvertisement: could not convert to ObservedAdvertisement.", v18, 2u);
      }

      v3 = *(v1 + 104);
      if (v3 == *(v1 + 88))
      {
        goto LABEL_2;
      }
    }

    sub_10001854C(*(v1 + 48), *(v1 + 80), type metadata accessor for ObservedAdvertisement);
    if (qword_1016944F0 == -1)
    {
      goto LABEL_18;
    }

LABEL_26:
    swift_once();
LABEL_18:
    v20 = *(v1 + 72);
    v19 = *(v1 + 80);
    v21 = type metadata accessor for Logger();
    *(v1 + 112) = sub_1000076D4(v21, qword_10177A7D8);
    sub_10001861C(v19, v20);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v1 + 72);
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      v28 = sub_100018680(v27);
      v30 = v29;
      sub_100018CA0(v25, type metadata accessor for ObservedAdvertisement);
      v31 = sub_1000136BC(v28, v30, &v35);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "observedAdvertisement: %s", v26, 0xCu);
      sub_100007BAC(v27);
    }

    else
    {

      sub_100018CA0(v25, type metadata accessor for ObservedAdvertisement);
    }

    [v0 refreshGeotag];
    [v0 observationValue];
    v32 = swift_task_alloc();
    *(v1 + 120) = v32;
    *v32 = v1;
    v32[1] = sub_10001DDBC;
    v33 = *(v1 + 80);
    v34 = *(v1 + 40);

    return sub_100019FF0(v33);
  }
}

void sub_10001E378(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001E3DC()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for KeyGenerationBeaconInfo()
{
  result = qword_1016B0E98;
  if (!qword_1016B0E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E52C(uint64_t a1, uint64_t a2)
{
  v76 = type metadata accessor for Table();
  v62 = *(v76 - 8);
  v4 = *(v62 + 64);
  v5 = __chkstk_darwin(v76);
  v73 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = v60 - v7;
  v8 = type metadata accessor for KeyGenerationBeaconInfo();
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v78 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v60 - v12;
  v14 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v60 - v19;
  v21 = type metadata accessor for Row();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v72 = v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v65 = v60 - v27;
  __chkstk_darwin(v26);
  v66 = v60 - v28;
  v77 = a2;
  v29 = sub_100028E90();
  if (!v29)
  {
    sub_10020223C();
    swift_allocError();
    *v33 = 2;
    *(v33 + 4) = 1;
    return swift_willThrow();
  }

  v30 = v29;
  v31 = Connection.prepare(_:)();
  if (v2)
  {
  }

  v61 = v22;
  v63 = v13;
  v64 = v20;
  v34 = v31;

  v35 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v79 = _swiftEmptyArrayStorage;
  sub_10003301C(0, v35 & ~(v35 >> 63), 0);
  v36 = v79;
  v60[2] = v34;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v74 = result;
  if (v35 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v60[1] = v30;
  if (v35)
  {
    v70 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
    v71 = (v61 + 48);
    v37 = (v61 + 16);
    v68 = (v61 + 8);
    v69 = (v62 + 16);
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v71)(v18, 1, v21);
      if (result == 1)
      {
        goto LABEL_21;
      }

      v38 = v73;
      (*v69)(v73, &v70[v77], v76);
      v39 = v72;
      (*v37)(v72, v18, v21);
      sub_10003323C(v38, v39, v78);
      (*v68)(v18, v21);
      v79 = v36;
      v41 = v36[2];
      v40 = v36[3];
      if (v41 >= v40 >> 1)
      {
        sub_10003301C(v40 > 1, v41 + 1, 1);
        v36 = v79;
      }

      v36[2] = v41 + 1;
      sub_100033DFC(v78, v36 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v41);
    }

    while (--v35);
  }

  v78 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v42 = v64;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v43 = v61;
  v44 = v42;
  v72 = *(v61 + 48);
  v73 = (v61 + 48);
  if ((v72)(v42, 1, v21) == 1)
  {
    v45 = v42;
  }

  else
  {
    v48 = *(v43 + 32);
    v47 = v43 + 32;
    v49 = v63;
    v69 = (v62 + 16);
    v70 = v48;
    v50 = (v47 - 16);
    v71 = (v47 - 24);
    v45 = v44;
    do
    {
      v51 = v66;
      (v70)(v66, v45, v21);
      v52 = v67;
      (*v69)(v67, (v77 + v78), v76);
      v53 = v65;
      (*v50)(v65, v51, v21);
      sub_10003323C(v52, v53, v49);
      v54 = v47;
      (*v71)(v51, v21);
      v79 = v36;
      v55 = v21;
      v57 = v36[2];
      v56 = v36[3];
      if (v57 >= v56 >> 1)
      {
        sub_10003301C(v56 > 1, v57 + 1, 1);
        v36 = v79;
      }

      v36[2] = v57 + 1;
      v49 = v63;
      sub_100033DFC(v63, v36 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v57);
      v58 = v64;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v59 = (v72)(v58, 1, v55);
      v21 = v55;
      v45 = v58;
      v47 = v54;
    }

    while (v59 != 1);
  }

  v46 = v45;

  sub_10000B3A8(v46, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_1016B13E0, &qword_1013D09F0);
  result = swift_allocObject();
  *(result + 16) = v36;
  return result;
}

uint64_t sub_10001ECA8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t sub_10001ECD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100027FA4();
  if (v9)
  {
    v10 = __chkstk_darwin(v9);
    v13[-4] = a1;
    v13[-3] = a2;
    v13[-2] = v10;
    (*(v5 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for BeaconIdentifier()
{
  result = qword_1016AB018;
  if (!qword_1016AB018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001EED8()
{
  if (isUserAgent.getter())
  {
    goto LABEL_2;
  }

  v16 = v0[3];
  v17 = *(v16 + 128);
  if (v17)
  {
    v18 = v0[2];
    v19 = *(v16 + 128);

    sub_10001ECD8(v18, v17);

LABEL_2:
    v1 = *(v0[3] + 136);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[9];
      v31 = *(v3 + 16);
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v29 = (v0[6] + 8);
      v30 = *(v3 + 72);
      v5 = (v3 + 8);
      v28 = *(v0[3] + 136);

      do
      {
        v6 = v0[10];
        v8 = v0[7];
        v7 = v0[8];
        v10 = v0[4];
        v9 = v0[5];
        v11 = v0[2];
        v31(v6, v4, v7);
        sub_10001BBA0(v11, v10, type metadata accessor for ObservedAdvertisement);
        AsyncStream.Continuation.yield(_:)();
        (*v29)(v8, v9);
        (*v5)(v6, v7);
        v4 += v30;
        --v2;
      }

      while (v2);
    }

    v12 = v0[10];
    v13 = v0[7];
    v14 = v0[4];

    v15 = v0[1];
    goto LABEL_14;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_1016C75C0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "No observation store on this platform!", v23, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v24 = v0[10];
  v25 = v0[7];
  v26 = v0[4];

  v15 = v0[1];
LABEL_14:

  return v15();
}

uint64_t sub_10001F1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001F210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001F280(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001F2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001F3B8()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[6];

  return _swift_task_switch(sub_10001F430, v3, 0);
}

uint64_t sub_10001F430()
{
  v1 = v0[25];
  v0[26] = v0[6];
  v0[27] = v1;
  v2 = swift_allocObject();
  v0[28] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[29] = v4;
  v5 = sub_1000BC4D4(&qword_101699B80, &unk_101392660);
  *v4 = v0;
  v4[1] = sub_10001F754;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000012, 0x80000001013C4900, sub_10001F63C, v2, v5);
}

uint64_t sub_10001F550()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F5A8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v3 = *(*(result + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_10001F644()
{
  v1 = OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage____beaconKeyManager;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage____beaconKeyManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage____beaconKeyManager);
  }

  else
  {
    v3 = type metadata accessor for BeaconKeyManager(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    v7 = v0;
    v2 = sub_1012C9910(v6);
    v8 = *(v0 + v1);
    *(v7 + v1) = v2;
  }

  return v2;
}

void *sub_10001F6CC@<X0>(void *a1@<X8>)
{
  result = sub_10001F644();
  *a1 = result;
  return result;
}

uint64_t sub_10001F724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001F644();
  *a1 = result;
  return result;
}

uint64_t sub_10001F754()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v6 = *v0;

  v4 = *(v1 + 208);

  return _swift_task_switch(sub_10001F888, v4, 0);
}

uint64_t sub_10001F888()
{
  v0[30] = v0[2];
  v1 = qword_101694A58;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  v6 = sub_1000076D4(v5, qword_10177B5D8);
  v0[31] = v6;
  v7 = swift_task_alloc();
  v0[32] = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v8 = async function pointer to time<A>(label:logger:threshold:_:)[1];
  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_1008E2844;
  v10 = v0[13];
  v13 = v0[10];

  return time<A>(label:logger:threshold:_:)(v10, 0xD00000000000001CLL, 0x80000001013644E0, v6, 0, 0, &unk_1013C4A58, v7);
}

uint64_t sub_10001F9F0()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  sub_1000D2A70(v0[13], v1, &unk_1016C1120, &qword_1013C49D0);
  v4 = *(v3 + 48);
  v0[34] = v4;
  v0[35] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v0[12], &unk_1016C1120, &qword_1013C49D0);
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_100020484;
    v6 = v0[30];
    v7 = v0[11];
    v8 = v0[4];
    v9 = v0[5];

    return sub_1008EA2F0(v7, v8, v9, v6);
  }

  else
  {
    v11 = v0[19];
    sub_10000B3A8(v0[13], &unk_1016C1120, &qword_1013C49D0);

    v12 = v0[30];
    v13 = v0[27];
    v14 = v0[12];
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];
    v18 = v0[3];

    sub_100018118(v14, v15, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100018118(v15, v18, type metadata accessor for BeaconKeyManager.IndexInformation);
    (*(v16 + 56))(v18, 0, 1, v17);
    v20 = v0[12];
    v19 = v0[13];
    v21 = v0[11];
    v22 = v0[9];

    v23 = v0[1];

    return v23();
  }
}

size_t sub_10001FC08(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000BC4D4(a5, a6);
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

void *sub_10001FE0C(uint64_t a1)
{
  v18 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_101125334(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_10002FDC4(v13, v5, type metadata accessor for BeaconKeyManager.IndexInformation);
      swift_dynamicCast();
      v19 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_101125334(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      v12[2] = v16 + 1;
      sub_1000D2AD8(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &unk_1016C1120, &qword_1013C49D0);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_100020040()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[23];
  TaskGroup.makeAsyncIterator()();
  v0[35] = v0[34];
  v4 = sub_1000041A4(&qword_1016ABF28, &qword_1016ABF20, &qword_1013BFDE0);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_100029EE8;
  v7 = v0[31];
  v8 = v0[29];
  v9 = v0[22];

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v8, v4);
}

uint64_t sub_100020144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100020200()
{
  v1 = v0[22];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    v2 = v0[14];
    (*(v0[30] + 8))(v0[31], v0[29]);
    sub_10000B3A8(v1, &qword_1016ABF18, &unk_1013BFDD0);

    return _swift_task_switch(sub_10002A03C, v2, 0);
  }

  else
  {
    v3 = v0[35];
    v5 = v0[27];
    v4 = v0[28];
    sub_1000D2AD8(v1, v4, &unk_1016C1120, &qword_1013C49D0);
    sub_1000D2A70(v4, v5, &unk_1016C1120, &qword_1013C49D0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v0[35];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_100A5E100(0, v7[2] + 1, 1, v0[35]);
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_100A5E100(v8 > 1, v9 + 1, 1, v7);
    }

    v10 = v0[27];
    v11 = v0[24];
    sub_10000B3A8(v0[28], &unk_1016C1120, &qword_1013C49D0);
    v7[2] = v9 + 1;
    sub_1000D2AD8(v10, v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, &unk_1016C1120, &qword_1013C49D0);
    v0[35] = v7;
    v12 = sub_1000041A4(&qword_1016ABF28, &qword_1016ABF20, &qword_1013BFDE0);
    v13 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v14 = swift_task_alloc();
    v0[36] = v14;
    *v14 = v0;
    v14[1] = sub_100029EE8;
    v15 = v0[31];
    v16 = v0[29];
    v17 = v0[22];

    return dispatch thunk of AsyncIteratorProtocol.next()(v17, v16, v12);
  }
}

uint64_t sub_100020484()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 240);
  v6 = *v0;

  v4 = *(v1 + 208);

  return _swift_task_switch(sub_1000205B8, v4, 0);
}

uint64_t sub_1000205B8()
{
  v38 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 88);
  if ((*(v0 + 272))(v2, 1, *(v0 + 56)) == 1)
  {
    v3 = *(v0 + 248);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    sub_10000B3A8(v2, &unk_1016C1120, &qword_1013C49D0);
    sub_100029784(v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    sub_10001E524(v5, v4);
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 240);
    v10 = *(v0 + 216);
    v11 = *(v0 + 152);
    v12 = *(v0 + 104);
    if (v8)
    {
      v14 = *(v0 + 32);
      v13 = *(v0 + 40);
      v15 = swift_slowAlloc();
      v36 = v12;
      v37 = swift_slowAlloc();
      v16 = v37;
      *v15 = 136446210;
      v17 = sub_10001904C(v14, v13);
      v19 = sub_1000136BC(v17, v18, &v37);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "AdvertisementCacheService did not reconcile advertisement %{public}s!", v15, 0xCu);
      sub_100007BAC(v16);

      v20 = v36;
    }

    else
    {
      v29 = *(v0 + 152);

      v20 = v12;
    }

    sub_10000B3A8(v20, &unk_1016C1120, &qword_1013C49D0);
    (*(*(v0 + 64) + 56))(*(v0 + 24), 1, 1, *(v0 + 56));
  }

  else
  {
    sub_10000B3A8(*(v0 + 104), &unk_1016C1120, &qword_1013C49D0);
    v21 = *(v0 + 216);
    v22 = *(v0 + 152);
    v23 = *(v0 + 88);
    v24 = *(v0 + 240);
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);
    v27 = *(v0 + 56);
    v28 = *(v0 + 24);

    sub_100018118(v23, v25, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100018118(v25, v28, type metadata accessor for BeaconKeyManager.IndexInformation);
    (*(v26 + 56))(v28, 0, 1, v27);
  }

  v31 = *(v0 + 96);
  v30 = *(v0 + 104);
  v32 = *(v0 + 88);
  v33 = *(v0 + 72);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1000208B0()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cannot reconcile: missing BeaconKeyService.", v4, 2u);
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[3];

  (*(v6 + 56))(v7, 1, 1, v5);
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

void (*sub_100020A14(uint64_t a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v4 = v3;
  v35 = a1;
  v36 = a2;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v32 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v32 - v16;
  __chkstk_darwin(v15);
  v19 = v32 - v18;
  v41 = type metadata accessor for Table();
  v20 = *(v41 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v41);
  v39 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a3;
  if (sub_100028E90())
  {
    v33 = v3;
    v34 = v20;
    v32[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v23 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v23, qword_10177C788);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_1016952D0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v23, qword_10177C818);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v4 = *(v7 + 8);
    v4(v11, v6);
    v4(v14, v6);
    if (qword_1016952F0 != -1)
    {
      swift_once();
    }

    v24 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v24, qword_10177C878);
    v40[0] = 3;
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v4(v14, v6);
    v4(v17, v6);
    v25 = v39;
    v26 = v41;
    QueryType.filter(_:)();
    v4(v19, v6);
    v40[3] = v26;
    v40[4] = &protocol witness table for Table;
    v27 = sub_1000280DC(v40);
    v28 = v34;
    (*(v34 + 16))(v27, v25, v26);
    v29 = v33;
    Connection.prepare(_:)();
    if (v29)
    {
      (*(v28 + 8))(v25, v26);

      sub_100007BAC(v40);
    }

    else
    {
      sub_100007BAC(v40);
      type metadata accessor for KeyGenerationBeaconInfo();
      v4 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      (*(v28 + 8))(v25, v26);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v30 = 2;
    *(v30 + 4) = 1;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100020F88()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for BeaconStatus(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = (v9 + 9) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  v12 = (v0 + v9);
  v13 = *(v0 + v10);
  v14 = v12[1];
  v15 = *v12;

  return sub_1000213A8(v11, v0 + v2, v0 + v5, v0 + v8, v15, v14, v13);
}

unint64_t sub_1000210EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100021208(a1, v5, &type metadata accessor for UUID, &qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

uint64_t sub_1000211C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100021208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1000211C0(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_1000213A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, void *a7)
{
  v165 = a6;
  LODWORD(v172) = a5;
  v182 = a4;
  v184 = a3;
  v164 = a7;
  v163 = *a7;
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v168 = &v153[-v11];
  v167 = type metadata accessor for SharedBeaconRecord(0);
  v166 = *(v167 - 8);
  v12 = *(v166 + 64);
  __chkstk_darwin(v167);
  v159 = &v153[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v177 = &v153[-v16];
  v17 = type metadata accessor for BeaconStatus(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v162 = &v153[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v157 = &v153[-v23];
  v24 = __chkstk_darwin(v22);
  v176 = &v153[-v25];
  v161 = v26;
  __chkstk_darwin(v24);
  v180 = &v153[-v27];
  v175 = type metadata accessor for UUID();
  v28 = *(v175 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v175);
  v173 = &v153[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v171 = &v153[-v32];
  v33 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v179 = &v153[-v35];
  v187 = type metadata accessor for Date();
  v185 = *(v187 - 8);
  v36 = *(v185 + 64);
  v37 = __chkstk_darwin(v187);
  v174 = &v153[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37);
  v188 = &v153[-v39];
  v40 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v170 = &v153[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v45 = &v153[-v44];
  v46 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v158 = &v153[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = __chkstk_darwin(v48);
  v52 = &v153[-v51];
  __chkstk_darwin(v50);
  v186 = &v153[-v53];
  v54 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_statusForBeacon;
  swift_beginAccess();
  v181 = a1;
  v169 = v54;
  v55 = *(a1 + v54);
  v56 = *(v55 + 16);
  v183 = a2;
  if (v56)
  {

    v57 = sub_1000210EC(a2);
    if (v58)
    {
      v59 = v57;
      v178 = v17;
      v60 = *(v55 + 56);
      v61 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
      v62 = *(v61 - 8);
      v17 = v178;
      sub_1000D2A70(v60 + *(v62 + 72) * v59, v45, &qword_101699850, &unk_1013D6620);

      (*(v62 + 56))(v45, 0, 1, v61);
      goto LABEL_6;
    }
  }

  v63 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  (*(*(v63 - 8) + 56))(v45, 1, 1, v63);
LABEL_6:
  v64 = v179;
  v65 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  v179 = *(v65 - 8);
  v66 = 1;
  if (!(*(v179 + 6))(v45, 1, v65))
  {
    sub_100022A54(v45, v186, type metadata accessor for BeaconStatus);
    v66 = 0;
  }

  sub_10000B3A8(v45, &qword_101699848, &unk_1013D6610);
  v67 = v186;
  (*(v18 + 56))(v186, v66, 1, v17);
  sub_1000D2A70(v67, v52, &qword_10169DBD8, &qword_1013BF910);
  v160 = v18;
  v70 = *(v18 + 48);
  v69 = v18 + 48;
  v68 = v70;
  if (v70(v52, 1, v17) == 1)
  {
    sub_10000B3A8(v52, &qword_10169DBD8, &qword_1013BF910);
    v71 = v185;
    v72 = v187;
    (*(v185 + 56))(v64, 1, 1, v187);
    static Date.distantPast.getter();
    if ((*(v71 + 48))(v64, 1, v72) != 1)
    {
      sub_10000B3A8(v64, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v71 = v185;
    v72 = v187;
    (*(v185 + 16))(v64, &v52[*(v17 + 24)], v187);
    sub_100022C40(v52, type metadata accessor for BeaconStatus);
    (*(v71 + 56))(v64, 0, 1, v72);
    (*(v71 + 32))(v188, v64, v72);
  }

  if (static Date.> infix(_:_:)())
  {
    v155 = v69;
    v156 = v68;
    v178 = v17;
    v73 = v172;
    v172 = v28;
    v74 = *(v28 + 16);
    v75 = v171;
    v76 = v183;
    v77 = v175;
    v74(v171, v183, v175);
    v78 = *(v65 + 48);
    v79 = v182;
    v80 = v170;
    sub_100022A54(v182, v170, type metadata accessor for BeaconStatus);
    v154 = v73;
    v80[v78] = v73;
    (*(v179 + 7))(v80, 0, 1, v65);
    v81 = v181;
    swift_beginAccess();
    sub_100022CA0(v80, v75);
    swift_endAccess();
    v82 = *(*(v81 + 192) + 64);

    AnyCurrentValuePublisher.value.getter();

    LODWORD(v179) = v191;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    v84 = sub_1000076D4(v83, qword_10177BA08);
    v85 = v173;
    v74(v173, v76, v77);
    v86 = v185;
    v87 = v174;
    v88 = v187;
    (*(v185 + 16))(v174, v184, v187);
    sub_100022A54(v79, v180, type metadata accessor for BeaconStatus);
    v89 = v176;
    sub_100022A54(v79, v176, type metadata accessor for BeaconStatus);
    v171 = v84;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v191 = v170;
      *v92 = 141559555;
      *(v92 + 4) = 1752392040;
      *(v92 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v169) = v91;
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      (*(v172 + 8))(v85, v77);
      v96 = sub_1000136BC(v93, v95, &v191);

      *(v92 + 14) = v96;
      v97 = v89;
      *(v92 + 22) = 2082;
      v98 = sub_100018DE0(v165);
      v100 = sub_1000136BC(v98, v99, &v191);

      *(v92 + 24) = v100;
      *(v92 + 32) = 2082;
      sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
      v101 = dispatch thunk of CustomStringConvertible.description.getter();
      v103 = v102;
      v104 = *(v86 + 8);
      v104(v87, v187);
      v105 = sub_1000136BC(v101, v103, &v191);

      *(v92 + 34) = v105;
      *(v92 + 42) = 2082;
      v106 = v178;
      v107 = *&v180[*(v178 + 28)];
      v108 = 0x7972616D6972702ELL;
      if (*&v180[*(v178 + 28)])
      {
        v108 = 0x61646E6F6365732ELL;
      }

      v109 = 0xE800000000000000;
      if (*&v180[*(v178 + 28)])
      {
        v109 = 0xEA00000000007972;
      }

      if (v107 == 2)
      {
        v110 = 1701736302;
      }

      else
      {
        v110 = v108;
      }

      if (v107 == 2)
      {
        v111 = 0xE400000000000000;
      }

      else
      {
        v111 = v109;
      }

      sub_100022C40(v180, type metadata accessor for BeaconStatus);
      v112 = sub_1000136BC(v110, v111, &v191);
      v113 = v183;

      *(v92 + 44) = v112;
      *(v92 + 52) = 2048;
      v114 = (v97 + *(v106 + 28));
      v115 = *v114;
      v116 = *(v114 + 1);
      if (v115 == 2)
      {
        v117 = 0;
      }

      else
      {
        v117 = v116;
      }

      sub_100022C40(v97, type metadata accessor for BeaconStatus);
      *(v92 + 54) = v117;
      *(v92 + 62) = 1024;
      *(v92 + 64) = v179;
      _os_log_impl(&_mh_execute_header, v90, v169, "Latest type18 for %{private,mask.hash}s: %{public}s,scanDate: %{public}s,sequence: %{public}s,index: %llu, appActive: %{BOOL}d.", v92, 0x44u);
      swift_arrayDestroy();
      v88 = v187;
    }

    else
    {
      v113 = v76;
      sub_100022C40(v89, type metadata accessor for BeaconStatus);

      sub_100022C40(v180, type metadata accessor for BeaconStatus);
      v121 = *(v86 + 8);
      v121(v87, v88);
      v122 = v77;
      v104 = v121;
      (*(v172 + 8))(v85, v122);
    }

    v123 = v156;
    v124 = v177;
    sub_100023184(v113, v177);
    v125 = type metadata accessor for WildModeAssociationRecord(0);
    v126 = (*(*(v125 - 8) + 48))(v124, 1, v125);
    sub_10000B3A8(v124, &unk_1016C7C90, &qword_1013BB4B0);
    v127 = v182;
    v128 = v178;
    if (v126 != 1)
    {
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        *v131 = 67109120;
        _os_log_impl(&_mh_execute_header, v129, v130, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v131, 8u);
      }

      ThrottledDarwinPoster.post(bypassRateLimit:)(0);
      if (v132)
      {
      }
    }

    v133 = v183;
    sub_100025020(v183, &v189);
    if (v190)
    {
      sub_10000A748(&v189, &v191);
      if ((v154 - 1) <= 1)
      {
        sub_100B2067C(v133, v184);
      }

      sub_10001F280(&v191, &v189);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v134 = v168;
      v135 = v167;
      v136 = swift_dynamicCast();
      v137 = *(v166 + 56);
      if (v136)
      {
        v137(v134, 0, 1, v135);
        v138 = v159;
        sub_10002911C(v134, v159, type metadata accessor for SharedBeaconRecord);
        v139 = v138[*(v135 + 64)];
        sub_100022C40(v138, type metadata accessor for SharedBeaconRecord);
        if (v139 == 4 || v139 == 1)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v137(v134, 1, 1, v135);
        sub_10000B3A8(v134, &unk_101698C30, &unk_101392630);
      }

      v140 = v186;
      if (v123(v186, 1, v128) == 1)
      {
        v141 = v160;
        if (!v179)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v142 = v140;
        v143 = v158;
        sub_1000D2A70(v142, v158, &qword_10169DBD8, &qword_1013BF910);
        if (v123(v143, 1, v128) == 1)
        {
          sub_10000B3A8(v143, &qword_10169DBD8, &qword_1013BF910);
          v144 = 0;
          v141 = v160;
LABEL_55:
          sub_10001F280(&v191, &v189);
          v148 = v127;
          v149 = v162;
          sub_100022A54(v148, v162, type metadata accessor for BeaconStatus);
          v150 = (*(v141 + 80) + 64) & ~*(v141 + 80);
          v151 = swift_allocObject();
          *(v151 + 16) = v144;
          sub_10000A748(&v189, v151 + 24);
          sub_10002911C(v149, v151 + v150, type metadata accessor for BeaconStatus);
          static Transaction.asyncTask(name:block:)();

          Transaction.capture()();
LABEL_56:
          sub_100007BAC(&v191);
          v104(v188, v88);
          v118 = &qword_10169DBD8;
          v119 = &qword_1013BF910;
          v120 = v186;
          return sub_10000B3A8(v120, v118, v119);
        }

        v145 = v157;
        sub_10002911C(v143, v157, type metadata accessor for BeaconStatus);
        v146 = v145[*(v128 + 20)];
        sub_100022C40(v145, type metadata accessor for BeaconStatus);
        v147 = *(v127 + *(v128 + 20));
        v144 = v146 != v147;
        v141 = v160;
        if (v146 == v147 || (v179 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      sub_100A8306C(22);
LABEL_54:
      v144 = 1;
      goto LABEL_55;
    }

    v104(v188, v88);
    sub_10000B3A8(v186, &qword_10169DBD8, &qword_1013BF910);
    v118 = &qword_101696920;
    v119 = &unk_10138B200;
    v120 = &v189;
  }

  else
  {
    (*(v71 + 8))(v188, v72);
    v118 = &qword_10169DBD8;
    v119 = &qword_1013BF910;
    v120 = v67;
  }

  return sub_10000B3A8(v120, v118, v119);
}

uint64_t sub_1000227F4()
{
  v1 = (type metadata accessor for BeaconStatus(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*v1 + 64);
  sub_100007BAC((v0 + 24));
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[8];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[11]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002293C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100022A54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022ABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022B38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100022C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100022CA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699848, &unk_1013D6610);
    sub_1001E56C0(a2, &qword_101699850, &unk_1013D6620, sub_100AF9CB8, sub_10100CB44, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_101699848, &unk_1013D6610);
  }

  else
  {
    sub_1000D2AD8(a1, v12, &qword_101699850, &unk_1013D6620);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1000230F8(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_100022EFC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v34 = a6;
  v35 = a7;
  v10 = v7;
  v36 = a1;
  v33 = type metadata accessor for UUID();
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v33);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_1000210EC(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 >= v22 && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    sub_10100C824(a4, a5, v34, v35);
    goto LABEL_9;
  }

  sub_100FF506C(v22, a3 & 1, a4, a5, v34, v35);
  v25 = *v10;
  v26 = sub_1000210EC(a2);
  if ((v23 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v26;
LABEL_9:
  v28 = v36;
  v29 = *v10;
  if (v23)
  {
    v30 = v29[7];
    v31 = sub_1000BC4D4(a4, a5);
    return sub_10002311C(v28, v30 + *(*(v31 - 8) + 72) * v19, a4, a5);
  }

  else
  {
    (*(v13 + 16))(v16, a2, v33);
    return sub_101004274(v19, v16, v28, v29, a4, a5);
  }
}

uint64_t sub_10002311C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BC4D4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100023184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v8, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v14) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v10, v3);
  if (v14)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v16 = type metadata accessor for WildModeAssociationRecord(0);
    return (*(*(v16 - 8) + 56))(v28, 1, 1, v16);
  }

  else
  {
    v18 = *(v27 + 168);
    if (qword_101694550 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for URL();
    v20 = sub_1000076D4(v19, qword_10177A8D0);
    v21._object = 0x800000010135B5A0;
    v21._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v21);
    v29 = type metadata accessor for WildModeAssociationRecord(0);
    sub_1000BC4D4(&qword_1016A5B00, &unk_1013B3640);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v25 = objc_autoreleasePoolPush();
    v26 = *(v18 + 16);
    __chkstk_darwin(v25);
    *(&v27 - 6) = v18;
    *(&v27 - 5) = a1;
    *(&v27 - 4) = v20;
    *(&v27 - 3) = v22;
    *(&v27 - 2) = v24;
    sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v25);
  }
}

uint64_t sub_100023590(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for MACAddress();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
    return result;
  }

  v17 = type metadata accessor for Date();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_7;
  }

  v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_7;
  }

  v19 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[14];
    goto LABEL_7;
  }

  v20 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[15];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1000238E4@<X0>(void *a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void *, uint64_t, unint64_t))
{
  v101 = a6;
  v102 = a7;
  v109 = a5;
  v110 = a8;
  v104 = a3;
  v105 = a4;
  v106 = a2;
  v103 = a1;
  v98 = type metadata accessor for CryptoError();
  v100 = *(v98 - 8);
  v12 = *(v100 + 64);
  v13 = __chkstk_darwin(v98);
  v96 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v99 = &v91 - v16;
  __chkstk_darwin(v15);
  v97 = &v91 - v17;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v107 = v18;
  v108 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v91 - v24;
  v26 = type metadata accessor for SystemInfo.DeviceLockState();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v91 - v32;
  static SystemInfo.lockState.getter();
  (*(v27 + 104))(v31, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v26);
  sub_100024A10(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v34 = *(v27 + 8);
  v34(v31, v26);
  v34(v33, v26);
  if (aBlock != v118)
  {
    v37 = objc_autoreleasePoolPush();
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    URL.appendingPathExtension(_:)();
    v38 = v107;
    v39 = v108 + 8;
    v40 = *(v108 + 8);
    v40(v23, v107);
    objc_autoreleasePoolPop(v37);
    v41 = v111;
    v42 = Data.init(contentsOf:options:)();
    if (v41)
    {

      v40(v25, v38);
      v44 = v109(0);
      return (*(*(v44 - 8) + 56))(v110, 1, 1, v44);
    }

    v94 = v42;
    v95 = v43;
    v106 = v25;
    LOBYTE(v45) = static os_log_type_t.debug.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v46 = qword_10177C380;
    v92 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v47 = swift_allocObject();
    v91 = xmmword_101385D80;
    *(v47 + 16) = xmmword_101385D80;
    sub_100024A10(&qword_1016B14E0, &type metadata accessor for URL);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    *(v47 + 56) = &type metadata for String;
    v93 = sub_100008C00();
    *(v47 + 64) = v93;
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    os_log(_:dso:log:_:_:)();

    v51 = v103;
    swift_beginAccess();
    v52 = v51[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118 = v51[9];
    v54 = v118;
    v51[9] = 0x8000000000000000;
    v55 = sub_100771D58(v104, v105);
    v57 = v54[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      __break(1u);
      goto LABEL_34;
    }

    LOBYTE(v45) = v56;
    if (v54[3] < v60)
    {
      sub_100FE8BB4(v60, isUniquelyReferenced_nonNull_native);
      v54 = v118;
      v55 = sub_100771D58(v104, v105);
      if ((v45 & 1) == (v61 & 1))
      {
LABEL_14:
        v51[9] = v54;
        if (v45)
        {
          goto LABEL_16;
        }

LABEL_15:
        v45 = v55;
        sub_1010036DC(v55, v104, v105, 0, v54);

        v55 = v45;
LABEL_16:
        while (1)
        {
          v62 = v54[7];
          v63 = v62[v55];
          v59 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v59)
          {
            break;
          }

          v105 = v46;
          v108 = v39;
          v62[v55] = v64;
          v55 = swift_endAccess();
          v65 = v51[8];
          v59 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v59)
          {
            goto LABEL_35;
          }

          v67 = a10;
          v51[8] = v66;
          if (__ROR8__(0x1CAC083126E978D5 * v66 + 0x10624DD2F1A9FB8, 3) < 0x4189374BC6A7EFuLL)
          {
            v111 = a10;
            v68 = sub_100B2D828(v51);
            v39 = v69;
            v70 = v51[9];

            v72 = sub_1012BB02C(v71);
            v74 = v73;

            if ((v74 & 1) != 0 || v72 < 10001)
            {
              if (qword_101694BE8 != -1)
              {
                swift_once();
              }

              v78 = type metadata accessor for Logger();
              sub_1000076D4(v78, qword_10177BA08);

              v76 = Logger.logObject.getter();
              v77 = static os_log_type_t.info.getter();
            }

            else
            {
              if (qword_101694BE8 != -1)
              {
                swift_once();
              }

              v75 = type metadata accessor for Logger();
              sub_1000076D4(v75, qword_10177BA08);

              v76 = Logger.logObject.getter();
              v77 = static os_log_type_t.error.getter();
            }

            v79 = v77;

            if (os_log_type_enabled(v76, v79))
            {
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              aBlock = v81;
              *v80 = 136446210;
              v82 = sub_1000136BC(v68, v39, &aBlock);

              *(v80 + 4) = v82;
              _os_log_impl(&_mh_execute_header, v76, v79, "readStatistics:\n%{public}s", v80, 0xCu);
              sub_100007BAC(v81);
              v51 = v103;
            }

            else
            {
            }

            v67 = v111;
          }

          v46 = v51[3];
          v83 = *(v46 + 72);
          v84 = swift_allocObject();
          LOBYTE(v45) = v84;
          *(v84 + 16) = v102;
          *(v84 + 24) = v46;
          v116 = a9;
          v117 = v84;
          aBlock = _NSConcreteStackBlock;
          v113 = 1107296256;
          v114 = sub_10013FE14;
          v115 = v67;
          v51 = _Block_copy(&aBlock);

          dispatch_sync(v83, v51);
          _Block_release(v51);
          LOBYTE(v83) = swift_isEscapingClosureAtFileLocation();

          if ((v83 & 1) == 0)
          {
            v85 = *(v46 + 96);
            __chkstk_darwin(a11);
            v86 = v94;
            *(&v91 - 4) = v46;
            *(&v91 - 3) = v86;
            *(&v91 - 2) = v95;
            OS_dispatch_queue.sync<A>(execute:)();
            v87 = aBlock;
            v88 = v113;
            v89 = objc_autoreleasePoolPush();
            a12(v103, v87, v88);
            objc_autoreleasePoolPop(v89);
            sub_100016590(v94, v95);
            sub_100016590(v87, v88);
            return (v40)(v106, v107);
          }

LABEL_36:
          __break(1u);
LABEL_37:
          v90 = v55;
          sub_101006344();
          v55 = v90;
          v54 = v118;
          v51[9] = v118;
          if ((v45 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v55 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_14;
  }

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v35 = v109(0);
  return (*(*(v35 - 8) + 56))(v110, 1, 1, v35);
}

uint64_t sub_1000248A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000248F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100024938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100024980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000249C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100024A10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100024A6C(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for MACAddress();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = type metadata accessor for Date();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[10];
      goto LABEL_7;
    }

    v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[11];
      goto LABEL_7;
    }

    v19 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[14];
      goto LABEL_7;
    }

    v20 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[15];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_100024D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v24 = a2;
  v25 = a3;
  v26 = a5;
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  static os_log_type_t.info.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = UUID.uuidString.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100008C00();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v7 + 104))(v11, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v6);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v17) = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v11, v6);
  v18(v13, v6);
  if (v17)
  {
    static os_log_type_t.default.getter();
    result = os_log(_:dso:log:_:_:)();
    v20 = v26;
    *(v26 + 32) = 0;
    *v20 = 0u;
    v20[1] = 0u;
  }

  else
  {
    v21 = sub_100007F54();
    __chkstk_darwin(v21);
    *(&v22 - 2) = a1;
    sub_1000314D0(v23, v21, v26);
  }

  return result;
}

void *sub_100025044()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v64 = &v53 - v4;
  v67 = sub_1000BC4D4(&qword_1016B5578, &unk_1013D6A70);
  v65 = *(v67 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v67);
  v63 = &v53 - v6;
  v7 = type metadata accessor for URL();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  v9 = __chkstk_darwin(v7);
  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - v12;
  __chkstk_darwin(v11);
  v66 = &v53 - v14;
  v15 = sub_1000BC4D4(&qword_1016B5580, &unk_1013D7450);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v53 - v17);
  v19 = type metadata accessor for SystemInfo.DeviceLockState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v53 - v25;
  v27._object = 0x800000010136CC40;
  v27._countAndFlagsBits = 0xD000000000000012;
  prohibitAsyncContext(functionName:)(v27);
  static SystemInfo.lockState.getter();
  (*(v20 + 104))(v24, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v19);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v28 = *(v20 + 8);
  v28(v24, v19);
  v28(v26, v19);
  if (v69 == v68)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177BA08);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "ownedBeaconRecords call failed because in device is in beforeFirstUnlock state", v32, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v34 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    sub_1000BC4D4(&qword_1016B5588, &qword_1013D6A80);
    QueueSynchronizer.conditionalSync<A>(_:)();
    result = v69;
    if (!v69)
    {
      v56 = v18;
      v59 = 0;
      v60 = v34;
      v35 = *(v1 + 168);
      v58 = v1;
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v36 = sub_1000076D4(v7, qword_10177C070);
      v37 = v62;
      v38 = *(v62 + 16);
      v39 = v66;
      v38(v66, v36, v7);
      v38(v13, v39, v7);
      v40 = *(v67 + 40);
      v57 = v40;
      v41 = v67;
      v54 = type metadata accessor for DirectorySequence();
      v42 = *(v54 - 8);
      v43 = *(v42 + 56);
      v44 = v13;
      v55 = v42 + 56;
      v45 = v63;
      v43(&v63[v40], 1, 1, v54);
      v38(v45, v44, v7);
      *(v45 + *(v41 + 36)) = v35;
      v38(v61, v44, v7);

      v46 = v64;
      DirectorySequence.init(at:includingPropertiesForKeys:options:)();
      v47 = *(v37 + 8);
      v47(v44, v7);
      v47(v66, v7);
      v43(v46, 0, 1, v54);
      sub_10002311C(v46, v45 + v57, &qword_1016A5970, &unk_1013B3470);
      v48 = *(v65 + 56);
      v49 = v56;
      v50 = v67;
      v48(v56, 1, 1, v67);
      sub_10000B3A8(v49, &qword_1016B5590, &qword_1013D6A88);
      sub_1000D2AD8(v45, v49, &qword_1016B5578, &unk_1013D6A70);
      v48(v49, 0, 1, v50);
      v51 = sub_100B322A0(v49);
      v52 = sub_10000B3A8(v49, &qword_1016B5580, &unk_1013D7450);
      __chkstk_darwin(v52);
      *(&v53 - 2) = v58;
      *(&v53 - 1) = v51;
      QueueSynchronizer.conditionalSync<A>(_:)();
      return v51;
    }
  }

  return result;
}

void *sub_1000257D0(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_100025B1C(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for OwnedBeaconRecord);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_100025B1C((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_100019420(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for OwnedBeaconRecord);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for OwnedBeaconRecord);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_1000259D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100025B1C(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016975D8, &unk_1013AAF10, &unk_1016AA470, &qword_10139FD30);
  *v3 = result;
  return result;
}

uint64_t sub_100025B5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v234 = a3;
  v231 = a2;
  v4 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v217 = &v179 - v6;
  v199 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v189 = *(v199 - 8);
  v7 = *(v189 + 64);
  __chkstk_darwin(v199);
  v204 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for OnConflict();
  v207 = *(v208 - 8);
  v9 = *(v207 + 64);
  __chkstk_darwin(v208);
  v206 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v203 = &v179 - v13;
  v215 = type metadata accessor for ObservedAdvertisement.Location(0);
  v202 = *(v215 - 8);
  v14 = *(v202 + 64);
  __chkstk_darwin(v215);
  v213 = (&v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v235 = type metadata accessor for ObservedAdvertisement(0);
  v16 = *(*(v235 - 1) + 64);
  v17 = __chkstk_darwin(v235);
  v205 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v196 = &v179 - v19;
  v198 = type metadata accessor for Setter();
  v220 = *(v198 - 8);
  v20 = *(v220 + 64);
  __chkstk_darwin(v198);
  v212 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for Insert();
  v209 = *(v210 - 8);
  v22 = *(v209 + 64);
  v23 = __chkstk_darwin(v210);
  v184 = &v179 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v188 = &v179 - v26;
  __chkstk_darwin(v25);
  v197 = &v179 - v27;
  v28 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v214 = &v179 - v30;
  v218 = type metadata accessor for Row();
  v219 = *(v218 - 8);
  v31 = *(v219 + 64);
  __chkstk_darwin(v218);
  v211 = &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v237 = *(v227 - 8);
  v33 = *(v237 + 64);
  v34 = __chkstk_darwin(v227);
  v36 = &v179 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = &v179 - v38;
  v40 = __chkstk_darwin(v37);
  v223 = &v179 - v41;
  __chkstk_darwin(v40);
  v226 = &v179 - v42;
  v43 = type metadata accessor for Table();
  v44 = *(v43 - 8);
  v232 = v43;
  v233 = v44;
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v186 = &v179 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v225 = &v179 - v49;
  __chkstk_darwin(v48);
  v230 = &v179 - v50;
  v51 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v52 = *(*(v51 - 8) + 64);
  v53 = __chkstk_darwin(v51 - 8);
  v55 = &v179 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v57 = &v179 - v56;
  v58 = type metadata accessor for MACAddress();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  v62 = &v179 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = a1;
  v63 = *(a1 + 2);
  v64 = *(a1 + 3);
  v236 = v63;
  if ((v64 & 0x2000000000000000) != 0)
  {
    sub_100029784(v63, v64);
    sub_100029784(v63, v64);
    sub_100017D5C(v63, v64 & 0xDFFFFFFFFFFFFFFFLL);
    v228 = v64 & 0xDFFFFFFFFFFFFFFFLL;
    MACAddress.init(addressToSanitize:type:)();
    result = (*(v59 + 48))(v55, 1, v58);
    v57 = v55;
    if (result != 1)
    {
      goto LABEL_5;
    }

LABEL_75:
    __break(1u);
    return result;
  }

  sub_100029784(v63, v64);
  sub_100029784(v63, v64);
  sub_100017D5C(v63, v64);
  sub_10002EA98(6, v63, v64, &v239);
  v65 = v64;
  v66 = v239;
  v67 = v240;
  sub_100017D5C(v239, v240);
  MACAddress.init(addressToSanitize:type:)();
  result = (*(v59 + 48))(v57, 1, v58);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_75;
  }

  sub_100016590(v66, v67);
  v228 = v65;
  v64 = v65;
  v63 = v236;
LABEL_5:
  sub_10001E524(v63, v64);
  v69 = *(v59 + 32);
  v229 = v62;
  v69(v62, v57, v58);
  v70 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v238 = v64;
  v222 = v58;
  v200 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v71 = sub_1000076D4(v200, qword_10177C800);
  v190 = v243[9];
  LOBYTE(v239) = v190;
  v72 = sub_100028088();
  v191 = v71;
  v201 = v72;
  == infix<A>(_:_:)();
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v221 = v59;
  v192 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v73 = sub_1000076D4(v192, qword_10177C8A8);
  v239 = v63;
  v240 = v228;
  sub_100029784(v63, v238);
  sub_1000291EC(&qword_101699DC8, &type metadata accessor for Blob);
  v193 = v73;
  == infix<A>(_:_:)();
  sub_100016590(v239, v240);
  v74 = v223;
  && infix(_:_:)();
  v76 = v237 + 8;
  v75 = *(v237 + 8);
  v77 = v36;
  v78 = v227;
  v75(v77, v227);
  v75(v39, v78);
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v187 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v79 = sub_1000076D4(v187, qword_10177C938);
  v80 = v235[11];
  v81 = type metadata accessor for Date();
  v194 = v80;
  v195 = v79;
  v216 = v81;
  == infix<A>(_:_:)();
  v82 = v226;
  && infix(_:_:)();
  v75(v39, v78);
  v75(v74, v78);
  v83 = v232;
  v223 = v70;
  v84 = v225;
  QueryType.filter(_:)();
  v237 = v76;
  v185 = v75;
  v75(v82, v78);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v85 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v86 = sub_1000076D4(v85, qword_10177C770);
  v241 = v85;
  v242 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850);
  v87 = sub_1000280DC(&v239);
  (*(*(v85 - 8) + 16))(v87, v86, v85);
  v88 = v230;
  SchemaType.select(_:_:)();
  v89 = v233;
  v90 = *(v233 + 8);
  v91 = v84;
  v92 = v233 + 8;
  v90(v91, v83);
  sub_100007BAC(&v239);
  v241 = v83;
  v242 = &protocol witness table for Table;
  v93 = sub_1000280DC(&v239);
  v96 = *(v89 + 16);
  v95 = v89 + 16;
  v94 = v96;
  v96(v93, v88, v83);
  v97 = v224;
  Connection.prepare(_:)();
  if (v97)
  {
    sub_10001E524(v236, v238);
    v90(v88, v83);
    (*(v221 + 8))(v229, v222);
    return sub_100007BAC(&v239);
  }

  v180 = v94;
  v181 = v86;
  v182 = v90;
  v233 = v95;
  sub_100007BAC(&v239);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  v98 = v214;
  dispatch thunk of _AnyIteratorBoxBase.next()();

  v99 = v219;
  v100 = v218;
  v101 = (*(v219 + 48))(v98, 1, v218);
  v183 = v92;
  v224 = 0;
  if (v101 == 1)
  {
    sub_10000B3A8(v98, &qword_101699D68, &unk_1013B6450);
    LOBYTE(v239) = v190;
    <- infix<A>(_:_:)();
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v102 = *(v220 + 72);
    v103 = (*(v220 + 80) + 32) & ~*(v220 + 80);
    *(swift_allocObject() + 16) = xmmword_101393060;
    if (qword_1016952F8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v192, qword_10177C890);
    v239 = MACAddress.data.getter();
    v240 = v104;
    <- infix<A>(_:_:)();
    sub_100016590(v239, v240);
    v239 = v236;
    v240 = v228;
    sub_100029784(v236, v238);
    <- infix<A>(_:_:)();
    sub_100016590(v239, v240);
    v105 = v200;
    if (qword_101695308 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v105, qword_10177C8C0);
    v106 = v243[32];
    LOBYTE(v239) = v106;
    <- infix<A>(_:_:)();
    if (qword_101695310 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v105, qword_10177C8D8);
    LOBYTE(v239) = sub_10001993C(v106 & 0xB);
    <- infix<A>(_:_:)();
    v83 = v232;
    if (qword_101695318 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v105, qword_10177C8F0);
    v107 = v243;
    LOBYTE(v239) = v243[33];
    <- infix<A>(_:_:)();
    if (qword_101695320 != -1)
    {
      swift_once();
    }

    v108 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
    sub_1000076D4(v108, qword_10177C908);
    v109 = v107[35];
    LOBYTE(v239) = v107[34];
    BYTE1(v239) = v109;
    <- infix<A>(_:_:)();
    v110 = v107;
    if (qword_101695328 != -1)
    {
      swift_once();
    }

    v111 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
    sub_1000076D4(v111, qword_10177C920);
    LODWORD(v239) = *(v107 + 9);
    sub_100027F50();
    <- infix<A>(_:_:)();
    <- infix<A>(_:_:)();
    if (qword_101695340 != -1)
    {
      swift_once();
    }

    v112 = v227;
    sub_1000076D4(v227, qword_10177C968);
    LOBYTE(v239) = v110[v235[14]];
    <- infix<A>(_:_:)();
    if (qword_101695338 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v112, qword_10177C950);
    LOBYTE(v239) = 0;
    <- infix<A>(_:_:)();
    v113 = v197;
    v114 = v212;
    QueryType.insert(_:_:)();

    v115 = v220;
    (*(v220 + 8))(v114, v198);
    v116 = v224;
    v117 = Connection.run(_:)();
    v118 = v229;
    v119 = v217;
    v120 = v213;
    v224 = v116;
    if (v116)
    {
      sub_10001E524(v236, v238);
      (*(v209 + 8))(v113, v210);
      v182(v230, v83);
      return (*(v221 + 8))(v118, v222);
    }

    v136 = v117;
    (*(v209 + 8))(v113, v210);
    v135 = v235;
  }

  else
  {
    (*(v99 + 32))(v211, v98, v100);
    Row.subscript.getter();
    v223 = v239;
    v121 = v213;
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    sub_1000076D4(v122, qword_10177B810);
    v123 = v243;
    v124 = v196;
    sub_10001BA68(v243, v196, type metadata accessor for ObservedAdvertisement);
    v125 = v205;
    sub_10001BA68(v123, v205, type metadata accessor for ObservedAdvertisement);
    v126 = v236;
    v127 = v238;
    sub_100029784(v236, v238);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.info.getter();
    sub_10001E524(v126, v127);
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v239 = v212;
      *v130 = 136315906;
      v131 = *(v124 + 9);
      v132 = v124;
      LODWORD(v214) = v129;
      if (v131 > 1)
      {
        v120 = v121;
        if (v131 == 2)
        {
          v133 = 0xED000072656E6E61;
          v134 = 0x6353686365656C2ELL;
        }

        else
        {
          v133 = 0xE500000000000000;
          v134 = 0x6E7363612ELL;
        }
      }

      else
      {
        v120 = v121;
        if (v131)
        {
          v133 = 0xEA00000000007265;
          v134 = 0x747365767261682ELL;
        }

        else
        {
          v133 = 0xE800000000000000;
          v134 = 0x6E776F6E6B6E752ELL;
        }
      }

      sub_100034434(v132, type metadata accessor for ObservedAdvertisement);
      v137 = sub_1000136BC(v134, v133, &v239);

      *(v130 + 4) = v137;
      *(v130 + 12) = 2080;
      v138 = Data.hexString.getter();
      v140 = sub_1000136BC(v138, v139, &v239);

      *(v130 + 14) = v140;
      *(v130 + 22) = 2080;
      v135 = v235;
      v141 = v235[11];
      sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
      v142 = v205;
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v145 = v144;
      sub_100034434(v142, type metadata accessor for ObservedAdvertisement);
      v146 = sub_1000136BC(v143, v145, &v239);

      *(v130 + 24) = v146;
      *(v130 + 32) = 2048;
      v136 = v223;
      *(v130 + 34) = v223;
      _os_log_impl(&_mh_execute_header, v128, v214, "ObservedAdvertisement for %s/%s/%salready exists (advId=%lld).", v130, 0x2Au);
      swift_arrayDestroy();

      (*(v219 + 8))(v211, v218);
      v83 = v232;
      v118 = v229;
      v115 = v220;
      v119 = v217;
    }

    else
    {

      sub_100034434(v125, type metadata accessor for ObservedAdvertisement);
      sub_100034434(v124, type metadata accessor for ObservedAdvertisement);
      (*(v219 + 8))(v211, v100);
      v118 = v229;
      v115 = v220;
      v119 = v217;
      v135 = v235;
      v136 = v223;
      v120 = v121;
    }
  }

  v147 = v203;
  sub_1000D2A70(&v243[v135[12]], v203, &qword_1016AA430, &unk_101392650);
  if ((*(v202 + 48))(v147, 1, v215) == 1)
  {
    sub_10000B3A8(v147, &qword_1016AA430, &unk_101392650);
    v148 = v204;
    v149 = v199;
  }

  else
  {
    sub_1000345B4(v147, v120, type metadata accessor for ObservedAdvertisement.Location);
    (*(v207 + 104))(v206, enum case for OnConflict.ignore(_:), v208);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v150 = *(v115 + 72);
    v151 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    *(swift_allocObject() + 16) = xmmword_10138C0D0;
    v239 = v136;
    <- infix<A>(_:_:)();
    if (qword_101695348 != -1)
    {
      swift_once();
    }

    v152 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
    sub_1000076D4(v152, qword_10177C980);
    v239 = *v120;
    <- infix<A>(_:_:)();
    if (qword_101695350 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v152, qword_10177C998);
    v239 = v120[1];
    <- infix<A>(_:_:)();
    if (qword_101695358 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v152, qword_10177C9B0);
    v239 = v120[2];
    <- infix<A>(_:_:)();
    if (qword_101695360 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v187, qword_10177C9C8);
    v153 = v120 + *(v215 + 28);
    <- infix<A>(_:_:)();
    v83 = v232;
    v154 = v188;
    v155 = v206;
    QueryType.insert(or:_:)();

    (*(v207 + 8))(v155, v208);
    v156 = v224;
    Connection.run(_:)();
    v157 = v230;
    v224 = v156;
    if (v156)
    {
      sub_10001E524(v236, v238);
      (*(v209 + 8))(v154, v210);
      sub_100034434(v120, type metadata accessor for ObservedAdvertisement.Location);
      v182(v157, v83);
      return (*(v221 + 8))(v229, v222);
    }

    (*(v209 + 8))(v154, v210);
    sub_100034434(v120, type metadata accessor for ObservedAdvertisement.Location);
    v148 = v204;
    v149 = v199;
    v118 = v229;
    v119 = v217;
  }

  sub_1000D2A70(&v243[v235[13]], v119, &qword_101699DB0, &unk_101393100);
  if ((*(v189 + 48))(v119, 1, v149) == 1)
  {
    sub_10001E524(v236, v238);
    v182(v230, v83);
    (*(v221 + 8))(v118, v222);
    return sub_10000B3A8(v119, &qword_101699DB0, &unk_101393100);
  }

  else
  {
    v223 = v136;
    sub_1000345B4(v119, v148, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v158 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    v159 = sub_1000076D4(v158, qword_10177C788);
    type metadata accessor for UUID();
    v160 = v226;
    v243 = v159;
    == infix<A>(_:_:)();
    v161 = v225;
    QueryType.filter(_:)();
    v185(v160, v227);
    v162 = v186;
    QueryType.limit(_:)();
    v163 = v182;
    v182(v161, v83);
    v241 = v83;
    v242 = &protocol witness table for Table;
    v164 = sub_1000280DC(&v239);
    v180(v164, v162, v83);
    v165 = v224;
    Connection.prepare(_:)();
    if (v165)
    {
      sub_10001E524(v236, v238);
      v163(v162, v83);
      sub_100034434(v204, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v163(v230, v83);
      (*(v221 + 8))(v229, v222);
      return sub_100007BAC(&v239);
    }

    sub_100007BAC(&v239);
    v166 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v167 = *(v166 + 16);

    if (v167)
    {
      (*(v207 + 104))(v206, enum case for OnConflict.ignore(_:), v208);
      sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
      v168 = *(v220 + 72);
      v169 = (*(v220 + 80) + 32) & ~*(v220 + 80);
      *(swift_allocObject() + 16) = xmmword_101391790;
      v239 = v223;
      <- infix<A>(_:_:)();
      v170 = v204;
      <- infix<A>(_:_:)();
      if (qword_1016952B0 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v200, qword_10177C7B8);
      v171 = v199;
      LOBYTE(v239) = *(v170 + *(v199 + 20));
      <- infix<A>(_:_:)();
      v172 = v182;
      if (qword_1016952A8 != -1)
      {
        swift_once();
      }

      v173 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v173, qword_10177C7A0);
      v239 = *(v170 + *(v171 + 24));
      sub_100029580();
      <- infix<A>(_:_:)();
      v174 = v232;
      v175 = v184;
      v176 = v206;
      QueryType.insert(or:_:)();

      (*(v207 + 8))(v176, v208);
      Connection.run(_:)();
      v177 = v186;
      sub_10001E524(v236, v238);
      (*(v209 + 8))(v175, v210);
      v172(v177, v174);
      sub_100034434(v170, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v172(v230, v174);
      return (*(v221 + 8))(v229, v222);
    }

    else
    {
      sub_10022A42C();
      swift_allocError();
      swift_willThrow();
      sub_10001E524(v236, v238);
      v178 = v182;
      v182(v186, v83);
      sub_100034434(v204, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v178(v230, v83);
      return (*(v221 + 8))(v229, v222);
    }
  }
}

unint64_t sub_100027F50()
{
  result = qword_101699DE0;
  if (!qword_101699DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DE0);
  }

  return result;
}

uint64_t sub_100027FA4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699D28, type metadata accessor for ObservationDatabase);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for ObservationDatabase();
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 24);

    return v7;
  }

  return result;
}

unint64_t sub_100028088()
{
  result = qword_101699DB8;
  if (!qword_101699DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DB8);
  }

  return result;
}

uint64_t *sub_1000280DC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100028164()
{
  v1 = *(v0 + 48);
  sub_1000BC4D4(&qword_10169DD98, &unk_1013BF4A0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v3;
}

uint64_t sub_100028228()
{
  v128 = v0;
  if (*(v0 + 241) == 1)
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 160);
    v3 = *(v0 + 120);
    v117 = type metadata accessor for UUID();
    (*(*(v117 - 8) + 16))(v1, v2);
    v115 = v3;
    v4 = (v2 + *(v3 + 20));
    v5 = v4[3];
    v6 = v4[4];
    sub_1000035D0(v4, v5);
    LOBYTE(v5) = sub_10002BD40(v5, v6);
    v7 = v4[4];
    sub_1000035D0(v4, v4[3]);
    v8 = *(v7 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v9 = *(v0 + 16);
    v10 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    *(v1 + *(v10 + 20)) = v5 & 1;
    *(v1 + *(v10 + 24)) = v9;
    (*(*(v10 - 8) + 56))(v1, 0, 1, v10);
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v120 = *(v0 + 144);
    v123 = *(v0 + 80);
    v17 = *(v0 + 24);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177B5D8);
    sub_10002963C(v17, v13, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v17, v14, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v17, v15, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v17, v16, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v11, v12, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10002963C(v11, v120, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10002963C(v17, v123, type metadata accessor for ObservedAdvertisement);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v124 = v20;
      v22 = *(v0 + 104);
      v21 = *(v0 + 112);
      v23 = *(v0 + 96);
      v24 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v24 = 141560067;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      v25 = sub_10001904C(*(v21 + 16), *(v21 + 24));
      v27 = v26;
      sub_10001F210(v21, type metadata accessor for ObservedAdvertisement);
      v28 = sub_1000136BC(v25, v27, &v127);

      *(v24 + 14) = v28;
      *(v24 + 22) = 2082;
      sub_10001993C(*(v22 + 32) & 0xB);
      v29 = sub_100019E48();
      v31 = v30;
      sub_10001F210(v22, type metadata accessor for ObservedAdvertisement);
      v32 = sub_1000136BC(v29, v31, &v127);

      *(v24 + 24) = v32;
      *(v24 + 32) = 2082;
      if (*(v23 + 35))
      {
        v33 = 0xE400000000000000;
        v34 = 1701736302;
      }

      else
      {
        *(v0 + 240) = *(*(v0 + 96) + 34);
        sub_1000198E8();
        v73 = FixedWidthInteger.data.getter();
        v75 = v74;
        v34 = Data.hexString.getter();
        v33 = v76;
        sub_100016590(v73, v75);
      }

      v78 = *(v0 + 144);
      v77 = *(v0 + 152);
      v79 = *(v0 + 88);
      v114 = *(v0 + 80);
      v80 = *(v0 + 48);
      v111 = *(v0 + 56);
      sub_10001F210(*(v0 + 96), type metadata accessor for ObservedAdvertisement);
      v81 = sub_1000136BC(v34, v33, &v127);

      *(v24 + 34) = v81;
      *(v24 + 42) = 2082;
      v82 = sub_100018DE0(*(v79 + 32));
      v84 = v83;
      sub_10001F210(v79, type metadata accessor for ObservedAdvertisement);
      v85 = sub_1000136BC(v82, v84, &v127);

      *(v24 + 44) = v85;
      *(v24 + 52) = 2082;
      v86 = (v77 + *(v115 + 20));
      v87 = v86[4];
      sub_1000035D0(v86, v86[3]);
      v88 = *(v87 + 16);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      sub_10001F210(v77, type metadata accessor for BeaconKeyManager.IndexInformation);
      v92 = sub_1000136BC(v89, v91, &v127);

      *(v24 + 54) = v92;
      *(v24 + 62) = 2160;
      *(v24 + 64) = 1752392040;
      *(v24 + 72) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      sub_10001F210(v78, type metadata accessor for BeaconKeyManager.IndexInformation);
      v96 = sub_1000136BC(v93, v95, &v127);

      *(v24 + 74) = v96;
      *(v24 + 82) = 1024;
      sub_1000D2A70(v114 + *(v111 + 48), v80, &qword_1016AA430, &unk_101392650);
      v97 = type metadata accessor for ObservedAdvertisement.Location(0);
      LODWORD(v77) = (*(*(v97 - 8) + 48))(v80, 1, v97) != 1;
      sub_10000B3A8(v80, &qword_1016AA430, &unk_101392650);
      sub_10001F210(v114, type metadata accessor for ObservedAdvertisement);
      *(v24 + 84) = v77;
      _os_log_impl(&_mh_execute_header, v19, v124, "Reconciled advertisement %{private,mask.hash}s, multiPart: %{public}s, hint: %{public}s, Type18: %{public}s,\nindex: %{public}s, beacon: %{private,mask.hash}s,\nhasLocation: %{BOOL}d.", v24, 0x58u);
      swift_arrayDestroy();
    }

    else
    {
      v55 = *(v0 + 144);
      v56 = *(v0 + 152);
      v58 = *(v0 + 104);
      v57 = *(v0 + 112);
      v60 = *(v0 + 88);
      v59 = *(v0 + 96);
      sub_10001F210(*(v0 + 80), type metadata accessor for ObservedAdvertisement);

      sub_10001F210(v55, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10001F210(v60, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v59, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v58, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v57, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v56, type metadata accessor for BeaconKeyManager.IndexInformation);
    }

    sub_10001F210(*(v0 + 160), type metadata accessor for BeaconKeyManager.IndexInformation);
    v98 = *(v0 + 184);
    v100 = *(v0 + 56);
    v99 = *(v0 + 64);
    v101 = *(v0 + 24);
    v126 = *(v101 + 9);
    v103 = *(v101 + 16);
    v102 = *(v101 + 24);
    v104 = *(v101 + 32);
    v105 = *(v101 + 34);
    v122 = *(v101 + 35);
    v119 = *(v101 + 36);
    v106 = v100[11];
    v107 = type metadata accessor for Date();
    (*(*(v107 - 8) + 16))(v99 + v106, v101 + v106, v107);
    LOBYTE(v106) = *(v101 + v100[14]);
    sub_1000D2A70(v101 + v100[12], v99 + v100[12], &qword_1016AA430, &unk_101392650);
    sub_1000D2A70(v98, v99 + v100[13], &qword_101699DB0, &unk_101393100);
    *v99 = 0;
    *(v99 + 8) = 1;
    *(v99 + 9) = v126;
    *(v99 + 16) = v103;
    *(v99 + 24) = v102;
    *(v99 + 32) = v104;
    *(v99 + 34) = v105;
    *(v99 + 35) = v122;
    *(v99 + 36) = v119;
    *(v99 + v100[14]) = v106;
    sub_100029784(v103, v102);
    v108 = swift_task_alloc();
    *(v0 + 216) = v108;
    *v108 = v0;
    v108[1] = sub_10002DAD4;
    v109 = *(v0 + 64);
    v110 = *(v0 + 32);

    return sub_10002D6CC(v109);
  }

  else
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 160);
    v36 = *(v0 + 136);
    v37 = *(v0 + 72);
    v38 = *(v0 + 24);
    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177B5D8);
    sub_10002963C(v35, v36, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10002963C(v38, v37, type metadata accessor for ObservedAdvertisement);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 176);
    v44 = *(v0 + 136);
    v45 = *(v0 + 72);
    if (v42)
    {
      v46 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v46 = 141558787;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_10001F210(v44, type metadata accessor for BeaconKeyManager.IndexInformation);
      v50 = sub_1000136BC(v47, v49, &v127);

      *(v46 + 14) = v50;
      *(v46 + 22) = 2160;
      *(v46 + 24) = 1752392040;
      *(v46 + 32) = 2081;
      v51 = sub_10001904C(*(v45 + 16), *(v45 + 24));
      v53 = v52;
      sub_10001F210(v45, type metadata accessor for ObservedAdvertisement);
      v54 = sub_1000136BC(v51, v53, &v127);

      *(v46 + 34) = v54;
      _os_log_impl(&_mh_execute_header, v40, v41, "Ignoring unsupported beacon %{private,mask.hash}s,\nadvertisement %{private,mask.hash}s!", v46, 0x2Au);
      swift_arrayDestroy();

      sub_10000B3A8(v43, &unk_1016C1120, &qword_1013C49D0);
    }

    else
    {

      sub_10001F210(v44, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10000B3A8(v43, &unk_1016C1120, &qword_1013C49D0);
      sub_10001F210(v45, type metadata accessor for ObservedAdvertisement);
    }

    sub_10001F210(*(v0 + 160), type metadata accessor for BeaconKeyManager.IndexInformation);
    v62 = *(v0 + 176);
    v61 = *(v0 + 184);
    v64 = *(v0 + 160);
    v63 = *(v0 + 168);
    v66 = *(v0 + 144);
    v65 = *(v0 + 152);
    v67 = *(v0 + 136);
    v68 = *(v0 + 104);
    v69 = *(v0 + 112);
    v70 = *(v0 + 96);
    log = *(v0 + 88);
    v113 = *(v0 + 80);
    v116 = *(v0 + 72);
    v118 = *(v0 + 64);
    v121 = *(v0 + 48);
    v125 = *(v0 + 40);

    v71 = *(v0 + 8);

    return v71();
  }
}

uint64_t sub_100028E90()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699D28, type metadata accessor for ObservationDatabase);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for ObservationDatabase();
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 16);

    return v7;
  }

  return result;
}

uint64_t sub_100028F54(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100028F74, v1, 0);
}

uint64_t sub_100028F74()
{
  result = isUserAgent.getter();
  if (result)
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016AFD38);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    sub_100991400();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  else
  {
    v7 = *(v0[3] + 128);
    if (v7)
    {
      v8 = sub_1000329C8(v0[2], v7);
      v10 = v0[1];

      return v10(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002911C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000291EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ObservationDatabase()
{
  result = qword_1016CA890;
  if (!qword_1016CA890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100029280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000292E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000293B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000294F0(uid_t a1)
{
  memset(uu, 0, sizeof(uu));
  mbr_uid_to_uuid(a1, uu);
  return UUID.init(uuid:)();
}

unint64_t sub_100029580()
{
  result = qword_101699DF0;
  if (!qword_101699DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DF0);
  }

  return result;
}

uint64_t sub_1000295D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002963C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000296A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100029704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002978C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_100029850(a1, a2, v6, v7, v8);
}

uint64_t sub_100029850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v7 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v5[17] = v7;
  v8 = *(v7 - 8);
  v5[18] = v8;
  v9 = *(v8 + 64) + 15;
  v5[19] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016ABF18, &unk_1013BFDD0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v5[23] = v12;
  v13 = *(v12 - 8);
  v5[24] = v13;
  v14 = *(v13 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_1016ABF20, &qword_1013BFDE0);
  v5[29] = v15;
  v16 = *(v15 - 8);
  v5[30] = v16;
  v17 = *(v16 + 64) + 15;
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_100029A8C, a3, 0);
}

uint64_t sub_100029A8C()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 160);
  v3 = v2 + 64;
  v34 = *(v2 + 16);
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v37 = v2;

  v11 = 0;
  v35 = v7;
  v36 = v3;
  while (v6)
  {
LABEL_11:
    v16 = *(v0 + 168);
    v40 = *(v0 + 160);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v38 = v17;
    v19 = *(*(v37 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v6)))));
    v20 = type metadata accessor for TaskPriority();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v16, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v39 = v22 + 2;
    v22[3] = 0;
    v22[4] = v17;
    v22[5] = v18;
    v22[6] = v19;
    sub_1000D2A70(v16, v40, &qword_101698C00, &qword_10138B570);
    LODWORD(v17) = (*(v21 + 48))(v40, 1, v20);
    swift_retain_n();
    sub_100029784(v38, v18);
    v23 = *(v0 + 160);
    if (v17 == 1)
    {
      sub_10000B3A8(*(v0 + 160), &qword_101698C00, &qword_10138B570);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v21 + 8))(v23, v20);
    }

    if (*v39)
    {
      v24 = v22[3];
      v25 = *v39;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = dispatch thunk of Actor.unownedExecutor.getter();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = **(v0 + 104);
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_1013BFDF0;
    *(v30 + 24) = v22;

    if (v28 | v26)
    {
      v12 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v26;
      *(v0 + 40) = v28;
    }

    else
    {
      v12 = 0;
    }

    v6 &= v6 - 1;
    v13 = *(v0 + 184);
    v14 = *(v0 + 168);
    *(v0 + 72) = 1;
    *(v0 + 80) = v12;
    *(v0 + 88) = v29;
    swift_task_create();

    v8 = sub_10000B3A8(v14, &qword_101698C00, &qword_10138B570);
    v7 = v35;
    v3 = v36;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return _swift_task_switch(v8, v9, v10);
    }

    if (v15 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v15);
    ++v11;
    if (v6)
    {
      v11 = v15;
      goto LABEL_11;
    }
  }

  v31 = *(v0 + 104);

  v32 = sub_10001FDE4(0, v34, 0, _swiftEmptyArrayStorage);
  *(v0 + 256) = v32;
  *(v0 + 264) = *v31;
  *(v0 + 272) = sub_10001FE0C(v32);
  v8 = sub_100020040;
  v9 = 0;
  v10 = 0;

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100029E68()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10001E524(v0[4], v0[5]);
  v2 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100029EB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029EE8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[35];
    v6 = v2[30];
    v5 = v2[31];
    v7 = v2[29];

    (*(v6 + 8))(v5, v7);

    v8 = SharingCircleWildAdvertisementKey.init(key:);
  }

  else
  {
    v8 = sub_100020200;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10002A03C()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v28 = *(v0 + 144);
    v29 = *(v3 + 72);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *(v0 + 200);
      v6 = *(v0 + 208);
      v8 = *(v0 + 136);
      sub_1000D2A70(v4, v6, &unk_1016C1120, &qword_1013C49D0);
      sub_1000D2AD8(v6, v7, &unk_1016C1120, &qword_1013C49D0);
      v9 = (*(v28 + 48))(v7, 1, v8);
      v10 = *(v0 + 200);
      if (v9 == 1)
      {
        sub_10000B3A8(v10, &unk_1016C1120, &qword_1013C49D0);
      }

      else
      {
        sub_10087EE70(v10, *(v0 + 152), type metadata accessor for BeaconKeyManager.IndexInformation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10001FDE4(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_10001FDE4(v11 > 1, v12 + 1, 1, v5);
        }

        v13 = *(v0 + 152);
        v5[2] = v12 + 1;
        sub_10087EE70(v13, v5 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v12, type metadata accessor for BeaconKeyManager.IndexInformation);
      }

      v4 += v29;
      --v2;
    }

    while (v2);
    v14 = *(v0 + 280);
    v15 = *(v0 + 256);
  }

  else
  {
    v16 = *(v0 + 256);

    v5 = _swiftEmptyArrayStorage;
  }

  v17 = *(v0 + 248);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v25 = *(v0 + 152);
  v24 = *(v0 + 160);
  **(v0 + 96) = v5;

  v26 = *(v0 + 8);

  return v26();
}

unint64_t sub_10002A2B8()
{
  result = qword_101699E38;
  if (!qword_101699E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E38);
  }

  return result;
}

uint64_t sub_10002A30C()
{
  v1 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002A3DC()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v4 + v7 + 1) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = v0 + v8;
  v12 = type metadata accessor for SharedBeaconRecord(0);
  if (!(*(*(v12 - 1) + 48))(v0 + v8, 1, v12))
  {
    v30 = v8;
    v31 = v9;
    sub_100016590(*v11, *(v11 + 8));
    v13 = v12[5];
    v14 = type metadata accessor for UUID();
    v15 = *(v14 - 8);
    v16 = *(v15 + 8);
    v16(v11 + v13, v14);
    v29 = v16;
    v16(v11 + v12[6], v14);
    v17 = *(v11 + v12[7] + 16);

    v18 = *(v11 + v12[8] + 8);

    v19 = *(v11 + v12[9] + 8);

    v20 = *(v11 + v12[10] + 8);

    v21 = v12[18];
    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 8))(v11 + v21, v22);
    v23 = v12[19];
    v28 = *(v15 + 48);
    if (!v28(v11 + v23, 1, v14))
    {
      v16(v11 + v23, v14);
    }

    v24 = v11 + v12[20];
    v25 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v8 = v30;
    v9 = v31;
    if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
    {
      v26 = *(v25 + 20);
      if (!v28(v24 + v26, 1, v14))
      {
        v29(v24 + v26, v14);
      }
    }
  }

  return _swift_deallocObject(v0, v9 + v8 + 1, v3 | v7 | 7);
}

uint64_t sub_10002A730()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 184), *(v0 + 192));

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_10002A7B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002A884()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[6])
  {
    v3 = v0[7];
  }

  v4 = v0[10];
  if (v4 >> 60 != 15)
  {
    sub_100016590(v0[9], v4);
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10002A8EC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 80);
}

uint64_t sub_10002A96C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002A9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002ABDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002ACAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002ADE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AE4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AEB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AF1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AF84()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10002B094, v2, 0);
}

uint64_t sub_10002B094()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  sub_1000D2A70(v0[22], v1, &unk_1016C1120, &qword_1013C49D0);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[21];
  if (v4 == 1)
  {
    v6 = v0[3];
    sub_10000B3A8(v5, &unk_1016C1120, &qword_1013C49D0);
    if ((*(v6 + 31) & 0x20) != 0)
    {
      v12 = v0[22];
      v10 = &unk_1016C1120;
      v11 = &qword_1013C49D0;
      goto LABEL_9;
    }

    v7 = v0[5];
    sub_1000D2A70(v0[3] + *(v0[7] + 48), v7, &qword_1016AA430, &unk_101392650);
    v8 = type metadata accessor for ObservedAdvertisement.Location(0);
    if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
    {
      v9 = v0[5];
      sub_10000B3A8(v0[22], &unk_1016C1120, &qword_1013C49D0);
      v10 = &qword_1016AA430;
      v11 = &unk_101392650;
      v12 = v9;
LABEL_9:
      sub_10000B3A8(v12, v10, v11);
      v18 = v0[22];
      v17 = v0[23];
      v20 = v0[20];
      v19 = v0[21];
      v22 = v0[18];
      v21 = v0[19];
      v23 = v0[17];
      v24 = v0[13];
      v25 = v0[14];
      v26 = v0[12];
      v43 = v0[11];
      v44 = v0[10];
      v45 = v0[9];
      v46 = v0[8];
      v48 = v0[6];
      v50 = v0[5];

      v27 = v0[1];

      return v27();
    }

    v28 = v0[23];
    sub_10000B3A8(v0[5], &qword_1016AA430, &unk_101392650);
    v29 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    v30 = v0[23];
    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[3];
    v34 = *(v33 + 9);
    v35 = *(v33 + 16);
    v36 = *(v33 + 24);
    v51 = *(v33 + 32);
    v37 = *(v33 + 34);
    v49 = *(v33 + 35);
    v47 = *(v33 + 36);
    v38 = v32[11];
    v39 = type metadata accessor for Date();
    (*(*(v39 - 8) + 16))(v31 + v38, v33 + v38, v39);
    LOBYTE(v38) = *(v33 + v32[14]);
    sub_1000D2A70(v33 + v32[12], v31 + v32[12], &qword_1016AA430, &unk_101392650);
    sub_1000D2A70(v30, v31 + v32[13], &qword_101699DB0, &unk_101393100);
    *v31 = 0;
    *(v31 + 8) = 1;
    *(v31 + 9) = v34;
    *(v31 + 16) = v35;
    *(v31 + 24) = v36;
    *(v31 + 32) = v51;
    *(v31 + 34) = v37;
    *(v31 + 35) = v49;
    *(v31 + 36) = v47;
    *(v31 + v32[14]) = v38;
    sub_100029784(v35, v36);
    v40 = swift_task_alloc();
    v0[27] = v40;
    *v40 = v0;
    v40[1] = sub_10002DAD4;
    v41 = v0[8];
    v42 = v0[4];

    return sub_10002D6CC(v41);
  }

  else
  {
    sub_100018118(v5, v0[20], type metadata accessor for BeaconKeyManager.IndexInformation);
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_10002BC28;
    v14 = v0[20];
    v15 = v0[4];

    return sub_10002B558(v14);
  }
}

uint64_t sub_10002B558(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_10002B648;

  return daemon.getter();
}

uint64_t sub_10002B648(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_10002B824;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10002B824(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  v7 = v4[8];
  if (v1)
  {
    a1 = v4[3];

    v8 = sub_1008E298C;
  }

  else
  {

    v8 = sub_10002D640;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_10002B97C()
{
  v1 = *(v0[12] + 16);

  if (v1)
  {
    v2 = v0[10];

    v3 = v0[6];

    v4 = v0[1];

    return v4(1);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_10002BA68;
    v7 = v0[10];
    v8 = v0[2];

    return sub_100028F54(v8);
  }
}

uint64_t sub_10002BA68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_1008E2D9C;
  }

  else
  {
    v4[16] = a1;
    v8 = sub_10002BBA4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10002BBA4()
{
  v1 = v0[16];
  v2 = v0[10];

  v3 = *(v1 + 16);

  v4 = v0[6];

  v5 = v0[1];

  return v5(v3 != 0);
}

uint64_t sub_10002BC28(char a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 241) = a1;

  return _swift_task_switch(sub_100028228, v3, 0);
}

uint64_t sub_10002BD78()
{
  v4 = *v0;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0x7972616D6972702ELL;
}

uint64_t sub_10002BE00(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = isUserAgent.getter();
  if (result)
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016AFD38);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unexpected isUserAgent is true on non-macOS platform!", v3, 2u);
    }

    sub_100991400();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    return v3;
  }

  v15 = *(v1 + 128);
  if (v15)
  {
    v16 = getuid();
    sub_1000294F0(v16);
    v17 = sub_100020A14(a1, v9, v15);
    if (!v2)
    {
      v3 = v17;
    }

    (*(v6 + 8))(v9, v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C014(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v12 = *v1;
  *(v3 + 144) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 152) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10002C930;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10002C1F0()
{
  v1 = *(v0 + 186);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_10002963C(*(v0 + 64), v4, type metadata accessor for BeaconStatus);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v7 + v5;
  v9 = swift_allocObject();
  *(v0 + 168) = v9;
  *(v9 + 16) = v3;
  sub_100018118(v4, v9 + v7, type metadata accessor for BeaconStatus);
  v10 = v9 + v8;
  *v10 = v2;
  *(v10 + 2) = v1;
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_1008E5A64;

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_10002C434, v9, &type metadata for () + 8);
}

uint64_t sub_10002C388()
{
  v1 = *(type metadata accessor for BeaconStatus(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = v3 + *(v1 + 64);
  v5 = *v4;
  v6 = *(v4 + 1) | (*(v4 + 2) << 8);

  return sub_10002C438(v2, v3, v5);
}

uint64_t sub_10002C438(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(a1 + 128);
  (*(v12 + 16))(v15, a2, v11);
  v17 = type metadata accessor for BeaconStatus(0);
  v18 = *(a2 + *(v17 + 20));
  (*(v7 + 16))(v10, a2 + *(v17 + 24), v6);
  type metadata accessor for Transaction();
  v21 = v16;
  v22 = v15;
  v23 = v10;
  v24 = a2;
  v25 = a3;
  v26 = v18;
  static Transaction.named<A>(_:with:)();
  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10002C69C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v8(v4 + v1[6], v6);
  v9 = *(v4 + v1[7] + 16);

  v10 = *(v4 + v1[8] + 8);

  v11 = *(v4 + v1[9] + 8);

  v12 = *(v4 + v1[10] + 8);

  v13 = v1[18];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v1[19];
  v16 = *(v7 + 48);
  if (!v16(v4 + v15, 1, v6))
  {
    v8(v4 + v15, v6);
  }

  v17 = v4 + v1[20];
  v18 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 20);
    if (!v16(v17 + v19, 1, v6))
    {
      v8(v17 + v19, v6);
    }
  }

  v20 = (v23 + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v20 + 8);

  return _swift_deallocObject(v0, v20 + 16, v2 | 7);
}

uint64_t sub_10002C930(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 152);
  v7 = *v2;

  v8 = *(v4 + 144);
  v9 = *(v4 + 24);
  if (v1)
  {

    v10 = sub_10002D4DC;
  }

  else
  {

    *(v5 + 160) = a1;
    v10 = sub_10002CA98;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10002CA98()
{
  v17 = *(v0 + 160);
  v1 = *(v0 + 120);
  v15 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(*(v0 + 80) + 16);
  v8(v3, v1, v4);
  v16 = *(v1 + *(v2 + 24));
  v9 = *(v1 + *(v2 + 20));
  LOBYTE(v2) = (*(v7 + 24) & 0x2000000000000000) == 0;
  v8(v5, v3, v4);
  LOBYTE(v3) = *(v7 + 32);
  v10 = *(v15 + 44);
  v11 = v6[6];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 16))(v5 + v11, v7 + v10, v12);
  *(v5 + v6[5]) = v3;
  v13 = (v5 + v6[7]);
  *v13 = v9;
  v13[1] = v16;
  *(v5 + v6[8]) = v2;
  *(v5 + v6[9]) = 0;
  *(v0 + 184) = *(v7 + 9);
  *(v0 + 185) = *(v7 + 34);
  *(v0 + 186) = *(v7 + 35);

  return _swift_task_switch(sub_10002C1F0, v17, 0);
}

uint64_t sub_10002CC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v47 = a6;
  v48 = a7;
  v42 = a4;
  v43 = a5;
  v39 = a3;
  v54 = a2;
  v46 = a1;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v51 - 8);
  v8 = *(v53 + 64);
  __chkstk_darwin(v51);
  v49 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  v10 = *(v50 + 64);
  __chkstk_darwin(v52);
  v45 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BeaconStatus(0);
  v41 = *(v12 - 8);
  v40 = *(v41 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v14;
  v15 = type metadata accessor for Date();
  v36 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v37 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v18 = *(v35 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v35);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue);
  (*(v18 + 16))(v20, v39);
  (*(v16 + 16))(&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v15);
  sub_100022A54(v43, v14, type metadata accessor for BeaconStatus);
  v21 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v22 = (v19 + *(v16 + 80) + v21) & ~*(v16 + 80);
  v23 = (v17 + *(v41 + 80) + v22) & ~*(v41 + 80);
  v24 = v23 + v40;
  v25 = (v23 + v40 + 9) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v54;
  (*(v18 + 32))(v26 + v21, v20, v35);
  (*(v16 + 32))(v26 + v22, v37, v36);
  sub_10002911C(v38, v26 + v23, type metadata accessor for BeaconStatus);
  v27 = (v26 + v24);
  v28 = v48;
  *v27 = v47;
  v27[1] = v28;
  *(v26 + v25) = v46;
  aBlock[4] = sub_100020F88;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101646380;
  v29 = _Block_copy(aBlock);

  v30 = v45;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v31 = v49;
  v32 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v53 + 8))(v31, v32);
  (*(v50 + 8))(v30, v52);
}

uint64_t sub_10002D1E4()
{
  v21 = type metadata accessor for UUID();
  v1 = *(v21 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v20 = type metadata accessor for Date();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = (type metadata accessor for BeaconStatus(0) - 8);
  v10 = *(*v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v19 = v2 | v6 | v10;
  v18 = (*(*v9 + 64) + v11 + 9) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  v13 = *(v1 + 8);
  v13(v0 + v3, v21);
  v14 = *(v5 + 8);
  v14(v0 + v7, v20);
  v13(v0 + v11, v21);
  v14(v0 + v11 + v9[8], v20);
  v15 = *(v0 + v11 + v9[11]);

  v16 = *(v0 + v18);

  return _swift_deallocObject(v0, v18 + 8, v19 | 7);
}

uint64_t sub_10002D404()
{
  v1 = v0[20];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  (*(v4 + 8))(v3, v5);
  sub_10001F210(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[12];
  v10 = v0[7];
  v9 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002D4DC()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[15];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v6, 2u);
  }

  sub_10001F210(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];
  v11 = v0[7];
  v10 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002D640()
{
  v1 = v0[10];
  v2 = v0[11];
  v0[12] = sub_10002BE00(v0[2]);
  v0[13] = v2;
  v3 = v0[3];
  if (v2)
  {
    v4 = sub_1008E2AAC;
  }

  else
  {
    v4 = sub_10002B97C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10002D6CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for BeaconStatus(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10002D890, v1, 0);
}

uint64_t sub_10002D890()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for ObservedAdvertisement(0);
  v0[16] = v5;
  sub_1000D2A70(v4 + *(v5 + 52), v3, &qword_101699DB0, &unk_101393100);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[12], &qword_101699DB0, &unk_101393100);
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B5D8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring status update for advertisement without beaconInformation.", v9, 2u);
    }

    v10 = v0[15];
    v11 = v0[11];
    v12 = v0[12];
    v14 = v0[7];
    v13 = v0[8];

    v15 = v0[1];

    return v15();
  }

  else
  {
    sub_100018118(v0[12], v0[15], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v17 = async function pointer to daemon.getter[1];
    v18 = swift_task_alloc();
    v0[17] = v18;
    *v18 = v0;
    v18[1] = sub_10002C014;

    return daemon.getter();
  }
}

uint64_t sub_10002DAD4()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[28] = v4;
  *v4 = v3;
  v4[1] = sub_10001DB18;
  v5 = v1[8];
  v6 = v1[4];

  return sub_10002DC2C(v5);
}

uint64_t sub_10002DC2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10002DDC8, v1, 0);
}

uint64_t sub_10002DDC8()
{
  v1 = v0[15];
  v2 = v0[12];
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_10002DE70;

  return daemon.getter();
}

uint64_t sub_10002DE70(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_10002E04C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10002E04C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  v7 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {
    v8 = v4[3];

    return _swift_task_switch(sub_1008E308C, v8, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[21] = v9;
    *v9 = v7;
    v9[1] = sub_10001BC08;
    v10 = v4[2];

    return sub_10002E1FC(v10);
  }
}

uint64_t sub_10002E1FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for ObservedAdvertisement(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016C7748, &qword_101404C28);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016B3DF8, &qword_101404C30);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001EED8, v1, 0);
}

BOOL sub_10002E35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v50[-v11];
  v13 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v50[-v15];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v53 = v5;
  v54 = v8;
  v52 = v4;
  v23 = v17[6];
  v25 = *(a1 + v23);
  v24 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *v26;
  v28 = v26[1];
  if (v24 >> 60 == 15)
  {
    if (v28 >> 60 != 15)
    {
      goto LABEL_16;
    }

    sub_10002E98C(v25, v24);
    sub_10002E98C(v27, v28);
    sub_100006654(v25, v24);
  }

  else
  {
    if (v28 >> 60 == 15)
    {
      goto LABEL_16;
    }

    sub_10002E98C(v25, v24);
    sub_10002E98C(v27, v28);
    sub_10002E98C(v25, v24);
    sub_10002E98C(v27, v28);
    v51 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v25, v24, v27, v28);
    sub_100006654(v27, v28);
    sub_100006654(v25, v24);
    sub_100006654(v27, v28);
    sub_100006654(v25, v24);
    if ((v51 & 1) == 0)
    {
      return 0;
    }
  }

  v29 = v17[7];
  v25 = *(a1 + v29);
  v24 = *(a1 + v29 + 8);
  v30 = (a2 + v29);
  v27 = *v30;
  v28 = v30[1];
  if (v24 >> 60 == 15)
  {
    if (v28 >> 60 == 15)
    {
      sub_10002E98C(v25, v24);
      sub_10002E98C(v27, v28);
      sub_100006654(v25, v24);
      goto LABEL_19;
    }

LABEL_16:
    sub_10002E98C(v25, v24);
    sub_10002E98C(v27, v28);
    sub_100006654(v25, v24);
    sub_100006654(v27, v28);
    return 0;
  }

  if (v28 >> 60 == 15)
  {
    goto LABEL_16;
  }

  sub_10002E98C(v25, v24);
  sub_10002E98C(v27, v28);
  sub_10002E98C(v25, v24);
  sub_10002E98C(v27, v28);
  v51 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v25, v24, v27, v28);
  sub_100006654(v27, v28);
  sub_100006654(v25, v24);
  sub_100006654(v27, v28);
  sub_100006654(v25, v24);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v32 = v17[8];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 16);
  v35 = (a2 + v32);
  v36 = v35[2];
  if (v34)
  {
    v37 = v54;
    if (!v36 || *v35 != *v33 || (v33[1] != v35[1] || v34 != v36) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v37 = v54;
    if (v36)
    {
      return 0;
    }
  }

  v38 = v17[9];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v43 = v17[10];
  v44 = *(v13 + 48);
  sub_1000D2A70(a1 + v43, v16, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(a2 + v43, &v16[v44], &unk_101696900, &unk_10138B1E0);
  v45 = v52;
  v46 = *(v53 + 48);
  if (v46(v16, 1, v52) != 1)
  {
    sub_1000D2A70(v16, v12, &unk_101696900, &unk_10138B1E0);
    if (v46(&v16[v44], 1, v45) == 1)
    {
      (*(v53 + 8))(v12, v45);
      goto LABEL_39;
    }

    v47 = v53;
    (*(v53 + 32))(v37, &v16[v44], v45);
    sub_100003FAC(&qword_101698290, &type metadata accessor for Date);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *(v47 + 8);
    v49(v37, v45);
    v49(v12, v45);
    sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
    return (v48 & 1) != 0;
  }

  if (v46(&v16[v44], 1, v45) != 1)
  {
LABEL_39:
    sub_10000B3A8(v16, &unk_1016B1660, &unk_10138CE10);
    return 0;
  }

  sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
  return 1;
}

uint64_t sub_10002E98C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100017D5C(a1, a2);
  }

  return a1;
}

void *sub_10002E9A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_10002E9B8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10002EA2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10002EA98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_10002F330(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_10002EA2C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_100016590(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10002EC50(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v26 = a7;
  v31 = a6;
  v33 = a1;
  v34 = a2;
  v10 = a4(0);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v30 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v29 = *(a3 + 16);
  if (v29)
  {
    v17 = 0;
    v18 = &_swiftEmptyArrayStorage;
    v27 = a5;
    v28 = a3;
    while (v17 < *(a3 + 16))
    {
      v19 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v20 = *(v32 + 72);
      sub_100150B0C(a3 + v19 + v20 * v17, v16, a5);
      v21 = v33(v16);
      if (v7)
      {
        sub_100150BA4(v16, a5);

        goto LABEL_15;
      }

      if (v21)
      {
        sub_100150504(v16, v30, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26(0, v18[2] + 1, 1);
          v18 = v35;
        }

        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          v26(v23 > 1, v24 + 1, 1);
          v18 = v35;
        }

        v18[2] = v24 + 1;
        result = sub_100150504(v30, v18 + v19 + v24 * v20, v31);
        a5 = v27;
        a3 = v28;
      }

      else
      {
        result = sub_100150BA4(v16, a5);
      }

      if (v29 == ++v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v18;
  }

  return result;
}

unint64_t sub_10002EE9C()
{
  result = qword_10169C998;
  if (!qword_10169C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C998);
  }

  return result;
}

uint64_t sub_10002EEF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v12 = *v1;
  *(v3 + 168) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 176) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10002F0CC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10002F0CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *v2;
  *(*v2 + 184) = a1;

  v6 = *(v3 + 168);
  v7 = *(v3 + 32);
  if (v1)
  {

    v8 = sub_1008E5900;
  }

  else
  {

    v8 = sub_10002F230;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10002F230()
{
  v18 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  sub_100017D5C(v1, v2);
  v6 = static MACAddress.length.getter();
  sub_10002EA98(v6, v1, v2, &v17);
  MACAddress.init(data:type:)();
  v7 = (*(v4 + 48))(v5, 1, v3);
  if (v7 == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[23];
    v11 = v0[17];
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    v15 = *(v13 + 32);
    v0[24] = v15;
    v0[25] = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v11, v14, v12);
    v7 = sub_1008E4E20;
    v8 = v10;
    v9 = 0;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10002F330(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void *sub_10002F3E4@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E723E4(v4, v5, a1);
}

void *sub_10002F458(uint64_t a1)
{
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  v11 = MACAddress.description.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v14(v9, v2);
  if (v11)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v16 = sub_10002F740();
    __chkstk_darwin(v16);
    v18[-2] = a1;
    return sub_10002EBE8(sub_100B25494, &v18[-4], v17);
  }
}

void *sub_10002F740()
{
  v0 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v43 - v2;
  v4 = type metadata accessor for DirectorySequence();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for URL();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v48);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v43 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v19, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v15 + 8);
  v22(v19, v14);
  v22(v21, v14);
  if (v50 == v49)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v23 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v24 = *(v47 + 21);
    if (qword_101694550 != -1)
    {
      swift_once();
    }

    v25 = v48;
    v26 = sub_1000076D4(v48, qword_10177A8D0);
    (*(v8 + 16))(v46, v26, v25);
    v49 = _swiftEmptyArrayStorage;
    v50 = _swiftEmptyArrayStorage;
    v27 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v47 = v7;
    DirectorySequence.next()();
    v28 = v25;
    v43 = v8;
    v29 = *(v8 + 48);
    if (v29(v3, 1, v25) != 1)
    {
      v30 = v24;
      v31 = *(v43 + 32);
      v32 = (v43 + 8);
      do
      {
        v31(v12, v3, v28);
        v33 = objc_autoreleasePoolPush();
        sub_100601DCC(v12, v30, &v50, &v49);
        objc_autoreleasePoolPop(v33);
        (*v32)(v12, v48);
        DirectorySequence.next()();
        v28 = v48;
      }

      while (v29(v3, 1, v48) != 1);
    }

    (*(v44 + 8))(v47, v45);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v34 = v28;
    v35 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10138BBE0;
    v23 = v50;
    v37 = v50[2];
    *(v36 + 56) = &type metadata for Int;
    *(v36 + 64) = &protocol witness table for Int;
    *(v36 + 32) = v37;
    sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

    v38 = v46;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = sub_100008C00();
    *(v36 + 72) = v39;
    *(v36 + 80) = v41;
    os_log(_:dso:log:_:_:)();

    (*(v43 + 8))(v38, v34);
  }

  return v23;
}

uint64_t sub_10002FDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002FE3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10002FE88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002FEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002FF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002FFA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100030008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_100030068()
{
  v0 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v76 = v65 - v2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v74 = v65 - v5;
  v77 = sub_1000BC4D4(&qword_1016B54E0, &qword_1013D6938);
  v75 = *(v77 - 8);
  v6 = *(v75 + 64);
  __chkstk_darwin(v77);
  v73 = v65 - v7;
  v8 = type metadata accessor for URL();
  v72 = *(v8 - 8);
  v9 = *(v72 + 64);
  v10 = __chkstk_darwin(v8);
  v71 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v65 - v13;
  __chkstk_darwin(v12);
  v16 = v65 - v15;
  v17 = sub_1000BC4D4(&qword_1016B54E8, &unk_1013D6940);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (v65 - v19);
  v21 = type metadata accessor for SystemInfo.DeviceLockState();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v65 - v27;
  v29._object = 0x800000010136CC00;
  v29._countAndFlagsBits = 0xD000000000000013;
  prohibitAsyncContext(functionName:)(v29);
  static SystemInfo.lockState.getter();
  (*(v22 + 104))(v26, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v21);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v30 = *(v22 + 8);
  v30(v26, v21);
  v30(v28, v21);
  if (v80 == v79)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177BA08);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "sharedBeaconRecords call failed because in device is in beforeFirstUnlock state", v34, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v36 = v78;
    v37 = *(v78 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    sub_1000BC4D4(&qword_1016B5570, &unk_1013D6A50);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v35 = v80;
    if (!v80)
    {
      v66 = v20;
      v38 = v16;
      v69 = 0;
      v70 = v37;
      v39 = *(v36 + 168);
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v40 = sub_1000076D4(v8, qword_10177CD50);
      v41 = v72;
      v42 = *(v72 + 16);
      v68 = v38;
      v42(v38, v40, v8);
      v42(v14, v38, v8);
      v43 = *(v77 + 40);
      v67 = v43;
      v44 = v77;
      v65[0] = type metadata accessor for DirectorySequence();
      v45 = *(v65[0] - 8);
      v46 = *(v45 + 56);
      v47 = v14;
      v65[1] = v45 + 56;
      v48 = v73;
      v46(&v73[v43], 1, 1, v65[0]);
      v42(v48, v47, v8);
      *(v48 + *(v44 + 36)) = v39;
      v42(v71, v47, v8);

      v49 = v74;
      DirectorySequence.init(at:includingPropertiesForKeys:options:)();
      v50 = *(v41 + 8);
      v50(v47, v8);
      v50(v68, v8);
      v46(v49, 0, 1, v65[0]);
      sub_10002311C(v49, v48 + v67, &qword_1016A5970, &unk_1013B3470);
      v51 = *(v75 + 56);
      v52 = v66;
      v53 = v77;
      v51(v66, 1, 1, v77);
      sub_10000B3A8(v52, &qword_1016B54F0, &qword_1013D7430);
      sub_1000D2AD8(v48, v52, &qword_1016B54E0, &qword_1013D6938);
      v51(v52, 0, 1, v53);
      v54 = sub_100B33054(v52);
      v55 = sub_10000B3A8(v52, &qword_1016B54E8, &unk_1013D6940);
      __chkstk_darwin(v55);
      v56 = v78;
      v65[-2] = v78;
      v65[-1] = v54;
      sub_1000BC4D4(&qword_101697720, &unk_101392640);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v35 = v80;
      v57 = sub_101129AF4(v54);

      v59 = sub_101129AF4(v58);

      if (*(v59 + 16) <= *(v57 + 16) >> 3)
      {
        v80 = v57;
        sub_10087D034(v59);

        v60 = v80;
      }

      else
      {
        v60 = sub_10060DAA8(v59, v57);
      }

      v61 = type metadata accessor for TaskPriority();
      v62 = v76;
      (*(*(v61 - 8) + 56))(v76, 1, 1, v61);
      v63 = swift_allocObject();
      v63[2] = 0;
      v63[3] = 0;
      v63[4] = v56;
      v63[5] = v60;

      sub_10025EDD4(0, 0, v62, &unk_1013D6A68, v63);
    }
  }

  return v35;
}

uint64_t sub_100030944()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_1000309B4(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_100025B1C(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for SharedBeaconRecord);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_100025B1C((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_100019420(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for SharedBeaconRecord);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for SharedBeaconRecord);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_100030BB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100030C0C(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_100030E34;

  return daemon.getter();
}

uint64_t sub_100030CC4()
{
  v1 = *(*(v0 + 80) + 128);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100007DC0;

  return sub_100031364();
}

uint64_t type metadata accessor for CloudStorageDatabase()
{
  result = qword_1016A8EF0;
  if (!qword_1016A8EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100030DA4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v0[12] = Database.readConnection.getter();

  return _swift_task_switch(sub_100007BF8, 0, 0);
}

uint64_t sub_100030E34(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100031010;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100031010(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = a1;

  v7 = *(v4 + 64);
  if (v1)
  {

    v8 = sub_100AA7ED8;
    v9 = 0;
  }

  else
  {

    v8 = sub_100030CC4;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100031168()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100031384, v1, 0);
}

uint64_t sub_10003118C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000311D4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = type metadata accessor for DatabaseState();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_10003129C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = result;
    v9 = a2 + 32;
    while (1)
    {
      sub_10001F280(v9, v11);
      v10 = v8(v11);
      if (v4)
      {
        return sub_100007BAC(v11);
      }

      if (v10)
      {
        return a3(v11, a4);
      }

      result = sub_100007BAC(v11);
      v9 += 40;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100031384()
{
  v1 = v0[8];
  v0[9] = type metadata accessor for CloudStorageDatabase();
  v0[10] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  Database.startup()();
  v0[11] = v2;
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[8];

    return _swift_task_switch(sub_100030DA4, v5, 0);
  }
}

uint64_t sub_100031488()
{
  v1 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_connectionPair;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1000314FC(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  sub_1000035D0(a1, v7);
  (*(*(*(v8 + 8) + 8) + 32))(v7);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t sub_100031620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000316AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 16) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for Date();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[18];
    goto LABEL_3;
  }

  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[19];
    goto LABEL_3;
  }

  v15 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[20];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100031894(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for Date();
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[18];
      goto LABEL_3;
    }

    v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[19];
      goto LABEL_3;
    }

    v15 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[20];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100031A6C()
{
  v2 = *(type metadata accessor for BeaconStatus(0) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100031B48(v4, v0 + 24, v0 + v3);
}

uint64_t sub_100031B48(char a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  if (a1)
  {
    v3[4] = v6;
    *v6 = v3;
    v7 = sub_100AC8094;
  }

  else
  {
    v3[10] = v6;
    *v6 = v3;
    v7 = sub_100031C04;
  }

  v6[1] = v7;

  return daemon.getter();
}

uint64_t sub_100031C04(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BatteryLevelService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&qword_1016A24B8, type metadata accessor for BatteryLevelService);
  *v6 = v12;
  v6[1] = sub_100031E04;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100031E04(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *v2;
  *(*v2 + 104) = a1;

  v6 = *(v3 + 88);
  if (v1)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_100031F7C, 0, 0);
  }
}

uint64_t sub_100031F7C()
{
  v1 = v0[3];
  v2 = 0x5040201u >> ((*(v1 + *(type metadata accessor for BeaconStatus(0) + 20)) >> 3) & 0x18);
  v3 = v0[13];

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100036624;
  v5 = v0[13];
  v6 = v0[2];

  return sub_100032054(v6, v2);
}

uint64_t sub_100032054(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  return _swift_task_switch(sub_100032078, v2, 0);
}

uint64_t sub_100032078()
{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if ((*(v3 + 112))(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 80);
    v7 = sub_101041A14(v4, v6);
    *(v0 + 48) = v7;
    v9 = sub_1000394F4(&qword_1016C3EC8, v8, type metadata accessor for BatteryLevelService);
    v10 = swift_task_alloc();
    *(v0 + 56) = v10;
    *(v10 + 16) = v7;
    *(v10 + 24) = v6;
    *(v10 + 32) = v5;
    *(v10 + 40) = v4;
    v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v12 = swift_task_alloc();
    *(v0 + 64) = v12;
    *v12 = v0;
    v12[1] = sub_10103E7E4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v5, v9, 0xD000000000000036, 0x8000000101378690, sub_101042218, v10, &type metadata for () + 8);
  }

  else
  {
    type metadata accessor for UpdateBatteryLevelError(0);
    *(v0 + 24) = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = *(v0 + 16);
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1000322C8()
{
  v1 = type metadata accessor for StableIdentifier();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v8 = *(type metadata accessor for OwnedBeaconRecord() + 24);
  sub_10003263C(v0 + v8, v7, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100032704(v7, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload == 1)
  {
    return 1;
  }

  sub_10003263C(v0 + v8, v5, type metadata accessor for StableIdentifier);
  v11 = swift_getEnumCaseMultiPayload();
  if (v11 == 2)
  {
    v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v17 = *&v5[v16[12] + 8];

    v18 = *&v5[v16[16] + 8];

    v19 = *&v5[v16[20] + 8];

    v15 = v16[28];
    goto LABEL_7;
  }

  if (v11 == 3)
  {
    v12 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v13 = *&v5[v12[12] + 8];

    v14 = *&v5[v12[16] + 8];

    v15 = v12[20];
LABEL_7:
    v20 = *&v5[v15 + 8];

    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 8))(v5, v21);
    return 1;
  }

  sub_100032704(v5, type metadata accessor for StableIdentifier);
  return 0;
}

uint64_t sub_100032504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003256C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000325D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003263C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000326A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000327C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100032898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016B1490, &unk_1013C5310);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v13, &unk_101695C20, &unk_101386D90);
      v5 = v13;
      v6 = v14;
      result = sub_100A02D40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001E6224(&v15, (v3[7] + 32 * result));
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

size_t sub_1000329C8(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v49 = type metadata accessor for JoinType();
  v45 = *(v49 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin(v49);
  v47 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Table();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  v7 = __chkstk_darwin(v5);
  v50 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = v39 - v9;
  v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v39 - v15;
  v48 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v61 = *(v48 - 8);
  v17 = *(v61 + 64);
  v18 = __chkstk_darwin(v48);
  v46 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v39 - v20;
  v22 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v53 = a2;
  v55 = (a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000076D4(v10, qword_10177C788);
  v39[0] = type metadata accessor for UUID();
  v39[1] = v22;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v56 = v21;
  v23 = *(v44 + 8);
  v40 = v23;
  v41 = v10;
  v23(v14, v10);
  v23(v16, v10);
  v24 = v45;
  v25 = v47;
  v26 = v49;
  (*(v45 + 104))(v47, enum case for JoinType.leftOuter(_:), v49);
  v59 = v5;
  v60 = &protocol witness table for Table;
  v27 = sub_1000280DC(v58);
  v28 = v57;
  v43 = *(v57 + 16);
  v44 = v57 + 16;
  v43(v27, v55, v5);
  v29 = v50;
  QueryType.join(_:_:on:)();
  (*(v24 + 8))(v25, v26);
  sub_100007BAC(v58);
  QueryType.subscript.getter();
  v30 = v46;
  == infix<A>(_:_:)();
  v40(v16, v41);
  v31 = v52;
  v32 = v29;
  QueryType.filter(_:)();
  v33 = *(v61 + 8);
  v34 = v48;
  v61 += 8;
  v55 = v33;
  v33(v30, v48);
  v35 = *(v28 + 8);
  v57 = v28 + 8;
  v35(v29, v5);
  v59 = v5;
  v60 = &protocol witness table for Table;
  v36 = sub_1000280DC(v58);
  v43(v36, v31, v5);
  v37 = v54;
  sub_10001E52C(v58, v53);
  if (v37)
  {
    v35(v31, v5);
    v55(v56, v34);
    sub_100007BAC(v58);
  }

  else
  {
    sub_100007BAC(v58);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    v32 = sub_100033E60();

    v35(v31, v5);
    v55(v56, v34);
  }

  return v32;
}

size_t sub_10003301C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016AFEB8, &qword_1013CC5A0, type metadata accessor for KeyGenerationBeaconInfo);
  *v3 = result;
  return result;
}

size_t sub_100033060(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000BC4D4(a5, a6);
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

unint64_t sub_10003323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  Error = type metadata accessor for QueryError();
  v68 = *(Error - 8);
  v69 = Error;
  v6 = *(v68 + 64);
  __chkstk_darwin(Error);
  v67 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v66 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v61 - v19;
  v21 = type metadata accessor for UUID();
  v79 = *(v21 - 8);
  v22 = v79[8];
  v23 = __chkstk_darwin(v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v74 = &v61 - v26;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v70 = v25;
  sub_1000076D4(v8, qword_10177C818);
  v72 = type metadata accessor for Table();
  v73 = a1;
  QueryType.subscript.getter();
  v27 = v71;
  Row.get<A>(_:)();
  v71 = v21;
  v65 = v9;
  if (v27)
  {

    v28 = *(v9 + 8);
    v28(v14, v8);
    v29 = v79;
    v63 = v79[7];
    v63(v20, 1, 1, v21);
    v30 = a2;
    Row.subscript.getter();
    if ((v29[6])(v20, 1, v21) != 1)
    {
      sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v30 = a2;
    v28 = *(v9 + 8);
    v28(v14, v8);
    v31 = v79;
    v63 = v79[7];
    v63(v20, 0, 1, v21);
    (v31[4])(v74, v20, v21);
  }

  v32 = v66;
  v33 = v64;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v8, qword_10177C788);
  v34 = v71;
  QueryType.subscript.getter();
  Row.get<A>(_:)();
  v28(v33, v8);
  v35 = v79;
  v63(v32, 0, 1, v34);
  (v35[4])(v70, v32, v34);
  v36 = v30;
  if (qword_1016952E0 != -1)
  {
    swift_once();
  }

  v37 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v37, qword_10177C848);
  Row.get<A>(_:)();
  v38 = sub_10049BD68(v77, v78);
  v40 = v39;
  v68 = v38;
  if (qword_1016952C0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v37, qword_10177C7E8);
  Row.get<A>(_:)();
  sub_1004A4714(v75, v76, &v77);
  v56 = v78;
  v67 = v77;
  if (qword_1016952E8 != -1)
  {
    swift_once();
  }

  v57 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v57, qword_10177C860);
  Row.get<A>(_:)();
  if (v78 >> 60 == 15)
  {
    v58 = v40;
    v59 = v56;
    v69 = 0;
    v60 = 0xF000000000000000;
  }

  else
  {
    sub_1004A4714(v77, v78, &v77);
    v58 = v40;
    v59 = v56;
    v60 = v78;
    v69 = v77;
  }

  v41 = v79[2];
  v42 = v62;
  v43 = v71;
  v41(v62, v74, v71);
  v44 = type metadata accessor for BeaconIdentifier();
  v41(v42 + *(v44 + 20), v70, v43);
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v45 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v45, qword_10177C830);
  v46 = type metadata accessor for KeyGenerationBeaconInfo();
  v47 = v46[5];
  type metadata accessor for Date();
  Row.subscript.getter();
  v48 = (v42 + v46[6]);
  v49 = v67;
  *v48 = v68;
  v48[1] = v58;
  v48[2] = v49;
  v48[3] = v59;
  v48[4] = v69;
  v48[5] = v60;
  if (qword_1016952F0 != -1)
  {
    swift_once();
  }

  v50 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v50, qword_10177C878);
  sub_100029580();
  Row.subscript.getter();
  v51 = type metadata accessor for Row();
  (*(*(v51 - 8) + 8))(v36, v51);
  (*(*(v72 - 8) + 8))(v73);
  v52 = v79[1];
  v53 = v71;
  v52(v70, v71);
  v52(v74, v53);
  result = sub_100033DEC(v77);
  if (result == 4)
  {
    v55 = 0;
  }

  else
  {
    v55 = result;
  }

  *(v42 + v46[7]) = v55;
  return result;
}

unint64_t sub_100033DEC(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_100033DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyGenerationBeaconInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_100033E60()
{
  v0 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for KeyGenerationBeaconInfo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 80);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v10 = *(v5 + 48);
  v37 = v5 + 48;
  v39 = v10;
  v11 = _swiftEmptyArrayStorage;
  if (v10(v3, 1, v4) != 1)
  {
    v12 = 0;
    v35 = v5;
    v36 = v9;
    v38 = (v9 + 32) & ~v9;
    v18 = _swiftEmptyArrayStorage + v38;
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      result = sub_100029420(v3, v8, type metadata accessor for KeyGenerationBeaconInfo);
      if (v12)
      {
        v11 = v19;
        v16 = __OFSUB__(v12--, 1);
        if (v16)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v20 = v19[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_1000BC4D4(&qword_1016AFEB8, &qword_1013CC5A0);
        v23 = *(v5 + 72);
        v24 = v38;
        v11 = swift_allocObject();
        result = j__malloc_size(v11);
        if (!v23)
        {
          goto LABEL_34;
        }

        v25 = result - v24;
        if (result - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_35;
        }

        v27 = v4;
        v28 = v25 / v23;
        v11[2] = v22;
        v11[3] = 2 * (v25 / v23);
        v29 = v11 + v24;
        v30 = v19[3] >> 1;
        v31 = v30 * v23;
        if (v19[2])
        {
          if (v11 < v19 || v29 >= v19 + v38 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v18 = &v29[v31];
        v33 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

        v4 = v27;
        v5 = v35;
        v16 = __OFSUB__(v33, 1);
        v12 = v33 - 1;
        if (v16)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_100029420(v8, v18, type metadata accessor for KeyGenerationBeaconInfo);
      v18 += *(v5 + 72);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v19 = v11;
      if (v39(v3, 1, v4) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v12 = 0;
LABEL_3:
  result = sub_10000B3A8(v3, &qword_10169E368, &qword_1013D6690);
  v14 = v11[3];
  if (v14 >= 2)
  {
    v15 = v14 >> 1;
    v16 = __OFSUB__(v15, v12);
    v17 = v15 - v12;
    if (v16)
    {
      goto LABEL_36;
    }

    v11[2] = v17;
  }

  return v11;
}

uint64_t sub_1000341A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100034210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BeaconIdentifier();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10003432C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BeaconIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100034434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100034494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000344F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100034554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000345B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003461C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100034684(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap))
  {
    v10 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);
LABEL_6:
    *a2 = v10;

    return;
  }

  v11 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v9 = v11;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    v5 = objc_autoreleasePoolPush();
    sub_1007AA89C(a1, &v14);
    if (!v2)
    {
      objc_autoreleasePoolPop(v5);
      v10 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  objc_autoreleasePoolPop(v5);
  __break(1u);
}

uint64_t sub_100034838(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = v47 - v7;
  v8 = type metadata accessor for BeaconObservation();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v53 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0;
  v55 = 0;
  v12 = 0;
  v47[0] = *(v13 + 80);
  v56 = _swiftEmptyArrayStorage;
  v49 = (v47[0] + 32) & ~v47[0];
  v50 = _swiftEmptyArrayStorage + v49;
  v14 = (v13 + 56);
  v47[1] = v13 + 48;
  v48 = v13;
  v54 = result;
LABEL_4:
  v17 = *(a1 + 16);
  if (v12 != v17)
  {
    if (v12 < v17)
    {
      while (1)
      {
        v18 = *(a1 + 32 + 8 * v12);

        if (v18)
        {
          break;
        }

LABEL_9:
        ++v12;
        v19 = *(a1 + 16);
        if (v12 == v19)
        {
          goto LABEL_38;
        }

        if (v12 >= v19)
        {
          goto LABEL_43;
        }
      }

      v15 = *(v18 + 16);
      if (!v15)
      {
        (*v14)(v6, 1, 1, v8);
        result = sub_10000B3A8(v6, &qword_1016A42E0, &qword_1013B0010);
        goto LABEL_9;
      }

      v16 = 0;
      ++v12;
      while (1)
      {
        if (v16 >= v15)
        {
          goto LABEL_44;
        }

        v20 = v48;
        v21 = *(v48 + 72);
        v57 = v16;
        v52 = v21;
        sub_100034F3C(v18 + v49 + v21 * v16, v6, type metadata accessor for BeaconObservation);
        (*(v20 + 56))(v6, 0, 1, v54);
        v22 = v51;
        sub_1000D2AD8(v6, v51, &qword_1016A42E0, &qword_1013B0010);
        v23 = *(v20 + 48);
        v8 = v54;
        if (v23(v22, 1, v54) == 1)
        {
          goto LABEL_39;
        }

        result = sub_100029420(v22, v53, type metadata accessor for BeaconObservation);
        v24 = v56;
        if (!v55)
        {
          break;
        }

        v25 = v50;
        v26 = v55 - 1;
        if (__OFSUB__(v55, 1))
        {
          goto LABEL_45;
        }

LABEL_37:
        v55 = v26;
        ++v57;
        result = sub_100029420(v53, v25, type metadata accessor for BeaconObservation);
        v50 = (v25 + v52);
        v56 = v24;
        v15 = *(v18 + 16);
        v16 = v57;
        if (v57 == v15)
        {
          (*v14)(v6, 1, 1, v8);
          result = sub_10000B3A8(v6, &qword_1016A42E0, &qword_1013B0010);
          goto LABEL_4;
        }
      }

      v27 = v56[3];
      if (((v27 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
      v30 = v49;
      v24 = swift_allocObject();
      result = j__malloc_size(v24);
      v31 = v52;
      if (!v52)
      {
        goto LABEL_48;
      }

      v32 = result - v30;
      if (result - v30 == 0x8000000000000000 && v52 == -1)
      {
        goto LABEL_49;
      }

      v34 = v30;
      v35 = v32 / v52;
      v24[2] = v29;
      v24[3] = 2 * (v32 / v31);
      v36 = v24 + v34;
      v37 = v56;
      v38 = v56[3] >> 1;
      v39 = v38 * v31;
      if (!v56[2])
      {
LABEL_36:
        v25 = &v36[v39];
        v40 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v38;

        v41 = __OFSUB__(v40, 1);
        v26 = v40 - 1;
        if (v41)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      if (v24 < v56 || v36 >= v56 + v34 + v39)
      {
        v55 = v56[3] >> 1;
        v50 = v39;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v24 == v56)
        {
LABEL_35:
          v37[2] = 0;
          goto LABEL_36;
        }

        v55 = v56[3] >> 1;
        v50 = v39;
        swift_arrayInitWithTakeBackToFront();
      }

      v39 = v50;
      v38 = v55;
      v37 = v56;
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_38:
  v22 = v51;
  (*v14)(v51, 1, 1, v8);
LABEL_39:
  v43 = v55;
  v42 = v56;

  result = sub_10000B3A8(v22, &qword_1016A42E0, &qword_1013B0010);
  v44 = v42[3];
  if (v44 < 2)
  {
    return v42;
  }

  v45 = v44 >> 1;
  v41 = __OFSUB__(v45, v43);
  v46 = v45 - v43;
  if (!v41)
  {
    v42[2] = v46;
    return v42;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for BeaconObservation()
{
  result = qword_1016AE958;
  if (!qword_1016AE958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100034D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}
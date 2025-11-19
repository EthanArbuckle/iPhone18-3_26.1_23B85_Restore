uint64_t sub_100034E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003500C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for DefaultConfigurationLayer()
{
  result = qword_1016ADEE8;
  if (!qword_1016ADEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000350C0()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t sub_1000350CC()
{
  v1 = type metadata accessor for ShareRecord();
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[6], v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v3 + v8, v9);
  v12 = v1[8];
  if (!(*(v10 + 48))(v0 + v3 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = (v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v4 + v1[9] + 16);

  v16 = *(v4 + v1[10] + 8);

  v17 = *(v0 + v13);

  v18 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v2 | 7);
}

uint64_t sub_1000352C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100035310@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_10002F330(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_10002EA2C(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = Data._Representation.subscript.getter();
    v14 = v13;
    result = sub_100016590(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10003545C(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_8:
      v8 = *(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_mapHandle);
      v7 = sp_key_index_map_contains_key_prefix();
      return ((v7 & 1) == 0) << 32;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v7 = sub_10003563C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, v2);

  return ((v7 & 1) == 0) << 32;
}

unint64_t sub_1000355E4(uint64_t a1, unint64_t a2)
{

  return sub_10003545C(a1, a2);
}

uint64_t sub_10003563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      v8 = *(a4 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_mapHandle);
      return sp_key_index_map_contains_key_prefix();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000356D8(uint64_t a1, unint64_t a2)
{

  return sub_1000355E4(a1, a2);
}

void *sub_100035730(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v7 = objc_autoreleasePoolPush();
  v8 = *(v3 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!*(v17 + 16))
  {
    goto LABEL_6;
  }

  v9 = sub_1000210EC(a1);
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(*(v17 + 56) + 8 * v9);

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_100034824(*(v11 + 16), 0);
    v14 = sub_1000364B4(&v17, v13 + 4, v12, v11);
    sub_1000128F8();
    if (v14 != v12)
    {
      __break(1u);
LABEL_6:

      v15 = _swiftEmptyArrayStorage;
      goto LABEL_10;
    }
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v15 = sub_100034838(v13);

  if (a2)
  {

    v15 = sub_10013D160(a2, a3, v15);
    sub_1000BB27C(a2);
  }

LABEL_10:
  objc_autoreleasePoolPop(v7);
  return v15;
}

uint64_t sub_1000358B8()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return _swift_task_switch(sub_1000359B4, 0, 0);
}

uint64_t sub_1000359B4()
{
  v1 = v0[23];
  if ((*(v0[21] + 48))(v1, 1, v0[20]) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    v2 = v0[38];
    v3 = v0[32];
    v4 = v0[29];
    v5 = v0[26];
    v7 = v0[22];
    v6 = v0[23];
    v9 = v0[18];
    v8 = v0[19];
    v11 = v0[16];
    v10 = v0[17];
    v15 = v0[12];
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[7];
    v19 = v0[6];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[2];
    sub_100035B84(v1, v0[22], type metadata accessor for ObservedAdvertisement);

    return _swift_task_switch(sub_100035BEC, v14, 0);
  }
}

uint64_t sub_100035B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100035C14()
{
  v64 = v0;
  v1 = *(v0 + 176);
  if ((*(v0 + 424) & 1) == 0)
  {
    sub_10003627C(v1, type metadata accessor for ObservedAdvertisement);
LABEL_8:
    v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_1000358B8;
    v21 = *(v0 + 256);
    v22 = *(v0 + 240);
    v23 = *(v0 + 184);

    return AsyncStream.Iterator.next(isolation:)(v23, 0, 0, v22);
  }

  v2 = *(v0 + 96);
  sub_1000D2A70(v1 + *(*(v0 + 160) + 52), v2, &qword_101699DB0, &unk_101393100);
  v3 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = *(v0 + 176);
  if (v4 == 1)
  {
    v6 = *(v0 + 96);
    sub_10003627C(*(v0 + 176), type metadata accessor for ObservedAdvertisement);
    v7 = &qword_101699DB0;
    v8 = &unk_101393100;
LABEL_7:
    sub_10000B3A8(v6, v7, v8);
    goto LABEL_8;
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 144);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = *(v0 + 80);
  v58 = *(v0 + 160);
  v59 = *(v0 + 72);
  v15 = *(v0 + 64);
  v16 = *(v12 + 16);
  *(v0 + 320) = v16;
  *(v0 + 328) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v61 = v16;
  v16(v10, v13, v11);
  sub_10003627C(v13, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v17 = *(v12 + 32);
  *(v0 + 336) = v17;
  *(v0 + 344) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v9, v10, v11);
  sub_1000D2A70(v5 + *(v58 + 48), v15, &qword_1016AA430, &unk_101392650);
  if ((*(v14 + 48))(v15, 1, v59) == 1)
  {
    v18 = *(v0 + 176);
    v6 = *(v0 + 64);
    (*(*(v0 + 112) + 8))(*(v0 + 152), *(v0 + 104));
    sub_10003627C(v18, type metadata accessor for ObservedAdvertisement);
    v7 = &qword_1016AA430;
    v8 = &unk_101392650;
    goto LABEL_7;
  }

  v24 = *(v0 + 152);
  v25 = *(v0 + 104);
  v26 = *(v0 + 88);
  v27 = *(v0 + 72);
  v28 = *(v0 + 56);
  v29 = *(v0 + 24);
  sub_100035B84(*(v0 + 64), v26, type metadata accessor for ObservedAdvertisement.Location);
  v30 = &v28[v29[5]];
  UUID.init()();
  v61(&v28[v29[6]], v24, v25);
  v31 = *v26;
  v32 = v26[1];
  v33 = v26[2];
  v34 = *(v27 + 28);
  v60 = v29[10];
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  v37 = *(v36 + 16);
  v37(&v28[v60], v26 + v34, v35);
  v38 = v29[12];
  v37(&v28[v38], v26 + v34, v35);
  (*(v36 + 56))(&v28[v38], 0, 1, v35);
  *v28 = xmmword_10138C660;
  *&v28[v29[7]] = v31;
  *&v28[v29[8]] = v32;
  *&v28[v29[9]] = v33;
  v28[v29[11]] = 2;
  *&v28[v29[13]] = 0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 152);
  v40 = *(v0 + 136);
  v41 = *(v0 + 104);
  v42 = type metadata accessor for Logger();
  sub_1000076D4(v42, qword_10177B368);
  v61(v40, v39, v41);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 136);
  v47 = *(v0 + 104);
  v48 = *(v0 + 112);
  if (v45)
  {
    v49 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = v62;
    *v49 = 141558275;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v53 = *(v48 + 8);
    v53(v46, v47);
    v54 = sub_1000136BC(v50, v52, &v63);

    *(v49 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "Saving location for beacon - from observation store update: beacon: %{private,mask.hash}s.", v49, 0x16u);
    sub_100007BAC(v62);
  }

  else
  {

    v53 = *(v48 + 8);
    v53(v46, v47);
  }

  *(v0 + 352) = v53;
  v55 = async function pointer to daemon.getter[1];
  v56 = swift_task_alloc();
  *(v0 + 360) = v56;
  *v56 = v0;
  v56[1] = sub_1007E3558;

  return daemon.getter();
}

uint64_t sub_10003627C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000362DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003633C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_100036438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1000364B4(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100036624()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  v5 = *(v2 + 104);
  if (v0)
  {

    v6 = sub_10001BA08;
  }

  else
  {

    v6 = sub_100B28000;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003676C()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[34] = v4;
  *v4 = v3;
  v4[1] = sub_100039558;
  v5 = v1[31];
  v6 = v1[12];

  return sub_100036DE8(v5);
}

uint64_t sub_1000368C4()
{
  v40 = v0;
  if (*(v0 + 408) == 1)
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 240);
    v2 = *(v0 + 248);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B5D8);
    sub_10002963C(v2, v1, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 256);
      v7 = *(v0 + 240);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      sub_10001F210(v7, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v13 = sub_1000136BC(v10, v12, &v39);

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Managed periphereral: %{private,mask.hash}s", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {
      v27 = *(v0 + 240);

      sub_10001F210(v27, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    }

    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 104);
    sub_10002963C(*(v0 + 176), v30, type metadata accessor for ObservedAdvertisement);
    (*(v29 + 56))(v30, 0, 1, v28);
    v31 = swift_task_alloc();
    *(v0 + 280) = v31;
    *v31 = v0;
    v31[1] = sub_1008E5FAC;
    v33 = *(v0 + 96);
    v32 = *(v0 + 104);
    v34 = *(v0 + 88);

    return sub_1008E9104(v32, v34);
  }

  else
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 248);
    v15 = *(v0 + 232);
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177B5D8);
    sub_10002963C(v14, v15, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 232);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_10001F210(v20, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v26 = sub_1000136BC(v23, v25, &v39);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Not a managed periphereral: %{private,mask.hash}s", v21, 0x16u);
      sub_100007BAC(v22);
    }

    else
    {
      v36 = *(v0 + 232);

      sub_10001F210(v36, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    }

    v37 = async function pointer to daemon.getter[1];
    v38 = swift_task_alloc();
    *(v0 + 288) = v38;
    *v38 = v0;
    v38[1] = sub_1008E615C;

    return daemon.getter();
  }
}

uint64_t sub_100036DE8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for KeyGenerationBeaconInfo();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v2[16] = v10;
  *v10 = v2;
  v10[1] = sub_100036F40;

  return daemon.getter();
}

uint64_t sub_100036F40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_10003711C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10003711C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {
    v7 = v4[8];

    return _swift_task_switch(sub_1008E5C10, v7, 0);
  }

  else
  {
    v8 = v4[17];

    v9 = swift_task_alloc();
    v4[21] = v9;
    *v9 = v6;
    v9[1] = sub_100038038;
    v10 = v4[7];

    return sub_100028F54(v10);
  }
}

uint64_t sub_1000372AC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1000373AC(v0 + v3, v0 + v4);
}

uint64_t sub_1000373AC(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v2[16] = v5;
  *v5 = v2;
  v5[1] = sub_100037478;

  return daemon.getter();
}

uint64_t sub_100037478(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100037654;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100037654(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003A5B90, 0, 0);
  }

  else
  {
    v7 = v4[17];

    v8 = swift_task_alloc();
    v4[21] = v8;
    *v8 = v6;
    v8[1] = sub_100037BA0;

    return (sub_1000377F8)(a1);
  }
}

uint64_t sub_1000377F8(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for MemberSharingCircle();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v11 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[18] = v11;
  v1[19] = *(v11 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100037A8C, 0, 0);
}

uint64_t type metadata accessor for MemberSharingCircle()
{
  result = qword_10169DF68;
  if (!qword_10169DF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for OwnerSharingCircle()
{
  result = qword_1016BC238;
  if (!qword_1016BC238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037A8C()
{
  if (byte_1016CC7D8)
  {
    v1 = v0[20];
    v3 = v0[16];
    v2 = v0[17];
    v4 = v0[13];
    v5 = v0[10];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[7];
    (*(v0[15] + 56))(v0[21], 1, 1, v0[14]);

    return _swift_task_switch(sub_101297BF4, v8, 0);
  }
}

uint64_t sub_100037BA0()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_100037C9C, 0, 0);
}

uint64_t sub_100037C9C()
{
  if (qword_1016954D8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  swift_beginAccess();
  v2 = qword_1016CC7D0;

  LOBYTE(v1) = sub_100037E20(v1, v2);

  if (v1)
  {
    if (qword_101695510 != -1)
    {
      swift_once();
    }

    v3 = *(qword_10177CEA0 + 56);
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_1003A5C00;

    return sub_100507C6C();
  }

  else
  {
    v6 = v0[19];

    v7 = v0[15];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100037E20(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_100009894(&qword_1016967B0, &type metadata accessor for UUID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_100009894(&qword_1016984A0, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100038038(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *(*v2 + 64);
  v8 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v6 = sub_1008E5C9C;
  }

  else
  {
    v6 = sub_100038164;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100038164()
{
  v66 = v0;
  v1 = v0[22];
  v64 = *(v1 + 16);
  if (v64)
  {
    if (qword_101694A58 != -1)
    {
LABEL_25:
      swift_once();
      v63 = v0[22];
    }

    v2 = v0[15];
    v3 = v0[12];
    v4 = v0[13];
    v5 = v0[7];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B5D8);
    (*(v4 + 16))(v2, v5, v3);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[22];
    v11 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    if (v9)
    {
      v14 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v14 = 136315907;
      *(v14 + 4) = sub_1000136BC(0xD000000000000025, 0x80000001013644B0, v65);
      *(v14 + 12) = 2048;
      *(v14 + 14) = *(v1 + 16);

      *(v14 + 22) = 2160;
      *(v14 + 24) = 1752392040;
      *(v14 + 32) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, v65);

      *(v14 + 34) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Found [%ld] beacon infos  for %{private,mask.hash}s", v14, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v35 = v0[22];

      (*(v12 + 8))(v11, v13);
    }

    v36 = 0;
    v38 = v0[9];
    v37 = v0[10];
    v39 = enum case for Feature.FindMy.spPlaySoundAll(_:);
    while (1)
    {
      v40 = v36;
      if (v64 == v36)
      {
        break;
      }

      if (v36 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v41 = v0[11];
      sub_10002963C(v0[22] + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, v41, type metadata accessor for KeyGenerationBeaconInfo);
      if (*(v41 + *(v38 + 28)))
      {
        v47 = v0[22];
        v48 = v0[19];
        v49 = v0[11];

        sub_10001F210(v49, type metadata accessor for KeyGenerationBeaconInfo);
        goto LABEL_20;
      }

      v42 = v0[11];
      ++v36;
      My = type metadata accessor for Feature.FindMy();
      v0[5] = My;
      v0[6] = sub_100019588(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
      v44 = sub_1000280DC(v0 + 2);
      (*(*(My - 8) + 104))(v44, v39, My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_10001F210(v42, type metadata accessor for KeyGenerationBeaconInfo);
      sub_100007BAC(v0 + 2);
      if (My)
      {
        v45 = v0[22];
        v46 = v0[19];

        goto LABEL_20;
      }
    }

    v57 = v0[22];
    v58 = v0[19];

LABEL_20:
    v60 = v0[14];
    v59 = v0[15];
    v61 = v0[11];

    v55 = v0[1];
    v56 = v64 != v40;
  }

  else
  {

    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    v22 = v0[7];
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B5D8);
    (*(v20 + 16))(v19, v22, v21);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[12];
    if (v26)
    {
      v30 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v30 = 136315651;
      *(v30 + 4) = sub_1000136BC(0xD000000000000025, 0x80000001013644B0, v65);
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v28 + 8))(v27, v29);
      v34 = sub_1000136BC(v31, v33, v65);

      *(v30 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s Missing beacon info for %{private,mask.hash}s!", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    v50 = v0[19];
    sub_1002685E8();
    swift_allocError();
    *v51 = 4;
    swift_willThrow();

    v53 = v0[14];
    v52 = v0[15];
    v54 = v0[11];

    v55 = v0[1];
    v56 = 0;
  }

  return v55(v56);
}

unint64_t sub_100038888(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v11 = *(v5 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v12 = a1 + *(a2(0) + 20);
  dispatch thunk of Hashable.hash(into:)();
  v13 = Hasher._finalize()();
  return sub_1000389D8(a1, v13, a3, a4, a5);
}

unint64_t sub_1000389D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v21 = a3(0);
  v9 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v12 = &v20 - v11;
  v13 = -1 << *(v5 + 32);
  v14 = a2 & ~v13;
  if ((*(v5 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v10 + 72);
    do
    {
      sub_100038B5C(*(v5 + 48) + v16 * v14, v12, a4);
      if (static UUID.== infix(_:_:)())
      {
        v17 = *(v21 + 20);
        v18 = static UUID.== infix(_:_:)();
        sub_100038BC4(v12, a5);
        if (v18)
        {
          return v14;
        }
      }

      else
      {
        sub_100038BC4(v12, a5);
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v5 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_100038B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100038C24(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ObservedAdvertisement(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &unk_10169BB50, &unk_101395760);
    sub_1001E4F44(a2, v8);
    sub_1000296A4(a2, type metadata accessor for BeaconIdentifier);
    return sub_10000B3A8(v8, &unk_10169BB50, &unk_101395760);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for ObservedAdvertisement);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_100038FAC(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1000296A4(a2, type metadata accessor for BeaconIdentifier);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100038E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038FAC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeaconIdentifier();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100038994(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ObservedAdvertisement(0);
      return sub_100039158(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ObservedAdvertisement);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101006B74();
    goto LABEL_7;
  }

  sub_100FE9D48(v17, a3 & 1);
  v24 = *v4;
  v25 = sub_100038994(a2);
  if ((v18 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v25;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100022ABC(a2, v11, type metadata accessor for BeaconIdentifier);
  return sub_101003724(v14, v11, a1, v20);
}

uint64_t sub_100039158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000391C0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v7 = *(v6 + 64) + 15;
  v2[24] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[25] = v8;
  v9 = *(v8 - 8);
  v2[26] = v9;
  v2[27] = *(v9 + 64);
  v2[28] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[29] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v12 = type metadata accessor for OwnedBeaconRecord();
  v2[31] = v12;
  v13 = *(v12 - 8);
  v2[32] = v13;
  v14 = *(v13 + 64) + 15;
  v2[33] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v16 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[35] = v16;
  v17 = *(v16 - 8);
  v2[36] = v17;
  v18 = *(v17 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000396A0, v1, 0);
}

uint64_t sub_100039464()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_1008E615C;

  return daemon.getter();
}

uint64_t sub_1000394F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100039558(char a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 272);
  v7 = *v2;

  v8 = *(v4 + 96);
  if (v1)
  {

    v9 = sub_1008E5D28;
  }

  else
  {
    *(v5 + 408) = a1 & 1;
    v9 = sub_1000368C4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000396A0()
{
  v51 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 144);
  v5 = type metadata accessor for ObservedAdvertisement(0);
  *(v0 + 320) = v5;
  sub_1000D2A70(v4 + *(v5 + 52), v3, &qword_101699DB0, &unk_101393100);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(*(v0 + 272), &qword_101699DB0, &unk_101393100);
    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A7D8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Not updating key sync metadata for unreconciled advertisement.", v9, 2u);
    }

    goto LABEL_7;
  }

  v21 = *(v0 + 144);
  sub_100018118(*(v0 + 272), *(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  if (((*(v21 + 32) >> 4) & 3) == 0)
  {
    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
LABEL_7:
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 296);
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v15 = *(v0 + 240);
    v16 = *(v0 + 224);
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);

    v19 = *(v0 + 8);

    return v19();
  }

  v22 = *(v0 + 144);
  if ((v22[31] & 0x20) != 0)
  {
    v38 = *(*(v0 + 312) + *(*(v0 + 280) + 24));
    v39 = *(v5 + 44);
    v40 = swift_task_alloc();
    *(v0 + 328) = v40;
    *v40 = v0;
    v40[1] = sub_1008E6F88;
    v41 = *(v0 + 312);
    v42 = *(v0 + 152);

    return sub_1008E9A28(v38, &v22[v39], v41);
  }

  else
  {
    *(v0 + 477) = v22[34];
    if (v22[35])
    {
      if (qword_1016944F0 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 304);
      v24 = *(v0 + 312);
      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_10177A7D8);
      sub_10002963C(v24, v23, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      v28 = os_log_type_enabled(v26, v27);
      v30 = *(v0 + 304);
      v29 = *(v0 + 312);
      if (v28)
      {
        v31 = *(v0 + 200);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v50 = v33;
        *v32 = 141558275;
        *(v32 + 4) = 1752392040;
        *(v32 + 12) = 2081;
        sub_100019588(&qword_101696930, &type metadata accessor for UUID);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        sub_10001F210(v30, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
        v37 = sub_1000136BC(v34, v36, &v50);

        *(v32 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to update key sync metadata - no hint provided for wild advertisement for %{private,mask.hash}s.", v32, 0x16u);
        sub_100007BAC(v33);

        sub_10001F210(v29, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      }

      else
      {

        sub_10001F210(v30, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
        sub_10001F210(v29, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      }

      goto LABEL_7;
    }

    v43 = *(v0 + 312);
    v44 = *(v0 + 280);
    if (*(v43 + *(v44 + 20)))
    {
      v45 = &type metadata for SecondaryIndex;
      v46 = sub_10022A4D4();
    }

    else
    {
      v45 = &type metadata for PrimaryWildIndex;
      v46 = sub_10022A528();
    }

    v47 = *(v43 + *(v44 + 24));
    *(v0 + 40) = v45;
    *(v0 + 48) = v46;
    *(v0 + 16) = v47;
    v48 = async function pointer to daemon.getter[1];
    v49 = swift_task_alloc();
    *(v0 + 344) = v49;
    *v49 = v0;
    v49[1] = sub_1008E71A0;

    return daemon.getter();
  }
}

uint64_t sub_100039C64()
{
  v1 = v0[45];

  v2 = v0[49];
  v3 = v0[31];
  v4 = v0[25];
  v5 = v0[22];

  sub_10001F210(v5, type metadata accessor for ObservedAdvertisement);
  sub_10001F210(v4, type metadata accessor for BeaconIdentifier);
  sub_10001F210(v3, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[14];
  v21 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100039E1C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v2[15] = *(v5 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v2[22] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord();
  v2[24] = found;
  v9 = *(found - 8);
  v2[25] = v9;
  v10 = *(v9 + 64) + 15;
  v2[26] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v2[27] = v12;
  *v12 = v2;
  v12[1] = sub_10003A06C;

  return daemon.getter();
}

uint64_t type metadata accessor for NotifyWhenFoundRecord()
{
  result = qword_1016A2830;
  if (!qword_1016A2830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A06C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v12 = *v1;
  v3[28] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[29] = v6;
  v7 = type metadata accessor for Daemon();
  v3[30] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[31] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10003A2A8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10003A260(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10003A2A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = v4[11];
    v8 = sub_100043C54;
  }

  else
  {
    v9 = v4[28];

    v4[33] = a1;
    v8 = sub_10003A3E4;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10003A3E4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 168);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v3 + 16);
  *(v0 + 272) = v6;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 456) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v1;
  (*(v3 + 32))(v9 + v8, v2, v4);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 296) = v11;
  *v11 = v0;
  v11[1] = sub_100355D88;
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_10003A5EC, v9, v13);
}

uint64_t sub_10003A564(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10003A604@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for DirectorySequence();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v45 = *(v1 + 168);
  v18 = objc_autoreleasePoolPush();
  if (qword_1016947A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v10, qword_10177AEC8);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v18);
  v46 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v19 = [objc_opt_self() defaultManager];
  v41 = v17;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v43 = v11;
  v20 = *(v11 + 48);
  if (v20(v5, 1, v10) != 1)
  {
    v44 = *(v43 + 32);
    v21 = (v43 + 8);
    do
    {
      v44(v15, v5, v10);
      v22 = v20;
      v23 = objc_autoreleasePoolPush();
      sub_1006029CC(v15, v45, &v47, &v46);
      v24 = v23;
      v20 = v22;
      objc_autoreleasePoolPop(v24);
      (*v21)(v15, v10);
      DirectorySequence.next()();
    }

    while (v22(v5, 1, v10) != 1);
  }

  (*(v39 + 8))(v9, v40);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v25 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10138BBE0;
  v27 = v47;
  v28 = v47[2];
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v28;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

  v29 = v41;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = sub_100008C00();
  *(v26 + 72) = v30;
  *(v26 + 80) = v32;
  os_log(_:dso:log:_:_:)();

  (*(v43 + 8))(v29, v10);

  if (*(v27 + 16))
  {
    found = type metadata accessor for NotifyWhenFoundRecord();
    v34 = *(found - 8);
    v35 = v42;
    sub_100022A54(v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v42, type metadata accessor for NotifyWhenFoundRecord);

    return (*(v34 + 56))(v35, 0, 1, found);
  }

  else
  {

    v37 = type metadata accessor for NotifyWhenFoundRecord();
    return (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
  }
}

uint64_t sub_10003ABC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v429) = a4;
  v449 = a3;
  v456 = a1;
  v442 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  v5 = *(*(v442 - 8) + 64);
  __chkstk_darwin(v442);
  v441 = &v402 - v6;
  v416 = type metadata accessor for SystemInfo.DeviceLockState();
  v406 = *(v416 - 8);
  v7 = *(v406 + 64);
  v8 = __chkstk_darwin(v416);
  v415 = &v402 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v414 = &v402 - v10;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v412 = &v402 - v13;
  v14 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v440 = &v402 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v437 = &v402 - v18;
  v453 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  v405 = *(v453 - 8);
  v19 = *(v405 + 64);
  v20 = __chkstk_darwin(v453);
  v430 = &v402 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v426 = (&v402 - v22);
  v433 = type metadata accessor for BeaconStatus(0);
  v23 = *(*(v433 - 8) + 64);
  v24 = __chkstk_darwin(v433);
  v404 = &v402 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v423 = &v402 - v27;
  __chkstk_darwin(v26);
  v427 = &v402 - v28;
  v29 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v436 = &v402 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v443 = (&v402 - v33);
  v466 = type metadata accessor for BeaconObservation();
  v457 = *(v466 - 1);
  v34 = *(v457 + 64);
  v35 = __chkstk_darwin(v466);
  v465 = (&v402 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __chkstk_darwin(v35);
  v464 = &v402 - v38;
  v39 = __chkstk_darwin(v37);
  v421 = &v402 - v40;
  v41 = __chkstk_darwin(v39);
  v467 = (&v402 - v42);
  v43 = __chkstk_darwin(v41);
  v45 = &v402 - v44;
  __chkstk_darwin(v43);
  v432 = &v402 - v46;
  v448 = type metadata accessor for Date();
  v452 = *(v448 - 8);
  v47 = *(v452 + 64);
  v48 = __chkstk_darwin(v448);
  v431 = &v402 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v428 = &v402 - v51;
  v52 = __chkstk_darwin(v50);
  v463 = (&v402 - v53);
  v54 = __chkstk_darwin(v52);
  v450 = &v402 - v55;
  v56 = __chkstk_darwin(v54);
  v447 = (&v402 - v57);
  v58 = __chkstk_darwin(v56);
  v451 = &v402 - v59;
  v60 = __chkstk_darwin(v58);
  v458 = &v402 - v61;
  __chkstk_darwin(v60);
  v438 = (&v402 - v62);
  v63 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v64 = *(*(v63 - 8) + 64);
  v65 = __chkstk_darwin(v63 - 8);
  v435 = &v402 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v417 = &v402 - v67;
  v68 = sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  v69 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v71 = &v402 - v70;
  v72 = sub_1000BC4D4(&qword_1016AA4E8, &unk_1013D67A0);
  v73 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72 - 8);
  v75 = (&v402 - v74);
  v76 = sub_1000BC4D4(&unk_1016AA4F0, &unk_1013BD0F0);
  v444 = *(v76 - 8);
  v77 = *(v444 + 8);
  v78 = __chkstk_darwin(v76);
  v410 = &v402 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v78);
  v408 = &v402 - v81;
  v82 = __chkstk_darwin(v80);
  v455 = &v402 - v83;
  __chkstk_darwin(v82);
  v422 = &v402 - v84;
  v85 = type metadata accessor for UUID();
  v86 = *(*(v85 - 8) + 64);
  v87 = __chkstk_darwin(v85);
  v407 = &v402 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __chkstk_darwin(v87);
  v402 = &v402 - v90;
  v91 = __chkstk_darwin(v89);
  v403 = &v402 - v92;
  v93 = __chkstk_darwin(v91);
  v413 = (&v402 - v94);
  v95 = __chkstk_darwin(v93);
  v454 = &v402 - v96;
  v97 = __chkstk_darwin(v95);
  v419 = &v402 - v98;
  v99 = __chkstk_darwin(v97);
  v411 = &v402 - v100;
  v101 = __chkstk_darwin(v99);
  v425 = &v402 - v102;
  v103 = __chkstk_darwin(v101);
  *&v424 = &v402 - v104;
  v105 = __chkstk_darwin(v103);
  v420 = &v402 - v106;
  v107 = __chkstk_darwin(v105);
  v409 = &v402 - v108;
  __chkstk_darwin(v107);
  v110 = &v402 - v109;
  v462 = v111;
  v112 = *(v111 + 16);
  v418 = a2;
  v459 = v113;
  v446 = v111 + 16;
  v445 = v112;
  (v112)(&v402 - v109, a2);
  if (qword_101694940 != -1)
  {
    goto LABEL_142;
  }

  while (1)
  {
    v114 = qword_10177B348;
    v115 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v434 = sub_101073C70(v475);

    v116._object = 0x800000010136C350;
    v116._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v116);
    v117 = *&v460[OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue];
    __chkstk_darwin(v118);
    *(&v402 - 2) = v119;
    *(&v402 - 1) = v110;
    v461 = v110;
    v439 = v117;
    OS_dispatch_queue.sync<A>(execute:)();
    v120 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
    if ((*(*(v120 - 8) + 48))(v71, 1, v120) == 1)
    {
      sub_10000B3A8(v71, &qword_1016AA4E0, &unk_1013BD0E0);
      v121 = v466;
      v455 = 0;
      (*(v444 + 7))(v75, 1, 1, v76);
      v124 = &qword_1016AA4E8;
      v125 = &unk_1013D67A0;
      v126 = v75;
    }

    else
    {
      v122 = v76;
      v123 = sub_100A870CC(v75 + *(v76 + 48));
      v121 = v466;
      LOBYTE(v75->magic) = v123 & 1;
      sub_10000B3A8(v71, &qword_1016998D0, &unk_1013931A0);
      (*(v444 + 7))(v75, 0, 1, v76);
      v195 = v422;
      sub_1000D2AD8(v75, v422, &unk_1016AA4F0, &unk_1013BD0F0);
      v196 = v455;
      sub_1000D2A70(v195, v455, &unk_1016AA4F0, &unk_1013BD0F0);
      v197 = *v196;
      sub_100022C40(&v196[*(v122 + 48)], type metadata accessor for DeviceEvent);
      if (v197 == 1)
      {
        sub_1000D2A70(v195, v196, &unk_1016AA4F0, &unk_1013BD0F0);
        v198 = &v196[*(v122 + 48)];
        LODWORD(v467) = *(v198 + 9);
        sub_100022C40(v198, type metadata accessor for DeviceEvent);
        v199 = v408;
        sub_1000D2A70(v195, v408, &unk_1016AA4F0, &unk_1013BD0F0);
        v200 = v199 + *(v122 + 48);
        if (*(v200 + 9) == 5)
        {
          v201 = *(v114 + 40);
          OS_dispatch_queue.sync<A>(execute:)();
          sub_101073C8C(v475);

          v202 = v200 + *(type metadata accessor for DeviceEvent(0) + 24);
          v203 = v417;
          Date.addingTimeInterval(_:)();
          v204 = 0;
          v205 = v448;
          v173 = v459;
        }

        else
        {
          v204 = 1;
          v205 = v448;
          v173 = v459;
          v203 = v417;
        }

        v298 = v410;
        v299 = v452;
        (*(v452 + 56))(v203, v204, 1, v205);
        sub_100022C40(v200, type metadata accessor for DeviceEvent);
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v300 = type metadata accessor for Logger();
        sub_1000076D4(v300, qword_10177BA08);
        v301 = v409;
        v445(v409, v461, v173);
        sub_1000D2A70(v195, v298, &unk_1016AA4F0, &unk_1013BD0F0);
        v302 = Logger.logObject.getter();
        v303 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v302, v303))
        {
          v304 = swift_slowAlloc();
          v466 = swift_slowAlloc();
          v475 = v466;
          *v304 = 141558787;
          *(v304 + 4) = 1752392040;
          *(v304 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          LODWORD(v464) = v303;
          v305 = dispatch thunk of CustomStringConvertible.description.getter();
          v307 = v306;
          v465 = *(v462 + 8);
          (v465)(v301, v459);
          v308 = sub_1000136BC(v305, v307, &v475);

          *(v304 + 14) = v308;
          *(v304 + 22) = 1026;
          *(v304 + 24) = v467;
          *(v304 + 28) = 2082;
          v309 = v455;
          sub_1000D2A70(v298, v455, &unk_1016AA4F0, &unk_1013BD0F0);
          v310 = v309 + *(v122 + 48);
          v311 = type metadata accessor for DeviceEvent(0);
          v312 = v438;
          (*(v299 + 16))(v438, v310 + *(v311 + 24), v205);
          sub_100022C40(v310, type metadata accessor for DeviceEvent);
          sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
          v313 = dispatch thunk of CustomStringConvertible.description.getter();
          v315 = v314;
          (*(v299 + 8))(v312, v205);
          sub_10000B3A8(v298, &unk_1016AA4F0, &unk_1013BD0F0);
          v316 = sub_1000136BC(v313, v315, &v475);

          *(v304 + 30) = v316;
          _os_log_impl(&_mh_execute_header, v302, v464, "Beacon %{private,mask.hash}s is connected (via %{public}u since: %{public}s.", v304, 0x26u);
          swift_arrayDestroy();

          v173 = v459;

          v317 = v422;
          v203 = v417;
        }

        else
        {

          sub_10000B3A8(v298, &unk_1016AA4F0, &unk_1013BD0F0);
          v465 = *(v462 + 8);
          (v465)(v301, v173);
          v317 = v195;
        }

        sub_10000B3A8(v317, &unk_1016AA4F0, &unk_1013BD0F0);
        sub_1000D2AD8(v203, v456, &unk_101696900, &unk_10138B1E0);
        v255 = 1;
        goto LABEL_105;
      }

      v455 = 0;
      v124 = &unk_1016AA4F0;
      v125 = &unk_1013BD0F0;
      v126 = v195;
    }

    sub_10000B3A8(v126, v124, v125);
    v127 = *(v449 + 16);
    if (v127)
    {
      v128 = (*(v457 + 80) + 32) & ~*(v457 + 80);
      v129 = *(v457 + 72);
      v130 = _swiftEmptyArrayStorage;
      v131 = v449 + v128;
      v132 = *(v449 + 16);
      do
      {
        sub_100022A54(v131, v45, type metadata accessor for BeaconObservation);
        v133 = *(v45 + *(v121 + 6));
        if (qword_1013D6DD0[v133] == 501 || qword_1013D6DD0[v133] == 503)
        {
          sub_10002911C(v45, v467, type metadata accessor for BeaconObservation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v475 = v130;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124308(0, v130[2] + 1, 1);
            v130 = v475;
          }

          v136 = v130[2];
          v135 = v130[3];
          if (v136 >= v135 >> 1)
          {
            sub_101124308(v135 > 1, v136 + 1, 1);
            v130 = v475;
          }

          v130[2] = v136 + 1;
          sub_10002911C(v467, v130 + v128 + v136 * v129, type metadata accessor for BeaconObservation);
          v121 = v466;
        }

        else
        {
          sub_100022C40(v45, type metadata accessor for BeaconObservation);
        }

        v131 += v129;
        --v132;
      }

      while (v132);
    }

    else
    {
      v130 = _swiftEmptyArrayStorage;
    }

    v137 = v443;
    sub_1012BB138(v130, v443);

    v138 = *(v457 + 48);
    v139 = v138(v137, 1, v121);
    v140 = v456;
    if (v139 == 1)
    {
      sub_10000B3A8(v137, &qword_1016A42E0, &qword_1013B0010);
      v75 = v463;
      goto LABEL_21;
    }

    v141 = v137;
    v142 = v432;
    sub_10002911C(v141, v432, type metadata accessor for BeaconObservation);
    v143 = v461;
    v75 = v463;
    if (*(v142 + *(v121 + 6)) != 35)
    {
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v171 = type metadata accessor for Logger();
      sub_1000076D4(v171, qword_10177BA08);
      v172 = v420;
      v173 = v459;
      v445(v420, v143, v459);
      v174 = v421;
      sub_100022A54(v142, v421, type metadata accessor for BeaconObservation);
      v175 = v142;
      v176 = Logger.logObject.getter();
      v177 = static os_log_type_t.default.getter();
      v178 = os_log_type_enabled(v176, v177);
      v179 = v448;
      v180 = v462;
      if (v178)
      {
        v181 = swift_slowAlloc();
        v475 = swift_slowAlloc();
        *v181 = 141558531;
        *(v181 + 4) = 1752392040;
        *(v181 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v182 = dispatch thunk of CustomStringConvertible.description.getter();
        v183 = v172;
        v184 = v174;
        v185 = v121;
        v187 = v186;
        v465 = *(v180 + 8);
        (v465)(v183, v459);
        v188 = sub_1000136BC(v182, v187, &v475);

        *(v181 + 14) = v188;
        *(v181 + 22) = 2082;
        v189 = *(v185 + 5);
        sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
        v190 = dispatch thunk of CustomStringConvertible.description.getter();
        v192 = v191;
        sub_100022C40(v184, type metadata accessor for BeaconObservation);
        v193 = sub_1000136BC(v190, v192, &v475);

        *(v181 + 24) = v193;
        _os_log_impl(&_mh_execute_header, v176, v177, "Beacon %{private,mask.hash}s is connected (via bluetooth) since: %{public}s.", v181, 0x20u);
        swift_arrayDestroy();
        v140 = v456;

        v173 = v459;

        v194 = v432;
      }

      else
      {

        sub_100022C40(v174, type metadata accessor for BeaconObservation);
        v465 = *(v180 + 8);
        (v465)(v172, v173);
        v194 = v175;
      }

      sub_100022C40(v194, type metadata accessor for BeaconObservation);
      v255 = 1;
      (*(v452 + 56))(v140, 1, 1, v179);
LABEL_105:
      v213 = v461;
      goto LABEL_106;
    }

    sub_100022C40(v142, type metadata accessor for BeaconObservation);
LABEL_21:
    v144 = _swiftEmptyArrayStorage;
    if (v127)
    {
      v145 = (*(v457 + 80) + 32) & ~*(v457 + 80);
      v146 = *(v457 + 72);
      v147 = v449 + v145;
      v148 = v464;
      do
      {
        sub_100022A54(v147, v148, type metadata accessor for BeaconObservation);
        if (*(v148 + *(v121 + 6)) == 36)
        {
          sub_10002911C(v148, v465, type metadata accessor for BeaconObservation);
          v149 = swift_isUniquelyReferenced_nonNull_native();
          v475 = v144;
          if ((v149 & 1) == 0)
          {
            sub_101124308(0, v144[2] + 1, 1);
            v144 = v475;
          }

          v151 = v144[2];
          v150 = v144[3];
          if (v151 >= v150 >> 1)
          {
            sub_101124308(v150 > 1, v151 + 1, 1);
            v144 = v475;
          }

          v144[2] = v151 + 1;
          sub_10002911C(v465, v144 + v145 + v151 * v146, type metadata accessor for BeaconObservation);
          v75 = v463;
          v121 = v466;
        }

        else
        {
          sub_100022C40(v148, type metadata accessor for BeaconObservation);
        }

        v147 += v146;
        --v127;
      }

      while (v127);
    }

    v152 = v436;
    sub_1012BB138(v144, v436);

    v153 = v138(v152, 1, v121);
    v154 = v461;
    if (v153 == 1)
    {
      sub_10000B3A8(v152, &qword_1016A42E0, &qword_1013B0010);
      v76 = v452;
      v155 = v435;
      v156 = v448;
      v443 = *(v452 + 56);
      (v443)(v435, 1, 1, v448);
      static Date.distantPast.getter();
      v157 = (*(v76 + 48))(v155, 1, v156);
      v158 = v451;
      v159 = v437;
      if (v157 != 1)
      {
        sub_10000B3A8(v155, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v76 = v452;
      v160 = v435;
      v156 = v448;
      (*(v452 + 16))(v435, v152 + *(v121 + 5), v448);
      sub_100022C40(v152, type metadata accessor for BeaconObservation);
      v443 = *(v76 + 56);
      (v443)(v160, 0, 1, v156);
      (*(v76 + 32))(v458, v160, v156);
      v158 = v451;
      v159 = v437;
    }

    sub_100AC6DA0(v154, v159);
    v161 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
    v436 = *(v161 - 8);
    v162 = *(v436 + 48);
    v449 = v436 + 48;
    v444 = v162;
    v163 = v162(v159, 1, v161);
    v457 = v161;
    if (v163 == 1)
    {
      sub_10000B3A8(v159, &qword_10169DBD0, &unk_1013D6790);
      static Date.distantPast.getter();
      goto LABEL_50;
    }

    v164 = *(v159 + *(v161 + 48));
    v165 = v453;
    v166 = *(v453 + 48);
    v167 = v159;
    v168 = v426;
    sub_10002911C(v167, v426, type metadata accessor for BeaconStatus);
    *(v168 + v166) = v164;
    v169 = *(v168 + *(v165 + 48));
    v170 = v427;
    sub_10002911C(v168, v427, type metadata accessor for BeaconStatus);
    if (v169 > 1)
    {
      if (v169 == 2)
      {
LABEL_48:
        (*(v76 + 16))(v158, v170 + *(v433 + 24), v156);
        goto LABEL_49;
      }
    }

    else if (v169)
    {
      goto LABEL_48;
    }

    static Date.distantPast.getter();
LABEL_49:
    sub_100022C40(v170, type metadata accessor for BeaconStatus);
LABEL_50:
    sub_10000768C(&qword_1016C9070, &type metadata accessor for Date);
    v206 = v458;
    v207 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v173 = *(v76 + 16);
    v208 = (v207 & 1) != 0 ? v158 : v206;
    v110 = v447;
    v173(v447, v208, v156);
    Date.addingTimeInterval(_:)();
    v209 = v438;
    static Date.trustedNow.getter(v438);
    Date.timeIntervalSince(_:)();
    v211 = v210;
    v212 = *(v76 + 8);
    v464 = (v76 + 8);
    v463 = v212;
    (v212)(v209, v156);
    if (v211 > 0.0)
    {
      break;
    }

    v232 = v461;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v233 = type metadata accessor for Logger();
    v234 = sub_1000076D4(v233, qword_10177BA08);
    v235 = v425;
    v236 = v459;
    v445(v425, v232, v459);
    v237 = v428;
    v173(v428, v110, v156);
    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.default.getter();
    v240 = os_log_type_enabled(v238, v239);
    v427 = v234;
    if (v240)
    {
      v241 = swift_slowAlloc();
      v475 = swift_slowAlloc();
      *v241 = 141558531;
      *(v241 + 4) = 1752392040;
      *(v241 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v242 = dispatch thunk of CustomStringConvertible.description.getter();
      v243 = v235;
      v245 = v244;
      v246 = v462;
      v465 = *(v462 + 8);
      (v465)(v243, v236);
      v247 = sub_1000136BC(v242, v245, &v475);

      *(v241 + 14) = v247;
      *(v241 + 22) = 2082;
      sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
      v248 = dispatch thunk of CustomStringConvertible.description.getter();
      v250 = v249;
      (v463)(v237, v156);
      v251 = sub_1000136BC(v248, v250, &v475);

      *(v241 + 24) = v251;
      _os_log_impl(&_mh_execute_header, v238, v239, "Beacon %{private,mask.hash}s is not connected. Last seen: %{public}s.", v241, 0x20u);
      swift_arrayDestroy();
      v252 = v246;
    }

    else
    {

      (v463)(v237, v156);
      v252 = v462;
      v465 = *(v462 + 8);
      (v465)(v235, v236);
    }

    v173 = v236;
    v213 = v461;
    v75 = v447;
    if ((v429 & 1) == 0)
    {
      v262 = v463;
      (v463)(v450, v156);
      (v262)(v75, v156);
      (v262)(v451, v156);
      (v262)(v458, v156);
LABEL_73:
      v264 = v443;
      goto LABEL_74;
    }

    sub_100025020(v418, &v472);
    if (!v473)
    {
      v263 = v463;
      (v463)(v450, v156);
      (v263)(v75, v156);
      (v263)(v451, v156);
      (v263)(v458, v156);
      sub_10000B3A8(&v472, &qword_101696920, &unk_10138B200);
      goto LABEL_73;
    }

    v256 = v213;
    sub_10000A748(&v472, &v475);
    v257 = v476;
    v258 = v477;
    sub_1000035D0(&v475, v476);
    v259 = v257;
    v260 = v412;
    (*(v258 + 200))(v259, v258);
    if ((*(v252 + 48))(v260, 1, v236) == 1)
    {
      v261 = v463;
      (v463)(v450, v156);
      (v261)(v75, v156);
      (v261)(v451, v156);
      (v261)(v458, v156);
      sub_10000B3A8(v260, &qword_1016980D0, &unk_10138F3B0);
      sub_100007BAC(&v475);
      v213 = v256;
      goto LABEL_73;
    }

    v265 = v411;
    v466 = *(v252 + 32);
    v467 = (v252 + 32);
    (v466)(v411, v260, v236);
    sub_100ACBC98(v265, &v472);
    v266 = v473;
    if (!v473)
    {
      sub_10000B3A8(&v472, &unk_1016AA480, &unk_1013BD050);
      v319 = _swiftEmptyArrayStorage;
      v110 = v431;
      v76 = v457;
LABEL_109:
      v438 = v319;
      v213 = v423;
      v437 = v319[2];
      if (v437)
      {
        v320 = 0;
        v435 = (v438 + 4);
        v432 = v405 + 48;
        v429 = (v436 + 56);
        v436 = v252 + 8;
        do
        {
          if (v320 >= v438[2])
          {
            __break(1u);
            goto LABEL_144;
          }

          v75 = v110;
          sub_10001F280(&v435[40 * v320], &v472);
          v321 = v473;
          v322 = v474;
          sub_1000035D0(&v472, v473);
          v323 = v454;
          (*(*(*(v322 + 8) + 8) + 32))(v321);
          v324._countAndFlagsBits = 0xD000000000000015;
          v324._object = (v434 | 0x8000000000000000);
          prohibitAsyncContext(functionName:)(v324);
          __chkstk_darwin(v325);
          *(&v402 - 2) = v460;
          *(&v402 - 1) = v323;
          v326 = v441;
          v327 = v455;
          OS_dispatch_queue.sync<A>(execute:)();
          v455 = v327;
          v328 = v453;
          if ((*v432)(v326, 1, v453) == 1)
          {
            sub_10000B3A8(v326, &qword_101699848, &unk_1013D6610);
            v329 = 1;
            v173 = v459;
            v330 = v440;
          }

          else
          {
            v331 = v326;
            v332 = *(v326 + *(v328 + 48));
            v333 = *(v76 + 48);
            v330 = v440;
            sub_10002911C(v331, v440, type metadata accessor for BeaconStatus);
            v329 = 0;
            *(v330 + v333) = v332;
            v173 = v459;
          }

          (*v429)(v330, v329, 1, v76);
          (v465)(v454, v173);
          if (v444(v330, 1, v76) == 1)
          {
            sub_10000B3A8(v330, &qword_10169DBD0, &unk_1013D6790);
            v110 = v75;
            goto LABEL_112;
          }

          v334 = *(v330 + *(v76 + 48));
          v335 = v453;
          v336 = *(v453 + 48);
          v337 = v330;
          v338 = v430;
          sub_10002911C(v337, v430, type metadata accessor for BeaconStatus);
          *(v338 + v336) = v334;
          v339 = *(v338 + *(v335 + 48));
          sub_10002911C(v338, v213, type metadata accessor for BeaconStatus);
          if (v339 > 1)
          {
            v110 = v75;
            if (v339 != 2)
            {
LABEL_120:
              static Date.distantPast.getter();
              goto LABEL_123;
            }
          }

          else
          {
            v110 = v75;
            if (!v339)
            {
              goto LABEL_120;
            }
          }

          v340 = v213 + *(v433 + 24);
          Date.addingTimeInterval(_:)();
LABEL_123:
          v173 = v459;
          v76 = v457;
          Date.timeIntervalSinceNow.getter();
          if (v341 > 0.0)
          {
            v342 = sub_10001993C(*(v213 + *(v433 + 20)) & 0xB);
            v343 = (v342 >> 8) & 1;
            v344 = HIWORD(v342) & 1;
            v345 = HIBYTE(v342) & 1;
            v346 = v473;
            v347 = v474;
            v348 = sub_1000035D0(&v472, v473);
            v349 = sub_100B0D624(v348, v343, v344, v345, v460, v346, v347);
            v350 = *(v349 + 16);
            if (v350)
            {
              v471 = _swiftEmptyArrayStorage;
              sub_101123D4C(0, v350, 0);
              v351 = v471;
              v352 = v349 + 32;
              v75 = v413;
              do
              {
                sub_10001F280(v352, &v468);
                v353 = *(&v469 + 1);
                v354 = v470;
                sub_1000035D0(&v468, *(&v469 + 1));
                (*(*(*(v354 + 8) + 8) + 32))(v353);
                sub_100007BAC(&v468);
                v471 = v351;
                v356 = v351[2];
                v355 = v351[3];
                if (v356 >= v355 >> 1)
                {
                  sub_101123D4C(v355 > 1, v356 + 1, 1);
                  v351 = v471;
                }

                v351[2] = v356 + 1;
                (v466)(v351 + ((*(v462 + 80) + 32) & ~*(v462 + 80)) + *(v462 + 72) * v356, v75, v173);
                v352 += 40;
                --v350;
              }

              while (v350);
            }

            else
            {

              v351 = _swiftEmptyArrayStorage;
            }

            v357 = sub_1005C8A30(v461, v351);

            v156 = v448;
            v213 = v423;
            v110 = v431;
            v76 = v457;
            if (v357)
            {
              v373 = v403;
              v445(v403, v461, v173);
              sub_10001F280(&v472, &v468);
              v374 = v404;
              sub_100022A54(v213, v404, type metadata accessor for BeaconStatus);
              v375 = v438;

              v376 = Logger.logObject.getter();
              v377 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v376, v377))
              {
                v378 = swift_slowAlloc();
                v467 = swift_slowAlloc();
                v471 = v467;
                *v378 = 141559299;
                *(v378 + 4) = 1752392040;
                *(v378 + 12) = 2081;
                sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
                v379 = dispatch thunk of CustomStringConvertible.description.getter();
                v381 = v380;
                v382 = v465;
                (v465)(v373, v459);
                v383 = sub_1000136BC(v379, v381, &v471);

                *(v378 + 14) = v383;
                *(v378 + 22) = 2048;
                v384 = v375[2];

                *(v378 + 24) = v384;

                *(v378 + 32) = 2160;
                *(v378 + 34) = 1752392040;
                *(v378 + 42) = 2081;
                v156 = v448;
                v386 = *(&v469 + 1);
                v385 = v470;
                sub_1000035D0(&v468, *(&v469 + 1));
                v387 = v402;
                (*(*(*(v385 + 8) + 8) + 32))(v386);
                v388 = dispatch thunk of CustomStringConvertible.description.getter();
                v390 = v389;
                v382(v387, v459);
                sub_100007BAC(&v468);
                v391 = sub_1000136BC(v388, v390, &v471);

                *(v378 + 44) = v391;
                *(v378 + 52) = 2082;
                v392 = *(v433 + 24);
                sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
                v393 = v404;
                v394 = dispatch thunk of CustomStringConvertible.description.getter();
                v396 = v395;
                sub_100022C40(v393, type metadata accessor for BeaconStatus);
                v397 = sub_1000136BC(v394, v396, &v471);

                *(v378 + 54) = v397;
                _os_log_impl(&_mh_execute_header, v376, v377, "Beacon %{private,mask.hash}s has %ld peers and is connected by %{private,mask.hash}s since %{public}s.", v378, 0x3Eu);
                swift_arrayDestroy();
                v110 = v431;

                v173 = v459;

                sub_100022C40(v423, type metadata accessor for BeaconStatus);
                v382(v411, v173);
                v398 = v463;
                (v463)(v450, v156);
                (v398)(v447, v156);
                (v398)(v451, v156);
                (v398)(v458, v156);
              }

              else
              {

                swift_bridgeObjectRelease_n();
                sub_100022C40(v374, type metadata accessor for BeaconStatus);
                v399 = v465;
                (v465)(v373, v173);
                sub_100022C40(v423, type metadata accessor for BeaconStatus);
                v399(v411, v173);
                v400 = v463;
                (v463)(v450, v156);
                (v400)(v447, v156);
                (v400)(v451, v156);
                (v400)(v458, v156);
                sub_100007BAC(&v468);
              }

              v401 = v456;
              (*(v452 + 32))(v456, v110, v156);
              v255 = 1;
              (v443)(v401, 0, 1, v156);
              sub_100007BAC(&v472);
              sub_100007BAC(&v475);
              goto LABEL_105;
            }
          }

          (v463)(v110, v156);
          sub_100022C40(v213, type metadata accessor for BeaconStatus);
LABEL_112:
          ++v320;
          sub_100007BAC(&v472);
        }

        while (v320 != v437);
      }

      v358 = v407;
      v445(v407, v461, v173);
      v359 = v438;

      v360 = Logger.logObject.getter();
      v361 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v360, v361))
      {
        v362 = swift_slowAlloc();
        v363 = swift_slowAlloc();
        *&v472 = v363;
        *v362 = 141558531;
        *(v362 + 4) = 1752392040;
        *(v362 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v364 = dispatch thunk of CustomStringConvertible.description.getter();
        v366 = v365;
        v367 = v358;
        v368 = v465;
        (v465)(v367, v459);
        v369 = sub_1000136BC(v364, v366, &v472);

        *(v362 + 14) = v369;
        *(v362 + 22) = 2048;
        v370 = v359[2];

        *(v362 + 24) = v370;

        _os_log_impl(&_mh_execute_header, v360, v361, "Beacon %{private,mask.hash}s has %ld peers and is not connected.", v362, 0x20u);
        sub_100007BAC(v363);

        v173 = v459;

        v368(v411, v173);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v371 = v465;
        (v465)(v358, v173);
        v371(v411, v173);
      }

      v372 = v463;
      (v463)(v450, v156);
      (v372)(v447, v156);
      (v372)(v451, v156);
      (v372)(v458, v156);
      v264 = v443;
      sub_100007BAC(&v475);
      v213 = v461;
LABEL_74:
      v264(v456, 1, 1, v156);
      v255 = 0;
      goto LABEL_106;
    }

    v267 = v474;
    sub_1000035D0(&v472, v473);
    v268 = (*(v267 + 16))(v266, v267);
    v71 = &v402;
    __chkstk_darwin(v268);
    *(&v402 - 2) = v256;
    v269 = v455;
    v271 = sub_100B00224(sub_100B23B00, (&v402 - 4), v270);
    v455 = v269;
    v173 = v459;
    sub_100007BAC(&v472);
    v272 = *(v271 + 56);
    v435 = (v271 + 56);
    v273 = 1 << *(v271 + 32);
    v274 = -1;
    if (v273 < 64)
    {
      v274 = ~(-1 << v273);
    }

    v45 = v274 & v272;
    v434 = (v273 + 63) >> 6;
    LODWORD(v429) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v428 = (v406 + 104);
    v426 = (v406 + 8);
    v425 = (v252 + 8);
    v432 = v271;

    v275 = 0;
    v424 = xmmword_101385D80;
    v75 = &_mh_execute_header;
    v438 = _swiftEmptyArrayStorage;
    v110 = v431;
    v276 = v419;
LABEL_79:
    v76 = v457;
LABEL_80:
    if (v45)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v277 = v275 + 1;
      if (__OFADD__(v275, 1))
      {
        break;
      }

      if (v277 >= v434)
      {

        v156 = v448;
        v319 = v438;
        goto LABEL_109;
      }

      v45 = *&v435[8 * v277];
      ++v275;
      if (v45)
      {
        v275 = v277;
LABEL_85:
        v445(v276, (*(v432 + 48) + *(v252 + 72) * (__clz(__rbit64(v45)) | (v275 << 6))), v173);
        static os_log_type_t.info.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v278 = qword_10177C380;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v279 = swift_allocObject();
        *(v279 + 16) = v424;
        v280 = UUID.uuidString.getter();
        v282 = v281;
        *(v279 + 56) = &type metadata for String;
        *(v279 + 64) = sub_100008C00();
        *(v279 + 32) = v280;
        *(v279 + 40) = v282;
        v437 = v278;
        os_log(_:dso:log:_:_:)();

        v283 = v414;
        static SystemInfo.lockState.getter();
        v284 = v415;
        v285 = v416;
        (*v428)(v415, v429, v416);
        sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
        v71 = dispatch thunk of static Equatable.== infix(_:_:)();
        v286 = *v426;
        (*v426)(v284, v285);
        v286(v283, v285);
        if (v71)
        {
          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          v470 = 0;
          v468 = 0u;
          v469 = 0u;
          v252 = v462;
          v276 = v419;
        }

        else
        {
          v71 = sub_100007F54();
          __chkstk_darwin(v71);
          v276 = v419;
          *(&v402 - 2) = v419;
          v287 = v455;
          sub_1000314D0(sub_100030E14, v71, &v468);
          v455 = v287;
          v173 = v459;

          v252 = v462;
        }

        v45 &= v45 - 1;
        (v465)(v276, v173);
        v110 = v431;
        v76 = v457;
        if (!*(&v469 + 1))
        {
          sub_10000B3A8(&v468, &qword_101696920, &unk_10138B200);
          goto LABEL_80;
        }

        sub_10000A748(&v468, &v472);
        v288 = v438;
        v289 = swift_isUniquelyReferenced_nonNull_native();
        v471 = v288;
        if ((v289 & 1) == 0)
        {
          v288 = sub_1000084AC(0, v288[2] + 1, 1, v288);
          v471 = v288;
        }

        v291 = v288[2];
        v290 = v288[3];
        if (v291 >= v290 >> 1)
        {
          v438 = sub_1000084AC((v290 > 1), v291 + 1, 1, v288);
          v471 = v438;
        }

        else
        {
          v438 = v288;
        }

        v71 = v473;
        v292 = v474;
        v293 = sub_10015049C(&v472, v473);
        v294 = *(*(v71 - 8) + 64);
        __chkstk_darwin(v293);
        v296 = &v402 - ((v295 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v297 + 16))(v296);
        sub_100B039C0(v291, v296, &v471, v71, v292);
        sub_100007BAC(&v472);
        v173 = v459;
        v110 = v431;
        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_142:
    swift_once();
  }

  v213 = v461;
  if (qword_101694BE8 != -1)
  {
LABEL_144:
    swift_once();
  }

  v214 = type metadata accessor for Logger();
  sub_1000076D4(v214, qword_10177BA08);
  v215 = v424;
  v216 = v459;
  v445(v424, v213, v459);
  v173(v75, v110, v156);
  v217 = Logger.logObject.getter();
  v218 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v217, v218))
  {
    v219 = swift_slowAlloc();
    v475 = swift_slowAlloc();
    *v219 = 141558531;
    *(v219 + 4) = 1752392040;
    *(v219 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v220 = v218;
    v221 = dispatch thunk of CustomStringConvertible.description.getter();
    v223 = v222;
    v465 = *(v462 + 8);
    (v465)(v215, v216);
    v224 = sub_1000136BC(v221, v223, &v475);

    *(v219 + 14) = v224;
    *(v219 + 22) = 2082;
    sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
    v225 = dispatch thunk of CustomStringConvertible.description.getter();
    v227 = v226;
    v228 = v75;
    v229 = v463;
    (v463)(v228, v156);
    v230 = sub_1000136BC(v225, v227, &v475);

    *(v219 + 24) = v230;
    _os_log_impl(&_mh_execute_header, v217, v220, "Beacon %{private,mask.hash}s is connected since %{public}s.", v219, 0x20u);
    swift_arrayDestroy();
    v76 = v452;

    v231 = v443;
    (v229)(v447, v156);
    (v229)(v451, v156);
    (v229)(v458, v156);
    v213 = v461;
    v173 = v216;
  }

  else
  {

    v253 = v463;
    (v463)(v75, v156);
    v465 = *(v462 + 8);
    (v465)(v215, v216);
    (v253)(v110, v156);
    (v253)(v451, v156);
    (v253)(v458, v156);
    v173 = v216;
    v231 = v443;
  }

  v254 = v456;
  (*(v76 + 32))(v456, v450, v156);
  v255 = 1;
  v231(v254, 0, 1, v156);
LABEL_106:
  (v465)(v213, v173);
  return v255;
}

uint64_t sub_10003E938(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a2 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v5 + 72);
  while (1)
  {
    sub_100041EB0(v9, v7);
    v16[3] = v3;
    v16[4] = &off_10163B190;
    v11 = sub_1000280DC(v16);
    sub_100041EB0(v7, v11);
    swift_getAtKeyPath();
    v12 = v15[8];
    sub_100007BAC(v16);
    if ((v12 & 1) == 0)
    {
      break;
    }

    sub_100041F5C(v7);
    v9 += v10;
    if (!--v8)
    {
      return 0;
    }
  }

  v17[3] = v3;
  v17[4] = &off_10163B190;
  v14 = sub_1000280DC(v17);
  sub_1000420BC(v7, v14);
  swift_getAtKeyPath();
  sub_100007BAC(v17);
  return v16[0];
}

void *sub_10003EAC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_10003EB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v302 = &v297 - v6;
  v310 = sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  v7 = *(*(v310 - 8) + 64);
  __chkstk_darwin(v310);
  v312 = &v297 - v8;
  v9 = type metadata accessor for KeyDropLostItemDates(0);
  v309 = *(v9 - 8);
  v10 = *(v309 + 64);
  __chkstk_darwin(v9);
  v304 = &v297 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v306 = &v297 - v14;
  v15 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v339 = &v297 - v17;
  v341 = type metadata accessor for SharedBeaconRecord(0);
  v321 = *(v341 - 8);
  v18 = *(v321 + 64);
  v19 = __chkstk_darwin(v341);
  v303 = &v297 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v340 = &v297 - v22;
  v23 = __chkstk_darwin(v21);
  v307 = &v297 - v24;
  v308 = v25;
  __chkstk_darwin(v23);
  v342 = &v297 - v26;
  v27 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v305 = &v297 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v318 = &v297 - v31;
  v32 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v338 = &v297 - v34;
  v35 = type metadata accessor for OwnedBeaconRecord();
  v337 = *(v35 - 8);
  v36 = *(v337 + 64);
  __chkstk_darwin(v35);
  v319 = &v297 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v38 = *(*(v333 - 8) + 64);
  __chkstk_darwin(v333);
  v334 = &v297 - v39;
  v335 = type metadata accessor for BeaconNamingRecord();
  v332 = *(v335 - 8);
  v40 = *(v332 + 64);
  __chkstk_darwin(v335);
  v320 = &v297 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v331 = &v297 - v44;
  v330 = type metadata accessor for BeaconProductInfoRecord();
  v329 = *(v330 - 8);
  v45 = *(v329 + 64);
  __chkstk_darwin(v330);
  v317 = &v297 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v327 = &v297 - v49;
  v328 = type metadata accessor for KeyAlignmentRecord();
  v326 = *(v328 - 8);
  v50 = *(v326 + 64);
  __chkstk_darwin(v328);
  v316 = &v297 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v52 = *(*(v324 - 8) + 64);
  v53 = __chkstk_darwin(v324);
  v336 = &v297 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v325 = (&v297 - v56);
  __chkstk_darwin(v55);
  v354 = &v297 - v57;
  v355 = type metadata accessor for Date();
  v350 = *(v355 - 8);
  v58 = *(v350 + 64);
  v59 = __chkstk_darwin(v355);
  v298 = &v297 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v299 = &v297 - v62;
  v63 = __chkstk_darwin(v61);
  v315 = &v297 - v64;
  v65 = __chkstk_darwin(v63);
  v314 = &v297 - v66;
  v67 = __chkstk_darwin(v65);
  v323 = &v297 - v68;
  __chkstk_darwin(v67);
  v348 = &v297 - v69;
  v70 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v71 = *(*(v70 - 8) + 64);
  v72 = __chkstk_darwin(v70);
  v322 = &v297 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v349 = &v297 - v74;
  v75 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v76 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75 - 8);
  v78 = &v297 - v77;
  v356 = type metadata accessor for UUID();
  v343 = *(v356 - 8);
  v79 = *(v343 + 64);
  v80 = __chkstk_darwin(v356);
  v82 = &v297 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v84 = &v297 - v83;
  v372[3] = v35;
  v372[4] = sub_1003FD7F0(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v85 = sub_1000280DC(v372);
  sub_100032504(a1, v85, type metadata accessor for OwnedBeaconRecord);
  v359 = [objc_allocWithZone(SPBeacon) init];
  v347 = v35;
  v86 = *(v85 + *(v35 + 68));
  v346 = *(v85 + *(v35 + 64));
  v345 = v86;
  v87 = sub_100314604(v346, v86);
  v344 = v84;
  v360 = a2;
  v311 = v9;
  if (v88 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000076D4(v89, qword_10177BA08);
    sub_10001F280(v372, &v367);
    sub_10001F280(v372, &v362);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v347;
    if (v92)
    {
      v94 = swift_slowAlloc();
      *v94 = 134218240;
      v95 = *(sub_1000035D0(&v367, *(&v368 + 1)) + v93[16]);
      sub_100007BAC(&v367);
      *(v94 + 4) = v95;
      *(v94 + 12) = 2048;
      v96 = *(sub_1000035D0(&v362, *(&v363 + 1)) + v93[17]);
      sub_100007BAC(&v362);
      *(v94 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v90, v91, "Unable to create AccessoryProductData from %ld/%ld", v94, 0x16u);
    }

    else
    {
      sub_100007BAC(&v362);
      sub_100007BAC(&v367);
    }

    UUID.init(uuid:)();
  }

  else
  {
    v97 = v87;
    v98 = v88;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v367 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v99 = v367;
    v362 = v367;
    sub_100017D5C(v367, *(&v367 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v97, v98);
    sub_100016590(v99, *(&v99 + 1));
    sub_100016590(v99, *(&v99 + 1));
    v93 = v347;
  }

  v100 = v93[5];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v102 = v359;
  [v359 setIdentifier:isa];

  v103 = (v85 + v93[14]);
  v104 = *v103;
  v105 = v103[1];
  v106 = String._bridgeToObjectiveC()();
  [v102 setModel:v106];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100405DEC();
  v107 = Set._bridgeToObjectiveC()().super.isa;
  [v102 setShares:v107];

  v108 = (v85 + v93[15]);
  v109 = *v108;
  v110 = v108[1];
  v111 = String._bridgeToObjectiveC()();
  [v102 setSystemVersion:v111];

  v112 = UUID._bridgeToObjectiveC()().super.isa;
  [v102 setProductUUID:v112];

  [v102 setVendorId:v346];
  [v102 setProductId:v345];
  v313 = v93[8];
  v113 = Date._bridgeToObjectiveC()().super.isa;
  [v102 setPairingDate:v113];

  v114 = sub_100D60CD0();
  [v102 setType:v114];

  v353 = v100;
  sub_100ABD87C(v78);
  v115 = type metadata accessor for LostModeRecord();
  if ((*(*(v115 - 8) + 48))(v78, 1, v115) == 1)
  {
    sub_10000B3A8(v78, &unk_1016A99E0, &qword_1013A07B0);
    v116 = 0;
  }

  else
  {
    v116 = sub_100E78AA8();
    sub_10040A66C(v78, type metadata accessor for LostModeRecord);
  }

  v117 = v343;
  v118 = v359;
  [v359 setLostModeInfo:v116];

  v119 = *(v70 + 48);
  v120 = *(v117 + 16);
  v121 = v356;
  v352 = v117 + 16;
  v351 = v120;
  v120(v82, v85 + v353, v356);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v122 = sub_100035730(v82, 0, 0);
  v123 = v349;
  v124 = sub_10003ABC0(&v349[v119], v82, v122, 1);

  v125 = *(v117 + 8);
  v358 = v117 + 8;
  v357 = v125;
  v125(v82, v121);
  *v123 = v124 & 1;
  [v118 setConnected:?];
  v126 = v123;
  v127 = v322;
  sub_1000D2A70(v126, v322, &unk_1016AA420, &unk_1013BCFE0);
  v128 = *(v70 + 48);
  v129 = v350;
  v130 = *(v350 + 48);
  v131 = v355;
  v301 = v350 + 48;
  v300 = v130;
  v132 = 0;
  if (v130(v127 + v128, 1, v355) != 1)
  {
    v132 = Date._bridgeToObjectiveC()().super.isa;
    (*(v129 + 8))(v127 + v128, v131);
  }

  v133 = v359;
  [v359 setConnectedStateExpiryDate:v132];

  [v133 setIsAppleAudioAccessory:{sub_100E0EA64(v346, v345)}];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v134 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107485C(v367);

  Date.init(timeIntervalSinceNow:)();
  v135 = *(v360 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v322 = 0;
  v136 = v367;
  sub_10001F280(v372, &v367);
  v137 = swift_allocObject();
  *(v137 + 16) = v136;
  sub_100031694(&v367, v137 + 24);
  v346 = v136;

  v138 = v354;
  unsafeFromAsyncTask<A>(_:)();

  v139 = v325;
  sub_1000D2A70(v138, v325, &unk_1016AF8A0, &unk_10139D7C0);
  v140 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v141 = *(*(v140 - 8) + 48);
  if (v141(v139, 1, v140) == 1)
  {
    sub_10000B3A8(v139, &unk_1016AF8A0, &unk_10139D7C0);
    v142 = 1;
  }

  else
  {
    v142 = *v139;
    sub_10000B3A8(v139, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v143 = v323;
  v144 = v82;
  [v359 setKeySyncLastObservedIndex:v142];
  v145 = v336;
  sub_1000D2A70(v354, v336, &unk_1016AF8A0, &unk_10139D7C0);
  if (v141(v145, 1, v140) == 1)
  {
    sub_10000B3A8(v145, &unk_1016AF8A0, &unk_10139D7C0);
    v146 = v350;
    v147 = v355;
    v325 = *(v350 + 16);
    (v325)(v143, v85 + v313, v355);
  }

  else
  {
    v146 = v350;
    v148 = &v145[*(v140 + 36)];
    v149 = v314;
    v147 = v355;
    v325 = *(v350 + 16);
    (v325)(v314, v148, v355);
    sub_10000B3A8(v145, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v146 + 32))(v143, v149, v147);
  }

  v150 = v356;
  v151 = v85;
  v152 = Date._bridgeToObjectiveC()().super.isa;
  v153 = *(v146 + 8);
  v153(v143, v147);
  v154 = v359;
  [v359 setKeySyncLastIndexObservationDate:v152];

  [v154 setKeySyncWildIndexFallback:1];
  v155 = v151;
  v156 = v151 + v353;
  v157 = v144;
  v351(v144, v156, v150);
  v158 = *(v360 + 168);
  v159 = v327;
  sub_100B2DA4C(v327);
  v357(v157, v150);
  v160 = v328;
  v161 = (*(v326 + 48))(v159, 1, v328);
  v345 = v146 + 8;
  v336 = v153;
  if (v161 == 1)
  {
    sub_10000B3A8(v159, &qword_10169F328, &unk_1013CB040);
    [v154 setKeyAlignmentLastObservedIndex:0];
    v162 = v315;
    static Date.distantPast.getter();
    v163 = Date._bridgeToObjectiveC()().super.isa;
    v153(v162, v147);
    [v154 setKeyAlignmentLastIndexObservationDate:v163];
  }

  else
  {
    v164 = v316;
    sub_10040A014(v159, v316, type metadata accessor for KeyAlignmentRecord);
    [v154 setKeyAlignmentLastObservedIndex:*(v164 + *(v160 + 28))];
    v165 = v164 + *(v160 + 32);
    v166 = Date._bridgeToObjectiveC()().super.isa;
    [v154 setKeyAlignmentLastIndexObservationDate:v166];

    sub_10040A66C(v164, type metadata accessor for KeyAlignmentRecord);
  }

  v167 = [v154 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v168 = v331;
  sub_100AC1584(v157, v331);
  v169 = v356;
  v357(v157, v356);
  v170 = (*(v329 + 48))(v168, 1, v330);
  v171 = v335;
  v172 = v334;
  if (v170 == 1)
  {
    sub_10000B3A8(v168, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v173 = v317;
    sub_10040A014(v168, v317, type metadata accessor for BeaconProductInfoRecord);
    v174 = sub_10083B890();
    [v154 setAccessoryProductInfo:v174];

    sub_10040A66C(v173, type metadata accessor for BeaconProductInfoRecord);
  }

  v175 = (v351)(v157, v155 + v353, v169);
  v176 = v360;
  v177 = *(v360 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v175);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v357(v157, v169);
  if ((*(v332 + 48))(v172, 1, v171) != 1)
  {
    v191 = v320;
    sub_10040A014(v172, v320, type metadata accessor for BeaconNamingRecord);
    v192 = (v191 + v171[8]);
    v193 = *v192;
    v194 = v192[1];
    v195 = String._bridgeToObjectiveC()();
    v183 = v359;
    [v359 setName:v195];

    v196 = *(v191 + v171[7]);
    v197 = sub_1012BD7E8(v196);
    v198 = v197;
    if (v196 == SPBeaconRoleIdOther && (v199 = (v191 + v171[9]), v199[1]) && v197)
    {
      v200 = *v199;
      v201 = [v197 role];
      v202 = v340;
      if (!v201)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v201 = String._bridgeToObjectiveC()();
      }

      v203 = objc_allocWithZone(SPBeaconRole);
      v204 = String._bridgeToObjectiveC()();
      v205 = [v203 initWithRoleId:v196 role:v201 roleEmoji:v204];

      [v183 setRole:v205];
      v169 = v356;
      v206 = v360;
      v191 = v320;
    }

    else
    {
      [v183 setRole:v197];
      v202 = v340;
      v206 = v360;
    }

    v187 = v347;

    sub_10040A66C(v191, type metadata accessor for BeaconNamingRecord);
    v207 = v341;
    goto LABEL_57;
  }

  sub_10000B3A8(v172, &unk_1016B29E0, &unk_1013B70E0);
  sub_10001F280(v372, &v361);
  v178 = swift_allocObject();
  *(v178 + 16) = v176;
  sub_100031694(&v361, v178 + 24);

  sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
  unsafeFromAsyncTask<A>(_:)();

  v367 = v362;
  v368 = v363;
  v369 = v364;
  v370 = v365;
  v179 = v366;
  v371 = v366;
  if (*(&v362 + 1))
  {
    v180 = v369;
    v181 = v368;
    v182 = String._bridgeToObjectiveC()();
    v183 = v359;
    [v359 setName:v182];

    v184 = sub_1012BD7E8(v181);
    v185 = v184;
    if (v181 == SPBeaconRoleIdOther && v180 && v184)
    {

      v186 = [v185 role];
      v187 = v347;
      if (!v186)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v186 = String._bridgeToObjectiveC()();
      }

      v188 = objc_allocWithZone(SPBeaconRole);
      v189 = String._bridgeToObjectiveC()();

      v190 = [v188 initWithRoleId:v181 role:v186 roleEmoji:v189];

      [v183 setRole:v190];
    }

    else
    {
      [v183 setRole:v184];
      v187 = v347;
    }

    v169 = v356;
    v207 = v341;
    v202 = v340;
    v206 = v360;
    if (v179)
    {

      v208 = String._bridgeToObjectiveC()();
      sub_10000B3A8(&v367, &unk_1016AF910, &unk_10138C4C0);
    }

    else
    {
      sub_10000B3A8(&v367, &unk_1016AF910, &unk_10138C4C0);
      v208 = 0;
    }

    [v183 setSerialNumber:v208];

LABEL_57:
    v220 = v339;
    v221 = v338;
    goto LABEL_58;
  }

  v183 = v359;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v209 = type metadata accessor for Logger();
  sub_1000076D4(v209, qword_10177BA08);
  sub_10001F280(v372, &v362);
  v210 = Logger.logObject.getter();
  v211 = static os_log_type_t.error.getter();
  v212 = os_log_type_enabled(v210, v211);
  v202 = v340;
  if (v212)
  {
    v213 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    *&v361 = v214;
    *v213 = 141558275;
    *(v213 + 4) = 1752392040;
    *(v213 + 12) = 2081;
    v215 = sub_1000035D0(&v362, *(&v363 + 1));
    v187 = v347;
    v351(v157, &v215[v347[5]], v356);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v216 = dispatch thunk of CustomStringConvertible.description.getter();
    v218 = v217;
    v357(v157, v356);
    sub_100007BAC(&v362);
    v219 = sub_1000136BC(v216, v218, &v361);

    *(v213 + 14) = v219;
    _os_log_impl(&_mh_execute_header, v210, v211, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v213, 0x16u);
    sub_100007BAC(v214);
    v169 = v356;

    v207 = v341;
    v220 = v339;
    v221 = v338;
  }

  else
  {

    sub_100007BAC(&v362);
    v207 = v341;
    v220 = v339;
    v221 = v338;
    v187 = v347;
  }

  v251 = String._bridgeToObjectiveC()();
  [v183 setName:v251];

  v206 = v360;
LABEL_58:
  sub_10001F280(v372, &v367);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v222 = swift_dynamicCast();
  v223 = *(v337 + 56);
  if (v222)
  {
    v223(v221, 0, 1, v187);
    v224 = v221;
    v225 = v319;
    sub_10040A014(v224, v319, type metadata accessor for OwnedBeaconRecord);
    v226 = v225 + v187[6];
    sub_1010DA578();
    v227 = String._bridgeToObjectiveC()();

    [v183 setStableIdentifier:v227];

    v228 = v318;
    sub_1000D2A70(v225 + v187[7], v318, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v343 + 48))(v228, 1, v169) == 1)
    {
      v229 = 0;
    }

    else
    {
      v229 = UUID._bridgeToObjectiveC()().super.isa;
      v357(v228, v169);
    }

    v245 = v336;
    [v183 setGroupIdentifier:v229];

    sub_100B0E4A8(v225);
    if (v246)
    {
      v247 = String._bridgeToObjectiveC()();
    }

    else
    {
      v247 = 0;
    }

    [v183 setSerialNumber:v247];

    [v183 setPartIdentifier:sub_100B0E7A8(v225)];
    [v183 setBatteryLevel:*(v225 + v187[19])];
    [v183 setIsZeus:*(v225 + v187[20])];
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    [v183 setOwner:qword_10177C088];
    [v183 setAccepted:1];
    v248 = String._bridgeToObjectiveC()();
    [v183 setCorrelationIdentifier:v248];

    [v183 setInternalShareType:-1];
    [v183 setOwnerBeaconIdentifier:0];

    sub_10040A66C(v225, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v354, &unk_1016AF8A0, &unk_10139D7C0);
    (v245)(v348, v355);
    sub_10000B3A8(v349, &unk_1016AA420, &unk_1013BCFE0);
    v357(v344, v169);
    goto LABEL_93;
  }

  v223(v221, 1, 1, v187);
  sub_10000B3A8(v221, &unk_1016A9A20, &qword_10138B280);
  sub_10001F280(v372, &v367);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_10000B3A8(v354, &unk_1016AF8A0, &unk_10139D7C0);
    (v336)(v348, v355);
    sub_10000B3A8(v349, &unk_1016AA420, &unk_1013BCFE0);
    v357(v344, v169);
    (*(v321 + 56))(v220, 1, 1, v207);
    sub_10000B3A8(v220, &unk_101698C30, &unk_101392630);
    goto LABEL_93;
  }

  (*(v321 + 56))(v220, 0, 1, v207);
  v230 = v220;
  v231 = v342;
  sub_10040A014(v230, v342, type metadata accessor for SharedBeaconRecord);
  v232 = String._bridgeToObjectiveC()();
  [v183 setStableIdentifier:v232];

  v233 = sub_100EB3708(*(v231 + v207[7]), *(v231 + v207[7] + 8), *(v231 + v207[7] + 16));
  [v183 setOwner:v233];

  [v183 setAccepted:*(v231 + v207[13])];
  v234 = (v231 + v207[8]);
  v235 = *v234;
  v236 = v234[1];
  v237 = String._bridgeToObjectiveC()();
  [v183 setCorrelationIdentifier:v237];

  v238 = v183;
  [v183 setInternalShareType:*(v231 + v207[16])];
  v239 = v231 + v207[20];
  v240 = v306;
  sub_1000D2A70(v239, v306, &unk_1016AF890, &qword_1013926D0);
  v241 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v242 = (*(*(v241 - 8) + 48))(v240, 1, v241);
  v243 = v355;
  if (v242 == 1)
  {
    sub_10000B3A8(v240, &unk_1016AF890, &qword_1013926D0);
    (*(v343 + 56))(v305, 1, 1, v169);
    v244 = 0;
  }

  else
  {
    v249 = v240 + *(v241 + 20);
    v250 = v305;
    sub_1000D2A70(v249, v305, &qword_1016980D0, &unk_10138F3B0);
    sub_10040A66C(v240, type metadata accessor for SharedBeaconRecord.PropertyListContent);
    if ((*(v343 + 48))(v250, 1, v169) == 1)
    {
      v244 = 0;
    }

    else
    {
      v252.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v253 = v250;
      v244 = v252.super.isa;
      v357(v253, v169);
    }
  }

  [v238 setOwnerBeaconIdentifier:v244];

  v254 = v307;
  sub_100032504(v342, v307, type metadata accessor for SharedBeaconRecord);
  v255 = (*(v321 + 80) + 24) & ~*(v321 + 80);
  v256 = swift_allocObject();
  *(v256 + 16) = v206;
  sub_10040A014(v254, v256 + v255, type metadata accessor for SharedBeaconRecord);

  v257 = v312;
  unsafeFromAsyncTask<A>(_:)();

  v258 = v311;
  if ((*(v309 + 48))(v257, 1, v311) == 1)
  {
    v259 = &unk_101698C20;
    v260 = &qword_101390748;
LABEL_81:
    sub_10000B3A8(v257, v259, v260);
    [v238 setLostModeInfo:0];
    v262 = v303;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v263 = type metadata accessor for Logger();
    sub_1000076D4(v263, qword_10177A560);
    sub_100032504(v342, v262, type metadata accessor for SharedBeaconRecord);
    v264 = Logger.logObject.getter();
    v265 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v264, v265))
    {
      v266 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      *&v367 = v267;
      *v266 = 141558275;
      *(v266 + 4) = 1752392040;
      *(v266 + 12) = 2081;
      v268 = v207[5];
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
      v269 = dispatch thunk of CustomStringConvertible.description.getter();
      v270 = v169;
      v272 = v271;
      sub_10040A66C(v262, type metadata accessor for SharedBeaconRecord);
      v273 = sub_1000136BC(v269, v272, &v367);

      *(v266 + 14) = v273;
      _os_log_impl(&_mh_execute_header, v264, v265, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v266, 0x16u);
      sub_100007BAC(v267);

      sub_10000B3A8(v354, &unk_1016AF8A0, &unk_10139D7C0);
      (v336)(v348, v243);
      sub_10000B3A8(v349, &unk_1016AA420, &unk_1013BCFE0);
      v274 = v344;
      v275 = v270;
    }

    else
    {

      sub_10040A66C(v262, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v354, &unk_1016AF8A0, &unk_10139D7C0);
      (v336)(v348, v243);
      sub_10000B3A8(v349, &unk_1016AA420, &unk_1013BCFE0);
      v274 = v344;
      v275 = v169;
    }

    v357(v274, v275);
    sub_10040A66C(v342, type metadata accessor for SharedBeaconRecord);
    v183 = v238;
    goto LABEL_93;
  }

  v261 = v304;
  sub_10040A014(v257, v304, type metadata accessor for KeyDropLostItemDates);
  v257 = v302;
  sub_1000D2A70(v261 + *(v258 + 20), v302, &unk_101696900, &unk_10138B1E0);
  if (v300(v257, 1, v243) == 1)
  {
    sub_10040A66C(v261, type metadata accessor for KeyDropLostItemDates);
    v259 = &unk_101696900;
    v260 = &unk_10138B1E0;
    goto LABEL_81;
  }

  v276 = v299;
  (*(v350 + 32))(v299, v257, v243);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v277 = type metadata accessor for Logger();
  sub_1000076D4(v277, qword_10177A560);
  sub_100032504(v342, v202, type metadata accessor for SharedBeaconRecord);
  v278 = v298;
  (v325)(v298, v276, v243);
  v279 = Logger.logObject.getter();
  v280 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v279, v280))
  {
    v281 = swift_slowAlloc();
    v360 = swift_slowAlloc();
    *&v367 = v360;
    *v281 = 141558531;
    *(v281 + 4) = 1752392040;
    *(v281 + 12) = 2081;
    v282 = v207[5];
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v283 = dispatch thunk of CustomStringConvertible.description.getter();
    v285 = v284;
    sub_10040A66C(v202, type metadata accessor for SharedBeaconRecord);
    v286 = sub_1000136BC(v283, v285, &v367);

    *(v281 + 14) = v286;
    *(v281 + 22) = 2080;
    sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date);
    v287 = dispatch thunk of CustomStringConvertible.description.getter();
    v289 = v288;
    v290 = v336;
    (v336)(v278, v243);
    v291 = sub_1000136BC(v287, v289, &v367);
    v169 = v356;

    *(v281 + 24) = v291;
    _os_log_impl(&_mh_execute_header, v279, v280, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v281, 0x20u);
    swift_arrayDestroy();

    v276 = v299;
  }

  else
  {

    v290 = v336;
    (v336)(v278, v243);
    sub_10040A66C(v202, type metadata accessor for SharedBeaconRecord);
  }

  v292 = objc_allocWithZone(SPLostModeInfo);
  v293 = Date._bridgeToObjectiveC()().super.isa;
  v294 = [v292 initWithMessage:0 email:0 phoneNumber:0 timestamp:v293];

  [v238 setLostModeInfo:v294];

  (v290)(v276, v243);
  sub_10040A66C(v304, type metadata accessor for KeyDropLostItemDates);
  sub_10000B3A8(v354, &unk_1016AF8A0, &unk_10139D7C0);
  v295 = v243;
  v183 = v238;
  (v290)(v348, v295);
  sub_10000B3A8(v349, &unk_1016AA420, &unk_1013BCFE0);
  v357(v344, v169);
  sub_10040A66C(v342, type metadata accessor for SharedBeaconRecord);
LABEL_93:
  sub_100007BAC(v372);
  return v183;
}

uint64_t sub_100041C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 0x2C)
      {
        return v14 - 43;
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

uint64_t sub_100041DA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 24)) = a2 + 43;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100041EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultConfigurationLayer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100041F5C(uint64_t a1)
{
  v2 = type metadata accessor for DefaultConfigurationLayer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100041FB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  KeyPath = swift_getKeyPath();
  v8 = sub_10003E938(KeyPath, a1);
  if (v9)
  {
    _StringGuts.grow(_:)(40);
    v12._object = 0x800000010134CA80;
    v12._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v12);
    sub_1000BC4D4(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v10 = v8;

    return v10;
  }

  return result;
}

uint64_t sub_1000420BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultConfigurationLayer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100042134(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000421D8(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_100042234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_1000210EC(a2);
    if (v14)
    {
      v15 = v13;
      v16 = *(v12 + 56);
      v17 = sub_1000BC4D4(a4, a5);
      v18 = *(v17 - 8);
      sub_1000D2A70(v16 + *(v18 + 72) * v15, a6, a4, a5);

      return (*(v18 + 56))(a6, 0, 1, v17);
    }
  }

  v20 = sub_1000BC4D4(a4, a5);
  return (*(*(v20 - 8) + 56))(a6, 1, 1, v20);
}

uint64_t sub_1000423C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000424A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000424C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100042584(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000BC4D4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100042608()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100042690()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100042768()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000427A8()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000428C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042908()
{
  v1 = v0[2];

  sub_100016590(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042948()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100042A24(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 32);

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100042A78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042AB8()
{
  v1 = sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100042B88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100042C50()
{
  sub_100016590(*(v0 + 24), *(v0 + 32));
  sub_100016590(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100042C90()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 32) & ~v2;
  v5 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v0 + v4, 1, v8))
  {
    (*(v9 + 8))(v0 + v4, v8);
  }

  v11 = *(v0 + v5);

  if (!v10(v0 + v6, 1, v8))
  {
    (*(v9 + 8))(v0 + v6, v8);
  }

  v12 = (v6 + v3) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v13 + 8, v2 | 7);
}

uint64_t sub_100042E34(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100042E7C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v35 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = (v2 + 24) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = (v2 + 24) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v31 = *(v5 + v1[14] + 8);

  v32 = *(v5 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v35, v2 | 7);
}

uint64_t sub_1000431E8(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100043238(uint64_t a1)
{
  v3 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100043284()
{
  v1 = (type metadata accessor for MemberSharingCircle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[8], v8);
  v9(v0 + v3 + v1[9], v8);
  v9(v0 + v3 + v1[10], v8);
  v10 = *(v0 + v3 + v1[11]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000433E4(void (*a1)(void))
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v1 + v5, v3);
  a1(*(v1 + v6));

  return _swift_deallocObject(v1, v6 + 8);
}

uint64_t sub_1000434CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  v8 = *(v0 + 136);

  v9 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10004354C()
{
  v1 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004361C()
{
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v2 = *(*(MyServiceDevice - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v28 = *(*(MyServiceDevice - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v5 + MyServiceDevice[5] + 8);

  v9 = *(v5 + MyServiceDevice[6] + 8);

  (*(v7 + 8))(v5 + MyServiceDevice[7], v6);
  v10 = *(v5 + MyServiceDevice[8] + 8);

  v11 = *(v5 + MyServiceDevice[10] + 8);

  v12 = *(v5 + MyServiceDevice[11] + 8);

  v13 = *(v5 + MyServiceDevice[12] + 8);

  v14 = *(v5 + MyServiceDevice[13] + 8);

  v15 = *(v5 + MyServiceDevice[14] + 8);

  v16 = *(v5 + MyServiceDevice[20] + 8);

  v17 = MyServiceDevice[22];
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v21 = MyServiceDevice[23];
  if (!v20(v5 + v21, 1, v18))
  {
    (*(v19 + 8))(v5 + v21, v18);
  }

  v22 = MyServiceDevice[24];
  if (!v20(v5 + v22, 1, v18))
  {
    (*(v19 + 8))(v5 + v22, v18);
  }

  v23 = *(v5 + MyServiceDevice[26] + 8);

  v24 = MyServiceDevice[31];
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  return _swift_deallocObject(v0, v3 + v28, v2 | 7);
}

uint64_t sub_10004397C()
{
  v1 = sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100043A10(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000BC4D4(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v2 + 16);
  swift_unknownObjectRelease();
  v8 = *(v2 + 32);

  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_100043AD8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100043BB0(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];

  v6 = v2[3];

  a1(v2[4]);

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100043C14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100043C54()
{
  v1 = v0[28];

  v2 = v0[32];
  v3 = v0[26];
  v4 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100043D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100043E00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(v4 + 248) = a1;
  *(v4 + 256) = v1;

  v7 = *(v3 + 40);
  if (v1)
  {
    v8 = sub_1008E4C3C;
  }

  else
  {
    v8 = sub_100043F34;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100043F34()
{
  v1 = v0[31];
  if (*(v1 + 16))
  {
    v2 = v0[18];
    v3 = v0[16];
    v4 = *(v0[17] + 80);
    sub_10002963C(v1 + ((v4 + 32) & ~v4), v2, type metadata accessor for KeyGenerationBeaconInfo);

    v5 = *(v2 + *(v3 + 28));
    sub_10001F210(v2, type metadata accessor for KeyGenerationBeaconInfo);
    if (v5 == 3)
    {
      v6 = async function pointer to daemon.getter[1];
      v7 = swift_task_alloc();
      v0[33] = v7;
      *v7 = v0;
      v7[1] = sub_1008E3398;

      return daemon.getter();
    }
  }

  else
  {
    v8 = v0[31];
  }

  v9 = v0[29];
  v10 = v0[23];

  sub_10001F210(v10, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v12 = v0[22];
  v11 = v0[23];
  v14 = v0[18];
  v13 = v0[19];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[11];
  v18 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100044130(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for UUID();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v2[15] = *(v5 + 64);
  v2[16] = swift_task_alloc();
  v2[5] = type metadata accessor for MemberCircleRevokeManager();
  v2[6] = &off_1016634E8;
  v2[2] = a2;

  return _swift_task_switch(sub_100044244, 0, 0);
}

uint64_t sub_100044244()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  (*(v4 + 16))(v1, *(v0 + 96), v3);
  sub_10001F280(v0 + 16, v0 + 56);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v5, v1, v3);
  sub_10000A748((v0 + 56), v7 + v6);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_100007BAC((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000443B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100007BAC((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_10004444C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v12 = *v1;
  v3[25] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[26] = v6;
  v7 = type metadata accessor for Daemon();
  v3[27] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[28] = v9;
  v10 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_10004462C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10004462C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[29] = a1;

  v7 = v4[25];
  if (v1)
  {
    v8 = v4[5];

    return _swift_task_switch(sub_1008E4980, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[30] = v9;
    *v9 = v6;
    v9[1] = sub_100043E00;
    v10 = v4[23];

    return sub_100028F54(v10);
  }
}

uint64_t sub_1000447EC()
{
  v2 = v0[6];
  v1 = v0[7];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100044870()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BBA4C;

  return sub_100044908(v2);
}

uint64_t sub_100044928()
{
  if (qword_101694F40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C200);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Located state reported.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100E9C428;
  v6 = *(v0 + 16);

  return sub_100E9C520();
}

uint64_t sub_100044A74()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C200);
  v1 = sub_1000076D4(v0, qword_10177C200);
  if (qword_101694F38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C1E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_100044B3C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100044BA0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C1E8);
  sub_1000076D4(v0, qword_10177C1E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100044C20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100853494;

  return sub_100044CB0();
}

uint64_t sub_100044CB0()
{
  v1[20] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v3 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[23] = v4;
  v5 = *(v4 - 8);
  v1[24] = v5;
  v1[25] = *(v5 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100044E00, v0, 0);
}

uint64_t sub_100044E00()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[29] = sub_1000076D4(v1, qword_10177CE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start publishing own device beacons.", v4, 2u);
  }

  v5 = v0[28];

  static Date.trustedNow.getter(v5);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_100853678;
  v7 = v0[20];

  return sub_100045274();
}

uint64_t static Date.trustedNow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v14[-v4];
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v15[0] = 0x7365547265646E75;
  v15[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v14[0] == 1)
  {
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 isInternalBuild];

    if (v7)
    {
      if (qword_101694418 != -1)
      {
        swift_once();
      }

      v8 = sub_1000076D4(v2, qword_101696A00);
      swift_beginAccess();
      sub_1000D3410(v8, v5);
      v9 = type metadata accessor for Date();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) != 1)
      {
        return (*(v10 + 32))(a1, v5, v9);
      }

      sub_1000D3480(v5);
    }
  }

  My = type metadata accessor for Feature.FindMy();
  v15[3] = My;
  v15[4] = sub_10004521C();
  v12 = sub_1000280DC(v15);
  (*(*(My - 8) + 104))(v12, enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v15);
  if ((My & 1) == 0)
  {
    return Date.init()();
  }

  sub_100F0FFAC();
  return Date.init(timeIntervalSinceReferenceDate:)();
}

unint64_t sub_10004521C()
{
  result = qword_1016AF950;
  if (!qword_1016AF950)
  {
    type metadata accessor for Feature.FindMy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF950);
  }

  return result;
}

uint64_t sub_100045274()
{
  v1[15] = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1[16] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v4 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v8 = type metadata accessor for LocationFetcher();
  v1[22] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000455D8, v0, 0);
}

uint64_t type metadata accessor for LocationFetcher()
{
  result = qword_1016A5BE0;
  if (!qword_1016A5BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004540C()
{
  type metadata accessor for BeaconStore(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BeaconObservationStore();
    if (v1 <= 0x3F)
    {
      sub_100008BB8(319, &qword_101695570, OS_dispatch_queue_ptr);
      if (v2 <= 0x3F)
      {
        sub_10062CDC4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Logger();
          if (v4 <= 0x3F)
          {
            sub_10062CE28();
            if (v5 <= 0x3F)
            {
              type metadata accessor for DeviceIdentityUtility();
              if (v6 <= 0x3F)
              {
                type metadata accessor for MemberCircleRevokeManager();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for MemberCircleRevokeAssistant();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for BeaconObservationStore()
{
  result = qword_1016A96D8;
  if (!qword_1016A96D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000455D8()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching own device locations from disk before publishing own devices.", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_100045724;

  return daemon.getter();
}

uint64_t sub_100045724(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v12 = *v1;
  v3[25] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[26] = v6;
  v7 = type metadata accessor for Daemon();
  v3[27] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[28] = v9;
  v10 = sub_100045918(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100045960;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100045918(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100045960(uint64_t a1)
{
  v3 = *(*v2 + 208);
  v4 = *v2;
  v4[29] = a1;
  v4[30] = v1;

  if (v1)
  {
    v5 = v4[15];

    return _swift_task_switch(sub_100860A74, v5, 0);
  }

  else
  {
    v6 = v4[25];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[31] = v8;
    *v8 = v4;
    v8[1] = sub_100045AD4;

    return daemon.getter();
  }
}

uint64_t sub_100045AD4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v5 = *v1;
  v3[32] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[33] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100045918(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v7 = v5;
  v7[1] = sub_100045C8C;
  v10 = v3[28];
  v11 = v3[27];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100045C8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  if (v1)
  {
    v7 = v4[32];

    v4[42] = v1;
    v8 = v4[15];
    v9 = sub_1008609D4;
  }

  else
  {
    v9 = sub_100045F24;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100045DC8(uint64_t result, uint64_t a2, void (*a3)(void))
{
  v10 = result;
  v4 = *(v3 + 112);
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      sub_10001F280(v8, v12);
      sub_1000BC4D4(&qword_10169EF08, &qword_10139FBE8);
      a3(0);
      result = swift_dynamicCast();
      if (result)
      {
        return v13;
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
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
    *v9 = v10;
    v9[1] = a2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100045F24()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[27];
  v0[36] = sub_100045EDC();
  v0[37] = v2;
  sub_100045918(&qword_1016969E0, 255, &type metadata accessor for Daemon);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v7 = sub_100860958;
  }

  else
  {
    v7 = sub_100046008;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100046008()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[15];

  return _swift_task_switch(sub_1000460D4, v3, 0);
}

unint64_t sub_100046080()
{
  result = qword_1016AB868;
  if (!qword_1016AB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB868);
  }

  return result;
}

uint64_t sub_1000460D4()
{
  *(v0 + 88) = &type metadata for DiskFetchPolicy;
  *(v0 + 96) = sub_100046080();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 232);
  v1 = *(v0 + 184);
  v20 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v21 = qword_10177B2E8;
  v22 = *(v0 + 288);

  v23 = sub_100908168(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);

  static DispatchQoS.unspecified.getter();
  *(v0 + 104) = _swiftEmptyArrayStorage;
  sub_100045918(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v20[10];
  v9 = type metadata accessor for DeviceIdentityUtility();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  v13 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *(v12 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v12 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v12 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v1 + v8) = v12;
  v15 = v20[11];
  *(v0 + 40) = type metadata accessor for BeaconObservationStore();
  *(v0 + 48) = &off_101632E88;
  *(v0 + 56) = &off_101613BE0;
  *(v0 + 16) = v21;
  type metadata accessor for MemberCircleRevokeManager();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0((v0 + 16), (v16 + 32));
  *(v1 + v15) = v16;
  v17 = v20[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v1 + v17) = swift_allocObject();
  *v1 = v22;
  sub_10001F280(v0 + 64, (v1 + 3));
  v18 = v20[8];

  sub_1005CB7C8((v0 + 64), v1 + v18);
  sub_100007BAC((v0 + 64));
  v1[1] = v21;
  *(v1 + v20[9]) = v23;
  *(v16 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  return _swift_task_switch(sub_1008603F4, v24, 0);
}

unint64_t sub_100046470(uint64_t a1)
{
  result = sub_100890B48();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Coordinates(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Coordinates(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_1000464FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000465B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000465E0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000466DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100046730(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000467F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100046D78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100046D98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100046DCC()
{
  sub_100016590(v0[2], v0[3]);
  v1 = v0[6];

  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100046E14()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100046E5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046E9C()
{
  v1 = (sub_1000BC4D4(&qword_1016969A8, &unk_10138B270) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = (v5 + v1[14]);
  v8 = *v7;

  v9 = v7[2];

  v10 = v7[3];

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100046FB8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046FF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100047044()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004707C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000470BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000470F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004712C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100047164()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000471A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100047250(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000472F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000473A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100047444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100047514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000475D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100047640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000476EC()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000477BC()
{
  v2 = *(v0 + 240);
  v3 = *(v0 + 256);
  sub_100100BF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), v2, *(&v2 + 1), v3, *(&v3 + 1), *(v0 + 272));

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_100047840()
{
  v1 = type metadata accessor for MACAddress();
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

uint64_t sub_10004790C()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000479AC(uint64_t result)
{
  v1 = *(result + 256) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 240) &= ~0x2000000000000000uLL;
  *(result + 256) = v1;
  return result;
}

uint64_t sub_1000479C8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100047A18()
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
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));
  sub_100016590(*(v0 + 232), *(v0 + 240));
  sub_100016590(*(v0 + 248), *(v0 + 256));
  sub_100016590(*(v0 + 264), *(v0 + 272));

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_100047ACC()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 2);

  sub_100016590(*(v0 + 3), *(v0 + 4));
  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5];

  v10 = *&v0[v6];

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100047BCC()
{
  v1 = sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100047C9C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  sub_100016590(*(v0 + 3), *(v0 + 4));
  sub_100016590(*(v0 + 5), *(v0 + 6));
  sub_100016590(*(v0 + 7), *(v0 + 8));
  v6 = *(v0 + 10);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 9), v6);
  }

  v7 = *(v0 + 12);
  if (v7 >> 60 != 15)
  {
    sub_100016590(*(v0 + 11), v7);
  }

  v8 = (v3 + 128) & ~v3;
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 13);

  v11 = *(v0 + 15);

  (*(v2 + 8))(&v0[v8], v1);
  v12 = *&v0[v9];

  return _swift_deallocObject(v0, v9 + 8, v3 | 7);
}

uint64_t sub_100047DF0()
{
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[8];

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_100047E38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047E90()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100047F3C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100048014()
{
  v1 = *(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for MemberSharingCircle();
  v6 = *(v5 - 1);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    sub_100016590(*v10, *(v10 + 8));
    v23 = v8;
    v11 = v5[5];
    v12 = type metadata accessor for UUID();
    v22 = v4;
    v13 = *(*(v12 - 8) + 8);
    v14 = v10 + v11;
    v8 = v23;
    v13(v14, v12);
    v13(v10 + v5[6], v12);
    v13(v10 + v5[7], v12);
    v13(v10 + v5[8], v12);
    v4 = v22;
    v15 = *(v10 + v5[9]);
  }

  v16 = (v3 + v4 + v7) & ~v7;
  sub_100016590(*(v0 + v16), *(v0 + v16 + 8));
  v17 = v5[5];
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 8);
  v19(v0 + v16 + v17, v18);
  v19(v0 + v16 + v5[6], v18);
  v19(v0 + v16 + v5[7], v18);
  v19(v0 + v16 + v5[8], v18);
  v20 = *(v0 + v16 + v5[9]);

  return _swift_deallocObject(v0, v16 + v8, v2 | v7 | 7);
}

uint64_t sub_1000482B0()
{
  v1 = *(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for OwnerSharingCircle();
  v6 = *(v5 - 1);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    sub_100016590(*v10, *(v10 + 8));
    v20 = v5[5];
    v11 = type metadata accessor for UUID();
    v21 = v4;
    v12 = *(*(v11 - 8) + 8);
    v12(v10 + v20, v11);
    v12(v10 + v5[6], v11);
    v4 = v21;
    v13 = *(v10 + v5[8]);
  }

  v14 = (v3 + v4 + v7) & ~v7;
  sub_100016590(*(v0 + v14), *(v0 + v14 + 8));
  v15 = v5[5];
  v16 = type metadata accessor for UUID();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v14 + v15, v16);
  v17(v0 + v14 + v5[6], v16);
  v18 = *(v0 + v14 + v5[8]);

  return _swift_deallocObject(v0, v14 + v8, v2 | v7 | 7);
}

uint64_t sub_1000484F4()
{
  v1 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v45 = *(v1 + 80);
  v2 = (v45 + 32) & ~v45;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 80);
  v7 = (v2 + v3 + v6) & ~v6;
  v42 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = v0 + v2;
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    sub_100016590(*v9, *(v9 + 8));
    v10 = v4[5];
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v13 = *(v12 + 8);
    v13(v9 + v10, v11);
    v43 = v13;
    v13(v9 + v4[6], v11);
    v14 = *(v9 + v4[7] + 16);

    v15 = *(v9 + v4[8] + 8);

    v16 = *(v9 + v4[9] + 8);

    v17 = *(v9 + v4[10] + 8);

    v18 = v4[18];
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 8))(v9 + v18, v19);
    v20 = v4[19];
    v21 = *(v12 + 48);
    if (!v21(v9 + v20, 1, v11))
    {
      v43(v9 + v20, v11);
    }

    v22 = v9 + v4[20];
    v23 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
    {
      v24 = *(v23 + 20);
      if (!v21(v22 + v24, 1, v11))
      {
        v43(v22 + v24, v11);
      }
    }
  }

  v44 = v7;
  v25 = v0 + v7;
  sub_100016590(*(v0 + v7), *(v0 + v7 + 8));
  v26 = v4[5];
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  v29(v25 + v26, v27);
  v29(v25 + v4[6], v27);
  v30 = *(v25 + v4[7] + 16);

  v31 = *(v25 + v4[8] + 8);

  v32 = *(v25 + v4[9] + 8);

  v33 = *(v25 + v4[10] + 8);

  v34 = v4[18];
  v35 = type metadata accessor for Date();
  (*(*(v35 - 8) + 8))(v25 + v34, v35);
  v36 = v4[19];
  v37 = *(v28 + 48);
  if (!v37(v25 + v36, 1, v27))
  {
    v29(v25 + v36, v27);
  }

  v38 = v25 + v4[20];
  v39 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v40 = *(v39 + 20);
    if (!v37(v38 + v40, 1, v27))
    {
      v29(v38 + v40, v27);
    }
  }

  return _swift_deallocObject(v0, v44 + v42, v45 | v6 | 7);
}

uint64_t sub_1000489B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000489F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048A2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048A8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073A3C(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100048AB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073B58(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048AE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10107341C(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100048B10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101073B74(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100048B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073B80(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100048B6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073B8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048B9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073BB4(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100048BCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073BDC(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100048C00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073BF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048C2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073524(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048C58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048C84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048CB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C48(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048CDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101073C64(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100048D08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048D34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048D60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073CA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048D8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101073CC4(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100048DB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073CD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073CEC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048E10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073D08(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048E3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073D24(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048E68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073E44(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100048E98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073E50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048EC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073E6C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048EF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073E88(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073EA4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048F48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073EC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048F74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073EDC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048FA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073EF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048FCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F14(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048FF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F30(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049024@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F4C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049050@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F68(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004907C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073F84(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000490AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F90(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000490D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073FAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049104@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073FC8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073FE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004915C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074000(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049188@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107401C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000491B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074038(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000491E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074054(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004920C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074060(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074188(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004926C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010741A4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010741C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000492C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010741DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000492F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010741F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004931C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074214(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049394@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074350(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000493C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107436C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000493EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074388(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074394(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010743A0(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010743AC(*a1);
  *a2 = v4;
  return result;
}

__n128 sub_10004949C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1010743B8(*a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v6[6];
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1000494F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074528(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049520@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074534(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049550@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074540(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049580@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10107454C(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1000495AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074558(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1000495D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074564(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074570(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10107457C(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004965C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074588(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049688@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074594(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1000496B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010745A0(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1000496E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745AC(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004970C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049738@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745D4(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100049764@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745E0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000497BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074618(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000497E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074624(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074630(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10107463C(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074648(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000498A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074654(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000498DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074698(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010746B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049934@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010746D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010746EC(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004998C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010746F8(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1000499B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074704(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1000499E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107355C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074710(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049A3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107472C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049A68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074748(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049A94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074764(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049AC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074770(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049AEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107477C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049B18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074798(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049B44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010747B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049B70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010747D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049B9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010747EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049BC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074808(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049BF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074824(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049C20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074840(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049C4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10107485C(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049C78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074868(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049CA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074874(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074880(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049D00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107488C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049D2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010748A8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049D5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010748B4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010748C0(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049DBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010748CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010748E8(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049E14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010748F4(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049E40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074900(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049E6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107491C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049E98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074938(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049EC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074954(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049EF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074970(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10107497C(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049F4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074988(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049F78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074994(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_100049FA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010749A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049FD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010749BC(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A000@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010749C8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A030@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010749D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A05C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010749F0(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A088@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010749FC(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A0B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074A08(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A0E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074A14(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A114@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A16C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A58(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A198@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A74(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A1C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073540(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A1F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A90(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A21C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074AAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A248@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074AC8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074AE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A2A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A2CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B1C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A2F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B38(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B54(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A350@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A37C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A3A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074BA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A3D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074BC4(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A400@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074BD0(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A42C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074BDC(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A45C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074BE8(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A488@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101073404(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A4B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074BF4(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A4E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074C00(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004A50C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074D18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073410(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A568@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074D34(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A594@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074D40(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A5C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074D4C(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A5EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074D58(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A61C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074D64(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A64C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_101074D70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A678@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074E70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A6A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074E8C(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A6D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074E98(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A6FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074EA4(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A728@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074EB0(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A754@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074EBC(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074EC8(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A7AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074ED4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A7DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074FE4(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A808@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101074FF0(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074FFC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A860@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010750FC(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_10004A890(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 472))(v1, v2);
}

uint64_t sub_10004A8E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 464))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_10004A948(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 456))(v1, v2);
}

uint64_t sub_10004A9A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004AA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004AB6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004AC98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[9] + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004ADF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Date();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      result = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 16) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[8];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_10004AF58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for PeripheralConnectionMaterial(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[13];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for P256PrivateKey();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[14];
    goto LABEL_11;
  }

  v17 = type metadata accessor for SymmetricKey256();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[15];

  return v18(v19, a2, v17);
}

uint64_t sub_10004B118(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for PeripheralConnectionMaterial(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[13];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for P256PrivateKey();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[14];
    goto LABEL_9;
  }

  v17 = type metadata accessor for SymmetricKey256();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[15];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_10004B348()
{
  v1 = sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = (v0 + v5);
  sub_100016590(*(v0 + v5 + 8), *(v0 + v5 + 16));
  sub_100016590(v6[3], v6[4]);
  v7 = *(v0 + v5 + 48);
  if (v7 >> 60 != 15)
  {
    sub_100016590(v6[5], v7);
  }

  v8 = v6[9];

  v9 = v6[11];

  v10 = v6[13];

  sub_100016590(v6[14], v6[15]);
  sub_100016590(v6[16], v6[17]);
  sub_100016590(v6[18], v6[19]);
  v11 = v6[22];

  v12 = v6[23];

  sub_100016590(v6[25], v6[26]);
  sub_100016590(v6[27], v6[28]);
  sub_100016590(v6[29], v6[30]);
  sub_100016590(v6[31], v6[32]);
  sub_100016590(v6[33], v6[34]);
  v13 = v6[36];
  if (v13 >> 60 != 15)
  {
    sub_100016590(v6[35], v13);
  }

  v14 = v6[38];

  v15 = v6[40];
  if (v15 >> 60 != 15)
  {
    sub_100016590(v6[39], v15);
  }

  v16 = (v5 + 367) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(v6[41], v6[42]);
  sub_100016590(v6[43], v6[44]);
  v17 = *(v0 + v16);

  return _swift_deallocObject(v0, v16 + 8, v3 | 7);
}

uint64_t sub_10004B4F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004B5B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004B670()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B6A8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10004B6E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004B728()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 9) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11);

  v15 = *(v0 + v12);

  return _swift_deallocObject(v0, v12 + 8, v10 | 7);
}

uint64_t sub_10004B8B8()
{
  sub_100007BAC((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10004B900()
{
  v1 = (type metadata accessor for OwnerSharingCircle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[8], v7);
  v9 = *(v0 + v3 + v1[10]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004BA28()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BA64()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004BAA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004BAE4()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v2 | 7);
}

uint64_t sub_10004BC28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004BC78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5 + 16);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004BDE0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004BE30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004BE78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

double sub_10004C15C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 11;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 11;
  return result;
}

uint64_t sub_10004C180()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C1C8()
{
  if (*(v0 + 57) != 1)
  {
    goto LABEL_26;
  }

  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_26;
      }

LABEL_19:
      v3 = *(v0 + 16);
LABEL_25:

      goto LABEL_26;
    }

    if (v1 != 2)
    {
      if (v1 == 3)
      {

        goto LABEL_26;
      }

      if (v1 != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

LABEL_24:
    v6 = *(v0 + 24);
    goto LABEL_25;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

LABEL_12:
    v2 = *(v0 + 16);

    goto LABEL_26;
  }

  switch(v1)
  {
    case 8u:
      v5 = *(v0 + 16);

      goto LABEL_24;
    case 9u:
      v4 = *(v0 + 24);

      break;
    case 0xAu:
      goto LABEL_19;
  }

LABEL_26:

  return _swift_deallocObject(v0, 58, 7);
}

uint64_t sub_10004C2D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C308()
{
  v1 = v0[2];

  sub_1001D9BA4(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19], v0[20], v0[21], v0[22], v0[23], v0[24], v0[25], v0[26], v0[27], v0[28], v0[29]);
  v2 = v0[30];

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_10004C3A4()
{
  v1 = v0[2];

  sub_100016590(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C3E4()
{
  sub_1001D9BA4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));

  return _swift_deallocObject(v0, 232, 7);
}

uint64_t sub_10004C460()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[11] + 8);

  v11 = *(v0 + v3 + v1[12]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004C5B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004C5E8()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[8];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v1[11] + 8);

  v12 = *(v6 + v1[12]);

  v13 = *(v0 + v4);

  v14 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_10004C758()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  sub_100016590(*(v0 + 24), *(v0 + 32));
  sub_100016590(*(v0 + 40), *(v0 + 48));
  sub_100016590(*(v0 + 56), *(v0 + 64));
  v6 = *(v0 + 80);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 72), v6);
  }

  v7 = *(v0 + 96);
  if (v7 >> 60 != 15)
  {
    sub_100016590(*(v0 + 88), v7);
  }

  v8 = (v3 + 112) & ~v3;
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v8, v1);
  sub_100016590(*(v0 + v9), *(v0 + v9 + 8));

  return _swift_deallocObject(v0, v9 + 16, v3 | 7);
}

uint64_t sub_10004C884()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004C950()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004CA28(uint64_t result)
{
  v1 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 192) &= ~0x8000000000000000;
  *(result + 208) = v1;
  return result;
}

uint64_t sub_10004CA44()
{
  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_25;
      }

LABEL_18:
      v3 = *(v0 + 16);
LABEL_24:

      goto LABEL_25;
    }

    if (v1 != 2)
    {
      if (v1 == 3)
      {

        goto LABEL_25;
      }

      if (v1 != 4)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

LABEL_23:
    v6 = *(v0 + 24);
    goto LABEL_24;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

LABEL_11:
    v2 = *(v0 + 16);

    goto LABEL_25;
  }

  switch(v1)
  {
    case 8u:
      v5 = *(v0 + 16);

      goto LABEL_23;
    case 9u:
      v4 = *(v0 + 24);

      break;
    case 0xAu:
      goto LABEL_18;
  }

LABEL_25:

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10004CB5C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004CC30()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 4);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 3), v6);
  }

  v7 = (v3 + 42) & ~v3;
  v8 = v4 + 7;
  v9 = (v4 + 7 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v3 + v9 + 8) & ~v3;
  v11 = (v8 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + 8);
  v12(&v0[v7], v1);
  v13 = *&v0[v9];

  v12(&v0[v10], v1);

  return _swift_deallocObject(v0, v11 + 8, v3 | 7);
}

uint64_t sub_10004CD50()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004CD88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CDC0()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004CE98()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 2);

  v8 = *(v0 + 3);

  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  v11 = *(v2 + 8);
  v11(&v0[v4], v1);
  v11(&v0[v6], v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_10004CFC8()
{
  sub_1001DB7B8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004D004()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D044()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_10004D07C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10004D08C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004D148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004D204()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D23C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v24 = *(v2 + 80);
  v3 = (v24 + 32) & ~v24;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(*(v5 - 1) + 80);
  v22 = *(*(v5 - 1) + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  v23 = (v3 + v4 + v6) & ~v6;
  v9 = v0 + v23;
  sub_100016590(*(v0 + v23), *(v0 + v23 + 8));
  v8(v0 + v23 + v5[5], v1);
  v8(v0 + v23 + v5[6], v1);
  v10 = *(v0 + v23 + v5[7] + 16);

  v11 = *(v0 + v23 + v5[8] + 8);

  v12 = *(v0 + v23 + v5[9] + 8);

  v13 = *(v0 + v23 + v5[10] + 8);

  v14 = v5[18];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v0 + v23 + v14, v15);
  v16 = v5[19];
  v17 = *(v2 + 48);
  if (!v17(v0 + v23 + v16, 1, v1))
  {
    v8(v9 + v16, v1);
  }

  v18 = v9 + v5[20];
  v19 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = *(v19 + 20);
    if (!v17(v18 + v20, 1, v1))
    {
      v8(v18 + v20, v1);
    }
  }

  return _swift_deallocObject(v0, v23 + v22, v24 | v6 | 7);
}

uint64_t sub_10004D504()
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

uint64_t sub_10004D5D0()
{
  v1 = (type metadata accessor for SessionTokenRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  v7 = v1[8];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004D6F8()
{
  v1 = (type metadata accessor for SessionTokenRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[7] + 8);

  v9 = v1[8];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10004D840()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v22 = v0;
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
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

  return _swift_deallocObject(v22, v3 + v21, v2 | 7);
}

uint64_t sub_10004DAAC()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v30 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for MemberSharingCircle();
  v27 = *(*(v2 - 1) + 80);
  v26 = *(*(v2 - 1) + 64);
  v3 = *(v0 + 16);

  v29 = (v30 + 24) & ~v30;
  v4 = v0 + v29;
  sub_100016590(*(v0 + v29), *(v0 + v29 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v29 + v5, v6);
  v8(v0 + v29 + v1[6], v6);
  v9 = *(v0 + v29 + v1[7] + 16);

  v10 = *(v0 + v29 + v1[8] + 8);

  v11 = *(v0 + v29 + v1[9] + 8);

  v12 = *(v0 + v29 + v1[10] + 8);

  v13 = v1[18];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v0 + v29 + v13, v14);
  v15 = v1[19];
  v16 = *(v7 + 48);
  if (!v16(v0 + v29 + v15, 1, v6))
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

  v20 = (v29 + v28 + v27) & ~v27;
  v21 = (v26 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v0 + v20;
  sub_100016590(*(v0 + v20), *(v0 + v20 + 8));
  v8(v22 + v2[5], v6);
  v8(v22 + v2[6], v6);
  v8(v22 + v2[7], v6);
  v8(v22 + v2[8], v6);
  v23 = *(v22 + v2[9]);

  v24 = *(v0 + v21 + 8);

  return _swift_deallocObject(v0, v21 + 16, v30 | v27 | 7);
}

uint64_t sub_10004DE48()
{
  v1 = sub_1000BC4D4(&qword_101699D00, &unk_101393010);
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

uint64_t sub_10004DF20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004DF60(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 64) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004E07C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 64) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10004E200(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_10004E2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_10004E390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074660(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004E3BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107467C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004E3E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E420()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E474()
{
  v1 = (type metadata accessor for MemberSharingCircle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[8], v7);
  v8(v0 + v3 + v1[9], v7);
  v8(v0 + v3 + v1[10], v7);
  v9 = *(v0 + v3 + v1[11]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004E5CC()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004E628(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10004E6D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004E778()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004E7C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ServerStatusCode();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004E874(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ServerStatusCode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004E934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004E9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10004EA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10004EB2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10004EC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004ED04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MACAddress();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10004EDD0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10004EE98()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004EF5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EF94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EFCC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004F004()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004F03C()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_10004F168()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004F1B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10004F2FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10004F45C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F4A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F4E4()
{
  v19 = type metadata accessor for URL();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v18 = type metadata accessor for UUID();
  v5 = *(v18 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v17 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = *(v0 + 40);

  (*(v1 + 8))(v0 + v3, v19);
  (*(v5 + 8))(v0 + v7, v18);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v17, v13 | 7);
}
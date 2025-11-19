uint64_t sub_1002E6124(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xFF00) != 0x200)
  {
    return sub_100016590(a2, a3);
  }

  return result;
}

uint64_t sub_1002E6140(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x383165707974 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5079636167656CLL && a2 == 0xEA00000000006873 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752395632 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1002E625C(uint64_t *a1)
{
  v43 = sub_1000BC4D4(&qword_10169CB78, &qword_101399690);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v47 = &v40 - v3;
  v4 = sub_1000BC4D4(&qword_10169CB80, &qword_101399698);
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  v9 = sub_1000BC4D4(&qword_10169CB88, &qword_1013996A0);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_1000BC4D4(&qword_10169CB90, &qword_1013996A8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v49 = a1;
  sub_1000035D0(a1, v18);
  sub_1002E6F34();
  v20 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100007BAC(v49);
  }

  v41 = v9;
  v48 = 0;
  v21 = v47;
  v22 = v14;
  v23 = v17;
  v24 = KeyedDecodingContainer.allKeys.getter();
  v25 = *(v24 + 16);
  if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    v31 = *(sub_1000BC4D4(&qword_10169C868, &qword_101398420) + 48);
    *v30 = &type metadata for AdvertismentType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v28);
    swift_willThrow();
    (*(v22 + 8))(v23, v13);
    swift_unknownObjectRelease();
    return sub_100007BAC(v49);
  }

  if (!*(v24 + 32))
  {
    v50 = 0;
    sub_1002E7030();
    v35 = v48;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v35)
    {
      (*(v42 + 8))(v12, v41);
      (*(v14 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v33 = 0;
      v34 = 1;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v26 != 1)
  {
    v52 = 2;
    sub_1002E6F88();
    v36 = v17;
    v37 = v48;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v37)
    {
      v39 = v43;
      v33 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v46 + 8))(v21, v39);
      (*(v14 + 8))(v36, v13);
      v34 = 0;
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v51 = 1;
  sub_1002E6FDC();
  v32 = v48;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v32)
  {
LABEL_16:
    (*(v14 + 8))(v17, v13);
    swift_unknownObjectRelease();
    return sub_100007BAC(v49);
  }

  (*(v45 + 8))(v8, v44);
  (*(v14 + 8))(v17, v13);
  swift_unknownObjectRelease();
  v33 = 1;
  v34 = 1;
LABEL_20:
  sub_100007BAC(v49);
  return v33 | (v34 << 8);
}

void *sub_1002E6804(uint64_t *a1)
{
  v26 = sub_1000BC4D4(&qword_10169CB10, &qword_101399658);
  v28 = *(v26 - 8);
  v2 = *(v28 + 64);
  __chkstk_darwin(v26);
  v4 = &v26 - v3;
  v5 = sub_1000BC4D4(&qword_10169CB18, &qword_101399660);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v7 = sub_1000BC4D4(&qword_10169CB20, &unk_101399668);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v31 = a1;
  v14 = sub_1000035D0(a1, v13);
  sub_1002E6CE8();
  v15 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v29 = v8;
    v16 = v7;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      v17 = v29;
      LOBYTE(v30) = 1;
      sub_1002E6D3C();
      v18 = v11;
      v19 = v4;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1002E6D90();
      v25 = v26;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v28 + 8))(v19, v25);
      (*(v17 + 8))(v18, v16);
      swift_unknownObjectRelease();
      v14 = v30;
    }

    else
    {
      v14 = v11;
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      v23 = *(sub_1000BC4D4(&qword_10169C868, &qword_101398420) + 48);
      *v22 = &type metadata for AdvertisementUnion;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
      swift_willThrow();
      (*(v29 + 8))(v11, v7);
      swift_unknownObjectRelease();
    }
  }

  sub_100007BAC(v31);
  return v14;
}

unint64_t sub_1002E6CE8()
{
  result = qword_10169CB28;
  if (!qword_10169CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB28);
  }

  return result;
}

unint64_t sub_1002E6D3C()
{
  result = qword_10169CB30;
  if (!qword_10169CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB30);
  }

  return result;
}

unint64_t sub_1002E6D90()
{
  result = qword_10169CB38;
  if (!qword_10169CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB38);
  }

  return result;
}

unint64_t sub_1002E6DE4()
{
  result = qword_10169CB40;
  if (!qword_10169CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB40);
  }

  return result;
}

unint64_t sub_1002E6E38()
{
  result = qword_10169CB48;
  if (!qword_10169CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB48);
  }

  return result;
}

unint64_t sub_1002E6E8C()
{
  result = qword_10169CB68;
  if (!qword_10169CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB68);
  }

  return result;
}

unint64_t sub_1002E6EE0()
{
  result = qword_10169CB70;
  if (!qword_10169CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB70);
  }

  return result;
}

unint64_t sub_1002E6F34()
{
  result = qword_10169CB98;
  if (!qword_10169CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB98);
  }

  return result;
}

unint64_t sub_1002E6F88()
{
  result = qword_10169CBA0;
  if (!qword_10169CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CBA0);
  }

  return result;
}

unint64_t sub_1002E6FDC()
{
  result = qword_10169CBA8;
  if (!qword_10169CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CBA8);
  }

  return result;
}

unint64_t sub_1002E7030()
{
  result = qword_10169CBB0;
  if (!qword_10169CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CBB0);
  }

  return result;
}

void sub_1002E70CC()
{
  type metadata accessor for DiscoveredObject(319);
  if (v0 <= 0x3F)
  {
    sub_1002E71C0(319, &unk_10169CC48, type metadata accessor for BeaconDetails);
    if (v1 <= 0x3F)
    {
      sub_1002E71C0(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002E71C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002E723C()
{
  result = type metadata accessor for BeaconKeyManager.IndexInformation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1002E7318(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1002E732C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 40) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 40) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002E7380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1002E73F0()
{
  result = qword_10169CD10;
  if (!qword_10169CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD10);
  }

  return result;
}

unint64_t sub_1002E7448()
{
  result = qword_10169CD18;
  if (!qword_10169CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD18);
  }

  return result;
}

unint64_t sub_1002E74A0()
{
  result = qword_10169CD20;
  if (!qword_10169CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD20);
  }

  return result;
}

unint64_t sub_1002E74F8()
{
  result = qword_10169CD28;
  if (!qword_10169CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD28);
  }

  return result;
}

unint64_t sub_1002E7550()
{
  result = qword_10169CD30;
  if (!qword_10169CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD30);
  }

  return result;
}

unint64_t sub_1002E75A8()
{
  result = qword_10169CD38;
  if (!qword_10169CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD38);
  }

  return result;
}

unint64_t sub_1002E7600()
{
  result = qword_10169CD40;
  if (!qword_10169CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD40);
  }

  return result;
}

unint64_t sub_1002E7658()
{
  result = qword_10169CD48;
  if (!qword_10169CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD48);
  }

  return result;
}

unint64_t sub_1002E76B0()
{
  result = qword_10169CD50;
  if (!qword_10169CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD50);
  }

  return result;
}

unint64_t sub_1002E7708()
{
  result = qword_10169CD58;
  if (!qword_10169CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD58);
  }

  return result;
}

unint64_t sub_1002E7760()
{
  result = qword_10169CD60;
  if (!qword_10169CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD60);
  }

  return result;
}

unint64_t sub_1002E77B8()
{
  result = qword_10169CD68;
  if (!qword_10169CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD68);
  }

  return result;
}

unint64_t sub_1002E7810()
{
  result = qword_10169CD70;
  if (!qword_10169CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD70);
  }

  return result;
}

unint64_t sub_1002E7868()
{
  result = qword_10169CD78;
  if (!qword_10169CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD78);
  }

  return result;
}

unint64_t sub_1002E78C0()
{
  result = qword_10169CD80;
  if (!qword_10169CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD80);
  }

  return result;
}

unint64_t sub_1002E7918()
{
  result = qword_10169CD88;
  if (!qword_10169CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD88);
  }

  return result;
}

unint64_t sub_1002E7970()
{
  result = qword_10169CD90;
  if (!qword_10169CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD90);
  }

  return result;
}

unint64_t sub_1002E79C8()
{
  result = qword_10169CD98;
  if (!qword_10169CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD98);
  }

  return result;
}

unint64_t sub_1002E7A20()
{
  result = qword_10169CDA0;
  if (!qword_10169CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDA0);
  }

  return result;
}

uint64_t sub_1002E7A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E7AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E7B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002E7BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = type metadata accessor for OwnerSharingCircle();
  v6[20] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[23] = v10;
  v11 = *(v10 - 8);
  v6[24] = v11;
  v12 = *(v11 + 64) + 15;
  v6[25] = swift_task_alloc();
  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  v6[26] = v14;
  *v14 = v6;
  v14[1] = sub_1002E7D28;

  return daemon.getter();
}

uint64_t sub_1002E7D28(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v12 = *v1;
  v3[27] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[28] = v6;
  v7 = type metadata accessor for Daemon();
  v3[29] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000193D8(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[30] = v9;
  v10 = sub_1000193D8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1002E7F08;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002E7F08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v8 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v5 = sub_1002E867C;
  }

  else
  {
    v6 = v3[27];

    v5 = sub_1002E8024;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002E8024()
{
  v1 = v0[31];
  v0[33] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[34] = v2;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;

  return _swift_task_switch(sub_1002E80E4, v2, 0);
}

uint64_t sub_1002E80E4()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[35] = PropertyListEncoder.init()();
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1002E81A0;
  v5 = v0[34];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[16];

  return sub_100C7A310(v8, v7);
}

uint64_t sub_1002E81A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v7 = *(v3 + 272);
  if (v1)
  {
    v8 = sub_1002E83B4;
  }

  else
  {
    v8 = sub_1002E82D4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002E82D4()
{
  v0[12] = v0[37];
  v1 = v0[38];
  v2 = v0[35];
  sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
  sub_1002E9F80();
  v0[39] = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[40] = v3;
  v4 = v0[37];
  v5 = v0[35];

  if (v1)
  {
    v0[43] = v1;
    v6 = sub_1002E85E8;
  }

  else
  {
    v6 = sub_1002E8424;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002E83B4()
{
  v1 = v0[35];

  v0[43] = v0[38];

  return _swift_task_switch(sub_1002E85E8, 0, 0);
}

uint64_t sub_1002E8424()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = type metadata accessor for OwnerPeerTrust();
  *(v0 + 328) = v6;
  v7 = *(v6 + 20);
  *(v0 + 480) = *(v3 + 24);
  *(v0 + 336) = sub_1000193D8(&qword_101696930, &type metadata accessor for UUID);
  dispatch thunk of CustomStringConvertible.description.getter();
  v8._countAndFlagsBits = 124;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = String.utf8Data.getter();
  v12 = v11;

  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v10, v12);
  *(v0 + 484) = 0x2020404u >> (8 * *(v4 + *(v3 + 28)));
  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  *(v0 + 352) = v14;
  *v14 = v0;
  v14[1] = sub_1002E8704;

  return daemon.getter();
}

uint64_t sub_1002E85E8()
{
  v1 = v0[34];
  v2 = v0[31];

  v3 = v0[43];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002E867C()
{
  v1 = v0[27];

  v2 = v0[32];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002E8704(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 352);
  v5 = *v1;
  v3[45] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[46] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v9 = sub_1000193D8(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1002E88B8;
  v10 = v3[30];
  v11 = v3[29];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002E88B8(uint64_t a1)
{
  v3 = *(*v2 + 368);
  v4 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002E8D68, 0, 0);
  }

  else
  {
    v5 = v4[45];
    v6 = v4[41];
    v7 = v4[15];

    v8 = *(v6 + 28);
    v9 = swift_task_alloc();
    v4[49] = v9;
    *v9 = v4;
    v9[1] = sub_1002E8A5C;

    return sub_100E8BEF8(v7 + v8);
  }
}

uint64_t sub_1002E8A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 392);
  v10 = *v4;
  *(*v4 + 400) = a3;

  if (v3)
  {
    *(v8 + 432) = v3;
    v11 = sub_1002E9044;
LABEL_3:

    return _swift_task_switch(v11, 0, 0);
  }

  if (!a3)
  {
    v11 = sub_1002E8F34;
    goto LABEL_3;
  }

  v12 = swift_task_alloc();
  *(v8 + 408) = v12;
  *v12 = v10;
  v12[1] = sub_1002E8C2C;

  return (sub_100D4E560)(a1, a2, a3);
}

uint64_t sub_1002E8C2C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 408);
  v6 = *(*v3 + 376);
  v7 = *v3;
  v4[52] = a2;
  v4[53] = v2;

  if (v2)
  {
    v8 = sub_1002E8EC4;
  }

  else
  {
    v9 = v4[50];

    v8 = sub_1002E8E48;
  }

  return _swift_task_switch(v8, v6, 0);
}

uint64_t sub_1002E8D68()
{
  v1 = v0[45];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[34];
  v5 = v0[31];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];

  sub_100016590(v2, v3);

  (*(v7 + 8))(v6, v8);
  v9 = v0[48];
  v10 = v0[25];
  v12 = v0[21];
  v11 = v0[22];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002E8E48()
{
  if (*(v0 + 416))
  {

    v1 = sub_1002E9118;
  }

  else
  {
    v1 = sub_1002E8F34;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1002E8EC4()
{
  v1 = v0[50];

  v0[54] = v0[53];

  return _swift_task_switch(sub_1002E9044, 0, 0);
}

uint64_t sub_1002E8F34()
{
  v1 = v0[16];
  (*(v0[24] + 56))(v0[22], 1, 1, v0[23]);
  v2 = sub_10016632C();
  v0[55] = v2;
  v0[13] = v2;
  v3 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[56] = v4;
  v5 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v6 = sub_1002EA0E0();
  *v4 = v0;
  v4[1] = sub_1002E924C;
  v7 = v0[41];
  v8 = v0[31];

  return Sequence.asyncCompactMap<A>(_:)(&unk_10139A090, v8, v5, v7, v6);
}

uint64_t sub_1002E9044()
{
  v1 = v0[47];
  v2 = v0[34];
  v3 = v0[31];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  sub_100016590(v0[39], v0[40]);

  (*(v5 + 8))(v4, v6);
  v7 = v0[54];
  v8 = v0[25];
  v10 = v0[21];
  v9 = v0[22];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002E9118()
{
  (*(*(v0 + 192) + 16))(*(v0 + 176), *(v0 + 128) + *(v0 + 480), *(v0 + 184));
  v1 = *(v0 + 128);
  (*(*(v0 + 192) + 56))(*(v0 + 176), 0, 1, *(v0 + 184));
  v2 = sub_10016632C();
  *(v0 + 440) = v2;
  *(v0 + 104) = v2;
  v3 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 448) = v4;
  v5 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v6 = sub_1002EA0E0();
  *v4 = v0;
  v4[1] = sub_1002E924C;
  v7 = *(v0 + 328);
  v8 = *(v0 + 248);

  return Sequence.asyncCompactMap<A>(_:)(&unk_10139A090, v8, v5, v7, v6);
}

uint64_t sub_1002E924C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 448);
  v5 = *v2;
  *(*v2 + 456) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = *(v3 + 440);

    return _swift_task_switch(sub_1002E938C, 0, 0);
  }
}

uint64_t sub_1002E938C()
{
  v43 = v0;
  v1 = v0[16];
  v2 = *(v0[57] + 16);
  v3 = sub_10016632C()[2];

  if (v2 == v3)
  {
    v4 = v0[33];
    v0[2] = v0[34];
    v0[5] = v4;
    v0[6] = &off_10164E4F0;

    v5 = swift_task_alloc();
    v0[58] = v5;
    *v5 = v0;
    v5[1] = sub_1002E9758;
    v6 = v0[57];
    v7 = v0[15];
    v8 = v0[16];

    return sub_1002EA200(v8, v6, v7, (v0 + 2));
  }

  else
  {
    v10 = v0[57];

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v11 = v0[21];
    v12 = v0[16];
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177A560);
    sub_1002EB27C(v12, v11, type metadata accessor for OwnerSharingCircle);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v40 = v0[42];
      v16 = v0[23];
      v17 = v0[20];
      v18 = v0[21];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 134218755;
      *(v19 + 4) = v2;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v3;
      *(v19 + 22) = 2160;
      *(v19 + 24) = 1752392040;
      *(v19 + 32) = 2081;
      v21 = v18 + *(v17 + 20);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_1002EB2E4(v18, type metadata accessor for OwnerSharingCircle);
      v25 = sub_1000136BC(v22, v24, &v42);

      *(v19 + 34) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Peer trusts count %ld is not equal to sharing circles members count %ld, %{private,mask.hash}s!!", v19, 0x2Au);
      sub_100007BAC(v20);
    }

    else
    {
      v26 = v0[21];

      sub_1002EB2E4(v26, type metadata accessor for OwnerSharingCircle);
    }

    v27 = v0[47];
    v29 = v0[39];
    v28 = v0[40];
    v30 = v0[34];
    v31 = v0[31];
    v32 = v0[24];
    v33 = v0[22];
    v39 = v0[23];
    v41 = v0[25];
    sub_1002EA144();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    sub_100016590(v29, v28);

    sub_1002EA198(v33);
    (*(v32 + 8))(v41, v39);
    v35 = v0[25];
    v37 = v0[21];
    v36 = v0[22];

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_1002E9758(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[58];
  v9 = *v2;
  v4[59] = v1;

  v6 = v4[57];

  if (v1)
  {
    v7 = sub_1002E9B20;
  }

  else
  {
    sub_100007BAC(v4 + 2);
    v7 = sub_1002E988C;
  }

  return _swift_task_switch(v7, 0, 0);
}

int *sub_1002E988C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 192);
  v5 = *(v0 + 184);
  v43 = *(v0 + 200);
  v45 = *(v0 + 176);
  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);

  (*(v4 + 16))(v10, v9 + *(v6 + 20), v5);
  v11 = type metadata accessor for CircleTrustEnvelopeV1(0);
  sub_100015794(v7, v10 + v11[5]);
  (*(v4 + 32))(v10 + v11[6], v43, v5);
  sub_10012C154(v45, v10 + v11[7]);
  result = type metadata accessor for OwnedBeaconRecord();
  v13 = *(v8 + result[16]);
  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = *(*(v0 + 144) + result[17]);
  if (v14 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = (v8 + result[14]);
  v16 = *v15;
  v17 = v15[1];
  v18 = (v8 + result[15]);
  v20 = *v18;
  v19 = v18[1];
  v41 = *(v0 + 484);
  v39 = *(v0 + 320);
  v40 = *(v0 + 64);
  v37 = v16;
  v38 = *(v0 + 312);
  v42 = *(v0 + 200);
  v44 = *(v0 + 176);
  v46 = *(v0 + 168);
  v21 = *(v0 + 152);
  v22 = *(v0 + 112);
  v23 = type metadata accessor for BeaconNamingRecord();
  v24 = (v21 + v23[8]);
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v21 + v23[7]);
  v28 = (v21 + v23[9]);
  v30 = *v28;
  v29 = v28[1];
  v31 = (v22 + v11[8]);
  *v31 = v37;
  v31[1] = v17;
  v32 = (v22 + v11[9]);
  *v32 = v20;
  v32[1] = v19;
  *(v22 + v11[10]) = v13;
  *(v22 + v11[11]) = v14;
  v33 = (v22 + v11[12]);
  *v33 = v25;
  v33[1] = v26;
  *(v22 + v11[13]) = v27;
  v34 = (v22 + v11[14]);
  *v34 = v30;
  v34[1] = v29;
  v35 = (v22 + v11[15]);
  *v35 = v38;
  v35[1] = v39;
  *(v22 + v11[16]) = v40;
  *(v22 + v11[17]) = v41;

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1002E9B20()
{
  v1 = v0[47];
  v2 = v0[34];
  v3 = v0[31];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  sub_100016590(v0[39], v0[40]);

  sub_1002EA198(v7);
  (*(v5 + 8))(v4, v6);
  sub_100007BAC(v0 + 2);
  v8 = v0[59];
  v9 = v0[25];
  v11 = v0[21];
  v10 = v0[22];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002E9C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for UUID();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002E9CDC, a3, 0);
}

uint64_t sub_1002E9CDC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_1002E9E50;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1002EB3A8, v6, v9);
}

uint64_t sub_1002E9E50()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_1002E9F80()
{
  result = qword_10169CDB8;
  if (!qword_10169CDB8)
  {
    sub_1000BC580(&qword_10169CDB0, &qword_10139A080);
    sub_1000193D8(&qword_10169CDC0, type metadata accessor for KeyDropInterface.KeyPackage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDB8);
  }

  return result;
}

uint64_t sub_1002EA034(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_1002E9C0C(a1, a2, v2);
}

unint64_t sub_1002EA0E0()
{
  result = qword_10169CDC8;
  if (!qword_10169CDC8)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDC8);
  }

  return result;
}

unint64_t sub_1002EA144()
{
  result = qword_10169CDD0;
  if (!qword_10169CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDD0);
  }

  return result;
}

uint64_t sub_1002EA198(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002EA200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for PeerTrustEnvelopeV1(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for OwnerPeerTrust();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002EA388, 0, 0);
}

uint64_t sub_1002EA388()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 128) = v2;
  v3 = *(v0 + 120);
  if (v2)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 32);
    *(v0 + 136) = *v5;
    *(v0 + 144) = v5[1];
    LODWORD(v5) = *(v4 + 80);
    *(v0 + 232) = v5;
    v6 = (v5 + 32) & ~v5;
    v7 = type metadata accessor for OwnerSharingCircle();
    *(v0 + 152) = v7;
    *(v0 + 236) = *(v7 + 20);
    v8 = *(v4 + 72);
    *(v0 + 168) = 0;
    *(v0 + 176) = _swiftEmptyArrayStorage;
    *(v0 + 160) = v8;
    result = sub_1002EB27C(v1 + v6, v3, type metadata accessor for OwnerPeerTrust);
    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = v11 >> 62;
    if (v11 >> 62 == 3)
    {
      v13 = *(v0 + 136);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v10, xmmword_10138C660), vceqq_s64(v13, xmmword_10138C660))))) & 1) == 0)
      {
        v14 = 0;
        if (v13.i64[1] >> 62 == 3)
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

LABEL_17:
      v14 = 0;
      goto LABEL_18;
    }

    if (v12)
    {
      if (v12 != 1)
      {
        v20 = *(v10.i64[0] + 16);
        v21 = *(v10.i64[0] + 24);
        v22 = __OFSUB__(v21, v20);
        v14 = v21 - v20;
        if (!v22)
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_17;
      }

      LODWORD(v14) = v10.i32[1] - v10.i32[0];
      if (__OFSUB__(v10.i32[1], v10.i32[0]))
      {
        goto LABEL_82;
      }

      v14 = v14;
    }

    else
    {
      v14 = BYTE6(v11);
    }

LABEL_18:
    v23 = *(v0 + 144);
    v24 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v24 != 2)
      {
        if (v14)
        {
          goto LABEL_71;
        }

LABEL_32:
        v32 = *(v0 + 120);
        v33 = *(v0 + 32);
        v34 = *(*(v0 + 104) + 20);
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_71;
        }

        v35 = *(v0 + 120);
        v36 = *(v0 + 104);
        v37 = *(v0 + 32);
        if (*(v35 + *(v36 + 24)) != *(v37 + *(v36 + 24)) || (sub_10098BFC0(v35 + *(v36 + 28), v37 + *(v36 + 28)) & 1) == 0)
        {
          goto LABEL_71;
        }

        v38 = *(v0 + 120);
        v39 = *(v0 + 104);
        v40 = *(v0 + 32);
        v41 = v39[8];
        result = *(v38 + v41);
        v42 = *(v38 + v41 + 8);
        v43 = (v40 + v41);
        if (result != *v43 || v42 != v43[1])
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_71;
          }

          v38 = *(v0 + 120);
          v39 = *(v0 + 104);
          v40 = *(v0 + 32);
        }

        v44 = v39[9];
        v45 = (v38 + v44);
        v47 = *(v38 + v44);
        v46 = *(v38 + v44 + 8);
        v48 = (v40 + v44);
        v49 = *v48;
        v50 = v48[1];
        v51 = v46 >> 62;
        v52 = v50 >> 62;
        if (v46 >> 62 == 3)
        {
          v53 = 0;
          if (!v47 && v46 == 0xC000000000000000 && v50 >> 62 == 3)
          {
            v53 = 0;
            if (!v49 && v50 == 0xC000000000000000)
            {
LABEL_68:
              if (*(v38 + v39[10]) == *(v40 + v39[10]))
              {
                v61 = *v45;
                v60 = v45[1];
                sub_100017D5C(*v45, v60);
                v62 = &qword_10177A8F0;
                v63 = &qword_10177A8F8;
                if (qword_101694558 != -1)
                {
                  swift_once();
                }

                goto LABEL_75;
              }

LABEL_71:
              v64 = *(v0 + 152);
              v65 = *(v0 + 16);
              v66 = type metadata accessor for __DataStorage();
              v67 = *(v66 + 48);
              v68 = *(v66 + 52);
              swift_allocObject();
              v60 = __DataStorage.init(length:)() | 0x4000000000000000;
              v69 = *(v65 + *(v64 + 32));
              if (!*(v69 + 16) || (v70 = sub_1000210EC(*(v0 + 120) + *(*(v0 + 104) + 20)), (v71 & 1) == 0) || *(*(v69 + 56) + v70) != 1)
              {
                v72 = 0;
                v61 = 0x2000000000;
                v74 = 0xE000000000000000;
                goto LABEL_77;
              }

              v62 = (*(v0 + 120) + *(*(v0 + 104) + 32));
              v63 = v62 + 1;
              v61 = 0x2000000000;
LABEL_75:
              v72 = *v62;
              v73 = *v63;

LABEL_77:
              *(v0 + 200) = v61;
              *(v0 + 208) = v60;
              *(v0 + 184) = v72;
              *(v0 + 192) = v74;
              v75 = *(v0 + 236);
              v76 = *(v0 + 16);
              v77 = *sub_1000035D0(*(v0 + 40), *(*(v0 + 40) + 24));
              v78 = swift_task_alloc();
              *(v0 + 216) = v78;
              *v78 = v0;
              v78[1] = sub_1002EA984;
              v79 = *(v0 + 120);
              v80 = *(v0 + 96);

              return sub_100C78964(v80, v79, v76 + v75);
            }
          }

          goto LABEL_54;
        }

        if (v51 == 2)
        {
          v55 = *(v47 + 16);
          v54 = *(v47 + 24);
          v22 = __OFSUB__(v54, v55);
          v53 = v54 - v55;
          if (!v22)
          {
            goto LABEL_54;
          }

          __break(1u);
        }

        else if (v51 == 1)
        {
          LODWORD(v53) = HIDWORD(v47) - v47;
          if (__OFSUB__(HIDWORD(v47), v47))
          {
LABEL_84:
            __break(1u);
            return result;
          }

          v53 = v53;
          goto LABEL_54;
        }

        v53 = BYTE6(v46);
LABEL_54:
        if (v52 > 1)
        {
          if (v52 != 2)
          {
            if (v53)
            {
              goto LABEL_71;
            }

            goto LABEL_68;
          }

          v58 = *(v49 + 16);
          v57 = *(v49 + 24);
          v22 = __OFSUB__(v57, v58);
          v56 = v57 - v58;
          if (!v22)
          {
            goto LABEL_63;
          }

          __break(1u);
        }

        else if (!v52)
        {
          v56 = BYTE6(v50);
          goto LABEL_63;
        }

        LODWORD(v56) = HIDWORD(v49) - v49;
        if (!__OFSUB__(HIDWORD(v49), v49))
        {
          v56 = v56;
LABEL_63:
          if (v53 != v56)
          {
            goto LABEL_71;
          }

          if (v53 >= 1)
          {
            sub_100017D5C(v49, v50);
            sub_100017D5C(v49, v50);
            sub_100017D5C(v47, v46);
            v59 = sub_100F0B1BC(v47, v46, v49, v50);
            sub_100016590(v49, v50);
            sub_100016590(v47, v46);
            if ((v59 & 1) == 0)
            {
              goto LABEL_71;
            }

            v38 = *(v0 + 120);
            v39 = *(v0 + 104);
            v40 = *(v0 + 32);
          }

          goto LABEL_68;
        }

        goto LABEL_83;
      }

      v25 = *(*(v0 + 136) + 16);
      v26 = *(*(v0 + 136) + 24);
      v22 = __OFSUB__(v26, v25);
      v27 = v26 - v25;
      if (!v22)
      {
        if (v14 != v27)
        {
          goto LABEL_71;
        }

        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      if (!v24)
      {
        if (v14 != BYTE6(v23))
        {
          goto LABEL_71;
        }

LABEL_28:
        if (v14 >= 1)
        {
          v31 = *(v0 + 136);
          v81 = v10.i64[0];
          sub_100017D5C(v31, *(v0 + 144));
          if ((sub_100F0B1BC(v81, v11, v31, v23) & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_32;
      }

      v28 = *(v0 + 136);
      v29 = *(v0 + 140);
      v22 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      if (!v22)
      {
        if (v14 != v30)
        {
          goto LABEL_71;
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v15 = *(v0 + 96);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 120);

  v19 = *(v0 + 8);

  return v19(_swiftEmptyArrayStorage);
}

uint64_t sub_1002EA984()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v8 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = *(v2 + 176);

    v6 = sub_1002EB1C8;
  }

  else
  {
    v6 = sub_1002EAAAC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002EAAAC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 72);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  (*(*(v0 + 88) + 16))(v6, *(v0 + 96), *(v0 + 80));
  v9 = (v6 + *(v8 + 20));
  *v9 = v4;
  v9[1] = v3;
  v10 = (v6 + *(v8 + 24));
  *v10 = v2;
  v10[1] = v1;
  sub_1002EB27C(v6, v7, type metadata accessor for PeerTrustEnvelopeV1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 176);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100A5BFB8(0, v12[2] + 1, 1, *(v0 + 176));
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_100A5BFB8(v13 > 1, v14 + 1, 1, v12);
  }

  v97 = *(v0 + 120);
  v98 = *(v0 + 128);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  v17 = *(v0 + 80);
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  v20 = *(v0 + 168) + 1;
  sub_1002EB2E4(*(v0 + 72), type metadata accessor for PeerTrustEnvelopeV1);
  (*(v16 + 8))(v15, v17);
  v12[2] = v14 + 1;
  sub_1002EB344(v19, v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14);
  sub_1002EB2E4(v97, type metadata accessor for OwnerPeerTrust);
  if (v20 == v98)
  {
    v21 = *(v0 + 120);
    v22 = *(v0 + 96);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);

    v25 = *(v0 + 8);

    return v25(v12);
  }

  v27 = *(v0 + 224);
  v28 = *(v0 + 160);
  v29 = *(v0 + 168) + 1;
  *(v0 + 168) = v29;
  *(v0 + 176) = v12;
  v30 = *(v0 + 120);
  result = sub_1002EB27C(*(v0 + 24) + ((*(v0 + 232) + 32) & ~*(v0 + 232)) + v28 * v29, v30, type metadata accessor for OwnerPeerTrust);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = v32 >> 62;
  if (v32 >> 62 == 3)
  {
    v34 = 0;
    v35 = *(v0 + 136);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v31, xmmword_10138C660), vceqq_s64(v35, xmmword_10138C660))))) & 1) == 0 && v35.i64[1] >> 62 == 3)
    {
      goto LABEL_33;
    }
  }

  else if (v33)
  {
    if (v33 == 1)
    {
      LODWORD(v34) = v31.i32[1] - v31.i32[0];
      if (__OFSUB__(v31.i32[1], v31.i32[0]))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v34 = v34;
    }

    else
    {
      v36 = *(v31.i64[0] + 16);
      v37 = *(v31.i64[0] + 24);
      v38 = __OFSUB__(v37, v36);
      v34 = v37 - v36;
      if (v38)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }
  }

  else
  {
    v34 = BYTE6(v32);
  }

  v39 = *(v0 + 144);
  v40 = v39 >> 62;
  if ((v39 >> 62) <= 1)
  {
    if (!v40)
    {
      if (v34 != BYTE6(v39))
      {
        goto LABEL_72;
      }

      goto LABEL_29;
    }

    v44 = *(v0 + 136);
    v45 = *(v0 + 140);
    v38 = __OFSUB__(v45, v44);
    v46 = v45 - v44;
    if (!v38)
    {
      if (v34 != v46)
      {
        goto LABEL_72;
      }

LABEL_29:
      if (v34 >= 1)
      {
        v47 = *(v0 + 136);
        v99 = v31.i64[0];
        sub_100017D5C(v47, *(v0 + 144));
        if ((sub_100F0B1BC(v99, v32, v47, v39) & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_33;
    }

    goto LABEL_82;
  }

  if (v40 == 2)
  {
    v41 = *(*(v0 + 136) + 16);
    v42 = *(*(v0 + 136) + 24);
    v38 = __OFSUB__(v42, v41);
    v43 = v42 - v41;
    if (!v38)
    {
      if (v34 != v43)
      {
        goto LABEL_72;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v34)
  {
    goto LABEL_72;
  }

LABEL_33:
  v48 = *(v0 + 120);
  v49 = *(v0 + 32);
  v50 = *(*(v0 + 104) + 20);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_72;
  }

  v51 = *(v0 + 120);
  v52 = *(v0 + 104);
  v53 = *(v0 + 32);
  if (*(v51 + *(v52 + 24)) != *(v53 + *(v52 + 24)) || (sub_10098BFC0(v51 + *(v52 + 28), v53 + *(v52 + 28)) & 1) == 0)
  {
    goto LABEL_72;
  }

  v54 = *(v0 + 120);
  v55 = *(v0 + 104);
  v56 = *(v0 + 32);
  v57 = v55[8];
  result = *(v54 + v57);
  v58 = *(v54 + v57 + 8);
  v59 = (v56 + v57);
  if (result != *v59 || v58 != v59[1])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      goto LABEL_72;
    }

    v54 = *(v0 + 120);
    v55 = *(v0 + 104);
    v56 = *(v0 + 32);
  }

  v60 = v55[9];
  v61 = (v54 + v60);
  v63 = *(v54 + v60);
  v62 = *(v54 + v60 + 8);
  v64 = (v56 + v60);
  v65 = *v64;
  v66 = v64[1];
  v67 = v62 >> 62;
  v68 = v66 >> 62;
  if (v62 >> 62 != 3)
  {
    if (v67 == 2)
    {
      v71 = *(v63 + 16);
      v70 = *(v63 + 24);
      v38 = __OFSUB__(v70, v71);
      v69 = v70 - v71;
      if (!v38)
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    else if (v67 == 1)
    {
      LODWORD(v69) = HIDWORD(v63) - v63;
      if (__OFSUB__(HIDWORD(v63), v63))
      {
LABEL_86:
        __break(1u);
        return result;
      }

      v69 = v69;
      goto LABEL_55;
    }

    v69 = BYTE6(v62);
LABEL_55:
    if (v68 > 1)
    {
      if (v68 != 2)
      {
        if (v69)
        {
          goto LABEL_72;
        }

        goto LABEL_69;
      }

      v74 = *(v65 + 16);
      v73 = *(v65 + 24);
      v38 = __OFSUB__(v73, v74);
      v72 = v73 - v74;
      if (!v38)
      {
        goto LABEL_64;
      }

      __break(1u);
    }

    else if (!v68)
    {
      v72 = BYTE6(v66);
      goto LABEL_64;
    }

    LODWORD(v72) = HIDWORD(v65) - v65;
    if (!__OFSUB__(HIDWORD(v65), v65))
    {
      v72 = v72;
LABEL_64:
      if (v69 != v72)
      {
        goto LABEL_72;
      }

      if (v69 >= 1)
      {
        sub_100017D5C(v65, v66);
        sub_100017D5C(v65, v66);
        sub_100017D5C(v63, v62);
        v75 = sub_100F0B1BC(v63, v62, v65, v66);
        sub_100016590(v65, v66);
        sub_100016590(v63, v62);
        if ((v75 & 1) == 0)
        {
          goto LABEL_72;
        }

        v54 = *(v0 + 120);
        v55 = *(v0 + 104);
        v56 = *(v0 + 32);
      }

      goto LABEL_69;
    }

    goto LABEL_85;
  }

  v69 = 0;
  if (v63)
  {
    goto LABEL_55;
  }

  if (v62 != 0xC000000000000000)
  {
    goto LABEL_55;
  }

  if (v66 >> 62 != 3)
  {
    goto LABEL_55;
  }

  v69 = 0;
  if (v65 || v66 != 0xC000000000000000)
  {
    goto LABEL_55;
  }

LABEL_69:
  if (*(v54 + v55[10]) == *(v56 + v55[10]))
  {
    v77 = *v61;
    v76 = v61[1];
    sub_100017D5C(*v61, v76);
    v78 = &qword_10177A8F0;
    v79 = &qword_10177A8F8;
    if (qword_101694558 != -1)
    {
      swift_once();
    }

    goto LABEL_76;
  }

LABEL_72:
  v80 = *(v0 + 152);
  v81 = *(v0 + 16);
  v82 = type metadata accessor for __DataStorage();
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  v76 = __DataStorage.init(length:)() | 0x4000000000000000;
  v85 = *(v81 + *(v80 + 32));
  if (!*(v85 + 16) || (v86 = sub_1000210EC(*(v0 + 120) + *(*(v0 + 104) + 20)), (v87 & 1) == 0) || *(*(v85 + 56) + v86) != 1)
  {
    v88 = 0;
    v77 = 0x2000000000;
    v90 = 0xE000000000000000;
    goto LABEL_78;
  }

  v78 = (*(v0 + 120) + *(*(v0 + 104) + 32));
  v79 = v78 + 1;
  v77 = 0x2000000000;
LABEL_76:
  v88 = *v78;
  v89 = *v79;

LABEL_78:
  *(v0 + 200) = v77;
  *(v0 + 208) = v76;
  *(v0 + 184) = v88;
  *(v0 + 192) = v90;
  v91 = *(v0 + 236);
  v92 = *(v0 + 16);
  v93 = *sub_1000035D0(*(v0 + 40), *(*(v0 + 40) + 24));
  v94 = swift_task_alloc();
  *(v0 + 216) = v94;
  *v94 = v0;
  v94[1] = sub_1002EA984;
  v95 = *(v0 + 120);
  v96 = *(v0 + 96);

  return sub_100C78964(v96, v95, v92 + v91);
}

uint64_t sub_1002EB1C8()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  sub_100016590(v0[25], v0[26]);
  sub_1002EB2E4(v1, type metadata accessor for OwnerPeerTrust);

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

uint64_t sub_1002EB27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002EB2E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002EB344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustEnvelopeV1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EB3A8()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_100E6E99C(v2);
}

unint64_t sub_1002EB430()
{
  result = qword_10169CDD8;
  if (!qword_10169CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDD8);
  }

  return result;
}

uint64_t sub_1002EB484@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073BA8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1002EB4B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073BC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002EB4E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107406C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002EB50C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107416C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002EB538(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

BOOL sub_1002EB5E4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for OwnerSharingCircle() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1002EB6B8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
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
      sub_100017D5C(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_100016590(v12, *(&v12 + 1));
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

uint64_t sub_1002EB768(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1002EB810(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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

uint64_t sub_1002EB938()
{
  v0 = type metadata accessor for ThrottledDarwinPoster();
  sub_100044B3C(v0, qword_10177A878);
  sub_1000076D4(v0, qword_10177A878);
  v1 = SPFinderStateChangedNotification;
  return ThrottledDarwinPoster.init(name:rateLimit:)();
}

uint64_t sub_1002EB9A0(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = *(a2 + 16);
  static DispatchWorkItemFlags.barrier.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = sub_1002EF86C;
  *(v17 + 32) = v15;
  *(v17 + 40) = 514;
  *(v17 + 42) = v14;
  aBlock[4] = sub_1002EFAEC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101617000;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

void sub_1002EBC18(uint64_t a1, char a2)
{
  if (a1)
  {
    static os_log_type_t.error.getter();
    if (qword_101695008 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v3 = String.init<A>(describing:)();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100008C00();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    v8 = v7;
    *(v7 + 16) = xmmword_101385D80;
    v9 = (a2 & 1) == 0;
    if (a2)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v9)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v8 + 32) = v10;
    *(v8 + 40) = v11;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v12 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_1002EBE38@<X0>(_BYTE *a1@<X8>)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v3 = sub_101073BA8(v9);
  v4 = sub_101073BC0(v9);

  v5 = v4 != -1;
  LOBYTE(v4) = sub_1002EE66C();
  v6 = sub_10030E438();
  v7 = type metadata accessor for FinderStateInfo(0);
  sub_1012BAD7C(v6, &a1[*(v7 + 28)]);

  result = sub_10030D994(&a1[*(v7 + 32)]);
  *a1 = v3 & 1;
  a1[1] = v4 & 1;
  a1[2] = v5;
  return result;
}

uint64_t sub_1002EBF64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for FinderStateInfo(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(a1 + 16));
  v9 = *(a1 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateManager);

  v11 = sub_100ED3BBC(v10);
  v13 = sub_100ED312C(v11, v12 & 0x10101);

  v14 = sub_1002EE66C();
  sub_1002EBE38(v8);
  v15 = v8[2];
  sub_1000DD708(v8);
  v16 = sub_10030E438();
  sub_1012BAD7C(v16, &a2[*(v5 + 36)]);

  result = sub_10030D994(&a2[*(v5 + 40)]);
  *a2 = v13 & 1;
  a2[1] = v14 & 1;
  a2[2] = v15;
  return result;
}

uint64_t sub_1002EC088(uint64_t a1)
{
  v2 = v1;
  v42[0] = a1;
  v3 = sub_1000BC4D4(&qword_1016B28A0, &unk_101393D00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = v42 - v5;
  v6 = sub_1000BC4D4(&qword_10169D038, &unk_10139A2D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v45 = v42 - v8;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v44 = v42 - v11;
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v17 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100003D6C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_configurationSubscription;
  v22 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v42[1] = v23 + 56;
  v43 = v24;
  v24(v2 + v21, 1, 1, v22);
  v25 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateSubscription;
  v26 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v27 = *(*(v26 - 8) + 56);
  v27(v2 + v25, 1, 1, v26);
  *(v2 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_cancellable) = 0;
  *(v2 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_beaconFindMyAccessoryAssociatedPublisher) = 0;
  v28 = v42[0];
  *(v2 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateManager) = v42[0];
  v29 = objc_allocWithZone(FMStateCapture);
  swift_retain_n();
  v30 = [v29 init];
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1002EF88C;
  *(v31 + 24) = v28;
  v49 = sub_1002EF894;
  v50 = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015013C;
  v48 = &unk_101617050;
  v32 = _Block_copy(aBlock);

  [v30 setStateCaptureBlock:v32];
  _Block_release(v32);

  *(v2 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_stateCapture) = v30;
  v33 = type metadata accessor for TaskPriority();
  v34 = v44;
  (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v2;

  sub_10025EDD4(0, 0, v34, &unk_10139A2F0, v35);

  v36 = type metadata accessor for FinderStateManager(0);
  v48 = v36;
  v49 = &off_101616E58;
  aBlock[0] = v2;

  v37 = v45;
  sub_1004F33B4(aBlock, v45);
  sub_100007BAC(aBlock);
  v27(v37, 0, 1, v26);
  v38 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateSubscription;
  swift_beginAccess();
  sub_10002311C(v37, v2 + v38, &qword_10169D038, &unk_10139A2D0);
  swift_endAccess();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v48 = v36;
  v49 = &off_101616E20;
  aBlock[0] = v2;

  v39 = v46;
  sub_10014F468(aBlock, v46);

  sub_100007BAC(aBlock);
  v43(v39, 0, 1, v22);
  v40 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_configurationSubscription;
  swift_beginAccess();
  sub_10002311C(v39, v2 + v40, &qword_1016B28A0, &unk_101393D00);
  swift_endAccess();
  return v2;
}

uint64_t sub_1002EC7C4@<X0>(uint64_t a1@<X8>)
{

  result = sub_100ED3BBC(v2);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  *(a1 + 9) = v5 & 1;
  *(a1 + 10) = v6 & 1;
  return result;
}

uint64_t sub_1002EC808()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002EE954();
}

uint64_t sub_1002EC894()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_configurationSubscription;
  swift_beginAccess();
  if (!(*(v8 + 48))(v1 + v12, 1, v7))
  {
    (*(v8 + 16))(v11, v1 + v12, v7);
    Subscription.unsubscribe(completion:)();
    (*(v8 + 8))(v11, v7);
  }

  v13 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateSubscription;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v13, 1, v2))
  {
    (*(v3 + 16))(v6, v1 + v13, v2);
    Subscription.unsubscribe(completion:)();
    (*(v3 + 8))(v6, v2);
  }

  sub_10000B3A8(v1 + v12, &qword_1016B28A0, &unk_101393D00);
  sub_10000B3A8(v1 + v13, &qword_10169D038, &unk_10139A2D0);
  v14 = *(v1 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateManager);

  v15 = *(v1 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_cancellable);

  v16 = *(v1 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_beaconFindMyAccessoryAssociatedPublisher);

  return v1;
}

uint64_t sub_1002ECB84(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v2 = String.init<A>(describing:)();
    v4 = v3;
    *(v1 + 56) = &type metadata for String;
    *(v1 + 64) = sub_100008C00();
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v5 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  return result;
}

uint64_t sub_1002ECCAC()
{
  sub_1002EC894();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1002ECD2C()
{
  sub_1002ECE54(319, &qword_10169A430, &qword_1016B1E70, &qword_10138CDB0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1002ECE54(319, &unk_10169CE38, &qword_101697E00, &qword_10139A1B0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002ECE54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000BC580(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1002ECEF0()
{
  sub_100157BAC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1002ECF7C()
{
  v1 = async function pointer to DarwinNotification.Listener.run()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100014650;

  return DarwinNotification.Listener.run()();
}

uint64_t sub_1002ED010(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, char a6)
{
  v8 = a4;
  v11 = a4;
  v12 = type metadata accessor for FinderStateInfo(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  sub_1002EBE38(v16);
  if (v11 == 2)
  {
    v8 = *v16;
  }

  if (a5 == 2)
  {
    a5 = v16[2];
  }

  if (a6 == 2)
  {
    a6 = v16[1];
  }

  v19 = sub_10030E438();
  sub_1012BAD7C(v19, &v18[*(v12 + 28)]);

  sub_10030D994(&v18[*(v12 + 32)]);
  sub_1000DD708(v16);
  *v18 = v8 & 1;
  v18[1] = a6 & 1;
  v18[2] = a5 & 1;
  sub_1002EF3D8(v18, a2, a3);
  return sub_1000DD708(v18);
}

void sub_1002ED18C()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v0 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (qword_101694530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for ThrottledDarwinPoster();
  sub_1000076D4(v1, qword_10177A878);
  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v2)
  {
  }
}

uint64_t sub_1002ED294(void (*a1)(id, void), uint64_t a2)
{
  v61 = a2;
  v62 = a1;
  v3 = type metadata accessor for FinderStateInfo(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v64 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v58 = &v56[-v11];
  v63 = type metadata accessor for Date();
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v63);
  v15 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = v2;
  v16 = *&v2[OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateManager];

  v18 = sub_100ED3BBC(v17);
  v20 = v19;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v21 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v22 = sub_10107416C(v65[0]);

  v67 = &_swiftEmptySetSingleton;
  v65[0] = SPDisabledReasoniCloudSignedOut;
  __chkstk_darwin(v23);
  v55 = v65;
  v24 = sub_1002EB768(sub_1002EF830, &v56[-32], v22);
  if (v24)
  {
    sub_100DEB5E8(v65, SPFinderDisabledReasoniCloudSignedOut);
  }

  v65[0] = SPDisabledReasonLowAccountSecurity;
  __chkstk_darwin(v24);
  v55 = v65;
  v25 = sub_1002EB768(sub_1002EFAF0, &v56[-32], v22);
  if (v25)
  {
    sub_100DEB5E8(v65, SPFinderDisabledReasonLowAccountSecurity);
  }

  v65[0] = SPDisabledReasonUserOptOut;
  __chkstk_darwin(v25);
  v55 = v65;
  v26 = sub_1002EB768(sub_1002EFAF0, &v56[-32], v22);

  if (v26)
  {
    sub_100DEB5E8(v65, SPFinderDisabledReasonUserOptOut);
  }

  if ((sub_1004F21B4() & 1) == 0)
  {
    sub_100DEB5E8(v65, SPFinderDisabledReasonFindMyiPhoneOff);
  }

  if ((v20 & 1) == 0)
  {
    sub_100DEB5E8(v65, SPFinderDisabledReasonServiceDisabled);
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v65[0] = 0x7365547265646E75;
  v65[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v66 & 1) != 0 || (v27 = objc_autoreleasePoolPush(), v28 = [objc_opt_self() locationServicesEnabled], objc_autoreleasePoolPop(v27), (v28 & 1) == 0))
  {
    sub_100DEB5E8(v65, SPFinderDisabledReasonLocationServices);
  }

  v30 = *(*(v18 + 32) + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
  __chkstk_darwin(v29);
  v55 = v31;
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  if ((LODWORD(v65[0]) - 3) >= 2)
  {
    sub_100DEB5E8(v65, SPFinderDisabledReasonLocationServicesFindMyFramework);
  }

  v32 = v58;
  if ((v20 & 0x10000) == 0)
  {
    sub_100DEB5E8(v65, SPFinderDisabledReasonCannotPublishAnonymously);
  }

  if (!v67[2])
  {
    sub_100DEB5E8(v65, SPFinderDisabledReasonNone);
  }

  v60 = v18;
  v57 = sub_100ED312C(v18, v20 & 0x10101);
  v33 = sub_1002EE66C();
  Date.init()();
  v34 = sub_10030E438();
  sub_1012BAD7C(v34, v32);

  sub_10030D994(v64);
  sub_1002EBE38(v6);
  v35 = v6[2];
  sub_1000DD708(v6);
  v59 = v15;
  v36.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v37 = v12;
  v38 = *(v12 + 48);
  v39 = v63;
  if (v38(v32, 1, v63) == 1)
  {
    v40 = v37;
    isa = 0;
  }

  else
  {
    v42.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v39 = v63;
    v43 = v32;
    isa = v42.super.isa;
    v40 = v37;
    (*(v37 + 8))(v43, v63);
  }

  v44 = v64;
  v45 = v39;
  if (v38(v64, 1, v39) == 1)
  {
    v46 = 0;
    v47 = v40;
  }

  else
  {
    v46 = Date._bridgeToObjectiveC()().super.isa;
    v48 = v44;
    v47 = v40;
    (*(v40 + 8))(v48, v45);
  }

  if (v35)
  {
    v49 = 1;
  }

  else
  {
    v49 = -1;
  }

  v50 = objc_allocWithZone(SPFinderStateInfo);
  type metadata accessor for SPFinderDisabledReason(0);
  sub_100003D6C(&qword_101696500, type metadata accessor for SPFinderDisabledReason);
  v51 = Set._bridgeToObjectiveC()().super.isa;

  v52 = [v50 initWithState:v57 & 1 optInScreenOffScan:v33 & 1 lastUpdated:v36.super.isa lastPublishDate:isa lastScheduledPublishActivityDate:v46 activeCache:v49 disabledReasons:v51];

  (*(v47 + 8))(v59, v45);
  v53 = v52;
  v62(v52, 0);
}

uint64_t sub_1002EDAE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v15 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v16 = *(v3 + 16);
  static DispatchWorkItemFlags.barrier.getter();
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v3;
  *(v17 + 24) = v18;
  *(v17 + 32) = a2;
  *(v17 + 40) = 513;
  *(v17 + 42) = 2;
  aBlock[4] = sub_1002EFAEC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101616F88;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_1002EDD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v15 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v16 = *(v3 + 16);
  static DispatchWorkItemFlags.barrier.getter();
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v3;
  *(v17 + 24) = v18;
  *(v17 + 32) = a2;
  *(v17 + 40) = 512;
  *(v17 + 42) = 2;
  aBlock[4] = sub_1002EFAEC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101616F38;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_1002EE02C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v23 = type metadata accessor for DispatchQoS();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v16 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v17 = *(v4 + 16);
  static DispatchWorkItemFlags.barrier.getter();
  v18 = swift_allocObject();
  v19 = v22;
  *(v18 + 16) = v4;
  *(v18 + 24) = v19;
  *(v18 + 32) = a3;
  *(v18 + 40) = 2;
  *(v18 + 41) = a1 & 1;
  *(v18 + 42) = 2;
  aBlock[4] = sub_1002EE374;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101616E98;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v7 + 8))(v10, v23);
  (*(v12 + 8))(v15, v11);
}

uint64_t sub_1002EE378(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1002EE440()
{
  if (qword_101694530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for ThrottledDarwinPoster();
  sub_1000076D4(v1, qword_10177A878);
  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v2)
  {
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_1002EE500()
{
  type metadata accessor for AnyKeyPath();
  swift_getKeyPath();
  v0 = static AnyKeyPath.== infix(_:_:)();

  if (v0)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  v1 = static AnyKeyPath.== infix(_:_:)();

  if (v1 & 1) != 0 || (swift_getKeyPath(), v2 = static AnyKeyPath.== infix(_:_:)(), , (v2) || (swift_getKeyPath(), v3 = static AnyKeyPath.== infix(_:_:)(), , (v3))
  {
LABEL_5:
    if (qword_101694530 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for ThrottledDarwinPoster();
    sub_1000076D4(v4, qword_10177A878);
    ThrottledDarwinPoster.post(bypassRateLimit:)(0);
    if (v5)
    {
    }
  }
}

uint64_t sub_1002EE66C()
{
  static os_log_type_t.debug.getter();
  if (qword_101695008 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101385D80;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    v5 = swift_dynamicCast();
    v6 = v14;
    if (!v5)
    {
      v6 = 2;
    }
  }

  else
  {
    sub_10000B3A8(&v17, &unk_1016A0B10, &qword_10139BF40);
    v6 = 2;
  }

  LOBYTE(v17) = v6;
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100008C00();
  *(v0 + 32) = v7;
  *(v0 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  v10 = [v1 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v14;
    }
  }

  else
  {
    sub_10000B3A8(&v17, &unk_1016A0B10, &qword_10139BF40);
    return 0;
  }

  return result;
}

uint64_t sub_1002EE954()
{
  v1 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1002EEA1C;

  return daemon.getter();
}

uint64_t sub_1002EEA1C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 32) = a1;

  type metadata accessor for Daemon();
  sub_100003D6C(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002EEB74, v5, v4);
}

uint64_t sub_1002EEB74()
{
  v1 = v0[4];
  v0[5] = Daemon.darwinNotificationHandler.getter();

  v2 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v5 = &async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1002EEC64;

  return (v5)(0xD000000000000021, 0x8000000101350130, &unk_10139A300, 0);
}

uint64_t sub_1002EEC64(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1002EED64, 0, 0);
}

uint64_t sub_1002EED64()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  v0[8] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[9] = v5;
  v0[10] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v2, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_10139A310, v6);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v7 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v11 = &async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1002EEF04;
  v9 = v0[5];

  return (v11)(0xD000000000000019, 0x8000000101350160, &unk_10139A318, 0);
}

uint64_t sub_1002EEF04(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1002EF004, 0, 0);
}

uint64_t sub_1002EF004()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  (*(v0 + 72))(v5, 1, 1, *(v0 + 64));
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_100BB9ADC(0, 0, v5, &unk_10139A328, v6);

  sub_10000B3A8(v5, &qword_101698C00, &qword_10138B570);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002EF11C(unsigned __int8 *a1)
{
  v2 = type metadata accessor for FinderStateInfo(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = *a1;
  v8 = String._bridgeToObjectiveC()();
  [v6 setBool:v7 forKey:v8];

  if (a1[2])
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setInteger:v9 forKey:v10];

  v11 = a1[1];
  v12 = String._bridgeToObjectiveC()();
  [v6 setBool:v11 forKey:v12];

  static os_log_type_t.debug.getter();
  if (qword_101695008 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_1002EF7CC(a1, v5);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  if (qword_101694530 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for ThrottledDarwinPoster();
  sub_1000076D4(v17, qword_10177A878);
  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v18)
  {
  }

  return 0;
}

uint64_t sub_1002EF3D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1002EF11C(a1);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v20 = swift_allocObject();
  v20[2] = v24;
  v20[3] = a3;
  v20[4] = v18;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101616EE8;
  v21 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100003D6C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v27 + 8))(v8, v5);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_1002EF7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinderStateInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EF89C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1002EC808();
}

uint64_t sub_1002EF950()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_1002EFA04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_1002EFB24(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v5 = v3 - 1;
  v6 = (result + 56);
  while (1)
  {
    v7 = v5;
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = *v6;
    v11 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v11 != 2)
      {
        goto LABEL_19;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v12 = v13 - v14;
      if (__OFSUB__(v13, v14))
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    if (!v11)
    {
      v12 = BYTE6(v9);
      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(v8), v8))
    {
      break;
    }

    v12 = HIDWORD(v8) - v8;
LABEL_12:
    result = sub_100017D5C(*(v6 - 2), *(v6 - 1));
LABEL_13:
    if (v12 != 20)
    {
      goto LABEL_19;
    }

    v15 = *(a2 + 32);
    sub_10015049C(a2, *(a2 + 24));
    sub_100017D5C(v8, v9);
    sub_1002F25C8();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_100016590(v8, v9);
    result = sub_100016590(v8, v9);
    if (!v2)
    {
      v6 += 32;
      v5 = v7 - 1;
      if (v7)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1002EFC78(void *a1)
{
  v2 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_10015049C(v4, v5);
  sub_1002F2020();
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v1)
  {
    sub_10015049C(v4, v5);
    sub_1000198E8();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v4, v5);
    sub_1002F2074();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v4);
}

uint64_t sub_1002EFDB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002F1C94(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1002EFDE8(void *a1)
{
  v2 = *(v1 + 1);
  v3 = *v1;
  return sub_1002EFC78(a1);
}

uint64_t sub_1002EFFE8(void *a1, uint64_t a2)
{
  v4 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v8 = a2;

  sub_1002F0EBC(&v8);
  if (v2)
  {
    goto LABEL_7;
  }

  sub_1002EFB24(v8, v10);

  v5 = 4 - *(a2 + 16);
  if ((v5 * 21) >> 64 != (21 * v5) >> 63)
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  v8 = sub_100845C88(21 * v5);
  v9 = v6;
  sub_100776394(&v8, 0);
  sub_10015049C(v10, v10[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v8, v9);
  return sub_100007BAC(v10);
}

BOOL sub_1002F012C(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 32;
  }

  while (v3 == 1);
  return v2 == 0;
}

uint64_t sub_1002F04AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(48);
  sub_1002F1064();
  v5 = CustomStringConvertible.typeDescription.getter();

  v6._countAndFlagsBits = 0x3A44497472617020;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4E6C616972657320;
  v8._object = 0xEF203A7265626D75;
  String.append(_:)(v8);
  v9._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v9);

  v10._object = 0x8000000101350180;
  v10._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v10);
  v11._countAndFlagsBits = sub_1002F0710(a4);
  String.append(_:)(v11);

  return v5;
}

char *sub_1002F0620@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_1002F20C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_1002F0668()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10083C34C(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002F06B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10083C34C(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1002F0830(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_1000198E8();
  return RawRepresentable<>.init(from:)();
}

uint64_t sub_1002F08CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_1000198E8();
  return RawRepresentable<>.encode(to:)();
}

uint64_t sub_1002F093C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_10015049C(v8, v9);
  sub_100017D5C(a2, a3);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(a2, a3);
  if (!v3)
  {
    sub_10015049C(v8, v9);
    sub_1002F2A68();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v8);
}

uint64_t sub_1002F0A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(37);
  sub_1002F2ABC();
  v4 = CustomStringConvertible.typeDescription.getter();

  v5._countAndFlagsBits = 0x4E6C616972657320;
  v5._object = 0xEF203A7265626D75;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v6);

  v7._object = 0x8000000101350180;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8._countAndFlagsBits = sub_1002F0710(a3);
  String.append(_:)(v8);

  return v4;
}

uint64_t sub_1002F0B60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002F27C8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

Swift::Int sub_1002F0BB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1002F0C14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002F0C4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1002F0CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

Swift::Int sub_1002F0D00()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_1002F0D7C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002F0DD8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_1002F0E60(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[24];
  v3 = a1[24];
  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & (v3 == v2);
}

Swift::Int sub_1002F0EBC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B32098(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 88;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v8;
        v12 = v9;
        do
        {
          v13 = v11 - 24;
          v14 = *(v11 - 24);
          if (v14 >= *(v11 - 56))
          {
            break;
          }

          v16 = *(v11 - 56);
          v15 = *(v11 - 40);
          *(v11 - 32) = *v11;
          v11 -= 32;
          v17 = *(v11 + 1);
          *v13 = v16;
          *(v13 + 1) = v15;
          *(v11 - 24) = v14;
          *(v11 - 1) = v17;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v8 += 32;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v19[0] = v7 + 4;
    v19[1] = v6;
    sub_1002F1490(v19, v20, v21, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1002F1010()
{
  result = qword_10169D050;
  if (!qword_10169D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D050);
  }

  return result;
}

unint64_t sub_1002F1064()
{
  result = qword_10169D058;
  if (!qword_10169D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D058);
  }

  return result;
}

unint64_t sub_1002F10B8()
{
  result = qword_10169D060;
  if (!qword_10169D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D060);
  }

  return result;
}

uint64_t sub_1002F111C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002F1160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1002F11B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1002F1200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002F1260()
{
  result = qword_10169D068;
  if (!qword_10169D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D068);
  }

  return result;
}

unint64_t sub_1002F12B4(uint64_t a1)
{
  *(a1 + 8) = sub_1002F12E4();
  result = sub_1002F1338();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1002F12E4()
{
  result = qword_10169D070;
  if (!qword_10169D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D070);
  }

  return result;
}

unint64_t sub_1002F1338()
{
  result = qword_10169D078;
  if (!qword_10169D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D078);
  }

  return result;
}

unint64_t sub_1002F1390()
{
  result = qword_10169D080;
  if (!qword_10169D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D080);
  }

  return result;
}

unint64_t sub_1002F13E8()
{
  result = qword_10169D088;
  if (!qword_10169D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D088);
  }

  return result;
}

unint64_t sub_1002F143C()
{
  result = qword_10169D090;
  if (!qword_10169D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D090);
  }

  return result;
}

uint64_t sub_1002F1490(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v86 = v8 + 2;
    v87 = v8[2];
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v8[2 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1002F1A44((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_117;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_118;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_119;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v15 = *v12;
      v14 = v12 + 64;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v14 >= *(v14 - 32);
        ++v16;
        v14 += 32;
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
        v18 = 32 * v7 - 32;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v24 = (v23 + v11);
            v25 = (v23 + v18);
            v26 = *(v23 + v11);
            v27 = *(v23 + v11 + 8);
            v28 = *(v23 + v11 + 24);
            if (v11 != v18 || v24 >= v25 + 2)
            {
              v21 = v25[1];
              *v24 = *v25;
              v24[1] = v21;
            }

            v22 = v23 + v18;
            *v22 = v26;
            *(v22 + 8) = v27;
            *(v22 + 24) = v28;
          }

          ++v20;
          v18 -= 32;
          v11 += 32;
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
      result = sub_100A5B430(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v40 = v8[3];
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_100A5B430((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v41;
    v42 = v8 + 4;
    v43 = &v8[2 * v5 + 4];
    *v43 = v9;
    v43[1] = v7;
    v95 = *v94;
    if (!*v94)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = v8[4];
          v45 = v8[5];
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_60:
          if (v47)
          {
            goto LABEL_107;
          }

          v60 = &v8[2 * v41];
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_109;
          }

          v66 = &v42[2 * v5];
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_114;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v41 < 2)
        {
          goto LABEL_115;
        }

        v70 = &v8[2 * v41];
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_75:
        if (v65)
        {
          goto LABEL_111;
        }

        v73 = &v42[2 * v5];
        v75 = *v73;
        v74 = v73[1];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v41)
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

        v81 = &v42[2 * v5 - 2];
        v82 = *v81;
        v83 = &v42[2 * v5];
        v84 = v83[1];
        sub_1002F1A44((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = v8[2];
        if (v5 >= v85)
        {
          goto LABEL_104;
        }

        v41 = v85 - 1;
        result = memmove(&v42[2 * v5], v83 + 2, 16 * (v85 - 1 - v5));
        v8[2] = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = &v42[2 * v41];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_105;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_106;
      }

      v55 = &v8[2 * v41];
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_108;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_110;
      }

      if (v59 >= v51)
      {
        v77 = &v42[2 * v5];
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 + 24;
  v31 = v9 - v7;
LABEL_33:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 24);
    v35 = *(v33 - 24);
    if (v35 >= *(v33 - 56))
    {
LABEL_32:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v29)
    {
      break;
    }

    v37 = *(v33 - 56);
    v36 = *(v33 - 40);
    *(v33 - 32) = *v33;
    v33 -= 32;
    v38 = *(v33 + 16);
    *v34 = v37;
    v34[1] = v36;
    *(v33 - 24) = v35;
    *(v33 - 16) = v38;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_1002F1A44(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v20 = v6 - 32;
    v5 -= 32;
    v21 = v15;
    do
    {
      v22 = v5 + 32;
      v23 = *(v21 - 32);
      v21 -= 32;
      if (v23 < *v20)
      {
        if (v22 != v6)
        {
          v25 = *(v6 - 1);
          *v5 = *v20;
          *(v5 + 1) = v25;
        }

        if (v15 <= v4 || (v6 -= 32, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v22 != v15)
      {
        v24 = *(v21 + 1);
        *v5 = *v21;
        *(v5 + 1) = v24;
      }

      v5 -= 32;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v26 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

uint64_t sub_1002F1C40(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_13;
    }

    v3 = v3;
  }

LABEL_10:
  if (v3 != 20)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1002F1C94(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v13, v14);
  sub_1000198E8();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v1)
  {
LABEL_12:
    sub_100007BAC(v13);
    return sub_100007BAC(a1);
  }

  v4 = v15;
  if (v15 > 3u)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C448);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 16777472;
      v10[4] = v4;
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalid findMyNetworkIdStatus: %hhu", v10, 5u);
    }

    v11 = type metadata accessor for BinaryEncodingError();
    sub_1002F2580(&qword_101696E20, &type metadata accessor for BinaryEncodingError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for BinaryEncodingError.encodingError(_:), v11);
    swift_willThrow();
    goto LABEL_12;
  }

  sub_10015049C(v13, v14);
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  v5 = v15;
  if (qword_101694538 != -1)
  {
    swift_once();
  }

  sub_10015049C(v13, v14);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  sub_1002F1FCC();
  result = BinaryDecodable.init(data:)();
  if (v5 > 4)
  {
    __break(1u);
  }

  else
  {
    sub_100007BAC(v13);
    sub_100007BAC(a1);
    return v4 | (v5 << 8);
  }

  return result;
}

unint64_t sub_1002F1FCC()
{
  result = qword_10169D098;
  if (!qword_10169D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D098);
  }

  return result;
}

unint64_t sub_1002F2020()
{
  result = qword_10169D0A0;
  if (!qword_10169D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0A0);
  }

  return result;
}

unint64_t sub_1002F2074()
{
  result = qword_10169D0A8;
  if (!qword_10169D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0A8);
  }

  return result;
}

char *sub_1002F20C8(uint64_t *a1)
{
  v3 = type metadata accessor for Data.Iterator();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BinaryDecoder();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  v34 = a1;
  sub_1000035D0(a1, v12);
  dispatch thunk of BinaryDecoding.container()();
  v37 = v11;
  result = BinaryDecoder.init()();
  v15 = 0;
  v39 = _swiftEmptyArrayStorage;
  v36 = (v4 + 8);
  while (1)
  {
    if (v15 <= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v15;
    }

    v35 = v16;
LABEL_6:
    if (v15 == v16)
    {
      __break(1u);
      return result;
    }

    sub_10015049C(v44, v44[3]);
    v17 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    if (v1)
    {
      break;
    }

    v19 = v17;
    v20 = v18;
    sub_1002F252C();
    BinaryDecoder.decode<A>(_:from:)();
    v45 = v15;
    v22 = v41;
    v21 = v42;
    if (v42 >> 62 == 2)
    {
      v23 = *(v41 + 16);
    }

    v40 = v45 + 1;
    v38 = v43;
    sub_100017D5C(v41, v42);
    Data.Iterator.init(_:at:)();
    sub_1002F2580(&qword_10169BAC8, &type metadata accessor for Data.Iterator);
    do
    {
      dispatch thunk of IteratorProtocol.next()();
      if ((v41 & 0x100) != 0)
      {
        sub_100016590(v19, v20);
        sub_100016590(v22, v21);
        result = (*v36)(v7, v3);
        v15 = v40;
        v16 = v35;
        if (v40 != 4)
        {
          goto LABEL_6;
        }

        goto LABEL_23;
      }
    }

    while (!v41);
    (*v36)(v7, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_100A5C600(0, *(v39 + 2) + 1, 1, v39);
    }

    v26 = *(v39 + 2);
    v25 = *(v39 + 3);
    if (v26 >= v25 >> 1)
    {
      v39 = sub_100A5C600((v25 > 1), v26 + 1, 1, v39);
    }

    result = sub_100016590(v19, v20);
    v27 = v39;
    *(v39 + 2) = v26 + 1;
    v28 = &v27[32 * v26];
    v28[32] = v45;
    *(v28 + 5) = v22;
    *(v28 + 6) = v21;
    v28[56] = v38;
    v15 = v40;
    if (v40 == 4)
    {
LABEL_23:
      (*(v32 + 8))(v37, v33);
      sub_100007BAC(v44);
      v30 = v34;
      goto LABEL_24;
    }
  }

  (*(v32 + 8))(v37, v33);

  v29 = v34;
  sub_100007BAC(v44);
  v30 = v29;
LABEL_24:
  sub_100007BAC(v30);
  return v39;
}

unint64_t sub_1002F252C()
{
  result = qword_10169D0B0;
  if (!qword_10169D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0B0);
  }

  return result;
}

uint64_t sub_1002F2580(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002F25C8()
{
  result = qword_10169D0B8;
  if (!qword_10169D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0B8);
  }

  return result;
}

uint64_t sub_1002F261C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002F2660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1002F26C8()
{
  result = qword_10169D0C0;
  if (!qword_10169D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0C0);
  }

  return result;
}

unint64_t sub_1002F2720()
{
  result = qword_10169D0C8;
  if (!qword_10169D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0C8);
  }

  return result;
}

unint64_t sub_1002F2774()
{
  result = qword_10169D0D0;
  if (!qword_10169D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0D0);
  }

  return result;
}

uint64_t sub_1002F27C8(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v16, v17);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
LABEL_9:
    sub_100007BAC(v16);
    sub_100007BAC(a1);
    return v4;
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v16, v17);
  sub_1000198E8();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  v9 = v18;
  if (v18 >= 3u)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C448);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 16777472;
      v13[4] = v9;
      _os_log_impl(&_mh_execute_header, v11, v12, "Invalid PartPairingStatus: %hhu", v13, 5u);
    }

    v4 = type metadata accessor for BinaryEncodingError();
    sub_1002F2580(&qword_101696E20, &type metadata accessor for BinaryEncodingError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v14, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
    goto LABEL_9;
  }

  v4 = sub_1002F1C40(v7, v8);
  sub_100007BAC(v16);
  sub_100007BAC(a1);
  return v4;
}

unint64_t sub_1002F2A68()
{
  result = qword_10169D0D8;
  if (!qword_10169D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0D8);
  }

  return result;
}

unint64_t sub_1002F2ABC()
{
  result = qword_10169D0E0;
  if (!qword_10169D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0E0);
  }

  return result;
}

unint64_t sub_1002F2B10()
{
  result = qword_10169D0E8;
  if (!qword_10169D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0E8);
  }

  return result;
}

uint64_t sub_1002F2B64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  static os_log_type_t.default.getter();
  if (qword_101695008 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD00000000000002BLL;
  *(v6 + 80) = 0x8000000101350890;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000035D0(&v2[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&v2[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  v13 = *v11;
  v14 = v3;

  sub_1002F3654(sub_1002FDD58, v12);
}

uint64_t sub_1002F2D30(char a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if ((a1 & 1) == 0)
  {
    return a3(_swiftEmptyArrayStorage);
  }

  v5 = *sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v6 = sub_1002F3FA8();
  v7 = v6[2];
  if (v7)
  {
    v21 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v9 = (v6 + 4);
    do
    {
      sub_10001F280(v9, v18);
      v10 = v19;
      v11 = v20;
      v12 = sub_1000035D0(v18, v19);
      sub_100B005BC(v12, v8, v10, v11);
      sub_100007BAC(v18);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v21[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 40;
      --v7;
    }

    while (v7);

    v14 = v21;
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  if (v14 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  *(v16 + 32) = v17;
  os_log(_:dso:log:_:_:)();

  a3(v14);
}

void sub_1002F3010(uint64_t a1, uint64_t a2)
{
  sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1002F3394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD00000000000002BLL;
  *(v7 + 80) = 0x8000000101350210;
  os_log(_:dso:log:_:_:)();

  v12 = *sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1002F9D2C(a1, a2, a3);
}

uint64_t sub_1002F3654(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10177B2E8 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = sub_100034838(v15[1]);

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = v3;
  v13[6] = a1;
  v13[7] = a2;

  sub_10025EDD4(0, 0, v9, &unk_10139AAB8, v13);
}

uint64_t sub_1002F3818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(type metadata accessor for BeaconObservation() - 8);
  v7[6] = v8;
  v9 = *(v8 + 64) + 15;
  v7[7] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v7[8] = v10;
  v11 = *(v10 - 8);
  v7[9] = v11;
  v12 = *(v11 + 64) + 15;
  v7[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002F3934, 0, 0);
}

uint64_t sub_1002F3934()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[6];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v4 + 72);
    do
    {
      v6 = v0[10];
      v8 = v0[7];
      v7 = v0[8];
      sub_1002FDC90(v5, v8, type metadata accessor for BeaconObservation);
      (*(v3 + 16))(v6, v8, v7);
      sub_1002FD958(v8, type metadata accessor for BeaconObservation);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[10];
      v12 = v0[8];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v18;
      --v2;
    }

    while (v2);
  }

  v13 = v0[3];
  v14 = sub_10000954C(_swiftEmptyArrayStorage);
  v0[11] = v14;

  v15 = *(v13 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_1002F3B44;

  return sub_10025314C(v14);
}

uint64_t sub_1002F3B44(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1002F3C64, 0, 0);
}

uint64_t sub_1002F3C64()
{
  v1 = *(v0[13] + 16);

  if (v1)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = swift_allocObject();
    v0[14] = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = async function pointer to unsafeBlocking<A>(_:)[1];

    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_1002F3E24;

    return unsafeBlocking<A>(_:)(v6, sub_1002FDE38, v4, &type metadata for () + 8);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v7 = v0[4];
    v8 = v0[5];
    os_log(_:dso:log:_:_:)();
    v7(0);
    v9 = v0[10];
    v10 = v0[7];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1002F3E24()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_1002F3F3C, 0, 0);
}

uint64_t sub_1002F3F3C()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

void *sub_1002F3FA8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  v3 = sub_1002513B4();
  v4 = *(v1 + 280);
  v5 = sub_100AA56A8(v3);

  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v11 = v5[2];
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  return v5;
}

uint64_t sub_1002F40F0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v33 = *(v15 - 8);
  v34 = v15;
  v16 = *(v33 + 64);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = sub_1002F44A8(a2, a3, a4, v29, v30);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v20 + 104))(v23, enum case for DispatchQoS.QoSClass.default(_:), v19);
  v24 = static OS_dispatch_queue.global(qos:)();
  (*(v20 + 8))(v23, v19);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v31;
  *(v25 + 24) = v26;
  *(v25 + 32) = a2 & 1;
  aBlock[4] = sub_1002FB50C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101617528;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_1002FDD08(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v35 + 8))(v14, v11);
  (*(v33 + 8))(v18, v34);
}

uint64_t sub_1002F44A8(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for UUID();
  v126 = *(v12 - 8);
  v13 = *(v126 + 64);
  __chkstk_darwin(v12);
  v123 = v14;
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = *(v120 + 64);
  __chkstk_darwin(v15);
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + 280);
  sub_100025020(a1, &v127);
  if (v128)
  {
    v119 = v18;
    v124 = a5;
    v117 = v12;
    v115 = a3;
    v118 = v6;
    v116 = a4;
    sub_100031694(&v127, v132);
    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v20 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10138BBE0;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    v25 = sub_100008C00();
    *(v21 + 64) = v25;
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v26 = sub_10091E6AC(a2);
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v25;
    *(v21 + 72) = v26;
    *(v21 + 80) = v27;
    v114 = v20;
    os_log(_:dso:log:_:_:)();

    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v28 = qword_10177B2E8;
    v122 = a1;
    sub_1002FB6F4(qword_10177B2E8, a1, a2, v124);
    v29 = v119;
    if (a2 > 7u)
    {
      if (a2 != 8)
      {
        if (a2 == 11)
        {
          v68 = *(v28 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
          v69 = static DispatchWorkItemFlags.barrier.getter();
          __chkstk_darwin(v69);
          v70 = v122;
          *(&v114 - 4) = v28;
          *(&v114 - 3) = v70;
          *(&v114 - 2) = sub_1002FDEA8;
          *(&v114 - 1) = 0;
          OS_dispatch_queue.sync<A>(flags:execute:)();
          (*(v120 + 8))(v29, v121);
          type metadata accessor for Transaction();
          v72 = v125;
          v71 = v126;
          v73 = v117;
          (*(v126 + 16))(v125, v70, v117);
          v74 = (*(v71 + 80) + 24) & ~*(v71 + 80);
          v75 = (v123 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
          v76 = swift_allocObject();
          *(v76 + 16) = v118;
          (*(v71 + 32))(v76 + v74, v72, v73);
          v77 = (v76 + v75);
          v78 = v116;
          *v77 = v115;
          v77[1] = v78;

          static Transaction.asyncTask(name:block:)();

          if (v78)
          {
            v79 = v133;
            v80 = v134;
            sub_1000035D0(v132, v133);
            v81 = (*(v80 + 24))(v79, v80);
            if (v81 == v115 && v82 == v78)
            {
            }

            else
            {
              v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v113 & 1) == 0)
              {
                sub_1002F5280(v115, v78, v132);
              }
            }
          }

          goto LABEL_34;
        }

        v30 = v116;
        if (a2 != 13)
        {
LABEL_34:
          sub_100007BAC(v132);
          LOBYTE(v31) = 1;
          return v31 & 1;
        }

        v31 = *(v118 + 176);
        if (v31)
        {
          v32 = *(v118 + 176);

          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          v33 = type metadata accessor for Transaction();
          __chkstk_darwin(v33);
          v34 = v122;
          *(&v114 - 4) = v31;
          *(&v114 - 3) = v34;
          *(&v114 - 2) = v115;
          *(&v114 - 1) = v30;
          static Transaction.named<A>(_:with:)();

          goto LABEL_34;
        }

LABEL_39:
        sub_100007BAC(v132);
        return v31 & 1;
      }

      static os_log_type_t.default.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_10138B360;
      v50 = v133;
      v49 = v134;
      sub_1000035D0(v132, v133);
      v51 = v125;
      (*(*(*(v49 + 8) + 8) + 32))(v50);
      v52 = UUID.uuidString.getter();
      v54 = v53;
      (*(v126 + 8))(v51, v117);
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = v25;
      *(v48 + 32) = v52;
      *(v48 + 40) = v54;
      v55 = v133;
      v56 = v134;
      sub_1000035D0(v132, v133);
      v57 = v55;
      v58 = v124;
      v59 = (*(v56 + 24))(v57, v56);
      *(v48 + 96) = &type metadata for String;
      *(v48 + 104) = v25;
      *(v48 + 72) = v59;
      *(v48 + 80) = v60;
      *&v127 = v58;
      swift_errorRetain();
      sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
      v61 = String.init<A>(describing:)();
      *(v48 + 136) = &type metadata for String;
      *(v48 + 144) = v25;
      *(v48 + 112) = v61;
      *(v48 + 120) = v62;
      os_log(_:dso:log:_:_:)();

      v63 = *(v28 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
      v64 = static DispatchWorkItemFlags.barrier.getter();
      __chkstk_darwin(v64);
      v65 = v122;
      *(&v114 - 4) = v28;
      *(&v114 - 3) = v65;
      *(&v114 - 2) = sub_1002FDEA8;
      *(&v114 - 1) = 0;
      OS_dispatch_queue.sync<A>(flags:execute:)();
      (*(v120 + 8))(v29, v121);
      if (v116)
      {
        v121 = v116;
        v66 = v118;
        v67 = v115;
      }

      else
      {
        v88 = v133;
        v89 = v134;
        sub_1000035D0(v132, v133);
        v67 = (*(v89 + 24))(v88, v89);
        v121 = v90;
        v66 = v118;
      }

      v91 = v123;
      v123 = type metadata accessor for Transaction();
      v92 = v125;
      v93 = v126;
      v94 = v117;
      (*(v126 + 16))(v125, v122, v117);
      v95 = (*(v93 + 80) + 24) & ~*(v93 + 80);
      v96 = (v95 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v97 = (v95 + v91 + 31) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      *(v98 + 16) = v66;
      (*(v93 + 32))(v98 + v95, v92, v94);
      v99 = v98 + v96;
      v100 = v121;
      *v99 = v67;
      *(v99 + 8) = v100;
      *(v99 + 16) = 0;
      *(v98 + v97) = v124;

      swift_errorRetain();
      static Transaction.asyncTask(name:block:)();
LABEL_33:

      goto LABEL_34;
    }

    if (a2 == 6)
    {
      type metadata accessor for Transaction();
      v84 = v125;
      v83 = v126;
      v85 = v117;
      (*(v126 + 16))(v125, v122, v117);
      v86 = (*(v83 + 80) + 24) & ~*(v83 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = v118;
      (*(v83 + 32))(v87 + v86, v84, v85);

      static Transaction.asyncTask(name:block:)();
      goto LABEL_33;
    }

    v39 = v116;
    if (a2 != 7)
    {
      goto LABEL_34;
    }

    sub_10001F280(v132, &v127);
    if (qword_101694BB0 != -1)
    {
      swift_once();
    }

    v131 = qword_10177B9C8;
    v129 = 0;
    v130 = 0;
    v40 = objc_opt_self();

    v41 = [v40 sharedInstance];
    v42 = [v41 isInternalBuild];

    if (v42)
    {
      sub_100A582C8(v122);
    }

    sub_1002FC360(&v127);
    v43 = *(v28 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
    v44 = static DispatchWorkItemFlags.barrier.getter();
    __chkstk_darwin(v44);
    v45 = v122;
    *(&v114 - 4) = v28;
    *(&v114 - 3) = v45;
    *(&v114 - 2) = sub_1002FDEA8;
    *(&v114 - 1) = 0;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    (*(v120 + 8))(v29, v121);
    if (v39)
    {
      v46 = v115;
      v47 = v39;
    }

    else
    {
      v102 = v133;
      v103 = v134;
      sub_1000035D0(v132, v133);
      v46 = (*(v103 + 24))(v102, v103);
      v47 = v104;
    }

    v105 = v39;
    v124 = type metadata accessor for Transaction();
    v106 = v125;
    v107 = v126;
    v108 = v117;
    (*(v126 + 16))(v125, v122, v117);
    v109 = (*(v107 + 80) + 24) & ~*(v107 + 80);
    v110 = (v123 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    *(v111 + 16) = v118;
    (*(v107 + 32))(v111 + v109, v106, v108);
    v112 = (v111 + v110);
    *v112 = v46;
    v112[1] = v47;

    static Transaction.asyncTask(name:block:)();

    if (v105)
    {
      LOBYTE(v31) = sub_1002F5280(v115, v105, v132);
      goto LABEL_39;
    }

    sub_100007BAC(v132);
  }

  else
  {
    sub_10000B3A8(&v127, &qword_101696920, &unk_10138B200);
    static os_log_type_t.error.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    v36 = UUID.uuidString.getter();
    v38 = v37;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_100008C00();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    os_log(_:dso:log:_:_:)();
  }

  LOBYTE(v31) = 0;
  return v31 & 1;
}

uint64_t sub_1002F5280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = type metadata accessor for SharedBeaconRecord(0);
  v81 = *(v85 - 1);
  v7 = *(v81 + 64);
  v8 = __chkstk_darwin(v85);
  v83 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v89 = (&v80 - v11);
  v82 = v12;
  __chkstk_darwin(v10);
  v84 = (&v80 - v13);
  v91 = type metadata accessor for OwnedBeaconRecord();
  v87 = *(v91 - 8);
  v14 = *(v87 + 8);
  v15 = __chkstk_darwin(v91);
  v88 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v93 = (&v80 - v18);
  v86 = v19;
  __chkstk_darwin(v17);
  v21 = &v80 - v20;
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C400;
  v92 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10138BBE0;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_100008C00();
  *(v23 + 64) = v24;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  sub_10001F280(a3, v95);

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v90 = a1;
  v25 = String.init<A>(describing:)();
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  v26 = v24;
  *(v23 + 72) = v25;
  *(v23 + 80) = v27;
  v80 = v22;
  os_log(_:dso:log:_:_:)();

  v28 = PressuredExitTransactionManager.begin(_:)();
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  *(v29 + 24) = v28;
  sub_10001F280(a3, v95);
  swift_retain_n();

  if (swift_dynamicCast())
  {
    v30 = v93;
    sub_100029280(v21, v93, type metadata accessor for OwnedBeaconRecord);
    v31 = swift_allocObject();
    *(v31 + 16) = v90;
    *(v31 + 24) = a2;
    v32 = swift_allocObject();
    *(v32 + 2) = sub_1002FD8B8;
    *(v32 + 3) = v29;
    *(v32 + 4) = sub_1002FD8B0;
    *(v32 + 5) = v28;
    v33 = *(v3 + 280);

    v91 = v29;

    v89 = v31;

    static os_log_type_t.default.getter();
    v90 = v28;
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v26;
    *(v34 + 32) = 0x65736C6166;
    *(v34 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)();

    v35 = objc_autoreleasePoolPush();
    sub_101121B40(v30);
    v37 = v36;
    v92 = v36;
    objc_autoreleasePoolPop(v35);
    v38 = *(v33 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    v39 = v30;
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v85 = type metadata accessor for OwnedBeaconRecord;
    v40 = v88;
    sub_1002FDC90(v30, v88, type metadata accessor for OwnedBeaconRecord);
    v41 = v86;
    v42 = *(v87 + 80);
    v43 = swift_allocObject();
    v87 = v33;
    v44 = v43;
    v45 = v89;
    *(v43 + 16) = sub_1002FD9B8;
    *(v43 + 24) = v45;
    v84 = type metadata accessor for OwnedBeaconRecord;
    sub_100029280(v40, v43 + ((v42 + 32) & ~v42), type metadata accessor for OwnedBeaconRecord);

    sub_100FDCA40(v37, sub_1002FDA30, v44);

    v46 = swift_allocObject();
    *(v46 + 16) = sub_1002FDA00;
    *(v46 + 24) = v32;

    Future.addFailure(block:)();

    sub_1002FDC90(v39, v40, v85);
    v47 = (v42 + 16) & ~v42;
    v48 = (v41 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    sub_100029280(v40, v49 + v47, v84);
    *(v49 + v48) = v87;
    v50 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v50 = sub_1002FDA00;
    v50[1] = v32;

    Future.addSuccess(block:)();

    v51 = type metadata accessor for OwnedBeaconRecord;
    v52 = v93;
  }

  else
  {
    v53 = a2;
    v54 = v90;
    v55 = v84;
    if (!swift_dynamicCast())
    {
      static os_log_type_t.error.getter();
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_101385D80;
      sub_10001F280(a3, v94);
      v77 = String.init<A>(describing:)();
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = v24;
      *(v76 + 32) = v77;
      *(v76 + 40) = v78;
      os_log(_:dso:log:_:_:)();

      Transaction.end()();

      v75 = 0;
      goto LABEL_13;
    }

    v56 = v89;
    sub_100029280(v55, v89, type metadata accessor for SharedBeaconRecord);
    v57 = swift_allocObject();
    *(v57 + 16) = v54;
    *(v57 + 24) = v53;
    v58 = swift_allocObject();
    *(v58 + 2) = sub_1002FD8B8;
    *(v58 + 3) = v29;
    *(v58 + 4) = sub_1002FD8B0;
    *(v58 + 5) = v28;
    v59 = *(v3 + 280);

    v93 = v57;

    static os_log_type_t.default.getter();
    v90 = v28;
    v91 = v29;
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_101385D80;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = v24;
    *(v60 + 32) = 0x65736C6166;
    *(v60 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)();

    v61 = objc_autoreleasePoolPush();
    sub_101122288(v56);
    v63 = v62;
    v92 = v62;
    objc_autoreleasePoolPop(v61);
    v64 = *(v59 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v65 = v83;
    sub_1002FDC90(v56, v83, type metadata accessor for SharedBeaconRecord);
    v66 = *(v81 + 80);
    v88 = v59;
    v67 = v82;
    v68 = swift_allocObject();
    v69 = v93;
    *(v68 + 16) = sub_1002FD8C0;
    *(v68 + 24) = v69;
    v87 = type metadata accessor for SharedBeaconRecord;
    sub_100029280(v65, v68 + ((v66 + 32) & ~v66), type metadata accessor for SharedBeaconRecord);

    sub_100FDCA40(v63, sub_1002FD8F8, v68);

    v70 = swift_allocObject();
    *(v70 + 16) = sub_1002FD8C8;
    *(v70 + 24) = v58;

    Future.addFailure(block:)();

    sub_1002FDC90(v89, v65, type metadata accessor for SharedBeaconRecord);
    v71 = (v66 + 16) & ~v66;
    v72 = (v67 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    sub_100029280(v65, v73 + v71, v87);
    *(v73 + v72) = v88;
    v74 = (v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v74 = sub_1002FD8C8;
    v74[1] = v58;

    Future.addSuccess(block:)();

    v51 = type metadata accessor for SharedBeaconRecord;
    v52 = v89;
  }

  sub_1002FD958(v52, v51);
  v75 = 1;
LABEL_13:
  sub_100007BAC(v95);
  return v75;
}

uint64_t sub_1002F5F18(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = type metadata accessor for UUID();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v2[15] = *(v4 + 64);
  v2[16] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[17] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord();
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v2[21] = *(v8 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002F60C4, 0, 0);
}

uint64_t sub_1002F60C4()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 200) = v1;
  return _swift_task_switch(sub_1002F60F4, v1, 0);
}

uint64_t sub_1002F60F4()
{
  v1 = *(v0 + 200);
  swift_beginAccess();
  *(v0 + 208) = *(v1 + 144);

  return _swift_task_switch(sub_1002F617C, 0, 0);
}

uint64_t sub_1002F617C()
{
  if (*(v0[26] + 16) && (v1 = sub_1000210EC(v0[12]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[26] + 56) + 8 * v1);
    v0[27] = v3;

    return _swift_task_switch(sub_1002F628C, v3, 0);
  }

  else
  {

    v5 = v0[23];
    v4 = v0[24];
    v6 = v0[22];
    v7 = v0[18];
    v8 = v0[16];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1002F628C()
{
  v1 = *(v0 + 216);
  *(v0 + 224) = sub_10114A1D4(0xD000000000000013, 0x800000010134E570);

  return _swift_task_switch(sub_1002F6310, 0, 0);
}

uint64_t sub_1002F6310()
{
  v1 = v0[28];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[29] = v2;
    v3 = v0[27];
    if (v2)
    {
      v4 = v0[27];

      return _swift_task_switch(sub_1002F6420, v4, 0);
    }
  }

  else
  {
    v5 = v0[27];
  }

  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v0[18];
  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002F6420()
{
  v1 = *(v0 + 216);
  *(v0 + 240) = sub_10114A1D4(0x496E6F6973736573, 0xE900000000000044);

  return _swift_task_switch(sub_1002F64A4, 0, 0);
}

uint64_t sub_1002F64A4()
{
  v1 = v0[30];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[31] = v2;
    if (v2)
    {
      v3 = v0[27];

      return _swift_task_switch(sub_1002F65B8, v3, 0);
    }

    v6 = v0[27];
    v5 = v0[28];
  }

  else
  {
    v4 = v0[27];
    v5 = v0[28];
  }

  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[18];
  v11 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002F65B8()
{
  sub_10114AE90(*(v0 + 216));
  *(v0 + 256) = 0;

  return _swift_task_switch(sub_1002F664C, 0, 0);
}

uint64_t sub_1002F664C()
{
  v0[33] = v0[32];
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[34] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v0[35] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[36] = v8;
  v0[37] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(&v4[v5], 1, 1, v6);
  v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000032;
  *(v4 + 16) = 0x80000001013505F0;

  return _swift_task_switch(sub_1002F67AC, v4, 0);
}

uint64_t sub_1002F67AC()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[24];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();

  return _swift_task_switch(sub_1002F6878, 0, 0);
}

uint64_t sub_1002F6878()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  (*(v3 + 16))(v1, v0[12], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[38] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_1002F69B4;
  v10 = v0[17];
  v9 = v0[18];

  return unsafeBlocking<A>(_:)(v9, sub_1002FD81C, v6, v10);
}

uint64_t sub_1002F69B4()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_1002F6ACC, 0, 0);
}

uint64_t sub_1002F6ACC()
{
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v6 = sub_10115F4E8;
    v2 = swift_task_alloc();
    v0[40] = v2;
    *v2 = v0;
    v2[1] = sub_1002F6C2C;
    v3 = v0[34];
  }

  else
  {
    sub_100029280(v1, v0[23], type metadata accessor for OwnedBeaconRecord);
    v6 = sub_1002FC5A8;
    v4 = swift_task_alloc();
    v0[41] = v4;
    *v4 = v0;
    v4[1] = sub_1002F6D40;
    v3 = v0[23];
  }

  return v6(v3);
}

uint64_t sub_1002F6C2C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 200);

  return _swift_task_switch(sub_1002F7278, v5, 0);
}

uint64_t sub_1002F6D40(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_1002F6E40, 0, 0);
}

uint64_t sub_1002F6E40()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[11];
  sub_1002FDC90(v0[23], v1, type metadata accessor for OwnedBeaconRecord);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[43] = v6;
  *(v6 + 16) = v4;
  sub_100029280(v1, v6 + v5, type metadata accessor for OwnedBeaconRecord);
  v7 = async function pointer to unsafeBlocking<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_1002F6F80;

  return unsafeBlocking<A>(_:)(v0 + 46, sub_1002FD820, v6, &type metadata for Bool);
}

uint64_t sub_1002F6F80()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return _swift_task_switch(sub_1002F7098, 0, 0);
}

uint64_t sub_1002F7098()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  v5 = *(v0 + 336) == 0;
  v6 = *(v0 + 368);
  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;
  *(v7 + 41) = v6;

  return _swift_task_switch(sub_1002F7144, v1, 0);
}

uint64_t sub_1002F7144()
{
  v1 = v0[45];
  v3 = v0[33];
  v2 = v0[34];
  sub_10115BE7C(sub_1002FD894);
  v4 = v0[45];
  if (v3)
  {

    v5 = sub_1002FDE9C;
  }

  else
  {
    v6 = v0[45];

    v5 = sub_1002F71FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002F71FC()
{
  sub_1002FD958(*(v0 + 184), type metadata accessor for OwnedBeaconRecord);
  v1 = *(v0 + 200);

  return _swift_task_switch(sub_1002F7278, v1, 0);
}

uint64_t sub_1002F7278()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = v0[12];
  swift_beginAccess();

  v4 = *(v2 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 152);
  *(v2 + 152) = 0x8000000000000000;
  sub_100FFB6F0(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 152) = v7;
  swift_endAccess();

  return _swift_task_switch(sub_1002F734C, 0, 0);
}

uint64_t sub_1002F734C()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];

  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[18];
  v9 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002F7400()
{
  v0[33] = 0;
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[34] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v0[35] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[36] = v8;
  v0[37] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(&v4[v5], 1, 1, v6);
  v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000032;
  *(v4 + 16) = 0x80000001013505F0;

  return _swift_task_switch(sub_1002F67AC, v4, 0);
}

uint64_t sub_1002F755C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = *(a1 + 280);
  v11 = *(type metadata accessor for OwnedBeaconRecord() + 20);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v12 = sub_100035730(a2 + v11, 0, 0);
  v13 = sub_10003ABC0(v9, a2 + v11, v12, 0);

  result = sub_10000B3A8(v9, &unk_101696900, &unk_10138B1E0);
  *a3 = v13 & 1;
  return result;
}

unint64_t sub_1002F768C(void *a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5)
{
  v33 = __PAIR64__(a5, a4);
  v32 = type metadata accessor for StableIdentifier();
  v8 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B420;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  *(inited + 48) = a1;
  *(inited + 56) = 0;
  strcpy((inited + 64), "batteryLevel");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  v12 = type metadata accessor for OwnedBeaconRecord();
  v13 = *(a2 + v12[19]);
  v14 = objc_allocWithZone(NSNumber);
  v15 = a1;
  *(inited + 80) = [v14 initWithInteger:{v13, v32, v33}];
  *(inited + 88) = 0;
  strcpy((inited + 96), "updateRequired");
  *(inited + 111) = -18;
  *(inited + 112) = 1;
  *(inited + 120) = 1;
  *(inited + 128) = 0x737265566D6F7266;
  *(inited + 136) = 0xEB000000006E6F69;
  v16 = (a2 + v12[15]);
  v17 = *v16;
  v18 = v16[1];
  *(inited + 144) = String._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x800000010134E570;
  *(inited + 176) = a3;
  *(inited + 184) = 0;
  *(inited + 192) = 0x6563697665447369;
  *(inited + 200) = 0xEF6465687361654CLL;
  v19 = a3;
  *(inited + 208) = Bool._bridgeToObjectiveC()();
  *(inited + 216) = 0;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000101350630;
  *(inited + 240) = Bool._bridgeToObjectiveC()();
  *(inited + 248) = 0;
  v20 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  v21 = [objc_opt_self() sharedInstance];
  LODWORD(a1) = [v21 isInternalBuild];

  if (a1)
  {
    v22 = a2 + v12[5];
    UUID.uuidString.getter();
    v23 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v20;
    sub_100FFC418(v23, 0, 0x6544646572696170, 0xEE00444965636976, isUniquelyReferenced_nonNull_native);
    v20 = v34;
    sub_1002FDC90(a2 + v12[6], v10, type metadata accessor for StableIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v10[1];
      v26 = v10[3];
      v27 = v10[4];
      v28 = v10[5];

      v29 = String._bridgeToObjectiveC()();

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v20;
      sub_100FFC418(v29, 0, 0xD000000000000018, 0x8000000101350650, v30);
      return v34;
    }

    else
    {
      sub_1002FD958(v10, type metadata accessor for StableIdentifier);
    }
  }

  return v20;
}

uint64_t sub_1002F7A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return _swift_task_switch(sub_1002F7A9C, 0, 0);
}

uint64_t sub_1002F7A9C()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_1002F7ACC, v1, 0);
}

uint64_t sub_1002F7ACC()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 152);

  return _swift_task_switch(sub_1002F7B54, 0, 0);
}

uint64_t sub_1002F7B54()
{
  if (*(v0[10] + 16) && (v1 = sub_1000210EC(v0[6]), (v2 & 1) != 0))
  {
    v3 = v0[8];
    v4 = *(*(v0[10] + 56) + 8 * v1);
    v0[11] = v4;
    swift_retain_n();

    return _swift_task_switch(sub_1002F7C88, v4, 0);
  }

  else
  {

    v0[12] = 0;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1002F7D60;
    v6 = v0[9];
    v7 = v0[6];

    return sub_10024F2F8(v7);
  }
}

uint64_t sub_1002F7C88()
{
  sub_10116EF04(*(v0 + 88), *(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  *(v0 + 96) = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1002F7D60;
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  return sub_10024F2F8(v5);
}

uint64_t sub_1002F7D60()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1002F7E70, v2, 0);
}

uint64_t sub_1002F7E70()
{
  v1 = *(v0 + 72);
  sub_10024F7A0(*(v0 + 48));

  return _swift_task_switch(sub_1002F7EDC, 0, 0);
}

uint64_t sub_1002F7EDC()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1002F7F3C()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 1;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6F69737265566F74;
  *(inited + 72) = 0xE90000000000006ELL;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  strcpy((inited + 96), "didShowAlert");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = 0;
  *(inited + 120) = 1;
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1002F8064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = a6;
  *(v6 + 168) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  return _swift_task_switch(sub_1002F8090, 0, 0);
}

uint64_t sub_1002F8090()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_1002F80C0, v1, 0);
}

uint64_t sub_1002F80C0()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 112) = *(v1 + 144);

  return _swift_task_switch(sub_1002F8148, 0, 0);
}

uint64_t sub_1002F8148()
{
  if (*(v0[14] + 16) && (v1 = sub_1000210EC(v0[9]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[14] + 56) + 8 * v1);
    v0[15] = v3;

    v4 = sub_1002F8204;
    v5 = v3;
  }

  else
  {

    v0[16] = 0;
    v5 = v0[13];
    v4 = sub_1002F8294;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1002F8204()
{
  sub_10114AEB4(*(v0 + 120));
  v1 = *(v0 + 120);

  *(v0 + 128) = 0;
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_1002F8294, v2, 0);
}

uint64_t sub_1002F8294()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 136) = *(v1 + 152);

  return _swift_task_switch(sub_1002F831C, 0, 0);
}

uint64_t sub_1002F831C()
{
  if (*(v0[17] + 16) && (v1 = sub_1000210EC(v0[9]), (v2 & 1) != 0))
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = *(*(v0[17] + 56) + 8 * v1);
    v0[18] = v5;
    swift_retain_n();

    swift_errorRetain();

    return _swift_task_switch(sub_1002F8454, v5, 0);
  }

  else
  {

    v0[19] = 0;
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1002F853C;
    v7 = v0[13];
    v8 = v0[9];

    return sub_10024F2F8(v8);
  }
}

uint64_t sub_1002F8454()
{
  v1 = *(v0 + 128);
  sub_10116EF44(*(v0 + 144), *(v0 + 80), *(v0 + 88), *(v0 + 168), *(v0 + 96));
  v2 = *(v0 + 144);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  if (v1)
  {
  }

  *(v0 + 152) = *(v0 + 144);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1002F853C;
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);

  return sub_10024F2F8(v7);
}

uint64_t sub_1002F853C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_1002F864C, v2, 0);
}

uint64_t sub_1002F864C()
{
  v1 = *(v0 + 104);
  sub_10024F7A0(*(v0 + 72));

  return _swift_task_switch(sub_1002F86B8, 0, 0);
}

uint64_t sub_1002F86B8()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1002F8718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(0);
  *(inited + 56) = 0;
  *(inited + 64) = 0x6F69737265566F74;
  *(inited + 72) = 0xE90000000000006ELL;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  strcpy((inited + 96), "didShowAlert");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = Bool._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  v6 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (a4)
  {
    swift_getErrorValue();
    swift_errorRetain();
    Error.domain.getter();
    v7 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v7, 0, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    swift_getErrorValue();
    Error.code.getter();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(isa, 0, 0x646F43726F727265, 0xE900000000000065, v10);
  }

  return v6;
}

uint64_t sub_1002F8974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for UUID();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002F8A7C, 0, 0);
}

uint64_t sub_1002F8A7C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  (*(v3 + 16))(v1, v0[6], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1002F8BB8;
  v10 = v0[13];
  v9 = v0[14];

  return unsafeBlocking<A>(_:)(v9, sub_1002FDEAC, v6, v10);
}

uint64_t sub_1002F8BB8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_1002F8CD0, 0, 0);
}

uint64_t sub_1002F8CD0()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_1002F8D00, v1, 0);
}

uint64_t sub_1002F8D00()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  *(v0 + 144) = *(v1 + 152);

  return _swift_task_switch(sub_1002F8D88, 0, 0);
}

uint64_t sub_1002F8D88()
{
  if (*(v0[18] + 16) && (v1 = sub_1000210EC(v0[6]), (v2 & 1) != 0))
  {
    v3 = v0[14];
    v5 = v0[7];
    v4 = v0[8];
    v6 = *(*(v0[18] + 56) + 8 * v1);
    v0[19] = v6;

    v7 = swift_task_alloc();
    v0[20] = v7;
    v7[2] = v3;
    v7[3] = v5;
    v7[4] = v4;

    return _swift_task_switch(sub_1002F8EDC, v6, 0);
  }

  else
  {

    v0[21] = 0;
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = sub_1002F8FC4;
    v9 = v0[17];
    v10 = v0[6];

    return sub_10024F2F8(v10);
  }
}

uint64_t sub_1002F8EDC()
{
  v2 = v0[19];
  v1 = v0[20];
  sub_10115BE7C(sub_1002FDC84);
  v3 = v0[19];
  v4 = v0[20];

  v0[21] = v0[19];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1002F8FC4;
  v6 = v0[17];
  v7 = v0[6];

  return sub_10024F2F8(v7);
}

uint64_t sub_1002F8FC4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_1002F90D4, v2, 0);
}

uint64_t sub_1002F90D4()
{
  v1 = *(v0 + 136);
  sub_10024F7A0(*(v0 + 48));

  return _swift_task_switch(sub_1002F9140, 0, 0);
}

uint64_t sub_1002F9140()
{
  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[12];

  sub_10000B3A8(v2, &unk_1016A9A20, &qword_10138B280);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002F91D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for OwnedBeaconRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D2A70(a1, v8, &unk_1016A9A20, &qword_10138B280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &unk_1016A9A20, &qword_10138B280);
    return sub_100908768(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_100029280(v8, v13, type metadata accessor for OwnedBeaconRecord);
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101391790;
    strcpy((inited + 32), "updateRequired");
    *(inited + 47) = -18;
    *(inited + 48) = 0;
    *(inited + 56) = 1;
    *(inited + 64) = 0x6563637553736177;
    *(inited + 72) = 0xEA00000000007373;
    *(inited + 80) = 0;
    *(inited + 88) = 1;
    *(inited + 96) = 0x6F69737265566F74;
    *(inited + 104) = 0xE90000000000006ELL;
    if (!a3)
    {
      v16 = &v13[*(v9 + 60)];
      v17 = *v16;
      v18 = v16[1];
    }

    v19 = String._bridgeToObjectiveC()();

    *(inited + 112) = v19;
    *(inited + 120) = 0;
    strcpy((inited + 128), "didShowAlert");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    *(inited + 144) = 0;
    *(inited + 152) = 1;
    v20 = sub_100908768(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
    swift_arrayDestroy();
    sub_1002FD958(v13, type metadata accessor for OwnedBeaconRecord);
    return v20;
  }
}

void sub_1002F94D8()
{
  static os_log_type_t.error.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v0 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100008C00();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  os_log(_:dso:log:_:_:)();

  Transaction.end()();
}

uint64_t sub_1002F95F8(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v24);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v16 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 16) = v22;
  *(v18 + 24) = v19;
  aBlock[4] = sub_1002FDBE0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101617820;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1002FDD08(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v24);
}

uint64_t sub_1002F99E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for OwnedBeaconRecord() + 60));
  v6 = v5[1];

  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_1002F9A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for SharedBeaconRecord(0) + 40));
  v6 = v5[1];

  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_1002F9A90(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v12 = sub_1000BC4D4(a6, a7);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v17 - v14);
  sub_1000D2A70(a1, &v17 - v14, a6, a7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a4(*v15);
  }

  else
  {
    a2();
    return sub_10000B3A8(v15, a6, a7);
  }
}

uint64_t sub_1002F9B98(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002F9C34, 0, 0);
}

uint64_t sub_1002F9C34()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_1002F9C64, v1, 0);
}

uint64_t sub_1002F9C64()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_100251FF8(4, v1);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002F9D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v59 = a2;
  v4 = type metadata accessor for UUID();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  __chkstk_darwin(v4);
  v55 = v6;
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v48 - v9;
  v51 = type metadata accessor for BeaconObservation();
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v51);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v48 - v18;
  v20 = type metadata accessor for Date();
  v52 = *(v20 - 8);
  v21 = *(v52 + 56);
  v54 = v19;
  v49 = v21;
  v21(v19, 1, 1, v20);
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  v23 = UUID.uuidString.getter();
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  os_log(_:dso:log:_:_:)();

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v26 = sub_100035730(a1, sub_1010C4F08, 0);
  sub_1012BB138(v26, v10);

  v27 = v51;
  v28 = (*(v11 + 48))(v10, 1, v51);
  v29 = a1;
  v30 = v53;
  if (v28 == 1)
  {
    sub_10000B3A8(v10, &qword_1016A42E0, &qword_1013B0010);
    v31 = -1;
    v32 = v54;
    v33 = v52;
  }

  else
  {
    v32 = v54;
    sub_10000B3A8(v54, &unk_101696900, &unk_10138B1E0);
    v34 = v50;
    sub_100029280(v10, v50, type metadata accessor for BeaconObservation);
    v33 = v52;
    (*(v52 + 16))(v32, v34 + *(v27 + 20), v20);
    v49(v32, 0, 1, v20);
    v35 = *(v34 + *(v27 + 24));
    sub_1002FD958(v34, type metadata accessor for BeaconObservation);
    if ((v35 - 6) > 5)
    {
      v31 = -1;
    }

    else
    {
      v31 = qword_10139AC20[(v35 - 6)];
    }
  }

  v36 = [objc_allocWithZone(SPFirmwareUpdateStateResult) init];
  [v36 setState:v31];
  sub_1000D2A70(v32, v30, &unk_101696900, &unk_10138B1E0);
  if ((*(v33 + 48))(v30, 1, v20) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v33 + 8))(v30, v20);
  }

  [v36 setStateDate:isa];

  v39 = v56;
  v38 = v57;
  v40 = v58;
  (*(v57 + 16))(v56, v29, v58);
  v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v42 = (v55 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v36;
  (*(v38 + 32))(v43 + v41, v39, v40);
  v44 = (v43 + v42);
  v45 = v60;
  *v44 = v59;
  v44[1] = v45;
  v46 = v36;

  sub_1006965D8(v29, sub_1002FA7D0, v43);

  return sub_10000B3A8(v32, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_1002FA380(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 systemVersion];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    [a2 setCurrentSystemVersion:v6];
  }

  else
  {
    type metadata accessor for FirmwareUpdateError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1002FDD08(&qword_1016960E8, type metadata accessor for FirmwareUpdateError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v6 = _convertErrorToNSError(_:)();

    [a2 setError:v6];
  }

  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  v8 = UUID.uuidString.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = [a2 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 72) = v13;
  *(v7 + 80) = v15;
  os_log(_:dso:log:_:_:)();

  return a4(a2);
}

void *sub_1002FA5DC(unsigned __int8 a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  sub_1000BC4D4(&qword_10169D0F0, &qword_10139AA58);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  type metadata accessor for DateInterval();
  sub_1002FDD08(&qword_10169D0F8, &type metadata accessor for DateInterval);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v11 = sub_1010C3064(a1, a2);
  v12 = *(v15 + 280);
  v13 = sub_100AA56A8(v11);

  return v13;
}

uint64_t sub_1002FA7D0(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1002FA380(a1, v5, v1 + v4, v7);
}

uint64_t sub_1002FA874(uint64_t a1)
{
  if ((a1 + 1) >= 8)
  {
    return 44;
  }

  else
  {
    return (0xD2C0B0A0708062CuLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_1002FA8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v45 = a4;
  v46 = a5;
  v43 = a1;
  v44 = a3;
  v53 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  __chkstk_darwin(v9);
  v49 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v12 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  __chkstk_darwin(v14);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = swift_allocObject();
  *(v54 + 16) = a7;
  _Block_copy(a7);
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10138BBE0;
  aBlock[0] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v18 = String.init<A>(describing:)();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  v21 = sub_100008C00();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v21;
  *(v17 + 64) = v21;
  *(v17 + 72) = 0xD000000000000047;
  *(v17 + 80) = 0x80000001013503D0;
  os_log(_:dso:log:_:_:)();

  v22 = sub_1002FA874(v53);
  if (v22 == 44)
  {
    a7[2](a7, 0);
  }

  else
  {
    v23 = v22;
    v53 = *sub_1000035D0((a6 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a6 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    v40[1] = *(v53 + 48);
    v24 = v41;
    v25 = v42;
    (*(v41 + 16))(v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v42);
    v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v27 = v26 + v15;
    v28 = (v26 + v15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v53;
    (*(v24 + 32))(v30 + v26, v16, v25);
    *(v30 + v27) = v23;
    v31 = v30 + v28;
    v32 = v45;
    *(v31 + 8) = v44;
    *(v31 + 16) = v32;
    *(v30 + v29) = v46;
    v33 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
    v34 = v54;
    *v33 = sub_1002FB454;
    v33[1] = v34;
    aBlock[4] = sub_1002FB45C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016174D8;
    v35 = _Block_copy(aBlock);

    swift_errorRetain();

    v36 = v47;
    static DispatchQoS.unspecified.getter();
    v55 = _swiftEmptyArrayStorage;
    sub_1002FDD08(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v37 = v49;
    v38 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    (*(v51 + 8))(v37, v38);
    (*(v48 + 8))(v36, v50);
  }
}

void sub_1002FAE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  v28[0] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD000000000000029;
  *(v7 + 80) = 0x8000000101350340;
  os_log(_:dso:log:_:_:)();

  v12 = sub_1002FA874(a1);
  if (v12 == 44)
  {
    sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a4 + 16))(a4, v13.super.isa);
  }

  else
  {
    v14 = v12;
    v15 = *sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    v16 = sub_1002FA5DC(v14, a2);
    v17 = v16[2];
    if (v17)
    {
      v31 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v18 = *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
      v19 = (v16 + 4);
      do
      {
        sub_10001F280(v19, v28);
        v20 = v29;
        v21 = v30;
        v22 = sub_1000035D0(v28, v29);
        sub_100B005BC(v22, v18, v20, v21);
        sub_100007BAC(v28);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = v31[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v19 += 40;
        --v17;
      }

      while (v17);

      v24 = v31;
    }

    else
    {

      v24 = _swiftEmptyArrayStorage;
    }

    static os_log_type_t.default.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    if (v24 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 56) = &type metadata for Int;
    *(v25 + 64) = &protocol witness table for Int;
    *(v25 + 32) = v26;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a4 + 16))(a4, v13.super.isa);
  }
}

uint64_t sub_1002FB1D0(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 64) = v8;
  *(v4 + 72) = 0xD000000000000038;
  *(v4 + 80) = 0x80000001013502A0;
  os_log(_:dso:log:_:_:)();

  v9 = *sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  return (*(a2 + 16))(a2, 1);
}

uint64_t sub_1002FB3C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1002F9B98(v0);
}

uint64_t sub_1002FB45C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v0 + v4);
  v10 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + v3);

  return sub_1002F40F0(v5, v0 + v2, v13, v7, v8, v9, v11, v12);
}

uint64_t sub_1002FB53C(unsigned __int8 a1, void *a2)
{
  v3 = a1;
  sub_1000BC4D4(&qword_10169D100, &unk_1013D44B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  sub_1000BC4D4(&qword_10169D108, &qword_10139AAA8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  *(v6 + 32) = xmmword_10139AA20;
  *(inited + 48) = v6;
  v7 = sub_1009089DC(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_10169D110, &unk_1013D44C0);
  if (v3 == 8)
  {
    v8 = [a2 domain];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (*(v7 + 16))
    {
      v12 = sub_100771D58(v9, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(v7 + 56) + 8 * v12);

        v16 = [a2 code];
        v17 = *(v15 + 16);
        v18 = 32;
        while (v17)
        {
          v19 = *(v15 + v18);
          v18 += 8;
          --v17;
          if (v19 == v16)
          {

            return 1;
          }
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1002FB6F4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v72 = 0;
  v73 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  __chkstk_darwin(v7);
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = type metadata accessor for BeaconObservation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  __chkstk_darwin(v23);
  v26 = &v63 - v25;
  if (!a4)
  {
    goto LABEL_8;
  }

  v68 = v24;
  v27 = _convertErrorToNSError(_:)();
  if ((sub_1002FB53C(a3, v27) & 1) == 0)
  {

LABEL_8:
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(v22, a2, v31);
    static Date.trustedNow.getter(&v22[*(v17 + 20)]);
    v22[*(v17 + 24)] = a3;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v32 = *(v18 + 72);
    v33 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    sub_1002FDC90(v22, v34 + v33, type metadata accessor for BeaconObservation);
    v35 = type metadata accessor for Transaction();
    __chkstk_darwin(v35);
    *(&v63 - 4) = v73;
    *(&v63 - 3) = v34;
    *(&v63 - 2) = 0;
    *(&v63 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    v36 = v22;
    return sub_1002FD958(v36, type metadata accessor for BeaconObservation);
  }

  v66 = v27;
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v65 = qword_10177C400;
  os_log(_:dso:log:_:_:)();
  v28 = swift_allocObject();
  *(v28 + 16) = 9;
  v67 = a2;
  v29 = v73;
  v30 = sub_100035730(a2, sub_1002FDCF8, v28);

  sub_1012BB138(v30, v16);

  v64 = *(v18 + 48);
  if (v64(v16, 1, v17) == 1)
  {
    sub_10000B3A8(v16, &qword_1016A42E0, &qword_1013B0010);
  }

  else
  {
    v38 = sub_100029280(v16, v26, type metadata accessor for BeaconObservation);
    __chkstk_darwin(v38);
    *(&v63 - 2) = v26;
    v39 = *(v73 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
    v40 = v69;
    v41 = static DispatchWorkItemFlags.barrier.getter();
    __chkstk_darwin(v41);
    v42 = v67;
    *(&v63 - 4) = v73;
    *(&v63 - 3) = v42;
    *(&v63 - 2) = sub_1002FDEB0;
    *(&v63 - 1) = (&v63 - 4);
    v43 = v72;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    v72 = v43;
    (*(v70 + 8))(v40, v71);
    static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_101385D80;
    v45 = *(v17 + 20);
    type metadata accessor for Date();
    sub_1002FDD08(&qword_1016969A0, &type metadata accessor for Date);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_100008C00();
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    os_log(_:dso:log:_:_:)();
    v29 = v73;

    sub_1002FD958(v26, type metadata accessor for BeaconObservation);
  }

  v49 = swift_allocObject();
  *(v49 + 16) = 6;
  v50 = v67;
  v51 = sub_100035730(v67, sub_1002FDCF8, v49);

  sub_1012BB138(v51, v14);

  if (v64(v14, 1, v17) != 1)
  {
    v52 = v68;
    v53 = sub_100029280(v14, v68, type metadata accessor for BeaconObservation);
    __chkstk_darwin(v53);
    *(&v63 - 2) = v52;
    v54 = *(v29 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
    v55 = v69;
    v56 = static DispatchWorkItemFlags.barrier.getter();
    __chkstk_darwin(v56);
    *(&v63 - 4) = v57;
    *(&v63 - 3) = v50;
    *(&v63 - 2) = sub_1002FDD00;
    *(&v63 - 1) = (&v63 - 4);
    OS_dispatch_queue.sync<A>(flags:execute:)();
    (*(v70 + 8))(v55, v71);
    static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_101385D80;
    v59 = *(v17 + 20);
    type metadata accessor for Date();
    sub_1002FDD08(&qword_1016969A0, &type metadata accessor for Date);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = sub_100008C00();
    *(v58 + 32) = v60;
    *(v58 + 40) = v62;
    os_log(_:dso:log:_:_:)();

    v36 = v52;
    return sub_1002FD958(v36, type metadata accessor for BeaconObservation);
  }

  return sub_10000B3A8(v14, &qword_1016A42E0, &qword_1013B0010);
}

uint64_t sub_1002FC038()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_1002F8064(v5, v0 + v3, v7, v8, v9, v10);
}

uint64_t sub_1002FC170()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1002F8974(v4, v0 + v3, v6, v7);
}

uint64_t sub_1002FC288()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1002F5F18(v4, v0 + v3);
}

uint64_t sub_1002FC3B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1002FC490()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1002F7A78(v4, v0 + v3, v6, v7);
}

uint64_t sub_1002FC5A8(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v1[17] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for LeashRecord();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v1[22] = v8;
  v9 = *(v8 - 8);
  v1[23] = v9;
  v10 = *(v9 + 64) + 15;
  v1[24] = swift_task_alloc();
  v11 = type metadata accessor for OwnedBeaconRecord();
  v1[25] = v11;
  v1[5] = v11;
  v1[6] = sub_1002FDD08(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v12 = sub_1000280DC(v1 + 2);
  v1[26] = v12;
  sub_1002FDC90(a1, v12, type metadata accessor for OwnedBeaconRecord);
  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  v1[27] = v14;
  *v14 = v1;
  v14[1] = sub_1002FC7A4;

  return daemon.getter();
}

uint64_t sub_1002FC7A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v12 = *v1;
  *(v3 + 224) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 232) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1002FDD08(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1002FDD08(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1002FC980;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002FC980(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v5 = *v2;
  *(*v2 + 240) = a1;

  v6 = *(v3 + 224);
  if (v1)
  {

    v7 = sub_1002FD004;
  }

  else
  {

    v7 = sub_1002FCAD0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002FCAD0()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10177CEA0 + 24);

  AnyCurrentValuePublisher.value.getter();

  *(v0 + 265) = *(v0 + 264);
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_1002FCBD4;
  v3 = *(v0 + 208);

  return sub_100A078AC(v3);
}

uint64_t sub_1002FCBD4(char a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 266) = a1;

  return _swift_task_switch(sub_1002FCCD4, 0, 0);
}

uint64_t sub_1002FCCD4()
{
  v26 = v0;
  if (*(v0 + 265) != 1 || *(v0 + 266) == 0)
  {
    v2 = *(v0 + 240);

    return _swift_task_switch(sub_1002FD148, v2, 0);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 96);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 240);
    if (v6)
    {
      v8 = *(v0 + 192);
      v9 = *(v0 + 200);
      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v24 = *(v0 + 240);
      v12 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v12 = 136315651;
      *(v12 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v25);
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      v13 = sub_1000035D0((v0 + 96), *(v0 + 120));
      (*(v10 + 16))(v8, &v13[*(v9 + 20)], v11);
      sub_1002FDD08(&qword_101696930, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v10 + 8))(v8, v11);
      sub_100007BAC((v0 + 96));
      v17 = sub_1000136BC(v14, v16, &v25);

      *(v12 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Separation monitoring is paused for %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v18 = *(v0 + 240);

      sub_100007BAC((v0 + 96));
    }

    v19 = *(v0 + 192);
    v20 = *(v0 + 168);
    v21 = *(v0 + 144);
    sub_100007BAC((v0 + 16));

    v22 = *(v0 + 8);

    return v22(5);
  }
}

uint64_t sub_1002FD004()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No beaconStoreActor.", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[18];
  sub_100007BAC(v0 + 2);

  v8 = v0[1];

  return v8(2);
}

uint64_t sub_1002FD148()
{
  v1 = v0[30];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_1002FD21C;
  v4 = v0[30];
  v6 = v0[17];
  v5 = v0[18];

  return unsafeBlocking<A>(context:_:)(v5, 0xD000000000000010, 0x800000010134A8C0, sub_1002FD8A8, v4, v6);
}

uint64_t sub_1002FD21C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_1002FD334, 0, 0);
}

uint64_t sub_1002FD334()
{
  v39 = v0;
  v1 = v0[19];
  v2 = v0[18];
  if ((*(v0[20] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_1016B1500, &unk_1013C57F0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B780);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[30];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v38);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s No leash record!", v8, 0xCu);
      sub_100007BAC(v9);
    }

    goto LABEL_7;
  }

  v11 = v0[25];
  v12 = v0[26];
  v13 = v0[21];
  sub_100029280(v2, v13, type metadata accessor for LeashRecord);
  if (sub_1005C8A30(v12 + *(v11 + 20), *(v13 + *(v1 + 24))))
  {
    v14 = v0[30];
    sub_1002FD958(v0[21], type metadata accessor for LeashRecord);

    v10 = 0;
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 7));
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[30];
    if (!v18)
    {
      v34 = v0[21];
      v35 = v0[30];

      sub_100007BAC(v0 + 7);
      sub_1002FD958(v34, type metadata accessor for LeashRecord);
LABEL_7:
      v10 = 2;
      goto LABEL_14;
    }

    v21 = v0[23];
    v20 = v0[24];
    v22 = v0[22];
    v36 = v0[30];
    v37 = v0[21];
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v23 = 136315651;
    *(v23 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v38);
    *(v23 + 12) = 2160;
    *(v23 + 14) = 1752392040;
    *(v23 + 22) = 2081;
    v24 = sub_1000035D0(v0 + 7, v0[10]);
    (*(v21 + 16))(v20, &v24[*(v11 + 20)], v22);
    sub_1002FDD08(&qword_101696930, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v21 + 8))(v20, v22);
    sub_100007BAC(v0 + 7);
    v28 = sub_1000136BC(v25, v27, &v38);

    *(v23 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Leash record does NOT contain %{private,mask.hash}s", v23, 0x20u);
    v10 = 2;
    swift_arrayDestroy();

    sub_1002FD958(v37, type metadata accessor for LeashRecord);
  }

LABEL_14:
  v29 = v0[24];
  v30 = v0[21];
  v31 = v0[18];
  sub_100007BAC(v0 + 2);

  v32 = v0[1];

  return v32(v10);
}

uint64_t sub_1002FD820@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1002F755C(v4, v5, a1);
}

uint64_t sub_1002FD958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002FD9C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002FDA5C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_1002FDB1C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

void sub_1002FDBE0()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 280);
  sub_100A8306C(16);
  Transaction.end()();
}

uint64_t sub_1002FDC14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(*(v1 + 16) + 280);
  return sub_100AA33AC(v4, a1);
}

uint64_t sub_1002FDC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FDD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002FDD64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014650;

  return sub_1002F3818(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002FDE38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

uint64_t sub_1002FDEB4()
{
  v1 = type metadata accessor for Endianness();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for BeaconProductInfoRecord();
  v4 = *(v0 + *(v3 + 112));
  if (v4 == 2)
  {
    v5 = (v0 + *(v3 + 24));
    v16 = *v5;
    v17 = v5[1];
    sub_1000DF96C();

    v6 = Data.init<A>(hexString:)();
    if (v7 >> 60 == 15)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v8 = v6;
      v9 = v7;
      sub_100017D5C(v6, v7);
      v10 = sub_100314594(v8, v9);
      if (v11 >> 60 == 15)
      {
        sub_100006654(v8, v9);
        LOBYTE(v4) = 0;
      }

      else
      {
        v12 = v10;
        v13 = v11;
        sub_100313B54(v10, v11);
        static Endianness.current.getter();
        sub_10012BF24();
        FixedWidthInteger.init(data:ofEndianness:)();
        sub_100006654(v12, v13);
        sub_100006654(v8, v9);
        if (BYTE4(v16))
        {
          v14 = 0;
        }

        else
        {
          v14 = v16;
        }

        LOBYTE(v4) = (sub_100B8A580(v14) & 0xFE) != 2;
      }
    }
  }

  return v4 & 1;
}

unint64_t sub_1002FE04C(uint64_t (*a1)(void), void (*a2)(uint64_t *, unint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v84 = a4;
  v79 = a2;
  v6 = a1(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v78 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v70 - v10;
  v11 = type metadata accessor for MemberSharingCircle();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v80 = &v70 - v17;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v81 = (&v70 - v20);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v76 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v75 = &v70 - v26;
  v82 = v4;
  result = sub_1002FFAE4(v4, v14, type metadata accessor for MemberSharingCircle);
  v77 = v11;
  v28 = *&v14[*(v11 + 36)];
  v29 = *(v28 + 16);
  if (v29)
  {
    v71 = a3;
    v73 = v6;
    v74 = v21;
    v30 = sub_1003A85FC(v29, 0);
    v72 = v22;
    v31 = sub_1003CC2CC(&v85, v30 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v29, v28);

    result = sub_1001BE470();
    if (v31 != v29)
    {
      __break(1u);
      return result;
    }

    v21 = v74;
    v6 = v73;
    v22 = v72;
    a3 = v71;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(result);
  *(&v70 - 2) = v14;
  v32 = sub_1001BE474(_swiftEmptyDictionarySingleton, v79, (&v70 - 4), v30);

  v33 = sub_1002FFB4C(v14, type metadata accessor for MemberSharingCircle);
  __chkstk_darwin(v33);
  v34 = v82;
  *(&v70 - 2) = v82;
  v35 = v80;
  sub_1012BB870(a3, (&v70 - 4), v32, v80);

  v36 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    sub_10000B3A8(v35, &qword_10169D398, &qword_10139ADE8);
    v37 = v81;
    (*(v22 + 56))(v81, 1, 1, v21);
    v38 = v83;
  }

  else
  {
    v39 = *(v36 + 48);
    v40 = *(v22 + 32);
    v41 = v81;
    v40(v81, v35, v21);
    (*(v22 + 56))(v41, 0, 1, v21);
    v42 = v35;
    v43 = *(v22 + 8);
    v44 = &v42[v39];
    v37 = v41;
    v43(v44, v21);
    v45 = (*(v22 + 48))(v41, 1, v21);
    v38 = v83;
    if (v45 != 1)
    {
      v65 = v75;
      v40(v75, v37, v21);
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = 0x6564496572616873;
      *(inited + 40) = 0xEF7265696669746ELL;
      v67 = UUID.uuidString.getter();
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v67;
      *(inited + 56) = v68;
      v69 = sub_10090403C(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
      v43(v65, v21);
      return v69;
    }
  }

  sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000076D4(v46, qword_10177A560);
  v47 = v84;
  sub_1002FFAE4(v34, v38, v84);
  v48 = v78;
  sub_1002FFAE4(v34, v78, v47);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v85 = v83;
    *v51 = 141558787;
    *(v51 + 4) = 1752392040;
    *(v51 + 12) = 2081;
    v52 = *(v6 + 24);
    v80 = *(v22 + 16);
    LODWORD(v82) = v50;
    v53 = v76;
    (v80)(v76, v38 + v52, v21);
    sub_1002FFB4C(v38, v47);
    sub_1002FFBAC();
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v48;
    v57 = v56;
    v81 = v49;
    v58 = *(v22 + 8);
    v58(v53, v21);
    v59 = sub_1000136BC(v54, v57, &v85);

    *(v51 + 14) = v59;
    *(v51 + 22) = 2160;
    *(v51 + 24) = 1752392040;
    *(v51 + 32) = 2081;
    (v80)(v53, v55 + *(v77 + 28), v21);
    sub_1002FFB4C(v55, v84);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v58(v53, v21);
    v63 = sub_1000136BC(v60, v62, &v85);

    *(v51 + 34) = v63;
    v64 = v81;
    _os_log_impl(&_mh_execute_header, v81, v82, "Failed to find client share identifier for transparency notification. Member %{private,mask.hash}s,\ncircle: %{private,mask.hash}s.", v51, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002FFB4C(v48, v47);
    sub_1002FFB4C(v38, v47);
  }

  return sub_10090403C(_swiftEmptyArrayStorage);
}

uint64_t sub_1002FE930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(sub_1000BC4D4(&qword_101698C18, &qword_101390740) + 48);
  v5 = *(a3(0) + 24);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_1002FE9A8()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  updated = type metadata accessor for ItemShareCircleUpdateUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + *(updated + 32)), *(v0 + *(updated + 32) + 8), 0);
  *(inited + 40) = v8;
  *(inited + 48) = sub_1010E09D0(*(v0 + *(updated + 28)), *(v0 + *(updated + 28) + 8), 0);
  *(inited + 56) = v9;
  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = String.init(format:arguments:)();

  return v10;
}

uint64_t sub_1002FEC00()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  updated = type metadata accessor for ItemShareAirTagCircleUpdateUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + updated[8]), *(v0 + updated[8] + 8), 0);
  *(inited + 40) = v8;
  *(inited + 48) = sub_1010E09D0(*(v0 + updated[7]), *(v0 + updated[7] + 8), 0);
  *(inited + 56) = v9;
  v10 = (v0 + updated[9]);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 != 0x676154726941 || v12 != 0xE600000000000000)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16 = v11 == 0x676154726961 && v12 == 0xE600000000000000;
    if ((v14 & 1) == 0 && !v16)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v17 = String.init(format:arguments:)();

  return v17;
}

uint64_t sub_1002FEF08()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  v7 = type metadata accessor for ItemShareCircleUpdateWithBlockedContactUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + *(v7 + 32)), *(v0 + *(v7 + 32) + 8), 0);
  *(inited + 40) = v8;
  *(inited + 48) = sub_1010E09D0(*(v0 + *(v7 + 28)), *(v0 + *(v7 + 28) + 8), 0);
  *(inited + 56) = v9;
  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = String.init(format:arguments:)();

  return v10;
}

uint64_t sub_1002FF158()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  v7 = type metadata accessor for ItemShareAirTagCircleUpdateWithBlockedContactUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + v7[8]), *(v0 + v7[8] + 8), 0);
  *(inited + 40) = v8;
  *(inited + 48) = sub_1010E09D0(*(v0 + v7[7]), *(v0 + v7[7] + 8), 0);
  *(inited + 56) = v9;
  v10 = (v0 + v7[9]);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 != 0x676154726941 || v12 != 0xE600000000000000)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16 = v11 == 0x676154726961 && v12 == 0xE600000000000000;
    if ((v14 & 1) == 0 && !v16)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v17 = String.init(format:arguments:)();

  return v17;
}

uint64_t sub_1002FF3F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MemberSharingCircle() + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002FF470(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v9 = (v1 + *(a1 + 20));
  v10 = v9[1];
  *(inited + 32) = *v9;
  *(inited + 40) = v10;
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.itemSharing(_:), v3);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v11 = String.init(format:arguments:)();

  return v11;
}

uint64_t sub_1002FF780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MemberSharingCircle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1002FF8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MemberSharingCircle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1002FFA04()
{
  result = type metadata accessor for MemberSharingCircle();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002FFAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FFB4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002FFBAC()
{
  result = qword_101696930;
  if (!qword_101696930)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696930);
  }

  return result;
}

uint64_t sub_1002FFD18()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A8A0);
  v1 = sub_1000076D4(v0, qword_10177A8A0);
  if (qword_101694548 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A8B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002FFDE0(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[33] = v3;
  v4 = *(v3 - 8);
  v2[34] = v4;
  v5 = *(v4 + 64) + 15;
  v2[35] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v2[36] = v6;
  v7 = *(v6 - 8);
  v2[37] = v7;
  v8 = *(v7 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v2[41] = v9;
  v10 = *(v9 - 8);
  v2[42] = v10;
  v11 = *(v10 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_1002FFF7C, v1, 0);
}

uint64_t sub_1002FFF7C()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 224) = 0x7365547265646E75;
  *(v0 + 232) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 384))
  {
    v1 = type metadata accessor for GenericError();
    sub_1003024E4(&qword_1016978C0, 255, &type metadata accessor for GenericError);
    swift_allocError();
    *v2 = 0xD00000000000001ELL;
    v2[1] = 0x8000000101350B00;
    (*(*(v1 - 8) + 104))(v2, enum case for GenericError.error(_:), v1);
    swift_willThrow();
LABEL_14:
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    v23 = *(v0 + 312);
    v22 = *(v0 + 320);
    v24 = *(v0 + 304);
    v25 = *(v0 + 280);

    v26 = *(v0 + 8);

    return v26();
  }

  v3 = *(v0 + 352);
  ContinuousClock.init()();
  if (qword_101694540 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 360) = sub_1000076D4(v4, qword_10177A8A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Retrieving fmipAccount info...", v7, 2u);
  }

  v8 = *(v0 + 352);
  v9 = *(v0 + 320);

  ContinuousClock.now.getter();
  v10 = [objc_opt_self() defaultStore];
  *(v0 + 368) = v10;
  if (!v10)
  {
    v13 = *(v0 + 352);
    v14 = *(v0 + 328);
    v15 = *(v0 + 336);
    v16 = *(v0 + 320);
    v17 = *(v0 + 288);
    v18 = *(v0 + 296);
    sub_100302490();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0;
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
    (*(v15 + 8))(v13, v14);
    goto LABEL_14;
  }

  v11 = v10;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1003003D4;
  v12 = swift_continuation_init();
  *(v0 + 216) = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_100C70FE4;
  *(v0 + 184) = &unk_101617C28;
  *(v0 + 192) = v12;
  [v11 aa_primaryAppleAccountWithCompletion:v0 + 160];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1003003D4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  v4 = *(v1 + 256);
  if (v3)
  {
    v5 = sub_100300998;
  }

  else
  {
    v5 = sub_1003004F4;
  }

  return _swift_task_switch(v5, v4, 0);
}
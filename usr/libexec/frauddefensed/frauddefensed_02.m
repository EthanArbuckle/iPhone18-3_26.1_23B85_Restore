uint64_t sub_1000308D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B7820, &unk_1000917B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100030940(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10003095C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000309A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100030A0C()
{
  result = qword_1000B7828;
  if (!qword_1000B7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7828);
  }

  return result;
}

unint64_t sub_100030A60(void *a1)
{
  a1[1] = sub_100030A98();
  a1[2] = sub_100030AEC();
  result = sub_100030B40();
  a1[3] = result;
  return result;
}

unint64_t sub_100030A98()
{
  result = qword_1000B7830;
  if (!qword_1000B7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7830);
  }

  return result;
}

unint64_t sub_100030AEC()
{
  result = qword_1000B7838;
  if (!qword_1000B7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7838);
  }

  return result;
}

unint64_t sub_100030B40()
{
  result = qword_1000B7840;
  if (!qword_1000B7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7840);
  }

  return result;
}

uint64_t sub_100030B94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xEB00000000644965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100095E50 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100030DA4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100002074(&qword_1000B7848, &qword_100091458);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  sub_1000111EC(a1, a1[3]);
  sub_100031230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003558(a1);
  }

  LOBYTE(v41[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v41[0]) = 1;
  *&v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v35 + 1) = v15;
  sub_100002074(&qword_1000B7858, &qword_100091870);
  LOBYTE(v36) = 2;
  sub_1000312EC(&qword_1000B7860);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = v41[0];
  LOBYTE(v41[0]) = 3;
  v33 = 0;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = BYTE4(v16) & 1;
  LOBYTE(v41[0]) = 4;
  v31 = v16;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v17;
  v51 = 5;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = *(v6 + 8);
  v20 = v18;
  v29 = v21;
  v19(v10, v5);
  *&v36 = v12;
  *(&v36 + 1) = v14;
  v37 = v35;
  *&v38 = v34;
  DWORD2(v38) = v31;
  LODWORD(v33) = v50;
  BYTE12(v38) = v50;
  v22 = v30;
  v23 = v32;
  *&v39 = v30;
  *(&v39 + 1) = v32;
  v24 = v29;
  *&v40 = v20;
  *(&v40 + 1) = v29;
  sub_100031284(&v36, v41);
  sub_100003558(a1);
  v41[0] = v12;
  v41[1] = v14;
  v42 = v35;
  v43 = v34;
  v44 = v31;
  v45 = v33;
  v46 = v22;
  v47 = v23;
  v48 = v20;
  v49 = v24;
  result = sub_1000312BC(v41);
  v26 = v39;
  a2[2] = v38;
  a2[3] = v26;
  a2[4] = v40;
  v27 = v37;
  *a2 = v36;
  a2[1] = v27;
  return result;
}

unint64_t sub_100031230()
{
  result = qword_1000B7850;
  if (!qword_1000B7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7850);
  }

  return result;
}

uint64_t sub_1000312EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100003400(&qword_1000B7858, &qword_100091870);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003136C()
{
  result = qword_1000B7878;
  if (!qword_1000B7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7878);
  }

  return result;
}

unint64_t sub_1000313C4()
{
  result = qword_1000B7880;
  if (!qword_1000B7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7880);
  }

  return result;
}

unint64_t sub_10003141C()
{
  result = qword_1000B7888;
  if (!qword_1000B7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7888);
  }

  return result;
}

void sub_100031470(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002074(&qword_1000B7820, &unk_1000917B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v18 - v11;
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  v13 = qword_1000B7C78;
  if (qword_1000B7C78)
  {
    sub_100011DFC(a1, v12, &qword_1000B7820, &unk_1000917B0);
    if ((*(v3 + 48))(v12, 1, v2) == 1)
    {
      v14 = v13;
      v15 = 0;
    }

    else
    {
      (*(v3 + 16))(v7, v12, v2);
      v16 = v13;
      v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v3 + 8))(v12, v2);
    }

    v17 = String._bridgeToObjectiveC()();
    [v13 setValue:v15 forKey:v17];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100031688(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = a2;
  v4 = (result + 56);
  while (1)
  {
    v10 = *(v4 - 2);
    v11 = *(v4 - 1);
    v12 = *v4;
    v13 = *v3;
    v14 = v11;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v32 = *v3;
    *v3 = 0x8000000000000000;
    v17 = sub_100058024(v14);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v16[3] < v22)
    {
      sub_1000595A0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_100058024(v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v25 = v32;
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v30 = v17;
    sub_10005A4A8();
    v17 = v30;
    v25 = v32;
    if (v23)
    {
LABEL_3:
      v5 = v25[7] + 40 * v17;
      v7 = *v5;
      v6 = *(v5 + 8);
      v8 = *(v5 + 16);
      v9 = *(v5 + 32);
      *v5 = v14;
      *(v5 + 8) = _swiftEmptyArrayStorage;
      *(v5 + 16) = _swiftEmptyArrayStorage;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;

      goto LABEL_4;
    }

LABEL_11:
    v25[(v17 >> 6) + 8] |= 1 << v17;
    *(v25[6] + 8 * v17) = v14;
    v26 = v25[7] + 40 * v17;
    *v26 = v14;
    *(v26 + 8) = _swiftEmptyArrayStorage;
    *(v26 + 16) = _swiftEmptyArrayStorage;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    v27 = v25[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v25[2] = v28;
    v29 = v14;
LABEL_4:
    v4 += 6;
    v3 = a2;
    *a2 = v25;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000318A4()
{
  v2 = v1;
  v3 = sub_1000111EC((v0 + 16), *(v0 + 40))[1];
  v4 = qword_1000B6700;

  if (v4 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (v2)
  {

    v5 = static os_log_type_t.error.getter();
    sub_10005E11C(v5, 0xD00000000000003ALL, 0x8000000100096810, 0xD00000000000006ALL, 0x8000000100095F40, 361);
    v6 = sub_1000111EC((v0 + 16), *(v0 + 40))[1];

    OS_dispatch_queue.sync<A>(execute:)();

    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (qword_1000B7C78)
    {
      v7 = qword_1000B7C78;
      v8 = String._bridgeToObjectiveC()();
      [v7 setValue:0 forKey:v8];
    }
  }

  else
  {
  }

  v9 = sub_1000111EC((v0 + 16), *(v0 + 40))[1];

  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100031B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 336) = a4;
  *(v6 + 344) = v5;
  *(v6 + 616) = a5;
  *(v6 + 320) = a2;
  *(v6 + 328) = a3;
  *(v6 + 312) = a1;
  v7 = type metadata accessor for SpamDecisioningAsset(0);
  *(v6 + 352) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 360) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v6 + 368) = v9;
  v10 = *(v9 - 8);
  *(v6 + 376) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 384) = swift_task_alloc();
  v12 = *(*(sub_100002074(&qword_1000B79A0, &qword_100091678) - 8) + 64) + 15;
  *(v6 + 392) = swift_task_alloc();
  v13 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0);
  *(v6 + 400) = v13;
  v14 = *(v13 - 8);
  *(v6 + 408) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 416) = swift_task_alloc();
  v16 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 424) = v16;
  v17 = *(v16 - 8);
  *(v6 + 432) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  v19 = type metadata accessor for ContinuousClock();
  *(v6 + 464) = v19;
  v20 = *(v19 - 8);
  *(v6 + 472) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100031D64, 0, 0);
}

uint64_t sub_1000325D4()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v7 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v4 = *(v2 + 488);

    v5 = sub_100033CCC;
  }

  else
  {
    v5 = sub_1000326F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000326F0()
{
  v1 = sub_1000111EC((*(v0 + 344) + 16), *(*(v0 + 344) + 40))[1];
  v2 = qword_1000B6700;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 568);
  *(v0 + 576) = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v3)
  {
    v4 = *(v0 + 488);
    v35 = *(v0 + 480);
    v5 = *(v0 + 464);
    v6 = *(v0 + 472);
    v8 = *(v0 + 448);
    v7 = *(v0 + 456);
    v10 = *(v0 + 424);
    v9 = *(v0 + 432);

    v11 = *(v9 + 8);
    v11(v8, v10);
    v11(v7, v10);
    (*(v6 + 8))(v35, v5);
    v12 = *(v0 + 480);
    v13 = *(v0 + 448);
    v14 = *(v0 + 456);
    v15 = *(v0 + 440);
    v16 = *(v0 + 416);
    v18 = *(v0 + 384);
    v17 = *(v0 + 392);
    v19 = *(v0 + 360);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {

    if (!*(v0 + 288))
    {
      v22 = *(v0 + 520);
      v24 = *(v0 + 488);
      v23 = *(v0 + 496);
      v25 = *(v0 + 344);
      v26 = static os_log_type_t.debug.getter();
      sub_10005E11C(v26, 0xD00000000000002ELL, 0x80000001000960C0, 0xD00000000000006ALL, v23, 603);
      v27 = *sub_1000111EC((v25 + 16), *(v25 + 40));

      sub_1000416A4(v24);
    }

    v28 = *(v0 + 552);
    v29 = *(v0 + 544);
    v30 = *(v0 + 488);
    v31 = *(v0 + 344);
    sub_100043EA4(*(v0 + 320), v0 + 112);
    v32 = swift_allocObject();
    *(v0 + 584) = v32;
    v32[2] = v29;
    v32[3] = v28;
    v32[4] = v30;
    sub_100011DD4((v0 + 112), (v32 + 5));
    v32[10] = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = v29;
    *(v33 + 24) = v28;

    v34 = swift_task_alloc();
    *(v0 + 592) = v34;
    *v34 = v0;
    v34[1] = sub_100032A80;

    return sub_100047854(&unk_1000916A8, v32, &unk_1000916B8, v33);
  }
}

uint64_t sub_100032A80(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v7 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = v1;

  if (v1)
  {
    v5 = sub_100033BA0;
  }

  else
  {
    v5 = sub_100032B98;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100033BA0()
{
  v1 = v0[73];
  v2 = v0[60];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[53];
  v9 = v0[54];

  v10 = *(v9 + 8);
  v10(v7, v8);
  v10(v6, v8);
  (*(v5 + 8))(v2, v4);
  v11 = v0[76];
  v12 = v0[60];
  v14 = v0[56];
  v13 = v0[57];
  v15 = v0[55];
  v16 = v0[52];
  v18 = v0[48];
  v17 = v0[49];
  v19 = v0[45];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100033CCC()
{
  v2 = v0[59];
  v1 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[53];
  v6 = *(v0[54] + 8);
  v6(v0[56], v5);
  v6(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[71];
  v8 = v0[60];
  v10 = v0[56];
  v9 = v0[57];
  v11 = v0[55];
  v12 = v0[52];
  v14 = v0[48];
  v13 = v0[49];
  v15 = v0[45];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100033DE4(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  v3 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v2[53] = swift_task_alloc();

  return _swift_task_switch(sub_100033E80, 0, 0);
}

uint64_t sub_100033E80()
{
  v1 = v0[52];
  sub_1000318A4();
  v2 = v0[53];
  sub_100011DFC(v0[51], v2, &qword_1000B6CB8, &unk_10008F9F0);
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_10000BC10(v2, &qword_1000B6CB8, &unk_10008F9F0);
  if (v4 == 1)
  {
    goto LABEL_6;
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v5 = qword_1000B7C78;
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 BOOLForKey:v6];

    if (v7)
    {
LABEL_6:
      v8 = v0[52];
      v9 = static os_log_type_t.default.getter();
      sub_10005E11C(v9, 0xD00000000000002FLL, 0x8000000100096890, 0xD00000000000006ALL, 0x8000000100095F40, 88);
      sub_10003511C();
      v14 = swift_task_alloc();
      v0[58] = v14;
      *v14 = v0;
      v15 = sub_100034924;
LABEL_9:
      v14[1] = v15;
      v18 = v0[52];

      return sub_100035804(0);
    }
  }

  v11 = v0[51];
  v10 = v0[52];
  v12 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput(0);
  v0[35] = v12;
  v0[36] = &off_1000B0920;
  v13 = sub_1000112A4(v0 + 32);
  sub_10004D808(v11, v13, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  LOBYTE(v10) = sub_100036430((v0 + 32));
  sub_100003558(v0 + 32);
  if (v10)
  {
    v16 = v0[52];
    v17 = static os_log_type_t.default.getter();
    sub_10005E11C(v17, 0xD00000000000004CLL, 0x8000000100096D70, 0xD00000000000006ALL, 0x8000000100095F40, 110);
    v14 = swift_task_alloc();
    v0[56] = v14;
    *v14 = v0;
    v15 = sub_100034648;
    goto LABEL_9;
  }

  v20 = v0[51];
  v0[40] = v12;
  v0[41] = &off_1000B0920;
  v21 = sub_1000112A4(v0 + 37);
  sub_10004D808(v20, v21, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v22 = swift_task_alloc();
  v0[54] = v22;
  *v22 = v0;
  v22[1] = sub_1000344C8;
  v23 = v0[52];

  return sub_100031B04((v0 + 42), (v0 + 37), 0, 0, 1);
}

uint64_t sub_1000344C8()
{
  v2 = (*v1)[54];
  v3 = *v1;
  v3[55] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100034DC8, 0, 0);
  }

  else
  {
    sub_100011D10((v3 + 42));
    sub_100003558(v3 + 37);
    v4 = swift_task_alloc();
    v3[56] = v4;
    *v4 = v3;
    v4[1] = sub_100034648;
    v5 = v3[52];

    return sub_100035804(0);
  }
}

uint64_t sub_100034648()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_100034F54;
  }

  else
  {
    v3 = sub_10003475C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003475C()
{
  v1 = sub_1000111EC((v0[52] + 16), *(v0[52] + 40))[1];
  v2 = qword_1000B6700;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B89E0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100011E70;
  *(v4 + 24) = v1;
  v0[30] = sub_10004E120;
  v0[31] = v4;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100010FA0;
  v0[29] = &unk_1000B0638;
  v5 = _Block_copy(v0 + 26);
  v6 = v0[31];

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[53];

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_100034924()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_100034C00;
  }

  else
  {
    v3 = sub_100034A38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100034A38()
{
  v1 = sub_1000111EC((v0[52] + 16), *(v0[52] + 40))[1];
  v2 = qword_1000B6700;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B89E0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100011E70;
  *(v4 + 24) = v1;
  v0[18] = sub_10004E120;
  v0[19] = v4;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100010FA0;
  v0[17] = &unk_1000B0598;
  v5 = _Block_copy(v0 + 14);
  v6 = v0[19];

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[53];

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_100034C00()
{
  v1 = sub_1000111EC((v0[52] + 16), *(v0[52] + 40))[1];
  v2 = qword_1000B6700;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B89E0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100011E70;
  *(v4 + 24) = v1;
  v0[12] = sub_10004E120;
  v0[13] = v4;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100010FA0;
  v0[11] = &unk_1000B0548;
  v5 = _Block_copy(v0 + 8);
  v6 = v0[13];

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[59];
    v9 = v0[53];

    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t sub_100034DC8()
{
  sub_100003558(v0 + 37);
  v1 = v0[55];
  v2 = v0[52];
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v4._object = 0x8000000100094650;
  v4._countAndFlagsBits = 0xD00000000000003DLL;
  String.append(_:)(v4);
  swift_getErrorValue();
  v6 = v0[47];
  v5 = v0[48];
  v7 = v0[49];
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 113);

  v10 = swift_task_alloc();
  v0[56] = v10;
  *v10 = v0;
  v10[1] = sub_100034648;
  v11 = v0[52];

  return sub_100035804(0);
}

uint64_t sub_100034F54()
{
  v1 = sub_1000111EC((v0[52] + 16), *(v0[52] + 40))[1];
  v2 = qword_1000B6700;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B89E0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100011E70;
  *(v4 + 24) = v1;
  v0[24] = sub_10004E120;
  v0[25] = v4;
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100010FA0;
  v0[23] = &unk_1000B05E8;
  v5 = _Block_copy(v0 + 20);
  v6 = v0[25];

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[57];
    v9 = v0[53];

    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t sub_10003511C()
{
  v1 = *v0;
  v56 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v56, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v58 = &v55 - v24;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v27 = [v26 resourceURL];

  if (v27)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v17 + 56))(v12, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v12, 1, 1, v16);
  }

  v28 = v16;
  sub_10001C148(v12, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000BC10(v15, &qword_1000B6DE8, &qword_10008FA30);
    v29 = static os_log_type_t.error.getter();
    sub_10005E11C(v29, 0xD00000000000002DLL, 0x8000000100096CC0, 0xD00000000000006ALL, 0x8000000100095F40, 508);
    sub_10000B6B0();
    swift_allocError();
    *v30 = 0xD00000000000002DLL;
    *(v30 + 8) = 0x8000000100096CC0;
    *(v30 + 16) = 12;
    return swift_willThrow();
  }

  else
  {
    v59 = 0xD000000000000020;
    v60 = 0x8000000100096CF0;
    v32 = v56;
    (*(v2 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v56);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v2 + 8))(v6, v32);
    v33 = *(v17 + 8);
    v33(v15, v16);
    v34 = v58;
    (*(v17 + 32))(v58, v22, v16);
    v35 = v61;
    v36 = v57;
    sub_1000410E0(0, 1);
    if (v36)
    {
      v43 = v34;
      v44 = v16;
    }

    else
    {
      v37 = *sub_1000111EC((v35 + 16), *(v35 + 40));
      v38 = qword_1000B6658;

      if (v38 != -1)
      {
        swift_once();
      }

      if (qword_1000B7C78)
      {
        v39 = v16;
        v40 = qword_1000B7C78;
        v41 = String._bridgeToObjectiveC()();
        [v40 setValue:0 forKey:v41];

        v28 = v39;
      }

      else
      {
      }

      v42 = sub_10005C778();
      v57 = v28;
      if (*(v42 + 2))
      {
        v45 = v42;
        v46 = sub_1000111EC((v35 + 16), *(v35 + 40))[1];
        v47 = qword_1000B6700;

        if (v47 != -1)
        {
          v48 = swift_once();
        }

        __chkstk_darwin(v48, v49);
        *(&v55 - 2) = v46;
        *(&v55 - 1) = v45;
        OS_dispatch_queue.sync<A>(execute:)();
      }

      else
      {
      }

      v56 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger;
      v50 = static os_log_type_t.default.getter();
      v59 = 0;
      v60 = 0xE000000000000000;
      _StringGuts.grow(_:)(72);
      v51._countAndFlagsBits = 0xD000000000000044;
      v51._object = 0x8000000100096D20;
      String.append(_:)(v51);
      v52 = v58;
      v53._countAndFlagsBits = URL.absoluteString.getter();
      String.append(_:)(v53);

      v54._countAndFlagsBits = 32032;
      v54._object = 0xE200000000000000;
      String.append(_:)(v54);
      sub_10005E11C(v50, v59, v60, 0xD00000000000006ALL, 0x8000000100095F40, 527);

      v43 = v52;
      v44 = v57;
    }

    return (v33)(v43, v44);
  }
}

uint64_t sub_100035804(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 288) = a1;
  return _swift_task_switch(sub_100035828, 0, 0);
}

uint64_t sub_100035828()
{
  if (qword_1000B66D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B9450 == 0xD000000000000014 && 0x80000001000947E0 == *algn_1000B9458;
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v2 = v0[22];
    v3 = static os_log_type_t.debug.getter();
    sub_10005E11C(v3, 0xD00000000000003ELL, 0x8000000100096A50, 0xD00000000000006ALL, 0x8000000100095F40, 785);
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = type metadata accessor for BackgroundActivityManager();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v0[23] = v9;
    swift_defaultActor_initialize();
    v10 = OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger;
    if (qword_1000B6688 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    v12 = sub_100003448(v11, qword_1000B9370);
    (*(*(v11 - 8) + 16))(v9 + v10, v12, v11);
    v13 = type metadata accessor for SignaturesBackgroundActivity();
    v0[24] = v13;
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1000107C8();
    v0[25] = v16;
    v0[5] = v13;
    v0[6] = &off_1000AEAE0;
    v0[2] = v16;

    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v17[1] = sub_100035A9C;

    return sub_10008B068((v0 + 2));
  }
}

uint64_t sub_100035A9C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_100036238;
  }

  else
  {
    sub_100003558((v2 + 16));
    v4 = sub_100035BB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100035BB8()
{
  v1 = v0[25];
  v0[10] = v0[24];
  v0[11] = &off_1000AEAE0;
  v0[7] = v1;

  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_100035C74;
  v3 = v0[23];

  return sub_1000899E0((v0 + 7));
}

uint64_t sub_100035C74()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1000362B0;
  }

  else
  {
    sub_100003558((v2 + 56));
    v4 = sub_100035D90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100035D90()
{
  if (*(v0 + 288) == 1)
  {
    v1 = type metadata accessor for AdHocSignaturesBackgroundActivity();
    *(v0 + 240) = v1;
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    v4 = sub_10006A47C();
    *(v0 + 248) = v4;
    *(v0 + 120) = v1;
    *(v0 + 128) = &off_1000B0F48;
    *(v0 + 96) = v4;

    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *v5 = v0;
    v5[1] = sub_100035EC8;
    v6 = *(v0 + 184);

    return sub_10008B068(v0 + 96);
  }

  else
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 184);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100035EC8()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_100036328;
  }

  else
  {
    sub_100003558((v2 + 96));
    v4 = sub_100035FE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100035FE4()
{
  v1 = v0[31];
  v0[20] = v0[30];
  v0[21] = &off_1000B0F48;
  v0[17] = v1;

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000360A0;
  v3 = v0[23];

  return sub_1000899E0((v0 + 17));
}

uint64_t sub_1000360A0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_1000363AC;
  }

  else
  {
    sub_100003558((v2 + 136));
    v4 = sub_1000361BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000361BC()
{
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100036238()
{
  v1 = v0[25];
  v2 = v0[23];

  sub_100003558(v0 + 2);
  v3 = v0[27];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000362B0()
{
  v1 = v0[25];
  v2 = v0[23];

  sub_100003558(v0 + 7);
  v3 = v0[29];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100036328()
{
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[23];

  sub_100003558(v0 + 12);
  v4 = v0[33];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1000363AC()
{
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[23];

  sub_100003558(v0 + 17);
  v4 = v0[35];
  v5 = v0[1];

  return v5();
}

uint64_t sub_100036430(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002074(&qword_1000B7820, &unk_1000917B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = v55 - v7;
  v61 = type metadata accessor for Date();
  v9 = *(v61 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v61, v11);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v56 = v55 - v17;
  __chkstk_darwin(v16, v18);
  v57 = v55 - v19;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger;
  sub_100043EA4(a1, v60);
  (*(v21 + 16))(v25, v2 + v26, v20);
  v27 = sub_100054AB0();
  if (!v28)
  {
    v44 = static os_log_type_t.debug.getter();
    sub_10005E11C(v44, 0xD00000000000002ELL, 0x8000000100096A90, 0xD00000000000006ALL, 0x8000000100095F40, 456);
    Date.init()();
    sub_1000407B0(v14, v60, v25);
    (*(v9 + 8))(v14, v61);
LABEL_11:
    (*(v21 + 8))(v25, v20);
    sub_100003558(v60);
    v43 = 0;
    return v43 & 1;
  }

  v29 = v28;
  v55[0] = v27;
  v55[1] = v26;
  sub_10002F9EC(1, v8);
  v30 = v9;
  v31 = v61;
  if ((*(v9 + 48))(v8, 1, v61) != 1)
  {

    v45 = v57;
    (*(v9 + 32))(v57, v8, v31);
    v46 = v56;
    Date.init()();
    if ((static Date.> infix(_:_:)() & 1) == 0)
    {
      (*(v21 + 8))(v25, v20);
      sub_100003558(v60);
      LODWORD(v55[0]) = static os_log_type_t.default.getter();
      v58 = 0;
      v59 = 0xE000000000000000;
      _StringGuts.grow(_:)(74);
      v48._countAndFlagsBits = 0xD000000000000031;
      v48._object = 0x8000000100096AF0;
      String.append(_:)(v48);
      sub_10004D698(&qword_1000B6A98, &type metadata accessor for Date);
      v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v49);

      v50._countAndFlagsBits = 0xD000000000000013;
      v50._object = 0x8000000100096B30;
      String.append(_:)(v50);
      v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v51);

      v52._countAndFlagsBits = 32032;
      v52._object = 0xE200000000000000;
      String.append(_:)(v52);
      sub_10005E11C(v55[0], v58, v59, 0xD00000000000006ALL, 0x8000000100095F40, 473);

      v53 = *(v30 + 8);
      v53(v46, v31);
      v53(v45, v31);
      v43 = 1;
      return v43 & 1;
    }

    sub_1000407B0(v46, v60, v25);
    v47 = *(v30 + 8);
    v47(v46, v31);
    v47(v45, v31);
    goto LABEL_11;
  }

  (*(v21 + 8))(v25, v20);
  sub_100003558(v60);
  sub_10000BC10(v8, &qword_1000B7820, &unk_1000917B0);
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v32 = qword_1000B7C78;
    v33 = String._bridgeToObjectiveC()();
    [v32 setValue:0 forKey:v33];
  }

  v34 = static os_log_type_t.error.getter();
  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v58 = 0xD000000000000022;
  v59 = 0x8000000100096AC0;
  v35 = v55[0];
  v36._countAndFlagsBits = v55[0];
  v36._object = v29;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 32032;
  v37._object = 0xE200000000000000;
  String.append(_:)(v37);
  sub_10005E11C(v34, v58, v59, 0xD00000000000006ALL, 0x8000000100095F40, 467);

  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v58 = 0xD000000000000022;
  v59 = 0x8000000100096AC0;
  v38._countAndFlagsBits = v35;
  v38._object = v29;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 32032;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  v40 = v58;
  v41 = v59;
  sub_10000B6B0();
  swift_allocError();
  *v42 = v40;
  *(v42 + 8) = v41;
  *(v42 + 16) = 2;
  swift_willThrow();
  return v43 & 1;
}

uint64_t sub_100036B44(uint64_t a1, uint64_t a2)
{
  v3[278] = v2;
  v3[277] = a2;
  v3[276] = a1;
  v4 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0);
  v3[279] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[280] = swift_task_alloc();
  v6 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v3[281] = swift_task_alloc();

  return _swift_task_switch(sub_100036C18, 0, 0);
}

uint64_t sub_100036C18()
{
  v1 = v0;
  isEscapingClosureAtFileLocation = *(v0 + 2216);
  v3 = isEscapingClosureAtFileLocation + *(*(v0 + 2232) + 20);
  v4 = *(v3 + 48);
  *(v0 + 2256) = v4;
  v5 = *(v3 + 56);
  *(v0 + 2264) = v5;
  v6 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
LABEL_15:
    v29 = v1[280];
    v197 = v1[278];
    v30 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(65);
    v31._object = 0x8000000100096A10;
    v31._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v31);
    sub_10004D808(isEscapingClosureAtFileLocation, v29, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 32032;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    sub_10005E11C(v30, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 129);

    _StringGuts.grow(_:)(65);
    v34._object = 0x8000000100096A10;
    v34._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v34);
    sub_10004D808(isEscapingClosureAtFileLocation, v29, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v35._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 32032;
    v36._object = 0xE200000000000000;
    String.append(_:)(v36);
    sub_10000B6B0();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0xE000000000000000;
LABEL_17:
    *(v37 + 16) = 0;
    swift_willThrow();
    goto LABEL_18;
  }

  v8 = sub_10004D154(isEscapingClosureAtFileLocation);
  v9 = *(v0 + 2224);
  if ((v8 & 1) == 0)
  {
    v38 = static os_log_type_t.default.getter();
    sub_10005E11C(v38, 0xD000000000000031, 0x8000000100096850, 0xD00000000000006ALL, 0x8000000100095F40, 134);
    sub_10000B6B0();
    swift_allocError();
    *v37 = 0xD000000000000031;
    *(v37 + 8) = 0x8000000100096850;
    goto LABEL_17;
  }

  sub_1000318A4();
  v10 = 0;
  v11 = *(v0 + 2248);
  v12 = *(v0 + 2216);
  LOBYTE(v13) = 1;
  *(v0 + 2424) = 1;
  sub_100011DFC(v12, v11, &qword_1000B6CB8, &unk_10008F9F0);
  v14 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14);
  sub_10000BC10(v11, &qword_1000B6CB8, &unk_10008F9F0);
  if (v15 != 1)
  {
    if (qword_1000B6658 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_8;
  }

  while (2)
  {
    v19 = v1[278];
    v20 = &unk_1000B7000;
    v21 = static os_log_type_t.default.getter();
    sub_10005E11C(v21, 0xD00000000000002FLL, 0x8000000100096890, 0xD00000000000006ALL, 0x8000000100095F40, 200);
    sub_10003511C();
    v22 = v1[278];
    if (v10)
    {
      v1[68] = 0;
      *(v1 + 32) = 0u;
      *(v1 + 33) = 0u;
      *(v1 + 30) = 0u;
      *(v1 + 31) = 0u;
      *(v1 + 29) = 0u;
      *(v1 + 276) = -256;
      v1[70] = 0;
      *(v1 + 568) = v13;
      sub_10004D588((v1 + 58));
      v23 = sub_1000111EC((v22 + 16), *(v22 + 40))[1];
      v24 = qword_1000B6700;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = qword_1000B89E0;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_100011230;
      *(v26 + 24) = v23;
      v1[225] = sub_10004D5C8;
      v1[226] = v26;
      v1[221] = _NSConcreteStackBlock;
      v1[222] = 1107296256;
      v1[223] = sub_100010FA0;
      v1[224] = &unk_1000B01D8;
      v27 = _Block_copy(v1 + 221);
      v28 = v1[226];

      dispatch_sync(v25, v27);
      _Block_release(v27);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_15;
    }

    v194 = ", connectedToPower=";
    v60 = v1 + 273;
    v61 = sub_1000111EC((v22 + 16), *(v22 + 40))[1];
    v62 = qword_1000B6700;

    if (v62 != -1)
    {
      swift_once();
    }

    v63 = qword_1000B89E0;
    OS_dispatch_queue.sync<A>(execute:)();
    v185 = v1 + 99;

    v66 = *v60;
    if (*v60 <= 0)
    {
LABEL_45:
      v105 = v1[278];
      v106 = *(v20 + 2208);
      v107 = static os_log_type_t.default.getter();
      sub_10005E11C(v107, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, (v194 | 0x8000000000000000), 206);
      v1[152] = 0;
      *(v1 + 74) = 0u;
      *(v1 + 75) = 0u;
      *(v1 + 72) = 0u;
      *(v1 + 73) = 0u;
      *(v1 + 71) = 0u;
      *(v1 + 612) = -256;
      *(v1 + 1226) = *(v1 + 122);
      *(v1 + 615) = *(v1 + 63);
      v1[154] = 0;
      v108 = *(v1 + 2424);
      *(v1 + 1240) = v108;
      *(v1 + 64) = 0u;
      *(v1 + 65) = 0u;
      *(v1 + 66) = 0u;
      *(v1 + 67) = 0u;
      *(v1 + 68) = 0u;
      v1[138] = 0;
      *(v1 + 556) = -256;
      *(v1 + 1114) = *(v1 + 122);
      *(v1 + 559) = *(v1 + 63);
      v1[140] = 0;
      *(v1 + 1128) = v108;
      v179 = v1 + 142;
      sub_10004D5D0((v1 + 142), (v1 + 156));
      sub_10004D588((v1 + 128));
      v109 = sub_1000111EC((v22 + 16), *(v22 + 40))[1];
      v110 = swift_allocObject();
      *(v110 + 16) = sub_100011E70;
      *(v110 + 24) = v109;
      v1[207] = sub_10004E120;
      v1[208] = v110;
      v1[203] = _NSConcreteStackBlock;
      v1[204] = 1107296256;
      v1[205] = sub_100010FA0;
      v1[206] = &unk_1000B0278;
      v111 = _Block_copy(v1 + 203);
      v112 = v1[208];
      swift_retain_n();

      dispatch_sync(v63, v111);
      _Block_release(v111);
      LOBYTE(v111) = swift_isEscapingClosureAtFileLocation();

      if (v111)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        return result;
      }

      v113 = (v1 + 153);
      v114 = v1 + 154;
      v115 = (v185 + 56);
      v116 = v1 + 152;
      v117 = v1 + 151;
      v118 = v1 + 150;
      v119 = v1 + 149;
      v120 = v1 + 148;
      v121 = v1 + 147;
      v122 = v1 + 146;
      v123 = v1 + 145;
      v124 = v1 + 144;
      v125 = v1 + 143;
LABEL_47:
      v126 = *v114;
      v127 = *v115;
      v128 = *v119;
      v129 = *v118;
      v130 = *v117;
      v131 = *v116;
      v132 = *v113;
      v133 = *v125;
      v134 = *v124;
      v135 = *v123;
      v136 = *v122;
      v137 = *v121;
      v138 = *v120;
      v139 = v1[281];
      v140 = v1[280];
      v141 = v1[276];
      *v141 = *v179;
      *(v141 + 8) = v133;
      *(v141 + 16) = v134;
      *(v141 + 24) = v135;
      *(v141 + 32) = v136;
      *(v141 + 40) = v137;
      *(v141 + 48) = v138;
      *(v141 + 56) = v128;
      *(v141 + 64) = v129;
      *(v141 + 72) = v130;
      *(v141 + 80) = v131;
      *(v141 + 88) = v132;
      *(v141 + 96) = v126;
      *(v141 + 104) = v127;

      v41 = v1[1];
      goto LABEL_19;
    }

    v195 = v1[282];
    v198 = v1[283];
    v67 = v1[278];
    v192 = v1[277];
    v68 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(66);
    v69._countAndFlagsBits = 0xD00000000000003ELL;
    v69._object = 0x8000000100096910;
    String.append(_:)(v69);
    v1[275] = v66;
    v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v70);

    v71._countAndFlagsBits = 32032;
    v71._object = 0xE200000000000000;
    String.append(_:)(v71);
    sub_10005E11C(v68, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);

    v72 = *(v192 + *(type metadata accessor for SpamDecisioningAsset(0) + 28));
    v191 = sub_10003F940(v195, v198);
    v193 = 0;
    v188 = v66;
    v142 = 0;
    v183 = 0;
    v184 = 0;
    v186 = 0;
    v181 = 0;
    v182 = 0;
    v179 = v1 + 86;
    v180 = 0;
    aBlock = v1 + 227;
    v177 = (v1 + 170);
    v178 = v1 + 209;
    v199 = v1 + 184;
    v143 = v1 + 274;
    v201 = v1;
    v189 = v63;
    v190 = v22;
    while (1)
    {
      v196 = objc_autoreleasePoolPush();
      v144 = sub_1000111EC((v22 + 16), *(v22 + 40))[1];
      v145 = swift_task_alloc();
      *(v145 + 16) = v144;
      *(v145 + 24) = 1000;
      *(v145 + 32) = 0;
      *(v145 + 40) = v142;
      *(v145 + 48) = 0;

      sub_100002074(&qword_1000B7A58, &qword_100091810);
      OS_dispatch_queue.sync<A>(execute:)();

      v146 = v143;
      sub_10005D8F4(v191, *v143, v199);
      v147 = v67;

      v148 = v1[188];
      if (!v148)
      {
        break;
      }

      v149 = *(v1 + 1480);
      v150 = v1[186];
      v151 = v1[187];
      v152 = v1[189];
      v153 = v1[190];
      v154 = *v199;
      if (!v193)
      {
        v183 = v150;
        v184 = *v199;
        v181 = v152;
        v182 = v151;
        v193 = v148;
        v180 = v153;
        v157 = v149 | ((*(v185 + 689) | ((*(v185 + 693) | (*(v185 + 695) << 16)) << 32)) << 8);
        goto LABEL_56;
      }

      if ((v149 & 1) == 0 && (v186 & 1) == 0)
      {
        v155 = HIDWORD(*v199);
        if (*(&v184 + 1) < *(&v154 + 1))
        {
          v156 = v186;
          v187 = *(v185 + 689) | ((*(v185 + 693) | (*(v185 + 695) << 16)) << 32);
          sub_10004D630(v184, v156, v183, v182, v193);
          v183 = v150;
          v184 = v154;
          v181 = v152;
          v182 = v151;
          v193 = v148;
          v180 = v153;
          v157 = v149 | (v187 << 8);
LABEL_56:
          v186 = v157;
          goto LABEL_57;
        }
      }

      sub_10000BC10(v199, &qword_1000B7A80, &qword_100091848);
LABEL_57:
      v99 = v142 + 1000;
      v1 = v201;
      v63 = v189;
      v22 = v190;
      if (__OFADD__(v142, 1000))
      {
        __break(1u);
        goto LABEL_65;
      }

      v67 = v147;
      objc_autoreleasePoolPop(v196);
      v142 += 1000;
      v158 = v99 < v188;
      v143 = v146;
      if (!v158)
      {

        sub_10004D630(0, 0, 0, 0, 0);
        *(v201 + 2424) = 0;
        v201[86] = v184;
        v201[87] = v186;
        v201[88] = v183;
        v201[89] = v182;
        v201[90] = v193;
        v201[91] = v181;
        v201[92] = v180;
        v119 = v201 + 93;
        *(v201 + 93) = 0u;
        *(v201 + 95) = 0u;
        *(v201 + 388) = -256;
        *(v201 + 778) = *(v201 + 122);
        *(v201 + 391) = *(v201 + 63);
        v201[98] = v188;
        v159 = *(v201 + 2424);
        *(v201 + 792) = v159;
        v201[114] = v184;
        v201[115] = v186;
        v201[116] = v183;
        v201[117] = v182;
        v201[118] = v193;
        v201[119] = v181;
        v201[120] = v180;
        *(v201 + 121) = 0u;
        *(v201 + 123) = 0u;
        *(v201 + 500) = -256;
        *(v201 + 1002) = *(v201 + 122);
        *(v201 + 503) = *(v201 + 63);
        v201[126] = v188;
        *(v201 + 1016) = v159;
        sub_10004D5D0(v179, (v201 + 72));
        sub_10004D588((v201 + 114));
        v160 = sub_1000111EC((v190 + 16), *(v190 + 40))[1];
        v161 = swift_allocObject();
        *(v161 + 16) = sub_100011E70;
        *(v161 + 24) = v160;
        v201[231] = sub_10004E120;
        v201[232] = v161;
        v201[227] = _NSConcreteStackBlock;
        v201[228] = 1107296256;
        v201[229] = sub_100010FA0;
        v201[230] = &unk_1000B0368;
        v162 = _Block_copy(aBlock);
        v163 = v201[232];
        swift_retain_n();

        dispatch_sync(v189, v162);
        _Block_release(v162);
        LOBYTE(v162) = swift_isEscapingClosureAtFileLocation();

        if (v162)
        {
          goto LABEL_67;
        }

        v125 = v201 + 87;
        v124 = v201 + 88;
        v123 = v201 + 89;
        v122 = v201 + 90;
        v121 = v201 + 91;
        v120 = v201 + 92;
        v118 = v201 + 94;
        v117 = v201 + 95;
        v116 = v201 + 96;
        v113 = (v201 + 97);
        v114 = v201 + 98;
        v115 = v185;
        goto LABEL_47;
      }
    }

    v164 = v1[280];
    v165 = v1[279];
    v166 = v1[277];

    v200 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(50);

    v13 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput;
    sub_10004D808(v166, v164, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v167._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v167);

    v168._countAndFlagsBits = 32032;
    v168._object = 0xE200000000000000;
    String.append(_:)(v168);
    sub_10005E11C(v200, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);

    _StringGuts.grow(_:)(50);

    sub_10004D808(v166, v164, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v169._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v169);

    v170._countAndFlagsBits = 32032;
    v170._object = 0xE200000000000000;
    String.append(_:)(v170);
    sub_10000B6B0();
    v10 = swift_allocError();
    *v171 = 0xD00000000000002ELL;
    *(v171 + 8) = 0x8000000100096950;
    *(v171 + 16) = 12;
    swift_willThrow();
    objc_autoreleasePoolPop(v196);
    sub_10004D630(v184, v186, v183, v182, v193);
    *(v177 + 80) = 0;
    *(v177 + 48) = 0u;
    *(v177 + 64) = 0u;
    *(v177 + 16) = 0u;
    *(v177 + 32) = 0u;
    *v177 = 0u;
    *(v1 + 724) = -256;
    *(v1 + 1450) = *(v1 + 122);
    *(v1 + 727) = *(v1 + 63);
    v1[182] = 0;
    *(v1 + 1464) = *(v1 + 2424);
    sub_10004D588(v177);
    v172 = sub_1000111EC((v190 + 16), *(v190 + 40))[1];
    v173 = swift_allocObject();
    *(v173 + 16) = sub_100011E70;
    *(v173 + 24) = v172;
    v1[213] = sub_10004E120;
    v1[214] = v173;
    v1[209] = _NSConcreteStackBlock;
    v1[210] = 1107296256;
    v1[211] = sub_100010FA0;
    v1[212] = &unk_1000B0318;
    v174 = _Block_copy(v178);
    v175 = v1[214];
    swift_retain_n();

    dispatch_sync(v189, v174);
    _Block_release(v174);
    LOBYTE(v174) = swift_isEscapingClosureAtFileLocation();

    if ((v174 & 1) == 0)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_63:
    swift_once();
LABEL_8:
    if (qword_1000B7C78)
    {
      v16 = qword_1000B7C78;
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 BOOLForKey:v17];

      if (v18)
      {
        continue;
      }
    }

    break;
  }

  v43 = v1[278];
  v44 = v1[277];
  v1[248] = v1[279];
  v1[249] = &off_1000B0908;
  v45 = sub_1000112A4(v1 + 245);
  sub_10004D808(v44, v45, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v46 = sub_100036430((v1 + 245));
  sub_100003558(v1 + 245);
  if (v10)
  {
    v1[294] = v10;
    v1[272] = v10;
    swift_errorRetain();
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    if (swift_dynamicCast())
    {
      v47 = v1[266];
      v48 = v1[267];
      v49 = *(v1 + 2144);
      if (v49 == 9)
      {
        v50 = v1[278];
        v51 = static os_log_type_t.error.getter();
        _StringGuts.grow(_:)(61);
        v52._object = 0x8000000100096980;
        v52._countAndFlagsBits = 0xD000000000000039;
        String.append(_:)(v52);
        v53._countAndFlagsBits = v47;
        v53._object = v48;
        String.append(_:)(v53);
        v54._countAndFlagsBits = 32032;
        v54._object = 0xE200000000000000;
        String.append(_:)(v54);
        sub_10005E11C(v51, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 184);

        _StringGuts.grow(_:)(61);
        v55._object = 0x8000000100096980;
        v55._countAndFlagsBits = 0xD000000000000039;
        String.append(_:)(v55);
        v56._countAndFlagsBits = v47;
        v56._object = v48;
        String.append(_:)(v56);
        sub_100011CAC(v47, v48, 9u);
        v57._countAndFlagsBits = 32032;
        v57._object = 0xE200000000000000;
        String.append(_:)(v57);
        sub_10004D674(0, 0, 0, 0, 65280);
        v1[295] = 0;
        v1[296] = 0xE000000000000000;
        v58 = swift_task_alloc();
        v1[297] = v58;
        *v58 = v1;
        v59 = sub_10003BCC0;
        goto LABEL_39;
      }

      sub_100011CAC(v1[266], v1[267], v49);
    }

    v1[269] = v10;
    swift_errorRetain();
    v77 = swift_dynamicCast();
    v22 = v1[278];
    if (v77)
    {
      v78 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(61);
      v79._object = 0x8000000100096980;
      v79._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v79);
      sub_10004BCB0();
      v80._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v80);

      v81._countAndFlagsBits = 32032;
      v81._object = 0xE200000000000000;
      String.append(_:)(v81);
      sub_10005E11C(v78, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 188);

      _StringGuts.grow(_:)(61);
      v82._object = 0x8000000100096980;
      v82._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v82);
      v83._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v83);

      v84._countAndFlagsBits = 32032;
      v84._object = 0xE200000000000000;
      String.append(_:)(v84);
      sub_10004D674(0, 0, 0, 0, 65280);
      v1[299] = 0;
      v1[300] = 0xE000000000000000;
      v58 = swift_task_alloc();
      v1[301] = v58;
      *v58 = v1;
      v59 = sub_10003CD94;
LABEL_39:
      v58[1] = v59;
      v85 = v1[278];

      return sub_100035804(1);
    }

    v199 = v1 + 239;
    v86 = static os_log_type_t.error.getter();
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v87._object = 0x8000000100094650;
    v87._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v87);
    swift_getErrorValue();
    v88 = v1[260];
    v89 = v1[261];
    v90 = v1[262];
    v91._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v91);

    v92._countAndFlagsBits = 32032;
    v92._object = 0xE200000000000000;
    String.append(_:)(v92);
    sub_10005E11C(v86, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 192);

    _StringGuts.grow(_:)(65);
    v93._object = 0x8000000100094650;
    v93._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v93);
    swift_getErrorValue();
    v94 = v1[263];
    v95 = v1[264];
    v96 = v1[265];
    v97._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v97);

    v98._countAndFlagsBits = 32032;
    v98._object = 0xE200000000000000;
    String.append(_:)(v98);
    sub_10004D674(0, 0, 0, 0, 65280);
    swift_willThrow();
    *(v1 + 23) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 22) = 0u;
    v1[50] = 0;
    v1[51] = 0;
    v1[52] = 0xE000000000000000;
    v1[53] = 2;
    v1[54] = 0;
    *(v1 + 220) = 256;
    *(v1 + 442) = *(v1 + 122);
    *(v1 + 223) = *(v1 + 63);
    v1[56] = 0;
    *(v1 + 456) = *(v1 + 2424);
    sub_10004D588((v1 + 44));
    v99 = sub_1000111EC((v22 + 16), *(v22 + 40))[1];
    v100 = qword_1000B6700;

    if (v100 != -1)
    {
LABEL_65:
      swift_once();
    }

    v101 = qword_1000B89E0;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_100011E70;
    *(v102 + 24) = v99;
    v1[243] = sub_10004E120;
    v1[244] = v102;
    v1[239] = _NSConcreteStackBlock;
    v1[240] = 1107296256;
    v1[241] = sub_100010FA0;
    v1[242] = &unk_1000B03B8;
    v103 = _Block_copy(v199);
    v104 = v1[244];

    dispatch_sync(v101, v103);
    _Block_release(v103);
    v20 = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      __break(1u);
      goto LABEL_45;
    }

LABEL_18:
    v39 = v1[281];
    v40 = v1[280];

    v41 = v1[1];
LABEL_19:

    return v41();
  }

  if (v46)
  {
    v64 = v1[278];
    v65 = static os_log_type_t.default.getter();
    sub_10005E11C(v65, 0xD000000000000048, 0x80000001000969C0, 0xD00000000000006ALL, 0x8000000100095F40, 176);
    sub_10004D674(0, 0, 0, 0, 65280);
    v58 = swift_task_alloc();
    v1[292] = v58;
    *v58 = v1;
    v59 = sub_10003ABB8;
    goto LABEL_39;
  }

  v73 = v1[277];
  v1[253] = v1[279];
  v1[254] = &off_1000B0908;
  v74 = sub_1000112A4(v1 + 250);
  sub_10004D808(v73, v74, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v75 = swift_task_alloc();
  v1[284] = v75;
  *v75 = v1;
  v75[1] = sub_100038900;
  v76 = v1[278];

  return sub_100031B04((v1 + 255), (v1 + 250), 0, 0, 1);
}

uint64_t sub_100038900()
{
  v2 = *v1;
  v3 = *(*v1 + 2272);
  v6 = *v1;
  *(*v1 + 2280) = v0;

  if (v0)
  {
    v4 = sub_10003DE68;
  }

  else
  {
    *(v2 + 2288) = *(v2 + 2040);
    *(v2 + 2296) = *(v2 + 2048);
    *(v2 + 2312) = *(v2 + 2064);
    *(v2 + 121) = *(v2 + 2072);
    sub_100003558((v2 + 2000));
    v4 = sub_100038A40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100038A40()
{
  v1 = *(v0 + 121);
  v2 = *(v0 + 2288);
  sub_10004D674(0, 0, 0, 0, 65280);
  if (*(v0 + 2072))
  {
    v3 = swift_task_alloc();
    *(v0 + 2320) = v3;
    *v3 = v0;
    v3[1] = sub_100039AC4;
    v4 = *(v0 + 2224);

    return sub_100035804(1);
  }

  v6 = *(v0 + 2312);
  v121 = *(v0 + 2296);
  v122 = *(v0 + 2304);
  v7 = *(v0 + 2280);
  v8 = *(v0 + 2224);
  v9 = sub_1000111EC((v8 + 16), *(v8 + 40))[1];
  v10 = qword_1000B6700;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v7)
  {

    *(v0 + 848) = 0;
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    *(v0 + 800) = 0u;
    *(v0 + 856) = v2;
    *(v0 + 864) = v121;
    *(v0 + 872) = v122;
    *(v0 + 880) = v6;
    *(v0 + 888) = v1;
    *(v0 + 890) = *(v0 + 122);
    *(v0 + 894) = *(v0 + 126);
    *(v0 + 896) = 0;
    *(v0 + 904) = *(v0 + 2424);
    sub_10004D588(v0 + 800);
    v12 = sub_1000111EC((v8 + 16), *(v8 + 40))[1];
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100011E70;
    *(v13 + 24) = v12;
    *(v0 + 1752) = sub_10004E120;
    *(v0 + 1760) = v13;
    *(v0 + 1720) = _NSConcreteStackBlock;
    *(v0 + 1728) = 1107296256;
    *(v0 + 1736) = sub_100010FA0;
    *(v0 + 1744) = &unk_1000B0228;
    v14 = _Block_copy((v0 + 1720));
    v15 = *(v0 + 1760);
    swift_retain_n();

    dispatch_sync(v11, v14);
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_9:
      v17 = *(v0 + 2248);
      v18 = *(v0 + 2240);

      v19 = *(v0 + 8);
      goto LABEL_10;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = *(v0 + 2184);
  if (v20 <= 0)
  {
    v26 = *(v0 + 2224);
    v27 = static os_log_type_t.default.getter();
    sub_10005E11C(v27, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
    *(v0 + 1184) = 0;
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
    *(v0 + 1136) = 0u;
    *(v0 + 1192) = v2;
    *(v0 + 1200) = v121;
    *(v0 + 1208) = v122;
    *(v0 + 1216) = v6;
    *(v0 + 1224) = v1;
    *(v0 + 1226) = *(v0 + 122);
    *(v0 + 1230) = *(v0 + 126);
    *(v0 + 1232) = 0;
    v28 = *(v0 + 2424);
    *(v0 + 1240) = v28;
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
    *(v0 + 1056) = 0u;
    *(v0 + 1072) = 0;
    *(v0 + 1080) = v2;
    *(v0 + 1088) = v121;
    *(v0 + 1096) = v122;
    *(v0 + 1104) = v6;
    v29 = (v0 + 1136);
    *(v0 + 1112) = v1;
    *(v0 + 1114) = *(v0 + 122);
    *(v0 + 1118) = *(v0 + 126);
    *(v0 + 1120) = 0;
    *(v0 + 1128) = v28;
    sub_10004D5D0(v0 + 1136, v0 + 1248);
    sub_10004D588(v0 + 1024);
    v30 = sub_1000111EC((v8 + 16), *(v8 + 40))[1];
    v31 = swift_allocObject();
    *(v31 + 16) = sub_100011E70;
    *(v31 + 24) = v30;
    *(v0 + 1656) = sub_10004E120;
    *(v0 + 1664) = v31;
    *(v0 + 1624) = _NSConcreteStackBlock;
    *(v0 + 1632) = 1107296256;
    *(v0 + 1640) = sub_100010FA0;
    *(v0 + 1648) = &unk_1000B0278;
    v32 = _Block_copy((v0 + 1624));
    v33 = *(v0 + 1664);
    swift_retain_n();

    dispatch_sync(v11, v32);
    _Block_release(v32);
    v34 = swift_isEscapingClosureAtFileLocation();

    if ((v34 & 1) == 0)
    {
      v35 = (v0 + 1192);
      v36 = (v0 + 1200);
      v37 = (v0 + 1208);
      v38 = (v0 + 1216);
      v39 = (v0 + 1224);
      v40 = (v0 + 1232);
      v41 = (v0 + 1240);
      v42 = (v0 + 1184);
      v43 = (v0 + 1176);
      v44 = (v0 + 1168);
      v45 = (v0 + 1160);
      v46 = (v0 + 1152);
      v47 = (v0 + 1144);
      goto LABEL_17;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v99 = v6;
  v116 = *(v0 + 2256);
  v118 = *(v0 + 2264);
  v21 = *(v0 + 2224);
  v113 = v2;
  v114 = *(v0 + 2216);
  queuea = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(66);
  v22._countAndFlagsBits = 0xD00000000000003ELL;
  v22._object = 0x8000000100096910;
  String.append(_:)(v22);
  v112 = v20;
  *(v0 + 2200) = v20;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 32032;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  sub_10005E11C(queuea, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);

  v25 = *(v114 + *(type metadata accessor for SpamDecisioningAsset(0) + 28));
  v109 = sub_10003F940(v116, v118);
  queue = v11;
  v63 = 0;
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v115 = 0;
  v100 = 0;
  v101 = 0;
  v98 = (v0 + 1360);
  v119 = (v0 + 1472);
  v64 = (v0 + 2192);
  v108 = v8;
  v107 = v1;
  while (1)
  {
    v117 = objc_autoreleasePoolPush();
    v65 = sub_1000111EC((v8 + 16), *(v8 + 40))[1];
    v66 = swift_task_alloc();
    *(v66 + 16) = v65;
    *(v66 + 24) = 1000;
    *(v66 + 32) = 0;
    *(v66 + 40) = v63;
    *(v66 + 48) = 0;

    sub_100002074(&qword_1000B7A58, &qword_100091810);
    OS_dispatch_queue.sync<A>(execute:)();

    v67 = v64;
    sub_10005D8F4(v109, *v64, v119);

    v68 = *(v0 + 1504);
    if (!v68)
    {
      break;
    }

    v69 = *(v0 + 1480);
    v70 = *(v0 + 1488);
    v71 = *(v0 + 1496);
    v72 = *(v0 + 1512);
    v73 = *(v0 + 1520);
    v74 = *v119;
    if (!v115)
    {
      v104 = *v119;
      v102 = *(v0 + 1496);
      v103 = *(v0 + 1488);
      v115 = *(v0 + 1504);
      v100 = *(v0 + 1520);
      v101 = *(v0 + 1512);
      v75 = v69 | ((*(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32)) << 8);
LABEL_24:
      v105 = v75;
      goto LABEL_25;
    }

    if ((v69 & 1) == 0 && (v105 & 1) == 0)
    {
      v79 = HIDWORD(*v119);
      if (*(&v104 + 1) < *(&v74 + 1))
      {
        v80 = v105;
        v106 = *(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32);
        result = sub_10004D630(v104, v80, v103, v102, v115);
        v104 = v74;
        v102 = v71;
        v103 = v70;
        v115 = v68;
        v100 = v73;
        v101 = v72;
        v75 = v69 | (v106 << 8);
        goto LABEL_24;
      }
    }

    result = sub_10000BC10(v119, &qword_1000B7A80, &qword_100091848);
LABEL_25:
    v76 = v63 + 1000;
    v8 = v108;
    v77 = v107;
    v78 = v113;
    if (__OFADD__(v63, 1000))
    {
      __break(1u);
      goto LABEL_36;
    }

    objc_autoreleasePoolPop(v117);
    v63 += 1000;
    v64 = v67;
    if (v76 >= v112)
    {
      goto LABEL_33;
    }
  }

  v81 = *(v0 + 2240);
  v82 = *(v0 + 2232);
  v83 = *(v0 + 2216);

  v120 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(50);

  sub_10004D808(v83, v81, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v84._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v84);

  v85._countAndFlagsBits = 32032;
  v85._object = 0xE200000000000000;
  String.append(_:)(v85);
  v8 = 0x8000000100096950;
  sub_10005E11C(v120, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);

  _StringGuts.grow(_:)(50);

  sub_10004D808(v83, v81, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v86._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v86);

  v87._countAndFlagsBits = 32032;
  v87._object = 0xE200000000000000;
  String.append(_:)(v87);
  sub_10000B6B0();
  swift_allocError();
  *v88 = 0xD00000000000002ELL;
  *(v88 + 8) = 0x8000000100096950;
  *(v88 + 16) = 12;
  swift_willThrow();
  objc_autoreleasePoolPop(v117);
  sub_10004D630(v104, v105, v103, v102, v115);
  *(v0 + 1408) = 0;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0u;
  *v98 = 0u;
  *(v0 + 1416) = v113;
  *(v0 + 1424) = v121;
  *(v0 + 1432) = v122;
  *(v0 + 1440) = v99;
  *(v0 + 1448) = v107;
  *(v0 + 1450) = *(v0 + 122);
  *(v0 + 1454) = *(v0 + 126);
  *(v0 + 1456) = 0;
  *(v0 + 1464) = *(v0 + 2424);
  sub_10004D588(v98);
  v78 = sub_1000111EC((v108 + 16), *(v108 + 40))[1];
  v89 = swift_allocObject();
  *(v89 + 16) = sub_100011E70;
  *(v89 + 24) = v78;
  *(v0 + 1704) = sub_10004E120;
  *(v0 + 1712) = v89;
  *(v0 + 1672) = _NSConcreteStackBlock;
  *(v0 + 1680) = 1107296256;
  *(v0 + 1688) = sub_100010FA0;
  *(v0 + 1696) = &unk_1000B0318;
  v90 = _Block_copy((v0 + 1672));
  v91 = *(v0 + 1712);
  swift_retain_n();

  dispatch_sync(queue, v90);
  _Block_release(v90);
  v77 = swift_isEscapingClosureAtFileLocation();

  if ((v77 & 1) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_33:

  sub_10004D630(0, 0, 0, 0, 0);
  *(v0 + 2424) = 0;
  *(v0 + 688) = v104;
  *(v0 + 696) = v105;
  *(v0 + 704) = v103;
  *(v0 + 712) = v102;
  *(v0 + 720) = v115;
  *(v0 + 728) = v101;
  *(v0 + 736) = v100;
  *(v0 + 744) = v78;
  *(v0 + 752) = v121;
  *(v0 + 760) = v122;
  *(v0 + 768) = v99;
  *(v0 + 776) = v77;
  *(v0 + 778) = *(v0 + 122);
  *(v0 + 782) = *(v0 + 126);
  *(v0 + 784) = v112;
  v92 = *(v0 + 2424);
  *(v0 + 792) = v92;
  *(v0 + 912) = v104;
  *(v0 + 920) = v105;
  *(v0 + 928) = v103;
  *(v0 + 936) = v102;
  *(v0 + 944) = v115;
  *(v0 + 952) = v101;
  *(v0 + 960) = v100;
  *(v0 + 968) = v78;
  *(v0 + 976) = v121;
  *(v0 + 984) = v122;
  *(v0 + 992) = v99;
  *(v0 + 1000) = v77;
  *(v0 + 1002) = *(v0 + 122);
  *(v0 + 1006) = *(v0 + 126);
  *(v0 + 1008) = v112;
  *(v0 + 1016) = v92;
  v29 = (v0 + 688);
  sub_10004D5D0(v0 + 688, v0 + 576);
  sub_10004D588(v0 + 912);
  v93 = sub_1000111EC((v8 + 16), *(v8 + 40))[1];
  v94 = swift_allocObject();
  *(v94 + 16) = sub_100011E70;
  *(v94 + 24) = v93;
  *(v0 + 1848) = sub_10004E120;
  *(v0 + 1856) = v94;
  *(v0 + 1816) = _NSConcreteStackBlock;
  *(v0 + 1824) = 1107296256;
  *(v0 + 1832) = sub_100010FA0;
  *(v0 + 1840) = &unk_1000B0368;
  v95 = _Block_copy((v0 + 1816));
  v96 = *(v0 + 1856);
  swift_retain_n();

  dispatch_sync(queue, v95);
  _Block_release(v95);
  v97 = swift_isEscapingClosureAtFileLocation();

  if (v97)
  {
    goto LABEL_38;
  }

  v47 = (v0 + 696);
  v46 = (v0 + 704);
  v45 = (v0 + 712);
  v44 = (v0 + 720);
  v43 = (v0 + 728);
  v42 = (v0 + 736);
  v35 = (v0 + 744);
  v36 = (v0 + 752);
  v37 = (v0 + 760);
  v38 = (v0 + 768);
  v39 = (v0 + 776);
  v40 = (v0 + 784);
  v41 = (v0 + 792);
LABEL_17:
  v48 = *v40;
  v49 = *v35;
  v50 = *v36;
  v51 = *v37;
  v52 = *v38;
  v53 = *v39;
  v54 = *v47;
  v55 = *v46;
  v56 = *v45;
  v57 = *v44;
  v58 = *v43;
  v59 = *v42;
  v60 = *(v0 + 2248);
  v61 = *(v0 + 2240);
  v62 = *(v0 + 2208);
  v123 = *v41;
  *v62 = *v29;
  *(v62 + 8) = v54;
  *(v62 + 16) = v55;
  *(v62 + 24) = v56;
  *(v62 + 32) = v57;
  *(v62 + 40) = v58;
  *(v62 + 48) = v59;
  *(v62 + 56) = v49;
  *(v62 + 64) = v50;
  *(v62 + 72) = v51;
  *(v62 + 80) = v52;
  *(v62 + 88) = v53;
  *(v62 + 96) = v48;
  *(v62 + 104) = v123;

  v19 = *(v0 + 8);
LABEL_10:

  return v19();
}

uint64_t sub_100039AC4()
{
  v2 = *(*v1 + 2320);
  v5 = *v1;
  *(*v1 + 2328) = v0;

  if (v0)
  {
    v3 = sub_10003E5D4;
  }

  else
  {
    v3 = sub_100039BD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100039BD8()
{
  v1 = *(v0 + 2328);
  v2 = *(v0 + 121);
  v3 = *(v0 + 2312);
  v4 = *(v0 + 2304);
  v119 = *(v0 + 2288);
  v120 = *(v0 + 2296);
  v5 = *(v0 + 2224);
  v6 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
  v7 = qword_1000B6700;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v1)
  {

    *(v0 + 848) = 0;
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    *(v0 + 800) = 0u;
    *(v0 + 856) = v119;
    *(v0 + 864) = v120;
    *(v0 + 872) = v4;
    *(v0 + 880) = v3;
    *(v0 + 888) = v2;
    *(v0 + 890) = *(v0 + 122);
    *(v0 + 894) = *(v0 + 126);
    *(v0 + 896) = 0;
    *(v0 + 904) = *(v0 + 2424);
    sub_10004D588(v0 + 800);
    v9 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100011E70;
    *(v10 + 24) = v9;
    *(v0 + 1752) = sub_10004E120;
    *(v0 + 1760) = v10;
    *(v0 + 1720) = _NSConcreteStackBlock;
    *(v0 + 1728) = 1107296256;
    *(v0 + 1736) = sub_100010FA0;
    *(v0 + 1744) = &unk_1000B0228;
    v11 = _Block_copy((v0 + 1720));
    v12 = *(v0 + 1760);
    swift_retain_n();

    dispatch_sync(v8, v11);
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_5:
      v15 = *(v0 + 2248);
      v16 = *(v0 + 2240);

      v17 = *(v0 + 8);
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v104 = v4;

  v18 = *(v0 + 2184);
  if (v18 <= 0)
  {
    v24 = *(v0 + 2224);
    v25 = static os_log_type_t.default.getter();
    sub_10005E11C(v25, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
    *(v0 + 1184) = 0;
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
    *(v0 + 1136) = 0u;
    *(v0 + 1192) = v119;
    *(v0 + 1200) = v120;
    *(v0 + 1208) = v4;
    *(v0 + 1216) = v3;
    *(v0 + 1224) = v2;
    *(v0 + 1226) = *(v0 + 122);
    *(v0 + 1230) = *(v0 + 126);
    *(v0 + 1232) = 0;
    v26 = *(v0 + 2424);
    *(v0 + 1240) = v26;
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
    *(v0 + 1056) = 0u;
    *(v0 + 1072) = 0;
    *(v0 + 1080) = v119;
    *(v0 + 1088) = v120;
    *(v0 + 1096) = v4;
    *(v0 + 1104) = v3;
    *(v0 + 1112) = v2;
    *(v0 + 1114) = *(v0 + 122);
    *(v0 + 1118) = *(v0 + 126);
    *(v0 + 1120) = 0;
    *(v0 + 1128) = v26;
    v27 = (v0 + 1136);
    sub_10004D5D0(v0 + 1136, v0 + 1248);
    sub_10004D588(v0 + 1024);
    v28 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
    v29 = swift_allocObject();
    *(v29 + 16) = sub_100011E70;
    *(v29 + 24) = v28;
    *(v0 + 1656) = sub_10004E120;
    *(v0 + 1664) = v29;
    *(v0 + 1624) = _NSConcreteStackBlock;
    *(v0 + 1632) = 1107296256;
    *(v0 + 1640) = sub_100010FA0;
    *(v0 + 1648) = &unk_1000B0278;
    v30 = _Block_copy((v0 + 1624));
    v31 = *(v0 + 1664);
    swift_retain_n();

    dispatch_sync(v8, v30);
    _Block_release(v30);
    v32 = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      v33 = (v0 + 1192);
      v34 = (v0 + 1200);
      v35 = (v0 + 1208);
      v36 = (v0 + 1216);
      v37 = (v0 + 1224);
      v38 = (v0 + 1232);
      v39 = (v0 + 1240);
      v40 = (v0 + 1184);
      v41 = (v0 + 1176);
      v42 = (v0 + 1168);
      v43 = (v0 + 1160);
      v44 = (v0 + 1152);
      v45 = (v0 + 1144);
      goto LABEL_13;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  v114 = *(v0 + 2256);
  v116 = *(v0 + 2264);
  v19 = *(v0 + 2224);
  v111 = v3;
  v112 = *(v0 + 2216);
  queuea = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(66);
  v20._countAndFlagsBits = 0xD00000000000003ELL;
  v20._object = 0x8000000100096910;
  String.append(_:)(v20);
  *(v0 + 2200) = v18;
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 32032;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  sub_10005E11C(queuea, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);

  v23 = *(v112 + *(type metadata accessor for SpamDecisioningAsset(0) + 28));
  v108 = sub_10003F940(v114, v116);
  queue = v8;
  v105 = v18;
  v61 = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v113 = 0;
  v97 = 0;
  v98 = 0;
  v96 = (v0 + 1360);
  v117 = (v0 + 1472);
  v62 = (v0 + 2192);
  v107 = v5;
  v106 = v2;
  while (1)
  {
    v115 = objc_autoreleasePoolPush();
    v63 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
    v64 = swift_task_alloc();
    *(v64 + 16) = v63;
    *(v64 + 24) = 1000;
    *(v64 + 32) = 0;
    *(v64 + 40) = v61;
    *(v64 + 48) = 0;

    sub_100002074(&qword_1000B7A58, &qword_100091810);
    OS_dispatch_queue.sync<A>(execute:)();

    v65 = v62;
    sub_10005D8F4(v108, *v62, v117);

    v66 = *(v0 + 1504);
    if (!v66)
    {
      break;
    }

    v67 = *(v0 + 1480);
    v68 = *(v0 + 1488);
    v69 = *(v0 + 1496);
    v70 = *(v0 + 1512);
    v71 = *(v0 + 1520);
    v72 = *v117;
    if (!v113)
    {
      v101 = *v117;
      v99 = *(v0 + 1496);
      v100 = *(v0 + 1488);
      v113 = *(v0 + 1504);
      v97 = *(v0 + 1520);
      v98 = *(v0 + 1512);
      v73 = v67 | ((*(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32)) << 8);
LABEL_20:
      v102 = v73;
      goto LABEL_21;
    }

    if ((v67 & 1) == 0 && (v102 & 1) == 0)
    {
      v77 = HIDWORD(*v117);
      if (*(&v101 + 1) < *(&v72 + 1))
      {
        v78 = v102;
        v103 = *(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32);
        result = sub_10004D630(v101, v78, v100, v99, v113);
        v101 = v72;
        v99 = v69;
        v100 = v68;
        v113 = v66;
        v97 = v71;
        v98 = v70;
        v73 = v67 | (v103 << 8);
        goto LABEL_20;
      }
    }

    result = sub_10000BC10(v117, &qword_1000B7A80, &qword_100091848);
LABEL_21:
    v74 = v61 + 1000;
    v5 = v107;
    v75 = v106;
    v76 = v111;
    if (__OFADD__(v61, 1000))
    {
      __break(1u);
      goto LABEL_32;
    }

    objc_autoreleasePoolPop(v115);
    v61 += 1000;
    v62 = v65;
    if (v74 >= v105)
    {
      goto LABEL_29;
    }
  }

  v79 = *(v0 + 2240);
  v80 = *(v0 + 2232);
  v81 = *(v0 + 2216);

  v118 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(50);

  sub_10004D808(v81, v79, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v82._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v82);

  v83._countAndFlagsBits = 32032;
  v83._object = 0xE200000000000000;
  String.append(_:)(v83);
  v5 = 0x8000000100096950;
  sub_10005E11C(v118, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);

  _StringGuts.grow(_:)(50);

  sub_10004D808(v81, v79, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v84._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v84);

  v85._countAndFlagsBits = 32032;
  v85._object = 0xE200000000000000;
  String.append(_:)(v85);
  sub_10000B6B0();
  swift_allocError();
  *v86 = 0xD00000000000002ELL;
  *(v86 + 8) = 0x8000000100096950;
  *(v86 + 16) = 12;
  swift_willThrow();
  objc_autoreleasePoolPop(v115);
  sub_10004D630(v101, v102, v100, v99, v113);
  *(v0 + 1408) = 0;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0u;
  *v96 = 0u;
  *(v0 + 1416) = v119;
  *(v0 + 1424) = v120;
  *(v0 + 1432) = v104;
  *(v0 + 1440) = v111;
  *(v0 + 1448) = v106;
  *(v0 + 1450) = *(v0 + 122);
  *(v0 + 1454) = *(v0 + 126);
  *(v0 + 1456) = 0;
  *(v0 + 1464) = *(v0 + 2424);
  sub_10004D588(v96);
  v76 = sub_1000111EC((v107 + 16), *(v107 + 40))[1];
  v87 = swift_allocObject();
  *(v87 + 16) = sub_100011E70;
  *(v87 + 24) = v76;
  *(v0 + 1704) = sub_10004E120;
  *(v0 + 1712) = v87;
  *(v0 + 1672) = _NSConcreteStackBlock;
  *(v0 + 1680) = 1107296256;
  *(v0 + 1688) = sub_100010FA0;
  *(v0 + 1696) = &unk_1000B0318;
  v88 = _Block_copy((v0 + 1672));
  v89 = *(v0 + 1712);
  swift_retain_n();

  dispatch_sync(queue, v88);
  _Block_release(v88);
  v75 = swift_isEscapingClosureAtFileLocation();

  if ((v75 & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_29:

  sub_10004D630(0, 0, 0, 0, 0);
  *(v0 + 2424) = 0;
  *(v0 + 688) = v101;
  *(v0 + 696) = v102;
  *(v0 + 704) = v100;
  *(v0 + 712) = v99;
  *(v0 + 720) = v113;
  *(v0 + 728) = v98;
  *(v0 + 736) = v97;
  *(v0 + 744) = v119;
  *(v0 + 752) = v120;
  *(v0 + 760) = v104;
  *(v0 + 768) = v76;
  *(v0 + 776) = v75;
  *(v0 + 778) = *(v0 + 122);
  *(v0 + 782) = *(v0 + 126);
  *(v0 + 784) = v105;
  v90 = *(v0 + 2424);
  *(v0 + 792) = v90;
  *(v0 + 912) = v101;
  *(v0 + 920) = v102;
  *(v0 + 928) = v100;
  *(v0 + 936) = v99;
  *(v0 + 944) = v113;
  *(v0 + 952) = v98;
  *(v0 + 960) = v97;
  *(v0 + 968) = v119;
  *(v0 + 976) = v120;
  *(v0 + 984) = v104;
  *(v0 + 992) = v76;
  *(v0 + 1000) = v75;
  *(v0 + 1002) = *(v0 + 122);
  *(v0 + 1006) = *(v0 + 126);
  *(v0 + 1008) = v105;
  *(v0 + 1016) = v90;
  v27 = (v0 + 688);
  sub_10004D5D0(v0 + 688, v0 + 576);
  sub_10004D588(v0 + 912);
  v91 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
  v92 = swift_allocObject();
  *(v92 + 16) = sub_100011E70;
  *(v92 + 24) = v91;
  *(v0 + 1848) = sub_10004E120;
  *(v0 + 1856) = v92;
  *(v0 + 1816) = _NSConcreteStackBlock;
  *(v0 + 1824) = 1107296256;
  *(v0 + 1832) = sub_100010FA0;
  *(v0 + 1840) = &unk_1000B0368;
  v93 = _Block_copy((v0 + 1816));
  v94 = *(v0 + 1856);
  swift_retain_n();

  dispatch_sync(queue, v93);
  _Block_release(v93);
  v95 = swift_isEscapingClosureAtFileLocation();

  if (v95)
  {
    goto LABEL_34;
  }

  v45 = (v0 + 696);
  v44 = (v0 + 704);
  v43 = (v0 + 712);
  v42 = (v0 + 720);
  v41 = (v0 + 728);
  v40 = (v0 + 736);
  v33 = (v0 + 744);
  v34 = (v0 + 752);
  v35 = (v0 + 760);
  v36 = (v0 + 768);
  v37 = (v0 + 776);
  v38 = (v0 + 784);
  v39 = (v0 + 792);
LABEL_13:
  v46 = *v38;
  v47 = *v33;
  v48 = *v34;
  v49 = *v35;
  v50 = *v36;
  v51 = *v37;
  v52 = *v45;
  v53 = *v44;
  v54 = *v43;
  v55 = *v42;
  v56 = *v41;
  v57 = *v40;
  v58 = *(v0 + 2248);
  v59 = *(v0 + 2240);
  v60 = *(v0 + 2208);
  v121 = *v39;
  *v60 = *v27;
  *(v60 + 8) = v52;
  *(v60 + 16) = v53;
  *(v60 + 24) = v54;
  *(v60 + 32) = v55;
  *(v60 + 40) = v56;
  *(v60 + 48) = v57;
  *(v60 + 56) = v47;
  *(v60 + 64) = v48;
  *(v60 + 72) = v49;
  *(v60 + 80) = v50;
  *(v60 + 88) = v51;
  *(v60 + 96) = v46;
  *(v60 + 104) = v121;

  v17 = *(v0 + 8);
LABEL_6:

  return v17();
}

uint64_t sub_10003ABB8()
{
  v2 = *(*v1 + 2336);
  v5 = *v1;
  *(*v1 + 2344) = v0;

  if (v0)
  {
    v3 = sub_10003ED48;
  }

  else
  {
    v3 = sub_10003ACCC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003ACCC()
{
  v1 = (v0 + 2184);
  v2 = *(v0 + 2344);
  v3 = *(v0 + 2224);
  v4 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
  v5 = qword_1000B6700;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v2)
  {

    *(v0 + 848) = 0;
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    *(v0 + 800) = 0u;
    *(v0 + 856) = 0xD000000000000048;
    *(v0 + 864) = 0x80000001000969C0;
    *(v0 + 872) = 17;
    *(v0 + 880) = 0;
    *(v0 + 888) = 256;
    *(v0 + 890) = *(v0 + 122);
    *(v0 + 894) = *(v0 + 126);
    *(v0 + 896) = 0;
    *(v0 + 904) = *(v0 + 2424);
    sub_10004D588(v0 + 800);
    v7 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100011E70;
    *(v8 + 24) = v7;
    *(v0 + 1752) = sub_10004E120;
    *(v0 + 1760) = v8;
    *(v0 + 1720) = _NSConcreteStackBlock;
    *(v0 + 1728) = 1107296256;
    *(v0 + 1736) = sub_100010FA0;
    *(v0 + 1744) = &unk_1000B0228;
    v9 = _Block_copy((v0 + 1720));
    v10 = *(v0 + 1760);
    swift_retain_n();

    dispatch_sync(v6, v9);
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_5:
      v13 = *(v0 + 2248);
      v14 = *(v0 + 2240);

      v15 = *(v0 + 8);
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*v1 <= 0)
  {
    v23 = *(v0 + 2224);
    v24 = static os_log_type_t.default.getter();
    sub_10005E11C(v24, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
    *(v0 + 1184) = 0;
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
    *(v0 + 1136) = 0u;
    *(v0 + 1192) = 0xD000000000000048;
    *(v0 + 1200) = 0x80000001000969C0;
    *(v0 + 1208) = xmmword_100091580;
    *(v0 + 1224) = 256;
    *(v0 + 1226) = *(v0 + 122);
    *(v0 + 1230) = *(v0 + 126);
    *(v0 + 1232) = 0;
    v25 = *(v0 + 2424);
    *(v0 + 1240) = v25;
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
    *(v0 + 1056) = 0u;
    *(v0 + 1072) = 0;
    *(v0 + 1080) = 0xD000000000000048;
    *(v0 + 1088) = 0x80000001000969C0;
    *(v0 + 1096) = 17;
    *(v0 + 1104) = 0;
    *(v0 + 1112) = 256;
    *(v0 + 1114) = *(v0 + 122);
    *(v0 + 1118) = *(v0 + 126);
    *(v0 + 1120) = 0;
    *(v0 + 1128) = v25;
    v26 = (v0 + 1136);
    sub_10004D5D0(v0 + 1136, v0 + 1248);
    sub_10004D588(v0 + 1024);
    v27 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
    v28 = swift_allocObject();
    *(v28 + 16) = sub_100011E70;
    *(v28 + 24) = v27;
    *(v0 + 1656) = sub_10004E120;
    *(v0 + 1664) = v28;
    *(v0 + 1624) = _NSConcreteStackBlock;
    *(v0 + 1632) = 1107296256;
    *(v0 + 1640) = sub_100010FA0;
    *(v0 + 1648) = &unk_1000B0278;
    v29 = _Block_copy((v0 + 1624));
    v30 = *(v0 + 1664);
    swift_retain_n();

    dispatch_sync(v6, v29);
    _Block_release(v29);
    v31 = swift_isEscapingClosureAtFileLocation();

    if ((v31 & 1) == 0)
    {
      v32 = (v0 + 1192);
      v33 = (v0 + 1200);
      v34 = (v0 + 1240);
      v35 = (v0 + 1208);
      v36 = (v0 + 1224);
      v37 = (v0 + 1232);
      v38 = (v0 + 1216);
      v39 = (v0 + 1184);
      v40 = (v0 + 1176);
      v41 = (v0 + 1168);
      v42 = (v0 + 1160);
      v43 = (v0 + 1152);
      v44 = (v0 + 1144);
      goto LABEL_13;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  v107 = *(v0 + 2256);
  v109 = *(v0 + 2264);
  v16 = *(v0 + 2224);
  v105 = *(v0 + 2216);
  v17 = *v1;
  v18 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(66);
  v19._countAndFlagsBits = 0xD00000000000003ELL;
  v19._object = 0x8000000100096910;
  String.append(_:)(v19);
  v104 = v17;
  *(v0 + 2200) = v17;
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 32032;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  sub_10005E11C(v18, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);

  v22 = *(v105 + *(type metadata accessor for SpamDecisioningAsset(0) + 28));
  v102 = sub_10003F940(v107, v109);
  queue = v6;
  v61 = 0;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v106 = 0;
  v94 = 0;
  v95 = 0;
  v93 = (v0 + 1360);
  v110 = (v0 + 1472);
  v62 = (v0 + 2192);
  v101 = v3;
  while (1)
  {
    v108 = objc_autoreleasePoolPush();
    v63 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
    v64 = swift_task_alloc();
    *(v64 + 16) = v63;
    *(v64 + 24) = 1000;
    *(v64 + 32) = 0;
    *(v64 + 40) = v61;
    *(v64 + 48) = 0;

    sub_100002074(&qword_1000B7A58, &qword_100091810);
    OS_dispatch_queue.sync<A>(execute:)();

    v65 = v62;
    sub_10005D8F4(v102, *v62, v110);

    v66 = *(v0 + 1504);
    if (!v66)
    {
      break;
    }

    v67 = *(v0 + 1480);
    v68 = *(v0 + 1488);
    v69 = *(v0 + 1496);
    v70 = *(v0 + 1512);
    v71 = *(v0 + 1520);
    v72 = *v110;
    if (!v106)
    {
      v97 = *(v0 + 1488);
      v98 = *v110;
      v96 = *(v0 + 1496);
      v106 = *(v0 + 1504);
      v94 = *(v0 + 1520);
      v95 = *(v0 + 1512);
      v73 = v67 | ((*(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32)) << 8);
LABEL_20:
      v99 = v73;
      goto LABEL_21;
    }

    if ((v67 & 1) == 0 && (v99 & 1) == 0)
    {
      v76 = HIDWORD(*v110);
      if (*(&v98 + 1) < *(&v72 + 1))
      {
        v77 = v99;
        v100 = *(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32);
        result = sub_10004D630(v98, v77, v97, v96, v106);
        v97 = v68;
        v98 = v72;
        v96 = v69;
        v106 = v66;
        v94 = v71;
        v95 = v70;
        v73 = v67 | (v100 << 8);
        goto LABEL_20;
      }
    }

    result = sub_10000BC10(v110, &qword_1000B7A80, &qword_100091848);
LABEL_21:
    v74 = v61 + 1000;
    v3 = v101;
    v75 = 0xD000000000000048;
    if (__OFADD__(v61, 1000))
    {
      __break(1u);
      goto LABEL_32;
    }

    objc_autoreleasePoolPop(v108);
    v61 += 1000;
    v62 = v65;
    if (v74 >= v104)
    {
      goto LABEL_29;
    }
  }

  v78 = *(v0 + 2240);
  v104 = *(v0 + 2232);
  v79 = *(v0 + 2216);

  v111 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(50);

  sub_10004D808(v79, v78, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v80._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v80);

  v81._countAndFlagsBits = 32032;
  v81._object = 0xE200000000000000;
  String.append(_:)(v81);
  v3 = 0x8000000100096950;
  sub_10005E11C(v111, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);

  _StringGuts.grow(_:)(50);

  sub_10004D808(v79, v78, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v82._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v82);

  v83._countAndFlagsBits = 32032;
  v83._object = 0xE200000000000000;
  String.append(_:)(v83);
  sub_10000B6B0();
  swift_allocError();
  *v84 = 0xD00000000000002ELL;
  *(v84 + 8) = 0x8000000100096950;
  *(v84 + 16) = 12;
  swift_willThrow();
  objc_autoreleasePoolPop(v108);
  sub_10004D630(v98, v99, v97, v96, v106);
  *(v0 + 1408) = 0;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0u;
  *v93 = 0u;
  *(v0 + 1416) = 0xD000000000000048;
  *(v0 + 1424) = 0x80000001000969C0;
  *(v0 + 1432) = 17;
  *(v0 + 1440) = 0;
  *(v0 + 1448) = 256;
  *(v0 + 1450) = *(v0 + 122);
  *(v0 + 1454) = *(v0 + 126);
  *(v0 + 1456) = 0;
  *(v0 + 1464) = *(v0 + 2424);
  sub_10004D588(v93);
  v85 = sub_1000111EC((v101 + 16), *(v101 + 40))[1];
  v86 = swift_allocObject();
  *(v86 + 16) = sub_100011E70;
  *(v86 + 24) = v85;
  *(v0 + 1704) = sub_10004E120;
  *(v0 + 1712) = v86;
  *(v0 + 1672) = _NSConcreteStackBlock;
  *(v0 + 1680) = 1107296256;
  *(v0 + 1688) = sub_100010FA0;
  *(v0 + 1696) = &unk_1000B0318;
  v75 = _Block_copy((v0 + 1672));
  v87 = *(v0 + 1712);
  swift_retain_n();

  dispatch_sync(queue, v75);
  _Block_release(v75);
  LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

  if ((v79 & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_29:

  sub_10004D630(0, 0, 0, 0, 0);
  *(v0 + 2424) = 0;
  *(v0 + 688) = v98;
  *(v0 + 696) = v99;
  *(v0 + 704) = v97;
  *(v0 + 712) = v96;
  *(v0 + 720) = v106;
  *(v0 + 728) = v95;
  *(v0 + 736) = v94;
  *(v0 + 744) = v75;
  *(v0 + 752) = 0x80000001000969C0;
  v35 = (v0 + 760);
  *(v0 + 760) = xmmword_100091580;
  v34 = (v0 + 792);
  *(v0 + 776) = 256;
  *(v0 + 778) = *(v0 + 122);
  *(v0 + 782) = *(v0 + 126);
  *(v0 + 784) = v104;
  v88 = *(v0 + 2424);
  *(v0 + 792) = v88;
  *(v0 + 912) = v98;
  *(v0 + 920) = v99;
  *(v0 + 928) = v97;
  *(v0 + 936) = v96;
  *(v0 + 944) = v106;
  *(v0 + 952) = v95;
  *(v0 + 960) = v94;
  *(v0 + 968) = 0xD000000000000048;
  *(v0 + 976) = 0x80000001000969C0;
  *(v0 + 984) = 17;
  *(v0 + 992) = 0;
  *(v0 + 1000) = 256;
  *(v0 + 1002) = *(v0 + 122);
  *(v0 + 1006) = *(v0 + 126);
  *(v0 + 1008) = v104;
  *(v0 + 1016) = v88;
  v26 = (v0 + 688);
  sub_10004D5D0(v0 + 688, v0 + 576);
  sub_10004D588(v0 + 912);
  v89 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
  v90 = swift_allocObject();
  *(v90 + 16) = sub_100011E70;
  *(v90 + 24) = v89;
  *(v0 + 1848) = sub_10004E120;
  *(v0 + 1856) = v90;
  *(v0 + 1816) = _NSConcreteStackBlock;
  *(v0 + 1824) = 1107296256;
  *(v0 + 1832) = sub_100010FA0;
  *(v0 + 1840) = &unk_1000B0368;
  v91 = _Block_copy((v0 + 1816));
  v92 = *(v0 + 1856);
  swift_retain_n();

  dispatch_sync(queue, v91);
  _Block_release(v91);
  LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

  if (v92)
  {
    goto LABEL_34;
  }

  v44 = (v0 + 696);
  v43 = (v0 + 704);
  v42 = (v0 + 712);
  v41 = (v0 + 720);
  v40 = (v0 + 728);
  v39 = (v0 + 736);
  v32 = (v0 + 744);
  v33 = (v0 + 752);
  v38 = (v0 + 768);
  v36 = (v0 + 776);
  v37 = (v0 + 784);
LABEL_13:
  v45 = *v37;
  v47 = *v32;
  v48 = *v33;
  v49 = *v35;
  v50 = *v38;
  v51 = *v36;
  v52 = *v44;
  v53 = *v43;
  v54 = *v42;
  v55 = *v41;
  v56 = *v40;
  v57 = *v39;
  v58 = *(v0 + 2248);
  v59 = *(v0 + 2240);
  v60 = *(v0 + 2208);
  v46 = *v34;
  *v60 = *v26;
  *(v60 + 8) = v52;
  *(v60 + 16) = v53;
  *(v60 + 24) = v54;
  *(v60 + 32) = v55;
  *(v60 + 40) = v56;
  *(v60 + 48) = v57;
  *(v60 + 56) = v47;
  *(v60 + 64) = v48;
  *(v60 + 72) = v49;
  *(v60 + 80) = v50;
  *(v60 + 88) = v51;
  *(v60 + 96) = v45;
  *(v60 + 104) = v46;

  v15 = *(v0 + 8);
LABEL_6:

  return v15();
}

uint64_t sub_10003BCC0()
{
  v2 = *(*v1 + 2376);
  v5 = *v1;
  *(*v1 + 2384) = v0;

  if (v0)
  {
    v3 = sub_10003F4CC;
  }

  else
  {
    v3 = sub_10003BDD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003BDD4()
{
  v1 = (v0 + 2184);
  v2 = *(v0 + 2352);

  v3 = *(v0 + 2384);
  v4 = *(v0 + 2368);
  v5 = *(v0 + 2360);
  v6 = *(v0 + 2224);
  v7 = sub_1000111EC((v6 + 16), *(v6 + 40))[1];
  v8 = qword_1000B6700;

  if (v8 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v9 = qword_1000B89E0;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v3)
    {

      *(v0 + 848) = 0;
      *(v0 + 816) = 0u;
      *(v0 + 832) = 0u;
      *(v0 + 800) = 0u;
      *(v0 + 856) = v5;
      *(v0 + 864) = v4;
      *(v0 + 872) = 9;
      *(v0 + 880) = 0;
      *(v0 + 888) = 256;
      *(v0 + 890) = *(v0 + 122);
      *(v0 + 894) = *(v0 + 126);
      *(v0 + 896) = 0;
      *(v0 + 904) = *(v0 + 2424);
      sub_10004D588(v0 + 800);
      v10 = sub_1000111EC((v6 + 16), *(v6 + 40))[1];
      v11 = swift_allocObject();
      *(v11 + 16) = sub_100011E70;
      *(v11 + 24) = v10;
      *(v0 + 1752) = sub_10004E120;
      *(v0 + 1760) = v11;
      *(v0 + 1720) = _NSConcreteStackBlock;
      *(v0 + 1728) = 1107296256;
      *(v0 + 1736) = sub_100010FA0;
      *(v0 + 1744) = &unk_1000B0228;
      v12 = _Block_copy((v0 + 1720));
      v13 = *(v0 + 1760);
      swift_retain_n();

      dispatch_sync(v9, v12);
      _Block_release(v12);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_4:
        v16 = *(v0 + 2248);
        v17 = *(v0 + 2240);

        v18 = *(v0 + 8);
LABEL_5:

        return v18();
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v102 = v4;

    if (*v1 <= 0)
    {
      break;
    }

    v107 = v5;
    v111 = *(v0 + 2256);
    v113 = *(v0 + 2264);
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *v1;
    v22 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(66);
    v23._countAndFlagsBits = 0xD00000000000003ELL;
    v23._object = 0x8000000100096910;
    String.append(_:)(v23);
    v106 = v21;
    *(v0 + 2200) = v21;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v22, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);

    v26 = *(v20 + *(type metadata accessor for SpamDecisioningAsset(0) + 28));
    v104 = sub_10003F940(v111, v113);
    queue = v9;
    v65 = 0;
    v109 = 0;
    v100 = 0;
    v101 = 0;
    v99 = 0;
    v108 = 0;
    v97 = 0;
    v98 = 0;
    v96 = (v0 + 1360);
    v114 = (v0 + 1472);
    v66 = (v0 + 2192);
    v103 = v6;
    while (1)
    {
      v112 = objc_autoreleasePoolPush();
      v67 = sub_1000111EC((v6 + 16), *(v6 + 40))[1];
      v68 = swift_task_alloc();
      *(v68 + 16) = v67;
      *(v68 + 24) = 1000;
      *(v68 + 32) = 0;
      *(v68 + 40) = v65;
      *(v68 + 48) = 0;

      sub_100002074(&qword_1000B7A58, &qword_100091810);
      OS_dispatch_queue.sync<A>(execute:)();

      v69 = v66;
      sub_10005D8F4(v104, *v66, v114);

      v70 = *(v0 + 1504);
      if (!v70)
      {
        break;
      }

      v71 = *(v0 + 1480);
      v72 = *(v0 + 1488);
      v73 = *(v0 + 1496);
      v74 = *(v0 + 1512);
      v75 = *(v0 + 1520);
      v76 = *v114;
      if (!v108)
      {
        v79 = *v114;
        v99 = *(v0 + 1496);
        v100 = *(v0 + 1488);
        v108 = *(v0 + 1504);
        v97 = *(v0 + 1520);
        v98 = *(v0 + 1512);
        v80 = v71 | ((*(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32)) << 8);
        goto LABEL_21;
      }

      if ((v71 & 1) == 0 && (v101 & 1) == 0)
      {
        v77 = v109;
        v78 = HIDWORD(*v114);
        if (*(&v109 + 1) < *(&v76 + 1))
        {
          v110 = *(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32);
          result = sub_10004D630(v77, v101, v100, v99, v108);
          v79 = v76;
          v99 = v73;
          v100 = v72;
          v108 = v70;
          v97 = v75;
          v98 = v74;
          v80 = v71 | (v110 << 8);
LABEL_21:
          v101 = v80;
          goto LABEL_22;
        }
      }

      result = sub_10000BC10(v114, &qword_1000B7A80, &qword_100091848);
      v79 = v109;
LABEL_22:
      v81 = v65 + 1000;
      v6 = v103;
      if (__OFADD__(v65, 1000))
      {
        __break(1u);
        goto LABEL_30;
      }

      v109 = v79;
      objc_autoreleasePoolPop(v112);
      v65 += 1000;
      v66 = v69;
      if (v81 >= v106)
      {

        sub_10004D630(0, 0, 0, 0, 0);
        *(v0 + 2424) = 0;
        *(v0 + 688) = v109;
        *(v0 + 696) = v101;
        *(v0 + 704) = v100;
        *(v0 + 712) = v99;
        *(v0 + 720) = v108;
        *(v0 + 728) = v98;
        v39 = (v0 + 760);
        *(v0 + 736) = v97;
        *(v0 + 744) = v107;
        *(v0 + 752) = v102;
        *(v0 + 760) = xmmword_100091590;
        v38 = (v0 + 792);
        *(v0 + 776) = 256;
        *(v0 + 778) = *(v0 + 122);
        *(v0 + 782) = *(v0 + 126);
        *(v0 + 784) = v106;
        v82 = *(v0 + 2424);
        *(v0 + 792) = v82;
        *(v0 + 912) = v109;
        *(v0 + 920) = v101;
        *(v0 + 928) = v100;
        *(v0 + 936) = v99;
        *(v0 + 944) = v108;
        *(v0 + 952) = v98;
        *(v0 + 960) = v97;
        *(v0 + 968) = v107;
        *(v0 + 976) = v102;
        *(v0 + 984) = 9;
        *(v0 + 992) = 0;
        *(v0 + 1000) = 256;
        *(v0 + 1002) = *(v0 + 122);
        *(v0 + 1006) = *(v0 + 126);
        *(v0 + 1008) = v106;
        *(v0 + 1016) = v82;
        v30 = (v0 + 688);
        sub_10004D5D0(v0 + 688, v0 + 576);
        sub_10004D588(v0 + 912);
        v83 = sub_1000111EC((v103 + 16), *(v103 + 40))[1];
        v84 = swift_allocObject();
        *(v84 + 16) = sub_100011E70;
        *(v84 + 24) = v83;
        *(v0 + 1848) = sub_10004E120;
        *(v0 + 1856) = v84;
        *(v0 + 1816) = _NSConcreteStackBlock;
        *(v0 + 1824) = 1107296256;
        *(v0 + 1832) = sub_100010FA0;
        *(v0 + 1840) = &unk_1000B0368;
        v85 = _Block_copy((v0 + 1816));
        v86 = *(v0 + 1856);
        swift_retain_n();

        dispatch_sync(queue, v85);
        _Block_release(v85);
        LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

        if (v85)
        {
          goto LABEL_32;
        }

        v48 = (v0 + 696);
        v47 = (v0 + 704);
        v46 = (v0 + 712);
        v45 = (v0 + 720);
        v44 = (v0 + 728);
        v43 = (v0 + 736);
        v36 = (v0 + 744);
        v37 = (v0 + 752);
        v42 = (v0 + 768);
        v40 = (v0 + 776);
        v41 = (v0 + 784);
        goto LABEL_12;
      }
    }

    v87 = *(v0 + 2240);
    v88 = *(v0 + 2232);
    v89 = *(v0 + 2216);

    v115 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(50);

    sub_10004D808(v89, v87, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v90._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v90);

    v91._countAndFlagsBits = 32032;
    v91._object = 0xE200000000000000;
    String.append(_:)(v91);
    v6 = 0x8000000100096950;
    sub_10005E11C(v115, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);

    _StringGuts.grow(_:)(50);

    sub_10004D808(v89, v87, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v92._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v92);

    v93._countAndFlagsBits = 32032;
    v93._object = 0xE200000000000000;
    String.append(_:)(v93);
    sub_10000B6B0();
    swift_allocError();
    *v94 = 0xD00000000000002ELL;
    *(v94 + 8) = 0x8000000100096950;
    *(v94 + 16) = 12;
    swift_willThrow();
    objc_autoreleasePoolPop(v112);
    sub_10004D630(v109, v101, v100, v99, v108);
    *(v0 + 1408) = 0;
    *(v0 + 1376) = 0u;
    *(v0 + 1392) = 0u;
    *v96 = 0u;
    *(v0 + 1416) = v107;
    *(v0 + 1424) = v102;
    *(v0 + 1432) = 9;
    *(v0 + 1440) = 0;
    *(v0 + 1448) = 256;
    *(v0 + 1450) = *(v0 + 122);
    *(v0 + 1454) = *(v0 + 126);
    *(v0 + 1456) = 0;
    *(v0 + 1464) = *(v0 + 2424);
    sub_10004D588(v96);
    v3 = sub_1000111EC((v103 + 16), *(v103 + 40))[1];
    v1 = swift_allocObject();
    v1[2] = sub_100011E70;
    v1[3] = v3;
    *(v0 + 1704) = sub_10004E120;
    *(v0 + 1712) = v1;
    *(v0 + 1672) = _NSConcreteStackBlock;
    *(v0 + 1680) = 1107296256;
    *(v0 + 1688) = sub_100010FA0;
    *(v0 + 1696) = &unk_1000B0318;
    v95 = _Block_copy((v0 + 1672));
    v5 = *(v0 + 1712);
    swift_retain_n();

    dispatch_sync(queue, v95);
    _Block_release(v95);
    v4 = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v27 = *(v0 + 2224);
  v28 = static os_log_type_t.default.getter();
  sub_10005E11C(v28, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
  *(v0 + 1184) = 0;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0u;
  *(v0 + 1136) = 0u;
  *(v0 + 1192) = v5;
  *(v0 + 1200) = v4;
  *(v0 + 1208) = xmmword_100091590;
  *(v0 + 1224) = 256;
  *(v0 + 1226) = *(v0 + 122);
  *(v0 + 1230) = *(v0 + 126);
  *(v0 + 1232) = 0;
  v29 = *(v0 + 2424);
  *(v0 + 1240) = v29;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1072) = 0;
  *(v0 + 1080) = v5;
  *(v0 + 1088) = v4;
  *(v0 + 1096) = 9;
  *(v0 + 1104) = 0;
  *(v0 + 1112) = 256;
  *(v0 + 1114) = *(v0 + 122);
  *(v0 + 1118) = *(v0 + 126);
  *(v0 + 1120) = 0;
  *(v0 + 1128) = v29;
  v30 = (v0 + 1136);
  sub_10004D5D0(v0 + 1136, v0 + 1248);
  sub_10004D588(v0 + 1024);
  v31 = sub_1000111EC((v6 + 16), *(v6 + 40))[1];
  v32 = swift_allocObject();
  *(v32 + 16) = sub_100011E70;
  *(v32 + 24) = v31;
  *(v0 + 1656) = sub_10004E120;
  *(v0 + 1664) = v32;
  *(v0 + 1624) = _NSConcreteStackBlock;
  *(v0 + 1632) = 1107296256;
  *(v0 + 1640) = sub_100010FA0;
  *(v0 + 1648) = &unk_1000B0278;
  v33 = _Block_copy((v0 + 1624));
  v34 = *(v0 + 1664);
  swift_retain_n();

  dispatch_sync(v9, v33);
  _Block_release(v33);
  v35 = swift_isEscapingClosureAtFileLocation();

  if ((v35 & 1) == 0)
  {
    v36 = (v0 + 1192);
    v37 = (v0 + 1200);
    v38 = (v0 + 1240);
    v39 = (v0 + 1208);
    v40 = (v0 + 1224);
    v41 = (v0 + 1232);
    v42 = (v0 + 1216);
    v43 = (v0 + 1184);
    v44 = (v0 + 1176);
    v45 = (v0 + 1168);
    v46 = (v0 + 1160);
    v47 = (v0 + 1152);
    v48 = (v0 + 1144);
LABEL_12:
    v49 = *v41;
    v51 = *v36;
    v52 = *v37;
    v53 = *v39;
    v54 = *v42;
    v55 = *v40;
    v56 = *v48;
    v57 = *v47;
    v58 = *v46;
    v59 = *v45;
    v60 = *v44;
    v61 = *v43;
    v62 = *(v0 + 2248);
    v63 = *(v0 + 2240);
    v64 = *(v0 + 2208);
    v50 = *v38;
    *v64 = *v30;
    *(v64 + 8) = v56;
    *(v64 + 16) = v57;
    *(v64 + 24) = v58;
    *(v64 + 32) = v59;
    *(v64 + 40) = v60;
    *(v64 + 48) = v61;
    *(v64 + 56) = v51;
    *(v64 + 64) = v52;
    *(v64 + 72) = v53;
    *(v64 + 80) = v54;
    *(v64 + 88) = v55;
    *(v64 + 96) = v49;
    *(v64 + 104) = v50;

    v18 = *(v0 + 8);
    goto LABEL_5;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10003CD94()
{
  v2 = *(*v1 + 2408);
  v5 = *v1;
  *(*v1 + 2416) = v0;

  if (v0)
  {
    v3 = sub_10003F708;
  }

  else
  {
    v3 = sub_10003CEA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003CEA8()
{
  v1 = (v0 + 2184);
  v2 = *(v0 + 2352);

  v3 = *(v0 + 2416);
  v4 = *(v0 + 2400);
  v5 = *(v0 + 2392);
  v6 = *(v0 + 2224);
  v7 = sub_1000111EC((v6 + 16), *(v6 + 40))[1];
  v8 = qword_1000B6700;

  if (v8 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v9 = qword_1000B89E0;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v3)
    {

      *(v0 + 848) = 0;
      *(v0 + 816) = 0u;
      *(v0 + 832) = 0u;
      *(v0 + 800) = 0u;
      *(v0 + 856) = v5;
      *(v0 + 864) = v4;
      *(v0 + 872) = 3;
      *(v0 + 880) = 0;
      *(v0 + 888) = 256;
      *(v0 + 890) = *(v0 + 122);
      *(v0 + 894) = *(v0 + 126);
      *(v0 + 896) = 0;
      *(v0 + 904) = *(v0 + 2424);
      sub_10004D588(v0 + 800);
      v10 = sub_1000111EC((v6 + 16), *(v6 + 40))[1];
      v11 = swift_allocObject();
      *(v11 + 16) = sub_100011E70;
      *(v11 + 24) = v10;
      *(v0 + 1752) = sub_10004E120;
      *(v0 + 1760) = v11;
      *(v0 + 1720) = _NSConcreteStackBlock;
      *(v0 + 1728) = 1107296256;
      *(v0 + 1736) = sub_100010FA0;
      *(v0 + 1744) = &unk_1000B0228;
      v12 = _Block_copy((v0 + 1720));
      v13 = *(v0 + 1760);
      swift_retain_n();

      dispatch_sync(v9, v12);
      _Block_release(v12);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_4:
        v16 = *(v0 + 2248);
        v17 = *(v0 + 2240);

        v18 = *(v0 + 8);
LABEL_5:

        return v18();
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v102 = v4;

    if (*v1 <= 0)
    {
      break;
    }

    v107 = v5;
    v111 = *(v0 + 2256);
    v113 = *(v0 + 2264);
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *v1;
    v22 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(66);
    v23._countAndFlagsBits = 0xD00000000000003ELL;
    v23._object = 0x8000000100096910;
    String.append(_:)(v23);
    v106 = v21;
    *(v0 + 2200) = v21;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v22, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);

    v26 = *(v20 + *(type metadata accessor for SpamDecisioningAsset(0) + 28));
    v104 = sub_10003F940(v111, v113);
    queue = v9;
    v65 = 0;
    v109 = 0;
    v100 = 0;
    v101 = 0;
    v99 = 0;
    v108 = 0;
    v97 = 0;
    v98 = 0;
    v96 = (v0 + 1360);
    v114 = (v0 + 1472);
    v66 = (v0 + 2192);
    v103 = v6;
    while (1)
    {
      v112 = objc_autoreleasePoolPush();
      v67 = sub_1000111EC((v6 + 16), *(v6 + 40))[1];
      v68 = swift_task_alloc();
      *(v68 + 16) = v67;
      *(v68 + 24) = 1000;
      *(v68 + 32) = 0;
      *(v68 + 40) = v65;
      *(v68 + 48) = 0;

      sub_100002074(&qword_1000B7A58, &qword_100091810);
      OS_dispatch_queue.sync<A>(execute:)();

      v69 = v66;
      sub_10005D8F4(v104, *v66, v114);

      v70 = *(v0 + 1504);
      if (!v70)
      {
        break;
      }

      v71 = *(v0 + 1480);
      v72 = *(v0 + 1488);
      v73 = *(v0 + 1496);
      v74 = *(v0 + 1512);
      v75 = *(v0 + 1520);
      v76 = *v114;
      if (!v108)
      {
        v79 = *v114;
        v99 = *(v0 + 1496);
        v100 = *(v0 + 1488);
        v108 = *(v0 + 1504);
        v97 = *(v0 + 1520);
        v98 = *(v0 + 1512);
        v80 = v71 | ((*(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32)) << 8);
        goto LABEL_21;
      }

      if ((v71 & 1) == 0 && (v101 & 1) == 0)
      {
        v77 = v109;
        v78 = HIDWORD(*v114);
        if (*(&v109 + 1) < *(&v76 + 1))
        {
          v110 = *(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32);
          result = sub_10004D630(v77, v101, v100, v99, v108);
          v79 = v76;
          v99 = v73;
          v100 = v72;
          v108 = v70;
          v97 = v75;
          v98 = v74;
          v80 = v71 | (v110 << 8);
LABEL_21:
          v101 = v80;
          goto LABEL_22;
        }
      }

      result = sub_10000BC10(v114, &qword_1000B7A80, &qword_100091848);
      v79 = v109;
LABEL_22:
      v81 = v65 + 1000;
      v6 = v103;
      if (__OFADD__(v65, 1000))
      {
        __break(1u);
        goto LABEL_30;
      }

      v109 = v79;
      objc_autoreleasePoolPop(v112);
      v65 += 1000;
      v66 = v69;
      if (v81 >= v106)
      {

        sub_10004D630(0, 0, 0, 0, 0);
        *(v0 + 2424) = 0;
        *(v0 + 688) = v109;
        *(v0 + 696) = v101;
        *(v0 + 704) = v100;
        *(v0 + 712) = v99;
        *(v0 + 720) = v108;
        *(v0 + 728) = v98;
        v39 = (v0 + 760);
        *(v0 + 736) = v97;
        *(v0 + 744) = v107;
        *(v0 + 752) = v102;
        *(v0 + 760) = xmmword_1000915A0;
        v38 = (v0 + 792);
        *(v0 + 776) = 256;
        *(v0 + 778) = *(v0 + 122);
        *(v0 + 782) = *(v0 + 126);
        *(v0 + 784) = v106;
        v82 = *(v0 + 2424);
        *(v0 + 792) = v82;
        *(v0 + 912) = v109;
        *(v0 + 920) = v101;
        *(v0 + 928) = v100;
        *(v0 + 936) = v99;
        *(v0 + 944) = v108;
        *(v0 + 952) = v98;
        *(v0 + 960) = v97;
        *(v0 + 968) = v107;
        *(v0 + 976) = v102;
        *(v0 + 984) = 3;
        *(v0 + 992) = 0;
        *(v0 + 1000) = 256;
        *(v0 + 1002) = *(v0 + 122);
        *(v0 + 1006) = *(v0 + 126);
        *(v0 + 1008) = v106;
        *(v0 + 1016) = v82;
        v30 = (v0 + 688);
        sub_10004D5D0(v0 + 688, v0 + 576);
        sub_10004D588(v0 + 912);
        v83 = sub_1000111EC((v103 + 16), *(v103 + 40))[1];
        v84 = swift_allocObject();
        *(v84 + 16) = sub_100011E70;
        *(v84 + 24) = v83;
        *(v0 + 1848) = sub_10004E120;
        *(v0 + 1856) = v84;
        *(v0 + 1816) = _NSConcreteStackBlock;
        *(v0 + 1824) = 1107296256;
        *(v0 + 1832) = sub_100010FA0;
        *(v0 + 1840) = &unk_1000B0368;
        v85 = _Block_copy((v0 + 1816));
        v86 = *(v0 + 1856);
        swift_retain_n();

        dispatch_sync(queue, v85);
        _Block_release(v85);
        LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

        if (v85)
        {
          goto LABEL_32;
        }

        v48 = (v0 + 696);
        v47 = (v0 + 704);
        v46 = (v0 + 712);
        v45 = (v0 + 720);
        v44 = (v0 + 728);
        v43 = (v0 + 736);
        v36 = (v0 + 744);
        v37 = (v0 + 752);
        v42 = (v0 + 768);
        v40 = (v0 + 776);
        v41 = (v0 + 784);
        goto LABEL_12;
      }
    }

    v87 = *(v0 + 2240);
    v88 = *(v0 + 2232);
    v89 = *(v0 + 2216);

    v115 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(50);

    sub_10004D808(v89, v87, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v90._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v90);

    v91._countAndFlagsBits = 32032;
    v91._object = 0xE200000000000000;
    String.append(_:)(v91);
    v6 = 0x8000000100096950;
    sub_10005E11C(v115, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);

    _StringGuts.grow(_:)(50);

    sub_10004D808(v89, v87, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v92._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v92);

    v93._countAndFlagsBits = 32032;
    v93._object = 0xE200000000000000;
    String.append(_:)(v93);
    sub_10000B6B0();
    swift_allocError();
    *v94 = 0xD00000000000002ELL;
    *(v94 + 8) = 0x8000000100096950;
    *(v94 + 16) = 12;
    swift_willThrow();
    objc_autoreleasePoolPop(v112);
    sub_10004D630(v109, v101, v100, v99, v108);
    *(v0 + 1408) = 0;
    *(v0 + 1376) = 0u;
    *(v0 + 1392) = 0u;
    *v96 = 0u;
    *(v0 + 1416) = v107;
    *(v0 + 1424) = v102;
    *(v0 + 1432) = 3;
    *(v0 + 1440) = 0;
    *(v0 + 1448) = 256;
    *(v0 + 1450) = *(v0 + 122);
    *(v0 + 1454) = *(v0 + 126);
    *(v0 + 1456) = 0;
    *(v0 + 1464) = *(v0 + 2424);
    sub_10004D588(v96);
    v3 = sub_1000111EC((v103 + 16), *(v103 + 40))[1];
    v1 = swift_allocObject();
    v1[2] = sub_100011E70;
    v1[3] = v3;
    *(v0 + 1704) = sub_10004E120;
    *(v0 + 1712) = v1;
    *(v0 + 1672) = _NSConcreteStackBlock;
    *(v0 + 1680) = 1107296256;
    *(v0 + 1688) = sub_100010FA0;
    *(v0 + 1696) = &unk_1000B0318;
    v95 = _Block_copy((v0 + 1672));
    v5 = *(v0 + 1712);
    swift_retain_n();

    dispatch_sync(queue, v95);
    _Block_release(v95);
    v4 = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v27 = *(v0 + 2224);
  v28 = static os_log_type_t.default.getter();
  sub_10005E11C(v28, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
  *(v0 + 1184) = 0;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0u;
  *(v0 + 1136) = 0u;
  *(v0 + 1192) = v5;
  *(v0 + 1200) = v4;
  *(v0 + 1208) = xmmword_1000915A0;
  *(v0 + 1224) = 256;
  *(v0 + 1226) = *(v0 + 122);
  *(v0 + 1230) = *(v0 + 126);
  *(v0 + 1232) = 0;
  v29 = *(v0 + 2424);
  *(v0 + 1240) = v29;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1072) = 0;
  *(v0 + 1080) = v5;
  *(v0 + 1088) = v4;
  *(v0 + 1096) = 3;
  *(v0 + 1104) = 0;
  *(v0 + 1112) = 256;
  *(v0 + 1114) = *(v0 + 122);
  *(v0 + 1118) = *(v0 + 126);
  *(v0 + 1120) = 0;
  *(v0 + 1128) = v29;
  v30 = (v0 + 1136);
  sub_10004D5D0(v0 + 1136, v0 + 1248);
  sub_10004D588(v0 + 1024);
  v31 = sub_1000111EC((v6 + 16), *(v6 + 40))[1];
  v32 = swift_allocObject();
  *(v32 + 16) = sub_100011E70;
  *(v32 + 24) = v31;
  *(v0 + 1656) = sub_10004E120;
  *(v0 + 1664) = v32;
  *(v0 + 1624) = _NSConcreteStackBlock;
  *(v0 + 1632) = 1107296256;
  *(v0 + 1640) = sub_100010FA0;
  *(v0 + 1648) = &unk_1000B0278;
  v33 = _Block_copy((v0 + 1624));
  v34 = *(v0 + 1664);
  swift_retain_n();

  dispatch_sync(v9, v33);
  _Block_release(v33);
  v35 = swift_isEscapingClosureAtFileLocation();

  if ((v35 & 1) == 0)
  {
    v36 = (v0 + 1192);
    v37 = (v0 + 1200);
    v38 = (v0 + 1240);
    v39 = (v0 + 1208);
    v40 = (v0 + 1224);
    v41 = (v0 + 1232);
    v42 = (v0 + 1216);
    v43 = (v0 + 1184);
    v44 = (v0 + 1176);
    v45 = (v0 + 1168);
    v46 = (v0 + 1160);
    v47 = (v0 + 1152);
    v48 = (v0 + 1144);
LABEL_12:
    v49 = *v41;
    v51 = *v36;
    v52 = *v37;
    v53 = *v39;
    v54 = *v42;
    v55 = *v40;
    v56 = *v48;
    v57 = *v47;
    v58 = *v46;
    v59 = *v45;
    v60 = *v44;
    v61 = *v43;
    v62 = *(v0 + 2248);
    v63 = *(v0 + 2240);
    v64 = *(v0 + 2208);
    v50 = *v38;
    *v64 = *v30;
    *(v64 + 8) = v56;
    *(v64 + 16) = v57;
    *(v64 + 24) = v58;
    *(v64 + 32) = v59;
    *(v64 + 40) = v60;
    *(v64 + 48) = v61;
    *(v64 + 56) = v51;
    *(v64 + 64) = v52;
    *(v64 + 72) = v53;
    *(v64 + 80) = v54;
    *(v64 + 88) = v55;
    *(v64 + 96) = v49;
    *(v64 + 104) = v50;

    v18 = *(v0 + 8);
    goto LABEL_5;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10003DE68()
{
  sub_100003558((v0 + 2000));
  v1 = *(v0 + 2280);
  *(v0 + 2352) = v1;
  *(v0 + 2176) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 2128);
    v3 = *(v0 + 2136);
    v4 = *(v0 + 2144);
    if (v4 == 9)
    {
      v5 = *(v0 + 2224);
      v6 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(61);
      v7._object = 0x8000000100096980;
      v7._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v7);
      v8._countAndFlagsBits = v2;
      v8._object = v3;
      String.append(_:)(v8);
      v9._countAndFlagsBits = 32032;
      v9._object = 0xE200000000000000;
      String.append(_:)(v9);
      sub_10005E11C(v6, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 184);

      _StringGuts.grow(_:)(61);
      v10._object = 0x8000000100096980;
      v10._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v10);
      v11._countAndFlagsBits = v2;
      v11._object = v3;
      String.append(_:)(v11);
      sub_100011CAC(v2, v3, 9u);
      v12._countAndFlagsBits = 32032;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      sub_10004D674(0, 0, 0, 0, 65280);
      *(v0 + 2360) = 0;
      *(v0 + 2368) = 0xE000000000000000;
      v13 = swift_task_alloc();
      *(v0 + 2376) = v13;
      *v13 = v0;
      v14 = sub_10003BCC0;
LABEL_7:
      v13[1] = v14;
      v24 = *(v0 + 2224);

      return sub_100035804(1);
    }

    sub_100011CAC(*(v0 + 2128), *(v0 + 2136), v4);
  }

  *(v0 + 2152) = v1;
  swift_errorRetain();
  v15 = swift_dynamicCast();
  v16 = *(v0 + 2224);
  if (v15)
  {
    v17 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v18._object = 0x8000000100096980;
    v18._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v18);
    sub_10004BCB0();
    v19._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 32032;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    sub_10005E11C(v17, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 188);

    _StringGuts.grow(_:)(61);
    v21._object = 0x8000000100096980;
    v21._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v21);
    v22._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 32032;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    sub_10004D674(0, 0, 0, 0, 65280);
    *(v0 + 2392) = 0;
    *(v0 + 2400) = 0xE000000000000000;
    v13 = swift_task_alloc();
    *(v0 + 2408) = v13;
    *v13 = v0;
    v14 = sub_10003CD94;
    goto LABEL_7;
  }

  v26 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v27._countAndFlagsBits = 0xD00000000000003DLL;
  v27._object = 0x8000000100094650;
  String.append(_:)(v27);
  swift_getErrorValue();
  v28 = *(v0 + 2080);
  v29 = *(v0 + 2088);
  v30 = *(v0 + 2096);
  v31._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 32032;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  sub_10005E11C(v26, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 192);

  _StringGuts.grow(_:)(65);
  v33._countAndFlagsBits = 0xD00000000000003DLL;
  v33._object = 0x8000000100094650;
  String.append(_:)(v33);
  swift_getErrorValue();
  v34 = *(v0 + 2104);
  v35 = *(v0 + 2112);
  v36 = *(v0 + 2120);
  v37._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v37);

  v38._countAndFlagsBits = 32032;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  sub_10004D674(0, 0, 0, 0, 65280);
  swift_willThrow();
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  *(v0 + 424) = 2;
  *(v0 + 432) = 0;
  *(v0 + 440) = 256;
  *(v0 + 442) = *(v0 + 122);
  *(v0 + 446) = *(v0 + 126);
  *(v0 + 448) = 0;
  *(v0 + 456) = *(v0 + 2424);
  sub_10004D588(v0 + 352);
  v39 = sub_1000111EC((v16 + 16), *(v16 + 40))[1];
  v40 = qword_1000B6700;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_1000B89E0;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_100011E70;
  *(v42 + 24) = v39;
  *(v0 + 1944) = sub_10004E120;
  *(v0 + 1952) = v42;
  *(v0 + 1912) = _NSConcreteStackBlock;
  *(v0 + 1920) = 1107296256;
  *(v0 + 1928) = sub_100010FA0;
  *(v0 + 1936) = &unk_1000B03B8;
  v43 = _Block_copy((v0 + 1912));
  v44 = *(v0 + 1952);

  dispatch_sync(v41, v43);
  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
    __break(1u);
  }

  else
  {
    v45 = *(v0 + 2248);
    v46 = *(v0 + 2240);

    v47 = *(v0 + 8);

    return v47();
  }

  return result;
}

uint64_t sub_10003E5D4()
{
  v1 = *(v0 + 2328);
  v2 = *(v0 + 121);
  v51 = *(v0 + 2304);
  v52 = *(v0 + 2312);
  v49 = *(v0 + 2288);
  v50 = *(v0 + 2296);
  *(v0 + 2352) = v1;
  *(v0 + 2176) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 2128);
    v4 = *(v0 + 2136);
    v5 = *(v0 + 2144);
    if (v5 == 9)
    {
      v6 = *(v0 + 2224);
      v7 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(61);
      v8._object = 0x8000000100096980;
      v8._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v8);
      v9._countAndFlagsBits = v3;
      v9._object = v4;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 32032;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      sub_10005E11C(v7, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 184);

      _StringGuts.grow(_:)(61);
      v11._object = 0x8000000100096980;
      v11._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v3;
      v12._object = v4;
      String.append(_:)(v12);
      sub_100011CAC(v3, v4, 9u);
      v13._countAndFlagsBits = 32032;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      sub_10004D674(v49, v50, v51, v52, v2);
      *(v0 + 2360) = 0;
      *(v0 + 2368) = 0xE000000000000000;
      v14 = swift_task_alloc();
      *(v0 + 2376) = v14;
      *v14 = v0;
      v15 = sub_10003BCC0;
LABEL_7:
      v14[1] = v15;
      v25 = *(v0 + 2224);

      return sub_100035804(1);
    }

    sub_100011CAC(*(v0 + 2128), *(v0 + 2136), v5);
  }

  *(v0 + 2152) = v1;
  swift_errorRetain();
  v16 = swift_dynamicCast();
  v17 = *(v0 + 2224);
  if (v16)
  {
    v18 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v19._object = 0x8000000100096980;
    v19._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v19);
    sub_10004BCB0();
    v20._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 32032;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    sub_10005E11C(v18, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 188);

    _StringGuts.grow(_:)(61);
    v22._object = 0x8000000100096980;
    v22._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v22);
    v23._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 32032;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    sub_10004D674(v49, v50, v51, v52, v2);
    *(v0 + 2392) = 0;
    *(v0 + 2400) = 0xE000000000000000;
    v14 = swift_task_alloc();
    *(v0 + 2408) = v14;
    *v14 = v0;
    v15 = sub_10003CD94;
    goto LABEL_7;
  }

  v27 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v28._countAndFlagsBits = 0xD00000000000003DLL;
  v28._object = 0x8000000100094650;
  String.append(_:)(v28);
  swift_getErrorValue();
  v29 = *(v0 + 2080);
  v30 = *(v0 + 2088);
  v31 = *(v0 + 2096);
  v32._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v32);

  v33._countAndFlagsBits = 32032;
  v33._object = 0xE200000000000000;
  String.append(_:)(v33);
  sub_10005E11C(v27, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 192);

  _StringGuts.grow(_:)(65);
  v34._countAndFlagsBits = 0xD00000000000003DLL;
  v34._object = 0x8000000100094650;
  String.append(_:)(v34);
  swift_getErrorValue();
  v35 = *(v0 + 2104);
  v36 = *(v0 + 2112);
  v37 = *(v0 + 2120);
  v38._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 32032;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  sub_10004D674(v49, v50, v51, v52, v2);
  swift_willThrow();
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  *(v0 + 424) = 2;
  *(v0 + 432) = 0;
  *(v0 + 440) = 256;
  *(v0 + 442) = *(v0 + 122);
  *(v0 + 446) = *(v0 + 126);
  *(v0 + 448) = 0;
  *(v0 + 456) = *(v0 + 2424);
  sub_10004D588(v0 + 352);
  v40 = sub_1000111EC((v17 + 16), *(v17 + 40))[1];
  v41 = qword_1000B6700;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_1000B89E0;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_100011E70;
  *(v43 + 24) = v40;
  *(v0 + 1944) = sub_10004E120;
  *(v0 + 1952) = v43;
  *(v0 + 1912) = _NSConcreteStackBlock;
  *(v0 + 1920) = 1107296256;
  *(v0 + 1928) = sub_100010FA0;
  *(v0 + 1936) = &unk_1000B03B8;
  v44 = _Block_copy((v0 + 1912));
  v45 = *(v0 + 1952);

  dispatch_sync(v42, v44);
  _Block_release(v44);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
  }

  else
  {
    v46 = *(v0 + 2248);
    v47 = *(v0 + 2240);

    v48 = *(v0 + 8);

    return v48();
  }

  return result;
}

uint64_t sub_10003ED48()
{
  v1 = *(v0 + 2344);
  *(v0 + 2352) = v1;
  *(v0 + 2176) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 2128);
    v3 = *(v0 + 2136);
    v4 = *(v0 + 2144);
    if (v4 == 9)
    {
      v5 = *(v0 + 2224);
      v6 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(61);
      v7._object = 0x8000000100096980;
      v7._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v7);
      v8._countAndFlagsBits = v2;
      v8._object = v3;
      String.append(_:)(v8);
      v9._countAndFlagsBits = 32032;
      v9._object = 0xE200000000000000;
      String.append(_:)(v9);
      sub_10005E11C(v6, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 184);

      _StringGuts.grow(_:)(61);
      v10._object = 0x8000000100096980;
      v10._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v10);
      v11._countAndFlagsBits = v2;
      v11._object = v3;
      String.append(_:)(v11);
      sub_100011CAC(v2, v3, 9u);
      v12._countAndFlagsBits = 32032;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      sub_10004D674(0xD000000000000048, 0x80000001000969C0, 0x11u, 0, 256);
      *(v0 + 2360) = 0;
      *(v0 + 2368) = 0xE000000000000000;
      v13 = swift_task_alloc();
      *(v0 + 2376) = v13;
      *v13 = v0;
      v14 = sub_10003BCC0;
LABEL_7:
      v13[1] = v14;
      v24 = *(v0 + 2224);

      return sub_100035804(1);
    }

    sub_100011CAC(*(v0 + 2128), *(v0 + 2136), v4);
  }

  *(v0 + 2152) = v1;
  swift_errorRetain();
  v15 = swift_dynamicCast();
  v16 = *(v0 + 2224);
  if (v15)
  {
    v17 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v18._object = 0x8000000100096980;
    v18._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v18);
    sub_10004BCB0();
    v19._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 32032;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    sub_10005E11C(v17, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 188);

    _StringGuts.grow(_:)(61);
    v21._object = 0x8000000100096980;
    v21._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v21);
    v22._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 32032;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    sub_10004D674(0xD000000000000048, 0x80000001000969C0, 0x11u, 0, 256);
    *(v0 + 2392) = 0;
    *(v0 + 2400) = 0xE000000000000000;
    v13 = swift_task_alloc();
    *(v0 + 2408) = v13;
    *v13 = v0;
    v14 = sub_10003CD94;
    goto LABEL_7;
  }

  v26 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v27._countAndFlagsBits = 0xD00000000000003DLL;
  v27._object = 0x8000000100094650;
  String.append(_:)(v27);
  swift_getErrorValue();
  v28 = *(v0 + 2080);
  v29 = *(v0 + 2088);
  v30 = *(v0 + 2096);
  v31._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 32032;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  sub_10005E11C(v26, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 192);

  _StringGuts.grow(_:)(65);
  v33._countAndFlagsBits = 0xD00000000000003DLL;
  v33._object = 0x8000000100094650;
  String.append(_:)(v33);
  swift_getErrorValue();
  v34 = *(v0 + 2104);
  v35 = *(v0 + 2112);
  v36 = *(v0 + 2120);
  v37._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v37);

  v38._countAndFlagsBits = 32032;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  sub_10004D674(0xD000000000000048, 0x80000001000969C0, 0x11u, 0, 256);
  swift_willThrow();
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  *(v0 + 424) = 2;
  *(v0 + 432) = 0;
  *(v0 + 440) = 256;
  *(v0 + 442) = *(v0 + 122);
  *(v0 + 446) = *(v0 + 126);
  *(v0 + 448) = 0;
  *(v0 + 456) = *(v0 + 2424);
  sub_10004D588(v0 + 352);
  v39 = sub_1000111EC((v16 + 16), *(v16 + 40))[1];
  v40 = qword_1000B6700;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_1000B89E0;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_100011E70;
  *(v42 + 24) = v39;
  *(v0 + 1944) = sub_10004E120;
  *(v0 + 1952) = v42;
  *(v0 + 1912) = _NSConcreteStackBlock;
  *(v0 + 1920) = 1107296256;
  *(v0 + 1928) = sub_100010FA0;
  *(v0 + 1936) = &unk_1000B03B8;
  v43 = _Block_copy((v0 + 1912));
  v44 = *(v0 + 1952);

  dispatch_sync(v41, v43);
  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
    __break(1u);
  }

  else
  {
    v45 = *(v0 + 2248);
    v46 = *(v0 + 2240);

    v47 = *(v0 + 8);

    return v47();
  }

  return result;
}

uint64_t sub_10003F4CC()
{
  v1 = *(v0 + 2368);
  v2 = *(v0 + 2360);
  v3 = *(v0 + 2352);
  v4 = *(v0 + 2224);

  *(v0 + 128) = 0u;
  v5 = *(v0 + 122);
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  *(v0 + 184) = v2;
  *(v0 + 192) = v1;
  *(v0 + 200) = xmmword_100091590;
  *(v0 + 216) = 256;
  *(v0 + 218) = v5;
  *(v0 + 222) = *(v0 + 126);
  *(v0 + 224) = 0;
  *(v0 + 232) = *(v0 + 2424);
  sub_10004D588(v0 + 128);
  v6 = sub_1000111EC((v4 + 16), *(v4 + 40))[1];
  v7 = qword_1000B6700;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1000B89E0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100011E70;
  *(v9 + 24) = v6;
  *(v0 + 1608) = sub_10004E120;
  *(v0 + 1616) = v9;
  *(v0 + 1576) = _NSConcreteStackBlock;
  *(v0 + 1584) = 1107296256;
  *(v0 + 1592) = sub_100010FA0;
  *(v0 + 1600) = &unk_1000B0458;
  v10 = _Block_copy((v0 + 1576));
  v11 = *(v0 + 1616);

  dispatch_sync(v8, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v0 + 2384);
    v14 = *(v0 + 2248);
    v15 = *(v0 + 2240);

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

uint64_t sub_10003F708()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2392);
  v3 = *(v0 + 2352);
  v4 = *(v0 + 2224);

  *(v0 + 240) = 0u;
  v5 = *(v0 + 122);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  *(v0 + 296) = v2;
  *(v0 + 304) = v1;
  *(v0 + 312) = 3;
  *(v0 + 320) = 0;
  *(v0 + 328) = 256;
  *(v0 + 330) = v5;
  *(v0 + 334) = *(v0 + 126);
  *(v0 + 336) = 0;
  *(v0 + 344) = *(v0 + 2424);
  sub_10004D588(v0 + 240);
  v6 = sub_1000111EC((v4 + 16), *(v4 + 40))[1];
  v7 = qword_1000B6700;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1000B89E0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100011E70;
  *(v9 + 24) = v6;
  *(v0 + 1896) = sub_10004E120;
  *(v0 + 1904) = v9;
  *(v0 + 1864) = _NSConcreteStackBlock;
  *(v0 + 1872) = 1107296256;
  *(v0 + 1880) = sub_100010FA0;
  *(v0 + 1888) = &unk_1000B0408;
  v10 = _Block_copy((v0 + 1864));
  v11 = *(v0 + 1904);

  dispatch_sync(v8, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v0 + 2416);
    v14 = *(v0 + 2248);
    v15 = *(v0 + 2240);

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

uint64_t sub_10003F940(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v75 = a2;
  v3 = type metadata accessor for Logger();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  __chkstk_darwin(v3, v5);
  v76 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v6;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v10 = type metadata accessor for URL.DirectoryHint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v72 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21, v23);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + 16);
  v27 = *(v2 + 24);
  v82 = v28;
  v83 = v2;
  v29 = *(v28 + 56);
  v81 = v30;
  v29(v20, 1, 1);
  (*(v11 + 104))(v15, enum case for URL.DirectoryHint.inferFromPath(_:), v10);

  URL.init(filePath:directoryHint:relativeTo:)();
  static String.Encoding.utf8.getter();
  v31 = v80;
  String.init(contentsOf:encoding:)();
  if (v31)
  {
    v79 = OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger;
    v32 = static os_log_type_t.error.getter();
    aBlock = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    aBlock = 0xD00000000000002ALL;
    v85 = 0x8000000100096BA0;
    sub_10004D698(&qword_1000B6DF8, &type metadata accessor for URL);
    v80 = v31;
    v33 = v81;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 32032;
    v35._object = 0xE200000000000000;
    String.append(_:)(v35);
    sub_10005E11C(v32, aBlock, v85, 0xD000000000000054, 0x8000000100096BD0, 41);

    aBlock = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    aBlock = 0xD00000000000002ALL;
    v85 = 0x8000000100096BA0;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 32032;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    v38 = aBlock;
    v39 = v85;
    sub_10000B6B0();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 6;
    swift_willThrow();

    v41 = v33;
    v42 = v25;
    return (*(v82 + 8))(v42, v41);
  }

  v43 = v76;
  v44 = v78;
  v45 = v79;
  v73 = v25;
  v46 = [objc_allocWithZone(JSContext) init];
  if (!v46)
  {

    v59 = 0;
    v41 = v81;
    v42 = v73;
LABEL_12:
    v65 = static os_log_type_t.default.getter();
    sub_10005E11C(v65, 0xD00000000000002FLL, 0x8000000100096C30, 0xD000000000000054, 0x8000000100096BD0, 61);
    sub_10000B6B0();
    swift_allocError();
    *v66 = 0xD00000000000002FLL;
    *(v66 + 8) = 0x8000000100096C30;
    *(v66 + 16) = 6;
    swift_willThrow();

    return (*(v82 + 8))(v42, v41);
  }

  v80 = 0;
  v47 = v44;
  v48 = *(v44 + 16);
  v72 = OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger;
  v48(v43, v83 + OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger, v45);
  v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v50 = swift_allocObject();
  (*(v47 + 32))(v50 + v49, v43, v45);
  v88 = sub_10004D768;
  v89 = v50;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_100044034;
  v87 = &unk_1000B04A8;
  v51 = _Block_copy(&aBlock);
  v79 = v46;
  v52 = v46;

  [v52 setExceptionHandler:v51];
  _Block_release(v51);

  v53 = v52;
  v54 = String._bridgeToObjectiveC()();

  v55 = v53;
  v56 = String._bridgeToObjectiveC()();
  v57 = [v55 objectForKeyedSubscript:v56];

  v41 = v81;
  if (!v57)
  {
    v59 = 0;
    v42 = v73;
    goto LABEL_11;
  }

  sub_100002074(&qword_1000B7A88, &qword_100091860);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_10008F580;
  *(v58 + 56) = &type metadata for String;
  *(v58 + 32) = v74;
  *(v58 + 40) = v75;

  v59 = v57;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v61 = [v59 callWithArguments:isa];

  v42 = v73;
  if (!v61)
  {
LABEL_11:
    v46 = v79;
    goto LABEL_12;
  }

  if ([v61 isArray])
  {
    v62 = [v61 toArray];
    if (v62)
    {
      v63 = v62;
      v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v64 = 0;
    }

    aBlock = v64;
    sub_100002074(&qword_1000B7A90, &qword_100091868);
    sub_100002074(&qword_1000B7858, &qword_100091870);
    if (swift_dynamicCast())
    {
      (*(v82 + 8))(v42, v41);

      return v90;
    }

    v70 = static os_log_type_t.default.getter();
    sub_10005E11C(v70, 0xD000000000000034, 0x8000000100096C80, 0xD000000000000054, 0x8000000100096BD0, 68);
    sub_10000B6B0();
    swift_allocError();
    *v71 = 0xD000000000000034;
    *(v71 + 8) = 0x8000000100096C80;
    *(v71 + 16) = 6;
  }

  else
  {

    v68 = static os_log_type_t.default.getter();
    sub_10005E11C(v68, 0xD000000000000034, 0x8000000100096C80, 0xD000000000000054, 0x8000000100096BD0, 76);
    sub_10000B6B0();
    swift_allocError();
    *v69 = 0xD000000000000034;
    *(v69 + 8) = 0x8000000100096C80;
    *(v69 + 16) = 6;
  }

  swift_willThrow();

  return (*(v82 + 8))(v42, v41);
}

uint64_t sub_100040314(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x636E657265666E69;
  }

  else
  {
    v4 = 0x756F72676B636162;
  }

  if (v3)
  {
    v5 = 0xEA0000000000646ELL;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x636E657265666E69;
  }

  else
  {
    v6 = 0x756F72676B636162;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xEA0000000000646ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000403C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100040450()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000404C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100040550@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE348, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000405B0(uint64_t *a1@<X8>)
{
  v2 = 0x756F72676B636162;
  if (*v1)
  {
    v2 = 0x636E657265666E69;
  }

  v3 = 0xEA0000000000646ELL;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100040644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  if (a1 == 5456722 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12 = 128;
LABEL_5:
    v13 = sub_100021018(a3, a4, *&a5[v12]);
    goto LABEL_6;
  }

  if (a1 == 0x6567617373654D69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12 = 120;
    goto LABEL_5;
  }

  if (a1 == 5459283 && a2 == 0xE300000000000000 || (v13 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v12 = 104;
    goto LABEL_5;
  }

LABEL_6:
  v14 = *(a6 + *(type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0) + 20) + 105);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = a5[113];
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = a5[114];
  }

  else
  {
    v15 = a5[112];
  }

  return v13 & v15 & 1;
}

uint64_t sub_1000407B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SpamDecisioningAsset(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054D1C();
  if (v16)
  {
    v43 = v6;
    v44 = v5;
    v18 = a2[3];
    v17 = a2[4];
    sub_1000111EC(a2, v18);
    v41 = a3;
    v42 = v10;
    v19 = *(v17 + 8);
    v19(v18, v17);
    v20 = *&v15[*(v11 + 32)];

    sub_10004B9B8(v15, type metadata accessor for SpamDecisioningAsset);
    v21 = *(v20 + 184);

    v22 = v18;
    v23 = v17;
    v6 = v43;
    v5 = v44;
    v19(v22, v23);
    v10 = v42;
    v24 = *&v15[*(v11 + 32)];

    sub_10004B9B8(v15, type metadata accessor for SpamDecisioningAsset);
    v25 = *(v24 + 192);

    sub_10008C9CC(0x20000000000001uLL);
  }

  Date.addingTimeInterval(_:)();
  v26 = static os_log_type_t.default.getter();
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  v27._countAndFlagsBits = 0xD000000000000029;
  v27._object = 0x8000000100096B50;
  String.append(_:)(v27);
  sub_10004D698(&qword_1000B6A98, &type metadata accessor for Date);
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0xD000000000000013;
  v29._object = 0x8000000100096B30;
  String.append(_:)(v29);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._object = 0x8000000100096B80;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  Double.write<A>(to:)();
  v32._countAndFlagsBits = 32032;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  sub_10005E11C(v26, v45, v46, 0xD00000000000006ALL, 0x8000000100095F40, 449);

  v33 = sub_10002F070(1);
  if (qword_1000B6658 != -1)
  {
    v39 = v34;
    v40 = v33;
    swift_once();
    v33 = v40;
    v34 = v39;
  }

  if (qword_1000B7C78)
  {
    v45 = v33;
    v46 = v34;
    v35 = qword_1000B7C78;

    v36 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v37 = String._bridgeToObjectiveC()();
    [v35 setValue:v36 forKey:v37];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_100040C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(sub_100002074(&qword_1000B6A68, &qword_10008F6F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v36 - v11;
  v13 = (type metadata accessor for SpamDecisioningAsset(0) - 8);
  v14 = *(*v13 + 64);
  __chkstk_darwin();
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3);
  v17 = *&v16[v13[11]];

  sub_10004B9B8(v16, type metadata accessor for SpamDecisioningAsset);
  static Locale.current.getter();
  Locale.region.getter();
  (*(v6 + 8))(v9, v5);
  v18 = type metadata accessor for Locale.Region();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    sub_10000BC10(v12, &qword_1000B6A68, &qword_10008F6F0);
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v21 = Locale.Region.identifier.getter();
    v20 = v22;
    (*(v19 + 8))(v12, v18);
    if (!v17)
    {
LABEL_8:
      v28 = static os_log_type_t.error.getter();
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v37 = 0xD000000000000029;
      v38 = 0x80000001000967E0;
      v29._countAndFlagsBits = v21;
      v29._object = v20;
      String.append(_:)(v29);
      v30._countAndFlagsBits = 32032;
      v30._object = 0xE200000000000000;
      String.append(_:)(v30);
      sub_10005E11C(v28, v37, v38, 0xD00000000000006ALL, 0x8000000100095F40, 494);

      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v37 = 0xD000000000000029;
      v38 = 0x80000001000967E0;
      v31._countAndFlagsBits = v21;
      v31._object = v20;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 32032;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      v27 = v37;
      v33 = v38;
      sub_10000B6B0();
      swift_allocError();
      *v34 = v27;
      *(v34 + 8) = v33;
      *(v34 + 16) = 12;
      swift_willThrow();

      return v27;
    }
  }

  sub_100072918(v21, v20);
  if (!v23)
  {

    goto LABEL_8;
  }

  v24 = objc_allocWithZone(CKRecordZone);
  v25 = String._bridgeToObjectiveC()();

  v26 = [v24 initWithZoneName:v25];

  sub_100002074(&qword_1000B7738, &qword_1000912F0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100091290;
  *(v27 + 32) = [v26 zoneID];

  return v27;
}

void sub_1000410E0(int64_t a1, char a2)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1000111EC((v2 + 16), *(v2 + 40))[1];
  v8 = qword_1000B6700;

  if (v8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    OS_dispatch_queue.sync<A>(execute:)();

    if (v4)
    {
      break;
    }

    v9 = 0;
    v37 = v45;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v10 = a1;
    }

    v36 = v10;
    v42 = a1 & 0xC000000000000001;
    v41 = a1;
    while (1)
    {
      v40 = objc_autoreleasePoolPush();
      v11 = sub_1000111EC((v5 + 16), *(v5 + 40));
      v12 = v11[1];
      __chkstk_darwin(v11, v13);

      sub_100002074(&qword_1000B7A58, &qword_100091810);
      OS_dispatch_queue.sync<A>(execute:)();
      v39 = v9;

      v4 = sub_10004305C(v45, a2 & 1, a1);

      if (!*(v4 + 2))
      {

        goto LABEL_24;
      }

      v14 = static os_log_type_t.default.getter();
      v45 = 0;
      _StringGuts.grow(_:)(86);
      v15._countAndFlagsBits = 0xD000000000000052;
      v15._object = 0x8000000100096740;
      String.append(_:)(v15);
      v46 = *(v4 + 2);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 32032;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      sub_10005E11C(v14, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 689);

      if (*(v4 + 2))
      {
        v18 = sub_1000111EC((v5 + 16), *(v5 + 40));
        v19 = v18[1];
        __chkstk_darwin(v18, v20);

        OS_dispatch_queue.sync<A>(execute:)();

        if (!a1)
        {
          goto LABEL_24;
        }
      }

      else
      {

        if (!a1)
        {
          goto LABEL_24;
        }
      }

      if (a1 >> 62)
      {
        break;
      }

      v21 = *(v44 + 16);
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_24:
      v9 = v39 + 1000;
      if (__OFADD__(v39, 1000))
      {
        goto LABEL_30;
      }

      objc_autoreleasePoolPop(v40);
      if (v9 >= v37)
      {
        return;
      }
    }

    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (!v21)
    {
      goto LABEL_24;
    }

LABEL_14:
    v22 = 0;
    v43 = v21;
    while (1)
    {
      if (v42)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v44 + 16))
        {
          goto LABEL_29;
        }

        v25 = *(a1 + 8 * v22 + 32);
      }

      v4 = v25;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v27 = static os_log_type_t.default.getter();
      v45 = 0;
      _StringGuts.grow(_:)(63);
      v28._countAndFlagsBits = 0xD00000000000003BLL;
      v28._object = 0x80000001000967A0;
      String.append(_:)(v28);
      v29 = [v4 zoneName];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33._countAndFlagsBits = v30;
      v33._object = v32;
      String.append(_:)(v33);

      v34._countAndFlagsBits = 32032;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      sub_10005E11C(v27, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 693);

      v35 = [v4 zoneName];
      if (!v35)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = String._bridgeToObjectiveC()();
      }

      v23 = [objc_allocWithZone(CKRecordZone) initWithZoneName:v35];

      v24 = [v23 zoneID];
      sub_100054E54(v24);

      ++v22;
      a1 = v41;
      if (v26 == v43)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

void sub_1000416A4(unint64_t a1)
{
  if (a1)
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *(v2 + 16))
          {
            goto LABEL_19;
          }

          v5 = *(a1 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        sub_100054E54(v5);

        if (v7 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }
  }

  else
  {
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (qword_1000B7C78)
    {
      v8 = qword_1000B7C78;
      v9 = String._bridgeToObjectiveC()();
      [v8 setValue:0 forKey:v9];
    }
  }
}

uint64_t sub_100041840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100041860, 0, 0);
}

uint64_t sub_100041860()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = v0[2];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v11 = v0[2];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[2] + 32);
  }

  v4 = v3;
  v5 = v0[3] + OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_changeTokenCache;
  v6 = sub_100055194(v3);
  if (v6)
  {
    v7 = v0[3];

    sub_1000410E0(v1, 0);
    goto LABEL_8;
  }

LABEL_10:
  v9 = v0[3];
  sub_1000410E0(0, 0);
LABEL_8:
  v8 = v0[1];

  return v8();
}

uint64_t sub_100041998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return _swift_task_switch(sub_100041A10, 0, 0);
}

uint64_t sub_100041A10()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 40);
  v5 = swift_allocObject();
  *(v0 + 64) = v5;
  *(v5 + 16) = &unk_1000917D0;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_100041B74;
  v9 = *(v0 + 16);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v9, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1000917E0, v6, &type metadata for () + 8);
}

uint64_t sub_100041B74()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_100041D08;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100041C90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100041C90()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100041D08()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

uint64_t sub_100041D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  return _swift_task_switch(sub_100041DB8, 0, 0);
}

uint64_t sub_100041DB8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = Duration.components.getter();
  sub_100043EA4(v2, v0 + 24);
  *(v0 + 16) = v1;
  *(v0 + 64) = v5;

  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_100041E90;
  v7 = *(v0 + 112);

  return sub_10004208C(v0 + 16);
}

uint64_t sub_100041E90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_100042028;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_100041FB8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100041FB8()
{
  v1 = v0[17];
  v2 = v0[9];
  sub_10004BD04((v0 + 2));
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100042028()
{
  sub_10004BD04(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1();
}

uint64_t sub_10004208C(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for Date();
  v2[33] = v3;
  v4 = *(v3 - 8);
  v2[34] = v4;
  v5 = *(v4 + 64) + 15;
  v2[35] = swift_task_alloc();
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v2[36] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10004217C, 0, 0);
}

uint64_t sub_1000425B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  v4[42] = v1;

  v7 = v4[40];
  if (v1)
  {
    v8 = v4[38];

    return _swift_task_switch(sub_100042768, 0, 0);
  }

  else
  {
    v10 = v4[38];
    v9 = v4[39];
    v11 = v4[37];
    v12 = v4[35];

    v13 = *(v6 + 8);

    return v13(a1);
  }
}

uint64_t sub_100042768()
{
  *(v0 + 128) = *(v0 + 336);
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    v29 = *(v0 + 336);
    v30 = *(v0 + 312);
    v31 = *(v0 + 256);

    v32 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(47);

    swift_getErrorValue();
    v34 = *(v0 + 16);
    v33 = *(v0 + 24);
    v35 = *(v0 + 32);
    v36._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 32032;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    sub_10005E11C(v32, 0xD00000000000002BLL, 0x8000000100096130, 0xD00000000000006ALL, 0x8000000100095F40, 731);

    _StringGuts.grow(_:)(47);

    swift_getErrorValue();
    v39 = *(v0 + 40);
    v38 = *(v0 + 48);
    v40 = *(v0 + 56);
    v41._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v41);

    v42._countAndFlagsBits = 32032;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    sub_10000B6B0();
    swift_allocError();
    *v43 = 0xD00000000000002BLL;
    *(v43 + 8) = 0x8000000100096130;
    *(v43 + 16) = 3;
    swift_willThrow();
    goto LABEL_20;
  }

  v1 = *(v0 + 136);
  *(v0 + 160) = v1;
  sub_10004D698(&qword_1000B67E0, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  if (*(v0 + 168) == 21 || (*(v0 + 176) = v1, _BridgedStoredNSError.code.getter(), *(v0 + 184) == 28))
  {
    v2 = *(v0 + 256);
    v3 = static os_log_type_t.error.getter();
    sub_10005E11C(v3, 0xD00000000000004ALL, 0x80000001000961D0, 0xD00000000000006ALL, 0x8000000100095F40, 739);
    if (qword_1000B6658 == -1)
    {
      v4 = qword_1000B7C78;
      if (!qword_1000B7C78)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_once();
    v4 = qword_1000B7C78;
    if (qword_1000B7C78)
    {
LABEL_6:
      v5 = v4;
      v6 = v1;
      v7 = String._bridgeToObjectiveC()();
      [v5 setValue:0 forKey:v7];

      v1 = v6;
    }
  }

LABEL_7:
  *(v0 + 192) = v1;
  _BridgedStoredNSError.code.getter();
  v65 = v1;
  if (*(v0 + 200) == 6 || (*(v0 + 208) = v1, _BridgedStoredNSError.code.getter(), *(v0 + 216) == 7))
  {
    v8 = *(v0 + 272);
    v9 = *(v0 + 280);
    v10 = *(v0 + 256);
    v64 = *(v0 + 264);
    v11 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(74);
    v12._countAndFlagsBits = 0xD000000000000046;
    v12._object = 0x8000000100096160;
    String.append(_:)(v12);
    v13._countAndFlagsBits = related decl 'e' for CKErrorCode.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 32032;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    sub_10005E11C(v11, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 746);

    Date.init()();
    v15 = sub_10002F070(1);
    v17 = v16;
    (*(v8 + 8))(v9, v64);
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    v18 = qword_1000B7C78;
    if (qword_1000B7C78)
    {
      *(v0 + 112) = v15;
      *(v0 + 120) = v17;
      v19 = v18;

      v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v21 = String._bridgeToObjectiveC()();
      [v19 setValue:v20 forKey:v21];

      swift_unknownObjectRelease();
    }

    v22 = *(v0 + 312);

    v23 = related decl 'e' for CKErrorCode.retryAfterSeconds.getter();
    v25 = v24;

    if (v18)
    {
      v26 = *&v23;
      if (v25)
      {
        v26 = 60.0;
      }

      *(v0 + 240) = v26;
      v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v28 = String._bridgeToObjectiveC()();
      [v18 setValue:v27 forKey:v28];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v44 = *(v0 + 312);
  }

  v45 = *(v0 + 336);
  v46 = *(v0 + 256);
  v47 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(47);

  swift_getErrorValue();
  v49 = *(v0 + 64);
  v48 = *(v0 + 72);
  v50 = *(v0 + 80);
  v51._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v51);

  v52._countAndFlagsBits = 32032;
  v52._object = 0xE200000000000000;
  String.append(_:)(v52);
  sub_10005E11C(v47, 0xD00000000000002BLL, 0x8000000100096130, 0xD00000000000006ALL, 0x8000000100095F40, 755);

  _StringGuts.grow(_:)(47);

  swift_getErrorValue();
  v54 = *(v0 + 88);
  v53 = *(v0 + 96);
  v55 = *(v0 + 104);
  v56._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v56);

  v57._countAndFlagsBits = 32032;
  v57._object = 0xE200000000000000;
  String.append(_:)(v57);
  sub_10000B6B0();
  swift_allocError();
  *v58 = 0xD00000000000002BLL;
  *(v58 + 8) = 0x8000000100096130;
  *(v58 + 16) = 9;
  swift_willThrow();

LABEL_20:
  v59 = *(v0 + 336);
  v60 = *(v0 + 296);
  v61 = *(v0 + 280);

  v62 = *(v0 + 8);

  return v62();
}

void sub_100042F24(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v8 << 6);
      v11 = *(*(a1 + 48) + 8 * v10);
      v12 = (*(a1 + 56) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = v11;
      sub_100005A7C(v13, v14);
      sub_100055454(v15, v13, v14);
      sub_100005A28(v13, v14);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }
}

char *sub_10004305C(uint64_t a1, char a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a2;
    v6 = 0;
    v37 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = *(a1 + 16);
    v41 = a1 + 32;
    v42 = a3 & 0xC000000000000001;
    v38 = a3 >> 62;
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v8 = (v41 + 80 * v6);
      v9 = v8[3];
      v46 = v8[2];
      v47 = v9;
      v48 = v8[4];
      v10 = v8[1];
      v44 = *v8;
      v45 = v10;
      v11 = v47;
      if (!*(&v47 + 1) || v47 != __PAIR128__(0xE500000000000000, 0x6C61636F6CLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v5 & 1) == 0)
      {
        if (a3)
        {
          if (v38)
          {
            v12 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v12 = *(v37 + 16);
          }

          v39 = v7;
          v40 = v6;
          if (v12)
          {
            sub_100031284(&v44, v43);
            v43[0] = &_swiftEmptyArrayStorage;
            result = sub_100049F4C(0, v12 & ~(v12 >> 63), 0);
            if (v12 < 0)
            {
              __break(1u);
              return result;
            }

            v14 = 0;
            v15 = v43[0];
            do
            {
              if (v42)
              {
                v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v16 = *(a3 + 8 * v14 + 32);
              }

              v17 = v16;
              v18 = [v16 zoneName];
              v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v21 = v20;

              v43[0] = v15;
              v23 = v15[2];
              v22 = v15[3];
              v24 = v23 + 1;
              if (v23 >= v22 >> 1)
              {
                sub_100049F4C((v22 > 1), v23 + 1, 1);
                v15 = v43[0];
              }

              ++v14;
              v15[2] = v24;
              v25 = &v15[2 * v23];
              *(v25 + 4) = v19;
              *(v25 + 5) = v21;
            }

            while (v12 != v14);
            v5 = a2;
            v3 = v35;
LABEL_24:
            v26 = v15 + 5;
            while (1)
            {
              if (*(&v11 + 1))
              {
                v27 = *(v26 - 1) == v11 && *(&v11 + 1) == *v26;
                if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }
              }

              v26 += 2;
              if (!--v24)
              {
                goto LABEL_33;
              }
            }

            sub_1000312BC(&v44);
            v7 = v39;
            v6 = v40;
            goto LABEL_4;
          }

          sub_100031284(&v44, v43);
          v24 = *(&_swiftEmptyArrayStorage + 2);
          v15 = &_swiftEmptyArrayStorage;
          if (v24)
          {
            goto LABEL_24;
          }

LABEL_33:

          v7 = v39;
          v6 = v40;
        }

        else
        {
          sub_100031284(&v44, v43);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100049A20(0, *(v7 + 2) + 1, 1, v7);
        }

        v29 = *(v7 + 2);
        v28 = *(v7 + 3);
        v30 = v7;
        if (v29 >= v28 >> 1)
        {
          v30 = sub_100049A20((v28 > 1), v29 + 1, 1, v7);
        }

        *(v30 + 2) = v29 + 1;
        v7 = v30;
        v31 = &v30[80 * v29];
        *(v31 + 2) = v44;
        v32 = v45;
        v33 = v46;
        v34 = v48;
        *(v31 + 5) = v47;
        *(v31 + 6) = v34;
        *(v31 + 3) = v32;
        *(v31 + 4) = v33;
      }

LABEL_4:
      if (++v6 == v3)
      {
        return v7;
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000433A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 64) = v5;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return _swift_task_switch(sub_1000433D4, 0, 0);
}

uint64_t sub_1000433D4()
{
  v1 = *(v0 + 8);
  if (sub_1000440C0())
  {
    v2 = static os_log_type_t.default.getter();
    sub_10005E11C(v2, 0xD000000000000036, 0x8000000100096310, 0xD000000000000054, 0x8000000100096260, 44);
    sub_10000B6B0();
    swift_allocError();
    *v3 = 0xD000000000000036;
    *(v3 + 8) = 0x8000000100096310;
    *(v3 + 16) = 9;
    swift_willThrow();
    v4 = *(v0 + 1);

    return v4();
  }

  else
  {
    v6 = *(v0 + 8);
    v7 = *(v0 + 3);
    v8 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(57);
    v9._countAndFlagsBits = 0xD000000000000035;
    v9._object = 0x8000000100096220;
    String.append(_:)(v9);
    sub_100002074(&qword_1000B7A00, &qword_100091760);
    v10._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 32032;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    sub_10005E11C(v8, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 48);

    v12 = swift_allocObject();
    *(v0 + 9) = v12;
    *(v12 + 16) = v6;
    *(v12 + 24) = v7;
    v13 = *(v6 + 16);
    *(v0 + 10) = v13;
    if (v13)
    {
      v14 = *(v0 + 8);
      v15 = *(v0 + 3);

      v16 = v13;
      v17 = static os_log_type_t.debug.getter();
      sub_10005E11C(v17, 0xD000000000000045, 0x80000001000962C0, 0xD000000000000054, 0x8000000100096260, 213);
      v18 = swift_task_alloc();
      *(v0 + 11) = v18;
      *v18 = v0;
      v18[1] = sub_1000438B8;
      v19 = *(v0 + 8);
      v20 = *(v0 + 3);

      return sub_1000446E8(v16, v19, v20);
    }

    else
    {
      v21 = v12;
      v22 = *(v0 + 8);
      v24 = v0[6];
      v23 = v0[7];
      v26 = *(v0 + 4);
      v25 = *(v0 + 5);
      v27 = *(v0 + 3);

      v28 = String._bridgeToObjectiveC()();
      v29 = [objc_opt_self() containerWithIdentifier:v28];

      v30 = [v29 publicCloudDatabase];
      *(v0 + 13) = v30;

      v31 = [objc_allocWithZone(CKOperationConfiguration) init];
      *(v0 + 14) = v31;
      v32 = [v30 container];
      [v31 setContainer:v32];

      [v31 setTimeoutIntervalForRequest:v24];
      [v31 setTimeoutIntervalForResource:v23];
      [v31 setAllowsCellularAccess:1];
      [v31 setPreferAnonymousRequests:1];
      v33 = swift_task_alloc();
      *(v0 + 15) = v33;
      *(v33 + 16) = &unk_100091770;
      *(v33 + 24) = v21;
      v34 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
      v35 = v31;
      v36 = swift_task_alloc();
      *(v0 + 16) = v36;
      v37 = sub_100002074(&qword_1000B79E0, &qword_1000916F0);
      *v36 = v0;
      v36[1] = sub_1000439E0;

      return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v31, 0, &unk_100091780, v33, v37);
    }
  }
}

uint64_t sub_1000438B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_100043B70;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_100043B04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000439E0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_100043C4C;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_100043BD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100043B04()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[18];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100043B70()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100043BD8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];

  v4 = v0[2];
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100043C4C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[17];
  v6 = v0[1];

  return v6();
}

uint64_t sub_100043CD8()
{
  sub_100003558(v0 + 2);
  sub_10004B9B8(v0 + OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_changeTokenCache, type metadata accessor for ChangeTokenCache);
  v1 = *(v0 + OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_analyticsManager);

  v2 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100043DD8()
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

uint64_t sub_100043EA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100043F08()
{
  result = qword_1000B79B0;
  if (!qword_1000B79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B79B0);
  }

  return result;
}

uint64_t sub_100043F88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011E6C;

  return sub_100041840(a1, v5, v4);
}

void sub_100044034(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000440C0()
{
  v1 = sub_100002074(&qword_1000B7820, &unk_1000917B0);
  v2 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = v40 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v10, v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v14, v17);
  v20 = v40 - v19;
  __chkstk_darwin(v18, v21);
  v23 = v40 - v22;
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 0;
  }

  v41 = v6;
  v42 = v20;
  v24 = qword_1000B7C78;
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 valueForKey:v25];

  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011DEC(&v43, v44);
  }

  else
  {

    memset(v44, 0, sizeof(v44));
  }

  sub_100002074(&qword_1000B7748, &unk_1000912F8);
  result = swift_dynamicCast();
  if (result)
  {
    if (*(&v43 + 1))
    {
      sub_10002F9EC(1, v9);

      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_10000BC10(v9, &qword_1000B7820, &unk_1000917B0);
      }

      else
      {
        (*(v11 + 32))(v23, v9, v10);
        sub_100054D1C();
        if (v28)
        {
          (*(v11 + 8))(v23, v10);
        }

        else
        {
          v40[1] = v0;
          Date.addingTimeInterval(_:)();
          Date.init()();
          v29 = static Date.< infix(_:_:)();
          v30 = *(v11 + 8);
          v30(v16, v10);
          if (v29)
          {
            v31 = v41;
            (*(v11 + 56))(v41, 1, 1, v10);
            sub_100031470(v31);
            sub_100031470(v31);
            v32 = static os_log_type_t.debug.getter();
            *&v44[0] = 0;
            *(&v44[0] + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(82);
            v33._countAndFlagsBits = 0xD000000000000032;
            v33._object = 0x8000000100096700;
            String.append(_:)(v33);
            sub_10004D698(&qword_1000B6A98, &type metadata accessor for Date);
            v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v34);

            v35._countAndFlagsBits = 0x664F6B636162202CLL;
            v35._object = 0xEE003D656D695466;
            String.append(_:)(v35);
            Double.write<A>(to:)();
            v36._countAndFlagsBits = 0x6E6572727563202CLL;
            v36._object = 0xEA00000000003D74;
            String.append(_:)(v36);
            Date.init()();
            v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v37);

            v30(v16, v10);
            v38._countAndFlagsBits = 32032;
            v38._object = 0xE200000000000000;
            String.append(_:)(v38);
            sub_10005E11C(v32, *&v44[0], *(&v44[0] + 1), 0xD000000000000054, 0x8000000100096260, 401);

            sub_10000BC10(v41, &qword_1000B7820, &unk_1000917B0);
            v30(v42, v10);
            v30(v23, v10);
            return 1;
          }

          v39 = static os_log_type_t.debug.getter();
          sub_10005E11C(v39, 0xD000000000000021, 0x80000001000966D0, 0xD000000000000054, 0x8000000100096260, 393);
          v30(v42, v10);
          v30(v23, v10);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000446E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000447AC, 0, 0);
}

uint64_t sub_1000447AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v8 = *(v0 + 32);
  (*(*(v0 + 56) + 16))(v1, v8 + qword_1000B7FC0, *(v0 + 48));
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = sub_100002074(&qword_1000B79E0, &qword_1000916F0);
  *v5 = v0;
  v5[1] = sub_1000448F8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x6F66286863746566, 0xEF293A646E613A72, sub_10004C024, v3, v6);
}

uint64_t sub_1000448F8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v5 = sub_100044AB4;
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_100044A48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100044A48()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100044AB4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t sub_100044B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v79 = a5;
  v95 = a4;
  v97 = a1;
  v87 = type metadata accessor for Logger();
  v7 = *(v87 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v87, v9);
  v81 = v10;
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = *(v99 + 64);
  __chkstk_darwin(v11, v13);
  v96 = &v73 - v14;
  v88 = a2;
  v15 = sub_1000454E0(a3);
  v16 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = a3;
    v19 = (a3 + 48);
    v20 = v17;
    do
    {
      v21 = *v19;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 += 6;
      --v20;
    }

    while (v20);
    v16 = aBlock[0];
    a3 = v18;
  }

  sub_10000BCB8(0, &qword_1000B7A10, CKFetchRecordZoneChangesOperation_ptr);

  v82 = v16;
  v102.is_nil = v15;
  isa = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v102, v103).super.super.super.super.isa;
  [(objc_class *)isa setFetchAllChanges:0];
  v80 = isa;
  v23 = [(objc_class *)isa group];
  if (v23)
  {
    v24 = v23;
    if (v17)
    {
      *(a3 + 72);
      *(a3 + 72);
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    [v24 setName:v25];
  }

  v26 = swift_allocObject();
  v89 = v26;
  *(v26 + 16) = &_swiftEmptyDictionarySingleton;
  sub_100031688(a3, (v26 + 16));
  v27 = v99;
  v91 = *(v99 + 16);
  v92 = v99 + 16;
  v91(v96, v97, v100);
  v86 = *(v7 + 16);
  v90 = v7 + 16;
  v28 = v87;
  v86(v83, v95, v87);
  v29 = *(v27 + 80);
  v30 = (v29 + 32) & ~v29;
  v75 = v30 + v12;
  v93 = v30;
  v31 = (v30 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = a3;
  v33 = *(v7 + 80);
  v77 = v31;
  v34 = (v33 + v31 + 8) & ~v33;
  v78 = v34 + v81;
  v76 = v34;
  v85 = v29 | v33;
  v74 = ((v34 + v81 + 7) & 0xFFFFFFFFFFFFFFF8);
  v98 = v7;
  v35 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v80;
  *(v36 + 16) = v88;
  *(v36 + 24) = v37;
  v84 = *(v27 + 32);
  v99 = v27 + 32;
  v84(v36 + v30, v96, v100);
  *(v36 + v31) = v32;
  v94 = *(v98 + 32);
  v98 += 32;
  v38 = v83;
  v94(v36 + v34, v83, v28);
  *(v74 + v36) = v82;
  *(v36 + v35) = v89;

  v39 = v88;

  v74 = v37;

  CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();
  v40 = v96;
  v41 = v100;
  v91(v96, v97, v100);
  v42 = v28;
  v86(v38, v95, v28);
  v43 = ((v75 + v33) & ~v33);
  v80 = v43;
  v81 = (v43 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = v81;
  v45 = swift_allocObject();
  v46 = v74;
  *(v45 + 16) = v39;
  *(v45 + 24) = v46;
  v47 = v40;
  v48 = v84;
  v84(v45 + v93, v47, v41);
  v94(v43 + v45, v38, v42);
  *(v45 + v44) = v89;

  v49 = v46;

  CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
  v50 = v96;
  v51 = v100;
  v91(v96, v97, v100);
  v52 = v87;
  v86(v38, v95, v87);
  v53 = swift_allocObject();
  *(v53 + 16) = v39;
  *(v53 + 24) = v49;
  v48(v53 + v93, v50, v51);
  *(v53 + v77) = v89;
  v54 = v52;
  v94(v53 + v76, v38, v52);
  aBlock[4] = sub_10004C5FC;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100046DB8;
  aBlock[3] = &unk_1000B0098;
  v55 = _Block_copy(aBlock);

  v56 = v49;

  [(objc_class *)v56 setRecordZoneChangeTokensUpdatedBlock:v55];
  _Block_release(v55);
  v57 = v96;
  v58 = v100;
  v91(v96, v97, v100);
  v59 = v95;
  v60 = v54;
  v61 = v86;
  v86(v38, v95, v54);
  v62 = v81;
  v63 = swift_allocObject();
  *(v63 + 16) = v39;
  *(v63 + 24) = v56;
  v84(v63 + v93, v57, v58);
  v64 = v38;
  v94(v80 + v63, v38, v60);
  v65 = v89;
  *(v63 + v62) = v89;

  v66 = v56;

  CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter();
  v67 = v100;
  v91(v57, v97, v100);
  v68 = v59;
  v69 = v87;
  v61(v64, v68, v87);
  v70 = swift_allocObject();
  *(v70 + 16) = v88;
  *(v70 + 24) = v66;
  v84(v70 + v93, v57, v67);
  v94(v80 + v70, v64, v69);
  *(v70 + v62) = v82;
  *(v70 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;

  v71 = v66;

  CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter();
  [v79 addOperation:v71];
}

void *sub_1000454E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v2 = (a1 + 64);
  v3 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v4 = v3;
    v6 = *(v2 - 3);
    v5 = *(v2 - 2);
    v7 = *(v2 - 1);
    v60 = *v2;
    v8 = v7;

    v9 = v5;
    v10 = [v9 zoneName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == 0x746C75616665645FLL && v13 == 0xEC000000656E6F5ALL)
    {
      goto LABEL_11;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_8;
    }

    v16 = [v9 zoneName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 == 0x617461646174656DLL && v19 == 0xED0000656E6F7A5FLL)
    {
LABEL_11:

      goto LABEL_12;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
LABEL_8:

LABEL_12:

      v3 = v4;
      goto LABEL_13;
    }

    v21 = v59;
    if (v7)
    {
      v57 = v8;
      v58 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(78);
      v22._countAndFlagsBits = 0xD000000000000036;
      v22._object = 0x8000000100096670;
      String.append(_:)(v22);
      v23 = [v9 zoneName];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27._countAndFlagsBits = v24;
      v27._object = v26;
      String.append(_:)(v27);

      v28._object = 0x80000001000966B0;
      v28._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v28);
      v29 = [v57 data];
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = Data.base64EncodedString(options:)(0);
      v34 = v32;
      v21 = v59;
      sub_100005A28(v30, v34);
      String.append(_:)(v33);

      v35._countAndFlagsBits = 32032;
      v35._object = 0xE200000000000000;
      String.append(_:)(v35);
      sub_10005E11C(v58, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 433);
    }

    v36 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
    [v36 setPreviousServerChangeToken:v8];
    if (!*(v21 + 16))
    {
      [v36 setFetchNewestChangesFirst:1];
      [v36 setResultsLimit:v60];
    }

    v3 = v4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      if (v4 >= 0)
      {
        v4 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v37 = v9;
      v38 = v36;
      v39 = __CocoaDictionary.count.getter();
      if (__OFADD__(v39, 1))
      {
        goto LABEL_39;
      }

      v3 = sub_10004A1E0(v4, v39 + 1);
    }

    else
    {
      v40 = v9;
      v41 = v36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = sub_100058024(v9);
    v45 = v3[2];
    v46 = (v44 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      break;
    }

    v49 = v44;
    if (v3[3] >= v48)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v53 = v43;
        sub_10005A65C();
        v43 = v53;
        if (v49)
        {
LABEL_32:
          v51 = v3[7];
          v52 = *(v51 + 8 * v43);
          *(v51 + 8 * v43) = v36;

          goto LABEL_13;
        }

        goto LABEL_34;
      }
    }

    else
    {
      sub_10005986C(v48, isUniquelyReferenced_nonNull_native);
      v43 = sub_100058024(v9);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_41;
      }
    }

    if (v49)
    {
      goto LABEL_32;
    }

LABEL_34:
    v3[(v43 >> 6) + 8] |= 1 << v43;
    *(v3[6] + 8 * v43) = v9;
    *(v3[7] + 8 * v43) = v36;

    v54 = v3[2];
    v47 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v47)
    {
      goto LABEL_40;
    }

    v3[2] = v55;
LABEL_13:
    v2 += 6;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100045A44(void *a1, void *a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if ((sub_10004632C(a5) & 1) == 0)
  {
    return;
  }

  if (a3)
  {
    v12 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(58);
    v13._countAndFlagsBits = 0xD000000000000036;
    v13._object = 0x8000000100096530;
    String.append(_:)(v13);
    swift_getErrorValue();
    v14._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32032;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    sub_10005E11C(v12, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 98);

    if (([a5 isCancelled] & 1) == 0)
    {
      [a5 cancel];
      *&v86 = a2;
      swift_errorRetain();
      sub_100002074(&qword_1000B7A08, &qword_100091788);
      CheckedContinuation.resume(throwing:)();
    }

    return;
  }

  v72 = a2;
  v16 = *(a7 + 16);
  v17 = a1;
  if (!v16)
  {
LABEL_10:
    v25 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(95);
    v26._countAndFlagsBits = 0xD00000000000004ALL;
    v26._object = 0x8000000100096620;
    String.append(_:)(v26);
    v27 = [v17 zoneID];
    v28 = [v27 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0x736575716572202CLL;
    v33._object = 0xEF3D73656E6F5A74;
    String.append(_:)(v33);
    sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
    v34._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 32032;
    v35._object = 0xE200000000000000;
    String.append(_:)(v35);
    sub_10005E11C(v25, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 81);
LABEL_11:

    return;
  }

  sub_10000BCB8(0, &qword_1000B7A28, NSObject_ptr);
  v18 = (a7 + 56);
  while (1)
  {
    v20 = *(v18 - 3);
    v19 = *(v18 - 2);
    v21 = *(v18 - 1);
    v22 = *v18;

    v23 = v21;
    v24 = [v17 zoneID];
    LOBYTE(v21) = static NSObject.== infix(_:_:)();

    if (v21)
    {
      break;
    }

    v18 += 6;

    if (!--v16)
    {
      goto LABEL_10;
    }
  }

  if (CKRecord.recordType.getter() == v20 && v36 == v19)
  {

    goto LABEL_18;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v37 & 1) == 0)
  {
    v66 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(67);
    v67._countAndFlagsBits = 0xD000000000000035;
    v67._object = 0x8000000100096570;
    String.append(_:)(v67);

    v68._countAndFlagsBits = v20;
    v68._object = v19;
    String.append(_:)(v68);

    v69._countAndFlagsBits = 0x3D646E756F66202CLL;
    v69._object = 0xE800000000000000;
    String.append(_:)(v69);
    v70._countAndFlagsBits = CKRecord.recordType.getter();
    String.append(_:)(v70);

    v71._countAndFlagsBits = 32032;
    v71._object = 0xE200000000000000;
    String.append(_:)(v71);
    sub_10005E11C(v66, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 86);

    goto LABEL_11;
  }

LABEL_18:
  v38 = static os_log_type_t.debug.getter();
  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v39._countAndFlagsBits = 0xD00000000000002ELL;
  v39._object = 0x80000001000965B0;
  String.append(_:)(v39);
  v40 = [v72 description];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 8200233;
  v45._object = 0xE300000000000000;
  String.append(_:)(v45);
  sub_10005E11C(v38, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 90);

  sub_10004CD6C(v72, 0);
  sub_10002FEE4(v72, &v86);
  v83 = v88;
  v84 = v89;
  v85 = v90;
  v81 = v86;
  v82 = v87;
  if (!*(&v86 + 1))
  {
    v58 = static os_log_type_t.error.getter();
    *&v76 = 0;
    *(&v76 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v59._countAndFlagsBits = 0xD00000000000003ALL;
    v59._object = 0x80000001000965E0;
    String.append(_:)(v59);
    v60 = [v72 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = 32032;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    sub_10005E11C(v58, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 95);

LABEL_28:

    return;
  }

  v78 = v88;
  v79 = v89;
  v80 = v90;
  v76 = v86;
  v77 = v87;
  v46 = [v17 zoneID];
  swift_beginAccess();
  v48 = sub_100046580(v75, v46);
  if (!*v47)
  {
    (v48)(v75, 0);
    swift_endAccess();

    sub_10000BC10(&v86, &qword_1000B7A30, &unk_1000917A0);
    goto LABEL_28;
  }

  v49 = v47;
  v50 = v47[1];
  v74[2] = v83;
  v74[3] = v84;
  v74[4] = v85;
  v74[0] = v81;
  v74[1] = v82;
  sub_100031284(v74, v73);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[1] = v50;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v50 = sub_100049A20(0, *(v50 + 2) + 1, 1, v50);
    v49[1] = v50;
  }

  v53 = *(v50 + 2);
  v52 = *(v50 + 3);
  if (v53 >= v52 >> 1)
  {
    v50 = sub_100049A20((v52 > 1), v53 + 1, 1, v50);
    v49[1] = v50;
  }

  *(v50 + 2) = v53 + 1;
  v54 = &v50[80 * v53];
  *(v54 + 2) = v76;
  v55 = v77;
  v56 = v78;
  v57 = v80;
  *(v54 + 5) = v79;
  *(v54 + 6) = v57;
  *(v54 + 3) = v55;
  *(v54 + 4) = v56;
  (v48)(v75, 0);
  swift_endAccess();

  sub_10000BC10(&v86, &qword_1000B7A30, &unk_1000917A0);
}

uint64_t sub_10004632C(void *a1)
{
  if (qword_1000B6658 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  if (qword_1000B7C78 && (v1 = a1, v2 = qword_1000B7C78, v3 = String._bridgeToObjectiveC()(), v4 = [v2 BOOLForKey:v3], v2, v3, a1 = v1, (v4 & 1) != 0))
  {
    v5 = static os_log_type_t.error.getter();
    sub_10005E11C(v5, 0xD00000000000001DLL, 0x8000000100096470, 0xD000000000000054, 0x8000000100096260, 244);
    sub_10000B6B0();
    swift_allocError();
    *v6 = 0xD00000000000001DLL;
    *(v6 + 8) = 0x8000000100096470;
    *(v6 + 16) = 2;
    swift_willThrow();
  }

  else if ([a1 isCancelled])
  {
    v8 = static os_log_type_t.debug.getter();
    sub_10005E11C(v8, 0xD000000000000054, 0x8000000100096410, 0xD000000000000054, 0x8000000100096260, 249);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t (*sub_1000464F4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10004A42C(v6, a2, a3);
  return sub_10004657C;
}

void (*sub_100046580(uint64_t **a1, uint64_t a2))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10004A4DC(v4, a2);
  return sub_10004E160;
}

void sub_1000465F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100046644(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  result = sub_10004632C(a5);
  if (result)
  {
    v9 = static os_log_type_t.debug.getter();
    v35[0] = 1;
    v35[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v10._object = 0x8000000100096500;
    v10._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v10);
    v11 = [a1 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x64726F636572202CLL;
    v16._object = 0xED00003D65707954;
    String.append(_:)(v16);
    v17._countAndFlagsBits = a2;
    v17._object = a3;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 32032;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    sub_10005E11C(v9, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 121);

    v19 = [a1 recordName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *&v37 = v20;
    *(&v37 + 1) = v22;
    *&v39 = 0;
    v38 = 0uLL;
    DWORD2(v39) = 0;
    BYTE12(v39) = 1;
    v40 = 0u;
    v41 = 0u;
    v23 = [a1 zoneID];
    swift_beginAccess();
    v25 = sub_100046580(v36, v23);
    if (*v24)
    {
      v26 = v24;
      v27 = v24[2];
      sub_100031284(&v37, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26[2] = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_100049A20(0, *(v27 + 2) + 1, 1, v27);
        v26[2] = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_100049A20((v29 > 1), v30 + 1, 1, v27);
        v26[2] = v27;
      }

      *(v27 + 2) = v30 + 1;
      v31 = &v27[80 * v30];
      *(v31 + 2) = v37;
      v32 = v38;
      v33 = v39;
      v34 = v41;
      *(v31 + 5) = v40;
      *(v31 + 6) = v34;
      *(v31 + 3) = v32;
      *(v31 + 4) = v33;
      (v25)(v36, 0);
    }

    else
    {
      (v25)(v36, 0);
    }

    swift_endAccess();

    return sub_1000312BC(&v37);
  }

  return result;
}

void sub_1000469D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if ((sub_10004632C(a6) & (a2 != 0)) != 0)
  {
    swift_beginAccess();
    v11 = *(a8 + 16);
    v12 = *(v11 + 16);
    v13 = a2;
    if (v12 && (v14 = sub_100058024(a1), (v15 & 1) != 0))
    {
      v16 = *(v11 + 56) + 40 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v41 = *(v16 + 24);
      v20 = *(v16 + 32);
      v21 = v20;
      v40 = v17;
      v22 = v17;
      v39 = v18;

      v38 = v19;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v38 = 0;
      v41 = 0;
      v20 = 0;
    }

    swift_endAccess();
    v36 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(88);
    v23._countAndFlagsBits = 0xD000000000000040;
    v23._object = 0x8000000100096490;
    String.append(_:)(v23);
    v24 = [v13 data];
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v13;
    v27 = v26;

    v28 = Data.base64EncodedString(options:)(0);
    sub_100005A28(v25, v27);
    String.append(_:)(v28);

    v29._object = 0x80000001000964E0;
    v29._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v29);
    v42[0] = v40;
    v42[1] = v39;
    v42[2] = v38;
    v42[3] = v41;
    v42[4] = v20;
    sub_10004CCB0(v40, v39, v38, v41, v20);
    sub_100002074(&qword_1000B7A18, &qword_100091790);
    v30._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 2099281184;
    v31._object = 0xE400000000000000;
    String.append(_:)(v31);
    sub_10005E11C(v36, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 143);

    swift_beginAccess();
    v33 = sub_100046580(v42, a1);
    if (*v32)
    {
      v34 = v32[4];
      v32[4] = a2;
      v35 = v37;
      (v33)(v42, 0);
      swift_endAccess();

      sub_10004CD0C(v40, v39, v38, v41, v20);
    }

    else
    {
      (v33)(v42, 0);
      swift_endAccess();
      sub_10004CD0C(v40, v39, v38, v41, v20);
    }
  }
}

uint64_t sub_100046DB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a4)
  {

    v9 = a2;
    v10 = a3;
    v11 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {

    v14 = a2;
    v15 = a3;
    v13 = 0xF000000000000000;
  }

  v8(a2, a3, v4, v13);

  sub_100005A14(v4, v13);
}

uint64_t sub_1000472E0(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10004632C(a4);
  if (result)
  {
    if (a2)
    {
      v12 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(66);
      v13._countAndFlagsBits = 0xD00000000000003ELL;
      v13._object = 0x8000000100096390;
      String.append(_:)(v13);
      swift_getErrorValue();
      v14._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 32032;
      v15._object = 0xE200000000000000;
      String.append(_:)(v15);
      sub_10005E11C(v12, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 197);

      result = [a4 isCancelled];
      if ((result & 1) == 0)
      {
        [a4 cancel];
        swift_errorRetain();
        sub_100002074(&qword_1000B7A08, &qword_100091788);
        return CheckedContinuation.resume(throwing:)();
      }
    }

    else
    {
      v16 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(60);
      v17._countAndFlagsBits = 0xD000000000000038;
      v17._object = 0x80000001000963D0;
      String.append(_:)(v17);
      sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
      v18._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 32032;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      sub_10005E11C(v16, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 194);

      swift_beginAccess();
      v20 = *(a8 + 16);
      v23 = *(v20 + 64);
      v22 = v20 + 64;
      v21 = v23;
      v24 = 1 << *(*(a8 + 16) + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & v21;
      v27 = (v24 + 63) >> 6;
      v42 = *(a8 + 16);
      result = swift_bridgeObjectRetain_n();
      v28 = 0;
      v29 = _swiftEmptyArrayStorage;
      if (v26)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v30 >= v27)
        {

          sub_100002074(&qword_1000B7A08, &qword_100091788);
          return CheckedContinuation.resume(returning:)();
        }

        v26 = *(v22 + 8 * v30);
        ++v28;
        if (v26)
        {
          v28 = v30;
          do
          {
LABEL_12:
            v31 = *(v42 + 56) + 40 * (__clz(__rbit64(v26)) | (v28 << 6));
            v33 = *v31;
            v32 = *(v31 + 8);
            v34 = *(v31 + 16);
            v35 = *(v31 + 24);
            v36 = *(v31 + 32);
            v37 = v36;
            v38 = v33;

            result = swift_isUniquelyReferenced_nonNull_native();
            v43 = v38;
            if ((result & 1) == 0)
            {
              result = sub_100049B40(0, v29[2] + 1, 1, v29);
              v29 = result;
            }

            v40 = v29[2];
            v39 = v29[3];
            if (v40 >= v39 >> 1)
            {
              result = sub_100049B40((v39 > 1), v40 + 1, 1, v29);
              v29 = result;
            }

            v26 &= v26 - 1;
            v29[2] = v40 + 1;
            v41 = &v29[5 * v40];
            v41[4] = v43;
            v41[5] = v32;
            v41[6] = v34;
            *(v41 + 56) = v35;
            v41[8] = v36;
          }

          while (v26);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100047744()
{
  v1 = v0[4];

  sub_100003558(v0 + 5);
  v2 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10004778C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011E6C;

  return sub_100041D90(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_100047854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 24) = v9;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v4 + 32) = v10;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  return _swift_task_switch(sub_10004790C, 0, 0);
}

uint64_t sub_10004790C()
{
  v1 = sub_100002074(&qword_1000B79E0, &qword_1000916F0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  v3 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100047A08;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v1, 0, 0, &unk_100091700, v2, v1);
}

uint64_t sub_100047A08()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100047B94;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100047B24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100047B24()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100047B94()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[7];

  return v4();
}

uint64_t sub_100047C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(sub_100002074(&qword_1000B7580, &qword_10008EEC0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100047CAC, 0, 0);
}

uint64_t sub_100047CAC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_10004889C(v1, &unk_100091720, v7);
  sub_10000BC10(v1, &qword_1000B7580, &qword_10008EEC0);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_10004889C(v1, &unk_100091730, v8);
  sub_10000BC10(v1, &qword_1000B7580, &qword_10008EEC0);
  v9 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = sub_100002074(&qword_1000B79E8, &qword_100091738);
  *v10 = v0;
  v10[1] = sub_100047EA8;
  v12 = v0[3];

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, 0, 0, v11);
}

uint64_t sub_100047EA8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10004808C;
  }

  else
  {
    v3 = sub_100047FBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100047FBC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = **(v0 + 24);
    sub_100002074(&qword_1000B79E0, &qword_1000916F0);
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    ThrowingTaskGroup.cancelAll()();

    v4 = *(v0 + 8);

    v4(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004808C()
{
  v1 = *(v0 + 48);
  v2 = **(v0 + 24);
  sub_100002074(&qword_1000B79E0, &qword_1000916F0);
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  ThrowingTaskGroup.cancelAll()();

  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3();
}

uint64_t sub_100048148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(*(sub_100002074(&qword_1000B7580, &qword_10008EEC0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000481E8, 0, 0);
}

uint64_t sub_1000481E8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_100048A98(v1, &unk_1000917F0, v7);
  sub_10000BC10(v1, &qword_1000B7580, &qword_10008EEC0);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_100048A98(v1, &unk_100091800, v8);
  sub_10000BC10(v1, &qword_1000B7580, &qword_10008EEC0);
  v9 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
  *v10 = v0;
  v10[1] = sub_1000483E4;
  v12 = v0[2];

  return ThrowingTaskGroup.next(isolation:)(v0 + 8, 0, 0, v11);
}

uint64_t sub_1000483E4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000485A8;
  }

  else
  {
    v3 = sub_1000484F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000484F8()
{
  if (*(v0 + 64))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 40);
    v2 = **(v0 + 16);
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    ThrowingTaskGroup.cancelAll()();

    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_1000485A8()
{
  v1 = *(v0 + 40);
  v2 = **(v0 + 16);
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  ThrowingTaskGroup.cancelAll()();

  v3 = *(v0 + 8);
  v4 = *(v0 + 56);

  return v3();
}

uint64_t sub_10004864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10004866C, 0, 0);
}

uint64_t sub_10004866C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100048788;
  v5 = v0[5];

  return v7(v5);
}

uint64_t sub_100048788()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10004E198;
  }

  else
  {
    v3 = sub_10004E19C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = v21 - v10;
  sub_100011DFC(a1, v21 - v10, &qword_1000B7580, &qword_10008EEC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000BC10(v11, &qword_1000B7580, &qword_10008EEC0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  sub_100002074(&qword_1000B79E0, &qword_1000916F0);
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t sub_100048A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = v21 - v10;
  sub_100011DFC(a1, v21 - v10, &qword_1000B7580, &qword_10008EEC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000BC10(v11, &qword_1000B7580, &qword_10008EEC0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t sub_100048C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_100048CA8, 0, 0);
}

uint64_t sub_100048CA8()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100048DC4;
  v5 = v0[5];

  return v7(v5);
}

uint64_t sub_100048DC4()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100048F3C;
  }

  else
  {
    v3 = sub_100048ED8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100048ED8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100048F3C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_100048FA0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000490C8, 0, 0);
}

uint64_t sub_1000490C8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v8 = *(v4 + 8);
  *(v0 + 112) = v8;
  *(v0 + 120) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v9 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  v11 = sub_10004D698(&qword_1000B79F0, &type metadata accessor for ContinuousClock);
  *v10 = v0;
  v10[1] = sub_100049228;
  v12 = *(v0 + 104);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v12, v0 + 16, v13, v14, v11);
}

uint64_t sub_100049228()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v12 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[14];
  v4 = v2[15];
  if (v0)
  {
    v6 = v2[13];
    v7 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5(v6, v7);
    v8 = sub_100049448;
  }

  else
  {
    v9 = v2[13];
    v10 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5(v9, v10);
    v8 = sub_1000493A4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000493A4()
{
  sub_10004BCB0();
  swift_allocError();
  swift_willThrow();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100049448()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000494C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = type metadata accessor for ContinuousClock();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock.Instant();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000490C8, 0, 0);
}

char *sub_1000495F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002074(&qword_1000B6900, &unk_10008F600);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_1000496FC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002074(&qword_1000B7BC8, &qword_100091E48);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100002074(&qword_1000B7388, &qword_100091E50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100049830(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002074(&qword_1000B7A60, &qword_100091818);
  v10 = *(sub_100002074(&qword_1000B7A68, &unk_100091820) - 8);
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
  v15 = *(sub_100002074(&qword_1000B7A68, &unk_100091820) - 8);
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

char *sub_100049A20(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002074(&qword_1000B7A20, &qword_100091798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100049B40(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002074(&qword_1000B79D0, &qword_1000916E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002074(&qword_1000B79D8, &qword_1000916E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100049C88(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002074(&qword_1000B7A48, &qword_1000917C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002074(&qword_1000B7A00, &qword_100091760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100049DCC(uint64_t a1, uint64_t a2)
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

  sub_100002074(&qword_1000B6900, &unk_10008F600);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_100049E50(uint64_t a1, uint64_t a2)
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

  sub_100002074(&qword_1000B7A78, &qword_100091830);
  v4 = *(type metadata accessor for NemesisError() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100049F4C(char *a1, int64_t a2, char a3)
{
  result = sub_100049F8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100049F6C(void *a1, int64_t a2, char a3)
{
  result = sub_10004A098(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}
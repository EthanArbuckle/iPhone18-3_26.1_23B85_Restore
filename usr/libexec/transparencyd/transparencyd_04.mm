uint64_t sub_1000AACA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000AAD20(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000AAE98()
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

uint64_t sub_1000AAF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AAFA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000AB038(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000AB050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095820(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000AB18C()
{
  v1 = *v0;
  sub_1000A4A5C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1000AB1C0()
{
  v1 = *(v0 + 16);
  sub_1000A4A5C(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1000AB1F4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudDeviceData() + 24);

  return sub_1000AB284(v3, a1);
}

uint64_t type metadata accessor for CloudDeviceData()
{
  result = qword_10038F980;
  if (!qword_10038F980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AB284(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB2F4()
{
  v1 = (v0 + *(type metadata accessor for CloudDeviceData() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1000AB334()
{
  v1 = (v0 + *(type metadata accessor for CloudDeviceData() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1000AB374()
{
  v1 = *(v0 + *(type metadata accessor for CloudDeviceData() + 36));
}

uint64_t sub_1000AB3E0()
{
  v1 = *v0;
  v2 = 0x656B6F5468737570;
  v3 = 1936748641;
  if (v1 != 5)
  {
    v3 = 0x64657463656A6E69;
  }

  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x754E6C6169726573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1635017060;
  if (v1 != 1)
  {
    v5 = 7107700;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000AB4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B6910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000AB4E0(uint64_t a1)
{
  v2 = sub_1000AB898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AB51C(uint64_t a1)
{
  v2 = sub_1000AB898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AB558(void *a1)
{
  v3 = v1;
  v5 = sub_100095820(&qword_100383FB8, &qword_1002D6BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000A0E50(a1, a1[3]);
  sub_1000AB898();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v25 = *v3;
  v26 = v11;
  v24 = 0;
  sub_1000A4A5C(v25, v11);
  sub_1000AB8EC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_10009A9D4(v25, v26);
  }

  else
  {
    sub_10009A9D4(v25, v26);
    v12 = v3[3];
    v25 = v3[2];
    v26 = v12;
    v24 = 1;
    sub_1000A4A5C(v25, v12);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10009A9D4(v25, v26);
    v14 = type metadata accessor for CloudDeviceData();
    v15 = v14[6];
    LOBYTE(v25) = 2;
    type metadata accessor for Date();
    sub_1000B74A0(&qword_100384690, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v3 + v14[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = (v3 + v14[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + v14[9]);
    v24 = 5;
    sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
    sub_1000ABFAC(&unk_100385190);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v3 + v14[10]);
    LOBYTE(v25) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000AB898()
{
  result = qword_10038F870[0];
  if (!qword_10038F870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10038F870);
  }

  return result;
}

unint64_t sub_1000AB8EC()
{
  result = qword_100383FC0;
  if (!qword_100383FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383FC0);
  }

  return result;
}

uint64_t sub_1000AB940@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v30 = sub_100095820(&qword_100383FE0, &qword_1002D6BC8);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v30);
  v11 = &v28 - v10;
  v12 = type metadata accessor for CloudDeviceData();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v31 = a1;
  sub_1000A0E50(a1, v17);
  sub_1000AB898();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10009A9E8(v31);
  }

  v18 = v7;
  v28 = v15;
  v33 = 0;
  sub_1000ABEE8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v28;
  *v28 = v32;
  v33 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v19 + 16) = v32;
  type metadata accessor for Date();
  LOBYTE(v32) = 2;
  sub_1000B74A0(&unk_100383FF0, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000ABF3C(v18, v19 + v12[6]);
  LOBYTE(v32) = 3;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = (v19 + v12[7]);
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v32) = 4;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = (v19 + v12[8]);
  *v24 = v23;
  v24[1] = v25;
  sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
  v33 = 5;
  sub_1000ABFAC(&unk_1003853D0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v19 + v12[9]) = v32;
  LOBYTE(v32) = 6;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v8 + 8))(v11, v30);
  *(v19 + v12[10]) = v26;
  sub_1000AC018(v19, v29);
  sub_10009A9E8(v31);
  return sub_1000AC07C(v19);
}

unint64_t sub_1000ABEE8()
{
  result = qword_100383FE8;
  if (!qword_100383FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383FE8);
  }

  return result;
}

uint64_t sub_1000ABF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ABFAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000967DC(&unk_100383FD0, &qword_1002D6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000AC018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudDeviceData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AC07C(uint64_t a1)
{
  v2 = type metadata accessor for CloudDeviceData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AC0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v17 = type metadata accessor for CloudDeviceData();
  result = sub_1000ABF3C(a5, a9 + v17[6]);
  v19 = (a9 + v17[7]);
  *v19 = a6;
  v19[1] = a7;
  v20 = (a9 + v17[8]);
  *v20 = a8;
  v20[1] = a10;
  *(a9 + v17[9]) = a11;
  *(a9 + v17[10]) = a12;
  return result;
}

uint64_t sub_1000AC230()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_10038F858);
  sub_10009597C(v0, qword_10038F858);
  return Logger.init(transparencyCategory:)();
}

id sub_1000AC2BC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_1000AC300(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1000AC390()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000AC3E0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000AC470;
}

void sub_1000AC470(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1000AC4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0x76654464756F6C43;
  *(v6 + 24) = 0xEB00000000656369;
  swift_unknownObjectWeakInit();
  *(v6 + 64) = xmmword_1002D6B50;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1000AC5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0x76654464756F6C43;
  *(v3 + 24) = 0xEB00000000656369;
  swift_unknownObjectWeakInit();
  *(v3 + 64) = xmmword_1002D6B50;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1000AC6AC(double a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_1000AC770(double a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1000AC800()
{
  (*(*v0 + 240))();
  (*(*v0 + 216))();
  return Date.addingTimeInterval(_:)();
}

uint64_t sub_1000AC8A8(uint64_t a1)
{
  v3 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_1000AB284(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000057C4(v6, &qword_100383FB0, &unk_1002D6690);
    v15 = 1;
  }

  else
  {
    v16 = (*(v8 + 32))(v14, v6, v7);
    (*(*v1 + 240))(v16);
    (*(*v1 + 216))();
    Date.addingTimeInterval(_:)();
    v15 = static Date.< infix(_:_:)();
    v17 = *(v8 + 8);
    v17(v12, v7);
    v17(v14, v7);
  }

  return v15 & 1;
}

uint64_t sub_1000ACB08(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = (*(*v5 + 344))();
  if (!v12)
  {
    return v12;
  }

  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10009597C(v13, qword_10038F858);
  v14 = static os_log_type_t.error.getter();
  v15 = v12;
  v16 = Logger.logObject.getter();

  if (os_log_type_enabled(v16, v14))
  {
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v17 = 136315138;
    v37 = a2;
    v18 = [v15 recordName];
    v33 = v14;
    v19 = v15;
    v20 = a1;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = a3;
    v22 = a5;
    v24 = v23;

    v25 = v21;
    a1 = v20;
    v15 = v19;
    v26 = sub_1000999E4(v25, v24, aBlock);
    a5 = v22;
    a3 = v35;

    *(v17 + 4) = v26;
    a2 = v37;
    _os_log_impl(&_mh_execute_header, v16, v33, "updating record %s", v17, 0xCu);
    sub_10009A9E8(v34);
  }

  v40 = 0;
  v38 = (*(*v6 + 160))();
  v27 = swift_allocObject();
  v27[2] = v15;
  v27[3] = v6;
  v27[4] = a1;
  v27[5] = a2;
  v27[6] = a3;
  v27[7] = a4;
  v27[8] = &v40;
  v27[9] = a5;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1000ADE28;
  *(v28 + 24) = v27;
  aBlock[4] = sub_1000A040C;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031F8C0;
  v29 = _Block_copy(aBlock);
  v30 = v15;
  v31 = v29;
  v36 = v30;

  sub_100002D78(a1, a2);
  sub_100002D78(a3, a4);

  [v38 performBlockAndWait:v31];

  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    v12 = v40;

    return v12;
  }

  __break(1u);
  return result;
}

void sub_1000ACEB8(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, _BYTE *a7, void *a8)
{
  v139 = a8;
  v143 = a6;
  v144 = a7;
  v134 = a4;
  v135 = a5;
  v133 = a3;
  v10 = type metadata accessor for Date();
  v140 = *(v10 - 8);
  v11 = *(v140 + 64);
  v12 = __chkstk_darwin(v10);
  v136 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v130 - v14;
  v15 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v131 = &v130 - v17;
  v138 = type metadata accessor for String.Encoding();
  v18 = *(v138 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v138);
  v137 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002D47B0;
  v23 = [a1 recordName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_10009FD4C();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  v27 = NSPredicate.init(format:_:)();
  [v21 setPredicate:v27];

  v145 = 0;
  v28 = [v21 execute:&v145];
  v29 = v145;
  v142 = v10;
  if (v28)
  {
    v30 = v28;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v29;

    if (v31 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v31 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v33 = *(v31 + 32);
      }

      v34 = v33;

      if (qword_10038F850 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10009597C(v35, qword_10038F858);
      v36 = a1;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v145 = v143;
        *v39 = 136315138;
        v40 = [v36 recordName];
        v41 = v18;
        v42 = v34;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = a2;
        v45 = v21;
        v47 = v46;

        v48 = v43;
        v34 = v42;
        v18 = v41;
        v49 = sub_1000999E4(v48, v47, &v145);
        v21 = v45;
        a2 = v44;

        *(v39 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v37, v38, "self: updating existing record %s", v39, 0xCu);
        sub_10009A9E8(v143);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v50 = v145;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_10009597C(v51, qword_10038F858);
  v52 = static os_log_type_t.error.getter();
  v53 = a1;
  v54 = Logger.logObject.getter();
  v132 = v53;

  if (os_log_type_enabled(v54, v52))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v145 = v56;
    *v55 = 136315138;
    v57 = [v132 recordName];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = a2;
    v60 = v21;
    v62 = v61;

    v63 = sub_1000999E4(v58, v62, &v145);
    v21 = v60;
    a2 = v59;

    *(v55 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v54, v52, "creating new record %s", v55, 0xCu);
    sub_10009A9E8(v56);
  }

  v64 = (*(*a2 + 160))();
  v34 = [objc_allocWithZone(CloudDevice) initWithContext:v64];

  if (!v34)
  {
    *v144 = 1;

    return;
  }

  v65 = [v132 recordName];
  if (!v65)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = String._bridgeToObjectiveC()();
  }

  [v34 setRecordID:v65];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v34 setPushToken:isa];

  v67 = Data._bridgeToObjectiveC()().super.isa;
  [v34 setRegistrationData:v67];

  sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
  v68 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v34 setLocal:v68];

  *v144 = 1;
LABEL_23:
  v69 = *(a2 + 48);
  v143 = v34;
  if (!v69)
  {
    goto LABEL_44;
  }

  v70 = [v69 osVersion];
  if (!v70)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = String._bridgeToObjectiveC()();
  }

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;
  v74 = [v34 osVersion];
  if (v74)
  {
    v75 = v74;
    v135 = a2;
    v76 = v21;
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    if (v77 == v71 && v79 == v73)
    {

      v21 = v76;
      a2 = v135;
      v34 = v143;
      goto LABEL_35;
    }

    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = v76;
    a2 = v135;
    v34 = v143;
    if (v80)
    {

      goto LABEL_35;
    }
  }

  else
  {

    v34 = v143;
  }

  [v34 setOsVersion:v70];

  *v144 = 1;
LABEL_35:
  v81 = [v69 serialNumber];
  if (!v81)
  {
    goto LABEL_44;
  }

  v82 = v81;
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;
  v86 = [v34 serialNumber];
  if (v86)
  {
    v87 = v86;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    if (v88 == v83 && v90 == v85)
    {

      v34 = v143;
      goto LABEL_44;
    }

    v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v34 = v143;
    if (v91)
    {

      goto LABEL_44;
    }
  }

  else
  {
  }

  [v34 setSerialNumber:v82];

  *v144 = 1;
LABEL_44:
  v92 = [v34 local];
  sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
  v93.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v94 = v93.super.super.isa;
  if (!v92)
  {

    goto LABEL_48;
  }

  v95 = static NSObject.== infix(_:_:)();

  if ((v95 & 1) == 0)
  {
LABEL_48:
    v96 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v34 setLocal:v96];

    *v144 = 1;
  }

  v145 = v139;
  sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
  sub_1000B4E10();
  BidirectionalCollection<>.joined(separator:)();
  v97 = v137;
  static String.Encoding.utf8.getter();
  v98 = String.data(using:allowLossyConversion:)();
  v100 = v99;

  (*(v18 + 8))(v97, v138);
  v101 = [v34 applications];
  v139 = (a2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
  if (v101)
  {
    v102 = v101;
    v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;

    if (v100 >> 60 == 15)
    {
      if (v105 >> 60 != 15)
      {
        sub_1000A4A5C(v98, v100);
        sub_10009A9D4(v98, v100);
        sub_10009A9D4(v103, v105);
        v106 = 0;
LABEL_64:
        v107 = v143;
        [v143 setApplications:v106];

        *v144 = 1;
        v108 = v140;
LABEL_65:
        v114 = a2;
        v115 = v21;
        v116 = v136;
        Date.init()();
        v117 = v141;
        (*(*v114 + 264))(v116);
        v118 = *(v108 + 8);
        v119 = v116;
        v21 = v115;
        a2 = v114;
        v120 = v142;
        v118(v119, v142);
        v121 = Date._bridgeToObjectiveC()().super.isa;
        v118(v117, v120);
        [v107 setTimeToLive:v121];

        *v144 = 1;
LABEL_66:
        v122 = String._bridgeToObjectiveC()();
        [v107 setCkstate:v122];

        goto LABEL_67;
      }

      goto LABEL_54;
    }

    if (v105 >> 60 != 15)
    {
      sub_1000A4A5C(v98, v100);
      sub_1000A4A5C(v103, v105);
      v113 = sub_100095AC0(v98, v100, v103, v105);
      sub_10009A9D4(v103, v105);
      sub_10009A9D4(v103, v105);
      sub_10009A9D4(v98, v100);
      if (v113)
      {
        goto LABEL_55;
      }

LABEL_63:
      sub_100002D78(v98, v100);
      v106 = Data._bridgeToObjectiveC()().super.isa;
      sub_10009A9D4(v98, v100);
      goto LABEL_64;
    }

LABEL_62:
    sub_1000A4A5C(v98, v100);
    sub_10009A9D4(v98, v100);
    sub_10009A9D4(v103, v105);
    goto LABEL_63;
  }

  if (v100 >> 60 != 15)
  {
    v103 = 0;
    v105 = 0xF000000000000000;
    goto LABEL_62;
  }

LABEL_54:
  sub_1000A4A5C(v98, v100);
  sub_10009A9D4(v98, v100);
LABEL_55:
  v107 = v143;
  v108 = v140;
  if (*v144)
  {
    goto LABEL_65;
  }

  v109 = [v143 timeToLive];
  if (v109)
  {
    v110 = v131;
    v111 = v109;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v112 = 0;
  }

  else
  {
    v112 = 1;
    v110 = v131;
  }

  v127 = v142;
  (*(v108 + 56))(v110, v112, 1, v142);
  v128 = v141;
  Date.init()();
  v129 = (*(*a2 + 272))(v110, v128);
  (*(v108 + 8))(v128, v127);
  sub_1000057C4(v110, &qword_100383FB0, &unk_1002D6690);
  v107 = v143;
  if (v129)
  {
    goto LABEL_65;
  }

  if (*v144 == 1)
  {
    goto LABEL_66;
  }

LABEL_67:
  v123 = (*(*a2 + 160))();
  v145 = 0;
  v124 = [v123 save:&v145];

  if (v124)
  {
    v125 = v145;

    sub_10009A9D4(v98, v100);
  }

  else
  {
    v126 = v145;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10009A9D4(v98, v100);
  }
}

uint64_t sub_1000ADE3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000ADE54(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(*v6 + 344))();
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v32 = 0;
  v30 = (*(*v6 + 160))();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &v32;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = v6;
  v15[9] = a5;
  v15[10] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000B3A44;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031F938;
  v17 = _Block_copy(aBlock);
  v18 = v14;
  sub_100002D78(a3, a4);
  sub_100002D78(a1, a2);

  [v30 performBlockAndWait:v17];

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (qword_10038F850 != -1)
  {
LABEL_10:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10009597C(v20, qword_10038F858);
  v21 = static os_log_type_t.info.getter();
  sub_100002D78(a1, a2);
  v22 = Logger.logObject.getter();
  sub_1000956CC(a1, a2);
  if (os_log_type_enabled(v22, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 67109378;
    swift_beginAccess();
    *(v23 + 4) = v32;
    *(v23 + 8) = 2080;
    v25 = sub_1000DEC98(a1, a2);
    v27 = sub_1000999E4(v25, v26, aBlock);

    *(v23 + 10) = v27;
    _os_log_impl(&_mh_execute_header, v22, v21, "should update record %{BOOL}d %s", v23, 0x12u);
    sub_10009A9E8(v24);
  }

  swift_beginAccess();
  v28 = v32;

  return v28;
}

void sub_1000AE1FC(void *a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v117 = a7;
  v118 = a5;
  v112 = a6;
  v114 = a4;
  v123 = a3;
  v129 = a2;
  v116 = type metadata accessor for Date();
  v11 = *(v116 - 8);
  v12 = v11[8];
  __chkstk_darwin(v116);
  v115 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v124 = &v100 - v16;
  v17 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002D47B0;
  v19 = [a1 recordName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10009FD4C();
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v23 = NSPredicate.init(format:_:)();
  [v17 setPredicate:v23];

  v130 = 0;
  v24 = [v17 execute:&v130];
  v25 = v130;
  if (v24)
  {
    v26 = v24;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v25;

    v29 = v27;
    v103 = a8;
    v104 = v17;
    if (v27 >> 62)
    {
      goto LABEL_116;
    }

    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v124;
    while (v30)
    {
      v32 = 0;
      v122 = 0;
      v108 = a9;
      v33 = v29 & 0xC000000000000001;
      v128 = v29 & 0xFFFFFFFFFFFFFF8;
      if (v123)
      {
        v34 = 0;
      }

      else
      {
        v34 = v114 == 0xC000000000000000;
      }

      v35 = !v34;
      v119 = v35;
      v127 = v114 >> 62;
      v36 = __OFSUB__(HIDWORD(v123), v123);
      v106 = v36;
      v105 = HIDWORD(v123) - v123;
      v113 = BYTE6(v114);
      if (v118)
      {
        v37 = 0;
      }

      else
      {
        v37 = v112 == 0xC000000000000000;
      }

      v38 = !v37;
      v109 = v38;
      v120 = v112 >> 62;
      v39 = __OFSUB__(HIDWORD(v118), v118);
      v102 = v39;
      v101 = HIDWORD(v118) - v118;
      v107 = BYTE6(v112);
      v111 = (v11 + 7);
      v110 = (v11 + 1);
      v121 = v29;
      v125 = v29 & 0xC000000000000001;
      v126 = v30;
      while (1)
      {
        if (v33)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *(v128 + 16))
          {
            goto LABEL_111;
          }

          v40 = *(v29 + 8 * v32 + 32);
        }

        v41 = v40;
        v42 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v43 = [v40 registrationData];
        if (!v43)
        {

LABEL_24:
          *v129 = 1;
          goto LABEL_25;
        }

        v44 = v43;
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = [v41 pushToken];
        if (!v47)
        {

          sub_1000956CC(v11, v46);
          goto LABEL_24;
        }

        v48 = v47;
        v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = v46 >> 62;
        if (v46 >> 62 == 3)
        {
          if (v11)
          {
            v53 = 0;
          }

          else
          {
            v53 = v46 == 0xC000000000000000;
          }

          v54 = v127;
          v56 = !v53 || v127 < 3;
          if (((v56 | v119) & 1) == 0)
          {
            goto LABEL_62;
          }

          v57 = 0;
        }

        else
        {
          v54 = v127;
          if (v52)
          {
            if (v52 == 1)
            {
              LODWORD(v57) = HIDWORD(v11) - v11;
              if (__OFSUB__(HIDWORD(v11), v11))
              {
                goto LABEL_114;
              }

              v57 = v57;
            }

            else
            {
              v59 = v11[2];
              v58 = v11[3];
              v60 = __OFSUB__(v58, v59);
              v57 = v58 - v59;
              if (v60)
              {
                goto LABEL_115;
              }
            }
          }

          else
          {
            v57 = BYTE6(v46);
          }
        }

        if (v54 > 1)
        {
          if (v54 != 2)
          {
            if (v57)
            {
              goto LABEL_103;
            }

            goto LABEL_62;
          }

          v63 = *(v123 + 16);
          v62 = *(v123 + 24);
          v60 = __OFSUB__(v62, v63);
          v61 = v62 - v63;
          if (v60)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v61 = v113;
          if (v54)
          {
            v61 = v105;
            if (v106)
            {
              goto LABEL_113;
            }
          }
        }

        if (v57 != v61)
        {
          goto LABEL_103;
        }

        if (v57 >= 1)
        {
          v64 = v123;
          v65 = v114;
          sub_100002D78(v123, v114);
          v66 = v64;
          v67 = v122;
          v68 = sub_1000948E4(v11, v46, v66, v65);
          v122 = v67;
          v29 = v121;
          if ((v68 & 1) == 0)
          {
LABEL_103:

            sub_1000956CC(v49, v51);
            sub_1000956CC(v11, v46);
            *v129 = 1;
LABEL_107:
            v33 = v125;
            v30 = v126;
            goto LABEL_25;
          }
        }

LABEL_62:
        v69 = v51 >> 62;
        if (v51 >> 62 == 3)
        {
          if (v49)
          {
            v70 = 0;
          }

          else
          {
            v70 = v51 == 0xC000000000000000;
          }

          v71 = v120;
          v73 = !v70 || v120 < 3;
          if (((v73 | v109) & 1) == 0)
          {
            goto LABEL_91;
          }

          v74 = 0;
          if (v120 <= 1)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v71 = v120;
          if (v69 == 2)
          {
            v76 = *(v49 + 16);
            v75 = *(v49 + 24);
            v60 = __OFSUB__(v75, v76);
            v74 = v75 - v76;
            if (v60)
            {
              goto LABEL_121;
            }

            if (v120 <= 1)
            {
LABEL_82:
              v77 = v107;
              if (v71)
              {
                v77 = v101;
                if (v102)
                {
                  goto LABEL_120;
                }
              }

              goto LABEL_88;
            }
          }

          else if (v69 == 1)
          {
            LODWORD(v74) = HIDWORD(v49) - v49;
            if (__OFSUB__(HIDWORD(v49), v49))
            {
              goto LABEL_122;
            }

            v74 = v74;
            if (v120 <= 1)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v74 = BYTE6(v51);
            if (v120 <= 1)
            {
              goto LABEL_82;
            }
          }
        }

        if (v71 == 2)
        {
          v79 = *(v118 + 16);
          v78 = *(v118 + 24);
          v60 = __OFSUB__(v78, v79);
          v77 = v78 - v79;
          if (v60)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
          }

LABEL_88:
          if (v74 != v77)
          {
            goto LABEL_103;
          }

          if (v74 >= 1)
          {
            v80 = v118;
            v81 = v112;
            sub_100002D78(v118, v112);
            v82 = v80;
            v83 = v122;
            v84 = sub_1000948E4(v49, v51, v82, v81);
            v122 = v83;
            v29 = v121;
            if ((v84 & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          goto LABEL_91;
        }

        if (v74)
        {
          goto LABEL_103;
        }

LABEL_91:
        v85 = [v41 timeToLive];
        if (v85)
        {
          v86 = v85;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v87 = 0;
        }

        else
        {
          v87 = 1;
        }

        v88 = v31;
        v89 = v116;
        (*v111)(v88, v87, 1, v116);
        v90 = v115;
        Date.init()();
        v91 = (*(*v117 + 272))(v124, v90);
        v92 = v89;
        v31 = v124;
        (*v110)(v90, v92);
        sub_1000057C4(v31, &qword_100383FB0, &unk_1002D6690);
        if (v91)
        {
LABEL_95:

          sub_1000956CC(v11, v46);
          sub_1000956CC(v49, v51);
          goto LABEL_96;
        }

        if (!v108)
        {

          sub_1000956CC(v11, v46);
          sub_1000956CC(v49, v51);
          goto LABEL_106;
        }

        v93 = [v41 osVersion];
        if (!v93)
        {
          goto LABEL_95;
        }

        v94 = v93;
        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v97 = v96;

        if (v95 != v103 || v97 != v108)
        {
          v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1000956CC(v11, v46);
          sub_1000956CC(v49, v51);
          v31 = v124;
          if (v98)
          {
LABEL_106:
            v29 = v121;
            goto LABEL_107;
          }

LABEL_96:
          *v129 = 1;
          goto LABEL_106;
        }

        sub_1000956CC(v11, v46);
        sub_1000956CC(v49, v51);
        v29 = v121;
        v33 = v125;
        v30 = v126;
        v31 = v124;
LABEL_25:
        ++v32;
        if (v42 == v30)
        {
          goto LABEL_117;
        }
      }

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
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v31 = v124;
    }

LABEL_117:
  }

  else
  {
    v99 = v130;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000AEB80(unint64_t a1, void *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v36 = v2 & 0xC000000000000001;
    v35 = v2 & 0xFFFFFFFFFFFFFF8;
    v32 = i;
    v33 = v2;
    while (1)
    {
      if (v36)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v35 + 16))
        {
          goto LABEL_24;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 registrationData];
      if (v8)
      {
        v9 = v8;
        v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = [v6 pushToken];
        if (v13)
        {
          v14 = v13;
          v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = [v6 ckstate];
          if (!v18)
          {
            goto LABEL_18;
          }

          v34 = v15;
          v19 = v17;
          v20 = v18;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          if (v21 == 0x646574656C6564 && v23 == 0xE700000000000000)
          {

            v17 = v19;
            v15 = v34;
            goto LABEL_17;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v17 = v19;
          v15 = v34;
          if (v24)
          {
LABEL_17:
            sub_1000956CC(v15, v17);
            sub_1000956CC(v10, v12);
          }

          else
          {
LABEL_18:
            v31 = v17;
            v25 = objc_allocWithZone(KTLoggableData);
            sub_100002D78(v10, v12);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v27 = [v25 initWithClientData:isa];

            sub_1000956CC(v10, v12);
            v28 = Data._bridgeToObjectiveC()().super.isa;
            [v27 setDeviceID:v28];

            v29 = v27;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            sub_1000956CC(v15, v31);
            sub_1000956CC(v10, v12);

            v6 = v29;
          }

          i = v32;
          v2 = v33;
          goto LABEL_5;
        }

        sub_1000956CC(v10, v12);
      }

LABEL_5:

      ++v4;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

void sub_1000AEE98(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1000B008C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1000AEF84(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v21 = 0;
  v9 = (*(*v4 + 344))();
  if (!v9)
  {
    v17 = 0;
    v19 = 0;
    goto LABEL_5;
  }

  v10 = v9;
  v11 = (*(*v4 + 160))();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = &v21;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000B3A8C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031F9B0;
  v14 = _Block_copy(aBlock);
  v15 = v10;
  sub_100002D78(a3, a4);
  sub_100002D78(a1, a2);

  [v11 performBlockAndWait:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    v17 = v21;
    v18 = v21;
    v19 = sub_1000B3A8C;
LABEL_5:

    sub_1000B3A7C(v19);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AF1BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v21 = 0;
  v9 = (*(*v4 + 344))();
  if (!v9)
  {
    v16 = 0;
    v18 = 0;
LABEL_7:

    sub_1000B3A7C(v18);
    return v16;
  }

  v10 = v9;
  v19 = (*(*v4 + 160))();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = v4;
  v11[8] = &v21;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000B3CC4;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FA28;
  v13 = _Block_copy(aBlock);

  v14 = v10;
  sub_100002D78(a3, a4);
  sub_100002D78(a1, a2);

  [v19 performBlockAndWait:v13];

  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    v16 = v21;
    if (v21)
    {
      v17 = v21;
    }

    v18 = sub_1000B3CC4;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1000AF418(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void **a7)
{
  v116 = a6;
  v117 = a7;
  v119 = a4;
  v120 = a5;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v113 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v115 = &v104 - v16;
  __chkstk_darwin(v15);
  v114 = &v104 - v17;
  v18 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v104 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v104 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v104 - v30;
  __chkstk_darwin(v29);
  v118 = &v104 - v32;
  v33 = *a1;
  v34 = [v33 registrationData];
  if (!v34)
  {
    return;
  }

  v35 = v34;
  v111 = v25;
  v112 = v11;
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = [v33 pushToken];
  if (!v39)
  {
    goto LABEL_12;
  }

  v109 = v22;
  v110 = v10;
  v40 = v39;
  v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if ((sub_100095AC0(v36, v38, a2, a3) & 1) == 0 || (sub_100095AC0(v41, v43, v119, v120) & 1) == 0)
  {
    sub_1000956CC(v36, v38);
    v50 = v41;
    v51 = v43;
    goto LABEL_13;
  }

  v106 = v41;
  v107 = v43;
  v44 = [v33 ckstate];
  v45 = v110;
  v108 = v38;
  if (v44)
  {
    v46 = v44;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v47 == 0x646574656C6564 && v49 == 0xE700000000000000)
    {

      sub_1000956CC(v106, v107);
      v50 = v36;
      v51 = v108;
LABEL_13:

      sub_1000956CC(v50, v51);
      return;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = v108;
    if (v52)
    {
      sub_1000956CC(v106, v107);
LABEL_12:
      v50 = v36;
      v51 = v38;
      goto LABEL_13;
    }
  }

  v53 = [v33 timeToLive];
  if (v53)
  {
    v54 = v53;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = v112;
    v56 = *(v112 + 56);
    v57 = v31;
    v58 = 0;
  }

  else
  {
    v55 = v112;
    v56 = *(v112 + 56);
    v57 = v31;
    v58 = 1;
  }

  v105 = v56;
  v56(v57, v58, 1, v45);
  v59 = v118;
  sub_1000ABF3C(v31, v118);
  v60 = [v33 ckstate];
  if (!v60)
  {
    goto LABEL_27;
  }

  v61 = v60;
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  if (v62 == 1701736292 && v64 == 0xE400000000000000)
  {

    v59 = v118;
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v59 = v118;
    if ((v65 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_1000AB284(v59, v28);
  if ((*(v55 + 48))(v28, 1, v45) == 1)
  {
    sub_1000057C4(v28, &qword_100383FB0, &unk_1002D6690);
LABEL_28:
    v71 = 1;
    goto LABEL_29;
  }

  v66 = v114;
  (*(v55 + 32))(v114, v28, v45);
  v67 = v113;
  v68 = Date.init()();
  (*(*v116 + 240))(v68);
  v69 = v115;
  Date.addingTimeInterval(_:)();
  v70 = *(v55 + 8);
  v70(v67, v45);
  LOBYTE(v67) = static Date.< infix(_:_:)();
  v70(v69, v45);
  v70(v66, v45);
  if ((v67 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_27:
  v71 = 0;
LABEL_29:
  v72 = v119;
  v73 = [v33 ckstate];
  if (v73)
  {
    v74 = v73;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  type metadata accessor for KTCloudRecordDeviceStatus();
  v78 = v111;
  v105(v111, 1, 1, v45);
  v79 = sub_1000DF6A8(v71, v75, v77, v78);
  v80 = [v33 ckrecord];
  if (v80)
  {
    v81 = v80;
    v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    v85 = *(type metadata accessor for KTCloudRecords() + 456);
    sub_100002D78(v82, v84);
    v86 = v85(v82, v84);
    sub_1000956CC(v82, v84);
    if (v86)
    {
      v87 = [v86 modificationDate];
      if (v87)
      {
        v88 = v109;
        v89 = v87;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v90 = 0;
      }

      else
      {
        v90 = 1;
        v88 = v109;
      }

      v105(v88, v90, 1, v110);
      (*((swift_isaMask & *v79) + 0xA0))(v88);
      sub_1000956CC(v82, v84);
    }

    else
    {
      sub_1000956CC(v82, v84);
    }
  }

  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_10009597C(v91, qword_10038F858);
  v92 = v120;
  sub_100002D78(v72, v120);
  v93 = v79;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();
  sub_1000956CC(v72, v92);

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v121 = v98;
    *v96 = 136446466;
    v99 = sub_1000DEC98(v72, v92);
    v101 = sub_1000999E4(v99, v100, &v121);

    *(v96 + 4) = v101;
    *(v96 + 12) = 2114;
    *(v96 + 14) = v93;
    *v97 = v93;
    v102 = v93;
    _os_log_impl(&_mh_execute_header, v94, v95, "device status %{public}s: %{public}@", v96, 0x16u);
    sub_1000057C4(v97, &unk_100383290, &unk_1002D5BA0);

    sub_10009A9E8(v98);
  }

  sub_1000956CC(v104, v108);
  sub_1000956CC(v106, v107);

  sub_1000057C4(v59, &qword_100383FB0, &unk_1002D6690);
  v103 = *v117;
  *v117 = v93;
}

uint64_t sub_1000AFD6C()
{
  v8 = &_swiftEmptyArrayStorage;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B3FA0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FAA0;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_1000AFEFC()
{
  v8 = &_swiftEmptyArrayStorage;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B3FB8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FB18;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

void sub_1000B008C(void **a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [v9 registrationData];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v9 pushToken];
  if (!v15)
  {
    goto LABEL_9;
  }

  v57 = v4;
  v58 = a2;
  v56 = v5;
  v16 = v15;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [v9 ckstate];
  if (v20)
  {
    v21 = v14;
    v22 = v19;
    v23 = v20;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == 0x646574656C6564 && v26 == 0xE700000000000000)
    {

      sub_1000956CC(v17, v22);
      v27 = v12;
      v28 = v21;
LABEL_10:

      sub_1000956CC(v27, v28);
      return;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v22;
    v14 = v21;
    if (v29)
    {
      sub_1000956CC(v17, v19);
LABEL_9:
      v27 = v12;
      v28 = v14;
      goto LABEL_10;
    }
  }

  v30 = objc_allocWithZone(KTLoggableData);
  sub_100002D78(v12, v14);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v32 = [v30 initWithClientData:isa];

  sub_1000956CC(v12, v14);
  v33 = Data._bridgeToObjectiveC()().super.isa;
  [v32 setDeviceID:v33];

  v34 = [objc_allocWithZone(TransparencyCloudDevice) init];
  [v34 setLoggableData:v32];
  v35 = [v9 ckstate];
  [v34 setState:v35];

  v36 = [v9 serialNumber];
  [v34 setSerialNumber:v36];

  v37 = [v9 ckrecord];
  if (v37)
  {
    v54 = v32;
    v55 = v12;
    v38 = v17;
    v39 = v14;
    v40 = v19;
    v41 = v37;
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = *(type metadata accessor for KTCloudRecords() + 456);
    sub_100002D78(v42, v44);
    v46 = v45(v42, v44);
    sub_1000956CC(v42, v44);
    if (v46)
    {
      v47 = [v46 modificationDate];
      if (v47)
      {
        v48 = v47;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v49.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v56 + 8))(v8, v57);
      }

      else
      {
        v49.super.isa = 0;
      }

      v17 = v38;
      [v34 setUploadedToCKAt:v49.super.isa];
      sub_1000956CC(v42, v44);

      v19 = v40;
      v14 = v39;
      v12 = v55;
    }

    else
    {
      sub_1000956CC(v42, v44);
      v19 = v40;
      v14 = v39;
      v12 = v55;
      v17 = v38;
    }

    v32 = v54;
  }

  v50 = v34;
  v51 = v58;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v52 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000956CC(v17, v19);

  sub_1000956CC(v12, v14);
}

uint64_t sub_1000B0568(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  result = (*(*v4 + 344))();
  if (result)
  {
    v10 = result;
    if (qword_10038F850 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10009597C(v11, qword_10038F858);
    v12 = static os_log_type_t.error.getter();
    v13 = v10;
    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v12))
    {
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v15 = 136315138;
      v30 = a2;
      v16 = [v13 recordName];
      v17 = a1;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v12;
      v20 = v19;

      v21 = v18;
      a1 = v17;
      v22 = sub_1000999E4(v21, v20, aBlock);

      *(v15 + 4) = v22;
      a2 = v30;
      _os_log_impl(&_mh_execute_header, v14, v28, "adding device record %s", v15, 0xCu);
      sub_10009A9E8(v29);
    }

    v31 = (*(*v5 + 160))();
    v23 = swift_allocObject();
    v23[2] = v13;
    v23[3] = v5;
    v24 = a1;
    v23[4] = a1;
    v23[5] = a2;
    v23[6] = a3;
    v23[7] = a4;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1000B40D8;
    *(v25 + 24) = v23;
    aBlock[4] = sub_1000A0E98;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009EB40;
    aBlock[3] = &unk_10031FB90;
    v26 = _Block_copy(aBlock);
    v27 = v13;

    sub_100002D78(v24, a2);
    sub_100002D78(a3, a4);

    [v31 performBlockAndWait:v26];

    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000B08F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = (*(*v4 + 344))();
  if (v10)
  {
    v11 = v10;
    if (qword_10038F850 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10009597C(v12, qword_10038F858);
    v13 = static os_log_type_t.error.getter();
    sub_100002D78(a1, a2);
    sub_100002D78(a3, a4);
    v14 = Logger.logObject.getter();
    sub_1000956CC(a1, a2);
    sub_1000956CC(a3, a4);
    if (os_log_type_enabled(v14, v13))
    {
      v23 = v13;
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = Data.description.getter();
      v18 = sub_1000999E4(v16, v17, &v24);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = Data.description.getter();
      v21 = sub_1000999E4(v19, v20, &v24);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v14, v23, "deleting record %s %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v22 = (*(*v5 + 160))();
    __chkstk_darwin(v22);
    NSManagedObjectContext.performAndWait<A>(_:)();
  }
}

uint64_t sub_1000B0BA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for SHA256();
  *&v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  v14 = __chkstk_darwin(v12);
  v45 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v44 - v16;
  v52 = a1;
  v53 = a2;
  v50 = &type metadata for Data;
  v51 = &protocol witness table for Data;
  v48 = a3;
  v49 = a4;
  v18 = sub_1000A0E50(&v48, &type metadata for Data);
  v19 = *v18;
  v20 = v18[1];
  sub_100002D78(a1, a2);
  sub_100002D78(a3, a4);
  sub_1000B4AF8(v19, v20);
  sub_10009A9E8(&v48);
  v21 = v52;
  v22 = v53;
  sub_1000B74A0(&unk_100384000, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100002D78(v21, v22);
  sub_1000B4C30(v21, v22);
  sub_1000956CC(v21, v22);
  dispatch thunk of HashFunction.finalize()();
  sub_1000956CC(v21, v22);
  (*(v47 + 8))(v11, v8);
  v23 = *(v46 + 16);
  v44[0] = v17;
  v23(v45, v17, v12);
  sub_1000B74A0(&qword_1003846A0, &type metadata accessor for SHA256Digest);
  v45 = v12;
  result = dispatch thunk of Sequence.makeIterator()();
  v25 = v48;
  v26 = v49;
  v27 = v48[2];
  v28 = &_swiftEmptyArrayStorage;
  if (v49 == v27)
  {
LABEL_2:

    v48 = v28;
    sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
    sub_1000B4E10();
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
    v32 = *(v44[1] + 40);
    v33._countAndFlagsBits = v29;
    v33._object = v31;
    isa = CKRecordID.init(recordName:zoneID:)(v33, v32).super.isa;
    (*(v46 + 8))(v44[0], v45);
    return isa;
  }

  else
  {
    v47 = xmmword_1002D47B0;
    v35 = v49;
    while ((v26 & 0x8000000000000000) == 0)
    {
      if (v35 >= *(v25 + 16))
      {
        goto LABEL_13;
      }

      v36 = *(v25 + 32 + v35);
      sub_100095820(&unk_100383140, &qword_1002D6BD0);
      v37 = swift_allocObject();
      *(v37 + 16) = v47;
      *(v37 + 56) = &type metadata for UInt8;
      *(v37 + 64) = &protocol witness table for UInt8;
      *(v37 + 32) = v36;
      v38 = String.init(format:_:)();
      v40 = v39;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000B3938(0, v28[2] + 1, 1, v28);
        v28 = result;
      }

      v42 = v28[2];
      v41 = v28[3];
      if (v42 >= v41 >> 1)
      {
        result = sub_1000B3938((v41 > 1), v42 + 1, 1, v28);
        v28 = result;
      }

      ++v35;
      v28[2] = v42 + 1;
      v43 = &v28[2 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      if (v27 == v35)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

CKRecordID sub_1000B1058(void *a1)
{
  v3 = [a1 recordID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
    v8 = v1[5];
    v9._countAndFlagsBits = v5;
    v9._object = v7;
    return CKRecordID.init(recordName:zoneID:)(v9, v8);
  }

  else
  {
    result.super.isa = [a1 registrationData];
    if (result.super.isa)
    {
      isa = result.super.isa;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [a1 pushToken];
      if (v15)
      {
        v16 = v15;
        v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = (*(*v1 + 43))(v17, v19, v12, v14);
        sub_1000956CC(v17, v19);
        sub_1000956CC(v12, v14);
        return v20;
      }

      else
      {
        sub_1000956CC(v12, v14);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000B11CC(void *a1)
{
  v2 = v1;
  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10009597C(v4, qword_10038F858);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v5 recordID];
    v11 = [v10 recordName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1000999E4(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "merging cloud device: %s", v8, 0xCu);
    sub_10009A9E8(v9);
  }

  v16 = (*(*v2 + 160))();
  __chkstk_darwin(v16);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v18;
}

void sub_1000B1404(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v114 = a2;
  v112 = a3;
  v5 = type metadata accessor for String.Encoding();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  __chkstk_darwin(v5);
  v104 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v101 - v10;
  v12 = sub_100095820(&qword_100384448, &unk_1002D6DF0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v109 = &v101 - v14;
  v110 = type metadata accessor for CloudDeviceData();
  v108 = *(v110 - 8);
  v15 = *(v108 + 64);
  __chkstk_darwin(v110);
  v107 = (&v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002D47B0;
  v113 = a1;
  v19 = [a1 recordID];
  v20 = [v19 recordName];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10009FD4C();
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  v24 = NSPredicate.init(format:_:)();
  [v17 setPredicate:v24];

  v116[0] = 0;
  v111 = v17;
  v25 = [v17 execute:v116];
  v26 = v116[0];
  if (v25)
  {
    v27 = v25;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v26;

    if (v28 >> 62)
    {
      v30 = v3;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_4:
        if ((v28 & 0xC000000000000001) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v31 = v113;
        }

        else
        {
          v31 = v113;
          if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v32 = *(v28 + 32);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v30 = v3;
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v33 = v116[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v30 = 0;
  }

  v35 = (*(*v114 + 160))(v34);
  v32 = [objc_allocWithZone(CloudDevice) initWithContext:v35];

  if (!v32)
  {

    v64 = 0;
    goto LABEL_32;
  }

  v31 = v113;
  v36 = [v113 recordID];
  v37 = [v36 recordName];

  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  [v32 setRecordID:v37];

LABEL_14:
  v38 = type metadata accessor for JSONDecoder();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = JSONDecoder.init()();
  v42 = [v31 encryptedValues];
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 objectForKeyedSubscript:v43];
  swift_unknownObjectRelease();

  if (v44)
  {
    v115 = v44;
    sub_100095820(&qword_1003844B0, &qword_1002D6E00);
    if (swift_dynamicCast())
    {
      v103 = v11;
      v45 = v116[0];
      v46 = v116[1];
      sub_1000B74A0(&qword_1003844B8, type metadata accessor for CloudDeviceData);
      v47 = v109;
      v48 = v110;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (!v30)
      {
        v101 = v45;
        (*(v108 + 56))(v47, 0, 1, v48);
        v72 = v47;
        v73 = v107;
        sub_1000B74E8(v72, v107);
        if (v73[1] >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          v75 = *v73;
          isa = Data._bridgeToObjectiveC()().super.isa;
        }

        v76 = v103;
        [v32 setPushToken:isa];

        v77 = v73[3] >> 60;
        v102 = v46;
        if (v77 == 15)
        {
          v78 = 0;
        }

        else
        {
          v79 = v73[2];
          v78 = Data._bridgeToObjectiveC()().super.isa;
        }

        [v32 setRegistrationData:v78];

        sub_1000AB284(v73 + *(v48 + 24), v76);
        v80 = v76;
        v81 = type metadata accessor for Date();
        v82 = *(v81 - 8);
        v83 = 0;
        if ((*(v82 + 48))(v80, 1, v81) != 1)
        {
          v83 = Date._bridgeToObjectiveC()().super.isa;
          (*(v82 + 8))(v80, v81);
        }

        [v32 setTimeToLive:v83];

        v84 = v107;
        if (*(v107 + *(v48 + 36)))
        {
          v116[0] = *(v107 + *(v48 + 36));

          sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
          sub_1000B4E10();
          BidirectionalCollection<>.joined(separator:)();

          v85 = v104;
          static String.Encoding.utf8.getter();
          v86 = String.data(using:allowLossyConversion:)();
          v88 = v87;

          (*(v105 + 8))(v85, v106);
          v89 = v102;
          if (v88 >> 60 == 15)
          {
            v90 = 0;
          }

          else
          {
            v90 = Data._bridgeToObjectiveC()().super.isa;
            sub_10009A9D4(v86, v88);
          }
        }

        else
        {
          v90 = 0;
          v89 = v102;
        }

        [v32 setApplications:v90];

        v91 = v110;
        v92 = (v84 + *(v110 + 28));
        if (v92[1])
        {
          v93 = *v92;
          v94 = String._bridgeToObjectiveC()();
        }

        else
        {
          v94 = 0;
        }

        v95 = v101;
        [v32 setOsVersion:v94];

        v96 = (v84 + *(v91 + 32));
        if (v96[1])
        {
          v97 = *v96;
          v98 = String._bridgeToObjectiveC()();
        }

        else
        {
          v98 = 0;
        }

        [v32 setSerialNumber:v98];

        v99 = String._bridgeToObjectiveC()();
        [v32 setCkstate:v99];

        if (*(v84 + *(v91 + 40)) == 2)
        {
          [v32 setInjected:0];
          sub_1000956CC(v95, v89);
        }

        else
        {
          v100 = Bool._bridgeToObjectiveC()().super.super.isa;
          [v32 setInjected:v100];
          sub_1000956CC(v95, v89);
        }

        sub_1000AC07C(v84);
        goto LABEL_19;
      }

      sub_1000956CC(v45, v46);
      (*(v108 + 56))(v47, 1, 1, v48);
      sub_1000057C4(v47, &qword_100384448, &unk_1002D6DF0);
      v30 = 0;
    }
  }

  v49 = String._bridgeToObjectiveC()();
  [v32 setCkstate:v49];

LABEL_19:
  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10009597C(v50, qword_10038F858);
  v51 = v32;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v109 = v41;
    v110 = v30;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v116[0] = v55;
    *v54 = 136315138;
    v56 = [v51 pushToken];
    if (v56)
    {
      v57 = v56;
      v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = sub_1000DEC98(v58, v60);
      v63 = v62;
      sub_1000956CC(v58, v60);
    }

    else
    {
      v63 = 0xE100000000000000;
      v61 = 45;
    }

    v65 = sub_1000999E4(v61, v63, v116);

    *(v54 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "merged cloud device: %s", v54, 0xCu);
    sub_10009A9E8(v55);

    v31 = v113;
  }

  else
  {
  }

  v66 = v114;
  v67 = (*(*v114 + 432))(v51, v31);
  v68 = (*(*v66 + 160))(v67);
  v116[0] = 0;
  v69 = [v68 save:v116];

  if (v69)
  {
    v70 = v116[0];
  }

  else
  {
    v71 = v116[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v64 = 1;
LABEL_32:
  *v112 = v64;
}

uint64_t sub_1000B20C4(void *a1)
{
  v3 = (*(*v1 + 160))();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B4E90;
  *(v5 + 24) = v4;
  v10[4] = sub_1000A0E98;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10009EB40;
  v10[3] = &unk_10031FC08;
  v6 = _Block_copy(v10);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B2254(void *a1)
{
  v3 = (*(*v1 + 160))();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B52AC;
  *(v5 + 24) = v4;
  v10[4] = sub_1000A0E98;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10009EB40;
  v10[3] = &unk_10031FC80;
  v6 = _Block_copy(v10);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B23E4(void *a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v68 - v6;
  v8 = type metadata accessor for CloudDeviceData();
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for String.Encoding();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = [a1 ckrecord];
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v19 = type metadata accessor for KTCloudRecords();
  isa = (*(v19 + 456))(v16, v18);
  sub_10009A9D4(v16, v18);
  if (!isa)
  {
    result = (*(*v2 + 352))(a1);
    if (!result)
    {
      return result;
    }

    v22.super.isa = result;
    sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
    v23._countAndFlagsBits = (*(*v2 + 136))();
    isa = CKRecord.init(recordType:recordID:)(v23, v22).super.isa;
  }

  v24 = [a1 applications];
  if (v24)
  {
    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xC000000000000000;
  }

  static String.Encoding.utf8.getter();
  v75 = v26;
  v29 = String.init(data:encoding:)();
  if (v30)
  {
    v78 = v29;
    v79 = v30;
    v76 = 44;
    v77 = 0xE100000000000000;
    sub_100008D30();
    v73 = StringProtocol.components<A>(separatedBy:)();
  }

  else
  {
    v73 = 0;
  }

  v31 = [a1 pushToken];
  if (v31)
  {
    v32 = v31;
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v34;
    v72 = v33;
  }

  else
  {
    v71 = 0xF000000000000000;
    v72 = 0;
  }

  v35 = [a1 registrationData];
  if (v35)
  {
    v36 = v35;
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v38;
    v70 = v37;
  }

  else
  {
    v69 = 0xF000000000000000;
    v70 = 0;
  }

  v39 = [a1 timeToLive];
  if (v39)
  {
    v40 = v39;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = type metadata accessor for Date();
  (*(*(v42 - 8) + 56))(v7, v41, 1, v42);
  v43 = [a1 osVersion];
  v74 = v28;
  if (v43)
  {
    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = isa;
  v49 = [a1 serialNumber];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = [a1 injected];
  if (v54)
  {
    v55 = v54;
    v56 = [v54 BOOLValue];
  }

  else
  {
    v56 = 2;
  }

  v57 = v71;
  *v11 = v72;
  v11[1] = v57;
  v58 = v69;
  v11[2] = v70;
  v11[3] = v58;
  sub_1000ABF3C(v7, v11 + v8[6]);
  v59 = (v11 + v8[7]);
  *v59 = v45;
  v59[1] = v47;
  v60 = (v11 + v8[8]);
  *v60 = v51;
  v60[1] = v53;
  *(v11 + v8[9]) = v73;
  *(v11 + v8[10]) = v56;
  v61 = type metadata accessor for JSONEncoder();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000B74A0(&unk_100384020, type metadata accessor for CloudDeviceData);
  v64 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v66 = v65;
  v67 = [(objc_class *)v48 encryptedValues];
  swift_getObjectType();
  v80 = &type metadata for Data;
  v81 = &protocol witness table for Data;
  v78 = v64;
  v79 = v66;
  sub_100002D78(v64, v66);
  CKRecordKeyValueSetting.subscript.setter();

  sub_1000956CC(v75, v74);
  swift_unknownObjectRelease();
  sub_1000956CC(v64, v66);
  sub_1000AC07C(v11);
  return v48;
}

uint64_t sub_1000B29D0()
{
  v9 = 0;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B56F0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FCF8;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000B2B60()
{
  v9 = &_swiftEmptyArrayStorage;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B58DC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FD70;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000B2CF8()
{
  v9 = &_swiftEmptyArrayStorage;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B58F4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FDE8;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000B2E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 160))();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000B5C54;
  *(v9 + 24) = v8;
  v13[4] = sub_1000A0E98;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10009EB40;
  v13[3] = &unk_10031FE60;
  v10 = _Block_copy(v13);

  [v7 performBlockAndWait:v10];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B3038(void *a1)
{
  v12 = 0;
  v3 = (*(*v1 + 160))();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = &v12;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B61F0;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FED8;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1000B31DC(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for KTCloudRecords() + 464);
  v5 = a2;
  v6 = v4(a2);
  if (v7 >> 60 == 15)
  {

    return 0;
  }

  v9 = v6;
  v10 = v7;
  v11 = [a1 ckrecord];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v15 >> 60 != 15)
    {
      sub_1000A4A5C(v9, v10);
      sub_1000A4A5C(v13, v15);
      v16 = sub_100095AC0(v13, v15, v9, v10);
      sub_10009A9D4(v13, v15);
      sub_10009A9D4(v9, v10);
      sub_10009A9D4(v13, v15);
      if (v16)
      {

        sub_10009A9D4(v9, v10);
        return 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  sub_1000A4A5C(v9, v10);
  sub_10009A9D4(v13, v15);
  sub_10009A9D4(v9, v10);
LABEL_12:
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 setCkrecord:isa];

  sub_10009A9D4(v9, v10);
  return 1;
}

uint64_t sub_1000B3388(char a1)
{
  v3 = (*(*v1 + 160))();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B6B6C;
  *(v5 + 24) = v4;
  v9[4] = sub_1000A0E98;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10009EB40;
  v9[3] = &unk_10031FF50;
  v6 = _Block_copy(v9);

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B3510()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  sub_1000B6FB8(v0 + 56);
  return v0;
}

uint64_t sub_1000B3550()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  sub_1000B6FB8(v0 + 56);

  return _swift_deallocClassInstance(v0, 80, 7);
}

char *sub_1000B3938(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&qword_1003844C0, &qword_1002D6E08);
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

uint64_t sub_1000B3A7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000B3A8C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v20 = v0[7];
  v6 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D47B0;
  v8 = [v2 recordName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10009FD4C();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v12];

  v21 = 0;
  v13 = [v6 execute:&v21];
  v14 = v21;
  if (v13)
  {
    v15 = v13;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v14;

    sub_100002D78(v1, v3);
    sub_100002D78(v4, v5);
    sub_1000B754C(v16, v1, v3, v4, v5, v20);
    sub_1000956CC(v4, v5);
    sub_1000956CC(v1, v3);
  }

  else
  {
    v19 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000B3CC4()
{
  v1 = v0[2];
  v2 = v0[5];
  v28 = v0[4];
  v29 = v0[3];
  v3 = v0[6];
  v4 = v0[7];
  v27 = v0[8];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D47B0;
  v7 = [v1 recordName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10009FD4C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v11];

  v30 = 0;
  v12 = [v5 execute:&v30];
  v13 = v30;
  if (v12)
  {
    v14 = v12;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v13;

    v26 = v5;
    if (v15 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100002D78(v29, v28);
      sub_100002D78(v2, v3);

      if (!i)
      {
        break;
      }

      v18 = 4;
      while (1)
      {
        v19 = v18 - 4;
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v20 = *(v15 + 8 * v18);
        }

        v21 = v20;
        v22 = __OFADD__(v19, 1);
        v23 = v18 - 3;
        if (v22)
        {
          break;
        }

        v30 = v20;
        sub_1000AF418(&v30, v29, v28, v2, v3, v4, v27);

        ++v18;
        if (v23 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_13:

    sub_1000956CC(v2, v3);
    sub_1000956CC(v29, v28);
  }

  else
  {
    v25 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000B3FD0(void (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 16);
  v4 = [objc_opt_self() fetchRequest];
  v12 = 0;
  v5 = [v4 execute:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = v5;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v6;

    a1(v8, v3);
  }

  else
  {
    v11 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000B40D8()
{
  v2 = v0[2];
  v1 = v0[3];
  v52 = v0[5];
  v53 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D47B0;
  v7 = [v2 recordName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10009FD4C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v11];

  v54 = 0;
  v12 = [v5 execute:&v54];
  v13 = v54;
  if (!v12)
  {
    v30 = v54;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_14:
    if (qword_10038F850 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10009597C(v31, qword_10038F858);
    v32 = static os_log_type_t.error.getter();
    v33 = v2;
    v34 = Logger.logObject.getter();

    if (os_log_type_enabled(v34, v32))
    {
      v35 = swift_slowAlloc();
      v51 = v32;
      v36 = swift_slowAlloc();
      v54 = v36;
      *v35 = 136315138;
      v37 = [v33 recordName];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_1000999E4(v38, v40, &v54);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v51, "creating new record %s", v35, 0xCu);
      sub_10009A9E8(v36);
    }

    v42 = (*(*v1 + 160))();
    v18 = [objc_allocWithZone(CloudDevice) initWithContext:v42];

    if (!v18)
    {

      return;
    }

    v43 = [v33 recordName];
    if (!v43)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = String._bridgeToObjectiveC()();
    }

    [v18 setRecordID:v43];

    isa = Data._bridgeToObjectiveC()().super.isa;
    [v18 setPushToken:isa];

    v21 = Data._bridgeToObjectiveC()().super.isa;
    [v18 setRegistrationData:v21];
    goto LABEL_22;
  }

  v14 = v12;
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v13;

  if (v15 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10009597C(v19, qword_10038F858);
  v20 = v2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v54 = v24;
    *v23 = 136315138;
    v25 = [v20 recordName];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_1000999E4(v26, v28, &v54);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "add device: updating existing record %s", v23, 0xCu);
    sub_10009A9E8(v24);
  }

LABEL_22:

  sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
  v45 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v18 setInjected:v45];

  v46 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  [v18 setLocal:v46];

  v47 = String._bridgeToObjectiveC()();
  [v18 setCkstate:v47];

  v48 = (*(*v1 + 160))([v18 setTimeToLive:0]);
  v54 = 0;
  LODWORD(v45) = [v48 save:&v54];

  if (v45)
  {
    v49 = v54;
  }

  else
  {
    v50 = v54;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000B47F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47B0;
  v5 = [v2 recordName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10009FD4C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  v28 = 0;
  v10 = [v3 execute:&v28];
  v11 = v28;
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = v10;
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  v27 = v1;
  if (v13 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = 4;
    while (1)
    {
      v17 = v16 - 4;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v18 = *(v13 + 8 * v16);
      }

      v19 = v18;
      v20 = v16 - 3;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = String._bridgeToObjectiveC()();
      [v19 setCkstate:v21];

      ++v16;
      if (v20 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v23 = (*(*v27 + 160))(v22);
  v28 = 0;
  v24 = [v23 save:&v28];

  v11 = v28;
  if (v24)
  {
    v25 = v28;
  }

  else
  {
LABEL_17:
    v26 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000B4AF8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000B687C(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_1000B687C(v3, v4);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1000B4C30(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_1000B74A0(&unk_100384000, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000B679C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000B679C(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_1000B74A0(&unk_100384000, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

unint64_t sub_1000B4E10()
{
  result = qword_1003851A0;
  if (!qword_1003851A0)
  {
    sub_1000967DC(&unk_100383FD0, &qword_1002D6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003851A0);
  }

  return result;
}

void sub_1000B4E90()
{
  v1 = *(v0 + 16);
  v39 = *(v0 + 24);
  v2 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002D47B0;
  v4 = [v1 recordName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10009FD4C();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = NSPredicate.init(format:_:)();
  [v2 setPredicate:v8];

  v40 = 0;
  v9 = [v2 execute:&v40];
  v10 = v40;
  if (v9)
  {
    v11 = v9;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v10;

    if (v12 >> 62)
    {
      goto LABEL_23;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v14; i = v2)
    {
      v15 = 0x676E696F6774756FLL;
      v2 = (v12 & 0xFFFFFFFFFFFFFF8);
      v16 = 4;
      while (1)
      {
        v19 = v16 - 4;
        if ((v12 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v20 = *(v12 + 8 * v16);
        }

        v18 = v20;
        v21 = v16 - 3;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v22 = [v20 ckstate];
        if (v22)
        {
          v23 = v14;
          v24 = v22;
          v25 = v15;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          v29 = v26;
          v15 = v25;
          if (v29 == v25 && v28 == 0xE800000000000000)
          {

            v14 = v23;
            goto LABEL_6;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v14 = v23;
          if (v31)
          {
            goto LABEL_6;
          }
        }

        v17 = (*(*v39 + 160))();
        [v17 deleteObject:v18];

        v18 = v17;
LABEL_6:

        ++v16;
        if (v21 == v14)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_24:

    v34 = (*(*v39 + 160))(v33);
    v40 = 0;
    v35 = [v34 save:&v40];

    if (v35)
    {
      v36 = v40;

      return;
    }

    v37 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v32 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000B526C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000B52AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47B0;
  v5 = [v2 recordName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10009FD4C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  v33 = 0;
  v10 = [v3 execute:&v33];
  v11 = v33;
  if (v10)
  {
    v12 = v10;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v11;

    if (v13 >> 62)
    {
      goto LABEL_21;
    }

    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v15; i = v3)
    {
      v16 = 4;
      while (1)
      {
        v18 = v16 - 4;
        if ((v13 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v19 = *(v13 + 8 * v16);
        }

        v20 = v19;
        v3 = (v16 - 3);
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v21 = [v19 local];
        sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
        v22.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        if (v21)
        {
          v23 = static NSObject.== infix(_:_:)();

          if ((v23 & 1) == 0)
          {
            goto LABEL_6;
          }

          v24 = (*(*v1 + 384))(v20);
          if (!v24)
          {
            goto LABEL_6;
          }

          v22.super.super.isa = v24;
          v25 = [(objc_class *)v24 recordChangeTag];
          if (v25)
          {

            [v20 setCkrecord:0];
            v17 = String._bridgeToObjectiveC()();
            [v20 setCkstate:v17];

            goto LABEL_7;
          }
        }

LABEL_6:
        v17 = (*(*v1 + 160))();
        [v17 deleteObject:v20];
LABEL_7:

        ++v16;
        if (v3 == v15)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_22:

    v28 = (*(*v1 + 160))(v27);
    v33 = 0;
    v29 = [v28 save:&v33];

    if (v29)
    {
      v30 = v33;

      return;
    }

    v31 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v26 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000B56F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10009FD4C();
  *(v4 + 32) = 0x676E696F6774756FLL;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 64) = v5;
  *(v4 + 72) = 0x646574656C6564;
  *(v4 + 80) = 0xE700000000000000;
  v6 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v6];

  v8 = (*(*v1 + 160))();
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v7 = NSManagedObjectContext.count<A>(for:)();

  if (v7 >= 1)
  {
    *v2 = 1;
  }
}

uint64_t sub_1000B590C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D47B0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10009FD4C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = NSPredicate.init(format:_:)();
  [v7 setPredicate:v9];

  v34 = 0;
  v10 = [v7 execute:&v34];
  v11 = v34;
  if (!v10)
  {
    v28 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = v10;
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  v34 = &_swiftEmptyArrayStorage;
  if (v13 >> 62)
  {
LABEL_21:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v7;
    if (v15)
    {
LABEL_4:
      v32 = v5;
      v7 = 0;
      v16 = &_swiftEmptyArrayStorage;
      v5 = v13 & 0xC000000000000001;
      do
      {
        v17 = v7;
        while (1)
        {
          if (v5)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v18 = *(v13 + 8 * v17 + 32);
          }

          v19 = v18;
          v7 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v20 = [v18 recordID];
          if (v20)
          {
            break;
          }

          ++v17;
          if (v7 == v15)
          {
            goto LABEL_23;
          }
        }

        v31 = v6;
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
        v25 = *(v32 + 40);
        v26._countAndFlagsBits = v22;
        v26._object = v24;
        CKRecordID.init(recordName:zoneID:)(v26, v25);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v34;
        v6 = v31;
      }

      while (v7 != v15);
      goto LABEL_23;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v7;
    if (v15)
    {
      goto LABEL_4;
    }
  }

  v16 = &_swiftEmptyArrayStorage;
LABEL_23:

  v30 = *v6;
  *v6 = v16;
}

id sub_1000B5C54()
{
  v1 = v0[3];
  v2 = v0[4];
  v42 = v0[5];
  v43 = v0[2];
  if (v43 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v44 = i;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v5 = *(v43 + 32 + 8 * v4);
      }

      v6 = v5;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = [objc_opt_self() fetchRequest];
      sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
      sub_100095820(&unk_100383140, &qword_1002D6BD0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1002D47B0;
      v47 = v6;
      v10 = [v6 recordName];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_10009FD4C();
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      v14 = NSPredicate.init(format:_:)();
      [v8 setPredicate:v14];

      v48 = 0;
      v46 = v8;
      v15 = [v8 execute:&v48];
      v16 = v48;
      if (v15)
      {
        v17 = v15;
        sub_10009FDA0(0, &unk_1003853A0, off_100315880);
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v16;

        if (v18 >> 62)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
          v45 = v4;
          if (v20)
          {
LABEL_13:
            v21 = 4;
            while (1)
            {
              v22 = v21 - 4;
              if ((v18 & 0xC000000000000001) != 0)
              {
                v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_30;
                }

                v23 = *(v18 + 8 * v21);
              }

              v24 = v23;
              v7 = __OFADD__(v22, 1);
              v25 = v21 - 3;
              if (v7)
              {
                break;
              }

              v26 = String._bridgeToObjectiveC()();
              [v24 setCkstate:v26];

              ++v21;
              if (v25 == v20)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_30:
            __break(1u);
            break;
          }
        }

        else
        {
          v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v45 = v4;
          if (v20)
          {
            goto LABEL_13;
          }
        }

LABEL_4:

        i = v44;
        v4 = v45;
      }

      else
      {
        v27 = v48;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_10038F850 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10009597C(v28, qword_10038F858);
        v29 = v47;
        swift_errorRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = v4;
          v34 = swift_slowAlloc();
          *v32 = 138412546;
          *(v32 + 4) = v29;
          *v34 = v29;
          *(v32 + 12) = 2112;
          v35 = v29;
          swift_errorRetain();
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 14) = v36;
          v34[1] = v36;
          _os_log_impl(&_mh_execute_header, v30, v31, "record to update not found %@: %@", v32, 0x16u);
          sub_100095820(&unk_100383290, &unk_1002D5BA0);
          swift_arrayDestroy();
          v4 = v33;
          i = v44;
        }

        else
        {
        }
      }

      if (v4 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:
  v37 = (*(*v42 + 160))();
  v48 = 0;
  v38 = [v37 save:&v48];

  v39 = v48;
  if (v38)
  {

    return v39;
  }

  else
  {
    v41 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000B61F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D47B0;
  v6 = [v1 recordName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10009FD4C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v10];

  v40 = 0;
  v11 = [v4 execute:&v40];
  v12 = v40;
  if (!v11)
  {
    v23 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_10038F850 == -1)
    {
LABEL_12:
      v24 = type metadata accessor for Logger();
      sub_10009597C(v24, qword_10038F858);
      v25 = static os_log_type_t.error.getter();
      v26 = v1;
      v27 = Logger.logObject.getter();

      if (!os_log_type_enabled(v27, v25))
      {
LABEL_21:

        return;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v27, v25, "record not found %@", v28, 0xCu);
      sub_1000057C4(v29, &unk_100383290, &unk_1002D5BA0);

LABEL_20:

      goto LABEL_21;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  v13 = v11;
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v12;

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:
    if (qword_10038F850 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10009597C(v32, qword_10038F858);
    v33 = static os_log_type_t.error.getter();

    v27 = Logger.logObject.getter();

    if (!os_log_type_enabled(v27, v33))
    {

      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136315138;
    v36 = Array.description.getter();
    v38 = v37;

    v39 = sub_1000999E4(v36, v38, &v40);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v27, v33, "no response %s", v34, 0xCu);
    sub_10009A9E8(v35);

    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v1 + 32);
LABEL_7:
  v16 = v15;

  v17 = (*(*v3 + 384))(v16);
  v18 = *v2;
  *v2 = v17;
  v19 = v17;

  LOBYTE(v17) = (*(*v3 + 432))(v16, v17);
  if ((v17 & 1) == 0)
  {
LABEL_10:

    return;
  }

  v20 = (*(*v3 + 160))();
  v40 = 0;
  v21 = [v20 save:&v40];

  if (v21)
  {
    v22 = v40;
    goto LABEL_10;
  }

  v31 = v40;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

uint64_t sub_1000B679C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000B74A0(&unk_100384000, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B687C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000B6910(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1936748641 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64657463656A6E69 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_1000B6B6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithEntityName:v4];

  if (v1 == 1)
  {
    sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
    v6 = NSPredicate.init(format:_:)();
    [v5 setPredicate:v6];
  }

  v7 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v5];
  v8 = *(*v2 + 160);
  v9 = v8();
  v36 = 0;
  v10 = [v9 executeRequest:v7 error:&v36];

  if (v10)
  {
    v11 = v36;

    if (!v1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (!v1)
    {
      goto LABEL_23;
    }
  }

  v13 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  v14 = NSPredicate.init(format:_:)();
  [v13 setPredicate:v14];

  v36 = 0;
  v15 = [v13 execute:&v36];
  v16 = v36;
  if (v15)
  {
    v17 = v15;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v16;

    v35 = v5;
    v33 = v8;
    v34 = v7;
    v32 = v13;
    if (v18 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v21 = 4;
      while (1)
      {
        v22 = v21 - 4;
        if ((v18 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v23 = *(v18 + 8 * v21);
        }

        v24 = v23;
        v25 = v21 - 3;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        [v23 setCkrecord:{0, v32}];
        v26 = String._bridgeToObjectiveC()();
        [v24 setCkstate:v26];

        ++v21;
        if (v25 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    v5 = v35;
    v8 = v33;
    v7 = v34;
  }

  else
  {
    v27 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_23:
  v28 = v8();
  v36 = 0;
  v29 = [v28 save:&v36];

  if (v29)
  {
    v30 = v36;
  }

  else
  {
    v31 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v5 = v7;
  }
}

void sub_1000B7008()
{
  sub_1000B71C0(319, &qword_1003840F8);
  if (v0 <= 0x3F)
  {
    sub_1000B7104();
    if (v1 <= 0x3F)
    {
      sub_1000B71C0(319, &unk_1003847D0);
      if (v2 <= 0x3F)
      {
        sub_1000B715C();
        if (v3 <= 0x3F)
        {
          sub_1000B71C0(319, &unk_100384118);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000B7104()
{
  if (!qword_100384100)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100384100);
    }
  }
}

void sub_1000B715C()
{
  if (!qword_100384110)
  {
    sub_1000967DC(&unk_100383FD0, &qword_1002D6BC0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100384110);
    }
  }
}

void sub_1000B71C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudDeviceData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudDeviceData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B739C()
{
  result = qword_10038FA90[0];
  if (!qword_10038FA90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10038FA90);
  }

  return result;
}

unint64_t sub_1000B73F4()
{
  result = qword_10038FBA0;
  if (!qword_10038FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10038FBA0);
  }

  return result;
}

unint64_t sub_1000B744C()
{
  result = qword_10038FBA8[0];
  if (!qword_10038FBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10038FBA8);
  }

  return result;
}

uint64_t sub_1000B74A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B74E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudDeviceData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000B754C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void **a6)
{
  v7 = v6;
  v8 = a1;
  if (a1 >> 62)
  {
LABEL_107:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  v10 = 0;
  v81 = v8 & 0xC000000000000001;
  v80 = v8 & 0xFFFFFFFFFFFFFF8;
  if (a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3 == 0xC000000000000000;
  }

  v12 = !v11;
  v75 = v12;
  v13 = __OFSUB__(HIDWORD(a2), a2);
  v67 = v13;
  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = a5 == 0xC000000000000000;
  }

  v15 = !v14;
  v70 = v15;
  v76 = a5 >> 62;
  v77 = v8;
  v16 = __OFSUB__(HIDWORD(a4), a4);
  v66 = v16;
  v78 = v9;
  while (1)
  {
    if (v81)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v80 + 16))
      {
        goto LABEL_102;
      }

      v19 = *(v8 + 8 * v10 + 32);
    }

    v20 = v19;
    v21 = v10 + 1;
    if (__OFADD__(v10, 1))
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
      goto LABEL_107;
    }

    v22 = [v19 registrationData];
    if (v22)
    {
      break;
    }

LABEL_25:

    ++v10;
    if (v21 == v9)
    {
      return;
    }
  }

  v23 = v22;
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = [v20 pushToken];
  if (!v27)
  {
    v17 = v24;
    v18 = v26;
    goto LABEL_24;
  }

  v28 = v27;
  v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v26 >> 62;
  if (v26 >> 62 == 3)
  {
    if (v24)
    {
      v32 = 0;
    }

    else
    {
      v32 = v26 == 0xC000000000000000;
    }

    v33 = a3 >> 62;
    v35 = !v32 || a3 >> 62 != 3;
    if (((v35 | v75) & 1) == 0)
    {
      v9 = v78;
      goto LABEL_61;
    }

    v36 = 0;
    v9 = v78;
  }

  else
  {
    v33 = a3 >> 62;
    if (v31)
    {
      if (v31 == 1)
      {
        LODWORD(v36) = HIDWORD(v24) - v24;
        v9 = v78;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_105;
        }

        v36 = v36;
      }

      else
      {
        v38 = *(v24 + 16);
        v37 = *(v24 + 24);
        v39 = __OFSUB__(v37, v38);
        v36 = v37 - v38;
        v9 = v78;
        if (v39)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      v36 = BYTE6(v26);
      v9 = v78;
    }
  }

  if (v33 > 1)
  {
    if (v33 != 2)
    {
      if (!v36)
      {
        goto LABEL_61;
      }

LABEL_23:
      sub_1000956CC(v24, v26);
      v17 = v79;
      v18 = v30;
LABEL_24:
      sub_1000956CC(v17, v18);
      goto LABEL_25;
    }

    v42 = *(a2 + 16);
    v41 = *(a2 + 24);
    v39 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (v39)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v40 = BYTE6(a3);
    if (v33)
    {
      v40 = HIDWORD(a2) - a2;
      if (v67)
      {
        goto LABEL_104;
      }
    }
  }

  if (v36 != v40)
  {
    goto LABEL_23;
  }

  if (v36 >= 1)
  {
    sub_100002D78(a2, a3);
    v8 = v77;
    v9 = v78;
    if ((sub_1000948E4(v24, v26, a2, a3) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_61:
  v43 = v30 >> 62;
  if (v30 >> 62 != 3)
  {
    v45 = a5 >> 62;
    if (v43 == 2)
    {
      v50 = *(v79 + 16);
      v49 = *(v79 + 24);
      v39 = __OFSUB__(v49, v50);
      v48 = v49 - v50;
      if (v39)
      {
        goto LABEL_111;
      }

      if (v76 > 1)
      {
        goto LABEL_85;
      }
    }

    else if (v43 == 1)
    {
      LODWORD(v48) = HIDWORD(v79) - v79;
      if (__OFSUB__(HIDWORD(v79), v79))
      {
        goto LABEL_112;
      }

      v48 = v48;
      if (v76 > 1)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v48 = BYTE6(v30);
      if (v76 > 1)
      {
        goto LABEL_85;
      }
    }

LABEL_81:
    v51 = BYTE6(a5);
    if (v45)
    {
      v51 = HIDWORD(a4) - a4;
      if (v66)
      {
        goto LABEL_110;
      }
    }

LABEL_87:
    if (v48 == v51)
    {
      if (v48 < 1)
      {
        goto LABEL_92;
      }

      sub_100002D78(a4, a5);
      v8 = v77;
      v9 = v78;
      if (sub_1000948E4(v79, v30, a4, a5))
      {
        goto LABEL_92;
      }
    }

    goto LABEL_23;
  }

  if (v79)
  {
    v44 = 0;
  }

  else
  {
    v44 = v30 == 0xC000000000000000;
  }

  v45 = a5 >> 62;
  v47 = !v44 || a5 >> 62 != 3;
  if (((v47 | v70) & 1) == 0)
  {
LABEL_92:
    v54 = [v20 ckstate];
    v73 = v7;
    if (!v54)
    {
      goto LABEL_98;
    }

    v55 = v54;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (v56 == 0x646574656C6564 && v58 == 0xE700000000000000)
    {

      v7 = v73;
      goto LABEL_97;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v73;
    if (v59)
    {
LABEL_97:
      sub_1000956CC(v79, v30);
      sub_1000956CC(v24, v26);
    }

    else
    {
LABEL_98:
      v60 = objc_allocWithZone(KTLoggableData);
      sub_100002D78(v24, v26);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v62 = [v60 initWithClientData:isa];

      sub_1000956CC(v24, v26);
      v63 = Data._bridgeToObjectiveC()().super.isa;
      [v62 setDeviceID:v63];

      v64 = [v20 osVersion];
      [v62 setBuild:v64];
      sub_1000956CC(v24, v26);
      v7 = v73;
      sub_1000956CC(v79, v30);

      v65 = *a6;
      *a6 = v62;

      v20 = v65;
    }

    v8 = v77;
    v9 = v78;
    goto LABEL_25;
  }

  v48 = 0;
  if (v76 <= 1)
  {
    goto LABEL_81;
  }

LABEL_85:
  if (v45 != 2)
  {
    if (!v48)
    {
      goto LABEL_92;
    }

    goto LABEL_23;
  }

  v53 = *(a4 + 16);
  v52 = *(a4 + 24);
  v39 = __OFSUB__(v52, v53);
  v51 = v52 - v53;
  if (!v39)
  {
    goto LABEL_87;
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
}

uint64_t sub_1000B7BCC()
{
  swift_beginAccess();
  v0 = qword_1003844C8;

  return v0;
}

uint64_t sub_1000B7C20(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1003844C8 = a1;
  off_1003844D0 = a2;
}

unint64_t sub_1000B7CD4(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0x6261746164206F4ELL;
      break;
    case 2:
      result = 0x61746E6F63206F4ELL;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 11:
    case 13:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000021;
      break;
    case 17:
      result = 0x66206E692D74704FLL;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B7F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE7E0();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B7F70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000BCDE0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000B7FA4(uint64_t a1)
{
  v2 = sub_1000BE7E0();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1000B7FE0(uint64_t a1)
{
  v2 = sub_1000BE7E0();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1000B801C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE660();
  v5 = sub_10009C574();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_1000B807C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE7E0();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_1000B80D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_element);
  v2 = *(v0 + OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_element + 8);

  return v1;
}

uint64_t sub_1000B811C()
{
  v1 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000B8160(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000B8210()
{
  v1 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000B8254(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000B8304()
{
  v1 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000B8348(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1000B83F8()
{
  v1 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000B843C(double a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1000B84EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_element];
  *v16 = a1;
  v16[1] = a2;
  *&v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_samples] = a3;
  v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success] = a4;
  v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures] = a5;
  v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess] = a6;
  *&v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate] = a7;
  v18.receiver = v15;
  v18.super_class = v7;
  return objc_msgSendSuper2(&v18, "init");
}

id sub_1000B85B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, double a7)
{
  v8 = &v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_element];
  *v8 = a1;
  v8[1] = a2;
  *&v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_samples] = a3;
  v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success] = a4;
  v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures] = a5;
  v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess] = a6;
  *&v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate] = a7;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for AggregateElementInfo();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_1000B8694()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AggregateElementInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B8794@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd15KTEligibilityDB_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1000B8854(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_10009AE38();
  if (!v1)
  {
    sub_10009AE38();
    _StringGuts.grow(_:)(24);

    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    sub_10009AE38();
  }
}

uint64_t sub_1000B89A0()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000BCF98;
  *(v2 + 24) = v0;
  v5[4] = sub_1000A040C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009EB40;
  v5[3] = &unk_100320078;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B8B2C()
{
  v2 = *(v0 + 32);
  sub_100095820(&qword_100384528, &unk_1002D6E20);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_1000B8BB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v61 = a3;
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 24);
  sub_10009AEC4();
  if (!v4)
  {
    v22 = v21;
    v57 = v19;
    v58 = v14;
    v56 = v12;
    v59 = v15;
    v60 = v16;
    v23 = (*(*v21 + 104))(0, a2, v61);
    v24 = (*(*v22 + 160))(v23);
    v25 = v24;
    v61 = 0;
    if (!v24)
    {

      *a4 = 0;
      return;
    }

    v26 = *(*v24 + 96);

    v27 = v26(0);
    if (!v28)
    {
      goto LABEL_13;
    }

    v29 = v27;
    v30 = v28;
    v31 = (*(*v25 + 104))(1);
    if ((v31 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

    v54 = v31;
    v55 = v26;
    v32 = v58;
    (*(*v25 + 120))(2);
    v34 = v59;
    v33 = v60;
    if ((*(v60 + 48))(v32, 1, v59) == 1)
    {

      sub_1000BEC3C(v32);
LABEL_13:
      sub_1000BCE18();
      swift_allocError();
      *v41 = 3;
      swift_willThrow();

      return;
    }

    v53 = v29;
    v35 = v57;
    (*(v33 + 32))(v57, v32, v34);
    v36 = v55(3);
    if (!v37)
    {
      (*(v33 + 8))(v35, v34);
      goto LABEL_12;
    }

    v38 = v37;
    v39 = v36;
    (*(*v25 + 112))(4);
    if (v40)
    {
      (*(v60 + 8))(v57, v59);

LABEL_12:

      goto LABEL_13;
    }

    v58 = v30;
    v42 = v59;
    v43 = v57;
    if (v54)
    {

      type metadata accessor for KTEligibilityStatusResult(0);
      v44 = v60;
      v45 = v56;
      v46 = v43;
      (*(v60 + 16))(v56, v43, v42);
      (*(v44 + 56))(v45, 0, 1, v42);
      v47 = sub_100130A90(v53, v58, v45);

      sub_1000BEC3C(v45);
    }

    else
    {
      v55 = type metadata accessor for KTEligibilityStatusResult(0);
      v48 = v60;
      v49 = v56;
      (*(v60 + 16))(v56, v43, v42);
      (*(v48 + 56))(v49, 0, 1, v42);
      v50 = v39;
      v46 = v43;
      v47 = sub_1001305D0(2, v53, v58, v50, v38, v49);
    }

    v51 = *(*v22 + 96);
    v52 = v47;
    v51();

    (*(v60 + 8))(v46, v42);
    *a4 = v52;
  }
}

BOOL sub_1000B9148()
{
  Date.timeIntervalSinceReferenceDate.getter();
  v1 = v0;
  Date.timeIntervalSinceReferenceDate.getter();
  if (v2 >= v1)
  {
    return 0;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  v4 = v3;
  Date.timeIntervalSinceReferenceDate.getter();
  return v4 <= v5;
}

uint64_t sub_1000B91C0()
{
  v1 = *(v0 + 32);
  sub_100095820(&qword_100383FB0, &unk_1002D6690);
  return OS_dispatch_queue.sync<A>(execute:)();
}

void sub_1000B9240(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  sub_10009AEC4();
  if (!v4)
  {
    v16 = v15;
    v30 = a4;
    v17 = *(*v15 + 104);
    v31 = 0;
    v17(0, a2, a3);
    sub_100095820(&qword_100383FB0, &unk_1002D6690);
    v18 = swift_allocBox();
    v19 = *(v10 + 56);
    v29 = v20;
    v19(v20, 1, 1, v9);
    v21 = swift_allocBox();
    static Date.now.getter();
    Date.advanced(by:)();
    (*(v10 + 8))(v13, v9);
    v22 = swift_allocBox();
    static Date.now.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = v21;
    v24[4] = v22;
    v24[5] = v23;
    v24[6] = v18;
    v25 = *(*v16 + 152);

    v26 = v31;
    v25(sub_1000BED50, v24);

    if (!v26)
    {
      v27 = v29;
      swift_beginAccess();
      sub_1000AB050(v27, v30, &qword_100383FB0, &unk_1002D6690);
    }
  }
}

uint64_t sub_1000B9570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v82 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v75 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v85 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v86 = &v75 - v17;
  v18 = __chkstk_darwin(v16);
  v83 = &v75 - v19;
  v20 = __chkstk_darwin(v18);
  v84 = &v75 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v75 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v75 - v26;
  __chkstk_darwin(v25);
  v89 = &v75 - v28;
  v87 = swift_projectBox();
  v29 = swift_projectBox();
  v30 = swift_projectBox();
  v31 = (*(*a1 + 104))(1);
  (*(*a1 + 96))(0);
  if (v32)
  {

    (*(*a1 + 120))(2);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v81 = v29;
      v35 = v89;
      v80 = *(v12 + 32);
      v80(v89, v10, v11);
      if ((v31 & 0x1FFFFFFFFLL) != 1)
      {
        (*(v12 + 8))(v35, v11);
        return 0;
      }

      v78 = v30;
      v36 = v87;
      swift_beginAccess();
      v37 = *(v12 + 16);
      v37(v27, v36, v11);
      v38 = v81;
      swift_beginAccess();
      v37(v24, v38, v11);
      Date.timeIntervalSinceReferenceDate.getter();
      v40 = v39;
      Date.timeIntervalSinceReferenceDate.getter();
      v79 = v12;
      if (v41 >= v40)
      {
        v46 = *(v12 + 8);
        v46(v24, v11);
        v46(v27, v11);
      }

      else
      {
        Date.timeIntervalSinceReferenceDate.getter();
        v43 = v42;
        Date.timeIntervalSinceReferenceDate.getter();
        v45 = v44;
        v46 = *(v12 + 8);
        v46(v24, v11);
        v46(v27, v11);
        if (v43 <= v45)
        {
          v33 = 1;
          v47 = v88;
          swift_beginAccess();
          *(v47 + 16) = 1;
          v48 = v82;
          v80(v82, v89, v11);
          (*(v79 + 56))(v48, 0, 1, v11);
          v49 = v78;
          swift_beginAccess();
          sub_1000BECD4(v48, v49);
          return v33;
        }
      }

      v50 = v88;
      swift_beginAccess();
      if ((*(v50 + 16) & 1) == 0)
      {
        v46(v89, v11);
        return 0;
      }

      v51 = v87;
      swift_beginAccess();
      v52 = v84;
      v37(v84, v51, v11);
      v53 = v81;
      swift_beginAccess();
      v76 = v37;
      v77 = v46;
      v54 = v37;
      v56 = v79 + 40;
      v55 = *(v79 + 40);
      v55(v53, v52, v11);
      swift_beginAccess();
      v57 = v83;
      v54(v83, v51, v11);
      v58 = v77;
      Date.advanced(by:)();
      v83 = (v56 - 32);
      v58(v57, v11);
      swift_beginAccess();
      v55(v51, v52, v11);
      v59 = v88;
      swift_beginAccess();
      *(v59 + 16) = 0;
      swift_beginAccess();
      v60 = v86;
      v61 = v76;
      v76(v86, v51, v11);
      v62 = v81;
      swift_beginAccess();
      v63 = v85;
      v61(v85, v62, v11);
      v64 = v89;
      Date.timeIntervalSinceReferenceDate.getter();
      v66 = v65;
      Date.timeIntervalSinceReferenceDate.getter();
      if (v67 >= v66)
      {
        v58(v63, v11);
        v58(v60, v11);
      }

      else
      {
        Date.timeIntervalSinceReferenceDate.getter();
        v69 = v68;
        Date.timeIntervalSinceReferenceDate.getter();
        v71 = v70;
        v58(v63, v11);
        v58(v60, v11);
        if (v69 <= v71)
        {
          v33 = 1;
          v72 = v88;
          swift_beginAccess();
          *(v72 + 16) = 1;
          v73 = v82;
          v80(v82, v64, v11);
          (*(v79 + 56))(v73, 0, 1, v11);
          v74 = v78;
          swift_beginAccess();
          sub_1000BECD4(v73, v74);
          return v33;
        }
      }

      v58(v64, v11);
      return 1;
    }

    sub_1000BEC3C(v10);
  }

  return 0;
}

uint64_t sub_1000B9D70()
{
  v2 = *(v0 + 32);
  type metadata accessor for AggregateElementInfo();
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000B9DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(*a1 + 104))(1);
  v18 = (*(*a1 + 96))(0);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v31 = v18;
  (*(*a1 + 120))(2);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_1000BEC3C(v11);
    return 0;
  }

  (*(v13 + 32))(v16, v11, v12);
  if ((v17 & 0x1FFFFFFFFLL) == 1)
  {

    v22 = sub_1000BD108(v16, a4);
    swift_beginAccess();
    v23 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    sub_1000BC5EC(1, v22, isUniquelyReferenced_nonNull_native);
    *(a5 + 16) = v33;
    swift_endAccess();
    (*(v13 + 8))(v16, v12);
    return 1;
  }

  else
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136446210;
      v29 = sub_1000999E4(v31, v20, &v34);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failure found for element %{public}s when checking on-by-default eligibility", v27, 0xCu);
      sub_10009A9E8(v28);
    }

    else
    {
    }

    (*(v13 + 8))(v16, v12);
    v30 = v32;
    swift_beginAccess();
    result = 0;
    *(v30 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000BA1B4()
{
  v2 = *(v0 + 32);
  sub_100095820(&qword_100387710, &qword_1002D6E30);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000BA2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return (_swift_task_switch)(sub_1000BA2D8, 0, 0);
}

uint64_t sub_1000BA2D8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v8 = *(v0 + 16);
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  *(v5 + 24) = v8;
  *(v5 + 40) = v3;
  *(v5 + 48) = v2;
  OS_dispatch_queue.sync<A>(execute:)();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000BA3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return (_swift_task_switch)(sub_1000BA3DC, 0, 0);
}

uint64_t sub_1000BA3DC()
{
  v1 = *(v0 + 48);
  v8 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  *(v5 + 24) = v8;
  *(v5 + 40) = v3;
  sub_100095820(&qword_100383FB0, &unk_1002D6690);
  OS_dispatch_queue.sync<A>(execute:)();

  v6 = *(v0 + 8);

  return v6();
}

void sub_1000BA4C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  v18 = *(a1 + 24);
  sub_10009AEC4();
  if (!v5)
  {
    v20 = v19;
    v55 = v18;
    v56 = v15;
    v60 = 0;
    v21 = a3;
    v22 = *(*v19 + 104);
    v53 = a2;
    v54 = v21;
    (v22)(0);
    v23 = [a4 code];
    if (v23 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v23 <= 0x7FFFFFFF)
    {
      v57 = a5;
      (*(*v20 + 112))(1, v23);
      v24 = [a4 domain];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = a4;
      v27 = v26;

      v22(2, v25, v27);

      v28 = swift_allocBox();
      v30 = v29;
      v31 = type metadata accessor for Date();
      v32 = *(v31 - 8);
      v33 = *(v32 + 56);
      v58 = v30;
      v59 = v31;
      v33(v30, 1, 1);
      v34 = *(*v20 + 152);

      v35 = v60;
      v34(sub_1000BECAC, v28);
      v60 = v35;
      if (v35)
      {

        return;
      }

      v50 = v33;
      v51 = v28;

      v36 = v58;
      swift_beginAccess();
      sub_1000AB050(v36, v17, &qword_100383FB0, &unk_1002D6690);
      v49 = v32;
      v37 = *(v32 + 48);
      v38 = v59;
      v39 = v37(v17, 1, v59);
      sub_1000BEC3C(v17);
      if (v39 == 1)
      {
        v40 = v60;
        sub_10009AEC4();
        if (v40)
        {

          return;
        }

        v44 = v41;
        (*(*v41 + 104))(0, v53, v54);
        v45 = swift_allocObject();
        v46 = v52;
        *(v45 + 16) = v52;
        *(v45 + 24) = v51;
        v47 = *(*v44 + 152);

        v48 = v46;
        v47(sub_1000BECCC, v45);
        v60 = 0;

        sub_1000AB050(v36, v57, &qword_100383FB0, &unk_1002D6690);
        goto LABEL_11;
      }

      v42 = v56;
      sub_1000AB050(v36, v56, &qword_100383FB0, &unk_1002D6690);
      if (v37(v42, 1, v38) != 1)
      {

        v43 = v57;
        (*(v49 + 32))(v57, v42, v38);
        (v50)(v43, 0, 1, v38);
LABEL_11:

        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1000BA9FC(uint64_t a1)
{
  v2 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = swift_projectBox();
  (*(*a1 + 120))(0);
  swift_beginAccess();
  return sub_1000BECD4(v5, v6);
}

uint64_t sub_1000BAAD4(uint64_t a1, void *a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v8 = swift_projectBox();
  v9 = (*(*a1 + 128))(1);
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  v13 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v38[0] = 0;
  v15 = [v13 JSONObjectWithData:isa options:0 error:v38];

  if (v15)
  {
    v16 = *&v38[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095820(&unk_100384D80, &qword_1002D6E48);
    if (swift_dynamicCast())
    {
      v17 = *&v37[0];
      if (*(*&v37[0] + 16))
      {
        v18 = sub_10000574C(0x6E69616D6F64, 0xE600000000000000);
        if (v19)
        {
          sub_10009AA34(*(v17 + 56) + 32 * v18, v37);
          sub_10009C6AC(v37, v38);
          swift_dynamicCast();
          if (*(v17 + 16))
          {
            v34 = v8;
            v21 = v35;
            v20 = v36;
            v22 = sub_10000574C(1701080931, 0xE400000000000000);
            if (v23)
            {
              sub_10009AA34(*(v17 + 56) + 32 * v22, v37);

              sub_10009C6AC(v37, v38);
              swift_dynamicCast();
              v33 = v35;
              v24 = [a2 domain];
              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v26;

              if (v21 == v25 && v20 == v27)
              {

                v28 = v34;
              }

              else
              {
                v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v28 = v34;
                if ((v30 & 1) == 0)
                {
                  goto LABEL_18;
                }
              }

              v31 = [a2 code];
              if (v33 == v31)
              {
                (*(*a1 + 120))(0);
                sub_10009A9D4(v11, v12);
                swift_beginAccess();
                sub_1000BECD4(v7, v28);
                return 0;
              }

LABEL_18:
              sub_10009A9D4(v11, v12);
              return 1;
            }

LABEL_22:
            __break(1u);
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_21;
    }

    sub_10009A9D4(v11, v12);
  }

  else
  {
    v29 = *&v38[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10009A9D4(v11, v12);
  }

  return 0;
}

uint64_t sub_1000BAEC8(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return result;
  }

  v3 = result;
  result = sub_10000574C(0x6E69616D6F64, 0xE600000000000000);
  if ((v4 & 1) == 0)
  {
    return result;
  }

  sub_10009AA34(*(a2 + 56) + 32 * result, &v23);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (!*(a2 + 16))
  {
  }

  v5 = sub_10000574C(1701080931, 0xE400000000000000);
  if ((v6 & 1) == 0)
  {
  }

  sub_10009AA34(*(a2 + 56) + 32 * v5, &v23);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v23 = v21;
  v24 = v22;
  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v10 = v23;
  v9 = v24;
  v11 = *v3;
  if (!*(*v3 + 16))
  {
    goto LABEL_16;
  }

  sub_10000574C(v23, v24);
  if ((v12 & 1) == 0)
  {
    v19 = *v3;
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = 1;
    goto LABEL_17;
  }

  if (!*(v11 + 16))
  {
  }

  result = sub_10000574C(v10, v9);
  if ((v13 & 1) == 0)
  {
  }

  v14 = *(*(v11 + 56) + 8 * result);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
    return result;
  }

  v16 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v3;
  v18 = v15;
LABEL_17:
  sub_1000BC718(v18, v10, v9, isUniquelyReferenced_nonNull_native);

  *v3 = v23;
  if (*(a2 + 16))
  {
    result = sub_10000574C(0x646C696863, 0xE500000000000000);
    if (v20)
    {
      sub_10009AA34(*(a2 + 56) + 32 * result, &v23);
      sub_100095820(&unk_100384D80, &qword_1002D6E48);
      result = swift_dynamicCast();
      if (result)
      {
        (sub_1000BAEC8)(v3);
      }
    }
  }

  return result;
}

uint64_t sub_1000BB13C()
{
  v2 = *(v0 + 32);
  sub_100095820(&qword_100384530, &qword_1002D6E50);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000BB1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*a1 + 96))(0);
  if (!v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  v13 = (*(*a1 + 104))(1);
  if ((v13 & 0x100000000) == 0)
  {
    v14 = v13;
    if (v13)
    {
      v37 = v11;
      v38 = v12;
      v15._countAndFlagsBits = 45;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      LODWORD(v36) = v14;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v18 = v37;
      v17 = v38;
      swift_beginAccess();
      v19 = *(a2 + 16);
      if (*(v19 + 16) && (v20 = sub_10000574C(v18, v17), (v21 & 1) != 0))
      {
        v22 = *(*(v19 + 56) + 8 * v20);
      }

      else
      {
        v22 = 0;
      }

      swift_endAccess();
      if (__OFADD__(v22, 1))
      {
        __break(1u);
      }

      swift_beginAccess();
      v27 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(a2 + 16);
      *(a2 + 16) = 0x8000000000000000;
      sub_1000BC718(v22 + 1, v18, v17, isUniquelyReferenced_nonNull_native);

      *(a2 + 16) = v36;
      swift_endAccess();
      return 1;
    }
  }

  static String.Encoding.utf8.getter();
  v23 = String.data(using:allowLossyConversion:)();
  v25 = v24;

  (*(v5 + 8))(v8, v4);
  if (v25 >> 60 == 15)
  {
    return 0;
  }

  sub_1000BEA10(_swiftEmptyArrayStorage);

  v29 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v37 = 0;
  v31 = [v29 JSONObjectWithData:isa options:0 error:&v37];

  if (!v31)
  {
    v34 = v37;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10009A9D4(v23, v25);

    return 0;
  }

  v32 = v37;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095820(&unk_100384D80, &qword_1002D6E48);
  if (swift_dynamicCast())
  {
    v33 = v36;
  }

  else
  {
    v33 = sub_1000BEA10(_swiftEmptyArrayStorage);
  }

  swift_beginAccess();
  sub_1000BAEC8(a2 + 16, v33);
  swift_endAccess();
  sub_10009A9D4(v23, v25);

  return 1;
}

uint64_t sub_1000BB5C4()
{
  v2 = *(v0 + 32);
  sub_100095820(&qword_100384538, &qword_1002D6E58);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000BB654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*a1 + 104))(0);
  (*(*a1 + 120))(1);
  v16 = (*(v11 + 48))(v9, 1, v10);
  if (v16 == 1)
  {
    goto LABEL_9;
  }

  v17 = v15 & 0x1FFFFFFFFLL;
  (*(v11 + 32))(v14, v9, v10);
  v18 = sub_1000BD108(v14, a2);
  swift_beginAccess();
  v19 = *(a3 + 16);
  if (!*(v19 + 16) || (v20 = sub_1000BBDB4(v18), (v21 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    v27 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    v29 = 1;
    v30 = v17 == 1;
    v31 = v17 != 1;
LABEL_13:
    sub_1000BC87C(v29, v30, v31, v18, isUniquelyReferenced_nonNull_native);
    *(a3 + 16) = v33;
    swift_endAccess();
    (*(v11 + 8))(v14, v10);
    return v16 != 1;
  }

  v22 = (*(v19 + 56) + 24 * v20);
  v23 = *v22;
  v24 = v22[1];
  v9 = v22[2];
  result = swift_endAccess();
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 != 1)
    {
      v26 = __OFADD__(v9++, 1);
      if (!v26)
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_9:
      sub_1000BEC3C(v9);
      return v16 != 1;
    }

    v26 = __OFADD__(v24++, 1);
    if (!v26)
    {
LABEL_12:
      swift_beginAccess();
      v32 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      v29 = v23 + 1;
      v30 = v24;
      v31 = v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t KTEligibilityDB.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC13transparencyd15KTEligibilityDB_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t KTEligibilityDB.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC13transparencyd15KTEligibilityDB_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

unint64_t sub_1000BBA90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for KTSwiftDB();
  return static KTSwiftDB.== infix(_:_:)(*(v2 + 24), *(v3 + 24)) & 1;
}

size_t sub_1000BBAD8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100095820(&unk_100384678, &qword_1002D7170);
  v10 = *(type metadata accessor for Date() - 8);
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
  v15 = *(type metadata accessor for Date() - 8);
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

char *sub_1000BBCB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&qword_100384650, &qword_1002D7140);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_1000BBDB4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1000BBDF8(a1, v4);
}

unint64_t sub_1000BBDF8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000BBE64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100095820(&qword_100384670, &qword_1002D7168);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000BC0C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100095820(&qword_100384668, &qword_1002D7160);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000BC368(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100095820(&qword_100384658, &qword_1002D7148);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 24 * v21);
      v25 = v23[1];
      v24 = v23[2];
      v26 = *v23;
      v27 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 24 * v16);
      *v17 = v26;
      v17[1] = v25;
      v17[2] = v24;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v36)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1000BC5EC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000BBDB4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1000BC9C8();
    result = v17;
    goto LABEL_8;
  }

  sub_1000BBE64(v14, a3 & 1);
  v18 = *v4;
  result = sub_1000BBDB4(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1 & 1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + result) = a1 & 1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000BC718(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10000574C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000BC0C8(v16, a4 & 1);
      v20 = *v5;
      result = sub_10000574C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000BCB14();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_1000BC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1000BBDB4(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    sub_1000BCC7C();
    result = v21;
    goto LABEL_8;
  }

  sub_1000BC368(v18, a5 & 1);
  v22 = *v6;
  result = sub_1000BBDB4(a4);
  if ((v19 & 1) == (v23 & 1))
  {
LABEL_8:
    v24 = *v6;
    if (v19)
    {
      v25 = (v24[7] + 24 * result);
      *v25 = a1;
      v25[1] = a2;
      v25[2] = a3;
      return result;
    }

    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 8 * result) = a4;
    v26 = (v24[7] + 24 * result);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000BC9C8()
{
  v1 = v0;
  sub_100095820(&qword_100384670, &qword_1002D7168);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000BCB14()
{
  v1 = v0;
  sub_100095820(&qword_100384668, &qword_1002D7160);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000BCC7C()
{
  v1 = v0;
  sub_100095820(&qword_100384658, &qword_1002D7148);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000BCDE0(uint64_t result)
{
  if ((result - 19) < 0xFFFFFFFFFFFFFFEELL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000BCE18()
{
  result = qword_100385760;
  if (!qword_100385760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385760);
  }

  return result;
}

unint64_t sub_1000BCE6C()
{
  result = qword_100384518;
  if (!qword_100384518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100384518);
  }

  return result;
}

unint64_t sub_1000BCEB8()
{
  result = qword_100384C00;
  if (!qword_100384C00)
  {
    sub_1000967DC(&qword_100384520, &qword_1002D74D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384C00);
  }

  return result;
}

void sub_1000BCF38()
{
  v2 = *(v0 + 24);
  sub_10009AE38();
  if (!v1)
  {
    sub_10009AE38();
  }
}

uint64_t sub_1000BCFBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000BCFD4()
{
  v2 = *(v0 + 24);
  v3 = *(*(v0 + 16) + 24);
  sub_10009AEC4();
  if (!v1)
  {
    v5 = v4;
    v6 = (*(*v4 + 128))(0, v2);
    if ((*(*v5 + 160))(v6))
    {

      sub_1000BCE18();
      swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }

    else
    {
      (*(*v5 + 96))();
    }
  }
}

unint64_t sub_1000BD108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  while (Date.compare(_:)() != -1 && Date.compare(_:)())
  {
    if (v2 - 2 == v4)
    {
      return v2 - 1;
    }

    ++v4;
    v6 += v7;
    if (v2 == v4)
    {
      __break(1u);
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1000BD1EC(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v27 = v23 - v9;
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  result = Date.init()();
  v13 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v13 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v14 = 0;
  v26 = v3 + 8;
  v23[1] = v3 + 32;
  v24 = (v3 + 16);
  v15 = _swiftEmptyArrayStorage;
  v25 = v7;
  while (1)
  {
    v16 = v27;
    Date.advanced(by:)();
    (*v24)(v7, v16, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1000BBAD8(0, v15[2] + 1, 1, v15);
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1000BBAD8(v17 > 1, v18 + 1, 1, v15);
    }

    v19 = *(v3 + 8);
    v19(v11, v2);
    v15[2] = v18 + 1;
    v20 = v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18;
    v21 = *(v3 + 32);
    v7 = v25;
    v21(v20, v25, v2);
    result = (v21)(v11, v27, v2);
    if (v13 == v14)
    {
      break;
    }

    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  v19(v11, v2);
  return v15;
}

void sub_1000BD494(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v4 + 24);
  sub_10009AEC4();
  if (!v2)
  {
    v52 = a1;
    v13 = *(*v12 + 104);
    v14 = v12;
    v57 = 0;
    v13(0, v5, v7);
    (*(*v14 + 128))(1, v6);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000BE834(_swiftEmptyArrayStorage);
    v16 = v15 + 16;
    v17 = sub_1000BD1EC(v8);
    v53 = v5;
    v54 = v7;
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v19 = (v18 + 16);
    v51 = v8;
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = v18;
    v20[4] = v17;
    v20[5] = v15;
    v21 = *(*v14 + 152);

    v21(sub_1000BED44, v20);

    if (v57)
    {

      return;
    }

    swift_beginAccess();
    v22 = v15 + 16;
    v23 = *v16;
    v24 = *(*v16 + 16);
    v25 = v24 / v51 * 100.0;
    swift_beginAccess();
    v26 = *v19;
    if (v24)
    {
      v27 = sub_1000BBDB4(0);
      v28 = v53;
      if (v29)
      {
        v30 = *(*(v23 + 56) + v27);
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
      v28 = v53;
    }

    v31 = type metadata accessor for AggregateElementInfo();
    v32 = objc_allocWithZone(v31);
    v33 = &v32[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_element];
    *v33 = v28;
    v33[1] = v54;
    *&v32[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_samples] = v51;
    v32[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success] = 0;
    v32[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures] = v26;
    v32[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess] = v30;
    *&v32[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate] = v25;
    v56.receiver = v32;
    v56.super_class = v31;

    v34 = objc_msgSendSuper2(&v56, "init");
    if (*v19)
    {
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Found failures, returning aggregate result of false", v37, 2u);
      }

      goto LABEL_25;
    }

    swift_beginAccess();
    v38 = *v22;
    if (*(*v22 + 16) && (v39 = sub_1000BBDB4(0), (v40 & 1) != 0))
    {
      v41 = *(*(v38 + 56) + v39);
      swift_endAccess();
      if (v41)
      {
        if (v25 < v10)
        {

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();

          v44 = v42;
          if (!os_log_type_enabled(v42, v43))
          {

            goto LABEL_25;
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v55 = v46;
          *v45 = 134218242;
          *(v45 + 4) = v25;
          *(v45 + 12) = 2082;
          *(v45 + 14) = sub_1000999E4(v53, v54, &v55);
          v47 = v44;
          _os_log_impl(&_mh_execute_header, v44, v43, "Present rate of %f is too low for element %{public}s. Returning aggregate result of false", v45, 0x16u);
          sub_10009A9E8(v46);

          goto LABEL_23;
        }

        (*((swift_isaMask & *v34) + 0x88))(1);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v47, v48))
        {
          goto LABEL_24;
        }

        v49 = swift_slowAlloc();
        *v49 = 0;
        v50 = "Returning aggregate result of true";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v47, v48, v50, v49, 2u);
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      swift_endAccess();
    }

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v47, v48))
    {
LABEL_24:

LABEL_25:

      *v52 = v34;
      return;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "Most recent sample is missing, returning aggregate result of false";
    goto LABEL_22;
  }
}

void sub_1000BDA9C(uint64_t *a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v1[2] + 24);
  sub_10009AEC4();
  if (!v2)
  {
    v8 = v7;
    v9 = (*(*v7 + 104))(0, v4, v5);
    v10 = (*(*v8 + 160))(v9);
    if (v10)
    {
      v11 = *(*v10 + 96);

      v12 = v11(0);
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        (*(*v8 + 96))();

        *a1 = v14;
        a1[1] = v15;
      }

      else
      {
        sub_1000BCE18();
        swift_allocError();
        *v16 = 3;
        swift_willThrow();
      }
    }

    else
    {

      *a1 = 0;
      a1[1] = 0;
    }
  }
}

void sub_1000BDC64()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(*(v0 + 16) + 24);
  sub_10009AEC4();
  if (v1)
  {
    return;
  }

  v12 = v11;
  v17 = v5;
  v13 = *(*v11 + 104);
  v13(0, v3, v4);
  v14 = *(*v12 + 112);
  v14(1, v2);
  v15 = (*(*v12 + 128))(2, v6);
  if (v8)
  {
    v15 = v13(3, v17, v8);
  }

  if ((v9 & 1) == 0)
  {
    if (v7 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v7 <= 0x7FFFFFFF)
    {
      v15 = (v14)(4);
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

LABEL_8:
  if ((*(*v12 + 160))(v15))
  {

    sub_1000BCE18();
    swift_allocError();
    *v16 = 4;
    swift_willThrow();
  }

  else
  {
    (*(*v12 + 96))();
  }
}

void sub_1000BDE6C()
{
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = *(v0[2] + 24);
  sub_10009AEC4();
  if (!v1)
  {
    v8 = v7;
    v9 = *(*v7 + 104);
    v9(0, v2, v4);
    v10 = v9(1, v3, v5);
    if ((*(*v8 + 160))(v10))
    {

      sub_1000BCE18();
      swift_allocError();
      *v11 = 4;
      swift_willThrow();
    }

    else
    {
      (*(*v8 + 96))();
    }
  }
}

void sub_1000BDFDC(void *a1@<X8>)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = *(v4 + 24);
  sub_10009AEC4();
  if (!v2)
  {
    v10 = v9;
    (*(*v9 + 104))(0, v5, v7);
    (*(*v10 + 128))(1, v6);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1000BE914(_swiftEmptyArrayStorage);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v4;
    v13 = *(*v10 + 152);

    v13(sub_1000BECA4, v12);

    swift_beginAccess();
    *a1 = *(v11 + 16);
  }
}

void sub_1000BE1A8(char **a1@<X8>)
{
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = *(v5 + 24);
  sub_10009AEC4();
  if (!v2)
  {
    v12 = v11;
    v32 = a1;
    (*(*v11 + 104))(0, v4, v7);
    (*(*v12 + 128))(1, v6);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000BEB40(_swiftEmptyArrayStorage);
    v14 = v13 + 16;
    v15 = sub_1000BD1EC(v8);
    v16 = swift_allocObject();
    v16[2] = v5;
    v16[3] = v15;
    v16[4] = v13;
    v17 = *(*v12 + 152);

    v17(sub_1000BEC34, v16);

    if (v8 < 0)
    {
LABEL_33:
      __break(1u);
      return;
    }

    if (v8)
    {
      v18 = 0;
      v19 = _swiftEmptyArrayStorage;
      v20 = v32;
      while (1)
      {
        v21 = *(v19 + 2);
        if (v21 < v18)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v21 >= *(v19 + 3) >> 1)
        {
          v19 = sub_1000BBCB0(isUniquelyReferenced_nonNull_native, v21 + 1, 1, v19);
        }

        v23 = &v19[8 * v18];
        memmove(v23 + 40, v23 + 32, 8 * (*(v19 + 2) - v18));
        ++*(v19 + 2);
        *(v23 + 4) = 0;
        swift_beginAccess();
        v24 = *v14;
        if (*(*v14 + 16) && (v25 = sub_1000BBDB4(v18), (v26 & 1) != 0))
        {
          v27 = (*(v24 + 56) + 24 * v25);
          v29 = *v27;
          v28 = v27[1];
          v30 = v27[2];
          swift_endAccess();
          if (v30 <= 0)
          {
            v20 = v32;
            if (v28 >= 1)
            {
              if (v18 >= *(v19 + 2))
              {
                goto LABEL_32;
              }

              *(v23 + 4) = v28;
            }
          }

          else
          {
            v31 = round(v30 / v29 * 100.0);
            if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_27;
            }

            if (v31 <= -9.22337204e18)
            {
              goto LABEL_28;
            }

            if (v31 >= 9.22337204e18)
            {
              goto LABEL_29;
            }

            if (__OFADD__(v31, 1))
            {
              goto LABEL_30;
            }

            if (v18 >= *(v19 + 2))
            {
              goto LABEL_31;
            }

            *(v23 + 4) = -(v31 + 1);
            v20 = v32;
          }
        }

        else
        {
          swift_endAccess();
        }

        if (++v18 == v8)
        {

          *v20 = v19;
          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    *v32 = _swiftEmptyArrayStorage;
  }
}

unint64_t sub_1000BE558()
{
  result = qword_100384540;
  if (!qword_100384540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384540);
  }

  return result;
}

unint64_t sub_1000BE5B0()
{
  result = qword_100384548;
  if (!qword_100384548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384548);
  }

  return result;
}

unint64_t sub_1000BE608()
{
  result = qword_100384550;
  if (!qword_100384550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384550);
  }

  return result;
}

unint64_t sub_1000BE660()
{
  result = qword_100384558;
  if (!qword_100384558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384558);
  }

  return result;
}

uint64_t sub_1000BE6B8(uint64_t a1)
{
  result = sub_1000BE710(&qword_100384560, type metadata accessor for KTEligibilityDB);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000BE710(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 initializeBufferWithCopyOfBuffer for BucketInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BucketInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BucketInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1000BE7E0()
{
  result = qword_100384648;
  if (!qword_100384648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384648);
  }

  return result;
}

unint64_t sub_1000BE834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384670, &qword_1002D7168);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000BBDB4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1000BE914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384668, &qword_1002D7160);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000574C(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000BEA10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384A90, &unk_1002D7150);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000AB050(v4, &v13, &qword_100384660, &qword_1002D7640);
      v5 = v13;
      v6 = v14;
      result = sub_10000574C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10009C6AC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000BEB40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384658, &qword_1002D7148);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1000BBDB4(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
uint64_t sub_100018304(uint64_t a1)
{
  v1[14] = a1;
  v2 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000183C4, 0, 0);
}

uint64_t sub_1000183C4()
{
  v49 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  dispatch thunk of FBKSInteraction.featureDomain.getter();
  v5 = (*(v2 + 88))(v1, v4);
  if (v5 == enum case for FBKSInteraction.FeatureDomain.mailSummarization(_:))
  {
    v6 = 0xEF4449746867696CLL;
    v7 = 0x746F70536C69616DLL;
  }

  else
  {
    if (v5 != enum case for FBKSInteraction.FeatureDomain.messagesSummarization(_:))
    {
      (*(v0[16] + 8))(v0[17], v0[15]);
      if (qword_1000825E0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100002D00(v41, qword_100082E88);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_34;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "donation duplicate key is nil";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);

LABEL_34:

      goto LABEL_35;
    }

    v7 = 0xD000000000000012;
    v6 = 0x800000010006B600;
  }

  v8 = sub_100017C8C(v0[14], v7, v6);
  if (!v9)
  {

    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100002D00(v36, qword_100082E88);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_34;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "donation spotlightID is nil";
    goto LABEL_26;
  }

  v10 = v8;
  v11 = v9;
  if (qword_1000825E0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100002D00(v12, qword_100082E88);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000049B8(v10, v11, v48);
    _os_log_impl(&_mh_execute_header, v13, v14, "Will search for id: %s", v15, 0xCu);
    sub_100005ED8(v16);
  }

  v17 = [objc_allocWithZone(BMSQLDatabase) init];
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(255);
  v18._countAndFlagsBits = 0xD0000000000000C7;
  v18._object = 0x800000010006B620;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v7;
  v19._object = v6;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000023;
  v20._object = 0x800000010006B6F0;
  String.append(_:)(v20);
  v21._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x524548570A290A22;
  v22._object = 0xEE00223D64692045;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v10;
  v23._object = v11;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 34;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = BMSQLDatabase.execute(query:)();

  [v25 next];
  v26 = [v25 row];
  if (!v26)
  {

    v37 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "No duplicate row for spotlightID existed";
      goto LABEL_32;
    }

LABEL_33:

    goto LABEL_34;
  }

  v27 = v26;
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v0[11] = 0x746E756F63;
  v0[12] = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v28 + 16) || (v29 = sub_10005BC6C((v0 + 2)), (v30 & 1) == 0))
  {

    sub_100006FC4((v0 + 2));
    goto LABEL_28;
  }

  sub_100007018(*(v28 + 56) + 32 * v29, (v0 + 7));
  sub_100006FC4((v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_28:
    v37 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "duplicate row count existed, but count didn't exist";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v37, v42, v44, v43, 2u);

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v31 = v0[13];

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_1000049B8(v10, v11, v48);
    *(v34 + 12) = 2048;
    *(v34 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "Duplicate count for spotlightID %s is %ld", v34, 0x16u);
    sub_100005ED8(v35);
  }

  if (v31 <= 0)
  {

LABEL_35:
    v10 = 0;
    v11 = 0;
  }

  v45 = v0[17];

  v46 = v0[1];

  return v46(v10, v11);
}

uint64_t sub_100018B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018BB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100018C00(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100004F70(&qword_100082EF0, &qword_100069310);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100018ECC();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100018ECC();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_100018ECC()
{
  result = qword_100083460;
  if (!qword_100083460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100083460);
  }

  return result;
}

uint64_t sub_100018F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018FAC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10001904C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000190B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001913C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000191E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_10001923C()
{
  if (!qword_100083018)
  {
    type metadata accessor for FBKSInteraction.FeatureDomain();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100083018);
    }
  }
}

uint64_t sub_1000192A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100019310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019374(uint64_t a1)
{
  v2 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000193E0()
{
  v1 = v0;
  v2 = sub_100004F70(&unk_100083410, &qword_100068D50);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Date();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v7);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v41 - v11;
  sub_100004F70(&qword_100083040, &qword_1000693C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000693B0;
  *&v51 = 0x736572756C696166;
  *(&v51 + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v13 = type metadata accessor for FormLaunchConfiguration();
  v14 = *(v0 + v13[7]);
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = v14;
  *&v51 = 1702125924;
  *(&v51 + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v7;
  sub_100019A2C((inited + 144));
  static Date.now.getter();
  *&v51 = 0x6F43657A6F6F6E73;
  *(&v51 + 1) = 0xEB00000000746E75;
  AnyHashable.init<A>(_:)();
  v15 = *(v0 + v13[10]);
  *(inited + 240) = &type metadata for Int;
  *(inited + 216) = v15;
  *&v51 = 0xD000000000000013;
  *(&v51 + 1) = 0x800000010006B740;
  AnyHashable.init<A>(_:)();
  v16 = *(v0 + 80);
  v53 = *(v0 + 64);
  v54 = v16;
  v55 = *(v0 + 96);
  v56 = *(v0 + 112);
  v17 = *(v0 + 48);
  v51 = *(v0 + 32);
  v52 = v17;
  v18 = sub_100013F98();
  v19 = [v18 asJSON];

  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(inited + 312) = &type metadata for Data;
  *(inited + 288) = v20;
  *(inited + 296) = v22;
  v50[0] = 1836216166;
  v50[1] = 0xE400000000000000;
  v23 = v43;
  AnyHashable.init<A>(_:)();
  v24 = sub_100014430(*v1, v1[1], v1[2], v1[3]);
  v25 = [v24 asJSON];

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(inited + 384) = &type metadata for Data;
  *(inited + 360) = v26;
  *(inited + 368) = v28;
  v29 = sub_1000159A0(inited);
  swift_setDeallocating();
  sub_100004F70(&unk_100083920, qword_1000693D0);
  v30 = v44;
  swift_arrayDestroy();
  sub_10000F9EC(v1 + v13[8], v30);
  v31 = *(v23 + 48);
  if (v31(v30, 1, v7) == 1)
  {
    sub_10001A28C(v30);
  }

  else
  {
    v32 = v41;
    (*(v23 + 32))(v41, v30, v7);
    *&v48 = 0x75614C7466617264;
    *(&v48 + 1) = 0xEF6574614468636ELL;
    AnyHashable.init<A>(_:)();
    v49 = v7;
    v33 = sub_100019A2C(&v48);
    (*(v23 + 16))(v33, v32, v7);
    sub_100007274(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v29;
    sub_10005E0B0(v47, v50, isUniquelyReferenced_nonNull_native);
    sub_100006FC4(v50);
    (*(v23 + 8))(v32, v7);
    v29 = v46;
  }

  v35 = v1 + v13[9];
  v36 = v45;
  sub_10000F9EC(v35, v45);
  if (v31(v36, 1, v7) == 1)
  {
    sub_10001A28C(v36);
  }

  else
  {
    v37 = v42;
    (*(v23 + 32))(v42, v36, v7);
    *&v48 = 0xD000000000000017;
    *(&v48 + 1) = 0x800000010006B760;
    AnyHashable.init<A>(_:)();
    v49 = v7;
    v38 = sub_100019A2C(&v48);
    (*(v23 + 16))(v38, v37, v7);
    sub_100007274(&v48, v47);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v29;
    sub_10005E0B0(v47, v50, v39);
    sub_100006FC4(v50);
    (*(v23 + 8))(v37, v7);
    return v46;
  }

  return v29;
}

uint64_t type metadata accessor for FormLaunchConfiguration()
{
  result = qword_1000830A0;
  if (!qword_1000830A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_100019A2C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100019A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004F70(&unk_100083410, &qword_100068D50);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v57 - v9;
  v76 = 0xD000000000000013;
  v77 = 0x800000010006B740;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v11 = sub_10005BC6C(v78);
  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007018(*(a1 + 56) + 32 * v11, v79);
  sub_100006FC4(v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v26 = type metadata accessor for FormLaunchConfiguration();
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }

  v14 = v76;
  v13 = v77;
  type metadata accessor for FBKSLaunchConfiguration();
  v15 = static FBKSLaunchConfiguration.fromJSON(data:)();
  if (!v15)
  {
LABEL_35:
    sub_100013C98(v14, v13);
    goto LABEL_19;
  }

  v16 = v15;
  v76 = 1836216166;
  v77 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v17 = sub_10005BC6C(v78), (v18 & 1) == 0))
  {
    sub_100013C98(v14, v13);

LABEL_18:
    sub_100006FC4(v78);
    goto LABEL_19;
  }

  sub_100007018(*(a1 + 56) + 32 * v17, v79);
  sub_100006FC4(v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100013C98(v14, v13);

    goto LABEL_19;
  }

  v19 = v77;
  v75 = v76;
  v76 = 0x6F43657A6F6F6E73;
  v77 = 0xEB00000000746E75;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v74 = v19, v20 = sub_10005BC6C(v78), v19 = v74, (v21 & 1) == 0))
  {
    sub_100013C98(v14, v13);

    sub_100013C98(v75, v19);
    goto LABEL_18;
  }

  sub_100007018(*(a1 + 56) + 32 * v20, v79);
  sub_100006FC4(v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100013C98(v14, v13);

    sub_100013C98(v75, v19);
    goto LABEL_19;
  }

  v73 = v76;
  type metadata accessor for FBKSForm();
  v72 = static FBKSForm.fromJSON(data:)();
  if (!v72)
  {
    sub_100013C98(v75, v74);

    goto LABEL_35;
  }

  v79[0] = 0x736572756C696166;
  v79[1] = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v22 = sub_10005BC6C(v78), (v23 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v22, v79);
    sub_100006FC4(v78);
    v24 = swift_dynamicCast();
    v25 = v76;
    if (!v24)
    {
      v25 = 0;
    }

    v71 = v25;
  }

  else
  {
    sub_100006FC4(v78);
    v71 = 0;
  }

  v76 = 0x75614C7466617264;
  v77 = 0xEF6574614468636ELL;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v28 = sub_10005BC6C(v78), (v29 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v28, v79);
    sub_100006FC4(v78);
    v30 = type metadata accessor for Date();
    v31 = swift_dynamicCast();
    (*(*(v30 - 8) + 56))(v10, v31 ^ 1u, 1, v30);
  }

  else
  {
    sub_100006FC4(v78);
    v32 = type metadata accessor for Date();
    (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  }

  v76 = 0xD000000000000017;
  v77 = 0x800000010006B760;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v33 = sub_10005BC6C(v78), (v34 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v33, v79);
    sub_100006FC4(v78);
    v35 = type metadata accessor for Date();
    v36 = swift_dynamicCast();
    (*(*(v35 - 8) + 56))(v8, v36 ^ 1u, 1, v35);
  }

  else
  {
    sub_100006FC4(v78);
    v37 = type metadata accessor for Date();
    (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
  }

  v38 = v75;
  v39 = v72;
  v75 = dispatch thunk of FBKSForm.identifier.getter();
  v70 = v40;
  v69 = dispatch thunk of FBKSForm.authenticationMethod.getter();
  v68 = dispatch thunk of FBKSForm.answers.getter();
  v41 = dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.getter();
  v66 = v42;
  v67 = v41;
  v65 = dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.getter();
  v64 = v43;
  v63 = dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewProceedButtonTitle.getter();
  v62 = v44;
  v61 = dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewDeclineButtonTitle.getter();
  v60 = v45;
  v59 = dispatch thunk of FBKSLaunchConfiguration.skipsPrompt.getter();
  v58 = dispatch thunk of FBKSLaunchConfiguration.alwaysLaunchInRemoteAlert.getter();
  v57 = dispatch thunk of FBKSLaunchConfiguration.promptStyle.getter();
  v46 = dispatch thunk of FBKSLaunchConfiguration.notifyImmediately.getter();
  v47 = type metadata accessor for FormLaunchConfiguration();
  sub_10000F9EC(v10, a2 + v47[8]);
  sub_10000F9EC(v8, a2 + v47[9]);
  v48 = a2 + v47[6];
  Date.init()();
  sub_100013C98(v14, v13);

  sub_100013C98(v38, v74);
  v50 = v69;
  v49 = v70;
  *a2 = v75;
  *(a2 + 8) = v49;
  v52 = v67;
  v51 = v68;
  *(a2 + 16) = v50;
  *(a2 + 24) = v51;
  v53 = v66;
  *(a2 + 32) = v52;
  *(a2 + 40) = v53;
  v54 = v64;
  *(a2 + 48) = v65;
  *(a2 + 56) = v54;
  v55 = v62;
  *(a2 + 64) = v63;
  *(a2 + 72) = v55;
  v56 = v60;
  *(a2 + 80) = v61;
  *(a2 + 88) = v56;
  *(a2 + 96) = v59;
  *(a2 + 97) = v58;
  *(a2 + 104) = v57;
  *(a2 + 112) = v46;
  *(a2 + v47[7]) = v71;
  *(a2 + v47[10]) = v73;
  (*(*(v47 - 1) + 56))(a2, 0, 1, v47);
  sub_10001A28C(v8);
  return sub_10001A28C(v10);
}

uint64_t sub_10001A28C(uint64_t a1)
{
  v2 = sub_100004F70(&unk_100083410, &qword_100068D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001A308(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100004F70(&unk_100083410, &qword_100068D50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10001A44C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100004F70(&unk_100083410, &qword_100068D50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10001A57C()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10000BC24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 304) = a6;
  *(v7 + 112) = a5;
  *(v7 + 120) = v6;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  v8 = *(*(sub_100004F70(&qword_1000830F0, &qword_100069410) - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v9 = type metadata accessor for User();
  *(v7 + 152) = v9;
  v10 = *(v9 - 8);
  *(v7 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = type metadata accessor for SeedPortal();
  sub_10001B92C();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 184) = v13;
  *(v7 + 192) = v12;

  return _swift_task_switch(sub_10001A76C, v13, v12);
}

uint64_t sub_10001A76C()
{
  v9 = v0;
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 200) = sub_100002D00(v1, SharedLog);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD00000000000002ELL, 0x800000010006B780, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  if (qword_1000826D0 != -1)
  {
    swift_once();
  }

  v6 = qword_100085E68;
  *(v0 + 208) = qword_100085E68;

  return _swift_task_switch(sub_10001A924, v6, 0);
}

uint64_t sub_10001A924()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  sub_100063510();
  v5 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_10001B984(v1 + v5, v4);
  v6 = *(v3 + 48);
  v0[27] = v6;
  v0[28] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v4, 1, v2) == 1)
  {
    sub_10001B9F4(v0[17]);
    v7 = 1;
  }

  else
  {
    (*(v0[20] + 32))(v0[18], v0[17], v0[19]);
    v7 = 0;
  }

  (*(v0[20] + 56))(v0[18], v7, 1, v0[19]);
  v8 = v0[23];
  v9 = v0[24];

  return _swift_task_switch(sub_10001AA40, v8, v9);
}

uint64_t sub_10001AA40()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  if ((*(v0 + 216))(v3, 1, v2) == 1)
  {
    sub_10001B9F4(v3);
LABEL_3:
    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_10001AC38;
    v5 = *(v0 + 208);
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);

    return sub_100063B00(v6, v7);
  }

  (*(*(v0 + 160) + 32))(*(v0 + 168), v3, v2);
  v9 = User.isUnauthenticated.getter();
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 152);
  if (v9)
  {
    (*(v11 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    v13 = *(v0 + 104);
    v14 = FBKSForm.AuthenticationMethod.rawValue.getter();
    v15 = FBKSForm.AuthenticationMethod.rawValue.getter();
    (*(v11 + 8))(v10, v12);
    if (v14 == v15)
    {
      goto LABEL_3;
    }
  }

  v16 = *(v0 + 176);
  *(v0 + 248) = static SeedPortal.shared.getter();
  v17 = *(&async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:) + 1);
  v22 = (&async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:) + async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:));
  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_10001AE10;
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  v21 = *(v0 + 80);

  return v22(v21, v19, v20);
}

uint64_t sub_10001AC38()
{
  v2 = *v1;
  v3 = (*v1)[29];
  v8 = *v1;
  (*v1)[30] = v0;

  if (v0)
  {
    v4 = v2[23];
    v5 = v2[24];
    v6 = sub_10001AF80;
  }

  else
  {
    sub_10001B9F4(v2[16]);
    v4 = v2[23];
    v5 = v2[24];
    v6 = sub_10001AD54;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10001AD54()
{
  v1 = v0[22];
  v0[31] = static SeedPortal.shared.getter();
  v2 = *(&async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:) + 1);
  v8 = (&async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:) + async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:));
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_10001AE10;
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];

  return v8(v6, v4, v5);
}

uint64_t sub_10001AE10()
{
  v2 = *(*v1 + 256);
  v3 = *v1;
  v3[33] = v0;

  if (v0)
  {
    v4 = v3[23];
    v5 = v3[24];

    return _swift_task_switch(sub_10001B00C, v4, v5);
  }

  else
  {
    v6 = v3[31];

    v7 = v3[21];
    v9 = v3[17];
    v8 = v3[18];
    v10 = v3[16];

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_10001AF80()
{
  v1 = v0[30];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001B00C()
{
  v1 = v0[33];
  v2 = v0[31];

  v3 = _convertErrorToNSError(_:)();
  v0[34] = v3;
  v4 = [v3 userInfo];
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {

    goto LABEL_16;
  }

  v8 = sub_10005BCB0(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_100007018(*(v5 + 56) + 32 * v8, (v0 + 2));

  sub_100004F70(&qword_100083100, &qword_100069418);
  if (swift_dynamicCast())
  {
    v11 = v0[9];
    if (v11 >> 62)
    {
LABEL_28:
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v12 != i; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v16 = [v14 code];

      if (v16 == 16)
      {
        v26 = v0[25];

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Found invalid session error. Will clear out user and try again", v30, 2u);
        }

        v31 = swift_task_alloc();
        v0[35] = v31;
        *v31 = v0;
        v31[1] = sub_10001B340;
        v32 = v0[26];

        return sub_100063734(1);
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v17 = v0[33];
  v18 = v0[34];
  swift_willThrow();

  v19 = v0[34];
  v20 = v0[21];
  v22 = v0[17];
  v21 = v0[18];
  v23 = v0[16];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10001B340()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return _swift_task_switch(sub_10001B460, v4, v3);
}

uint64_t sub_10001B460()
{
  v26 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 304);
  v3 = Logger.logObject.getter();
  if (v2)
  {
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed with invalid session twice in a row", v5, 2u);
    }

    v6 = *(v0 + 264);
    v7 = *(v0 + 272);
    swift_willThrow();

    v8 = *(v0 + 272);
    v9 = *(v0 + 168);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1000049B8(0xD00000000000002ELL, 0x800000010006B780, &v25);
      _os_log_impl(&_mh_execute_header, v3, v15, "Retrying %{public}s", v16, 0xCu);
      sub_100005ED8(v17);
    }

    v18 = swift_task_alloc();
    *(v0 + 288) = v18;
    *v18 = v0;
    v18[1] = sub_10001B6B8;
    v19 = *(v0 + 112);
    v20 = *(v0 + 120);
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);
    v23 = *(v0 + 80);
    v24 = *(v0 + 88);

    return sub_10001A628(v23, v24, v21, v22, v19, 1);
  }
}

uint64_t sub_10001B6B8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_10001B890;
  }

  else
  {
    v7 = sub_10001B7F4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001B7F4()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001B890()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 296);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_10001B92C()
{
  result = qword_1000830F8;
  if (!qword_1000830F8)
  {
    type metadata accessor for SeedPortal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000830F8);
  }

  return result;
}

uint64_t sub_10001B984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000830F0, &qword_100069410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B9F4(uint64_t a1)
{
  v2 = sub_100004F70(&qword_1000830F0, &qword_100069410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100004F70(&unk_100083BB0, &unk_100069420);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v33 = &v30 - v7;
  v8 = type metadata accessor for FBKSEvaluation.Action();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FBKSEvaluation.Subject();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004F70(&qword_100082808, &qword_100068380);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  result = __chkstk_darwin(v19);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  UUID.init(uuidString:)();

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10001BED8(v18);
    sub_10001BF40();
    swift_allocError();
    *v25 = 12;
    swift_willThrow();
  }

  else
  {
    (*(v20 + 32))(v24, v18, v19);
    (*(v20 + 16))(v14, v24, v19);
    v26 = v34;
    (*(v34 + 104))(v14, enum case for FBKSEvaluation.Subject.id(_:), v11);
    if ((a3 - 2) >= 6)
    {
      sub_10001BF40();
      swift_allocError();
      *v28 = 11;
      swift_willThrow();
      v29 = *(v26 + 8);
      a1 = v26 + 8;
      v29(v14, v11);
    }

    else
    {
      (*(v30 + 104))(v32, **(&off_10007E258 + (a3 - 2)), v31);
      v27 = type metadata accessor for FBKSEvaluation.FormResponse();
      (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
      a1 = dispatch thunk of FBKSEvaluation.__allocating_init(subject:action:formResponse:)();
    }

    (*(v20 + 8))(v24, v19);
  }

  return a1;
}

uint64_t sub_10001BED8(uint64_t a1)
{
  v2 = sub_100004F70(&qword_100082808, &qword_100068380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001BF40()
{
  result = qword_100083108;
  if (!qword_100083108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083108);
  }

  return result;
}

uint64_t sub_10001BF94()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083110);
  sub_100002D00(v0, qword_100083110);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10001C004(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    v8 = 0;
    _StringGuts.grow(_:)(61);
    v5._countAndFlagsBits = 0xD00000000000003BLL;
    v5._object = 0x800000010006BA60;
    String.append(_:)(v5);
  }

  else
  {
    _StringGuts.grow(_:)(40);

    v8 = 0xD000000000000026;
  }

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  return v8;
}

uint64_t sub_10001C0CC()
{
  type metadata accessor for Persistence();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100085DF0 = v0;
  return result;
}

uint64_t sub_10001C108(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_100004F70(&unk_100083410, &qword_100068D50) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v8 = *(*(sub_100004F70(&qword_100082CB0, &qword_100068EB0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v9 = type metadata accessor for FormLaunchConfiguration();
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v11 = *(v10 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_10001C31C, v2, 0);
}

uint64_t sub_10001C31C()
{
  v124 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1000207D8();
  v0[24] = v3;
  v4 = sub_1000207D8();
  v5 = sub_1000207D8();
  v0[25] = sub_1000207D8();
  v0[26] = type metadata accessor for FBKSSharedPersistence();
  v6 = static FBKSSharedPersistence.fbaInboxFormTat(formIdentifier:)();
  v0[27] = v6;

  sub_10001F348(v7);

  sub_10001F348(v8);
  v9 = *(v3 + 16);
  if (v9 < 2)
  {
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v10 = v0[3];
    v11 = type metadata accessor for Logger();
    sub_100002D00(v11, qword_100083110);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[2];
      v14 = v0[3];
      v119 = v6;
      v16 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_1000049B8(v15, v14, &v123);
      *(v16 + 12) = 2082;
      v17 = Array.description.getter();
      v19 = sub_1000049B8(v17, v18, &v123);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Form identifier [%{public}s] found in more than one queue: [%{public}s]", v16, 0x16u);
      swift_arrayDestroy();

      v6 = v119;
    }
  }

  if (!v6)
  {
    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v20 = v0[3];
    v21 = type metadata accessor for Logger();
    sub_100002D00(v21, qword_100083110);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v0[2];
      v24 = v0[3];
      v26 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v26 = 136446466;
      *(v26 + 4) = sub_1000049B8(v25, v24, &v123);
      *(v26 + 12) = 2082;
      v27 = Array.description.getter();
      v29 = v28;

      v30 = sub_1000049B8(v27, v29, &v123);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Form identifier [%{public}s] found in queue: [%{public}s] but not in FBA inbox", v26, 0x16u);
      swift_arrayDestroy();

      if (!v4[2])
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

LABEL_18:

  if (!v4[2])
  {
LABEL_13:

    if (v5[2])
    {
LABEL_14:
      v32 = v5[4];
      v31 = v5[5];
      v0[28] = v31;

      v33 = swift_task_alloc();
      v0[29] = v33;
      *v33 = v0;
      v33[1] = sub_10001CED0;
      v34 = v0[16];
      v35 = v0[4];

      return sub_10001E6E0(v34, v32, v31);
    }

    goto LABEL_21;
  }

LABEL_19:
  v37 = v0[18];
  v38 = v0[19];
  v39 = v0[17];
  v40 = v0[4];
  v41 = v4[4];
  v42 = v4[5];

  sub_10001D9C4(v41, v42, v39);

  if ((*(v38 + 48))(v39, 1, v37) != 1)
  {
    v50 = v0[23];
    v51 = v0[17];
    v52 = v0[18];
    v53 = v0[13];
    v54 = v0[8];
    v55 = v0[9];

    sub_10000F8C8(v51, v50);
    (*(v55 + 16))(v53, v50 + *(v52 + 24), v54);
    v56 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
    v122 = FBKSCampaign.init(state:updatedAt:)();
LABEL_30:

    v69 = v50;
LABEL_31:
    sub_10000F990(v69);
    goto LABEL_32;
  }

  sub_1000071C8(v0[17], &qword_100082CB0, &qword_100068EB0);
  if (v5[2])
  {
    goto LABEL_14;
  }

LABEL_21:

  v43 = v0[24];
  if (v43[2])
  {
    v44 = v0[18];
    v45 = v0[19];
    v46 = v0[15];
    v47 = v0[4];
    v48 = v43[4];
    v49 = v43[5];

    sub_10001D9C4(v48, v49, v46);

    if ((*(v45 + 48))(v46, 1, v44) != 1)
    {
      v61 = v0[27];
      v62 = v0[25];
      v50 = v0[21];
      v63 = v0[18];
      v64 = v0[15];
      v65 = v0[13];
      v66 = v0[8];
      v67 = v0[9];

      sub_10000F8C8(v64, v50);
      (*(v67 + 16))(v65, v50 + *(v63 + 24), v66);
      v68 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
LABEL_29:
      v122 = FBKSCampaign.init(state:updatedAt:)();
      goto LABEL_30;
    }

    sub_1000071C8(v0[15], &qword_100082CB0, &qword_100068EB0);
  }

  else
  {
    v57 = v0[24];
  }

  v58 = v0[25];
  if (!v0[27])
  {
    if (!v58[2])
    {

      goto LABEL_43;
    }

    v82 = v58[4];
    v81 = v58[5];
    v83 = v0[25];

    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_100002D00(v84, qword_100083110);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v123 = v88;
      *v87 = 136446210;
      *(v87 + 4) = sub_1000049B8(v82, v81, &v123);
      _os_log_impl(&_mh_execute_header, v85, v86, "Using alerted campaign [%{public}s]", v87, 0xCu);
      sub_100005ED8(v88);
    }

    v89 = v0[18];
    v90 = v0[19];
    v91 = v0[14];
    v92 = v0[4];
    sub_10001D76C(v82, v81, v91);

    if ((*(v90 + 48))(v91, 1, v89) == 1)
    {
      sub_1000071C8(v0[14], &qword_100082CB0, &qword_100068EB0);
LABEL_43:
      v122 = 0;
      goto LABEL_32;
    }

    v93 = v0[26];
    v94 = v0[20];
    v95 = v0[18];
    v96 = v0[9];
    v98 = v0[2];
    v97 = v0[3];
    sub_10000F8C8(v0[14], v94);
    v99 = static FBKSSharedPersistence.fbaInboxFormTat(formIdentifier:)();
    v100 = *(v95 + 32);
    v101 = (v96 + 48);
    v102 = v0[8];
    if (!v99)
    {
      v107 = v0[5];
      sub_10000F9EC(v94 + v100, v107);
      v108 = *v101;
      if ((*v101)(v107, 1, v102) == 1)
      {
        v109 = v0[8];
        v110 = v0[5];
        (*(v0[9] + 16))(v0[10], v0[20] + *(v0[18] + 24), v109);
        if (v108(v110, 1, v109) != 1)
        {
          sub_1000071C8(v0[5], &unk_100083410, &qword_100068D50);
        }
      }

      else
      {
        (*(v0[9] + 32))(v0[10], v0[5], v0[8]);
      }

      v113 = v0[20];
      v114 = v0[10];
      v115 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
      v122 = FBKSCampaign.init(state:updatedAt:)();
      v69 = v113;
      goto LABEL_31;
    }

    v103 = v0[6];
    sub_10000F9EC(v94 + v100, v103);
    v104 = *v101;
    if ((*v101)(v103, 1, v102) == 1)
    {
      v105 = v0[8];
      v106 = v0[6];
      (*(v0[9] + 16))(v0[11], v0[20] + *(v0[18] + 24), v105);
      if (v104(v106, 1, v105) != 1)
      {
        sub_1000071C8(v0[6], &unk_100083410, &qword_100068D50);
      }
    }

    else
    {
      (*(v0[9] + 32))(v0[11], v0[6], v0[8]);
    }

    v50 = v0[20];
    v111 = v0[11];
    v112 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
    goto LABEL_29;
  }

  v59 = v0[13];

  FBKSSInboxTat.dateAdded.getter();
  v60 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
  v122 = FBKSCampaign.init(state:updatedAt:)();

LABEL_32:
  v71 = v0[22];
  v70 = v0[23];
  v73 = v0[20];
  v72 = v0[21];
  v75 = v0[16];
  v74 = v0[17];
  v77 = v0[14];
  v76 = v0[15];
  v78 = v0[12];
  v79 = v0[13];
  v116 = v0[11];
  v117 = v0[10];
  v118 = v0[7];
  v120 = v0[6];
  v121 = v0[5];

  v80 = v0[1];

  return v80(v122);
}

uint64_t sub_10001CED0()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_10001CFFC, v3, 0);
}

uint64_t sub_10001CFFC()
{
  v88 = v0;
  v1 = v0[18];
  v2 = v0[16];
  if ((*(v0[19] + 48))(v2, 1, v1) != 1)
  {
    v10 = v0[24];
    v11 = v0[25];
    v12 = v0[22];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[7];

    sub_10000F8C8(v2, v12);
    sub_10000F9EC(v12 + *(v1 + 32), v15);
    v16 = *(v14 + 48);
    if (v16(v15, 1, v13) == 1)
    {
      v17 = v0[8];
      v18 = v0[7];
      (*(v0[9] + 16))(v0[12], v0[22] + *(v0[18] + 24), v17);
      if (v16(v18, 1, v17) != 1)
      {
        sub_1000071C8(v0[7], &unk_100083410, &qword_100068D50);
      }
    }

    else
    {
      (*(v0[9] + 32))(v0[12], v0[7], v0[8]);
    }

    v19 = v0[27];
    v20 = v0[22];
    v21 = v0[12];
    objc_allocWithZone(type metadata accessor for FBKSCampaign());
    goto LABEL_14;
  }

  sub_1000071C8(v2, &qword_100082CB0, &qword_100068EB0);
  v3 = v0[24];
  if (v3[2])
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[15];
    v7 = v0[4];
    v8 = v3[4];
    v9 = v3[5];

    sub_10001D9C4(v8, v9, v6);

    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v26 = v0[27];
      v27 = v0[25];
      v20 = v0[21];
      v28 = v0[18];
      v29 = v0[15];
      v30 = v0[13];
      v31 = v0[8];
      v32 = v0[9];

      sub_10000F8C8(v29, v20);
      (*(v32 + 16))(v30, v20 + *(v28 + 24), v31);
      v33 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
      goto LABEL_14;
    }

    sub_1000071C8(v0[15], &qword_100082CB0, &qword_100068EB0);
  }

  else
  {
    v22 = v0[24];
  }

  v23 = v0[25];
  if (v0[27])
  {
    v24 = v0[13];

    FBKSSInboxTat.dateAdded.getter();
    v25 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
    v86 = FBKSCampaign.init(state:updatedAt:)();

    goto LABEL_16;
  }

  if (!v23[2])
  {

    goto LABEL_27;
  }

  v48 = v23[4];
  v47 = v23[5];
  v49 = v0[25];

  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100002D00(v50, qword_100083110);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v87 = v54;
    *v53 = 136446210;
    *(v53 + 4) = sub_1000049B8(v48, v47, &v87);
    _os_log_impl(&_mh_execute_header, v51, v52, "Using alerted campaign [%{public}s]", v53, 0xCu);
    sub_100005ED8(v54);
  }

  v55 = v0[18];
  v56 = v0[19];
  v57 = v0[14];
  v58 = v0[4];
  sub_10001D76C(v48, v47, v57);

  if ((*(v56 + 48))(v57, 1, v55) != 1)
  {
    v59 = v0[26];
    v60 = v0[20];
    v61 = v0[18];
    v62 = v0[9];
    v64 = v0[2];
    v63 = v0[3];
    sub_10000F8C8(v0[14], v60);
    v65 = static FBKSSharedPersistence.fbaInboxFormTat(formIdentifier:)();
    v66 = *(v61 + 32);
    v67 = (v62 + 48);
    v68 = v0[8];
    if (!v65)
    {
      v73 = v0[5];
      sub_10000F9EC(v60 + v66, v73);
      v74 = *v67;
      if ((*v67)(v73, 1, v68) == 1)
      {
        v75 = v0[8];
        v76 = v0[5];
        (*(v0[9] + 16))(v0[10], v0[20] + *(v0[18] + 24), v75);
        if (v74(v76, 1, v75) != 1)
        {
          sub_1000071C8(v0[5], &unk_100083410, &qword_100068D50);
        }
      }

      else
      {
        (*(v0[9] + 32))(v0[10], v0[5], v0[8]);
      }

      v78 = v0[20];
      v79 = v0[10];
      v80 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
      v86 = FBKSCampaign.init(state:updatedAt:)();
      v34 = v78;
      goto LABEL_15;
    }

    v69 = v0[6];
    sub_10000F9EC(v60 + v66, v69);
    v70 = *v67;
    if ((*v67)(v69, 1, v68) == 1)
    {
      v71 = v0[8];
      v72 = v0[6];
      (*(v0[9] + 16))(v0[11], v0[20] + *(v0[18] + 24), v71);
      if (v70(v72, 1, v71) != 1)
      {
        sub_1000071C8(v0[6], &unk_100083410, &qword_100068D50);
      }
    }

    else
    {
      (*(v0[9] + 32))(v0[11], v0[6], v0[8]);
    }

    v20 = v0[20];
    v77 = v0[11];
    objc_allocWithZone(type metadata accessor for FBKSCampaign());
LABEL_14:
    v86 = FBKSCampaign.init(state:updatedAt:)();

    v34 = v20;
LABEL_15:
    sub_10000F990(v34);
    goto LABEL_16;
  }

  sub_1000071C8(v0[14], &qword_100082CB0, &qword_100068EB0);
LABEL_27:
  v86 = 0;
LABEL_16:
  v36 = v0[22];
  v35 = v0[23];
  v38 = v0[20];
  v37 = v0[21];
  v40 = v0[16];
  v39 = v0[17];
  v42 = v0[14];
  v41 = v0[15];
  v43 = v0[12];
  v44 = v0[13];
  v81 = v0[11];
  v82 = v0[10];
  v83 = v0[7];
  v84 = v0[6];
  v85 = v0[5];

  v45 = v0[1];

  return v45(v86);
}

uint64_t sub_10001D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001EF40(a1, a2, a3);
  v4 = type metadata accessor for FormLaunchConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t sub_10001D9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001EF40(a1, a2, a3);
  v4 = type metadata accessor for FormLaunchConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t sub_10001DC88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 208) = a4;
  *(v6 + 216) = a5;
  *(v6 + 97) = a2;
  *(v6 + 192) = a1;
  *(v6 + 200) = a3;
  v7 = type metadata accessor for FormLaunchConfiguration();
  *(v6 + 224) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_10001DD30, v5, 0);
}

uint64_t sub_10001DD30()
{
  v51 = v0;
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = type metadata accessor for Logger();
  sub_100002D00(v3, qword_100083110);
  sub_10000F92C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006B990, &v50);
    *(v8 + 12) = 2080;
    v9 = *v7;
    v10 = v7[1];

    sub_10000F990(v7);
    v11 = sub_1000049B8(v9, v10, &v50);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s [%s]", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000F990(v7);
  }

  v12 = *(v0 + 224);
  v13 = *(*(v0 + 192) + *(v12 + 28));
  if (qword_100082658 != -1)
  {
    swift_once();
  }

  v14 = qword_100083A78;

  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 integerForKey:v16];

  if (v13 >= v17)
  {
    v42 = *(v0 + 97);
    sub_100020464(*(v0 + 200), *(v0 + 208));
    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 192);
    v44 = qword_100085E18;
    *(v0 + 248) = qword_100085E18;
    *(v0 + 256) = *v43;
    *(v0 + 264) = v43[1];

    return _swift_task_switch(sub_10001E220, v44, 0);
  }

  else
  {
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v48 = *(v0 + 200);
    v49 = *(v0 + 208);
    v20 = *(v0 + 192);
    v21 = v20[1];
    v22 = v20[3];
    v46 = v20[2];
    v47 = *v20;
    v23 = *(v20 + 3);
    *(v0 + 16) = *(v20 + 2);
    *(v0 + 32) = v23;
    v25 = *(v20 + 5);
    v24 = *(v20 + 6);
    v26 = *(v20 + 4);
    *(v0 + 96) = *(v20 + 112);
    *(v0 + 64) = v25;
    *(v0 + 80) = v24;
    *(v0 + 48) = v26;
    v45 = v13 + 1;
    v27 = v19[8];
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 56);
    v29(v18 + v27, 1, 1, v28);
    v29(v18 + v19[9], 1, 1, v28);
    v30 = v19[6];

    sub_10000FA5C(v0 + 16, v0 + 104);
    Date.init()();
    *v18 = v47;
    *(v18 + 8) = v21;
    *(v18 + 16) = v46;
    *(v18 + 24) = v22;
    v31 = *(v0 + 32);
    *(v18 + 32) = *(v0 + 16);
    *(v18 + 48) = v31;
    v32 = *(v0 + 48);
    v33 = *(v0 + 64);
    v34 = *(v0 + 80);
    *(v18 + 112) = *(v0 + 96);
    *(v18 + 80) = v33;
    *(v18 + 96) = v34;
    *(v18 + 64) = v32;
    *(v18 + *(v12 + 28)) = v45;
    *(v18 + v19[10]) = 0;
    v35 = [objc_opt_self() standardUserDefaults];
    sub_1000193E0();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = String._bridgeToObjectiveC()();
    [v35 setObject:isa forKey:v37];

    sub_10000F990(v18);
    v39 = *(v0 + 232);
    v38 = *(v0 + 240);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_10001E220()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  sub_100033994(*(v0 + 256), *(v0 + 264));
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001E298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100004F70(&qword_100082CB0, &qword_100068EB0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for FormLaunchConfiguration();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001E394, v3, 0);
}

uint64_t sub_10001E394()
{
  String.append(_:)(*(v0 + 24));
  *(v0 + 80) = 0xD000000000000013;
  *(v0 + 88) = 0x800000010006B8C0;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10001E468;
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_10001E6E0(v2, 0xD000000000000013, 0x800000010006B8C0);
}

uint64_t sub_10001E468()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10001E578, v2, 0);
}

uint64_t sub_10001E578()
{
  v1 = v0[6];
  v2 = (*(v0[8] + 48))(v1, 1, v0[7]);
  v3 = v0[11];
  if (v2 == 1)
  {
    v4 = v0[11];

    sub_1000071C8(v1, &qword_100082CB0, &qword_100068EB0);
    v5 = sub_100004F70(&unk_1000832F0, &qword_1000696B0);
    v6 = 1;
  }

  else
  {
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[2];
    sub_10000F8C8(v1, v7);
    v5 = sub_100004F70(&unk_1000832F0, &qword_1000696B0);
    v10 = (v9 + *(v5 + 48));
    sub_10000F8C8(v7, v9);
    v6 = 0;
    *v10 = v8;
    v10[1] = v3;
  }

  v11 = v0[9];
  v12 = v0[6];
  (*(*(v5 - 8) + 56))(v0[2], v6, 1, v5);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10001E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(sub_10001E704, v3, 0);
}

uint64_t sub_10001E704()
{
  sub_10001EF40(v0[7], v0[8], v0[6]);
  v1 = v0[6];
  v2 = type metadata accessor for FormLaunchConfiguration();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10001EA28()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  sub_100033994(*(v0 + 80), *(v0 + 88));

  return _swift_task_switch(sub_10001EAC4, v4, 0);
}

uint64_t sub_10001EAC4()
{
  v1 = v0[5];

  v2 = v0[6];
  v3 = type metadata accessor for FormLaunchConfiguration();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10001EB68()
{
  v0 = sub_100004F70(&qword_1000832C0, &qword_100069488);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_100004F70(&qword_1000832C8, &qword_100069490);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_100004F70(&qword_1000832D0, &qword_100069498);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_100004F70(&qword_1000832D8, &qword_1000694A0);
  Regex.init(_regexString:version:)();
  sub_100021B58();
  dispatch thunk of RegexComponent.regex.getter();
  String.subscript.getter();
  Regex.wholeMatch(in:)();
  v17 = *(v10 + 8);
  v17(v14, v9);

  v18 = v23;
  if ((*(v24 + 48))(v3, 1, v23) == 1)
  {
    v17(v16, v9);
    sub_1000071C8(v3, &qword_1000832C0, &qword_100069488);
    return 0;
  }

  else
  {
    v20 = v24;
    (*(v24 + 32))(v8, v3, v18);
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v21 = static String._fromSubstring(_:)();

    (*(v20 + 8))(v8, v18);
    v17(v16, v9);
    return v21;
  }
}

uint64_t sub_10001EF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004F70(&qword_100082CB0, &qword_100068EB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_1000071C8(v20, &qword_100082860, &unk_1000683C0);
    goto LABEL_9;
  }

  sub_100004F70(&qword_100082818, &qword_100068388);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  sub_100019A90(v17[1], v9);

  v13 = type metadata accessor for FormLaunchConfiguration();
  if ((*(*(v13 - 8) + 48))(v9, 1, v13) == 1)
  {
    sub_1000071C8(v9, &qword_100082CB0, &qword_100068EB0);
    v14 = 1;
LABEL_10:
    sub_100021C94();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = v14;
    swift_willThrow();
  }

  return sub_10000F8C8(v9, a3);
}

uint64_t sub_10001F184(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10001F43C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t *sub_10001F210(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_100004FD8(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100007018(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100004FD8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10001F348(uint64_t result)
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

  result = sub_100065BA0(result, v11, 1, v3);
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

unint64_t *sub_10001F450()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_10001F210(v4);

    if (v5)
    {
      return v5;
    }
  }

  return v3;
}

unint64_t *sub_10001F528()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 arrayForKey:v1];

  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_10001F210(v4);

    if (v5)
    {
      return v5;
    }
  }

  return v3;
}

void sub_10001F660(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = sub_10001F528();
  v7 = v6;
  v8 = v6[2];
  if (v8)
  {
    v9 = v6 + 5;
    v10 = v6[2];
    while (1)
    {
      v11 = *(v9 - 1) == a1 && *v9 == a2;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v9 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100002D00(v17, qword_100083110);

    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v19 = 136446722;
      *(v19 + 4) = sub_1000049B8(0xD000000000000015, 0x800000010006B820, &v28);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_1000049B8(a1, a2, &v28);
      *(v19 + 22) = 2082;
      v20 = 0xD000000000000013;
      v21 = "pendingNotifications";
      v22 = "alertedCampaigns";
      v23 = 0xD000000000000010;
      if (a3 == 2)
      {
        v23 = 0xD000000000000014;
      }

      else
      {
        v22 = "addToIndex(key:type:)";
      }

      if (a3)
      {
        v20 = 0xD000000000000014;
        v21 = "snoozedNotifications";
      }

      if (a3 <= 1u)
      {
        v24 = v20;
      }

      else
      {
        v24 = v23;
      }

      if (a3 <= 1u)
      {
        v25 = v21;
      }

      else
      {
        v25 = v22;
      }

      v26 = sub_1000049B8(v24, v25 | 0x8000000000000000, &v28);

      *(v19 + 24) = v26;
      _os_log_impl(&_mh_execute_header, oslog, v18, "%{public}s key [%{public}s] already present in index [%{public}s]", v19, 0x20u);
      swift_arrayDestroy();
    }
  }

  else
  {
LABEL_9:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100065BA0(0, v8 + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_100065BA0((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[16 * v13];
    *(v14 + 4) = a1;
    *(v14 + 5) = a2;
    v15 = [objc_opt_self() standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    oslog = String._bridgeToObjectiveC()();

    [v15 setObject:isa forKey:oslog];
  }
}

unint64_t sub_10001FA24(Swift::String *a1)
{
  sub_1000193E0();
  String.append(_:)(*a1);
  v2 = [objc_opt_self() standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:isa forKey:v4];

  sub_10001F660(0xD000000000000013, 0x800000010006B8C0, 0);
  return 0xD000000000000013;
}

unint64_t sub_10001FB30(Swift::String *a1)
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083110);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000049B8(0xD000000000000026, 0x800000010006B9E0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_100005ED8(v6);
  }

  return sub_10001FA24(a1);
}

uint64_t sub_10001FC88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v9 = type metadata accessor for FormLaunchConfiguration();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v10[10];
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 56);
  v16(&v13[v14], 1, 1, v15);
  v16(&v13[v10[11]], 1, 1, v15);
  v17 = &v13[v10[8]];
  Date.init()();
  *v13 = a2;
  *(v13 + 1) = a3;
  *(v13 + 2) = v31;
  *(v13 + 3) = a5;
  v18 = *(a1 + 48);
  *(v13 + 4) = *(a1 + 32);
  *(v13 + 5) = v18;
  *(v13 + 6) = *(a1 + 64);
  v13[112] = *(a1 + 80);
  v19 = *(a1 + 16);
  *(v13 + 2) = *a1;
  *(v13 + 3) = v19;
  *&v13[v10[9]] = 0;
  *&v13[v10[12]] = 0;

  sub_10000FA5C(a1, &v32);
  sub_1000193E0();
  sub_10000F990(v13);
  v32 = 0xD000000000000014;
  v33 = 0x800000010006BA10;
  v20._countAndFlagsBits = a2;
  v20._object = a3;
  String.append(_:)(v20);
  v22 = v32;
  v21 = v33;
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100002D00(v23, qword_100083110);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_1000049B8(0xD00000000000002ELL, 0x800000010006BA30, &v32);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1000049B8(v22, v21, &v32);
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s [%{public}s]", v26, 0x16u);
    swift_arrayDestroy();
  }

  v27 = [objc_opt_self() standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = String._bridgeToObjectiveC()();
  [v27 setObject:isa forKey:v29];

  sub_10001F660(v22, v21, 1u);
  return v22;
}

unint64_t *sub_100020014()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_10001F210(v4);

    if (v5)
    {
      return v5;
    }
  }

  return v3;
}

id *sub_1000200EC()
{
  v0 = sub_10001F450();
  v1 = v0[2];
  if (v1)
  {
    v2 = (v0 + 5);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(v2 - 1);
      v4 = *v2;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100065CAC(0, v3[2] + 1, 1, v3);
      }

      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        v3 = sub_100065CAC((v6 > 1), v7 + 1, 1, v3);
      }

      v3[2] = (v7 + 1);
      v8 = &v3[3 * v7];
      v8[4] = v5;
      v8[5] = v4;
      *(v8 + 48) = 0;
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100020014();
  v10 = v9[2];
  if (v10)
  {
    v11 = (v9 + 5);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100065CAC(0, v3[2] + 1, 1, v3);
      }

      v15 = v3[2];
      v14 = v3[3];
      if (v15 >= v14 >> 1)
      {
        v3 = sub_100065CAC((v14 > 1), v15 + 1, 1, v3);
      }

      v3[2] = (v15 + 1);
      v16 = &v3[3 * v15];
      v16[4] = v13;
      v16[5] = v12;
      *(v16 + 48) = 1;
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return v3;
}

void sub_100020290(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001F528();
  v5 = v4[2];
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 5;
    while (1)
    {
      v8 = *(v7 - 1) == a1 && *v7 == a2;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }

    sub_10001F184(v6);

    v9 = [objc_opt_self() standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = String._bridgeToObjectiveC()();

    [v9 setObject:isa forKey:v11];
  }

  else
  {
LABEL_9:
  }
}

void sub_100020464(uint64_t a1, unint64_t a2)
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083110);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000049B8(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing %{public}s", v7, 0xCu);
    sub_100005ED8(v8);
  }

  sub_100020290(a1, a2);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 removeObjectForKey:v10];
}

void sub_100020630()
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002D00(v0, qword_100083110);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_1000049B8(0x6C416574656C6564, 0xEF2928617461446CLL, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100005ED8(v4);
  }

  v5 = [objc_opt_self() standardUserDefaults];
  static Strings.Daemon.bundleIdentifier.getter();
  v6 = String._bridgeToObjectiveC()();

  [v5 removePersistentDomainForName:v6];
}

uint64_t sub_1000207D8()
{
  result = sub_10001F528();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 40;
    v14 = &_swiftEmptyArrayStorage;
    v13 = result + 40;
    do
    {
      v5 = (v4 + 16 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v7 = *(v5 - 1);
        v8 = *v5;
        v3 = v6 + 1;
        sub_1000070C4();

        if (StringProtocol.contains<A>(_:)())
        {
          break;
        }

        v5 += 2;
        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      v9 = v14;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100004FD8(0, v14[2] + 1, 1);
        v9 = v14;
      }

      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_100004FD8((v10 > 1), v11 + 1, 1);
        v9 = v14;
      }

      v9[2] = v11 + 1;
      v14 = v9;
      v12 = &v9[2 * v11];
      v12[4] = v7;
      v12[5] = v8;
      v4 = v13;
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

LABEL_15:

  return v14;
}

void sub_10002096C(uint64_t a1, unint64_t a2)
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083110);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000049B8(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing %{public}s", v7, 0xCu);
    sub_100005ED8(v8);
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 removeObjectForKey:v10];

  sub_100020290(a1, a2);
}

void sub_100020B20(uint64_t a1, unint64_t a2)
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083110);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000049B8(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing %{public}s", v7, 0xCu);
    sub_100005ED8(v8);
  }

  sub_100020290(a1, a2);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 removeObjectForKey:v10];
}

BOOL sub_100020CD8()
{
  v0 = *(sub_1000207D8() + 16);

  if (v0)
  {
    return 1;
  }

  v1 = *(sub_1000207D8() + 16);

  if (v1)
  {
    return 1;
  }

  v3 = *(sub_1000207D8() + 16);

  result = 1;
  if (!v3)
  {
    v4 = *(sub_1000207D8() + 16);

    return v4 != 0;
  }

  return result;
}

uint64_t sub_100020D7C()
{
  v53 = sub_1000207D8();
  v0 = *(v53 + 16);
  if (v0)
  {
    v1 = objc_opt_self();
    v2 = (v53 + 40);
    do
    {
      v5 = *(v2 - 1);
      v6 = *v2;
      v7 = qword_1000825F0;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100002D00(v8, qword_100083110);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v57 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_1000049B8(v5, v6, &v57);
        _os_log_impl(&_mh_execute_header, v9, v10, "Removing %{public}s", v11, 0xCu);
        sub_100005ED8(v12);
      }

      v3 = [v1 standardUserDefaults];
      v4 = String._bridgeToObjectiveC()();
      [v3 removeObjectForKey:v4];

      sub_100020290(v5, v6);

      v2 += 2;
      --v0;
    }

    while (v0);
  }

  v54 = sub_1000207D8();
  v13 = *(v54 + 16);
  if (v13)
  {
    v14 = objc_opt_self();
    v15 = (v54 + 40);
    do
    {
      v18 = *(v15 - 1);
      v19 = *v15;
      v20 = qword_1000825F0;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100002D00(v21, qword_100083110);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v57 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_1000049B8(v18, v19, &v57);
        _os_log_impl(&_mh_execute_header, v22, v23, "Removing %{public}s", v24, 0xCu);
        sub_100005ED8(v25);
      }

      sub_100020290(v18, v19);
      v16 = [v14 standardUserDefaults];
      v17 = String._bridgeToObjectiveC()();
      [v16 removeObjectForKey:v17];

      v15 += 2;
      --v13;
    }

    while (v13);
  }

  v55 = sub_1000207D8();
  v26 = *(v55 + 16);
  if (v26)
  {
    v27 = objc_opt_self();
    v28 = (v55 + 40);
    do
    {
      v31 = *(v28 - 1);
      v32 = *v28;
      v33 = qword_1000825F0;

      if (v33 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100002D00(v34, qword_100083110);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57 = v38;
        *v37 = 136446210;
        *(v37 + 4) = sub_1000049B8(v31, v32, &v57);
        _os_log_impl(&_mh_execute_header, v35, v36, "Removing %{public}s", v37, 0xCu);
        sub_100005ED8(v38);
      }

      sub_100020290(v31, v32);
      v29 = [v27 standardUserDefaults];
      v30 = String._bridgeToObjectiveC()();
      [v29 removeObjectForKey:v30];

      v28 += 2;
      --v26;
    }

    while (v26);
  }

  v56 = sub_1000207D8();
  v39 = *(v56 + 16);
  if (v39)
  {
    v40 = objc_opt_self();
    v41 = (v56 + 40);
    do
    {
      v45 = *(v41 - 1);
      v44 = *v41;
      v46 = qword_1000825F0;

      if (v46 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100002D00(v47, qword_100083110);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v57 = v51;
        *v50 = 136446210;
        *(v50 + 4) = sub_1000049B8(v45, v44, &v57);
        _os_log_impl(&_mh_execute_header, v48, v49, "Removing %{public}s", v50, 0xCu);
        sub_100005ED8(v51);
      }

      sub_100020290(v45, v44);
      v42 = [v40 standardUserDefaults];
      v43 = String._bridgeToObjectiveC()();
      [v42 removeObjectForKey:v43];

      v41 += 2;
      --v39;
    }

    while (v39);
  }
}

uint64_t sub_10002150C(uint64_t a1)
{
  v2 = type metadata accessor for FormLaunchConfiguration();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v34 = *(a1 + 16);
  v42 = *(a1 + 112);
  v10 = *(a1 + 96);
  v11 = *(a1 + 64);
  v40 = *(a1 + 80);
  v41 = v10;
  v12 = *(a1 + 32);
  v38 = *(a1 + 48);
  v39 = v11;
  v37 = v12;
  v13 = v3[10];
  v33 = *(a1 + v3[9]);

  sub_10000FA5C(&v37, &v35);
  Date.init()();
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v15(&v6[v13], 0, 1, v14);
  v16 = *(a1 + v3[12]);
  v15(&v6[v3[11]], 1, 1, v14);
  v17 = &v6[v3[8]];
  Date.init()();
  *v6 = v7;
  *(v6 + 1) = v8;
  *(v6 + 2) = v34;
  *(v6 + 3) = v9;
  v18 = v40;
  v19 = v41;
  *(v6 + 4) = v39;
  *(v6 + 5) = v18;
  *(v6 + 6) = v19;
  v6[112] = v42;
  v20 = v38;
  *(v6 + 2) = v37;
  *(v6 + 3) = v20;
  *&v6[v3[9]] = v33;
  *&v6[v3[12]] = v16;
  sub_1000193E0();
  v35 = 0xD000000000000010;
  v36 = 0x800000010006B7D0;
  v21._countAndFlagsBits = v7;
  v21._object = v8;
  String.append(_:)(v21);
  v22 = v35;
  v23 = v36;
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100002D00(v24, qword_100083110);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v27 = 136446466;
    *(v27 + 4) = sub_1000049B8(0xD00000000000002DLL, 0x800000010006B7F0, &v35);
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1000049B8(v22, v23, &v35);
    _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s [%{public}s]", v27, 0x16u);
    swift_arrayDestroy();
  }

  v28 = [objc_opt_self() standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = String._bridgeToObjectiveC()();
  [v28 setObject:isa forKey:v30];

  sub_10001F660(v22, v23, 3u);
  sub_10000F990(v6);
  return v22;
}

unint64_t sub_100021900(Swift::String *a1)
{
  sub_1000193E0();
  v2 = *a1;
  v11[0] = 0xD000000000000014;
  v11[1] = 0x800000010006B8E0;
  String.append(_:)(v2);
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002D00(v3, qword_100083110);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006B900, v11);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_1000049B8(0xD000000000000014, 0x800000010006B8E0, v11);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s [%{public}s]", v6, 0x16u);
    swift_arrayDestroy();
  }

  v7 = [objc_opt_self() standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v9];

  sub_10001F660(0xD000000000000014, 0x800000010006B8E0, 2u);
  return 0xD000000000000014;
}

unint64_t sub_100021B58()
{
  result = qword_1000832E0;
  if (!qword_1000832E0)
  {
    sub_100005F88(&qword_1000832D0, &qword_100069498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000832E0);
  }

  return result;
}

unint64_t *sub_100021BBC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_10001F210(v4);

    if (v5)
    {
      return v5;
    }
  }

  return v3;
}

unint64_t sub_100021C94()
{
  result = qword_1000832E8;
  if (!qword_1000832E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000832E8);
  }

  return result;
}

__n128 sub_100021CFC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100021D10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100021D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100021DB8(uint64_t a1, void *a2)
{
  v3 = sub_100013DAC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100021E64(uint64_t a1, void *a2)
{
  v3 = sub_100013DAC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100021EC8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100013DAC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100021F94()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083300);
  sub_100002D00(v0, qword_100083300);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100022004()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100085DF8);
  v1 = sub_100002D00(v0, qword_100085DF8);
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v2 = sub_100002D00(v0, qword_100083300);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000220CC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_1000220F0, 0, 0);
}

uint64_t sub_1000220F0()
{
  v21 = v0;
  if (qword_100082650 != -1)
  {
    swift_once();
  }

  v1 = qword_100083A60;

  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 integerForKey:v3];

  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  v6 = type metadata accessor for Logger();
  sub_100002D00(v6, qword_100083300);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 16);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446722;
    *(v12 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006BCD0, &v20);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *&v11[OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount];

    *(v12 + 22) = 2048;
    *(v12 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Notifications posted in this interval: %ld. Max allowed: %ld", v12, 0x20u);
    sub_100005ED8(v13);
  }

  else
  {
  }

  if (*(*(v0 + 16) + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount) >= v4)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Reached maximum number of notifications for this interval.", v17, 2u);
    }

    v14 = *(v0 + 24);
  }

  else
  {
    v14 = 1;
  }

  v18 = *(v0 + 8);

  return v18(v14 & 1);
}

id sub_1000223C4()
{
  result = [objc_allocWithZone(type metadata accessor for NotificationController()) init];
  qword_100085E10 = result;
  return result;
}

id sub_1000223F4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount] = 0;
  v7 = OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter;
  static Strings.fbaBundleIdentifier.getter();
  sub_100008714(0, &qword_100083480, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.userInitiated(_:), v2);
  v8 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v6, v2);
  v9 = objc_allocWithZone(UNUserNotificationCenter);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithBundleIdentifier:v10 queue:v8];

  *&v1[v7] = v11;
  v12 = type metadata accessor for NotificationController();
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1000225C0()
{
  v1 = v0;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083300);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006BCB0, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_100005ED8(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  [v7 removeAllPendingNotificationRequests];
  result = [v7 removeAllDeliveredNotifications];
  *(v1 + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount) = 0;
  return result;
}

uint64_t sub_10002273C()
{
  v1[43] = v0;
  v2 = type metadata accessor for Date();
  v1[44] = v2;
  v3 = *(v2 - 8);
  v1[45] = v3;
  v4 = *(v3 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v5 = *(*(sub_100004F70(&unk_100083410, &qword_100068D50) - 8) + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v6 = *(*(sub_100004F70(&qword_100082CB0, &qword_100068EB0) - 8) + 64) + 15;
  v1[50] = swift_task_alloc();
  v7 = type metadata accessor for FormLaunchConfiguration();
  v1[51] = v7;
  v8 = *(v7 - 8);
  v1[52] = v8;
  v9 = *(v8 + 64) + 15;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();

  return _swift_task_switch(sub_1000228F8, 0, 0);
}

uint64_t sub_1000228F8()
{
  v1 = *(v0[43] + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  v0[56] = v1;
  [v1 setDelegate:?];
  [v1 setWantsNotificationResponsesDelivered];
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0[57] = qword_100085DF0;
  v2 = swift_task_alloc();
  v0[58] = v2;
  *v2 = v0;
  v2[1] = sub_1000229F4;

  return sub_1000249D4();
}

uint64_t sub_1000229F4(uint64_t a1)
{
  v2 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_100022AF4, 0, 0);
}

uint64_t sub_100022AF4()
{
  v1 = v0;
  v2 = v0 + 2;
  v26 = v0 + 39;
  v25 = v0[56];
  *(v0[43] + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount) = v0[59];
  static Strings.Notification.snoozeActionIdentifier.getter();
  v3._countAndFlagsBits = 0x657A6F6F6E53;
  v3._object = 0xE600000000000000;
  FBKSLocalizedString(key:)(v3);
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = objc_opt_self();
  v7 = [v6 actionWithIdentifier:v4 title:v5 options:0];
  v0[60] = v7;

  static Strings.Notification.declineActionIdentifier.getter();
  v8._countAndFlagsBits = 0x656E696C636544;
  v8._object = 0xE700000000000000;
  FBKSLocalizedString(key:)(v8);
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v6 actionWithIdentifier:v9 title:v10 options:2];
  v1[61] = v11;

  static Strings.Notification.categoryIdentifier.getter();
  sub_100004F70(&qword_100083450, &qword_100069710);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000695C0;
  *(v12 + 32) = v7;
  *(v12 + 40) = v11;
  v13 = v7;
  v14 = v11;
  v15 = String._bridgeToObjectiveC()();

  sub_100008714(0, &qword_100083458, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = Array._bridgeToObjectiveC()().super.isa;
  v18 = [objc_opt_self() categoryWithIdentifier:v15 actions:isa intentIdentifiers:v17 options:0];
  v1[62] = v18;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000695D0;
  *(inited + 32) = v18;
  v20 = v18;
  sub_100018C00(inited);
  swift_setDeallocating();
  v21 = *(inited + 16);
  swift_arrayDestroy();
  sub_100008714(0, &qword_100083460, UNNotificationCategory_ptr);
  sub_10002DED0();
  v22 = Set._bridgeToObjectiveC()().super.isa;

  [v25 setNotificationCategories:v22];

  v1[2] = v1;
  v1[7] = v26;
  v1[3] = sub_100022F08;
  v23 = swift_continuation_init();
  v1[17] = sub_100004F70(&qword_100083400, &unk_1000696D0);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000255A4;
  v1[13] = &unk_10007E4D0;
  v1[14] = v23;
  [v25 getDeliveredNotificationsWithCompletionHandler:?];

  return _swift_continuation_await(v2);
}

uint64_t sub_100022F08()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100022FE8, 0, 0);
}

uint64_t sub_100022FE8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v33 = v4;
  v5 = v4[39];
  v4[40] = &_swiftEmptySetSingleton;
  if (v5 >> 62)
  {
    a1 = _CocoaArrayWrapper.endIndex.getter();
    v6 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_20:
    v28 = v4[57];

    a1 = sub_10002337C;
    a2 = v28;
    a3 = 0;

    return _swift_task_switch(a1, a2, a3);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = &off_100081000;
    a4.n128_u64[0] = 138412290;
    v30 = a4;
    v31 = v5;
    while (1)
    {
      v16 = v8 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v5 + 8 * v7 + 32);
      v17 = v16;
      v18 = [v16 v9[296]];
      v19 = [v18 content];

      v20 = [v19 userInfo];
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v4[35] = 7955819;
      v4[36] = 0xE300000000000000;
      AnyHashable.init<A>(_:)();
      if (!*(v21 + 16))
      {
        break;
      }

      v22 = sub_10005BC6C((v4 + 23));
      if ((v23 & 1) == 0)
      {
        break;
      }

      sub_100007018(*(v21 + 56) + 32 * v22, (v4 + 28));
      sub_100006FC4((v4 + 23));

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_10002A8D8(&v32, v4[37], v4[38]);

LABEL_6:
      if (v6 == ++v7)
      {
        goto LABEL_20;
      }
    }

    sub_100006FC4((v4 + 23));
LABEL_15:
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100002D00(v24, qword_100083300);
    v25 = v17;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v10 = swift_slowAlloc();
      v11 = v6;
      v12 = v8;
      v13 = v9;
      v14 = swift_slowAlloc();
      *v10 = v30.n128_u32[0];
      *(v10 + 4) = v25;
      *v14 = v25;
      v15 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "Found invalid payload for notification %@", v10, 0xCu);
      sub_1000071C8(v14, &qword_100082708, &qword_100068320);
      v9 = v13;
      v8 = v12;
      v6 = v11;
      v5 = v31;
    }

    else
    {
    }

    goto LABEL_6;
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10002337C()
{
  *(v0 + 504) = sub_100021BBC();

  return _swift_task_switch(sub_1000233E4, 0, 0);
}

uint64_t sub_1000233E4()
{
  v48 = v2;
  v3 = *(v2 + 504);
  v4 = v3[2];
  *(v2 + 512) = v4;
  if (v4)
  {
    *(v2 + 544) = &_swiftEmptyDictionarySingleton;
    *(v2 + 536) = 0;
    *(v2 + 528) = &_swiftEmptyDictionarySingleton;
    *(v2 + 520) = 0;
    if (v3[2])
    {
      v5 = *(v2 + 456);
      *(v2 + 552) = v3[4];
      *(v2 + 560) = v3[5];

      return _swift_task_switch(sub_100023880, v5, 0);
    }

    __break(1u);
    goto LABEL_31;
  }

  *(v2 + 616) = &_swiftEmptyDictionarySingleton;

  v7 = sub_100025628(v6);
  v8 = *(v2 + 320);
  *(v2 + 624) = v8;
  if (*(v8 + 16) <= v7[2] >> 3)
  {
    v47 = v7;
    sub_10002AA28(v8);
    v9 = v47;
  }

  else
  {
    v9 = sub_10002AB54(v8, v7);
  }

  *(v2 + 632) = v9;
  v10 = *(v9 + 32);
  *(v2 + 273) = v10;
  v11 = -1;
  v12 = -1 << v10;
  if (-(-1 << v10) < 64)
  {
    v11 = ~(-1 << -(-1 << v10));
  }

  v13 = v11 & v9[7];
  if (v13)
  {
    v14 = 0;
LABEL_16:
    *(v2 + 648) = v14;
    *(v2 + 640) = v13;
    v17 = *(v2 + 616);
    v18 = (v9[6] + ((v14 << 10) | (16 * __clz(__rbit64(v13)))));
    v1 = *v18;
    v0 = v18[1];
    *(v2 + 656) = v0;
    v19 = *(v17 + 16);

    if (v19)
    {
      v20 = sub_10005BCB0(v1, v0);
      if (v21)
      {
        sub_10000F92C(*(*(v2 + 616) + 56) + *(*(v2 + 416) + 72) * v20, *(v2 + 424));
        if (qword_100082600 == -1)
        {
LABEL_19:
          v22 = type metadata accessor for Logger();
          sub_100002D00(v22, qword_100083300);

          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v47 = v26;
            *v25 = 136315138;
            *(v25 + 4) = sub_1000049B8(v1, v0, &v47);
            _os_log_impl(&_mh_execute_header, v23, v24, "Found dismissed notification %s. Will put it in snoozed queue", v25, 0xCu);
            sub_100005ED8(v26);
          }

          v27 = swift_task_alloc();
          *(v2 + 664) = v27;
          *v27 = v2;
          v27[1] = sub_100024514;
          v28 = *(v2 + 424);

          return sub_10005F074(v28, v1, v0);
        }

LABEL_31:
        swift_once();
        goto LABEL_19;
      }

      v29 = *(v2 + 632);
      v30 = *(v2 + 616);
    }

    v31 = *(v2 + 624);
    v33 = *(v2 + 480);
    v32 = *(v2 + 488);
  }

  else
  {
    v15 = 0;
    v16 = ((63 - v12) >> 6) - 1;
    while (v16 != v15)
    {
      v14 = v15 + 1;
      v13 = v9[v15++ + 8];
      if (v13)
      {
        goto LABEL_16;
      }
    }

    v34 = *(v2 + 624);
    v35 = *(v2 + 616);
    v36 = *(v2 + 480);
  }

  v37 = *(v2 + 432);
  v38 = *(v2 + 440);
  v39 = *(v2 + 424);
  v41 = *(v2 + 392);
  v40 = *(v2 + 400);
  v43 = *(v2 + 376);
  v42 = *(v2 + 384);
  v44 = *(v2 + 368);

  v45 = *(v2 + 8);

  return v45();
}

uint64_t sub_100023880()
{
  v21 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 456);
  sub_10001EF40(*(v0 + 552), *(v0 + 560), *(v0 + 400));
  if (!v1)
  {
    v11 = 0;
LABEL_15:
    *(v0 + 568) = 0;
    (*(*(v0 + 416) + 56))(*(v0 + 400), v11, 1, *(v0 + 408));
    v9 = sub_100023B74;
    v10 = 0;
    goto LABEL_16;
  }

  *(v0 + 328) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = *(v0 + 328);

    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100002D00(v13, qword_100083110);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006B960, &v20);
      _os_log_impl(&_mh_execute_header, v14, v15, "Unknown error in %s", v16, 0xCu);
      sub_100005ED8(v17);
    }

    goto LABEL_14;
  }

  v3 = *(v0 + 272);
  sub_10002096C(*(v0 + 256), *(v0 + 264));
  v4 = sub_10001EB68();
  v6 = v5;
  *(v0 + 576) = v4;
  *(v0 + 584) = v5;
  sub_100021CE8();
  if (!v6)
  {
    v18 = *(v0 + 328);

LABEL_14:
    v11 = 1;
    goto LABEL_15;
  }

  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v7 = qword_100085E18;
  *(v0 + 592) = qword_100085E18;
  sub_10000BCE0();
  *(v0 + 600) = swift_allocError();
  *v8 = 6;
  *(v0 + 608) = _convertErrorToNSError(_:)();
  v9 = sub_1000243E0;
  v10 = v7;
LABEL_16:

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100023B74()
{
  v102 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 400);
  if ((*(*(v0 + 416) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 560);

    v4 = &qword_100082CB0;
    v5 = &qword_100068EB0;
    v6 = v2;
LABEL_7:
    sub_1000071C8(v6, v4, v5);
LABEL_8:
    v19 = *(v0 + 544);
    isUniquelyReferenced_nonNull_native = *(v0 + 528);
    goto LABEL_9;
  }

  v7 = *(v0 + 440);
  v8 = *(v0 + 392);
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);
  sub_10000F8C8(v2, v7);
  sub_10000C0A0(v7 + *(v1 + 32), v8, &unk_100083410, &qword_100068D50);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    v18 = *(v0 + 560);
    v1 = *(v0 + 392);
    sub_10000F990(*(v0 + 440));

    v4 = &unk_100083410;
    v5 = &qword_100068D50;
    v6 = v1;
    goto LABEL_7;
  }

  v12 = *(v0 + 440);
  v13 = *(v0 + 408);
  v14 = *(v0 + 384);
  v15 = *(v0 + 352);
  sub_1000071C8(*(v0 + 392), &unk_100083410, &qword_100068D50);
  sub_10000C0A0(v12 + *(v13 + 36), v14, &unk_100083410, &qword_100068D50);
  v16 = v11(v14, 1, v15);
  v17 = *(v0 + 384);
  if (v16 == 1)
  {
    sub_1000071C8(*(v0 + 384), &unk_100083410, &qword_100068D50);
  }

  else
  {
    v54 = *(v0 + 368);
    v1 = *(v0 + 376);
    v55 = *(v0 + 352);
    v56 = *(v0 + 360);
    (*(v56 + 32))(v1, *(v0 + 384), v55);
    static Date.now.getter();
    sub_10002DF9C(&qword_100083470, &type metadata accessor for Date);
    v57 = dispatch thunk of static Comparable.< infix(_:_:)();
    v58 = *(v56 + 8);
    v58(v54, v55);
    v58(v1, v55);
    if ((v57 & 1) == 0)
    {
      v92 = *(v0 + 560);
      sub_10000F990(*(v0 + 440));

      goto LABEL_8;
    }
  }

  v59 = *(v0 + 560);
  v1 = *(v0 + 552);
  v60 = *(v0 + 528);
  sub_10000F92C(*(v0 + 440), *(v0 + 432));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 336) = v60;
  v61 = sub_10005BCB0(v1, v59);
  v63 = *(v60 + 16);
  v64 = (v62 & 1) == 0;
  v65 = __OFADD__(v63, v64);
  v66 = v63 + v64;
  if (v65)
  {
    goto LABEL_50;
  }

  v1 = v62;
  if (*(*(v0 + 528) + 24) >= v66)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = v61;
      sub_10005E8F8();
      v61 = v93;
      v76 = *(v0 + 560);
      if (v1)
      {
        goto LABEL_43;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v67 = *(v0 + 560);
    v68 = *(v0 + 552);
    sub_10005CFA8(v66, isUniquelyReferenced_nonNull_native);
    v69 = *(v0 + 336);
    v61 = sub_10005BCB0(v68, v67);
    if ((v1 & 1) != (v70 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }
  }

  v76 = *(v0 + 560);
  if (v1)
  {
LABEL_43:
    v1 = *(v0 + 432);
    v77 = *(v0 + 440);
    v78 = *(v0 + 416);
    v79 = v61;

    isUniquelyReferenced_nonNull_native = *(v0 + 336);
    sub_10002DF38(v1, *(isUniquelyReferenced_nonNull_native + 56) + *(v78 + 72) * v79);
    sub_10000F990(v77);
    v19 = isUniquelyReferenced_nonNull_native;
    goto LABEL_9;
  }

LABEL_53:
  v94 = *(v0 + 552);
  v95 = *(v0 + 432);
  v96 = *(v0 + 440);
  v97 = *(v0 + 416);
  isUniquelyReferenced_nonNull_native = *(v0 + 336);
  *(isUniquelyReferenced_nonNull_native + 8 * (v61 >> 6) + 64) |= 1 << v61;
  v98 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v61);
  *v98 = v94;
  v98[1] = v76;
  sub_10000F8C8(v95, *(isUniquelyReferenced_nonNull_native + 56) + *(v97 + 72) * v61);
  v31 = sub_10000F990(v96);
  v99 = *(isUniquelyReferenced_nonNull_native + 16);
  v65 = __OFADD__(v99, 1);
  v100 = v99 + 1;
  if (v65)
  {
    __break(1u);
    return _swift_task_switch(v31, v32, v33);
  }

  *(isUniquelyReferenced_nonNull_native + 16) = v100;
  v19 = isUniquelyReferenced_nonNull_native;
LABEL_9:
  v21 = *(v0 + 536) + 1;
  if (v21 != *(v0 + 512))
  {
    v27 = *(v0 + 568);
    *(v0 + 544) = v19;
    *(v0 + 536) = v21;
    *(v0 + 528) = isUniquelyReferenced_nonNull_native;
    *(v0 + 520) = v27;
    v28 = *(v0 + 504);
    if (v21 < *(v28 + 16))
    {
      v29 = *(v0 + 456);
      v30 = v28 + 16 * v21;
      *(v0 + 552) = *(v30 + 32);
      *(v0 + 560) = *(v30 + 40);

      v31 = sub_100023880;
      v32 = v29;
      v33 = 0;

      return _swift_task_switch(v31, v32, v33);
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v0 + 616) = v19;
  v22 = *(v0 + 504);

  v24 = sub_100025628(v23);
  v25 = *(v0 + 320);
  *(v0 + 624) = v25;
  if (*(v25 + 16) <= v24[2] >> 3)
  {
    v101 = v24;
    sub_10002AA28(v25);
    v26 = v101;
  }

  else
  {
    v26 = sub_10002AB54(v25, v24);
  }

  *(v0 + 632) = v26;
  v34 = *(v26 + 32);
  *(v0 + 273) = v34;
  v35 = -1;
  v36 = -1 << v34;
  if (-(-1 << v34) < 64)
  {
    v35 = ~(-1 << -(-1 << v34));
  }

  v37 = v35 & v26[7];
  if (v37)
  {
    v38 = 0;
LABEL_24:
    *(v0 + 648) = v38;
    *(v0 + 640) = v37;
    v41 = *(v0 + 616);
    v42 = (v26[6] + ((v38 << 10) | (16 * __clz(__rbit64(v37)))));
    isUniquelyReferenced_nonNull_native = *v42;
    v1 = v42[1];
    *(v0 + 656) = v1;
    v43 = *(v41 + 16);

    if (v43)
    {
      v44 = sub_10005BCB0(isUniquelyReferenced_nonNull_native, v1);
      if (v45)
      {
        sub_10000F92C(*(*(v0 + 616) + 56) + *(*(v0 + 416) + 72) * v44, *(v0 + 424));
        if (qword_100082600 == -1)
        {
LABEL_27:
          v46 = type metadata accessor for Logger();
          sub_100002D00(v46, qword_100083300);

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v101 = v50;
            *v49 = 136315138;
            *(v49 + 4) = sub_1000049B8(isUniquelyReferenced_nonNull_native, v1, &v101);
            _os_log_impl(&_mh_execute_header, v47, v48, "Found dismissed notification %s. Will put it in snoozed queue", v49, 0xCu);
            sub_100005ED8(v50);
          }

          v51 = swift_task_alloc();
          *(v0 + 664) = v51;
          *v51 = v0;
          v51[1] = sub_100024514;
          v52 = *(v0 + 424);

          return sub_10005F074(v52, isUniquelyReferenced_nonNull_native, v1);
        }

LABEL_51:
        swift_once();
        goto LABEL_27;
      }

      v71 = *(v0 + 632);
      v72 = *(v0 + 616);
    }

    v73 = *(v0 + 624);
    v75 = *(v0 + 480);
    v74 = *(v0 + 488);
  }

  else
  {
    v39 = 0;
    v40 = ((63 - v36) >> 6) - 1;
    while (v40 != v39)
    {
      v38 = v39 + 1;
      v37 = v26[v39++ + 8];
      if (v37)
      {
        goto LABEL_24;
      }
    }

    v80 = *(v0 + 624);
    v81 = *(v0 + 616);
    v82 = *(v0 + 480);
  }

  v83 = *(v0 + 432);
  v84 = *(v0 + 440);
  v85 = *(v0 + 424);
  v87 = *(v0 + 392);
  v86 = *(v0 + 400);
  v89 = *(v0 + 376);
  v88 = *(v0 + 384);
  v90 = *(v0 + 368);

  v91 = *(v0 + 8);

  return v91();
}

uint64_t sub_1000243E0()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 456);
  sub_100033994(*(v0 + 576), *(v0 + 584));

  return _swift_task_switch(sub_100024488, v4, 0);
}

uint64_t sub_100024488()
{
  v1 = v0[41];

  v0[71] = 0;
  (*(v0[52] + 56))(v0[50], 1, 1, v0[51]);

  return _swift_task_switch(sub_100023B74, 0, 0);
}

uint64_t sub_100024514()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v4 = *v0;

  return _swift_task_switch(sub_10002462C, 0, 0);
}

uint64_t sub_10002462C()
{
  v38 = v2;
  sub_10000F990(*(v2 + 424));
  v3 = *(v2 + 648);
  v4 = (*(v2 + 640) - 1) & *(v2 + 640);
  if (!v4)
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v5 = *(v2 + 632);
      if (v6 >= (((1 << *(v2 + 273)) + 63) >> 6))
      {
        v25 = *(v2 + 624);
        v26 = *(v2 + 616);
        v27 = *(v2 + 480);

        goto LABEL_18;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v5 = *(v2 + 632);
LABEL_7:
  *(v2 + 648) = v3;
  *(v2 + 640) = v4;
  v7 = *(v2 + 616);
  v8 = (*(v5 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
  v1 = *v8;
  v0 = v8[1];
  *(v2 + 656) = v0;
  v9 = *(v7 + 16);

  if (v9)
  {
    v10 = sub_10005BCB0(v1, v0);
    if (v11)
    {
      sub_10000F92C(*(*(v2 + 616) + 56) + *(*(v2 + 416) + 72) * v10, *(v2 + 424));
      if (qword_100082600 == -1)
      {
LABEL_10:
        v12 = type metadata accessor for Logger();
        sub_100002D00(v12, qword_100083300);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v37 = v16;
          *v15 = 136315138;
          *(v15 + 4) = sub_1000049B8(v1, v0, &v37);
          _os_log_impl(&_mh_execute_header, v13, v14, "Found dismissed notification %s. Will put it in snoozed queue", v15, 0xCu);
          sub_100005ED8(v16);
        }

        v17 = swift_task_alloc();
        *(v2 + 664) = v17;
        *v17 = v2;
        v17[1] = sub_100024514;
        v18 = *(v2 + 424);

        return sub_10005F074(v18, v1, v0);
      }

LABEL_22:
      swift_once();
      goto LABEL_10;
    }

    v20 = *(v2 + 632);
    v21 = *(v2 + 616);
  }

  v22 = *(v2 + 624);
  v24 = *(v2 + 480);
  v23 = *(v2 + 488);

LABEL_18:
  v28 = *(v2 + 432);
  v29 = *(v2 + 440);
  v30 = *(v2 + 424);
  v32 = *(v2 + 392);
  v31 = *(v2 + 400);
  v34 = *(v2 + 376);
  v33 = *(v2 + 384);
  v35 = *(v2 + 368);

  v36 = *(v2 + 8);

  return v36();
}

uint64_t sub_1000249D4()
{
  v1[2] = v0;
  v2 = *(*(sub_100004F70(&qword_100082CB0, &qword_100068EB0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for FormLaunchConfiguration();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for Calendar.Component();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = type metadata accessor for Calendar();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();
  v12 = *(*(sub_100004F70(&unk_100083410, &qword_100068D50) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v1[14] = v13;
  v14 = *(v13 - 8);
  v1[15] = v14;
  v15 = *(v14 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100024C24, v0, 0);
}

uint64_t sub_100024C24()
{
  if (qword_100082648 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = qword_100083A48;

  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 integerForKey:v8];

  static Date.now.getter();
  static Calendar.current.getter();
  (*(v4 + 104))(v3, enum case for Calendar.Component.hour(_:), v5);
  if (__OFSUB__(0, v9))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v11 = v0[15];
  v10 = v0[16];
  v13 = v0[13];
  v12 = v0[14];
  v15 = v0[11];
  v14 = v0[12];
  v17 = v0[9];
  v16 = v0[10];
  v18 = v0[7];
  v19 = v0[8];
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v19 + 8))(v17, v18);
  (*(v15 + 8))(v14, v16);
  v20 = (*(v11 + 48))(v13, 1, v12);
  if (v20 == 1)
  {
    __break(1u);
    return _swift_task_switch(v20, v21, v22);
  }

  v23 = v0[16];
  v24 = v0[17];
  v25 = v0[14];
  v26 = v0[15];
  v27 = v0[13];
  v28 = *(v26 + 8);
  v0[18] = v28;
  v0[19] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v23, v25);
  (*(v26 + 32))(v24, v27, v25);
  if (qword_1000825F8 != -1)
  {
    goto LABEL_10;
  }

LABEL_6:
  v21 = qword_100085DF0;
  v0[20] = qword_100085DF0;
  v20 = sub_100024E7C;
  v22 = 0;

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_100024E7C()
{
  v1 = *(v0 + 16);
  *(v0 + 168) = sub_100021BBC();

  return _swift_task_switch(sub_100024EE8, v1, 0);
}

uint64_t sub_100024EE8()
{
  result = v0[21];
  v2 = (result + 16);
  v3 = *(result + 16);
  if (v3)
  {
    v0[22] = 0;
    v0[23] = v3;
    if (v3 > *v2)
    {
      __break(1u);
    }

    else
    {
      v4 = &v2[2 * v3];
      v5 = *v4;
      v0[24] = *v4;
      v6 = v4[1];
      v0[25] = v6;

      v7 = swift_task_alloc();
      v0[26] = v7;
      *v7 = v0;
      v7[1] = sub_100025098;
      v8 = v0[20];
      v9 = v0[3];

      return sub_10001E6E0(v9, v5, v6);
    }
  }

  else
  {
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[17];
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    v17 = v0[9];
    v18 = v0[6];
    v20 = v0[3];

    v10(v13, v14);

    v19 = v0[1];

    return v19(0);
  }

  return result;
}

uint64_t sub_100025098()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000251A8, v2, 0);
}

uint64_t sub_1000251A8()
{
  v42 = v0;
  v1 = v0[4];
  v2 = v0[3];
  if ((*(v0[5] + 48))(v2, 1, v1) != 1)
  {
    v12 = v0[25];
    v13 = v0[17];
    v14 = v0[14];
    v15 = v0[6];

    sub_10000F8C8(v2, v15);
    v16 = *(v1 + 24);
    sub_10002DF9C(&qword_100083470, &type metadata accessor for Date);
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_10000F990(v15);
    v5 = v0[22];
    if (v17)
    {
      goto LABEL_11;
    }

    v18 = __OFADD__(v5, 1);
    v5 = (v5 + 1);
    if (!v18)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_9;
  }

  sub_1000071C8(v2, &qword_100082CB0, &qword_100068EB0);
  if (qword_100082600 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v3 = v0[25];
    v4 = type metadata accessor for Logger();
    sub_100002D00(v4, qword_100083300);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[25];
    if (v7)
    {
      v9 = v0[24];
      v10 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v10 = 136446466;
      *(v10 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006BC80, &v41);
      *(v10 + 12) = 2080;
      v11 = sub_1000049B8(v9, v8, &v41);

      *(v10 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s no object for key: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
LABEL_9:
    }

    v5 = v0[22];
LABEL_11:
    v19 = v0[23];
    v20 = v19 - 1;
    if (v19 == 1)
    {
      break;
    }

    v0[22] = v5;
    v0[23] = v20;
    v21 = v0[21];
    if (v20 <= *(v21 + 16))
    {
      v22 = (v21 + 16 * v19);
      v23 = *v22;
      v0[24] = *v22;
      v24 = v22[1];
      v0[25] = v24;

      v25 = swift_task_alloc();
      v0[26] = v25;
      *v25 = v0;
      v25[1] = sub_100025098;
      v26 = v0[20];
      v27 = v0[3];

      return sub_10001E6E0(v27, v23, v24);
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v29 = v0[21];
  v30 = v0[18];
  v31 = v0[19];
  v33 = v0[16];
  v32 = v0[17];
  v35 = v0[13];
  v34 = v0[14];
  v36 = v0[12];
  v37 = v0[9];
  v39 = v0[6];
  v40 = v0[3];

  v30(v32, v34);

  v38 = v0[1];

  return v38(v5);
}

uint64_t sub_1000255A4(uint64_t a1)
{
  v1 = *sub_100013DAC((a1 + 32), *(a1 + 56));
  sub_100008714(0, &qword_100083408, UNNotification_ptr);
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_100025628(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10002A8D8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100025744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[71] = v7;
  v8[70] = a7;
  v8[69] = a6;
  v8[68] = a3;
  v8[67] = a2;
  v8[66] = a1;
  v9 = *(*(sub_100004F70(&unk_100083410, &qword_100068D50) - 8) + 64) + 15;
  v8[72] = swift_task_alloc();

  return _swift_task_switch(sub_1000257F4, 0, 0);
}

uint64_t sub_1000257F4()
{
  v11 = v0;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 584) = sub_100002D00(v1, qword_100083300);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006BC40, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  v6 = *(*(v0 + 560) + 80);
  *(v0 + 672) = v6;
  v7 = swift_task_alloc();
  *(v0 + 592) = v7;
  *v7 = v0;
  v7[1] = sub_1000259B4;
  v8 = *(v0 + 568);

  return sub_1000220CC(v6);
}

uint64_t sub_1000259B4(char a1)
{
  v2 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 673) = a1;

  return _swift_task_switch(sub_100025AB4, 0, 0);
}

uint64_t sub_100025AB4()
{
  if (*(v0 + 673))
  {
    *(v0 + 600) = *(*(v0 + 568) + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
    v1 = swift_task_alloc();
    *(v0 + 608) = v1;
    *v1 = v0;
    v1[1] = sub_100025BCC;
    v2 = *(v0 + 568);

    return sub_100028780();
  }

  else
  {
    sub_10000BF94();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 576);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100025BCC()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 576);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100025D18, 0, 0);
  }
}

uint64_t sub_100025D18()
{
  v41 = v0;
  v1 = v0;
  v2 = *(v0 + 584);
  v3 = *(v0 + 560);
  v4 = *(v1 + 552);
  v5 = FormItem.isSurvey.getter();
  sub_100014070(v40, v5 & 1);
  v6 = v40[1];
  v8 = v40[2];
  v7 = v40[3];
  v9 = v40[4];
  v10 = v40[5];
  v11 = v40[6];
  v12 = v40[7];
  *(v1 + 80) = v40[0];
  *(v1 + 88) = v6;
  *(v1 + 96) = v8;
  *(v1 + 104) = v7;
  *(v1 + 112) = v9;
  *(v1 + 120) = v10;
  *(v1 + 128) = v11;
  *(v1 + 136) = v12;
  sub_10000C0A0(v1 + 80, v1 + 144, &unk_100083420, &unk_1000696E0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  sub_1000071C8(v1 + 80, &unk_100083420, &unk_1000696E0);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40[0] = v16;
    *v15 = 136446210;
    v17 = *(v1 + 96);
    *(v1 + 400) = *(v1 + 80);
    *(v1 + 416) = v17;
    v18 = *(v1 + 128);
    *(v1 + 432) = *(v1 + 112);
    *(v1 + 448) = v18;
    sub_10000C0A0(v1 + 80, v1 + 464, &unk_100083420, &unk_1000696E0);
    sub_100004F70(&unk_100083420, &unk_1000696E0);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000049B8(v19, v20, v40);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Using strings %{public}s", v15, 0xCu);
    sub_100005ED8(v16);
  }

  v22 = *(v1 + 544);
  v23 = *(v1 + 536);
  v39 = *(v1 + 560);
  sub_100004F70(&qword_100082E30, &qword_100069120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  strcpy((inited + 32), "formIdentifier");
  *(inited + 47) = -18;
  *(inited + 48) = v23;
  *(inited + 56) = v22;

  v25 = sub_100015C0C(inited);
  swift_setDeallocating();
  sub_1000071C8(inited + 32, &qword_100083430, &qword_1000696F0);
  v26 = [objc_allocWithZone(UNMutableNotificationContent) init];
  *(v1 + 616) = v26;
  sub_10000C0A0(v1 + 80, v1 + 272, &unk_100083420, &unk_1000696E0);

  v27 = String._bridgeToObjectiveC()();

  [v26 setTitle:v27];

  v28 = String._bridgeToObjectiveC()();

  [v26 setBody:v28];

  sub_100015148(v25);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v26 setUserInfo:isa];

  [v26 setInterruptionLevel:1];
  static Strings.Notification.categoryIdentifier.getter();
  v30 = String._bridgeToObjectiveC()();

  [v26 setCategoryIdentifier:v30];

  [v26 setShouldBackgroundDefaultAction:1];
  [v26 setShouldAuthenticateDefaultAction:1];
  v31 = sub_10002BF94(v39);
  *(v1 + 624) = v31;
  v32 = v31;
  v33 = v26;
  v34 = String._bridgeToObjectiveC()();
  *(v1 + 632) = [objc_opt_self() requestWithIdentifier:v34 content:v33 trigger:v32];

  v35 = swift_task_alloc();
  *(v1 + 640) = v35;
  *v35 = v1;
  v35[1] = sub_10002621C;
  v36 = *(v1 + 568);
  v37 = *(v1 + 672);

  return sub_1000220CC(v37);
}

uint64_t sub_10002621C(char a1)
{
  v2 = *(*v1 + 640);
  v4 = *v1;
  *(*v1 + 674) = a1;

  return _swift_task_switch(sub_10002631C, 0, 0);
}

uint64_t sub_10002631C()
{
  if (*(v0 + 674))
  {
    v1 = *(v0 + 632);
    v2 = *(v0 + 568);
    v3 = OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount;
    *(v0 + 648) = OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount;
    v4 = *(v0 + 600);
    *(v0 + 656) = *(v2 + v3);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000264DC;
    v5 = swift_continuation_init();
    *(v0 + 392) = sub_100004F70(&qword_100082BC8, &qword_100068D78);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_100021DB8;
    *(v0 + 360) = &unk_10007E4A8;
    *(v0 + 368) = v5;
    [v4 addNotificationRequest:v1 withCompletionHandler:v0 + 336];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    v8 = *(v0 + 616);
    sub_10000BF94();
    swift_allocError();
    swift_willThrow();

    v9 = *(v0 + 576);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1000264DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 664) = v2;
  if (v2)
  {
    v3 = sub_1000268EC;
  }

  else
  {
    v3 = sub_1000265EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1000265EC()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 632);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 632);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = [v5 trigger];
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Posted notification with trigger [%{public}@]", v6, 0xCu);
    sub_1000071C8(v7, &qword_100082708, &qword_100068320);
  }

  v9 = *(v0 + 656);
  v10 = *(v0 + 648);
  v11 = *(v0 + 568);

  if (*(v11 + v10) != v9)
  {
    v12 = *(v0 + 584);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Race condition detected in notification posts count", v15, 2u);
    }
  }

  v16 = *(v0 + 648);
  v17 = *(v0 + 568);
  v18 = *(v17 + v16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v21 = *(v0 + 624);
    *(v17 + v16) = v20;
    if (v21)
    {
      v22 = [*(v0 + 624) nextTriggerDate];
      if (v22)
      {
        v23 = *(v0 + 576);
        v24 = v22;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      v29 = *(v0 + 632);
      v30 = *(v0 + 624);
      v31 = *(v0 + 576);
      v32 = *(v0 + 528);

      v33 = type metadata accessor for Date();
      (*(*(v33 - 8) + 56))(v31, v25, 1, v33);
      sub_10002DE60(v31, v32);
    }

    else
    {
      v26 = *(v0 + 632);
      v27 = *(v0 + 528);

      v28 = type metadata accessor for Date();
      (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    }

    v34 = *(v0 + 576);

    v35 = *(v0 + 8);

    v35();
  }
}

uint64_t sub_1000268EC()
{
  v1 = v0[83];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  swift_willThrow();

  v5 = v0[83];
  v6 = v0[72];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100026980(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_1000269A4, 0, 0);
}

uint64_t sub_1000269A4()
{
  v1 = *(v0[21] + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100026AD0;
  v2 = swift_continuation_init();
  v0[17] = sub_100004F70(&qword_100083400, &unk_1000696D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000255A4;
  v0[13] = &unk_10007E480;
  v0[14] = v2;
  [v1 getDeliveredNotificationsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100026AD0()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100026BB0, 0, 0);
}

char *sub_100026BB0()
{
  v29 = v0;
  v1 = v0[18];
  v27 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = v0[19];
      v8 = v0[20];
      v28 = v4;
      if (sub_100026ED0(&v28, v7, v8))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_14:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage[2];
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  v28 = _swiftEmptyArrayStorage;
  result = sub_100004FD8(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v12 = 0;
  v13 = v28;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = _swiftEmptyArrayStorage[v12 + 4];
    }

    v15 = v14;
    v16 = [v14 request];
    v17 = [v16 identifier];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v28 = v13;
    v22 = v13[2];
    v21 = v13[3];
    if (v22 >= v21 >> 1)
    {
      sub_100004FD8((v21 > 1), v22 + 1, 1);
      v13 = v28;
    }

    ++v12;
    v13[2] = (v22 + 1);
    v23 = &v13[2 * v22];
    v23[4] = v18;
    v23[5] = v20;
  }

  while (v10 != v12);
LABEL_30:

  v24 = v0[22];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 removeDeliveredNotificationsWithIdentifiers:isa];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100026ED0(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 request];
  v7 = [v6 content];

  v8 = [v7 userInfo];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v37, "formIdentifier");
  HIBYTE(v37[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  v10 = sub_10005BC6C(v38);
  if ((v11 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100007018(*(v9 + 56) + 32 * v10, v39);
  sub_100006FC4(v38);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002D00(v21, qword_100083300);
    v22 = v5;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Found invalid payload for notification %@", v25, 0xCu);
      sub_1000071C8(v26, &qword_100082708, &qword_100068320);
    }

    return 0;
  }

  v12 = v37[1];
  v36 = v37[0];
  v13 = [v5 request];
  v14 = [v13 content];

  v15 = [v14 userInfo];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v37[0] = 7955819;
  v37[1] = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = sub_10005BC6C(v38), (v18 & 1) == 0))
  {

LABEL_10:

    sub_100006FC4(v38);
    goto LABEL_11;
  }

  sub_100007018(*(v16 + 56) + 32 * v17, v39);
  sub_100006FC4(v38);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v20 = v37[0];
  v19 = v37[1];
  if (v36 != a2 || v12 != a3)
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_20;
    }

    return 0;
  }

LABEL_20:
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100002D00(v30, qword_100083300);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38[0] = v34;
    *v33 = 136446210;
    v35 = sub_1000049B8(v20, v19, v38);

    *(v33 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Will remove posted notification for completed form %{public}s", v33, 0xCu);
    sub_100005ED8(v34);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1000273F4(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = *(*(type metadata accessor for FormLaunchConfiguration() - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100027494, 0, 0);
}

uint64_t sub_100027494()
{
  v17 = v0;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[28];
  v3 = type metadata accessor for Logger();
  v0[33] = sub_100002D00(v3, qword_100083300);
  sub_10000F92C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = *v7;
    v11 = v7[1];

    sub_10000F990(v7);
    v12 = sub_1000049B8(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Will try re-posting notification for [%{public}s]", v8, 0xCu);
    sub_100005ED8(v9);
  }

  else
  {

    sub_10000F990(v7);
  }

  v13 = swift_task_alloc();
  v0[34] = v13;
  *v13 = v0;
  v13[1] = sub_100027688;
  v14 = v0[30];

  return sub_100028780();
}

uint64_t sub_100027688()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_100027DAC;
  }

  else
  {
    v3 = sub_10002779C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002779C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = [*(v0 + 232) content];
  *(v0 + 288) = v3;
  v4 = *v2;
  v5 = v2[1];
  v6 = v3;
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() requestWithIdentifier:v7 content:v6 trigger:0];
  *(v0 + 296) = v8;

  v9 = *(v1 + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10002793C;
  v10 = swift_continuation_init();
  *(v0 + 136) = sub_100004F70(&qword_100082BC8, &qword_100068D78);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100021DB8;
  *(v0 + 104) = &unk_10007E458;
  *(v0 + 112) = v10;
  [v9 addNotificationRequest:v8 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10002793C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = sub_10002828C;
  }

  else
  {
    v3 = sub_100027A4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027A4C()
{
  v18 = v0;
  v1 = v0[33];
  sub_10000F92C(v0[28], v0[31]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[31];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = *v7;
    v11 = v7[1];

    sub_10000F990(v7);
    v12 = sub_1000049B8(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Re-posted notification for form [%{public}s]", v8, 0xCu);
    sub_100005ED8(v9);
  }

  else
  {

    sub_10000F990(v7);
  }

  v14 = v0[31];
  v13 = v0[32];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100027BE0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  sub_100033994(*(v0 + 336), *(v0 + 344));

  return _swift_task_switch(sub_100027C4C, 0, 0);
}

uint64_t sub_100027C4C()
{
  v1 = *(v0 + 200);

  v3 = *(v0 + 248);
  v2 = *(v0 + 256);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100027CC4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  sub_100033994(*(v0 + 368), *(v0 + 376));

  return _swift_task_switch(sub_100027D30, 0, 0);
}

uint64_t sub_100027D30()
{
  v1 = *(v0 + 312);

  v3 = *(v0 + 248);
  v2 = *(v0 + 256);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100027DAC()
{
  v30 = v0;
  v1 = *(v0 + 280);
  *(v0 + 200) = v1;
  *(v0 + 312) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 264);
  if (v2)
  {

    v4 = *(v0 + 384);
    v5 = Logger.logObject.getter();
    if (v4 == 5)
    {
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v7 = 136446466;
        *(v7 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, &v29);
        *(v7 + 12) = 2080;
        v8 = 5;
LABEL_12:
        v23 = sub_100015668(v8);
        v25 = sub_1000049B8(v23, v24, &v29);

        *(v7 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed with: %s", v7, 0x16u);
        swift_arrayDestroy();
      }
    }

    else
    {
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v7 = 136446466;
        *(v7 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, &v29);
        *(v7 + 12) = 2080;
        v8 = v4;
        goto LABEL_12;
      }
    }

    sub_10000BCE0();
    swift_allocError();
    *v26 = v4;
    *(v0 + 320) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 224);
    v21 = qword_100085E18;
    *(v0 + 328) = qword_100085E18;
    *(v0 + 336) = *v27;
    *(v0 + 344) = v27[1];
    v22 = sub_100027BE0;
    goto LABEL_16;
  }

  v9 = (v0 + 144);
  v10 = *(v0 + 200);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, &v29);
    *(v13 + 12) = 2080;
    *(v0 + 216) = v1;
    swift_errorRetain();
    v14 = String.init<A>(describing:)();
    v16 = sub_1000049B8(v14, v15, &v29);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s failed with: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  *(v0 + 168) = v17;
  v19 = sub_100019A2C(v9);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  *(v0 + 352) = static FBKSError.nsError(anyError:)();
  sub_100005ED8(v9);
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 224);
  v21 = qword_100085E18;
  *(v0 + 360) = qword_100085E18;
  *(v0 + 368) = *v20;
  *(v0 + 376) = v20[1];
  v22 = sub_100027CC4;
LABEL_16:

  return _swift_task_switch(v22, v21, 0);
}

uint64_t sub_10002828C()
{
  v33 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  swift_willThrow();

  v4 = *(v0 + 304);
  *(v0 + 200) = v4;
  *(v0 + 312) = v4;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 264);
  if (v5)
  {

    v7 = *(v0 + 384);
    v8 = Logger.logObject.getter();
    if (v7 == 5)
    {
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v10 = 136446466;
        *(v10 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, v32);
        *(v10 + 12) = 2080;
        v11 = 5;
LABEL_12:
        v26 = sub_100015668(v11);
        v28 = sub_1000049B8(v26, v27, v32);

        *(v10 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s failed with: %s", v10, 0x16u);
        swift_arrayDestroy();
      }
    }

    else
    {
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v10 = 136446466;
        *(v10 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, v32);
        *(v10 + 12) = 2080;
        v11 = v7;
        goto LABEL_12;
      }
    }

    sub_10000BCE0();
    swift_allocError();
    *v29 = v7;
    *(v0 + 320) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 224);
    v24 = qword_100085E18;
    *(v0 + 328) = qword_100085E18;
    *(v0 + 336) = *v30;
    *(v0 + 344) = v30[1];
    v25 = sub_100027BE0;
    goto LABEL_16;
  }

  v12 = (v0 + 144);
  v13 = *(v0 + 200);

  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, v32);
    *(v16 + 12) = 2080;
    *(v0 + 216) = v4;
    swift_errorRetain();
    v17 = String.init<A>(describing:)();
    v19 = sub_1000049B8(v17, v18, v32);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s failed with: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  *(v0 + 168) = v20;
  v22 = sub_100019A2C(v12);
  (*(*(v20 - 8) + 16))(v22, v21, v20);
  *(v0 + 352) = static FBKSError.nsError(anyError:)();
  sub_100005ED8(v12);
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 224);
  v24 = qword_100085E18;
  *(v0 + 360) = qword_100085E18;
  *(v0 + 368) = *v23;
  *(v0 + 376) = v23[1];
  v25 = sub_100027CC4;
LABEL_16:

  return _swift_task_switch(v25, v24, 0);
}

uint64_t sub_1000287A0()
{
  v1 = *(v0[27] + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1000288CC;
  v2 = swift_continuation_init();
  v0[25] = sub_100004F70(&unk_1000833D0, &qword_100068D38);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100021E64;
  v0[21] = &unk_10007E408;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000288CC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000289AC, 0, 0);
}

uint64_t sub_1000289AC()
{
  v1 = v0[28];
  v0[29] = v0[26];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_100028AD4;
  v2 = swift_continuation_init();
  v0[25] = sub_100004F70(&qword_100082BA0, &unk_100068D40);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100021EC8;
  v0[21] = &unk_10007E430;
  v0[22] = v2;
  [v1 requestAuthorizationWithOptions:7 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100028AD4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_10000B82C;
  }

  else
  {
    v3 = sub_100028BE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100028BE4()
{
  v26 = v0;
  v1 = *(v0 + 208);
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 232);
  v3 = type metadata accessor for Logger();
  sub_100002D00(v3, qword_100083300);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v10 = v1;
    v11 = v25;
    *v8 = 136446722;
    *(v0 + 144) = [v7 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, &v25);

    *(v8 + 4) = v14;
    *(v8 + 12) = 1026;
    *(v8 + 14) = v10;
    *(v8 + 18) = 2112;
    *(v8 + 20) = v7;
    *v9 = v7;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Previous status [%{public}s], authorized? %{BOOL,public}d\nSettings: %@", v8, 0x1Cu);
    sub_1000071C8(v9, &qword_100082708, &qword_100068320);

    sub_100005ED8(v11);
  }

  v16 = [*(v0 + 232) authorizationStatus];
  if (v16 <= 1)
  {
    if (!v16)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Not Determined";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v16 == 1)
    {
      v20 = *(v0 + 232);
      sub_10000BCE0();
      swift_allocError();
      *v21 = 5;
      swift_willThrow();

      v22 = *(v0 + 8);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v16 != 2)
  {
    if (v16 == 3)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Provisional";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v16 == 4)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Ephemeral";
LABEL_22:
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, v19, v23, 2u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_20:
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = "Notification status is Unknown Default";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = "Notification status is Authorized";
    goto LABEL_22;
  }

LABEL_23:

  v22 = *(v0 + 8);
LABEL_24:

  return v22();
}

id sub_100028FAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100029014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return _swift_task_switch(sub_100029050, 0, 0);
}

uint64_t sub_100029050()
{
  v55 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  _StringGuts.grow(_:)(23);
  v3 = static Strings.Daemon.bundleIdentifier.getter();
  v5 = v4;

  v54[0] = v3;
  v54[1] = v5;
  v6._object = 0x800000010006BBB0;
  v6._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v6);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v7 == v1)
  {

    goto LABEL_10;
  }

  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_10:
    v15 = [*(v0 + 56) notification];
    v16 = [v15 request];
    *(v0 + 80) = v16;

    v17 = swift_task_alloc();
    *(v0 + 88) = v17;
    *v17 = v0;
    v17[1] = sub_100029650;
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    v20 = *(v0 + 32);

    return sub_100060864(v20, v18, v19, v16);
  }

  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v12 && v14 == v13)
  {

LABEL_14:
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100002D00(v25, qword_100083300);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_19;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "dismissed notification", v28, 2u);
LABEL_18:

LABEL_19:

    v29 = *(v0 + 8);

    return v29();
  }

  v22 = *(v0 + 16);
  v23 = *(v0 + 24);
  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_14;
  }

  v30 = *(v0 + 16);
  v31 = *(v0 + 24);
  if (static Strings.Notification.declineActionIdentifier.getter() == v30 && v32 == v31)
  {

LABEL_26:
    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 32);
    v37 = qword_100085E18;
    *(v0 + 96) = qword_100085E18;
    *(v0 + 104) = *v36;
    *(v0 + 112) = v36[1];

    return _swift_task_switch(sub_10002975C, v37, 0);
  }

  v33 = *(v0 + 16);
  v34 = *(v0 + 24);
  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_26;
  }

  v38 = *(v0 + 16);
  v39 = *(v0 + 24);
  if (static Strings.Notification.snoozeActionIdentifier.getter() == v38 && v40 == v39)
  {
  }

  else
  {
    v41 = *(v0 + 16);
    v42 = *(v0 + 24);
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      if (qword_100082600 != -1)
      {
        swift_once();
      }

      v48 = *(v0 + 24);
      v49 = type metadata accessor for Logger();
      sub_100002D00(v49, qword_100083300);

      v26 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v26, v50))
      {
        goto LABEL_19;
      }

      v52 = *(v0 + 16);
      v51 = *(v0 + 24);
      v53 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v53 = 136315394;
      *(v53 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BB80, v54);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_1000049B8(v52, v51, v54);
      _os_log_impl(&_mh_execute_header, v26, v50, "%s action: %s not handled", v53, 0x16u);
      swift_arrayDestroy();

      goto LABEL_18;
    }
  }

  v44 = swift_task_alloc();
  *(v0 + 120) = v44;
  *v44 = v0;
  v44[1] = sub_1000298BC;
  v45 = *(v0 + 64);
  v46 = *(v0 + 72);
  v47 = *(v0 + 32);

  return sub_10005F074(v47, v45, v46);
}

uint64_t sub_100029650()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10002975C()
{
  v1 = *(v0 + 96);
  sub_100034A7C(*(v0 + 104), *(v0 + 112));

  return _swift_task_switch(sub_1000297C8, 0, 0);
}

uint64_t sub_1000297C8()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_10002985C, v0, 0);
}

uint64_t sub_10002985C()
{
  sub_10002096C(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000298BC()
{
  v1 = *(*v0 + 120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100029B40(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100029C24;

  return (sub_10002CF0C)(v9);
}

uint64_t sub_100029C24()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100029D94()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100029DE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002E084;

  return sub_100029B40(v2, v3, v5, v4);
}

uint64_t sub_100029EA4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10002E084;

  return v7();
}

uint64_t sub_100029F8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002E084;

  return sub_100029EA4(v2, v3, v5);
}

uint64_t sub_10002A04C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000BEA0;

  return v8();
}

uint64_t sub_10002A138()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002A178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E084;

  return sub_10002A04C(a1, v4, v5, v7);
}

uint64_t sub_10002A244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000C0A0(a3, v25 - v11, &qword_1000833B0, &qword_100068D60);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);

    return v23;
  }

LABEL_8:
  sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10002A540(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002A638;

  return v7(a1);
}

uint64_t sub_10002A638()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002A730()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A768(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002E084;

  return sub_10002A540(a1, v5);
}

uint64_t sub_10002A820(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BEA0;

  return sub_10002A540(a1, v5);
}

uint64_t sub_10002A8D8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10002BE14(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10002AA28(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10002B0C4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10002AB54(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_10002B698(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_10002B460(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_10002DFE4();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B0C4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10002B8BC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10002BC50(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10002B200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004F70(&qword_100083478, &qword_100069718);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t *sub_10002B460(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_10002B698(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_10002B698(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004F70(&qword_100083478, &qword_100069718);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_10002B8BC()
{
  v1 = v0;
  sub_100004F70(&qword_100083478, &qword_100069718);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10002BA18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004F70(&qword_100083478, &qword_100069718);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_10002BC50(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_10002BE14(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10002B200(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10002B8BC();
      goto LABEL_16;
    }

    sub_10002BA18(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10002BF94(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v136 = *(v2 - 8);
  v3 = *(v136 + 64);
  __chkstk_darwin(v2);
  v130 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004F70(&unk_100083410, &qword_100068D50);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v131 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v112 - v9;
  v11 = type metadata accessor for Date();
  v137 = *(v11 - 8);
  v138 = v11;
  v12 = v137[8];
  v13 = __chkstk_darwin(v11);
  v128 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v132 = &v112 - v16;
  __chkstk_darwin(v15);
  v18 = &v112 - v17;
  v135 = type metadata accessor for DateComponents();
  v19 = *(v135 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v135);
  v127 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v112 - v23;
  v25 = type metadata accessor for Calendar();
  v26 = *(v25 - 8);
  v133 = v25;
  v134 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v139 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 80);
  if (qword_100082678 != -1)
  {
    swift_once();
  }

  v30 = qword_100083AD8;

  v31 = v30;
  v32 = String._bridgeToObjectiveC()();
  LOBYTE(v30) = [v31 BOOLForKey:v32];

  if (v30 & 1) != 0 || (v29)
  {
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100002D00(v64, qword_100083300);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Not using triggers", v67, 2u);
    }

    return 0;
  }

  v129 = v19;
  static Calendar.current.getter();
  v33 = sub_100004F70(&qword_100083438, &unk_1000696F8);
  v34 = v136;
  v126 = v24;
  v35 = *(v136 + 72);
  v36 = *(v136 + 80);
  v37 = (v36 + 32) & ~v36;
  v38 = 2 * v35;
  v121 = 3 * v35;
  v116 = v36;
  v117 = v33;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000695E0;
  v118 = v37;
  v40 = v39 + v37;
  v41 = *(v34 + 104);
  v115 = enum case for Calendar.Component.year(_:);
  v41(v40);
  v119 = v35;
  v42 = v40 + v35;
  v43 = v126;
  v114 = enum case for Calendar.Component.month(_:);
  v41(v42);
  v120 = v38;
  v123 = enum case for Calendar.Component.day(_:);
  v122 = v41;
  v41(v40 + v38);
  sub_10001764C(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:)();

  v44 = v137[1];
  v125 = v137 + 1;
  v124 = v44;
  v44(v18, v138);
  DateComponents.second.setter();
  if (qword_100082668 != -1)
  {
    swift_once();
  }

  v45 = qword_100083AA8;

  v46 = v45;
  v47 = String._bridgeToObjectiveC()();
  [v46 integerForKey:v47];

  DateComponents.minute.setter();
  if (qword_100082660 != -1)
  {
    swift_once();
  }

  v48 = qword_100083A90;

  v49 = v48;
  v50 = String._bridgeToObjectiveC()();
  [v49 integerForKey:v50];

  DateComponents.hour.setter();
  v51 = v139;
  if ((DateComponents.isValidDate(in:)() & 1) == 0)
  {
    v56 = v129;
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100002D00(v68, qword_100083300);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.fault.getter();
    v71 = os_log_type_enabled(v69, v70);
    v61 = v135;
    if (v71)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Invalid date for notification trigger", v72, 2u);
    }

    (*(v134 + 8))(v51, v133);
    goto LABEL_26;
  }

  Calendar.date(from:)();
  v52 = v137;
  v53 = v138;
  v54 = v137[6];
  v55 = v54(v10, 1, v138);
  v56 = v129;
  if (v55 == 1)
  {
    sub_1000071C8(v10, &unk_100083410, &qword_100068D50);
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100002D00(v57, qword_100083300);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v135;
    v62 = v139;
    if (v60)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Error generating date for notification trigger", v63, 2u);
    }

    (*(v134 + 8))(v62, v133);
LABEL_26:
    (*(v56 + 8))(v43, v61);
    return 0;
  }

  v74 = v52[4];
  v137 = v52 + 4;
  v113 = v74;
  v74(v132, v10, v53);
  Date.init()();
  v75 = static Date.< infix(_:_:)();
  v124(v18, v53);
  if (v75)
  {
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    v112 = sub_100002D00(v76, qword_100083300);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v123;
    if (v79)
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Will post tomorrow", v81, 2u);
    }

    v82 = v130;
    v83 = v80;
    v84 = v122;
    (v122)(v130, v83, v2);
    v85 = v131;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v136 + 8))(v82, v2);
    v86 = v138;
    if (v54(v85, 1, v138) == 1)
    {
      sub_1000071C8(v85, &unk_100083410, &qword_100068D50);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.fault.getter();
      v89 = os_log_type_enabled(v87, v88);
      v61 = v135;
      if (v89)
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v87, v88, "Error generating date for notification trigger", v90, 2u);
      }

      v124(v132, v138);
      (*(v134 + 8))(v139, v133);
      goto LABEL_26;
    }

    v91 = v128;
    v113(v128, v85, v86);
    v92 = v119;
    v93 = 4 * v119;
    v94 = v118;
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1000693B0;
    v96 = v95 + v94;
    (v84)(v96, v115, v2);
    v97 = v96 + v92;
    v43 = v126;
    (v84)(v97, v114, v2);
    (v84)(v96 + v120, v123, v2);
    (v84)(v96 + v121, enum case for Calendar.Component.hour(_:), v2);
    v98 = v96 + v93;
    v56 = v129;
    (v84)(v98, enum case for Calendar.Component.minute(_:), v2);
    sub_10001764C(v95);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v99 = v127;
    Calendar.dateComponents(_:from:)();

    v124(v91, v86);
    (*(v56 + 40))(v43, v99, v135);
  }

  v100 = v135;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v101 = type metadata accessor for Logger();
  sub_100002D00(v101, qword_100083300);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v140 = v105;
    *v104 = 136315138;
    swift_beginAccess();
    sub_10002DF9C(&unk_100083440, &type metadata accessor for DateComponents);
    v106 = dispatch thunk of CustomStringConvertible.description.getter();
    v108 = sub_1000049B8(v106, v107, &v140);

    *(v104 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v102, v103, "Trigger date %s", v104, 0xCu);
    sub_100005ED8(v105);
  }

  v109 = v139;
  swift_beginAccess();
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v111 = [objc_opt_self() triggerWithDateMatchingComponents:isa repeats:0];

  v124(v132, v138);
  (*(v134 + 8))(v109, v133);
  (*(v56 + 8))(v43, v100);
  return v111;
}

uint64_t sub_10002CF0C(uint64_t a1)
{
  v1[15] = a1;
  v2 = *(*(sub_100004F70(&qword_1000833B0, &qword_100068D60) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v3 = *(*(sub_100004F70(&qword_1000833B8, &qword_1000696A0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v4 = sub_100004F70(&unk_1000833C0, &qword_1000696A8);
  v1[18] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v6 = *(type metadata accessor for FormLaunchConfiguration() - 8);
  v1[20] = v6;
  v1[21] = *(v6 + 64);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10002D088, 0, 0);
}

uint64_t sub_10002D088()
{
  v39 = v0;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = type metadata accessor for Logger();
  *(v0 + 192) = sub_100002D00(v2, qword_100083300);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BB80, &v38);
    *(v7 + 12) = 2080;
    v8 = [v6 actionIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1000049B8(v9, v11, &v38);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s action: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 120);
  v14 = [v13 notification];
  v15 = [v14 request];

  v16 = [v15 content];
  v17 = [v16 userInfo];

  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = [v13 actionIdentifier];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  *(v0 + 200) = v19;
  *(v0 + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 216) = v20;
  strcpy((v0 + 88), "formIdentifier");
  *(v0 + 103) = -18;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v21 = sub_10005BC6C(v0 + 16), (v22 & 1) != 0))
  {
    sub_100007018(*(v18 + 56) + 32 * v21, v0 + 56);
    sub_100006FC4(v0 + 16);

    if (swift_dynamicCast())
    {
      v24 = *(v0 + 104);
      v23 = *(v0 + 112);
      *(v0 + 224) = v24;
      *(v0 + 232) = v23;
      if (qword_1000825F8 != -1)
      {
        swift_once();
      }

      v25 = swift_task_alloc();
      *(v0 + 240) = v25;
      *v25 = v0;
      v25[1] = sub_10002D5FC;
      v26 = *(v0 + 136);

      return sub_10001E298(v26, v24, v23);
    }
  }

  else
  {

    sub_100006FC4(v0 + 16);
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BB80, &v38);
    _os_log_impl(&_mh_execute_header, v28, v29, "%s failed to get form identifier from notification", v30, 0xCu);
    sub_100005ED8(v31);
  }

  v33 = *(v0 + 176);
  v32 = *(v0 + 184);
  v34 = *(v0 + 152);
  v36 = *(v0 + 128);
  v35 = *(v0 + 136);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_10002D5FC()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_10002D6F8, 0, 0);
}

uint64_t sub_10002D6F8()
{
  v52 = v0;
  v1 = v0[17];
  v2 = sub_100004F70(&unk_1000832F0, &qword_1000696B0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[29];
  if (v3 == 1)
  {
    v5 = v0[27];
    v7 = v0[24];
    v6 = v0[25];

    sub_1000071C8(v1, &qword_1000833B8, &qword_1000696A0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v51 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BB80, &v51);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s no notification data found. Ignoring response", v10, 0xCu);
      sub_100005ED8(v11);
    }
  }

  else
  {
    v49 = v0[29];
    v50 = v0[28];
    v12 = v0[25];
    v46 = v0[26];
    v13 = v0[23];
    v44 = v0[21];
    v42 = v0[22];
    v43 = v0[20];
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[16];
    v47 = v0[15];
    v48 = v0[27];
    v17 = (v1 + *(v2 + 48));
    v19 = *v17;
    v18 = v17[1];
    v20 = (v14 + *(v15 + 48));
    sub_10000F8C8(v1, v14);
    *v20 = v19;
    v20[1] = v18;
    v21 = (v14 + *(v15 + 48));
    v22 = *v21;
    v45 = v21[1];
    sub_10000F8C8(v14, v13);
    v23 = objc_opt_self();
    v24 = *v13;
    v25 = v13[1];
    v26 = String._bridgeToObjectiveC()();
    [v23 logFeedbackdReceivedNotificationResponse:v12 formIdentifier:v26];

    static TaskPriority.utility.getter();
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
    sub_10000F92C(v13, v42);
    v28 = (*(v43 + 80) + 48) & ~*(v43 + 80);
    v29 = (v44 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v46;
    v31[5] = v48;
    sub_10000F8C8(v42, v31 + v28);
    v32 = (v31 + v29);
    *v32 = v22;
    v32[1] = v45;
    *(v31 + v30) = v47;
    v33 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v50;
    v33[1] = v49;
    v34 = v47;
    sub_100059484(0, 0, v16, &unk_1000696C0, v31);

    sub_1000071C8(v16, &qword_1000833B0, &qword_100068D60);
    sub_10000F990(v13);
  }

  v36 = v0[22];
  v35 = v0[23];
  v37 = v0[19];
  v39 = v0[16];
  v38 = v0[17];

  v40 = v0[1];

  return v40();
}

uint64_t sub_10002DAC8()
{
  v1 = type metadata accessor for FormLaunchConfiguration();
  v2 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);

  v5 = (v0 + ((v2 + 48) & ~v2));
  v6 = *(v5 + 1);

  v7 = *(v5 + 3);

  v8 = *(v5 + 5);

  v9 = *(v5 + 7);

  v10 = *(v5 + 9);

  v11 = *(v5 + 11);

  v12 = v1[6];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(&v5[v12], v13);
  v16 = v1[8];
  v17 = *(v14 + 48);
  if (!v17(&v5[v16], 1, v13))
  {
    v15(&v5[v16], v13);
  }

  v18 = v1[9];
  if (!v17(&v5[v18], 1, v13))
  {
    v15(&v5[v18], v13);
  }

  v19 = (v25 + ((v2 + 48) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + v19 + 8);

  v23 = *(v0 + v21 + 8);

  return _swift_deallocObject(v0, v21 + 16, v2 | 7);
}

uint64_t sub_10002DCD0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for FormLaunchConfiguration() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[2];
  v9 = v1[4];
  v19 = v1[3];
  v10 = v1[5];
  v11 = (v1 + v6);
  v12 = *(v1 + v7);
  v13 = *v11;
  v14 = v11[1];
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000BEA0;

  return sub_100029014(a1, v20, v19, v9, v10, v1 + v5, v13, v14);
}

uint64_t sub_10002DE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083410, &qword_100068D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002DED0()
{
  result = qword_100083468;
  if (!qword_100083468)
  {
    sub_100008714(255, &qword_100083460, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083468);
  }

  return result;
}

uint64_t sub_10002DF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormLaunchConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DF9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002E000()
{
  result = qword_100083488;
  if (!qword_100083488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083488);
  }

  return result;
}

uint64_t sub_10002E088()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_1000834F0);
  sub_100002D00(v0, qword_1000834F0);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

CFUserNotificationRef sub_10002E0EC(uint64_t a1, uint64_t a2)
{
  sub_100014070(&v30, a2);
  v2 = *(&v30 + 1);
  v3 = v30;
  v4 = v31;
  v5 = v32;
  v27 = *(&v33 + 1);
  v28 = v33;
  if (qword_100082618 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002D00(v6, qword_1000834F0);
  sub_10002E7FC(&v30, v35);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  sub_10002E86C(&v30);
  if (os_log_type_enabled(v7, v8))
  {
    v26 = v3;
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v9 = 136315138;
    v35[0] = v30;
    v35[1] = v31;
    v35[2] = v32;
    v35[3] = v33;
    sub_10002E7FC(&v30, error);
    sub_100004F70(&unk_100083420, &unk_1000696E0);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000049B8(v10, v11, &v34);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Using strings: %s", v9, 0xCu);
    sub_100005ED8(v25);

    v3 = v26;
  }

  sub_100004F70(&qword_100083508, &qword_1000697F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000697E0;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = inited;
  *(inited + 64) = &type metadata for String;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  *(inited + 40) = v3;
  *(inited + 48) = v2;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 104) = &type metadata for String;
  *(inited + 72) = kCFUserNotificationAlertMessageKey;
  *(inited + 80) = v4;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  *(inited + 144) = &type metadata for String;
  *(inited + 112) = kCFUserNotificationDefaultButtonTitleKey;
  *(inited + 120) = v5;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_17;
  }

  sub_10002E7FC(&v30, v35);
  sub_10002E7FC(&v30, v35);
  sub_10002E7FC(&v30, v35);
  v15 = kCFUserNotificationAlertHeaderKey;
  v16 = kCFUserNotificationAlertMessageKey;
  v17 = kCFUserNotificationDefaultButtonTitleKey;
  v18 = kCFUserNotificationAlternateButtonTitleKey;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v14[23] = &type metadata for String;
  v14[19] = v18;
  v14[20] = v28;
  v14[21] = v27;
  sub_100015D20(v14);
  swift_setDeallocating();
  sub_100004F70(&qword_100082E50, &qword_100069148);
  swift_arrayDestroy();
  error[0] = 0;
  type metadata accessor for CFString(0);
  sub_10002E8D4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = CFUserNotificationCreate(0, 0.0, 0, error, isa);

  if (!v20)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      swift_beginAccess();
      *(v23 + 4) = error[0];
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to show CFUserNotification. Error: %d", v23, 8u);
    }

    return 0;
  }

  return v20;
}

uint64_t sub_10002E580(uint64_t a1, char a2)
{
  *(v2 + 40) = a2;
  *(v2 + 32) = a1;

  return _swift_task_switch(sub_10002E614, 0, 0);
}

uint64_t sub_10002E614()
{
  v1 = sub_10002E0EC(*(v0 + 32), *(v0 + 40));
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = 0;
    CFUserNotificationReceiveResponse(v1, 0.0, (v0 + 16));
    v3 = *(v0 + 16);
    if (!v3)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (v3 == 1)
    {
      CFUserNotificationCancel(v2);
      v4 = 1;
LABEL_7:

      v5 = *(v0 + 8);

      return v5(v4);
    }

    _StringGuts.grow(_:)(37);

    *(v0 + 24) = *(v0 + 16);
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    sub_100015E58(0xD000000000000023, 0x800000010006BD30);

    swift_willThrow();
  }

  else
  {
    sub_100015E58(0xD000000000000023, 0x800000010006BD00);
    swift_willThrow();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002E7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083420, &unk_1000696E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E86C(uint64_t a1)
{
  v2 = sub_100004F70(&unk_100083420, &unk_1000696E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002E8D4()
{
  result = qword_100082998;
  if (!qword_100082998)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082998);
  }

  return result;
}

void *sub_10002E9AC(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v74 = a4;
  v75 = a3;
  v8 = sub_100004F70(&qword_100082808, &qword_100068380);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v65 - v10;
  v12 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v78 = (&v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v77 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v76 = &v65 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v65 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v65 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v65 - v28;
  __chkstk_darwin(v27);
  v79 = &v65 - v30;
  v31 = [a1 commonMetadata];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 featureDomain];
    if (v33)
    {
      v69 = v11;
      v70 = v4;
      v72 = a2;
      v73 = v26;
      v34 = v33;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v35;

      v81 = &_swiftEmptyDictionarySingleton;
      v36 = [v32 prefilledQuestions];
      sub_100008714(0, &qword_100083510, BMEvaluationCommonMetadataQuestionAnswer_ptr);
      v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10002F564(v37, &v81);

      v80 = &_swiftEmptyDictionarySingleton;
      v38 = [v32 auxiliaryAttributes];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 attributeDict];

        sub_100008714(0, &qword_100083518, BMCustomAttributesNamedValue_ptr);
        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10002F8AC(v41, &v80);
      }

      v4 = v79;
      v42 = type metadata accessor for FBKSInteraction.Content();
      v43 = *(*(v42 - 8) + 56);
      v43(v4, 1, 1, v42);
      if ([a1 originalContent])
      {
        v75();
        if (v5)
        {

          v44 = type metadata accessor for UUID();
          (*(*(v44 - 8) + 8))(v72, v44);
LABEL_14:
          sub_10002F4FC(v4);

LABEL_28:

          return v4;
        }

        sub_10002F4FC(v4);
        sub_10002FB6C(v29, v4);
      }

      v43(v73, 1, 1, v42);
      if ([a1 generatedContent])
      {
        v74();
        v47 = v72;
        if (v5)
        {

          v48 = type metadata accessor for UUID();
          (*(*(v48 - 8) + 8))(v47, v48);
          sub_10002F4FC(v73);
          goto LABEL_14;
        }

        v49 = v73;
        sub_10002F4FC(v73);
        sub_10002FB6C(v23, v49);
      }

      else
      {
        v47 = v72;
        v49 = v73;
      }

      sub_10003A5A8(v68, v71, v78);
      v50 = [v32 bundleId];
      if (v50)
      {
        v51 = v50;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v52;
      }

      else
      {
        v74 = 0;
        v72 = 0;
      }

      v53 = v81;
      sub_100018B48(v4, v76);
      sub_100018B48(v49, v77);

      v54 = [v32 modelVersion];
      if (v54)
      {
        v55 = v54;
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v56;
      }

      else
      {
        v71 = 0;
        v68 = 0;
      }

      v57 = [v32 diagnostics];
      v75 = v53;
      if (v57)
      {
        v58 = v57;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v60;
        v67 = v59;
      }

      else
      {
        v66 = 0;
        v67 = 0;
      }

      [v32 isHighPriority];
      v61 = type metadata accessor for UUID();
      v62 = *(v61 - 8);
      v63 = v69;
      (*(v62 + 16))(v69, v47, v61);
      (*(v62 + 56))(v63, 0, 1, v61);
      v4 = dispatch thunk of FBKSInteraction.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)();
      sub_100010DB8(v4);
      if (!v5)
      {

        (*(v62 + 8))(v47, v61);
        sub_10002F4FC(v73);
        sub_10002F4FC(v79);

        return v4;
      }

      (*(v62 + 8))(v47, v61);
      sub_10002F4FC(v73);
      sub_10002F4FC(v79);

      goto LABEL_28;
    }
  }

  sub_10001BF40();
  swift_allocError();
  *v45 = 3;
  swift_willThrow();

  v46 = type metadata accessor for UUID();
  (*(*(v46 - 8) + 8))(a2, v46);
  return v4;
}

uint64_t sub_10002F1B8()
{
  v1 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for FBKSInteraction.Content();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v26 = v0;
  dispatch thunk of FBKSInteraction.originalContent.getter();
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    sub_10002F4FC(v7);
    v17 = 3;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v18 = v27;
    v19 = sub_100039C68();
    v27 = v18;
    if (v18)
    {
      return (*(v9 + 8))(v15, v8);
    }

    v17 = v19;
    (*(v9 + 8))(v15, v8);
  }

  dispatch thunk of FBKSInteraction.generatedContent.getter();
  if (v16(v5, 1, v8) == 1)
  {
    sub_10002F4FC(v5);
    v21 = 3;
  }

  else
  {
    (*(v9 + 32))(v13, v5, v8);
    v22 = v27;
    v23 = sub_100039C68();
    if (v22)
    {
      return (*(v9 + 8))(v13, v8);
    }

    v21 = v23;
    (*(v9 + 8))(v13, v8);
  }

  if (v17 <= 1u)
  {
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_16:
    if ((v21 | 2) == 3)
    {
      return 2;
    }

    goto LABEL_19;
  }

  if (v17 == 2)
  {
    goto LABEL_16;
  }

LABEL_13:
  result = 0;
  if (v21 <= 1u)
  {
    return v21 != 0;
  }

  if (v21 == 2)
  {
LABEL_19:
    sub_10001BF40();
    swift_allocError();
    *v24 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10002F4FC(uint64_t a1)
{
  v2 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002F564(unint64_t a1, unint64_t *a2)
{
  v39 = a2;
  v36 = type metadata accessor for FBKSForm.Question();
  v32 = *(v36 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v36);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_28:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v37 = a1 & 0xFFFFFFFFFFFFFF8;
      v38 = a1 & 0xC000000000000001;
      v31[1] = v32 + 16;
      v33 = (v32 + 8);
      v34 = v6;
      v35 = a1;
      while (1)
      {
        if (v38)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v37 + 16))
          {
            goto LABEL_25;
          }

          v8 = *(a1 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v11 = [v8 question];
        if (v11)
        {
          break;
        }

LABEL_5:
        ++v7;
        if (v10 == v6)
        {
          return;
        }
      }

      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      FBKSForm.Question.init(stringValue:)();
      v13 = [v9 answer];
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = v39;
      v16 = *v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *v15;
      a1 = v40;
      *v15 = 0x8000000000000000;
      v19 = sub_10005BDDC(v5);
      v20 = *(a1 + 16);
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_26;
      }

      v23 = v18;
      if (*(a1 + 24) < v22)
      {
        sub_10005D2E4(v22, isUniquelyReferenced_nonNull_native);
        v24 = sub_10005BDDC(v5);
        if ((v23 & 1) != (v25 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v19 = v24;
        a1 = v40;
        if ((v23 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        v26 = *(a1 + 56);
        v27 = *(v26 + 8 * v19);
        *(v26 + 8 * v19) = v14;

LABEL_23:
        (*v33)(v5, v36);
        *v39 = a1;

        v6 = v34;
        a1 = v35;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        a1 = v40;
        if (v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_10005EB28();
        a1 = v40;
        if (v23)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      *(a1 + 8 * (v19 >> 6) + 64) |= 1 << v19;
      (*(v32 + 16))(*(a1 + 48) + *(v32 + 72) * v19, v5, v36);
      *(*(a1 + 56) + 8 * v19) = v14;
      v28 = *(a1 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_27;
      }

      *(a1 + 16) = v30;
      goto LABEL_23;
    }
  }
}
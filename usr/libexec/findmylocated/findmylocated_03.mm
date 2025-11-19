uint64_t sub_10004EF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8A30, &qword_1004C1770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004EFE8(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A8A30, &qword_1004C1770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004F074()
{
  result = qword_1005A8A38;
  if (!qword_1005A8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8A38);
  }

  return result;
}

uint64_t sub_10004F0D8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFA50);
  sub_10000A6F0(v0, qword_1005DFA50);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10004F154(uint64_t a1, uint64_t *a2)
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

Swift::Int sub_10004F1D0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10004F214()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10004F258(uint64_t a1, uint64_t a2)
{
  v3[92] = v2;
  v3[91] = a2;
  v3[90] = a1;
  return _swift_task_switch(sub_10004F280, v2, 0);
}

uint64_t sub_10004F280()
{
  v17 = v0;
  if (qword_1005A7E90 != -1)
  {
    swift_once();
  }

  v1 = v0[92];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10021B304(v2, v3, qword_1005DFA80))
  {
    if (qword_1005A7E88 != -1)
    {
      swift_once();
    }

    v4 = v0[92];
    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFA68);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(v2, v3, &v16);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100004984(v9);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v15 = (v0[90] + *v0[90]);
    v12 = *(v0[90] + 4);
    v13 = swift_task_alloc();
    v0[93] = v13;
    *v13 = v0;
    v13[1] = sub_10004F524;
    v14 = v0[91];

    return v15();
  }
}

uint64_t sub_10004F524(uint64_t a1)
{
  v2 = *(*v1 + 744);
  v3 = *(*v1 + 736);
  v5 = *v1;
  *(*v1 + 752) = a1;

  return _swift_task_switch(sub_10004F63C, v3, 0);
}

unint64_t sub_10004F63C()
{
  v106 = (v0 + 304);
  v107 = (v0 + 256);
  v1 = (v0 + 352);
  v102 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 752);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v104 = (v0 + 448);
  v105 = *(v0 + 752);
  v7 = -1 << *(v105 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v112 = *(v0 + 736);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v105 + 48) + 16 * v14);
      v16 = v15[1];
      v113 = *v15;
      sub_10005345C(*(v105 + 56) + 48 * v14, v0 + 16);
      v108 = *(v0 + 16);
      v110 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:
        v94 = *(v0 + 752);

        v95 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v108;
      *(v0 + 80) = v110;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v112 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_24:
      sub_10005345C(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v32 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_100053494();
          *(v0 + 256) = v32;
          v33 = 2;
        }

        else
        {
          v35 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000535B8();
          *(v0 + 256) = v35;
          v33 = 3;
        }

        *(v0 + 296) = v33;
      }

      else
      {
        v34 = *(v0 + 128);
        *v107 = *(v0 + 112);
        *(v0 + 272) = v34;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1000534E8(v107, v106);
      v36 = *(v112 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v112 + 112);
      *&v114 = v7;
      *(v112 + 112) = 0x8000000000000000;
      result = sub_1000110D8(v113, v16);
      v40 = *(v7 + 16);
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        __break(1u);
LABEL_87:
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
        return result;
      }

      v44 = v39;
      if (*(v7 + 24) < v43)
      {
        sub_10022BE4C(v43, isUniquelyReferenced_nonNull_native);
        result = sub_1000110D8(v113, v16);
        if ((v44 & 1) != (v45 & 1))
        {
          goto LABEL_80;
        }

LABEL_35:
        v1 = (v0 + 352);
        if (v44)
        {
          goto LABEL_6;
        }

        goto LABEL_36;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v86 = result;
      sub_100202528();
      result = v86;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_100053580(v106, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_36:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v46 = (*(v7 + 48) + 16 * result);
      *v46 = v113;
      v46[1] = v16;
      v47 = (*(v7 + 56) + 48 * result);
      v48 = *(v0 + 329);
      v49 = *(v0 + 320);
      *v47 = *v106;
      v47[1] = v49;
      *(v47 + 25) = v48;
      v50 = *(v7 + 16);
      v42 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v42)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v51;
LABEL_7:
      *(v112 + 112) = v7;
      swift_endAccess();
      sub_100053520(v0 + 64);
      sub_100053550(v107);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v112 + 112);

    v21 = sub_1000110D8(v113, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_24;
    }

    sub_1000534E8(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_10005345C(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v52 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v52;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    v103 = v2;
    if (*(v0 + 201) != 1)
    {
      v53 = *(v0 + 160);
      sub_1000534E8(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_100010BD4(v2, v0 + 584);
      v54 = *(v0 + 608);
      v111 = *(v0 + 616);
      sub_100011AEC((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000535B8();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100004984((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1000534E8(v0 + 208, v102);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v99 = v23;
    sub_100010BD4(v102, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_100011AEC((v0 + 544), v24);
    v27 = *(v24 - 8);
    v98 = *(v27 + 64) + 15;
    v28 = swift_task_alloc();
    v109 = v27;
    v29 = v27;
    v30 = v28;
    (*(v29 + 16))(v28, v26, v24);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v100 = v30;
        v31 = swift_task_alloc();
        sub_100053494();
LABEL_44:
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v62 = *(*(v25 + 32) + 8);
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v109 + 8))(v31, v24);
        v30 = v100;

        if (v63)
        {
          goto LABEL_92;
        }

        goto LABEL_50;
      }

      v59 = v30;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v100 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 <= 64)
        {
          v97 = *(*(v25 + 24) + 16);
          v64 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
          swift_task_alloc();
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v65 = swift_task_alloc();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v66 = *(*(v25 + 32) + 8);
          v67 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v109 + 8))(v65, v24);
          v30 = v100;

          if (v67)
          {
            goto LABEL_92;
          }

LABEL_49:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_50;
        }

        v31 = swift_task_alloc();
        sub_100053494();
        goto LABEL_44;
      }

      v30 = v59;
      if (v61 < 64)
      {
        goto LABEL_49;
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v68 = v30;
      v69 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v101 = v68;
      v70 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v69)
      {
        if (v70 >= 65)
        {
          goto LABEL_53;
        }
      }

      else if (v70 >= 64)
      {
LABEL_53:
        v71 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v72 = *(*(v25 + 32) + 8);
        v73 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v109 + 8))(v71, v24);
        v30 = v101;

        if (v73)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v30 = v68;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v74 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v109 + 8))(v30, v24);

    v42 = __OFADD__(v74, v99);
    v75 = v74 + v99;
    if (v42)
    {
      goto LABEL_90;
    }

    v76 = sub_100053494();
    *(v0 + 352) = v75;
    *(v0 + 360) = v114;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v76;
    *(v0 + 392) = 2;
    sub_100004984((v0 + 544));
    v2 = v103;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1000534E8(v1, v104);
    v77 = *(v112 + 112);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v112 + 112);
    *&v114 = v7;
    *(v112 + 112) = 0x8000000000000000;
    result = sub_1000110D8(v113, v16);
    v80 = *(v7 + 16);
    v81 = (v79 & 1) == 0;
    v42 = __OFADD__(v80, v81);
    v82 = v80 + v81;
    if (v42)
    {
      goto LABEL_88;
    }

    v83 = v79;
    if (*(v7 + 24) < v82)
    {
      sub_10022BE4C(v82, v78);
      result = sub_1000110D8(v113, v16);
      if ((v83 & 1) != (v84 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v83)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v78)
    {
      goto LABEL_67;
    }

    v87 = result;
    sub_100202528();
    result = v87;
    v1 = (v0 + 352);
    if (v83)
    {
LABEL_68:
      v85 = result;

      sub_100053580(v104, *(v7 + 56) + 48 * v85);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v88 = (*(v7 + 48) + 16 * result);
    *v88 = v113;
    v88[1] = v16;
    v89 = (*(v7 + 56) + 48 * result);
    v90 = *(v0 + 473);
    v91 = *(v0 + 464);
    *v89 = *v104;
    v89[1] = v91;
    *(v89 + 25) = v90;
    v92 = *(v7 + 16);
    v42 = __OFADD__(v92, 1);
    v93 = v92 + 1;
    if (v42)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v93;
LABEL_74:
    *(v112 + 112) = v7;
    swift_endAccess();
    sub_100053550(v0 + 208);
    sub_100053520(v0 + 64);
    sub_100053550(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_100053550(v2);
  v96 = *(v0 + 752);
  sub_10005360C();
  swift_allocError();
  swift_willThrow();

  sub_100053550(v0 + 208);
  sub_100053520(v0 + 64);
  v95 = *(v0 + 8);
LABEL_77:

  return v95();
}

uint64_t sub_1000502C4(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_1000502E4, v1, 0);
}

uint64_t sub_1000502E4()
{
  v22 = v0;
  v1 = v0[14];
  v0[2] = v0[13];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  v19 = &type metadata for String;
  v5 = sub_1000246F4();
  v20 = v5;
  v17 = v2;
  v18 = v4;
  v21 = 1;
  swift_beginAccess();
  sub_100145548(&v17, 0xD000000000000010, 0x80000001004DE860);
  swift_endAccess();
  swift_getErrorValue();
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v9 = Error.code.getter();
  v19 = &type metadata for Int;
  v20 = sub_100054734();
  v17 = v9;
  v21 = 2;
  swift_beginAccess();
  sub_100145548(&v17, 0x646F43726F727265, 0xE900000000000065);
  swift_endAccess();
  swift_getErrorValue();
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[10];
  v13 = Error.domain.getter();
  v19 = &type metadata for String;
  v20 = v5;
  v17 = v13;
  v18 = v14;
  v21 = 1;
  swift_beginAccess();
  sub_100145548(&v17, 0x6D6F44726F727265, 0xEB000000006E6961);
  swift_endAccess();
  v15 = v0[1];

  return v15();
}

uint64_t sub_1000504E8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_identifier;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10005465C(v0 + OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime);
  sub_10005465C(v0 + OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AnalyticsEvent()
{
  result = qword_1005A8A88;
  if (!qword_1005A8A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000505E4()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000506D4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000506D4()
{
  if (!qword_1005A8A98)
  {
    type metadata accessor for DispatchTime();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A8A98);
    }
  }
}

unint64_t sub_10005072C()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005A8C88, &unk_1004C1AB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v46 = &v43 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - v9;
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004C1900;
  v21 = [objc_allocWithZone(NSDate) init];
  [v21 timeIntervalSince1970];
  v23 = v22;

  *(v20 + 56) = &type metadata for Double;
  *(v20 + 64) = &protocol witness table for Double;
  *(v20 + 32) = v23;
  v24 = String.init(format:_:)();
  v26 = v25;
  v27 = sub_1000246F4();
  *&v51 = v24;
  *(&v51 + 1) = v26;
  v52 = &type metadata for String;
  v53 = v27;
  v54 = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = &_swiftEmptyDictionarySingleton;
  sub_100452308(&v51, 0x6D695468636F7065, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v29 = v50;
  sub_1000545EC(v1 + OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime, v12);
  v30 = *(v14 + 48);
  if (v30(v12, 1, v13) == 1)
  {
    sub_10005465C(v12);
    return v29;
  }

  v44 = *(v14 + 32);
  v45 = v19;
  v44();
  v31 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime;
  swift_beginAccess();
  sub_1000545EC(v1 + v31, v10);
  v32 = v30(v10, 1, v13);
  sub_10005465C(v10);
  if (v32 == 1)
  {
    v33 = v46;
    static DispatchTime.now()();
    (*(v14 + 56))(v33, 0, 1, v13);
    swift_beginAccess();
    sub_1000546C4(v33, v1 + v31);
    swift_endAccess();
  }

  v34 = v48;
  sub_1000545EC(v1 + v31, v48);
  if (v30(v34, 1, v13) == 1)
  {
    (*(v14 + 8))(v45, v13);
    sub_10005465C(v34);
    return v29;
  }

  v35 = v47;
  (v44)(v47, v34, v13);
  v36 = DispatchTime.uptimeNanoseconds.getter();
  v37 = v45;
  result = DispatchTime.uptimeNanoseconds.getter();
  if (v36 >= result)
  {
    v39 = (v36 - result) / 1000000000.0;
    v40 = sub_1000535B8();
    *&v51 = v39;
    v52 = &type metadata for Double;
    v53 = v40;
    v54 = 3;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v29;
    sub_100452308(&v51, 0x6E6F697461727564, 0xE800000000000000, v41);
    v42 = *(v14 + 8);
    v42(v35, v13);
    v42(v37, v13);
    return v49;
  }

  __break(1u);
  return result;
}

uint64_t sub_100050C00()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFA68);
  sub_10000A6F0(v0, qword_1005DFA68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100050C80()
{
  result = sub_10023F00C(_swiftEmptyArrayStorage);
  qword_1005DFA80 = result;
  return result;
}

uint64_t sub_100050CA8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005A8A48);
  v1 = sub_10000A6F0(v0, qword_1005A8A48);
  if (qword_1005A7E88 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFA68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100050D70(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100050D90, v1, 0);
}

uint64_t sub_100050D90()
{
  v18 = v0;
  if (static SystemInfo.underTest.getter())
  {
    if (qword_1005A7E98 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005A8A48);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SPAnalytics not submitting analytics during unit tests.", v4, 2u);
LABEL_13:

LABEL_14:

    v14 = v0[1];

    return v14();
  }

  if (qword_1005A7E90 != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v6 = qword_1005DFA80;
  v7 = *(v5 + 120);
  v0[7] = v7;
  v8 = *(v5 + 128);
  v0[8] = v8;
  if (sub_10021B304(v7, v8, v6))
  {
    if (qword_1005A7E98 != -1)
    {
      swift_once();
    }

    v9 = v0[5];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005A8A48);

    v2 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v2, v11))
    {
      goto LABEL_14;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D01C(v7, v8, &v17);
    _os_log_impl(&_mh_execute_header, v2, v11, "AnalyticsPublisher not submitting disallowed analytics event %{public}s to CA.", v12, 0xCu);
    sub_100004984(v13);

    goto LABEL_13;
  }

  v16 = v0[5];

  return _swift_task_switch(sub_100051060, v16, 0);
}

uint64_t sub_100051060()
{
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100051114;
  v3 = *(v0 + 40);

  return sub_100051684(v3, v3);
}

uint64_t sub_100051114()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 40);
  v8 = *v1;

  v5 = *(v2 + 40);
  if (v0)
  {

    v6 = sub_1000549A0;
  }

  else
  {
    v6 = sub_100051254;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100051254()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  v0[10] = *(v1 + 112);

  return _swift_task_switch(sub_1000512DC, v2, 0);
}

uint64_t sub_1000512DC()
{
  v18 = v0;
  sub_100053660(v0[10]);

  if (qword_1005A7E98 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005A8A48);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(v6, v5, &v17);
    *(v7 + 12) = 2080;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v8 = Dictionary.description.getter();
    v10 = sub_10000D01C(v8, v9, &v17);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Analytics: %{public}s, %s.", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[7];
  v12 = v0[8];
  v13 = String._bridgeToObjectiveC()();
  sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100051550()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_1000515B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000515C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100051600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005164C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100051684(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_1000516AC, a1, 0);
}

uint64_t sub_1000516AC()
{
  v14 = v0;
  if (qword_1005A7E90 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10021B304(v2, v3, qword_1005DFA80))
  {
    if (qword_1005A7E88 != -1)
    {
      swift_once();
    }

    v4 = v0[90];
    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFA68);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100004984(v9);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[91];

    return _swift_task_switch(sub_1000518C4, v12, 0);
  }
}

uint64_t sub_1000518C4()
{
  v1 = v0[91];
  v2 = v0[90];
  v0[92] = sub_10005072C();

  return _swift_task_switch(sub_100051934, v2, 0);
}

unint64_t sub_100051934()
{
  v109 = (v0 + 304);
  v110 = (v0 + 256);
  v1 = (v0 + 352);
  v105 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 736);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v107 = (v0 + 448);
  v108 = *(v0 + 736);
  v7 = -1 << *(v108 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v115 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v108 + 48) + 16 * v14);
      v16 = v15[1];
      v116 = *v15;
      sub_10005345C(*(v108 + 56) + 48 * v14, v0 + 16);
      v111 = *(v0 + 16);
      v113 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:
        v93 = *(v0 + 736);

        v94 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v111;
      *(v0 + 80) = v113;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v115 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_10005345C(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_100053494();
          *(v0 + 256) = v33;
          v34 = 2;
        }

        else
        {
          v36 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000535B8();
          *(v0 + 256) = v36;
          v34 = 3;
        }

        *(v0 + 296) = v34;
      }

      else
      {
        v35 = *(v0 + 128);
        *v110 = *(v0 + 112);
        *(v0 + 272) = v35;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1000534E8(v110, v109);
      v37 = *(v115 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v115 + 112);
      *&v117 = v7;
      *(v115 + 112) = 0x8000000000000000;
      result = sub_1000110D8(v116, v16);
      v40 = *(v7 + 16);
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        __break(1u);
LABEL_87:
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
        return result;
      }

      v44 = v39;
      if (*(v7 + 24) < v43)
      {
        sub_10022BE4C(v43, isUniquelyReferenced_nonNull_native);
        result = sub_1000110D8(v116, v16);
        if ((v44 & 1) != (v45 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v44)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v85 = result;
      sub_100202528();
      result = v85;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_100053580(v109, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v46 = (*(v7 + 48) + 16 * result);
      *v46 = v116;
      v46[1] = v16;
      v47 = (*(v7 + 56) + 48 * result);
      v48 = *(v0 + 329);
      v49 = *(v0 + 320);
      *v47 = *v109;
      v47[1] = v49;
      *(v47 + 25) = v48;
      v50 = *(v7 + 16);
      v42 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v42)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v51;
LABEL_7:
      *(v115 + 112) = v7;
      swift_endAccess();
      sub_100053520(v0 + 64);
      sub_100053550(v110);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v115 + 112);

    v21 = sub_1000110D8(v116, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1000534E8(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_10005345C(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v52 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v52;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    v106 = v2;
    if (*(v0 + 201) != 1)
    {
      v53 = *(v0 + 160);
      sub_1000534E8(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_100010BD4(v2, v0 + 584);
      v54 = *(v0 + 608);
      v114 = *(v0 + 616);
      sub_100011AEC((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000535B8();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100004984((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1000534E8(v0 + 208, v105);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v104 = v23;
    sub_100010BD4(v105, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_100011AEC((v0 + 544), v24);
    v27 = *(v24 - 8);
    v99 = *(v27 + 64) + 15;
    v28 = swift_task_alloc();
    v112 = v27;
    v29 = v27;
    v30 = v28;
    (*(v29 + 16))(v28, v26, v24);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v100 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v31 = *(*(v25 + 32) + 8);
        v98 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v112 + 8))(v100, v24);

        if (v98)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v101 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v59 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v101)
        {
          v102 = v30;
          if (v59 <= 64)
          {
            v97 = *(*(v25 + 24) + 16);
            v63 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v64 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v65 = *(*(v25 + 32) + 8);
            v66 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v112 + 8))(v64, v24);
            v30 = v102;

            if (v66)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v60 = swift_task_alloc();
          sub_100053494();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v61 = *(*(v25 + 32) + 8);
          v62 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v112 + 8))(v60, v24);
          v30 = v102;

          if (v62)
          {
            goto LABEL_92;
          }
        }

        else if (v59 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v67 = v30;
      v68 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v103 = v67;
      v69 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v68)
      {
        if (v69 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v69 >= 64)
      {
LABEL_53:
        v70 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v71 = *(*(v25 + 32) + 8);
        v72 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v112 + 8))(v70, v24);
        v30 = v103;

        if (v72)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v30 = v67;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v73 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v112 + 8))(v30, v24);

    v42 = __OFADD__(v73, v104);
    v74 = v73 + v104;
    if (v42)
    {
      goto LABEL_90;
    }

    v75 = sub_100053494();
    *(v0 + 352) = v74;
    *(v0 + 360) = v117;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v75;
    *(v0 + 392) = 2;
    sub_100004984((v0 + 544));
    v2 = v106;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1000534E8(v1, v107);
    v76 = *(v115 + 112);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v115 + 112);
    *&v117 = v7;
    *(v115 + 112) = 0x8000000000000000;
    result = sub_1000110D8(v116, v16);
    v79 = *(v7 + 16);
    v80 = (v78 & 1) == 0;
    v42 = __OFADD__(v79, v80);
    v81 = v79 + v80;
    if (v42)
    {
      goto LABEL_88;
    }

    v82 = v78;
    if (*(v7 + 24) < v81)
    {
      sub_10022BE4C(v81, v77);
      result = sub_1000110D8(v116, v16);
      if ((v82 & 1) != (v83 & 1))
      {
LABEL_80:
        v95 = *(v0 + 728);

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v82)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v77)
    {
      goto LABEL_67;
    }

    v86 = result;
    sub_100202528();
    result = v86;
    v1 = (v0 + 352);
    if (v82)
    {
LABEL_68:
      v84 = result;

      sub_100053580(v107, *(v7 + 56) + 48 * v84);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v87 = (*(v7 + 48) + 16 * result);
    *v87 = v116;
    v87[1] = v16;
    v88 = (*(v7 + 56) + 48 * result);
    v89 = *(v0 + 473);
    v90 = *(v0 + 464);
    *v88 = *v107;
    v88[1] = v90;
    *(v88 + 25) = v89;
    v91 = *(v7 + 16);
    v42 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v42)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v92;
LABEL_74:
    *(v115 + 112) = v7;
    swift_endAccess();
    sub_100053550(v0 + 208);
    sub_100053520(v0 + 64);
    sub_100053550(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_100053550(v2);
  v96 = *(v0 + 736);
  sub_10005360C();
  swift_allocError();
  swift_willThrow();

  sub_100053550(v0 + 208);
  sub_100053520(v0 + 64);
  v94 = *(v0 + 8);
LABEL_77:

  return v94();
}

uint64_t sub_100052618(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_100052640, a1, 0);
}

unint64_t sub_100052640()
{
  v120 = v0;
  if (qword_1005A7E90 != -1)
  {
LABEL_93:
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10021B304(v2, v3, qword_1005DFA80))
  {
    if (qword_1005A7E88 != -1)
    {
LABEL_96:
      swift_once();
    }

    v4 = *(v0 + 720);
    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFA68);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v119 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(v2, v3, &v119);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100004984(v9);
    }

LABEL_82:
    v96 = *(v0 + 8);
    goto LABEL_83;
  }

  v106 = (v0 + 400);
  v107 = (v0 + 496);
  v110 = (v0 + 304);
  v111 = (v0 + 256);
  v10 = (v0 + 352);
  v108 = (v0 + 448);
  v11 = *(v0 + 720);
  v12 = *(v0 + 728);
  v15 = *(v12 + 64);
  v14 = v12 + 64;
  v13 = v15;
  v16 = -1 << *(*(v0 + 728) + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v109 = *(v0 + 728);

  v117 = v11;
  swift_beginAccess();
  v19 = 0;
  v3 = (63 - v16) >> 6;
  if (!v18)
  {
LABEL_14:
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v3)
      {
        goto LABEL_81;
      }

      v18 = *(v14 + 8 * v21);
      ++v19;
      if (v18)
      {
        v19 = v21;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_90:
    v107 = v16;
LABEL_91:

    sub_100053550(v107);
    v98 = *(v0 + 728);
    sub_10005360C();
    swift_allocError();
    swift_willThrow();

    sub_100053550(v0 + 208);
    sub_100053520(v0 + 64);
    v96 = *(v0 + 8);
LABEL_83:

    return v96();
  }

  while (1)
  {
    while (1)
    {
LABEL_18:
      v22 = __clz(__rbit64(v18)) | (v19 << 6);
      v23 = (*(v109 + 48) + 16 * v22);
      v24 = v23[1];
      v118 = *v23;
      sub_10005345C(*(v109 + 56) + 48 * v22, v0 + 16);
      v112 = *(v0 + 16);
      v114 = *(v0 + 32);
      v25 = *(v0 + 48);
      v26 = *(v0 + 56);

      if (!v24)
      {
LABEL_81:
        v95 = *(v0 + 728);

        goto LABEL_82;
      }

      v18 &= v18 - 1;
      *(v0 + 64) = v112;
      *(v0 + 80) = v114;
      *(v0 + 96) = v25;
      *(v0 + 104) = v26;
      v27 = *(v117 + 112);
      if (*(v27 + 16))
      {
        break;
      }

LABEL_30:
      sub_10005345C(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v35 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_100053494();
          *(v0 + 256) = v35;
          v36 = 2;
        }

        else
        {
          v38 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000535B8();
          *(v0 + 256) = v38;
          v36 = 3;
        }

        *(v0 + 296) = v36;
      }

      else
      {
        v37 = *(v0 + 128);
        *v111 = *(v0 + 112);
        *(v0 + 272) = v37;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1000534E8(v111, v110);
      v39 = *(v117 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v119 = *(v117 + 112);
      v41 = v119;
      *(v117 + 112) = 0x8000000000000000;
      v42 = sub_1000110D8(v118, v24);
      v44 = *(v41 + 16);
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        __break(1u);
        goto LABEL_93;
      }

      v2 = v43;
      if (*(v41 + 24) < v47)
      {
        sub_10022BE4C(v47, isUniquelyReferenced_nonNull_native);
        v42 = sub_1000110D8(v118, v24);
        if ((v2 & 1) != (v48 & 1))
        {
          goto LABEL_86;
        }

LABEL_41:
        v10 = (v0 + 352);
        if (v2)
        {
          goto LABEL_12;
        }

        goto LABEL_42;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_41;
      }

      v87 = v42;
      sub_100202528();
      v42 = v87;
      v10 = (v0 + 352);
      if (v2)
      {
LABEL_12:
        v20 = v42;

        v16 = v119;
        sub_100053580(v110, *(v119 + 56) + 48 * v20);
        goto LABEL_13;
      }

LABEL_42:
      v16 = v119;
      *(v119 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v49 = (*(v16 + 48) + 16 * v42);
      *v49 = v118;
      v49[1] = v24;
      v50 = (*(v16 + 56) + 48 * v42);
      v51 = *(v0 + 329);
      v52 = *(v0 + 320);
      *v50 = *v110;
      v50[1] = v52;
      *(v50 + 25) = v51;
      v53 = *(v16 + 16);
      v46 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v46)
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      *(v16 + 16) = v54;
LABEL_13:
      *(v117 + 112) = v16;
      swift_endAccess();
      sub_100053520(v0 + 64);
      sub_100053550(v111);
      if (!v18)
      {
        goto LABEL_14;
      }
    }

    v28 = *(v117 + 112);

    v29 = sub_1000110D8(v118, v24);
    if ((v30 & 1) == 0)
    {

      goto LABEL_30;
    }

    sub_1000534E8(*(v27 + 56) + 48 * v29, v0 + 208);

    sub_10005345C(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v55 = *(v0 + 176);
      *v10 = *(v0 + 160);
      v10[1] = v55;
      *(v10 + 25) = *(v0 + 185);
      goto LABEL_67;
    }

    if (*(v0 + 201) != 1)
    {
      v56 = *(v0 + 160);
      sub_1000534E8(v0 + 208, v107);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_91;
      }

      sub_100010BD4(v107, v0 + 584);
      v57 = *(v0 + 608);
      v116 = *(v0 + 616);
      sub_100011AEC((v0 + 584), v57);
      v58 = *(v57 - 8);
      v59 = *(v58 + 64) + 15;
      swift_task_alloc();
      (*(v58 + 16))();
      v60 = sub_1000535B8();
      BinaryFloatingPoint.init<A>(_:)();

      v61 = v56 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v60;
      v10 = (v0 + 352);
      *(v0 + 352) = v61;
      *(v0 + 392) = 3;
      sub_100004984((v0 + 584));
      goto LABEL_67;
    }

    v31 = *(v0 + 160);
    v16 = v0 + 400;
    sub_1000534E8(v0 + 208, v106);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_90;
    }

    v104 = v31;
    sub_100010BD4(v106, v0 + 544);
    v32 = *(v0 + 568);
    v113 = *(v0 + 576);
    v115 = sub_100011AEC((v0 + 544), v32);
    v33 = *(v32 - 8);
    v102 = *(v33 + 64) + 15;
    v34 = swift_task_alloc();
    v105 = v33;
    (*(v33 + 16))(v34, v115, v32);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_54;
        }

LABEL_49:
        v64 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v65 = *(*(v113 + 32) + 8);
        v100 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v105 + 8))(v64, v32);

        if (v100)
        {
          goto LABEL_100;
        }

        goto LABEL_55;
      }

      v62 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v63 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v62)
      {
        if (v63 <= 64)
        {
          v99 = *(*(v113 + 24) + 16);
          v67 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
          swift_task_alloc();
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v68 = swift_task_alloc();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v69 = *(*(v113 + 32) + 8);
          v70 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v105 + 8))(v68, v32);

          if (v70)
          {
            goto LABEL_100;
          }

LABEL_54:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_55;
        }

        goto LABEL_49;
      }

      if (v63 < 64)
      {
        goto LABEL_54;
      }
    }

LABEL_55:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v101 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v71 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v101)
      {
        if (v71 > 64)
        {
          goto LABEL_58;
        }
      }

      else if (v71 >= 64)
      {
LABEL_58:
        v72 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v73 = *(*(v113 + 32) + 8);
        v103 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v105 + 8))(v72, v32);

        if (v103)
        {
          goto LABEL_99;
        }

        goto LABEL_65;
      }

      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_65:
    v74 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v105 + 8))(v34, v32);

    v46 = __OFADD__(v74, v104);
    v75 = v74 + v104;
    if (v46)
    {
      goto LABEL_98;
    }

    v76 = sub_100053494();
    *(v0 + 352) = v75;
    *(v0 + 360) = v119;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v76;
    *(v0 + 392) = 2;
    sub_100004984((v0 + 544));
    v10 = (v0 + 352);
LABEL_67:
    v2 = v117;
    swift_beginAccess();
    sub_1000534E8(v10, v108);
    v77 = *(v117 + 112);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *&v119 = *(v117 + 112);
    v79 = v119;
    *(v117 + 112) = 0x8000000000000000;
    result = sub_1000110D8(v118, v24);
    v81 = *(v79 + 16);
    v82 = (v80 & 1) == 0;
    v46 = __OFADD__(v81, v82);
    v83 = v81 + v82;
    if (v46)
    {
      goto LABEL_95;
    }

    v84 = v80;
    if (*(v79 + 24) >= v83)
    {
      break;
    }

    sub_10022BE4C(v83, v78);
    result = sub_1000110D8(v118, v24);
    if ((v84 & 1) != (v85 & 1))
    {
LABEL_86:
      v97 = *(v0 + 728);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_72:
    v10 = (v0 + 352);
    if ((v84 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_73:
    v86 = result;

    v16 = v119;
    sub_100053580(v108, *(v119 + 56) + 48 * v86);
LABEL_79:
    *(v117 + 112) = v16;
    swift_endAccess();
    sub_100053550(v0 + 208);
    sub_100053520(v0 + 64);
    sub_100053550(v10);
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  if (v78)
  {
    goto LABEL_72;
  }

  v88 = result;
  sub_100202528();
  result = v88;
  v10 = (v0 + 352);
  if (v84)
  {
    goto LABEL_73;
  }

LABEL_77:
  v16 = v119;
  *(v119 + 8 * (result >> 6) + 64) |= 1 << result;
  v89 = (*(v16 + 48) + 16 * result);
  *v89 = v118;
  v89[1] = v24;
  v90 = (*(v16 + 56) + 48 * result);
  v91 = *(v0 + 473);
  v92 = *(v0 + 464);
  *v90 = *v108;
  v90[1] = v92;
  *(v90 + 25) = v91;
  v93 = *(v16 + 16);
  v46 = __OFADD__(v93, 1);
  v94 = v93 + 1;
  if (!v46)
  {
    *(v16 + 16) = v94;
    goto LABEL_79;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

unint64_t sub_100053494()
{
  result = qword_1005A8C60;
  if (!qword_1005A8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8C60);
  }

  return result;
}

unint64_t sub_1000535B8()
{
  result = qword_1005A8C68;
  if (!qword_1005A8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8C68);
  }

  return result;
}

unint64_t sub_10005360C()
{
  result = qword_1005A8C70;
  if (!qword_1005A8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8C70);
  }

  return result;
}

uint64_t sub_100053660(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v133 = a1;

  v6 = 0;
  v7 = &_swiftEmptyDictionarySingleton;
  while (v4)
  {
LABEL_12:
    v13 = __clz(__rbit64(v4)) | (v6 << 6);
    v14 = *(v133 + 56);
    v15 = (*(v133 + 48) + 16 * v13);
    v16 = v15[1];
    v136 = *v15;
    sub_1000534E8(v14 + 48 * v13, &v143);
    v134 = v144;
    v135 = v143;
    v17 = v145;
    v18 = v146;

    if (!v16)
    {
      goto LABEL_97;
    }

    v4 &= v4 - 1;
    v143 = v135;
    v144 = v134;
    v145 = v17;
    v146 = v18;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        sub_100010BD4(&v143, v140);
        sub_100011004(v140, v138);
        sub_10004B564(&qword_1005A8C78, &qword_1004C1AA8);
        if (swift_dynamicCast())
        {
          v29.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v138[0] = v7;
          v31 = sub_1000110D8(v136, v16);
          v33 = v7[2];
          v34 = (v32 & 1) == 0;
          v10 = __OFADD__(v33, v34);
          v35 = v33 + v34;
          if (v10)
          {
            goto LABEL_102;
          }

          v36 = v32;
          if (v7[3] < v35)
          {
            sub_10022C3EC(v35, isUniquelyReferenced_nonNull_native);
            v31 = sub_1000110D8(v136, v16);
            if ((v36 & 1) != (v37 & 1))
            {
              goto LABEL_110;
            }

            goto LABEL_48;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_48:
            if ((v36 & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v122 = v31;
            sub_100202888();
            v31 = v122;
            if ((v36 & 1) == 0)
            {
LABEL_49:
              v7 = v138[0];
              *(v138[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
              v82 = (v7[6] + 16 * v31);
              *v82 = v136;
              v82[1] = v16;
              *(v7[7] + 8 * v31) = v29;
              v83 = v7[2];
              v10 = __OFADD__(v83, 1);
              v11 = v83 + 1;
              if (v10)
              {
                goto LABEL_107;
              }

              goto LABEL_5;
            }
          }

          goto LABEL_80;
        }

        v66 = v141;
        v67 = v142;
        v68 = sub_100011AEC(v140, v141);
        v131 = v127;
        v69 = *(*(v66 - 8) + 64);
        __chkstk_darwin(v68);
        v130 = v70;
        v71 = v127 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
        *&v134 = v72;
        (*(v72 + 16))(v71);
        v73 = dispatch thunk of static BinaryInteger.isSigned.getter();
        *&v135 = v67;
        if (v73)
        {
          v74 = dispatch thunk of BinaryInteger.bitWidth.getter();
          v75 = v135;
          if (v74 > 64)
          {
            v132 = v71;
            v138[0] = 0x8000000000000000;
            v76 = v66;
            if (dispatch thunk of static BinaryInteger.isSigned.getter())
            {
              v71 = v132;
              v77 = dispatch thunk of BinaryInteger.bitWidth.getter();
              if (v77 < 64)
              {
                v129 = v66;
                goto LABEL_63;
              }

              v128 = v127;
              __chkstk_darwin(v77);
              v129 = v127 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_100053494();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v90 = *(*(v75 + 32) + 8);
LABEL_56:
              v91 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v134 + 8))(v129, v66);
              if (v91)
              {
                goto LABEL_109;
              }
            }

            else
            {
              v84 = dispatch thunk of static BinaryInteger.isSigned.getter();
              v85 = dispatch thunk of BinaryInteger.bitWidth.getter();
              if (v84)
              {
                if (v85 > 64)
                {
                  v128 = v127;
                  __chkstk_darwin(v85);
                  v129 = v127 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
                  sub_100053494();
                  v87 = v135;
                  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
                  v88 = *(*(v87 + 32) + 8);
                  v66 = v76;
                  v71 = v132;
                  goto LABEL_56;
                }

                v127[1] = *(*(v135 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v129 = v127;
                v93 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                swift_getAssociatedConformanceWitness();
                v94 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v128 = v127;
                __chkstk_darwin(v94);
                v96 = v127 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v97 = *(*(v135 + 32) + 8);
                v98 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v134 + 8))(v96, v76);
                if (v98)
                {
                  goto LABEL_109;
                }
              }

              else if (v85 >= 64)
              {
                v66 = v76;
                v71 = v132;
                goto LABEL_64;
              }

              v129 = v76;
LABEL_63:
              dispatch thunk of BinaryInteger._lowWord.getter();
              v71 = v132;
              v66 = v129;
            }
          }
        }

LABEL_64:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
        {
LABEL_74:
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v134 + 8))(v71, v66);
          v29.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
          v105 = swift_isUniquelyReferenced_nonNull_native();
          v138[0] = v7;
          v31 = sub_1000110D8(v136, v16);
          v107 = v7[2];
          v108 = (v106 & 1) == 0;
          v10 = __OFADD__(v107, v108);
          v109 = v107 + v108;
          if (v10)
          {
            goto LABEL_103;
          }

          v110 = v106;
          if (v7[3] >= v109)
          {
            if ((v105 & 1) == 0)
            {
              v123 = v31;
              sub_100202888();
              v31 = v123;
              if ((v110 & 1) == 0)
              {
LABEL_94:
                v7 = v138[0];
                *(v138[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
                v124 = (v7[6] + 16 * v31);
                *v124 = v136;
                v124[1] = v16;
                *(v7[7] + 8 * v31) = v29;
                v125 = v7[2];
                v10 = __OFADD__(v125, 1);
                v11 = v125 + 1;
                if (v10)
                {
                  __break(1u);
LABEL_97:

                  return v7;
                }

                goto LABEL_5;
              }

              goto LABEL_80;
            }
          }

          else
          {
            sub_10022C3EC(v109, v105);
            v31 = sub_1000110D8(v136, v16);
            if ((v110 & 1) != (v111 & 1))
            {
              goto LABEL_110;
            }
          }

          if ((v110 & 1) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_80;
        }

        v138[0] = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v129) = dispatch thunk of static BinaryInteger.isSigned.getter();
        v132 = v71;
        v99 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v129)
        {
          if (v99 >= 65)
          {
            goto LABEL_67;
          }
        }

        else if (v99 >= 64)
        {
LABEL_67:
          v129 = v127;
          __chkstk_darwin(v99);
          v101 = v127 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_100053494();
          v130 = v101;
          v102 = v135;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v103 = *(*(v102 + 32) + 8);
          v71 = v132;
          v104 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v134 + 8))(v130, v66);
          if (v104)
          {
            goto LABEL_108;
          }

          goto LABEL_74;
        }

        v71 = v132;
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_74;
      }

      sub_100010BD4(&v143, v140);
      v53 = v141;
      v54 = sub_100011AEC(v140, v141);
      v55 = *(*(v53 - 8) + 64);
      __chkstk_darwin(v54);
      (*(v57 + 16))(v127 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_1000535B8();
      BinaryFloatingPoint.init<A>(_:)();
      v29.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v139 = v7;
      v59 = sub_1000110D8(v136, v16);
      v61 = v7[2];
      v62 = (v60 & 1) == 0;
      v10 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (v10)
      {
        goto LABEL_101;
      }

      v64 = v60;
      if (v7[3] >= v63)
      {
        if ((v58 & 1) == 0)
        {
          v119 = v59;
          sub_100202888();
          v59 = v119;
          if ((v64 & 1) == 0)
          {
LABEL_88:
            v7 = v139;
            v139[(v59 >> 6) + 8] |= 1 << v59;
            v120 = (v7[6] + 16 * v59);
            *v120 = v136;
            v120[1] = v16;
            *(v7[7] + 8 * v59) = v29;
            v121 = v7[2];
            v10 = __OFADD__(v121, 1);
            v11 = v121 + 1;
            if (v10)
            {
              goto LABEL_104;
            }

            goto LABEL_5;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_10022C3EC(v63, v58);
        v59 = sub_1000110D8(v136, v16);
        if ((v64 & 1) != (v65 & 1))
        {
          goto LABEL_110;
        }
      }

      if ((v64 & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_46:
      v81 = v59;

      v7 = v139;
LABEL_81:
      v112 = v7[7];
      v113 = *(v112 + 8 * v81);
      *(v112 + 8 * v81) = v29;

LABEL_6:
      sub_100004984(v140);
    }

    else
    {
      if (v18)
      {
        sub_100010BD4(&v143, v140);
        v38 = v141;
        v39 = v142;
        v40 = sub_100011AEC(v140, v141);
        v41 = *(*(v38 - 8) + 64);
        __chkstk_darwin(v40);
        (*(v43 + 16))(v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
        v44 = *(v39 + 40);
        v45 = *(*(*(v39 + 8) + 8) + 8);
        String.init<A>(_:)();
        v29.super.super.isa = String._bridgeToObjectiveC()();

        v46 = swift_isUniquelyReferenced_nonNull_native();
        v138[0] = v7;
        v31 = sub_1000110D8(v136, v16);
        v48 = v7[2];
        v49 = (v47 & 1) == 0;
        v10 = __OFADD__(v48, v49);
        v50 = v48 + v49;
        if (v10)
        {
          goto LABEL_100;
        }

        v51 = v47;
        if (v7[3] >= v50)
        {
          if ((v46 & 1) == 0)
          {
            v118 = v31;
            sub_100202888();
            v31 = v118;
            if ((v51 & 1) == 0)
            {
LABEL_4:
              v7 = v138[0];
              *(v138[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
              v8 = (v7[6] + 16 * v31);
              *v8 = v136;
              v8[1] = v16;
              *(v7[7] + 8 * v31) = v29;
              v9 = v7[2];
              v10 = __OFADD__(v9, 1);
              v11 = v9 + 1;
              if (v10)
              {
                goto LABEL_105;
              }

LABEL_5:
              v7[2] = v11;
              goto LABEL_6;
            }

            goto LABEL_80;
          }
        }

        else
        {
          sub_10022C3EC(v50, v46);
          v31 = sub_1000110D8(v136, v16);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_110;
          }
        }

        if ((v51 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_80:
        v81 = v31;

        v7 = v138[0];
        goto LABEL_81;
      }

      v137 = v135;
      v19 = v135;
      sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
      v20.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v19 & 1).super.super.isa;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v140[0] = v7;
      v22 = sub_1000110D8(v136, v16);
      v24 = v7[2];
      v25 = (v23 & 1) == 0;
      v10 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (v10)
      {
        goto LABEL_99;
      }

      v27 = v23;
      if (v7[3] >= v26)
      {
        if (v21)
        {
          goto LABEL_39;
        }

        v114 = v22;
        sub_100202888();
        v22 = v114;
        if ((v27 & 1) == 0)
        {
          goto LABEL_83;
        }

LABEL_40:
        v78 = v22;

        v7 = v140[0];
        v79 = *(v140[0] + 56);
        v80 = *(v79 + 8 * v78);
        *(v79 + 8 * v78) = v20;
      }

      else
      {
        sub_10022C3EC(v26, v21);
        v22 = sub_1000110D8(v136, v16);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_110;
        }

LABEL_39:
        if (v27)
        {
          goto LABEL_40;
        }

LABEL_83:
        v7 = v140[0];
        *(v140[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
        v115 = (v7[6] + 16 * v22);
        *v115 = v136;
        v115[1] = v16;
        *(v7[7] + 8 * v22) = v20;
        v116 = v7[2];
        v10 = __OFADD__(v116, 1);
        v117 = v116 + 1;
        if (v10)
        {
          goto LABEL_106;
        }

        v7[2] = v117;
      }
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v5)
    {
      goto LABEL_97;
    }

    v4 = *(v1 + 8 * v12);
    ++v6;
    if (v4)
    {
      v6 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000545A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000545EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8C88, &unk_1004C1AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005465C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A8C88, &unk_1004C1AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000546C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8C88, &unk_1004C1AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100054734()
{
  result = qword_1005A8CA0;
  if (!qword_1005A8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8CA0);
  }

  return result;
}

__n128 sub_100054794(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000547A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000547E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_100054830(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsEvent.AnalyticsEventError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnalyticsEvent.AnalyticsEventError(_WORD *result, int a2, int a3)
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

unint64_t sub_10005494C()
{
  result = qword_1005A8CA8[0];
  if (!qword_1005A8CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005A8CA8);
  }

  return result;
}

uint64_t sub_1000549C0()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10004F154(v0, qword_1005DFAA0);
  sub_10000A6F0(v0, qword_1005DFAA0);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

uint64_t sub_100054A24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  *v4 = v2;
  v4[1] = sub_100054AD4;

  return sub_100055210(v6);
}

uint64_t sub_100054AD4(uint64_t a1)
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

uint64_t sub_100054C28(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  *v4 = v2;
  v4[1] = sub_1000552EC;

  return sub_100055298(v6);
}

uint64_t sub_100054CD4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EnumerableEntityQuery.suggestedEntities()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_100003690;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, WitnessTable);
}

uint64_t sub_100054DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100054E60;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100054E60(uint64_t a1)
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

uint64_t sub_100054FDC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_10000368C;

  return EntityQuery.results()(a1, a2, WitnessTable);
}

uint64_t sub_1000550A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003690;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100055194()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFAB8);
  sub_10000A6F0(v0, qword_1005DFAB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100055230()
{
  v1 = *(v0 + 16);
  v2 = static Array._allocateUninitialized(_:)();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t _s12PersonEntityVMa()
{
  result = qword_1005A8DF0;
  if (!qword_1005A8DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100055428()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10004F154(v0, qword_1005DFAD0);
  v1 = sub_10000A6F0(v0, qword_1005DFAD0);
  if (qword_1005A7EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFAA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000555B4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000555C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005A7EB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10000A6F0(v2, qword_1005DFAD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000556AC(uint64_t a1)
{
  v2 = sub_100055748(&qword_1005A8D58);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100055748(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s12PersonEntityVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for DisplayRepresentation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100055800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003690;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000558C4(uint64_t a1)
{
  v2 = sub_100055748(&qword_1005A8D78);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100055954()
{
  result = type metadata accessor for DisplayRepresentation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s20PersonLocationEntityVMa()
{
  result = qword_1005A8EE8;
  if (!qword_1005A8EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100055B04()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10004F154(v0, qword_1005DFAE8);
  v1 = sub_10000A6F0(v0, qword_1005DFAE8);
  if (qword_1005A7EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFAA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100055C68@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005A7EB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10000A6F0(v2, qword_1005DFAE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100055D54(uint64_t a1)
{
  v2 = sub_100055DF0(&qword_1005A8E50);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100055DF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s20PersonLocationEntityVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100055E34(uint64_t a1)
{
  v2 = sub_100055DF0(&qword_1005A8E70);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100055ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for MotionActivityState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v45 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = v43 - v8;
  v9 = type metadata accessor for LocationType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v48 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v43 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v25 = *(a1 + 32);
  v24 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 64);
  v44 = *(a1 + 72);
  v43[1] = *(a1 + 80);
  v28 = type metadata accessor for SecureLocation();
  v29 = *(v18 + 16);
  v30 = a1 + v28[13];
  v46 = v21;
  v29(v21, v30, v17);
  v31 = type metadata accessor for PlaceMark();
  v32 = *(*(v31 - 8) + 56);
  v47 = v16;
  v32(v16, 1, 1, v31);
  v33 = *(a1 + v28[15]);
  if (v33 > 7)
  {
    if (v33 != 8)
    {
      v34 = v48;
      v35 = v45;
      if (v33 == 100)
      {
        v36 = &enum case for LocationType.legacy(_:);
        goto LABEL_12;
      }

LABEL_8:
      v36 = &enum case for LocationType.proactiveOrShallow(_:);
      goto LABEL_12;
    }

    v36 = &enum case for LocationType.satellite(_:);
LABEL_11:
    v34 = v48;
    v35 = v45;
    goto LABEL_12;
  }

  if (v33 == 6)
  {
    v36 = &enum case for LocationType.proactiveOrShallow(_:);
    goto LABEL_11;
  }

  v34 = v48;
  v35 = v45;
  if (v33 != 7)
  {
    goto LABEL_8;
  }

  v36 = &enum case for LocationType.live(_:);
LABEL_12:
  (*(v10 + 104))(v34, *v36, v9);
  (*(v4 + 16))(v35, a1 + v28[14], v3);
  v37 = (*(v4 + 88))(v35, v3);
  if (v37 == enum case for MotionActivityState.unknown(_:) || v37 == enum case for MotionActivityState.stationary(_:) || v37 == enum case for MotionActivityState.walking(_:) || v37 == enum case for MotionActivityState.running(_:) || v37 == enum case for MotionActivityState.cycling(_:))
  {
    (*(v4 + 104))(v49, v37, v3);
  }

  else
  {
    v42 = *(v4 + 104);
    if (v37 == enum case for MotionActivityState.automotive(_:))
    {
      v42(v49, v37, v3);
    }

    else
    {
      (v42)(v49);
      (*(v4 + 8))(v35, v3);
    }
  }

  v38 = (a1 + v28[16]);
  v39 = *v38;
  v40 = v38[1];

  Location.init(latitude:longitude:horizontalAccuracy:verticalAccuracy:speed:altitude:floor:timestamp:placemark:locationType:motionActivityState:customLabel:)();
  return sub_1000563DC(a1);
}

uint64_t sub_1000563DC(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fence.DaysOfWeek();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v45 - v10;
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  v14 = v5[2];
  v46 = a1;
  v14(&v45 - v12, a1, v4);
  static Fence.DaysOfWeek.sunday.getter();
  sub_100058840(&qword_1005A8F28);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = v5[1];
  v15(v11, v4);
  if (a1)
  {
    v15(v13, v4);
    v16 = Calendar.weekdaySymbols.getter();
    if (v16[2])
    {
      v17 = v16[4];
      v18 = v16[5];
LABEL_22:

      return v17;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v45 = a2;
  static Fence.DaysOfWeek.monday.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15(v11, v4);
  if (v19)
  {
    v15(v13, v4);
    v20 = Calendar.weekdaySymbols.getter();
    if (v20[2] >= 2uLL)
    {
      v17 = v20[6];
      v21 = v20[7];
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  static Fence.DaysOfWeek.tuesday.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15(v11, v4);
  if (v22)
  {
    v15(v13, v4);
    v23 = Calendar.weekdaySymbols.getter();
    if (v23[2] >= 3uLL)
    {
      v17 = v23[8];
      v24 = v23[9];
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  static Fence.DaysOfWeek.wednesday.getter();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15(v11, v4);
  if (v25)
  {
    v15(v13, v4);
    v26 = Calendar.weekdaySymbols.getter();
    if (v26[2] >= 4uLL)
    {
      v17 = v26[10];
      v27 = v26[11];
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  static Fence.DaysOfWeek.thursday.getter();
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15(v11, v4);
  if (v28)
  {
    v15(v13, v4);
    v29 = Calendar.weekdaySymbols.getter();
    if (v29[2] >= 5uLL)
    {
      v17 = v29[12];
      v30 = v29[13];
      goto LABEL_22;
    }

    goto LABEL_33;
  }

  static Fence.DaysOfWeek.friday.getter();
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15(v11, v4);
  if (v31)
  {
    v15(v13, v4);
    v32 = Calendar.weekdaySymbols.getter();
    if (v32[2] >= 6uLL)
    {
      v17 = v32[14];
      v33 = v32[15];
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  static Fence.DaysOfWeek.saturday.getter();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15(v11, v4);
  v15(v13, v4);
  if (v34)
  {
    v35 = Calendar.weekdaySymbols.getter();
    if (v35[2] >= 7uLL)
    {
      v17 = v35[16];
      v36 = v35[17];
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (qword_1005A80E8 != -1)
  {
LABEL_36:
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000A6F0(v38, qword_1005DFF88);
  v39 = v47;
  v14(v47, v46, v4);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DE980, &v48);
    *(v42 + 12) = 258;
    v44 = Fence.DaysOfWeek.rawValue.getter();
    v15(v39, v4);
    *(v42 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s called with unrecognized weekday %{public}hhu", v42, 0xFu);
    sub_100004984(v43);
  }

  else
  {
    v15(v39, v4);
  }

  return 0;
}

uint64_t sub_100056A28()
{
  v0 = type metadata accessor for Fence.DaysOfWeek();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Calendar.firstWeekday.getter();
  if (!__OFADD__(result, 6))
  {
    v6 = (result + 6) % 7;
    v13 = _swiftEmptyArrayStorage;
    v7 = 7;
    sub_100239310(0, 7, 0);
    v8 = v13;
    while (1)
    {
      v9 = v6 % 7;
      if (v6 % 7 > 2)
      {
        switch(v9)
        {
          case 3:
            static Fence.DaysOfWeek.wednesday.getter();
            break;
          case 4:
            static Fence.DaysOfWeek.thursday.getter();
            break;
          case 5:
            static Fence.DaysOfWeek.friday.getter();
            break;
          default:
            goto LABEL_14;
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
          static Fence.DaysOfWeek.monday.getter();
          goto LABEL_17;
        }

        if (v9 != 2)
        {
LABEL_14:
          static Fence.DaysOfWeek.saturday.getter();
          goto LABEL_17;
        }

        static Fence.DaysOfWeek.tuesday.getter();
      }

      else
      {
        static Fence.DaysOfWeek.sunday.getter();
      }

LABEL_17:
      v13 = v8;
      v11 = v8[2];
      v10 = v8[3];
      if (v11 >= v10 >> 1)
      {
        sub_100239310(v10 > 1, v11 + 1, 1);
        v8 = v13;
      }

      v8[2] = v11 + 1;
      (*(v1 + 32))(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v4, v0);
      ++v6;
      if (!--v7)
      {
        return v8;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100056C5C(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = _swiftEmptyArrayStorage;
  sub_10002B3C0(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = *(type metadata accessor for Fence.DaysOfWeek() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      sub_10002B3C0((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    v5[2] = v13 + 1;
    v14 = &v5[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100056DB8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = type metadata accessor for Friend();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_100239354(0, v10, 0);
  v11 = v22;
  v17 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v21[0] = *(i - 1);
    v21[1] = v13;

    v19(v21);
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
      sub_100239354(v14 > 1, v15 + 1, 1);
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

uint64_t sub_100056F84()
{
  v0 = type metadata accessor for Fence.DaysOfWeek();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005A8F30, &qword_1004C2320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v32 = (&v28 - v8);
  v9 = sub_10004B564(&qword_1005A8F38, &qword_1004C2328);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  result = sub_100056A28();
  v17 = 0;
  v18 = 0;
  v33 = v1;
  v34 = result;
  v19 = *(result + 16);
  v31 = v1 + 16;
  v38 = (v6 + 56);
  v39 = v19;
  v36 = (v1 + 32);
  v37 = (v6 + 48);
  v35 = (v1 + 8);
  v20 = 1;
  while (2)
  {
    while (2)
    {
      v30 = v20;
      v29 = v17;
      do
      {
        if (v18 == v39)
        {
          v21 = 1;
          v18 = v39;
        }

        else
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v18 >= *(v34 + 16))
          {
            goto LABEL_15;
          }

          v23 = v32;
          v22 = v33;
          v24 = v34 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18;
          v25 = *(v5 + 48);
          *v32 = v18;
          (*(v22 + 16))(v23 + v25, v24, v0);
          sub_1000176A8(v23, v13, &qword_1005A8F30, &qword_1004C2320);
          v21 = 0;
          ++v18;
        }

        (*v38)(v13, v21, 1, v5);
        sub_1000176A8(v13, v15, &qword_1005A8F38, &qword_1004C2328);
        v26 = (*v37)(v15, 1, v5);
        if (v26 == 1)
        {
          goto LABEL_13;
        }

        v17 = *v15;
        (*v36)(v4, &v15[*(v5 + 48)], v0);
        sub_100058840(&unk_1005AE600);
        v27 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        result = (*v35)(v4, v0);
      }

      while ((v27 & 1) == 0);
      v20 = 0;
      if (v30)
      {
        continue;
      }

      break;
    }

    if (!__OFADD__(v29, 1))
    {
      v20 = 0;
      if (v17 == v29 + 1)
      {
        continue;
      }

LABEL_13:

      return v26 == 1;
    }

    break;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10005733C()
{
  v1 = v0;
  v2 = type metadata accessor for Fence.DaysOfWeek();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v29 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v22 - v8;
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = sub_100056A28();
  v28 = *(v3 + 16);
  result = v28(v11, v1, v2);
  v27 = *(v12 + 16);
  if (v27)
  {
    v14 = 0;
    v22[0] = v3 + 8;
    v26 = (v3 + 32);
    v15 = _swiftEmptyArrayStorage;
    v24 = v11;
    v25 = v3;
    v22[1] = v3 + 16;
    v23 = v12;
    while (v14 < *(v12 + 16))
    {
      v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v17 = *(v3 + 72);
      v28(v9, v12 + v16 + v17 * v14, v2);
      sub_100058840(&unk_1005AE600);
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v18 = *v26;
        (*v26)(v29, v9, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239310(0, v15[2] + 1, 1);
          v15 = v30;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_100239310(v20 > 1, v21 + 1, 1);
          v15 = v30;
        }

        v15[2] = v21 + 1;
        result = (v18)(v15 + v16 + v21 * v17, v29, v2);
        v11 = v24;
        v3 = v25;
        v12 = v23;
      }

      else
      {
        result = (*v22[0])(v9, v2);
      }

      if (v27 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_13:
    (*(v3 + 8))(v11, v2);

    return v15;
  }

  return result;
}

unint64_t sub_100057620(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LocalizationUtility.Table();
  v5 = *(v4 - 8);
  v129 = v4;
  v130 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v128 = &v126[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Fence.DaysOfWeek();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v126[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v126[-v14];
  sub_100058840(&unk_1005AE600);
  dispatch thunk of SetAlgebra.init()();
  sub_100058840(&qword_1005A8F28);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v9 + 8);
  (v17)(v15, v8);
  if (v16)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFF88);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_7;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v131[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DE8A0, v131);
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s called on an empty DaysOfWeek", v21, 0xCu);
    sub_100004984(v22);
    goto LABEL_6;
  }

  static Fence.DaysOfWeek.all.getter();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  (v17)(v15, v8);
  if (v24)
  {
    v26 = v129;
    v25 = v130;
    v27 = v128;
    (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
    v28 = static LocalizationUtility.localizedString(key:table:)();
    (*(v25 + 8))(v27, v26);
    return v28;
  }

  v127 = sub_100056F84();
  v29 = sub_10005733C();
  __chkstk_darwin(v29);
  *&v126[-16] = a1;
  v30 = sub_100056C5C(sub_100058884, &v126[-32], v29);

  v31 = v30[2];
  if (v31 <= 3)
  {
    if (v31 != 1)
    {
      if (v31 != 2)
      {
        if (v31 == 3)
        {
          if ((v127 & 1) == 0)
          {
            v97 = v129;
            v96 = v130;
            v98 = v128;
            (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
            static LocalizationUtility.localizedString(key:table:)();
            (*(v96 + 8))(v98, v97);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_1004C0BD0;
            *(v35 + 56) = &type metadata for String;
            result = sub_1000588B8();
            *(v35 + 64) = result;
            v99 = v30[2];
            if (v99)
            {
              v100 = result;
              result = v30[5];
              *(v35 + 32) = v30[4];
              *(v35 + 40) = result;
              *(v35 + 96) = &type metadata for String;
              *(v35 + 104) = v100;
              if (v99 != 1)
              {
                v101 = v30[7];
                *(v35 + 72) = v30[6];
                *(v35 + 80) = v101;
                *(v35 + 136) = &type metadata for String;
                *(v35 + 144) = v100;
                if (v99 >= 3)
                {
                  v40 = v30[8];
                  v39 = v30[9];
                  goto LABEL_53;
                }

                goto LABEL_96;
              }

              goto LABEL_90;
            }

            goto LABEL_80;
          }

          v33 = v129;
          v32 = v130;
          v34 = v128;
          (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
          static LocalizationUtility.localizedString(key:table:)();
          (*(v32 + 8))(v34, v33);
          sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1004C0BD0;
          *(v35 + 56) = &type metadata for String;
          result = sub_1000588B8();
          *(v35 + 64) = result;
          v36 = v30[2];
          if (v36)
          {
            v37 = v30[5];
            *(v35 + 32) = v30[4];
            *(v35 + 40) = v37;
            *(v35 + 96) = &type metadata for String;
            *(v35 + 104) = result;
            if (v36 >= 3)
            {
              v38 = v30[9];
              *(v35 + 72) = v30[8];
              *(v35 + 80) = v38;
              *(v35 + 136) = &type metadata for String;
              *(v35 + 144) = result;
              v40 = v30[6];
              v39 = v30[7];
LABEL_53:

              *(v35 + 112) = v40;
              *(v35 + 120) = v39;
              goto LABEL_72;
            }

            goto LABEL_88;
          }

          goto LABEL_78;
        }

LABEL_31:

        if (qword_1005A80E8 == -1)
        {
LABEL_32:
          v66 = type metadata accessor for Logger();
          sub_10000A6F0(v66, qword_1005DFF88);
          (*(v9 + 16))(v13, v2, v8);
          v19 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v19, v67))
          {
            (v17)(v13, v8);
            goto LABEL_7;
          }

          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v131[0] = v69;
          *v68 = 136446466;
          *(v68 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DE8A0, v131);
          *(v68 + 12) = 258;
          v70 = Fence.DaysOfWeek.rawValue.getter();
          (v17)(v13, v8);
          *(v68 + 14) = v70;
          _os_log_impl(&_mh_execute_header, v19, v67, "%{public}s called on an invalid DaysOfWeek: %{public}hhu", v68, 0xFu);
          sub_100004984(v69);
LABEL_6:

LABEL_7:

          return 0;
        }

LABEL_75:
        swift_once();
        goto LABEL_32;
      }

      if (v127)
      {
        v72 = v129;
        v71 = v130;
        v73 = v128;
        (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
        static LocalizationUtility.localizedString(key:table:)();
        (*(v71 + 8))(v73, v72);
        sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1004C2310;
        *(v74 + 56) = &type metadata for String;
        result = sub_1000588B8();
        *(v74 + 64) = result;
        v75 = v30[2];
        if (!v75)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v76 = result;
        v77 = v30[5];
        *(v74 + 32) = v30[4];
        *(v74 + 40) = v77;
        *(v74 + 96) = &type metadata for String;
        *(v74 + 104) = v76;
        if (v75 == 1)
        {
          __break(1u);
LABEL_38:
          if (v127)
          {
            v79 = v129;
            v78 = v130;
            v80 = v128;
            (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
            static LocalizationUtility.localizedString(key:table:)();
            (*(v78 + 8))(v80, v79);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v81 = swift_allocObject();
            *(v81 + 16) = xmmword_1004C0BC0;
            *(v81 + 56) = &type metadata for String;
            result = sub_1000588B8();
            *(v81 + 64) = result;
            v82 = v30[2];
            if (!v82)
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

            v83 = v30[5];
            *(v81 + 32) = v30[4];
            *(v81 + 40) = v83;
            *(v81 + 96) = &type metadata for String;
            *(v81 + 104) = result;
            if (v82 < 5)
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            v84 = v30[13];
            *(v81 + 72) = v30[12];
            *(v81 + 80) = v84;
            *(v81 + 136) = &type metadata for String;
            *(v81 + 144) = result;
            v85 = v30[7];
            *(v81 + 112) = v30[6];
            *(v81 + 120) = v85;
            *(v81 + 176) = &type metadata for String;
            *(v81 + 184) = result;
            v86 = v30[9];
            *(v81 + 152) = v30[8];
            *(v81 + 160) = v86;
            *(v81 + 216) = &type metadata for String;
            *(v81 + 224) = result;
            v88 = v30[10];
            v87 = v30[11];
          }

          else
          {
            v119 = v129;
            v118 = v130;
            v120 = v128;
            (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
            static LocalizationUtility.localizedString(key:table:)();
            (*(v118 + 8))(v120, v119);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v81 = swift_allocObject();
            *(v81 + 16) = xmmword_1004C0BC0;
            *(v81 + 56) = &type metadata for String;
            result = sub_1000588B8();
            *(v81 + 64) = result;
            v121 = v30[2];
            if (!v121)
            {
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v122 = result;
            result = v30[5];
            *(v81 + 32) = v30[4];
            *(v81 + 40) = result;
            *(v81 + 96) = &type metadata for String;
            *(v81 + 104) = v122;
            if (v121 == 1)
            {
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            v123 = v30[7];
            *(v81 + 72) = v30[6];
            *(v81 + 80) = v123;
            *(v81 + 136) = &type metadata for String;
            *(v81 + 144) = v122;
            if (v121 < 3)
            {
LABEL_98:
              __break(1u);
              goto LABEL_99;
            }

            v124 = v30[9];
            *(v81 + 112) = v30[8];
            *(v81 + 120) = v124;
            *(v81 + 176) = &type metadata for String;
            *(v81 + 184) = v122;
            if (v121 == 3)
            {
LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

            v125 = v30[11];
            *(v81 + 152) = v30[10];
            *(v81 + 160) = v125;
            *(v81 + 216) = &type metadata for String;
            *(v81 + 224) = v122;
            if (v121 < 5)
            {
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            v88 = v30[12];
            v87 = v30[13];
          }

          *(v81 + 192) = v88;
          *(v81 + 200) = v87;
          goto LABEL_72;
        }
      }

      else
      {
        v112 = v129;
        v111 = v130;
        v113 = v128;
        (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
        static LocalizationUtility.localizedString(key:table:)();
        (*(v111 + 8))(v113, v112);
        sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1004C2310;
        *(v74 + 56) = &type metadata for String;
        result = sub_1000588B8();
        *(v74 + 64) = result;
        v114 = v30[2];
        if (!v114)
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v115 = result;
        result = v30[5];
        *(v74 + 32) = v30[4];
        *(v74 + 40) = result;
        *(v74 + 96) = &type metadata for String;
        *(v74 + 104) = v115;
        if (v114 == 1)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }
      }

      v117 = v30[6];
      v116 = v30[7];

      *(v74 + 72) = v117;
      *(v74 + 80) = v116;
      goto LABEL_72;
    }

    v9 = v129;
    v53 = v130;
    v8 = v128;
    (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v53 + 8))(v8, v9);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1004C1900;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1000588B8();
    if (!v30[2])
    {
      __break(1u);
      goto LABEL_75;
    }

    v55 = v30[4];
    v54 = v30[5];

    *(v17 + 32) = v55;
    *(v17 + 40) = v54;
LABEL_72:
    v28 = String.init(format:arguments:)();

    return v28;
  }

  if (v31 == 4)
  {
    if (v127)
    {
      v57 = v129;
      v56 = v130;
      v58 = v128;
      (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
      static LocalizationUtility.localizedString(key:table:)();
      (*(v56 + 8))(v58, v57);
      sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1004C0BB0;
      *(v59 + 56) = &type metadata for String;
      result = sub_1000588B8();
      *(v59 + 64) = result;
      v60 = v30[2];
      if (v60)
      {
        v61 = v30[5];
        *(v59 + 32) = v30[4];
        *(v59 + 40) = v61;
        *(v59 + 96) = &type metadata for String;
        *(v59 + 104) = result;
        if (v60 < 4)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v62 = v30[11];
        *(v59 + 72) = v30[10];
        *(v59 + 80) = v62;
        *(v59 + 136) = &type metadata for String;
        *(v59 + 144) = result;
        v63 = v30[7];
        *(v59 + 112) = v30[6];
        *(v59 + 120) = v63;
        *(v59 + 176) = &type metadata for String;
        *(v59 + 184) = result;
        v65 = v30[8];
        v64 = v30[9];
        goto LABEL_47;
      }

      __break(1u);
    }

    else
    {
      v90 = v129;
      v89 = v130;
      v91 = v128;
      (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
      static LocalizationUtility.localizedString(key:table:)();
      (*(v89 + 8))(v91, v90);
      sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1004C0BB0;
      *(v59 + 56) = &type metadata for String;
      result = sub_1000588B8();
      *(v59 + 64) = result;
      v92 = v30[2];
      if (v92)
      {
        v93 = result;
        result = v30[5];
        *(v59 + 32) = v30[4];
        *(v59 + 40) = result;
        *(v59 + 96) = &type metadata for String;
        *(v59 + 104) = v93;
        if (v92 == 1)
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v94 = v30[7];
        *(v59 + 72) = v30[6];
        *(v59 + 80) = v94;
        *(v59 + 136) = &type metadata for String;
        *(v59 + 144) = v93;
        if (v92 < 3)
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v95 = v30[9];
        *(v59 + 112) = v30[8];
        *(v59 + 120) = v95;
        *(v59 + 176) = &type metadata for String;
        *(v59 + 184) = v93;
        if (v92 == 3)
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v65 = v30[10];
        v64 = v30[11];
LABEL_47:

        *(v59 + 152) = v65;
        *(v59 + 160) = v64;
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v31 == 5)
  {
    goto LABEL_38;
  }

  if (v31 != 6)
  {
    goto LABEL_31;
  }

  if (v127)
  {
    v42 = v129;
    v41 = v130;
    v43 = v128;
    (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v41 + 8))(v43, v42);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1004C2300;
    *(v44 + 56) = &type metadata for String;
    result = sub_1000588B8();
    *(v44 + 64) = result;
    v45 = v30[2];
    if (!v45)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v46 = v30[5];
    *(v44 + 32) = v30[4];
    *(v44 + 40) = v46;
    *(v44 + 96) = &type metadata for String;
    *(v44 + 104) = result;
    if (v45 < 6)
    {
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v47 = v30[15];
    *(v44 + 72) = v30[14];
    *(v44 + 80) = v47;
    *(v44 + 136) = &type metadata for String;
    *(v44 + 144) = result;
    v48 = v30[7];
    *(v44 + 112) = v30[6];
    *(v44 + 120) = v48;
    *(v44 + 176) = &type metadata for String;
    *(v44 + 184) = result;
    v49 = v30[9];
    *(v44 + 152) = v30[8];
    *(v44 + 160) = v49;
    *(v44 + 216) = &type metadata for String;
    *(v44 + 224) = result;
    v50 = v30[11];
    *(v44 + 192) = v30[10];
    *(v44 + 200) = v50;
    *(v44 + 256) = &type metadata for String;
    *(v44 + 264) = result;
    v52 = v30[12];
    v51 = v30[13];
LABEL_61:

    *(v44 + 232) = v52;
    *(v44 + 240) = v51;
    goto LABEL_72;
  }

  v103 = v129;
  v102 = v130;
  v104 = v128;
  (*(v130 + 104))(v128, enum case for LocalizationUtility.Table.default(_:), v129);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v102 + 8))(v104, v103);
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1004C2300;
  *(v44 + 56) = &type metadata for String;
  result = sub_1000588B8();
  *(v44 + 64) = result;
  v105 = v30[2];
  if (!v105)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v106 = result;
  result = v30[5];
  *(v44 + 32) = v30[4];
  *(v44 + 40) = result;
  *(v44 + 96) = &type metadata for String;
  *(v44 + 104) = v106;
  if (v105 == 1)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v107 = v30[7];
  *(v44 + 72) = v30[6];
  *(v44 + 80) = v107;
  *(v44 + 136) = &type metadata for String;
  *(v44 + 144) = v106;
  if (v105 < 3)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v108 = v30[9];
  *(v44 + 112) = v30[8];
  *(v44 + 120) = v108;
  *(v44 + 176) = &type metadata for String;
  *(v44 + 184) = v106;
  if (v105 == 3)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v109 = v30[11];
  *(v44 + 152) = v30[10];
  *(v44 + 160) = v109;
  *(v44 + 216) = &type metadata for String;
  *(v44 + 224) = v106;
  if (v105 < 5)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v110 = v30[13];
  *(v44 + 192) = v30[12];
  *(v44 + 200) = v110;
  *(v44 + 256) = &type metadata for String;
  *(v44 + 264) = v106;
  if (v105 != 5)
  {
    v52 = v30[14];
    v51 = v30[15];
    goto LABEL_61;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_100058840(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Fence.DaysOfWeek();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100058884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100056438(a1, *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1000588B8()
{
  result = qword_1005ABE90;
  if (!qword_1005ABE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABE90);
  }

  return result;
}

void sub_10005890C()
{
  v0 = Handle.siblingIdentifiers.getter();
  v1 = (v0 + 40);
  v2 = -*(v0 + 16);
  v3 = -1;
  while (1)
  {
    if (v2 + v3 == -1)
    {
LABEL_9:

      return;
    }

    if (++v3 >= *(v0 + 16))
    {
      break;
    }

    v7 = *(v1 - 1);
    v6 = *v1;

    v8 = static Handle.isPhoneNumber(_:)();
    v9 = String._bridgeToObjectiveC()();
    if (v8)
    {
      v10 = CFPhoneNumberCreate();

      if (!CMFItemCreateWithPhoneNumber())
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = CMFItemCreateWithEmailAddress();

      if (!v4)
      {
        goto LABEL_11;
      }
    }

    v1 += 2;
    IsItemBlocked = CMFBlockListIsItemBlocked();

    swift_unknownObjectRelease();
    if (IsItemBlocked)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_100058A48()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFB00);
  sub_10000A6F0(v0, qword_1005DFB00);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100058ACC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100058B14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100058B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005A59C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100058B84(uint64_t a1)
{
  v2 = sub_10005A4E0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100058BC0(uint64_t a1)
{
  v2 = sub_10005A4E0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100058BFC()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100058CBC, v0, 0);
}

uint64_t sub_100058CBC()
{
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CommandManager: run", v4, 2u);
  }

  if (static SystemInfo.underTest.getter())
  {
    v5 = v0[5];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_100058E50;

    return daemon.getter();
  }
}

uint64_t sub_100058E50(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v9 = sub_10005A430(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10005A3CC();
  *v6 = v12;
  v6[1] = sub_100059008;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100059008(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_100059288;
  }

  else
  {
    v9 = v4[7];

    v4[10] = a1;
    v4[11] = sub_10005A430(&qword_1005A90F0, type metadata accessor for CommandManager);
    v8 = sub_10005917C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005917C()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  sub_100458A94(v0[11], v2);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10005921C, v5, 0);
}

uint64_t sub_10005921C()
{
  v1 = v0[10];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100059288()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1000592F8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFB18);
  v1 = sub_10000A6F0(v0, qword_1005DFB18);
  if (qword_1005A7EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFB00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000593C0()
{
  *(v1 + 1744) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 1752) = v3;
  *v3 = v1;
  v3[1] = sub_100059454;

  return daemon.getter();
}

uint64_t sub_100059454(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1752);
  v12 = *v1;
  *(v3 + 1760) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1768) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10005A430(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10005A430(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100059630;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100059630(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1768);
  v6 = *v2;
  v4[222] = a1;
  v4[223] = v1;

  if (v1)
  {
    v7 = v4[218];

    return _swift_task_switch(sub_100059B4C, v7, 0);
  }

  else
  {
    v8 = v4[220];

    v9 = swift_task_alloc();
    v4[224] = v9;
    *v9 = v6;
    v9[1] = sub_1000597C0;

    return sub_100245BB8((v4 + 122));
  }
}

uint64_t sub_1000597C0()
{
  v1 = *(*v0 + 1792);
  v2 = *(*v0 + 1776);
  v4 = *v0;

  return _swift_task_switch(sub_1000598D0, v2, 0);
}

uint64_t sub_1000598D0()
{
  memcpy((v0 + 496), (v0 + 976), 0x1E0uLL);
  if (sub_100033B90(v0 + 496) == 1)
  {
    v1 = *(v0 + 1744);
    v2 = sub_100059AC4;
  }

  else
  {
    v3 = *(v0 + 1744);
    memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
    sub_100002CE0(v0 + 976, &qword_1005A90D8, &unk_1004C6AB0);
    v4 = *(v0 + 336);
    *(v0 + 1680) = *(v0 + 352);
    v5 = *(v0 + 384);
    *(v0 + 1696) = *(v0 + 368);
    *(v0 + 1712) = v5;
    *(v0 + 1728) = *(v0 + 400);
    v6 = *(v0 + 272);
    *(v0 + 1616) = *(v0 + 288);
    v7 = *(v0 + 320);
    *(v0 + 1632) = *(v0 + 304);
    *(v0 + 1648) = v7;
    *(v0 + 1664) = v4;
    *(v0 + 1600) = v6;
    v2 = sub_1000599CC;
    v1 = v3;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_1000599CC()
{
  *(v0 + 1536) = *(v0 + 1680);
  *(v0 + 1552) = *(v0 + 1696);
  *(v0 + 1568) = *(v0 + 1712);
  *(v0 + 1584) = *(v0 + 1728);
  *(v0 + 1472) = *(v0 + 1616);
  *(v0 + 1488) = *(v0 + 1632);
  *(v0 + 1504) = *(v0 + 1648);
  *(v0 + 1520) = *(v0 + 1664);
  *(v0 + 1456) = *(v0 + 1600);
  sub_10005A3B0(v0 + 1456);
  *(v0 + 1456);
  v1 = *(v0 + 1776);
  v2 = static Duration.seconds(_:)();
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_100059AC4()
{
  v1 = *(v0 + 1776);
  v2 = static Duration.seconds(_:)();
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_100059B4C()
{
  v1 = v0[220];

  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v2 = v0[223];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[223];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "ERROR: %{public}@", v8, 0xCu);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(5000000000000000000, 0);
}

uint64_t sub_100059D00()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC13findmylocated14CommandManager_lastRefreshDate;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14CommandManager_coleasedRefreshPriority;
  Priority = type metadata accessor for LocatePriority();
  (*(*(Priority - 8) + 8))(v0 + v4, Priority);
  v6 = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  (*(*(refreshed - 8) + 8))(v0 + v6, refreshed);
  v8 = *(v0 + OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands);

  v9 = *(v0 + OBJC_IVAR____TtC13findmylocated14CommandManager_coalesceTaskList);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100059E28()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for LocatePriority();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for LegacyRefreshSchedule();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100059F5C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CommandManager();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10005A008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommandManager();
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10005A0D0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CommandManager();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10005A17C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CommandManager();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_10005A228()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_100058BFC();
}

uint64_t sub_10005A2B4()
{
  v1 = *v0;
  type metadata accessor for CommandManager();
  sub_10005A430(&qword_1005A90C8, type metadata accessor for CommandManager);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10005A3B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10005A3CC()
{
  result = qword_1005A90E8;
  if (!qword_1005A90E8)
  {
    sub_10004B610(&qword_1005A90E0, &qword_1004C2490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A90E8);
  }

  return result;
}

uint64_t sub_10005A430(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005A48C()
{
  result = qword_1005A90F8;
  if (!qword_1005A90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A90F8);
  }

  return result;
}

unint64_t sub_10005A4E0()
{
  result = qword_1005A9100;
  if (!qword_1005A9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9100);
  }

  return result;
}

unint64_t sub_10005A548()
{
  result = qword_1005A9108;
  if (!qword_1005A9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9108);
  }

  return result;
}

uint64_t sub_10005A59C(uint64_t a1)
{
  if ((a1 - 1) >= 0xD)
  {
    return 13;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_10005A5B8(uint64_t a1, uint64_t a2)
{
  v3[645] = v2;
  v3[644] = a2;
  v3[643] = a1;
  v4 = type metadata accessor for ClientOrigin();
  v3[646] = v4;
  v5 = *(v4 - 8);
  v3[647] = v5;
  v6 = *(v5 + 64) + 15;
  v3[648] = swift_task_alloc();
  v7 = *(*(type metadata accessor for RequestOrigin() - 8) + 64) + 15;
  v3[649] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v3[650] = v8;
  v9 = *(v8 - 8);
  v3[651] = v9;
  v10 = *(v9 + 64) + 15;
  v3[652] = swift_task_alloc();
  updated = type metadata accessor for UpdateFenceEndpoint();
  v3[653] = updated;
  v12 = *(*(updated - 8) + 64) + 15;
  v3[654] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v3[655] = swift_task_alloc();
  v14 = type metadata accessor for Account();
  v3[656] = v14;
  v15 = *(v14 - 8);
  v3[657] = v15;
  v16 = *(v15 + 64) + 15;
  v3[658] = swift_task_alloc();
  v3[659] = swift_task_alloc();
  v3[660] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v3[661] = v18;
  *v18 = v3;
  v18[1] = sub_10005A814;

  return daemon.getter();
}

uint64_t sub_10005A814(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 5288);
  v12 = *v1;
  v3[662] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[663] = v6;
  v7 = type metadata accessor for Daemon();
  v3[664] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100008F30(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[665] = v9;
  v10 = sub_100008F30(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_10005A9F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10005A9F4(uint64_t a1)
{
  v3 = *(*v2 + 5304);
  v4 = *v2;
  v4[666] = a1;
  v4[667] = v1;

  if (v1)
  {
    v5 = v4[645];

    return _swift_task_switch(sub_10005C338, v5, 0);
  }

  else
  {
    v6 = v4[662];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[668] = v8;
    *v8 = v4;
    v8[1] = sub_10005AB6C;

    return daemon.getter();
  }
}

uint64_t sub_10005AB6C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 5344);
  v5 = *v1;
  v3[669] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[670] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100008F30(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_10005AD20;
  v10 = v3[665];
  v11 = v3[664];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10005AD20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 5360);
  v5 = *(*v2 + 5160);
  v6 = *v2;
  v3[671] = a1;
  v3[672] = v1;

  if (v1)
  {
    v7 = sub_10005C410;
  }

  else
  {
    v8 = v3[669];

    v7 = sub_10005AE64;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_10005AE64()
{
  v1 = v0[651];
  v2 = v0[650];
  v3 = v0[644];
  v4 = v0[643];
  v5 = *(v1 + 16);
  v0[673] = v5;
  v0[674] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v4, v3, v2);
  v6 = swift_task_alloc();
  v0[675] = v6;
  *v6 = v0;
  v6[1] = sub_10005AF2C;
  v7 = v0[666];
  v8 = v0[655];

  return sub_10000EB24(v8);
}

uint64_t sub_10005AF2C()
{
  v1 = *(*v0 + 5400);
  v2 = *(*v0 + 5160);
  v4 = *v0;

  return _swift_task_switch(sub_10005B03C, v2, 0);
}

uint64_t sub_10005B03C()
{
  v1 = v0[657];
  v2 = v0[656];
  v3 = v0[655];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[671];
    v5 = v0[666];
    v6 = v0[651];
    v7 = v0[650];
    v8 = v0[643];
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    sub_10005CF04();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();

    (*(v6 + 8))(v8, v7);
    v10 = v0[660];
    v11 = v0[659];
    v12 = v0[658];
    v13 = v0[655];
    v14 = v0[654];
    v15 = v0[652];
    v16 = v0[649];
    v17 = v0[648];

    v18 = v0[1];

    return v18();
  }

  else
  {
    (*(v1 + 32))(v0[660], v3, v2);
    v20 = swift_task_alloc();
    v0[676] = v20;
    *v20 = v0;
    v20[1] = sub_10005B25C;
    v21 = v0[671];

    return sub_100008CC0();
  }
}

uint64_t sub_10005B25C(uint64_t a1)
{
  v2 = *(*v1 + 5408);
  v3 = *(*v1 + 5160);
  v5 = *v1;
  *(*v1 + 5416) = a1;

  return _swift_task_switch(sub_10005B374, v3, 0);
}

uint64_t sub_10005B374()
{
  v24 = v0[673];
  v25 = v0[674];
  v1 = v0[660];
  v2 = v0[659];
  v18 = v0[677];
  v19 = v0[658];
  v3 = v0[657];
  v4 = v0[656];
  v5 = v0[654];
  v20 = v0[652];
  v21 = v0[650];
  v26 = v0[649];
  v6 = v0[647];
  v22 = v0[648];
  v23 = v0[646];
  v7 = v0[644];
  v16 = v7;
  v17 = *(v3 + 16);
  v17(v2, v1, v4);
  sub_10005CD88();
  v8 = URLComponents.path.modify();
  v9._countAndFlagsBits = 0x476574616470752FLL;
  v9._object = 0xEF65636E65466F65;
  String.append(_:)(v9);
  v8(v0 + 639, 0);
  v10 = *(v3 + 8);
  v0[678] = v10;
  v0[679] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);
  sub_100247800(v18, v0 + 613);

  v17(v19, v1, v4);
  v24(v20, v16, v21);
  (*(v6 + 104))(v22, enum case for ClientOrigin.other(_:), v23);
  RequestOrigin.init(_:)();
  v11 = swift_task_alloc();
  v0[680] = v11;
  *v11 = v0;
  v11[1] = sub_10005B5C4;
  v12 = v0[658];
  v13 = v0[652];
  v14 = v0[649];

  return sub_100148D3C(v12, v13, (v0 + 613), v14);
}

uint64_t sub_10005B5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 5440);
  v8 = *v4;
  v6[681] = a1;
  v6[682] = a2;
  v6[683] = a3;
  v6[684] = v3;

  v9 = v5[645];
  if (v3)
  {
    v10 = sub_10005BA30;
  }

  else
  {
    v10 = sub_10005B704;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10005B704()
{
  v1 = v0[683];
  v2 = v0[682];
  v3 = v0[681];
  v4 = v0[660];
  v5 = v0[654];
  v0[627] = v0[653];
  v0[628] = sub_100008F30(&qword_1005A9128, type metadata accessor for UpdateFenceEndpoint);
  v6 = sub_10000331C(v0 + 624);
  sub_10005CFB4(v5, v6);
  v0[632] = &type metadata for UpdateFenceRequest;
  v0[633] = sub_10005D018();
  v0[629] = v3;
  v0[630] = v2;
  v0[631] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[637] = type metadata accessor for BasicCredential();
  v0[638] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 634);
  BasicCredential.init(username:password:)();
  v7 = swift_task_alloc();
  v0[685] = v7;
  *v7 = v0;
  v7[1] = sub_10005B8B8;
  v8 = v0[671];

  return sub_1001D7B78((v0 + 2), (v0 + 624), (v0 + 629), (v0 + 634));
}

uint64_t sub_10005B8B8()
{
  v2 = *v1;
  v3 = (*v1)[685];
  v7 = *v1;
  (*v1)[686] = v0;

  if (v0)
  {
    v4 = v2[645];
    sub_100002CE0((v2 + 634), &qword_1005A9138, &qword_1004C2600);
    v5 = sub_10005C4F4;
  }

  else
  {
    v4 = v2[645];
    sub_100002CE0((v2 + 634), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 629);
    sub_100004984(v2 + 624);
    v5 = sub_10005BB68;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005BA30()
{
  v1 = v0[679];
  v2 = v0[678];
  v3 = v0[671];
  v4 = v0[666];
  v5 = v0[660];
  v6 = v0[656];
  v7 = v0[654];
  v8 = v0[651];
  v9 = v0[650];
  v10 = v0[643];

  sub_10005CF58(v7);
  v2(v5, v6);
  (*(v8 + 8))(v10, v9);
  v11 = v0[684];
  v12 = v0[660];
  v13 = v0[659];
  v14 = v0[658];
  v15 = v0[655];
  v16 = v0[654];
  v17 = v0[652];
  v18 = v0[649];
  v19 = v0[648];

  v20 = v0[1];

  return v20();
}

void *sub_10005BB68()
{
  v1 = *(v0 + 296);
  if (v1 != 1)
  {
    sub_10005D06C(v0 + 16);
    type metadata accessor for FenceServiceClient.Failure(0);
    sub_100008F30(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure);
    swift_allocError();
    v19 = 0;
    if (v1 != 21)
    {
      v19 = qword_1004C2610[v1];
    }

    v90 = *(v0 + 5464);
    v20 = v1 == 21;
    v21 = *(v0 + 5456);
    v22 = *(v0 + 5448);
    v98 = *(v0 + 5432);
    v96 = *(v0 + 5424);
    v23 = *(v0 + 5368);
    v24 = *(v0 + 5328);
    v25 = *(v0 + 5280);
    v88 = *(v0 + 5248);
    v26 = *(v0 + 5232);
    v27 = *(v0 + 5208);
    v94 = *(v0 + 5200);
    v92 = *(v0 + 5144);
    *v18 = v19;
    *(v18 + 8) = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10001A794(v21, v90);
    sub_10005CF58(v26);
    v96(v25, v88);
    (*(v27 + 8))(v92, v94);
    v28 = *(v0 + 5280);
    v29 = *(v0 + 5272);
    v30 = *(v0 + 5264);
    v31 = *(v0 + 5240);
    v32 = *(v0 + 5232);
    v33 = *(v0 + 5216);
    v34 = *(v0 + 5192);
    v35 = *(v0 + 5184);

    v36 = *(v0 + 8);
    goto LABEL_26;
  }

  v2 = sub_100171168();
  sub_10005D06C(v0 + 16);
  if (!v2)
  {
    v45 = *(v0 + 5464);
    v46 = *(v0 + 5456);
    v47 = *(v0 + 5448);
    v48 = *(v0 + 5368);
    v49 = *(v0 + 5328);

    v43 = v46;
    v44 = v45;
LABEL_23:
    sub_10001A794(v43, v44);
    goto LABEL_25;
  }

  v65 = v2[2];
  if (!v65)
  {
    v50 = *(v0 + 5464);
    v51 = *(v0 + 5456);
    v52 = *(v0 + 5448);
    v53 = *(v0 + 5368);
    v54 = *(v0 + 5328);

    sub_10001A794(v51, v50);

LABEL_25:
    v55 = *(v0 + 5432);
    v56 = *(v0 + 5424);
    v57 = *(v0 + 5280);
    v58 = *(v0 + 5272);
    v59 = *(v0 + 5264);
    v60 = *(v0 + 5248);
    v61 = *(v0 + 5240);
    v62 = *(v0 + 5216);
    v99 = *(v0 + 5192);
    __srca = *(v0 + 5184);
    sub_10005CF58(*(v0 + 5232));
    v56(v57, v60);

    v36 = *(v0 + 8);
LABEL_26:

    return v36();
  }

  __src = (v0 + 2568);
  __dst = (v0 + 3152);
  memcpy((v0 + 1400), v2 + 4, 0x241uLL);
  v3 = *(v0 + 1968);
  v4 = *(v0 + 1976);
  v95 = *(v0 + 1936);
  v97 = *(v0 + 1952);
  v91 = *(v0 + 1904);
  v93 = *(v0 + 1920);
  v5 = *(v0 + 1896);
  v87 = *(v0 + 1864);
  v89 = *(v0 + 1880);
  v86 = *(v0 + 1857);
  v6 = *(v0 + 1856);
  v84 = *(v0 + 1832);
  v85 = *(v0 + 1848);
  v82 = *(v0 + 1816);
  v83 = *(v0 + 1840);
  v7 = *(v0 + 1824);
  v80 = *(v0 + 1784);
  v81 = *(v0 + 1800);
  v79 = *(v0 + 1776);
  v77 = *(v0 + 1768);
  v78 = *(v0 + 1760);
  v75 = *(v0 + 1496);
  v76 = *(v0 + 1512);
  v73 = *(v0 + 1464);
  v74 = *(v0 + 1480);
  v71 = *(v0 + 1432);
  v72 = *(v0 + 1448);
  v69 = *(v0 + 1400);
  v70 = *(v0 + 1416);
  sub_10005D0C0(v0 + 1400, v0 + 1984);
  v8 = v7;
  v9 = v6;
  v114 = *(v0 + 1720);
  v115 = *(v0 + 1736);
  v116 = *(v0 + 1752);
  v110 = *(v0 + 1656);
  v111 = *(v0 + 1672);
  v112 = *(v0 + 1688);
  v113 = *(v0 + 1704);
  v106 = *(v0 + 1592);
  v107 = *(v0 + 1608);
  v108 = *(v0 + 1624);
  v109 = *(v0 + 1640);
  v102 = *(v0 + 1528);
  v103 = *(v0 + 1544);
  v10 = 1;
  v104 = *(v0 + 1560);
  v105 = *(v0 + 1576);
LABEL_5:
  if (v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3;
  }

  v63 = v11;
  v12 = 584 * v10 + 32;
  v67 = v9 & 1;
  v68 = v8 & 1;
  v66 = v5 & 1;
  while (1)
  {
    *__src = v69;
    *(v0 + 2584) = v70;
    *(v0 + 2600) = v71;
    *(v0 + 2616) = v72;
    *(v0 + 2632) = v73;
    *(v0 + 2648) = v74;
    *(v0 + 2664) = v75;
    *(v0 + 2680) = v76;
    *(v0 + 2888) = v114;
    *(v0 + 2904) = v115;
    *(v0 + 2920) = v116;
    *(v0 + 2824) = v110;
    *(v0 + 2840) = v111;
    *(v0 + 2856) = v112;
    *(v0 + 2872) = v113;
    *(v0 + 2760) = v106;
    *(v0 + 2776) = v107;
    *(v0 + 2792) = v108;
    *(v0 + 2808) = v109;
    *(v0 + 2696) = v102;
    *(v0 + 2712) = v103;
    *(v0 + 2728) = v104;
    *(v0 + 2744) = v105;
    *(v0 + 2928) = v78;
    *(v0 + 2936) = v77;
    *(v0 + 2944) = v79;
    *(v0 + 2952) = v80;
    *(v0 + 2968) = v81;
    *(v0 + 2984) = v82;
    *(v0 + 2992) = v68;
    *(v0 + 3000) = v84;
    *(v0 + 3008) = v83;
    *(v0 + 3016) = v85;
    *(v0 + 3024) = v67;
    *(v0 + 3025) = v86;
    *(v0 + 3048) = v89;
    *(v0 + 3032) = v87;
    *(v0 + 3064) = v66;
    *(v0 + 3088) = v93;
    *(v0 + 3072) = v91;
    *(v0 + 3120) = v97;
    *(v0 + 3104) = v95;
    *(v0 + 3136) = v3;
    *(v0 + 3144) = v4 & 1;
    result = memcpy((v0 + 816), __src, 0x241uLL);
    if (v65 == v10)
    {
      v37 = *(v0 + 5464);
      v38 = *(v0 + 5456);
      v39 = *(v0 + 5448);
      v40 = *(v0 + 5368);
      v41 = *(v0 + 5328);
      v42 = *(v0 + 5144);

      sub_10005C670(v0 + 816);

      sub_10005D11C(__src);

      v43 = v38;
      v44 = v37;
      goto LABEL_23;
    }

    if (v10 >= v2[2])
    {
      break;
    }

    v14 = v2;
    memcpy(__dst, v2 + v12, 0x241uLL);
    v15 = *(v0 + 3720);
    v16 = *(v0 + 3728);
    if (v16)
    {
      if (v63 < 0)
      {
        v17 = v0 + 3736;
LABEL_17:
        sub_10005D0C0(__dst, v17);
        sub_10005D11C(__src);
        v95 = *(v0 + 3688);
        v97 = *(v0 + 3704);
        v91 = *(v0 + 3656);
        v93 = *(v0 + 3672);
        v87 = *(v0 + 3616);
        v89 = *(v0 + 3632);
        v86 = *(v0 + 3609);
        v85 = *(v0 + 3600);
        v9 = *(v0 + 3608);
        v84 = *(v0 + 3584);
        v83 = *(v0 + 3592);
        v82 = *(v0 + 3568);
        v8 = *(v0 + 3576);
        v80 = *(v0 + 3536);
        v81 = *(v0 + 3552);
        v79 = *(v0 + 3528);
        v78 = *(v0 + 3512);
        v77 = *(v0 + 3520);
        v75 = *(v0 + 3248);
        v76 = *(v0 + 3264);
        v73 = *(v0 + 3216);
        v74 = *(v0 + 3232);
        v71 = *(v0 + 3184);
        v72 = *(v0 + 3200);
        v69 = *__dst;
        v70 = *(v0 + 3168);
        v114 = *(v0 + 3472);
        v115 = *(v0 + 3488);
        v116 = *(v0 + 3504);
        v110 = *(v0 + 3408);
        v111 = *(v0 + 3424);
        v112 = *(v0 + 3440);
        v113 = *(v0 + 3456);
        v106 = *(v0 + 3344);
        v107 = *(v0 + 3360);
        v108 = *(v0 + 3376);
        v109 = *(v0 + 3392);
        v102 = *(v0 + 3280);
        v103 = *(v0 + 3296);
        ++v10;
        v3 = v15;
        v4 = v16;
        v104 = *(v0 + 3312);
        v105 = *(v0 + 3328);
        v2 = v14;
        v5 = *(v0 + 3648);
        goto LABEL_5;
      }
    }

    else if (v63 < v15)
    {
      v17 = v0 + 4320;
      goto LABEL_17;
    }

    v12 += 584;
    ++v10;
    v2 = v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005C338()
{
  v1 = v0[662];

  v2 = v0[667];
  v3 = v0[660];
  v4 = v0[659];
  v5 = v0[658];
  v6 = v0[655];
  v7 = v0[654];
  v8 = v0[652];
  v9 = v0[649];
  v10 = v0[648];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10005C410()
{
  v1 = v0[669];
  v2 = v0[666];

  v3 = v0[672];
  v4 = v0[660];
  v5 = v0[659];
  v6 = v0[658];
  v7 = v0[655];
  v8 = v0[654];
  v9 = v0[652];
  v10 = v0[649];
  v11 = v0[648];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10005C4F4()
{
  v1 = v0[683];
  v2 = v0[682];
  v3 = v0[681];
  v23 = v0[678];
  v24 = v0[679];
  v4 = v0[671];
  v5 = v0[666];
  v6 = v0[660];
  v7 = v0[656];
  v8 = v0[654];
  v9 = v0[651];
  v22 = v0[650];
  v10 = v0[643];

  sub_10001A794(v2, v1);
  sub_10005CF58(v8);
  v23(v6, v7);
  (*(v9 + 8))(v10, v22);
  sub_100004984(v0 + 629);
  sub_100004984(v0 + 624);
  v11 = v0[686];
  v12 = v0[660];
  v13 = v0[659];
  v14 = v0[658];
  v15 = v0[655];
  v16 = v0[654];
  v17 = v0[652];
  v18 = v0[649];
  v19 = v0[648];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10005C670(uint64_t a1)
{
  v2 = type metadata accessor for PlaceMark();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005A9148, &qword_1004D2370);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v61 = &v55 - v7;
  v63 = type metadata accessor for Fence.AcceptanceStatus();
  v60 = *(v63 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin(v63);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UUID();
  v57 = *(v58 - 8);
  v10 = *(v57 + 64);
  v11 = __chkstk_darwin(v58);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v16 = sub_10004B564(&qword_1005A9150, &qword_1004C2608);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v55 - v18;
  v20 = type metadata accessor for Fence.ID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v55 - v26;
  v28 = *(a1 + 360);
  v29 = *(a1 + 368);

  Fence.ID.init(string:)();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100002CE0(v19, &qword_1005A9150, &qword_1004C2608);
  }

  else
  {
    (*(v21 + 32))(v27, v19, v20);
    Fence.id.getter();
    Fence.ID.uuid.getter();
    v56 = *(v21 + 8);
    v56(v25, v20);
    static UUID.nilUUID.getter();
    v30 = static UUID.== infix(_:_:)();
    v31 = *(v57 + 8);
    v32 = v58;
    v31(v13, v58);
    v31(v15, v32);
    if (v30)
    {
      Fence.update(id:)();
    }

    v56(v27, v20);
  }

  v33 = v61;
  v34 = *(a1 + 392);
  if (v34)
  {
    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = *(a1 + 384) & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v36 = *(a1 + 392);

      Fence.label.setter();
    }
  }

  v37 = *a1;
  v38 = *(a1 + 8);

  sub_100249050(v37, v38, v33);
  v39 = v60;
  v40 = v63;
  if ((*(v60 + 48))(v33, 1, v63) == 1)
  {
    sub_100002CE0(v33, &qword_1005A9148, &qword_1004D2370);
  }

  else
  {
    v41 = v59;
    (*(v39 + 32))(v59, v33, v40);
    Fence.update(acceptanceStatus:)();
    (*(v39 + 8))(v41, v40);
  }

  v65 = *(a1 + 160);
  v69 = *(a1 + 216);
  v70 = *(a1 + 232);
  v71 = *(a1 + 248);
  v67 = *(a1 + 184);
  v68 = *(a1 + 200);
  v72 = *(a1 + 264);
  v42 = *(a1 + 328);
  v80 = *(a1 + 344);
  v43 = *(a1 + 128);
  v44 = *(a1 + 136);
  v45 = *(a1 + 144);
  v46 = *(a1 + 152);
  v47 = *(a1 + 176);
  v48 = *(a1 + 280);
  v49 = *(a1 + 288);
  v51 = *(a1 + 296);
  v50 = *(a1 + 304);
  v53 = *(a1 + 312);
  v52 = *(a1 + 320);
  v79 = v42;
  v64[0] = v43;
  v64[1] = v44;
  v61 = v45;
  v64[2] = v45;
  v64[3] = v46;
  v66 = v47;
  v63 = v48;
  v73 = v48;
  v74 = v49;
  v75 = v51;
  v76 = v50;
  v77 = v53;
  v78 = v52;
  if (sub_10004AFD4(v64) == 1)
  {
    v63 = 0;
  }

  else
  {
    v60 = v68;
  }

  PlaceMark.init(locality:administrativeArea:country:stateCode:streetAddress:streetName:formattedAddressLines:formattedAddressLinesWithoutCountry:coarseAddress:poiAddress:smallAddress:mediumAddress:largeAddress:)();
  return Fence.placemark.setter();
}

uint64_t sub_10005CD88()
{
  URLComponents.init()();
  URLComponents.scheme.setter();
  Account.appHostName.getter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v11 = 47;
  v12 = 0xE100000000000000;
  v0._countAndFlagsBits = Account.dsid.getter();
  String.append(_:)(v0);

  v1 = v11;
  v2 = v12;
  v3 = URLComponents.path.modify();
  v4._countAndFlagsBits = v1;
  v4._object = v2;
  String.append(_:)(v4);

  v3(&v11, 0);
  v11 = 47;
  v12 = 0xE100000000000000;
  v5._countAndFlagsBits = static SystemInfo.uniqueDeviceID.getter();
  String.append(_:)(v5);

  v6 = v11;
  v7 = v12;
  v8 = URLComponents.path.modify();
  v9._countAndFlagsBits = v6;
  v9._object = v7;
  String.append(_:)(v9);

  return v8(&v11, 0);
}

unint64_t sub_10005CF04()
{
  result = qword_1005A9120;
  if (!qword_1005A9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9120);
  }

  return result;
}

uint64_t sub_10005CF58(uint64_t a1)
{
  updated = type metadata accessor for UpdateFenceEndpoint();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_10005CFB4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateFenceEndpoint();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

unint64_t sub_10005D018()
{
  result = qword_1005A9130;
  if (!qword_1005A9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9130);
  }

  return result;
}

uint64_t sub_10005D170(uint64_t a1, uint64_t a2)
{
  v3[323] = v2;
  v3[322] = a2;
  v3[321] = a1;
  v4 = type metadata accessor for FriendshipRequestStatus();
  v3[324] = v4;
  v5 = *(v4 - 8);
  v3[325] = v5;
  v6 = *(v5 + 64) + 15;
  v3[326] = swift_task_alloc();
  v3[327] = swift_task_alloc();
  v7 = type metadata accessor for FriendshipRequestResult();
  v3[328] = v7;
  v8 = *(v7 - 8);
  v3[329] = v8;
  v9 = *(v8 + 64) + 15;
  v3[330] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v3[331] = swift_task_alloc();
  v11 = type metadata accessor for FriendshipRequest();
  v3[332] = v11;
  v12 = *(v11 - 8);
  v3[333] = v12;
  v3[334] = *(v12 + 64);
  v3[335] = swift_task_alloc();
  v3[336] = swift_task_alloc();
  v3[337] = swift_task_alloc();
  v13 = type metadata accessor for FriendshipEndpoint();
  v3[338] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[339] = swift_task_alloc();
  v15 = type metadata accessor for Handle();
  v3[340] = v15;
  v16 = *(v15 - 8);
  v3[341] = v16;
  v17 = *(v16 + 64) + 15;
  v3[342] = swift_task_alloc();
  v3[343] = swift_task_alloc();
  v3[344] = swift_task_alloc();
  v3[345] = swift_task_alloc();
  v18 = sub_10004B564(&qword_1005A91C0, &qword_1004C2700);
  v3[346] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[347] = swift_task_alloc();
  v3[348] = swift_task_alloc();
  v20 = type metadata accessor for FriendshipRequestType();
  v3[349] = v20;
  v21 = *(v20 - 8);
  v3[350] = v21;
  v22 = *(v21 + 64) + 15;
  v3[351] = swift_task_alloc();
  v3[352] = swift_task_alloc();
  v3[353] = swift_task_alloc();
  v23 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v3[354] = swift_task_alloc();
  v24 = type metadata accessor for Account();
  v3[355] = v24;
  v25 = *(v24 - 8);
  v3[356] = v25;
  v26 = *(v25 + 64) + 15;
  v3[357] = swift_task_alloc();
  v3[358] = swift_task_alloc();
  v3[359] = swift_task_alloc();
  v27 = async function pointer to daemon.getter[1];
  v28 = swift_task_alloc();
  v3[360] = v28;
  *v28 = v3;
  v28[1] = sub_10005D59C;

  return daemon.getter();
}

uint64_t sub_10005D59C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2880);
  v12 = *v1;
  v3[361] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[362] = v6;
  v7 = type metadata accessor for Daemon();
  v3[363] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100008F78(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[364] = v9;
  v10 = sub_100008F78(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_10005D77C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10005D77C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2896);
  v6 = *v2;
  v4[365] = a1;
  v4[366] = v1;

  if (v1)
  {
    v7 = v4[323];

    return _swift_task_switch(sub_10005FD40, v7, 0);
  }

  else
  {
    v8 = v4[361];

    v9 = swift_task_alloc();
    v4[367] = v9;
    *v9 = v6;
    v9[1] = sub_10005D90C;
    v10 = v4[354];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_10005D90C()
{
  v1 = *(*v0 + 2936);
  v2 = *(*v0 + 2584);
  v4 = *v0;

  return _swift_task_switch(sub_10005DA1C, v2, 0);
}

uint64_t sub_10005DA1C()
{
  v120 = v0;
  v1 = v0[356];
  v2 = v0[355];
  v3 = v0[354];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A7EC8 == -1)
    {
LABEL_3:
      v4 = type metadata accessor for Logger();
      sub_10000A6F0(v4, qword_1005DFB18);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to send friendship offer!", v7, 2u);
      }

      v8 = v0[365];

      sub_10005A48C();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();

LABEL_12:
      v23 = v0[359];
      v24 = v0[358];
      v25 = v0[357];
      v26 = v0[354];
      v27 = v0[353];
      v28 = v0[352];
      v29 = v0[351];
      v30 = v0[348];
      v31 = v0[347];
      v32 = v0[345];
      v90 = v0[344];
      v91 = v0[343];
      v93 = v0[342];
      v96 = v0[339];
      v97 = v0[337];
      v100 = v0[336];
      v103 = v0[335];
      v106 = v0[331];
      v108 = v0[330];
      v111 = v0[327];
      v114 = v0[326];

      v33 = v0[1];

      return v33();
    }

LABEL_34:
    swift_once();
    goto LABEL_3;
  }

  v10 = v0[350];
  v11 = v0[349];
  v12 = v0[348];
  v13 = v0[322];
  (*(v1 + 32))(v0[359], v3, v2);
  FriendshipRequest.requestType.getter();
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    sub_100002CE0(v0[348], &qword_1005A91C0, &qword_1004C2700);
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing request Type (invite or offer)", v17, 2u);
    }

    v18 = v0[365];
    v19 = v0[359];
    v20 = v0[356];
    v21 = v0[355];

    sub_10005A48C();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();

    (*(v20 + 8))(v19, v21);
    goto LABEL_12;
  }

  v35 = v0[322];
  (*(v0[350] + 32))(v0[353], v0[348], v0[349]);
  v36 = FriendshipRequest.toHandles.getter();
  v37 = v36;
  v115 = *(v36 + 16);
  if (v115)
  {
    v38 = 0;
    v39 = v0[333];
    v104 = (v39 + 16);
    v109 = v0[341];
    v98 = (v39 + 8);
    v101 = (v109 + 8);
    v112 = v36;
    while (v38 < *(v37 + 16))
    {
      v117 = v38;
      v45 = *(v109 + 16);
      v45(v0[345], v37 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v38, v0[340]);
      if (qword_1005A7EC8 != -1)
      {
        swift_once();
      }

      v46 = v0[345];
      v47 = v0[344];
      v48 = v0[340];
      v49 = v0[337];
      v50 = v0[332];
      v51 = v0[322];
      v52 = type metadata accessor for Logger();
      sub_10000A6F0(v52, qword_1005DFB18);
      (*v104)(v49, v51, v50);
      v45(v47, v46, v48);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v0[347];
        v56 = v0[346];
        v57 = v0[344];
        v94 = v0[340];
        v58 = v0[337];
        v59 = v0[332];
        v60 = swift_slowAlloc();
        v119[0] = swift_slowAlloc();
        *v60 = 136446723;
        FriendshipRequest.requestType.getter();
        v61 = String.init<A>(describing:)();
        v63 = v62;
        (*v98)(v58, v59);
        v64 = sub_10000D01C(v61, v63, v119);

        *(v60 + 4) = v64;
        *(v60 + 12) = 2160;
        *(v60 + 14) = 1752392040;
        *(v60 + 22) = 2081;
        v65 = Handle.identifier.getter();
        v67 = v66;
        v44 = *v101;
        (*v101)(v57, v94);
        v68 = sub_10000D01C(v65, v67, v119);

        *(v60 + 24) = v68;
        _os_log_impl(&_mh_execute_header, v53, v54, "sendFriendshipOffer type: %{public}s\nto handle: %{private,mask.hash}s", v60, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v40 = v0[344];
        v41 = v0[340];
        v42 = v0[337];
        v43 = v0[332];

        v44 = *v101;
        (*v101)(v40, v41);
        (*v98)(v42, v43);
      }

      v38 = v117 + 1;
      v44(v0[345], v0[340]);
      v37 = v112;
      if (v115 == v117 + 1)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_24:
  v69 = v0[359];
  v70 = v0[358];
  v105 = v0[357];
  v71 = v0[356];
  v72 = v0[355];
  v95 = v72;
  v99 = v0[353];
  v73 = v0[352];
  v118 = v0[351];
  v74 = v0[350];
  v75 = v0[349];
  v92 = v75;
  v89 = v0[339];
  v116 = v0[336];
  v102 = v0[333];
  v107 = v0[322];
  v110 = v0[332];

  v113 = *(v71 + 16);
  v113(v70, v69, v72);
  (*(v74 + 104))(v73, enum case for FriendshipRequestType.offer(_:), v75);
  v76 = static FriendshipRequestType.== infix(_:_:)();
  v77 = *(v74 + 8);
  v0[368] = v77;
  v0[369] = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v77(v73, v75);
  sub_10006CDC8(v89);
  v78 = (v76 & 1) == 0;
  if (v76)
  {
    v79 = 0x636F4C726566666FLL;
  }

  else
  {
    v79 = 0x657469766E69;
  }

  if (v78)
  {
    v80 = 0xE600000000000000;
  }

  else
  {
    v80 = 0xED00006E6F697461;
  }

  v81 = URLComponents.path.modify();
  v82._countAndFlagsBits = v79;
  v82._object = v80;
  String.append(_:)(v82);

  v81(v0 + 317, 0);
  v83 = *(v71 + 8);
  v0[370] = v83;
  v0[371] = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v83(v70, v95);
  v113(v105, v69, v95);
  v84 = *(v102 + 16);
  v0[372] = v84;
  v0[373] = (v102 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v84(v116, v107, v110);
  (*(v74 + 16))(v118, v99, v92);
  v85 = swift_task_alloc();
  v0[374] = v85;
  *v85 = v0;
  v85[1] = sub_10005E484;
  v86 = v0[357];
  v87 = v0[351];
  v88 = v0[336];

  return sub_100152934(v86, v88, v87);
}

uint64_t sub_10005E484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 2992);
  v6 = *v4;
  v6[375] = a1;
  v6[376] = a2;
  v6[377] = a3;
  v6[378] = v3;

  if (v3)
  {
    v7 = v6[323];

    return _swift_task_switch(sub_10005E904, v7, 0);
  }

  else
  {
    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v6[379] = v9;
    *v9 = v6;
    v9[1] = sub_10005E5FC;

    return daemon.getter();
  }
}

uint64_t sub_10005E5FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 3032);
  v5 = *v1;
  v3[380] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[381] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100008F78(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_10005E7B0;
  v10 = v3[364];
  v11 = v3[363];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10005E7B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3048);
  v6 = *v2;
  *(v4 + 3056) = a1;
  *(v4 + 3064) = v1;

  v7 = *(v3 + 3040);
  v8 = *(v3 + 2584);

  if (v1)
  {
    v9 = sub_10005FEDC;
  }

  else
  {
    v9 = sub_10005EAF8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10005E904()
{
  v1 = v0[371];
  v2 = v0[370];
  v3 = v0[369];
  v4 = v0[368];
  v5 = v0[365];
  v6 = v0[359];
  v7 = v0[355];
  v8 = v0[353];
  v9 = v0[349];
  v10 = v0[339];

  sub_10006DE80(v10, type metadata accessor for FriendshipEndpoint);
  v4(v8, v9);
  v2(v6, v7);
  v34 = v0[378];
  v11 = v0[359];
  v12 = v0[358];
  v13 = v0[357];
  v14 = v0[354];
  v15 = v0[353];
  v16 = v0[352];
  v17 = v0[351];
  v18 = v0[348];
  v19 = v0[347];
  v20 = v0[345];
  v23 = v0[344];
  v24 = v0[343];
  v25 = v0[342];
  v26 = v0[339];
  v27 = v0[337];
  v28 = v0[336];
  v29 = v0[335];
  v30 = v0[331];
  v31 = v0[330];
  v32 = v0[327];
  v33 = v0[326];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10005EAF8()
{
  v1 = v0[377];
  v2 = v0[376];
  v3 = v0[375];
  v4 = v0[359];
  v5 = v0[339];
  v0[305] = v0[338];
  v0[306] = sub_100008F78(&qword_1005A9160, type metadata accessor for FriendshipEndpoint);
  v6 = sub_10000331C(v0 + 302);
  sub_10006DEE0(v5, v6, type metadata accessor for FriendshipEndpoint);
  v0[310] = &type metadata for FriendshipServerRequest;
  v0[311] = sub_10006DC3C();
  v0[307] = v3;
  v0[308] = v2;
  v0[309] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[315] = type metadata accessor for BasicCredential();
  v0[316] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 312);
  BasicCredential.init(username:password:)();
  v7 = swift_task_alloc();
  v0[384] = v7;
  *v7 = v0;
  v7[1] = sub_10005ECAC;
  v8 = v0[382];

  return sub_1001D7B78((v0 + 2), (v0 + 302), (v0 + 307), (v0 + 312));
}

uint64_t sub_10005ECAC()
{
  v2 = *v1;
  v3 = (*v1)[384];
  v7 = *v1;
  (*v1)[385] = v0;

  if (v0)
  {
    v4 = v2[323];
    sub_100002CE0((v2 + 312), &qword_1005A9138, &qword_1004C2600);
    v5 = sub_100060104;
  }

  else
  {
    v4 = v2[323];
    sub_100002CE0((v2 + 312), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 307);
    sub_100004984(v2 + 302);
    v5 = sub_10005EE08;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005EE08()
{
  v189 = v0;
  if (qword_1005A7EC8 != -1)
  {
LABEL_49:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);
  sub_10006DAC8((v0 + 2), (v0 + 102));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_10005D06C((v0 + 2));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v188[0] = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DEB20, v188);
    *(v4 + 12) = 2080;
    sub_10006DAC8((v0 + 2), (v0 + 202));
    v5 = sub_100176040();
    v7 = v6;
    sub_10005D06C((v0 + 2));
    v8 = sub_10000D01C(v5, v7, v188);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "CommandManager %{public}s response: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[30];
  if (v9 == 1)
  {
    sub_10005D06C((v0 + 2));
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v188[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DEB20, v188);
      _os_log_impl(&_mh_execute_header, v10, v11, "CommandManager %{public}s with invalidResponse", v12, 0xCu);
      sub_100004984(v13);
    }

    v14 = v0[382];
    v15 = v0[377];
    v16 = v0[376];
    v17 = v0[375];
    v175 = v0[370];
    v181 = v0[371];
    v169 = v0[369];
    v18 = v0[365];
    v163 = v0[359];
    v152 = v0[368];
    v157 = v0[355];
    v19 = v0[353];
    v20 = v0[349];
    v21 = v0[339];
    sub_10006DC90();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();

    sub_10001A794(v16, v15);
    sub_10006DE80(v21, type metadata accessor for FriendshipEndpoint);
    v152(v19, v20);
    v175(v163, v157);
    v23 = v0[359];
    v24 = v0[358];
    v25 = v0[357];
    v26 = v0[354];
    v27 = v0[353];
    v28 = v0[352];
    v29 = v0[351];
    v30 = v0[348];
    v31 = v0[347];
    v32 = v0[345];
    v132 = v0[344];
    v134 = v0[343];
    v138 = v0[342];
    v142 = v0[339];
    v147 = v0[337];
    v153 = v0[336];
    v158 = v0[335];
    v164 = v0[331];
    v170 = v0[330];
    v176 = v0[327];
    v182 = v0[326];

    v33 = v0[1];
    goto LABEL_40;
  }

  v34 = v0[322];
  v35 = v0[31];
  v125 = v0[34];

  v36 = FriendshipRequest.toHandles.getter();
  v159 = *(v36 + 16);
  v186 = v0;
  if (!v159)
  {
LABEL_36:
    v85 = v0[373];
    v160 = v0[372];
    v86 = v186[335];
    v144 = v186[334];
    v87 = v186[333];
    v88 = v186[332];
    v89 = v186[331];
    v149 = v89;
    v172 = v186[329];
    v178 = v186[328];
    v183 = v186[330];
    v90 = v186[323];
    v91 = v186[322];
    v166 = v186[321];

    v92 = type metadata accessor for TaskPriority();
    (*(*(v92 - 8) + 56))(v89, 1, 1, v92);
    v160(v86, v91, v88);
    v93 = sub_100008F78(&qword_1005A90C0, type metadata accessor for CommandManager);
    v94 = (*(v87 + 80) + 40) & ~*(v87 + 80);
    v95 = swift_allocObject();
    *(v95 + 2) = v90;
    *(v95 + 3) = v93;
    *(v95 + 4) = v90;
    (*(v87 + 32))(&v95[v94], v86, v88);
    memcpy(&v95[(v144 + v94 + 7) & 0xFFFFFFFFFFFFFFF8], v186 + 2, 0x320uLL);
    swift_retain_n();
    sub_1001D7F30(0, 0, v149, &unk_1004C2710, v95);

    v160(v86, v91, v88);
    v96 = v186;
    FriendshipRequestResult.init(request:result:requestIds:)();
    (*(v172 + 16))(v183, v166, v178);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    v99 = os_log_type_enabled(v97, v98);
    v161 = v186[377];
    v145 = v186[375];
    v150 = v186[376];
    v100 = v186[371];
    v101 = v186[370];
    v179 = v186[368];
    v140 = v186[365];
    v102 = v186[359];
    v184 = v186[355];
    v173 = v186[353];
    v167 = v186[349];
    v155 = v186[339];
    v103 = v186[330];
    v104 = v186[329];
    v105 = v186[328];
    if (v99)
    {
      v131 = v186[382];
      v136 = v186[369];
      v106 = swift_slowAlloc();
      v188[0] = swift_slowAlloc();
      *v106 = 136446466;
      *(v106 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DEB20, v188);
      *(v106 + 12) = 2080;
      sub_100008F78(&qword_1005A91D8, &type metadata accessor for FriendshipRequestResult);
      v128 = v101;
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v108;
      (*(v104 + 8))(v103, v105);
      v110 = sub_10000D01C(v107, v109, v188);

      *(v106 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v97, v98, "CommandManager %{public}s result: %s", v106, 0x16u);
      swift_arrayDestroy();
      v96 = v186;

      sub_10001A794(v150, v161);
      sub_10006DE80(v155, type metadata accessor for FriendshipEndpoint);
      v179(v173, v167);
      v128(v102, v184);
    }

    else
    {

      sub_10001A794(v150, v161);
      (*(v104 + 8))(v103, v105);
      sub_10006DE80(v155, type metadata accessor for FriendshipEndpoint);
      v179(v173, v167);
      v101(v102, v184);
    }

    v111 = v96[359];
    v112 = v96[358];
    v113 = v96[357];
    v114 = v96[354];
    v115 = v96[353];
    v116 = v96[352];
    v117 = v96[351];
    v118 = v96[348];
    v119 = v96[347];
    v120 = v96[345];
    v137 = v96[344];
    v141 = v96[343];
    v146 = v96[342];
    v151 = v96[339];
    v156 = v96[337];
    v162 = v96[336];
    v168 = v96[335];
    v174 = v96[331];
    v180 = v96[330];
    v185 = v96[327];
    v187 = v96[326];

    v33 = v96[1];
LABEL_40:

    return v33();
  }

  v37 = 0;
  v38 = v0[341];
  v39 = v0[325];
  v148 = v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v124 = enum case for FriendshipRequestStatus.pending(_:);
  v143 = (v39 + 104);
  v123 = enum case for FriendshipRequestStatus.success(_:);
  v126 = enum case for FriendshipRequestError.commandFailed(_:);
  v129 = enum case for FriendshipRequestStatus.failure(_:);
  v127 = enum case for FriendshipRequestError.invalidResponse(_:);
  v177 = (v39 + 32);
  v154 = v38;
  v135 = (v38 + 8);
  v139 = v39;
  v40 = _swiftEmptyDictionarySingleton;
  v130 = v36;
  v133 = v9;
  while (1)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v42 = v0[343];
    v43 = v0[342];
    v44 = v0[340];
    v45 = *(v154 + 72);
    v46 = *(v154 + 16);
    v46(v42, v148 + v45 * v37, v44);
    v46(v43, v42, v44);
    if (!v9)
    {
      goto LABEL_23;
    }

    v47 = v0[343];
    v48 = Handle.identifier.getter();
    if (!*(v9 + 16))
    {

LABEL_23:
      v57 = v0[327];
      v58 = type metadata accessor for FriendshipRequestError();
      (*(*(v58 - 8) + 104))(v57, v127, v58);
LABEL_24:
      v59 = v129;
      goto LABEL_25;
    }

    v50 = sub_1000110D8(v48, v49);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_23;
    }

    v53 = *(*(v9 + 56) + v50);
    if ((v53 - 3) < 0x12 || v53 == 0)
    {
      v55 = v0[327];
      v56 = type metadata accessor for FriendshipRequestError();
      (*(*(v56 - 8) + 104))(v55, v126, v56);
      goto LABEL_24;
    }

    v59 = v124;
    if (v53 == 1)
    {
      v59 = v123;
    }

LABEL_25:
    v60 = v0[342];
    v61 = v0[327];
    v62 = v0[326];
    v63 = v0[324];
    (*v143)(v61, v59, v63);
    v64 = *v177;
    (*v177)(v62, v61, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v188[0] = v40;
    v66 = sub_1001FD93C(v60);
    v68 = v40[2];
    v69 = (v67 & 1) == 0;
    v70 = __OFADD__(v68, v69);
    v71 = v68 + v69;
    if (v70)
    {
      goto LABEL_47;
    }

    v72 = v67;
    v171 = v46;
    v165 = v45;
    if (v40[3] < v71)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v84 = v66;
      sub_100202BBC();
      v66 = v84;
      v40 = v188[0];
    }

LABEL_31:
    v75 = v0[343];
    v76 = v0[342];
    v77 = v0[340];
    v78 = v0[326];
    v79 = v0[324];
    if (v72)
    {
      (*(v139 + 40))(v40[7] + *(v139 + 72) * v66, v0[326], v0[324]);
      v41 = *v135;
      (*v135)(v76, v77);
      v41(v75, v77);
    }

    else
    {
      v40[(v66 >> 6) + 8] |= 1 << v66;
      v80 = v66;
      v171(v40[6] + v66 * v165, v76, v77);
      v64(v40[7] + *(v139 + 72) * v80, v78, v79);
      v81 = *v135;
      (*v135)(v76, v77);
      v81(v75, v77);
      v82 = v40[2];
      v70 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v70)
      {
        goto LABEL_48;
      }

      v40[2] = v83;
    }

    ++v37;
    v36 = v130;
    v9 = v133;
    v0 = v186;
    if (v159 == v37)
    {
      goto LABEL_36;
    }
  }

  v73 = v0[342];
  sub_10022C98C(v71, isUniquelyReferenced_nonNull_native);
  v40 = v188[0];
  v66 = sub_1001FD93C(v73);
  if ((v72 & 1) == (v74 & 1))
  {
    goto LABEL_31;
  }

  v122 = v0[340];

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_10005FD40()
{
  v1 = v0[361];

  v25 = v0[366];
  v2 = v0[359];
  v3 = v0[358];
  v4 = v0[357];
  v5 = v0[354];
  v6 = v0[353];
  v7 = v0[352];
  v8 = v0[351];
  v9 = v0[348];
  v10 = v0[347];
  v11 = v0[345];
  v14 = v0[344];
  v15 = v0[343];
  v16 = v0[342];
  v17 = v0[339];
  v18 = v0[337];
  v19 = v0[336];
  v20 = v0[335];
  v21 = v0[331];
  v22 = v0[330];
  v23 = v0[327];
  v24 = v0[326];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10005FEDC()
{
  v1 = v0[377];
  v2 = v0[376];
  v3 = v0[375];
  v36 = v0[371];
  v32 = v0[369];
  v34 = v0[370];
  v4 = v0[368];
  v5 = v0[365];
  v6 = v0[359];
  v7 = v0[355];
  v8 = v0[353];
  v9 = v0[349];
  v10 = v0[339];

  sub_10001A794(v2, v1);
  sub_10006DE80(v10, type metadata accessor for FriendshipEndpoint);
  v4(v8, v9);
  v34(v6, v7);
  v37 = v0[383];
  v11 = v0[359];
  v12 = v0[358];
  v13 = v0[357];
  v14 = v0[354];
  v15 = v0[353];
  v16 = v0[352];
  v17 = v0[351];
  v18 = v0[348];
  v19 = v0[347];
  v20 = v0[345];
  v23 = v0[344];
  v24 = v0[343];
  v25 = v0[342];
  v26 = v0[339];
  v27 = v0[337];
  v28 = v0[336];
  v29 = v0[335];
  v30 = v0[331];
  v31 = v0[330];
  v33 = v0[327];
  v35 = v0[326];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100060104()
{
  v1 = v0[382];
  v2 = v0[377];
  v3 = v0[376];
  v4 = v0[375];
  v37 = v0[371];
  v33 = v0[369];
  v35 = v0[370];
  v5 = v0[368];
  v6 = v0[365];
  v31 = v0[359];
  v7 = v0[355];
  v8 = v0[353];
  v9 = v0[349];
  v10 = v0[339];

  sub_10001A794(v3, v2);
  sub_10006DE80(v10, type metadata accessor for FriendshipEndpoint);
  v5(v8, v9);
  v35(v31, v7);
  sub_100004984(v0 + 307);
  sub_100004984(v0 + 302);
  v38 = v0[385];
  v11 = v0[359];
  v12 = v0[358];
  v13 = v0[357];
  v14 = v0[354];
  v15 = v0[353];
  v16 = v0[352];
  v17 = v0[351];
  v18 = v0[348];
  v19 = v0[347];
  v20 = v0[345];
  v23 = v0[344];
  v24 = v0[343];
  v25 = v0[342];
  v26 = v0[339];
  v27 = v0[337];
  v28 = v0[336];
  v29 = v0[335];
  v30 = v0[331];
  v32 = v0[330];
  v34 = v0[327];
  v36 = v0[326];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10006034C(int a1, int a2, int a3, uint64_t a4, uint64_t a5, void *__src)
{
  v6[303] = a5;
  v6[302] = a4;
  memcpy(v6 + 2, __src, 0x320uLL);
  v8 = type metadata accessor for Date();
  v6[304] = v8;
  v9 = *(v8 - 8);
  v6[305] = v9;
  v10 = *(v9 + 64) + 15;
  v6[306] = swift_task_alloc();
  v6[307] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v6[308] = swift_task_alloc();

  return _swift_task_switch(sub_100060468, a4, 0);
}

uint64_t sub_100060468()
{
  v1 = v0[308];
  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[303];
  v5 = FriendshipRequest.toHandles.getter();
  v0[309] = v5;
  FriendshipRequest.endDate.getter();
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v6 = 2592000.0;
  }

  else
  {
    v7 = v0[307];
    v8 = v0[306];
    v9 = v0[305];
    v10 = v0[304];
    (*(v9 + 32))(v7, v0[308], v10);
    static Date.trustedNow.getter(v8);
    Date.timeIntervalSince(_:)();
    v6 = v11;
    v12 = *(v9 + 8);
    v12(v8, v10);
    v12(v7, v10);
  }

  memcpy(v0 + 202, v0 + 2, 0x320uLL);
  v13._countAndFlagsBits = (v0 + 202);
  DarwinNotification.init(name:value:)(v13, v14);
  memcpy(v0 + 102, v0 + 202, 0x320uLL);
  v15 = swift_task_alloc();
  v0[310] = v15;
  *v15 = v0;
  v15[1] = sub_10006060C;
  v16 = v0[302];

  return sub_10006DFF8(v5, (v0 + 102), v6);
}

uint64_t sub_10006060C()
{
  v1 = *(*v0 + 2480);
  v2 = *(*v0 + 2472);
  v3 = *(*v0 + 2464);
  v4 = *(*v0 + 2456);
  v5 = *(*v0 + 2448);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100060778(uint64_t a1, uint64_t a2)
{
  v3[221] = v2;
  v3[220] = a2;
  v3[219] = a1;
  v4 = type metadata accessor for FriendshipRequest();
  v3[222] = v4;
  v5 = *(v4 - 8);
  v3[223] = v5;
  v6 = *(v5 + 64) + 15;
  v3[224] = swift_task_alloc();
  v7 = *(*(type metadata accessor for RequestOrigin() - 8) + 64) + 15;
  v3[225] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A91E0, &qword_1004C2720) - 8) + 64) + 15;
  v3[226] = swift_task_alloc();
  v3[227] = swift_task_alloc();
  v9 = type metadata accessor for FriendshipRequestStatus();
  v3[228] = v9;
  v10 = *(v9 - 8);
  v3[229] = v10;
  v11 = *(v10 + 64) + 15;
  v3[230] = swift_task_alloc();
  v3[231] = swift_task_alloc();
  v3[232] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v3[233] = swift_task_alloc();
  v3[234] = swift_task_alloc();
  v13 = type metadata accessor for HandleType();
  v3[235] = v13;
  v14 = *(v13 - 8);
  v3[236] = v14;
  v15 = *(v14 + 64) + 15;
  v3[237] = swift_task_alloc();
  v3[238] = swift_task_alloc();
  v3[239] = swift_task_alloc();
  v3[240] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v3[241] = swift_task_alloc();
  v3[242] = swift_task_alloc();
  v3[243] = swift_task_alloc();
  v17 = type metadata accessor for Handle();
  v3[244] = v17;
  v18 = *(v17 - 8);
  v3[245] = v18;
  v19 = *(v18 + 64) + 15;
  v3[246] = swift_task_alloc();
  v3[247] = swift_task_alloc();
  v3[248] = swift_task_alloc();
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();
  v3[251] = swift_task_alloc();
  v3[252] = swift_task_alloc();
  v3[253] = swift_task_alloc();
  v20 = type metadata accessor for RespondToInviteEndpoint();
  v3[254] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v3[255] = swift_task_alloc();
  v22 = *(*(sub_10004B564(&qword_1005A91E8, &qword_1004D2F60) - 8) + 64) + 15;
  v3[256] = swift_task_alloc();
  v23 = type metadata accessor for FriendshipResponseToInviteType();
  v3[257] = v23;
  v24 = *(v23 - 8);
  v3[258] = v24;
  v25 = *(v24 + 64) + 15;
  v3[259] = swift_task_alloc();
  v3[260] = swift_task_alloc();
  v26 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v3[261] = swift_task_alloc();
  v27 = type metadata accessor for Account();
  v3[262] = v27;
  v28 = *(v27 - 8);
  v3[263] = v28;
  v29 = *(v28 + 64) + 15;
  v3[264] = swift_task_alloc();
  v3[265] = swift_task_alloc();
  v3[266] = swift_task_alloc();
  v30 = async function pointer to daemon.getter[1];
  v31 = swift_task_alloc();
  v3[267] = v31;
  *v31 = v3;
  v31[1] = sub_100060C94;

  return daemon.getter();
}

uint64_t sub_100060C94(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2136);
  v12 = *v1;
  v3[268] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[269] = v6;
  v7 = type metadata accessor for Daemon();
  v3[270] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100008F78(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[271] = v9;
  v10 = sub_100008F78(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_100060E74;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100060E74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2152);
  v6 = *v2;
  v4[272] = a1;
  v4[273] = v1;

  if (v1)
  {
    v7 = v4[221];

    return _swift_task_switch(sub_100065F38, v7, 0);
  }

  else
  {
    v8 = v4[268];

    v9 = swift_task_alloc();
    v4[274] = v9;
    *v9 = v6;
    v9[1] = sub_100061004;
    v10 = v4[261];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_100061004()
{
  v1 = *(*v0 + 2192);
  v2 = *(*v0 + 1768);
  v4 = *v0;

  return _swift_task_switch(sub_100061114, v2, 0);
}

uint64_t sub_100061114()
{
  v1 = v0[263];
  v2 = v0[262];
  v3 = v0[261];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to respond to invite request!", v7, 2u);
    }

    v8 = v0[272];

    sub_10006D30C();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    v10 = v0[266];
    v11 = v0[265];
    v12 = v0[264];
    v13 = v0[261];
    v14 = v0[260];
    v15 = v0[259];
    v16 = v0[256];
    v17 = v0[255];
    v18 = v0[253];
    v19 = v0[252];
    v24 = v0[251];
    v25 = v0[250];
    v26 = v0[249];
    v27 = v0[248];
    v28 = v0[247];
    v29 = v0[246];
    v30 = v0[243];
    v31 = v0[242];
    v32 = v0[241];
    v33 = v0[240];
    v34 = v0[239];
    v35 = v0[238];
    v36 = v0[237];
    v37 = v0[234];
    v38 = v0[233];
    v39 = v0[232];
    v40 = v0[231];
    v41 = v0[230];
    v42 = v0[227];
    v43 = v0[226];
    v44 = v0[225];
    v45 = v0[224];

    v20 = v0[1];

    return v20();
  }

  else
  {
    (*(v1 + 32))(v0[266], v3, v2);
    v22 = async function pointer to daemon.getter[1];
    v23 = swift_task_alloc();
    v0[275] = v23;
    *v23 = v0;
    v23[1] = sub_100061508;

    return daemon.getter();
  }
}

uint64_t sub_100061508(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2200);
  v5 = *v1;
  v3[276] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[277] = v7;
  v8 = type metadata accessor for DataManager(0);
  v3[278] = v8;
  v9 = sub_100008F78(&qword_1005A90D0, type metadata accessor for DataManager);
  v3[279] = v9;
  *v7 = v5;
  v7[1] = sub_1000616C4;
  v10 = v3[271];
  v11 = v3[270];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1000616C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2216);
  v6 = *v2;
  *(v4 + 2240) = a1;
  *(v4 + 2248) = v1;

  v7 = *(v3 + 2208);
  v8 = *(v3 + 1768);

  if (v1)
  {
    v9 = sub_100066170;
  }

  else
  {
    v9 = sub_100061818;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100061818()
{
  v1 = *(v0 + 2064);
  v2 = *(v0 + 2056);
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1760);
  FriendshipRequest.respondType.getter();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(*(v0 + 2048), &qword_1005A91E8, &qword_1004D2F60);
    if (qword_1005A7EC8 != -1)
    {
LABEL_49:
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFB18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing respond Type (accept or decline or notNow)", v8, 2u);
    }

    v9 = *(v0 + 2240);
    v10 = *(v0 + 2176);
    v11 = *(v0 + 2128);
    v12 = *(v0 + 2104);
    v13 = *(v0 + 2096);

    sub_10005A48C();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();

    (*(v12 + 8))(v11, v13);
    v15 = *(v0 + 2128);
    v16 = *(v0 + 2120);
    v17 = *(v0 + 2112);
    v18 = *(v0 + 2088);
    v19 = *(v0 + 2080);
    v20 = *(v0 + 2072);
    v21 = *(v0 + 2048);
    v22 = *(v0 + 2040);
    v23 = *(v0 + 2024);
    v24 = *(v0 + 2016);
    v140 = *(v0 + 2008);
    v142 = *(v0 + 2000);
    v144 = *(v0 + 1992);
    v146 = *(v0 + 1984);
    v148 = *(v0 + 1976);
    v150 = *(v0 + 1968);
    v152 = *(v0 + 1944);
    v154 = *(v0 + 1936);
    v156 = *(v0 + 1928);
    v158 = *(v0 + 1920);
    v160 = *(v0 + 1912);
    v162 = *(v0 + 1904);
    v164 = *(v0 + 1896);
    v166 = *(v0 + 1872);
    v168 = *(v0 + 1864);
    v170 = *(v0 + 1856);
    v172 = *(v0 + 1848);
    v175 = *(v0 + 1840);
    v178 = *(v0 + 1816);
    v181 = *(v0 + 1808);
    v184 = *(v0 + 1800);
    v187 = *(v0 + 1792);

    v25 = *(v0 + 8);
    goto LABEL_36;
  }

  v26 = *(v0 + 2128);
  v27 = *(v0 + 2120);
  v28 = *(v0 + 2104);
  v29 = *(v0 + 2096);
  v30 = *(v0 + 2080);
  v31 = *(v0 + 2072);
  v32 = *(v0 + 2064);
  v33 = *(v0 + 2056);
  v34 = *(v0 + 2040);
  v191 = *(v0 + 1760);
  (*(v32 + 32))(v30, *(v0 + 2048), v33);
  v35 = *(v28 + 16);
  *(v0 + 2256) = v35;
  *(v0 + 2264) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35(v27, v26, v29);
  (*(v32 + 16))(v31, v30, v33);
  sub_100158A7C(v27, v31);
  v36 = FriendshipRequest.toHandles.getter();
  *(v0 + 2272) = v36;
  v37 = *(v36 + 16);
  *(v0 + 2280) = v37;
  if (v37)
  {
    v38 = 0;
    v192 = v0 + 1744;
    *(v0 + 2648) = *(*(v0 + 1960) + 80);
    *(v0 + 2652) = enum case for HandleType.futureFollower(_:);
    *(v0 + 2656) = enum case for HandleType.following(_:);
    *(v0 + 2660) = enum case for FriendshipRequestError.missingServerId(_:);
    v188 = (v0 + 2664);
    *(v0 + 2664) = enum case for FriendshipRequestStatus.failure(_:);
    v39 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      *(v0 + 2320) = v39;
      *(v0 + 2312) = _swiftEmptyDictionarySingleton;
      *(v0 + 2304) = v38;
      *(v0 + 2296) = v39;
      *(v0 + 2288) = _swiftEmptyDictionarySingleton;
      v41 = *(v0 + 2272);
      if (v38 >= *(v41 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v42 = *(v0 + 2648);
      v43 = *(v0 + 2024);
      v44 = *(v0 + 1960);
      v45 = *(v0 + 1952);
      v47 = *(v44 + 16);
      v44 += 16;
      v46 = v47;
      v48 = *(v44 + 56);
      *(v0 + 2328) = v48;
      *(v0 + 2336) = v47;
      *(v0 + 2344) = v44 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v47(v43, v41 + ((v42 + 32) & ~v42) + v48 * v38, v45);
      v49 = Handle.serverID.getter();
      if (!v50)
      {
        break;
      }

      v51 = v49;
      v52 = v50;
      v46(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1744) = v39;
      v54 = sub_1000110D8(v51, v52);
      v56 = v39[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_47;
      }

      v60 = v55;
      if (v39[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = v54;
          sub_100202BF8();
          v54 = v70;
        }
      }

      else
      {
        sub_10022C9B4(v59, isUniquelyReferenced_nonNull_native);
        v61 = *v192;
        v54 = sub_1000110D8(v51, v52);
        if ((v60 & 1) != (v62 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v63 = *(v0 + 2024);
      v64 = *(v0 + 2016);
      v65 = *(v0 + 1960);
      v66 = *(v0 + 1952);
      if (v60)
      {
        v40 = v54;

        v39 = *v192;
        (*(v65 + 40))(*(*v192 + 56) + v40 * v48, v64, v66);
        (*(v65 + 8))(v63, v66);
      }

      else
      {
        v39 = *v192;
        *(*v192 + 8 * (v54 >> 6) + 64) |= 1 << v54;
        v67 = (v39[6] + 16 * v54);
        *v67 = v51;
        v67[1] = v52;
        (*(v65 + 32))(v39[7] + v54 * v48, v64, v66);
        (*(v65 + 8))(v63, v66);
        v68 = v39[2];
        v58 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v58)
        {
          goto LABEL_48;
        }

        v39[2] = v69;
      }

      v38 = *(v0 + 2304) + 1;
      if (v38 == *(v0 + 2280))
      {
        v77 = *(v0 + 2272);
        goto LABEL_26;
      }
    }

    v71 = *(v0 + 2652);
    v72 = *(v0 + 2240);
    v73 = *(v0 + 1920);
    v74 = *(v0 + 1888);
    v75 = *(v0 + 1880);
    v76 = *(v74 + 104);
    *(v0 + 2352) = v76;
    *(v0 + 2360) = (v74 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v76(v73, v71, v75);

    return _swift_task_switch(sub_1000626A4, v72, 0);
  }

  else
  {
    v188 = &enum case for FriendshipRequestStatus.failure(_:);
    v39 = _swiftEmptyDictionarySingleton;
LABEL_26:

    v78 = *v188;
    *(v0 + 2480) = v39;
    *(v0 + 2668) = v78;
    v79 = *(v0 + 1960);
    v80 = *(v0 + 1808);
    LOBYTE(v78) = *(v39 + 32);
    *(v0 + 2692) = v78;
    v81 = -1;
    v82 = -1 << v78;
    v83 = v39[8];
    if (-v82 < 64)
    {
      v81 = ~(-1 << -v82);
    }

    *(v0 + 2672) = enum case for FriendshipResponseToInviteType.decline(_:);
    *(v0 + 2676) = enum case for FriendshipRequestStatus.pending(_:);
    *(v0 + 2680) = enum case for FriendshipRequestStatus.success(_:);
    *(v0 + 2684) = enum case for FriendshipRequestError.commandFailed(_:);
    *(v0 + 2688) = enum case for FriendshipRequestError.invalidResponse(_:);
    *(v0 + 2496) = _swiftEmptyDictionarySingleton;
    *(v0 + 2488) = _swiftEmptyDictionarySingleton;
    v84 = v81 & v83;
    if (v84)
    {
      v85 = 0;
LABEL_33:
      v88 = *(v0 + 1984);
      v89 = *(v0 + 1952);
      v193 = (v84 - 1) & v84;
      v90 = __clz(__rbit64(v84)) | (v85 << 6);
      v91 = v39[7];
      v92 = (v39[6] + 16 * v90);
      v94 = *v92;
      v93 = v92[1];
      (*(v79 + 16))(v88, v91 + *(v79 + 72) * v90, v89);
      v95 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
      v96 = *(v95 + 48);
      *v80 = v94;
      *(v80 + 1) = v93;
      (*(v79 + 32))(&v80[v96], v88, v89);
      (*(*(v95 - 8) + 56))(v80, 0, 1, v95);

      v97 = v193;
      v87 = v85;
    }

    else
    {
      v86 = 0;
      v87 = ((63 - v82) >> 6) - 1;
      while (v87 != v86)
      {
        v85 = v86 + 1;
        v84 = v39[v86++ + 9];
        if (v84)
        {
          goto LABEL_33;
        }
      }

      v128 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
      (*(*(v128 - 8) + 56))(v80, 1, 1, v128);
      v97 = 0;
    }

    *(v0 + 2512) = v87;
    *(v0 + 2504) = v97;
    v98 = *(v0 + 1816);
    sub_10006DE10(*(v0 + 1808), v98);
    v99 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    if ((*(*(v99 - 8) + 48))(v98, 1, v99) == 1)
    {
      v100 = *(v0 + 2480);
      v131 = *(v0 + 2240);
      v132 = *(v0 + 2176);
      v101 = *(v0 + 2128);
      v135 = *(v0 + 2120);
      v136 = *(v0 + 2112);
      v102 = *(v0 + 2104);
      v103 = *(v0 + 2080);
      v137 = *(v0 + 2088);
      v138 = *(v0 + 2072);
      v104 = *(v0 + 2064);
      v133 = *(v0 + 2056);
      v134 = *(v0 + 2096);
      v130 = *(v0 + 2040);
      v139 = *(v0 + 2048);
      v141 = *(v0 + 2024);
      v143 = *(v0 + 2016);
      v145 = *(v0 + 2008);
      v147 = *(v0 + 2000);
      v149 = *(v0 + 1992);
      v151 = *(v0 + 1984);
      v153 = *(v0 + 1976);
      v155 = *(v0 + 1968);
      v157 = *(v0 + 1944);
      v159 = *(v0 + 1936);
      v161 = *(v0 + 1928);
      v163 = *(v0 + 1920);
      v165 = *(v0 + 1912);
      v167 = *(v0 + 1904);
      v169 = *(v0 + 1896);
      v171 = *(v0 + 1872);
      v173 = *(v0 + 1864);
      v176 = *(v0 + 1856);
      v179 = *(v0 + 1848);
      v182 = *(v0 + 1840);
      v185 = *(v0 + 1816);
      v189 = *(v0 + 1808);
      v194 = *(v0 + 1800);
      v105 = *(v0 + 1792);
      v106 = *(v0 + 1784);
      v107 = *(v0 + 1776);
      v108 = *(v0 + 1760);
      v109 = *(v0 + 1752);

      (*(v106 + 16))(v105, v108, v107);
      sub_10006D898(_swiftEmptyArrayStorage);
      FriendshipRequestResult.init(request:result:requestIds:)();

      sub_10006DE80(v130, type metadata accessor for RespondToInviteEndpoint);
      (*(v104 + 8))(v103, v133);
      (*(v102 + 8))(v101, v134);

      v25 = *(v0 + 8);
LABEL_36:

      return v25();
    }

    v180 = *(v0 + 2672);
    v110 = *(v0 + 2256);
    v111 = *(v0 + 2128);
    v112 = *(v0 + 2112);
    v113 = *(v0 + 2096);
    v174 = *(v0 + 2264);
    v177 = *(v0 + 2080);
    v114 = *(v0 + 2072);
    v115 = *(v0 + 2064);
    v116 = *(v0 + 2056);
    v117 = *(v0 + 1976);
    v118 = *(v0 + 1960);
    v119 = *(v0 + 1952);
    v120 = *(v0 + 1816);
    v183 = *(v0 + 1928);
    v186 = *(v0 + 1800);
    v121 = *(v0 + 1760);
    v195 = *v120;
    *(v0 + 2520) = *v120;
    v190 = v120[1];
    *(v0 + 2528) = v190;
    (*(v118 + 32))(v117, v120 + *(v99 + 48), v119);
    v110(v112, v111, v113);
    (*(v115 + 104))(v114, v180, v116);
    v122 = static FriendshipResponseToInviteType.== infix(_:_:)();
    v123 = *(v115 + 8);
    *(v0 + 2536) = v123;
    *(v0 + 2544) = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v123(v114, v116);
    FriendshipRequest.callerHandle.getter();
    FriendshipRequest.origin.getter();

    v124 = swift_task_alloc();
    *(v0 + 2552) = v124;
    *v124 = v0;
    v124[1] = sub_100064A20;
    v125 = *(v0 + 2112);
    v126 = *(v0 + 1928);
    v127 = *(v0 + 1800);

    return sub_1001596B0(v125, v195, v190, (v122 & 1) == 0, v126, v127);
  }
}

uint64_t sub_1000626A4()
{
  v26 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[240];
  v2 = v0[239];
  v3 = v0[236];
  v4 = v0[235];
  v5 = type metadata accessor for Logger();
  v0[296] = sub_10000A6F0(v5, qword_1005DFF18);
  v6 = *(v3 + 16);
  v0[297] = v6;
  v0[298] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[239];
  v11 = v0[236];
  v12 = v0[235];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v25);
    *(v13 + 12) = 2080;
    sub_100008F78(&qword_1005A9198, &type metadata accessor for HandleType);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v25);

    *(v13 + 14) = v18;
    *(v13 + 22) = 1026;
    *(v13 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[299] = v17;
  v19 = swift_task_alloc();
  v0[300] = v19;
  *v19 = v0;
  v19[1] = sub_10006298C;
  v20 = v0[280];
  v21 = v0[253];
  v22 = v0[240];
  v23 = v0[234];

  return sub_1001E3D9C(v23, v21, v22, 0);
}

uint64_t sub_10006298C()
{
  v1 = *(*v0 + 2400);
  v2 = *(*v0 + 2240);
  v4 = *v0;

  return _swift_task_switch(sub_100062A9C, v2, 0);
}

uint64_t sub_100062A9C()
{
  v1 = v0[234];
  v2 = type metadata accessor for Friend();
  v0[301] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[302] = v3;
  v6 = v3 + 48;
  v5 = *(v3 + 48);
  v0[303] = v5;
  v0[304] = v6 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v2) == 1)
  {
    sub_100002CE0(v1, &qword_1005A9188, &unk_1004D80D0);
    v7 = 1;
  }

  else
  {
    v8 = v0[243];
    Friend.handle.getter();
    (*(v4 + 8))(v1, v2);
    v7 = 0;
  }

  v9 = v0[299];
  v10 = v0[244];
  v11 = v0[243];
  v12 = v0[240];
  v13 = v0[235];
  v14 = v0[221];
  v15 = v0[236] + 8;
  v16 = *(v0[245] + 56);
  v0[305] = v16;
  v16(v11, v7, 1, v10);
  v0[306] = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v12, v13);

  return _swift_task_switch(sub_100062C3C, v14, 0);
}

uint64_t sub_100062C3C()
{
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v1 + 48);
  *(v0 + 2456) = v4;
  *(v0 + 2464) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005B3360, &unk_1004C6AA0);
    goto LABEL_11;
  }

  v5 = *(v1 + 32);
  v5(*(v0 + 2008), v3, v2);
  v6 = Handle.serverID.getter();
  if (!v7)
  {
    (*(*(v0 + 1960) + 8))(*(v0 + 2008), *(v0 + 1952));
LABEL_11:
    v25 = *(v0 + 2360);
    v26 = *(v0 + 2240);
    (*(v0 + 2352))(*(v0 + 1904), *(v0 + 2656), *(v0 + 1880));
    v27 = sub_100063930;
LABEL_12:
    v13 = v27;
    v14 = v26;
    v15 = 0;

    return _swift_task_switch(v13, v14, v15);
  }

  v8 = v6;
  v9 = v7;
  v10 = *(v0 + 2344);
  v11 = *(v0 + 2296);
  (*(v0 + 2336))(*(v0 + 2000), *(v0 + 2008), *(v0 + 1952));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 1736) = v11;
  v13 = sub_1000110D8(v8, v9);
  v16 = *(v11 + 16);
  v17 = (v14 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    goto LABEL_57;
  }

  v20 = v14;
  v21 = (v0 + 1736);
  if (*(*(v0 + 2296) + 24) >= v19)
  {
    v162 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = v13;
      sub_100202BF8();
      v13 = v28;
    }
  }

  else
  {
    sub_10022C9B4(v19, isUniquelyReferenced_nonNull_native);
    v22 = *v21;
    v13 = sub_1000110D8(v8, v9);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_7:

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v162 = v5;
  }

  v29 = *(v0 + 2328);
  v166 = *(v0 + 2008);
  v169 = *(v0 + 2024);
  v30 = *(v0 + 2000);
  v31 = *(v0 + 1960);
  v32 = *(v0 + 1952);
  if (v20)
  {
    v33 = v13;

    v34 = *v21;
    (*(v31 + 40))(*(v34 + 56) + v29 * v33, v30, v32);
    v35 = *(v31 + 8);
    v35(v166, v32);
    v13 = (v35)(v169, v32);
  }

  else
  {
    v34 = *v21;
    *(v34 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v36 = (*(v34 + 48) + 16 * v13);
    *v36 = v8;
    v36[1] = v9;
    v162(*(v34 + 56) + v29 * v13, v30, v32);
    v37 = *(v31 + 8);
    v37(v166, v32);
    v13 = (v37)(v169, v32);
    v38 = *(v34 + 16);
    v18 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v18)
    {
LABEL_58:
      __break(1u);
      return _swift_task_switch(v13, v14, v15);
    }

    *(v34 + 16) = v39;
  }

  v163 = *(v0 + 2288);
  v167 = *(v0 + 2312);
  v40 = *(v0 + 2304) + 1;
  if (v40 != *(v0 + 2280))
  {
    v170 = (v0 + 1744);
    while (1)
    {
      *(v0 + 2320) = v34;
      *(v0 + 2312) = v167;
      *(v0 + 2304) = v40;
      *(v0 + 2296) = v34;
      *(v0 + 2288) = v163;
      v51 = *(v0 + 2272);
      if (v40 >= *(v51 + 16))
      {
        break;
      }

      v52 = *(v0 + 2648);
      v53 = *(v0 + 2024);
      v54 = *(v0 + 1960);
      v55 = *(v0 + 1952);
      v57 = *(v54 + 16);
      v54 += 16;
      v56 = v57;
      v58 = *(v54 + 56);
      *(v0 + 2328) = v58;
      *(v0 + 2336) = v57;
      *(v0 + 2344) = v54 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v57(v53, v51 + ((v52 + 32) & ~v52) + v58 * v40, v55);
      v59 = Handle.serverID.getter();
      if (!v60)
      {
        v121 = *(v0 + 2652);
        v26 = *(v0 + 2240);
        v122 = *(v0 + 1920);
        v123 = *(v0 + 1888);
        v124 = *(v0 + 1880);
        v125 = *(v123 + 104);
        *(v0 + 2352) = v125;
        *(v0 + 2360) = (v123 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v125(v122, v121, v124);
        v27 = sub_1000626A4;
        goto LABEL_12;
      }

      v61 = v59;
      v62 = v60;
      v56(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952));
      v63 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1744) = v34;
      v13 = sub_1000110D8(v61, v62);
      v64 = *(v34 + 16);
      v65 = (v14 & 1) == 0;
      v18 = __OFADD__(v64, v65);
      v66 = v64 + v65;
      if (v18)
      {
        goto LABEL_55;
      }

      v67 = v14;
      if (*(v34 + 24) >= v66)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v13;
          sub_100202BF8();
          v13 = v77;
        }
      }

      else
      {
        sub_10022C9B4(v66, v63);
        v68 = *v170;
        v13 = sub_1000110D8(v61, v62);
        if ((v67 & 1) != (v69 & 1))
        {
          goto LABEL_7;
        }
      }

      v70 = *(v0 + 2024);
      v71 = *(v0 + 2016);
      v72 = *(v0 + 1960);
      v73 = *(v0 + 1952);
      if (v67)
      {
        v50 = v13;

        v34 = *v170;
        (*(v72 + 40))(*(*v170 + 56) + v50 * v58, v71, v73);
        v13 = (*(v72 + 8))(v70, v73);
      }

      else
      {
        v34 = *v170;
        *(*v170 + 8 * (v13 >> 6) + 64) |= 1 << v13;
        v74 = (*(v34 + 48) + 16 * v13);
        *v74 = v61;
        v74[1] = v62;
        (*(v72 + 32))(*(v34 + 56) + v13 * v58, v71, v73);
        v13 = (*(v72 + 8))(v70, v73);
        v75 = *(v34 + 16);
        v18 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v18)
        {
          goto LABEL_56;
        }

        *(v34 + 16) = v76;
      }

      v40 = *(v0 + 2304) + 1;
      if (v40 == *(v0 + 2280))
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_23:
  v41 = *(v0 + 2272);

  v42 = *(v0 + 2664);
  *(v0 + 2480) = v34;
  *(v0 + 2668) = v42;
  v43 = *(v0 + 1960);
  v44 = *(v0 + 1808);
  LOBYTE(v42) = *(v34 + 32);
  *(v0 + 2692) = v42;
  v45 = -1;
  v46 = -1 << v42;
  v47 = *(v34 + 64);
  if (-v46 < 64)
  {
    v45 = ~(-1 << -v46);
  }

  *(v0 + 2672) = enum case for FriendshipResponseToInviteType.decline(_:);
  *(v0 + 2676) = enum case for FriendshipRequestStatus.pending(_:);
  *(v0 + 2680) = enum case for FriendshipRequestStatus.success(_:);
  *(v0 + 2684) = enum case for FriendshipRequestError.commandFailed(_:);
  *(v0 + 2688) = enum case for FriendshipRequestError.invalidResponse(_:);
  *(v0 + 2496) = v167;
  *(v0 + 2488) = v163;
  v48 = v45 & v47;
  if (v48)
  {
    v49 = 0;
LABEL_44:
    v80 = *(v0 + 1984);
    v81 = *(v0 + 1952);
    v171 = (v48 - 1) & v48;
    v82 = __clz(__rbit64(v48)) | (v49 << 6);
    v83 = *(v34 + 56);
    v84 = (*(v34 + 48) + 16 * v82);
    v86 = *v84;
    v85 = v84[1];
    (*(v43 + 16))(v80, v83 + *(v43 + 72) * v82, v81);
    v87 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    v88 = *(v87 + 48);
    *v44 = v86;
    *(v44 + 1) = v85;
    (*(v43 + 32))(&v44[v88], v80, v81);
    (*(*(v87 - 8) + 56))(v44, 0, 1, v87);

    v89 = v171;
    v79 = v49;
  }

  else
  {
    v78 = 0;
    v79 = ((63 - v46) >> 6) - 1;
    while (v79 != v78)
    {
      v49 = v78 + 1;
      v48 = *(v34 + 72 + 8 * v78++);
      if (v48)
      {
        goto LABEL_44;
      }
    }

    v126 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    (*(*(v126 - 8) + 56))(v44, 1, 1, v126);
    v89 = 0;
  }

  *(v0 + 2512) = v79;
  *(v0 + 2504) = v89;
  v90 = *(v0 + 1816);
  sub_10006DE10(*(v0 + 1808), v90);
  v91 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
  if ((*(*(v91 - 8) + 48))(v90, 1, v91) == 1)
  {
    v92 = *(v0 + 2480);
    v128 = *(v0 + 2240);
    v129 = *(v0 + 2176);
    v93 = *(v0 + 2128);
    v132 = *(v0 + 2120);
    v133 = *(v0 + 2112);
    v94 = *(v0 + 2104);
    v95 = *(v0 + 2080);
    v134 = *(v0 + 2088);
    v135 = *(v0 + 2072);
    v96 = *(v0 + 2064);
    v130 = *(v0 + 2056);
    v131 = *(v0 + 2096);
    v127 = *(v0 + 2040);
    v136 = *(v0 + 2048);
    v137 = *(v0 + 2024);
    v138 = *(v0 + 2016);
    v139 = *(v0 + 2008);
    v140 = *(v0 + 2000);
    v141 = *(v0 + 1992);
    v142 = *(v0 + 1984);
    v143 = *(v0 + 1976);
    v144 = *(v0 + 1968);
    v145 = *(v0 + 1944);
    v146 = *(v0 + 1936);
    v147 = *(v0 + 1928);
    v148 = *(v0 + 1920);
    v149 = *(v0 + 1912);
    v150 = *(v0 + 1904);
    v151 = *(v0 + 1896);
    v152 = *(v0 + 1872);
    v153 = *(v0 + 1864);
    v154 = *(v0 + 1856);
    v156 = *(v0 + 1848);
    v158 = *(v0 + 1840);
    v160 = *(v0 + 1816);
    v164 = *(v0 + 1808);
    v172 = *(v0 + 1800);
    v97 = *(v0 + 1792);
    v98 = *(v0 + 1784);
    v99 = *(v0 + 1776);
    v100 = *(v0 + 1760);
    v101 = *(v0 + 1752);

    (*(v98 + 16))(v97, v100, v99);
    sub_10006D898(_swiftEmptyArrayStorage);
    FriendshipRequestResult.init(request:result:requestIds:)();

    sub_10006DE80(v127, type metadata accessor for RespondToInviteEndpoint);
    (*(v96 + 8))(v95, v130);
    (*(v94 + 8))(v93, v131);

    v102 = *(v0 + 8);

    return v102();
  }

  else
  {
    v159 = *(v0 + 2672);
    v103 = *(v0 + 2256);
    v104 = *(v0 + 2128);
    v105 = *(v0 + 2112);
    v106 = *(v0 + 2096);
    v155 = *(v0 + 2264);
    v157 = *(v0 + 2080);
    v107 = *(v0 + 2072);
    v108 = *(v0 + 2064);
    v109 = *(v0 + 2056);
    v110 = *(v0 + 1976);
    v111 = *(v0 + 1960);
    v112 = *(v0 + 1952);
    v113 = *(v0 + 1816);
    v161 = *(v0 + 1928);
    v165 = *(v0 + 1800);
    v114 = *(v0 + 1760);
    v173 = *v113;
    *(v0 + 2520) = *v113;
    v168 = v113[1];
    *(v0 + 2528) = v168;
    (*(v111 + 32))(v110, v113 + *(v91 + 48), v112);
    v103(v105, v104, v106);
    (*(v108 + 104))(v107, v159, v109);
    v115 = static FriendshipResponseToInviteType.== infix(_:_:)();
    v116 = *(v108 + 8);
    *(v0 + 2536) = v116;
    *(v0 + 2544) = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v116(v107, v109);
    FriendshipRequest.callerHandle.getter();
    FriendshipRequest.origin.getter();

    v117 = swift_task_alloc();
    *(v0 + 2552) = v117;
    *v117 = v0;
    v117[1] = sub_100064A20;
    v118 = *(v0 + 2112);
    v119 = *(v0 + 1928);
    v120 = *(v0 + 1800);

    return sub_1001596B0(v118, v173, v168, (v115 & 1) == 0, v119, v120);
  }
}

uint64_t sub_100063930()
{
  v22 = v0;
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2368);
  (*(v0 + 2376))(*(v0 + 1896), *(v0 + 1904), *(v0 + 1880));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 2448);
  v7 = *(v0 + 2392);
  v8 = *(v0 + 1896);
  v9 = *(v0 + 1880);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136446722;
    *(v10 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v21);
    *(v10 + 12) = 2080;
    sub_100008F78(&qword_1005A9198, &type metadata accessor for HandleType);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v7(v8, v9);
    v14 = sub_10000D01C(v11, v13, &v21);

    *(v10 + 14) = v14;
    *(v10 + 22) = 1026;
    *(v10 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v10, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v7(v8, v9);
  }

  v15 = swift_task_alloc();
  *(v0 + 2472) = v15;
  *v15 = v0;
  v15[1] = sub_100063B90;
  v16 = *(v0 + 2240);
  v17 = *(v0 + 2024);
  v18 = *(v0 + 1904);
  v19 = *(v0 + 1864);

  return sub_1001E3D9C(v19, v17, v18, 0);
}

uint64_t sub_100063B90()
{
  v1 = *(*v0 + 2472);
  v2 = *(*v0 + 2240);
  v4 = *v0;

  return _swift_task_switch(sub_100063CA0, v2, 0);
}

uint64_t sub_100063CA0()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2408);
  v3 = *(v0 + 1864);
  if ((*(v0 + 2424))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9188, &unk_1004D80D0);
    v4 = 1;
  }

  else
  {
    v5 = *(v0 + 2416);
    v6 = *(v0 + 1936);
    Friend.handle.getter();
    (*(v5 + 8))(v3, v2);
    v4 = 0;
  }

  v7 = *(v0 + 2448);
  v8 = *(v0 + 2392);
  v9 = *(v0 + 1904);
  v10 = *(v0 + 1880);
  v11 = *(v0 + 1768);
  v12 = *(v0 + 1960) + 56;
  (*(v0 + 2440))(*(v0 + 1936), v4, 1, *(v0 + 1952));
  v8(v9, v10);

  return _swift_task_switch(sub_100063DC4, v11, 0);
}

uint64_t sub_100063DC4()
{
  v1 = *(v0 + 2464);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1936);
  if ((*(v0 + 2456))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005B3360, &unk_1004C6AA0);
  }

  else
  {
    (*(*(v0 + 1960) + 32))(*(v0 + 1992), v3, v2);
    v4 = Handle.serverID.getter();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = *(v0 + 2344);
      v9 = *(v0 + 2296);
      v10 = *(v0 + 2024);
      v11 = *(v0 + 1992);
      v12 = *(v0 + 1984);
      v13 = *(v0 + 1960);
      v14 = *(v0 + 1952);
      (*(v0 + 2336))(v12, v11, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100452778(v12, v6, v7, isUniquelyReferenced_nonNull_native);

      v16 = *(v13 + 8);
      v16(v11, v14);
      v17 = (v16)(v10, v14);
      v20 = v9;
      v161 = *(v0 + 2288);
      v165 = *(v0 + 2312);
      v21 = v9;
      goto LABEL_7;
    }

    (*(*(v0 + 1960) + 8))(*(v0 + 1992), *(v0 + 1952));
  }

  v22 = *(v0 + 2288);
  v23 = *(v0 + 2664);
  v24 = *(v0 + 2660);
  v25 = *(v0 + 2024);
  v26 = *(v0 + 1960);
  v166 = *(v0 + 1952);
  v27 = *(v0 + 1856);
  v28 = *(v0 + 1848);
  v29 = *(v0 + 1832);
  v30 = *(v0 + 1824);
  v31 = type metadata accessor for FriendshipRequestError();
  (*(*(v31 - 8) + 104))(v27, v24, v31);
  (*(v29 + 104))(v27, v23, v30);
  (*(v29 + 32))(v28, v27, v30);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100452724(v28, v25, v32);
  v17 = (*(v26 + 8))(v25, v166);
  v21 = *(v0 + 2320);
  v20 = *(v0 + 2296);
  v161 = v22;
  v165 = v22;
LABEL_7:
  v33 = *(v0 + 2304) + 1;
  if (v33 != *(v0 + 2280))
  {
    v43 = (v0 + 1744);
    while (1)
    {
      *(v0 + 2320) = v21;
      *(v0 + 2312) = v165;
      *(v0 + 2304) = v33;
      *(v0 + 2296) = v20;
      *(v0 + 2288) = v161;
      v45 = *(v0 + 2272);
      if (v33 >= *(v45 + 16))
      {
        break;
      }

      v46 = *(v0 + 2648);
      v47 = *(v0 + 2024);
      v48 = *(v0 + 1960);
      v49 = *(v0 + 1952);
      v51 = *(v48 + 16);
      v48 += 16;
      v50 = v51;
      v52 = *(v48 + 56);
      *(v0 + 2328) = v52;
      *(v0 + 2336) = v51;
      *(v0 + 2344) = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v51(v47, v45 + ((v46 + 32) & ~v46) + v52 * v33, v49);
      v53 = Handle.serverID.getter();
      if (!v54)
      {
        v117 = *(v0 + 2652);
        v118 = *(v0 + 2240);
        v119 = *(v0 + 1920);
        v120 = *(v0 + 1888);
        v121 = *(v0 + 1880);
        v122 = *(v120 + 104);
        *(v0 + 2352) = v122;
        *(v0 + 2360) = (v120 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v122(v119, v117, v121);
        v17 = sub_1000626A4;
        v18 = v118;
        v19 = 0;

        return _swift_task_switch(v17, v18, v19);
      }

      v55 = v53;
      v56 = v54;
      v50(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952));
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1744) = v20;
      v17 = sub_1000110D8(v55, v56);
      v58 = *(v20 + 16);
      v59 = (v18 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_45;
      }

      v62 = v18;
      if (*(v20 + 24) >= v61)
      {
        if ((v57 & 1) == 0)
        {
          v72 = v17;
          sub_100202BF8();
          v17 = v72;
        }
      }

      else
      {
        sub_10022C9B4(v61, v57);
        v63 = *v43;
        v17 = sub_1000110D8(v55, v56);
        if ((v62 & 1) != (v64 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v65 = *(v0 + 2024);
      v66 = *(v0 + 2016);
      v67 = *(v0 + 1960);
      v68 = *(v0 + 1952);
      if (v62)
      {
        v44 = v17;

        v21 = *v43;
        (*(v67 + 40))(*(*v43 + 56) + v44 * v52, v66, v68);
        v17 = (*(v67 + 8))(v65, v68);
      }

      else
      {
        v21 = *v43;
        *(*v43 + 8 * (v17 >> 6) + 64) |= 1 << v17;
        v69 = (*(v21 + 48) + 16 * v17);
        *v69 = v55;
        v69[1] = v56;
        (*(v67 + 32))(*(v21 + 56) + v17 * v52, v66, v68);
        v17 = (*(v67 + 8))(v65, v68);
        v70 = *(v21 + 16);
        v60 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v60)
        {
          goto LABEL_46;
        }

        *(v21 + 16) = v71;
      }

      v33 = *(v0 + 2304) + 1;
      v20 = v21;
      if (v33 == *(v0 + 2280))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return _swift_task_switch(v17, v18, v19);
  }

LABEL_8:
  v34 = *(v0 + 2272);

  v35 = *(v0 + 2664);
  *(v0 + 2480) = v21;
  *(v0 + 2668) = v35;
  v36 = *(v0 + 1960);
  v37 = *(v0 + 1808);
  LOBYTE(v35) = *(v21 + 32);
  *(v0 + 2692) = v35;
  v38 = -1;
  v39 = -1 << v35;
  v40 = *(v21 + 64);
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  *(v0 + 2672) = enum case for FriendshipResponseToInviteType.decline(_:);
  *(v0 + 2676) = enum case for FriendshipRequestStatus.pending(_:);
  *(v0 + 2680) = enum case for FriendshipRequestStatus.success(_:);
  *(v0 + 2684) = enum case for FriendshipRequestError.commandFailed(_:);
  *(v0 + 2688) = enum case for FriendshipRequestError.invalidResponse(_:);
  *(v0 + 2496) = v165;
  *(v0 + 2488) = v161;
  v41 = v38 & v40;
  if (v41)
  {
    v42 = 0;
LABEL_29:
    v75 = *(v0 + 1984);
    v76 = *(v0 + 1952);
    v162 = (v41 - 1) & v41;
    v77 = __clz(__rbit64(v41)) | (v42 << 6);
    v78 = *(v21 + 56);
    v79 = (*(v21 + 48) + 16 * v77);
    v81 = *v79;
    v80 = v79[1];
    (*(v36 + 16))(v75, v78 + *(v36 + 72) * v77, v76);
    v82 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    v83 = *(v82 + 48);
    *v37 = v81;
    *(v37 + 1) = v80;
    (*(v36 + 32))(&v37[v83], v75, v76);
    (*(*(v82 - 8) + 56))(v37, 0, 1, v82);

    v84 = v162;
    v74 = v42;
  }

  else
  {
    v73 = 0;
    v74 = ((63 - v39) >> 6) - 1;
    while (v74 != v73)
    {
      v42 = v73 + 1;
      v41 = *(v21 + 72 + 8 * v73++);
      if (v41)
      {
        goto LABEL_29;
      }
    }

    v123 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    (*(*(v123 - 8) + 56))(v37, 1, 1, v123);
    v84 = 0;
  }

  *(v0 + 2512) = v74;
  *(v0 + 2504) = v84;
  v85 = *(v0 + 1816);
  sub_10006DE10(*(v0 + 1808), v85);
  v86 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
  if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
  {
    v87 = *(v0 + 2480);
    v125 = *(v0 + 2240);
    v126 = *(v0 + 2176);
    v88 = *(v0 + 2128);
    v129 = *(v0 + 2120);
    v130 = *(v0 + 2112);
    v89 = *(v0 + 2104);
    v90 = *(v0 + 2080);
    v131 = *(v0 + 2088);
    v132 = *(v0 + 2072);
    v91 = *(v0 + 2064);
    v127 = *(v0 + 2056);
    v128 = *(v0 + 2096);
    v124 = *(v0 + 2040);
    v133 = *(v0 + 2048);
    v134 = *(v0 + 2024);
    v135 = *(v0 + 2016);
    v136 = *(v0 + 2008);
    v137 = *(v0 + 2000);
    v138 = *(v0 + 1992);
    v139 = *(v0 + 1984);
    v140 = *(v0 + 1976);
    v141 = *(v0 + 1968);
    v142 = *(v0 + 1944);
    v143 = *(v0 + 1936);
    v144 = *(v0 + 1928);
    v145 = *(v0 + 1920);
    v146 = *(v0 + 1912);
    v147 = *(v0 + 1904);
    v148 = *(v0 + 1896);
    v149 = *(v0 + 1872);
    v150 = *(v0 + 1864);
    v151 = *(v0 + 1856);
    v153 = *(v0 + 1848);
    v155 = *(v0 + 1840);
    v157 = *(v0 + 1816);
    v159 = *(v0 + 1808);
    v163 = *(v0 + 1800);
    v92 = *(v0 + 1792);
    v93 = *(v0 + 1784);
    v94 = *(v0 + 1776);
    v95 = *(v0 + 1760);
    v96 = *(v0 + 1752);

    (*(v93 + 16))(v92, v95, v94);
    sub_10006D898(_swiftEmptyArrayStorage);
    FriendshipRequestResult.init(request:result:requestIds:)();

    sub_10006DE80(v124, type metadata accessor for RespondToInviteEndpoint);
    (*(v91 + 8))(v90, v127);
    (*(v89 + 8))(v88, v128);

    v97 = *(v0 + 8);

    return v97();
  }

  else
  {
    v156 = *(v0 + 2672);
    v99 = *(v0 + 2256);
    v100 = *(v0 + 2128);
    v101 = *(v0 + 2112);
    v102 = *(v0 + 2096);
    v152 = *(v0 + 2264);
    v154 = *(v0 + 2080);
    v103 = *(v0 + 2072);
    v104 = *(v0 + 2064);
    v105 = *(v0 + 2056);
    v106 = *(v0 + 1976);
    v107 = *(v0 + 1960);
    v108 = *(v0 + 1952);
    v109 = *(v0 + 1816);
    v158 = *(v0 + 1928);
    v160 = *(v0 + 1800);
    v110 = *(v0 + 1760);
    v167 = *v109;
    *(v0 + 2520) = *v109;
    v164 = v109[1];
    *(v0 + 2528) = v164;
    (*(v107 + 32))(v106, v109 + *(v86 + 48), v108);
    v99(v101, v100, v102);
    (*(v104 + 104))(v103, v156, v105);
    v111 = static FriendshipResponseToInviteType.== infix(_:_:)();
    v112 = *(v104 + 8);
    *(v0 + 2536) = v112;
    *(v0 + 2544) = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v112(v103, v105);
    FriendshipRequest.callerHandle.getter();
    FriendshipRequest.origin.getter();

    v113 = swift_task_alloc();
    *(v0 + 2552) = v113;
    *v113 = v0;
    v113[1] = sub_100064A20;
    v114 = *(v0 + 2112);
    v115 = *(v0 + 1928);
    v116 = *(v0 + 1800);

    return sub_1001596B0(v114, v167, v164, (v111 & 1) == 0, v115, v116);
  }
}

uint64_t sub_100064A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 2552);
  v6 = *v4;
  v6[320] = a1;
  v6[321] = a2;
  v6[322] = a3;
  v6[323] = v3;

  if (v3)
  {
    v7 = v6[316];
    v8 = v6[312];
    v9 = v6[221];

    return _swift_task_switch(sub_100064EB0, v9, 0);
  }

  else
  {
    v10 = async function pointer to daemon.getter[1];
    v11 = swift_task_alloc();
    v6[324] = v11;
    *v11 = v6;
    v11[1] = sub_100064BB0;

    return daemon.getter();
  }
}

uint64_t sub_100064BB0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2592);
  v5 = *v1;
  v3[325] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[326] = v7;
  *v7 = v5;
  v7[1] = sub_100064D3C;
  v8 = v3[279];
  v9 = v3[278];
  v10 = v3[271];
  v11 = v3[270];

  return ActorServiceDaemon.getService<A>()(v11, v9, v10, v8);
}

uint64_t sub_100064D3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2608);
  v6 = *v2;
  v4[327] = a1;
  v4[328] = v1;

  v7 = v3[325];
  if (v1)
  {
    v8 = v4[316];
    v9 = v4[312];
    v10 = v4[221];

    v11 = sub_1000663CC;
    v12 = v10;
  }

  else
  {
    v13 = v4[221];

    v11 = sub_100065194;
    v12 = v13;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100064EB0()
{
  v1 = v0[310];
  v2 = v0[280];
  v3 = v0[272];
  v46 = v0[266];
  v48 = v0[318];
  v4 = v0[263];
  v42 = v0[262];
  v44 = v0[317];
  v5 = v0[260];
  v6 = v0[257];
  v7 = v0[255];
  v8 = v0[247];
  v9 = v0[245];
  v10 = v0[244];

  (*(v9 + 8))(v8, v10);
  sub_10006DE80(v7, type metadata accessor for RespondToInviteEndpoint);
  v44(v5, v6);
  (*(v4 + 8))(v46, v42);
  v49 = v0[323];
  v11 = v0[266];
  v12 = v0[265];
  v13 = v0[264];
  v14 = v0[261];
  v15 = v0[260];
  v16 = v0[259];
  v17 = v0[256];
  v18 = v0[255];
  v19 = v0[253];
  v20 = v0[252];
  v23 = v0[251];
  v24 = v0[250];
  v25 = v0[249];
  v26 = v0[248];
  v27 = v0[247];
  v28 = v0[246];
  v29 = v0[243];
  v30 = v0[242];
  v31 = v0[241];
  v32 = v0[240];
  v33 = v0[239];
  v34 = v0[238];
  v35 = v0[237];
  v36 = v0[234];
  v37 = v0[233];
  v38 = v0[232];
  v39 = v0[231];
  v40 = v0[230];
  v41 = v0[227];
  v43 = v0[226];
  v45 = v0[225];
  v47 = v0[224];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100065194()
{
  v1 = v0[322];
  v2 = v0[321];
  v3 = v0[320];
  v4 = v0[266];
  v5 = v0[255];
  v0[205] = v0[254];
  v0[206] = sub_100008F78(&qword_1005A91F8, type metadata accessor for RespondToInviteEndpoint);
  v6 = sub_10000331C(v0 + 202);
  sub_10006DEE0(v5, v6, type metadata accessor for RespondToInviteEndpoint);
  v0[210] = &type metadata for RespondToInviteRequest;
  v0[211] = sub_10006DF48();
  v0[207] = v3;
  v0[208] = v2;
  v0[209] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[215] = type metadata accessor for BasicCredential();
  v0[216] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 212);
  BasicCredential.init(username:password:)();
  v7 = swift_task_alloc();
  v0[329] = v7;
  *v7 = v0;
  v7[1] = sub_100065348;
  v8 = v0[327];

  return sub_1001D7B78((v0 + 2), (v0 + 202), (v0 + 207), (v0 + 212));
}

uint64_t sub_100065348()
{
  v2 = *v1;
  v3 = (*v1)[329];
  v11 = *v1;
  (*v1)[330] = v0;

  if (v0)
  {
    v4 = v2[316];
    v5 = v2[312];
    v6 = v2[221];

    sub_100002CE0((v2 + 212), &qword_1005A9138, &qword_1004C2600);

    v7 = sub_1000666D4;
    v8 = v6;
  }

  else
  {
    v9 = v2[221];
    sub_100002CE0((v2 + 212), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 207);
    sub_100004984(v2 + 202);
    v7 = sub_1000654C8;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000654C8()
{
  v132 = v0;
  (*(*(v0 + 1960) + 16))(*(v0 + 1968), *(v0 + 1976), *(v0 + 1952));
  if (*(v0 + 240) == 1)
  {
    v1 = *(v0 + 2688);
LABEL_9:
    v4 = *(v0 + 1840);
    v5 = type metadata accessor for FriendshipRequestError();
    (*(*(v5 - 8) + 104))(v4, v1, v5);
    v6 = 2668;
    goto LABEL_10;
  }

  v2 = *(v0 + 256);
  v3 = (v2 - 3) < 0x12 || v2 == 0;
  if (v3)
  {
    v1 = *(v0 + 2684);
    goto LABEL_9;
  }

  v3 = v2 == 1;
  v6 = 2680;
  if (!v3)
  {
    v6 = 2676;
  }

LABEL_10:
  v7 = *(v0 + 2488);
  v8 = *(v0 + 1968);
  v9 = *(v0 + 1960);
  v10 = *(v0 + 1952);
  v11 = *(v0 + 1856);
  v12 = *(v0 + 1840);
  v13 = *(v0 + 1832);
  v14 = *(v0 + 1824);
  (*(v13 + 104))(v12, *(v0 + v6), v14);
  (*(v13 + 32))(v11, v12, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v131[0] = v7;
  sub_100452724(v11, v8, isUniquelyReferenced_nonNull_native);
  v16 = *(v9 + 8);
  (v16)(v8, v10);
  v17 = v7;
  if (qword_1005A7EC8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v18 = *(v0 + 2528);
    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFB18);

    sub_10006DAC8(v0 + 16, v0 + 816);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    sub_10005D06C(v0 + 16);
    v22 = os_log_type_enabled(v20, v21);
    v126 = *(v0 + 2616);
    v129 = *(v0 + 2576);
    v123 = *(v0 + 2568);
    v23 = *(v0 + 2560);
    v24 = *(v0 + 2528);
    if (v22)
    {
      v25 = *(v0 + 2520);
      v116 = *(v0 + 1952);
      v119 = *(v0 + 1976);
      v26 = swift_slowAlloc();
      v131[0] = swift_slowAlloc();
      *v26 = 136446979;
      *(v26 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004DEB40, v131);
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2081;
      v27 = sub_10000D01C(v25, v24, v131);

      *(v26 + 24) = v27;
      *(v26 + 32) = 2080;
      v28 = sub_100176040();
      v30 = v29;
      sub_10005D06C(v0 + 16);
      v31 = sub_10000D01C(v28, v30, v131);

      *(v26 + 34) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "CommandManager %{public}s with\nserverId:%{private,mask.hash}s\nresponse: %s", v26, 0x2Au);
      swift_arrayDestroy();

      sub_10001A794(v123, v129);
      (v16)(v119, v116);
    }

    else
    {
      v32 = *(v0 + 1976);
      v33 = *(v0 + 1952);
      v34 = *(v0 + 2528);

      sub_10001A794(v123, v129);
      sub_10005D06C(v0 + 16);

      (v16)(v32, v33);
    }

    v16 = *(v0 + 2512);
    v35 = *(v0 + 2504);
    *(v0 + 2496) = v17;
    *(v0 + 2488) = v17;
    if (v35)
    {
      break;
    }

    v37 = ((1 << *(v0 + 2692)) + 63) >> 6;
    if (v37 <= (v16 + 1))
    {
      v38 = v16 + 1;
    }

    else
    {
      v38 = ((1 << *(v0 + 2692)) + 63) >> 6;
    }

    v39 = v38 - 1;
    while (1)
    {
      v40 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v85 = *(v0 + 1808);
        v86 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
        (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
        v45 = 0;
        goto LABEL_25;
      }

      v36 = *(v0 + 2480);
      v35 = *(v36 + 8 * v40 + 64);
      ++v16;
      if (v35)
      {
        v16 = v40;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v36 = *(v0 + 2480);
LABEL_24:
  v41 = *(v0 + 1984);
  v42 = *(v0 + 1960);
  v43 = *(v0 + 1952);
  v44 = *(v0 + 1808);
  v45 = (v35 - 1) & v35;
  v46 = __clz(__rbit64(v35)) | (v16 << 6);
  v47 = (*(v36 + 48) + 16 * v46);
  v49 = *v47;
  v48 = v47[1];
  (*(v42 + 16))(v41, *(v36 + 56) + *(v42 + 72) * v46, v43);
  v50 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
  v51 = *(v50 + 48);
  *v44 = v49;
  *(v44 + 1) = v48;
  (*(v42 + 32))(&v44[v51], v41, v43);
  (*(*(v50 - 8) + 56))(v44, 0, 1, v50);

  v39 = v16;
LABEL_25:
  *(v0 + 2512) = v39;
  *(v0 + 2504) = v45;
  v52 = *(v0 + 1816);
  sub_10006DE10(*(v0 + 1808), v52);
  v53 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
  v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
  v130 = *(v0 + 2128);
  if (v54 == 1)
  {
    v55 = *(v0 + 2480);
    v87 = *(v0 + 2240);
    v88 = *(v0 + 2176);
    v91 = *(v0 + 2120);
    v92 = *(v0 + 2112);
    v56 = *(v0 + 2104);
    v57 = *(v0 + 2080);
    v93 = *(v0 + 2088);
    v94 = *(v0 + 2072);
    v58 = *(v0 + 2064);
    v89 = *(v0 + 2056);
    v90 = *(v0 + 2096);
    v59 = *(v0 + 2040);
    v95 = *(v0 + 2048);
    v96 = *(v0 + 2024);
    v97 = *(v0 + 2016);
    v98 = *(v0 + 2008);
    v99 = *(v0 + 2000);
    v100 = *(v0 + 1992);
    v101 = *(v0 + 1984);
    v102 = *(v0 + 1976);
    v103 = *(v0 + 1968);
    v104 = *(v0 + 1944);
    v105 = *(v0 + 1936);
    v106 = *(v0 + 1928);
    v107 = *(v0 + 1920);
    v108 = *(v0 + 1912);
    v109 = *(v0 + 1904);
    v110 = *(v0 + 1896);
    v111 = *(v0 + 1872);
    v112 = *(v0 + 1864);
    v113 = *(v0 + 1856);
    v114 = *(v0 + 1848);
    v117 = *(v0 + 1840);
    v120 = *(v0 + 1816);
    v124 = *(v0 + 1808);
    v127 = *(v0 + 1800);
    v60 = *(v0 + 1792);
    v61 = *(v0 + 1784);
    v62 = *(v0 + 1776);
    v63 = *(v0 + 1760);
    v64 = *(v0 + 1752);

    (*(v61 + 16))(v60, v63, v62);
    sub_10006D898(_swiftEmptyArrayStorage);
    FriendshipRequestResult.init(request:result:requestIds:)();

    sub_10006DE80(v59, type metadata accessor for RespondToInviteEndpoint);
    (*(v58 + 8))(v57, v89);
    (*(v56 + 8))(v130, v90);

    v65 = *(v0 + 8);

    return v65();
  }

  else
  {
    v118 = *(v0 + 2672);
    v67 = *(v0 + 2264);
    v68 = *(v0 + 2256);
    v69 = *(v0 + 2112);
    v70 = *(v0 + 2096);
    v115 = *(v0 + 2080);
    v71 = *(v0 + 2072);
    v72 = *(v0 + 2064);
    v73 = *(v0 + 2056);
    v74 = *(v0 + 1976);
    v75 = *(v0 + 1960);
    v76 = *(v0 + 1952);
    v77 = *(v0 + 1816);
    v121 = *(v0 + 1928);
    v122 = *(v0 + 1800);
    v78 = *(v0 + 1760);
    v128 = *v77;
    *(v0 + 2520) = *v77;
    v125 = v77[1];
    *(v0 + 2528) = v125;
    (*(v75 + 32))(v74, v77 + *(v53 + 48), v76);
    v68(v69, v130, v70);
    (*(v72 + 104))(v71, v118, v73);
    v79 = static FriendshipResponseToInviteType.== infix(_:_:)();
    v80 = *(v72 + 8);
    *(v0 + 2536) = v80;
    *(v0 + 2544) = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v80(v71, v73);
    FriendshipRequest.callerHandle.getter();
    FriendshipRequest.origin.getter();

    v81 = swift_task_alloc();
    *(v0 + 2552) = v81;
    *v81 = v0;
    v81[1] = sub_100064A20;
    v82 = *(v0 + 2112);
    v83 = *(v0 + 1928);
    v84 = *(v0 + 1800);

    return sub_1001596B0(v82, v128, v125, (v79 & 1) == 0, v83, v84);
  }
}
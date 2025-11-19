uint64_t sub_10115D880(uint64_t a1, char a2)
{
  *(v2 + 58) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10115D8A8, a1, 0);
}

uint64_t sub_10115D8A8()
{
  v15 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 720);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v14);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 728) = v12;
    *v12 = v0;
    v12[1] = sub_10115DAF4;
    v13 = *(v0 + 58);

    return sub_100EC711C(v13);
  }
}

uint64_t sub_10115DAF4(uint64_t a1)
{
  v2 = *(*v1 + 728);
  v3 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_10118F50C, v3, 0);
}

uint64_t sub_10115DC0C(uint64_t a1, char a2, char a3)
{
  *(v3 + 59) = a3;
  *(v3 + 58) = a2;
  *(v3 + 720) = a1;
  return _swift_task_switch(sub_10115DC38, a1, 0);
}

uint64_t sub_10115DC38()
{
  v16 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 720);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v15);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 728) = v12;
    *v12 = v0;
    v12[1] = sub_10115DAF4;
    v13 = *(v0 + 59);
    v14 = *(v0 + 58);

    return sub_100EC6BE4(v14, v13);
  }
}

uint64_t sub_10115DEA8()
{
  v14 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = v0[90];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[91] = v12;
    *v12 = v0;
    v12[1] = sub_10115E0EC;

    return sub_100EC512C();
  }
}

uint64_t sub_10115E0EC(uint64_t a1)
{
  v2 = *(*v1 + 728);
  v3 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_10115E204, v3, 0);
}

unint64_t sub_10115E204()
{
  v108 = (v0 + 304);
  v109 = (v0 + 256);
  v1 = (v0 + 352);
  v104 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 736);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v106 = (v0 + 448);
  v107 = *(v0 + 736);
  v7 = -1 << *(v107 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v114 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v107 + 48) + 16 * v14);
      v16 = v15[1];
      v115 = *v15;
      sub_101010158(*(v107 + 56) + 48 * v14, v0 + 16);
      v110 = *(v0 + 16);
      v112 = *(v0 + 32);
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
      *(v0 + 64) = v110;
      *(v0 + 80) = v112;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v114 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v33;
          v34 = 2;
        }

        else
        {
          v36 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v36;
          v34 = 3;
        }

        *(v0 + 296) = v34;
      }

      else
      {
        v35 = *(v0 + 128);
        *v109 = *(v0 + 112);
        *(v0 + 272) = v35;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v109, v108);
      v37 = *(v114 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v114 + 112);
      *&v116 = v7;
      *(v114 + 112) = 0x8000000000000000;
      result = sub_100771D58(v115, v16);
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
        sub_100FE65C4(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v115, v16);
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
      sub_1010050E8();
      result = v85;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v108, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v46 = (*(v7 + 48) + 16 * result);
      *v46 = v115;
      v46[1] = v16;
      v47 = (*(v7 + 56) + 48 * result);
      v48 = *(v0 + 329);
      v49 = *(v0 + 320);
      *v47 = *v108;
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
      *(v114 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v109);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v114 + 112);

    v21 = sub_100771D58(v115, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v52 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v52;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    v105 = v2;
    if (*(v0 + 201) != 1)
    {
      v53 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v54 = *(v0 + 608);
      v113 = *(v0 + 616);
      sub_1000035D0((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v104);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v103 = v23;
    sub_10000A748(v104, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_1000035D0((v0 + 544), v24);
    v27 = *(v24 - 8);
    v98 = *(v27 + 64) + 15;
    v28 = swift_task_alloc();
    v111 = v27;
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

        v99 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v31 = *(*(v25 + 32) + 8);
        v97 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v111 + 8))(v99, v24);

        if (v97)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v100 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v59 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v100)
        {
          v101 = v30;
          if (v59 <= 64)
          {
            v96 = *(*(v25 + 24) + 16);
            v63 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v64 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v65 = *(*(v25 + 32) + 8);
            v66 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v111 + 8))(v64, v24);
            v30 = v101;

            if (v66)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v60 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v61 = *(*(v25 + 32) + 8);
          v62 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v111 + 8))(v60, v24);
          v30 = v101;

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
      v102 = v67;
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
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v71 = *(*(v25 + 32) + 8);
        v72 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v111 + 8))(v70, v24);
        v30 = v102;

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
    (*(v111 + 8))(v30, v24);

    v42 = __OFADD__(v73, v103);
    v74 = v73 + v103;
    if (v42)
    {
      goto LABEL_90;
    }

    v75 = sub_1000DF9C0();
    *(v0 + 352) = v74;
    *(v0 + 360) = v116;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v75;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v2 = v105;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v106);
    v76 = *(v114 + 112);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v114 + 112);
    *&v116 = v7;
    *(v114 + 112) = 0x8000000000000000;
    result = sub_100771D58(v115, v16);
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
      sub_100FE65C4(v81, v77);
      result = sub_100771D58(v115, v16);
      if ((v82 & 1) != (v83 & 1))
      {
LABEL_80:

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
    sub_1010050E8();
    result = v86;
    v1 = (v0 + 352);
    if (v82)
    {
LABEL_68:
      v84 = result;

      sub_10118B568(v106, *(v7 + 56) + 48 * v84);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v87 = (*(v7 + 48) + 16 * result);
    *v87 = v115;
    v87[1] = v16;
    v88 = (*(v7 + 56) + 48 * result);
    v89 = *(v0 + 473);
    v90 = *(v0 + 464);
    *v88 = *v106;
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
    *(v114 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
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

  sub_10118B5A0(v2);
  v95 = *(v0 + 736);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v94 = *(v0 + 8);
LABEL_77:

  return v94();
}

uint64_t sub_10115EEE0(uint64_t a1, char a2)
{
  *(v2 + 58) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10115EF08, a1, 0);
}

uint64_t sub_10115EF08()
{
  v15 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 720);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v14);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 728) = v12;
    *v12 = v0;
    v12[1] = sub_10115DAF4;
    v13 = *(v0 + 58);

    return sub_100EC6FEC(v13);
  }
}

uint64_t sub_10115F154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[92] = a3;
  v3[91] = a2;
  v3[90] = a1;
  return _swift_task_switch(sub_10115F180, a1, 0);
}

uint64_t sub_10115F180()
{
  v16 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = v0[90];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v15);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[93] = v12;
    *v12 = v0;
    v12[1] = sub_10115F3D0;
    v13 = v0[92];
    v14 = v0[91];

    return sub_100EC6E90(v14, v13);
  }
}

uint64_t sub_10115F3D0(uint64_t a1)
{
  v2 = *(*v1 + 744);
  v3 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 752) = a1;

  return _swift_task_switch(sub_10118F510, v3, 0);
}

uint64_t sub_10115F508()
{
  v13 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 720);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v12);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_10115F720, 0, 0);
  }
}

uint64_t sub_10115F720()
{
  v1 = *(v0 + 720);
  *(v0 + 728) = sub_100907D24(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_10115F794, v1, 0);
}

unint64_t sub_10115F794()
{
  v108 = (v0 + 304);
  v109 = (v0 + 256);
  v1 = (v0 + 352);
  v104 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 728);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v106 = (v0 + 448);
  v107 = *(v0 + 728);
  v7 = -1 << *(v107 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v114 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v107 + 48) + 16 * v14);
      v16 = v15[1];
      v115 = *v15;
      sub_101010158(*(v107 + 56) + 48 * v14, v0 + 16);
      v110 = *(v0 + 16);
      v112 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:
        v93 = *(v0 + 728);

        v94 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v110;
      *(v0 + 80) = v112;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v114 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v33;
          v34 = 2;
        }

        else
        {
          v36 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v36;
          v34 = 3;
        }

        *(v0 + 296) = v34;
      }

      else
      {
        v35 = *(v0 + 128);
        *v109 = *(v0 + 112);
        *(v0 + 272) = v35;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v109, v108);
      v37 = *(v114 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v114 + 112);
      *&v116 = v7;
      *(v114 + 112) = 0x8000000000000000;
      result = sub_100771D58(v115, v16);
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
        sub_100FE65C4(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v115, v16);
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
      sub_1010050E8();
      result = v85;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v108, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v46 = (*(v7 + 48) + 16 * result);
      *v46 = v115;
      v46[1] = v16;
      v47 = (*(v7 + 56) + 48 * result);
      v48 = *(v0 + 329);
      v49 = *(v0 + 320);
      *v47 = *v108;
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
      *(v114 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v109);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v114 + 112);

    v21 = sub_100771D58(v115, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v52 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v52;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    v105 = v2;
    if (*(v0 + 201) != 1)
    {
      v53 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v54 = *(v0 + 608);
      v113 = *(v0 + 616);
      sub_1000035D0((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v104);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v103 = v23;
    sub_10000A748(v104, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_1000035D0((v0 + 544), v24);
    v27 = *(v24 - 8);
    v98 = *(v27 + 64) + 15;
    v28 = swift_task_alloc();
    v111 = v27;
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

        v99 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v31 = *(*(v25 + 32) + 8);
        v97 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v111 + 8))(v99, v24);

        if (v97)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v100 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v59 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v100)
        {
          v101 = v30;
          if (v59 <= 64)
          {
            v96 = *(*(v25 + 24) + 16);
            v63 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v64 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v65 = *(*(v25 + 32) + 8);
            v66 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v111 + 8))(v64, v24);
            v30 = v101;

            if (v66)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v60 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v61 = *(*(v25 + 32) + 8);
          v62 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v111 + 8))(v60, v24);
          v30 = v101;

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
      v102 = v67;
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
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v71 = *(*(v25 + 32) + 8);
        v72 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v111 + 8))(v70, v24);
        v30 = v102;

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
    (*(v111 + 8))(v30, v24);

    v42 = __OFADD__(v73, v103);
    v74 = v73 + v103;
    if (v42)
    {
      goto LABEL_90;
    }

    v75 = sub_1000DF9C0();
    *(v0 + 352) = v74;
    *(v0 + 360) = v116;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v75;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v2 = v105;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v106);
    v76 = *(v114 + 112);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v114 + 112);
    *&v116 = v7;
    *(v114 + 112) = 0x8000000000000000;
    result = sub_100771D58(v115, v16);
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
      sub_100FE65C4(v81, v77);
      result = sub_100771D58(v115, v16);
      if ((v82 & 1) != (v83 & 1))
      {
LABEL_80:

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
    sub_1010050E8();
    result = v86;
    v1 = (v0 + 352);
    if (v82)
    {
LABEL_68:
      v84 = result;

      sub_10118B568(v106, *(v7 + 56) + 48 * v84);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v87 = (*(v7 + 48) + 16 * result);
    *v87 = v115;
    v87[1] = v16;
    v88 = (*(v7 + 56) + 48 * result);
    v89 = *(v0 + 473);
    v90 = *(v0 + 464);
    *v88 = *v106;
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
    *(v114 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
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

  sub_10118B5A0(v2);
  v95 = *(v0 + 728);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v94 = *(v0 + 8);
LABEL_77:

  return v94();
}

uint64_t sub_101160470(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 59) = a7;
  *(v7 + 752) = a6;
  *(v7 + 744) = a5;
  *(v7 + 736) = a4;
  *(v7 + 728) = a3;
  *(v7 + 58) = a2;
  *(v7 + 720) = a1;
  return _swift_task_switch(sub_1011604AC, a1, 0);
}

uint64_t sub_1011604AC()
{
  v13 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 720);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v12);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_1011606C4, 0, 0);
  }
}

uint64_t sub_1011606C4()
{
  v1 = *(v0 + 59);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 58);
  v7 = *(v0 + 720);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1013917A0;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x800000010137D010;
  *(v8 + 48) = v6;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0x6E774F6C61746F74;
  *(v8 + 104) = 0xEF736D6574496465;
  *(v8 + 112) = v5;
  *(v8 + 153) = 1;
  *(v8 + 160) = 0xD000000000000013;
  *(v8 + 168) = 0x800000010137D030;
  *(v8 + 176) = v4;
  *(v8 + 217) = 1;
  *(v8 + 224) = 0xD000000000000012;
  *(v8 + 232) = 0x800000010137D050;
  *(v8 + 240) = v3;
  *(v8 + 281) = 1;
  *(v8 + 288) = 0xD000000000000016;
  *(v8 + 296) = 0x800000010137D070;
  *(v8 + 304) = v2;
  *(v8 + 345) = 1;
  *(v8 + 352) = 0x664F534654557369;
  *(v8 + 360) = 0xEB00000000726566;
  *(v8 + 368) = v1;
  *(v8 + 408) = 0;
  *(v0 + 760) = sub_100907D24(v8);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_1011608B8, v7, 0);
}

unint64_t sub_1011608B8()
{
  v108 = (v0 + 304);
  v109 = (v0 + 256);
  v1 = (v0 + 352);
  v104 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 760);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v106 = (v0 + 448);
  v107 = *(v0 + 760);
  v7 = -1 << *(v107 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v114 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v107 + 48) + 16 * v14);
      v16 = v15[1];
      v115 = *v15;
      sub_101010158(*(v107 + 56) + 48 * v14, v0 + 16);
      v110 = *(v0 + 16);
      v112 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:
        v93 = *(v0 + 760);

        v94 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v110;
      *(v0 + 80) = v112;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v114 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v33;
          v34 = 2;
        }

        else
        {
          v36 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v36;
          v34 = 3;
        }

        *(v0 + 296) = v34;
      }

      else
      {
        v35 = *(v0 + 128);
        *v109 = *(v0 + 112);
        *(v0 + 272) = v35;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v109, v108);
      v37 = *(v114 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v114 + 112);
      *&v116 = v7;
      *(v114 + 112) = 0x8000000000000000;
      result = sub_100771D58(v115, v16);
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
        sub_100FE65C4(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v115, v16);
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
      sub_1010050E8();
      result = v85;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v108, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v46 = (*(v7 + 48) + 16 * result);
      *v46 = v115;
      v46[1] = v16;
      v47 = (*(v7 + 56) + 48 * result);
      v48 = *(v0 + 329);
      v49 = *(v0 + 320);
      *v47 = *v108;
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
      *(v114 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v109);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v114 + 112);

    v21 = sub_100771D58(v115, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v52 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v52;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    v105 = v2;
    if (*(v0 + 201) != 1)
    {
      v53 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v54 = *(v0 + 608);
      v113 = *(v0 + 616);
      sub_1000035D0((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v104);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v103 = v23;
    sub_10000A748(v104, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_1000035D0((v0 + 544), v24);
    v27 = *(v24 - 8);
    v98 = *(v27 + 64) + 15;
    v28 = swift_task_alloc();
    v111 = v27;
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

        v99 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v31 = *(*(v25 + 32) + 8);
        v97 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v111 + 8))(v99, v24);

        if (v97)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v100 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v59 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v100)
        {
          v101 = v30;
          if (v59 <= 64)
          {
            v96 = *(*(v25 + 24) + 16);
            v63 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v64 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v65 = *(*(v25 + 32) + 8);
            v66 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v111 + 8))(v64, v24);
            v30 = v101;

            if (v66)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v60 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v61 = *(*(v25 + 32) + 8);
          v62 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v111 + 8))(v60, v24);
          v30 = v101;

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
      v102 = v67;
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
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v71 = *(*(v25 + 32) + 8);
        v72 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v111 + 8))(v70, v24);
        v30 = v102;

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
    (*(v111 + 8))(v30, v24);

    v42 = __OFADD__(v73, v103);
    v74 = v73 + v103;
    if (v42)
    {
      goto LABEL_90;
    }

    v75 = sub_1000DF9C0();
    *(v0 + 352) = v74;
    *(v0 + 360) = v116;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v75;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v2 = v105;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v106);
    v76 = *(v114 + 112);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v114 + 112);
    *&v116 = v7;
    *(v114 + 112) = 0x8000000000000000;
    result = sub_100771D58(v115, v16);
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
      sub_100FE65C4(v81, v77);
      result = sub_100771D58(v115, v16);
      if ((v82 & 1) != (v83 & 1))
      {
LABEL_80:

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
    sub_1010050E8();
    result = v86;
    v1 = (v0 + 352);
    if (v82)
    {
LABEL_68:
      v84 = result;

      sub_10118B568(v106, *(v7 + 56) + 48 * v84);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v87 = (*(v7 + 48) + 16 * result);
    *v87 = v115;
    v87[1] = v16;
    v88 = (*(v7 + 56) + 48 * result);
    v89 = *(v0 + 473);
    v90 = *(v0 + 464);
    *v88 = *v106;
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
    *(v114 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
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

  sub_10118B5A0(v2);
  v95 = *(v0 + 760);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v94 = *(v0 + 8);
LABEL_77:

  return v94();
}

uint64_t sub_101161594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[92] = a3;
  v3[91] = a2;
  v3[90] = a1;
  return _swift_task_switch(sub_1011615C0, a1, 0);
}

uint64_t sub_1011615C0()
{
  v16 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = v0[90];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v15);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[93] = v12;
    *v12 = v0;
    v12[1] = sub_101161810;
    v13 = v0[92];
    v14 = v0[91];

    return sub_100EC6D34(v14, v13);
  }
}

uint64_t sub_101161810(uint64_t a1)
{
  v2 = *(*v1 + 744);
  v3 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 752) = a1;

  return _swift_task_switch(sub_101161928, v3, 0);
}

unint64_t sub_101161928()
{
  v108 = (v0 + 304);
  v109 = (v0 + 256);
  v1 = (v0 + 352);
  v104 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 752);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v106 = (v0 + 448);
  v107 = *(v0 + 752);
  v7 = -1 << *(v107 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v114 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v107 + 48) + 16 * v14);
      v16 = v15[1];
      v115 = *v15;
      sub_101010158(*(v107 + 56) + 48 * v14, v0 + 16);
      v110 = *(v0 + 16);
      v112 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:
        v93 = *(v0 + 752);

        v94 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v110;
      *(v0 + 80) = v112;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v114 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v33;
          v34 = 2;
        }

        else
        {
          v36 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v36;
          v34 = 3;
        }

        *(v0 + 296) = v34;
      }

      else
      {
        v35 = *(v0 + 128);
        *v109 = *(v0 + 112);
        *(v0 + 272) = v35;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v109, v108);
      v37 = *(v114 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v114 + 112);
      *&v116 = v7;
      *(v114 + 112) = 0x8000000000000000;
      result = sub_100771D58(v115, v16);
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
        sub_100FE65C4(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v115, v16);
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
      sub_1010050E8();
      result = v85;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v108, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v46 = (*(v7 + 48) + 16 * result);
      *v46 = v115;
      v46[1] = v16;
      v47 = (*(v7 + 56) + 48 * result);
      v48 = *(v0 + 329);
      v49 = *(v0 + 320);
      *v47 = *v108;
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
      *(v114 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v109);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v114 + 112);

    v21 = sub_100771D58(v115, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v52 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v52;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    v105 = v2;
    if (*(v0 + 201) != 1)
    {
      v53 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v54 = *(v0 + 608);
      v113 = *(v0 + 616);
      sub_1000035D0((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v104);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v103 = v23;
    sub_10000A748(v104, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_1000035D0((v0 + 544), v24);
    v27 = *(v24 - 8);
    v98 = *(v27 + 64) + 15;
    v28 = swift_task_alloc();
    v111 = v27;
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

        v99 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v31 = *(*(v25 + 32) + 8);
        v97 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v111 + 8))(v99, v24);

        if (v97)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v100 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v59 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v100)
        {
          v101 = v30;
          if (v59 <= 64)
          {
            v96 = *(*(v25 + 24) + 16);
            v63 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v64 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v65 = *(*(v25 + 32) + 8);
            v66 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v111 + 8))(v64, v24);
            v30 = v101;

            if (v66)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v60 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v61 = *(*(v25 + 32) + 8);
          v62 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v111 + 8))(v60, v24);
          v30 = v101;

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
      v102 = v67;
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
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v71 = *(*(v25 + 32) + 8);
        v72 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v111 + 8))(v70, v24);
        v30 = v102;

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
    (*(v111 + 8))(v30, v24);

    v42 = __OFADD__(v73, v103);
    v74 = v73 + v103;
    if (v42)
    {
      goto LABEL_90;
    }

    v75 = sub_1000DF9C0();
    *(v0 + 352) = v74;
    *(v0 + 360) = v116;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v75;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v2 = v105;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v106);
    v76 = *(v114 + 112);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v114 + 112);
    *&v116 = v7;
    *(v114 + 112) = 0x8000000000000000;
    result = sub_100771D58(v115, v16);
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
      sub_100FE65C4(v81, v77);
      result = sub_100771D58(v115, v16);
      if ((v82 & 1) != (v83 & 1))
      {
LABEL_80:

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
    sub_1010050E8();
    result = v86;
    v1 = (v0 + 352);
    if (v82)
    {
LABEL_68:
      v84 = result;

      sub_10118B568(v106, *(v7 + 56) + 48 * v84);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v87 = (*(v7 + 48) + 16 * result);
    *v87 = v115;
    v87[1] = v16;
    v88 = (*(v7 + 56) + 48 * result);
    v89 = *(v0 + 473);
    v90 = *(v0 + 464);
    *v88 = *v106;
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
    *(v114 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
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

  sub_10118B5A0(v2);
  v95 = *(v0 + 752);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v94 = *(v0 + 8);
LABEL_77:

  return v94();
}

uint64_t sub_101162604(uint64_t a1, uint64_t a2)
{
  v3[92] = v2;
  v3[91] = a2;
  v3[90] = a1;
  return _swift_task_switch(sub_10116262C, v2, 0);
}

uint64_t sub_10116262C()
{
  v17 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[92];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = v0[92];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v16);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
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
    v13[1] = sub_1011628D0;
    v14 = v0[91];

    return v15();
  }
}

uint64_t sub_1011628D0(uint64_t a1)
{
  v2 = *(*v1 + 744);
  v3 = *(*v1 + 736);
  v5 = *v1;
  *(*v1 + 752) = a1;

  return _swift_task_switch(sub_1011629E8, v3, 0);
}

unint64_t sub_1011629E8()
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
      sub_101010158(*(v105 + 56) + 48 * v14, v0 + 16);
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
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v32 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v32;
          v33 = 2;
        }

        else
        {
          v35 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
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
      sub_1010100EC(v107, v106);
      v36 = *(v112 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v112 + 112);
      *&v114 = v7;
      *(v112 + 112) = 0x8000000000000000;
      result = sub_100771D58(v113, v16);
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
        sub_100FE65C4(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v113, v16);
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
      sub_1010050E8();
      result = v86;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v106, *(v7 + 56) + 48 * v12);
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
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v107);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v112 + 112);

    v21 = sub_100771D58(v113, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_24;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
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
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v54 = *(v0 + 608);
      v111 = *(v0 + 616);
      sub_1000035D0((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v102);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v99 = v23;
    sub_10000A748(v102, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_1000035D0((v0 + 544), v24);
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
        sub_1000DF9C0();
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
        sub_1000DF9C0();
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
        sub_1000DF9C0();
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

    v76 = sub_1000DF9C0();
    *(v0 + 352) = v75;
    *(v0 + 360) = v114;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v76;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v2 = v103;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v104);
    v77 = *(v112 + 112);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v112 + 112);
    *&v114 = v7;
    *(v112 + 112) = 0x8000000000000000;
    result = sub_100771D58(v113, v16);
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
      sub_100FE65C4(v82, v78);
      result = sub_100771D58(v113, v16);
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
    sub_1010050E8();
    result = v87;
    v1 = (v0 + 352);
    if (v83)
    {
LABEL_68:
      v85 = result;

      sub_10118B568(v104, *(v7 + 56) + 48 * v85);
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
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
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

  sub_10118B5A0(v2);
  v96 = *(v0 + 752);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v95 = *(v0 + 8);
LABEL_77:

  return v95();
}

unint64_t sub_101163670()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v58 = v54 - v8;
  v9 = __chkstk_darwin(v7);
  v60 = v54 - v10;
  __chkstk_darwin(v9);
  v12 = v54 - v11;
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v59 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v54 - v18;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  v21 = [objc_allocWithZone(NSDate) init];
  [v21 timeIntervalSince1970];
  v23 = v22;

  *(v20 + 56) = &type metadata for Double;
  *(v20 + 64) = &protocol witness table for Double;
  *(v20 + 32) = v23;
  v24 = String.init(format:_:)();
  v26 = v25;
  v27 = sub_1000DF96C();
  *&v63 = v24;
  *(&v63 + 1) = v26;
  v64 = &type metadata for String;
  v65 = v27;
  v66 = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = &_swiftEmptyDictionarySingleton;
  sub_100FFC070(&v63, 0x6D695468636F7065, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v29 = v62;
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v30 = *(qword_10177CEA0 + 24);

  AnyCurrentValuePublisher.value.getter();

  LOBYTE(v63) = v63 == 1;
  v66 = 0;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v29;
  sub_100FFC070(&v63, 0x69766544654D7369, 0xEA00000000006563, v31);
  v32 = v62;
  v33 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000D2A70(v1 + v33, v12, &qword_101696CA8, &qword_10138B5E0);
  v34 = v14[6];
  if (v34(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &qword_101696CA8, &qword_10138B5E0);
    return v32;
  }

  v55 = v32;
  v56 = v19;
  v57 = v6;
  v35 = v14[4];
  v54[1] = v14 + 4;
  v54[0] = v35;
  v35(v19, v12, v13);
  v36 = v13;
  v37 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime;
  swift_beginAccess();
  v38 = v60;
  sub_1000D2A70(v1 + v37, v60, &qword_101696CA8, &qword_10138B5E0);
  v39 = v14;
  v40 = v34(v38, 1, v36);
  sub_10000B3A8(v38, &qword_101696CA8, &qword_10138B5E0);
  if (v40 == 1)
  {
    v41 = v58;
    static DispatchTime.now()();
    (v39[7])(v41, 0, 1, v36);
    swift_beginAccess();
    sub_1000DFA14(v41, v1 + v37);
    swift_endAccess();
  }

  v42 = v57;
  sub_1000D2A70(v1 + v37, v57, &qword_101696CA8, &qword_10138B5E0);
  v43 = v34(v42, 1, v36);
  v44 = v36;
  if (v43 == 1)
  {
    (v39[1])(v56, v36);
    sub_10000B3A8(v42, &qword_101696CA8, &qword_10138B5E0);
    return v55;
  }

  v45 = v59;
  (v54[0])(v59, v42, v36);
  v46 = DispatchTime.uptimeNanoseconds.getter();
  v47 = v56;
  result = DispatchTime.uptimeNanoseconds.getter();
  v49 = v55;
  if (v46 >= result)
  {
    v50 = (v46 - result) / 1000000000.0;
    v51 = sub_1000DFA84();
    *&v63 = v50;
    v64 = &type metadata for Double;
    v65 = v51;
    v66 = 3;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v49;
    sub_100FFC070(&v63, 0x6E6F697461727564, 0xE800000000000000, v52);
    v53 = v39[1];
    v53(v45, v44);
    v53(v47, v44);
    return v61;
  }

  __break(1u);
  return result;
}

uint64_t sub_101163C90()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_identifier;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime, &qword_101696CA8, &qword_10138B5E0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime, &qword_101696CA8, &qword_10138B5E0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_101163D88()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_101163E78();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_101163E78()
{
  if (!qword_1016C93A0)
  {
    type metadata accessor for DispatchTime();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016C93A0);
    }
  }
}

uint64_t sub_101163ED0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C6D0);
  sub_1000076D4(v0, qword_10177C6D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_101163F50()
{
  result = sub_101129930(_swiftEmptyArrayStorage);
  qword_10177C6E8 = result;
  return result;
}

uint64_t sub_101163F78(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_101163F98, v1, 0);
}

uint64_t sub_101163F98()
{
  v18 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = 0x7365547265646E75;
  *(v0 + 48) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 104))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177C6D0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SPAnalytics not submitting analytics during unit tests.", v4, 2u);
LABEL_15:

LABEL_16:

    v14 = *(v0 + 8);

    return v14();
  }

  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 56);
  v6 = qword_10177C6E8;
  v7 = *(v5 + 120);
  *(v0 + 72) = v7;
  v8 = *(v5 + 128);
  *(v0 + 80) = v8;
  if (sub_10111EACC(v7, v8, v6))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 56);
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C6D0);

    v2 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v2, v11))
    {
      goto LABEL_16;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1000136BC(v7, v8, &v17);
    _os_log_impl(&_mh_execute_header, v2, v11, "AnalyticsPublisher not submitting disallowed analytics event %{public}s to CA.", v12, 0xCu);
    sub_100007BAC(v13);

    goto LABEL_15;
  }

  v16 = *(v0 + 56);

  return _swift_task_switch(sub_1011642E8, v16, 0);
}

uint64_t sub_1011642E8()
{
  v1 = *(v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_10116439C;
  v3 = *(v0 + 56);

  return sub_101169D7C(v3, v3);
}

uint64_t sub_10116439C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 56);
  v8 = *v1;

  v5 = *(v2 + 56);
  if (v0)
  {

    v6 = sub_10118F508;
  }

  else
  {
    v6 = sub_1011644DC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011644DC()
{
  v1 = v0[7];
  v2 = v0[8];
  swift_beginAccess();
  v0[12] = *(v1 + 112);

  return _swift_task_switch(sub_101164564, v2, 0);
}

uint64_t sub_101164564()
{
  v18 = v0;
  sub_10116AD10(v0[12]);

  if (qword_101695278 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C6D0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(v6, v5, &v17);
    *(v7 + 12) = 2080;
    sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
    v8 = Dictionary.description.getter();
    v10 = sub_1000136BC(v8, v9, &v17);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Analytics: %{public}s, %s.", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[9];
  v12 = v0[10];
  v13 = String._bridgeToObjectiveC()();
  sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1011647FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v6 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10116489C, a4, 0);
}

uint64_t sub_10116489C()
{
  v1 = v0[5];
  v2 = v0[6];
  static DispatchTime.now()();
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v2, v1 + v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_101164980(int a1)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23[-v10];
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent;
  v13 = type metadata accessor for AnalyticsEvent(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v17 = v4[7];
  v17(&v16[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime], 1, 1, v3);
  v17(&v16[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v16 + 15) = 0xD000000000000027;
  *(v16 + 16) = 0x800000010137CE60;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;

  sub_10025EDD4(0, 0, v11, &unk_101409948, v19);

  *(v2 + v12) = v16;
  static DispatchTime.now()();
  v20 = v4[4];
  v20(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginVerifyPairing, v7, v3);
  static DispatchTime.now()();
  v20(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_endVerifyPairing, v7, v3);
  static DispatchTime.now()();
  v20(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginFinalize, v7, v3);
  static DispatchTime.now()();
  v20(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_endFinalize, v7, v3);
  static DispatchTime.now()();
  v20(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginAck, v7, v3);
  type metadata accessor for Transaction();
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  *(v21 + 24) = v24;

  static Transaction.asyncTask(name:block:)();

  return v2;
}

uint64_t sub_101164D20(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101164D44, 0, 0);
}

uint64_t sub_101164D44()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_101164D70, v1, 0);
}

uint64_t sub_101164D70()
{
  sub_10114C918(*(v0 + 24), *(v0 + 32), 0x7645726961507369, 0xEB00000000746E65);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101164E08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_101164E28, 0, 0);
}

uint64_t sub_101164E28()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  v0[4] = v2;
  v3 = v1;

  return _swift_task_switch(sub_101164EA4, v2, 0);
}

uint64_t sub_101164EA4()
{
  v1 = *(v0 + 24);
  sub_10117F97C(*(v0 + 32), v1);

  v2 = *(v0 + 8);

  return v2();
}

id sub_101164F24(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000013;
  *(inited + 16) = xmmword_10138B360;
  *(inited + 40) = 0x8000000101356E70;
  result = [a1 systemVersion];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 48) = result;
  *(inited + 56) = 0;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x8000000101356E90;
  result = [a1 systemVersion];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *(inited + 80) = result;
  *(inited + 88) = 0;
  strcpy((inited + 96), "batteryLevel");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(a1, "batteryLevel")}];
  *(inited + 120) = 0;
  v9 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 isInternalBuild];

  if (v11)
  {
    v12 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v3 + 8))(v6, v2);
    v13 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v9;
    sub_100FFC418(v13, 0, 0x6544646572696170, 0xEE00444965636976, isUniquelyReferenced_nonNull_native);
    v9 = v19;
    v15 = [a1 serialNumber];
    if (v15)
    {
      v16 = v15;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v9;
      sub_100FFC418(v16, 0, 0xD000000000000018, 0x8000000101350650, v17);
      return v19;
    }
  }

  return v9;
}

uint64_t sub_101165260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_10116528C, 0, 0);
}

uint64_t sub_10116528C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  v0[9] = v4;

  return _swift_task_switch(sub_10116532C, v4, 0);
}

uint64_t sub_10116532C()
{
  sub_10118138C(v0[9], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1011653DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000101356E70;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x8000000101356E90;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  v6 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (a4)
  {
    v7 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v7, 0, 0xD000000000000015, 0x800000010137CE00, isUniquelyReferenced_nonNull_native);
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 isInternalBuild];

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v11, 0, 0xD000000000000018, 0x8000000101350650, v12);
  }

  return v6;
}

uint64_t sub_1011655F4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_101165620, v1, 0);
}

uint64_t sub_101165620()
{
  sub_10114AED8(*(v0 + 24), &off_10160D3D8, qword_10160D3F8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011656A4(uint64_t a1)
{
  v1[8] = a1;
  v2 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for DispatchTime();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1011657A8, 0, 0);
}

uint64_t sub_1011657A8()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_1011657D4, v1, 0);
}

uint64_t sub_1011657D4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000D2A70(v1 + v3, v2, &qword_101696CA8, &qword_10138B5E0);

  return _swift_task_switch(sub_10116587C, 0, 0);
}

uint64_t sub_10116587C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_101696CA8, &qword_10138B5E0);
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[9];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[8];
    (*(v2 + 32))(v0[13], v3, v1);

    return _swift_task_switch(sub_10116599C, v9, 0);
  }
}

uint64_t sub_10116599C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginVerifyPairing;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  return _swift_task_switch(sub_101165A50, 0, 0);
}

uint64_t sub_101165A50()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = DispatchTime.uptimeNanoseconds.getter();
  v6 = *(v4 + 8);
  v0[15] = v6;
  v0[16] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = DispatchTime.uptimeNanoseconds.getter();
  if (v5 < v7)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[14];
    v0[17] = v5 - v7;
    v7 = sub_101165B0C;
    v9 = 0;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_101165B0C()
{
  v1 = *(v0 + 136);
  sub_10114E540(*(v0 + 112));

  return _swift_task_switch(sub_101165BA0, 0, 0);
}

uint64_t sub_101165BA0()
{
  v1 = *(v0 + 128);
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_101165C24()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x800000010137CE20;
  *(inited + 48) = Double._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
  return v1;
}

uint64_t sub_101165D2C(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101165D50, 0, 0);
}

uint64_t sub_101165D50()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_101165D7C, v1, 0);
}

uint64_t sub_101165D7C()
{
  v1 = *(v0 + 24);
  sub_10114FF40(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_101165E28(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101165E4C, 0, 0);
}

uint64_t sub_101165E4C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_101165E78, v1, 0);
}

uint64_t sub_101165E78()
{
  v1 = *(v0 + 24);
  sub_101151A94(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_101165F24(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101165F48, 0, 0);
}

uint64_t sub_101165F48()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_101165F74, v1, 0);
}

uint64_t sub_101165F74()
{
  v1 = *(v0 + 24);
  sub_1011535E8(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_101166020(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a3;
  v24[2] = a4;
  v7 = v4;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v24 - v14;
  static DispatchTime.now()();
  v16 = *a1;
  swift_beginAccess();
  (*(v9 + 40))(v7 + v16, v15, v8);
  swift_endAccess();
  v17 = *(v9 + 16);
  v17(v15, v7 + v16, v8);
  v18 = DispatchTime.uptimeNanoseconds.getter();
  v19 = *(v9 + 8);
  v19(v15, v8);
  v20 = *a2;
  swift_beginAccess();
  v17(v13, v7 + v20, v8);
  v21 = DispatchTime.uptimeNanoseconds.getter();
  result = (v19)(v13, v8);
  if (v18 < v21)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Transaction();
    v23 = swift_allocObject();
    *(v23 + 16) = v7;
    *(v23 + 24) = (v18 - v21) / 1000000000.0;

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_101166260(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101166284, 0, 0);
}

uint64_t sub_101166284()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_1011662B0, v1, 0);
}

uint64_t sub_1011662B0()
{
  v1 = *(v0 + 24);
  sub_10115513C(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10116632C(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101166350, 0, 0);
}

uint64_t sub_101166350()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_10116637C, v1, 0);
}

uint64_t sub_10116637C()
{
  v1 = *(v0 + 24);
  sub_101156C90(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1011663F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_101166424, 0, 0);
}

uint64_t sub_101166424()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  v0[7] = v4;

  swift_errorRetain();

  return _swift_task_switch(sub_1011664C0, v4, 0);
}

uint64_t sub_1011664C0()
{
  v1 = *(v0 + 80);
  sub_101182DDC(*(v0 + 56), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 64) = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100E2C6AC;
  v6 = *(v0 + 56);

  return sub_101163F78(v6);
}

void *sub_1011665B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v46 = v4;
  while (v7)
  {
    v13 = v9;
LABEL_11:
    v14 = (v13 << 10) | (16 * __clz(__rbit64(v7)));
    v15 = (*(a1 + 48) + v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = (*(a1 + 56) + v14);
    v19 = *v18;
    v20 = v18[1];

    Duration.milliseconds.getter();
    v48.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_100771D58(v17, v16);
    v24 = _swiftEmptyDictionarySingleton[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v27 = v22;
    if (_swiftEmptyDictionarySingleton[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101007320();
      }
    }

    else
    {
      sub_100FEAC8C(v26, isUniquelyReferenced_nonNull_native);
      v28 = sub_100771D58(v17, v16);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_28;
      }

      v23 = v28;
    }

    v7 &= v7 - 1;
    if (v27)
    {
      v10 = _swiftEmptyDictionarySingleton[7] + 16 * v23;
      v11 = *v10;
      *v10 = v48;
      v12 = *(v10 + 8);
      *(v10 + 8) = 0;
      sub_101010148(v11, v12);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v23 >> 6) + 8] |= 1 << v23;
      v30 = (_swiftEmptyDictionarySingleton[6] + 16 * v23);
      *v30 = v17;
      v30[1] = v16;
      v31 = _swiftEmptyDictionarySingleton[7] + 16 * v23;
      *v31 = v48;
      *(v31 + 8) = 0;
      v32 = _swiftEmptyDictionarySingleton[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_27;
      }

      _swiftEmptyDictionarySingleton[2] = v34;
    }

    v9 = v13;
    v4 = v46;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (a2)
  {
    swift_getErrorValue();
    swift_errorRetain();
    Error.domain.getter();
    v35 = String._bridgeToObjectiveC()();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v35, 0, 0x6D6F44726F727265, 0xEB000000006E6961, v36);
    swift_getErrorValue();
    Error.code.getter();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(isa, 0, 0x646F43726F727265, 0xE900000000000065, v38);
  }

  if (a4)
  {
    v39 = String._bridgeToObjectiveC()();
    v40 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v39, 0, 0x61546E6F69746361, 0xEB000000006E656BLL, v40);
  }

  v41 = Bool._bridgeToObjectiveC()().super.super.isa;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC418(v41, 0, 0x6563637553736177, 0xEA00000000007373, v42);
  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_101166990()
{
  v1 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginVerifyPairing;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_endVerifyPairing, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginFinalize, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_endFinalize, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginAck, v2);
  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_101166AC4()
{
  result = type metadata accessor for DispatchTime();
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

uint64_t sub_101166B80(uint64_t a1, unsigned int a2)
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

uint64_t sub_101166BBC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_101166C08(uint64_t result, unsigned int a2)
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

uint64_t sub_101166C40(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 72) = a1;
  return _swift_task_switch(sub_101166C68, 0, 0);
}

uint64_t sub_101166C68()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for AnalyticsEvent(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v0[6] = v6;
  swift_defaultActor_initialize();
  *(v6 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(*(v8 - 8) + 56);
  v9(&v6[v7], 1, 1, v8);
  v9(&v6[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v8);
  *(v6 + 15) = 0xD000000000000047;
  *(v6 + 16) = 0x800000010137CF40;

  return _swift_task_switch(sub_101166DC8, v6, 0);
}

uint64_t sub_101166DC8()
{
  sub_10118498C(*(v0 + 48), *(v0 + 72), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 56) = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_101166EB8;
  v4 = *(v0 + 48);

  return sub_101163F78(v4);
}

uint64_t sub_101166EB8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1008347FC, 0, 0);
}

unint64_t sub_101166FD0()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  *(inited + 64) = 0x6E6F73616572;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  *(inited + 96) = 0x726F727265;
  *(inited + 104) = 0xE500000000000000;

  v1 = String._bridgeToObjectiveC()();

  *(inited + 112) = v1;
  *(inited + 120) = 0;
  v2 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_10116712C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 65) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a2;
  *(v5 + 64) = a1;
  return _swift_task_switch(sub_101167158, 0, 0);
}

uint64_t sub_101167158()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000042;
  *(v4 + 16) = 0x800000010137CEA0;

  return _swift_task_switch(sub_101167294, v4, 0);
}

uint64_t sub_101167294()
{
  sub_1011587E4(*(v0 + 40), *(v0 + 64), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 65) & 1);
  type metadata accessor for AnalyticsPublisher();
  *(v0 + 48) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_101167374;
  v2 = *(v0 + 40);

  return sub_101163F78(v2);
}

uint64_t sub_101167374()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100ACDEB4, 0, 0);
}

unint64_t sub_10116748C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1 & 1;
  *(inited + 56) = 1;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x800000010137CEF0;
  *(inited + 80) = a2;
  *(inited + 88) = 2;
  strcpy((inited + 96), "expiredRecords");
  *(inited + 111) = -18;
  *(inited + 112) = a3;
  *(inited + 120) = 2;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x800000010137CF10;
  if (a5)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  *(inited + 144) = v11;
  *(inited + 152) = 2;
  v12 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1011675EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10116760C, 0, 0);
}

uint64_t sub_10116760C()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for AnalyticsEvent(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  swift_defaultActor_initialize();
  *(v5 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(*(v7 - 8) + 56);
  v8(&v5[v6], 1, 1, v7);
  v8(&v5[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v7);
  *(v5 + 15) = 0xD000000000000047;
  *(v5 + 16) = 0x800000010137CD30;

  return _swift_task_switch(sub_101167760, v5, 0);
}

uint64_t sub_101167760()
{
  sub_1011864A4(v0[4], v0[2], v0[3]);
  v1 = v0[3];

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10069D520;
  v3 = v0[4];

  return sub_101163F78(v3);
}

uint64_t sub_10116783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_101167860, 0, 0);
}

uint64_t sub_101167860()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for AnalyticsEvent(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v0[6] = v6;
  swift_defaultActor_initialize();
  *(v6 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(*(v8 - 8) + 56);
  v9(&v6[v7], 1, 1, v8);
  v9(&v6[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v8);
  *(v6 + 15) = 0xD000000000000046;
  *(v6 + 16) = 0x800000010137CD90;

  return _swift_task_switch(sub_1011679C0, v6, 0);
}

uint64_t sub_1011679C0()
{
  sub_101188008(v0[6], v0[2], v0[3], v0[4], v0[5]);
  v1 = v0[5];
  v2 = v0[3];

  type metadata accessor for AnalyticsPublisher();
  v0[7] = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100AA7D38;
  v4 = v0[6];

  return sub_101163F78(v4);
}

uint64_t sub_101167AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_101167AD0, 0, 0);
}

uint64_t sub_101167AD0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for AnalyticsEvent(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v0[6] = v6;
  swift_defaultActor_initialize();
  *(v6 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(*(v8 - 8) + 56);
  v9(&v6[v7], 1, 1, v8);
  v9(&v6[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v8);
  *(v6 + 15) = 0xD000000000000048;
  *(v6 + 16) = 0x800000010137D0D0;

  return _swift_task_switch(sub_101167C30, v6, 0);
}

uint64_t sub_101167C30()
{
  sub_101188008(v0[6], v0[2], v0[3], v0[4], v0[5]);
  v1 = v0[5];
  v2 = v0[3];

  type metadata accessor for AnalyticsPublisher();
  v0[7] = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_101166EB8;
  v4 = v0[6];

  return sub_101163F78(v4);
}

unint64_t sub_101167D1C()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0x6E6F73616572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  *(inited + 64) = 0x726F727265;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_101167E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return _swift_task_switch(sub_101167E48, 0, 0);
}

uint64_t sub_101167E48()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for AnalyticsEvent(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v0[8] = v6;
  swift_defaultActor_initialize();
  *(v6 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(*(v8 - 8) + 56);
  v9(&v6[v7], 1, 1, v8);
  v9(&v6[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v8);
  *(v6 + 15) = 0xD00000000000004BLL;
  *(v6 + 16) = 0x800000010137CC40;

  return _swift_task_switch(sub_101167FA8, v6, 0);
}

uint64_t sub_101167FA8()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_101189A9C(v0[8], v0[2], v0[3], v0[4], v0[5]);
  v3 = v0[5];
  v4 = v0[3];

  type metadata accessor for AnalyticsPublisher();
  v0[9] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_101168098;
  v6 = v0[8];

  return sub_101163F78(v6);
}

uint64_t sub_101168098()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100D3B7CC, 0, 0);
}

unint64_t sub_1011681B0()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010137CC90;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  *(inited + 64) = 0xD000000000000016;
  *(inited + 72) = 0x800000010137CCB0;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  *(inited + 96) = 0x65636E6174736964;
  *(inited + 104) = 0xE800000000000000;
  *(inited + 112) = Double._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  strcpy((inited + 128), "accuracyDiff");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = Double._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_101168330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = a5;
  return _swift_task_switch(sub_101168358, 0, 0);
}

uint64_t sub_101168358(uint64_t (*a1)(), char *a2, uint64_t a3)
{
  v5 = *(v3 + 16) * 100.0;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v6 = *(v3 + 32);
  v7 = type metadata accessor for AnalyticsEvent(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v3 + 56) = v10;
  swift_defaultActor_initialize();
  *(v10 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v11 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(*(v12 - 8) + 56);
  v13(&v10[v11], 1, 1, v12);
  v13(&v10[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v12);
  *(v10 + 15) = 0xD000000000000038;
  *(v10 + 16) = 0x800000010137CCD0;

  a1 = sub_101168500;
  a2 = v10;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_101168500()
{
  sub_10118B624(*(v0 + 56), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), (*(v0 + 16) * 100.0));
  v1 = *(v0 + 32);

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 64) = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1011685F4;
  v3 = *(v0 + 56);

  return sub_101163F78(v3);
}

uint64_t sub_1011685F4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1004BCEC0, 0, 0);
}

unint64_t sub_10116870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  strcpy((inited + 32), "locationSource");
  *(inited + 47) = -18;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  strcpy((inited + 64), "requestCount");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = a3;
  *(inited + 88) = 2;
  *(inited + 96) = 0x746E756F4379656BLL;
  *(inited + 104) = 0xE800000000000000;
  *(inited + 112) = a4;
  *(inited + 120) = 2;
  strcpy((inited + 128), "keyRedundancy");
  *(inited + 142) = -4864;
  *(inited + 144) = a5;
  *(inited + 152) = 2;
  v9 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_10116887C(double a1)
{
  if (a1 <= 300.0)
  {
    return 300;
  }

  if (a1 <= 600.0)
  {
    return 600;
  }

  if (a1 <= 900.0)
  {
    return 900;
  }

  if (a1 <= 1800.0)
  {
    return 1800;
  }

  if (a1 <= 2700.0)
  {
    return 2700;
  }

  if (a1 <= 3600.0)
  {
    return 3600;
  }

  if (a1 <= 4500.0)
  {
    return 4500;
  }

  if (a1 <= 5400.0)
  {
    return 5400;
  }

  if (a1 <= 7200.0)
  {
    return 7200;
  }

  if (a1 <= 9000.0)
  {
    return 9000;
  }

  if (a1 <= 10800.0)
  {
    return 10800;
  }

  if (a1 <= 14400.0)
  {
    return 14400;
  }

  if (a1 <= 18000.0)
  {
    return 18000;
  }

  if (a1 <= 21600.0)
  {
    return 21600;
  }

  if (a1 <= 43200.0)
  {
    return 43200;
  }

  if (a1 <= 86400.0)
  {
    return 86400;
  }

  if (a1 <= 259200.0)
  {
    return 259200;
  }

  if (a1 > 604800.0)
  {
    return 640000;
  }

  return 604800;
}

uint64_t sub_101168A88(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 58) = a3;
  *(v3 + 728) = a2;
  *(v3 + 720) = a1;
  return _swift_task_switch(sub_101168AB4, a1, 0);
}

uint64_t sub_101168AB4()
{
  v16 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 720);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v15);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 736) = v12;
    *v12 = v0;
    v12[1] = sub_101168D04;
    v13 = *(v0 + 728);
    v14 = *(v0 + 58);

    return sub_1000DF31C(v13, v14);
  }
}

uint64_t sub_101168D04(uint64_t a1)
{
  v2 = *(*v1 + 736);
  v3 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 744) = a1;

  return _swift_task_switch(sub_101168E1C, v3, 0);
}

unint64_t sub_101168E1C()
{
  v109 = (v0 + 304);
  v110 = (v0 + 256);
  v1 = (v0 + 352);
  v105 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 744);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v107 = (v0 + 448);
  v108 = *(v0 + 744);
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
      sub_101010158(*(v108 + 56) + 48 * v14, v0 + 16);
      v111 = *(v0 + 16);
      v113 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:
        v93 = *(v0 + 744);

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
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v33;
          v34 = 2;
        }

        else
        {
          v36 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
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
      sub_1010100EC(v110, v109);
      v37 = *(v115 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v115 + 112);
      *&v117 = v7;
      *(v115 + 112) = 0x8000000000000000;
      result = sub_100771D58(v116, v16);
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
        sub_100FE65C4(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v116, v16);
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
      sub_1010050E8();
      result = v85;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v109, *(v7 + 56) + 48 * v12);
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
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v110);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v115 + 112);

    v21 = sub_100771D58(v116, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
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
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v54 = *(v0 + 608);
      v114 = *(v0 + 616);
      sub_1000035D0((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v105);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v104 = v23;
    sub_10000A748(v105, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_1000035D0((v0 + 544), v24);
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
        sub_1000DF9C0();
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
          sub_1000DF9C0();
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
        sub_1000DF9C0();
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

    v75 = sub_1000DF9C0();
    *(v0 + 352) = v74;
    *(v0 + 360) = v117;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v75;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v2 = v106;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v107);
    v76 = *(v115 + 112);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v115 + 112);
    *&v117 = v7;
    *(v115 + 112) = 0x8000000000000000;
    result = sub_100771D58(v116, v16);
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
      sub_100FE65C4(v81, v77);
      result = sub_100771D58(v116, v16);
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
    sub_1010050E8();
    result = v86;
    v1 = (v0 + 352);
    if (v82)
    {
LABEL_68:
      v84 = result;

      sub_10118B568(v107, *(v7 + 56) + 48 * v84);
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
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
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

  sub_10118B5A0(v2);
  v96 = *(v0 + 744);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v94 = *(v0 + 8);
LABEL_77:

  return v94();
}

uint64_t sub_101169B00(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 58) = a3;
  *(v3 + 728) = a2;
  *(v3 + 720) = a1;
  return _swift_task_switch(sub_101169B2C, a1, 0);
}

uint64_t sub_101169B2C()
{
  v16 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 720);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v15);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 736) = v12;
    *v12 = v0;
    v12[1] = sub_101168D04;
    v13 = *(v0 + 58);
    v14 = *(v0 + 728);

    return sub_1000DC390(v14, v13);
  }
}

uint64_t sub_101169D7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_101169DA4, a1, 0);
}

uint64_t sub_101169DA4()
{
  v14 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = v0[90];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[91];

    return _swift_task_switch(sub_101169FBC, v12, 0);
  }
}

uint64_t sub_101169FBC()
{
  v1 = v0[91];
  v2 = v0[90];
  v0[92] = sub_101163670();

  return _swift_task_switch(sub_10116A02C, v2, 0);
}

unint64_t sub_10116A02C()
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
      sub_101010158(*(v108 + 56) + 48 * v14, v0 + 16);
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
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v33;
          v34 = 2;
        }

        else
        {
          v36 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
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
      sub_1010100EC(v110, v109);
      v37 = *(v115 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v115 + 112);
      *&v117 = v7;
      *(v115 + 112) = 0x8000000000000000;
      result = sub_100771D58(v116, v16);
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
        sub_100FE65C4(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v116, v16);
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
      sub_1010050E8();
      result = v85;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v109, *(v7 + 56) + 48 * v12);
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
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v110);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v115 + 112);

    v21 = sub_100771D58(v116, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
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
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v54 = *(v0 + 608);
      v114 = *(v0 + 616);
      sub_1000035D0((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v105);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v104 = v23;
    sub_10000A748(v105, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_1000035D0((v0 + 544), v24);
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
        sub_1000DF9C0();
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
          sub_1000DF9C0();
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
        sub_1000DF9C0();
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

    v75 = sub_1000DF9C0();
    *(v0 + 352) = v74;
    *(v0 + 360) = v117;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v75;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v2 = v106;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v107);
    v76 = *(v115 + 112);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v115 + 112);
    *&v117 = v7;
    *(v115 + 112) = 0x8000000000000000;
    result = sub_100771D58(v116, v16);
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
      sub_100FE65C4(v81, v77);
      result = sub_100771D58(v116, v16);
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
    sub_1010050E8();
    result = v86;
    v1 = (v0 + 352);
    if (v82)
    {
LABEL_68:
      v84 = result;

      sub_10118B568(v107, *(v7 + 56) + 48 * v84);
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
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
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

  sub_10118B5A0(v2);
  v96 = *(v0 + 736);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v94 = *(v0 + 8);
LABEL_77:

  return v94();
}

uint64_t sub_10116AD10(uint64_t a1)
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
    sub_1010100EC(v14 + 48 * v13, &v143);
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
        sub_10000A748(&v143, v140);
        sub_10001F280(v140, v138);
        sub_1000BC4D4(&qword_1016C9730, &unk_1014099C8);
        if (swift_dynamicCast())
        {
          v29.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v138[0] = v7;
          v31 = sub_100771D58(v136, v16);
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
            sub_100FE6894(v35, isUniquelyReferenced_nonNull_native);
            v31 = sub_100771D58(v136, v16);
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
            sub_101005298();
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
        v68 = sub_1000035D0(v140, v141);
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
              sub_1000DF9C0();
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
                  sub_1000DF9C0();
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
          v31 = sub_100771D58(v136, v16);
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
              sub_101005298();
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
            sub_100FE6894(v109, v105);
            v31 = sub_100771D58(v136, v16);
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
          sub_1000DF9C0();
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

      sub_10000A748(&v143, v140);
      v53 = v141;
      v54 = sub_1000035D0(v140, v141);
      v55 = *(*(v53 - 8) + 64);
      __chkstk_darwin(v54);
      (*(v57 + 16))(v127 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();
      v29.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v139 = v7;
      v59 = sub_100771D58(v136, v16);
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
          sub_101005298();
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
        sub_100FE6894(v63, v58);
        v59 = sub_100771D58(v136, v16);
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
      sub_100007BAC(v140);
    }

    else
    {
      if (v18)
      {
        sub_10000A748(&v143, v140);
        v38 = v141;
        v39 = v142;
        v40 = sub_1000035D0(v140, v141);
        v41 = *(*(v38 - 8) + 64);
        __chkstk_darwin(v40);
        (*(v43 + 16))(v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
        v44 = *(v39 + 40);
        v45 = *(*(*(v39 + 8) + 8) + 8);
        String.init<A>(_:)();
        v29.super.super.isa = String._bridgeToObjectiveC()();

        v46 = swift_isUniquelyReferenced_nonNull_native();
        v138[0] = v7;
        v31 = sub_100771D58(v136, v16);
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
            sub_101005298();
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
          sub_100FE6894(v50, v46);
          v31 = sub_100771D58(v136, v16);
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
      sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
      v20.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v19 & 1).super.super.isa;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v140[0] = v7;
      v22 = sub_100771D58(v136, v16);
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
        sub_101005298();
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
        sub_100FE6894(v26, v21);
        v22 = sub_100771D58(v136, v16);
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

void sub_10116BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  static Transaction.asyncTask(name:block:)();

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177CE28);
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v10, "analytics: logged publish failure event to CA", v11, 2u);
  }
}

uint64_t sub_10116BDD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10116BDF8, a1, 0);
}

uint64_t sub_10116BDF8()
{
  v15 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = v0[90];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v14);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[92] = v12;
    *v12 = v0;
    v12[1] = sub_10116C044;
    v13 = v0[91];

    return sub_100EC653C(v13);
  }
}

uint64_t sub_10116C044(uint64_t a1)
{
  v2 = *(*v1 + 736);
  v3 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 744) = a1;

  return _swift_task_switch(sub_10116C15C, v3, 0);
}

unint64_t sub_10116C15C()
{
  v109 = (v0 + 304);
  v110 = (v0 + 256);
  v1 = (v0 + 352);
  v105 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 744);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v107 = (v0 + 448);
  v108 = *(v0 + 744);
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
      sub_101010158(*(v108 + 56) + 48 * v14, v0 + 16);
      v111 = *(v0 + 16);
      v113 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:
        v93 = *(v0 + 744);

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
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v33;
          v34 = 2;
        }

        else
        {
          v36 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
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
      sub_1010100EC(v110, v109);
      v37 = *(v115 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v115 + 112);
      *&v117 = v7;
      *(v115 + 112) = 0x8000000000000000;
      result = sub_100771D58(v116, v16);
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
        sub_100FE65C4(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v116, v16);
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
      sub_1010050E8();
      result = v85;
      v1 = (v0 + 352);
      if (v44)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v109, *(v7 + 56) + 48 * v12);
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
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v110);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v115 + 112);

    v21 = sub_100771D58(v116, v16);
    if ((v22 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v21, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
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
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v54 = *(v0 + 608);
      v114 = *(v0 + 616);
      sub_1000035D0((v0 + 584), v54);
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      v57 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v58 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v57;
      v1 = (v0 + 352);
      *(v0 + 352) = v58;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v23 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v105);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v104 = v23;
    sub_10000A748(v105, v0 + 544);
    v24 = *(v0 + 568);
    v25 = *(v0 + 576);
    v26 = sub_1000035D0((v0 + 544), v24);
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
        sub_1000DF9C0();
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
          sub_1000DF9C0();
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
        sub_1000DF9C0();
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

    v75 = sub_1000DF9C0();
    *(v0 + 352) = v74;
    *(v0 + 360) = v117;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v75;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v2 = v106;
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v107);
    v76 = *(v115 + 112);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v115 + 112);
    *&v117 = v7;
    *(v115 + 112) = 0x8000000000000000;
    result = sub_100771D58(v116, v16);
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
      sub_100FE65C4(v81, v77);
      result = sub_100771D58(v116, v16);
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
    sub_1010050E8();
    result = v86;
    v1 = (v0 + 352);
    if (v82)
    {
LABEL_68:
      v84 = result;

      sub_10118B568(v107, *(v7 + 56) + 48 * v84);
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
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
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

  sub_10118B5A0(v2);
  v96 = *(v0 + 744);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v94 = *(v0 + 8);
LABEL_77:

  return v94();
}

void sub_10116CEAC(uint64_t a1, uint64_t a2, int64_t a3, char a4)
{
  v5 = v4;
  LOBYTE(v6) = a4;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v9 = *(a1 + 120);
    v10 = *(a1 + 128);
    v11 = a1;
    v12 = sub_10111EACC(v9, v10, qword_10177C6E8);
    v253 = v11;
    if (v12)
    {
      break;
    }

    v248 = v5;
    v246 = a3;
    v18 = sub_1002571C8(a2, a3, v6);
    v20 = v18 + 64;
    v19 = *(v18 + 64);
    v252 = v18;
    v21 = 1 << *(v18 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v5 = v22 & v19;
    a1 = swift_beginAccess();
    v23 = 0;
    a3 = (v21 + 63) >> 6;
    *&v24 = 138412290;
    v247 = v24;
    v10 = v11;
    v250 = a3;
    v251 = v20;
    while (v5)
    {
LABEL_15:
      v26 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v27 = (v23 << 10) | (16 * v26);
      v28 = *(v252 + 56);
      v29 = (*(v252 + 48) + v27);
      v30 = v29[1];
      v254 = *v29;
      v31 = v28 + v27;
      a2 = *v31;
      v32 = *(v31 + 8);
      v33 = *(v10 + 112);
      v34 = *(v33 + 16);
      v255 = v30;

      sub_10090C56C(a2, v32);
      if (v34)
      {

        v35 = sub_100771D58(v254, v255);
        if ((v36 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v33 + 56) + 48 * v35, &v262);

        if (v32 <= 1)
        {
          if (v32)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v37 = NSNumber.init(BOOLeanLiteral:)(a2 & 1).super.super.isa;
          }

          else
          {
            v37 = a2;
          }

          v101 = v37;
          goto LABEL_104;
        }

        if (v32 != 2)
        {
          sub_1010100EC(&v262, &v257);
          if (v258[24] != 3)
          {
LABEL_147:

            sub_10118B5A0(&v257);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v262);
            return;
          }

          sub_10000A748(&v257._countAndFlagsBits, v259);
          v102 = v260;
          v103 = sub_1000035D0(v259, v260);
          v104 = *(*(v102 - 8) + 64);
          __chkstk_darwin(v103);
          (*(v106 + 16))(v240 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          v10 = v253;
          BinaryFloatingPoint.init<A>(_:)();
          v101 = [objc_allocWithZone(NSNumber) initWithDouble:*&v257._countAndFlagsBits + *&a2];
          sub_100007BAC(v259);
          goto LABEL_104;
        }

        sub_1010100EC(&v262, &v257);
        if (v258[24] != 2)
        {
          goto LABEL_147;
        }

        v249 = a2;
        sub_10000A748(&v257._countAndFlagsBits, v259);
        v83 = v260;
        v82 = v261;
        v84 = sub_1000035D0(v259, v260);
        v85 = *(*(v83 - 8) + 64);
        __chkstk_darwin(v84);
        v244 = v86;
        v87 = v240 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
        v245 = v88;
        (*(v88 + 16))(v87);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v257._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v89 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v89 < 64)
            {
              goto LABEL_90;
            }

            v242 = v82;
            v243 = v240;
            __chkstk_darwin(v89);
            v91 = v240 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v92 = *(*(v242 + 32) + 8);
            v93 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v245 + 8))(v91, v83);
            v82 = v242;
            if (v93)
            {
              goto LABEL_165;
            }
          }

          else
          {
            LODWORD(v243) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v131 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v243)
            {
              v242 = v82;
              if (v131 <= 64)
              {
                v243 = *(*(v82 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v241 = v240;
                v138 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v240[0] = v240 - v139;
                swift_getAssociatedConformanceWitness();
                v140 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v240[1] = v240;
                __chkstk_darwin(v140);
                v142 = v240 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v143 = *(*(v242 + 32) + 8);
                v144 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v245 + 8))(v142, v83);
                if (v144)
                {
                  goto LABEL_165;
                }

                v82 = v242;
LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v243 = v240;
              __chkstk_darwin(v131);
              v133 = v240 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v134 = *(*(v242 + 32) + 8);
              v135 = dispatch thunk of static Comparable.< infix(_:_:)();
              v136 = v133;
              v82 = v242;
              (*(v245 + 8))(v136, v83);
              if (v135)
              {
                goto LABEL_165;
              }
            }

            else if (v131 < 64)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v243 = v240;
          v257._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v145 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v146 = v82;
          v147 = v145;
          v148 = v146;
          v149 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v147)
          {
            if (v149 > 64)
            {
              v241 = v240;
              __chkstk_darwin(v149);
              v244 = v240 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v151 = *(*(v148 + 32) + 8);
              v152 = v244;
              v153 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v245 + 8))(v152, v83);
              goto LABEL_101;
            }
          }

          else if (v149 >= 64)
          {
            v241 = v240;
            __chkstk_darwin(v149);
            v155 = v240 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v156 = *(*(v148 + 32) + 8);
            v153 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v245 + 8))(v155, v83);
LABEL_101:
            if (v153)
            {
              goto LABEL_162;
            }

            goto LABEL_102;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_102:
        v157 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v245 + 8))(v87, v83);
        a2 = v249;
        v51 = __OFADD__(v157, v249);
        v158 = &v249[v157];
        if (v51)
        {
          goto LABEL_156;
        }

        v101 = [objc_allocWithZone(NSNumber) initWithLongLong:v158];
        sub_100007BAC(v259);
        v10 = v253;
LABEL_104:
        objc_opt_self();
        v159 = swift_dynamicCastObjCClass();
        if (v159)
        {
          v160 = v159;
          v161 = a2;
          v162 = v101;
          v163 = String.init(_:)(v160);
          v164 = sub_1000DF96C();
          swift_beginAccess();
          v257 = v163;
          *&v258[8] = &type metadata for String;
          *&v258[16] = v164;
          v258[24] = 1;
          v165 = *(v10 + 112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v256 = *(v10 + 112);
          v167 = v256;
          *(v10 + 112) = 0x8000000000000000;
          v168 = sub_100771D58(v254, v255);
          v170 = v167[2];
          v171 = (v169 & 1) == 0;
          v51 = __OFADD__(v170, v171);
          v172 = v170 + v171;
          if (v51)
          {
            goto LABEL_153;
          }

          v173 = v169;
          if (v167[3] >= v172)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v234 = v168;
              sub_1010050E8();
              v168 = v234;
            }
          }

          else
          {
            sub_100FE65C4(v172, isUniquelyReferenced_nonNull_native);
            v168 = sub_100771D58(v254, v255);
            if ((v173 & 1) != (v174 & 1))
            {
              goto LABEL_166;
            }
          }

          a3 = v250;
          a2 = v161;
          v20 = v251;
          if (v173)
          {
            v194 = v168;

            v6 = v256;
            sub_10118B568(&v257, v256[7] + 48 * v194);
          }

          else
          {
            v6 = v256;
            v256[(v168 >> 6) + 8] |= 1 << v168;
            v195 = (v6[6] + 16 * v168);
            v196 = v255;
            *v195 = v254;
            v195[1] = v196;
            v197 = (v6[7] + 48 * v168);
            v198 = *&v258[9];
            v199 = *v258;
            *v197 = v257;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = v6[2];
            v51 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v51)
            {
              goto LABEL_155;
            }

            v6[2] = v201;
          }

          v10 = v253;
          *(v253 + 112) = v6;
          swift_endAccess();
          sub_101010148(a2, v32);
        }

        else
        {

          objc_opt_self();
          v175 = swift_dynamicCastObjCClass();
          if (v175)
          {
            v249 = a2;
            v176 = v175;
            [v175 doubleValue];
            v178 = v177;
            v179 = [v176 integerValue];
            v20 = v251;
            if (v178 == v179)
            {
              v180 = v179;
              v181 = v32;
              v182 = v10;
              v183 = sub_1000DFAD8();
              swift_beginAccess();
              v257._countAndFlagsBits = v180;
              *&v258[8] = &type metadata for Int;
              *&v258[16] = v183;
              v258[24] = 2;
              v184 = *(v182 + 112);
              v185 = swift_isUniquelyReferenced_nonNull_native();
              v256 = *(v182 + 112);
              v186 = v256;
              *(v182 + 112) = 0x8000000000000000;
              v187 = sub_100771D58(v254, v255);
              v189 = v186[2];
              v190 = (v188 & 1) == 0;
              v51 = __OFADD__(v189, v190);
              v191 = v189 + v190;
              if (v51)
              {
                goto LABEL_159;
              }

              v192 = v188;
              LOBYTE(v32) = v181;
              if (v186[3] >= v191)
              {
                a3 = v250;
                if ((v185 & 1) == 0)
                {
                  v237 = v187;
                  sub_1010050E8();
                  v187 = v237;
                }
              }

              else
              {
                sub_100FE65C4(v191, v185);
                v187 = sub_100771D58(v254, v255);
                a3 = v250;
                if ((v192 & 1) != (v193 & 1))
                {
                  goto LABEL_166;
                }
              }

              a2 = v249;
              if ((v192 & 1) == 0)
              {
                v6 = v256;
                v256[(v187 >> 6) + 8] |= 1 << v187;
                v219 = (v6[6] + 16 * v187);
                v220 = v255;
                *v219 = v254;
                v219[1] = v220;
                v221 = (v6[7] + 48 * v187);
                v222 = *&v258[9];
                v223 = *v258;
                *v221 = v257;
                v221[1] = v223;
                *(&v221[1]._object + 1) = v222;
                v224 = v6[2];
                v51 = __OFADD__(v224, 1);
                v225 = v224 + 1;
                if (v51)
                {
                  goto LABEL_163;
                }

                goto LABEL_143;
              }

LABEL_141:
              v226 = v187;

              v6 = v256;
              sub_10118B568(&v257, v256[7] + 48 * v226);
            }

            else
            {
              v209 = sub_1000DFA84();
              swift_beginAccess();
              *&v257._countAndFlagsBits = v178;
              *&v258[8] = &type metadata for Double;
              *&v258[16] = v209;
              v258[24] = 3;
              v210 = *(v10 + 112);
              v211 = swift_isUniquelyReferenced_nonNull_native();
              v256 = *(v10 + 112);
              v212 = v256;
              *(v10 + 112) = 0x8000000000000000;
              v187 = sub_100771D58(v254, v255);
              v214 = v212[2];
              v215 = (v213 & 1) == 0;
              v51 = __OFADD__(v214, v215);
              v216 = v214 + v215;
              if (v51)
              {
                goto LABEL_161;
              }

              v217 = v213;
              if (v212[3] >= v216)
              {
                if ((v211 & 1) == 0)
                {
                  v238 = v187;
                  sub_1010050E8();
                  v187 = v238;
                }
              }

              else
              {
                sub_100FE65C4(v216, v211);
                v187 = sub_100771D58(v254, v255);
                if ((v217 & 1) != (v218 & 1))
                {
                  goto LABEL_166;
                }
              }

              a2 = v249;
              if (v217)
              {
                goto LABEL_141;
              }

              v6 = v256;
              v256[(v187 >> 6) + 8] |= 1 << v187;
              v227 = (v6[6] + 16 * v187);
              v228 = v255;
              *v227 = v254;
              v227[1] = v228;
              v229 = (v6[7] + 48 * v187);
              v230 = *&v258[9];
              v231 = *v258;
              *v229 = v257;
              v229[1] = v231;
              *(&v229[1]._object + 1) = v230;
              v232 = v6[2];
              v51 = __OFADD__(v232, 1);
              v225 = v232 + 1;
              if (v51)
              {
                goto LABEL_164;
              }

LABEL_143:
              v6[2] = v225;
            }

            v10 = v253;
            *(v253 + 112) = v6;
            swift_endAccess();

            sub_101010148(a2, v32);
            goto LABEL_145;
          }

          v20 = v251;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v202 = type metadata accessor for Logger();
          sub_1000076D4(v202, qword_10177C6D0);
          v203 = v101;
          v204 = Logger.logObject.getter();
          LOBYTE(v6) = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v204, v6))
          {
            *&v205 = COERCE_DOUBLE(swift_slowAlloc());
            v249 = a2;
            a2 = v205;
            v206 = swift_slowAlloc();
            LODWORD(v255) = v32;
            v207 = v206;
            *a2 = v247;
            *(a2 + 4) = v203;
            *v206 = v203;
            v208 = v203;
            _os_log_impl(&_mh_execute_header, v204, v6, "Unsupported value type: %@!", a2, 0xCu);
            sub_10000B3A8(v207, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v249, v255);
          }

          else
          {

            sub_101010148(a2, v32);
          }

          v10 = v253;
        }

LABEL_145:
        a1 = sub_10118B5A0(&v262);
      }

      else
      {
LABEL_21:
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:a2];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&a2];
          }
        }

        else if (v32)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(a2 & 1).super.super.isa;
        }

        else
        {
          isa = a2;
        }

        v9 = isa;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v41 = a2;
          v9 = v9;
          v42 = String.init(_:)(v40);
          v43 = sub_1000DF96C();
          swift_beginAccess();
          v262 = v42;
          *&v263[8] = &type metadata for String;
          *&v263[16] = v43;
          v263[24] = 1;
          v44 = *(v10 + 112);
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v259[0] = *(v10 + 112);
          v46 = v259[0];
          *(v10 + 112) = 0x8000000000000000;
          v47 = sub_100771D58(v254, v255);
          v49 = *(v46 + 16);
          v50 = (v48 & 1) == 0;
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          if (v51)
          {
            __break(1u);
            goto LABEL_151;
          }

          v53 = v48;
          if (*(v46 + 24) >= v52)
          {
            if ((v45 & 1) == 0)
            {
              v233 = v47;
              sub_1010050E8();
              v47 = v233;
            }
          }

          else
          {
            sub_100FE65C4(v52, v45);
            v47 = sub_100771D58(v254, v255);
            if ((v53 & 1) != (v54 & 1))
            {
              goto LABEL_166;
            }
          }

          a3 = v250;
          a2 = v41;
          v20 = v251;
          if (v53)
          {
            v74 = v47;

            v6 = v259[0];
            sub_10118B568(&v262, *(v259[0] + 56) + 48 * v74);
          }

          else
          {
            v6 = v259[0];
            *(v259[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v75 = (v6[6] + 16 * v47);
            v76 = v255;
            *v75 = v254;
            v75[1] = v76;
            v77 = (v6[7] + 48 * v47);
            v78 = *&v263[9];
            v79 = *v263;
            *v77 = v262;
            v77[1] = v79;
            *(&v77[1]._object + 1) = v78;
            v80 = v6[2];
            v51 = __OFADD__(v80, 1);
            v81 = v80 + 1;
            if (v51)
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v6[2] = v81;
          }

          v10 = v253;
          *(v253 + 112) = v6;
          swift_endAccess();

LABEL_81:
          sub_101010148(a2, v32);
        }

        else
        {
          objc_opt_self();
          v55 = swift_dynamicCastObjCClass();
          if (v55)
          {
            v249 = a2;
            v56 = v55;
            [v55 doubleValue];
            v58 = v57;
            v59 = [v56 integerValue];
            v20 = v251;
            if (v58 == v59)
            {
              v60 = v59;
              v61 = v32;
              v62 = v10;
              v63 = sub_1000DFAD8();
              swift_beginAccess();
              v262._countAndFlagsBits = v60;
              *&v263[8] = &type metadata for Int;
              *&v263[16] = v63;
              v263[24] = 2;
              v64 = *(v62 + 112);
              v65 = swift_isUniquelyReferenced_nonNull_native();
              v259[0] = *(v62 + 112);
              v66 = v259[0];
              *(v62 + 112) = 0x8000000000000000;
              v67 = sub_100771D58(v254, v255);
              v69 = *(v66 + 16);
              v70 = (v68 & 1) == 0;
              v51 = __OFADD__(v69, v70);
              v71 = v69 + v70;
              if (v51)
              {
                goto LABEL_154;
              }

              v72 = v68;
              LOBYTE(v32) = v61;
              if (*(v66 + 24) >= v71)
              {
                a3 = v250;
                if ((v65 & 1) == 0)
                {
                  v235 = v67;
                  sub_1010050E8();
                  v67 = v235;
                }
              }

              else
              {
                sub_100FE65C4(v71, v65);
                v67 = sub_100771D58(v254, v255);
                a3 = v250;
                if ((v72 & 1) != (v73 & 1))
                {
                  goto LABEL_166;
                }
              }

              a2 = v249;
              if ((v72 & 1) == 0)
              {
                v6 = v259[0];
                *(v259[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
                v117 = (v6[6] + 16 * v67);
                v118 = v255;
                *v117 = v254;
                v117[1] = v118;
                v119 = (v6[7] + 48 * v67);
                v120 = *&v263[9];
                v121 = *v263;
                *v119 = v262;
                v119[1] = v121;
                *(&v119[1]._object + 1) = v120;
                v122 = v6[2];
                v51 = __OFADD__(v122, 1);
                v123 = v122 + 1;
                if (v51)
                {
                  goto LABEL_158;
                }

                goto LABEL_79;
              }

LABEL_77:
              v124 = v67;

              v6 = v259[0];
              sub_10118B568(&v262, *(v259[0] + 56) + 48 * v124);
            }

            else
            {
              v107 = sub_1000DFA84();
              swift_beginAccess();
              *&v262._countAndFlagsBits = v58;
              *&v263[8] = &type metadata for Double;
              *&v263[16] = v107;
              v263[24] = 3;
              v108 = *(v10 + 112);
              v109 = swift_isUniquelyReferenced_nonNull_native();
              v259[0] = *(v10 + 112);
              v110 = v259[0];
              *(v10 + 112) = 0x8000000000000000;
              v67 = sub_100771D58(v254, v255);
              v112 = *(v110 + 16);
              v113 = (v111 & 1) == 0;
              v51 = __OFADD__(v112, v113);
              v114 = v112 + v113;
              if (v51)
              {
                goto LABEL_157;
              }

              v115 = v111;
              if (*(v110 + 24) >= v114)
              {
                a3 = v250;
                if ((v109 & 1) == 0)
                {
                  v236 = v67;
                  sub_1010050E8();
                  v67 = v236;
                }
              }

              else
              {
                sub_100FE65C4(v114, v109);
                v67 = sub_100771D58(v254, v255);
                a3 = v250;
                if ((v115 & 1) != (v116 & 1))
                {
                  goto LABEL_166;
                }
              }

              a2 = v249;
              if (v115)
              {
                goto LABEL_77;
              }

              v6 = v259[0];
              *(v259[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
              v125 = (v6[6] + 16 * v67);
              v126 = v255;
              *v125 = v254;
              v125[1] = v126;
              v127 = (v6[7] + 48 * v67);
              v128 = *&v263[9];
              v129 = *v263;
              *v127 = v262;
              v127[1] = v129;
              *(&v127[1]._object + 1) = v128;
              v130 = v6[2];
              v51 = __OFADD__(v130, 1);
              v123 = v130 + 1;
              if (v51)
              {
                goto LABEL_160;
              }

LABEL_79:
              v6[2] = v123;
            }

            v10 = v253;
            *(v253 + 112) = v6;
            swift_endAccess();
            goto LABEL_81;
          }

          a3 = v250;
          v20 = v251;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v94 = type metadata accessor for Logger();
          sub_1000076D4(v94, qword_10177C6D0);
          v95 = v9;
          v96 = Logger.logObject.getter();
          LOBYTE(v6) = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v96, v6))
          {
            *&v97 = COERCE_DOUBLE(swift_slowAlloc());
            v249 = a2;
            a2 = v97;
            v98 = swift_slowAlloc();
            LODWORD(v255) = v32;
            v99 = v98;
            *a2 = v247;
            *(a2 + 4) = v95;
            *v98 = v95;
            v100 = v95;
            _os_log_impl(&_mh_execute_header, v96, v6, "Unsupported value type: %@!", a2, 0xCu);
            sub_10000B3A8(v99, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v249, v255);
          }

          else
          {

            sub_101010148(a2, v32);
          }

          v10 = v253;
        }
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= a3)
      {

        return;
      }

      v5 = *(v20 + 8 * v25);
      ++v23;
      if (v5)
      {
        v23 = v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_149:
    v239 = a1;
    swift_once();
    a1 = v239;
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C6D0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v262._countAndFlagsBits = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000136BC(v9, v10, &v262._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v14, v15, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v16, 0xCu);
    sub_100007BAC(v17);
  }
}

uint64_t sub_10116E9EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10116EA14, a1, 0);
}

uint64_t sub_10116EA14()
{
  v15 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = v0[90];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C6D0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(v2, v3, &v14);
      _os_log_impl(&_mh_execute_header, v6, v7, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[92] = v12;
    *v12 = v0;
    v12[1] = sub_10116EC60;
    v13 = v0[91];

    return sub_10027BEA8(v13);
  }
}

uint64_t sub_10116EC60(uint64_t a1)
{
  v2 = *(*v1 + 736);
  v3 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 744) = a1;

  return _swift_task_switch(sub_10118F4D4, v3, 0);
}

void sub_10116ED78(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;

  static Transaction.asyncTask(name:block:)();

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177CE28);
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v12, "analytics: logged key generation status to CA", v13, 2u);
  }
}

void sub_10116EF44(void *a1, uint64_t a2, uint64_t a3, char a4, int64_t a5)
{
  v6 = v5;
  LOBYTE(v8) = a4;
  if (qword_101695280 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v12 = a1[15];
    v13 = a1[16];
    if (sub_10111EACC(v12, v13, qword_10177C6E8))
    {
      break;
    }

    v245 = v6;
    v242 = a3;
    v243 = a5;
    v19 = sub_1002F8718(a2, a3, v8 & 1, a5);
    v8 = v19 + 64;
    v20 = *(v19 + 64);
    v249 = v19;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    swift_beginAccess();
    a3 = 0;
    a5 = (v21 + 63) >> 6;
    *&v24 = 138412290;
    v244 = v24;
    v248 = a1;
    v246 = a5;
    v247 = v8;
    while (v23)
    {
LABEL_19:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = (a3 << 10) | (16 * v27);
      v29 = *(v249 + 56);
      v30 = (*(v249 + 48) + v28);
      v31 = v30[1];
      v250 = *v30;
      v32 = v29 + v28;
      v6 = *v32;
      v33 = *(v32 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v251 = v31;

      sub_10090C56C(*&v6, v33);
      if (v35)
      {

        v36 = sub_100771D58(v250, v251);
        if (v37)
        {
          sub_1010100EC(*(v34 + 56) + 48 * v36, &v258);

          if (v33 <= 1)
          {
            if (v33)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v38 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
            }

            else
            {
              v38 = *&v6;
            }

            v99 = v38;
            goto LABEL_108;
          }

          if (v33 != 2)
          {
            sub_1010100EC(&v258, &v253);
            if (v254[24] != 3)
            {
LABEL_148:

              sub_10118B5A0(&v253);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v258);
              return;
            }

            sub_10000A748(&v253._countAndFlagsBits, v255);
            v100 = v256;
            v101 = sub_1000035D0(v255, v256);
            v102 = *(*(v100 - 8) + 64);
            __chkstk_darwin(v101);
            a2 = v235 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v104 + 16))(a2);
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v248;
            v99 = [objc_allocWithZone(NSNumber) initWithDouble:*&v253._countAndFlagsBits + v6];
            sub_100007BAC(v255);
            goto LABEL_108;
          }

          sub_1010100EC(&v258, &v253);
          if (v254[24] != 2)
          {
            goto LABEL_148;
          }

          v240 = v6;
          sub_10000A748(&v253._countAndFlagsBits, v255);
          a2 = v256;
          v80 = v257;
          v81 = sub_1000035D0(v255, v256);
          v241 = v235;
          v82 = *(a2 - 8);
          v83 = v82[8];
          __chkstk_darwin(v81);
          v239 = v84;
          v85 = v235 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v82[2])(v85);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_95;
          }

          v253._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v86 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v86 >= 64)
            {
              v237 = v80;
              v238 = v235;
              __chkstk_darwin(v86);
              v88 = v235 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v89 = *(*(v237 + 32) + 8);
              v90 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v82[1])(v88, a2);
              v80 = v237;
              if (v90)
              {
                goto LABEL_166;
              }

              goto LABEL_95;
            }

LABEL_94:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_95;
          }

          LODWORD(v238) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v130 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v238 & 1) == 0)
          {
            if (v130 >= 64)
            {
              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v237 = v80;
          if (v130 <= 64)
          {
            v238 = *(*(v80 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v236 = v235;
            v137 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            __chkstk_darwin(AssociatedTypeWitness);
            v235[0] = v235 - v138;
            swift_getAssociatedConformanceWitness();
            v139 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v235[1] = v235;
            __chkstk_darwin(v139);
            v141 = v235 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v142 = *(*(v237 + 32) + 8);
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v82[1])(v141, a2);
            if (v143)
            {
              goto LABEL_166;
            }

            v80 = v237;
            goto LABEL_94;
          }

          v238 = v235;
          __chkstk_darwin(v130);
          v132 = v235 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v133 = *(*(v237 + 32) + 8);
          v134 = dispatch thunk of static Comparable.< infix(_:_:)();
          v135 = v132;
          v80 = v237;
          (v82[1])(v135, a2);
          if (v134)
          {
            goto LABEL_166;
          }

LABEL_95:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_106:
            v155 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v82[1])(v85, a2);
            v6 = v240;
            v51 = __OFADD__(v155, *&v240);
            v156 = v155 + *&v240;
            if (v51)
            {
              goto LABEL_157;
            }

            v99 = [objc_allocWithZone(NSNumber) initWithLongLong:v156];
            sub_100007BAC(v255);
            a1 = v248;
LABEL_108:
            objc_opt_self();
            v157 = swift_dynamicCastObjCClass();
            if (v157)
            {
              v158 = v157;
              v159 = v33;
              v160 = v99;
              v161 = String.init(_:)(v158);
              v162 = a1;
              v163 = sub_1000DF96C();
              swift_beginAccess();
              v253 = v161;
              *&v254[8] = &type metadata for String;
              *&v254[16] = v163;
              v254[24] = 1;
              v164 = v162[14];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v252 = v162[14];
              v166 = v252;
              v162[14] = 0x8000000000000000;
              v167 = sub_100771D58(v250, v251);
              v169 = v166[2];
              v170 = (v168 & 1) == 0;
              v51 = __OFADD__(v169, v170);
              v171 = v169 + v170;
              if (v51)
              {
                goto LABEL_154;
              }

              a2 = v168;
              if (v166[3] >= v171)
              {
                v173 = v159;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v230 = v167;
                  sub_1010050E8();
                  v167 = v230;
                }
              }

              else
              {
                sub_100FE65C4(v171, isUniquelyReferenced_nonNull_native);
                v167 = sub_100771D58(v250, v251);
                if ((a2 & 1) != (v172 & 1))
                {
                  goto LABEL_167;
                }

                v173 = v159;
              }

              a1 = v248;
              a5 = v246;
              if (a2)
              {
                a2 = v167;

                v192 = v252;
                sub_10118B568(&v253, v252[7] + 48 * a2);
              }

              else
              {
                v192 = v252;
                v252[(v167 >> 6) + 8] |= 1 << v167;
                v193 = (v192[6] + 16 * v167);
                v194 = v251;
                *v193 = v250;
                v193[1] = v194;
                v195 = (v192[7] + 48 * v167);
                v196 = *&v254[9];
                v197 = *v254;
                *v195 = v253;
                v195[1] = v197;
                *(&v195[1]._object + 1) = v196;
                v198 = v192[2];
                v51 = __OFADD__(v198, 1);
                v199 = v198 + 1;
                if (v51)
                {
                  goto LABEL_156;
                }

                v192[2] = v199;
              }

              a1[14] = v192;
              swift_endAccess();
              sub_101010148(*&v6, v173);

LABEL_126:
              goto LABEL_12;
            }

            objc_opt_self();
            v174 = swift_dynamicCastObjCClass();
            if (!v174)
            {
              LODWORD(v250) = v33;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v200 = type metadata accessor for Logger();
              sub_1000076D4(v200, qword_10177C6D0);
              v201 = v99;
              v160 = Logger.logObject.getter();
              v202 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v160, v202))
              {

                sub_101010148(*&v6, v250);
                goto LABEL_126;
              }

              a2 = swift_slowAlloc();
              v203 = swift_slowAlloc();
              *a2 = v244;
              *(a2 + 4) = v201;
              *v203 = v201;
              v204 = v201;
              _os_log_impl(&_mh_execute_header, v160, v202, "Unsupported value type: %@!", a2, 0xCu);
              sub_10000B3A8(v203, &qword_10169BB30, &unk_10138B3C0);
              a1 = v248;

              sub_101010148(*&v6, v250);
LABEL_12:
              sub_10118B5A0(&v258);
              goto LABEL_13;
            }

            v175 = v174;
            [v174 doubleValue];
            v177 = v176;
            v178 = [v175 integerValue];
            if (v177 == v178)
            {
              v179 = v178;
              v180 = sub_1000DFAD8();
              swift_beginAccess();
              v253._countAndFlagsBits = v179;
              *&v254[8] = &type metadata for Int;
              *&v254[16] = v180;
              v254[24] = 2;
              v181 = a1[14];
              v182 = swift_isUniquelyReferenced_nonNull_native();
              v183 = a1;
              v184 = v182;
              v252 = v183[14];
              v185 = v252;
              v183[14] = 0x8000000000000000;
              v186 = sub_100771D58(v250, v251);
              v188 = v185[2];
              v189 = (v187 & 1) == 0;
              v51 = __OFADD__(v188, v189);
              v190 = v188 + v189;
              if (v51)
              {
                goto LABEL_160;
              }

              a2 = v187;
              if (v185[3] >= v190)
              {
                if ((v184 & 1) == 0)
                {
                  v233 = v186;
                  sub_1010050E8();
                  v186 = v233;
                }
              }

              else
              {
                sub_100FE65C4(v190, v184);
                v186 = sub_100771D58(v250, v251);
                if ((a2 & 1) != (v191 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v248;
              if ((a2 & 1) == 0)
              {
                v25 = v252;
                v252[(v186 >> 6) + 8] |= 1 << v186;
                v216 = (v25[6] + 16 * v186);
                v217 = v251;
                *v216 = v250;
                v216[1] = v217;
                v218 = (v25[7] + 48 * v186);
                v219 = *&v254[9];
                v220 = *v254;
                *v218 = v253;
                v218[1] = v220;
                *(&v218[1]._object + 1) = v219;
                v221 = v25[2];
                v51 = __OFADD__(v221, 1);
                v222 = v221 + 1;
                if (v51)
                {
                  goto LABEL_164;
                }

                goto LABEL_146;
              }

LABEL_10:
              a2 = v186;

              v25 = v252;
              sub_10118B568(&v253, v252[7] + 48 * a2);
            }

            else
            {
              v205 = sub_1000DFA84();
              swift_beginAccess();
              *&v253._countAndFlagsBits = v177;
              *&v254[8] = &type metadata for Double;
              *&v254[16] = v205;
              v254[24] = 3;
              v206 = a1[14];
              v207 = swift_isUniquelyReferenced_nonNull_native();
              v208 = a1;
              v209 = v207;
              v252 = v208[14];
              v210 = v252;
              v208[14] = 0x8000000000000000;
              v186 = sub_100771D58(v250, v251);
              v212 = v210[2];
              v213 = (v211 & 1) == 0;
              v51 = __OFADD__(v212, v213);
              v214 = v212 + v213;
              if (v51)
              {
                goto LABEL_162;
              }

              a2 = v211;
              if (v210[3] >= v214)
              {
                if ((v209 & 1) == 0)
                {
                  v234 = v186;
                  sub_1010050E8();
                  v186 = v234;
                }
              }

              else
              {
                sub_100FE65C4(v214, v209);
                v186 = sub_100771D58(v250, v251);
                if ((a2 & 1) != (v215 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v248;
              if (a2)
              {
                goto LABEL_10;
              }

              v25 = v252;
              v252[(v186 >> 6) + 8] |= 1 << v186;
              v223 = (v25[6] + 16 * v186);
              v224 = v251;
              *v223 = v250;
              v223[1] = v224;
              v225 = (v25[7] + 48 * v186);
              v226 = *&v254[9];
              v227 = *v254;
              *v225 = v253;
              v225[1] = v227;
              *(&v225[1]._object + 1) = v226;
              v228 = v25[2];
              v51 = __OFADD__(v228, 1);
              v222 = v228 + 1;
              if (v51)
              {
                goto LABEL_165;
              }

LABEL_146:
              v25[2] = v222;
            }

            a1[14] = v25;
            swift_endAccess();

            sub_101010148(*&v6, v33);
            goto LABEL_12;
          }

          v238 = v82;
          v253._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v144 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v145 = v80;
          v146 = v144;
          v147 = v145;
          v148 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v146)
          {
            if (v148 > 64)
            {
              v236 = v235;
              __chkstk_darwin(v148);
              v239 = v235 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v150 = *(*(v147 + 32) + 8);
              v151 = dispatch thunk of static Comparable.< infix(_:_:)();
              v82 = v238;
              (v238[1])(v239, a2);
              goto LABEL_105;
            }
          }

          else if (v148 >= 64)
          {
            v236 = v235;
            __chkstk_darwin(v148);
            v153 = v235 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v154 = *(*(v147 + 32) + 8);
            v151 = dispatch thunk of static Comparable.< infix(_:_:)();
            v82 = v238;
            (v238[1])(v153, a2);
LABEL_105:
            if (v151)
            {
              goto LABEL_163;
            }

            goto LABEL_106;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v82 = v238;
          goto LABEL_106;
        }
      }

      if (v33 > 1)
      {
        if (v33 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v6];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v6];
        }
      }

      else if (v33)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
      }

      else
      {
        isa = *&v6;
      }

      v12 = isa;
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v42 = v33;
        v12 = v12;
        v43 = String.init(_:)(v41);
        v44 = sub_1000DF96C();
        swift_beginAccess();
        v258 = v43;
        *&v259[8] = &type metadata for String;
        *&v259[16] = v44;
        v259[24] = 1;
        v45 = a1[14];
        v13 = swift_isUniquelyReferenced_nonNull_native();
        v255[0] = a1[14];
        v46 = v255[0];
        a1[14] = 0x8000000000000000;
        v47 = sub_100771D58(v250, v251);
        v49 = *(v46 + 16);
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          __break(1u);
          goto LABEL_152;
        }

        a2 = v48;
        if (*(v46 + 24) >= v52)
        {
          if ((v13 & 1) == 0)
          {
            v229 = v47;
            sub_1010050E8();
            v47 = v229;
          }
        }

        else
        {
          sub_100FE65C4(v52, v13);
          v47 = sub_100771D58(v250, v251);
          if ((a2 & 1) != (v53 & 1))
          {
            goto LABEL_167;
          }
        }

        a1 = v248;
        LOBYTE(v33) = v42;
        a5 = v246;
        if (a2)
        {
          a2 = v47;

          v72 = v255[0];
          sub_10118B568(&v258, *(v255[0] + 56) + 48 * a2);
        }

        else
        {
          v72 = v255[0];
          *(v255[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v73 = (v72[6] + 16 * v47);
          v74 = v251;
          *v73 = v250;
          v73[1] = v74;
          v75 = (v72[7] + 48 * v47);
          v76 = *&v259[9];
          v77 = *v259;
          *v75 = v258;
          v75[1] = v77;
          *(&v75[1]._object + 1) = v76;
          v78 = v72[2];
          v51 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v51)
          {
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v72[2] = v79;
        }

        a1[14] = v72;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        [v54 doubleValue];
        v57 = v56;
        v58 = [v55 integerValue];
        a5 = v246;
        if (v57 == v58)
        {
          v59 = v58;
          v60 = sub_1000DFAD8();
          swift_beginAccess();
          v258._countAndFlagsBits = v59;
          *&v259[8] = &type metadata for Int;
          *&v259[16] = v60;
          v259[24] = 2;
          v61 = a1[14];
          v62 = swift_isUniquelyReferenced_nonNull_native();
          v63 = a1;
          v64 = v62;
          v255[0] = v63[14];
          v65 = v255[0];
          v63[14] = 0x8000000000000000;
          v66 = sub_100771D58(v250, v251);
          v68 = *(v65 + 16);
          v69 = (v67 & 1) == 0;
          v51 = __OFADD__(v68, v69);
          v70 = v68 + v69;
          if (v51)
          {
            goto LABEL_155;
          }

          a2 = v67;
          if (*(v65 + 24) >= v70)
          {
            if ((v64 & 1) == 0)
            {
              v231 = v66;
              sub_1010050E8();
              v66 = v231;
            }
          }

          else
          {
            sub_100FE65C4(v70, v64);
            v66 = sub_100771D58(v250, v251);
            if ((a2 & 1) != (v71 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v248;
          if ((a2 & 1) == 0)
          {
            v116 = v255[0];
            *(v255[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
            v117 = (v116[6] + 16 * v66);
            v118 = v251;
            *v117 = v250;
            v117[1] = v118;
            v119 = (v116[7] + 48 * v66);
            v120 = *&v259[9];
            v121 = *v259;
            *v119 = v258;
            v119[1] = v121;
            *(&v119[1]._object + 1) = v120;
            v122 = v116[2];
            v51 = __OFADD__(v122, 1);
            v123 = v122 + 1;
            if (v51)
            {
              goto LABEL_159;
            }

            goto LABEL_82;
          }

LABEL_80:
          a2 = v66;

          v116 = v255[0];
          sub_10118B568(&v258, *(v255[0] + 56) + 48 * a2);
        }

        else
        {
          v105 = sub_1000DFA84();
          swift_beginAccess();
          *&v258._countAndFlagsBits = v57;
          *&v259[8] = &type metadata for Double;
          *&v259[16] = v105;
          v259[24] = 3;
          v106 = a1[14];
          v107 = swift_isUniquelyReferenced_nonNull_native();
          v108 = a1;
          v109 = v107;
          v255[0] = v108[14];
          v110 = v255[0];
          v108[14] = 0x8000000000000000;
          v66 = sub_100771D58(v250, v251);
          v112 = *(v110 + 16);
          v113 = (v111 & 1) == 0;
          v51 = __OFADD__(v112, v113);
          v114 = v112 + v113;
          if (v51)
          {
            goto LABEL_158;
          }

          a2 = v111;
          if (*(v110 + 24) >= v114)
          {
            if ((v109 & 1) == 0)
            {
              v232 = v66;
              sub_1010050E8();
              v66 = v232;
            }
          }

          else
          {
            sub_100FE65C4(v114, v109);
            v66 = sub_100771D58(v250, v251);
            if ((a2 & 1) != (v115 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v248;
          if (a2)
          {
            goto LABEL_80;
          }

          v116 = v255[0];
          *(v255[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
          v124 = (v116[6] + 16 * v66);
          v125 = v251;
          *v124 = v250;
          v124[1] = v125;
          v126 = (v116[7] + 48 * v66);
          v127 = *&v259[9];
          v128 = *v259;
          *v126 = v258;
          v126[1] = v128;
          *(&v126[1]._object + 1) = v127;
          v129 = v116[2];
          v51 = __OFADD__(v129, 1);
          v123 = v129 + 1;
          if (v51)
          {
            goto LABEL_161;
          }

LABEL_82:
          v116[2] = v123;
        }

        a1[14] = v116;
        swift_endAccess();
LABEL_84:

        v97 = v6;
        v98 = v33;
        goto LABEL_85;
      }

      LODWORD(v250) = v33;

      a5 = v246;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_1000076D4(v91, qword_10177C6D0);
      v92 = v12;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v93, v94))
      {

        sub_101010148(*&v6, v250);
        goto LABEL_13;
      }

      a2 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *a2 = v244;
      *(a2 + 4) = v92;
      *v95 = v92;
      v96 = v92;
      _os_log_impl(&_mh_execute_header, v93, v94, "Unsupported value type: %@!", a2, 0xCu);
      sub_10000B3A8(v95, &qword_10169BB30, &unk_10138B3C0);
      a1 = v248;

      v97 = v6;
      v98 = v250;
LABEL_85:
      sub_101010148(*&v97, v98);
LABEL_13:
      v8 = v247;
    }

    while (1)
    {
      v26 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v26 >= a5)
      {

        return;
      }

      v23 = *(v8 + 8 * v26);
      ++a3;
      if (v23)
      {
        a3 = v26;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_150:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_152:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C6D0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v258._countAndFlagsBits = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000136BC(v12, v13, &v258._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v15, v16, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v17, 0xCu);
    sub_100007BAC(v18);
  }
}

unint64_t sub_1011709D8(uint64_t a1)
{
  v1 = sub_10030E76C(a1);
  v2 = *(sub_10030DB78() + 16);

  if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v3 = sub_100771D58(0x4669577265776F70, 0xE900000000000069);
  if (v4)
  {
    v5 = *(*(*(v1 + 56) + 8 * v3) + 16);
    if (!*(v1 + 16))
    {
      goto LABEL_11;
    }
  }

  else if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_100771D58(0x6C65437265776F70, 0xE90000000000006CLL);
  if (v7)
  {
    v8 = *(*(*(v1 + 56) + 8 * v6) + 16);
    if (!*(v1 + 16))
    {
      goto LABEL_11;
    }
  }

  else if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v9 = sub_100771D58(0x5779726574746162, 0xEB00000000694669);
  if (v10)
  {
    v11 = *(*(*(v1 + 56) + 8 * v9) + 16);
    if (!*(v1 + 16))
    {
      goto LABEL_11;
    }
  }

  else if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v15 = sub_100771D58(0x4379726574746162, 0xEB000000006C6C65);
  if (v16)
  {
    v17 = *(*(v1 + 56) + 8 * v15);

    v18 = *(v17 + 16);

    goto LABEL_12;
  }

LABEL_11:

LABEL_12:
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138C0D0;
  strcpy((inited + 32), "publishCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  strcpy((inited + 64), "powerWiFiCount");
  *(inited + 79) = -18;
  *(inited + 80) = Int._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  strcpy((inited + 96), "powerCellCount");
  *(inited + 111) = -18;
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x800000010137D090;
  *(inited + 144) = Int._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x800000010137D0B0;
  *(inited + 176) = Int._bridgeToObjectiveC()();
  *(inited + 184) = 0;
  v13 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v13;
}
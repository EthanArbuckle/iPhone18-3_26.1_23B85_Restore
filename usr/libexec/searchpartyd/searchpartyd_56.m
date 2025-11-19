uint64_t sub_1005DF498@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1000BC4D4(&qword_10169C9D0, &qword_101398A88);
  v3 = (sub_1000BC4D4(&qword_10169C9D8, &qword_1013B3280) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = v6 + v5;
  v8 = v3[14];
  v10 = a1[3];
  v9 = a1[4];
  sub_1000035D0(a1, v10);
  (*(*(*(v9 + 8) + 8) + 32))(v10);

  v12 = sub_10112A090(v11);

  *(v7 + v8) = v12;
  v13 = sub_1009089B8(v6);
  swift_setDeallocating();
  sub_10000B3A8(v7, &qword_10169C9D8, &qword_1013B3280);
  swift_deallocClassInstance();
  v14 = sub_1005CEE64(v13);

  *a2 = v14;
  return result;
}

uint64_t sub_1005DF640(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v62 = &v55 - v9;
  v10 = type metadata accessor for LocationFetcher();
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  v12 = __chkstk_darwin(v10);
  v60 = v13;
  v61 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (&v55 - v14);
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v17 = *(RequestBeacon - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(RequestBeacon - 8);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_1016A5950, &qword_1013B3458);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = Future.init()();
  v25 = v24;
  if (!a2[2])
  {
    sub_10062B0D0();
    swift_allocError();
    *v42 = 1;
    Future.finish(error:)();

    return v25;
  }

  v56 = v24;
  v63 = a2;

  sub_1005FBB98(&v63);
  if (!v3)
  {
    v57 = a2;
    v58 = a1;
    v26 = v63;
    v27 = v63[2];
    if (v27)
    {
      v28 = 0;
      while (v28 < v26[2])
      {
        sub_10062CD24(v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v28, v20, type metadata accessor for FetchRequestBeacon);
        sub_1005F62D4(v20);
        ++v28;
        sub_10062CBB8(v20, type metadata accessor for FetchRequestBeacon);
        if (v27 == v28)
        {
          goto LABEL_8;
        }
      }

      __break(1u);

      sub_10062CBB8(v20, type metadata accessor for FetchRequestBeacon);
      __break(1u);
      goto LABEL_16;
    }

LABEL_8:

    v29 = *(v10 + 32);
    sub_10062CD24(v4, v15, type metadata accessor for LocationFetcher);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63 = v55;
      *v32 = 136446210;
      v34 = v15[6];
      v33 = v15[7];
      sub_1000035D0(v15 + 3, v34);
      v35 = (*(v33 + 48))(v34, v33);
      v38 = sub_100EAAD78(v35, v36, v37);
      v40 = v39;

      sub_10062CBB8(v15, type metadata accessor for LocationFetcher);
      v41 = sub_1000136BC(v38, v40, &v63);

      *(v32 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Location fetch request for context: %{public}s.", v32, 0xCu);
      sub_100007BAC(v55);
    }

    else
    {

      sub_10062CBB8(v15, type metadata accessor for LocationFetcher);
    }

    v44 = v57;
    v45 = v4[6];
    v46 = v4[7];
    sub_1000035D0(v4 + 3, v45);
    LODWORD(v57) = (*(v46 + 64))(v45, v46);
    v47 = type metadata accessor for TaskPriority();
    v48 = v62;
    (*(*(v47 - 8) + 56))(v62, 1, 1, v47);
    v49 = v61;
    sub_10062CD24(v4, v61, type metadata accessor for LocationFetcher);
    v50 = (*(v59 + 80) + 40) & ~*(v59 + 80);
    v51 = v50 + v60;
    v52 = (((v50 + v60) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v53[2] = 0;
    v53[3] = 0;
    v53[4] = v44;
    sub_10062CC64(v49, v53 + v50, type metadata accessor for LocationFetcher);
    *(v53 + v51) = v57 & 1;
    *(v53 + (v51 & 0xFFFFFFFFFFFFFFF8) + 8) = v58;
    v43 = v56;
    *(v53 + v52) = v56;

    sub_10025EDD4(0, 0, v48, &unk_1013B3468, v53);

    return v43;
  }

LABEL_16:

  __break(1u);
  return result;
}

void sub_1005DFC44(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = *(type metadata accessor for LocationFetcher() + 32);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000136BC(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetch error: %{public}s.", v10, 0xCu);
    sub_100007BAC(v11);
  }

  swift_beginAccess();
  v15 = *(a3 + 16);
  *(a3 + 16) = a1;

  swift_errorRetain();
  dispatch_group_leave(a4);
}

void sub_1005DFDCC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v7 = sub_1005DFEA4(*a1, a4);
  swift_beginAccess();
  v8 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_10062B710(v7, sub_10060D9D0, 0, isUniquelyReferenced_nonNull_native, &v10);

  *(a2 + 16) = v10;
  swift_endAccess();
  dispatch_group_leave(a5);
}

uint64_t sub_1005DFEA4(uint64_t a1, unint64_t a2)
{
  v109 = a1;
  v117 = sub_1000BC4D4(&qword_1016A5920, &unk_1013B33B8);
  v3 = *(*(v117 - 8) + 64);
  v4 = __chkstk_darwin(v117);
  v112 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v111 = &v107 - v7;
  __chkstk_darwin(v6);
  v123 = &v107 - v8;
  v115 = type metadata accessor for FetchResponse.SearchResult();
  v110 = *(v115 - 8);
  v9 = *(v110 + 64);
  v10 = __chkstk_darwin(v115 - 8);
  v120 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v107 - v13;
  v15 = __chkstk_darwin(v12);
  v121 = &v107 - v16;
  v17 = __chkstk_darwin(v15);
  v108 = &v107 - v18;
  __chkstk_darwin(v17);
  v114 = &v107 - v19;
  v126 = type metadata accessor for UUID();
  v20 = *(v126 - 8);
  v21 = v20[8];
  __chkstk_darwin(v126);
  v127 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v24 = *(*(RequestBeacon - 8) + 64);
  __chkstk_darwin(RequestBeacon - 8);
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 + 16);
  v118 = a2;
  *&v113 = v20;
  if (v28)
  {
    v29 = a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v30 = *(v25 + 72);
    v125 = (v20 + 2);
    v122 = (v20 + 1);
    v31 = _swiftEmptyDictionarySingleton;
    v124 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v34 = v14;
      sub_10062CD24(v29, v27, type metadata accessor for FetchRequestBeacon);
      v35 = *v125;
      v36 = v127;
      (*v125)(v127, v27, v126);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v31;
      v39 = sub_1000210EC(v36);
      v40 = v31[2];
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        break;
      }

      v43 = v38;
      if (v31[3] >= v42)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101007198();
        }
      }

      else
      {
        sub_100FEA770(v42, isUniquelyReferenced_nonNull_native);
        v44 = sub_1000210EC(v127);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_52;
        }

        v39 = v44;
      }

      v14 = v34;
      v46 = v129;
      if (v43)
      {
        v32 = v129[7];
        v33 = *(v32 + v39);
        *(v32 + v39) = &_swiftEmptySetSingleton;

        (*v122)(v127, v126);
        v27 = v124;
        sub_10062CBB8(v124, type metadata accessor for FetchRequestBeacon);
      }

      else
      {
        v119 = v28;
        v47 = v30;
        v48 = v34;
        v129[(v39 >> 6) + 8] = (v129[(v39 >> 6) + 8] | (1 << v39));
        v49 = v113;
        v50 = v126;
        v51 = v127;
        v35(v46[6] + *(v113 + 72) * v39, v127, v126);
        *(v46[7] + v39) = &_swiftEmptySetSingleton;

        (*(v49 + 8))(v51, v50);
        v27 = v124;
        sub_10062CBB8(v124, type metadata accessor for FetchRequestBeacon);
        v52 = v46[2];
        v53 = __OFADD__(v52, 1);
        v54 = (v52 + 1);
        if (v53)
        {
          goto LABEL_51;
        }

        v46[2] = v54;
        v14 = v48;
        v30 = v47;
        v28 = v119;
      }

      v29 += v30;
      v31 = v46;
      if (!--v28)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v46 = _swiftEmptyDictionarySingleton;
LABEL_15:
    v125 = v46;
    v116 = *(type metadata accessor for LocationFetcher() + 32);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Owned locations processing", v57, 2u);
    }

    v59 = v115;
    v60 = v108;
    v127 = *(v109 + 16);
    if (v127)
    {
      v61 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v62 = *(v110 + 72);
      v63 = v109 + v61;
      v122 = _swiftEmptyArrayStorage;
      v64 = v127;
      v65 = v114;
      do
      {
        sub_10062CD24(v63, v65, type metadata accessor for FetchResponse.SearchResult);
        if (*(v65 + *(v59 + 28)) == 15)
        {
          sub_10062CC64(v65, v60, type metadata accessor for FetchResponse.SearchResult);
          v66 = v122;
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v68 = v66;
          v129 = v66;
          if ((v67 & 1) == 0)
          {
            sub_101124EAC(0, v66[2] + 1, 1);
            v59 = v115;
            v68 = v129;
          }

          v70 = v68[2];
          v69 = v68[3];
          if (v70 >= v69 >> 1)
          {
            sub_101124EAC(v69 > 1, v70 + 1, 1);
            v59 = v115;
            v68 = v129;
          }

          v68[2] = (v70 + 1);
          v122 = v68;
          sub_10062CC64(v60, v68 + v61 + v70 * v62, type metadata accessor for FetchResponse.SearchResult);
          v65 = v114;
        }

        else
        {
          sub_10062CBB8(v65, type metadata accessor for FetchResponse.SearchResult);
        }

        v63 += v62;
        --v64;
      }

      while (v64);
    }

    else
    {
      v122 = _swiftEmptyArrayStorage;
    }

    v108 = v14;
    v71 = v122[2];
    if (v71)
    {
      v72 = v122 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
      v119 = *(v110 + 72);
      v114 = (v113 + 8);
      *&v58 = 136446210;
      v113 = v58;
      v73 = v118;
      v74 = v121;
      v75 = v123;
      do
      {
        sub_10062CD24(v72, v74, type metadata accessor for FetchResponse.SearchResult);
        v76 = objc_autoreleasePoolPush();
        v77 = sub_1005E9858(v75, v74, v73);
        v78 = v117;
        *(v75 + *(v117 + 48)) = v77;
        v79 = v111;
        sub_1000D2A70(v75, v111, &qword_1016A5920, &unk_1013B33B8);
        v80 = *(v79 + *(v78 + 48));

        v81 = v125[2];
        v124 = v76;
        if (v81 && (v82 = sub_1000210EC(v79), (v83 & 1) != 0))
        {
          v129 = *(v125[7] + v82);
        }

        else
        {
          v129 = &_swiftEmptySetSingleton;
        }

        v84 = *v114;
        v85 = v126;
        (*v114)(v79, v126);
        v86 = v112;
        sub_1000D2A70(v75, v112, &qword_1016A5920, &unk_1013B33B8);
        v87 = v117;
        sub_1006254B4(*(v86 + *(v117 + 48)));

        v84(v86, v85);
        sub_1000D2A70(v123, v86, &qword_1016A5920, &unk_1013B33B8);
        v88 = *(v86 + *(v87 + 48));

        v89 = v129;
        v90 = v125;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v90;
        sub_100FFC200(v89, v86, v91);
        v75 = v123;
        v84(v86, v85);
        v125 = v128;
        sub_10000B3A8(v75, &qword_1016A5920, &unk_1013B33B8);
        v73 = v118;
        objc_autoreleasePoolPop(v124);
        v74 = v121;
        sub_10062CBB8(v121, type metadata accessor for FetchResponse.SearchResult);
        v72 += v119;
        v71 = (v71 - 1);
      }

      while (v71);
    }

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v108;
    if (v94)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Unowned locations processing", v96, 2u);
    }

    if (v127)
    {
      v97 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v98 = *(v110 + 72);
      v99 = v109 + v97;
      v100 = _swiftEmptyArrayStorage;
      v101 = v115;
      do
      {
        sub_10062CD24(v99, v95, type metadata accessor for FetchResponse.SearchResult);
        if (*(v95 + *(v101 + 28)) == 15)
        {
          sub_10062CBB8(v95, type metadata accessor for FetchResponse.SearchResult);
        }

        else
        {
          sub_10062CC64(v95, v120, type metadata accessor for FetchResponse.SearchResult);
          v102 = swift_isUniquelyReferenced_nonNull_native();
          v129 = v100;
          if ((v102 & 1) == 0)
          {
            sub_101124EAC(0, v100[2] + 1, 1);
            v101 = v115;
            v100 = v129;
          }

          v104 = v100[2];
          v103 = v100[3];
          if (v104 >= v103 >> 1)
          {
            sub_101124EAC(v103 > 1, v104 + 1, 1);
            v101 = v115;
            v100 = v129;
          }

          v100[2] = (v104 + 1);
          sub_10062CC64(v120, v100 + v97 + v104 * v98, type metadata accessor for FetchResponse.SearchResult);
        }

        v99 += v98;
        --v127;
      }

      while (v127);
    }

    else
    {
      v100 = _swiftEmptyArrayStorage;
    }

    v105 = sub_1005EB758(v100, v118, v125);

    return v105;
  }

  return result;
}

void *sub_1005E0BB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A58E8, &qword_1013B3348);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - v6;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v8 = *(RequestBeacon - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(RequestBeacon);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = &v40 - v12;
  v47 = sub_1000BC4D4(&qword_1016A58F0, &unk_1013B3350);
  v13 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v15 = &v40 - v14;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v42 = v8;
  v45 = (v8 + 48);
  v49 = a1;

  v22 = 0;
  v44 = _swiftEmptyArrayStorage;
  while (1)
  {
    v23 = v22;
    if (!v19)
    {
      break;
    }

    v24 = v15;
    v50 = v2;
    v25 = v7;
LABEL_10:
    v26 = __clz(__rbit64(v19)) | (v22 << 6);
    v27 = v49;
    v28 = *(v49 + 48);
    v29 = type metadata accessor for UUID();
    v30 = *(v29 - 8);
    v31 = v28 + *(v30 + 72) * v26;
    v15 = v24;
    (*(v30 + 16))(v24, v31, v29);
    v32 = *(*(v27 + 56) + 8 * v26);
    *(v24 + *(v47 + 48)) = v32;

    v7 = v25;
    v33 = v32;
    v34 = v50;
    sub_1005E0FF0(v33, v48, v25);
    v2 = v34;
    if (v34)
    {

      sub_10000B3A8(v24, &qword_1016A58F0, &unk_1013B3350);

      return v44;
    }

    v19 &= v19 - 1;
    sub_10000B3A8(v24, &qword_1016A58F0, &unk_1013B3350);
    if ((*v45)(v7, 1, RequestBeacon) == 1)
    {
      result = sub_10000B3A8(v7, &qword_1016A58E8, &qword_1013B3348);
    }

    else
    {
      v35 = v41;
      sub_10062CC64(v7, v41, type metadata accessor for FetchRequestBeacon);
      sub_10062CC64(v35, v43, type metadata accessor for FetchRequestBeacon);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_100A5D0C8(0, v44[2] + 1, 1, v44);
      }

      v37 = v44[2];
      v36 = v44[3];
      if (v37 >= v36 >> 1)
      {
        v44 = sub_100A5D0C8(v36 > 1, v37 + 1, 1, v44);
      }

      v38 = v43;
      v39 = v44;
      v44[2] = v37 + 1;
      result = sub_10062CC64(v38, v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37, type metadata accessor for FetchRequestBeacon);
    }
  }

  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      return v44;
    }

    v19 = *(v16 + 8 * v22);
    ++v23;
    if (v19)
    {
      v24 = v15;
      v50 = v2;
      v25 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005E0FF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v151 = a2;
  v5 = sub_1000BC4D4(&qword_1016A58E8, &qword_1013B3348);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v142 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v126 = &v121 - v10;
  __chkstk_darwin(v9);
  v152 = &v121 - v11;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v13 = *(RequestBeacon - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(RequestBeacon);
  v121 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v123 = &v121 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v121 - v20;
  v22 = __chkstk_darwin(v19);
  v131 = &v121 - v23;
  v24 = __chkstk_darwin(v22);
  v141 = &v121 - v25;
  v26 = __chkstk_darwin(v24);
  v140 = &v121 - v27;
  v28 = __chkstk_darwin(v26);
  v130 = &v121 - v29;
  v30 = __chkstk_darwin(v28);
  v129 = &v121 - v31;
  v32 = __chkstk_darwin(v30);
  v145 = &v121 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v121 - v35;
  v37 = __chkstk_darwin(v34);
  v139 = &v121 - v38;
  v39 = __chkstk_darwin(v37);
  v138 = &v121 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v121 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v121 - v45;
  __chkstk_darwin(v44);
  v48 = &v121 - v47;
  v149 = *(v13 + 56);
  v150 = v13 + 56;
  v149(a3, 1, 1, RequestBeacon);
  v50 = a1;
  v51 = *(a1 + 16);
  v124 = v43;
  v122 = v21;
  v125 = v13;
  if (v51)
  {
    v52 = v13;
    v53 = v50 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v148 = (v52 + 48);
    v146 = *(v52 + 72);
    *&v49 = 141558531;
    v128 = v49;
    *&v49 = 141559299;
    v127 = v49;
    v143 = v36;
    v144 = a3;
    v147 = RequestBeacon;
    v54 = v152;
    v137 = v46;
    v136 = v48;
    while (1)
    {
      sub_10062CD24(v53, v48, type metadata accessor for FetchRequestBeacon);
      sub_1000D2A70(a3, v54, &qword_1016A58E8, &qword_1013B3348);
      v57 = (*v148)(v54, 1, RequestBeacon);
      v153 = v53;
      v154 = v51;
      if (v57 != 1)
      {
        break;
      }

      sub_10000B3A8(a3, &qword_1016A58E8, &qword_1013B3348);
      sub_10000B3A8(v54, &qword_1016A58E8, &qword_1013B3348);
      sub_10062CD24(v48, a3, type metadata accessor for FetchRequestBeacon);
      v149(a3, 0, 1, RequestBeacon);
      v58 = *(type metadata accessor for LocationFetcher() + 32);
      v59 = v140;
      sub_10062CD24(v48, v140, type metadata accessor for FetchRequestBeacon);
      v60 = v48;
      v61 = v48;
      v62 = v141;
      sub_10062CD24(v60, v141, type metadata accessor for FetchRequestBeacon);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = v64;
        v66 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        *v66 = v128;
        *(v66 + 4) = 1752392040;
        *(v66 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100009774(&qword_101696930, &type metadata accessor for UUID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        sub_10062CBB8(v59, type metadata accessor for FetchRequestBeacon);
        v70 = sub_1000136BC(v67, v69, &v158);

        *(v66 + 14) = v70;
        *(v66 + 22) = 2082;
        v71 = v131;
        sub_10062CD24(v62, v131, type metadata accessor for FetchRequestBeacon);
        v72 = objc_autoreleasePoolPush();
        v73 = v155;
        sub_100EABD30(v71, &v156);
        if (v73)
        {
          v120 = v62;
          goto LABEL_29;
        }

        objc_autoreleasePoolPop(v72);
        sub_10062CBB8(v71, type metadata accessor for FetchRequestBeacon);
        sub_10062CBB8(v62, type metadata accessor for FetchRequestBeacon);
        v74 = sub_1000136BC(v156, v157, &v158);

        *(v66 + 24) = v74;
        _os_log_impl(&_mh_execute_header, v63, v65, "Initial fetch instruction %{private,mask.hash}s, %{public}s.", v66, 0x20u);
        swift_arrayDestroy();

        v48 = v136;
        sub_10062CBB8(v136, type metadata accessor for FetchRequestBeacon);
        v155 = 0;
        a3 = v144;
        v46 = v137;
LABEL_15:
        v55 = v153;
        v56 = v154;
        goto LABEL_4;
      }

      sub_10062CBB8(v62, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v59, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v61, type metadata accessor for FetchRequestBeacon);
      a3 = v144;
      v48 = v61;
      v55 = v153;
      v56 = v154;
LABEL_4:
      RequestBeacon = v147;
      v53 = v55 + v146;
      v51 = v56 - 1;
      v54 = v152;
      if (!v51)
      {
        goto LABEL_17;
      }
    }

    sub_10062CC64(v54, v46, type metadata accessor for FetchRequestBeacon);
    v75 = v142;
    v76 = v155;
    sub_100EA9B38(v48, v142);
    v155 = v76;
    if (v76)
    {
      sub_10062CBB8(v46, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v48, type metadata accessor for FetchRequestBeacon);
      return sub_10000B3A8(a3, &qword_1016A58E8, &qword_1013B3348);
    }

    sub_10000B3A8(a3, &qword_1016A58E8, &qword_1013B3348);
    v149(v75, 0, 1, RequestBeacon);
    sub_1000D2AD8(v75, a3, &qword_1016A58E8, &qword_1013B3348);
    v77 = *(type metadata accessor for LocationFetcher() + 32);
    v78 = v138;
    sub_10062CD24(v46, v138, type metadata accessor for FetchRequestBeacon);
    v65 = v139;
    sub_10062CD24(v46, v139, type metadata accessor for FetchRequestBeacon);
    v79 = v143;
    sub_10062CD24(v48, v143, type metadata accessor for FetchRequestBeacon);
    v80 = v145;
    sub_10062CD24(v48, v145, type metadata accessor for FetchRequestBeacon);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v134 = v82;
      v135 = v81;
      v83 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v158 = v133;
      *v83 = v127;
      *(v83 + 4) = 1752392040;
      *(v83 + 12) = 2081;
      v84 = type metadata accessor for UUID();
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v132 = v84;
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      sub_10062CBB8(v78, type metadata accessor for FetchRequestBeacon);
      v88 = sub_1000136BC(v85, v87, &v158);

      *(v83 + 14) = v88;
      *(v83 + 22) = 2082;
      v89 = v129;
      sub_10062CD24(v65, v129, type metadata accessor for FetchRequestBeacon);
      v90 = objc_autoreleasePoolPush();
      v91 = v155;
      sub_100EABD30(v89, &v156);
      if (v91)
      {
        v72 = type metadata accessor for FetchRequestBeacon;
        sub_10062CBB8(v145, type metadata accessor for FetchRequestBeacon);
        sub_10062CBB8(v143, type metadata accessor for FetchRequestBeacon);
        sub_10062CBB8(v65, type metadata accessor for FetchRequestBeacon);
        objc_autoreleasePoolPop(v90);
        __break(1u);
        v120 = v79;
        goto LABEL_29;
      }

      objc_autoreleasePoolPop(v90);
      sub_10062CBB8(v89, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v65, type metadata accessor for FetchRequestBeacon);
      v92 = sub_1000136BC(v156, v157, &v158);

      *(v83 + 24) = v92;
      *(v83 + 32) = 2160;
      *(v83 + 34) = 1752392040;
      *(v83 + 42) = 2081;
      v93 = v143;
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      sub_10062CBB8(v93, type metadata accessor for FetchRequestBeacon);
      v97 = sub_1000136BC(v94, v96, &v158);

      *(v83 + 44) = v97;
      *(v83 + 52) = 2082;
      v98 = v145;
      v99 = v130;
      sub_10062CD24(v145, v130, type metadata accessor for FetchRequestBeacon);
      v100 = objc_autoreleasePoolPush();
      sub_100EABD30(v99, &v156);
      v155 = 0;
      v55 = v153;
      v56 = v154;
      objc_autoreleasePoolPop(v100);
      sub_10062CBB8(v99, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v98, type metadata accessor for FetchRequestBeacon);
      v101 = sub_1000136BC(v156, v157, &v158);

      *(v83 + 54) = v101;
      v102 = v135;
      _os_log_impl(&_mh_execute_header, v135, v134, "Combining fetch instruction %{private,mask.hash}s %{public}s with %{private,mask.hash}s %{public}s.", v83, 0x3Eu);
      swift_arrayDestroy();

      v46 = v137;
      sub_10062CBB8(v137, type metadata accessor for FetchRequestBeacon);
      v48 = v136;
      sub_10062CBB8(v136, type metadata accessor for FetchRequestBeacon);
      a3 = v144;
      goto LABEL_4;
    }

    sub_10062CBB8(v80, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v79, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v65, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v78, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v46, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v48, type metadata accessor for FetchRequestBeacon);
    goto LABEL_15;
  }

LABEL_17:
  v103 = RequestBeacon;
  v104 = v126;
  sub_1000D2A70(a3, v126, &qword_1016A58E8, &qword_1013B3348);
  if ((*(v125 + 48))(v104, 1, v103) == 1)
  {
    return sub_10000B3A8(v104, &qword_1016A58E8, &qword_1013B3348);
  }

  v106 = v124;
  sub_10062CC64(v104, v124, type metadata accessor for FetchRequestBeacon);
  v107 = *(type metadata accessor for LocationFetcher() + 32);
  v108 = v122;
  sub_10062CD24(v106, v122, type metadata accessor for FetchRequestBeacon);
  v65 = v123;
  sub_10062CD24(v106, v123, type metadata accessor for FetchRequestBeacon);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    *v111 = 141558531;
    *(v111 + 4) = 1752392040;
    *(v111 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = v113;
    sub_10062CBB8(v108, type metadata accessor for FetchRequestBeacon);
    v115 = sub_1000136BC(v112, v114, &v158);

    *(v111 + 14) = v115;
    *(v111 + 22) = 2082;
    v116 = v121;
    sub_10062CD24(v65, v121, type metadata accessor for FetchRequestBeacon);
    v72 = objc_autoreleasePoolPush();
    v117 = v155;
    sub_100EABD30(v116, &v156);
    v155 = v117;
    if (v117)
    {
      while (1)
      {
        v120 = v65;
LABEL_29:
        sub_10062CBB8(v120, type metadata accessor for FetchRequestBeacon);
        objc_autoreleasePoolPop(v72);
        __break(1u);
      }
    }

    objc_autoreleasePoolPop(v72);
    sub_10062CBB8(v116, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v65, type metadata accessor for FetchRequestBeacon);
    v118 = sub_1000136BC(v156, v157, &v158);

    *(v111 + 24) = v118;
    _os_log_impl(&_mh_execute_header, v109, v110, "Combined fetch instruction result %{private,mask.hash}s %{public}s.", v111, 0x20u);
    swift_arrayDestroy();

    v119 = v124;
  }

  else
  {

    sub_10062CBB8(v65, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v108, type metadata accessor for FetchRequestBeacon);
    v119 = v106;
  }

  return sub_10062CBB8(v119, type metadata accessor for FetchRequestBeacon);
}

void sub_1005E20B0(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v269 = a4;
  v266 = a3;
  v281 = a2;
  v275 = a6;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v274 = *(RequestBeacon - 8);
  v10 = *(v274 + 64);
  v11 = __chkstk_darwin(RequestBeacon);
  v256 = &v237 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v259 = &v237 - v14;
  __chkstk_darwin(v13);
  v267 = &v237 - v15;
  v16 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v271 = *(v16 - 8);
  v17 = *(v271 + 64);
  __chkstk_darwin(v16 - 8);
  v279 = (&v237 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v254 = &v237 - v21;
  v22 = type metadata accessor for OwnedBeaconRecord();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v252 = &v237 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = &v237 - v27;
  v29 = __chkstk_darwin(v26);
  v253 = &v237 - v30;
  v31 = __chkstk_darwin(v29);
  v251 = &v237 - v32;
  __chkstk_darwin(v31);
  v255 = &v237 - v33;
  v34 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v265 = &v237 - v36;
  v273 = type metadata accessor for UUID();
  v272 = *(v273 - 8);
  v37 = *(v272 + 64);
  v38 = __chkstk_darwin(v273);
  v257 = &v237 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v280 = &v237 - v40;
  v264 = type metadata accessor for Date();
  v263 = *(v264 - 8);
  v41 = *(v263 + 64);
  v42 = __chkstk_darwin(v264);
  v262 = &v237 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v261 = &v237 - v45;
  v46 = __chkstk_darwin(v44);
  v260 = &v237 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v237 - v49;
  __chkstk_darwin(v48);
  v268 = &v237 - v51;
  v52 = type metadata accessor for DateInterval();
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52);
  v55 = __chkstk_darwin(v54);
  v59 = &v237 - v58;
  v277 = a1;
  v60 = *(a1 + 16);
  if (!v60)
  {
    v80 = *(type metadata accessor for LocationFetcher() + 32);
    sub_10001F280(v281, &v282);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v285[0] = swift_slowAlloc();
      *v83 = 141558531;
      *(v83 + 4) = 1752392040;
      *(v83 + 12) = 2081;
      v85 = v283;
      v84 = v284;
      sub_1000035D0(&v282, v283);
      v86 = v280;
      (*(*(*(v84 + 8) + 8) + 32))(v85);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v87 = v273;
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      (*(v272 + 8))(v86, v87);
      sub_100007BAC(&v282);
      v91 = sub_1000136BC(v88, v90, v285);

      *(v83 + 14) = v91;
      *(v83 + 22) = 2082;
      if (v266)
      {
        v92 = 0x61646E6F6365732ELL;
      }

      else
      {
        v92 = 0x7972616D6972702ELL;
      }

      if (v266)
      {
        v93 = 0xEA00000000007972;
      }

      else
      {
        v93 = 0xE800000000000000;
      }

      v94 = sub_1000136BC(v92, v93, v285);

      *(v83 + 24) = v94;
      _os_log_impl(&_mh_execute_header, v81, v82, "No keys to fetch for beacon %{private,mask.hash}s, sequence: %{public}s.", v83, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100007BAC(&v282);
    }

    goto LABEL_23;
  }

  v61 = *(a1 + 16);
  v62 = a5;
  if ((*(a5 + 8) & 1) == 0)
  {
    v61 = *a5;
    if (*a5 <= 0)
    {
LABEL_23:
      (*(v274 + 56))(v275, 1, 1, RequestBeacon);
      return;
    }
  }

  v63 = v61 - v269;
  if (__OFSUB__(v61, v269))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v63 > v61)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v63 > v60)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v60 < v61)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    swift_once();
    goto LABEL_32;
  }

  v64 = v57;
  v250 = v56;
  v269 = v55;
  v248 = v62;
  v270 = v61;
  v65 = type metadata accessor for TimeBasedKey();
  v66 = *(v65 - 8);
  if (v63 == v270)
  {
    v67 = *(type metadata accessor for LocationFetcher() + 32);

    sub_10001F280(v281, &v282);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v285[0] = v71;
      *v70 = 141558275;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2081;
      v73 = v283;
      v72 = v284;
      sub_1000035D0(&v282, v283);
      v74 = v280;
      (*(*(*(v72 + 8) + 8) + 32))(v73);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v75 = v273;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      (*(v272 + 8))(v74, v75);
      sub_100007BAC(&v282);
      v79 = sub_1000136BC(v76, v78, v285);

      *(v70 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v68, v69, "Keys with invalid date interval for beacon %{private,mask.hash}s.", v70, 0x16u);
      sub_100007BAC(v71);
    }

    else
    {

      sub_100007BAC(&v282);
    }

    sub_10062B0D0();
    swift_allocError();
    *v116 = 2;
    swift_willThrow();

    return;
  }

  if (v63 >= v270)
  {
    goto LABEL_131;
  }

  v240 = v23;
  v239 = v24;
  v241 = v22;
  v238 = v28;
  v258 = v6;
  v95 = v277 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
  v246 = *(v66 + 72);
  v247 = v63 & ~(v63 >> 63);
  v96 = v64 + 16;
  v97 = *(v64 + 16);
  v98 = v95 + v246 * v247 + *(v65 + 20);
  v99 = v250;
  v245 = v65;
  v249 = v59;
  v100 = v269;
  v97(v250, v98, v269);

  DateInterval.start.getter();
  v102 = v64 + 8;
  v101 = *(v64 + 8);
  v101(v99, v100);
  v103 = v263;
  v104 = v50;
  v105 = v264;
  (*(v263 + 32))(v268, v104, v264);
  v244 = v95;
  v106 = v95 + v246 * (v270 - 1) + *(v245 + 5);
  v243 = v96;
  v242 = v97;
  v97(v99, v106, v100);
  v107 = v260;
  DateInterval.end.getter();
  v246 = v102;
  v245 = v101;
  v101(v99, v100);
  v108 = *(v103 + 16);
  v109 = v268;
  v108(v261, v268, v105);
  v108(v262, v107, v105);
  DateInterval.init(start:end:)();
  v110 = *(v103 + 8);
  v110(v107, v105);
  v110(v109, v105);
  v111 = v281[3];
  v112 = v281[4];
  sub_1000035D0(v281, v111);
  v113 = v265;
  (*(v112 + 200))(v111, v112);
  v114 = v272;
  v115 = v273;
  if ((*(v272 + 48))(v113, 1, v273) == 1)
  {
    sub_10000B3A8(v113, &qword_1016980D0, &unk_10138F3B0);
    LODWORD(v263) = 0;
    v7 = v258;
    v23 = v280;
    v24 = v278;
  }

  else
  {
    v117 = v257;
    (*(v114 + 32))(v257, v113, v115);
    v24 = v278;
    v118 = *v278;
    sub_100ACBC98(v117, &v282);
    v119 = v283;
    v7 = v258;
    v23 = v280;
    if (v283)
    {
      v120 = v284;
      sub_1000035D0(&v282, v283);
      LODWORD(v263) = (*(v120 + 24))(v119, v120);
      (*(v114 + 8))(v117, v115);
      sub_100007BAC(&v282);
    }

    else
    {
      (*(v114 + 8))(v117, v115);
      sub_10000B3A8(&v282, &unk_1016AA480, &unk_1013BD050);
      LODWORD(v263) = 0;
    }
  }

  v121 = *(v24 + 48);
  v122 = *(v24 + 56);
  sub_1000035D0((v24 + 24), v121);
  v123 = (*(v122 + 40))(v121, v122);
  v59 = _swiftEmptyArrayStorage;
  v287 = _swiftEmptyArrayStorage;
  v124 = *(v24 + 48);
  v125 = *(v24 + 56);
  sub_1000035D0((v24 + 24), v124);
  v126 = (*(v125 + 64))(v124, v125);
  LODWORD(v262) = v123;
  if ((v126 & 1) == 0)
  {
    goto LABEL_41;
  }

  if (qword_101694E50 != -1)
  {
    goto LABEL_134;
  }

LABEL_32:
  v127 = *(qword_10177C010 + 16);

  OS_dispatch_queue.sync<A>(execute:)();

  v128 = v282;

  if (v128 != 1)
  {
    v258 = v7;
LABEL_41:
    v151 = v277;
    v152 = v267;
    v153 = v266;
    v154 = v281;
    v155 = v249;
    goto LABEL_42;
  }

  sub_10001F280(v281, &v282);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v129 = v254;
  v130 = v241;
  v131 = swift_dynamicCast();
  v132 = *(v240 + 56);
  if ((v131 & 1) == 0)
  {
    v258 = v7;
    v132(v129, 1, 1, v130);
    sub_10000B3A8(v129, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_41;
  }

  v132(v129, 0, 1, v130);
  v133 = v255;
  sub_10062CC64(v129, v255, type metadata accessor for OwnedBeaconRecord);
  v134 = *(*v24 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v135 = sub_1012DEC1C((v133 + *(v130 + 20)));
  v136 = &qword_101695000;
  if (v7)
  {

    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    sub_1000076D4(v137, qword_10177CE28);
    v138 = v252;
    sub_10062CD24(v133, v252, type metadata accessor for OwnedBeaconRecord);
    swift_errorRetain();
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v282 = v143;
      *v141 = 141558531;
      *(v141 + 4) = 1752392040;
      *(v141 + 12) = 2081;
      v144 = *(v241 + 20);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v145 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v138;
      v148 = v147;
      sub_10062CBB8(v146, type metadata accessor for OwnedBeaconRecord);
      v149 = sub_1000136BC(v145, v148, &v282);

      *(v141 + 14) = v149;
      *(v141 + 22) = 2112;
      swift_errorRetain();
      v150 = _swift_stdlib_bridgeErrorToNSError();
      *(v141 + 24) = v150;
      *v142 = v150;
      _os_log_impl(&_mh_execute_header, v139, v140, "Failed to get ownedDeviceKeys for %{private,mask.hash}s error %@.", v141, 0x20u);
      sub_10000B3A8(v142, &qword_10169BB30, &unk_10138B3C0);
      v136 = &qword_101695000;

      sub_100007BAC(v143);

      v133 = v255;
    }

    else
    {

      sub_10062CBB8(v138, type metadata accessor for OwnedBeaconRecord);
    }

    v24 = v238;
  }

  else
  {
    v185 = v135;

    v287 = v185;
    v24 = v238;
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v186 = type metadata accessor for Logger();
    sub_1000076D4(v186, qword_10177CE28);
    v187 = v251;
    sub_10062CD24(v133, v251, type metadata accessor for OwnedBeaconRecord);
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v282 = v191;
      *v190 = 141558275;
      *(v190 + 4) = 1752392040;
      *(v190 + 12) = 2081;
      v192 = *(v241 + 20);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v193 = dispatch thunk of CustomStringConvertible.description.getter();
      v194 = v187;
      v196 = v195;
      sub_10062CBB8(v194, type metadata accessor for OwnedBeaconRecord);
      v197 = sub_1000136BC(v193, v196, &v282);

      *(v190 + 14) = v197;
      _os_log_impl(&_mh_execute_header, v188, v189, "Successfully fetched ownedDeviceKeys for %{private,mask.hash}s.", v190, 0x16u);
      sub_100007BAC(v191);

      v133 = v255;
    }

    else
    {

      sub_10062CBB8(v187, type metadata accessor for OwnedBeaconRecord);
    }

    v136 = &qword_101695000;
  }

  v198 = v253;
  sub_10062CD24(v133, v253, type metadata accessor for OwnedBeaconRecord);
  v199 = (*(v240 + 80) + 16) & ~*(v240 + 80);
  v200 = swift_allocObject();
  sub_10062CC64(v198, v200 + v199, type metadata accessor for OwnedBeaconRecord);
  sub_1000BC4D4(&qword_1016A5900, &unk_1013B3380);
  unsafeFromAsyncTask<A>(_:)();

  v7 = v282;
  if (v136[158] != -1)
  {
    swift_once();
  }

  v201 = type metadata accessor for Logger();
  sub_1000076D4(v201, qword_10177CE28);
  sub_10062CD24(v133, v24, type metadata accessor for OwnedBeaconRecord);

  v202 = Logger.logObject.getter();
  v203 = static os_log_type_t.default.getter();
  v204 = os_log_type_enabled(v202, v203);
  v268 = v7;
  v258 = 0;
  if (v204)
  {
    v205 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v282 = v206;
    *v205 = 134218499;
    *(v205 + 4) = *(v268 + 2);

    *(v205 + 12) = 2160;
    *(v205 + 14) = 1752392040;
    *(v205 + 22) = 2081;
    v207 = *(v241 + 20);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v208 = dispatch thunk of CustomStringConvertible.description.getter();
    v209 = v24;
    v24 = v210;
    sub_10062CBB8(v209, type metadata accessor for OwnedBeaconRecord);
    v211 = sub_1000136BC(v208, v24, &v282);

    *(v205 + 24) = v211;
    _os_log_impl(&_mh_execute_header, v202, v203, "Found %ld own device keys for shared beacon %{private,mask.hash}s.", v205, 0x20u);
    sub_100007BAC(v206);

    v7 = v268;
  }

  else
  {

    sub_10062CBB8(v24, type metadata accessor for OwnedBeaconRecord);
  }

  v212 = *(v7 + 16);
  v23 = v280;
  if (v212)
  {
    v282 = v59;
    sub_101124EF0(0, v212, 0);
    v213 = 0;
    v214 = v282;
    v265 = (v7 + ((*(v271 + 80) + 32) & ~*(v271 + 80)));
    v264 = v212;
    while (1)
    {
      if (v213 >= *(v7 + 16))
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v215 = v279;
      sub_10062CD24(&v265[*(v271 + 72) * v213], v279, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v179 = *v215;
      v216 = v215[1];
      v217 = v216 >> 62;
      if ((v216 >> 62) > 1)
      {
        if (v217 != 2)
        {
          v59 = 0;
          v24 = 0;
          v219 = 0;
          v218 = 0;
          goto LABEL_77;
        }

        v24 = *(v179 + 16);
        v59 = *(v179 + 24);
      }

      else
      {
        if (!v217)
        {
          v24 = 0;
          v218 = 0;
          v59 = BYTE6(v216);
          v219 = BYTE6(v216);
          goto LABEL_77;
        }

        v24 = v179;
        v59 = v179 >> 32;
      }

      sub_100017D5C(v179, v216);
      if (v59 < v24)
      {
        goto LABEL_121;
      }

      if (v217 == 2)
      {
        v218 = *(v179 + 16);
        v219 = *(v179 + 24);
      }

      else
      {
        v218 = v179;
        v219 = v179 >> 32;
      }

LABEL_77:
      if (v219 < v59 || v59 < v218)
      {
        goto LABEL_122;
      }

      if (__OFSUB__(v59, v24))
      {
        goto LABEL_123;
      }

      if ((v59 - v24) < 0x39)
      {
        if (v217 <= 1)
        {
          if (!v217)
          {
            goto LABEL_104;
          }

          v220 = v179 >> 32;
LABEL_100:
          v223 = v179;
          goto LABEL_103;
        }

        if (v217 != 2)
        {
          goto LABEL_104;
        }

        v220 = *(v179 + 24);
LABEL_102:
        v223 = *(v179 + 16);
        goto LABEL_103;
      }

      v220 = v24 + 57;
      if (__OFADD__(v24, 57))
      {
        goto LABEL_129;
      }

      if (v217 > 1)
      {
        if (v217 == 2)
        {
          v221 = *(v179 + 16);
          v222 = *(v179 + 24);
        }

        else
        {
          v222 = 0;
          v221 = 0;
        }
      }

      else if (v217)
      {
        v221 = v179;
        v222 = v179 >> 32;
      }

      else
      {
        v221 = 0;
        v222 = BYTE6(v216);
      }

      if (v222 < v220 || v220 < v221)
      {
        goto LABEL_130;
      }

      v223 = 0;
      if (v217 <= 1)
      {
        if (!v217)
        {
          goto LABEL_103;
        }

        goto LABEL_100;
      }

      if (v217 != 3)
      {
        goto LABEL_102;
      }

LABEL_103:
      if (v220 < v223)
      {
        goto LABEL_124;
      }

LABEL_104:
      v24 = Data._Representation.subscript.getter();
      v225 = v224;
      sub_100016590(v179, v216);
      v226 = v225 >> 62;
      if ((v225 >> 62) > 1)
      {
        if (v226 != 2)
        {
          goto LABEL_135;
        }

        v229 = *(v24 + 16);
        v228 = *(v24 + 24);
        v230 = __OFSUB__(v228, v229);
        v227 = v228 - v229;
        if (v230)
        {
          goto LABEL_133;
        }
      }

      else if (v226)
      {
        LODWORD(v227) = HIDWORD(v24) - v24;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_132;
        }

        v227 = v227;
      }

      else
      {
        v227 = BYTE6(v225);
      }

      if (v227 != 57)
      {
LABEL_135:
        sub_100016590(v24, v225);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_136:
        sub_10062CBB8(v24, type metadata accessor for FetchRequestBeacon);
        objc_autoreleasePoolPop(v179);
        __break(1u);
        return;
      }

      v231 = v279;
      v232 = *v279;
      v59 = v279[1];
      sub_100017D5C(*v279, v59);
      sub_10062CBB8(v231, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v282 = v214;
      v234 = v214[2];
      v233 = v214[3];
      if (v234 >= v233 >> 1)
      {
        sub_101124EF0((v233 > 1), v234 + 1, 1);
        v214 = v282;
      }

      ++v213;
      v214[2] = v234 + 1;
      v235 = &v214[4 * v234];
      v235[4] = v24;
      v235[5] = v225;
      v235[6] = v232;
      v235[7] = v59;
      v23 = v280;
      v7 = v268;
      if (v264 == v213)
      {

        v236 = v277;
        v152 = v267;
        v153 = v266;
        v154 = v281;
        v155 = v249;
        v133 = v255;
        goto LABEL_119;
      }
    }
  }

  v214 = _swiftEmptyArrayStorage;
  v236 = v277;
  v152 = v267;
  v153 = v266;
  v154 = v281;
  v155 = v249;
LABEL_119:
  sub_100399E48(v214);
  sub_10062CBB8(v133, type metadata accessor for OwnedBeaconRecord);
  v151 = v236;
LABEL_42:
  v156 = (2 * v270) | 1;
  v158 = v154[3];
  v157 = v154[4];
  sub_1000035D0(v154, v158);
  (*(*(*(v157 + 8) + 8) + 32))(v158);
  v159 = v250;
  v160 = v155;
  v161 = v269;
  v242(v250, v160, v269);
  v162 = v287;
  if (v262)
  {
    v163 = 256;
  }

  else
  {
    v163 = 0;
  }

  v164 = v163 & 0xFFFFFF00 | v263;

  sub_100EA9D94(v23, v159, v151, v244, v247, v156, v153 & 1, v164, v152, 1, v162);
  v165 = *(type metadata accessor for LocationFetcher() + 32);
  sub_10001F280(v154, &v282);
  v166 = v152;
  v24 = v259;
  sub_10062CD24(v166, v259, type metadata accessor for FetchRequestBeacon);
  v167 = Logger.logObject.getter();
  v168 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v171 = v273;
    v286 = v170;
    *v169 = 141558531;
    *(v169 + 4) = 1752392040;
    *(v169 + 12) = 2081;
    v173 = v283;
    v172 = v284;
    sub_1000035D0(&v282, v283);
    (*(*(*(v172 + 8) + 8) + 32))(v173);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v174 = dispatch thunk of CustomStringConvertible.description.getter();
    v176 = v175;
    (*(v272 + 8))(v23, v171);
    sub_100007BAC(&v282);
    v177 = sub_1000136BC(v174, v176, &v286);

    *(v169 + 14) = v177;
    *(v169 + 22) = 2082;
    v178 = v256;
    sub_10062CD24(v24, v256, type metadata accessor for FetchRequestBeacon);
    v179 = objc_autoreleasePoolPush();
    v180 = v258;
    sub_100EABD30(v178, v285);
    v258 = v180;
    if (v180)
    {
      goto LABEL_136;
    }

    objc_autoreleasePoolPop(v179);
    sub_10062CBB8(v178, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v24, type metadata accessor for FetchRequestBeacon);
    v181 = sub_1000136BC(v285[0], v285[1], &v286);

    *(v169 + 24) = v181;
    _os_log_impl(&_mh_execute_header, v167, v168, "Created fetch instruction for beacon %{private,mask.hash}s: %{public}s.", v169, 0x20u);
    swift_arrayDestroy();

    v245(v249, v269);
  }

  else
  {

    sub_10062CBB8(v24, type metadata accessor for FetchRequestBeacon);
    v245(v249, v161);
    sub_100007BAC(&v282);
  }

  v182 = v267;
  v183 = v248;
  *v248 = v247;
  *(v183 + 8) = 0;
  v184 = v275;
  sub_10062CC64(v182, v275, type metadata accessor for FetchRequestBeacon);
  (*(v274 + 56))(v184, 0, 1, RequestBeacon);
}

uint64_t sub_1005E4220(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1005E42B4;

  return daemon.getter();
}

uint64_t sub_1005E42B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100009774(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1005E4490;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005E4490(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);
  v7 = *v2;

  v8 = v4[5];
  if (v1)
  {

    return _swift_task_switch(sub_1005E4658, 0, 0);
  }

  else
  {
    v9 = v5[3];

    v5[7] = a1;
    v10 = *(type metadata accessor for OwnedBeaconRecord() + 20);
    v11 = swift_task_alloc();
    v5[8] = v11;
    *v11 = v7;
    v11[1] = sub_1005E467C;

    return sub_10029BFD0(v9 + v10);
  }
}

uint64_t sub_1005E467C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1005E477C, 0, 0);
}

uint64_t sub_1005E477C()
{
  v1 = *(v0 + 56);

  **(v0 + 16) = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005E47E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1005E48C0(unsigned __int8 a1, uint64_t a2)
{
  v14 = *(a2 + 16);
  v2 = 0;
  if (v14)
  {
    v16 = a2 + 32;
    v3 = 0xE700000000000000;
    v15 = a1;
    while (1)
    {
      v4 = *(v16 + v2);
      if (v4 <= 1)
      {
        if (*(v16 + v2))
        {
          v5 = 0x726576726573;
        }

        else
        {
          v5 = 0x746C7561666564;
        }

        if (*(v16 + v2))
        {
          v6 = 0xE600000000000000;
        }

        else
        {
          v6 = 0xE700000000000000;
        }
      }

      else if (v4 == 2)
      {
        v6 = 0xE500000000000000;
        v5 = 0x73656C6F72;
      }

      else
      {
        if (v4 == 3)
        {
          v5 = 0x6166654472657375;
        }

        else
        {
          v5 = 0x5365636976726573;
        }

        if (v4 == 3)
        {
          v6 = 0xEC00000073746C75;
        }

        else
        {
          v6 = 0xEF73676E69747465;
        }
      }

      if (v15 == 3)
      {
        v7 = 0x6166654472657375;
      }

      else
      {
        v7 = 0x5365636976726573;
      }

      if (v15 == 3)
      {
        v8 = 0xEC00000073746C75;
      }

      else
      {
        v8 = 0xEF73676E69747465;
      }

      if (v15 == 2)
      {
        v7 = 0x73656C6F72;
        v8 = 0xE500000000000000;
      }

      if (v15)
      {
        v9 = 0x726576726573;
      }

      else
      {
        v9 = 0x746C7561666564;
      }

      if (v15)
      {
        v3 = 0xE600000000000000;
      }

      v10 = v15 <= 1 ? v9 : v7;
      v11 = v15 <= 1 ? v3 : v8;
      if (v5 == v10 && v6 == v11)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        return v2;
      }

      ++v2;
      v3 = 0xE700000000000000;
      if (v14 == v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1005E4A90(uint64_t *a1, void *a2, uint64_t a3, int a4, void *a5, uint64_t *a6, int a7, uint64_t *a8, void (*a9)(void), uint64_t a10)
{
  v11 = v10;
  v181 = a8;
  v168 = a7;
  v178 = a6;
  LODWORD(v175) = a4;
  v157 = a10;
  v156 = a9;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v180 = *(RequestBeacon - 8);
  v17 = v180[8];
  __chkstk_darwin(RequestBeacon);
  v164 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&qword_1016A58E8, &qword_1013B3348);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v160 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v163 = &v152 - v24;
  v25 = __chkstk_darwin(v23);
  v165 = &v152 - v26;
  __chkstk_darwin(v25);
  v177 = &v152 - v27;
  v173 = type metadata accessor for UUID();
  v166 = *(v173 - 8);
  v28 = *(v166 + 64);
  v29 = __chkstk_darwin(v173);
  v182 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v155 = &v152 - v31;
  v32 = type metadata accessor for DateInterval();
  v153 = *(v32 - 8);
  v33 = *(v153 + 64);
  __chkstk_darwin(v32);
  v35 = &v152 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005E5BE0(a2, a1 + 3, v35);
  v176 = a3;
  v174 = a1;
  v179 = RequestBeacon;
  v171 = a2;
  v154 = v32;
  v152 = v35;
  if (a3 < 1)
  {
    v60 = *(type metadata accessor for LocationFetcher() + 32);
    sub_10001F280(a2, &v184);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v188 = v172;
      *v63 = 141558275;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      LODWORD(v170) = v62;
      v65 = v186;
      v64 = v187;
      sub_1000035D0(&v184, v186);
      v66 = v155;
      (*(*(*(v64 + 8) + 8) + 32))(v65);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v67 = v173;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v166 + 8))(v66, v67);
      sub_100007BAC(&v184);
      v71 = sub_1000136BC(v68, v70, &v188);

      *(v63 + 14) = v71;
      sub_100007BAC(v172);

      a2 = v171;
    }

    else
    {

      sub_100007BAC(&v184);
    }

    v59 = v177;
    v169 = v175 & 1;
  }

  else
  {
    v36 = *a1;
    v37 = a2[3];
    v38 = a2[4];
    v39 = sub_1000035D0(a2, v37);
    v169 = v175 & 1;
    v40 = sub_100B03A58(v39, v35, v169, 1, 0, v36, v37, v38);
    v44 = v40;
    if (v42 <= 1u)
    {
      if (v42)
      {
        RequestBeacon = v179;
        v59 = v177;
      }

      else
      {
        v175 = v41;
        v45 = *(type metadata accessor for LocationFetcher() + 32);
        sub_10001F280(a2, &v184);

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        v48 = os_log_type_enabled(v46, v47);
        RequestBeacon = v179;
        if (v48)
        {
          v49 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          v188 = v172;
          *v49 = 141558275;
          *(v49 + 4) = 1752392040;
          *(v49 + 12) = 2081;
          LODWORD(v167) = v47;
          v51 = v186;
          v50 = v187;
          sub_1000035D0(&v184, v186);
          v52 = *(*(*(v50 + 8) + 8) + 32);
          v170 = v44;
          v53 = v155;
          v52(v51);
          sub_100009774(&qword_101696930, &type metadata accessor for UUID);
          v54 = v173;
          v55 = dispatch thunk of CustomStringConvertible.description.getter();
          v57 = v56;
          (*(v166 + 8))(v53, v54);
          sub_100007BAC(&v184);
          v58 = sub_1000136BC(v55, v57, &v188);

          *(v49 + 14) = v58;
          sub_100007BAC(v172);

          a2 = v171;

          v44 = v170;
          sub_100359088(v170, v175, 0);
        }

        else
        {

          sub_100359088(v44, v175, 0);
          sub_100007BAC(&v184);
        }

        a3 = v176;
        v59 = v177;
      }

      goto LABEL_19;
    }

    if (v42 == 2)
    {
      sub_100359088(v40, v41, 2u);
    }

    v72 = *(type metadata accessor for LocationFetcher() + 32);
    sub_10001F280(a2, &v184);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    v75 = os_log_type_enabled(v73, v74);
    RequestBeacon = v179;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v188 = v175;
      *v76 = 141558275;
      *(v76 + 4) = 1752392040;
      *(v76 + 12) = 2081;
      LODWORD(v172) = v74;
      v78 = v186;
      v77 = v187;
      sub_1000035D0(&v184, v186);
      v79 = v155;
      (*(*(*(v77 + 8) + 8) + 32))(v78);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v80 = v173;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v166 + 8))(v79, v80);
      sub_100007BAC(&v184);
      v84 = sub_1000136BC(v81, v83, &v188);

      *(v76 + 14) = v84;
      sub_100007BAC(v175);

      a2 = v171;
    }

    else
    {

      sub_100007BAC(&v184);
    }

    v59 = v177;
  }

  v44 = _swiftEmptyArrayStorage;
  a3 = v176;
LABEL_19:
  v184 = 0;
  v185 = 1;
  v167 = (v180 + 7);
  v175 = v180 + 6;
  v161 = v166 + 16;
  v172 = (v166 + 8);
  *&v43 = 136446210;
  v158 = v43;
  v170 = v44;
  v162 = a5;
  while (1)
  {
    v87 = objc_autoreleasePoolPush();
    v88 = a3 - *a5;
    if (__OFSUB__(a3, *a5))
    {
      break;
    }

    v180 = v87;
    sub_1005E20B0(v44, a2, v169, v88, &v184, v59);
    v89 = v11;
    if (v11)
    {

      (*v167)(v59, 1, 1, RequestBeacon);
      v89 = 0;
    }

    sub_1005E76F4(v59, a5, v178);
    v90 = a2[3];
    v91 = a2[4];
    sub_1000035D0(a2, v90);
    v92 = a3;
    if ((*(v91 + 112))(v90, v91))
    {
      v92 = a3;
      if (v168)
      {
        v93 = v165;
        sub_1000D2A70(v177, v165, &qword_1016A58E8, &qword_1013B3348);
        v94 = *v175;
        v95 = v179;
        if ((*v175)(v93, 1, v179) == 1)
        {
          sub_10000B3A8(v93, &qword_1016A58E8, &qword_1013B3348);
          v92 = v176;
          a5 = v162;
        }

        else
        {
          sub_10062CC64(v93, v164, type metadata accessor for FetchRequestBeacon);
          v96 = v163;
          sub_1005E79F8(a2, v163);
          v97 = v96;
          v98 = v160;
          sub_1000D2A70(v97, v160, &qword_1016A58E8, &qword_1013B3348);
          if (v94(v98, 1, v95) == 1)
          {
            sub_10000B3A8(v98, &qword_1016A58E8, &qword_1013B3348);
            v99 = 0;
          }

          else
          {
            v100 = *(v98 + *(v95 + 28));

            sub_10062CBB8(v98, type metadata accessor for FetchRequestBeacon);
            v99 = *(v100 + 16);
          }

          v101 = __OFADD__(v176, v99);
          v92 = v176 + v99;
          if (v101)
          {
            goto LABEL_61;
          }

          v102 = v163;
          v103 = v162;
          sub_1005E76F4(v163, v162, v178);
          a5 = v103;
          sub_10000B3A8(v102, &qword_1016A58E8, &qword_1013B3348);
          sub_10062CBB8(v164, type metadata accessor for FetchRequestBeacon);
        }
      }
    }

    v104 = a5;
    v105 = v89;
    v107 = a2[3];
    v106 = a2[4];
    sub_1000035D0(a2, v107);
    v108 = v182;
    (*(*(*(v106 + 8) + 8) + 32))(v107);
    v109 = v185;
    v110 = v184 == 0;
    v111 = v181;
    v112 = *v181;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v188 = *v111;
    v114 = v188;
    *v111 = 0x8000000000000000;
    v116 = sub_1000210EC(v108);
    v117 = *(v114 + 16);
    v118 = (v115 & 1) == 0;
    v119 = v117 + v118;
    if (__OFADD__(v117, v118))
    {
      goto LABEL_58;
    }

    v120 = v115;
    if (*(v114 + 24) >= v119)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10100A144();
      }
    }

    else
    {
      sub_100FF05B4(v119, isUniquelyReferenced_nonNull_native);
      v121 = sub_1000210EC(v182);
      if ((v120 & 1) != (v122 & 1))
      {
        goto LABEL_62;
      }

      v116 = v121;
    }

    v123 = v110 & ~v109;
    v124 = v188;
    if (v120)
    {
      *(v188[7] + v116) = v123;
      v125 = *v172;
      (*v172)(v182, v173);
      v11 = v105;
    }

    else
    {
      v188[(v116 >> 6) + 8] |= 1 << v116;
      v126 = v166;
      v127 = v182;
      v128 = v173;
      (*(v166 + 16))(v124[6] + *(v166 + 72) * v116, v182, v173);
      *(v124[7] + v116) = v123;
      v125 = *(v126 + 8);
      v125(v127, v128);
      v129 = v124[2];
      v101 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (v101)
      {
        goto LABEL_60;
      }

      v11 = v105;
      v124[2] = v130;
    }

    v131 = *v181;
    *v181 = v124;

    RequestBeacon = v179;
    if (__OFSUB__(v92, *v104))
    {
      goto LABEL_59;
    }

    a5 = v104;
    if (v92 - *v104 >= 1)
    {

      a2 = v171;
      a3 = v176;
    }

    else
    {
      v132 = sub_1005E0BB4(*v178);
      a3 = v176;
      if (v11)
      {

        v133 = *(type metadata accessor for LocationFetcher() + 32);
        swift_errorRetain();
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v188 = v137;
          *v136 = v158;
          v183 = v11;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v138 = String.init<A>(describing:)();
          v140 = sub_1000136BC(v138, v139, &v188);
          v159 = v11;
          v141 = v140;

          *(v136 + 4) = v141;
          _os_log_impl(&_mh_execute_header, v134, v135, "Invalid fetch combination %{public}s.", v136, 0xCu);
          sub_100007BAC(v137);
        }

        else
        {
        }

        v11 = 0;
        a2 = v171;
        RequestBeacon = v179;
      }

      else
      {
        if (v132[2])
        {
          v156();

          v142 = v178;
          v143 = *v178;

          *v142 = &_swiftEmptyDictionarySingleton;
          *a5 = 0;
        }

        else
        {
        }

        a2 = v171;
      }
    }

    v59 = v177;
    v85 = (*v175)(v177, 1, RequestBeacon);
    sub_10000B3A8(v59, &qword_1016A58E8, &qword_1013B3348);
    objc_autoreleasePoolPop(v180);
    v86 = v85 == 1;
    v44 = v170;
    if (v86)
    {

      v144 = a2[3];
      v145 = a2[4];
      sub_1000035D0(a2, v144);
      v146 = v155;
      (*(*(*(v145 + 8) + 8) + 32))(v144);
      v147 = v181;
      v148 = *v181;
      v149 = swift_isUniquelyReferenced_nonNull_native();
      v188 = *v147;
      *v147 = 0x8000000000000000;
      sub_100FFEC98(1, v146, v149);
      v125(v146, v173);
      (*(v153 + 8))(v152, v154);
      v150 = *v147;
      *v147 = v188;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005E5BE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v209 = a2;
  v222 = a1;
  v215 = a3;
  v217 = type metadata accessor for DateInterval();
  v216 = *(v217 - 8);
  v3 = *(v216 + 64);
  __chkstk_darwin(v217);
  v219 = &v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v226 = *(v5 - 8);
  v227 = v5;
  v6 = *(v226 + 64);
  v7 = __chkstk_darwin(v5);
  v212 = (&v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v220 = &v207 - v9;
  v231 = type metadata accessor for LocationFetcher();
  v10 = *(v231 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v231);
  v12 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v225 = (&v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = &v207 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v207 - v20;
  __chkstk_darwin(v19);
  v229 = &v207 - v22;
  v230 = type metadata accessor for Date();
  v221 = *(v230 - 8);
  v23 = *(v221 + 64);
  v24 = __chkstk_darwin(v230);
  v214 = &v207 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v213 = &v207 - v27;
  v28 = __chkstk_darwin(v26);
  v218 = &v207 - v29;
  v30 = __chkstk_darwin(v28);
  v228 = &v207 - v31;
  v32 = __chkstk_darwin(v30);
  v208 = &v207 - v33;
  __chkstk_darwin(v32);
  v224 = &v207 - v34;
  static Date.trustedNow.getter(&v207 - v34);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v35 = *(qword_10177B348 + 40);
  v211 = qword_10177B348;
  OS_dispatch_queue.sync<A>(execute:)();
  v210 = 0;
  v36 = sub_101074868(v236);

  if (v36)
  {
    v37 = v223;
    sub_10062CD24(v223, &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
    v38 = v222;
    sub_10001F280(v222, &v236);
    v39 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v40 = swift_allocObject();
    sub_10062CC64(&v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39, type metadata accessor for LocationFetcher);
    sub_10000A748(&v236, v40 + ((v11 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
    v41 = v229;
    unsafeFromAsyncTask<A>(_:)();

    v42 = *(v231 + 32);
    sub_1000D2A70(v41, v21, &unk_101696900, &unk_10138B1E0);
    sub_10001F280(v38, &v236);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v233[0] = swift_slowAlloc();
      *v45 = 136446723;
      sub_1000D2A70(v21, v18, &unk_101696900, &unk_10138B1E0);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
      v49 = sub_1000136BC(v46, v48, v233);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2160;
      *(v45 + 14) = 1752392040;
      *(v45 + 22) = 2081;
      v50 = v237;
      v51 = v238;
      sub_1000035D0(&v236, v237);
      v52 = v220;
      (*(*(v51[1] + 1) + 32))(v50);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v53 = v227;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v57 = v52;
      v37 = v223;
      (*(v226 + 8))(v57, v53);
      sub_100007BAC(&v236);
      v58 = sub_1000136BC(v54, v56, v233);

      *(v45 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v43, v44, "Using last known good key: %{public}s, for beacon %{private,mask.hash}s.", v45, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
      sub_100007BAC(&v236);
    }

    v80 = v224;
    v81 = v225;
    v60 = v230;
    v79 = v231;
    v59 = v221;
    v63 = v222;
  }

  else
  {
    v59 = v221;
    v60 = v230;
    (*(v221 + 56))(v229, 1, 1, v230);
    v61 = v231;
    v62 = *(v231 + 32);
    v63 = v222;
    sub_10001F280(v222, &v236);
    v37 = v223;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v233[0] = v67;
      *v66 = 141558275;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      v69 = v237;
      v68 = v238;
      sub_1000035D0(&v236, v237);
      v70 = v220;
      (*(*(v68[1] + 1) + 32))(v69);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v71 = v59;
      v72 = v227;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = v70;
      v37 = v223;
      v77 = v72;
      v59 = v71;
      (*(v226 + 8))(v76, v77);
      sub_100007BAC(&v236);
      v78 = sub_1000136BC(v73, v75, v233);

      *(v66 + 14) = v78;
      sub_100007BAC(v67);
      v79 = v231;

      v60 = v230;

      v80 = v224;
      v81 = v225;
    }

    else
    {

      sub_100007BAC(&v236);
      v80 = v224;
      v81 = v225;
      v79 = v61;
    }
  }

  v82 = v209[3];
  v83 = v209[4];
  sub_1000035D0(v209, v82);
  if ((*(v83 + 40))(v82, v83))
  {
    v84 = v63[3];
    v85 = v63[4];
    sub_1000035D0(v63, v84);
    (*(v85 + 192))(v84, v85);
    (*(v59 + 56))(v81, 0, 1, v60);
    v86 = v79;
    v87 = *(v79 + 32);
    sub_10001F280(v63, &v236);
    sub_10001F280(v63, v233);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v88, v89))
    {

      sub_100007BAC(&v236);
      sub_100007BAC(v233);
      v123 = v212;
      v108 = v86;
      v80 = v224;
      goto LABEL_19;
    }

    v90 = v59;
    v91 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v232 = v209;
    *v91 = 136446723;
    v92 = v237;
    v93 = v238;
    sub_1000035D0(&v236, v237);
    v94 = v208;
    (v93[24])(v92, v93);
    sub_100009774(&qword_1016969A0, &type metadata accessor for Date);
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = v96;
    (*(v90 + 8))(v94, v60);
    sub_100007BAC(&v236);
    v98 = sub_1000136BC(v95, v97, &v232);

    *(v91 + 4) = v98;
    *(v91 + 12) = 2160;
    *(v91 + 14) = 1752392040;
    *(v91 + 22) = 2081;
    v100 = v234;
    v99 = v235;
    sub_1000035D0(v233, v234);
    v101 = v220;
    (*(*(*(v99 + 8) + 8) + 32))(v100);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v102 = v227;
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v104;
    v106 = v101;
    v37 = v223;
    (*(v226 + 8))(v106, v102);
    sub_100007BAC(v233);
    v107 = sub_1000136BC(v103, v105, &v232);

    *(v91 + 24) = v107;
    _os_log_impl(&_mh_execute_header, v88, v89, "Using policy fetch limit of baseDate/Pairing: %{public}s for beacon %{private,mask.hash}s.", v91, 0x20u);
    swift_arrayDestroy();
    v81 = v225;
    v108 = v231;

    v80 = v224;
  }

  else
  {
    (*(v59 + 56))(v81, 1, 1, v60);
    v109 = v79;
    v110 = *(v79 + 32);
    sub_10001F280(v63, &v236);
    v88 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v88, v111))
    {

      sub_100007BAC(&v236);
      v123 = v212;
      v108 = v109;
      goto LABEL_19;
    }

    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v233[0] = v113;
    *v112 = 141558275;
    *(v112 + 4) = 1752392040;
    *(v112 + 12) = 2081;
    v115 = v237;
    v114 = v238;
    sub_1000035D0(&v236, v237);
    v116 = v220;
    (*(*(v114[1] + 1) + 32))(v115);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v117 = v227;
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v119;
    v121 = v116;
    v37 = v223;
    (*(v226 + 8))(v121, v117);
    sub_100007BAC(&v236);
    v122 = sub_1000136BC(v118, v120, v233);

    *(v112 + 14) = v122;
    sub_100007BAC(v113);
    v81 = v225;
    v108 = v231;
  }

  v123 = v212;
LABEL_19:
  v124 = *(v37 + *(v108 + 36));
  v126 = v63[3];
  v125 = v63[4];
  sub_1000035D0(v63, v126);
  (*(*(*(v125 + 8) + 8) + 32))(v126);
  if (*(v124 + 16) && (v127 = sub_1000210EC(v123), (v128 & 1) != 0))
  {
    v129 = *(v226 + 8);
    v130 = *(*(v124 + 56) + 8 * v127);
    v212 = v129;
    v129(v123, v227);
  }

  else
  {
    v212 = *(v226 + 8);
    v212(v123, v227);
    v130 = 0;
  }

  v131 = *(v211 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v237 = &type metadata for Configuration;
  v238 = &off_101616308;
  sub_100884E1C(v63, v80, v81, v229, v130, &v236, v228);

  sub_100007BAC(&v236);
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v132 = *(qword_10177CEA0 + 48);

  AnyCurrentValuePublisher.value.getter();

  LODWORD(v211) = v236;
  if ((v236 & 1) == 0)
  {
    v149 = *(v108 + 32);
    sub_10001F280(v63, &v236);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v233[0] = v153;
      *v152 = 141558275;
      *(v152 + 4) = 1752392040;
      *(v152 + 12) = 2081;
      v155 = v237;
      v154 = v238;
      sub_1000035D0(&v236, v237);
      v156 = v220;
      (*(*(v154[1] + 1) + 32))(v155);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v157 = v227;
      v158 = dispatch thunk of CustomStringConvertible.description.getter();
      v160 = v159;
      v212(v156, v157);
      sub_100007BAC(&v236);
      v161 = sub_1000136BC(v158, v160, v233);

      *(v152 + 14) = v161;
      _os_log_impl(&_mh_execute_header, v150, v151, "Manual time is enabled. Adding 24h to current time for end date for beacon %{private,mask.hash}s.", v152, 0x16u);
      sub_100007BAC(v153);
    }

    else
    {

      sub_100007BAC(&v236);
    }

    v174 = v219;
    v175 = v221;
    goto LABEL_37;
  }

  v133 = v63[3];
  v134 = v63[4];
  sub_1000035D0(v63, v133);
  v135 = (*(v134 + 112))(v133, v134);
  v136 = *(v108 + 32);
  if (v135)
  {
    sub_10001F280(v63, &v236);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v233[0] = v140;
      *v139 = 141558275;
      *(v139 + 4) = 1752392040;
      *(v139 + 12) = 2081;
      v142 = v237;
      v141 = v238;
      sub_1000035D0(&v236, v237);
      v143 = v220;
      (*(*(v141[1] + 1) + 32))(v142);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v144 = v227;
      v145 = dispatch thunk of CustomStringConvertible.description.getter();
      v147 = v146;
      v212(v143, v144);
      sub_100007BAC(&v236);
      v148 = sub_1000136BC(v145, v147, v233);

      *(v139 + 14) = v148;
      _os_log_impl(&_mh_execute_header, v137, v138, "Manual time is disabled. Adding 4h to current time for end date for beacon %{private,mask.hash}s.", v139, 0x16u);
      sub_100007BAC(v140);
    }

    else
    {

      sub_100007BAC(&v236);
    }

    v174 = v219;
    v175 = v221;
LABEL_37:
    v176 = v218;
    Date.addingTimeInterval(_:)();
    goto LABEL_40;
  }

  sub_10001F280(v63, &v236);
  v162 = Logger.logObject.getter();
  v163 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v233[0] = v165;
    *v164 = 141558275;
    *(v164 + 4) = 1752392040;
    *(v164 + 12) = 2081;
    v167 = v237;
    v166 = v238;
    sub_1000035D0(&v236, v237);
    v168 = v220;
    (*(*(v166[1] + 1) + 32))(v167);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v169 = v227;
    v170 = dispatch thunk of CustomStringConvertible.description.getter();
    v172 = v171;
    v212(v168, v169);
    sub_100007BAC(&v236);
    v173 = sub_1000136BC(v170, v172, v233);

    *(v164 + 14) = v173;
    _os_log_impl(&_mh_execute_header, v162, v163, "Manual time is disabled. Using current time as end date for beacon %{private,mask.hash}s.", v164, 0x16u);
    sub_100007BAC(v165);
  }

  else
  {

    sub_100007BAC(&v236);
  }

  v174 = v219;
  v175 = v221;
  v176 = v218;
  (*(v221 + 16))(v218, v80, v230);
LABEL_40:
  v177 = *(v175 + 16);
  v178 = v228;
  v179 = v230;
  v177(v213, v228, v230);
  sub_100009774(&qword_1016C9070, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v180 = v178;
  }

  else
  {
    v180 = v176;
  }

  v177(v214, v180, v179);
  v181 = v215;
  DateInterval.init(start:end:)();
  v182 = *(v231 + 32);
  sub_10001F280(v222, &v236);
  v183 = v216;
  v184 = v217;
  (*(v216 + 16))(v174, v181, v217);
  v185 = Logger.logObject.getter();
  v186 = v176;
  v187 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v185, v187))
  {
    v188 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    v233[0] = v231;
    *v188 = 141558787;
    *(v188 + 4) = 1752392040;
    *(v188 + 12) = 2081;
    v189 = v184;
    v191 = v237;
    v190 = v238;
    sub_1000035D0(&v236, v237);
    v192 = v220;
    (*(*(v190[1] + 1) + 32))(v191);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v193 = v227;
    v194 = dispatch thunk of CustomStringConvertible.description.getter();
    v196 = v195;
    v212(v192, v193);
    sub_100007BAC(&v236);
    v197 = sub_1000136BC(v194, v196, v233);

    *(v188 + 14) = v197;
    *(v188 + 22) = 1024;
    *(v188 + 24) = v211;
    *(v188 + 28) = 2082;
    sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval);
    v198 = v219;
    v199 = dispatch thunk of CustomStringConvertible.description.getter();
    v201 = v200;
    (*(v183 + 8))(v198, v189);
    v202 = sub_1000136BC(v199, v201, v233);

    *(v188 + 30) = v202;
    _os_log_impl(&_mh_execute_header, v185, v187, "Fetch interval computed for beacon %{private,mask.hash}s, automaticTime: %{BOOL}d, dateInterval: %{public}s.", v188, 0x26u);
    swift_arrayDestroy();

    v203 = *(v175 + 8);
    v204 = v230;
    v203(v218, v230);
    v203(v228, v204);
    sub_10000B3A8(v225, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v229, &unk_101696900, &unk_10138B1E0);
    return (v203)(v224, v204);
  }

  else
  {

    (*(v183 + 8))(v174, v184);
    v206 = *(v175 + 8);
    v206(v186, v179);
    v206(v228, v179);
    sub_10000B3A8(v225, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v229, &unk_101696900, &unk_10138B1E0);
    v206(v224, v179);
    return sub_100007BAC(&v236);
  }
}

uint64_t sub_1005E76F4(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_1000BC4D4(&qword_1016A58E8, &qword_1013B3348);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v29 - v8);
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v11 = *(RequestBeacon - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(RequestBeacon);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  sub_1000D2A70(a1, v9, &qword_1016A58E8, &qword_1013B3348);
  if ((*(v11 + 48))(v9, 1, RequestBeacon) == 1)
  {
    return sub_10000B3A8(v9, &qword_1016A58E8, &qword_1013B3348);
  }

  sub_10062CC64(v9, v17, type metadata accessor for FetchRequestBeacon);
  v19 = *(*&v17[*(RequestBeacon + 28)] + 16);
  v20 = __OFADD__(*a2, v19);
  v21 = *a2 + v19;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *a2 = v21;
    v22 = *a3;
    if (*(*a3 + 16) && (v23 = sub_1000210EC(v17), (v24 & 1) != 0))
    {
      v9 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    sub_10062CD24(v17, v15, type metadata accessor for FetchRequestBeacon);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  v9 = sub_100A5D0C8(0, v9[2] + 1, 1, v9);
LABEL_9:
  v26 = v9[2];
  v25 = v9[3];
  if (v26 >= v25 >> 1)
  {
    v9 = sub_100A5D0C8(v25 > 1, v26 + 1, 1, v9);
  }

  v9[2] = v26 + 1;
  sub_10062CC64(v15, v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, type metadata accessor for FetchRequestBeacon);
  v27 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *a3;
  sub_100FFEE38(v9, v17, isUniquelyReferenced_nonNull_native);
  *a3 = v30;
  return sub_10062CBB8(v17, type metadata accessor for FetchRequestBeacon);
}

uint64_t sub_1005E79F8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_100EAA7E8();
  if (v6)
  {
    RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
    v8 = *(*(RequestBeacon - 8) + 56);

    return v8(a2, 1, 1, RequestBeacon);
  }

  else
  {
    __chkstk_darwin(v5);
    v13[2] = v2;
    v13[3] = a1;
    v12 = sub_1005C781C(sub_10062AFBC, v13, v10, v11);
    v14 = 0;
    v15 = 1;
    sub_1005E20B0(v12, a1, 1, *(v12 + 16), &v14, a2);
  }
}

uint64_t sub_1005E7BCC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v64 = a4;
  v8 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v9 = *(v8 - 8);
  v65 = v8 - 8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Date();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = *(v62 + 64);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v68 = v17;
  v69 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v59 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v58 - v22;
  v24 = *a1;
  v25 = *(*a2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v66 = v4;
  v26 = v71;
  v28 = a3[3];
  v27 = a3[4];
  sub_1000035D0(a3, v28);
  (*(*(*(v27 + 8) + 8) + 32))(v28);
  v30 = a3[3];
  v29 = a3[4];
  v31 = a3;
  v32 = v68;
  sub_1000035D0(v31, v30);
  v33 = *(v29 + 192);
  v61 = v16;
  v33(v30, v29);
  v70[3] = &type metadata for SecondaryIndex;
  v70[4] = sub_10022A4D4();
  v60 = v24;
  v70[0] = v24;
  v34 = *(v69 + 16);
  v67 = v23;
  v34(v12, v23, v32);
  sub_10001F280(v70, v12 + *(v65 + 28));
  sub_1012DE5A0(v12, 0, &v71);
  sub_10062CBB8(v12, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100007BAC(v70);
  v35 = v73;
  if (v73 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177BA08);
    v37 = v59;
    v34(v59, v67, v32);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v40 = 136447491;
      v75 = *v26;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v41 = String.init<A>(describing:)();
      LODWORD(v65) = v39;
      v43 = sub_1000136BC(v41, v42, v70);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_1000136BC(0xD00000000000004BLL, 0x800000010135B660, v70);
      *(v40 + 22) = 2160;
      *(v40 + 24) = 1752392040;
      *(v40 + 32) = 2081;
      v44 = UUID.uuidString.getter();
      v46 = v45;
      v47 = *(v69 + 8);
      v47(v37, v68);
      v48 = sub_1000136BC(v44, v46, v70);

      *(v40 + 34) = v48;
      *(v40 + 42) = 2082;
      *(v40 + 44) = sub_1000136BC(0x61646E6F6365732ELL, 0xEA00000000007972, v70);
      *(v40 + 52) = 2048;
      *(v40 + 54) = v60;
      _os_log_impl(&_mh_execute_header, v38, v65, "%{public}s: %{public}s. Unable to obtain keys for beacon %{private,mask.hash}s, sequence %{public}s, index %llu", v40, 0x3Eu);
      swift_arrayDestroy();
      v32 = v68;
    }

    else
    {

      v47 = *(v69 + 8);
      v47(v37, v32);
    }

    (*(v62 + 8))(v61, v63);
    v47(v67, v32);
    v57 = type metadata accessor for TimeBasedKey();
    return (*(*(v57 - 8) + 56))(v64, 1, 1, v57);
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v49 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v50 = sub_101073C10(v70[0]);

    if (v50 < 0)
    {
      __break(1u);
    }

    else
    {
      v52 = type metadata accessor for TimeBasedKey();
      v53 = v64;
      v55 = v60;
      v54 = v61;
      sub_1008849E8(v61, v60, v50, v64 + *(v52 + 20));

      *v53 = v55;
      v56 = v53 + *(v52 + 24);
      *v56 = v71;
      *(v56 + 2) = v72;
      *(v56 + 3) = v35;
      *(v56 + 2) = v74;
      (*(v62 + 8))(v54, v63);
      (*(v69 + 8))(v67, v32);
      return (*(*(v52 - 8) + 56))(v53, 0, 1, v52);
    }
  }

  return result;
}

uint64_t sub_1005E8380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v55 = a6;
  v56 = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = a5[6];
  v19 = a5[7];
  sub_1000035D0(a5 + 3, v18);
  result = sub_100890328(v18, v19);
  v21 = a4 * result;
  if ((a4 * result) >> 64 == (a4 * result) >> 63)
  {
    v51 = a2;
    v52 = a1;
    v23 = a1 >= a4 || v21 <= a2;
    v24 = *(type metadata accessor for LocationFetcher() + 32);
    v53 = v11;
    v25 = *(v11 + 16);
    v54 = v23;
    if (v23)
    {
      v25(v17, v55, v10);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v26, v27))
      {

        (*(v53 + 8))(v17, v10);
        return v54;
      }

      v28 = v10;
      v29 = v21 <= v51;
      v30 = v52 >= a4;
      v31 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v31 = 67110147;
      *(v31 + 4) = v30;
      *(v31 + 8) = 1024;
      *(v31 + 10) = v29;
      *(v31 + 14) = 2160;
      *(v31 + 16) = 1752392040;
      *(v31 + 24) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v53 + 8))(v17, v28);
      v35 = sub_1000136BC(v32, v34, &v57);

      *(v31 + 26) = v35;
      *(v31 + 34) = 2082;
      v36 = Array.description.getter();
      v38 = sub_1000136BC(v36, v37, &v57);

      *(v31 + 36) = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "Found enough primary results: %{BOOL}d, or enough secondary results: %{BOOL}d to terminate beacon: %{private,mask.hash}s, parts: %{public}s.", v31, 0x2Cu);
      swift_arrayDestroy();
    }

    else
    {
      v25(v15, v55, v10);

      v26 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v26, v39))
      {

        (*(v53 + 8))(v15, v10);
        return v54;
      }

      v40 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v40 = 67110147;
      *(v40 + 8) = 1024;
      *(v40 + 10) = 0;
      *(v40 + 14) = 2160;
      *(v40 + 16) = 1752392040;
      *(v40 + 24) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v10;
      v43 = v41;
      v45 = v44;
      (*(v53 + 8))(v15, v42);
      v46 = sub_1000136BC(v43, v45, &v57);

      *(v40 + 26) = v46;
      *(v40 + 34) = 2082;
      v47 = Array.description.getter();
      v49 = sub_1000136BC(v47, v48, &v57);

      *(v40 + 36) = v49;
      _os_log_impl(&_mh_execute_header, v26, v39, "Not enough primary results: %{BOOL}d, or enough secondary results: %{BOOL}d to terminate beacon: %{private,mask.hash}s, parts: %{public}s.", v40, 0x2Cu);
      swift_arrayDestroy();
    }

    return v54;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005E88B4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v58 = a4;
  v8 = type metadata accessor for UUID();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RawSearchResult();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  __chkstk_darwin(v12);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  LODWORD(v67) = a2;
  v16[16] = a2;
  v16[17] = a1;
  v16[18] = BYTE1(a1) & 1;
  v16[19] = BYTE2(a1) & 1;
  v56 = v16;
  v16[20] = HIBYTE(a1) & 1;
  v17 = a3 + 56;
  v18 = -1 << *(a3 + 32);

  result = _HashTable.startBucket.getter();
  v20 = result;
  v21 = *(a3 + 36);
  v22 = 1 << *(a3 + 32);
  if (result == v22)
  {
    v23 = *(a3 + 36);
LABEL_37:
    v39 = sub_10061CDE4(v20, v23, 0, v22, v21, 0, a3, sub_10062C000);

    v40 = *(type metadata accessor for LocationFetcher() + 32);
    v41 = v59;
    v42 = v60;
    (*(v59 + 16))(v11, v57, v60);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v41;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67 = v39;
      v68 = v47;
      *v46 = 134218755;
      *(v46 + 4) = v67;
      *(v46 + 12) = 2160;
      *(v46 + 14) = 1752392040;
      *(v46 + 22) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v45 + 8))(v11, v42);
      v51 = sub_1000136BC(v48, v50, &v68);

      *(v46 + 24) = v51;
      *(v46 + 32) = 2082;
      v52 = sub_100019E48();
      v54 = sub_1000136BC(v52, v53, &v68);

      *(v46 + 34) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "Found %ld results for %{private,mask.hash}s, multipart: %{public}s.", v46, 0x2Au);
      swift_arrayDestroy();
      v39 = v67;
    }

    else
    {

      (*(v41 + 8))(v11, v42);
    }

    return v39;
  }

  v55[3] = a1;
  v64 = a1 & 0x1010100;
  if ((a1 & 0x10000) != 0)
  {
    v24 = 0x10000;
  }

  else
  {
    v24 = 0x1000000;
  }

  v61 = v24;
  v62 = a1 & 0x100;
  v63 = a3 + 64;
  while ((v20 & 0x8000000000000000) == 0 && v20 < v22)
  {
    v26 = v11;
    v27 = v20 >> 6;
    if ((*(v17 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_42;
    }

    sub_10062CD24(*(a3 + 48) + *(v65 + 72) * v20, v15, type metadata accessor for RawSearchResult);
    v28 = v15[*(v66 + 36)];
    if (v28 == 12)
    {
      if ((v67 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v28 != 13) == (v67 & 1))
    {
      goto LABEL_25;
    }

    v29 = sub_10001993C(*v15 & 0xB);
    v30 = v29;
    if (!v64)
    {
      if ((v29 & 0x100) == 0)
      {
        result = sub_10062CBB8(v15, type metadata accessor for RawSearchResult);
        if ((v30 & 0x1010000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

LABEL_25:
      result = sub_10062CBB8(v15, type metadata accessor for RawSearchResult);
      goto LABEL_26;
    }

    if (v62)
    {
      v31 = v29 & 0x100;
    }

    else
    {
      v31 = v29 & v61;
    }

    result = sub_10062CBB8(v15, type metadata accessor for RawSearchResult);
    if (v31)
    {
LABEL_35:
      v25 = v20;
      v11 = v26;
LABEL_36:
      v23 = v21;
      v21 = *(a3 + 36);
      v22 = 1 << *(a3 + 32);
      v20 = v25;
      goto LABEL_37;
    }

LABEL_26:
    v25 = 1 << *(a3 + 32);
    if (v20 >= v25)
    {
      goto LABEL_43;
    }

    v32 = *(v17 + 8 * v27);
    if ((v32 & (1 << v20)) == 0)
    {
      goto LABEL_44;
    }

    if (v21 != *(a3 + 36))
    {
      goto LABEL_45;
    }

    v33 = v32 & (-2 << (v20 & 0x3F));
    if (v33)
    {
      v25 = __clz(__rbit64(v33)) | v20 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v27 << 6;
      v35 = v27 + 1;
      v36 = (v63 + 8 * v27);
      while (v35 < (v25 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_1000BB408(v20, v21, 0);
          v25 = __clz(__rbit64(v37)) + v34;
          goto LABEL_8;
        }
      }

      result = sub_1000BB408(v20, v21, 0);
    }

LABEL_8:
    v21 = *(a3 + 36);
    v22 = 1 << *(a3 + 32);
    v20 = v25;
    v11 = v26;
    if (v25 == v22)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

BOOL sub_1005E8F1C(_BYTE *a1, char a2, int a3)
{
  v6 = a1[*(type metadata accessor for RawSearchResult() + 36)];
  if (v6 == 12)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v6 != 13) == (a2 & 1))
  {
    return 0;
  }

  v8 = sub_10001993C(*a1 & 0xB);
  if ((a3 & 0x10000) != 0)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0x1000000;
  }

  v10 = v8 & v9;
  if ((a3 & 0x100) != 0)
  {
    v10 = v8 & 0x100;
  }

  if (v10)
  {
    v7 = (a3 & 0x1010100) != 0;
  }

  else
  {
    v7 = 0;
  }

  if (!(a3 & 0x1010100 | v8 & 0x100))
  {
    return (v8 & 0x1010000) == 0;
  }

  return v7;
}

void *sub_1005E8FE4(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v63 - v5;
  v7 = type metadata accessor for UUID();
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  v9 = __chkstk_darwin(v7);
  v75 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v63 - v12;
  v14 = __chkstk_darwin(v11);
  v71 = v63 - v15;
  __chkstk_darwin(v14);
  v73 = v63 - v16;
  v17 = type metadata accessor for StableIdentifier();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v63 - v23;
  v25 = type metadata accessor for OwnedBeaconRecord();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v76 = v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = v63 - v30;
  sub_10001F280(a1, v80);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v32 = swift_dynamicCast();
  v33 = *(v26 + 56);
  if (!v32)
  {
    v33(v24, 1, 1, v25);
    sub_10000B3A8(v24, &unk_1016A9A20, &qword_10138B280);
    return _swiftEmptyArrayStorage;
  }

  v33(v24, 0, 1, v25);
  sub_10062CC64(v24, v31, type metadata accessor for OwnedBeaconRecord);
  sub_10062CD24(&v31[*(v25 + 24)], v20, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10062CBB8(v20, type metadata accessor for StableIdentifier);
    goto LABEL_7;
  }

  v34 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
  v35 = *&v20[v34[12] + 8];

  v36 = *&v20[v34[16] + 8];

  v37 = *&v20[v34[20] + 8];

  v38 = v20[v34[24]];
  v39 = v77;
  v69 = *(v77 + 8);
  v70 = v77 + 8;
  v69(v20, v7);
  sub_1000D2A70(&v31[*(v25 + 28)], v6, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v39 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
LABEL_7:
    sub_10062CBB8(v31, type metadata accessor for OwnedBeaconRecord);
    return _swiftEmptyArrayStorage;
  }

  v66 = v25;
  v41 = *(v39 + 32);
  v42 = v73;
  v41(v73, v6, v7);
  sub_100ACBC98(v42, &v78);
  if (!v79)
  {
    v69(v42, v7);
    sub_10000B3A8(&v78, &unk_1016AA480, &unk_1013BD050);
    goto LABEL_7;
  }

  sub_10000A748(&v78, v80);
  v65 = v39 + 32;
  v64 = v41;
  if (v38 > 3)
  {
    v43 = &off_1016098E8;
  }

  else
  {
    v43 = off_10162B820[v38];
  }

  v63[0] = v43;
  v44 = v81;
  v45 = v82;
  sub_1000035D0(v80, v81);
  v46 = (*(v45 + 16))(v44, v45);
  sub_10062CD24(v31, v76, type metadata accessor for OwnedBeaconRecord);
  v48 = v46 + 56;
  v47 = *(v46 + 56);
  *&v78 = _swiftEmptyArrayStorage;
  v49 = 1 << *(v46 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v47;
  v52 = (v49 + 63) >> 6;
  v63[1] = v39 + 16;
  v67 = v46;

  v53 = 0;
  v68 = v31;
  while (v51)
  {
LABEL_25:
    v57 = v75;
    (*(v77 + 16))(v75, *(v67 + 48) + *(v77 + 72) * (__clz(__rbit64(v51)) | (v53 << 6)), v7);
    v58 = v57;
    v46 = v7;
    v59 = v64;
    v64(v13, v58, v7);
    v60 = *(v66 + 20);
    sub_100009774(&qword_1016984A0, &type metadata accessor for UUID);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v55 = v13;
    }

    else
    {
      v54 = v71;
      v59(v71, v13, v7);
      sub_1005FB414(&v78, v54, v74, v63[0], v72, v68);
      v55 = v54;
    }

    v51 &= v51 - 1;
    v69(v55, v7);
    v31 = v68;
  }

  while (1)
  {
    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v56 >= v52)
    {

      v61 = v78;
      sub_10062CBB8(v76, type metadata accessor for OwnedBeaconRecord);

      v62 = sub_10039CB64(v61);

      v69(v73, v7);
      sub_100007BAC(v80);
      sub_10062CBB8(v31, type metadata accessor for OwnedBeaconRecord);
      return v62;
    }

    v51 = *(v48 + 8 * v56);
    ++v53;
    if (v51)
    {
      v53 = v56;
      goto LABEL_25;
    }
  }

  __break(1u);
  sub_10062CBB8(v76, type metadata accessor for OwnedBeaconRecord);
  v69(v71, v46);

  __break(1u);
  return result;
}

char *sub_1005E9858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v270 = a3;
  v265 = a1;
  v3 = type metadata accessor for FetchResponse.SearchResult();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v279 = &v245 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v278 = &v245 - v8;
  v267 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v267 - 8) + 64);
  __chkstk_darwin(v267);
  v277 = &v245 - v10;
  v293 = type metadata accessor for Date();
  v266 = *(v293 - 8);
  v11 = v266[8];
  __chkstk_darwin(v293);
  v276 = &v245 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = type metadata accessor for RawSearchResult();
  v274 = *(v275 - 8);
  v13 = *(v274 + 64);
  v14 = __chkstk_darwin(v275);
  v289 = &v245 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v287 = &v245 - v17;
  __chkstk_darwin(v16);
  v292 = (&v245 - v18);
  v282 = type metadata accessor for BeaconPayloadv1();
  v19 = *(*(v282 - 8) + 64);
  v20 = __chkstk_darwin(v282);
  v281 = (&v245 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v286 = &v245 - v23;
  v24 = __chkstk_darwin(v22);
  v285 = &v245 - v25;
  v26 = __chkstk_darwin(v24);
  v284 = &v245 - v27;
  v28 = __chkstk_darwin(v26);
  v273 = &v245 - v29;
  v30 = __chkstk_darwin(v28);
  v269 = (&v245 - v31);
  v32 = __chkstk_darwin(v30);
  v268 = (&v245 - v33);
  v34 = __chkstk_darwin(v32);
  v272 = &v245 - v35;
  __chkstk_darwin(v34);
  v288 = &v245 - v36;
  v37 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v245 - v39;
  v280 = type metadata accessor for OwnedBeaconRecord();
  v41 = *(v280 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v280);
  v45 = &v245 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v43);
  v271 = &v245 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v245 - v49;
  __chkstk_darwin(v48);
  v52 = &v245 - v51;
  v53 = sub_1000BC4D4(&qword_1016A5940, &qword_1013B3448);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v56 = &v245 - v55;
  v290 = sub_1000BC4D4(&qword_1016A5948, &qword_1013B3450);
  v57 = *(v290 - 8);
  v58 = *(v57 + 64);
  v59 = __chkstk_darwin(v290);
  v60 = __chkstk_darwin(v59);
  v62 = &v245 - v61;
  v63 = __chkstk_darwin(v60);
  v64 = __chkstk_darwin(v63);
  v66 = &v245 - v65;
  __chkstk_darwin(v64);
  v291 = (&v245 - v70);
  if (*(v69 + *(v3 + 28)) != 15)
  {
    sub_10062B0D0();
    v76 = swift_allocError();
    *v77 = 3;
    v294 = v76;
    swift_willThrow();
    return v50;
  }

  v263 = v62;
  v262 = v3;
  v258 = v45;
  v260 = v68;
  v259 = v67;
  v264 = v52;
  v71 = *v69;
  v72 = v69[1];
  v73 = v69;
  sub_100017D5C(*v69, v72);
  v74 = v294;
  sub_1004A4714(v71, v72, &v296);
  v75 = v74;
  if (v74)
  {
    v294 = v74;
    return v50;
  }

  v261 = v73;
  v78 = v296;
  v79 = v297;
  sub_10062D370(v296, v297, v270, v56);
  if ((*(v57 + 48))(v56, 1, v290) == 1)
  {
    v80 = &qword_1016A5940;
    v81 = &qword_1013B3448;
    v82 = v56;
LABEL_14:
    sub_10000B3A8(v82, v80, v81);
    sub_10062B0D0();
    v294 = swift_allocError();
    *v114 = 0;
    swift_willThrow();
    sub_100016590(v78, v79);
    return v50;
  }

  v83 = v56;
  v84 = v291;
  sub_1000D2AD8(v83, v291, &qword_1016A5948, &qword_1013B3450);
  v85 = *v283;
  sub_100025020(v84, &v296);
  if (!v298)
  {
    sub_10000B3A8(&v296, &qword_101696920, &unk_10138B200);
    (*(v41 + 56))(v40, 1, 1, v280);
    goto LABEL_13;
  }

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v86 = v280;
  v87 = swift_dynamicCast();
  (*(v41 + 56))(v40, v87 ^ 1u, 1, v86);
  if ((*(v41 + 48))(v40, 1, v86) == 1)
  {
LABEL_13:
    sub_10000B3A8(v40, &unk_1016A9A20, &qword_10138B280);
    v80 = &qword_1016A5948;
    v81 = &qword_1013B3450;
    v82 = v291;
    goto LABEL_14;
  }

  v245 = v78;
  v246 = v79;
  v88 = v264;
  sub_10062CC64(v40, v264, type metadata accessor for OwnedBeaconRecord);
  v89 = v291;
  if (qword_1016954F0 != -1)
  {
LABEL_56:
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  sub_1000076D4(v90, qword_10177CE28);
  sub_10062CD24(v88, v50, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(v89, v66, &qword_1016A5948, &qword_1013B3450);
  v89 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  v92 = os_log_type_enabled(v89, v91);
  v93 = v290;
  v294 = v75;
  if (v92)
  {
    v94 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    v295 = v270;
    *v94 = 141558787;
    *(v94 + 4) = 1752392040;
    *(v94 + 12) = 2081;
    LODWORD(v257) = v91;
    v95 = *(v280 + 20);
    v256 = type metadata accessor for UUID();
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v98 = v97;
    sub_10062CBB8(v50, type metadata accessor for OwnedBeaconRecord);
    v99 = sub_1000136BC(v96, v98, &v295);

    *(v94 + 14) = v99;
    *(v94 + 22) = 2160;
    *(v94 + 24) = 1752392040;
    *(v94 + 32) = 2081;
    v100 = v260;
    sub_1000D2A70(v66, v260, &qword_1016A5948, &qword_1013B3450);
    v101 = (v100 + *(v93 + 12));
    v102 = *v101;
    v103 = v101[1];
    sub_100016590(*(v100 + *(v93 + 16)), *(v100 + *(v93 + 16) + 8));
    v104 = PublicKey.advertisement.getter(v102, v103);
    v106 = v105;
    sub_100016590(v102, v103);
    sub_100017D5C(v104, v106);
    v107 = static MACAddress.length.getter();
    sub_10002EA98(v107, v104, v106, &v296);
    sub_100016590(v104, v106);
    v108 = v296;
    v109 = v297;
    v75 = Data.hexString.getter();
    v111 = v110;
    sub_100016590(v108, v109);
    sub_10000B3A8(v66, &qword_1016A5948, &qword_1013B3450);
    (*(*(v256 - 8) + 8))(v100);
    v88 = v264;
    v112 = sub_1000136BC(v75, v111, &v295);
    v93 = v290;

    *(v94 + 34) = v112;
    _os_log_impl(&_mh_execute_header, v89, v257, "Using decryption key for beacon %{private,mask.hash}s,\nadvertisementAddress: %{private,mask.hash}s.", v94, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v66, &qword_1016A5948, &qword_1013B3450);
    sub_10062CBB8(v50, type metadata accessor for OwnedBeaconRecord);
  }

  v116 = *(v261 + 16);
  v252 = *(v116 + 16);
  if (!v252)
  {
    v50 = _swiftEmptyArrayStorage;
LABEL_46:
    sub_100016590(v245, v246);
    v206 = *(v280 + 20);
    v207 = type metadata accessor for UUID();
    (*(*(v207 - 8) + 16))(v265, v88 + v206, v207);
    sub_10062CBB8(v88, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v291, &qword_1016A5948, &qword_1013B3450);
    return v50;
  }

  v66 = 0;
  v250 = (v266 + 2);
  v249 = (v266 + 1);
  v50 = _swiftEmptyArrayStorage;
  v117 = (v116 + 40);
  *&v113 = 141560323;
  v247 = v113;
  v251 = v116;
  while (1)
  {
    v270 = v50;
    v118 = *(v116 + 16);
    v257 = v66;
    if (v66 >= v118)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v50 = v93;
    v119 = *(v117 - 1);
    v75 = *v117;
    v66 = v50;
    v120 = v291;
    v121 = (v291 + *(v50 + 16));
    v122 = *v121;
    v123 = v121[1];
    sub_100017D5C(v119, *v117);
    v124 = v294;
    v125 = sub_100496ABC();
    v294 = v124;
    if (v124)
    {
      sub_100016590(v119, v75);

      goto LABEL_49;
    }

    v89 = v125;
    v256 = v117;
    v126 = v263;
    sub_1000D2A70(v120, v263, &qword_1016A5948, &qword_1013B3450);
    v127 = (v126 + *(v50 + 12));
    v88 = *v127;
    v128 = v127[1];
    v129 = (v126 + *(v50 + 16));
    v130 = *v129;
    v131 = v129[1];
    v266 = v119;
    sub_100017D5C(v119, v75);
    sub_100016590(v130, v131);
    v132 = PublicKey.advertisement.getter(v88, v128);
    v134 = v133;
    sub_100016590(v88, v128);
    v135 = v75 >> 62;
    if ((v75 >> 62) > 1)
    {
      if (v135 != 2)
      {
        v88 = 0;
        goto LABEL_31;
      }

      v136 = v266;
      v138 = v266[2];
      v137 = v266[3];
      v88 = v137 - v138;
      if (__OFSUB__(v137, v138))
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (!v135)
      {
        v88 = BYTE6(v75);
LABEL_31:
        v136 = v266;
        goto LABEL_32;
      }

      v136 = v266;
      if (__OFSUB__(HIDWORD(v266), v266))
      {
        goto LABEL_54;
      }

      v88 = HIDWORD(v266) - v266;
    }

LABEL_32:
    sub_100A2A240(3);
    v255 = v75;
    if (v88 >= v139)
    {
      v140 = v269;
      v141 = v294;
      sub_100A2AA58(v89, v136, v75, v132, v134, v269);
    }

    else
    {
      v140 = v268;
      v141 = v294;
      sub_100A2B118(v89, v136, v75, v132, v134, v268);
    }

    v142 = v282;
    v294 = v141;
    if (v141)
    {
      break;
    }

    v143 = v272;
    sub_10062CC64(v140, v272, type metadata accessor for BeaconPayloadv1);
    v144 = v288;
    sub_10062CC64(v143, v288, type metadata accessor for BeaconPayloadv1);
    v145 = type metadata accessor for UUID();
    v146 = *(*(v145 - 8) + 8);
    v253 = v145;
    v146(v263);
    LODWORD(v254) = *(v144 + v142[10]);
    v147 = *v250;
    v148 = v276;
    (*v250)(v276, v144 + v142[5], v293);
    v149 = *(v144 + v142[7]);
    v150 = *(v144 + v142[8]);
    v151 = *(v144 + v142[9]);
    v152 = v277;
    sub_1000D2A70(v261 + *(v262 + 24), v277, &unk_101696900, &unk_10138B1E0);
    v153 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v154 = v278;
    (*(*(v153 - 8) + 56))(v278, 1, 1, v153);
    v75 = v275;
    v155 = v292;
    v147(v292 + *(v275 + 20), v148, v293);
    sub_1000D2A70(v152, v155 + *(v75 + 40), &unk_101696900, &unk_10138B1E0);
    sub_1000D2A70(v154, v155 + *(v75 + 44), &unk_1016C1120, &qword_1013C49D0);
    v156 = v155 + *(v75 + 48);
    UUID.init()();
    sub_10000B3A8(v154, &unk_1016C1120, &qword_1013C49D0);
    sub_10000B3A8(v152, &unk_101696900, &unk_10138B1E0);
    (*v249)(v148, v293);
    LOBYTE(v155->isa) = v254;
    *(&v155->isa + *(v75 + 24)) = v149;
    *(&v155->isa + *(v75 + 28)) = v150;
    *(&v155->isa + *(v75 + 32)) = v151;
    *(&v155->isa + *(v75 + 36)) = 15;
    *(&v155->isa + *(v75 + 52)) = 256;
    LODWORD(v147) = *(type metadata accessor for LocationFetcher() + 32);
    v157 = v271;
    sub_10062CD24(v264, v271, type metadata accessor for OwnedBeaconRecord);
    v158 = v273;
    sub_10062CD24(v144, v273, type metadata accessor for BeaconPayloadv1);
    v159 = v279;
    sub_10062CD24(v261, v279, type metadata accessor for FetchResponse.SearchResult);
    sub_10062CD24(v155, v287, type metadata accessor for RawSearchResult);
    sub_10062CD24(v144, v284, type metadata accessor for BeaconPayloadv1);
    sub_10062CD24(v144, v285, type metadata accessor for BeaconPayloadv1);
    sub_10062CD24(v144, v286, type metadata accessor for BeaconPayloadv1);
    v160 = v281;
    sub_10062CD24(v144, v281, type metadata accessor for BeaconPayloadv1);
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.default.getter();
    v163 = v162;
    if (os_log_type_enabled(v161, v162))
    {
      v164 = swift_slowAlloc();
      v248 = v163;
      v165 = v164;
      v254 = swift_slowAlloc();
      v295 = v254;
      *v165 = v247;
      *(v165 + 4) = 1752392040;
      *(v165 + 12) = 2081;
      v166 = *(v280 + 20);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v167 = dispatch thunk of CustomStringConvertible.description.getter();
      v169 = v168;
      sub_10062CBB8(v157, type metadata accessor for OwnedBeaconRecord);
      v170 = sub_1000136BC(v167, v169, &v295);

      *(v165 + 14) = v170;
      *(v165 + 22) = 2082;
      v171 = v282;
      v172 = *(v282 + 20);
      sub_100009774(&qword_1016969A0, &type metadata accessor for Date);
      v173 = dispatch thunk of CustomStringConvertible.description.getter();
      v174 = v159;
      v176 = v175;
      sub_10062CBB8(v158, type metadata accessor for BeaconPayloadv1);
      v177 = sub_1000136BC(v173, v176, &v295);

      *(v165 + 24) = v177;
      *(v165 + 32) = 2082;
      v178 = v174 + *(v262 + 24);
      v179 = Optional.debugDescription.getter();
      v181 = v180;
      sub_10062CBB8(v174, type metadata accessor for FetchResponse.SearchResult);
      v182 = sub_1000136BC(v179, v181, &v295);

      *(v165 + 34) = v182;
      *(v165 + 42) = 2082;
      v183 = *(v75 + 36);
      v184 = v287;
      v185 = sub_100013454(*(v287 + v183));
      v187 = v186;
      sub_10062CBB8(v184, type metadata accessor for RawSearchResult);
      v188 = sub_1000136BC(v185, v187, &v295);

      *(v165 + 44) = v188;
      *(v165 + 52) = 2049;
      v189 = *(v284 + v171[7]);
      sub_10062CBB8(v284, type metadata accessor for BeaconPayloadv1);
      *(v165 + 54) = v189;
      *(v165 + 62) = 2049;
      v190 = *(v285 + v171[8]);
      sub_10062CBB8(v285, type metadata accessor for BeaconPayloadv1);
      *(v165 + 64) = v190;
      *(v165 + 72) = 2050;
      v191 = *(v286 + v171[9]);
      sub_10062CBB8(v286, type metadata accessor for BeaconPayloadv1);
      *(v165 + 74) = v191;
      *(v165 + 82) = 2160;
      *(v165 + 84) = 1752392040;
      *(v165 + 92) = 2081;
      v192 = v281;
      v193 = *v281;
      v194 = v281[1];
      sub_100017D5C(*v281, v194);
      v195 = static MACAddress.length.getter();
      sub_10002EA98(v195, v193, v194, &v296);
      v196 = v296;
      v197 = v297;
      v75 = Data.hexString.getter();
      v199 = v198;
      sub_100016590(v196, v197);
      sub_10062CBB8(v192, type metadata accessor for BeaconPayloadv1);
      v88 = v264;
      v200 = sub_1000136BC(v75, v199, &v295);
      v93 = v290;

      *(v165 + 94) = v200;
      _os_log_impl(&_mh_execute_header, v161, v248, "Packet decrypted for beacon %{private,mask.hash}s,\nlocationTimestamp: %{public}s,\nscanDate: %{public}s,\nsource: %{public}s,\nlatitude: %{private}f,\nlongitude: %{private}f,\nhorizontalAccuracy: %{public}f,\nadvertisementAddress: %{private,mask.hash}s.", v165, 0x66u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10062CBB8(v286, type metadata accessor for BeaconPayloadv1);
      sub_10062CBB8(v285, type metadata accessor for BeaconPayloadv1);
      sub_10062CBB8(v284, type metadata accessor for BeaconPayloadv1);
      sub_10062CBB8(v287, type metadata accessor for RawSearchResult);
      sub_10062CBB8(v159, type metadata accessor for FetchResponse.SearchResult);
      sub_10062CBB8(v158, type metadata accessor for BeaconPayloadv1);
      sub_10062CBB8(v157, type metadata accessor for OwnedBeaconRecord);
      sub_10062CBB8(v160, type metadata accessor for BeaconPayloadv1);
      v88 = v264;
      v93 = v290;
    }

    v201 = v256;
    sub_10062CD24(v292, v289, type metadata accessor for RawSearchResult);
    v50 = v270;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v251;
    v203 = v257;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_100A5D328(0, *(v50 + 2) + 1, 1, v50);
    }

    v205 = *(v50 + 2);
    v204 = *(v50 + 3);
    v89 = (v205 + 1);
    if (v205 >= v204 >> 1)
    {
      v50 = sub_100A5D328(v204 > 1, v205 + 1, 1, v50);
    }

    v66 = v203 + 1;
    sub_100016590(v266, v255);
    sub_10062CBB8(v292, type metadata accessor for RawSearchResult);
    sub_10062CBB8(v288, type metadata accessor for BeaconPayloadv1);
    *(v50 + 2) = v89;
    sub_10062CC64(v289, &v50[((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v205], type metadata accessor for RawSearchResult);
    v117 = (v201 + 24);
    if (v252 == v66)
    {
      goto LABEL_46;
    }
  }

  sub_100016590(v136, v75);

  v208 = type metadata accessor for UUID();
  (*(*(v208 - 8) + 8))(v263, v208);
  v88 = v264;
LABEL_49:
  v296 = 0;
  v297 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v296 = 0xD000000000000020;
  v297 = 0x800000010135B6F0;
  swift_getErrorValue();
  v295 = Error.code.getter();
  v209._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v209);

  v210._countAndFlagsBits = 0x6F44726F72726520;
  v210._object = 0xED00003A6E69616DLL;
  String.append(_:)(v210);
  swift_getErrorValue();
  v211._countAndFlagsBits = Error.domain.getter();
  String.append(_:)(v211);

  sub_101172840(v296, v297);

  v212 = *(type metadata accessor for LocationFetcher() + 32);
  v213 = v88;
  v214 = v258;
  sub_10062CD24(v88, v258, type metadata accessor for OwnedBeaconRecord);
  v215 = v259;
  sub_1000D2A70(v291, v259, &qword_1016A5948, &qword_1013B3450);
  swift_errorRetain();
  v216 = Logger.logObject.getter();
  v217 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v216, v217))
  {
    v218 = swift_slowAlloc();
    v293 = swift_slowAlloc();
    v295 = v293;
    *v218 = 141559043;
    *(v218 + 4) = 1752392040;
    v292 = v216;
    *(v218 + 12) = 2081;
    LODWORD(v289) = v217;
    v219 = *(v280 + 20);
    v50 = type metadata accessor for UUID();
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v220 = dispatch thunk of CustomStringConvertible.description.getter();
    v221 = v290;
    v223 = v222;
    sub_10062CBB8(v214, type metadata accessor for OwnedBeaconRecord);
    v224 = sub_1000136BC(v220, v223, &v295);

    *(v218 + 14) = v224;
    *(v218 + 22) = 2160;
    *(v218 + 24) = 1752392040;
    *(v218 + 32) = 2081;
    v225 = v260;
    sub_1000D2A70(v215, v260, &qword_1016A5948, &qword_1013B3450);
    v226 = (v225 + *(v221 + 48));
    v228 = *v226;
    v227 = v226[1];
    sub_100016590(*(v225 + *(v221 + 64)), *(v225 + *(v221 + 64) + 8));
    v229 = PublicKey.advertisement.getter(v228, v227);
    v231 = v230;
    sub_100016590(v228, v227);
    sub_100017D5C(v229, v231);
    v232 = static MACAddress.length.getter();
    sub_10002EA98(v232, v229, v231, &v296);
    sub_100016590(v229, v231);
    v233 = v296;
    v234 = v297;
    v235 = Data.hexString.getter();
    v237 = v236;
    sub_100016590(v233, v234);
    sub_10000B3A8(v215, &qword_1016A5948, &qword_1013B3450);
    (*(*(v50 - 1) + 8))(v225, v50);
    v238 = v291;
    v239 = sub_1000136BC(v235, v237, &v295);

    *(v218 + 34) = v239;
    *(v218 + 42) = 2082;
    v296 = v294;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v240 = String.init<A>(describing:)();
    v242 = sub_1000136BC(v240, v241, &v295);

    *(v218 + 44) = v242;
    v243 = v264;
    v244 = v292;
    _os_log_impl(&_mh_execute_header, v292, v289, "Error decrypting location for beacon: %{private,mask.hash}s,\nadvertisementAddress: %{private,mask.hash}s,\n%{public}s.", v218, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v215, &qword_1016A5948, &qword_1013B3450);
    sub_10062CBB8(v214, type metadata accessor for OwnedBeaconRecord);
    v243 = v213;
    v238 = v291;
  }

  swift_willThrow();
  sub_100016590(v245, v246);
  sub_10062CBB8(v243, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v238, &qword_1016A5948, &qword_1013B3450);
  return v50;
}

uint64_t sub_1005EB758(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FetchResponse.SearchResult();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a3;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);

    do
    {
      sub_10062CD24(v13, v11, type metadata accessor for FetchResponse.SearchResult);
      if (*(v11 + *(v7 + 28)) != 15)
      {
        v15 = objc_autoreleasePoolPush();
        sub_1005EB8E4(v11, a2, v3, &v18);
        objc_autoreleasePoolPop(v15);
      }

      sub_10062CBB8(v11, type metadata accessor for FetchResponse.SearchResult);
      v13 += v14;
      --v12;
    }

    while (v12);
    return v18;
  }

  else
  {
  }

  return a3;
}

void sub_1005EB8E4(uint64_t *a1, unint64_t a2, void *a3, void *a4)
{
  v299 = a4;
  v335 = a3;
  v329 = a2;
  v333 = type metadata accessor for LocationFetcher();
  isa = v333[-1].isa;
  v5 = *(isa + 8);
  __chkstk_darwin(v333);
  v297 = v6;
  v321 = &v287 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v309 = &v287 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v325 = &v287 - v11;
  v12 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v315 = &v287 - v14;
  v320 = type metadata accessor for RawSearchResult();
  v296 = *(v320 - 8);
  v15 = *(v296 + 64);
  v16 = __chkstk_darwin(v320);
  v307 = &v287 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = v17;
  __chkstk_darwin(v16);
  v331 = (&v287 - v18);
  v327 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v310 = *(v327 - 8);
  v19 = *(v310 + 64);
  v20 = __chkstk_darwin(v327);
  v319 = &v287 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = v21;
  __chkstk_darwin(v20);
  v326 = (&v287 - v22);
  v328 = type metadata accessor for Date();
  v322 = *(v328 - 8);
  v23 = *(v322 + 64);
  v24 = __chkstk_darwin(v328);
  v318 = &v287 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v295 = v25;
  __chkstk_darwin(v24);
  v323 = (&v287 - v26);
  v332 = type metadata accessor for UUID();
  v313 = *(v332 - 8);
  v27 = *(v313 + 64);
  v28 = __chkstk_darwin(v332);
  v298 = &v287 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v324 = &v287 - v31;
  v32 = __chkstk_darwin(v30);
  v317 = &v287 - v33;
  v34 = __chkstk_darwin(v32);
  v304 = &v287 - v35;
  __chkstk_darwin(v34);
  v330 = &v287 - v36;
  v314 = type metadata accessor for TimeBasedKey();
  v301 = *(v314 - 1);
  v37 = *(v301 + 8);
  v38 = __chkstk_darwin(v314);
  v305 = (&v287 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __chkstk_darwin(v38);
  v300 = &v287 - v41;
  v42 = __chkstk_darwin(v40);
  v303 = &v287 - v43;
  v44 = __chkstk_darwin(v42);
  v302 = &v287 - v45;
  v46 = __chkstk_darwin(v44);
  v311 = &v287 - v47;
  v48 = __chkstk_darwin(v46);
  v312 = (&v287 - v49);
  v50 = __chkstk_darwin(v48);
  v52 = &v287 - v51;
  __chkstk_darwin(v50);
  v54 = &v287 - v53;
  v55 = sub_1000BC4D4(&qword_1016A5928, &qword_1013B33C8);
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55 - 8);
  v58 = &v287 - v57;
  v59 = sub_1000BC4D4(&qword_1016A5930, &qword_1013B33D0);
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  __chkstk_darwin(v59);
  v63 = &v287 - v62;
  v64 = a1;
  v66 = *a1;
  v65 = a1[1];
  sub_100017D5C(v66, v65);
  v67 = v334;
  sub_1004A4714(v66, v65, &v350);
  if (v67)
  {
    v68 = v67;
    goto LABEL_3;
  }

  v292 = v52;
  v293 = v64;
  v294 = v54;
  v334 = v63;
  v77 = *(&v350 + 1);
  KeyPath = v350;
  sub_10062D61C(v350, *(&v350 + 1), v329, v58);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_100016590(KeyPath, v77);
    sub_10000B3A8(v58, &qword_1016A5928, &qword_1013B33C8);
    return;
  }

  v291 = v77;
  v79 = v334;
  sub_1000D2AD8(v58, v334, &qword_1016A5930, &qword_1013B33D0);
  v80 = *v335;
  v329 = *(v79 + *(v59 + 48));
  v81 = *(v79 + *(v59 + 64));
  sub_100025020(v79, &v350);
  if (!v352)
  {
    sub_10000B3A8(v79, &qword_1016A5930, &qword_1013B33D0);
    sub_100016590(KeyPath, v291);
    sub_10000B3A8(&v350, &qword_101696920, &unk_10138B200);
    return;
  }

  sub_10000A748(&v350, &v347);
  v82 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
  type metadata accessor for BeaconKeyManager(0);
  v83 = (v313 + 16);
  v289 = (v322 + 8);
  v313 += 8;
  v84 = *(v80 + v82);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v85 = v344;
  v87 = v348;
  v86 = v349;
  sub_1000035D0(&v347, v348);
  (*(*(*(v86 + 8) + 8) + 32))(v87);
  v88 = v348;
  v89 = v349;
  sub_1000035D0(&v347, v348);
  (*(v89 + 192))(v88, v89);
  if (v81)
  {
    v342 = &type metadata for SecondaryIndex;
    v90 = sub_10022A4D4();
  }

  else
  {
    v342 = &type metadata for PrimaryIndex;
    v90 = sub_10002A2B8();
  }

  v91 = v332;
  v92 = v327;
  v93 = v326;
  v343 = v90;
  *&v341 = v329;
  sub_10000A748(&v341, &v344);
  v94 = *v83;
  (*v83)(v93, v330, v91);
  sub_10001F280(&v344, v93 + *(v92 + 20));
  sub_1012DE5A0(v93, 0, &v350);
  sub_10062CBB8(v93, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100007BAC(&v344);
  v95 = v352;
  v288 = KeyPath;
  v290 = v81;
  if (v352 >> 60 == 15)
  {
    if (qword_101694BE8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_81;
  }

  v304 = v85;
  if ((v81 & 1) == 0)
  {
    v112 = v328;
    v94 = v323;
    v113 = v330;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v123 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v287 = v67;
    v124 = v344;
    KeyPath = swift_getKeyPath();
    v125 = sub_1010790F4(KeyPath, v124);
    if ((v126 & 1) == 0)
    {
      v97 = v125;

      if ((v97 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      __break(1u);
LABEL_83:
      objc_autoreleasePoolPop(v94);
      __break(1u);
    }

LABEL_84:
    *&v344 = 0;
    *(&v344 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v286._countAndFlagsBits = 0xD000000000000026;
    v286._object = 0x800000010134CA80;
    String.append(_:)(v286);
    *&v341 = KeyPath;
    sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v112 = v328;
  v94 = v323;
  v113 = v330;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v114 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v287 = v67;
  v115 = v344;
  KeyPath = swift_getKeyPath();
  v116 = sub_1010790F4(KeyPath, v115);
  if (v117)
  {
    goto LABEL_84;
  }

  v97 = v116;

  if (v97 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_35:
  v127 = v333;
  v128 = v312;
  v129 = v314;
  v130 = v329;
  sub_1008849E8(v94, v329, v97, v312 + *(v314 + 5));

  *v128 = v130;
  v131 = v128 + *(v129 + 6);
  *v131 = v350;
  *(v131 + 2) = v351;
  *(v131 + 3) = v95;
  *(v131 + 2) = v353;
  (*v289)(v94, v112);
  v94 = *v313;
  v132 = v113;
  v133 = v332;
  (*v313)(v132, v332);
  sub_10062CD24(v128, v311, type metadata accessor for TimeBasedKey);
  v134 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v134 = sub_100A5BDF0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v136 = v134[2];
  v135 = v134[3];
  v137 = v301;
  if (v136 >= v135 >> 1)
  {
    v134 = sub_100A5BDF0(v135 > 1, v136 + 1, 1, v134);
  }

  sub_10062CBB8(v312, type metadata accessor for TimeBasedKey);
  v134[2] = v136 + 1;
  v138 = v134 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
  sub_10062CC64(v311, &v138[*(v137 + 9) * v136], type metadata accessor for TimeBasedKey);
  v139 = v138;
  v140 = v292;
  sub_10062CD24(v139, v292, type metadata accessor for TimeBasedKey);

  v141 = v294;
  sub_10062CC64(v140, v294, type metadata accessor for TimeBasedKey);
  isa_low = SLODWORD(v127[4].isa);
  sub_10001F280(&v347, &v344);
  v143 = v302;
  sub_10062CD24(v141, v302, type metadata accessor for TimeBasedKey);
  v144 = v303;
  sub_10062CD24(v141, v303, type metadata accessor for TimeBasedKey);
  v304 = isa_low;
  v145 = Logger.logObject.getter();
  v146 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v301 = v94;
    v354 = v148;
    *v147 = 141559043;
    *(v147 + 4) = 1752392040;
    *(v147 + 12) = 2081;
    v333 = v145;
    LODWORD(v330) = v146;
    v149 = v345;
    v150 = v346;
    sub_1000035D0(&v344, v345);
    v151 = v317;
    (*(*(*(v150 + 8) + 8) + 32))(v149);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v152 = dispatch thunk of CustomStringConvertible.description.getter();
    v154 = v153;
    v155 = v151;
    v156 = v314;
    v301(v155, v133);
    sub_100007BAC(&v344);
    v157 = sub_1000136BC(v152, v154, &v354);

    *(v147 + 14) = v157;
    *(v147 + 22) = 2160;
    *(v147 + 24) = 1752392040;
    *(v147 + 32) = 2081;
    v158 = PublicKey.advertisement.getter(*(v143 + *(v156 + 6) + 16), *(v143 + *(v156 + 6) + 24));
    v160 = v159;
    sub_100017D5C(v158, v159);
    v161 = static MACAddress.length.getter();
    sub_10002EA98(v161, v158, v160, &v341);
    sub_100016590(v158, v160);
    v162 = v341;
    v163 = Data.hexString.getter();
    v165 = v164;
    sub_100016590(v162, *(&v162 + 1));
    v166 = v143;
    v167 = v156;
    sub_10062CBB8(v166, type metadata accessor for TimeBasedKey);
    v168 = sub_1000136BC(v163, v165, &v354);
    v133 = v332;

    *(v147 + 34) = v168;
    *(v147 + 42) = 2082;
    *&v341 = 0;
    *(&v341 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *&v341 = 0xD000000000000015;
    *(&v341 + 1) = 0x800000010135B6B0;
    v340 = *v144;
    v169._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v169);

    v170._object = 0x800000010135B6D0;
    v170._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v170);
    v171 = *(v156 + 5);
    type metadata accessor for DateInterval();
    sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval);
    v172._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v172);

    v174 = *(&v341 + 1);
    v173 = v341;
    sub_10062CBB8(v144, type metadata accessor for TimeBasedKey);
    v175 = sub_1000136BC(v173, v174, &v354);

    *(v147 + 44) = v175;
    v176 = v333;
    _os_log_impl(&_mh_execute_header, v333, v330, "Using decryption key for beacon %{private,mask.hash}s,\nadvertisementAddress: %{private,mask.hash}s,\n%{public}s.", v147, 0x34u);
    swift_arrayDestroy();
    v94 = v301;

    v177 = v331;
  }

  else
  {

    sub_10062CBB8(v144, type metadata accessor for TimeBasedKey);
    sub_100007BAC(&v344);
    sub_10062CBB8(v143, type metadata accessor for TimeBasedKey);
    v177 = v331;
    v167 = v314;
  }

  v178 = v348;
  v179 = v349;
  sub_1000035D0(&v347, v348);
  KeyPath = v324;
  (*(*(*(v179 + 8) + 8) + 32))(v178);
  *&v344 = _swiftEmptyArrayStorage;
  v180 = v294;
  v181 = &v294[*(v167 + 6)];
  v182 = *(v181 + 5);
  v183 = v305;
  if (v182 >> 60 == 15)
  {
    sub_10062B0D0();
    v184 = swift_allocError();
    *v185 = 0;
    swift_willThrow();
    goto LABEL_46;
  }

  v186 = *(v181 + 4);
  sub_100017D5C(v186, *(v181 + 5));
  v187 = v287;
  v188 = sub_100496ABC();
  v184 = v187;
  if (v187)
  {
    sub_100006654(v186, v182);
LABEL_46:
    v94(KeyPath, v133);
    sub_10001F280(&v347, &v344);
    v189 = v300;
    sub_10062CD24(v180, v300, type metadata accessor for TimeBasedKey);
    sub_10062CD24(v180, v183, type metadata accessor for TimeBasedKey);
    swift_errorRetain();
    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v335 = swift_slowAlloc();
      v354 = v335;
      *v192 = 141559299;
      *(v192 + 4) = 1752392040;
      *(v192 + 12) = 2081;
      v333 = 0;
      v331 = v190;
      v194 = v345;
      v193 = v346;
      sub_1000035D0(&v344, v345);
      v195 = *(*(*(v193 + 8) + 8) + 32);
      LODWORD(v330) = v191;
      v196 = v317;
      v195(v194);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v197 = dispatch thunk of CustomStringConvertible.description.getter();
      v199 = v198;
      v94(v196, v133);
      sub_100007BAC(&v344);
      v200 = sub_1000136BC(v197, v199, &v354);

      *(v192 + 14) = v200;
      *(v192 + 22) = 2160;
      *(v192 + 24) = 1752392040;
      *(v192 + 32) = 2081;
      v201 = v314;
      v202 = PublicKey.advertisement.getter(*(v189 + *(v314 + 6) + 16), *(v189 + *(v314 + 6) + 24));
      v204 = v203;
      sub_100017D5C(v202, v203);
      v205 = static MACAddress.length.getter();
      sub_10002EA98(v205, v202, v204, &v341);
      sub_100016590(v202, v204);
      v206 = v341;
      v207 = Data.hexString.getter();
      v209 = v208;
      sub_100016590(v206, *(&v206 + 1));
      sub_10062CBB8(v189, type metadata accessor for TimeBasedKey);
      v210 = sub_1000136BC(v207, v209, &v354);

      *(v192 + 34) = v210;
      *(v192 + 42) = 2082;
      *&v341 = 0;
      *(&v341 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      *&v341 = 0xD000000000000015;
      *(&v341 + 1) = 0x800000010135B6B0;
      v211 = v305;
      v340 = *v305;
      v212._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v212);

      v213._object = 0x800000010135B6D0;
      v213._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v213);
      v214 = *(v201 + 5);
      type metadata accessor for DateInterval();
      sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval);
      v215._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v215);

      v216 = v341;
      sub_10062CBB8(v211, type metadata accessor for TimeBasedKey);
      v217 = sub_1000136BC(v216, *(&v216 + 1), &v354);

      *(v192 + 44) = v217;
      *(v192 + 52) = 2082;
      *&v341 = v184;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v218 = String.init<A>(describing:)();
      v220 = sub_1000136BC(v218, v219, &v354);

      *(v192 + 54) = v220;
      v221 = v331;
      _os_log_impl(&_mh_execute_header, v331, v330, "Error decrypting location for beacon: %{private,mask.hash}s,\nadvertisementAddress: %{private,mask.hash}s,\n%{public}s,\n%{public}s.", v192, 0x3Eu);
      swift_arrayDestroy();

      sub_100016590(v288, v291);

      sub_10062CBB8(v294, type metadata accessor for TimeBasedKey);
      sub_10000B3A8(v334, &qword_1016A5930, &qword_1013B33D0);
    }

    else
    {
      sub_100016590(v288, v291);

      sub_10062CBB8(v305, type metadata accessor for TimeBasedKey);
      sub_10062CBB8(v180, type metadata accessor for TimeBasedKey);
      sub_10000B3A8(v334, &qword_1016A5930, &qword_1013B33D0);
      sub_100007BAC(&v344);
      sub_10062CBB8(v189, type metadata accessor for TimeBasedKey);
    }

LABEL_79:
    sub_100007BAC(&v347);
    return;
  }

  v330 = v186;
  v329 = v182;
  v301 = v94;
  v333 = 0;
  v91 = v293[2];
  v222 = *(v91 + 16);
  if (!v222)
  {
    v85 = v188;
LABEL_56:
    v228 = v332;
    v301(v324, v332);

    sub_100006654(v330, v329);
    v230 = *(v344 + 16);
    v293 = v344;
    if (v230)
    {
      v231 = *(v296 + 80);
      v303 = ~v231;
      v232 = v344 + ((v231 + 32) & ~v231);
      v324 = *(v296 + 72);
      v323 = (v310 + 48);
      v302 = v322 + 16;
      v300 = v297 + 7;
      v305 = v231;
      v297 = (v295 + v231);
      v296 = v322 + 32;
      *&v229 = 141558275;
      v295 = v229;
      v233 = isa;
      v234 = v321;
      v235 = v315;
      v236 = v320;
      v237 = v317;
      do
      {
        v330 = v230;
        v329 = v232;
        sub_10062CD24(v232, v177, type metadata accessor for RawSearchResult);
        sub_1000D2A70(v177 + *(v236 + 44), v235, &unk_1016C1120, &qword_1013C49D0);
        if ((*v323)(v235, 1, v327) == 1)
        {
          sub_10000B3A8(v235, &unk_1016C1120, &qword_1013C49D0);
          sub_10001F280(&v347, &v344);
          v238 = Logger.logObject.getter();
          v239 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            v241 = swift_slowAlloc();
            *&v341 = v241;
            *v240 = v295;
            *(v240 + 4) = 1752392040;
            *(v240 + 12) = 2081;
            v243 = v345;
            v242 = v346;
            sub_1000035D0(&v344, v345);
            (*(*(*(v242 + 8) + 8) + 32))(v243);
            sub_100009774(&qword_101696930, &type metadata accessor for UUID);
            v244 = dispatch thunk of CustomStringConvertible.description.getter();
            v246 = v245;
            v301(v237, v332);
            sub_100007BAC(&v344);
            v247 = sub_1000136BC(v244, v246, &v341);

            *(v240 + 14) = v247;
            _os_log_impl(&_mh_execute_header, v238, v239, "No index information for: %{private,mask.hash}s.", v240, 0x16u);
            sub_100007BAC(v241);
            v233 = isa;
            v228 = v332;

            v235 = v315;

            v177 = v331;
            sub_10062CBB8(v331, type metadata accessor for RawSearchResult);
          }

          else
          {

            v177 = v331;
            sub_10062CBB8(v331, type metadata accessor for RawSearchResult);
            sub_100007BAC(&v344);
          }

          v234 = v321;
          v236 = v320;
        }

        else
        {
          v314 = type metadata accessor for BeaconKeyManager.IndexInformation;
          v248 = v319;
          sub_10062CC64(v235, v319, type metadata accessor for BeaconKeyManager.IndexInformation);
          v249 = *(v236 + 20);
          v312 = type metadata accessor for TaskPriority();
          v311 = *(v312 - 1);
          (*(v311 + 56))(v325, 1, 1, v312);
          sub_10062CD24(v335, v234, type metadata accessor for LocationFetcher);
          sub_10001F280(&v347, &v344);
          sub_10062CD24(v248, v326, type metadata accessor for BeaconKeyManager.IndexInformation);
          v250 = v322;
          (*(v322 + 16))(v318, v177 + v249, v328);
          v251 = v307;
          sub_10062CD24(v177, v307, type metadata accessor for RawSearchResult);
          v252 = (*(v233 + 80) + 32) & ~*(v233 + 80);
          v253 = &v300[v252] & 0xFFFFFFFFFFFFFFF8;
          v254 = (*(v310 + 80) + v253 + 40) & ~*(v310 + 80);
          v255 = v234;
          v256 = (v306 + *(v250 + 80) + v254) & ~*(v250 + 80);
          v257 = &v297[v256] & v303;
          v258 = swift_allocObject();
          *(v258 + 16) = 0;
          *(v258 + 24) = 0;
          sub_10062CC64(v255, v258 + v252, type metadata accessor for LocationFetcher);
          sub_10000A748(&v344, v258 + v253);
          v259 = v258 + v254;
          v260 = v311;
          sub_10062CC64(v326, v259, v314);
          (*(v250 + 32))(v258 + v256, v318, v328);
          v261 = v251;
          v262 = v312;
          sub_10062CC64(v261, v258 + v257, type metadata accessor for RawSearchResult);
          v263 = v309;
          sub_1000D2A70(v325, v309, &qword_101698C00, &qword_10138B570);
          v264 = (*(v260 + 48))(v263, 1, v262);

          if (v264 == 1)
          {
            sub_10000B3A8(v263, &qword_101698C00, &qword_10138B570);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v260 + 8))(v263, v262);
          }

          v266 = *(v258 + 16);
          v265 = *(v258 + 24);
          swift_unknownObjectRetain();

          v237 = v317;
          if (v266)
          {
            swift_getObjectType();
            v267 = dispatch thunk of Actor.unownedExecutor.getter();
            v269 = v268;
            swift_unknownObjectRelease();
          }

          else
          {
            v267 = 0;
            v269 = 0;
          }

          v228 = v332;
          v233 = isa;
          sub_10000B3A8(v325, &qword_101698C00, &qword_10138B570);
          v270 = swift_allocObject();
          *(v270 + 16) = &unk_1013B3408;
          *(v270 + 24) = v258;
          if (v269 | v267)
          {
            v337 = 0;
            v336 = 0;
            v338 = v267;
            v339 = v269;
          }

          v234 = v321;
          v236 = v320;
          swift_task_create();

          sub_10062CBB8(v319, type metadata accessor for BeaconKeyManager.IndexInformation);
          v177 = v331;
          sub_10062CBB8(v331, type metadata accessor for RawSearchResult);
          v235 = v315;
        }

        v232 = v329 + v324;
        v230 = v330 - 1;
      }

      while (v330 != 1);
    }

    else
    {
      v237 = v317;
    }

    v271 = v348;
    v272 = v349;
    sub_1000035D0(&v347, v348);
    v273 = v298;
    (*(*(*(v272 + 8) + 8) + 32))(v271);
    v274 = *v299;
    if (*(*v299 + 16) && (v275 = sub_1000210EC(v273), (v276 & 1) != 0))
    {
      v277 = *(*(v274 + 56) + 8 * v275);
    }

    else
    {
      v277 = &_swiftEmptySetSingleton;
    }

    v278 = v301;
    v301(v273, v228);
    *&v344 = v277;
    sub_1006254B4(v293);

    v279 = v348;
    v280 = v349;
    sub_1000035D0(&v347, v348);
    (*(*(*(v280 + 8) + 8) + 32))(v279);
    v281 = v344;
    v282 = v237;
    v283 = v299;
    v284 = *v299;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v341 = *v283;
    *v283 = 0x8000000000000000;
    sub_100FFC200(v281, v282, isUniquelyReferenced_nonNull_native);
    v278(v282, v228);
    *v283 = v341;
    sub_100016590(v288, v291);
    sub_10062CBB8(v294, type metadata accessor for TimeBasedKey);
    sub_10000B3A8(v334, &qword_1016A5930, &qword_1013B33D0);
    goto LABEL_79;
  }

  v85 = v188;
  v223 = 0;
  v224 = (v91 + 48);
  while (v223 < *(v91 + 16))
  {
    v225 = *(v224 - 2);
    KeyPath = *(v224 - 1);
    v226 = *v224 | (*(v224 + 4) << 32);
    sub_100017D5C(v225, KeyPath);
    v94 = objc_autoreleasePoolPush();
    v227 = v333;
    sub_1005F97BC(v85, v225, KeyPath, v226, v294, v335, v324, v290, v293, &v344);
    v333 = v227;
    if (v227)
    {
      goto LABEL_83;
    }

    ++v223;
    objc_autoreleasePoolPop(v94);
    sub_100016590(v225, KeyPath);
    v224 += 6;
    v177 = v331;
    if (v222 == v223)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_15:
  v96 = type metadata accessor for Logger();
  sub_1000076D4(v96, qword_10177BA08);
  v95 = v304;
  (v94)(v304, v330, v91);

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = v95;
    v100 = swift_slowAlloc();
    v331 = swift_slowAlloc();
    *&v344 = v331;
    *v100 = 136447491;
    *&v341 = *v85;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v101 = String.init<A>(describing:)();
    v103 = sub_1000136BC(v101, v102, &v344);

    *(v100 + 4) = v103;
    *(v100 + 12) = 2082;
    *(v100 + 14) = sub_1000136BC(0xD00000000000004BLL, 0x800000010135B660, &v344);
    *(v100 + 22) = 2160;
    *(v100 + 24) = 1752392040;
    *(v100 + 32) = 2081;
    v104 = UUID.uuidString.getter();
    v106 = v105;
    v107 = *v313;
    (*v313)(v99, v332);
    v108 = sub_1000136BC(v104, v106, &v344);

    *(v100 + 34) = v108;
    *(v100 + 42) = 2082;
    if (v290)
    {
      v109 = 0x61646E6F6365732ELL;
    }

    else
    {
      v109 = 0x7972616D6972702ELL;
    }

    if (v290)
    {
      v110 = 0xEA00000000007972;
    }

    else
    {
      v110 = 0xE800000000000000;
    }

    v111 = sub_1000136BC(v109, v110, &v344);

    *(v100 + 44) = v111;
    KeyPath = v288;
    *(v100 + 52) = 2048;
    *(v100 + 54) = v329;
    _os_log_impl(&_mh_execute_header, v97, v98, "%{public}s: %{public}s. Unable to obtain keys for beacon %{private,mask.hash}s, sequence %{public}s, index %llu", v100, 0x3Eu);
    swift_arrayDestroy();

    goto LABEL_30;
  }

LABEL_29:

  v107 = *v313;
  (*v313)(v95, v332);
LABEL_30:
  v118 = v334;
  v119 = v291;
  v120 = v328;
  v121 = v323;
  sub_100139CA0();
  v68 = swift_allocError();
  *v122 = 10;
  swift_willThrow();
  sub_100016590(KeyPath, v119);

  (*v289)(v121, v120);
  v107(v330, v332);
  sub_10000B3A8(v118, &qword_1016A5930, &qword_1013B33D0);

  sub_100007BAC(&v347);
LABEL_3:
  v69 = SLODWORD(v333[4].isa);
  swift_errorRetain();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v347 = v73;
    *v72 = 136446210;
    *&v344 = v68;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v74 = String.init<A>(describing:)();
    v76 = sub_1000136BC(v74, v75, &v347);

    *(v72 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v70, v71, "Error getting keys %{public}s.", v72, 0xCu);
    sub_100007BAC(v73);
  }

  else
  {
  }
}

uint64_t sub_1005EE304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = type metadata accessor for UUID();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v11 = *(v10 + 64) + 15;
  v8[23] = swift_task_alloc();
  v12 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v8[24] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005EE408, 0, 0);
}

uint64_t sub_1005EE408()
{
  v38 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  *(v0 + 232) = *(type metadata accessor for LocationFetcher() + 32);
  sub_10001F280(v3, v0 + 16);
  sub_10062CD24(v2, v1, type metadata accessor for BeaconKeyManager.IndexInformation);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v35 = *(v0 + 208);
    v36 = *(v0 + 192);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v7, v9);
    sub_100007BAC((v0 + 16));
    v16 = sub_1000136BC(v13, v15, &v37);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2082;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    v17._countAndFlagsBits = 123;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 47;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = *(v36 + 20);
    sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
    _print_unlocked<A, B>(_:_:)();
    v21._countAndFlagsBits = 125;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);
    sub_10062CBB8(v35, type metadata accessor for BeaconKeyManager.IndexInformation);
    v24 = sub_1000136BC(v22, v23, &v37);

    *(v10 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "Updating metadata for: %{private,mask.hash}s,indexInformation: %{public}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = *(v0 + 208);

    sub_10062CBB8(v25, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC((v0 + 16));
  }

  v26 = *(v0 + 160);
  v27 = (v26 + *(type metadata accessor for RawSearchResult() + 52));
  v28 = *v27;
  v29 = v27[1];
  v30 = swift_task_alloc();
  *(v0 + 216) = v30;
  *v30 = v0;
  v30[1] = sub_1005EE7E0;
  v32 = *(v0 + 144);
  v31 = *(v0 + 152);
  v33 = *(v0 + 136);

  return sub_1010B7D4C(v32, v31, v28 | (v29 << 8), v33);
}

uint64_t sub_1005EE7E0()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005EE930, 0, 0);
  }

  else
  {
    v5 = v3[25];
    v4 = v3[26];
    v6 = v3[23];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1005EE930()
{
  v36 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  sub_10001F280(*(v0 + 136), v0 + 56);
  sub_10062CD24(v3, v2, type metadata accessor for BeaconKeyManager.IndexInformation);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v34 = *(v0 + 224);
    v32 = *(v0 + 200);
    v33 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    sub_1000035D0((v0 + 56), v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v7 + 8))(v8, v9);
    sub_100007BAC((v0 + 56));
    v16 = sub_1000136BC(v13, v15, &v35);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2082;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0xE000000000000000;
    v17._countAndFlagsBits = 123;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 47;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = *(v33 + 20);
    sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
    _print_unlocked<A, B>(_:_:)();
    v21._countAndFlagsBits = 125;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = *(v0 + 96);
    v23 = *(v0 + 104);
    sub_10062CBB8(v32, type metadata accessor for BeaconKeyManager.IndexInformation);
    v24 = sub_1000136BC(v22, v23, &v35);

    *(v10 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update metadata for: %{private,mask.hash}s,indexInformation: %{public}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = *(v0 + 224);
    v26 = *(v0 + 200);

    sub_10062CBB8(v26, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC((v0 + 56));
  }

  v28 = *(v0 + 200);
  v27 = *(v0 + 208);
  v29 = *(v0 + 184);

  v30 = *(v0 + 8);

  return v30();
}

unsigned int (*sub_1005EECCC(uint64_t a1, uint64_t a2))(char *, uint64_t, NSObject *)
{
  v420 = a1;
  v3 = type metadata accessor for LocationFetcher();
  v396 = *(v3 - 8);
  v4 = *(v396 + 64);
  __chkstk_darwin(v3);
  v395 = v5;
  v417 = &v364 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v423 = &v364 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v422 = &v364 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v364 - v14;
  v16 = __chkstk_darwin(v13);
  v397 = &v364 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v364 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v364 - v22;
  v24 = __chkstk_darwin(v21);
  v389 = &v364 - v25;
  v26 = __chkstk_darwin(v24);
  v381 = (&v364 - v27);
  v28 = __chkstk_darwin(v26);
  v384 = (&v364 - v29);
  v394 = v30;
  __chkstk_darwin(v28);
  v372 = &v364 - v31;
  v32 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v387 = &v364 - v34;
  v388 = type metadata accessor for DirectorySequence();
  v386 = *(v388 - 8);
  v35 = *(v386 + 64);
  __chkstk_darwin(v388);
  v401 = &v364 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413 = type metadata accessor for URL();
  isa = v413[-1].isa;
  v37 = *(isa + 8);
  v38 = __chkstk_darwin(v413);
  v380 = &v364 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v406 = &v364 - v40;
  v41 = sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v385 = &v364 - v43;
  v402 = type metadata accessor for BeaconEstimatedLocation();
  v414 = *(v402 - 8);
  v44 = *(v414 + 64);
  v45 = __chkstk_darwin(v402);
  v393 = &v364 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v416 = &v364 - v48;
  v49 = __chkstk_darwin(v47);
  v405 = &v364 - v50;
  v51 = __chkstk_darwin(v49);
  v404 = &v364 - v52;
  v53 = __chkstk_darwin(v51);
  v403 = &v364 - v54;
  v55 = __chkstk_darwin(v53);
  v392 = &v364 - v56;
  v57 = __chkstk_darwin(v55);
  v399 = &v364 - v58;
  v59 = __chkstk_darwin(v57);
  v419 = (&v364 - v60);
  v61 = __chkstk_darwin(v59);
  *&v379 = &v364 - v62;
  v63 = __chkstk_darwin(v61);
  v408 = &v364 - v64;
  v65 = __chkstk_darwin(v63);
  v410 = (&v364 - v66);
  *&v383 = v67;
  __chkstk_darwin(v65);
  v382 = &v364 - v68;
  v418 = type metadata accessor for Date();
  v421 = *(v418 - 8);
  v69 = *(v421 + 64);
  __chkstk_darwin(v418);
  v425 = (&v364 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v72 = *(*(v71 - 8) + 64);
  v73 = __chkstk_darwin(v71 - 8);
  v75 = &v364 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v400 = &v364 - v76;
  v378 = type metadata accessor for RawSearchResult();
  v77 = *(*(v378 - 8) + 64);
  v78 = __chkstk_darwin(v378);
  v375 = &v364 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v78);
  v374 = &v364 - v81;
  v82 = __chkstk_darwin(v80);
  v83 = __chkstk_darwin(v82);
  v85 = (&v364 - v84);
  __chkstk_darwin(v83);
  v89 = &v364 - v86;
  v376 = *(a2 + 16);
  if (!v376)
  {
    v98 = *(v3 + 32);
    v99 = v423;
    (*(v7 + 16))(v423, v420, v6);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v434 = v103;
      *v102 = 141558275;
      *(v102 + 4) = 1752392040;
      *(v102 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v105;
      (*(v7 + 8))(v99, v6);
      v107 = sub_1000136BC(v104, v106, &v434);

      *(v102 + 14) = v107;
      _os_log_impl(&_mh_execute_header, v100, v101, "Did not find a location for beacon %{private,mask.hash}s.", v102, 0x16u);
      sub_100007BAC(v103);
    }

    else
    {

      (*(v7 + 8))(v99, v6);
    }

    return _swiftEmptyArrayStorage;
  }

  v390 = v3;
  v369 = v15;
  v368 = v87;
  v415 = v23;
  v423 = v88;
  v90 = (v88[80] + 32) & ~v88[80];
  v398 = a2;
  v367 = v90;
  v373 = a2 + v90;
  sub_10062CD24(a2 + v90, &v364 - v86, type metadata accessor for RawSearchResult);
  v91 = *v424;
  v92 = v420;
  sub_100025020(v420, &v431);
  if (!v432)
  {
    sub_10000B3A8(&v431, &qword_101696920, &unk_10138B200);
    v108 = *(v390 + 32);
    v109 = v422;
    (*(v7 + 16))(v422, v92, v6);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v434 = v113;
      *v112 = 141558275;
      *(v112 + 4) = 1752392040;
      *(v112 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v114 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v115;
      (*(v7 + 8))(v109, v6);
      v117 = sub_1000136BC(v114, v116, &v434);

      *(v112 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v110, v111, "saveLocation could not find beacon record for %{private,mask.hash}s.", v112, 0x16u);
      sub_100007BAC(v113);
    }

    else
    {

      (*(v7 + 8))(v109, v6);
    }

    sub_10062CBB8(v89, type metadata accessor for RawSearchResult);
    return _swiftEmptyArrayStorage;
  }

  v391 = v91;
  v411 = v20;
  sub_10000A748(&v431, &v434);
  v366 = *v89;
  v93 = (v366 >> 4) & 3;
  v409 = v6;
  v377 = v7;
  v371 = v89;
  v365 = v93;
  if (v93)
  {
    v94 = v435;
    v95 = v436;
    sub_1000035D0(&v434, v435);
    v96 = v418;
    if (v93 == 1)
    {
      v97 = (*(v95 + 96))(v94, v95);
    }

    else
    {
      v97 = (*(v95 + 104))(v94, v95);
    }

    v370 = v97;
  }

  else
  {
    v118 = v435;
    v119 = v436;
    sub_1000035D0(&v434, v435);
    v370 = (*(v119 + 88))(v118, v119);
    v96 = v418;
  }

  v120 = *(v378 + 40);
  v121 = (v421 + 48);
  v122 = _swiftEmptyArrayStorage;
  v423 = *(v423 + 9);
  v123 = &unk_101696900;
  v422 = (v421 + 32);
  v124 = v373;
  v125 = v376;
  v412 = v85;
  do
  {
    sub_10062CD24(v124, v85, type metadata accessor for RawSearchResult);
    sub_1000D2A70(v85 + v120, v75, v123, &unk_10138B1E0);
    sub_10062CBB8(v85, type metadata accessor for RawSearchResult);
    if ((*v121)(v75, 1, v96) == 1)
    {
      sub_10000B3A8(v75, v123, &unk_10138B1E0);
    }

    else
    {
      v126 = v123;
      v127 = v120;
      v128 = *v422;
      (*v422)(v425, v75, v96);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = sub_100A5B6F8(0, v122[2] + 1, 1, v122);
      }

      v130 = v122[2];
      v129 = v122[3];
      if (v130 >= v129 >> 1)
      {
        v122 = sub_100A5B6F8(v129 > 1, v130 + 1, 1, v122);
      }

      v122[2] = v130 + 1;
      v131 = v122 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v130;
      v96 = v418;
      v128(v131, v425, v418);
      v120 = v127;
      v123 = v126;
      v85 = v412;
    }

    v124 += v423;
    --v125;
  }

  while (v125);
  sub_1012BAD7C(v122, v400);

  v132 = v424[6];
  v133 = v424[7];
  sub_1000035D0(v424 + 3, v132);
  if (((*(v133 + 24))(v132, v133) & 1) == 0)
  {
    v143 = sub_10039CD9C(v398);
    if (v371[*(v378 + 36)] == 15)
    {
      v144 = 15;
    }

    else
    {
      v144 = 7;
    }

    LODWORD(v401) = v144;

    v135 = 0;
    v145 = v409;
    goto LABEL_56;
  }

  v134 = *(v391 + 168);
  v135 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v136 = v413;
    sub_1000076D4(v413, qword_10177BF38);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    objc_autoreleasePoolPop(v135);
    *&v431 = _swiftEmptyArrayStorage;
    v427 = _swiftEmptyArrayStorage;
    v137 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v138 = v387;
    DirectorySequence.next()();
    v139 = v136;
    v140 = isa;
    v141 = *(isa + 6);
    if ((v141)(v138, 1, v136) == 1)
    {
      v135 = 0;
      v142 = v401;
    }

    else
    {
      v425 = v141;
      v135 = 0;
      v146 = *(v140 + 4);
      v147 = v134;
      v142 = v401;
      v148 = v380;
      do
      {
        v146(v148, v138, v139);
        v149 = objc_autoreleasePoolPush();
        sub_1006011CC(v148, v147, &v431, &v427);
        objc_autoreleasePoolPop(v149);
        (*(v140 + 1))(v148, v413);
        DirectorySequence.next()();
        v139 = v413;
      }

      while ((v425)(v138, 1, v413) != 1);
    }

    (*(v386 + 8))(v142, v388);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v150 = v139;
    v151 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_10138BBE0;
    v153 = v431;
    v154 = *(v431 + 16);
    *(v152 + 56) = &type metadata for Int;
    *(v152 + 64) = &protocol witness table for Int;
    *(v152 + 32) = v154;
    sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);

    v155 = v406;
    v156 = dispatch thunk of CustomStringConvertible.description.getter();
    v158 = v157;
    *(v152 + 96) = &type metadata for String;
    *(v152 + 104) = sub_100008C00();
    *(v152 + 72) = v156;
    *(v152 + 80) = v158;
    os_log(_:dso:log:_:_:)();

    (*(isa + 1))(v155, v150);

    v159 = *(v153 + 16);
    if (v159)
    {
      v160 = 0;
      v134 = _swiftEmptyArrayStorage;
      v161 = v402;
      v162 = v408;
      while (v160 < *(v153 + 16))
      {
        v163 = (*(v414 + 80) + 32) & ~*(v414 + 80);
        v164 = *(v414 + 72);
        v165 = v410;
        sub_10062CD24(v153 + v163 + v164 * v160, v410, type metadata accessor for BeaconEstimatedLocation);
        if (*(v165 + *(v161 + 44)) == 8)
        {
          sub_10062CC64(v165, v162, type metadata accessor for BeaconEstimatedLocation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v431 = v134;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124A24(0, *(v134 + 16) + 1, 1);
            v162 = v408;
            v134 = v431;
          }

          v168 = *(v134 + 16);
          v167 = *(v134 + 24);
          if (v168 >= v167 >> 1)
          {
            sub_101124A24(v167 > 1, v168 + 1, 1);
            v162 = v408;
            v134 = v431;
          }

          *(v134 + 16) = v168 + 1;
          sub_10062CC64(v162, v134 + v163 + v168 * v164, type metadata accessor for BeaconEstimatedLocation);
          v161 = v402;
        }

        else
        {
          sub_10062CBB8(v165, type metadata accessor for BeaconEstimatedLocation);
        }

        ++v160;
        v145 = v409;
        if (v159 == v160)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_123;
    }

    v134 = _swiftEmptyArrayStorage;
    v161 = v402;
    v145 = v409;
LABEL_47:

    v169 = v385;
    sub_1012BAB18(v134, v385);

    if ((*(v414 + 48))(v169, 1, v161) == 1)
    {
      sub_10000B3A8(v169, &unk_101696940, &unk_10138B210);
      v143 = sub_10039CD9C(v398);
    }

    else
    {
      v170 = v382;
      v171 = sub_10062CC64(v169, v382, type metadata accessor for BeaconEstimatedLocation);
      __chkstk_darwin(v171);
      *(&v364 - 2) = v170;
      v172 = v398;

      v173 = sub_10013D8C0(sub_10062AC58, (&v364 - 4), v172);
      v174 = v390;
      if (!*(v173 + 16))
      {

        v335 = *(v174 + 32);
        v336 = v377;
        v337 = v372;
        (*(v377 + 16))(v372, v420, v145);
        v338 = Logger.logObject.getter();
        v339 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v338, v339))
        {
          v340 = swift_slowAlloc();
          v341 = swift_slowAlloc();
          *&v431 = v341;
          *v340 = 141558275;
          *(v340 + 4) = 1752392040;
          *(v340 + 12) = 2081;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID);
          v342 = dispatch thunk of CustomStringConvertible.description.getter();
          v343 = v337;
          v345 = v344;
          (*(v336 + 8))(v343, v145);
          v346 = sub_1000136BC(v342, v345, &v431);

          *(v340 + 14) = v346;
          _os_log_impl(&_mh_execute_header, v338, v339, "No new location for beacon %{private,mask.hash}s.", v340, 0x16u);
          sub_100007BAC(v341);
        }

        else
        {

          (*(v336 + 8))(v337, v145);
        }

        sub_10000B3A8(v400, &unk_101696900, &unk_10138B1E0);
        sub_10062CBB8(v371, type metadata accessor for RawSearchResult);
        v331 = type metadata accessor for BeaconEstimatedLocation;
        v332 = &v413;
        goto LABEL_114;
      }

      v143 = sub_10039CD9C(v173);

      v175 = v379;
      sub_10062CD24(v170, v379, type metadata accessor for BeaconEstimatedLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = sub_100A5D484(0, v143[2] + 1, 1, v143);
      }

      v177 = v143[2];
      v176 = v143[3];
      if (v177 >= v176 >> 1)
      {
        v143 = sub_100A5D484((v176 > 1), v177 + 1, 1, v143);
      }

      v432 = v161;
      v433 = &off_10161A418;
      v178 = sub_1000280DC(&v431);
      sub_10062CD24(v175, v178, type metadata accessor for BeaconEstimatedLocation);
      v143[2] = v177 + 1;
      sub_10000A748(&v431, &v143[5 * v177 + 4]);
      sub_10062CBB8(v175, type metadata accessor for BeaconEstimatedLocation);

      sub_10062CBB8(v170, type metadata accessor for BeaconEstimatedLocation);
    }

    LODWORD(v401) = 8;
LABEL_56:
    v179 = v391;
    sub_100AC26E0(&v434);
    v181 = v180;
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v182 = v377;
    v183 = *(v377 + 80);
    v184 = (v183 + 32) & ~v183;
    v421 = *(v377 + 72);
    v388 = v183;
    v185 = swift_allocObject();
    *(v185 + 16) = xmmword_101385D80;
    v186 = *(v182 + 16);
    v187 = v420;
    (v186)(v185 + v184, v420, v145);
    v430 = v185;
    v422 = (v182 + 16);
    v406 = v186;
    if (v370)
    {
      v188 = sub_10001993C(v366 & 0xB);
      v189 = (v188 >> 8) & 1;
      v190 = HIWORD(v188) & 1;
      v191 = HIBYTE(v188) & 1;
      v192 = v435;
      v193 = v436;
      v194 = sub_1000035D0(&v434, v435);
      v195 = sub_100B0D624(v194, v189, v190, v191, v179, v192, v193);
      v196 = v195[2].isa;
      if (v196)
      {
        v425 = v143;
        v427 = _swiftEmptyArrayStorage;
        sub_101123D4C(0, v196, 0);
        v134 = v427;
        v413 = v195;
        v197 = &v195[4];
        v198 = (v377 + 32);
        v199 = v381;
        do
        {
          sub_10001F280(v197, &v431);
          v201 = v432;
          v200 = v433;
          sub_1000035D0(&v431, v432);
          (*(*(v200[1] + 1) + 32))(v201);
          sub_100007BAC(&v431);
          v427 = v134;
          v203 = *(v134 + 16);
          v202 = *(v134 + 24);
          if (v203 >= v202 >> 1)
          {
            sub_101123D4C(v202 > 1, v203 + 1, 1);
            v134 = v427;
          }

          *(v134 + 16) = v203 + 1;
          (*v198)((v134 + v184 + v203 * v421), v199, v409);
          v197 += 40;
          --v196;
        }

        while (v196);

        v145 = v409;
        v143 = v425;
      }

      else
      {

        v134 = _swiftEmptyArrayStorage;
      }

      sub_100398278(v205);
      v206 = *(v134 + 16);
      v207 = v384;
      if (v206)
      {
        v208 = 0;
        v209 = (v134 + v184);
        v210 = (v377 + 8);
        while (v208 < *(v134 + 16))
        {
          (v406)(v207, v209, v145);
          sub_1005F2DF4(v207, v424, v420);
          ++v208;
          (*v210)(v207, v145);
          v209 += v421;
          if (v206 == v208)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_124;
      }

LABEL_69:

      v187 = v420;
      v204 = v390;
      v186 = v406;
    }

    else
    {
      v204 = v390;
    }

    v211 = v424 + *(v204 + 32);
    v212 = v389;
    (v186)(v389, v187, v145);
    sub_10001F280(&v434, &v431);
    v390 = v211;
    v213 = Logger.logObject.getter();
    v214 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v427 = v216;
      *v215 = 141558787;
      *(v215 + 4) = 1752392040;
      *(v215 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v217 = dispatch thunk of CustomStringConvertible.description.getter();
      v219 = v218;
      v412 = *(v377 + 8);
      (v412)(v212, v409);
      v220 = sub_1000136BC(v217, v219, &v427);

      *(v215 + 14) = v220;
      *(v215 + 22) = 2050;
      v221 = v432;
      v222 = v433;
      sub_1000035D0(&v431, v432);
      v223 = sub_1010C96DC(v221, v222);
      sub_100007BAC(&v431);
      *(v215 + 24) = v223;
      *(v215 + 32) = 2050;
      *(v215 + 34) = v181;
      _os_log_impl(&_mh_execute_header, v213, v214, "reductiveFiltering: applyFilterOnSingleTruthLocation, beacon: %{private,mask.hash}s, type: %{public}lu, transmitPower: %{public}f.", v215, 0x2Au);
      sub_100007BAC(v216);
      v224 = v409;
    }

    else
    {
      sub_100007BAC(&v431);

      v224 = v145;
      v412 = *(v377 + 8);
      (v412)(v212, v145);
    }

    v225 = v399;
    v226 = v419;
    v227 = v435;
    v228 = v436;
    sub_1000035D0(&v434, v435);
    v229 = sub_1010C96DC(v227, v228);
    v230 = sub_1010CBE04(v143, v229, v181);

    v389 = v230;
    if (!v230)
    {

      v310 = v369;
      (v406)(v369, v420, v224);
      v311 = Logger.logObject.getter();
      v312 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v311, v312))
      {
        v313 = swift_slowAlloc();
        v314 = swift_slowAlloc();
        *&v431 = v314;
        *v313 = 141558275;
        *(v313 + 4) = 1752392040;
        *(v313 + 12) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID);
        v315 = dispatch thunk of CustomStringConvertible.description.getter();
        v317 = v316;
        (v412)(v310, v224);
        v318 = sub_1000136BC(v315, v317, &v431);

        *(v313 + 14) = v318;
        _os_log_impl(&_mh_execute_header, v311, v312, "CLReductiveFilterSuite.triangulate returned no location for beacon %{private,mask.hash}s.", v313, 0x16u);
        sub_100007BAC(v314);
      }

      else
      {

        (v412)(v310, v224);
      }

      sub_10000B3A8(v400, &unk_101696900, &unk_10138B1E0);
      v331 = type metadata accessor for RawSearchResult;
      v332 = &v400;
LABEL_114:
      sub_10062CBB8(*(v332 - 32), v331);
      sub_100007BAC(&v434);
      return _swiftEmptyArrayStorage;
    }

    *&v431 = v143;

    sub_1005FBC7C(&v431);
    v134 = v431;
    v231 = *(v431 + 16);
    if (v231)
    {
      v232 = 0;
      v233 = v431 + 32;
      while (v232 < *(v134 + 16))
      {
        sub_10001F280(v233, &v431);
        sub_1005F3128(&v431, v424, v420);
        ++v232;
        sub_100007BAC(&v431);
        v233 += 40;
        if (v231 == v232)
        {
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

LABEL_78:

    v413 = dispatch_group_create();
    v234 = *(v430 + 2);
    if (v234)
    {
      v386 = ~v388;
      v387 = v430;
      v235 = &v430[v184];
      v410 = (v377 + 8);
      v385 = v383 + v388;
      v425 = _swiftEmptyArrayStorage;
      v384 = (v377 + 32);
      *(&v236 + 1) = 0xC000000000000000;
      v383 = xmmword_10138C660;
      *&v236 = 141560323;
      v379 = v236;
      v237 = v415;
      v238 = v401;
      v239 = v406;
      v240 = v225;
      do
      {
        v408 = v234;
        isa = v235;
        v241 = v239;
        v239(v237);
        v242 = v402;
        v243 = v226 + *(v402 + 20);
        UUID.init()();
        (v239)(v226 + v242[6], v237, v224);
        v244 = v389;
        [v389 coordinate];
        v246 = v245;
        [v244 coordinate];
        v248 = v247;
        [v244 horizontalAccuracy];
        v250 = v249;
        v251 = [v244 timestamp];
        v252 = v226 + v242[10];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000D2A70(v400, v226 + v242[12], &unk_101696900, &unk_10138B1E0);
        *v226 = v383;
        *(v226 + v242[7]) = v246;
        *(v226 + v242[8]) = v248;
        *(v226 + v242[9]) = v250;
        *(v226 + v242[11]) = v238;
        *(v226 + v242[13]) = v398;
        sub_10062CD24(v226, v240, type metadata accessor for BeaconEstimatedLocation);
        v241(v411, v237, v224);
        v253 = v392;
        sub_10062CD24(v226, v392, type metadata accessor for BeaconEstimatedLocation);
        v254 = v403;
        sub_10062CD24(v226, v403, type metadata accessor for BeaconEstimatedLocation);
        v255 = v404;
        sub_10062CD24(v226, v404, type metadata accessor for BeaconEstimatedLocation);
        v256 = v405;
        sub_10062CD24(v226, v405, type metadata accessor for BeaconEstimatedLocation);
        v257 = v387;
        swift_bridgeObjectRetain_n();

        v258 = v224;
        v259 = Logger.logObject.getter();
        v260 = static os_log_type_t.default.getter();
        v261 = v260;
        if (os_log_type_enabled(v259, v260))
        {
          v262 = swift_slowAlloc();
          v381 = v259;
          v263 = v411;
          v264 = v253;
          v265 = v242;
          v266 = v262;
          v382 = swift_slowAlloc();
          *&v431 = v382;
          *v266 = v379;
          *(v266 + 4) = 1752392040;
          *(v266 + 12) = 2081;
          v267 = v258;
          v268 = v265[5];
          sub_100009774(&qword_101696930, &type metadata accessor for UUID);
          LODWORD(v380) = v261;
          v269 = dispatch thunk of CustomStringConvertible.description.getter();
          v270 = v240;
          v272 = v271;
          sub_10062CBB8(v270, type metadata accessor for BeaconEstimatedLocation);
          v273 = sub_1000136BC(v269, v272, &v431);

          *(v266 + 14) = v273;
          *(v266 + 22) = 2160;
          *(v266 + 24) = 1752392040;
          *(v266 + 32) = 2081;
          v274 = dispatch thunk of CustomStringConvertible.description.getter();
          v276 = v275;
          (v412)(v263, v267);
          v277 = sub_1000136BC(v274, v276, &v431);

          *(v266 + 34) = v277;
          *(v266 + 42) = 2048;
          v278 = *(v257 + 2);

          *(v266 + 44) = v278 - 1;

          *(v266 + 52) = 2049;
          v279 = *(v264 + v265[7]);
          sub_10062CBB8(v264, type metadata accessor for BeaconEstimatedLocation);
          *(v266 + 54) = v279;
          *(v266 + 62) = 2049;
          v280 = *(v403 + v265[8]);
          sub_10062CBB8(v403, type metadata accessor for BeaconEstimatedLocation);
          *(v266 + 64) = v280;
          *(v266 + 72) = 2048;
          v281 = *(v404 + v265[9]);
          sub_10062CBB8(v404, type metadata accessor for BeaconEstimatedLocation);
          *(v266 + 74) = v281;
          *(v266 + 82) = 2082;
          v282 = v265[10];
          v283 = v405;
          sub_100009774(&qword_1016969A0, &type metadata accessor for Date);
          v284 = dispatch thunk of CustomStringConvertible.description.getter();
          v286 = v285;
          sub_10062CBB8(v283, type metadata accessor for BeaconEstimatedLocation);
          v287 = sub_1000136BC(v284, v286, &v431);

          *(v266 + 84) = v287;
          *(v266 + 92) = 2080;
          v288 = sub_100013454(v401);
          v290 = sub_1000136BC(v288, v289, &v431);

          *(v266 + 94) = v290;
          v291 = v381;
          _os_log_impl(&_mh_execute_header, v381, v380, "△ Result LocationID: %{private,mask.hash}s, for Beacon: %{private,mask.hash}s, Peers: %ld, Location: lat: %{private}f, lon: %{private}f, accuracy: %f, timestamp: %{public}s, source: %s.", v266, 0x66u);
          swift_arrayDestroy();

          v224 = v267;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          sub_10062CBB8(v256, type metadata accessor for BeaconEstimatedLocation);
          sub_10062CBB8(v255, type metadata accessor for BeaconEstimatedLocation);
          sub_10062CBB8(v254, type metadata accessor for BeaconEstimatedLocation);
          sub_10062CBB8(v253, type metadata accessor for BeaconEstimatedLocation);
          (v412)(v411, v258);
          sub_10062CBB8(v240, type metadata accessor for BeaconEstimatedLocation);
          v224 = v258;
        }

        v292 = v419;
        sub_10062CD24(v419, v416, type metadata accessor for BeaconEstimatedLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v425 = sub_100A5D0A0(0, v425[2] + 1, 1, v425);
        }

        v294 = v425[2];
        v293 = v425[3];
        if (v294 >= v293 >> 1)
        {
          v425 = sub_100A5D0A0(v293 > 1, v294 + 1, 1, v425);
        }

        v295 = v425;
        v425[2] = v294 + 1;
        v296 = *(v414 + 80);
        v297 = v295 + ((v296 + 32) & ~v296) + *(v414 + 72) * v294;
        v412 = type metadata accessor for BeaconEstimatedLocation;
        sub_10062CC64(v416, v297, type metadata accessor for BeaconEstimatedLocation);
        dispatch_group_enter(v413);
        sub_10062CD24(v424, v417, type metadata accessor for LocationFetcher);
        v298 = v393;
        sub_10062CD24(v292, v393, type metadata accessor for BeaconEstimatedLocation);
        v299 = v397;
        v300 = v406;
        (v406)(v397, v415, v224);
        v301 = (*(v396 + 80) + 24) & ~*(v396 + 80);
        v302 = (v395 + v296 + v301) & ~v296;
        v303 = (v385 + v302) & v386;
        v304 = v303 + v394;
        v305 = swift_allocObject();
        v306 = v413;
        *(v305 + 16) = v413;
        sub_10062CC64(v417, v305 + v301, type metadata accessor for LocationFetcher);
        v307 = v298;
        v239 = v300;
        sub_10062CC64(v307, v305 + v302, v412);
        v308 = v299;
        v226 = v419;
        v237 = v415;
        (*v384)(v305 + v303, v308, v224);
        v238 = v401;
        *(v305 + v304) = v401;
        v309 = v306;
        sub_100A9DA2C(v226, sub_10062AAFC, v305);

        sub_10062CBB8(v226, type metadata accessor for BeaconEstimatedLocation);
        v412 = *v410;
        (v412)(v237, v224);
        v235 = (isa + v421);
        v234 = v408 - 1;
        v240 = v399;
      }

      while (v408 != 1);
    }

    else
    {

      v425 = _swiftEmptyArrayStorage;
    }

    OS_dispatch_group.wait()();
    v319 = v371;
    v320 = v378;
    v321 = v375;
    v322 = v374;
    v323 = v376;
    if ((v370 & 1) == 0)
    {
      break;
    }

    sub_10062CD24(v373, v374, type metadata accessor for RawSearchResult);
    if (v323 == 1)
    {
LABEL_94:
      v324 = v368;
      sub_10062CC64(v322, v368, type metadata accessor for RawSearchResult);
      sub_1005F443C(v420, v324);
      sub_10062CBB8(v324, type metadata accessor for RawSearchResult);

      sub_10000B3A8(v400, &unk_101696900, &unk_10138B1E0);
      v325 = v319;
      goto LABEL_119;
    }

    v134 = &v423[v367 + v398];
    v333 = 1;
    while (1)
    {
      v135 = (v333 + 1);
      if (__OFADD__(v333, 1))
      {
        break;
      }

      sub_10062CD24(v134, v321, type metadata accessor for RawSearchResult);
      v334 = *(v320 + 20);
      if (static Date.< infix(_:_:)())
      {
        sub_10062CBB8(v322, type metadata accessor for RawSearchResult);
        sub_10062CC64(v321, v322, type metadata accessor for RawSearchResult);
      }

      else
      {
        sub_10062CBB8(v321, type metadata accessor for RawSearchResult);
      }

      ++v333;
      v134 += v423;
      if (v135 == v323)
      {
        goto LABEL_94;
      }
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  sub_10001F280(&v434, &v431);
  sub_10001F280(&v434, &v427);
  v326 = Logger.logObject.getter();
  v327 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v326, v327))
  {
    v328 = swift_slowAlloc();
    v426 = swift_slowAlloc();
    *v328 = 16778499;
    *(v328 + 4) = v366;
    *(v328 + 5) = 2082;
    if (v365)
    {
      if (v365 == 1)
      {
        v329 = 0xE600000000000000;
        v330 = 0x6E6169727564;
      }

      else if (v365 == 3)
      {
        v329 = 0xE400000000000000;
        v330 = 1701602664;
      }

      else
      {
        v329 = 0xE700000000000000;
        v330 = 0x6579656B776168;
      }
    }

    else
    {
      v329 = 0xE500000000000000;
      v330 = 0x656C707061;
    }

    v347 = sub_1000136BC(v330, v329, &v426);

    *(v328 + 7) = v347;
    *(v328 + 15) = 2082;
    v348 = v432;
    v349 = v433;
    sub_1000035D0(&v431, v432);
    v350 = (v349[23])(v348, v349);
    v351 = SPBeaconType.description.getter(v350);
    v353 = v352;

    sub_100007BAC(&v431);
    v354 = sub_1000136BC(v351, v353, &v426);

    *(v328 + 17) = v354;
    *(v328 + 25) = 2160;
    *(v328 + 27) = 1752392040;
    *(v328 + 35) = 2081;
    v355 = v428;
    v356 = v429;
    sub_1000035D0(&v427, v428);
    v357 = v397;
    (*(*(*(v356 + 8) + 8) + 32))(v355);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v358 = v409;
    v359 = dispatch thunk of CustomStringConvertible.description.getter();
    v361 = v360;
    (v412)(v357, v358);
    sub_100007BAC(&v427);
    v362 = sub_1000136BC(v359, v361, &v426);

    *(v328 + 37) = v362;
    _os_log_impl(&_mh_execute_header, v326, v327, "Status byte was %hhu, type: %{public}s, but beacon is %{public}s %{private,mask.hash}s.", v328, 0x2Du);
    swift_arrayDestroy();

    sub_10000B3A8(v400, &unk_101696900, &unk_10138B1E0);
    v325 = v319;
LABEL_119:
    sub_10062CBB8(v325, type metadata accessor for RawSearchResult);
  }

  else
  {

    sub_10000B3A8(v400, &unk_101696900, &unk_10138B1E0);
    sub_10062CBB8(v319, type metadata accessor for RawSearchResult);
    sub_100007BAC(&v427);
    sub_100007BAC(&v431);
  }

  sub_100007BAC(&v434);
  return v425;
}

uint64_t sub_1005F1ECC(void **a1, uint64_t a2)
{
  v96 = a1;
  v106 = sub_1000BC4D4(&qword_1016A58A8, &unk_1013B32A8);
  v93[0] = *(v106 - 8);
  v3 = *(v93[0] + 64);
  __chkstk_darwin(v106);
  v105 = (v93 - v4);
  v110 = type metadata accessor for RawSearchResult();
  *&v102 = *(v110 - 8);
  v5 = *(v102 + 64);
  v6 = __chkstk_darwin(v110);
  v101 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = (v93 - v9);
  __chkstk_darwin(v8);
  v12 = (v93 - v11);
  v13 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v93 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = v22[8];
  __chkstk_darwin(v21);
  v25 = v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v20, &qword_1016A5890, &qword_1013B3290);
  v26 = *&v20[*(v14 + 56)];

  v107 = v25;
  v108 = v22;
  v27 = v22[4];
  v109 = v21;
  v103 = v27;
  v104 = v22 + 4;
  v27(v25, v20, v21);
  v28 = sub_1000D2A70(a2, v18, &qword_1016A5890, &qword_1013B3290);
  v29 = *(v14 + 56);
  v97 = v18;
  v30 = *&v18[v29];
  LOBYTE(v29) = v30[32];
  v31 = ((1 << v29) + 63) >> 6;
  if ((v29 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_2:
    v95 = v31;
    v94 = v93;
    __chkstk_darwin(v28);
    v99 = (v93 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v99, v32);
    v100 = 0;
    v33 = 0;
    v34 = 1 << v30[32];
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v30 + 7);
    v31 = (v34 + 63) >> 6;
    while (v36)
    {
      v37 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
LABEL_12:
      v40 = v37 | (v33 << 6);
      sub_10062CD24(*(v30 + 6) + *(v102 + 72) * v40, v12, type metadata accessor for RawSearchResult);
      v41 = *(v12 + *(v110 + 36));
      sub_10062CBB8(v12, type metadata accessor for RawSearchResult);
      if (v41 != 15)
      {
        *(v99 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(v99 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v40));
        v42 = __OFADD__(v100++, 1);
        if (v42)
        {
          __break(1u);
LABEL_16:
          v43 = sub_10060CDE4(v99, v95, v100, v30);
          goto LABEL_17;
        }
      }
    }

    v38 = v33;
    while (1)
    {
      v33 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v33 >= v31)
      {
        goto LABEL_16;
      }

      v39 = *&v30[8 * v33 + 56];
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v36 = (v39 - 1) & v39;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  v90 = swift_slowAlloc();
  v91 = v98;
  v92 = sub_10060AED4(v90, v31, v30, sub_1005F2AF0);
  v98 = v91;
  if (v91)
  {
    goto LABEL_67;
  }

  v43 = v92;

LABEL_17:
  v44 = v108[1];
  v95 = v108 + 1;
  v94 = v44;
  v44(v97, v109);
  v45 = *(v43 + 2);
  if (v45)
  {
    v46 = sub_1003A8808(*(v43 + 2), 0);
    v47 = sub_1003AA25C(&v111, v46 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v45, v43);

    sub_1000128F8();
    if (v47 == v45)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v46 = _swiftEmptyArrayStorage;
LABEL_21:
  v111 = v46;
  v48 = v98;
  sub_1005FBCE8(&v111);
  v93[1] = v48;
  if (v48)
  {

    __break(1u);
LABEL_67:

    __break(1u);
    return result;
  }

  v49 = v111[2];
  if (!v49)
  {
    sub_10001993C(0);

    v54 = _swiftEmptyArrayStorage;
    v73 = _swiftEmptyArrayStorage[2];
    if (!v73)
    {
      goto LABEL_55;
    }

    goto LABEL_45;
  }

  v50 = v102;
  v51 = *(v102 + 80);
  v99 = v111;
  v110 = (v51 + 32) & ~v51;
  v30 = v111 + v110;
  v52 = sub_10001993C(*(v111 + v110) & 0xB);
  v53 = *(v50 + 72);
  v54 = _swiftEmptyArrayStorage;
  v102 = xmmword_101385D80;
  v100 = v51;
  do
  {
    sub_10062CD24(v30, v10, type metadata accessor for RawSearchResult);
    v55 = *v10;
    if (v52 == sub_10001993C(*v10 & 0xB) && (v56 = v54[2]) != 0)
    {
      v57 = v54[v56 + 3];
      sub_10062CD24(v10, v101, type metadata accessor for RawSearchResult);

      v12 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_100A5D328(0, v57[2] + 1, 1, v57);
      }

      v59 = v57[2];
      v58 = v57[3];
      v31 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v57 = sub_100A5D328(v58 > 1, v59 + 1, 1, v57);
      }

      v57[2] = v31;
      sub_10062CC64(v101, v57 + v110 + v59 * v53, type metadata accessor for RawSearchResult);
      if (!v12[2])
      {
        goto LABEL_60;
      }

      v31 = v12;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v60 = v12[2];
        if (!v60)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v31 = sub_100607374(v12);
        v60 = *(v31 + 16);
        if (!v60)
        {
          goto LABEL_61;
        }
      }

      v61 = v60 - 1;
      v62 = *(v31 + 8 * v61 + 32);
      *(v31 + 16) = v61;

      v63 = v31;
      v64 = *(v31 + 16);
      v65 = v63;
      v66 = v63[3];
      if (v64 >= v66 >> 1)
      {
        v65 = sub_100A5D4CC((v66 > 1), v64 + 1, 1, v65);
      }

      sub_10062CBB8(v10, type metadata accessor for RawSearchResult);
      v65[2] = v64 + 1;
      v67 = &v65[v64];
      v54 = v65;
      v67[4] = v57;
    }

    else
    {
      sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
      v68 = v110;
      v69 = swift_allocObject();
      *(v69 + 16) = v102;
      sub_10062CD24(v10, v69 + v68, type metadata accessor for RawSearchResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_100A5D4CC(0, v54[2] + 1, 1, v54);
      }

      v71 = v54[2];
      v70 = v54[3];
      v72 = v54;
      if (v71 >= v70 >> 1)
      {
        v72 = sub_100A5D4CC((v70 > 1), v71 + 1, 1, v54);
      }

      v72[2] = v71 + 1;
      v54 = v72;
      v72[v71 + 4] = v69;
      v52 = sub_10001993C(v55 & 0xB);
      sub_10062CBB8(v10, type metadata accessor for RawSearchResult);
    }

    v30 += v53;
    v49 = (v49 - 1);
  }

  while (v49);

  v73 = v54[2];
  if (v73)
  {
LABEL_45:
    v10 = *v96;
    *&v102 = sub_1000BC4D4(&qword_1016A58B0, &qword_1013B32B8);
    v74 = *(v93[0] + 80);
    v100 = (v74 + 32) & ~v74;
    v101 = v74;
    v98 = *(v93[0] + 72);
    v99 = (v108 + 2);
    v75 = 4;
    v97 = v54;
    while (1)
    {
      v110 = v73;
      v31 = v54[v75];
      sub_1000BC4D4(&qword_1016A58B8, &qword_1013B32C0);
      v76 = v100;
      v77 = swift_allocObject() + v76;
      v78 = v106;
      v79 = *(v106 + 48);
      v80 = v109;
      (*v99)(v77, v107, v109);
      *(v77 + v79) = v31;
      v30 = static _DictionaryStorage.allocate(capacity:)();
      v81 = *(v78 + 48);
      v12 = v105;
      sub_1000D2A70(v77, v105, &qword_1016A58A8, &unk_1013B32A8);

      v82 = sub_1000210EC(v12);
      if (v83)
      {
        goto LABEL_58;
      }

      v31 = v82;
      *&v30[8 * (v82 >> 6) + 64] |= 1 << v82;
      v103(*(v30 + 6) + v108[9] * v82, v12, v80);
      *(*(v30 + 7) + 8 * v31) = *(v12 + v81);
      v84 = *(v30 + 2);
      v42 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v42)
      {
        goto LABEL_59;
      }

      *(v30 + 2) = v85;

      swift_setDeallocating();
      sub_10000B3A8(v77, &qword_1016A58A8, &unk_1013B32A8);
      swift_deallocClassInstance();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100A5D4A8(0, v10[2] + 1, 1, v10);
      }

      v86 = v110;
      v88 = v10[2];
      v87 = v10[3];
      if (v88 >= v87 >> 1)
      {
        v10 = sub_100A5D4A8((v87 > 1), v88 + 1, 1, v10);
      }

      v10[2] = v88 + 1;
      v10[v88 + 4] = v30;
      ++v75;
      v73 = v86 - 1;
      v54 = v97;
      if (!v73)
      {

        *v96 = v10;
        return v94(v107, v109);
      }
    }
  }

LABEL_55:

  return v94(v107, v109);
}

uint64_t sub_1005F2B30(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v18 = type metadata accessor for BeaconEstimatedLocation();
  sub_1000D2A70(a2 + *(v18 + 48), v9, &unk_101696900, &unk_10138B1E0);
  v19 = v11[6];
  if (v19(v9, 1, v10) == 1)
  {
    v20 = v9;
  }

  else
  {
    v21 = v9;
    v22 = v11[4];
    v22(v17, v21, v10);
    v23 = type metadata accessor for RawSearchResult();
    sub_1000D2A70(v28 + *(v23 + 40), v7, &unk_101696900, &unk_10138B1E0);
    if (v19(v7, 1, v10) != 1)
    {
      v22(v15, v7, v10);
      v24 = static Date.> infix(_:_:)();
      v25 = v11[1];
      v25(v15, v10);
      v25(v17, v10);
      return v24 & 1;
    }

    (v11[1])(v17, v10);
    v20 = v7;
  }

  sub_10000B3A8(v20, &unk_101696900, &unk_10138B1E0);
  v24 = 1;
  return v24 & 1;
}

void sub_1005F2DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v29[-v11];
  v13 = *(type metadata accessor for LocationFetcher() + 32);
  v14 = v6[2];
  v14(v12, a3, v5);
  v14(v10, a1, v5);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v17 = 141558787;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v31 = v15;
    v30 = v16;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = v6[1];
    v21(v12, v5);
    v22 = sub_1000136BC(v18, v20, &v33);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2160;
    *(v17 + 24) = 1752392040;
    *(v17 + 32) = 2081;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v21(v10, v5);
    v26 = sub_1000136BC(v23, v25, &v33);

    *(v17 + 34) = v26;
    v27 = v31;
    _os_log_impl(&_mh_execute_header, v31, v30, "Beacon %{private,mask.hash}s reported connected to multipart peer: %{private,mask.hash}s.", v17, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v28 = v6[1];
    v28(v10, v5);
    v28(v12, v5);
  }
}

void sub_1005F3128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for Date();
  v39 = *(v40 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin(v40);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for LocationFetcher() + 32);
  (*(v10 + 16))(v13, a3, v9);
  sub_10001F280(a1, v51);
  sub_10001F280(a1, v48);
  sub_10001F280(a1, v45);
  sub_10001F280(a1, v42);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    v41 = v38[0];
    *v17 = 141559299;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v38[1] = v3;
    v20 = v19;
    (*(v10 + 8))(v13, v9);
    v21 = sub_1000136BC(v18, v20, &v41);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2049;
    v22 = v52;
    v23 = v53;
    sub_1000035D0(v51, v52);
    v24 = (*(v23 + 16))(v22, v23);
    sub_100007BAC(v51);
    *(v17 + 24) = v24;
    *(v17 + 32) = 2049;
    v25 = v49;
    v26 = v50;
    sub_1000035D0(v48, v49);
    v27 = (*(v26 + 24))(v25, v26);
    sub_100007BAC(v48);
    *(v17 + 34) = v27;
    *(v17 + 42) = 2048;
    v28 = v46;
    v29 = v47;
    sub_1000035D0(v45, v46);
    v30 = (*(v29 + 32))(v28, v29);
    sub_100007BAC(v45);
    *(v17 + 44) = v30;
    *(v17 + 52) = 2082;
    v31 = v43;
    v32 = v44;
    sub_1000035D0(v42, v43);
    (*(v32 + 8))(v31, v32);
    sub_100009774(&qword_1016969A0, &type metadata accessor for Date);
    v33 = v40;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v39 + 8))(v8, v33);
    sub_100007BAC(v42);
    v37 = sub_1000136BC(v34, v36, &v41);

    *(v17 + 54) = v37;
    _os_log_impl(&_mh_execute_header, v15, v16, "△ Source Beacon: %{private,mask.hash}s, Location: lat: %{private}f, lon: %{private}f, accuracy: %f, timestamp: %{public}s.", v17, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    sub_100007BAC(v42);
    sub_100007BAC(v51);
    sub_100007BAC(v48);
    sub_100007BAC(v45);
  }
}

void sub_1005F3630(uint64_t a1, NSObject *a2, uint64_t a3, NSObject *a4, uint64_t a5, int a6)
{
  v131 = a6;
  v132 = a4;
  v133 = a5;
  v134 = a3;
  v135 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v129 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v128 = &v124 - v13;
  v14 = __chkstk_darwin(v12);
  v127 = &v124 - v15;
  __chkstk_darwin(v14);
  v17 = &v124 - v16;
  v130 = type metadata accessor for BeaconEstimatedLocation();
  v18 = *(*(v130 - 8) + 64);
  v19 = __chkstk_darwin(v130);
  v21 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v126 = &v124 - v23;
  v24 = __chkstk_darwin(v22);
  v125 = &v124 - v25;
  __chkstk_darwin(v24);
  v27 = &v124 - v26;
  v28 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v124 - v30);
  sub_1000D2A70(a1, &v124 - v30, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v132;
    v33 = v133;
    v34 = v7;
    v35 = *v31;
    v137 = v35;
    swift_errorRetain();
    v124 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast())
    {
      v129 = v35;
      v36 = v136;
      v37 = *(type metadata accessor for LocationFetcher() + 32);
      v38 = (v8 + 16);
      if (v36 == 8)
      {
        v39 = v125;
        sub_10062CD24(v32, v125, type metadata accessor for BeaconEstimatedLocation);
        v40 = v127;
        (*v38)(v127, v33, v34);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v137 = v134;
          *v43 = 141559043;
          *(v43 + 4) = 1752392040;
          *(v43 + 12) = 2081;
          LODWORD(v133) = v42;
          v44 = *(v130 + 20);
          sub_100009774(&qword_101696930, &type metadata accessor for UUID);
          v45 = v8;
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          sub_10062CBB8(v39, type metadata accessor for BeaconEstimatedLocation);
          v49 = v40;
          v50 = sub_1000136BC(v46, v48, &v137);

          *(v43 + 14) = v50;
          *(v43 + 22) = 2160;
          *(v43 + 24) = 1752392040;
          *(v43 + 32) = 2081;
          v51 = dispatch thunk of CustomStringConvertible.description.getter();
          v53 = v52;
          (*(v45 + 8))(v49, v34);
          v54 = sub_1000136BC(v51, v53, &v137);

          *(v43 + 34) = v54;
          *(v43 + 42) = 2080;
          v55 = sub_100013454(v131);
          v57 = sub_1000136BC(v55, v56, &v137);

          *(v43 + 44) = v57;
          _os_log_impl(&_mh_execute_header, v41, v133, "Skipped saving outdated LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s with source: %s.", v43, 0x34u);
          swift_arrayDestroy();

          goto LABEL_18;
        }

        (*(v8 + 8))(v40, v34);
        v123 = v39;
      }

      else
      {
        v98 = v126;
        sub_10062CD24(v32, v126, type metadata accessor for BeaconEstimatedLocation);
        v99 = v128;
        (*v38)(v128, v33, v34);
        v100 = v129;
        swift_errorRetain();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          LODWORD(v133) = v102;
          v104 = v103;
          v105 = v8;
          v134 = swift_slowAlloc();
          v137 = v134;
          *v104 = 141559299;
          *(v104 + 4) = 1752392040;
          *(v104 + 12) = 2081;
          v132 = v101;
          v106 = *(v130 + 20);
          sub_100009774(&qword_101696930, &type metadata accessor for UUID);
          v107 = dispatch thunk of CustomStringConvertible.description.getter();
          v108 = v34;
          v110 = v109;
          sub_10062CBB8(v98, type metadata accessor for BeaconEstimatedLocation);
          v111 = sub_1000136BC(v107, v110, &v137);

          *(v104 + 14) = v111;
          *(v104 + 22) = 2160;
          *(v104 + 24) = 1752392040;
          *(v104 + 32) = 2081;
          v112 = dispatch thunk of CustomStringConvertible.description.getter();
          v114 = v113;
          (*(v105 + 8))(v99, v108);
          v115 = sub_1000136BC(v112, v114, &v137);

          *(v104 + 34) = v115;
          *(v104 + 42) = 2082;
          v136 = v100;
          swift_errorRetain();
          v116 = String.init<A>(describing:)();
          v118 = sub_1000136BC(v116, v117, &v137);

          *(v104 + 44) = v118;
          *(v104 + 52) = 2080;
          v119 = sub_100013454(v131);
          v121 = sub_1000136BC(v119, v120, &v137);

          *(v104 + 54) = v121;
          v122 = v132;
          _os_log_impl(&_mh_execute_header, v132, v133, "Failed to save LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s: %{public}s with source: %s.", v104, 0x3Eu);
          swift_arrayDestroy();

          goto LABEL_18;
        }

        (*(v8 + 8))(v99, v34);
        v123 = v98;
      }
    }

    else
    {
      v75 = *(type metadata accessor for LocationFetcher() + 32);
      sub_10062CD24(v32, v21, type metadata accessor for BeaconEstimatedLocation);
      v76 = v129;
      (*(v8 + 16))(v129, v33, v7);
      swift_errorRetain();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v137 = v134;
        *v79 = 141559299;
        *(v79 + 4) = 1752392040;
        *(v79 + 12) = 2081;
        LODWORD(v133) = v78;
        v80 = *(v130 + 20);
        sub_100009774(&qword_101696930, &type metadata accessor for UUID);
        v81 = v8;
        v82 = dispatch thunk of CustomStringConvertible.description.getter();
        v83 = v7;
        v85 = v84;
        sub_10062CBB8(v21, type metadata accessor for BeaconEstimatedLocation);
        v86 = sub_1000136BC(v82, v85, &v137);

        *(v79 + 14) = v86;
        *(v79 + 22) = 2160;
        *(v79 + 24) = 1752392040;
        *(v79 + 32) = 2081;
        v87 = v129;
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v89;
        (*(v81 + 8))(v87, v83);
        v91 = sub_1000136BC(v88, v90, &v137);

        *(v79 + 34) = v91;
        *(v79 + 42) = 2082;
        v136 = v35;
        swift_errorRetain();
        v92 = String.init<A>(describing:)();
        v94 = sub_1000136BC(v92, v93, &v137);

        *(v79 + 44) = v94;
        *(v79 + 52) = 2080;
        v95 = sub_100013454(v131);
        v97 = sub_1000136BC(v95, v96, &v137);

        *(v79 + 54) = v97;
        _os_log_impl(&_mh_execute_header, v77, v133, "Failed to save LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s: %{public}s with source: %s.", v79, 0x3Eu);
        swift_arrayDestroy();

        goto LABEL_18;
      }

      (*(v8 + 8))(v76, v7);
      v123 = v21;
    }

    sub_10062CBB8(v123, type metadata accessor for BeaconEstimatedLocation);
    goto LABEL_18;
  }

  v58 = *(type metadata accessor for LocationFetcher() + 32);
  sub_10062CD24(v132, v27, type metadata accessor for BeaconEstimatedLocation);
  (*(v8 + 16))(v17, v133, v7);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = v7;
  if (os_log_type_enabled(v59, v60))
  {
    v62 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v137 = v134;
    *v62 = 141559043;
    *(v62 + 4) = 1752392040;
    *(v62 + 12) = 2081;
    LODWORD(v133) = v60;
    v63 = *(v130 + 20);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    sub_10062CBB8(v27, type metadata accessor for BeaconEstimatedLocation);
    v67 = sub_1000136BC(v64, v66, &v137);

    *(v62 + 14) = v67;
    *(v62 + 22) = 2160;
    *(v62 + 24) = 1752392040;
    *(v62 + 32) = 2081;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    (*(v8 + 8))(v17, v61);
    v71 = sub_1000136BC(v68, v70, &v137);

    *(v62 + 34) = v71;
    *(v62 + 42) = 2080;
    v72 = sub_100013454(v131);
    v74 = sub_1000136BC(v72, v73, &v137);

    *(v62 + 44) = v74;
    _os_log_impl(&_mh_execute_header, v59, v133, "Saved LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s with source: %s.", v62, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v17, v7);
    sub_10062CBB8(v27, type metadata accessor for BeaconEstimatedLocation);
  }

  sub_10000B3A8(v31, &qword_10169F438, &unk_1013B3300);
LABEL_18:
  dispatch_group_leave(v135);
}

void sub_1005F443C(uint64_t a1, uint64_t a2)
{
  v148 = a2;
  v144 = a1;
  v141 = type metadata accessor for RawSearchResult();
  v138 = *(v141 - 8);
  v3 = *(v138 + 64);
  __chkstk_darwin(v141);
  v139 = v4;
  v143 = v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationFetcher();
  v136 = *(v5 - 8);
  v6 = *(v136 + 64);
  __chkstk_darwin(v5);
  v137 = v7;
  v142 = v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for UUID();
  isa = v154[-1].isa;
  v8 = *(isa + 8);
  v9 = __chkstk_darwin(v154);
  v131 = v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v10;
  __chkstk_darwin(v9);
  v149 = v116 - v11;
  v132 = type metadata accessor for BeaconStatus(0);
  v12 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v14 = v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v116 - v17;
  v153 = type metadata accessor for Date();
  v147 = *(v153 - 8);
  v19 = *(v147 + 64);
  v20 = __chkstk_darwin(v153);
  v146 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v21;
  __chkstk_darwin(v20);
  v151 = v116 - v22;
  v23 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v116 - v25;
  v27 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v130 = v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v145 = (v116 - v33);
  v133 = v34;
  __chkstk_darwin(v32);
  v152 = v116 - v35;
  v37 = v2[6];
  v36 = v2[7];
  sub_1000035D0(v2 + 3, v37);
  if ((*(v36 + 24))(v37, v36))
  {
    v38 = v2 + *(v5 + 32);
    v154 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v154, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v154, v39, "Not storing beacon status that's already from disk.", v40, 2u);
    }

    v41 = v154;
  }

  else
  {
    v129 = v5;
    v140 = v2;
    v42 = v141;
    v43 = v148;
    sub_1000D2A70(&v148[*(v141 + 44)], v26, &unk_1016C1120, &qword_1013C49D0);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_10000B3A8(v26, &unk_1016C1120, &qword_1013C49D0);
      v44 = v140 + *(v129 + 32);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Not storing beacon status that's not reconciled.", v47, 2u);
      }
    }

    else
    {
      v128 = v27;
      v125 = v28;
      sub_10062CC64(v26, v152, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_1000D2A70(&v43[*(v42 + 40)], v18, &unk_101696900, &unk_10138B1E0);
      v48 = v147;
      v49 = *(v147 + 48);
      v50 = v153;
      if (v49(v18, 1, v153) == 1)
      {
        v51 = *(v42 + 20);
        v52 = v151;
        (*(v48 + 16))();
        v53 = v49(v18, 1, v50);
        v54 = v154;
        v55 = v48;
        if (v53 != 1)
        {
          v56 = v154;
          sub_10000B3A8(v18, &unk_101696900, &unk_10138B1E0);
          v54 = v56;
        }
      }

      else
      {
        v52 = v151;
        (*(v48 + 32))();
        v54 = v154;
        v55 = v48;
      }

      v126 = *v140;
      v57 = isa + 16;
      v127 = *(isa + 2);
      v127(v14, v144, v54);
      v141 = v57;
      LODWORD(v121) = *v43;
      v58 = v132;
      v124 = *(v132 + 24);
      v59 = *(v55 + 16);
      v59(&v124[v14], v52, v50);
      v60 = (v152 + *(v128 + 20));
      v61 = v60[3];
      v62 = v60[4];
      sub_1000035D0(v60, v61);
      LOBYTE(v62) = sub_10002BD40(v61, v62);
      v63 = v60[4];
      sub_1000035D0(v60, v60[3]);
      v64 = *(v63 + 56);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v65 = v156;
      LOBYTE(v63) = v121;
      *(v14 + v58[5]) = v121;
      v66 = (v14 + v58[7]);
      *v66 = v62 & 1;
      v66[1] = v65;
      *(v14 + v58[8]) = 1;
      *(v14 + v58[9]) = 0;
      v67 = v149;
      v68 = v127;
      v127(v149, v14, v154);
      v69 = v146;
      v123 = v55 + 16;
      v122 = v59;
      v59(v146, &v124[v14], v50);
      v70 = type metadata accessor for Transaction();
      __chkstk_darwin(v70);
      v71 = v126;
      v116[-6] = v126;
      v116[-5] = v67;
      v116[-4] = v69;
      v116[-3] = v14;
      LOBYTE(v116[-2]) = 3;
      BYTE1(v116[-2]) = v63;
      static Transaction.named<A>(_:with:)();
      v72 = v154;
      v73 = *(v147 + 8);
      v132 = v147 + 8;
      v124 = v73;
      (v73)(v69, v153);
      v74 = v67;
      v75 = v144;
      v117 = *(isa + 1);
      v116[1] = isa + 8;
      v117(v74, v72);
      sub_10062CBB8(v14, type metadata accessor for BeaconStatus);
      v76 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
      v77 = *(v71 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
      v119 = type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v118 = 0;
      v78 = v145;
      v68(v145, v75, v72);
      sub_10001F280(v60, v78 + *(v128 + 20));
      sub_1012DE5A0(v78, 0, &v156);

      sub_10062CBB8(v78, type metadata accessor for BeaconKeyManager.IndexInformation);
      v79 = v151;
      if (v158 >> 60 == 15)
      {
        v121 = 0;
        v120 = 0x3000000000000000;
        v80 = v140;
        v81 = v152;
      }

      else
      {
        v82 = PublicKey.advertisement.getter(v157, v158);
        sub_10002EA98(6, v82, v83, v155);
        v121 = v155[0];
        v120 = v155[1] | 0x2000000000000000;
        v84 = *(v129 + 32);
        v85 = v131;
        v68(v131, v75, v72);
        v81 = v152;
        v86 = v130;
        sub_10062CD24(v152, v130, type metadata accessor for BeaconKeyManager.IndexInformation);
        v80 = v140;
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v155[0] = v129;
          *v89 = 141558531;
          *(v89 + 4) = 1752392040;
          *(v89 + 12) = 2081;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID);
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          v117(v85, v72);
          v93 = sub_1000136BC(v90, v92, v155);

          *(v89 + 14) = v93;
          *(v89 + 22) = 2082;
          v94 = (v86 + *(v128 + 20));
          v95 = v94[4];
          sub_1000035D0(v94, v94[3]);
          v96 = *(v95 + 16);
          v97 = dispatch thunk of CustomStringConvertible.description.getter();
          v99 = v98;
          sub_10062CBB8(v86, type metadata accessor for BeaconKeyManager.IndexInformation);
          v100 = sub_1000136BC(v97, v99, v155);
          v80 = v140;

          *(v89 + 24) = v100;
          _os_log_impl(&_mh_execute_header, v87, v88, "Found advertisement key beacon for %{private,mask.hash}s,index %{public}s.", v89, 0x20u);
          swift_arrayDestroy();

          v75 = v144;

          sub_10000B3A8(&v156, &qword_10169FCA0, &unk_1013B32F0);
        }

        else
        {
          sub_10000B3A8(&v156, &qword_10169FCA0, &unk_1013B32F0);

          v117(v85, v72);
          sub_10062CBB8(v86, type metadata accessor for BeaconKeyManager.IndexInformation);
        }

        v79 = v151;
      }

      v101 = *(v126 + v76);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v140 = v155[0];
      v144 = type metadata accessor for Transaction();
      sub_10062CD24(v80, v142, type metadata accessor for LocationFetcher);
      sub_10062CD24(v81, v145, type metadata accessor for BeaconKeyManager.IndexInformation);
      v127(v149, v75, v72);
      sub_10062CD24(v148, v143, type metadata accessor for RawSearchResult);
      v122(v146, v79, v153);
      v102 = (*(v136 + 80) + 16) & ~*(v136 + 80);
      v103 = (v137 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = (*(v125 + 80) + v103 + 16) & ~*(v125 + 80);
      v105 = (v133 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
      v106 = isa;
      v107 = (*(isa + 80) + v105 + 8) & ~*(isa + 80);
      v108 = (v135 + *(v138 + 80) + v107) & ~*(v138 + 80);
      v109 = v147;
      v110 = (v139 + *(v147 + 80) + v108) & ~*(v147 + 80);
      v111 = swift_allocObject();
      sub_10062CC64(v142, v111 + v102, type metadata accessor for LocationFetcher);
      v112 = (v111 + v103);
      v113 = v121;
      v114 = v120;
      *v112 = v121;
      v112[1] = v114;
      sub_10062CC64(v145, v111 + v104, type metadata accessor for BeaconKeyManager.IndexInformation);
      *(v111 + v105) = v140;
      (*(v106 + 4))(v111 + v107, v149, v154);
      sub_10062CC64(v143, v111 + v108, type metadata accessor for RawSearchResult);
      v115 = v153;
      (*(v109 + 32))(v111 + v110, v146, v153);
      sub_10062AF30(v113, v114);

      static Transaction.asyncTask(name:block:)();

      sub_10062AF44(v113, v114);
      (v124)(v151, v115);
      sub_10062CBB8(v152, type metadata accessor for BeaconKeyManager.IndexInformation);
    }
  }
}

uint64_t sub_1005F5558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_10169E358, &qword_101404C50) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v3[16] = v12;
  v13 = *(v12 - 8);
  v3[17] = v13;
  v14 = *(v13 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  v3[20] = v16;
  *v16 = v3;
  v16[1] = sub_1005F57B0;

  return daemon.getter();
}

uint64_t sub_1005F57B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v12 = *v1;
  *(v3 + 168) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 176) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100009774(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1005F598C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005F598C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *v2;
  *(*v2 + 184) = a1;

  v6 = *(v3 + 168);
  if (v1)
  {

    v7 = sub_1005F5ADC;
  }

  else
  {

    v7 = sub_1005F5C50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005F5ADC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for LocationFetcher() + 32);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "No ObservationStoreService available!", v5, 2u);
  }

  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[15];
  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  (*(v0[10] + 56))(v0[2], 1, 1, v0[9]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005F5C50()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 32);
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(v7 + 192))(v6, v7);
  v8 = v3[3];
  v9 = v3[4];
  sub_1000035D0(v3, v8);
  *(v0 + 220) = (*(v9 + 112))(v8, v9) & 1;
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_1005F5DAC;
  v11 = *(v0 + 184);
  v12 = *(v0 + 120);
  v13 = *(v0 + 64);

  return sub_1010D4938(v13, v12);
}

uint64_t sub_1005F5DAC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_1005F5EBC, v2, 0);
}

uint64_t sub_1005F5EBC()
{
  v1 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 64), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = *(v0 + 56);
    v9 = *(v0 + 48);
    sub_10000B3A8(*(v0 + 64), &qword_10169E358, &qword_101404C50);
    (*(v6 + 8))(v5, v7);
    sub_10000B3A8(v8, &qword_10169E358, &qword_101404C50);
    (*(v4 + 56))(v9, 1, 1, v3);
  }

  else
  {
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    sub_10112FB78(*(v0 + 220), *(v0 + 48));
    sub_10000B3A8(v14, &qword_10169E358, &qword_101404C50);
    (*(v11 + 8))(v10, v12);
    sub_10062CBB8(v13, type metadata accessor for KeySyncSnapshot);
  }

  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 40);
  sub_1000D2AD8(*(v0 + 48), v17, &unk_1016AF8A0, &unk_10139D7C0);
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    v20 = *(v0 + 72);
    v21 = *(v0 + 80);
    sub_10000B3A8(*(v0 + 40), &unk_1016AF8A0, &unk_10139D7C0);
    v22 = *(v21 + 32);
    v23 = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v18, v19, v20);
    v24 = 1;
  }

  else
  {
    v25 = *(v0 + 144);
    v26 = *(v0 + 128);
    v27 = *(v0 + 88);
    v28 = *(v0 + 72);
    v29 = *(v0 + 80);
    v30 = *(v0 + 40);
    (*(v29 + 8))(*(v0 + 96), v28);
    sub_1000D2AD8(v30, v25, &unk_1016C8FC0, &unk_10139D7D0);
    if (*v25 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = *v25;
    }

    v31 = *(v26 + 36);
    v22 = *(v29 + 32);
    v23 = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v27, v25 + v31, v28);
  }

  *(v0 + 200) = v22;
  v32 = *(v0 + 152);
  v33 = *(v0 + 128);
  v34 = *(v0 + 88);
  v35 = *(v0 + 72);
  *v32 = v24;
  v36 = *(v33 + 36);
  *(v0 + 216) = v36;
  *(v0 + 208) = v23;
  v22(v32 + v36, v34, v35);

  return _swift_task_switch(sub_1005F61B4, 0, 0);
}

uint64_t sub_1005F61B4()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);
  v6 = *(v0 + 72);
  v7 = *(v0 + 16);

  v3(v7, v5 + v1, v6);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  (*(*(v0 + 80) + 56))(*(v0 + 16), 0, 1, *(v0 + 72));

  v17 = *(v0 + 8);

  return v17();
}

void sub_1005F62D4(uint64_t a1)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v4 = *(*(RequestBeacon - 8) + 64);
  v5 = __chkstk_darwin(RequestBeacon - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v23 - v9;
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = *(type metadata accessor for LocationFetcher() + 32);
  sub_10062CD24(a1, v12, type metadata accessor for FetchRequestBeacon);
  sub_10062CD24(a1, v10, type metadata accessor for FetchRequestBeacon);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10062CBB8(v12, type metadata accessor for FetchRequestBeacon);
    v20 = sub_1000136BC(v17, v19, &v26);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    sub_10062CD24(v10, v7, type metadata accessor for FetchRequestBeacon);
    v21 = objc_autoreleasePoolPush();
    sub_100EABD30(v7, v25);
    if (v1)
    {
      sub_10062CBB8(v10, type metadata accessor for FetchRequestBeacon);
      objc_autoreleasePoolPop(v21);
      __break(1u);
    }

    else
    {
      objc_autoreleasePoolPop(v21);
      sub_10062CBB8(v7, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v10, type metadata accessor for FetchRequestBeacon);
      v22 = sub_1000136BC(v25[0], v25[1], &v26);

      *(v16 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Fetching beacon %{private,mask.hash}s, %{public}s.", v16, 0x20u);
      swift_arrayDestroy();
    }
  }

  else
  {

    sub_10062CBB8(v10, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v12, type metadata accessor for FetchRequestBeacon);
  }
}

uint64_t sub_1005F6644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 116) = a6;
  *(v8 + 152) = a4;
  *(v8 + 160) = a5;
  v9 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  *(v8 + 184) = v9;
  v10 = *(v9 - 8);
  *(v8 + 192) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v12 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v8 + 208) = v12;
  v13 = *(v12 - 8);
  *(v8 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1005F6768, 0, 0);
}

uint64_t sub_1005F6768()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = v2[6];
  v4 = v2[7];
  sub_1000035D0(v2 + 3, v3);
  v5 = *(v4 + 48);

  v6 = v5(v3, v4);
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for LocationFetcher();
  *(v0 + 232) = v11;
  v12 = *(v2 + *(v11 + 40));

  v13 = swift_task_alloc();
  *(v0 + 240) = v13;
  *v13 = v0;
  v13[1] = sub_1005F68A8;
  v14 = *(v0 + 116);
  v15 = *(v0 + 152);

  return sub_100EB0AA0(v15, v6, v8, v10, v14, v12);
}

uint64_t sub_1005F68A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 240);
  v9 = *v4;
  v5[31] = a1;
  v5[32] = a2;
  v5[33] = a3;
  v5[34] = v3;

  if (v3)
  {
    v7 = sub_1005F6BBC;
  }

  else
  {
    v7 = sub_1005F69C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005F69C0()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v0[5] = &type metadata for FetchRequest;
  v0[6] = sub_10062BE04();
  v0[2] = v3;
  v0[3] = v1;
  v0[4] = v2;

  sub_100017D5C(v1, v2);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1005F6AA0;
  v5 = v0[28];
  v6 = v0[21];

  return sub_1004E682C(v5, (v0 + 2));
}

uint64_t sub_1005F6AA0()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_1005F7820;
  }

  else
  {
    sub_100007BAC((v2 + 16));
    v4 = sub_1005F6DA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005F6BBC()
{
  v1 = v0[34];
  v0[42] = v1;
  v2 = v0[20];
  v3 = *(v0[29] + 32);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetch error: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[22];

  v10 = swift_allocObject();
  v0[43] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;

  swift_errorRetain();
  v11 = async function pointer to unsafeBlocking<A>(_:)[1];
  v12 = swift_task_alloc();
  v0[44] = v12;
  *v12 = v0;
  v12[1] = sub_1005F7510;

  return unsafeBlocking<A>(_:)(v0 + 113, sub_10062BDD0, v10, &type metadata for Bool);
}

uint64_t sub_1005F6DA4()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 116);
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v0 + 296) = JSONDecoder.init()();
  (*(v2 + 104))(v1, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v3);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  v8 = *(v0 + 288);
  v9 = *(v0 + 224);
  if (v4 == 1)
  {
    v10 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v12 = v11;
    sub_10062BEB8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v8)
    {
      v13 = *(v0 + 176);
      sub_100016590(v10, v12);
      v14 = *(v0 + 144);
      v15 = swift_allocObject();
      *(v0 + 304) = v15;
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      v16 = async function pointer to unsafeBlocking<A>(_:)[1];

      v17 = swift_task_alloc();
      *(v0 + 312) = v17;
      *v17 = v0;
      v17[1] = sub_1005F7220;
      v18 = sub_10062BF68;
      v19 = v0 + 115;
LABEL_9:
      v35 = v15;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v12 = v20;
    sub_10062BE58();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v8)
    {
      v36 = *(v0 + 176);
      sub_100016590(v10, v12);
      v37 = *(v0 + 104);
      v38 = *(v0 + 112);
      v15 = swift_allocObject();
      *(v0 + 320) = v15;
      *(v15 + 16) = v36;
      *(v15 + 24) = v37;
      *(v15 + 32) = v38;
      v39 = async function pointer to unsafeBlocking<A>(_:)[1];

      v40 = swift_task_alloc();
      *(v0 + 328) = v40;
      *v40 = v0;
      v40[1] = sub_1005F73F8;
      v18 = sub_10062BEAC;
      v19 = v0 + 114;
      goto LABEL_9;
    }
  }

  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v23 = *(v0 + 248);
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

  sub_100016590(v22, v21);
  sub_100016590(v10, v12);

  *(v0 + 336) = v8;
  v24 = *(v0 + 160);
  v25 = *(*(v0 + 232) + 32);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "Fetch error: %{public}@.", v28, 0xCu);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);
  }

  v31 = *(v0 + 176);

  v32 = swift_allocObject();
  *(v0 + 344) = v32;
  *(v32 + 16) = v31;
  *(v32 + 24) = v8;

  swift_errorRetain();
  v33 = async function pointer to unsafeBlocking<A>(_:)[1];
  v34 = swift_task_alloc();
  *(v0 + 352) = v34;
  *v34 = v0;
  v34[1] = sub_1005F7510;
  v18 = sub_10062BDD0;
  v19 = v0 + 113;
  v35 = v32;
LABEL_10:

  return unsafeBlocking<A>(_:)(v19, v18, v35, &type metadata for Bool);
}

uint64_t sub_1005F7220()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_1005F7338, 0, 0);
}

uint64_t sub_1005F7338()
{
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];

  sub_100016590(v2, v3);
  (*(v6 + 8))(v5, v7);
  v8 = v0[28];
  v9 = v0[25];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005F73F8()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return _swift_task_switch(sub_1005F7338, 0, 0);
}

uint64_t sub_1005F7510()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return _swift_task_switch(sub_1005F7628, 0, 0);
}

uint64_t sub_1005F7628()
{
  if (*(v0 + 116))
  {
    v1 = *(v0 + 336);
    v2 = *(v0 + 160);
    v3 = v2[6];
    v4 = v2[7];
    sub_1000035D0(v2 + 3, v3);
    v5 = (*(v4 + 48))(v3, v4);
    v8 = sub_100EAAD78(v5, v6, v7);
    v10 = v9;

    _StringGuts.grow(_:)(40);

    swift_getErrorValue();
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 72);
    *(v0 + 128) = Error.code.getter();
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x6F44726F72726520;
    v15._object = 0xED00003A6E69616DLL;
    String.append(_:)(v15);
    swift_getErrorValue();
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19._countAndFlagsBits = Error.domain.getter();
    String.append(_:)(v19);

    sub_1011729A0(v8, v10, 0xD000000000000017, 0x800000010135B720);
  }

  else
  {
    v20 = *(v0 + 336);
  }

  v21 = *(v0 + 224);
  v22 = *(v0 + 200);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1005F7820()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);
  v4 = v0[36];
  v0[42] = v4;
  v5 = v0[20];
  v6 = *(v0[29] + 32);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch error: %{public}@.", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  v12 = v0[22];

  v13 = swift_allocObject();
  v0[43] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v4;

  swift_errorRetain();
  v14 = async function pointer to unsafeBlocking<A>(_:)[1];
  v15 = swift_task_alloc();
  v0[44] = v15;
  *v15 = v0;
  v15[1] = sub_1005F7510;

  return unsafeBlocking<A>(_:)(v0 + 113, sub_10062BDD0, v13, &type metadata for Bool);
}

uint64_t sub_1005F7A28@<X0>(_BYTE *a1@<X8>)
{

  v2 = Future.finish(result:)();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1005F7A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(*(type metadata accessor for RawSearchResult() - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for ObservedAdvertisement(0);
  v8[13] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v8[15] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v8[19] = v14;
  v15 = *(v14 - 8);
  v8[20] = v15;
  v16 = *(v15 + 64) + 15;
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v8[25] = v18;
  *v18 = v8;
  v18[1] = sub_1005F7C58;

  return daemon.getter();
}

uint64_t sub_1005F7C58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v12 = *v1;
  *(v3 + 208) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 216) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100009774(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1005F7E34;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005F7E34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *v2;
  *(*v2 + 224) = a1;

  v6 = *(v3 + 208);
  if (v1)
  {

    v7 = sub_1005F7F84;
  }

  else
  {

    v7 = sub_1005F80E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005F7F84()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for LocationFetcher() + 32);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "No ObservationStoreService available!", v5, 2u);
  }

  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  v13 = v0[14];
  v15 = v0[11];
  v14 = v0[12];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005F80E0()
{
  v1 = *(v0 + 40);
  if ((~v1 & 0x3000000000000000) != 0)
  {
    v14 = *(v0 + 32);
    *(v0 + 272) = v14;
    *(v0 + 280) = v1;
    v15 = *(v0 + 160);
    v16 = *(v0 + 112);
    v37 = *(v0 + 152);
    v38 = *(v0 + 120);
    v17 = *(v0 + 104);
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);
    v20 = *(v0 + 48);
    v39 = **(v0 + 72);
    v21 = v17[11];
    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 16))(v16 + v21, v18, v22);
    v23 = v17[12];
    v24 = type metadata accessor for ObservedAdvertisement.Location(0);
    (*(*(v24 - 8) + 56))(v16 + v23, 1, 1, v24);
    v25 = v16 + v17[13];
    v26 = *(v15 + 16);
    *(v0 + 288) = v26;
    *(v0 + 296) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v25, v19, v37);
    v27 = (v20 + *(v38 + 20));
    v28 = v27[3];
    v29 = v27[4];
    sub_1000035D0(v27, v28);
    sub_10062AF30(v14, v1);
    sub_100029784(v14, v1);
    LOBYTE(v28) = sub_10002BD40(v28, v29);
    v30 = v27[4];
    sub_1000035D0(v27, v27[3]);
    v31 = *(v30 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v32 = *(v0 + 16);
    v33 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    *(v25 + *(v33 + 20)) = v28 & 1;
    *(v25 + *(v33 + 24)) = v32;
    (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
    *v16 = 0;
    *(v16 + 8) = 769;
    *(v16 + 16) = v14;
    *(v16 + 24) = v1;
    *(v16 + 32) = v39;
    *(v16 + 33) = 0;
    *(v16 + 35) = 1;
    *(v16 + 36) = -1;
    *(v16 + v17[14]) = 0;
    v34 = swift_task_alloc();
    *(v0 + 304) = v34;
    *v34 = v0;
    v34[1] = sub_1005F8B14;
    v35 = *(v0 + 224);
    v36 = *(v0 + 112);

    return sub_10002E1FC(v36);
  }

  else
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 56);
    v4 = (*(v0 + 48) + *(*(v0 + 120) + 20));
    v5 = v4[3];
    v6 = v4[4];
    v7 = sub_1000035D0(v4, v5);
    v8 = *(v3 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
    v9 = getuid();
    sub_1000294F0(v9);
    v10 = swift_task_alloc();
    *(v0 + 232) = v10;
    *v10 = v0;
    v10[1] = sub_1005F8448;
    v11 = *(v0 + 192);
    v12 = *(v0 + 64);

    return sub_1006858D0(v11, v12, v7, v5, v6);
  }
}

uint64_t sub_1005F8448(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 232);
  v7 = *v3;
  v5[30] = a1;
  v5[31] = a2;

  v8 = v4[24];
  v9 = v4[20];
  v10 = v4[19];
  if (v2)
  {

    (*(v9 + 8))(v8, v10);
    v11 = sub_1005F904C;
  }

  else
  {
    v12 = *(v9 + 8);
    v5[32] = v12;
    v5[33] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v10);
    v11 = sub_1005F85F4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1005F85F4()
{
  v66 = v0;
  v1 = *(v0 + 248);
  if (v1 >> 60 == 15)
  {
    sub_1005CAEA4(v65);
    v2 = v65[0];
    v1 = v65[1];
  }

  else
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(type metadata accessor for LocationFetcher() + 32);
    (*(v5 + 16))(v3, v7, v4);
    sub_10062CD24(v8, v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 256);
    v15 = *(v0 + 264);
    v16 = *(v0 + 184);
    v17 = *(v0 + 144);
    v18 = *(v0 + 152);
    if (v13)
    {
      v60 = *(v0 + 120);
      log = v11;
      v19 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v58 = v12;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v14(v16, v18);
      v23 = sub_1000136BC(v20, v22, v65);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2082;
      v24 = (v17 + *(v60 + 20));
      v25 = v24[4];
      sub_1000035D0(v24, v24[3]);
      v26 = *(v25 + 16);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_10062CBB8(v17, type metadata accessor for BeaconKeyManager.IndexInformation);
      v30 = sub_1000136BC(v27, v29, v65);

      *(v19 + 24) = v30;
      _os_log_impl(&_mh_execute_header, log, v58, "Found advertisement key for shared beacon %{private,mask.hash}s,index %{public}s.", v19, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v14(v16, v18);
      sub_10062CBB8(v17, type metadata accessor for BeaconKeyManager.IndexInformation);
    }

    v2 = *(v0 + 240);
  }

  v31 = v1 | 0x2000000000000000;
  *(v0 + 272) = v2;
  *(v0 + 280) = v1 | 0x2000000000000000;
  v32 = *(v0 + 160);
  v33 = *(v0 + 112);
  v57 = *(v0 + 152);
  v59 = *(v0 + 120);
  v34 = *(v0 + 104);
  v35 = *(v0 + 80);
  v36 = *(v0 + 64);
  v37 = *(v0 + 48);
  v61 = *(v0 + 32);
  loga = *(v0 + 40);
  v64 = **(v0 + 72);
  v38 = v34[11];
  v56 = v2;
  v39 = type metadata accessor for Date();
  (*(*(v39 - 8) + 16))(v33 + v38, v35, v39);
  v40 = v34[12];
  v41 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(*(v41 - 8) + 56))(v33 + v40, 1, 1, v41);
  v42 = v33 + v34[13];
  v43 = *(v32 + 16);
  *(v0 + 288) = v43;
  *(v0 + 296) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v42, v36, v57);
  v44 = (v37 + *(v59 + 20));
  v45 = v44[3];
  v46 = v44[4];
  sub_1000035D0(v44, v45);
  sub_10062AF30(v61, loga);
  sub_100029784(v2, v31);
  v47 = sub_10002BD40(v45, v46);
  v48 = v44[4];
  sub_1000035D0(v44, v44[3]);
  v49 = *(v48 + 56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v50 = *(v0 + 16);
  v51 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  *(v42 + *(v51 + 20)) = v47 & 1;
  *(v42 + *(v51 + 24)) = v50;
  (*(*(v51 - 8) + 56))(v42, 0, 1, v51);
  *v33 = 0;
  *(v33 + 8) = 769;
  *(v33 + 16) = v56;
  *(v33 + 24) = v31;
  *(v33 + 32) = v64;
  *(v33 + 33) = 0;
  *(v33 + 35) = 1;
  *(v33 + 36) = -1;
  *(v33 + v34[14]) = 0;
  v52 = swift_task_alloc();
  *(v0 + 304) = v52;
  *v52 = v0;
  v52[1] = sub_1005F8B14;
  v53 = *(v0 + 224);
  v54 = *(v0 + 112);

  return sub_10002E1FC(v54);
}

uint64_t sub_1005F8B14()
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 312) = v0;

  sub_10062CBB8(v3, type metadata accessor for ObservedAdvertisement);
  if (v0)
  {
    v4 = sub_1005F92FC;
  }

  else
  {
    v4 = sub_1005F8C58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005F8C58()
{
  v52 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v47 = v0[3];
  v49 = v0[17];
  v9 = *(type metadata accessor for LocationFetcher() + 32);
  sub_10062CD24(v6, v5, type metadata accessor for RawSearchResult);
  v2(v3, v7, v4);
  sub_10062CD24(v8, v49, type metadata accessor for BeaconKeyManager.IndexInformation);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[20];
  v18 = v0[17];
  if (v12)
  {
    v45 = v0[15];
    v50 = v0[28];
    v19 = v0[12];
    v48 = v0[34];
    v20 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v20 = 16778243;
    v46 = v13;
    v21 = *v19;
    sub_10062CBB8(v19, type metadata accessor for RawSearchResult);
    *(v20 + 4) = v21;
    *(v20 + 5) = 2160;
    *(v20 + 7) = 1752392040;
    *(v20 + 15) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v17 + 8))(v15, v16);
    v25 = sub_1000136BC(v22, v24, &v51);

    *(v20 + 17) = v25;
    *(v20 + 25) = 2082;
    v26 = (v18 + *(v45 + 20));
    v27 = v26[4];
    sub_1000035D0(v26, v26[3]);
    v28 = *(v27 + 16);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    sub_10062CBB8(v18, type metadata accessor for BeaconKeyManager.IndexInformation);
    v32 = sub_1000136BC(v29, v31, &v51);

    *(v20 + 27) = v32;
    _os_log_impl(&_mh_execute_header, v10, v11, "Saved advertisement status %hhu for beacon %{private,mask.hash}s,index %{public}s.", v20, 0x23u);
    swift_arrayDestroy();

    sub_10001E524(v48, v46);
  }

  else
  {
    sub_10062CBB8(v0[12], type metadata accessor for RawSearchResult);
    sub_10001E524(v14, v13);

    (*(v17 + 8))(v15, v16);
    sub_10062CBB8(v18, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v34 = v0[23];
  v33 = v0[24];
  v36 = v0[21];
  v35 = v0[22];
  v38 = v0[17];
  v37 = v0[18];
  v39 = v0[16];
  v40 = v0[14];
  v42 = v0[11];
  v41 = v0[12];

  v43 = v0[1];

  return v43();
}

uint64_t sub_1005F904C()
{
  v34 = v0;
  sub_1005CAEA4(&v32);
  v1 = v32;
  v2 = v33 | 0x2000000000000000;
  v30 = v33 | 0x2000000000000000;
  *(v0 + 272) = v32;
  *(v0 + 280) = v2;
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 112);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v29 = *(v0 + 40);
  v27 = *(v0 + 120);
  v28 = *(v0 + 32);
  v31 = **(v0 + 72);
  v9 = *(*(v0 + 104) + 44);
  v10 = *(v0 + 104);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 16))(v5 + v9, v6, v11);
  v12 = v10[12];
  v13 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  v14 = v5 + v10[13];
  v15 = *(v3 + 16);
  *(v0 + 288) = v15;
  *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v14, v7, v4);
  v16 = (v8 + *(v27 + 20));
  v17 = v16[3];
  v18 = v16[4];
  sub_1000035D0(v16, v17);
  sub_10062AF30(v28, v29);
  sub_100029784(v1, v30);
  LOBYTE(v8) = sub_10002BD40(v17, v18);
  v19 = v16[4];
  sub_1000035D0(v16, v16[3]);
  v20 = *(v19 + 56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v0 + 16);
  v22 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  *(v14 + *(v22 + 20)) = v8 & 1;
  *(v14 + *(v22 + 24)) = v21;
  (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
  *v5 = 0;
  *(v5 + 8) = 769;
  *(v5 + 16) = v1;
  *(v5 + 24) = v30;
  *(v5 + 32) = v31;
  *(v5 + 33) = 0;
  *(v5 + 35) = 1;
  *(v5 + 36) = -1;
  *(v5 + v10[14]) = 0;
  v23 = swift_task_alloc();
  *(v0 + 304) = v23;
  *v23 = v0;
  v23[1] = sub_1005F8B14;
  v24 = *(v0 + 224);
  v25 = *(v0 + 112);

  return sub_10002E1FC(v25);
}

uint64_t sub_1005F92FC()
{
  v55 = v0;
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v50 = v0[16];
  v52 = v0[3];
  v48 = *(type metadata accessor for LocationFetcher() + 32);
  sub_10062CD24(v7, v6, type metadata accessor for RawSearchResult);
  v2(v4, v8, v5);
  sub_10062CD24(v9, v50, type metadata accessor for BeaconKeyManager.IndexInformation);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[39];
  v14 = v0[35];
  v53 = v0[34];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];
  v18 = v0[16];
  if (v12)
  {
    v46 = v0[15];
    v51 = v0[35];
    v19 = v0[11];
    v49 = v0[28];
    v20 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v20 = 16778499;
    v21 = *v19;
    sub_10062CBB8(v19, type metadata accessor for RawSearchResult);
    *(v20 + 4) = v21;
    *(v20 + 5) = 2160;
    *(v20 + 7) = 1752392040;
    *(v20 + 15) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v16 + 8))(v15, v17);
    v25 = sub_1000136BC(v22, v24, &v54);

    *(v20 + 17) = v25;
    *(v20 + 25) = 2082;
    v26 = (v18 + *(v46 + 20));
    v27 = v26[4];
    sub_1000035D0(v26, v26[3]);
    v28 = *(v27 + 16);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    sub_10062CBB8(v18, type metadata accessor for BeaconKeyManager.IndexInformation);
    v32 = sub_1000136BC(v29, v31, &v54);

    *(v20 + 27) = v32;
    *(v20 + 35) = 2114;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 37) = v33;
    *v47 = v33;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error saving advertisement status %hhufor beacon %{private,mask.hash}s,index %{public}serror: %{public}@.", v20, 0x2Du);
    sub_10000B3A8(v47, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    sub_10001E524(v53, v51);
  }

  else
  {
    sub_10062CBB8(v0[11], type metadata accessor for RawSearchResult);
    sub_10001E524(v53, v14);

    (*(v16 + 8))(v15, v17);
    sub_10062CBB8(v18, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v35 = v0[23];
  v34 = v0[24];
  v37 = v0[21];
  v36 = v0[22];
  v39 = v0[17];
  v38 = v0[18];
  v40 = v0[16];
  v41 = v0[14];
  v43 = v0[11];
  v42 = v0[12];

  v44 = v0[1];

  return v44();
}

uint64_t sub_1005F9784()
{
  v0 = getuid();

  return sub_1000294F0(v0);
}

void sub_1005F97BC(void *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9, void *a10)
{
  v262 = a8;
  v265 = a7;
  v264 = a6;
  v241 = a4;
  v271 = a2;
  v260 = a1;
  v247 = type metadata accessor for FetchResponse.SearchResult();
  v15 = *(*(v247 - 8) + 64);
  __chkstk_darwin(v247);
  v244 = &v229 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v255 = &v229 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v253 = &v229 - v21;
  v236 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v22 = *(*(v236 - 8) + 64);
  v23 = __chkstk_darwin(v236);
  v254 = &v229 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v251 = (&v229 - v25);
  v263 = type metadata accessor for Date();
  v252 = *(v263 - 8);
  v26 = v252[8];
  v27 = __chkstk_darwin(v263);
  v234 = &v229 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v250 = &v229 - v30;
  __chkstk_darwin(v29);
  v249 = &v229 - v31;
  v242 = type metadata accessor for RawSearchResult();
  v239 = *(v242 - 8);
  v32 = *(v239 + 64);
  v33 = __chkstk_darwin(v242);
  v238 = &v229 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v248 = &v229 - v35;
  v36 = type metadata accessor for TimeBasedKey();
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36);
  v40 = &v229 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38);
  v232 = (&v229 - v42);
  v43 = __chkstk_darwin(v41);
  v237 = (&v229 - v44);
  v45 = __chkstk_darwin(v43);
  v235 = &v229 - v46;
  v47 = __chkstk_darwin(v45);
  v256 = (&v229 - v48);
  __chkstk_darwin(v47);
  v257 = (&v229 - v49);
  v266 = type metadata accessor for UUID();
  v270 = *(v266 - 8);
  v50 = *(v270 + 64);
  v51 = __chkstk_darwin(v266);
  v245 = &v229 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v243 = &v229 - v54;
  v55 = __chkstk_darwin(v53);
  v240 = &v229 - v56;
  __chkstk_darwin(v55);
  v259 = &v229 - v57;
  v258 = type metadata accessor for BeaconPayloadv1();
  v58 = *(*(v258 - 8) + 64);
  v59 = __chkstk_darwin(v258);
  v61 = (&v229 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __chkstk_darwin(v59);
  v64 = (&v229 - v63);
  v65 = __chkstk_darwin(v62);
  v67 = &v229 - v66;
  v68 = __chkstk_darwin(v65);
  v70 = &v229 - v69;
  __chkstk_darwin(v68);
  v269 = (&v229 - v71);
  v246 = v36;
  v72 = a5;
  v73 = a5 + *(v36 + 24);
  v74 = *(v73 + 16);
  v75 = *(v73 + 24);
  sub_100017D5C(v271, a3);
  v76 = PublicKey.advertisement.getter(v74, v75);
  v78 = v77;
  v268 = a3;
  v79 = a3 >> 62;
  v233 = v40;
  if ((a3 >> 62) > 1)
  {
    v80 = 0;
    if (v79 != 2)
    {
      goto LABEL_10;
    }

    v82 = v271[2];
    v81 = v271[3];
    v80 = v81 - v82;
    if (!__OFSUB__(v81, v82))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v79)
  {
    v80 = BYTE6(v268);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v271), v271))
  {
    __break(1u);
    goto LABEL_62;
  }

  v80 = HIDWORD(v271) - v271;
LABEL_10:
  v267 = v72;
  sub_100A2A240(3);
  v84 = v83;
  v85 = v260;
  if (v80 >= v84)
  {
    v91 = v261;
    sub_100A2AA58(v85, v271, v268, v76, v78, v61);
    v87 = v269;
    v88 = v270;
    v89 = v267;
    v261 = v91;
    v90 = v259;
    if (!v91)
    {
LABEL_22:
      sub_10062CC64(v61, v67, type metadata accessor for BeaconPayloadv1);
      sub_10062CC64(v67, v70, type metadata accessor for BeaconPayloadv1);
      sub_10062CC64(v70, v87, type metadata accessor for BeaconPayloadv1);
      v107 = v258;
      if (v262)
      {
        LODWORD(v259) = 13;
        v108 = &type metadata for SecondaryIndex;
        v109 = sub_10022A4D4();
      }

      else
      {
        LODWORD(v259) = 7;
        v108 = &type metadata for PrimaryWildIndex;
        v109 = sub_10022A528();
      }

      v110 = *v89;
      v274[3] = v108;
      v274[4] = v109;
      v274[0] = v110;
      v231 = *(v87 + v107[10]);
      v111 = v252[2];
      v112 = v249;
      v113 = v263;
      v111(v249, v87 + v107[5], v263);
      v12 = *(v87 + v107[7]);
      v10 = *(v87 + v107[8]);
      v11 = *(v87 + v107[9]);
      v114 = *(v247 + 24);
      v257 = a9;
      v115 = v251;
      sub_1000D2A70(a9 + v114, v251, &unk_101696900, &unk_10138B1E0);
      v72 = v88 + 16;
      v116 = *(v88 + 16);
      v117 = v253;
      v260 = v116;
      (v116)(v253, v265, v266);
      v118 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
      sub_10001F280(v274, v117 + *(v118 + 20));
      (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
      v76 = v241;
      v119 = HIDWORD(v241);
      v230 = HIDWORD(v241);
      if (v241 == 3)
      {
        LODWORD(v119) = 0;
      }

      LODWORD(v241) = v119;
      v111(v250, v112, v113);
      sub_1000D2A70(v115, v254, &unk_101696900, &unk_10138B1E0);
      sub_1000D2A70(v117, v255, &unk_1016C1120, &qword_1013C49D0);
      if ((v262 & 1) == 0)
      {
        a3 = v240;
        UUID.init()();
        v120 = v266;
LABEL_32:
        LODWORD(v240) = v76 == 3;
        sub_10000B3A8(v253, &unk_1016C1120, &qword_1013C49D0);
        v253 = v76;
        sub_10000B3A8(v251, &unk_101696900, &unk_10138B1E0);
        v122 = v252;
        v123 = v252[1];
        v124 = v249;
        v125 = v263;
        v251 = v252 + 1;
        v249 = v123;
        (v123)(v124, v263);
        v126 = v248;
        *v248 = v231;
        v127 = v242;
        (v122[4])(v126 + *(v242 + 20), v250, v125);
        *(v126 + v127[6]) = v12;
        *(v126 + v127[7]) = v10;
        *(v126 + v127[8]) = v11;
        *(v126 + v127[9]) = v259;
        sub_1000D2AD8(v254, v126 + v127[10], &unk_101696900, &unk_10138B1E0);
        sub_1000D2AD8(v255, v126 + v127[11], &unk_1016C1120, &qword_1013C49D0);
        (*(v270 + 32))(v126 + v127[12], a3, v120);
        v128 = (v126 + v127[13]);
        *v128 = v241;
        v128[1] = v240;
        v129 = *(type metadata accessor for LocationFetcher() + 32);
        v130 = v243;
        v255 = v72;
        (v260)(v243, v265, v120);
        v131 = v267;
        sub_10062CD24(v267, v256, type metadata accessor for TimeBasedKey);
        v132 = v244;
        sub_10062CD24(v257, v244, type metadata accessor for FetchResponse.SearchResult);
        v133 = v271;
        v134 = v268;
        sub_100017D5C(v271, v268);
        v257 = v129;
        v135 = Logger.logObject.getter();
        LODWORD(v127) = static os_log_type_t.default.getter();
        sub_100016590(v133, v134);
        LODWORD(v271) = v127;
        if (os_log_type_enabled(v135, v127))
        {
          v136 = v135;
          v137 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          *v137 = 141561091;
          *(v137 + 4) = 1752392040;
          *(v137 + 12) = 2081;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID);
          v138 = dispatch thunk of CustomStringConvertible.description.getter();
          v140 = v139;
          (*(v270 + 8))(v130, v120);
          v141 = sub_1000136BC(v138, v140, &v272);

          *(v137 + 14) = v141;
          *(v137 + 22) = 2082;
          if (v262)
          {
            v142 = 0x61646E6F6365732ELL;
          }

          else
          {
            v142 = 0x7972616D6972702ELL;
          }

          if (v262)
          {
            v143 = 0xEA00000000007972;
          }

          else
          {
            v143 = 0xE800000000000000;
          }

          v144 = sub_1000136BC(v142, v143, &v272);

          *(v137 + 24) = v144;
          *(v137 + 32) = 2050;
          v145 = *v256;
          sub_10062CBB8(v256, type metadata accessor for TimeBasedKey);
          *(v137 + 34) = v145;
          *(v137 + 42) = 2082;
          v146 = v269;
          swift_beginAccess();
          v147 = *(v258 + 20);
          sub_100009774(&qword_1016969A0, &type metadata accessor for Date);
          v148 = dispatch thunk of CustomStringConvertible.description.getter();
          v150 = sub_1000136BC(v148, v149, &v272);

          *(v137 + 44) = v150;
          *(v137 + 52) = 2082;
          v151 = v132 + *(v247 + 24);
          v152 = Optional.debugDescription.getter();
          v154 = v153;
          sub_10062CBB8(v132, type metadata accessor for FetchResponse.SearchResult);
          v155 = sub_1000136BC(v152, v154, &v272);

          *(v137 + 54) = v155;
          *(v137 + 62) = 2082;
          v156 = sub_100013454(v259);
          v158 = sub_1000136BC(v156, v157, &v272);

          *(v137 + 64) = v158;
          *(v137 + 72) = 2049;
          *(v137 + 74) = v12;
          *(v137 + 82) = 2049;
          *(v137 + 84) = v10;
          *(v137 + 92) = 2050;
          *(v137 + 94) = v11;
          *(v137 + 102) = 2160;
          *(v137 + 104) = 1752392040;
          *(v137 + 112) = 2081;
          v159 = *v146;
          v160 = v146[1];
          sub_100017D5C(*v146, v160);
          sub_100017D5C(v159, v160);
          v161 = static MACAddress.length.getter();
          sub_10002EA98(v161, v159, v160, v273);
          sub_100016590(v159, v160);
          v162 = v273[0];
          v163 = v273[1];
          v164 = Data.hexString.getter();
          v166 = v165;
          sub_100016590(v162, v163);
          v167 = sub_1000136BC(v164, v166, &v272);

          *(v137 + 114) = v167;
          *(v137 + 122) = 2082;
          if (v253 == 3)
          {
            v168 = 0xE300000000000000;
            v169 = 7104878;
          }

          else
          {
            LOBYTE(v273[0]) = v230;
            sub_1002E2724();
            v169 = BinaryInteger.description.getter();
            v168 = v171;
          }

          v172 = sub_1000136BC(v169, v168, &v272);

          *(v137 + 124) = v172;
          _os_log_impl(&_mh_execute_header, v136, v271, "Packet decrypted for beacon %{private,mask.hash}s,\nsequence: %{public}s,\nindex: %{public}llu,\nlocationTimestamp: %{public}s,\nscanDate: %{public}s,\nsource: %{public}s,\nlatitude: %{private}f,\nlongitude: %{private}f,\nhorizontalAccuracy: %{public}f,\nadvertisementAddress: %{private,mask.hash}s,\nhint: %{public}s.", v137, 0x84u);
          swift_arrayDestroy();

          v126 = v248;
          v170 = v269;
          v131 = v267;
        }

        else
        {
          sub_10062CBB8(v256, type metadata accessor for TimeBasedKey);

          sub_10062CBB8(v132, type metadata accessor for FetchResponse.SearchResult);
          (*(v270 + 8))(v130, v120);
          v170 = v269;
        }

        v173 = v258;
        v174 = v245;
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v175 = *(qword_10177B348 + 40);
        v176 = v261;
        OS_dispatch_queue.sync<A>(execute:)();
        v177 = sub_101073524(v273[0]);

        if ((v177 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v271 = a10;
          v178 = *(v246 + 20);
          swift_beginAccess();
          v179 = *(v173 + 20);
          if (DateInterval.contains(_:)())
          {
            v180 = v177 * 60.0;
            v181 = *(v173 + 20);
            v182 = v234;
            DateInterval.start.getter();
            Date.timeIntervalSince(_:)();
            v184 = v183;
            (v249)(v182, v263);
            if (v180 <= fabs(v184))
            {
              v268 = v176;
              v185 = v266;
              (v260)(v174, v265, v266);
              v186 = v232;
              sub_10062CD24(v131, v232, type metadata accessor for TimeBasedKey);
              v187 = v131;
              v188 = v233;
              sub_10062CD24(v187, v233, type metadata accessor for TimeBasedKey);
              v189 = Logger.logObject.getter();
              v190 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v189, v190))
              {
                v191 = swift_slowAlloc();
                v272 = swift_slowAlloc();
                *v191 = 141559043;
                *(v191 + 4) = 1752392040;
                *(v191 + 12) = 2081;
                sub_100009774(&qword_101696930, &type metadata accessor for UUID);
                LODWORD(v267) = v190;
                v192 = v245;
                v193 = dispatch thunk of CustomStringConvertible.description.getter();
                v195 = v194;
                (*(v270 + 8))(v192, v185);
                v196 = sub_1000136BC(v193, v195, &v272);

                *(v191 + 14) = v196;
                *(v191 + 22) = 2050;
                v197 = *v186;
                sub_10062CBB8(v186, type metadata accessor for TimeBasedKey);
                *(v191 + 24) = v197;
                *(v191 + 32) = 2082;
                v198 = *(v246 + 20);
                type metadata accessor for DateInterval();
                sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval);
                v199 = dispatch thunk of CustomStringConvertible.description.getter();
                v201 = v200;
                sub_10062CBB8(v188, type metadata accessor for TimeBasedKey);
                v202 = sub_1000136BC(v199, v201, &v272);
                v170 = v269;

                *(v191 + 34) = v202;
                *(v191 + 42) = 2082;
                v203 = *(v258 + 20);
                sub_100009774(&qword_1016969A0, &type metadata accessor for Date);
                v204 = dispatch thunk of CustomStringConvertible.description.getter();
                v206 = sub_1000136BC(v204, v205, &v272);

                *(v191 + 44) = v206;
                v126 = v248;
                _os_log_impl(&_mh_execute_header, v189, v267, "Calculated model date for beacon %{private,mask.hash}s,\nindex %{public}llu differs from the date from package.\nCalculated date interval %{public}s,\ntimestamp from package %{public}s.", v191, 0x34u);
                swift_arrayDestroy();
              }

              else
              {
                sub_10062CBB8(v186, type metadata accessor for TimeBasedKey);

                sub_10062CBB8(v188, type metadata accessor for TimeBasedKey);
                (*(v270 + 8))(v245, v185);
              }
            }
          }

          else
          {
            v207 = v235;
            sub_10062CD24(v131, v235, type metadata accessor for TimeBasedKey);
            v208 = v237;
            sub_10062CD24(v131, v237, type metadata accessor for TimeBasedKey);
            v209 = Logger.logObject.getter();
            v210 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v209, v210))
            {
              v211 = v207;
              v212 = swift_slowAlloc();
              v213 = swift_slowAlloc();
              v268 = v176;
              v272 = v213;
              *v212 = 136446722;
              v214 = *(v246 + 20);
              type metadata accessor for DateInterval();
              sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval);
              v215 = dispatch thunk of CustomStringConvertible.description.getter();
              v217 = v216;
              sub_10062CBB8(v211, type metadata accessor for TimeBasedKey);
              v218 = sub_1000136BC(v215, v217, &v272);

              *(v212 + 4) = v218;
              *(v212 + 12) = 2082;
              v219 = *(v173 + 20);
              sub_100009774(&qword_1016969A0, &type metadata accessor for Date);
              v220 = dispatch thunk of CustomStringConvertible.description.getter();
              v222 = sub_1000136BC(v220, v221, &v272);

              *(v212 + 14) = v222;
              v170 = v269;
              *(v212 + 22) = 2050;
              v223 = *v237;
              v126 = v248;
              sub_10062CBB8(v237, type metadata accessor for TimeBasedKey);
              *(v212 + 24) = v223;
              _os_log_impl(&_mh_execute_header, v209, v210, "Calculated model date doesn't contains the date from package.\nCalculated date interval %{public}s,\ntimestamp from package %{public}s,\nindex: %{public}llu.", v212, 0x20u);
              swift_arrayDestroy();
            }

            else
            {
              sub_10062CBB8(v208, type metadata accessor for TimeBasedKey);

              sub_10062CBB8(v207, type metadata accessor for TimeBasedKey);
            }
          }

          v173 = v238;
          sub_10062CD24(v126, v238, type metadata accessor for RawSearchResult);
          v174 = v271;
          v177 = *v271;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v174 = v177;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_56;
          }
        }

        v177 = sub_100A5D328(0, *(v177 + 16) + 1, 1, v177);
        *v174 = v177;
LABEL_56:
        v225 = v239;
        v227 = *(v177 + 16);
        v226 = *(v177 + 24);
        if (v227 >= v226 >> 1)
        {
          *v174 = sub_100A5D328(v226 > 1, v227 + 1, 1, v177);
        }

        sub_10062CBB8(v126, type metadata accessor for RawSearchResult);
        v228 = *v174;
        *(v228 + 16) = v227 + 1;
        sub_10062CC64(v173, v228 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v227, type metadata accessor for RawSearchResult);
        sub_100007BAC(v274);
        sub_10062CBB8(v170, type metadata accessor for BeaconPayloadv1);
        return;
      }

      a3 = v240;
      if (qword_101694E00 == -1)
      {
LABEL_30:
        v120 = v266;
        v121 = sub_1000076D4(v266, qword_10177BF20);
        (v260)(a3, v121, v120);
        goto LABEL_32;
      }

LABEL_62:
      swift_once();
      goto LABEL_30;
    }
  }

  else
  {
    v86 = v261;
    sub_100A2B118(v85, v271, v268, v76, v78, v64);
    v87 = v269;
    v88 = v270;
    v89 = v267;
    v261 = v86;
    v90 = v259;
    if (!v86)
    {
      v61 = v64;
      goto LABEL_22;
    }
  }

  v92 = *(type metadata accessor for LocationFetcher() + 32);
  v93 = v266;
  (*(v88 + 16))(v90, v265, v266);
  v94 = v89;
  v95 = v257;
  sub_10062CD24(v94, v257, type metadata accessor for TimeBasedKey);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v271 = swift_slowAlloc();
    v274[0] = v271;
    *v98 = 141558787;
    *(v98 + 4) = 1752392040;
    *(v98 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v99 = dispatch thunk of CustomStringConvertible.description.getter();
    v101 = v100;
    (*(v88 + 8))(v90, v93);
    v102 = sub_1000136BC(v99, v101, v274);

    *(v98 + 14) = v102;
    *(v98 + 22) = 2082;
    if (v262)
    {
      v103 = 0x61646E6F6365732ELL;
    }

    else
    {
      v103 = 0x7972616D6972702ELL;
    }

    if (v262)
    {
      v104 = 0xEA00000000007972;
    }

    else
    {
      v104 = 0xE800000000000000;
    }

    v105 = sub_1000136BC(v103, v104, v274);

    *(v98 + 24) = v105;
    *(v98 + 32) = 2050;
    v106 = *v257;
    sub_10062CBB8(v257, type metadata accessor for TimeBasedKey);
    *(v98 + 34) = v106;
    _os_log_impl(&_mh_execute_header, v96, v97, "Packet decryption failed for beacon %{private,mask.hash}s, sequence: %{public}s, index: %{public}llu.", v98, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_10062CBB8(v95, type metadata accessor for TimeBasedKey);

    (*(v88 + 8))(v90, v93);
  }
}
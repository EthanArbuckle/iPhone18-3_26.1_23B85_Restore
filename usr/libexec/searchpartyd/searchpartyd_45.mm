uint64_t sub_1004ACD20(uint64_t *a1, uint64_t a2)
{
  sub_10001F280(a2, v16);
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000084AC(0, v3[2] + 1, 1, v3);
    *a1 = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    *a1 = sub_1000084AC((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v17;
  v8 = v18;
  v9 = sub_10015049C(v16, v17);
  v10 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  sub_100B039C0(v6, v12, a1, v7, v8);
  return sub_100007BAC(v16);
}

uint64_t sub_1004ACE8C(uint64_t a1)
{
  v2 = type metadata accessor for LocalFindableAccessoryRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v95 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v90 - v10;
  v12 = type metadata accessor for UUID();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  __chkstk_darwin(v12);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OwnedBeaconRecord();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, v101);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177AE10);
    sub_10001F280(a1, v98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v102 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      v26 = v99;
      v25 = v100;
      sub_1000035D0(v98, v99);
      (*(*(*(v25 + 8) + 8) + 32))(v26);
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v27 = v97;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v96 + 8))(v15, v27);
      sub_100007BAC(v98);
      v31 = sub_1000136BC(v28, v30, &v102);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Allowed to locate owned beacon %{private,mask.hash}s.", v23, 0x16u);
      sub_100007BAC(v24);
    }

    else
    {

      sub_100007BAC(v98);
    }

    v49 = type metadata accessor for OwnedBeaconRecord;
    v50 = v19;
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    v5 = v95;
    sub_10002AAA4(v11, v95, type metadata accessor for SharedBeaconRecord);
    My = type metadata accessor for Feature.FindMy();
    v99 = My;
    v100 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v33 = sub_1000280DC(v98);
    (*(*(My - 8) + 104))(v33, enum case for Feature.FindMy.itemSharing(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(v98);
    if ((My & 1) == 0)
    {
      if (v5[v6[13]] == 1 && *&v5[v6[11]] == -1 && *&v5[v6[12]] == -1)
      {
        goto LABEL_38;
      }

LABEL_28:
      if (qword_101694770 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000076D4(v52, qword_10177AE10);
      sub_10001F280(a1, v98);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v102 = v56;
        *v55 = 141558275;
        *(v55 + 4) = 1752392040;
        *(v55 + 12) = 2081;
        v58 = v99;
        v57 = v100;
        sub_1000035D0(v98, v99);
        (*(*(*(v57 + 8) + 8) + 32))(v58);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
        v59 = v97;
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        (*(v96 + 8))(v15, v59);
        sub_100007BAC(v98);
        v63 = sub_1000136BC(v60, v62, &v102);

        *(v55 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v53, v54, "Not locating shared beacon %{private,mask.hash}s.", v55, 0x16u);
        sub_100007BAC(v56);

        sub_1004E4A04(v5, type metadata accessor for SharedBeaconRecord);
LABEL_46:
        v88 = 0;
        goto LABEL_47;
      }

      sub_1004E4A04(v5, type metadata accessor for SharedBeaconRecord);
      goto LABEL_45;
    }

    v34 = v5[v6[16]];
    v35 = v34 != 2;
    v36 = v34 == 5;
    if (*&v5[v6[11]] != -1 || *&v5[v6[12]] != -1)
    {
      v35 = 0;
      if (v34 == 5)
      {
        v36 = v5[v6[13]];
      }

      else
      {
        v36 = 0;
      }

      if (v5[v6[13]] == 1 && v34 == 2)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (qword_101694770 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177AE10);
      sub_10001F280(a1, v98);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v94 = v34 == 5;
        v92 = v34 == 2;
        v40 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v102 = v93;
        *v40 = 141559299;
        *(v40 + 4) = 1752392040;
        *(v40 + 12) = 2081;
        v91 = v36;
        v42 = v99;
        v41 = v100;
        sub_1000035D0(v98, v99);
        (*(*(*(v41 + 8) + 8) + 32))(v42);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
        v43 = v35;
        v44 = v97;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        (*(v96 + 8))(v15, v44);
        sub_100007BAC(v98);
        v48 = sub_1000136BC(v45, v47, &v102);

        *(v40 + 14) = v48;
        *(v40 + 22) = 1024;
        *(v40 + 24) = v92;
        *(v40 + 28) = 1024;
        *(v40 + 30) = v43;
        *(v40 + 34) = 1024;
        *(v40 + 36) = v94;
        *(v40 + 40) = 1024;
        LOBYTE(v43) = v91;
        *(v40 + 42) = v91;
        _os_log_impl(&_mh_execute_header, v38, v39, "Should locate shared beacon? beacon:%{private,mask.hash}s, isExplicitSharedBeacon: %{BOOL}d, isUTSFAutomaticSelfBeacon: %{BOOL}d, isImportedBeacon: %{BOOL}d result: %{BOOL}d.", v40, 0x2Eu);
        sub_100007BAC(v93);

        v5 = v95;

        if (v43)
        {
          goto LABEL_38;
        }
      }

      else
      {

        sub_100007BAC(v98);
        if (v36)
        {
LABEL_38:
          if (qword_101694770 != -1)
          {
            swift_once();
          }

          v76 = type metadata accessor for Logger();
          sub_1000076D4(v76, qword_10177AE10);
          sub_10001F280(a1, v98);
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v77, v78))
          {

            sub_1004E4A04(v5, type metadata accessor for SharedBeaconRecord);
            sub_100007BAC(v98);
            v88 = 1;
            goto LABEL_47;
          }

          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v102 = v80;
          *v79 = 141558275;
          *(v79 + 4) = 1752392040;
          *(v79 + 12) = 2081;
          v82 = v99;
          v81 = v100;
          sub_1000035D0(v98, v99);
          (*(*(*(v81 + 8) + 8) + 32))(v82);
          sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
          v83 = v97;
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v85;
          (*(v96 + 8))(v15, v83);
          sub_100007BAC(v98);
          v87 = sub_1000136BC(v84, v86, &v102);

          *(v79 + 14) = v87;
          _os_log_impl(&_mh_execute_header, v77, v78, "Allowed to locate shared/imported self-beacon %{private,mask.hash}s.", v79, 0x16u);
          sub_100007BAC(v80);

          v51 = type metadata accessor for SharedBeaconRecord;
          goto LABEL_42;
        }
      }

      goto LABEL_28;
    }

    if (v34 == 4)
    {
      v35 = 1;
      if ((v5[v6[13]] & 1) == 0)
      {
        v36 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      if (v5[v6[13]] != 1)
      {
        v36 = 0;
        v35 = v34 == 1;
        goto LABEL_16;
      }

      if ((v34 - 1) > 1)
      {
        v35 = 0;
        goto LABEL_16;
      }
    }

LABEL_15:
    v36 = 1;
    goto LABEL_16;
  }

  if (!swift_dynamicCast())
  {
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177AE10);
    sub_10001F280(a1, v98);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v102 = v68;
      *v67 = 141558275;
      *(v67 + 4) = 1752392040;
      *(v67 + 12) = 2081;
      v70 = v99;
      v69 = v100;
      sub_1000035D0(v98, v99);
      (*(*(*(v69 + 8) + 8) + 32))(v70);
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v71 = v97;
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (*(v96 + 8))(v15, v71);
      sub_100007BAC(v98);
      v75 = sub_1000136BC(v72, v74, &v102);

      *(v67 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v65, v66, "Unknown beacon type, not locating %{private,mask.hash}s.", v67, 0x16u);
      sub_100007BAC(v68);

      goto LABEL_46;
    }

LABEL_45:
    sub_100007BAC(v98);
    goto LABEL_46;
  }

  v51 = type metadata accessor for LocalFindableAccessoryRecord;
LABEL_42:
  v49 = v51;
  v50 = v5;
LABEL_43:
  sub_1004E4A04(v50, v49);
  v88 = 1;
LABEL_47:
  sub_100007BAC(v101);
  return v88;
}

uint64_t sub_1004ADD04(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v122 = a6;
  v120 = a5;
  v129 = a4;
  v119 = a2;
  v128 = type metadata accessor for DispatchWorkItemFlags();
  v127 = *(v128 - 8);
  v10 = *(v127 + 64);
  __chkstk_darwin(v128);
  v125 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DispatchQoS();
  v124 = *(v126 - 8);
  v12 = *(v124 + 64);
  __chkstk_darwin(v126);
  v123 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v116 = *(v14 - 8);
  v117 = *(v116 + 64);
  __chkstk_darwin(v14 - 8);
  v118 = &v113 - v15;
  v16 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v140 = (&v113 - v18);
  *&v139 = type metadata accessor for OwnedBeaconGroup(0);
  v19 = *(v139 - 8);
  v20 = *(v19 + 8);
  v21 = __chkstk_darwin(v139);
  v133 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v132 = &v113 - v24;
  __chkstk_darwin(v23);
  v131 = &v113 - v25;
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v113 - v28;
  v30 = type metadata accessor for UUID();
  v115 = *(v30 - 8);
  v31 = *(v115 + 64);
  v32 = __chkstk_darwin(v30);
  v137 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v134 = &v113 - v34;
  if (qword_101694770 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v35 = type metadata accessor for Logger();
    v36 = sub_1000076D4(v35, qword_10177AE10);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v143 = v36;
    v144 = v30;
    v121 = a3;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&aBlock = v41;
      *v40 = 136446210;
      sub_1004E3130();
      v42 = Set.description.getter();
      v44 = sub_1000136BC(v42, v43, &aBlock);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Latest locations requested for sources %{public}s.", v40, 0xCu);
      sub_100007BAC(v41);
    }

    v45 = *(a1 + 16);
    v142 = v7;
    if (!v45)
    {
      break;
    }

    v46 = sub_1004AC2CC(a1);
    v48 = &_swiftEmptySetSingleton;
    v154 = &_swiftEmptySetSingleton;
    a1 = v46[2];
    v141 = v46;
    v138 = a1;
    if (!a1)
    {
      goto LABEL_15;
    }

    v49 = (v46 + 4);
    v50 = (v115 + 48);
    v136 = (v115 + 32);
    v114 = v19;
    v51 = (v19 + 48);
    v52 = &qword_1016980D0;
    v135 = (v115 + 8);
    v53 = v134;
    v130 = v29;
    do
    {
      sub_10001F280(v49, &aBlock);
      v58 = v147;
      v57 = v148;
      sub_1000035D0(&aBlock, v147);
      (*(v57 + 25))(v58, v57);
      v59 = v144;
      if ((*v50)(v29, 1, v144) == 1)
      {
        v54 = v29;
        v55 = v52;
        v56 = &unk_10138F3B0;
LABEL_8:
        sub_10000B3A8(v54, v55, v56);
        goto LABEL_9;
      }

      (*v136)(v53, v29, v59);
      v60 = v142[35];
      v61 = v140;
      sub_100AC53EC(v53, v140);
      if ((*v51)(v61, 1, v139) == 1)
      {
        (*v135)(v53, v59);
        v54 = v61;
        v55 = &unk_1016AF8B0;
        v56 = &unk_1013A0700;
        goto LABEL_8;
      }

      v62 = v52;
      v63 = v51;
      v64 = v131;
      sub_10002AAA4(v61, v131, type metadata accessor for OwnedBeaconGroup);
      v65 = v133;
      sub_1004E46C0(v64, v133, type metadata accessor for OwnedBeaconGroup);
      v66 = v132;
      sub_100DEDBEC(v132, v65);
      v67 = v66;
      v53 = v134;
      sub_1004E4A04(v67, type metadata accessor for OwnedBeaconGroup);
      v68 = v64;
      v51 = v63;
      v52 = v62;
      v29 = v130;
      sub_1004E4A04(v68, type metadata accessor for OwnedBeaconGroup);
      (*v135)(v53, v59);
LABEL_9:
      sub_100007BAC(&aBlock);
      v49 += 40;
      --a1;
    }

    while (a1);
    v48 = v154;
    a1 = v138;
    v19 = v114;
LABEL_15:
    a3 = v48[2];
    v135 = v48;
    if (!a3)
    {
      v136 = _swiftEmptyArrayStorage;
      v7 = v141;
      if (!a1)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }

    v69 = sub_1003A8790(a3, 0);
    v70 = sub_1003AA03C(&aBlock, v69 + ((v19[80] + 32) & ~v19[80]), a3, v48);
    v29 = *(&aBlock + 1);
    v19 = v147;

    result = sub_1000128F8();
    if (v70 != a3)
    {
      __break(1u);
      return result;
    }

    v136 = v69;
    v7 = v141;
    if (!a1)
    {
LABEL_37:

      goto LABEL_42;
    }

LABEL_31:
    v30 = 0;
    v84 = (v7 + 4);
    v140 = (v115 + 8);
    *&v47 = 141558275;
    v139 = v47;
    while (v30 < v7[2])
    {
      sub_10001F280(v84, &aBlock);
      sub_10001F280(&aBlock, &v151);
      v85 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v29))
      {
        a3 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v150 = v86;
        *a3 = v139;
        *(a3 + 4) = 1752392040;
        *(a3 + 12) = 2081;
        v88 = v152;
        v87 = v153;
        sub_1000035D0(&v151, v152);
        v89 = v137;
        (*(*(*(v87 + 8) + 8) + 32))(v88);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
        v90 = v144;
        v91 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v92;
        v93 = v90;
        a1 = v138;
        (*v140)(v89, v93);
        sub_100007BAC(&v151);
        v94 = sub_1000136BC(v91, v19, &v150);

        *(a3 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v85, v29, "Latest locations requested for beacon %{private,mask.hash}s.", a3, 0x16u);
        sub_100007BAC(v86);
        v7 = v141;
      }

      else
      {

        sub_100007BAC(&v151);
      }

      ++v30;
      sub_100007BAC(&aBlock);
      v84 += 40;
      if (a1 == v30)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

  a3 = v7[35];
  v72 = sub_100007F54();
  v30 = v72;
  v73 = v72[2];
  if (v73)
  {
    a1 = 0;
    v74 = (v72 + 4);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      if (a1 >= *(v30 + 16))
      {
        goto LABEL_46;
      }

      sub_10001F280(v74, &aBlock);
      v75 = v147;
      v29 = v148;
      sub_1000035D0(&aBlock, v147);
      if (sub_1012BD9FC(v75, v29))
      {
        sub_100007BAC(&aBlock);
      }

      else
      {
        sub_10000A748(&aBlock, &v151);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v154 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v7[2] + 1, 1);
          v7 = v154;
        }

        v29 = v7[2];
        v77 = v7[3];
        if (v29 >= v77 >> 1)
        {
          sub_100025B1C((v77 > 1), (v29 + 1), 1);
        }

        v78 = v152;
        v79 = v153;
        v80 = sub_10015049C(&v151, v152);
        v81 = *(*(v78 - 8) + 64);
        __chkstk_darwin(v80);
        v19 = &v113 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v83 + 16))(v19);
        sub_1006252D4(v29, v19, &v154, v78, v79);
        sub_100007BAC(&v151);
        v7 = v154;
      }

      ++a1;
      v74 += 40;
    }

    while (v73 != a1);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v136 = sub_100008CA0();
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&_mh_execute_header, v95, v96, "Latest locations requested default empty array []. Returning all owned beacons.", v97, 2u);
  }

LABEL_42:
  v98 = v142;
  v99 = sub_1004DB99C(v7);

  v100 = *(v98 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_appActivity);
  sub_1000138F0();
  v144 = v98[16];
  v101 = v118;
  sub_1000D2A70(v119, v118, &unk_101696900, &unk_10138B1E0);
  v102 = (*(v116 + 80) + 40) & ~*(v116 + 80);
  v103 = (v117 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = swift_allocObject();
  v104[2] = v98;
  v104[3] = v99;
  v104[4] = v121;
  sub_1000D2AD8(v101, v104 + v102, &unk_101696900, &unk_10138B1E0);
  *(v104 + v103) = v136;
  v105 = (v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8));
  v106 = v122;
  *v105 = v120;
  v105[1] = v106;
  v148 = sub_1004E3064;
  v149 = v104;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v146 = sub_100006684;
  v147 = &unk_101623000;
  v107 = _Block_copy(&aBlock);

  v108 = v123;
  static DispatchQoS.unspecified.getter();
  v151 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v109 = v125;
  v110 = v128;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v107);
  (*(v127 + 8))(v109, v110);
  (*(v124 + 8))(v108, v126);

  if (v129)
  {
    v111 = type metadata accessor for Transaction();
    __chkstk_darwin(v111);
    *(&v113 - 2) = v98;
    *(&v113 - 1) = v99;
    static Transaction.named<A>(_:with:)();
  }

  v112 = *(v98 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
  return sub_10089193C();
}

uint64_t sub_1004AED5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a7;
  v47 = a5;
  v44 = a6;
  v45 = a3;
  v42 = a4;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v8 - 8);
  v43 = &v41 - v10;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v15 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  LOBYTE(v15) = sub_101073F84(v51);

  if (v15)
  {
    sub_1004AF1D8(a2);
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = a2 + 32;
    v18 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001F280(v17, &v51);
      v19 = v52;
      v20 = v53;
      sub_1000035D0(&v51, v52);
      if ((*(v20 + 112))(v19, v20))
      {
        sub_10000A748(&v51, v48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54[0] = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v18[2] + 1, 1);
          v18 = v54[0];
        }

        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          sub_100025B1C((v22 > 1), v23 + 1, 1);
        }

        v24 = v49;
        v25 = v50;
        v26 = sub_10015049C(v48, v49);
        v27 = *(*(v24 - 8) + 64);
        __chkstk_darwin(v26);
        v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v30 + 16))(v29);
        sub_1006252D4(v23, v29, v54, v24, v25);
        sub_100007BAC(v48);
        v18 = v54[0];
      }

      else
      {
        sub_100007BAC(&v51);
      }

      v17 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
  v32 = v43;
  sub_1000D2A70(v42, v43, &unk_101696900, &unk_10138B1E0);
  v33 = (*(v41 + 80) + 48) & ~*(v41 + 80);
  v34 = (v9 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v42 = v14;
  v37 = v45;
  v36[4] = a2;
  v36[5] = v37;
  sub_1000D2AD8(v32, v36 + v33, &unk_101696900, &unk_10138B1E0);
  v38 = v46;
  *(v36 + v34) = v47;
  *(v36 + v35) = v18;
  v39 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v39 = v44;
  v39[1] = v38;

  sub_100A838D4(0, 0, v42, &unk_1013AAFA8, v36);
}

void sub_1004AF1D8(unint64_t a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v137 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v136 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v133 = *(v134 - 8);
  v8 = *(v133 + 64);
  __chkstk_darwin(v134);
  v135 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for LocationFetcher();
  v10 = *(v139 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v139);
  __chkstk_darwin(v12);
  v143 = (&v132 - v13);
  v14 = type metadata accessor for UUID();
  v154 = *(v14 - 8);
  v15 = *(v154 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v157 = &v132 - v20;
  v21 = __chkstk_darwin(v19);
  v152 = &v132 - v22;
  v23 = __chkstk_darwin(v21);
  v146 = &v132 - v24;
  __chkstk_darwin(v23);
  v26 = &v132 - v25;
  v27 = [objc_opt_self() mainBundle];
  v28 = [v27 bundleIdentifier];

  v142 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v11;
  v140 = v10;
  v138 = v2;
  if (v28)
  {
    v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v156 = v29;
  }

  else
  {
    v158 = 0;
    v156 = 0;
  }

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10138C0D0;
  v31 = SPBeaconTypeDurian;
  v32 = SPBeaconTypeAccessory;
  *(v30 + 32) = SPBeaconTypeDurian;
  *(v30 + 40) = v32;
  v33 = SPBeaconTypeHele;
  v34 = SPBeaconTypeSelfBeaconing;
  *(v30 + 48) = SPBeaconTypeHele;
  *(v30 + 56) = v34;
  v35 = SPBeaconTypeVirtualMeDevice;
  *(v30 + 64) = SPBeaconTypeVirtualMeDevice;
  v36 = qword_101694940;
  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  if (v36 != -1)
  {
LABEL_50:
    swift_once();
  }

  v42 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v43 = sub_1010741C0(v167);

  My = type metadata accessor for Feature.FindMy();
  *(&v168 + 1) = My;
  *&v169 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v45 = sub_1000280DC(&v167);
  (*(*(My - 8) + 104))(v45, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v167);
  *&v167 = v43;
  BYTE8(v167) = 1;
  *&v168 = &off_101609108;
  BYTE8(v168) = 0;
  *&v169 = v158;
  *(&v169 + 1) = v156;
  *&v170 = v30;
  BYTE8(v170) = My & 1;
  v171 = 0uLL;
  v172 = 1;
  v46 = *(a1 + 16);
  v47 = _swiftEmptyArrayStorage;
  v153 = v46;
  v132 = a1;
  if (v46)
  {
    v164 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v46, 0);
    v47 = v164;
    v48 = a1 + 32;
    do
    {
      sub_10001F280(v48, &v160);
      v50 = v161;
      v49 = v162;
      sub_1000035D0(&v160, v161);
      (*(*(v49[1] + 1) + 32))(v50);
      sub_100007BAC(&v160);
      v164 = v47;
      a1 = v47[2];
      v51 = v47[3];
      if (a1 >= v51 >> 1)
      {
        sub_101123D4C(v51 > 1, a1 + 1, 1);
        v47 = v164;
      }

      v47[2] = a1 + 1;
      (*(v154 + 32))(v47 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * a1, v26, v14);
      v48 += 40;
      --v46;
    }

    while (v46);
  }

  v52 = sub_10000954C(v47);

  v53 = sub_100A45230(v52);

  v54 = *(v53 + 56);
  v158 = v53 + 56;
  v55 = 1 << *(v53 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & v54;
  v30 = (v55 + 63) >> 6;
  v156 = v154 + 16;
  v58 = (v154 + 8);
  v155 = v53;

  v59 = 0;
  *&v60 = 141558275;
  v144 = v60;
  v26 = v146;
  v151 = v30;
  while (v57)
  {
LABEL_20:
    v63 = *(v154 + 16);
    v63(v26, *(v155 + 48) + *(v154 + 72) * (__clz(__rbit64(v57)) | (v59 << 6)), v14);
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177AE10);
    v63(v152, v26, v14);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v149 = v65;
      v68 = v67;
      v148 = swift_slowAlloc();
      *&v160 = v148;
      *v68 = v144;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v147 = v66;
      v69 = v152;
      v150 = v58 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v73 = *v58;
      (*v58)(v69, v14);
      v74 = sub_1000136BC(v70, v72, &v160);

      *(v68 + 14) = v74;
      v75 = v149;
      _os_log_impl(&_mh_execute_header, v149, v147, "Added disk locating state for beacon: %{private,mask.hash}s.", v68, 0x16u);
      a1 = v148;
      sub_100007BAC(v148);

      v61 = v73;
      v26 = v146;
    }

    else
    {

      v61 = *v58;
      (*v58)(v152, v14);
    }

    v30 = v151;
    v57 &= v57 - 1;
    v61(v26, v14);
  }

  while (1)
  {
    v62 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v62 >= v30)
    {
      break;
    }

    v57 = *(v158 + 8 * v62);
    ++v59;
    if (v57)
    {
      v59 = v62;
      goto LABEL_20;
    }
  }

  v76 = v155;

  if (*(v76 + 16))
  {
    v77 = *(v145 + 280);
    v165 = &_s13DefaultPolicyVN;
    v166 = sub_100111A48();
    v78 = swift_allocObject();
    v164 = v78;
    v79 = v170;
    *(v78 + 3) = v169;
    *(v78 + 4) = v79;
    *(v78 + 5) = v171;
    *(v78 + 96) = v172;
    v80 = v168;
    *(v78 + 1) = v167;
    *(v78 + 2) = v80;
    v81 = qword_101694920;
    v152 = v77;

    if (v81 != -1)
    {
      swift_once();
    }

    v150 = qword_10177B2E8;

    v151 = sub_100908168(_swiftEmptyArrayStorage);
    v149 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v148 = "apply(changeSet:)";
    (*(v133 + 104))(v135, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v134);

    static DispatchQoS.unspecified.getter();
    *&v160 = _swiftEmptyArrayStorage;
    sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v82 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v83 = v143;
    v143[2] = v82;
    v84 = v139;
    v85 = *(v139 + 40);
    v86 = type metadata accessor for DeviceIdentityUtility();
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    v89 = swift_allocObject();
    swift_defaultActor_initialize();
    v90 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
    v91 = type metadata accessor for Date();
    (*(*(v91 - 8) + 56))(v89 + v90, 1, 1, v91);
    *(v89 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
    *(v89 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
    *(v89 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
    *(v83 + v85) = v89;
    v92 = v84[11];
    v93 = type metadata accessor for BeaconObservationStore();
    v162 = &off_101632E88;
    v163 = &off_101613BE0;
    v161 = v93;
    v94 = v150;
    *&v160 = v150;
    type metadata accessor for MemberCircleRevokeManager();
    v95 = swift_allocObject();
    *(v95 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_1000BB3F0(&v160, (v95 + 32));
    *(v83 + v92) = v95;
    v96 = v84[12];
    type metadata accessor for MemberCircleRevokeAssistant();
    *(v83 + v96) = swift_allocObject();
    *v83 = v152;
    sub_10001F280(&v164, (v83 + 3));
    v97 = v84[8];

    sub_1005CB7C8(&v164, v83 + v97);
    sub_100007BAC(&v164);
    v83[1] = v94;
    *(v83 + v84[9]) = v151;
    *(v95 + 24) = &off_1016634D8;
    swift_unknownObjectWeakAssign();

    if (v153)
    {
      v98 = 0;
      v152 = (v132 + 32);
      v151 = _swiftEmptyArrayStorage;
      v99 = v155;
      do
      {
        sub_10001F280(&v152[40 * v98], &v160);
        v102 = v161;
        v101 = v162;
        sub_1000035D0(&v160, v161);
        (*(*(v101[1] + 1) + 32))(v102);
        if (*(v99 + 16) && (v103 = *(v99 + 40), sub_1004DB51C(&qword_1016967B0, &type metadata accessor for UUID), v104 = dispatch thunk of Hashable._rawHashValue(seed:)(), v105 = -1 << *(v99 + 32), v106 = v104 & ~v105, ((*(v158 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) != 0))
        {
          v107 = ~v105;
          v108 = *(v154 + 72);
          v109 = *(v154 + 16);
          while (1)
          {
            v109(v18, *(v99 + 48) + v108 * v106, v14);
            sub_1004DB51C(&qword_1016984A0, &type metadata accessor for UUID);
            v110 = dispatch thunk of static Equatable.== infix(_:_:)();
            v111 = *v58;
            (*v58)(v18, v14);
            if (v110)
            {
              break;
            }

            v106 = (v106 + 1) & v107;
            v99 = v155;
            if (((*(v158 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          v111(v157, v14);
          sub_10000A748(&v160, &v164);
          v112 = v151;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v159 = v112;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100025B1C(0, *(v112 + 16) + 1, 1);
            v112 = v159;
          }

          v100 = v153;
          v115 = *(v112 + 16);
          v114 = *(v112 + 24);
          if (v115 >= v114 >> 1)
          {
            sub_100025B1C((v114 > 1), v115 + 1, 1);
          }

          v116 = v165;
          v117 = v166;
          v118 = sub_10015049C(&v164, v165);
          v119 = *(v116[-1].Description + 8);
          __chkstk_darwin(v118);
          v121 = &v132 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v122 + 16))(v121);
          sub_1006252D4(v115, v121, &v159, v116, v117);
          sub_100007BAC(&v164);
          v151 = v159;
          v99 = v155;
        }

        else
        {
LABEL_29:
          (*v58)(v157, v14);
          sub_100007BAC(&v160);
          v100 = v153;
        }

        ++v98;
      }

      while (v98 != v100);
    }

    else
    {
      v151 = _swiftEmptyArrayStorage;
      v99 = v155;
    }

    v127 = swift_allocObject();
    *(v127 + 16) = v145;
    *(v127 + 24) = v99;
    type metadata accessor for Transaction();
    v128 = v143;
    v129 = v142;
    sub_1004E46C0(v143, v142, type metadata accessor for LocationFetcher);
    v130 = (*(v140 + 80) + 40) & ~*(v140 + 80);
    v131 = swift_allocObject();
    v131[2] = sub_1004E2E38;
    v131[3] = v127;
    v131[4] = v151;
    sub_10002AAA4(v129, v131 + v130, type metadata accessor for LocationFetcher);

    static Transaction.asyncTask(name:block:)();

    sub_1004E4A04(v128, type metadata accessor for LocationFetcher);
  }

  else
  {
    sub_1001119F4(&v167);

    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_1000076D4(v123, qword_10177AE10);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "No new beacons to locate on disk. Skipping.", v126, 2u);
    }
  }
}

uint64_t sub_1004B05A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = v25;
  v8[39] = v26;
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v8[40] = v9;
  v10 = *(v9 - 8);
  v8[41] = v10;
  v11 = *(v10 + 64) + 15;
  v8[42] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v8[43] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v8[44] = v13;
  v14 = *(v13 - 8);
  v8[45] = v14;
  v15 = *(v14 + 64) + 15;
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&unk_101696940, &unk_10138B210) - 8) + 64) + 15;
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v17 = type metadata accessor for BeaconEstimatedLocation();
  v8[51] = v17;
  v18 = *(v17 - 8);
  v8[52] = v18;
  v19 = *(v18 + 64) + 15;
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  v8[61] = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  v8[62] = v21;
  v22 = *(v21 - 8);
  v8[63] = v22;
  v8[64] = *(v22 + 64);
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();

  return _swift_task_switch(sub_1004B0904, 0, 0);
}

uint64_t sub_1004B0904()
{
  v1 = v0[72];
  v0[23] = 0;
  UUID.init()();
  v2 = type metadata accessor for AnalyticsEvent(0);
  v0[73] = v2;
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v0[74] = v5;
  swift_defaultActor_initialize();
  *(v5 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v7 = type metadata accessor for DispatchTime();
  v0[75] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[76] = v9;
  v0[77] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(&v5[v6], 1, 1, v7);
  v9(&v5[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v7);
  *(v5 + 15) = 0xD00000000000002ELL;
  *(v5 + 16) = 0x8000000101356C90;

  return _swift_task_switch(sub_1004B0A70, v5, 0);
}

uint64_t sub_1004B0A70()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[61];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v0[24] = 0;
  v0[25] = _swiftEmptyDictionarySingleton;
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v0[78] = v8;
  *v8 = v0;
  v8[1] = sub_1004B0B80;

  return daemon.getter();
}

uint64_t sub_1004B0B80(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 624);
  v12 = *v1;
  *(v3 + 632) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 640) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1004B0D5C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004B0D5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 640);
  v8 = *v2;
  v3[81] = a1;
  v3[82] = v1;

  if (v1)
  {
    v5 = sub_1004B528C;
  }

  else
  {
    v6 = v3[79];

    v5 = sub_1004B0E7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004B0E7C()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 264);
  v3 = *(v2 + 16);
  *(v0 + 664) = v3;
  v4 = *(v0 + 656);
  *(v0 + 672) = 0u;
  if (v3)
  {
    *(v0 + 704) = 0uLL;
    *(v0 + 696) = v4;
    *(v0 + 720) = 1;
    v5 = *(v0 + 568);
    sub_10001F280(v2 + 32, v0 + 16);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v6);
    (*(*(*(v7 + 8) + 8) + 32))(v6);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = sub_1000035D0((v0 + 16), v9);
    v11 = swift_task_alloc();
    *(v0 + 728) = v11;
    *v11 = v0;
    v11[1] = sub_1004B1608;
    v12 = *(v0 + 648);

    return sub_100E76290(v10, v12, v9, v8);
  }

  v14 = (v0 + 256);
  *(v0 + 688) = v4;
  v15 = *(v0 + 288);
  v16 = *(v15 + 16);
  if (!v16)
  {
    v72 = 0;
LABEL_62:
    *v14 = v72;
    v70 = v14;
    goto LABEL_63;
  }

  v17 = 0;
  v18 = *(v0 + 328);
  v79 = v1;
  v80 = *(v0 + 320);
  v82 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v81 = *(v18 + 72);
  v78 = *(v15 + 16);
  while (2)
  {
    v83 = v17 + 1;
    sub_1004E46C0(v82 + v17 * v81, *(v0 + 336), type metadata accessor for OwnedBeaconGroup);
    v22 = sub_100519FB0();
    v23 = v22;
    v24 = v22 + 56;
    v25 = -1 << *(v22 + 32);
    if (-v25 < 64)
    {
      v26 = ~(-1 << -v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v22 + 56);
    v28 = (63 - v25) >> 6;

    for (i = 0; v27; v1 = v79)
    {
LABEL_20:
      while (1)
      {
        v31 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        (*(*(v0 + 504) + 16))(*(v0 + 520), *(v23 + 48) + *(v1 + 72) * (v31 | (i << 6)), *(v0 + 496));
        v32 = *(v0 + 200);
        if (*(v32 + 16))
        {
          v33 = sub_1000210EC(*(v0 + 520));
          if (v34)
          {
            break;
          }
        }

        v19 = (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
        if (!v27)
        {
          goto LABEL_16;
        }
      }

      v35 = *(v0 + 520);
      v36 = *(v0 + 496);
      v37 = *(*(v0 + 504) + 8);
      *(*(v32 + 56) + 8 * v33);
      v37(v35, v36);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v19 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v78;
    }

    while (1)
    {
LABEL_16:
      v30 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v30 >= v28)
      {
        break;
      }

      v27 = *(v24 + 8 * v30);
      ++i;
      if (v27)
      {
        i = v30;
        goto LABEL_20;
      }
    }

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      v39 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_28;
      }

LABEL_7:
      sub_1004E4A04(*(v0 + 336), type metadata accessor for OwnedBeaconGroup);
LABEL_8:

      goto LABEL_9;
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v19;
    if (!v19)
    {
      goto LABEL_7;
    }

LABEL_28:
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
    {
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = _swiftEmptyArrayStorage[4];
        goto LABEL_31;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_31:
    v85 = v40;
    if (_swiftEmptyArrayStorage >> 62)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v41 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = *(v0 + 336);
    v42 = *(*&v19[*(v80 + 40)] + 16);
    if (v42 > 0xFF)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v41 != v42)
    {
      sub_1004E4A04(v19, type metadata accessor for OwnedBeaconGroup);

      goto LABEL_8;
    }

    v43 = 0;
    v84 = v39;
    while (v39 != v43)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v19 = _swiftEmptyArrayStorage[v43 + 4];
      }

      v44 = v19;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_67;
      }

      v45 = *(v0 + 384);
      v46 = *(v0 + 360);
      v47 = *(v0 + 368);
      v48 = *(v0 + 352);
      v49 = v85;
      v50 = [v44 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = [v49 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v51) = static Date.== infix(_:_:)();
      v52 = *(v46 + 8);
      v52(v47, v48);
      v52(v45, v48);
      if ((v51 & 1) == 0 || ([v44 longitude], v54 = v53, objc_msgSend(v49, "longitude"), v54 != v55) || (objc_msgSend(v44, "latitude"), v57 = v56, objc_msgSend(v49, "latitude"), v57 != v58))
      {

LABEL_50:
        v63 = *(v0 + 336);

        v64 = v63;
        goto LABEL_52;
      }

      [v44 horizontalAccuracy];
      v60 = v59;
      [v49 horizontalAccuracy];
      v62 = v61;

      ++v43;
      v39 = v84;
      if (v60 != v62)
      {
        goto LABEL_50;
      }
    }

    v65 = *(v0 + 336);

    v66 = *(v80 + 24);
    v67 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFA5A0(v85, v65 + v66, isUniquelyReferenced_nonNull_native);
    *(v0 + 200) = v67;
    v64 = v65;
LABEL_52:
    v19 = sub_1004E4A04(v64, type metadata accessor for OwnedBeaconGroup);
    v16 = v78;
    v1 = v79;
LABEL_9:
    v17 = v83;
    if (v83 != v16)
    {
      continue;
    }

    break;
  }

  v69 = *(v0 + 680);
  *(v0 + 256) = 0;
  v70 = (v0 + 256);
  if (v69 > 0)
  {
    v71 = *(v0 + 672) / v69;
    if (COERCE__INT64(fabs(v71)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_71;
    }

    v14 = (v0 + 256);
    if (v71 <= -9.22337204e18)
    {
LABEL_72:
      __break(1u);
    }

    else if (v71 < 9.22337204e18)
    {
      v72 = v71;
      goto LABEL_62;
    }

    __break(1u);
    return _swift_task_switch(v19, v20, v21);
  }

LABEL_63:
  v73 = *(v0 + 592);
  v74 = *(v0 + 576);
  v75 = *(v0 + 296);
  v76 = *(v0 + 264);
  v77 = swift_task_alloc();
  *(v0 + 936) = v77;
  v77[2] = v76;
  v77[3] = v75;
  v77[4] = v74;
  v77[5] = v0 + 192;
  v77[6] = v0 + 184;
  v77[7] = v70;
  v19 = sub_1004B4DAC;
  v20 = v73;
  v21 = 0;

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1004B1608(uint64_t a1)
{
  v2 = *(*v1 + 728);
  v3 = *(*v1 + 648);
  v5 = *v1;
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_1004B1720, v3, 0);
}

uint64_t sub_1004B1720()
{
  v1 = v0[81];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[63];
  v5 = v0[62];
  v6 = *(v4 + 16);
  v0[93] = v6;
  v0[94] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v5);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[95] = v8;
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, v3, v5);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[96] = v10;
  v11 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v10 = v0;
  v10[1] = sub_1004B18A4;

  return unsafeBlocking<A>(context:_:)(v0 + 26, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2770, v8, v11);
}

uint64_t sub_1004B18A4()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 648);
  v5 = *v0;

  return _swift_task_switch(sub_1004B19D0, v3, 0);
}

uint64_t sub_1004B19F4()
{
  v185 = v0;
  v1 = *(v0 + 776);
  v2 = *(v0 + 272);
  v3 = *(v1 + 16);
  swift_bridgeObjectRetain_n();

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      if (v5 >= *(v1 + 16))
      {
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v6 = *(v0 + 416);
      v7 = *(v0 + 272);
      v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v9 = *(v6 + 72);
      sub_1004E46C0(*(v0 + 776) + v8 + v9 * v5, *(v0 + 480), type metadata accessor for BeaconEstimatedLocation);
      if (!*(v7 + 16))
      {
        goto LABEL_12;
      }

      v10 = *(v0 + 272);
      v11 = *(*(v0 + 480) + *(*(v0 + 408) + 44));
      v12 = *(v10 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      v13 = Hasher._finalize()();
      v14 = -1 << *(v10 + 32);
      v15 = v13 & ~v14;
      if ((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15))
      {
        break;
      }

LABEL_3:
      sub_1004E4A04(*(v0 + 480), type metadata accessor for BeaconEstimatedLocation);
LABEL_4:
      if (++v5 == v3)
      {
        v24 = *(v0 + 776);
        goto LABEL_18;
      }
    }

    v16 = ~v14;
    v17 = *(v0 + 272);
    v18 = *(v17 + 48);
    v19 = v17 + 56;
    while (*(v18 + v15) != v11)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v19 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

LABEL_12:
    sub_10002AAA4(*(v0 + 480), *(v0 + 472), type metadata accessor for BeaconEstimatedLocation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 216) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_101124A24(0, v4[2] + 1, 1);
      v4 = *(v0 + 216);
    }

    v22 = v4[2];
    v21 = v4[3];
    if (v22 >= v21 >> 1)
    {
      sub_101124A24(v21 > 1, v22 + 1, 1);
      v4 = *(v0 + 216);
    }

    v23 = *(v0 + 472);
    v4[2] = v22 + 1;
    sub_10002AAA4(v23, v4 + v8 + v22 * v9, type metadata accessor for BeaconEstimatedLocation);
    goto LABEL_4;
  }

LABEL_18:
  v25 = *(v0 + 696);

  *(v0 + 224) = v4;

  sub_1004D5278((v0 + 224));
  if (v25)
  {
    v26 = *(v0 + 272);
    swift_bridgeObjectRelease_n();

    v27 = *(v0 + 224);
  }

  v29 = *(v0 + 408);
  v30 = *(v0 + 416);
  v31 = *(v0 + 400);

  v32 = *(v0 + 224);
  *(v0 + 784) = v32;
  sub_1012BAB18(v32, v31);
  v33 = *(v30 + 48);
  if (v33(v31, 1, v29) == 1)
  {
    v34 = *(v0 + 776);
    v35 = *(v0 + 400);

    sub_10000B3A8(v35, &unk_101696940, &unk_10138B210);
    if (qword_101694770 == -1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v57 = *(v0 + 680);
    v58 = *(v0 + 408);
    v59 = *(v0 + 384);
    v60 = *(v0 + 352);
    v61 = *(v0 + 360);
    sub_10002AAA4(*(v0 + 400), *(v0 + 464), type metadata accessor for BeaconEstimatedLocation);
    Date.init()();
    v62 = *(v58 + 40);
    Date.timeIntervalSince(_:)();
    v63 = *(v61 + 8);
    *(v0 + 792) = v64;
    *(v0 + 800) = v63;
    *(v0 + 808) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54 = v63(v59, v60);
    *(v0 + 816) = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v65 = *(v32 + 16);
    *(v0 + 824) = v65;
    if (!v65)
    {
LABEL_31:
      *(v0 + 832) = 0;
      v69 = *(v0 + 352);
      v70 = *(v0 + 360);
      v71 = *(v0 + 344);
      v72 = *(v0 + 280);
      *(v0 + 232) = 0;
      sub_1000D2A70(v72, v71, &unk_101696900, &unk_10138B1E0);
      if ((*(v70 + 48))(v71, 1, v69) == 1)
      {
        sub_10000B3A8(*(v0 + 344), &unk_101696900, &unk_10138B1E0);
      }

      else
      {
        v158 = *(v0 + 376);
        v159 = *(v0 + 352);
        (*(*(v0 + 360) + 32))(v158, *(v0 + 344), v159);
        Date.timeIntervalSinceNow.getter();
        v161 = v160;
        v162 = v160;
        v54 = v63(v158, v159);
        if ((*&v162 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v161 <= -9.22337204e18)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v161 >= 9.22337204e18)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        *(v0 + 232) = v161;
      }

      v163 = *(v0 + 408);
      v164 = *(v0 + 392);
      *(v0 + 240) = 0;
      sub_10030C19C(v32, v164);
      if (v33(v164, 1, v163) == 1)
      {
        sub_10000B3A8(*(v0 + 392), &unk_101696940, &unk_10138B210);
      }

      else
      {
        v165 = *(v0 + 448);
        v166 = *(v0 + 408);
        sub_10002AAA4(*(v0 + 392), v165, type metadata accessor for BeaconEstimatedLocation);
        v167 = v165 + *(v166 + 40);
        Date.timeIntervalSinceNow.getter();
        v169 = v168;
        v170 = v168;
        v54 = sub_1004E4A04(v165, type metadata accessor for BeaconEstimatedLocation);
        if ((*&v170 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v169 <= -9.22337204e18)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v169 >= 9.22337204e18)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        *(v0 + 240) = v169;
      }

      v55 = *(v0 + 648);
      v54 = sub_1004B2A84;
LABEL_112:
      v56 = 0;

      return _swift_task_switch(v54, v55, v56);
    }

    v66 = 0;
    while (v66 < *(v32 + 16))
    {
      v67 = *(v0 + 568);
      v68 = *(v0 + 456);
      sub_1004E46C0(v32 + ((*(*(v0 + 416) + 80) + 32) & ~*(*(v0 + 416) + 80)) + *(*(v0 + 416) + 72) * v66, v68, type metadata accessor for BeaconEstimatedLocation);
      sub_1004B5460(v68, v67);
      ++v66;
      sub_1004E4A04(*(v0 + 456), type metadata accessor for BeaconEstimatedLocation);
      if (v65 == v66)
      {
        goto LABEL_31;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
  }

  swift_once();
LABEL_24:
  v36 = *(v0 + 752);
  v37 = *(v0 + 744);
  v38 = *(v0 + 568);
  v39 = *(v0 + 528);
  v40 = *(v0 + 496);
  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177AE10);
  v37(v39, v38, v40);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 528);
  v47 = *(v0 + 496);
  v46 = *(v0 + 504);
  if (v44)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v184[0] = v49;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v182 = *(v46 + 8);
    v182(v45, v47);
    v53 = sub_1000136BC(v50, v52, v184);

    *(v48 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v42, v43, "No cached latest location found for beacon %{private,mask.hash}s and given filter.", v48, 0x16u);
    sub_100007BAC(v49);
  }

  else
  {

    v182 = *(v46 + 8);
    v54 = (v182)(v45, v47);
  }

  v73 = *(v0 + 704);
  v74 = v73 + 1;
  if (__OFADD__(v73, 1))
  {
    goto LABEL_124;
  }

  v171 = (v0 + 184);
  v75 = *(v0 + 736);
  v76 = *(v0 + 568);
  v77 = *(v0 + 496);
  v78 = *(v0 + 272);
  v79 = *(v0 + 504) + 8;
  *(v0 + 192) = v74;
  v80 = *(v0 + 40);
  v81 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v80);
  v82 = (*(v81 + 112))(v80, v81);

  swift_bridgeObjectRelease_n();
  v54 = (v182)(v76, v77);
  v83 = *(v0 + 712);
  if ((v82 & 1) == 0)
  {
    goto LABEL_38;
  }

  if (__OFADD__(v83++, 1))
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  *v171 = v83;
LABEL_38:
  v85 = *(v0 + 720);
  v86 = *(v0 + 664);
  v54 = sub_100007BAC((v0 + 16));
  if (v85 == v86)
  {
    *(v0 + 688) = 0;
    v87 = *(v0 + 288);
    v175 = *(v87 + 16);
    if (v175)
    {
      v88 = 0;
      v89 = *(v0 + 504);
      v90 = *(v0 + 328);
      v172 = *(v0 + 320);
      v174 = v87 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v173 = *(v90 + 72);
      v179 = v89;
      do
      {
        v177 = v88 + 1;
        sub_1004E46C0(v174 + v88 * v173, *(v0 + 336), type metadata accessor for OwnedBeaconGroup);
        v91 = sub_100519FB0();
        v92 = v91;
        v184[0] = _swiftEmptyArrayStorage;
        v93 = v91 + 56;
        v94 = -1 << *(v91 + 32);
        if (-v94 < 64)
        {
          v95 = ~(-1 << -v94);
        }

        else
        {
          v95 = -1;
        }

        v96 = v95 & *(v91 + 56);
        v97 = (63 - v94) >> 6;

        v98 = 0;
        for (i = _swiftEmptyArrayStorage; v96; v89 = v179)
        {
LABEL_54:
          while (1)
          {
            v101 = __clz(__rbit64(v96));
            v96 &= v96 - 1;
            (*(*(v0 + 504) + 16))(*(v0 + 520), *(v92 + 48) + *(v89 + 72) * (v101 | (v98 << 6)), *(v0 + 496));
            v102 = *(v0 + 200);
            if (*(v102 + 16))
            {
              v103 = sub_1000210EC(*(v0 + 520));
              if (v104)
              {
                break;
              }
            }

            (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
            if (!v96)
            {
              goto LABEL_50;
            }
          }

          v105 = *(v0 + 520);
          v106 = *(v0 + 496);
          v107 = *(*(v0 + 504) + 8);
          *(*(v102 + 56) + 8 * v103);
          v107(v105, v106);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v184[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v108 = *((v184[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          i = v184[0];
        }

        while (1)
        {
LABEL_50:
          v100 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            __break(1u);
            goto LABEL_116;
          }

          if (v100 >= v97)
          {
            break;
          }

          v96 = *(v93 + 8 * v100);
          ++v98;
          if (v96)
          {
            v98 = v100;
            goto LABEL_54;
          }
        }

        if (i >> 62)
        {
          v109 = _CocoaArrayWrapper.endIndex.getter();
          if (!v109)
          {
LABEL_41:
            sub_1004E4A04(*(v0 + 336), type metadata accessor for OwnedBeaconGroup);
            goto LABEL_42;
          }
        }

        else
        {
          v109 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v109)
          {
            goto LABEL_41;
          }
        }

        v181 = i & 0xC000000000000001;
        if ((i & 0xC000000000000001) != 0)
        {
          v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((i & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_121;
          }

          v110 = *(i + 32);
        }

        v183 = v110;
        if (i >> 62)
        {
          v111 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v111 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v112 = *(v0 + 336);
        v113 = *(*(v112 + *(v172 + 40)) + 16);
        if (v113 > 0xFF)
        {
          goto LABEL_120;
        }

        if (v111 == v113)
        {
          v114 = 0;
          v176 = i & 0xFFFFFFFFFFFFFF8;
          v180 = i;
          v178 = v109;
          while (v109 != v114)
          {
            if (v181)
            {
              v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v114 >= *(v176 + 16))
              {
                goto LABEL_119;
              }

              v115 = *(i + 8 * v114 + 32);
            }

            v116 = v115;
            if (__OFADD__(v114, 1))
            {
              goto LABEL_117;
            }

            v117 = *(v0 + 384);
            v118 = *(v0 + 360);
            v119 = *(v0 + 368);
            v120 = *(v0 + 352);
            v121 = v183;
            v122 = [v116 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v123 = [v121 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            LOBYTE(v123) = static Date.== infix(_:_:)();
            v124 = *(v118 + 8);
            v124(v119, v120);
            v124(v117, v120);
            if ((v123 & 1) == 0 || ([v116 longitude], v126 = v125, objc_msgSend(v121, "longitude"), v126 != v127) || (objc_msgSend(v116, "latitude"), v129 = v128, objc_msgSend(v121, "latitude"), v129 != v130))
            {

              v89 = v179;
LABEL_84:
              v135 = *(v0 + 336);

              v136 = v135;
              goto LABEL_86;
            }

            [v116 horizontalAccuracy];
            v132 = v131;
            [v121 horizontalAccuracy];
            v134 = v133;

            ++v114;
            v89 = v179;
            i = v180;
            v109 = v178;
            if (v132 != v134)
            {
              goto LABEL_84;
            }
          }

          v137 = *(v0 + 336);

          v138 = *(v172 + 24);
          v139 = *(v0 + 200);
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v184[0] = v139;
          sub_100FFA5A0(v183, v137 + v138, v140);
          *(v0 + 200) = v184[0];
          v136 = v137;
LABEL_86:
          v54 = sub_1004E4A04(v136, type metadata accessor for OwnedBeaconGroup);
          goto LABEL_43;
        }

        sub_1004E4A04(v112, type metadata accessor for OwnedBeaconGroup);

LABEL_42:

LABEL_43:
        v88 = v177;
      }

      while (v177 != v175);
    }

    v150 = (v0 + 256);
    v151 = *(v0 + 680);
    *(v0 + 256) = 0;
    if (v151 <= 0)
    {
      goto LABEL_100;
    }

    v152 = *(v0 + 672) / v151;
    if (COERCE__INT64(fabs(v152)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v152 > -9.22337204e18)
      {
        if (v152 < 9.22337204e18)
        {
          *v150 = v152;
LABEL_100:
          v153 = *(v0 + 592);
          v154 = *(v0 + 576);
          v155 = *(v0 + 296);
          v156 = *(v0 + 264);
          v157 = swift_task_alloc();
          *(v0 + 936) = v157;
          v157[2] = v156;
          v157[3] = v155;
          v157[4] = v154;
          v157[5] = v0 + 192;
          v157[6] = v171;
          v157[7] = v150;
          v54 = sub_1004B4DAC;
          v55 = v153;
          goto LABEL_112;
        }

LABEL_136:
        __break(1u);
        return _swift_task_switch(v54, v55, v56);
      }

LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v141 = *(v0 + 720);
  *(v0 + 712) = v83;
  *(v0 + 704) = v74;
  *(v0 + 696) = 0;
  if (v141 >= *(v0 + 664))
  {
    goto LABEL_126;
  }

  *(v0 + 720) = v141 + 1;
  if (__OFADD__(v141, 1))
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v142 = *(v0 + 568);
  sub_10001F280(*(v0 + 264) + 40 * v141 + 32, v0 + 16);
  v143 = *(v0 + 40);
  v144 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v143);
  (*(*(*(v144 + 8) + 8) + 32))(v143);
  v146 = *(v0 + 40);
  v145 = *(v0 + 48);
  v147 = sub_1000035D0((v0 + 16), v146);
  v148 = swift_task_alloc();
  *(v0 + 728) = v148;
  *v148 = v0;
  v148[1] = sub_1004B1608;
  v149 = *(v0 + 648);

  return sub_100E76290(v147, v149, v146, v145);
}

uint64_t sub_1004B2A84()
{
  v1 = *(v0 + 648);
  sub_10001F280(v0 + 16, v0 + 56);
  v2 = swift_allocObject();
  *(v0 + 840) = v2;
  *(v2 + 16) = v1;
  sub_10000A748((v0 + 56), v2 + 24);
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  *(v0 + 848) = v4;
  *v4 = v0;
  v4[1] = sub_1004B2BA4;

  return unsafeBlocking<A>(context:_:)(v0 + 248, 0xD000000000000010, 0x800000010134A8C0, sub_1004E3304, v2, &type metadata for Double);
}

uint64_t sub_1004B2BA4()
{
  v1 = *(*v0 + 848);
  v2 = *(*v0 + 840);
  v3 = *(*v0 + 648);
  v5 = *v0;

  return _swift_task_switch(sub_1004B2CD0, v3, 0);
}

uint64_t sub_1004B2CF4()
{
  v236 = v0;
  if (qword_101694770 != -1)
  {
LABEL_91:
    swift_once();
  }

  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 568);
  v4 = *(v0 + 552);
  v5 = *(v0 + 496);
  v6 = type metadata accessor for Logger();
  *(v0 + 864) = sub_1000076D4(v6, qword_10177AE10);
  v2(v4, v3, v5);
  sub_10001F280(v0 + 16, v0 + 96);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 856);
    v233 = v8;
    v10 = *(v0 + 552);
    v12 = *(v0 + 496);
    v11 = *(v0 + 504);
    v13 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v235[0] = v230;
    *v13 = 141558787;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, v235);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v9;
    *(v13 + 32) = 2048;
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);
    sub_1000035D0((v0 + 96), v19);
    v21 = v20;
    v22 = v17;
    v23 = sub_1010C96DC(v19, v21);
    sub_100007BAC((v0 + 96));
    *(v13 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v7, v233, "Applying location filter for beacon %{private,mask.hash}s, transmitPower: %f, beaconType: %lu.", v13, 0x2Au);
    sub_100007BAC(v230);
  }

  else
  {
    v24 = *(v0 + 552);
    v26 = *(v0 + 496);
    v25 = *(v0 + 504);
    sub_100007BAC((v0 + 96));

    v22 = *(v25 + 8);
    v22(v24, v26);
  }

  *(v0 + 872) = v22;
  v27 = *(v0 + 856);
  v28 = sub_10039C740(*(v0 + 784));
  v29 = *(v0 + 40);
  v30 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v29);
  v31 = sub_1010C96DC(v29, v30);
  v32 = sub_1010CBA6C(v28, v31, v27);
  *(v0 + 880) = v32;

  if (v32)
  {
    v33 = *(v0 + 808);
    v222 = *(v0 + 824);
    v34 = *(v0 + 800);
    v226 = *(v0 + 464);
    v35 = *(v0 + 440);
    v36 = *(v0 + 408);
    v37 = *(v0 + 384);
    v38 = *(v0 + 352);
    v39 = *(v0 + 360);
    sub_1004E46C0(v226, v35, type metadata accessor for BeaconEstimatedLocation);
    v40 = *(v35 + v36[7]);
    v41 = *(v35 + v36[8]);
    v42 = objc_allocWithZone(CLLocation);
    v43 = *(v35 + v36[9]);
    (*(v39 + 16))(v37, v35 + v36[10], v38);
    sub_1004E4A04(v35, type metadata accessor for BeaconEstimatedLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v34(v37, v38);
    v45 = [v42 initWithCoordinate:isa altitude:v40 horizontalAccuracy:v41 verticalAccuracy:-1.0 timestamp:{v43, -1.0}];

    v46 = v32;
    [v46 coordinate];
    v48 = v47;
    [v46 coordinate];
    v50 = v49;
    v51 = objc_allocWithZone(CLLocation);
    [v46 horizontalAccuracy];
    v53 = v52;
    v54 = [v46 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = Date._bridgeToObjectiveC()().super.isa;
    v34(v37, v38);
    v56 = [v51 initWithCoordinate:v55 altitude:v48 horizontalAccuracy:v50 verticalAccuracy:-1.0 timestamp:{v53, -1.0}];

    [v45 distanceFromLocation:v56];
    v58 = v57;

    v59 = *&v226[v36[9]];
    v227 = v46;
    [v46 horizontalAccuracy];
    v61 = v60;
    if (v222)
    {
      v62 = 0;
      v63 = *(v0 + 432);
      v64 = *(v0 + 416);
      v65 = *(*(v0 + 408) + 44);
      v66 = *(v0 + 784) + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v67 = *(v64 + 72);
      v68 = _swiftEmptyArrayStorage;
      do
      {
        v69 = *(v0 + 432);
        sub_1004E46C0(v66, v69, type metadata accessor for BeaconEstimatedLocation);
        v70 = *(v63 + v65);
        sub_1004E4A04(v69, type metadata accessor for BeaconEstimatedLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_100A5CF30(0, *(v68 + 2) + 1, 1, v68);
        }

        v72 = *(v68 + 2);
        v71 = *(v68 + 3);
        if (v72 >= v71 >> 1)
        {
          v68 = sub_100A5CF30((v71 > 1), v72 + 1, 1, v68);
        }

        ++v62;
        v73 = *(v0 + 824);
        *(v68 + 2) = v72 + 1;
        v68[v72 + 32] = v70;
        v66 += v67;
      }

      while (v62 != v73);
    }

    else
    {
      v68 = _swiftEmptyArrayStorage;
    }

    v96 = vabdd_f64(v59, v61);
    v97 = *(v0 + 792);
    v98 = *(v0 + 752);
    v99 = *(v0 + 744);
    v223 = *(v0 + 736);
    v216 = *(v0 + 616);
    v213 = *(v0 + 608);
    v210 = *(v0 + 808);
    v211 = *(v0 + 600);
    v208 = *(v0 + 800);
    v209 = *(v0 + 584);
    v220 = *(v0 + 576);
    v100 = *(v0 + 568);
    v101 = *(v0 + 560);
    v102 = *(v0 + 496);
    v204 = *(v0 + 408);
    v205 = *(v0 + 464);
    v103 = *(v0 + 384);
    v206 = *(v0 + 352);
    v218 = *(v0 + 776);
    sub_10039C910(v68);

    v104 = objc_allocWithZone(NSSet);
    v105 = Array._bridgeToObjectiveC()().super.isa;

    v207 = [v104 initWithArray:v105];
    *(v0 + 888) = v207;

    v99(v101, v100, v102);
    v106 = [v227 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    [v227 coordinate];
    v108 = v107;
    [v227 coordinate];
    v110 = v109;
    [v227 horizontalAccuracy];
    v112 = v111;
    v113 = sub_1010CBDEC(*(v205 + *(v204 + 44)));
    v114 = objc_allocWithZone(SPBeaconLocation);
    v115 = v113;
    v116 = Date._bridgeToObjectiveC()().super.isa;
    v117 = [v114 initWithTimestamp:v116 latitude:v115 longitude:v108 horizontalAccuracy:v110 source:v112];

    v208(v103, v206);
    sub_1001DD16C(v117, v101);
    v118 = *(v209 + 48);
    v119 = *(v209 + 52);
    v120 = swift_allocObject();
    *(v0 + 896) = v120;
    swift_defaultActor_initialize();
    *(v120 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v213(&v120[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime], 1, 1, v211);
    v213(&v120[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v211);
    *(v120 + 15) = 0xD000000000000030;
    *(v120 + 16) = 0x8000000101356CC0;
    v121 = swift_task_alloc();
    *(v0 + 904) = v121;
    *(v121 + 16) = v220;
    *(v121 + 24) = v97;
    *(v121 + 32) = v227;
    *(v121 + 40) = v205;
    *(v121 + 48) = v218;
    *(v121 + 64) = v0 + 232;
    *(v121 + 72) = v0 + 240;
    *(v121 + 80) = v58;
    *(v121 + 88) = v96;
    *(v121 + 96) = v207;
    *(v121 + 104) = v223;
    v122 = sub_1004B3F64;
    goto LABEL_18;
  }

  v74 = *(v0 + 784);
  v75 = *(v0 + 776);
  v76 = *(v0 + 752);
  v77 = *(v0 + 744);
  v78 = *(v0 + 568);
  v79 = *(v0 + 536);
  v80 = *(v0 + 496);

  v77(v79, v78, v80);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();
  v83 = os_log_type_enabled(v81, v82);
  v84 = *(v0 + 568);
  v85 = *(v0 + 536);
  v87 = *(v0 + 496);
  v86 = *(v0 + 504);
  v88 = *(v0 + 272);
  if (v83)
  {
    v228 = *(v0 + 736);
    v89 = v22;
    v90 = swift_slowAlloc();
    v231 = v84;
    v91 = swift_slowAlloc();
    v235[0] = v91;
    *v90 = 141558275;
    *(v90 + 4) = 1752392040;
    *(v90 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v92 = dispatch thunk of CustomStringConvertible.description.getter();
    v94 = v93;
    v89(v85, v87);
    v95 = sub_1000136BC(v92, v94, v235);

    *(v90 + 14) = v95;
    _os_log_impl(&_mh_execute_header, v81, v82, "Could not produce filtered location for beacon %{private,mask.hash}s.", v90, 0x16u);
    sub_100007BAC(v91);

    swift_bridgeObjectRelease_n();
    v89(v231, v87);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v22(v85, v87);
    v22(v84, v87);
  }

  sub_1004E4A04(*(v0 + 464), type metadata accessor for BeaconEstimatedLocation);
  v123 = sub_100007BAC((v0 + 16));
  v126 = *(v0 + 832);
  v127 = *(v0 + 816);
  v128 = *(v0 + 720);
  v129 = *(v0 + 704);
  v130 = *(v0 + 792) + *(v0 + 672);
  *(v0 + 680) = v127;
  *(v0 + 672) = v130;
  v131 = *(v0 + 664);
  if (v128 != v131)
  {
    *(v0 + 704) = v129;
    *(v0 + 696) = v126;
    if (v128 >= v131)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 720) = v128 + 1;
      if (!__OFADD__(v128, 1))
      {
        v189 = *(v0 + 568);
        sub_10001F280(*(v0 + 264) + 40 * v128 + 32, v0 + 16);
        v190 = *(v0 + 40);
        v191 = *(v0 + 48);
        sub_1000035D0((v0 + 16), v190);
        (*(*(*(v191 + 8) + 8) + 32))(v190);
        v193 = *(v0 + 40);
        v192 = *(v0 + 48);
        v194 = sub_1000035D0((v0 + 16), v193);
        v195 = swift_task_alloc();
        *(v0 + 728) = v195;
        *v195 = v0;
        v195[1] = sub_1004B1608;
        v196 = *(v0 + 648);

        return (sub_100E76290)(v194, v196, v193, v192);
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  *(v0 + 688) = v126;
  v132 = *(v0 + 288);
  v133 = *(v132 + 16);
  if (!v133)
  {
    goto LABEL_80;
  }

  v134 = 0;
  v135 = *(v0 + 504);
  v136 = *(v0 + 328);
  v214 = *(v132 + 16);
  v215 = *(v0 + 320);
  v217 = *(v136 + 72);
  v219 = v132 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
  v212 = v135;
  v225 = v0;
  while (2)
  {
    v224 = v134 + 1;
    sub_1004E46C0(v219 + v134 * v217, *(v0 + 336), type metadata accessor for OwnedBeaconGroup);
    v137 = sub_100519FB0();
    v138 = v137;
    v139 = _swiftEmptyArrayStorage;
    v235[0] = _swiftEmptyArrayStorage;
    v140 = v137 + 56;
    v141 = -1 << *(v137 + 32);
    if (-v141 < 64)
    {
      v142 = ~(-1 << -v141);
    }

    else
    {
      v142 = -1;
    }

    v143 = v142 & *(v137 + 56);
    v144 = (63 - v141) >> 6;

    for (i = 0; v143; v133 = v214)
    {
LABEL_38:
      while (1)
      {
        v147 = __clz(__rbit64(v143));
        v143 &= v143 - 1;
        (*(*(v0 + 504) + 16))(*(v0 + 520), *(v138 + 48) + *(v135 + 72) * (v147 | (i << 6)), *(v0 + 496));
        v148 = *(v0 + 200);
        if (*(v148 + 16))
        {
          v149 = sub_1000210EC(*(v0 + 520));
          if (v150)
          {
            break;
          }
        }

        (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
        if (!v143)
        {
          goto LABEL_34;
        }
      }

      v151 = *(v0 + 520);
      v152 = *(v0 + 496);
      v153 = *(*(v0 + 504) + 8);
      *(*(v148 + 56) + 8 * v149);
      v153(v151, v152);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v235[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v154 = *((v235[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v139 = v235[0];
      v135 = v212;
    }

    while (1)
    {
LABEL_34:
      v146 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v146 >= v144)
      {
        break;
      }

      v143 = *(v140 + 8 * v146);
      ++i;
      if (v143)
      {
        i = v146;
        goto LABEL_38;
      }
    }

    if (!(v139 >> 62))
    {
      v155 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v155)
      {
        goto LABEL_46;
      }

LABEL_25:
      sub_1004E4A04(*(v0 + 336), type metadata accessor for OwnedBeaconGroup);
LABEL_26:

      goto LABEL_27;
    }

    v155 = _CocoaArrayWrapper.endIndex.getter();
    if (!v155)
    {
      goto LABEL_25;
    }

LABEL_46:
    v232 = v139 & 0xC000000000000001;
    if ((v139 & 0xC000000000000001) == 0)
    {
      if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v156 = *(v139 + 32);
        goto LABEL_49;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v156 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_49:
    v234 = v156;
    if (v139 >> 62)
    {
      v157 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v157 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v158 = *(v0 + 336);
    v159 = *(*(v158 + *(v215 + 40)) + 16);
    if (v159 > 0xFF)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v157 != v159)
    {
      sub_1004E4A04(v158, type metadata accessor for OwnedBeaconGroup);

      goto LABEL_26;
    }

    v160 = 0;
    v221 = v139 & 0xFFFFFFFFFFFFFF8;
    v229 = v139;
    while (v155 != v160)
    {
      if (v232)
      {
        v161 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v160 >= *(v221 + 16))
        {
          goto LABEL_88;
        }

        v161 = *(v139 + 8 * v160 + 32);
      }

      v162 = v161;
      if (__OFADD__(v160, 1))
      {
        goto LABEL_87;
      }

      v163 = v0;
      v164 = v155;
      v165 = v163[48];
      v166 = v163[45];
      v167 = v163[46];
      v168 = v163[44];
      v169 = v234;
      v170 = [v162 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v171 = [v169 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v171) = static Date.== infix(_:_:)();
      v172 = *(v166 + 8);
      v172(v167, v168);
      v172(v165, v168);
      if ((v171 & 1) == 0 || ([v162 longitude], v174 = v173, objc_msgSend(v169, "longitude"), v174 != v175) || (objc_msgSend(v162, "latitude"), v177 = v176, objc_msgSend(v169, "latitude"), v177 != v178))
      {

        v0 = v225;
LABEL_68:
        v183 = *(v0 + 336);

        v184 = v183;
        goto LABEL_70;
      }

      [v162 horizontalAccuracy];
      v180 = v179;
      [v169 horizontalAccuracy];
      v182 = v181;

      ++v160;
      v155 = v164;
      v0 = v225;
      v139 = v229;
      if (v180 != v182)
      {
        goto LABEL_68;
      }
    }

    v185 = *(v0 + 336);

    v186 = *(v215 + 24);
    v187 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v235[0] = v187;
    sub_100FFA5A0(v234, v185 + v186, isUniquelyReferenced_nonNull_native);
    *(v0 + 200) = v235[0];
    v184 = v185;
LABEL_70:
    v123 = sub_1004E4A04(v184, type metadata accessor for OwnedBeaconGroup);
    v135 = v212;
    v133 = v214;
LABEL_27:
    v134 = v224;
    if (v224 != v133)
    {
      continue;
    }

    break;
  }

  v127 = *(v0 + 680);
LABEL_80:
  v198 = (v0 + 256);
  *(v0 + 256) = 0;
  if (v127 <= 0)
  {
LABEL_85:
    v120 = *(v0 + 592);
    v200 = *(v0 + 576);
    v201 = *(v0 + 296);
    v202 = *(v0 + 264);
    v203 = swift_task_alloc();
    *(v0 + 936) = v203;
    v203[2] = v202;
    v203[3] = v201;
    v203[4] = v200;
    v203[5] = v0 + 192;
    v203[6] = v0 + 184;
    v203[7] = v198;
    v122 = sub_1004B4DAC;
LABEL_18:
    v123 = v122;
    v124 = v120;
    v125 = 0;

    return _swift_task_switch(v123, v124, v125);
  }

  v199 = *(v0 + 672) / v127;
  if (COERCE__INT64(fabs(v199)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_94;
  }

  if (v199 <= -9.22337204e18)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v199 < 9.22337204e18)
  {
    *v198 = v199;
    goto LABEL_85;
  }

LABEL_96:
  __break(1u);
  return _swift_task_switch(v123, v124, v125);
}

uint64_t sub_1004B3F64()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[104];
  sub_10115BE7C(sub_1004E3310);
  if (v3)
  {
  }

  v0[114] = 0;
  v4 = v0[113];
  v5 = v0[98];
  v6 = v0[97];

  type metadata accessor for AnalyticsPublisher();
  v0[115] = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = swift_task_alloc();
  v0[116] = v7;
  *v7 = v0;
  v7[1] = sub_1004B4074;
  v8 = v0[112];

  return sub_101163F78(v8);
}

uint64_t sub_1004B4074()
{
  v1 = *(*v0 + 928);
  v2 = *(*v0 + 920);
  v4 = *v0;

  return _swift_task_switch(sub_1004B418C, 0, 0);
}

uint64_t sub_1004B418C()
{
  v145 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 864);
  v3 = *(v0 + 752);
  v4 = *(v0 + 464);
  v5 = *(v0 + 424);
  (*(v0 + 744))(*(v0 + 544), *(v0 + 568), *(v0 + 496));
  sub_1004E46C0(v4, v5, type metadata accessor for BeaconEstimatedLocation);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  log = v7;
  v9 = os_log_type_enabled(v7, v8);
  v138 = *(v0 + 896);
  v10 = *(v0 + 880);
  v142 = *(v0 + 872);
  if (v9)
  {
    v123 = *(v0 + 800);
    v124 = *(v0 + 808);
    v129 = *(v0 + 888);
    v131 = *(v0 + 736);
    v11 = *(v0 + 544);
    v12 = *(v0 + 496);
    v127 = v8;
    v13 = *(v0 + 424);
    v120 = *(v0 + 408);
    v121 = *(v0 + 384);
    v122 = *(v0 + 352);
    v14 = *(v0 + 504) + 8;
    v133 = *(v0 + 272);
    v135 = *(v0 + 568);
    v15 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *v15 = 141559811;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v142(v11, v12);
    v19 = sub_1000136BC(v16, v18, &v144);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v20 = v13 + *(v120 + 20);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1004E4A04(v13, type metadata accessor for BeaconEstimatedLocation);
    v24 = sub_1000136BC(v21, v23, &v144);

    *(v15 + 34) = v24;
    *(v15 + 42) = 2049;
    [v10 coordinate];
    *(v15 + 44) = v25;
    *(v15 + 52) = 2049;
    [v10 coordinate];
    *(v15 + 54) = v26;
    *(v15 + 62) = 2050;
    [v10 horizontalAccuracy];
    *(v15 + 64) = v27;
    *(v15 + 72) = 2082;
    v28 = [v10 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1004DB51C(&qword_1016969A0, &type metadata accessor for Date);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v123(v121, v122);
    v32 = sub_1000136BC(v29, v31, &v144);

    *(v15 + 74) = v32;
    _os_log_impl(&_mh_execute_header, log, v127, "Filtered cached latest location returned to client for beacon %{private,mask.hash}s, locationUUID: %{private,mask.hash}s, lat: %{private}f, long: %{private}f, accuracy: %{public}f, timestamp: %{public}s.", v15, 0x52u);
    swift_arrayDestroy();

    swift_bridgeObjectRelease_n();
    v142(v135, v12);
  }

  else
  {
    v33 = *(v0 + 736);
    v34 = *(v0 + 568);
    v35 = *(v0 + 544);
    v36 = *(v0 + 496);
    v37 = *(v0 + 504);
    v38 = *(v0 + 424);
    v39 = *(v0 + 272);

    swift_bridgeObjectRelease_n();

    sub_1004E4A04(v38, type metadata accessor for BeaconEstimatedLocation);
    v142(v35, v36);
    v142(v34, v36);
  }

  sub_1004E4A04(*(v0 + 464), type metadata accessor for BeaconEstimatedLocation);
  v40 = sub_100007BAC((v0 + 16));
  v43 = *(v0 + 912);
  v44 = *(v0 + 816);
  v45 = *(v0 + 720);
  v46 = *(v0 + 704);
  v47 = *(v0 + 792) + *(v0 + 672);
  *(v0 + 680) = v44;
  *(v0 + 672) = v47;
  v48 = *(v0 + 664);
  if (v45 != v48)
  {
    *(v0 + 704) = v46;
    *(v0 + 696) = v43;
    if (v45 >= v48)
    {
LABEL_75:
      __break(1u);
    }

    else
    {
      *(v0 + 720) = v45 + 1;
      if (!__OFADD__(v45, 1))
      {
        v104 = *(v0 + 568);
        sub_10001F280(*(v0 + 264) + 40 * v45 + 32, v0 + 16);
        v105 = *(v0 + 40);
        v106 = *(v0 + 48);
        sub_1000035D0((v0 + 16), v105);
        (*(*(*(v106 + 8) + 8) + 32))(v105);
        v108 = *(v0 + 40);
        v107 = *(v0 + 48);
        v109 = sub_1000035D0((v0 + 16), v108);
        v110 = swift_task_alloc();
        *(v0 + 728) = v110;
        *v110 = v0;
        v110[1] = sub_1004B1608;
        v111 = *(v0 + 648);

        return (sub_100E76290)(v109, v111, v108, v107);
      }
    }

    __break(1u);
    goto LABEL_77;
  }

  *(v0 + 688) = v43;
  v49 = *(v0 + 288);
  v50 = *(v49 + 16);
  if (!v50)
  {
    goto LABEL_62;
  }

  v51 = 0;
  v52 = *(v0 + 504);
  v53 = *(v0 + 328);
  v126 = *(v49 + 16);
  v128 = *(v0 + 320);
  v130 = *(v53 + 72);
  v132 = v49 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v125 = v52;
  v137 = v0;
  while (2)
  {
    v136 = v51 + 1;
    sub_1004E46C0(v132 + v51 * v130, *(v0 + 336), type metadata accessor for OwnedBeaconGroup);
    v54 = sub_100519FB0();
    v55 = v54;
    v56 = _swiftEmptyArrayStorage;
    v144 = _swiftEmptyArrayStorage;
    v57 = v54 + 56;
    v58 = -1 << *(v54 + 32);
    if (-v58 < 64)
    {
      v59 = ~(-1 << -v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & *(v54 + 56);
    v61 = (63 - v58) >> 6;

    for (i = 0; v60; v50 = v126)
    {
LABEL_20:
      while (1)
      {
        v64 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        (*(*(v0 + 504) + 16))(*(v0 + 520), *(v55 + 48) + *(v52 + 72) * (v64 | (i << 6)), *(v0 + 496));
        v65 = *(v0 + 200);
        if (*(v65 + 16))
        {
          v66 = sub_1000210EC(*(v0 + 520));
          if (v67)
          {
            break;
          }
        }

        v40 = (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
        if (!v60)
        {
          goto LABEL_16;
        }
      }

      v68 = *(v0 + 520);
      v69 = *(v0 + 496);
      v70 = *(*(v0 + 504) + 8);
      *(*(v65 + 56) + 8 * v66);
      v70(v68, v69);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v71 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v40 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v56 = v144;
      v52 = v125;
    }

    while (1)
    {
LABEL_16:
      v63 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (v63 >= v61)
      {
        break;
      }

      v60 = *(v57 + 8 * v63);
      ++i;
      if (v60)
      {
        i = v63;
        goto LABEL_20;
      }
    }

    if (!(v56 >> 62))
    {
      v72 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v72)
      {
        goto LABEL_28;
      }

LABEL_7:
      sub_1004E4A04(*(v0 + 336), type metadata accessor for OwnedBeaconGroup);
LABEL_8:

      goto LABEL_9;
    }

    v40 = _CocoaArrayWrapper.endIndex.getter();
    v72 = v40;
    if (!v40)
    {
      goto LABEL_7;
    }

LABEL_28:
    loga = (v56 & 0xC000000000000001);
    if ((v56 & 0xC000000000000001) == 0)
    {
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v73 = *(v56 + 32);
        goto LABEL_31;
      }

LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_31:
    v143 = v73;
    if (v56 >> 62)
    {
      v74 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v74 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = *(v0 + 336);
    v75 = *(*&v40[*(v128 + 40)] + 16);
    if (v75 > 0xFF)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v74 != v75)
    {
      sub_1004E4A04(v40, type metadata accessor for OwnedBeaconGroup);

      goto LABEL_8;
    }

    v76 = 0;
    v134 = v56 & 0xFFFFFFFFFFFFFF8;
    v139 = v56;
    while (v72 != v76)
    {
      if (loga)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v76 >= *(v134 + 16))
        {
          goto LABEL_72;
        }

        v40 = *(v56 + 8 * v76 + 32);
      }

      v77 = v40;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_71;
      }

      v78 = v0;
      v79 = v72;
      v80 = v78[48];
      v81 = v78[45];
      v82 = v78[46];
      v83 = v78[44];
      v84 = v143;
      v85 = [v77 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v86 = [v84 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v86) = static Date.== infix(_:_:)();
      v87 = *(v81 + 8);
      v87(v82, v83);
      v87(v80, v83);
      if ((v86 & 1) == 0 || ([v77 longitude], v89 = v88, objc_msgSend(v84, "longitude"), v89 != v90) || (objc_msgSend(v77, "latitude"), v92 = v91, objc_msgSend(v84, "latitude"), v92 != v93))
      {

        v0 = v137;
LABEL_50:
        v98 = *(v0 + 336);

        v99 = v98;
        goto LABEL_52;
      }

      [v77 horizontalAccuracy];
      v95 = v94;
      [v84 horizontalAccuracy];
      v97 = v96;

      ++v76;
      v72 = v79;
      v0 = v137;
      v56 = v139;
      if (v95 != v97)
      {
        goto LABEL_50;
      }
    }

    v100 = *(v0 + 336);

    v101 = *(v128 + 24);
    v102 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v144 = v102;
    sub_100FFA5A0(v143, v100 + v101, isUniquelyReferenced_nonNull_native);
    *(v0 + 200) = v144;
    v99 = v100;
LABEL_52:
    v40 = sub_1004E4A04(v99, type metadata accessor for OwnedBeaconGroup);
    v52 = v125;
    v50 = v126;
LABEL_9:
    v51 = v136;
    if (v136 != v50)
    {
      continue;
    }

    break;
  }

  v44 = *(v0 + 680);
LABEL_62:
  v113 = (v0 + 256);
  *(v0 + 256) = 0;
  if (v44 <= 0)
  {
LABEL_67:
    v115 = *(v0 + 592);
    v116 = *(v0 + 576);
    v117 = *(v0 + 296);
    v118 = *(v0 + 264);
    v119 = swift_task_alloc();
    *(v0 + 936) = v119;
    v119[2] = v118;
    v119[3] = v117;
    v119[4] = v116;
    v119[5] = v0 + 192;
    v119[6] = v0 + 184;
    v119[7] = v113;
    v40 = sub_1004B4DAC;
    v41 = v115;
    v42 = 0;

    return _swift_task_switch(v40, v41, v42);
  }

  v114 = *(v0 + 672) / v44;
  if (COERCE__INT64(fabs(v114)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v114 <= -9.22337204e18)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v114 < 9.22337204e18)
  {
    *v113 = v114;
    goto LABEL_67;
  }

LABEL_79:
  __break(1u);
  return _swift_task_switch(v40, v41, v42);
}

uint64_t sub_1004B4DAC()
{
  v1 = v0[117];
  v2 = v0[86];
  v3 = v0[74];
  sub_10115BE7C(sub_1004E3350);
  if (v2)
  {
  }

  v4 = v0[117];
  v5 = v0[74];

  return _swift_task_switch(sub_1004B4E50, v5, 0);
}

uint64_t sub_1004B4E50()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[61];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  type metadata accessor for AnalyticsPublisher();
  v0[118] = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = swift_task_alloc();
  v0[119] = v7;
  *v7 = v0;
  v7[1] = sub_1004B4F78;
  v8 = v0[74];

  return sub_101163F78(v8);
}

uint64_t sub_1004B4F78()
{
  v1 = *(*v0 + 952);
  v2 = *(*v0 + 944);
  v4 = *v0;

  return _swift_task_switch(sub_1004B5090, 0, 0);
}

uint64_t sub_1004B5090()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 592);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v11 = *(v0 + 552);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 528);
  v6 = *(v0 + 496);
  v7 = *(v0 + 504);
  v15 = *(v0 + 520);
  v16 = *(v0 + 488);
  v17 = *(v0 + 480);
  v18 = *(v0 + 472);
  v19 = *(v0 + 464);
  v20 = *(v0 + 456);
  v21 = *(v0 + 448);
  v22 = *(v0 + 440);
  v23 = *(v0 + 432);
  v24 = *(v0 + 424);
  v25 = *(v0 + 400);
  v26 = *(v0 + 392);
  v27 = *(v0 + 384);
  v28 = *(v0 + 376);
  v29 = *(v0 + 368);
  v30 = *(v0 + 344);
  v31 = *(v0 + 336);
  v8 = *(v0 + 312);
  (*(v0 + 304))(*(v0 + 200));

  (*(v7 + 8))(v3, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004B528C()
{
  v1 = v0[79];
  v2 = v0[74];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v14 = v0[66];
  v15 = v0[65];
  v9 = v0[62];
  v10 = v0[63];
  v16 = v0[61];
  v17 = v0[60];
  v18 = v0[59];
  v19 = v0[58];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[50];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[43];
  v31 = v0[42];

  (*(v10 + 8))(v3, v9);

  v11 = v0[1];
  v12 = v0[82];

  return v11();
}

void sub_1004B5460(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for BeaconEstimatedLocation();
  v4 = *(*(v51 - 8) + 64);
  v5 = __chkstk_darwin(v51);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v54 = &v46 - v9;
  v10 = __chkstk_darwin(v8);
  v53 = &v46 - v11;
  v12 = __chkstk_darwin(v10);
  v52 = &v46 - v13;
  __chkstk_darwin(v12);
  v15 = &v46 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177AE10);
  (*(v17 + 16))(v20, a2, v16);
  sub_1004E46C0(a1, v15, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v52, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v53, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v54, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v7, type metadata accessor for BeaconEstimatedLocation);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v49 = v23;
    v25 = v24;
    v50 = swift_slowAlloc();
    v55 = v50;
    *v25 = 141559811;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v48 = v22;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v7;
    v28 = v27;
    (*(v17 + 8))(v20, v16);
    v29 = sub_1000136BC(v26, v28, &v55);

    *(v25 + 14) = v29;
    *(v25 + 22) = 2160;
    *(v25 + 24) = 1752392040;
    *(v25 + 32) = 2081;
    v30 = v51;
    v31 = &v15[*(v51 + 20)];
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_1004E4A04(v15, type metadata accessor for BeaconEstimatedLocation);
    v35 = sub_1000136BC(v32, v34, &v55);

    *(v25 + 34) = v35;
    *(v25 + 42) = 2049;
    v36 = *(v52 + v30[7]);
    sub_1004E4A04(v52, type metadata accessor for BeaconEstimatedLocation);
    *(v25 + 44) = v36;
    *(v25 + 52) = 2049;
    v37 = *(v53 + v30[8]);
    sub_1004E4A04(v53, type metadata accessor for BeaconEstimatedLocation);
    *(v25 + 54) = v37;
    *(v25 + 62) = 2050;
    v38 = *(v54 + v30[9]);
    sub_1004E4A04(v54, type metadata accessor for BeaconEstimatedLocation);
    *(v25 + 64) = v38;
    *(v25 + 72) = 2082;
    v39 = v30[10];
    type metadata accessor for Date();
    sub_1004DB51C(&qword_1016969A0, &type metadata accessor for Date);
    v40 = v47;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_1004E4A04(v40, type metadata accessor for BeaconEstimatedLocation);
    v44 = sub_1000136BC(v41, v43, &v55);

    *(v25 + 74) = v44;
    v45 = v48;
    _os_log_impl(&_mh_execute_header, v48, v49, "Filtering the following latest location for beacon %{private,mask.hash}s, locationUUID: %{private,mask.hash}s, lat: %{private}f, long: %{private}f, accuracy: %{public}f, timestamp: %{public}s.", v25, 0x52u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004E4A04(v7, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v54, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v53, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v52, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v15, type metadata accessor for BeaconEstimatedLocation);
    (*(v17 + 8))(v20, v16);
  }
}

NSString sub_1004B5A24(double a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  v58 = a7;
  v59 = a8;
  v57 = a6;
  v20 = type metadata accessor for UUID();
  v51 = *(v20 - 8);
  v52 = v20;
  v21 = *(v51 + 64);
  __chkstk_darwin(v20);
  v50 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013AAD70;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  UUID.uuidString.getter();
  v25 = v24;
  result = String._bridgeToObjectiveC()();
  *(inited + 48) = result;
  *(inited + 56) = 0;
  *(inited + 64) = 0x6E6F697461636F6CLL;
  *(inited + 72) = 0xEF79636E65636552;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v53 = v25;
  v54 = inited + 32;
  v55 = a12;
  v27 = objc_allocWithZone(NSNumber);
  v56 = a11;
  *(inited + 80) = [v27 initWithInteger:a1];
  *(inited + 88) = 0;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x8000000101356D80;
  [a5 horizontalAccuracy];
  *(inited + 112) = [objc_allocWithZone(NSNumber) initWithDouble:v28];
  *(inited + 120) = 0;
  strcpy((inited + 128), "locationSource");
  *(inited + 143) = -18;
  v29 = type metadata accessor for BeaconEstimatedLocation();
  sub_1011726B8(*(v57 + *(v29 + 44)));
  v57 = v30;
  *(inited + 144) = String._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x8000000101356DA0;
  *(inited + 176) = [objc_allocWithZone(NSNumber) initWithInteger:*(v58 + 16)];
  *(inited + 184) = 0;
  *(inited + 192) = 0xD000000000000010;
  *(inited + 200) = 0x8000000101356DC0;
  *(inited + 208) = [objc_allocWithZone(NSNumber) initWithInteger:*(v59 + 16)];
  *(inited + 216) = 0;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000101356DE0;
  *(inited + 240) = [objc_allocWithZone(NSNumber) initWithInteger:*a9];
  *(inited + 248) = 0;
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000101356E00;
  v31 = v55;
  *(inited + 272) = [objc_allocWithZone(NSNumber) initWithInteger:*a10];
  *(inited + 280) = 0;
  *(inited + 288) = 0xD00000000000001ALL;
  *(inited + 296) = 0x8000000101356E20;
  *(inited + 304) = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  *(inited + 312) = 0;
  *(inited + 320) = 0xD000000000000024;
  *(inited + 328) = 0x8000000101356E40;
  *(inited + 336) = [objc_allocWithZone(NSNumber) initWithDouble:a3];
  *(inited + 344) = 0;
  *(inited + 352) = 0x6F43656372756F73;
  *(inited + 360) = 0xEB00000000746E75;
  *(inited + 368) = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v56, "count")}];
  *(inited + 376) = 0;
  *(inited + 384) = 0xD000000000000013;
  *(inited + 392) = 0x8000000101356E70;
  result = [v31 systemVersion];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 400) = result;
  *(inited + 408) = 0;
  strcpy((inited + 416), "batteryLevel");
  *(inited + 429) = 0;
  *(inited + 430) = -5120;
  *(inited + 432) = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v31, "batteryLevel")}];
  *(inited + 440) = 0;
  *(inited + 448) = 0xD00000000000001BLL;
  *(inited + 456) = 0x8000000101356E90;
  result = [v31 systemVersion];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v32 = result;

  *(inited + 464) = v32;
  *(inited + 472) = 0;
  *(inited + 480) = 0x6563697665447369;
  *(inited + 488) = 0xEF6465687361654CLL;
  v33 = [v31 taskInformation];
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_1004DB51C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
  v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v34 + 16) && (v35 = sub_100777014(SPBeaconTaskNameBeginLeashing), (v36 & 1) != 0))
  {
    v37 = *(*(v34 + 56) + 8 * v35);

    v38 = [v37 state];

    v39 = v38 == 0;
  }

  else
  {

    v39 = 0;
  }

  *(inited + 496) = v39;
  *(inited + 504) = 1;
  *(inited + 512) = 0xD000000000000011;
  *(inited + 520) = 0x8000000101350630;
  *(inited + 528) = [v31 connected];
  *(inited + 536) = 1;
  v40 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  v41 = [objc_opt_self() sharedInstance];
  v42 = [v41 isInternalBuild];

  if (v42)
  {
    v43 = [v31 identifier];
    v44 = v50;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v51 + 8))(v44, v52);
    v45 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v40;
    sub_100FFC418(v45, 0, 0x6544646572696170, 0xEE00444965636976, isUniquelyReferenced_nonNull_native);
    v40 = v60;
    v47 = [v31 serialNumber];
    if (v47)
    {
      v48 = v47;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v40;
      sub_100FFC418(v48, 0, 0xD000000000000018, 0x8000000101350650, v49);
      return v60;
    }
  }

  return v40;
}

unint64_t sub_1004B6248(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013917A0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000101356D00;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:*(a1 + 16)];
  *(inited + 56) = 0;
  *(inited + 64) = 0xD00000000000001CLL;
  *(inited + 72) = 0x8000000101356D20;
  *(inited + 80) = [objc_allocWithZone(NSNumber) initWithInteger:*(a2 + 16)];
  *(inited + 88) = 0;
  *(inited + 96) = 0x496E6F6973736573;
  *(inited + 104) = 0xE900000000000044;
  UUID.uuidString.getter();
  v11 = String._bridgeToObjectiveC()();

  *(inited + 112) = v11;
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000101356D40;
  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:*a4];
  *(inited + 152) = 0;
  *(inited + 160) = 0xD00000000000001BLL;
  *(inited + 168) = 0x8000000101356D60;
  *(inited + 176) = [objc_allocWithZone(NSNumber) initWithInteger:*a5];
  *(inited + 184) = 0;
  strcpy((inited + 192), "averageRecency");
  *(inited + 207) = -18;
  *(inited + 208) = [objc_allocWithZone(NSNumber) initWithInteger:*a6];
  *(inited + 216) = 0;
  v12 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1004B6488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 88);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_1004E3184;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101623050;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v9, v6);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_1004B676C(uint64_t a1, uint64_t a2, char *a3)
{
  Transaction.capture()();
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138C0D0;
  v10 = SPBeaconTypeDurian;
  v11 = SPBeaconTypeAccessory;
  *(v9 + 32) = SPBeaconTypeDurian;
  *(v9 + 40) = v11;
  v12 = SPBeaconTypeHele;
  v13 = SPBeaconTypeSelfBeaconing;
  *(v9 + 48) = SPBeaconTypeHele;
  *(v9 + 56) = v13;
  v14 = SPBeaconTypeVirtualMeDevice;
  *(v9 + 64) = SPBeaconTypeVirtualMeDevice;
  v15 = qword_101694940;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v21 = qword_10177B348;
  v22 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v23 = sub_1010741C0(v39);

  My = type metadata accessor for Feature.FindMy();
  *(&v40 + 1) = My;
  *&v41 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v25 = sub_1000280DC(&v39);
  (*(*(My - 8) + 104))(v25, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v39);
  *&v33 = v23;
  BYTE8(v33) = 0;
  *&v34 = &off_101609158;
  BYTE8(v34) = 0;
  *&v35 = v6;
  *(&v35 + 1) = v8;
  *&v36 = v9;
  BYTE8(v36) = My & 1;
  v37 = 0uLL;
  v38 = 1;
  v44 = 1;
  v41 = v35;
  v42 = v36;
  v43 = 0uLL;
  v39 = v33;
  v40 = v34;
  v26 = *(v21 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074054(v32);
  v28 = v27;

  v29 = sub_100908168(_swiftEmptyArrayStorage);
  sub_1004D7164(a3, &v39, 0, v29, a2, v28, 60.0);

  return sub_1001119F4(&v33);
}

uint64_t sub_1004B6AB8(unint64_t a1, uint64_t *a2)
{
  v379 = a2;
  v393 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v393 - 8) + 64);
  v4 = __chkstk_darwin(v393);
  v392 = &v362 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v391 = &v362 - v7;
  __chkstk_darwin(v6);
  v389 = (&v362 - v8);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v372 = &v362 - v11;
  v12 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v370 = &v362 - v14;
  v15 = sub_1000BC4D4(&qword_1016A2478, &unk_1013AAF30);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v398 = &v362 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v401 = &v362 - v19;
  v404 = type metadata accessor for Date();
  v411 = *(v404 - 8);
  v20 = *(v411 + 64);
  v21 = __chkstk_darwin(v404);
  v402 = &v362 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v403 = &v362 - v23;
  v24 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v384 = (&v362 - v26);
  v383 = type metadata accessor for SharedBeaconRecord(0);
  v365 = *(v383 - 8);
  v27 = *(v365 + 64);
  __chkstk_darwin(v383);
  v378 = &v362 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = type metadata accessor for SystemInfo.DeviceLockState();
  v374 = *(v423 - 1);
  v29 = *(v374 + 64);
  v30 = __chkstk_darwin(v423);
  v426 = (&v362 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v425 = &v362 - v32;
  Configuration = type metadata accessor for LocationFetchConfiguration();
  v366 = *(Configuration - 8);
  v33 = *(v366 + 64);
  v34 = __chkstk_darwin(Configuration);
  v368 = &v362 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = v35;
  __chkstk_darwin(v34);
  v382 = &v362 - v36;
  v429 = 0;
  v37 = type metadata accessor for UUID();
  v428 = *(v37 - 8);
  v38 = *(v428 + 64);
  v39 = __chkstk_darwin(v37);
  v371 = &v362 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v386 = &v362 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v362 - v44;
  v46 = __chkstk_darwin(v43);
  v416 = &v362 - v47;
  v48 = __chkstk_darwin(v46);
  v380 = &v362 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = &v362 - v51;
  v53 = __chkstk_darwin(v50);
  v373 = &v362 - v54;
  v55 = __chkstk_darwin(v53);
  v424 = &v362 - v56;
  v57 = __chkstk_darwin(v55);
  v59 = (&v362 - v58);
  v60 = __chkstk_darwin(v57);
  v62 = (&v362 - v61);
  v63 = __chkstk_darwin(v60);
  v65 = &v362 - v64;
  __chkstk_darwin(v63);
  v394 = &v362 - v66;
  if (qword_101694770 != -1)
  {
    goto LABEL_221;
  }

  while (1)
  {
    v67 = type metadata accessor for Logger();
    v68 = sub_1000076D4(v67, qword_10177AE10);
    sub_10000F4C8(a1, &v437);
    v397 = v68;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    sub_1004E2CD8(a1);
    v71 = os_log_type_enabled(v69, v70);
    v417 = v62;
    v385 = v65;
    v390 = v45;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v437 = v73;
      *v72 = 136446210;
      v74 = sub_100012BE0();
      v76 = sub_1000136BC(v74, v75, &v437);

      *(v72 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v69, v70, "One-shot location request with context %{public}s.", v72, 0xCu);
      sub_100007BAC(v73);

      v62 = v417;
    }

    v395 = v59;
    v430 = v37;
    v77 = [objc_opt_self() currentConnection];
    v376 = *a1;
    if (v376 == 2)
    {
      v78 = v379;
      v79 = *(v379 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_appActivity);
      sub_1000138F0();
      v80 = *(v78 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
      sub_10089193C();
    }

    v375 = v77;
    v81 = *(a1 + 8);
    v59 = a1;
    a1 = *(v81 + 16);
    v82 = v379[35];
    v45 = "ion16q24";
    v377 = v59;
    v419 = v82;
    if (a1)
    {
      v421 = *(v428 + 16);
      v400 = (*(v428 + 80) + 32) & ~*(v428 + 80);
      v83 = v81 + v400;
      v427 = *(v428 + 72);
      v415 = v374 + 104;
      v414 = (v374 + 8);
      LODWORD(v413) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
      v418 = (v428 + 8);
      v387 = (v428 + 56);
      v396 = (v428 + 48);
      *&v422 = v428 + 16;
      v420 = (v428 + 32);
      v363 = v81;

      v412 = xmmword_101385D80;
      v364 = v83;
      v84 = v83;
      v85 = a1;
      v381 = _swiftEmptyArrayStorage;
      v86 = v394;
      v388 = a1;
      while (1)
      {
        v405 = v85;
        v421(v86, v84, v430);
        static os_log_type_t.info.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v91 = qword_10177C380;
        *&v410 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v92 = swift_allocObject();
        *(v92 + 16) = v412;
        v93 = UUID.uuidString.getter();
        v95 = v94;
        *(v92 + 56) = &type metadata for String;
        v409 = sub_100008C00();
        *(v92 + 64) = v409;
        *(v92 + 32) = v93;
        *(v92 + 40) = v95;
        os_log(_:dso:log:_:_:)();

        v96 = v425;
        static SystemInfo.lockState.getter();
        v97 = v426;
        v98 = v423;
        v408 = *v415;
        v408(v426, v413, v423);
        v407 = sub_1004DB51C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
        LOBYTE(v95) = dispatch thunk of static Equatable.== infix(_:_:)();
        v99 = *v414;
        (*v414)(v97, v98);
        v406 = v99;
        v99(v96, v98);
        v399 = v91;
        if (v95)
        {
          break;
        }

        v100 = sub_100007F54();
        __chkstk_darwin(v100);
        *(&v362 - 2) = v86;
        v101 = v429;
        sub_1000314D0(sub_1004E2D2C, v100, &v437);
        v429 = v101;

        v102 = *(&v438 + 1);
        v87 = v389;
        if (!*(&v438 + 1))
        {
          goto LABEL_9;
        }

        v103 = v439;
        sub_1000035D0(&v437, *(&v438 + 1));
        (*(*(*(v103 + 1) + 8) + 32))(v102);
        v89 = *v418;
        v104 = v430;
        (*v418)(v86, v430);
        (*v387)(v87, 0, 1, v104);
        sub_100007BAC(&v437);
        v105 = (*v396)(v87, 1, v104);
        v88 = v388;
        if (v105 != 1)
        {
          v106 = *v420;
          (*v420)(v380, v87, v104);
          v107 = v381;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_100A5BFE0(0, v107[2] + 1, 1, v107);
          }

          v109 = v107[2];
          v108 = v107[3];
          if (v109 >= v108 >> 1)
          {
            v107 = sub_100A5BFE0(v108 > 1, v109 + 1, 1, v107);
          }

          v107[2] = v109 + 1;
          v381 = v107;
          v106(v107 + v400 + v109 * v427, v380, v430);
          v86 = v394;
          goto LABEL_11;
        }

        v86 = v394;
LABEL_10:
        sub_10000B3A8(v87, &qword_1016980D0, &unk_10138F3B0);
LABEL_11:
        v84 += v427;
        v85 = v405 - 1;
        if (v405 == 1)
        {
          v110 = sub_10000954C(v363);

          v111 = sub_10000954C(v381);

          if (*(v111 + 16) <= v110[2] >> 3)
          {
            *&v437 = v110;
            sub_10087D5B4(v111);

            v389 = v437;
          }

          else
          {
            v389 = sub_100610BC8(v111, v110);
          }

          v123 = v364;
          *&v437 = _swiftEmptyArrayStorage;
          sub_101123D4C(0, v88, 0);
          v124 = v437;
          v405 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer;
          v125 = v430;
          do
          {
            v126 = v390;
            v421(v390, v123, v125);
            v127 = v419;
            sub_100030068();

            v129 = *&v405[v127];
            __chkstk_darwin(v128);
            *(&v362 - 2) = v127;
            *(&v362 - 1) = v126;
            v130 = v392;
            v131 = v429;
            QueueSynchronizer.conditionalSync<A>(_:)();
            v429 = v131;
            v132 = v391;
            sub_1000D2AD8(v130, v391, &qword_1016980D0, &unk_10138F3B0);
            v133 = *v396;
            if ((*v396)(v132, 1, v125) == 1)
            {
              v134 = v126;
              v135 = *v420;
              (*v420)(v416, v134, v125);
              if (v133(v132, 1, v125) != 1)
              {
                sub_10000B3A8(v132, &qword_1016980D0, &unk_10138F3B0);
              }
            }

            else
            {
              (v89)(v126, v125);
              v135 = *v420;
              (*v420)(v416, v132, v125);
            }

            *&v437 = v124;
            v137 = *(v124 + 2);
            v136 = *(v124 + 3);
            if (v137 >= v136 >> 1)
            {
              sub_101123D4C(v136 > 1, v137 + 1, 1);
              v124 = v437;
            }

            *(v124 + 2) = v137 + 1;
            v138 = &v124[v400];
            v139 = v427;
            v125 = v430;
            v135(&v124[v400 + v137 * v427], v416, v430);
            v123 += v139;
            --v88;
          }

          while (v88);
          v396 = v135;
          v405 = v89;
          v140 = v137 + 1;
          v141 = &_mh_execute_header;
          v416 = _swiftEmptyArrayStorage;
          v142 = v386;
          v143 = v399;
          v394 = v124;
          do
          {
            v421(v142, v138, v430);
            static os_log_type_t.info.getter();
            v144 = swift_allocObject();
            *(v144 + 16) = v412;
            v145 = UUID.uuidString.getter();
            v146 = v409;
            *(v144 + 56) = &type metadata for String;
            *(v144 + 64) = v146;
            *(v144 + 32) = v145;
            *(v144 + 40) = v147;
            os_log(_:dso:log:_:_:)();

            v148 = v425;
            static SystemInfo.lockState.getter();
            v149 = v143;
            v150 = v426;
            v52 = v423;
            v408(v426, v413, v423);
            v151 = dispatch thunk of static Equatable.== infix(_:_:)();
            v152 = v141;
            v153 = v406;
            v406(v150, v52);
            v153(v148, v52);
            if (v151)
            {
              static os_log_type_t.default.getter();
              os_log(_:dso:log:_:_:)();
              v433 = 0;
              v432 = 0u;
              aBlock = 0u;
            }

            else
            {
              v154 = sub_100007F54();
              __chkstk_darwin(v154);
              *(&v362 - 2) = v142;
              v155 = v429;
              sub_1000314D0(sub_100030E14, v154, &aBlock);
              v429 = v155;
            }

            v143 = v149;
            v141 = v152;
            (v405)(v142, v430);
            if (*(&v432 + 1))
            {
              sub_10000A748(&aBlock, &v437);
              v156 = v416;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v436 = v156;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v156 = sub_1000084AC(0, v156[2] + 1, 1, v156);
                v436 = v156;
              }

              v159 = v156[2];
              v158 = v156[3];
              if (v159 >= v158 >> 1)
              {
                v416 = sub_1000084AC((v158 > 1), v159 + 1, 1, v156);
                v436 = v416;
              }

              else
              {
                v416 = v156;
              }

              v52 = *(&v438 + 1);
              v160 = v439;
              v161 = sub_10015049C(&v437, *(&v438 + 1));
              v162 = *(*(v52 - 1) + 64);
              __chkstk_darwin(v161);
              v164 = &v362 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v165 + 16))(v164);
              sub_100B039C0(v159, v164, &v436, v52, v160);
              sub_100007BAC(&v437);
              v142 = v386;
              v143 = v399;
            }

            else
            {
              sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
            }

            v138 += v427;
            --v140;
          }

          while (v140);

          v178 = v377;
          v166 = v377[3];

          v168 = sub_10112A91C(v167);

          v169 = sub_10000A23C(v416, v168, 0, 0);

          v170 = *(v169 + 16);
          a1 = v371;
          if (v170)
          {
            v171 = v178;
            *&aBlock = _swiftEmptyArrayStorage;
            sub_101123D4C(0, v170, 0);
            v59 = aBlock;
            v52 = (v169 + 32);
            v172 = v430;
            do
            {
              sub_10001F280(v52, &v437);
              v174 = *(&v438 + 1);
              v173 = v439;
              sub_1000035D0(&v437, *(&v438 + 1));
              (*(*(*(v173 + 1) + 8) + 32))(v174);
              sub_100007BAC(&v437);
              *&aBlock = v59;
              v176 = v59[2];
              v175 = v59[3];
              if (v176 >= v175 >> 1)
              {
                sub_101123D4C(v175 > 1, v176 + 1, 1);
                v59 = aBlock;
              }

              v59[2] = v176 + 1;
              (v396)(v59 + v400 + v176 * v427, a1, v172);
              v52 += 40;
              --v170;
            }

            while (v170);

            v178 = v171;
          }

          else
          {

            v59 = _swiftEmptyArrayStorage;
          }

          v436 = v59;
          sub_1003996FC(v389);
          v37 = v436;
          v62 = v417;
          v65 = v385;
          v45 = 0x101385000;
          goto LABEL_63;
        }
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v439 = 0;
      v437 = 0u;
      v438 = 0u;
      v87 = v389;
LABEL_9:
      v88 = v388;
      v89 = *v418;
      v86 = v394;
      v90 = v430;
      (*v418)(v394, v430);
      sub_10000B3A8(&v437, &qword_101696920, &unk_10138B200);
      (*v387)(v87, 1, 1, v90);
      goto LABEL_10;
    }

    v112 = sub_100007F54();
    v113 = v59[3];

    v115 = sub_10112A91C(v114);

    v116 = sub_10000A23C(v112, v115, 0, 0);

    v117 = *(v116 + 16);
    if (v117)
    {
      *&aBlock = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v117, 0);
      v37 = aBlock;
      v118 = v116 + 32;
      v59 = (v428 + 32);
      a1 = v430;
      do
      {
        sub_10001F280(v118, &v437);
        v120 = *(&v438 + 1);
        v119 = v439;
        sub_1000035D0(&v437, *(&v438 + 1));
        (*(*(*(v119 + 1) + 8) + 32))(v120);
        sub_100007BAC(&v437);
        *&aBlock = v37;
        v122 = *(v37 + 16);
        v121 = *(v37 + 24);
        if (v122 >= v121 >> 1)
        {
          sub_101123D4C(v121 > 1, v122 + 1, 1);
          v37 = aBlock;
        }

        *(v37 + 16) = v122 + 1;
        (*(v428 + 32))(v37 + ((*(v428 + 80) + 32) & ~*(v428 + 80)) + *(v428 + 72) * v122, v52, a1);
        v118 += 40;
        --v117;
      }

      while (v117);

      v178 = v377;
      v62 = v417;
      v45 = 0x101385000;
    }

    else
    {
      v178 = v59;

      v37 = _swiftEmptyArrayStorage;
    }

    v436 = v37;
    v65 = v385;
LABEL_63:
    v409 = v178[4];
    v420 = *(v37 + 16);
    v418 = v37;
    if (v420)
    {
      a1 = 0;
      v416 = (v428 + 16);
      v427 = v428 + 8;
      LODWORD(v415) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
      v414 = (v374 + 104);
      v413 = (v374 + 8);
      *&v177 = 141558275;
      v410 = v177;
      v412 = *(v45 + 3456);
      v421 = _swiftEmptyArrayStorage;
      while (a1 < *(v37 + 16))
      {
        v179 = v37 + ((*(v428 + 80) + 32) & ~*(v428 + 80)) + *(v428 + 72) * a1;
        v180 = *(v428 + 16);
        v181 = v430;
        v180(v65, v179, v430);
        v180(v62, v65, v181);
        v182 = Logger.logObject.getter();
        v183 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          *&v437 = v185;
          *v184 = v410;
          *(v184 + 4) = 1752392040;
          *(v184 + 12) = 2081;
          sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
          v186 = dispatch thunk of CustomStringConvertible.description.getter();
          v188 = v187;
          *&v422 = *v427;
          (v422)(v417, v181);
          v189 = sub_1000136BC(v186, v188, &v437);
          v65 = v385;

          *(v184 + 14) = v189;
          v52 = &_mh_execute_header;
          _os_log_impl(&_mh_execute_header, v182, v183, "One-shot location includes beaconID: %{private,mask.hash}s.", v184, 0x16u);
          sub_100007BAC(v185);
        }

        else
        {

          *&v422 = *v427;
          (v422)(v62, v181);
          v52 = &_mh_execute_header;
        }

        static os_log_type_t.info.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v190 = swift_allocObject();
        *(v190 + 16) = v412;
        v191 = UUID.uuidString.getter();
        v45 = v65;
        v193 = v192;
        *(v190 + 56) = &type metadata for String;
        *(v190 + 64) = sub_100008C00();
        *(v190 + 32) = v191;
        *(v190 + 40) = v193;
        os_log(_:dso:log:_:_:)();

        v194 = v425;
        static SystemInfo.lockState.getter();
        v59 = v426;
        v195 = v423;
        (*v414)(v426, v415, v423);
        sub_1004DB51C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
        v196 = dispatch thunk of static Equatable.== infix(_:_:)();
        v197 = *v413;
        (*v413)(v59, v195);
        v197(v194, v195);
        if (v196)
        {
          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          v433 = 0;
          v432 = 0u;
          aBlock = 0u;
        }

        else
        {
          v198 = sub_100007F54();
          __chkstk_darwin(v198);
          *(&v362 - 2) = v45;
          v59 = v429;
          sub_1000314D0(sub_1004E4EC0, v198, &aBlock);
          v429 = v59;
        }

        v65 = v45;
        (v422)(v45, v430);
        v62 = v417;
        if (*(&v432 + 1))
        {
          sub_10000A748(&aBlock, &v437);
          sub_10000A748(&v437, &aBlock);
          v199 = v421;
          v200 = swift_isUniquelyReferenced_nonNull_native();
          v435[0] = v199;
          if ((v200 & 1) == 0)
          {
            v421 = sub_1000084AC(0, *(v421 + 2) + 1, 1, v421);
            v435[0] = v421;
          }

          v202 = *(v421 + 2);
          v201 = *(v421 + 3);
          if (v202 >= v201 >> 1)
          {
            v421 = sub_1000084AC((v201 > 1), v202 + 1, 1, v421);
            v435[0] = v421;
          }

          v203 = *(&v432 + 1);
          v204 = v433;
          v205 = sub_10015049C(&aBlock, *(&v432 + 1));
          v59 = &v362;
          v206 = *(*(v203 - 8) + 64);
          __chkstk_darwin(v205);
          v208 = &v362 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v209 + 16))(v208);
          sub_100B039C0(v202, v208, v435, v203, v204);
          sub_100007BAC(&aBlock);
        }

        else
        {
          sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
        }

        ++a1;
        v37 = v418;
        if (v420 == a1)
        {
          goto LABEL_83;
        }
      }

LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
      goto LABEL_217;
    }

    v421 = _swiftEmptyArrayStorage;
LABEL_83:
    v210 = sub_1004DB99C(v421);

    v211 = v382;
    v212 = sub_101106664(v376, v382);
    v213 = v211[1];
    v427 = v210;
    if (v213)
    {
      a1 = v210[2];
      if (a1)
      {
        v65 = 0;
        v37 = (v210 + 4);
        v52 = (v365 + 56);
        v45 = _swiftEmptyArrayStorage;
        v62 = &qword_10139FD30;
        v59 = v384;
        v214 = v383;
        while (1)
        {
          if (v65 >= *(v427 + 16))
          {
            goto LABEL_218;
          }

          sub_10001F280(v37, &v437);
          sub_10001F280(&v437, &aBlock);
          sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
          v215 = swift_dynamicCast();
          v216 = *v52;
          if ((v215 & 1) == 0)
          {
            break;
          }

          v216(v59, 0, 1, v214);
          v217 = v378;
          sub_10002AAA4(v59, v378, type metadata accessor for SharedBeaconRecord);
          v218 = *(v217 + *(v214 + 64));
          sub_1004E4A04(v217, type metadata accessor for SharedBeaconRecord);
          if (v218 == 1)
          {
            goto LABEL_93;
          }

          sub_100007BAC(&v437);
LABEL_87:
          ++v65;
          v37 += 40;
          if (a1 == v65)
          {
            goto LABEL_99;
          }
        }

        v216(v59, 1, 1, v214);
        sub_10000B3A8(v59, &unk_101698C30, &unk_101392630);
LABEL_93:
        sub_10000A748(&v437, &aBlock);
        v219 = swift_isUniquelyReferenced_nonNull_native();
        v435[0] = v45;
        if ((v219 & 1) == 0)
        {
          sub_100025B1C(0, *(v45 + 16) + 1, 1);
          v45 = v435[0];
        }

        v221 = *(v45 + 16);
        v220 = *(v45 + 24);
        if (v221 >= v220 >> 1)
        {
          sub_100025B1C((v220 > 1), v221 + 1, 1);
        }

        v222 = *(&v432 + 1);
        v223 = v433;
        v224 = sub_10015049C(&aBlock, *(&v432 + 1));
        v225 = *(*(v222 - 8) + 64);
        __chkstk_darwin(v224);
        v227 = &v362 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v228 + 16))(v227);
        sub_1006252D4(v221, v227, v435, v222, v223);
        sub_100007BAC(&aBlock);
        v45 = v435[0];
        v59 = v384;
        v214 = v383;
        goto LABEL_87;
      }

      v45 = _swiftEmptyArrayStorage;
LABEL_99:
      sub_1004AF1D8(v45);

      v211 = v382;
    }

    if (*v211 == 1)
    {
      break;
    }

    *&v412 = 0;
    v413 = 0;
LABEL_134:
    v52 = v403;
    v278 = static Date.distantPast.getter();
    __chkstk_darwin(v278);
    v62 = v379;
    v279 = v409;
    *(&v362 - 4) = v379;
    *(&v362 - 3) = v279;
    *(&v362 - 2) = v52;
    v280 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_1004E2D68, (&v362 - 6), v418);
    v281 = *(v411 + 8);
    v411 += 8;
    v421 = v281;
    (v281)(v52, v404);
    *&aBlock = _swiftEmptyDictionarySingleton;

    v429 = sub_1004DB7BC(_swiftEmptyDictionarySingleton, v280, v62, &aBlock);

    if (v377[7] & 1) != 0 || (*(v377 + 57))
    {
      v282 = v375;
      if (v375)
      {
        v283 = v377;
        sub_10000F4C8(v377, &v437);
        v284 = v282;
        v285 = Logger.logObject.getter();
        v286 = static os_log_type_t.default.getter();
        sub_1004E2CD8(v283);
        if (os_log_type_enabled(v285, v286))
        {
          v52 = swift_slowAlloc();
          v287 = swift_slowAlloc();
          *&v437 = v287;
          *v52 = 141558275;
          *(v52 + 4) = 1752392040;
          *(v52 + 6) = 2081;
          if (v283[6])
          {
            v288 = v283[5];
            v65 = v283[6];
          }

          else
          {
            v288 = 0x6E776F6E6B6E75;
            v65 = 0xE700000000000000;
          }

          v294 = sub_1000136BC(v288, v65, &v437);

          *(v52 + 14) = v294;
          _os_log_impl(&_mh_execute_header, v285, v286, "Subscribing context for %{private,mask.hash}s.", v52, 0x16u);
          sub_100007BAC(v287);
        }

        v295 = *(v379 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_locationFetchService);
        sub_1007D6F8C(v284, v377);
      }

      else
      {
        v289 = v377;
        sub_10000F4C8(v377, &v437);
        v284 = Logger.logObject.getter();
        v290 = static os_log_type_t.default.getter();
        sub_1004E2CD8(v289);
        if (os_log_type_enabled(v284, v290))
        {
          v291 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v437 = v52;
          *v291 = 141558531;
          *(v291 + 4) = 1752392040;
          *(v291 + 12) = 2081;
          if (v289[6])
          {
            v292 = v289[5];
            v293 = v289[6];
          }

          else
          {
            v292 = 0x6E776F6E6B6E75;
            v293 = 0xE700000000000000;
          }

          v296 = sub_1000136BC(v292, v293, &v437);

          *(v291 + 14) = v296;
          *(v291 + 22) = 2080;
          v435[0] = 0;
          sub_1000BC4D4(&qword_1016A2488, &qword_1013AAF58);
          v297 = String.init<A>(describing:)();
          v65 = v298;
          v299 = sub_1000136BC(v297, v298, &v437);

          *(v291 + 24) = v299;
          _os_log_impl(&_mh_execute_header, v284, v290, "Did not subscribe context for %{private,mask.hash}s,\nconnection: %s. No connection.", v291, 0x20u);
          swift_arrayDestroy();
        }
      }
    }

    v300 = *(aBlock + 64);
    v419 = aBlock + 64;
    v301 = 1 << *(aBlock + 32);
    if (v301 < 64)
    {
      v302 = ~(-1 << v301);
    }

    else
    {
      v302 = -1;
    }

    v303 = v302 & v300;
    v417 = (v301 + 63) >> 6;
    v426 = (v428 + 16);
    v414 = (v428 + 32);
    v427 = v428 + 8;
    v415 = aBlock;

    v59 = 0;
LABEL_154:
    v310 = v398;
    v311 = v419;
    v312 = v417;
    while (2)
    {
      if (v303)
      {
        v313 = v59;
LABEL_168:
        v420 = ((v303 - 1) & v303);
        v315 = __clz(__rbit64(v303)) | (v313 << 6);
        v316 = v415;
        v317 = v428;
        v318 = v395;
        v319 = v430;
        (*(v428 + 16))(v395, *(v415 + 48) + *(v428 + 72) * v315, v430);
        sub_10001F280(*(v316 + 56) + 40 * v315, &v437);
        v320 = sub_1000BC4D4(&qword_1016A2480, &qword_1013AAF40);
        v321 = *(v320 + 48);
        (*(v317 + 32))(v310, v318, v319);
        sub_10000A748(&v437, v310 + v321);
        (*(*(v320 - 8) + 56))(v310, 0, 1, v320);
      }

      else
      {
        if (v312 <= v59 + 1)
        {
          v314 = v59 + 1;
        }

        else
        {
          v314 = v312;
        }

        v37 = (v314 - 1);
        v45 = &qword_1016A2480;
        while (1)
        {
          v313 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
            goto LABEL_213;
          }

          if (v313 >= v312)
          {
            break;
          }

          v303 = *(v311 + 8 * v313);
          v59 = (v59 + 1);
          if (v303)
          {
            v59 = v313;
            goto LABEL_168;
          }
        }

        v358 = sub_1000BC4D4(&qword_1016A2480, &qword_1013AAF40);
        (*(*(v358 - 8) + 56))(v310, 1, 1, v358);
        v420 = 0;
        v59 = v37;
      }

      v322 = v401;
      sub_1000D2AD8(v310, v401, &qword_1016A2478, &unk_1013AAF30);
      v323 = sub_1000BC4D4(&qword_1016A2480, &qword_1013AAF40);
      if ((*(*(v323 - 8) + 48))(v322, 1, v323) == 1)
      {

        v359 = type metadata accessor for TaskPriority();
        v360 = v370;
        (*(*(v359 - 8) + 56))(v370, 1, 1, v359);
        v361 = swift_allocObject();
        *(v361 + 16) = 0;
        *(v361 + 24) = 0;
        sub_10025EDD4(0, 0, v360, &unk_1013AAF50, v361);

        sub_1004E4A04(v382, type metadata accessor for LocationFetchConfiguration);

        return sub_1000BB27C(v412);
      }

      sub_10000A748((v322 + *(v323 + 48)), &v437);
      v324 = *(&v438 + 1);
      v325 = v439;
      sub_1000035D0(&v437, *(&v438 + 1));
      v326 = (*(v325 + 2))(v324, v325);
      v327 = v326;
      v435[0] = _swiftEmptyArrayStorage;
      v328 = v326 + 56;
      v329 = 1 << *(v326 + 32);
      if (v329 < 64)
      {
        v330 = ~(-1 << v329);
      }

      else
      {
        v330 = -1;
      }

      v45 = v330 & *(v326 + 56);
      v65 = (v329 + 63) >> 6;

      v37 = 0;
      v425 = _swiftEmptyArrayStorage;
LABEL_174:
      v52 = v430;
      a1 = v424;
      while (v45)
      {
LABEL_181:
        v332 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        (*(v428 + 16))(a1, *(v327 + 48) + *(v428 + 72) * (v332 | (v37 << 6)), v52);
        if (*(v429 + 16))
        {
          v333 = sub_1000210EC(a1);
          a1 = v424;
          if (v334)
          {
            v335 = *(*(v429 + 56) + 8 * v333);
            v336 = v424;
            v425 = *v427;
            v62 = v335;
            (v425)(v336, v52);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v435[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v435[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v425 = *((v435[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v425 = v435[0];
            goto LABEL_174;
          }
        }

        (*v427)(a1, v52);
      }

      while (1)
      {
        v331 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
          goto LABEL_215;
        }

        if (v331 >= v65)
        {
          break;
        }

        v45 = *(v328 + 8 * v331);
        ++v37;
        if (v45)
        {
          v37 = v331;
          goto LABEL_181;
        }
      }

      v65 = v425;
      v37 = v425 >> 62;
      if (v425 >> 62)
      {
        v62 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v62 = *((v425 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v310 = v398;
      if (!v62)
      {
        goto LABEL_157;
      }

      *&v422 = v65 & 0xC000000000000001;
      if ((v65 & 0xC000000000000001) != 0)
      {
        v337 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_192:
        v423 = v337;
        if (v37)
        {
          v37 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v37 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v45 = *(&v438 + 1);
        v338 = v439;
        sub_1000035D0(&v437, *(&v438 + 1));
        if (v37 == (*(v338 + 3))(v45, v338))
        {
          v339 = 0;
          v416 = (v65 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (v62 == v339)
            {

              v304 = v52;
              v305 = *(&v438 + 1);
              v52 = v439;
              sub_1000035D0(&v437, *(&v438 + 1));
              v306 = v395;
              (*(v52 + 1))(v305, v52);
              v307 = v429;
              v308 = swift_isUniquelyReferenced_nonNull_native();
              v435[0] = v307;
              sub_100FFA5A0(v423, v306, v308);
              v309 = *v427;
              (*v427)(v306, v304);
              v429 = v435[0];
              v309(v401, v304);
              sub_100007BAC(&v437);
              v303 = v420;
              goto LABEL_154;
            }

            if (v422)
            {
              v340 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v339 >= *(v416 + 2))
              {
                goto LABEL_216;
              }

              v340 = *(v65 + 8 * v339 + 32);
            }

            v45 = v340;
            if (__OFADD__(v339, 1))
            {
              goto LABEL_214;
            }

            v37 = v423;
            v341 = [v45 timestamp];
            v342 = v403;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v343 = [v37 timestamp];
            v344 = v402;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            LOBYTE(v343) = static Date.== infix(_:_:)();
            v345 = v344;
            v346 = v404;
            a1 = v411;
            v347 = v421;
            (v421)(v345, v404);
            v347(v342, v346);
            if ((v343 & 1) == 0)
            {
              break;
            }

            [v45 longitude];
            v349 = v348;
            [v37 longitude];
            if (v349 != v350)
            {
              break;
            }

            [v45 latitude];
            v352 = v351;
            [v37 latitude];
            if (v352 != v353)
            {
              break;
            }

            [v45 horizontalAccuracy];
            v355 = v354;
            [v37 horizontalAccuracy];
            v357 = v356;

            v339 = (v339 + 1);
            v52 = v430;
            v65 = v425;
            if (v355 != v357)
            {
              goto LABEL_156;
            }
          }

          v52 = v430;
          v65 = v425;
        }

LABEL_156:

        v310 = v398;
LABEL_157:

        (*v427)(v401, v52);
        sub_100007BAC(&v437);
        v311 = v419;
        v312 = v417;
        v303 = v420;
        continue;
      }

      break;
    }

    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v337 = *(v65 + 32);
      goto LABEL_192;
    }

LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    swift_once();
  }

  v229 = &v211[*(Configuration + 28)];
  __chkstk_darwin(v212);
  v230 = v409;
  *(&v362 - 4) = v379;
  *(&v362 - 3) = v230;
  *(&v362 - 2) = v231;
  v59 = v429;
  v52 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_1004E4EFC, (&v362 - 6), v418);
  v429 = v59;
  if (v376)
  {
    v426 = *(v427 + 16);
    if (v426)
    {
      v232 = 0;
      v62 = (v427 + 32);
      v65 = v428 + 8;
      v37 = _swiftEmptyArrayStorage;
      a1 = v373;
      while (1)
      {
        if (v232 >= *(v427 + 16))
        {
          goto LABEL_220;
        }

        sub_10001F280(v62, &v437);
        v233 = *(&v438 + 1);
        v234 = v439;
        sub_1000035D0(&v437, *(&v438 + 1));
        v45 = (*(v234 + 18))(v233, v234);
        v236 = *(&v438 + 1);
        v235 = v439;
        sub_1000035D0(&v437, *(&v438 + 1));
        (*(*(*(v235 + 1) + 8) + 32))(v236);
        if (!*(v52 + 2))
        {
          break;
        }

        v237 = sub_1000210EC(a1);
        if ((v238 & 1) == 0)
        {
          break;
        }

        v239 = *(*(v52 + 7) + 8 * v237);
        v59 = *v65;

        (v59)(a1, v430);
        v240 = *(v239 + 16);

        if (v240)
        {
          goto LABEL_115;
        }

        v425 = v37;
        v242 = *(&v438 + 1);
        v241 = v439;
        sub_1000035D0(&v437, *(&v438 + 1));
        v243 = v395;
        (*(*(*(v241 + 1) + 8) + 32))(v242);
        if (qword_101694920 != -1)
        {
          swift_once();
        }

        v244 = sub_100035730(v243, 0, 0);
        v245 = v372;
        v246 = sub_10003ABC0(v372, v243, v244, 1);

        (v59)(v243, v430);
        sub_10000B3A8(v245, &unk_101696900, &unk_10138B1E0);
        a1 = v373;
        v37 = v425;
        if (v45 & 1 | ((v246 & 1) == 0))
        {
LABEL_116:
          sub_10000A748(&v437, &aBlock);
          v247 = swift_isUniquelyReferenced_nonNull_native();
          v435[0] = v37;
          if ((v247 & 1) == 0)
          {
            sub_100025B1C(0, *(v37 + 16) + 1, 1);
            v37 = v435[0];
          }

          v45 = *(v37 + 16);
          v248 = *(v37 + 24);
          if (v45 >= v248 >> 1)
          {
            sub_100025B1C((v248 > 1), v45 + 1, 1);
          }

          v249 = *(&v432 + 1);
          v250 = v433;
          v251 = sub_10015049C(&aBlock, *(&v432 + 1));
          v59 = &v362;
          v252 = *(*(v249 - 8) + 64);
          __chkstk_darwin(v251);
          v254 = &v362 - ((v253 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v255 + 16))(v254);
          sub_1006252D4(v45, v254, v435, v249, v250);
          sub_100007BAC(&aBlock);
          v37 = v435[0];
          goto LABEL_105;
        }

LABEL_104:
        sub_100007BAC(&v437);
LABEL_105:
        v232 = (v232 + 1);
        v62 += 5;
        if (v426 == v232)
        {
          goto LABEL_124;
        }
      }

      (*v65)(a1, v430);
LABEL_115:
      if (v45)
      {
        goto LABEL_116;
      }

      goto LABEL_104;
    }

    v37 = _swiftEmptyArrayStorage;
LABEL_124:

    v211 = v382;
  }

  else
  {

    v37 = v427;
  }

  v65 = *(v37 + 16);

  if (v65)
  {
    a1 = 0;
    v52 = (v37 + 32);
    v423 = (v428 + 8);
    *&v256 = 141558275;
    v422 = v256;
    v425 = v37;
    do
    {
      if (a1 >= *(v37 + 16))
      {
        goto LABEL_219;
      }

      sub_10001F280(v52, &v437);
      sub_10001F280(&v437, &aBlock);
      v45 = Logger.logObject.getter();
      v257 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v257))
      {
        v62 = swift_slowAlloc();
        v426 = swift_slowAlloc();
        v435[0] = v426;
        *v62 = v422;
        *(v62 + 4) = 1752392040;
        *(v62 + 6) = 2081;
        v258 = *(&v432 + 1);
        v259 = v433;
        sub_1000035D0(&aBlock, *(&v432 + 1));
        v260 = v395;
        (*(*(*(v259 + 1) + 8) + 32))(v258);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
        v59 = v430;
        v261 = dispatch thunk of CustomStringConvertible.description.getter();
        v263 = v262;
        v264 = v260;
        v37 = v425;
        (*v423)(v264, v59);
        sub_100007BAC(&aBlock);
        v265 = sub_1000136BC(v261, v263, v435);

        *(v62 + 14) = v265;
        _os_log_impl(&_mh_execute_header, v45, v257, "One-shot location fetching ACSN for beacon without recent location: %{private,mask.hash}s.", v62, 0x16u);
        sub_100007BAC(v426);

        v211 = v382;
      }

      else
      {

        sub_100007BAC(&aBlock);
      }

      ++a1;
      sub_100007BAC(&v437);
      v52 += 40;
    }

    while (v65 != a1);
  }

  v266 = v379;
  v267 = v379[11];
  v268 = v211;
  v269 = v37;
  v270 = v368;
  sub_1004E46C0(v268, v368, type metadata accessor for LocationFetchConfiguration);
  v271 = (*(v366 + 80) + 128) & ~*(v366 + 80);
  v65 = swift_allocObject();
  v272 = v377;
  v273 = *(v377 + 3);
  *(v65 + 48) = *(v377 + 2);
  *(v65 + 64) = v273;
  *(v65 + 80) = *(v272 + 4);
  *(v65 + 89) = *(v272 + 73);
  v274 = *(v272 + 1);
  *(v65 + 16) = *v272;
  *(v65 + 32) = v274;
  *(v65 + 112) = v266;
  *(v65 + 120) = v269;
  sub_10002AAA4(v270, v65 + v271, type metadata accessor for LocationFetchConfiguration);
  v275 = swift_allocObject();
  *(v275 + 16) = sub_1004E2E34;
  *(v275 + 24) = v65;
  v433 = sub_1000D2FB0;
  v434 = v275;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v432 = sub_10013FE14;
  *(&v432 + 1) = &unk_101622DF8;
  v276 = _Block_copy(&aBlock);
  sub_10000F4C8(v272, &v437);

  dispatch_sync(v267, v276);
  _Block_release(v276);
  LOBYTE(v267) = swift_isEscapingClosureAtFileLocation();

  if ((v267 & 1) == 0)
  {
    *&v412 = sub_1004E2E34;
    v413 = v65;
    goto LABEL_134;
  }

  __break(1u);
  return result;
}

void sub_1004BA53C(size_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v56 = a4;
  v57 = a5;
  v58 = a1;
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for DirectorySequence();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v62 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v49 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v53 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v25;
  v26 = *(v25 + 16);
  v55 = v27;
  v26();
  v61 = *(*(a3 + 280) + 168);
  v28 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v15, qword_10177BF38);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v28);
  v64 = _swiftEmptyArrayStorage;
  v63 = _swiftEmptyArrayStorage;
  v29 = [objc_opt_self() defaultManager];
  v52 = v21;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v30 = v59;
  v60 = *(v59 + 48);
  if (v60(v11, 1, v15) == 1)
  {
LABEL_7:
    (*(v50 + 8))(v62, v51);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v33 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10138BBE0;
    v35 = v64;
    v36 = v64[2];
    *(v34 + 56) = &type metadata for Int;
    *(v34 + 64) = &protocol witness table for Int;
    *(v34 + 32) = v36;
    sub_1004DB51C(&qword_1016B14E0, &type metadata accessor for URL);

    v37 = v52;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = sub_100008C00();
    *(v34 + 72) = v38;
    *(v34 + 80) = v40;
    os_log(_:dso:log:_:_:)();

    (*(v59 + 8))(v37, v15);

    __chkstk_darwin(v41);
    v42 = v57;
    *(&v49 - 2) = v56;
    *(&v49 - 1) = v42;
    v43 = sub_10013D74C(sub_1004E3044, (&v49 - 4), v35);
    v44 = v58;
    v45 = *v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *v44;
    v47 = v43;
    v48 = v53;
    sub_100FFDCB0(v47, v53, isUniquelyReferenced_nonNull_native);
    (*(v54 + 8))(v48, v55);
    *v44 = v64;
  }

  else
  {
    v31 = *(v30 + 32);
    while (1)
    {
      v31(v19, v11, v15);
      v32 = objc_autoreleasePoolPush();
      sub_1006011CC(v19, v61, &v64, &v63);
      if (v6)
      {
        break;
      }

      v6 = 0;
      objc_autoreleasePoolPop(v32);
      (*(v30 + 8))(v19, v15);
      DirectorySequence.next()();
      if (v60(v11, 1, v15) == 1)
      {
        goto LABEL_7;
      }
    }

    objc_autoreleasePoolPop(v32);
    __break(1u);
  }
}

uint64_t sub_1004BAB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconEstimatedLocation();
  if (sub_10062CFC0(*(a1 + *(v4 + 44)), a2))
  {
    v5 = *(v4 + 40);
    type metadata accessor for Date();
    sub_1004DB51C(&qword_1016C9070, &type metadata accessor for Date);
    v6 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1004BAC24(unsigned __int8 *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a1;
  v8 = *(a1 + 5);
  v7 = *(a1 + 6);
  v9 = *(a1 + 2);
  v10 = *(a1 + 10);
  v19 = *(a1 + 9);
  v11 = a1[88];
  v12 = qword_101694940;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v14 = sub_1010741C0(v28);

  My = type metadata accessor for Feature.FindMy();
  *(&v29 + 1) = My;
  *&v30 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v16 = sub_1000280DC(&v28);
  (*(*(My - 8) + 104))(v16, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v28);
  *&v22 = v14;
  BYTE8(v22) = 0;
  *&v23 = &off_101609180;
  BYTE8(v23) = v6 == 3;
  *&v24 = v8;
  *(&v24 + 1) = v7;
  *&v25 = v9;
  BYTE8(v25) = My & 1;
  *&v26 = v19;
  *(&v26 + 1) = v10;
  v27 = v11;
  v33 = v11;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v28 = v22;
  v29 = v23;
  Configuration = type metadata accessor for LocationFetchConfiguration();
  sub_1004D7164(a3, &v28, (a1[56] & 1) == 0, *(a1 + 8), a2, *(a4 + *(Configuration + 32)), *(a4 + 8));
  return sub_1001119F4(&v22);
}

uint64_t sub_1004BAE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v154 = a4;
  v160 = a1;
  v166 = type metadata accessor for Date();
  v165 = *(v166 - 8);
  v7 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v156 = (&v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v157 = &v150 - v14;
  __chkstk_darwin(v13);
  v170 = &v150 - v15;
  v159 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v16 = *(*(v159 - 8) + 64);
  v17 = __chkstk_darwin(v159);
  v158 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v162 = &v150 - v20;
  __chkstk_darwin(v19);
  v22 = &v150 - v21;
  v174 = type metadata accessor for UUID();
  v173 = *(v174 - 8);
  v23 = *(v173 + 64);
  v24 = __chkstk_darwin(v174);
  v167 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v168 = &v150 - v27;
  __chkstk_darwin(v26);
  v155 = &v150 - v28;
  v29 = sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v150 - v31;
  v33 = type metadata accessor for BeaconEstimatedLocation();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v161 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = &v150 - v39;
  __chkstk_darwin(v38);
  v172 = &v150 - v41;
  v169 = *(a3 + 280);
  sub_100025020(a2, v183);
  v171 = v9;
  v42 = *(a2 + *(v9 + 48));
  sub_1012BAB18(v42, v32);
  v43 = *(v34 + 48);
  v163 = v33;
  if (v43(v32, 1, v33) == 1)
  {
    sub_10000B3A8(v183, &qword_101696920, &unk_10138B200);
    v44 = &unk_101696940;
    v45 = &unk_10138B210;
    v46 = v32;
    return sub_10000B3A8(v46, v44, v45);
  }

  sub_10002AAA4(v32, v172, type metadata accessor for BeaconEstimatedLocation);
  sub_1000D2A70(v183, &v177, &qword_101696920, &unk_10138B200);
  if (!*(&v178 + 1))
  {
    sub_10000B3A8(&v177, &qword_101696920, &unk_10138B200);
    goto LABEL_15;
  }

  v153 = a2;
  sub_10000A748(&v177, &v180);
  v47 = v181;
  v48 = v182;
  sub_1000035D0(&v180, v181);
  v49 = v174;
  (*(v48 + 200))(v47, v48);
  v50 = v173;
  if ((*(v173 + 48))(v22, 1, v49) == 1)
  {
    sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
    sub_100007BAC(&v180);
    a2 = v153;
    goto LABEL_15;
  }

  v51 = v155;
  (*(v50 + 32))(v155, v22, v174);
  v52 = *v154;
  a2 = v153;
  if (*(*v154 + 16))
  {
    v53 = sub_1000210EC(v51);
    if (v54)
    {
      sub_10001F280(*(v52 + 56) + 40 * v53, &v177);
      (*(v173 + 8))(v51, v174);
      v55 = &v177;
LABEL_13:
      sub_10000B3A8(v55, &unk_1016AA480, &unk_1013BD050);
      goto LABEL_14;
    }
  }

  v179 = 0;
  v177 = 0u;
  v178 = 0u;
  sub_10000B3A8(&v177, &unk_1016AA480, &unk_1013BD050);
  sub_100ACBC98(v51, &v175);
  if (!v176)
  {
    (*(v173 + 8))(v51, v174);
    v55 = &v175;
    goto LABEL_13;
  }

  sub_10000A748(&v175, &v177);
  v56 = v51;
  v57 = v173;
  v58 = v168;
  v59 = v174;
  (*(v173 + 16))(v168, v56, v174);
  sub_10001F280(&v177, &v175);
  sub_1001DF0CC(&v175, v58);
  sub_100007BAC(&v177);
  (*(v57 + 8))(v155, v59);
LABEL_14:
  sub_100007BAC(&v180);
LABEL_15:
  sub_1000D2A70(v183, &v177, &qword_101696920, &unk_10138B200);
  if (*(&v178 + 1))
  {
    sub_10000A748(&v177, &v180);
    sub_100AC26E0(&v180);
    v61 = v60;
    v62 = v181;
    v63 = v182;
    sub_1000035D0(&v180, v181);
    v64 = sub_1010C96DC(v62, v63);
    sub_100007BAC(&v180);
    v65 = v42[2];
    if (!v65)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_10000B3A8(&v177, &qword_101696920, &unk_10138B200);
    v64 = 0;
    v61 = 10.0;
    v65 = v42[2];
    if (!v65)
    {
LABEL_23:
      v67 = v170;
      sub_1000D2A70(a2, v170, &qword_1016A2490, &unk_1013B3200);
      v68 = sub_10039C740(*(v67 + *(v171 + 48)));

      v64 = sub_1010CBA6C(v68, v64, v61);

      v42 = v173;
      v69 = *(v173 + 8);
      v155 = (v173 + 8);
      v154 = v69;
      (v69)(v67, v174);
      if (v64)
      {
        if (qword_101694770 != -1)
        {
LABEL_42:
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        sub_1000076D4(v70, qword_10177AE10);
        v71 = v157;
        sub_1000D2A70(a2, v157, &qword_1016A2490, &unk_1013B3200);
        v72 = v161;
        sub_1004E46C0(v172, v161, type metadata accessor for BeaconEstimatedLocation);
        v73 = v64;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        LODWORD(v153) = v75;
        v156 = v74;
        v76 = os_log_type_enabled(v74, v75);
        v77 = v162;
        if (v76)
        {
          v78 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v180 = v151;
          *v78 = 141559811;
          *(v78 + 4) = 1752392040;
          *(v78 + 12) = 2081;
          v79 = v170;
          sub_1000D2A70(v71, v170, &qword_1016A2490, &unk_1013B3200);
          v80 = *(v79 + *(v171 + 48));

          v81 = v42[4];
          v82 = v168;
          v152 = v73;
          v83 = v174;
          v81(v168, v79, v174);
          sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v85;
          (v154)(v82, v83);
          sub_10000B3A8(v71, &qword_1016A2490, &unk_1013B3200);
          v87 = sub_1000136BC(v84, v86, &v180);

          *(v78 + 14) = v87;
          *(v78 + 22) = 2160;
          *(v78 + 24) = 1752392040;
          *(v78 + 32) = 2081;
          v88 = v161;
          v89 = v161 + *(v163 + 20);
          v73 = v152;
          v77 = v162;
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          sub_1004E4A04(v88, type metadata accessor for BeaconEstimatedLocation);
          v93 = sub_1000136BC(v90, v92, &v180);

          *(v78 + 34) = v93;
          *(v78 + 42) = 2049;
          [v73 coordinate];
          *(v78 + 44) = v94;
          *(v78 + 52) = 2049;
          [v73 coordinate];
          *(v78 + 54) = v95;
          *(v78 + 62) = 2050;
          [v73 horizontalAccuracy];
          *(v78 + 64) = v96;
          *(v78 + 72) = 2082;
          v97 = [v73 timestamp];
          v98 = v164;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1004DB51C(&qword_1016969A0, &type metadata accessor for Date);
          v99 = v166;
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v102 = v101;
          v103 = v98;
          v42 = v173;
          (*(v165 + 8))(v103, v99);
          v104 = sub_1000136BC(v100, v102, &v180);

          *(v78 + 74) = v104;
          v105 = v156;
          _os_log_impl(&_mh_execute_header, v156, v153, "Filtered cached latest location returned to client for beacon %{private,mask.hash}s, locationUUID: %{private,mask.hash}s, lat: %{private}f, long: %{private}f, accuracy: %{public}f, timestamp: %{public}s.", v78, 0x52u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1004E4A04(v72, type metadata accessor for BeaconEstimatedLocation);
          v106 = sub_10000B3A8(v71, &qword_1016A2490, &unk_1013B3200);
        }

        v122 = v167;
        v123 = *(v169 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
        __chkstk_darwin(v106);
        *(&v150 - 2) = v124;
        *(&v150 - 1) = a2;
        v125 = v158;
        QueueSynchronizer.conditionalSync<A>(_:)();
        sub_1000D2AD8(v125, v77, &qword_1016980D0, &unk_10138F3B0);
        v126 = v42[6];
        if (v126(v77, 1, v174) == 1)
        {
          v127 = v170;
          sub_1000D2A70(a2, v170, &qword_1016A2490, &unk_1013B3200);
          v128 = *(v127 + *(v171 + 48));

          v129 = v127;
          v42 = v173;
          v130 = v174;
          (*(v173 + 32))(v122, v129, v174);
          if (v126(v77, 1, v130) != 1)
          {
            sub_10000B3A8(v77, &qword_1016980D0, &unk_10138F3B0);
          }
        }

        else
        {
          (v42[4])(v122, v77, v174);
        }

        v131 = v168;
        v132 = v174;
        (v42[2])(v168, v122, v174);
        v133 = [v73 timestamp];
        v134 = v164;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        [v73 coordinate];
        v136 = v135;
        [v73 coordinate];
        v138 = v137;
        [v73 horizontalAccuracy];
        v140 = v139;
        v141 = v73;
        v142 = v172;
        v143 = sub_1010CBDEC(*(v172 + *(v163 + 44)));
        v144 = objc_allocWithZone(SPBeaconLocation);
        v145 = v143;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v147 = [v144 initWithTimestamp:isa latitude:v145 longitude:v136 horizontalAccuracy:v138 source:v140];

        (*(v165 + 8))(v134, v166);
        sub_1001DD16C(v147, v131);

        (v154)(v167, v132);
        v148 = v142;
      }

      else
      {
        if (qword_101694770 != -1)
        {
          swift_once();
        }

        v107 = type metadata accessor for Logger();
        sub_1000076D4(v107, qword_10177AE10);
        v108 = v156;
        sub_1000D2A70(a2, v156, &qword_1016A2490, &unk_1013B3200);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v180 = v112;
          *v111 = 141558275;
          *(v111 + 4) = 1752392040;
          *(v111 + 12) = 2081;
          v113 = v174;
          v114 = v108;
          v115 = v170;
          sub_1000D2A70(v114, v170, &qword_1016A2490, &unk_1013B3200);
          v116 = *(v115 + *(v171 + 48));

          v117 = v168;
          (*(v173 + 32))(v168, v115, v113);
          sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
          v118 = dispatch thunk of CustomStringConvertible.description.getter();
          v120 = v119;
          (v154)(v117, v113);
          sub_10000B3A8(v156, &qword_1016A2490, &unk_1013B3200);
          v121 = sub_1000136BC(v118, v120, &v180);

          *(v111 + 14) = v121;
          _os_log_impl(&_mh_execute_header, v109, v110, "Could not produce filtered location for beacon %{private,mask.hash}s.", v111, 0x16u);
          sub_100007BAC(v112);
        }

        else
        {

          sub_10000B3A8(v108, &qword_1016A2490, &unk_1013B3200);
        }

        v148 = v172;
      }

      sub_1004E4A04(v148, type metadata accessor for BeaconEstimatedLocation);
      v44 = &qword_101696920;
      v45 = &unk_10138B200;
      v46 = v183;
      return sub_10000B3A8(v46, v44, v45);
    }
  }

  v66 = 0;
  while (1)
  {
    if (v66 >= v42[2])
    {
      __break(1u);
      goto LABEL_42;
    }

    sub_1004E46C0(v42 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v66, v40, type metadata accessor for BeaconEstimatedLocation);
    sub_1004BC234(v40, a2);
    if (v4)
    {
      break;
    }

    ++v66;
    sub_1004E4A04(v40, type metadata accessor for BeaconEstimatedLocation);
    if (v65 == v66)
    {
      goto LABEL_23;
    }
  }

  result = sub_1004E4A04(v40, type metadata accessor for BeaconEstimatedLocation);
  __break(1u);
  return result;
}

void sub_1004BC234(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for UUID();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v60);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = type metadata accessor for BeaconEstimatedLocation();
  v8 = *(*(v61 - 8) + 64);
  v9 = __chkstk_darwin(v61);
  v65 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v64 = &v56[-v12];
  v13 = __chkstk_darwin(v11);
  v63 = &v56[-v14];
  v15 = __chkstk_darwin(v13);
  v62 = &v56[-v16];
  __chkstk_darwin(v15);
  v18 = &v56[-v17];
  v19 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v56[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v56[-v24];
  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000076D4(v26, qword_10177AE10);
  sub_1000D2A70(a2, v25, &qword_1016A2490, &unk_1013B3200);
  sub_1004E46C0(a1, v18, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v62, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v63, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v64, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v65, type metadata accessor for BeaconEstimatedLocation);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v58 = v27;
    v30 = v29;
    v59 = swift_slowAlloc();
    v66 = v59;
    *v30 = 141559811;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    sub_1000D2A70(v25, v23, &qword_1016A2490, &unk_1013B3200);
    v31 = *&v23[*(v19 + 48)];

    v32 = v4;
    v33 = *(v4 + 32);
    v57 = v28;
    v34 = v7;
    v35 = v60;
    v33(v7, v23, v60);
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v32 + 8))(v34, v35);
    sub_10000B3A8(v25, &qword_1016A2490, &unk_1013B3200);
    v39 = sub_1000136BC(v36, v38, &v66);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2160;
    *(v30 + 24) = 1752392040;
    *(v30 + 32) = 2081;
    v40 = v61;
    v41 = &v18[*(v61 + 20)];
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_1004E4A04(v18, type metadata accessor for BeaconEstimatedLocation);
    v45 = sub_1000136BC(v42, v44, &v66);

    *(v30 + 34) = v45;
    *(v30 + 42) = 2049;
    v46 = *&v62[v40[7]];
    sub_1004E4A04(v62, type metadata accessor for BeaconEstimatedLocation);
    *(v30 + 44) = v46;
    *(v30 + 52) = 2049;
    v47 = *&v63[v40[8]];
    sub_1004E4A04(v63, type metadata accessor for BeaconEstimatedLocation);
    *(v30 + 54) = v47;
    *(v30 + 62) = 2050;
    v48 = *&v64[v40[9]];
    sub_1004E4A04(v64, type metadata accessor for BeaconEstimatedLocation);
    *(v30 + 64) = v48;
    *(v30 + 72) = 2082;
    v49 = v40[10];
    type metadata accessor for Date();
    sub_1004DB51C(&qword_1016969A0, &type metadata accessor for Date);
    v50 = v65;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    sub_1004E4A04(v50, type metadata accessor for BeaconEstimatedLocation);
    v54 = sub_1000136BC(v51, v53, &v66);

    *(v30 + 74) = v54;
    v55 = v58;
    _os_log_impl(&_mh_execute_header, v58, v57, "Filtering the following latest location for beacon %{private,mask.hash}s, locationUUID: %{private,mask.hash}s, lat: %{private}f, long: %{private}f, accuracy: %{public}f, timestamp: %{public}s.", v30, 0x52u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004E4A04(v65, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v64, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v63, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v62, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v18, type metadata accessor for BeaconEstimatedLocation);
    sub_10000B3A8(v25, &qword_1016A2490, &unk_1013B3200);
  }
}

uint64_t sub_1004BC8CC()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1004BC95C;

  return daemon.getter();
}

uint64_t sub_1004BC95C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_1004BCB38;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004BCB38(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = sub_1004BD0E4;
    v8 = 0;
  }

  else
  {
    v9 = v4[5];

    v7 = sub_1004BCC70;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1004BCC70()
{
  v1 = *(v0[7] + 136);
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v2 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v6 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1004BCD80;
  v4 = v0[7];

  return (v6)(v0 + 2, &unk_10139D750, v4, sub_100853598, 0);
}

uint64_t sub_1004BCD80()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v5 = *(v2 + 56);
    v6 = sub_1004BCF20;
  }

  else
  {
    v6 = sub_1004BCEC0;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004BCEC0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004BCF3C()
{
  v1 = v0[7];

  v2 = v0[10];
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error publishing locations to FindMy service when the app is foregrounded: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004BD0E4()
{
  v1 = v0[5];

  v2 = v0[8];
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error publishing locations to FindMy service when the app is foregrounded: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004BD28C(uint64_t a1, uint64_t a2)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v5 = sub_1010741C0(v13);

  My = type metadata accessor for Feature.FindMy();
  *(&v14 + 1) = My;
  *&v15 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v7 = sub_1000280DC(&v13);
  (*(*(My - 8) + 104))(v7, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v13);
  *&v13 = v5;
  BYTE8(v13) = 0;
  *&v14 = &off_1016091A8;
  BYTE8(v14) = 0;
  v15 = 0uLL;
  *&v16 = _swiftEmptyArrayStorage;
  BYTE8(v16) = My & 1;
  v17 = 0uLL;
  v18 = 1;
  v12 = 1;
  v11[2] = 0uLL;
  v11[3] = v16;
  v11[4] = 0uLL;
  v11[0] = v13;
  v11[1] = v14;
  sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  *(v8 + 56) = type metadata accessor for SharedBeaconRecord(0);
  *(v8 + 64) = sub_1004DB51C(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
  v9 = sub_1000280DC((v8 + 32));
  sub_1004E46C0(a2, v9, type metadata accessor for SharedBeaconRecord);
  sub_1004D814C(v8, v11, a1);

  return sub_1001119F4(&v13);
}

uint64_t sub_1004BD4F4(char a1, uint64_t a2, double a3, double a4)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = sub_1010741C0(v19);

  My = type metadata accessor for Feature.FindMy();
  *(&v20 + 1) = My;
  *&v21 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v11 = sub_1000280DC(&v19);
  (*(*(My - 8) + 104))(v11, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v19);
  *&v19 = v9;
  BYTE8(v19) = 0;
  *&v20 = &off_1016091D0;
  BYTE8(v20) = a1;
  v21 = 0uLL;
  *&v22 = _swiftEmptyArrayStorage;
  BYTE8(v22) = My & 1;
  v23 = 0uLL;
  v24 = 1;
  v18 = 1;
  v17[2] = 0uLL;
  v17[3] = v22;
  v17[4] = 0uLL;
  v17[0] = v19;
  v17[1] = v20;
  v12 = *(a2 + 280);
  v13 = sub_100AA5F10();
  v14 = sub_1000257D0(v13);

  v15 = sub_100908168(_swiftEmptyArrayStorage);
  sub_1004D7164(v14, v17, 1, v15, a2, a3, a4);

  return sub_1001119F4(&v19);
}

uint64_t sub_1004BD718(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 376) = a4;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle();
  *(v6 + 88) = v8;
  v9 = *(v8 - 8);
  *(v6 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v11 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  *(v6 + 112) = v11;
  *(v6 + 120) = *(v11 + 64);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8) + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  *(v6 + 160) = v13;
  v14 = *(v13 - 8);
  *(v6 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  v16 = type metadata accessor for Date();
  *(v6 + 192) = v16;
  v17 = *(v16 - 8);
  *(v6 + 200) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1004BD9B4, 0, 0);
}

uint64_t sub_1004BD9B4()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = *(v0[8] + 280);
    type metadata accessor for BeaconStoreActor();
    v3 = swift_allocObject();
    v0[28] = v3;
    v4 = v1;

    swift_defaultActor_initialize();
    v3[14] = 0xD000000000000010;
    v3[15] = 0x800000010134A8C0;
    v3[16] = v2;
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v0[29] = v6;
    *v6 = v0;
    v6[1] = sub_1004BDC58;

    return daemon.getter();
  }

  else
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AE28);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing XPC connection for sending delegated location updates to listeners", v10, 2u);
    }

    sub_1003FD838();
    swift_allocError();
    *v11 = 7;
    swift_willThrow();
    v13 = v0[26];
    v12 = v0[27];
    v15 = v0[22];
    v14 = v0[23];
    v17 = v0[18];
    v16 = v0[19];
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[13];
    v23 = v0[10];
    v24 = v0[9];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1004BDC58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v12 = *v1;
  *(v3 + 240) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 248) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&unk_1016B10C0, type metadata accessor for DelegatedBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_1004BDE34;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004BDE34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v5 = *v2;
  *(*v2 + 256) = a1;

  v6 = *(v3 + 240);
  if (v1)
  {

    v7 = sub_1004BF5B4;
  }

  else
  {

    v7 = sub_1004BDF84;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004BDF84()
{
  v64 = v0;
  if (*(v0 + 376) == 1)
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AE28);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 32);
      v6 = *(v0 + 40);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v63 = v9;
      *v8 = 136446210;
      v10 = v6 == 0;
      if (v6)
      {
        v11 = v7;
      }

      else
      {
        v11 = 0x6E776F6E6B6E75;
      }

      if (v10)
      {
        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = v1;
      }

      v13 = sub_1000136BC(v11, v12, &v63);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Subscribing delegation location updates for context: %{public}s.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v14 = *(v0 + 224);
    v15 = *(v0 + 56);
    v16 = *(*(v0 + 256) + 136);
    sub_1004AB878(v15, *(v0 + 32), *(v0 + 40));

    v62 = 0;
    goto LABEL_28;
  }

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  v19 = type metadata accessor for Logger();
  *(v0 + 264) = sub_1000076D4(v19, qword_10177AE28);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = *(v0 + 32);
    v22 = *(v0 + 40);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v63 = v25;
    *v24 = 136446210;
    v26 = v22 == 0;
    if (v22)
    {
      v27 = v23;
    }

    else
    {
      v27 = 0x6E776F6E6B6E75;
    }

    if (v26)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = v17;
    }

    v29 = sub_1000136BC(v27, v28, &v63);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "One time API to return the delegated location timestamp for %{public}s.", v24, 0xCu);
    sub_100007BAC(v25);
  }

  v30 = *(v0 + 216);
  v31 = *(v0 + 48);
  static Date.distantPast.getter();
  v32 = *(v31 + 16);
  *(v0 + 272) = v32;
  if (!v32)
  {
    v41 = *(v0 + 256);
    v43 = *(v0 + 216);
    v42 = *(v0 + 224);
    v44 = *(v0 + 192);
    v45 = *(v0 + 200);
    v46 = *(v0 + 56);
    v47 = objc_allocWithZone(SPDelegatedLocationResult);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v62 = [v47 initWithTimestamp:isa];

    (*(v45 + 8))(v43, v44);
LABEL_28:
    v50 = *(v0 + 208);
    v49 = *(v0 + 216);
    v52 = *(v0 + 176);
    v51 = *(v0 + 184);
    v54 = *(v0 + 144);
    v53 = *(v0 + 152);
    v56 = *(v0 + 128);
    v55 = *(v0 + 136);
    v57 = *(v0 + 104);
    v58 = *(v0 + 80);
    v61 = *(v0 + 72);

    v59 = *(v0 + 8);

    return v59(v62);
  }

  v33 = *(v0 + 224);
  v34 = *(v0 + 48);
  v35 = *(v0 + 160);
  v36 = *(v0 + 168);
  v37 = *(v36 + 80);
  *(v0 + 368) = v37;
  *(v0 + 280) = *(v36 + 72);
  v38 = *(v36 + 16);
  *(v0 + 288) = v38;
  *(v0 + 296) = 0;
  v39 = *(v0 + 184);
  v40 = *(v0 + 136);
  *(v0 + 304) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38(v39, v34 + ((v37 + 32) & ~v37), v35);
  v38(v40, v39, v35);
  (*(v36 + 56))(v40, 0, 1, v35);

  return _swift_task_switch(sub_1004BE4D4, v33, 0);
}

uint64_t sub_1004BE4D4()
{
  v1 = v0[28];
  v2 = v0[16];
  v4 = v0[14];
  v3 = v0[15];
  sub_1000D2A70(v0[17], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[39] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[40] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1004BE650;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2D0C, v7, v10);
}

uint64_t sub_1004BE650()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return _swift_task_switch(sub_1004BE77C, v3, 0);
}

uint64_t sub_1004BE77C()
{
  sub_10000B3A8(v0[17], &qword_1016980D0, &unk_10138F3B0);
  v0[41] = v0[2];

  return _swift_task_switch(sub_1004BE7FC, 0, 0);
}

uint64_t sub_1004BE7FC()
{
  v65 = v0;
  v1 = *(v0 + 328);
  if (*(v1 + 16))
  {
    v2 = *(*(v0 + 96) + 80);
    sub_1004E46C0(v1 + ((v2 + 32) & ~v2), *(v0 + 152), type metadata accessor for OwnerSharingCircle);
    v3 = 0;
    v4 = *(v0 + 328);
  }

  else
  {
    v3 = 1;
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);

  (*(v8 + 56))(v5, v3, 1, v7);
  sub_1000D2A70(v5, v6, &unk_1016AFA00, &qword_10138C4D0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 288);
    v11 = *(v0 + 264);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 160);
    sub_10000B3A8(*(v0 + 144), &unk_1016AFA00, &qword_10138C4D0);
    v10(v13, v12, v14);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (v17)
    {
      v62 = *(v0 + 184);
      v23 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v64 = v60;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v27 = *(v21 + 8);
      v27(v18, v20);
      v28 = sub_1000136BC(v24, v26, &v64);

      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v15, v16, "Beacon %{private,mask.hash}s is not delegated", v23, 0x16u);
      sub_100007BAC(v60);

      sub_10000B3A8(v22, &unk_1016AFA00, &qword_10138C4D0);
      v27(v62, v20);
    }

    else
    {

      v32 = *(v21 + 8);
      v32(v18, v20);
      sub_10000B3A8(v22, &unk_1016AFA00, &qword_10138C4D0);
      v32(v19, v20);
    }

    v33 = *(v0 + 296) + 1;
    if (v33 == *(v0 + 272))
    {
      v34 = *(v0 + 256);
      v36 = *(v0 + 216);
      v35 = *(v0 + 224);
      v37 = *(v0 + 192);
      v38 = *(v0 + 200);
      v39 = *(v0 + 56);
      v40 = objc_allocWithZone(SPDelegatedLocationResult);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v63 = [v40 initWithTimestamp:isa];

      (*(v38 + 8))(v36, v37);
      v43 = *(v0 + 208);
      v42 = *(v0 + 216);
      v45 = *(v0 + 176);
      v44 = *(v0 + 184);
      v47 = *(v0 + 144);
      v46 = *(v0 + 152);
      v49 = *(v0 + 128);
      v48 = *(v0 + 136);
      v50 = *(v0 + 104);
      v51 = *(v0 + 80);
      v61 = *(v0 + 72);

      v52 = *(v0 + 8);

      return v52(v63);
    }

    v54 = *(v0 + 288);
    v29 = *(v0 + 224);
    v55 = *(v0 + 184);
    v56 = *(v0 + 160);
    v57 = *(v0 + 168);
    v58 = *(v0 + 136);
    v59 = *(v0 + 48) + ((*(v0 + 368) + 32) & ~*(v0 + 368)) + *(v0 + 280) * v33;
    *(v0 + 296) = v33;
    *(v0 + 304) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v54(v55, v59, v56);
    v54(v58, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v31 = sub_1004BE4D4;
  }

  else
  {
    v29 = *(v0 + 256);
    v30 = *(v0 + 88);
    sub_10002AAA4(*(v0 + 144), *(v0 + 104), type metadata accessor for OwnerSharingCircle);
    *(v0 + 372) = *(v30 + 20);
    v31 = sub_1004BED3C;
  }

  return _swift_task_switch(v31, v29, 0);
}

uint64_t sub_1004BED3C()
{
  v1 = *(*(v0 + 256) + 144);
  *(v0 + 336) = v1;
  return _swift_task_switch(sub_1004BED60, v1, 0);
}

uint64_t sub_1004BED60()
{
  v1 = *(v0 + 336);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1004BEE40;
  v5 = *(v0 + 336);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1004BEE40()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return _swift_task_switch(sub_1004BEF58, v2, 0);
}

uint64_t sub_1004BEF58()
{
  v1 = *(v0 + 372);
  v2 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_1004BF008;
  v4 = *(v0 + 80);

  return sub_1012DAFE0(v4, v2 + v1);
}

uint64_t sub_1004BF008()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return _swift_task_switch(sub_1004BF120, 0, 0);
}

uint64_t sub_1004BF120()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  sub_1000D2A70(*(v0 + 80), v3, &unk_101696900, &unk_10138B1E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 264);
    sub_10000B3A8(*(v0 + 72), &unk_101696900, &unk_10138B1E0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 184);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = *(v0 + 152);
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    if (v7)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Delegated publish hasn't happened on this device yet", v14, 2u);
    }

    sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
    sub_1004E4A04(v12, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v11, &unk_1016AFA00, &qword_10138C4D0);
    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v15 = *(v0 + 216);
    v16 = *(v0 + 200);
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 152);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v54 = *(v16 + 32);
    v56 = *(v0 + 184);
    v54(*(v0 + 208), *(v0 + 72), *(v0 + 192));
    LOBYTE(v15) = static Date.> infix(_:_:)();
    sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
    sub_1004E4A04(v20, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v19, &unk_1016AFA00, &qword_10138C4D0);
    (*(v17 + 8))(v56, v18);
    v22 = *(v16 + 8);
    if (v15)
    {
      v23 = *(v0 + 208);
      v24 = *(v0 + 216);
      v25 = *(v0 + 192);
      v22(v24, v25);
      v54(v24, v23, v25);
    }

    else
    {
      v22(*(v0 + 208), *(v0 + 192));
    }
  }

  v26 = *(v0 + 296) + 1;
  if (v26 == *(v0 + 272))
  {
    v27 = *(v0 + 256);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v30 = *(v0 + 192);
    v31 = *(v0 + 200);
    v32 = *(v0 + 56);
    v33 = objc_allocWithZone(SPDelegatedLocationResult);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v57 = [v33 initWithTimestamp:isa];

    (*(v31 + 8))(v29, v30);
    v36 = *(v0 + 208);
    v35 = *(v0 + 216);
    v38 = *(v0 + 176);
    v37 = *(v0 + 184);
    v40 = *(v0 + 144);
    v39 = *(v0 + 152);
    v42 = *(v0 + 128);
    v41 = *(v0 + 136);
    v43 = *(v0 + 104);
    v44 = *(v0 + 80);
    v55 = *(v0 + 72);

    v45 = *(v0 + 8);

    return v45(v57);
  }

  else
  {
    v47 = *(v0 + 288);
    v48 = *(v0 + 224);
    v49 = *(v0 + 184);
    v50 = *(v0 + 160);
    v51 = *(v0 + 168);
    v52 = *(v0 + 136);
    v53 = *(v0 + 48) + ((*(v0 + 368) + 32) & ~*(v0 + 368)) + *(v0 + 280) * v26;
    *(v0 + 296) = v26;
    *(v0 + 304) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v47(v49, v53, v50);
    v47(v52, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);

    return _swift_task_switch(sub_1004BE4D4, v48, 0);
  }
}

uint64_t sub_1004BF5B4()
{
  v1 = v0[28];
  v2 = v0[7];
  sub_1003FD838();
  swift_allocError();
  *v3 = 7;
  swift_willThrow();

  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[13];
  v13 = v0[10];
  v16 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1004BF6E4(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v37 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v36[1] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationFetcher();
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = (v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = v2;
  v17 = *(v2 + 280);
  sub_10001F280(a2, v46);
  v18 = qword_101694920;
  v39 = v17;

  if (v18 != -1)
  {
    swift_once();
  }

  v36[0] = qword_10177B2E8;

  v38 = sub_100908168(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);

  static DispatchQoS.unspecified.getter();
  *&v42 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v13[10];
  v20 = type metadata accessor for DeviceIdentityUtility();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  v24 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  *(v23 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v23 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v23 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v16 + v19) = v23;
  v26 = v13[11];
  v27 = type metadata accessor for BeaconObservationStore();
  v44 = &off_101632E88;
  v45 = &off_101613BE0;
  v43 = v27;
  v28 = v36[0];
  *&v42 = v36[0];
  type metadata accessor for MemberCircleRevokeManager();
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v42, (v29 + 32));
  *(v16 + v26) = v29;
  v30 = v13[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v16 + v30) = swift_allocObject();
  *v16 = v39;
  sub_10001F280(v46, (v16 + 3));
  v31 = v13[8];

  sub_1005CB7C8(v46, v16 + v31);
  sub_100007BAC(v46);
  v16[1] = v28;
  *(v16 + v13[9]) = v38;
  *(v29 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v34 = v41;
  *(v33 + 16) = v41;
  *(v33 + 24) = v32;

  sub_10088FFE4(v34, sub_1004E2F30, v33);

  sub_1004E4A04(v16, type metadata accessor for LocationFetcher);
}

void sub_1004BFC48(uint64_t a1, uint64_t a2, NSObject *a3, char *a4, char *a5)
{
  v74 = a5;
  v77 = a4;
  v78 = a3;
  v81 = type metadata accessor for UUID();
  v7 = *(*(v81 - 8) + 64);
  v8 = __chkstk_darwin(v81);
  v76 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v73 = &v73 - v11;
  __chkstk_darwin(v10);
  v14 = &v73 - v13;
  v15 = *(a2 + 16);
  v80 = v12;
  v75 = a2;
  if (v15)
  {
    v16 = a2 + 32;
    v17 = (v12 + 8);
    v18 = _swiftEmptyArrayStorage;
    v19 = v15;
    v79 = v15;
    while (1)
    {
      sub_10001F280(v16, &v85);
      v21 = v86;
      v20 = v87;
      sub_1000035D0(&v85, v86);
      (*(*(*(v20 + 8) + 8) + 32))(v21);
      if (!*(a1 + 16))
      {
        break;
      }

      sub_1000210EC(v14);
      v23 = v22;
      (*v17)(v14, v81);
      if ((v23 & 1) == 0)
      {
        goto LABEL_9;
      }

      sub_100007BAC(&v85);
LABEL_4:
      v16 += 40;
      if (!--v19)
      {
        goto LABEL_15;
      }
    }

    (*v17)(v14, v81);
LABEL_9:
    sub_10000A748(&v85, v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88[0] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100025B1C(0, v18[2] + 1, 1);
      v18 = v88[0];
    }

    v26 = v18[2];
    v25 = v18[3];
    if (v26 >= v25 >> 1)
    {
      sub_100025B1C((v25 > 1), v26 + 1, 1);
    }

    v27 = v83;
    v28 = v84;
    v29 = sub_10015049C(v82, v83);
    v30 = *(*(v27 - 8) + 64);
    __chkstk_darwin(v29);
    v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v32);
    sub_1006252D4(v26, v32, v88, v27, v28);
    sub_100007BAC(v82);
    v18 = v88[0];
    v15 = v79;
    goto LABEL_4;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_15:
  v34 = v18[2];
  if (v34)
  {
    v35 = 0;
    v36 = (v18 + 4);
    v37 = _swiftEmptyArrayStorage;
    while (v35 < v18[2])
    {
      sub_10001F280(v36, &v85);
      v38 = v86;
      v39 = v87;
      sub_1000035D0(&v85, v86);
      if ((*(v39 + 112))(v38, v39))
      {
        sub_10000A748(&v85, v82);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v88[0] = v37;
        if ((v40 & 1) == 0)
        {
          sub_100025B1C(0, *(v37 + 2) + 1, 1);
          v37 = v88[0];
        }

        v42 = *(v37 + 2);
        v41 = *(v37 + 3);
        if (v42 >= v41 >> 1)
        {
          sub_100025B1C((v41 > 1), v42 + 1, 1);
        }

        v43 = v83;
        v44 = v84;
        v45 = sub_10015049C(v82, v83);
        v46 = *(*(v43 - 8) + 64);
        __chkstk_darwin(v45);
        v48 = &v73 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v48);
        sub_1006252D4(v42, v48, v88, v43, v44);
        sub_100007BAC(v82);
        v37 = v88[0];
      }

      else
      {
        sub_100007BAC(&v85);
      }

      ++v35;
      v36 += 40;
      if (v34 == v35)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_27:

    v50 = *(v37 + 2);
    v51 = _swiftEmptyArrayStorage;
    if (v50)
    {
      v82[0] = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v50, 0);
      v51 = v82[0];
      v52 = (v37 + 32);
      v53 = v73;
      do
      {
        sub_10001F280(v52, &v85);
        v55 = v86;
        v54 = v87;
        sub_1000035D0(&v85, v86);
        (*(*(*(v54 + 8) + 8) + 32))(v55);
        sub_100007BAC(&v85);
        v82[0] = v51;
        v57 = v51[2];
        v56 = v51[3];
        if (v57 >= v56 >> 1)
        {
          sub_101123D4C(v56 > 1, v57 + 1, 1);
          v51 = v82[0];
        }

        v51[2] = v57 + 1;
        (*(v80 + 32))(v51 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v57, v53, v81);
        v52 += 40;
        --v50;
      }

      while (v50);
    }

    v58 = sub_10000954C(v51);

    v59 = v78;
    v60 = v80;
    if (*(v37 + 2))
    {
      v61 = type metadata accessor for Transaction();
      __chkstk_darwin(v61);
      v62 = v77;
      *(&v73 - 6) = v59;
      *(&v73 - 5) = v62;
      v63 = v74;
      *(&v73 - 4) = v37;
      *(&v73 - 3) = v63;
      *(&v73 - 2) = v58;
      static Transaction.named<A>(_:with:)();
    }

    v64 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v82[0] = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v15, 0);
      v64 = v82[0];
      v65 = v76;
      v66 = v75 + 32;
      do
      {
        sub_10001F280(v66, &v85);
        v68 = v86;
        v67 = v87;
        sub_1000035D0(&v85, v86);
        (*(*(*(v67 + 8) + 8) + 32))(v68);
        sub_100007BAC(&v85);
        v82[0] = v64;
        v70 = v64[2];
        v69 = v64[3];
        if (v70 >= v69 >> 1)
        {
          sub_101123D4C(v69 > 1, v70 + 1, 1);
          v64 = v82[0];
        }

        v64[2] = v70 + 1;
        (*(v60 + 32))(v64 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v70, v65, v81);
        v66 += 40;
        --v15;
      }

      while (v15);
      v59 = v78;
    }

    v71 = sub_10000954C(v64);

    if (*(v58 + 16) <= v71[2] >> 3)
    {
      *&v85 = v71;
      sub_10087D5B4(v58);

      v72 = v85;
    }

    else
    {
      v72 = sub_100610BC8(v58, v71);
    }

    sub_100A4165C(v72);

    if (v59)
    {
      dispatch_group_leave(v59);
    }
  }
}

uint64_t sub_1004C0458(uint64_t a1, dispatch_group_t group, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (group)
  {
    dispatch_group_enter(group);
  }

  v12 = group;

  sub_1004DBB74(a4, a5, a3, group, a1, a3, a6);
}

void sub_1004C0514(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Transaction.capture()();
  sub_100A4165C(a5);
  if (a2)
  {

    dispatch_group_leave(a2);
  }
}

uint64_t sub_1004C0580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v49 = a5;
  v45 = a4;
  v46 = a1;
  v43 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocationFetcher();
  v19 = *(*(v18 - 1) + 64);
  __chkstk_darwin(v18);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a2 + 280);
  sub_10001F280(a3, v54);
  v23 = qword_101694920;
  v44 = v22;

  if (v23 != -1)
  {
    swift_once();
  }

  v41 = qword_10177B2E8;
  v40 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  swift_retain_n();
  static DispatchQoS.unspecified.getter();
  *&v50 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = v18[10];
  v25 = type metadata accessor for DeviceIdentityUtility();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  v29 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v30 = type metadata accessor for Date();
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  *(v28 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v28 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v28 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v21 + v24) = v28;
  v31 = v18[11];
  v32 = type metadata accessor for BeaconObservationStore();
  v52 = &off_101632E88;
  v53 = &off_101613BE0;
  v51 = v32;
  v33 = v41;
  *&v50 = v41;
  type metadata accessor for MemberCircleRevokeManager();
  v34 = swift_allocObject();
  *(v34 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v50, (v34 + 32));
  *(v21 + v31) = v34;
  v35 = v18[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v21 + v35) = swift_allocObject();
  *v21 = v44;
  sub_10001F280(v54, (v21 + 3));
  v36 = v18[8];

  sub_1005CB7C8(v54, v21 + v36);
  sub_100007BAC(v54);
  v21[1] = v33;
  *(v21 + v18[9]) = v45;
  *(v34 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v37 = swift_allocObject();
  v38 = v47;
  v37[2] = v46;
  v37[3] = v38;
  v37[4] = v48;

  sub_10088FFE4(v49, sub_1004E2E94, v37);

  return sub_1004E4A04(v21, type metadata accessor for LocationFetcher);
}

uint64_t sub_1004C0B14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v71 = a4;
  v72 = a5;
  v70 = a3;
  v62 = a2;
  v67 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v65 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v63 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v63);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for LocationFetcher();
  v15 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v64 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  if (v18)
  {
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v19;
  }

  else
  {
    v61 = 0;
    v60 = 0;
  }

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10138C0D0;
  v21 = SPBeaconTypeDurian;
  v22 = SPBeaconTypeAccessory;
  *(v20 + 32) = SPBeaconTypeDurian;
  *(v20 + 40) = v22;
  v23 = SPBeaconTypeHele;
  v24 = SPBeaconTypeSelfBeaconing;
  *(v20 + 48) = SPBeaconTypeHele;
  *(v20 + 56) = v24;
  v25 = SPBeaconTypeVirtualMeDevice;
  *(v20 + 64) = SPBeaconTypeVirtualMeDevice;
  v26 = qword_101694940;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v32 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v68 = v5;
  v33 = sub_1010741C0(v73);

  My = type metadata accessor for Feature.FindMy();
  v74 = My;
  v75 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v35 = sub_1000280DC(&v73);
  (*(*(My - 8) + 104))(v35, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v73);
  v82 = 1;
  v36 = *(v62 + 280);
  v78 = &_s13DefaultPolicyVN;
  v79 = sub_100111A48();
  v37 = swift_allocObject();
  *&v77 = v37;
  *(v37 + 16) = v33;
  *(v37 + 24) = 0;
  *(v37 + 25) = *v83;
  *(v37 + 28) = *&v83[3];
  *(v37 + 32) = &off_101609220;
  *(v37 + 40) = 0;
  *(v37 + 41) = v81[0];
  *(v37 + 44) = *(v81 + 3);
  v38 = v60;
  *(v37 + 48) = v61;
  *(v37 + 56) = v38;
  *(v37 + 64) = v20;
  *(v37 + 72) = My & 1;
  LODWORD(v38) = *v80;
  *(v37 + 76) = *&v80[3];
  *(v37 + 73) = v38;
  *(v37 + 80) = 0;
  *(v37 + 88) = 0;
  *(v37 + 96) = v82;
  v39 = qword_101694920;
  v62 = v36;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = qword_10177B2E8;

  v61 = sub_100908168(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v63);

  static DispatchQoS.unspecified.getter();
  *&v73 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v41 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v42 = v64;
  *(v64 + 2) = v41;
  v43 = v69;
  v44 = *(v69 + 40);
  v45 = type metadata accessor for DeviceIdentityUtility();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  swift_defaultActor_initialize();
  v49 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v50 = type metadata accessor for Date();
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  *(v48 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v48 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v48 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v42 + v44) = v48;
  v51 = v43[11];
  v52 = type metadata accessor for BeaconObservationStore();
  v75 = &off_101632E88;
  v76 = &off_101613BE0;
  v74 = v52;
  *&v73 = v40;
  type metadata accessor for MemberCircleRevokeManager();
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v73, (v53 + 32));
  *(v42 + v51) = v53;
  v54 = v43[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v42 + v54) = swift_allocObject();
  *v42 = v62;
  sub_10001F280(&v77, (v42 + 3));
  v55 = v43[8];

  sub_1005CB7C8(&v77, v42 + v55);
  sub_100007BAC(&v77);
  v42[1] = v40;
  *(v42 + v43[9]) = v61;
  *(v53 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  sub_100025020(v70, &v77);
  if (v78)
  {
    sub_10000A748(&v77, &v73);
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_101385D80;
    sub_10001F280(&v73, v56 + 32);
    v57 = v72;

    sub_100626E1C(v56, v42, v71, v57);

    sub_100007BAC(&v73);
  }

  else
  {
    sub_10000B3A8(&v77, &qword_101696920, &unk_10138B200);
    v71(_swiftEmptyArrayStorage);
  }

  return sub_1004E4A04(v42, type metadata accessor for LocationFetcher);
}

uint64_t sub_1004C13B0(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = type metadata accessor for RawSearchResult();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BeaconEstimatedLocation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_101135034(a1);
  if (v16)
  {
    if (*(v16 + 16))
    {
      sub_1004E46C0(v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v15, type metadata accessor for BeaconEstimatedLocation);

      v17 = *&v15[*(v11 + 52)];

      sub_1004E4A04(v15, type metadata accessor for BeaconEstimatedLocation);
      if (v17)
      {
        v18 = v17[2];
        if (v18)
        {
          goto LABEL_5;
        }

LABEL_10:

        a2(_swiftEmptyArrayStorage);
      }
    }

    else
    {
    }
  }

  v17 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage[2];
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_5:
  v33[1] = a3;
  v34 = a2;
  v35 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v19 = *(v7 + 80);
  v33[0] = v17;
  v20 = v17 + ((v19 + 32) & ~v19);
  v21 = *(v7 + 72);
  do
  {
    sub_1004E46C0(v20, v10, type metadata accessor for RawSearchResult);
    v22 = *v10;
    v23 = v6[5];
    v24 = *&v10[v6[6]];
    v25 = *&v10[v6[7]];
    v26 = *&v10[v6[8]];
    v27 = objc_allocWithZone(SPRawSearchResult);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v29 = Data._bridgeToObjectiveC()().super.isa;
    v30 = Date._bridgeToObjectiveC()().super.isa;
    [v27 initWithHashedPublicKey:isa publicKey:v29 status:v22 timestamp:v30 latitude:v24 longitude:v25 horizontalAccuracy:{v26, v33[0]}];

    sub_1004E4A04(v10, type metadata accessor for RawSearchResult);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v31 = v35[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v20 += v21;
    --v18;
  }

  while (v18);

  v34(v35);
}

uint64_t sub_1004C1710(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v30 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v19 = a1[3];
  v18 = a1[4];
  sub_1000035D0(a1, v19);
  (*(v18 + 8))(v19, v18);
  (*(v4 + 56))(v17, 0, 1, v3);
  v20 = *(type metadata accessor for OwnedBeaconRecord() + 28);
  v21 = *(v8 + 56);
  sub_1000D2A70(v17, v11, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v31 + v20, &v11[v21], &qword_1016980D0, &unk_10138F3B0);
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) != 1)
  {
    v24 = v30;
    sub_1000D2A70(v11, v30, &qword_1016980D0, &unk_10138F3B0);
    if (v22(&v11[v21], 1, v3) != 1)
    {
      v25 = v29;
      (*(v4 + 32))(v29, &v11[v21], v3);
      sub_1004DB51C(&qword_1016984A0, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v4 + 8);
      v26(v25, v3);
      sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
      v26(v24, v3);
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      return v23 & 1;
    }

    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v24, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
  if (v22(&v11[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v11, &qword_1016AF880, &unk_10138CE20);
    v23 = 0;
    return v23 & 1;
  }

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1004C1B28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v41 = *(v11 - 8);
  v12 = *(v41 + 8);
  __chkstk_darwin(v11 - 8);
  v42 = v13;
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OwnedBeaconRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = *(a2 + 280);
  sub_1004E46C0(a4, &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v40 = swift_allocObject();
  sub_10002AAA4(&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v19, type metadata accessor for OwnedBeaconRecord);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100008C00();
  *(v21 + 32) = 0x65736C6166;
  *(v21 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v22 = objc_autoreleasePoolPush();
  v23 = a3;
  sub_1011218E0(a3);
  v25 = v24;
  v38 = v24;
  objc_autoreleasePoolPop(v22);
  v26 = *(v18 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v37 = type metadata accessor for OwnedBeaconGroup;
  sub_1004E46C0(v23, v14, type metadata accessor for OwnedBeaconGroup);
  v39 = v18;
  v27 = v42;
  v28 = *(v41 + 80);
  v29 = swift_allocObject();
  v30 = v40;
  *(v29 + 16) = sub_1004E4608;
  *(v29 + 24) = v30;
  v41 = type metadata accessor for OwnedBeaconGroup;
  sub_10002AAA4(v14, v29 + ((v28 + 32) & ~v28), type metadata accessor for OwnedBeaconGroup);

  sub_100FDCA40(v25, sub_1001DA038, v29);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_1004E4678;
  *(v31 + 24) = v20;

  Future.addFailure(block:)();

  sub_1004E46C0(v23, v14, v37);
  v32 = (v28 + 16) & ~v28;
  v33 = (v27 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_10002AAA4(v14, v34 + v32, v41);
  *(v34 + v33) = v39;
  v35 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_1004E4678;
  v35[1] = v20;

  Future.addSuccess(block:)();
}

uint64_t sub_1004C2028(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OwnedBeaconGroup(0) + 40);
  v5 = *(a1 + v4);
  v8[2] = a2;
  v6 = sub_1004D68CC(sub_1004E4680, v8, v5);

  *(a1 + v4) = v6;
  return result;
}

uint64_t sub_1004C20AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43[-v8];
  v53 = type metadata accessor for UUID();
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v53);
  v51 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v43[-v15];
  v17 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v43[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v43[-v22];
  sub_1004E46C0(a1, &v43[-v22], type metadata accessor for OwnedBeaconGroup.PairingState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1004E46C0(a1, a3, type metadata accessor for OwnedBeaconGroup.PairingState);
    return sub_1004E4A04(v23, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  v49 = a3;
  v50 = v3;
  v24 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
  v25 = v24[12];
  sub_100006654(*&v23[v24[16]], *&v23[v24[16] + 8]);
  v26 = &v23[v24[24]];
  v27 = *v26;
  v45 = v26[1];
  v46 = v27;
  v44 = v26[2];
  sub_1000D2AD8(&v23[v25], v16, &qword_1016A40D0, &unk_10138BE70);
  v47 = a1;
  sub_1004E46C0(a1, v21, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = v16;
  if (EnumCaseMultiPayload == 1)
  {
    v29 = v24[12];
    sub_100006654(*&v21[v24[16]], *&v21[v24[16] + 8]);
    v30 = v53;
    (*(v10 + 32))(v9, v21, v53);
    (*(v10 + 56))(v9, 0, 1, v30);
    sub_10000B3A8(&v21[v29], &qword_1016A40D0, &unk_10138BE70);
  }

  else
  {
    v30 = v53;
    (*(v10 + 56))(v9, 1, 1, v53);
    sub_1004E4A04(v21, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  v32 = (*(v10 + 48))(v9, 1, v30);
  v33 = v49;
  if (v32 == 1)
  {
    sub_10000B3A8(v48, &qword_1016A40D0, &unk_10138BE70);
    v34 = &qword_1016980D0;
    v35 = &unk_10138F3B0;
    v36 = v9;
  }

  else
  {
    v37 = v51;
    (*(v10 + 32))(v51, v9, v30);
    v38 = *(type metadata accessor for OwnedBeaconRecord() + 20);
    v39 = static UUID.== infix(_:_:)();
    v40 = *(v10 + 8);
    v40(v37, v30);
    if (v39)
    {
      v41 = (v33 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
      sub_1000D2AD8(v48, v33, &qword_1016A40D0, &unk_10138BE70);
      v42 = v45;
      *v41 = v46;
      v41[1] = v42;
      v41[2] = v44;
      swift_storeEnumTagMultiPayload();
      return (v40)(v23, v30);
    }

    v34 = &qword_1016A40D0;
    v35 = &unk_10138BE70;
    v36 = v48;
  }

  sub_10000B3A8(v36, v34, v35);
  sub_1004E46C0(v47, v33, type metadata accessor for OwnedBeaconGroup.PairingState);
  return (*(v10 + 8))(v23, v30);
}

uint64_t sub_1004C25E4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v23 - v10);
  sub_1000D2A70(a1, v23 - v10, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    v23[1] = v12;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    a2(v12);
  }

  else
  {
    sub_10002AAA4(v11, v7, type metadata accessor for OwnedBeaconGroup);
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    v19 = *(v4 + 24);
    type metadata accessor for UUID();
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    a2(0);
    return sub_1004E4A04(v7, type metadata accessor for OwnedBeaconGroup);
  }
}

void sub_1004C29A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v52 = a2;
  v6 = type metadata accessor for OwnedBeaconRecord();
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v49 - v10;
  v11 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for BeaconProductInfoRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1000322C8() & 1) == 0)
  {
    v21 = sub_100D5F668();
    if (v22 >> 60 == 15)
    {
      v23 = 0;
      goto LABEL_24;
    }

    v53 = a3;
    v54 = v3;
    goto LABEL_10;
  }

  v53 = a3;
  v20 = sub_100E0EA64(*(a1 + v6[16]), *(a1 + v6[17]));
  v21 = sub_100D5F668();
  v54 = v3;
  if (v22 >> 60 == 15)
  {
    if (v20)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (v20)
  {
LABEL_10:
    v24 = v21;
    v25 = v22;
    v26 = sub_100DE6748(v21, v22);
    sub_100006654(v24, v25);
    if (!v26)
    {
LABEL_22:
      v23 = 0;
LABEL_23:
      a3 = v53;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  sub_100006654(v21, v22);
LABEL_11:
  v27 = *(v52 + 280);
  sub_100AC1584(a1 + v6[5], v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &unk_1016AF8C0, &unk_1013A07A0);
    if (qword_101694768 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177ADF8);
    v29 = v51;
    sub_1004E46C0(a1, v51, type metadata accessor for OwnedBeaconRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v32 = 136315651;
      *(v32 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101357720, &v55);
      *(v32 + 12) = 2160;
      *(v32 + 14) = 1752392040;
      *(v32 + 22) = 2081;
      v33 = v6[5];
      type metadata accessor for UUID();
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1004E4A04(v29, type metadata accessor for OwnedBeaconRecord);
      v37 = sub_1000136BC(v34, v36, &v55);

      *(v32 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s - Missing product info for beacon %{private,mask.hash}s", v32, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004E4A04(v29, type metadata accessor for OwnedBeaconRecord);
    }

    goto LABEL_22;
  }

  sub_10002AAA4(v14, v19, type metadata accessor for BeaconProductInfoRecord);
  if ((v19[*(v15 + 36)] & 1) == 0)
  {
    v23 = sub_10003EB74(a1, v27);
    sub_1004E4A04(v19, type metadata accessor for BeaconProductInfoRecord);
    goto LABEL_23;
  }

  a3 = v53;
  if (qword_101694768 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000076D4(v38, qword_10177ADF8);
  v39 = a1;
  v40 = v50;
  sub_1004E46C0(v39, v50, type metadata accessor for OwnedBeaconRecord);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v43 = 136315651;
    *(v43 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101357720, &v55);
    *(v43 + 12) = 2160;
    *(v43 + 14) = 1752392040;
    *(v43 + 22) = 2081;
    v44 = v6[5];
    type metadata accessor for UUID();
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    sub_1004E4A04(v40, type metadata accessor for OwnedBeaconRecord);
    v48 = sub_1000136BC(v45, v47, &v55);

    *(v43 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s - Hidden beacon %{private,mask.hash}s", v43, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004E4A04(v40, type metadata accessor for OwnedBeaconRecord);
  }

  sub_1004E4A04(v19, type metadata accessor for BeaconProductInfoRecord);
  v23 = 0;
LABEL_24:
  *a3 = v23;
}

uint64_t sub_1004C30EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a1;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v47 = v15;
  v48 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177A548);
  v44 = *(v12 + 16);
  v45 = v12 + 16;
  v44(v17, a2, v11);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = v12;
    v22 = v21;
    v40 = swift_slowAlloc();
    v41 = a2;
    v51[0] = v40;
    *v22 = 16777987;
    *(v22 + 4) = v46;
    *(v22 + 5) = 2160;
    *(v22 + 7) = 1752392040;
    *(v22 + 15) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v10;
    v25 = a3;
    v26 = a4;
    v28 = v27;
    (*(v42 + 8))(v17, v11);
    v29 = sub_1000136BC(v23, v28, v51);
    a4 = v26;
    a3 = v25;
    v10 = v24;

    *(v22 + 17) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "        OwnerSessionProtocol: updateBatteryStatus %hhu for beacon %{private,mask.hash}s.", v22, 0x19u);
    sub_100007BAC(v40);
    a2 = v41;

    v12 = v42;
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  v30 = *(v43 + 280);
  sub_100025020(a2, &v49);
  if (!v50)
  {
    sub_10000B3A8(&v49, &qword_101696920, &unk_10138B200);
LABEL_12:
    v33 = sub_1012C7A94(v46);
    if (v33 == 7)
    {
      v32 = 0;
    }

    else
    {
      v32 = v33;
    }

    goto LABEL_15;
  }

  sub_10000A748(&v49, v51);
  v31 = sub_1012BDEE0(v51);
  sub_100007BAC(v51);
  if (v31 > 1u)
  {
    if (v31 == 2)
    {
      v32 = 4;
      goto LABEL_15;
    }

    if (v31 == 3)
    {
      v32 = 5;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v31)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

LABEL_15:
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
  v35 = v48;
  v44(v48, a2, v11);
  v36 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v37 = v36 + v47;
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 4) = a3;
  *(v38 + 5) = a4;
  (*(v12 + 32))(&v38[v36], v35, v11);
  v38[v37] = v32;

  sub_10025EDD4(0, 0, v10, &unk_1013AB078, v38);
}

uint64_t sub_1004C35C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 104) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 32) = a4;
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  *v9 = v7;
  v9[1] = sub_1004C3660;

  return daemon.getter();
}

uint64_t sub_1004C3660(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BatteryLevelService();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&qword_1016A24B8, type metadata accessor for BatteryLevelService);
  *v6 = v12;
  v6[1] = sub_1004C383C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004C383C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(v4 + 80) = a1;

  v7 = *(v4 + 64);
  if (v1)
  {

    return _swift_task_switch(sub_1004C39FC, 0, 0);
  }

  else
  {

    v8 = swift_task_alloc();
    *(v4 + 88) = v8;
    *v8 = v6;
    v8[1] = sub_1004C3AF4;
    v9 = *(v4 + 104);
    v10 = *(v4 + 48);

    return sub_10103DADC(v10, v9);
  }
}

uint64_t sub_1004C39FC()
{
  v2 = v0[4];
  v1 = v0[5];
  type metadata accessor for UpdateBatteryLevelError(0);
  v0[3] = 3;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1004DB51C(&qword_101696288, type metadata accessor for UpdateBatteryLevelError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v3 = v0[2];
  v2(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004C3AF4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1004C3C7C;
  }

  else
  {
    v3 = sub_1004C3C08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C3C08()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  (*(v0 + 32))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004C3C7C()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[4];
  v3 = v0[5];
  swift_errorRetain();
  v4(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004C3D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for AccessoryCommand();
  v4[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v4[19] = *(v9 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v4[29] = v13;
  *v13 = v4;
  v13[1] = sub_1004C3F14;

  return daemon.getter();
}

uint64_t sub_1004C3F14(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v12 = *v1;
  v3[30] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[31] = v6;
  v7 = type metadata accessor for Daemon();
  v3[32] = v7;
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[33] = v9;
  v10 = sub_1004DB51C(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_1004C40F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004C40F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 272) = a1;

  v7 = *(v3 + 240);
  if (v1)
  {

    return _swift_task_switch(sub_1004E4F78, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 280) = v9;
    *v9 = v6;
    v9[1] = sub_1004C42A0;

    return daemon.getter();
  }
}

uint64_t sub_1004C42A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *v1;
  v3[36] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[37] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1004C4454;
  v10 = v3[33];
  v11 = v3[32];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004C4454(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = a1;

  v7 = *(v4 + 288);
  if (v1)
  {

    v8 = sub_1004E4EAC;
    v9 = 0;
  }

  else
  {

    v8 = sub_1004C45AC;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1004C45AC()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[17];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[39] = v6;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[41] = v8;
  *(v8 + 16) = v1;
  v9 = *(v3 + 32);
  v0[42] = v9;
  v0[43] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v2, v4);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[44] = v11;
  *v11 = v0;
  v11[1] = sub_1004C4728;
  v13 = v0[27];
  v12 = v0[28];

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F5C, v8, v13);
}

uint64_t sub_1004C4728()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return _swift_task_switch(sub_1004C4840, 0, 0);
}

uint64_t sub_1004C4840()
{
  v54 = v0;
  v1 = v0[28];
  v2 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = 0;
  }

  else
  {
    v4 = sub_100D60CD0();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v0[28];

    sub_1004E4A04(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v12 = v0[39];
  v11 = v0[40];
  v13 = v0[25];
  v14 = v0[17];
  v15 = v0[18];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[10];
  v12(v16, v0[11], v14);
  (*(v15 + 56))(v16, 0, 1, v14);
  v12(v13, v18, v14);
  sub_1000D2A70(v16, v17, &qword_1016980D0, &unk_10138F3B0);
  v19 = *(v15 + 48);
  if (v19(v17, 1, v14) == 1)
  {
    v20 = v0[24];
    v21 = v0[17];
    v23 = v0[12];
    v22 = v0[13];
    UUID.init()();
    sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
    if (v19(v23, 1, v21) != 1)
    {
      sub_10000B3A8(v0[12], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v25 = v0[42];
    v24 = v0[43];
    v26 = v0[24];
    v27 = v0[17];
    v28 = v0[12];
    sub_10000B3A8(v0[13], &qword_1016980D0, &unk_10138F3B0);
    v25(v26, v28, v27);
  }

  v30 = v0[42];
  v29 = v0[43];
  v31 = v0[25];
  v33 = v0[16];
  v32 = v0[17];
  v34 = v0[14];
  v30(v33, v0[24], v32);
  v30(v33 + v34[5], v31, v32);
  v35 = v33 + v34[6];
  *v35 = 120;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = xmmword_1013AAD80;
  *(v33 + v34[7]) = v3 & 1;
  *(v33 + v34[8]) = 1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v36 = v0[15];
  v37 = v0[16];
  v38 = type metadata accessor for Logger();
  v0[45] = sub_1000076D4(v38, qword_10177B048);
  sub_1004E46C0(v37, v36, type metadata accessor for AccessoryCommand);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[15];
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53 = v44;
    *v43 = 136315138;
    v45 = sub_1010C00BC(v44);
    v47 = v46;
    sub_1004E4A04(v42, type metadata accessor for AccessoryCommand);
    v48 = sub_1000136BC(v45, v47, &v53);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "Executing startBTFinding command: %s", v43, 0xCu);
    sub_100007BAC(v44);
  }

  else
  {

    sub_1004E4A04(v42, type metadata accessor for AccessoryCommand);
  }

  v49 = swift_task_alloc();
  v0[46] = v49;
  *v49 = v0;
  v49[1] = sub_1004C4D10;
  v50 = v0[34];
  v51 = v0[16];

  return sub_10121B780((v0 + 2), v51, 0);
}

uint64_t sub_1004C4D10()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v6 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_1004C51B4;
  }

  else
  {
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v4 = sub_1004C4E3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004C4E3C()
{
  v45 = v0;
  v1 = *(v0 + 360);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 176);
  v5 = *(v0 + 136);
  v6 = *(v0 + 80);
  v3(*(v0 + 184), *(v0 + 88), v5);
  v3(v4, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  if (v9)
  {
    v41 = v8;
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v14 = 136446979;
    *(v14 + 4) = sub_1000136BC(0xD00000000000003ELL, 0x8000000101357410, &v44);
    *(v14 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_1000136BC(v15, v17, &v44);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v18(v11, v13);
    v23 = sub_1000136BC(v20, v22, &v44);

    *(v14 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v7, v41, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s completed successfully!", v14, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v24 = *(v12 + 8);
    v24(v11, v13);
    v24(v10, v13);
  }

  v25 = *(v0 + 304);
  v26 = *(v0 + 72);
  (*(v0 + 64))(0);

  v27 = *(v0 + 272);
  v28 = *(v0 + 128);

  sub_1004E4A04(v28, type metadata accessor for AccessoryCommand);
  v29 = *(v0 + 224);
  v30 = *(v0 + 200);
  v31 = *(v0 + 208);
  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v36 = *(v0 + 160);
  v38 = *(v0 + 120);
  v37 = *(v0 + 128);
  v42 = *(v0 + 104);
  v43 = *(v0 + 96);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1004C51B4()
{
  v54 = v0;
  v1 = v0[47];
  v2 = v0[45];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[10];
  v4(v0[21], v0[11], v6);
  v4(v5, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v49 = v0[47];
    v51 = v9;
    v10 = v0[21];
    v47 = v0[20];
    v12 = v0[17];
    v11 = v0[18];
    v13 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v13 = 136447235;
    *(v13 + 4) = sub_1000136BC(0xD00000000000003ELL, 0x8000000101357410, &v53);
    *(v13 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, &v53);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2160;
    *(v13 + 24) = 1752392040;
    *(v13 + 32) = 2081;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v17(v47, v12);
    v22 = sub_1000136BC(v19, v21, &v53);

    *(v13 + 34) = v22;
    *(v13 + 42) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 44) = v23;
    *v48 = v23;
    _os_log_impl(&_mh_execute_header, v8, v51, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s failed with error: %{public}@!", v13, 0x34u);
    sub_10000B3A8(v48, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[17];
    v27 = v0[18];

    v28 = *(v27 + 8);
    v28(v25, v26);
    v28(v24, v26);
  }

  v29 = v0[47];
  v30 = v0[34];
  v32 = v0[8];
  v31 = v0[9];
  swift_errorRetain();
  v32(v29);

  v33 = v0[38];
  v34 = v0[16];

  sub_1004E4A04(v34, type metadata accessor for AccessoryCommand);
  v35 = v0[28];
  v36 = v0[25];
  v37 = v0[26];
  v39 = v0[23];
  v38 = v0[24];
  v41 = v0[21];
  v40 = v0[22];
  v42 = v0[20];
  v44 = v0[15];
  v43 = v0[16];
  v50 = v0[13];
  v52 = v0[12];

  v45 = v0[1];

  return v45();
}

uint64_t sub_1004C55D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for AccessoryCommand();
  v4[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v4[19] = *(v9 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v4[29] = v13;
  *v13 = v4;
  v13[1] = sub_1004C57D0;

  return daemon.getter();
}

uint64_t sub_1004C57D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v12 = *v1;
  v3[30] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[31] = v6;
  v7 = type metadata accessor for Daemon();
  v3[32] = v7;
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[33] = v9;
  v10 = sub_1004DB51C(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_1004C59B0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004C59B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 272) = a1;

  v7 = *(v3 + 240);
  if (v1)
  {

    return _swift_task_switch(sub_1004C5B5C, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 280) = v9;
    *v9 = v6;
    v9[1] = sub_1004C5D40;

    return daemon.getter();
  }
}

uint64_t sub_1004C5B5C()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandService to startBTFinding!", v4, 2u);
  }

  v6 = v0[8];
  v5 = v0[9];

  sub_1003FD838();
  swift_allocError();
  *v7 = 11;
  v6();

  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[20];
  v17 = v0[15];
  v16 = v0[16];
  v20 = v0[13];
  v21 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1004C5D40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *v1;
  v3[36] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[37] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1004C5EF4;
  v10 = v3[33];
  v11 = v3[32];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004C5EF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = a1;

  v7 = *(v4 + 288);
  if (v1)
  {

    v8 = sub_1004C604C;
    v9 = 0;
  }

  else
  {

    v8 = sub_1004C623C;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1004C604C()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor to startBTFinding!", v4, 2u);
  }

  v5 = v0[34];
  v7 = v0[8];
  v6 = v0[9];

  sub_1003FD838();
  swift_allocError();
  *v8 = 11;
  v7();

  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[26];
  v13 = v0[23];
  v12 = v0[24];
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[20];
  v18 = v0[15];
  v17 = v0[16];
  v21 = v0[13];
  v22 = v0[12];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004C623C()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[17];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[39] = v6;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[41] = v8;
  *(v8 + 16) = v1;
  v9 = *(v3 + 32);
  v0[42] = v9;
  v0[43] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v2, v4);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[44] = v11;
  *v11 = v0;
  v11[1] = sub_1004C63B8;
  v13 = v0[27];
  v12 = v0[28];

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F5C, v8, v13);
}

uint64_t sub_1004C63B8()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return _swift_task_switch(sub_1004C64D0, 0, 0);
}

uint64_t sub_1004C64D0()
{
  v54 = v0;
  v1 = v0[28];
  v2 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = 0;
  }

  else
  {
    v4 = sub_100D60CD0();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v0[28];

    sub_1004E4A04(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v12 = v0[39];
  v11 = v0[40];
  v13 = v0[25];
  v14 = v0[17];
  v15 = v0[18];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[10];
  v12(v16, v0[11], v14);
  (*(v15 + 56))(v16, 0, 1, v14);
  v12(v13, v18, v14);
  sub_1000D2A70(v16, v17, &qword_1016980D0, &unk_10138F3B0);
  v19 = *(v15 + 48);
  if (v19(v17, 1, v14) == 1)
  {
    v20 = v0[24];
    v21 = v0[17];
    v23 = v0[12];
    v22 = v0[13];
    UUID.init()();
    sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
    if (v19(v23, 1, v21) != 1)
    {
      sub_10000B3A8(v0[12], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v25 = v0[42];
    v24 = v0[43];
    v26 = v0[24];
    v27 = v0[17];
    v28 = v0[12];
    sub_10000B3A8(v0[13], &qword_1016980D0, &unk_10138F3B0);
    v25(v26, v28, v27);
  }

  v30 = v0[42];
  v29 = v0[43];
  v31 = v0[25];
  v33 = v0[16];
  v32 = v0[17];
  v34 = v0[14];
  v30(v33, v0[24], v32);
  v30(v33 + v34[5], v31, v32);
  v35 = v33 + v34[6];
  *v35 = xmmword_1013AAD90;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = xmmword_10139BF70;
  *(v33 + v34[7]) = v3 & 1;
  *(v33 + v34[8]) = 1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v36 = v0[15];
  v37 = v0[16];
  v38 = type metadata accessor for Logger();
  v0[45] = sub_1000076D4(v38, qword_10177B048);
  sub_1004E46C0(v37, v36, type metadata accessor for AccessoryCommand);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[15];
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53 = v44;
    *v43 = 136315138;
    v45 = sub_1010C00BC(v44);
    v47 = v46;
    sub_1004E4A04(v42, type metadata accessor for AccessoryCommand);
    v48 = sub_1000136BC(v45, v47, &v53);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "Executing stopBTFinding command: %s", v43, 0xCu);
    sub_100007BAC(v44);
  }

  else
  {

    sub_1004E4A04(v42, type metadata accessor for AccessoryCommand);
  }

  v49 = swift_task_alloc();
  v0[46] = v49;
  *v49 = v0;
  v49[1] = sub_1004C69A4;
  v50 = v0[34];
  v51 = v0[16];

  return sub_10121B780((v0 + 2), v51, 0);
}
void sub_100052360()
{
  sub_100004DF0();
  v2 = v1;
  v116 = v0;
  v4 = v3;
  v120 = v5;
  v106 = v6;
  v7 = type metadata accessor for LNAppShortcutParameterRecord();
  v8 = sub_100002944(v7);
  v122 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100006724();
  v105 = v12 - v13;
  sub_100056CAC();
  __chkstk_darwin(v14);
  v123 = &v99 - v15;
  sub_100056CAC();
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = 0;
  v126[0] = &_swiftEmptyDictionarySingleton;
  v20 = *(v4 + 16);
  while (v20 != v19)
  {
    v21 = v19 + 1;
    sub_1000529C8(v126, v4 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v19);
    v19 = v21;
    if (v1)
    {

      goto LABEL_44;
    }
  }

  v22 = 0;
  v23 = v126[0];
  v24 = v126[0] + 64;
  v25 = 1 << *(v126[0] + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v126[0] + 64);
  v28 = (v25 + 63) >> 6;
  v29 = v106;
  v111 = v106 + 32;
  v30 = _swiftEmptyArrayStorage;
LABEL_8:
  while (2)
  {
    if (v27)
    {
      v31 = v27;
LABEL_14:
      v27 = (v31 - 1) & v31;
      v33 = *(v29 + 16);
      if (!v33)
      {
        continue;
      }

      v100 = (v31 - 1) & v31;
      v101 = v28;
      v103 = v24;
      v102 = v22;
      v34 = __clz(__rbit64(v31)) | (v22 << 6);
      v104 = v23;
      v35 = *(v23 + 56);
      v36 = (*(v23 + 48) + 32 * v34);
      v37 = v36[1];
      v108 = *v36;
      v38 = *(v35 + 8 * v34);
      v110 = v37;

      v107 = v38;

      v39 = 0;
      v109 = v33;
      v115 = v18;
      while (1)
      {
        v113 = v39;
        v40 = (v111 + 32 * v39);
        v41 = v40[1];
        v119 = *v40;
        v42 = v40[3];
        v126[0] = v40[2];
        v126[1] = v42;
        v124 = 31524;
        v125 = 0xE200000000000000;
        v121 = v41;

        v112 = v42;

        v43._countAndFlagsBits = v108;
        v43._object = v110;
        String.append(_:)(v43);
        v44._countAndFlagsBits = 125;
        v44._object = 0xE100000000000000;
        String.append(_:)(v44);
        sub_10000BE0C();
        v45 = StringProtocol.contains<A>(_:)();

        v114 = v2;
        if (v45)
        {
          v46 = *(v107 + 16);
          if (v46)
          {
            break;
          }
        }

LABEL_33:
        v39 = v113 + 1;

        v2 = v114;
        if (v39 == v109)
        {

          v29 = v106;
          v23 = v104;
          v24 = v103;
          v22 = v102;
          v28 = v101;
          v27 = v100;
          goto LABEL_8;
        }
      }

      sub_100003AA4();
      v49 = v48 + v47;
      v51 = *(v50 + 72);
      v117 = v51;
      v118 = v47;
      while (1)
      {
        v127 = v30;
        sub_1000554A8(v49, v18);
        v52 = [v120 parameterPresentation];
        if (!v52)
        {
          goto LABEL_27;
        }

        v53 = v52;
        v54 = [v52 specificTitle];
        v55 = [v54 formatString];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = &v18[v7[6]];
        if (v56 == *v59 && v58 == *(v59 + 1))
        {
          break;
        }

        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v61)
        {
          goto LABEL_27;
        }

        v30 = v127;
LABEL_32:
        sub_100007E94();
        sub_1000555F4();
        v49 += v51;
        if (!--v46)
        {
          goto LABEL_33;
        }
      }

LABEL_27:
      v62 = type metadata accessor for UUID();
      sub_10000482C(v62);
      v64 = v123;
      (*(v63 + 16))(v123, v18);
      v65 = v116 + *(type metadata accessor for AppShortcutInterpolator.Builder() + 20);
      v66 = *(v65 + 40);
      v67 = *(v65 + 48);
      v68 = *&v18[v7[7]];
      v69 = &v18[v7[8]];
      v70 = *&v18[v7[9]];
      v71 = *&v18[v7[10]];
      v72 = *v69;
      v73 = *(v69 + 1);
      v74 = &v18[v7[11]];
      v76 = *v74;
      v75 = *(v74 + 1);
      v77 = (v64 + v7[5]);
      *v77 = v66;
      v77[1] = v67;
      v78 = (v64 + v7[6]);
      v79 = v121;
      *v78 = v119;
      v78[1] = v79;
      *(v64 + v7[7]) = v68;
      v80 = (v64 + v7[8]);
      *v80 = v72;
      v80[1] = v73;
      *(v64 + v7[9]) = v70;
      *(v64 + v7[10]) = v71;
      v81 = (v64 + v7[11]);
      *v81 = v76;
      v81[1] = v75;

      v82 = v68;

      v83 = v70;
      v84 = v71;
      v30 = v127;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = *(v127 + 16);
        v88 = sub_100004E28();
        sub_100070490(v88, v89, v90, v127);
        v30 = v91;
      }

      v86 = v30[2];
      v85 = v30[3];
      v18 = v115;
      v51 = v117;
      if (v86 >= v85 >> 1)
      {
        v92 = sub_100005150(v85);
        sub_100070490(v92, v86 + 1, 1, v30);
        v30 = v93;
      }

      v30[2] = v86 + 1;
      sub_10005550C(v123, v30 + v118 + v86 * v51);
      goto LABEL_32;
    }

    break;
  }

  while (1)
  {
    v32 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v32 >= v28)
    {

      v94 = 0;
      v126[0] = &_swiftEmptyDictionarySingleton;
      v95 = v30[2];
      v96 = v105;
      while (v95 != v94)
      {
        if (v94 >= v30[2])
        {
          goto LABEL_42;
        }

        sub_100003AA4();
        sub_1000554A8(v30 + v97 + *(v98 + 72) * v94, v96);
        sub_100052D1C(v126, v96);
        if (v2)
        {
          goto LABEL_43;
        }

        ++v94;
        sub_100007E94();
        sub_1000555F4();
      }

      sub_100004674();
      return;
    }

    v31 = *(v24 + 8 * v32);
    ++v22;
    if (v31)
    {
      v22 = v32;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:

  sub_100007E94();
  sub_1000555F4();
LABEL_44:

  __break(1u);
}

uint64_t sub_1000529C8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for LNAppShortcutParameterRecord();
  v5 = v4 - 8;
  v28 = *(v4 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + *(v5 + 44));
  v10 = [v9 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = (a2 + *(v5 + 32));
  v12 = v11[1];
  v29 = *v11;
  v30 = a1;
  v13 = *a1;
  if (*(*a1 + 16))
  {

    v14 = sub_1000459A8();
    v16 = v15;

    if (v16)
    {
      v18 = *(*(v13 + 56) + 8 * v14);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_6:
  __chkstk_darwin(v17);
  *(&v27 - 2) = a2;
  if (sub_100057550(sub_1000565EC, (&v27 - 4), v18))
  {
  }

  sub_1000554A8(a2, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100070490(0, v18[2] + 1, 1, v18);
    v18 = v25;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    sub_100070490(v20 > 1, v21 + 1, 1, v18);
    v18 = v26;
  }

  v18[2] = v21 + 1;
  sub_10005550C(v8, v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21);
  v22 = [v9 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v30;
  v24 = *v30;
  swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  sub_100068A90();

  *v23 = v31;
  return result;
}

uint64_t sub_100052CAC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LNAppShortcutParameterRecord() + 32);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100052D1C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for LNAppShortcutParameterRecord();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a2 + *(v6 + 32));
  v10 = *v9;
  v11 = v9[1];
  v12 = [*(a2 + *(v6 + 44)) identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_10000C2A0(v10, v11), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = &_swiftEmptyDictionarySingleton;
  }

  v20 = v19[2];
  v32 = v10;
  if (v20 && (v21 = sub_10000C2A0(v13, v15), (v22 & 1) != 0))
  {
    v23 = *(v19[7] + 8 * v21);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  sub_1000554A8(a2, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100070490(0, v23[2] + 1, 1, v23);
    v23 = v28;
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    sub_100070490(v24 > 1, v25 + 1, 1, v23);
    v23 = v29;
  }

  v23[2] = v25 + 1;
  sub_10005550C(v8, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
  swift_isUniquelyReferenced_nonNull_native();
  v33 = v19;
  sub_100068CC4();

  v26 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v33 = *a1;
  sub_100068BB4();

  *a1 = v33;
  return result;
}

void sub_100052F88(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = (a2 + *(type metadata accessor for AppShortcutInterpolator.Builder() + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v4 localizedStringForLocaleIdentifier:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v4 key];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *a3 = v14;
  a3[1] = v16;
  a3[2] = v10;
  a3[3] = v12;
}

id sub_100053058(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t *a10)
{
  v12 = a2[1];
  v54 = *a2;
  v13 = a2[2];
  v14 = a2[3];
  v15 = sub_100051DFC(v13, v14);
  v17 = v16;
  v55 = v18;
  v19 = *a3;

  v20 = sub_1000445F8(v15, v17, v19);

  if (!v20)
  {

    v21 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *a3;
    sub_10005605C(v15, v17, isUniquelyReferenced_nonNull_native);
    *a3 = v63;
  }

  v23 = sub_1000B6334(v54, v12, a4);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &_swiftEmptyDictionarySingleton;
  }

  v25 = type metadata accessor for AppShortcutInterpolator.Builder();
  LOBYTE(v50) = *a8;
  LOBYTE(v47) = !v20;
  sub_100053418(v54, v12, v13, v14, v55, *(a5 + *(v25 + 20) + 40), *(a5 + *(v25 + 20) + 48), a6, *(a5 + *(v25 + 24)), *(a5 + *(v25 + 24) + 8), a7, v24, v47, v48, v49, v50, a9, v51, a4, a9, a8, v54, v55, a1, a7, a6, v63, v64, v65);
  if (v66)
  {
  }

  else
  {
    v28 = v26;

    v62 = sub_1000232F4(v28);
    if (v62)
    {
      v29 = 0;
      v60 = v28 & 0xC000000000000001;
      v56 = v28 + 32;
      while (1)
      {
        sub_10003818C(v29, v60 == 0, v28);
        result = v60 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v56 + 8 * v29);
        v30 = result;
        if (__OFADD__(v29++, 1))
        {
          break;
        }

        v32 = v28;
        v33 = *a10;

        v34 = [v30 localizedPhrase];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        if (*(v33 + 16))
        {
          v38 = *(v33 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v39 = Hasher._finalize()();
          v40 = ~(-1 << *(v33 + 32));
          while (1)
          {
            v41 = v39 & v40;
            if (((*(v33 + 56 + (((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v40)) & 1) == 0)
            {
              break;
            }

            v42 = (*(v33 + 48) + 16 * v41);
            if (*v42 != v35 || v42[1] != v37)
            {
              v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v39 = v41 + 1;
              if ((v44 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_24;
          }
        }

        v45 = v30;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_1000FCDF4(*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10));
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v46 = [v45 localizedPhrase];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100027678();
LABEL_24:

        v28 = v32;
        if (v29 == v62)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void sub_100053418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, char a28, void *a29)
{
  sub_100004DF0();
  a19 = v30;
  a20 = v31;
  v32 = v29;
  v153 = v34;
  v154 = v33;
  v155 = v36;
  v156 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = a28;
  v46 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v151 = &v138 - v48;
  v152 = sub_10002EB80(&qword_100199650, &qword_10014E350);
  v49 = sub_100002944(v152);
  v150 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49);
  sub_100006724();
  v55 = (v53 - v54);
  __chkstk_darwin(v56);
  v157 = &v138 - v57;
  v58 = String.subscript.getter();
  v62 = v60;
  v63 = *(v38 + 16);
  if (v45)
  {
    if (!v63)
    {

      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v130 = type metadata accessor for Logger();
      sub_10000347C(v130, qword_10019E008);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v70, v71))
      {
        goto LABEL_37;
      }

      v72 = sub_100007764();
      v73 = swift_slowAlloc();
      a10 = v73;
      *(v72 + 4) = sub_100012A28(4.8149e-34);
LABEL_35:
      _os_log_impl(&_mh_execute_header, v70, v71, v74, v72, 0xCu);
      sub_1000034F8(v73);
      sub_1000036AC();
LABEL_36:
      sub_1000036AC();
LABEL_37:

LABEL_38:
      sub_100004674();
      return;
    }

    v149 = v55;
    v147 = v40;
    v64 = v58;
    v65 = v60;
    v66 = v59;
    v67 = v61;
    sub_1000A0D08(v58, v59, v60, v61, v38);
    v59 = v66;
    v62 = v65;
    v58 = v64;
    v32 = v29;
    v40 = v147;
    v55 = v149;
    v61 = v67;
    if (v68)
    {

      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_10000347C(v69, qword_10019E008);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v70, v71))
      {
        goto LABEL_37;
      }

      v72 = sub_100007764();
      v73 = swift_slowAlloc();
      a10 = v73;
      *(v72 + 4) = sub_100012A28(4.8149e-34);
      goto LABEL_35;
    }
  }

  if (v63 > 2)
  {

    if (qword_1001982F0 != -1)
    {
LABEL_46:
      sub_100002A48();
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000347C(v75, qword_10019E008);
    sub_1000099C0();

    v70 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v70, v76))
    {
      goto LABEL_37;
    }

    sub_100007764();
    v77 = sub_100003748();
    a10 = v77;
    *v63 = 136315138;
    *(v63 + 4) = sub_100004C50(v156, v44, &a10);
    sub_10001AAB0(&_mh_execute_header, v70, v76, "Skipping phrase template with too many tokens: %s");
    sub_1000034F8(v77);
    sub_1000036AC();
    goto LABEL_36;
  }

  v140 = v59;
  v141 = v58;
  v145 = v42;
  v146 = v61;
  v144 = v38;
  v78 = a29;
  v143 = a25;
  v79 = a23;
  v80 = a24;
  v82 = a21;
  v81 = a22;

  v148 = v82;
  v149 = v81;
  v139 = sub_10004D4FC(&_swiftEmptyDictionarySingleton, v80, v78, v82, v81);
  v142 = v32;
  v83 = 0;
  v84 = *(v79 + 16);
  v85 = v79 + 40;
  v86 = _swiftEmptyArrayStorage;
  v87 = v84 + 1;
LABEL_13:
  v88 = (v85 + 16 * v83);
  while (v87 != ++v83)
  {
    v89 = *(v88 - 1);
    v90 = *v88;
    v88 += 2;
    v91 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v91 = v89 & 0xFFFFFFFFFFFFLL;
    }

    if (v91)
    {
      v147 = v40;
      v92 = *(v152 + 48);
      *v55 = v89;
      v55[1] = v90;
      v93 = type metadata accessor for LNAppShortcutParameterRecord();
      sub_1000075C4(v55 + v92, 1, 1, v93);
      sub_10005644C(v55, v157, &qword_100199650, &qword_10014E350);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = v86[2];
        v99 = sub_100004E28();
        sub_1000704D0(v99, v100, v101, v86);
        v86 = v102;
      }

      v95 = v86[2];
      v94 = v86[3];
      if (v95 >= v94 >> 1)
      {
        v103 = sub_100005150(v94);
        sub_1000704D0(v103, v95 + 1, 1, v86);
        v86 = v104;
      }

      v86[2] = v95 + 1;
      sub_100003AA4();
      sub_10005644C(v157, v86 + v96 + *(v97 + 72) * v95, &qword_100199650, &qword_10014E350);
      v40 = v147;
      goto LABEL_13;
    }
  }

  v105 = v139;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a10 = v105;
  sub_100068CD8(v86, v141, v140, v62, v146, isUniquelyReferenced_nonNull_native);
  v152 = a10;
  a10 = _swiftEmptyArrayStorage;
  v107 = type metadata accessor for UUID();
  v108 = v151;
  sub_1000075C4(v151, 1, 1, v107);
  v109 = objc_allocWithZone(LNAutoShortcutLocalizedPhrase);
  sub_1000099C0();
  swift_bridgeObjectRetain_n();

  v110 = v155;

  v137 = v44;
  v136 = v156;
  v63 = v143;
  v111 = sub_100054E60(v145, v40, v154, v110, v156, v44, v108, v143 & 1);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v112 = *((a10 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((a10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v112 >> 1)
  {
    sub_100005150(v112);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v150 = v44;
  v145 = v111;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v113 = a10;
  v158[0] = sub_10006B6A4(v144);
  v114 = v142;
  sub_100055648(v158);
  v157 = v114;
  if (!v114)
  {

    v115 = 0;
    v116 = v158[0];
    v44 = (v158[0] + 72);
    v151 = *(v158[0] + 16);
    LODWORD(v147) = v63 & 1;
    while (1)
    {
      if (v151 == v115)
      {

        goto LABEL_38;
      }

      if (v115 >= *(v116 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v118 = *(v44 - 1);
      v117 = *v44;
      v119 = *(v44 - 3);
      v120 = *(v44 - 2);
      v122 = *(v44 - 5);
      v121 = *(v44 - 4);

      v63 = sub_1000B6318(v122, v121, v119, v120, v152);

      if (!v63)
      {
        break;
      }

      ++v115;
      __chkstk_darwin(v123);
      *(&v138 - 12) = v63;
      *(&v138 - 11) = v118;
      v124 = v156;
      v125 = v157;
      *(&v138 - 10) = v117;
      *(&v138 - 9) = v124;
      v127 = v154;
      v126 = v155;
      *(&v138 - 8) = v150;
      *(&v138 - 7) = v127;
      *(&v138 - 6) = v126;
      v128 = v149;
      *(&v138 - 5) = v148;
      *(&v138 - 4) = v128;
      *(&v138 - 3) = v153;
      LOBYTE(v136) = v147;
      v129 = sub_10004D698(sub_1000563B0, (&v138 - 14), v113);
      v157 = v125;

      v44 += 6;
      v113 = v129;
    }

    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    sub_10000347C(v131, qword_10019E008);
    v132 = v150;

    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v133, v134))
    {
      sub_100007764();
      v135 = sub_100003748();
      v158[0] = v135;
      MEMORY[0] = 136315138;
      MEMORY[4] = sub_100004C50(v156, v132, v158);
      sub_10001AAB0(&_mh_execute_header, v133, v134, "Skipping phrase template with an unrecognized token: %s");
      sub_1000034F8(v135);
      sub_1000036AC();
      sub_100013468();
    }

    else
    {
    }

    goto LABEL_38;
  }

  __break(1u);
}

uint64_t sub_100053D74@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, NSString **a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v107 = a7;
  v108 = a8;
  v110 = a5;
  v111 = a6;
  v105 = a3;
  v106 = a4;
  v17 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v94 = &v88 - v19;
  v20 = sub_10002EB80(&qword_10019B410, &unk_10014E360);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v104 = &v88 - v26;
  __chkstk_darwin(v25);
  v103 = &v88 - v27;
  v28 = type metadata accessor for LNAppShortcutParameterRecord();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v96 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v119 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v95 = &v88 - v36;
  __chkstk_darwin(v35);
  v118 = &v88 - v37;
  v102 = sub_10002EB80(&qword_100199650, &qword_10014E350);
  v38 = *(v102 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v102);
  v41 = (&v88 - v40);
  result = *(a2 + 16);
  urlString = _swiftEmptyArrayStorage;
  if (result)
  {
    v101 = v24;
    v89 = a9;
    v90 = v13;
    v93 = a12;
    v92 = a11;
    v91 = a10;
    v44 = *a1;
    v125._urlString = _swiftEmptyArrayStorage;
    v117 = result;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = a2 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v99 = *(v38 + 72);
    v97 = a13 & 1;
    v109 = v28;
    v100 = v44;
    v98 = v41;
    while (1)
    {
      v116 = result;
      sub_100009E90(result, v41, &qword_100199650, &qword_10014E350);
      v45 = *v41;
      v46 = v41[1];
      v47 = *(v102 + 48);
      v48 = [v44 localizedPhrase];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v123 = v49;
      v124 = v51;
      v121 = v45;
      v122 = v46;
      sub_1000563F8();
      String.replaceSubrange<A>(_:with:)();
      v120 = v47;
      v52 = v103;
      sub_100009E90(v41 + v47, v103, &qword_10019B410, &unk_10014E360);
      if (sub_1000032C4(v52, 1, v28) == 1)
      {
        sub_100003EFC(v52, &qword_10019B410, &unk_10014E360);
        v53 = [v44 signature];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v55;
        v115 = v54;

        v56 = [v44 parameterIdentifier];
        v57 = v101;
        if (v56)
        {
          v58 = v56;
          v59 = v95;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = 0;
          v61 = v104;
        }

        else
        {
          v60 = 1;
          v61 = v104;
          v59 = v95;
        }

        v41 = v98;
        v66 = type metadata accessor for UUID();
        sub_1000075C4(v59, v60, 1, v66);
        v67 = v59;
        v65 = v118;
        sub_10005644C(v67, v118, &qword_100199C90, &qword_10014D060);
      }

      else
      {
        v62 = v96;
        sub_10005550C(v52, v96);
        v121 = v110;
        v122 = v111;

        v63._countAndFlagsBits = v45;
        v63._object = v46;
        String.append(_:)(v63);
        v114 = v122;
        v115 = v121;
        v64 = type metadata accessor for UUID();
        v65 = v118;
        (*(*(v64 - 8) + 16))(v118, v62, v64);
        sub_1000555F4();
        sub_1000075C4(v65, 0, 1, v64);
        v57 = v101;
        v61 = v104;
        v41 = v98;
      }

      v112 = v124;
      v113 = v123;
      sub_100009E90(v65, v119, &qword_100199C90, &qword_10014D060);
      sub_100009E90(v41 + v120, v61, &qword_10019B410, &unk_10014E360);
      if (sub_1000032C4(v61, 1, v28) == 1)
      {
        sub_100003EFC(v61, &qword_10019B410, &unk_10014E360);
      }

      else
      {
        v68 = *(v61 + *(v28 + 40));
        v69 = v68;
        sub_1000555F4();
        if (v68)
        {
          v70 = String._bridgeToObjectiveC()();
          v71 = v94;
          sub_100009E90(v93, v94, &qword_1001990C0, &unk_10014E200);
          v72 = type metadata accessor for URL();
          v73 = sub_1000032C4(v71, 1, v72);
          v74 = 0;
          if (v73 != 1)
          {
            v75 = v94;
            URL._bridgeToObjectiveC()(&v125);
            v74 = v76;
            (*(*(v72 - 8) + 8))(v75, v72);
          }

          v77 = [v69 localizedStringForLocaleIdentifier:v70 bundleURL:v74];

          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v79;

          v28 = v109;
          goto LABEL_16;
        }
      }

      v78 = 0;
      v80 = 0;
LABEL_16:
      sub_100009E90(v41 + v120, v57, &qword_10019B410, &unk_10014E360);
      if (sub_1000032C4(v57, 1, v28) == 1)
      {
        sub_100003EFC(v57, &qword_10019B410, &unk_10014E360);
        v81 = 0;
        v82 = 0;
      }

      else
      {
        v83 = (v57 + *(v28 + 44));
        v81 = *v83;
        v82 = v83[1];

        sub_1000555F4();
      }

      objc_allocWithZone(LNAutoShortcutLocalizedPhrase);
      v84 = v111;

      v85 = v108;

      sub_100054FC4(v113, v112, v107, v85, v110, v84, v119, v78, v80, v81, v82, v97);
      sub_100003EFC(v118, &qword_100199C90, &qword_10014D060);
      sub_100003EFC(v41, &qword_100199650, &qword_10014E350);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v86 = *(v125._urlString + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      result = v116 + v99;
      v87 = v117-- == 1;
      v28 = v109;
      v44 = v100;
      if (v87)
      {
        urlString = v125._urlString;
        a9 = v89;
        break;
      }
    }
  }

  *a9 = urlString;
  return result;
}

uint64_t sub_1000546A8()
{
  sub_1000034F8((v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000546E0@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - v10;
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = [a1 shortTitle];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 bundleURL];

    if (v16)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = type metadata accessor for URL();
      v18 = 0;
    }

    else
    {
      v17 = type metadata accessor for URL();
      v18 = 1;
    }

    sub_1000075C4(v11, v18, 1, v17);
    sub_10005644C(v11, v13, &qword_1001990C0, &unk_10014E200);
    type metadata accessor for URL();
    if (sub_1000032C4(v13, 1, v17) != 1)
    {
      (*(*(v17 - 8) + 32))(a2, v13, v17);
      return sub_1000075C4(a2, 0, 1, v17);
    }
  }

  else
  {
    v19 = type metadata accessor for URL();
    sub_1000075C4(v13, 1, 1, v19);
  }

  v20 = [a1 phraseTemplates];
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_1000232F4(v21))
  {
    sub_10003818C(0, (v21 & 0xC000000000000001) == 0, v21);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(v21 + 32);
    }

    v23 = v22;

    v24 = [v23 bundleURL];

    if (v24)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v28 = type metadata accessor for URL();
    sub_1000075C4(v8, v25, 1, v28);
    sub_10005644C(v8, a2, &qword_1001990C0, &unk_10014E200);
  }

  else
  {

    v27 = type metadata accessor for URL();
    sub_1000075C4(a2, 1, 1, v27);
  }

  v29 = type metadata accessor for URL();
  result = sub_1000032C4(v13, 1, v29);
  if (result != 1)
  {
    return sub_100003EFC(v13, &qword_1001990C0, &unk_10014E200);
  }

  return result;
}

uint64_t sub_100054A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100054ADC()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100054B2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100054B9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_100054B2C();
}

uint64_t sub_100054BA8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_100054ADC();
}

Swift::Int sub_100054BB4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

id sub_100054C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v28 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();

  v26 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
  v25.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a9)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  if (a11)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v18 = String._bridgeToObjectiveC()();

  if (a17)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  if (a18)
  {
    sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  v21 = [v29 initWithBundleIdentifier:v28 localeIdentifier:v27 actionIdentifier:v26 orderedPhrases:v25.super.isa localizedShortTitle:v24 localizedAutoShortcutDescription:v23 systemImageName:v18 shortcutTileColor:a14 parameterPresentation:a15 attributionBundleIdentifier:v19 basePhraseTemplates:v20.super.isa];

  return v21;
}

id sub_100054E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = type metadata accessor for UUID();
  isa = 0;
  if (sub_1000032C4(a7, 1, v13) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v13 - 8) + 8))(a7, v13);
  }

  v15 = String._bridgeToObjectiveC()();

  v16 = [v18 initWithLocalizedPhrase:v10 bundleIdentifier:v11 basePhraseTemplate:v12 parameterIdentifier:isa primary:a8 & 1 signature:v15];

  return v16;
}

id sub_100054FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = type metadata accessor for UUID();
  isa = 0;
  if (sub_1000032C4(a7, 1, v16) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a7, v16);
  }

  if (a9)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  if (a11)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = String._bridgeToObjectiveC()();

  LOBYTE(v23) = a12 & 1;
  v21 = [v24 initWithLocalizedPhrase:v13 bundleIdentifier:v14 basePhraseTemplate:v15 parameterIdentifier:isa optionsCollectionTitle:v18 optionsCollectionSystemImageName:v19 primary:v23 signature:v20];

  return v21;
}

id sub_100055194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for URL();
  v13 = 0;
  if (sub_1000032C4(a5, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(*(v11 - 8) + 8))(a5, v11);
  }

  v15 = [v6 initWithKey:v9 table:v10 bundleURL:v13];

  return v15;
}

id sub_100055298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v6 initWithAppShortcutsProviderMangledTypeName:v9 parameterIdentifier:v10 appShortcutIndex:a5 optionsProviderIndex:a6];

  return v11;
}

id sub_100055338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithLocalizedTitle:v8 systemImageName:v9 optionsProviderReference:a5];

  return v10;
}

id sub_1000553D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    sub_100003D44(0, &qword_100199640, LNAppShortcutOptionsCollection_ptr);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [v5 initWithParameterIdentifier:v7 localizedSpecificTitle:v8 optionsCollections:v9.super.isa];

  return v10;
}

uint64_t sub_1000554A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNAppShortcutParameterRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005550C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNAppShortcutParameterRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AppShortcutInterpolator.Builder()
{
  result = qword_100199760;
  if (!qword_100199760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000555F4()
{
  v1 = sub_10000519C();
  v3 = v2(v1);
  sub_10000482C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

Swift::Int sub_100055648(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000BD92C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1000556B4(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000556B4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10002EB80(&unk_10019B3A0, &qword_1001505B0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100055844(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000557B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000557B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 48 * a3 + 32);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >> 14 <= *(v9 - 16) >> 14)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 16);
        result = *(v9 + 24);
        v11 = *(v9 + 40);
        v12 = *v9;
        v13 = *(v9 - 32);
        *v9 = *(v9 - 48);
        *(v9 + 16) = v13;
        *(v9 + 32) = *(v9 - 16);
        *(v9 - 32) = v10;
        *(v9 - 24) = result;
        *(v9 - 16) = v7;
        *(v9 - 8) = v11;
        *(v9 - 48) = v12;
        v9 -= 48;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 48;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100055844(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v90 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 48 * v9 + 32);
        v11 = *a3 + 48 * v7;
        v12 = 48 * v7;
        v13 = *(v11 + 32) >> 14;
        v14 = v10 >> 14;
        v15 = (v11 + 128);
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v15;
          v15 += 6;
          v19 = (v13 < v14) ^ (v10 >> 14 >= v18 >> 14);
          ++v16;
          v10 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v14)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 48 * v6 - 48;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *(v24 + 2);
                v27 = *(v24 + 3);
                v28 = *v24;
                v29 = v24[2];
                v31 = v25[1];
                v30 = v25[2];
                *v24 = *v25;
                v24[1] = v31;
                v24[2] = v30;
                *v25 = v28;
                *(v25 + 2) = v26;
                *(v25 + 3) = v27;
                v25[2] = v29;
              }

              ++v22;
              v20 -= 48;
              v12 += 48;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v32 = *a3;
            v33 = *a3 + 48 * v9;
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 48 * v9 + 32);
              v36 = v34;
              v37 = v33;
              do
              {
                if (v35 >> 14 <= *(v37 - 16) >> 14)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v38 = *(v37 + 16);
                v39 = *(v37 + 24);
                v40 = *(v37 + 40);
                v41 = *v37;
                v42 = *(v37 - 32);
                *v37 = *(v37 - 48);
                *(v37 + 16) = v42;
                *(v37 + 32) = *(v37 - 16);
                *(v37 - 32) = v38;
                *(v37 - 24) = v39;
                *(v37 - 16) = v35;
                *(v37 - 8) = v40;
                *(v37 - 48) = v41;
                v37 -= 48;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 48;
              --v34;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v92 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = v8[2];
        sub_1000702DC();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1000702DC();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v7;
      v47[1] = v92;
      v93 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_56:
            if (v54)
            {
              goto LABEL_96;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_99;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_104;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v45 < 2)
          {
            goto LABEL_98;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_71:
          if (v69)
          {
            goto LABEL_101;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_103;
          }

          if (v76 < v68)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_100055EAC((*a3 + 48 * *v80), (*a3 + 48 * *v82), (*a3 + 48 * v83), v93);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v83 < v81)
          {
            goto LABEL_91;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_92;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_93;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_85;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_94;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_95;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_97;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_100;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_105;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v92;
      a4 = v90;
      if (v92 >= v6)
      {
        v95 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_100055D74(&v95, *a1, a3);
LABEL_89:
}

uint64_t sub_100055D74(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000BCD28(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_100055EAC((*a3 + 48 * *v4), (*a3 + 48 * *v9), (*a3 + 48 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_100055EAC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_10007105C(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 4) >> 14 >= *(v6 + 4) >> 14)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 48;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 48;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 2);
    *(v7 + 1) = *(v12 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_10007105C(a2, (a3 - a2) / 48, a4);
  v10 = &v4[48 * v9];
LABEL_15:
  for (v5 -= 48; v10 > v4 && v6 > v7; v5 -= 48)
  {
    if (*(v6 - 2) >> 14 < *(v10 - 2) >> 14)
    {
      v19 = v6 - 48;
      v13 = v5 + 48 == v6;
      v6 -= 48;
      if (!v13)
      {
        v20 = *v19;
        v21 = *(v19 + 2);
        *(v5 + 1) = *(v19 + 1);
        *(v5 + 2) = v21;
        *v5 = v20;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 48)
    {
      v17 = *(v10 - 3);
      v18 = *(v10 - 1);
      *(v5 + 1) = *(v10 - 2);
      *(v5 + 2) = v18;
      *v5 = v17;
    }

    v10 -= 48;
  }

LABEL_28:
  v22 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v22])
  {
    memmove(v6, v4, 48 * v22);
  }

  return 1;
}

uint64_t sub_10005605C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v6 + 32));
  v10 = 1;
  while (1)
  {
    v11 = v8 & v9;
    v12 = (v8 & v9) >> 6;
    v13 = 1 << (v8 & v9);
    v14 = v13 & *(v6 + 56 + 8 * v12);
    if (!v14)
    {
      break;
    }

    v15 = (*(v6 + 48) + 16 * v11);
    v16 = *v15 == a1 && v15[1] == a2;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v10 = 0;
      break;
    }

    v8 = v11 + 1;
  }

  v17 = *(v6 + 16);
  v18 = v17 + v10;
  if (__OFADD__(v17, v10))
  {
    __break(1u);
    goto LABEL_34;
  }

  v19 = *(v6 + 24);
  v20 = v36;
  if (v19 < v18 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000486E4();
      goto LABEL_20;
    }

    if (v19 < v18)
    {
      sub_100049DB0();
LABEL_20:
      v21 = *v36;
      v22 = *(*v36 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v23 = Hasher._finalize()();
      v24 = ~(-1 << *(v21 + 32));
      while (1)
      {
        v11 = v23 & v24;
        v12 = (v23 & v24) >> 6;
        v13 = 1 << (v23 & v24);
        if ((v13 & *(v21 + 56 + 8 * v12)) == 0)
        {
          break;
        }

        v25 = (*(v21 + 48) + 16 * v11);
        v26 = *v25 == a1 && v25[1] == a2;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v20 = v36;
          if (!v14)
          {
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        v23 = v11 + 1;
      }

      v20 = v36;
      if (v14)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    sub_100049818();
  }

  if (v14)
  {
LABEL_29:
    v27 = (*(*v20 + 48) + 16 * v11);
    result = *v27;
    v29 = v27[1];
    *v27 = a1;
    v27[1] = a2;
    return result;
  }

LABEL_31:
  v30 = *v20;
  *(*v20 + 8 * v12 + 56) |= v13;
  v31 = (*(v30 + 48) + 16 * v11);
  *v31 = a1;
  v31[1] = a2;
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    result = 0;
    *(v30 + 16) = v34;
    return result;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10005628C(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_100003D44(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_100056300(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1000077D8();
}

unint64_t sub_1000563F8()
{
  result = qword_100199668;
  if (!qword_100199668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199668);
  }

  return result;
}

uint64_t sub_10005644C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100013294(a1, a2, a3, a4);
  sub_10000482C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000077D8();
  v9(v8);
  return v4;
}

unint64_t sub_100056498()
{
  result = qword_100199690;
  if (!qword_100199690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199690);
  }

  return result;
}

unint64_t sub_1000564EC()
{
  result = qword_1001996B0;
  if (!qword_1001996B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001996B0);
  }

  return result;
}

unint64_t sub_100056540()
{
  result = qword_1001996C8;
  if (!qword_1001996C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001996C8);
  }

  return result;
}

unint64_t sub_100056594()
{
  result = qword_1001996F0;
  if (!qword_1001996F0)
  {
    type metadata accessor for CharacterClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001996F0);
  }

  return result;
}

unint64_t sub_10005663C()
{
  result = qword_100199700;
  if (!qword_100199700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199700);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppShortcutInterpolator.Error(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AppShortcutInterpolator.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 sub_100056790(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005679C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000567DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10005682C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100056848(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100056888(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_10005690C()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_100056B04(319, &qword_100199770, &type metadata for LNAppShortcutRecord, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100056A50();
      if (v2 <= 0x3F)
      {
        sub_100056AA8();
        if (v3 <= 0x3F)
        {
          type metadata accessor for LNShortcutTileColor(319);
          if (v4 <= 0x3F)
          {
            sub_100056B04(319, &qword_100199788, &type metadata for String, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100056A50()
{
  if (!qword_100199778)
  {
    type metadata accessor for LNAppShortcutParameterRecord();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100199778);
    }
  }
}

unint64_t sub_100056AA8()
{
  result = qword_100199780;
  if (!qword_100199780)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100199780);
  }

  return result;
}

void sub_100056B04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_100056B54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100056B68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100056BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100056BFC()
{
  result = qword_1001997D0;
  if (!qword_1001997D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001997D0);
  }

  return result;
}

unint64_t sub_100056C58()
{
  result = qword_1001997D8;
  if (!qword_1001997D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001997D8);
  }

  return result;
}

uint64_t sub_100056D10()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100056D74()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x617461646174656DLL, 0xE800000000000000, v0, v1);
}

unint64_t sub_100056DD4()
{
  result = qword_100198780;
  if (!qword_100198780)
  {
    sub_10002EC70(&unk_10019AAC0, &unk_10014BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198780);
  }

  return result;
}

char *sub_100056E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  if (qword_100198110 != -1)
  {
    swift_once();
  }

  memcpy(v51, &unk_10019D958, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v51, &v39);
    if (qword_100198118 != -1)
    {
      sub_100002A5C();
      swift_once();
    }

    v39 = a1;
    v40 = a2;
    v10 = == infix<A>(_:_:)();
    v12 = v11;
    v14 = v13;
    memcpy(v38, v51, sizeof(v38));
    QueryType.filter(_:)(v10, v12, v14, &type metadata for Table, &protocol witness table for Table, v15, v16, v17, v33, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15], v38[16], v38[17], v38[18], v38[19], v38[20], v38[21], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);

    sub_10001970C(v51);
    v18 = &v39;
  }

  else
  {
    sub_1000196B0(v51, &v39);
    v18 = v51;
  }

  memcpy(v50, v18, sizeof(v50));
  v42 = &type metadata for Table;
  v43 = &protocol witness table for Table;
  v39 = swift_allocObject();
  memcpy((v39 + 16), v50, 0xB0uLL);
  v19 = Connection.prepare(_:)(&v39);
  result = sub_1000034F8(&v39);
  if (!v3)
  {
    swift_retain_n();
    v34 = v19;
    v21 = dispatch thunk of _AnySequenceBox._makeIterator()();
    v35 = _swiftEmptyArrayStorage;
    v22 = &unk_100198000;
    v52 = v21;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v39)
      {
        break;
      }

      if (v22[35] != -1)
      {
        sub_100002A5C();
        swift_once();
      }

      Row.get<A>(_:)();
      v23 = v39;
      v24 = v40;
      if (qword_100198120 != -1)
      {
        swift_once();
      }

      Row.get<A>(_:)();
      v36 = v23;
      sub_100057330();
      v25 = type metadata accessor for URL();
      sub_1000075C4(v9, 1, 1, v25);
      v26 = static LNAssistantAppEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000704F8(0, *(v35 + 2) + 1, 1, v35);
        v35 = v31;
      }

      v22 = &unk_100198000;
      v27 = v35;
      v29 = *(v35 + 2);
      v28 = *(v35 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_1000704F8(v28 > 1, v29 + 1, 1, v35);
        v27 = v32;
      }

      *(v27 + 2) = v29 + 1;
      v35 = v27;
      v30 = &v27[24 * v29];
      *(v30 + 4) = v36;
      *(v30 + 5) = v24;
      *(v30 + 6) = v26;
    }

    return v35;
  }

  return result;
}

unint64_t sub_100057330()
{
  result = qword_10019C980;
  if (!qword_10019C980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019C980);
  }

  return result;
}

void sub_1000573B4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_1000574AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100061118(a1, a2, a3);
  v6 = (v5 + 40);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *v6;
    v13[0] = *(v6 - 1);
    v13[1] = v9;

    v10 = v4(v13);
    if (v3)
    {

      return v8 != 0;
    }

    v11 = v10;
    v6 += 2;
  }

  while ((v11 & 1) == 0);
  return v8 != 0;
}

BOOL sub_100057550(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
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

    v9 = type metadata accessor for LNAppShortcutParameterRecord();
    sub_10000D33C(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

BOOL sub_10005761C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
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

    v9 = *(sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0) - 8);
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

BOOL sub_10005770C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100061118(a1, a2, a3);
  v6 = (v5 + 56);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *(v6 - 1);
    v10 = *v6;
    v14 = *(v6 - 3);
    v15 = v9;
    v16 = v10;

    v11 = v4(&v14);
    if (v3)
    {

      return v8 != 0;
    }

    v12 = v11;
    v6 += 4;
  }

  while ((v12 & 1) == 0);
  return v8 != 0;
}

void sub_1000577B8(uint64_t a1, uint64_t a2)
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

id sub_10005781C()
{
  v0 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v1 = [v0 Intents];
  swift_unknownObjectRelease();
  v2 = [v1 Transcript];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1000578B4()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DA38);
  v1 = sub_1000077D8();
  sub_10000347C(v1, v2);
  type metadata accessor for Transcript();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100057960(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionObserverConnections;
  type metadata accessor for UUID();
  sub_100003D44(0, &qword_100199BC8, NSXPCConnection_ptr);
  sub_100006A48();
  sub_100060C6C(v7, v8);
  *&v2[v6] = Dictionary.init(dictionaryLiteral:)();
  v9 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionLock;
  sub_10002EB80(&qword_100199D38, &qword_100151700);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager] = a1;
  *&v2[OBJC_IVAR____TtC10LinkDaemon10Transcript_observers] = a2;
  v19.receiver = v2;
  v19.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v19, "init");
  v12 = qword_100198128;
  v13 = v11;
  if (v12 != -1)
  {
    sub_100002A70();
  }

  v14 = type metadata accessor for Logger();
  sub_100011AB8(v14, qword_10019DA38);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (sub_10000E7D4(v16))
  {
    v17 = sub_100011344();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting Transcript", v17, 2u);
    sub_100004D8C();
  }

  else
  {
  }

  return v13;
}

uint64_t sub_100057BE0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DA50 = result;
  *algn_10019DA58 = v1;
  return result;
}

uint64_t sub_100057C10(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  sub_100004B70(v7);
  v9 = *(v8 + 64);
  sub_100003A54();
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_100009D54();
  type metadata accessor for TaskPriority();
  sub_100007E2C();
  sub_1000075C4(v14, v15, v16, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v3;
  v18[5] = a1;
  v18[6] = v13;
  v18[7] = a2;
  v18[8] = a3;
  v19 = v3;
  v20 = a1;

  v21 = sub_10000EE44();
  sub_10003A6C0(v21, v22, v12, v23, v18);
}

uint64_t sub_100057D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_100057E00;

  return sub_100057EF8(a5, a6);
}

uint64_t sub_100057E00()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 40) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100057EF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10001E094();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100057F24()
{
  sub_1000036A0();
  v1 = v0[2];
  v0[5] = sub_10005FBE4();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100057FC4;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1000581BC(v2, v3, v4, v5);
}

uint64_t sub_100057FC4()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000580BC()
{
  sub_1000036A0();
  v1 = *(v0 + 40);
  sub_100012720();
  sub_1000F1718();

  sub_100006734();

  return v2();
}

uint64_t sub_100058120()
{
  sub_1000036A0();
  v1 = *(v0 + 40);
  sub_100012720();
  sub_1000F1718();

  sub_100003A00();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1000581BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for Date();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100058280, 0, 0);
}

uint64_t sub_100058280()
{
  v87 = v1;
  v2 = *(v1 + 16);
  if ((sub_100004250() & 1) == 0)
  {
    v3 = *(v1 + 16);
    v4 = sub_10000B484();
    if (!v5)
    {
      if (qword_100198128 != -1)
      {
        sub_100002A70();
      }

      v59 = sub_100018A98();
      sub_100011AB8(v59, qword_10019DA38);
      v60 = v0;
      v61 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (sub_1000103CC())
      {
        v62 = *(v1 + 32);
        sub_100007764();
        v63 = sub_100002688();
        sub_10000C0A8(v63, 5.7779e-34);
        sub_1000117B8();
        _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
        sub_100003EFC(v63, &unk_10019A260, &unk_10014D030);
        sub_100004D8C();
        sub_100011FBC();
      }

      v43 = 3;
LABEL_31:
      v79 = *(v1 + 56);
      sub_100060730();
      sub_100007978();
      *v80 = v43;
      swift_willThrow();

      sub_100003A00();
      sub_10000483C();

      __asm { BRAA            X1, X16 }
    }

    v6 = *(v1 + 32);
    sub_10000B274(v4, v5, v6);
    [v6 setSource:1];
  }

  v7 = sub_10000B2D8(*(v1 + 32));
  if (!v8)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v33 = sub_100018A98();
    sub_100011AB8(v33, qword_10019DA38);
    v34 = v0;
    v35 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_1000103CC())
    {
      v36 = *(v1 + 32);
      sub_100007764();
      v37 = sub_100002688();
      sub_10000C0A8(v37, 5.7779e-34);
      sub_1000117B8();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      sub_100003EFC(v37, &unk_10019A260, &unk_10014D030);
      sub_100004D8C();
      sub_100011FBC();
    }

    v43 = 2;
    goto LABEL_31;
  }

  v9 = v7;
  v10 = v8;
  v12 = *(v1 + 48);
  v11 = *(v1 + 56);
  v13 = *(v1 + 40);
  v14 = [*(v1 + 32) executionDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceNow.getter();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v11, v13);
  if (v16 >= 5.0)
  {

    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v44 = sub_100018A98();
    sub_100011AB8(v44, qword_10019DA38);
    v45 = v10;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (sub_10001A9A4())
    {
      v83 = v47;
      v48 = *(v1 + 56);
      v50 = *(v1 + 32);
      v49 = *(v1 + 40);
      sub_1000063EC();
      v84 = sub_100002688();
      v85 = sub_1000056E4();
      v86 = v85;
      *v45 = 136315394;
      v51 = [v50 executionDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000099CC();
      sub_100060C6C(v52, v53);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v17(v48, v49);
      v57 = sub_100004C50(v54, v56, &v86);

      *(v45 + 1) = v57;
      *(v45 + 6) = 2112;
      *(v45 + 14) = v50;
      *v84 = v50;
      v58 = v50;
      _os_log_impl(&_mh_execute_header, v46, v83, "Expected execution date to be recent, found %s. Discarding %@.", v45, 0x16u);
      sub_100003EFC(v84, &unk_10019A260, &unk_10014D030);
      sub_1000036AC();
      sub_1000034F8(v85);
      sub_1000036AC();
      sub_100011FBC();
    }

    goto LABEL_30;
  }

  v18 = *(*(v1 + 24) + OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager);
  v19 = sub_10000B5E4(v9, v10);
  v21 = v20;
  v23 = v22;

  *(v1 + 64) = v21;
  if (!v21)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v69 = sub_100018A98();
    sub_100011AB8(v69, qword_10019DA38);
    v70 = v10;
    v71 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_1000103CC())
    {
      v72 = *(v1 + 32);
      sub_100007764();
      v73 = sub_100002688();
      sub_10000C0A8(v73, 5.7779e-34);
      sub_1000117B8();
      _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
      sub_100003EFC(v73, &unk_10019A260, &unk_10014D030);
      sub_100004D8C();
      sub_100011FBC();
    }

LABEL_30:
    v43 = 1;
    goto LABEL_31;
  }

  v24 = *(v1 + 24);
  *(v1 + 72) = v23;
  *(v1 + 80) = sub_10000B338(v19, v21, v23);
  v25 = swift_task_alloc();
  *(v1 + 88) = v25;
  *v25 = v1;
  v25[1] = sub_100058850;
  v27 = *(v1 + 24);
  v26 = *(v1 + 32);
  sub_10000483C();

  return sub_1000589BC(v28, v29, v30);
}

uint64_t sub_100058850()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100058950()
{
  sub_1000036A0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  sub_100006734();

  return v3();
}

uint64_t sub_1000589BC(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 176) = v3;
  *(v4 + 168) = a3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  *(v4 + 184) = swift_getObjectType();

  return _swift_task_switch(sub_100058A34, 0, 0);
}

uint64_t sub_100058A34()
{
  sub_1000070C8();
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100058B4C;
  v2 = swift_continuation_init();
  v0[17] = sub_10002EB80(&qword_100199D20, &qword_10014E828);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10005D4D4;
  v0[13] = &unk_10018D018;
  v0[14] = v2;
  [v1 asBMAppIntentInvocationWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100058B4C()
{
  sub_1000036A0();
  v7 = *v0;
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;
  sub_100009990();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100058C1C()
{
  v64 = v0;
  v1 = v0[23];
  v60 = v0[22];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_10005781C();
  v5 = [v4 source];

  v59 = v3;
  v6 = v3;
  v7 = v2;
  [v5 sendEvent:v6];

  v8 = *(v2 + 16);
  v9 = OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager;
  v10 = (v2 + 48);
  for (i = v8; i; --i)
  {
    v12 = v62[21];
    v13 = v62[19];
    v14 = *(v10 - 1);
    v15 = *v10;
    v16 = *(v10 - 2);
    v17 = *(v60 + v9);

    v18 = v15;
    sub_10005DE18(v13);

    v10 += 3;
  }

  v19 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v63 = _swiftEmptyArrayStorage;
    sub_100011438(0, v8, 0);
    v19 = _swiftEmptyArrayStorage;
    v20 = _swiftEmptyArrayStorage[2];
    v21 = 2 * v20;
    v22 = (v7 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v63 = v19;
      v25 = v20 + 1;
      v26 = v19[3];

      if (v20 >= v26 >> 1)
      {
        sub_100011438(v26 > 1, v25, 1);
        v19 = v63;
      }

      v19[2] = v25;
      v27 = &v19[v21];
      v27[4] = v23;
      v27[5] = v24;
      v21 += 2;
      v22 += 3;
      ++v20;
      --v8;
    }

    while (v8);
  }

  if (qword_100198128 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v28 = type metadata accessor for Logger();
    sub_100011AB8(v28, qword_10019DA38);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (sub_1000103CC())
    {
      v31 = sub_100007764();
      v32 = sub_1000056E4();
      v63 = v32;
      *v31 = 136315138;
      v33 = Array.description.getter();
      v35 = sub_100004C50(v33, v34, &v63);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Wrote action record to streams %s", v31, 0xCu);
      sub_1000034F8(v32);
      sub_100004D70();
      sub_100004D8C();
    }

    v36 = v62;
    v37 = v62[22];
    v38 = *(v37 + OBJC_IVAR____TtC10LinkDaemon10Transcript_observers);
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = v38 + 32;
      do
      {
        sub_100013334(v40, (v62 + 10));
        v41 = sub_1000034B4(v62 + 10, v62[13]);
        sub_1000BDEE8(v19, *v41);
        sub_1000034F8(v62 + 10);
        v40 += 40;
        --v39;
      }

      while (v39);
      v37 = v62[22];
    }

    v42 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionObserverConnections;
    swift_beginAccess();
    if (!*(*(v37 + v42) + 16))
    {
      break;
    }

    v43 = [v62[19] actionOutput];
    if (!v43)
    {
      break;
    }

    v44 = v43;
    v45 = [v43 nextAction];

    v61 = v45;
    if (!v45)
    {
      break;
    }

    sub_10000B2D8(v62[19]);
    if (!v46)
    {
LABEL_32:

      break;
    }

    v47 = v62[22];
    v48 = sub_10005D190();
    v49 = sub_1000232F4(v48);
    for (j = 0; ; ++j)
    {
      if (v49 == j)
      {

        goto LABEL_32;
      }

      if ((v48 & 0xC000000000000001) != 0)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v51 = *(v48 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(j, 1))
      {
        break;
      }

      v19 = v36[19];
      v52 = [v19 action];
      v53 = String._bridgeToObjectiveC()();
      v54 = [v19 actionOutput];
      if (v54 && (sub_100060AA0(v54), v55))
      {
        v19 = v55;
        v56 = String._bridgeToObjectiveC()();
      }

      else
      {
        v56 = 0;
      }

      [v51 didReceiveNextAction:v61 baseAction:v52 forAppWithBundleIdentifier:v53 associatedLiveActivityIdentifier:v56];

      swift_unknownObjectRelease();
      v36 = v62;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_100002A70();
  }

  sub_100003A00();

  return v57();
}

uint64_t sub_1000590F4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  sub_100004B70(v11);
  v13 = *(v12 + 64);
  sub_100003A54();
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  v17 = sub_100009D54();
  type metadata accessor for TaskPriority();
  sub_100007E2C();
  sub_1000075C4(v18, v19, v20, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v5;
  *(v22 + 40) = a1;
  *(v22 + 48) = a2;
  *(v22 + 56) = a3 & 1;
  *(v22 + 64) = v17;
  *(v22 + 72) = a4;
  *(v22 + 80) = a5;
  v23 = v5;
  sub_1000098F0(a1, a2);

  v24 = sub_10000EE44();
  sub_10003A6C0(v24, v25, v16, v26, v22);
}

uint64_t sub_10005925C()
{
  v0[2] = v4;
  v0[3] = v5;
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100057E00;

  return sub_100059320();
}

uint64_t sub_100059320()
{
  sub_1000036A0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for OSSignpostID();
  v1[6] = v5;
  sub_10000D33C(v5);
  v1[7] = v6;
  v8 = *(v7 + 64) + 15;
  v1[8] = swift_task_alloc();
  v9 = sub_10001E094();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000593D0()
{
  sub_1000036A0();
  v1 = v0[8];
  static OSSignpostID.exclusive.getter();
  sub_100012720();
  sub_1000C4378();
  v0[9] = v2;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100059478;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_100059764(v3, v6, v7, v4, v5);
}

uint64_t sub_100059478()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100059570()
{
  sub_1000070C8();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_100012720();
  sub_1000F1718();

  v5 = sub_100007500();
  v6(v5);

  sub_100006734();

  return v7();
}

uint64_t sub_1000595F8()
{
  sub_1000070C8();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_100012720();
  sub_1000F1718();

  v5 = sub_100007500();
  v6(v5);

  sub_100003A00();
  v8 = v0[11];

  return v7();
}

uint64_t sub_100059764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for Date();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100059828, 0, 0);
}

uint64_t sub_100059828()
{
  v95 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  sub_100003D44(0, &qword_100199D18, LNTranscriptActionRecord_ptr);
  v4 = sub_100012F50();
  *(v0 + 72) = v4;
  if (v3)
  {

LABEL_3:
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v5 = type metadata accessor for Logger();
    sub_100011AB8(v5, qword_10019DA38);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (sub_10000E7D4(v7))
    {
      *sub_100011344() = 0;
      sub_1000117B8();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100011FBC();
    }

    sub_100060730();
    v13 = sub_100007978();
    sub_1000610E8(v13, v14);
LABEL_52:
    v88 = *(v0 + 64);

    sub_100003A00();
    sub_10000483C();

    __asm { BRAA            X1, X16 }
  }

  v15 = v4;
  if (!v4)
  {
    goto LABEL_3;
  }

  v16 = sub_10000B2D8(v4);
  if (!v17)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v25 = type metadata accessor for Logger();
    sub_100011AB8(v25, qword_10019DA38);
    v26 = v15;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      sub_100007764();
      v29 = sub_100024674();
      sub_1000215A4(v29, 5.7779e-34);
      sub_100011AD0(&_mh_execute_header, v30, v28, "No bundle identifier set. Failed to record %@.");
      sub_100003EFC(v29, &unk_10019A260, &unk_10014D030);
      sub_100003A0C();
      sub_100004D70();
    }

    sub_100060730();
    sub_100007978();
    v32 = 2;
    goto LABEL_51;
  }

  v18 = v16;
  v19 = v17;
  v20 = *(v0 + 40);

  v21 = sub_10000B484();
  if (!v22)
  {

    goto LABEL_23;
  }

  if (v18 == v21 && v19 == v22)
  {

    goto LABEL_29;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
LABEL_23:

    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v33 = type metadata accessor for Logger();
    sub_100011AB8(v33, qword_10019DA38);
    v26 = v15;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      sub_100007764();
      v36 = sub_100024674();
      sub_1000215A4(v36, 5.7779e-34);
      sub_100011AD0(&_mh_execute_header, v37, v35, "Client lacks application-identifier entitlement. Discarding %@.");
      sub_100003EFC(v36, &unk_10019A260, &unk_10014D030);
      sub_100003A0C();
      sub_100004D70();
    }

    sub_100060730();
    sub_100007978();
    v32 = 3;
    goto LABEL_51;
  }

LABEL_29:
  if ([v15 source] != 1)
  {

    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v61 = type metadata accessor for Logger();
    sub_100011AB8(v61, qword_10019DA38);
    v26 = v15;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_49;
    }

    sub_1000063EC();
    v64 = sub_100002688();
    v65 = sub_1000056E4();
    v94[0] = v65;
    *v19 = 136315394;
    *(v0 + 112) = [v26 source];
    type metadata accessor for LNTranscriptActionSource(0);
    v66 = String.init<A>(describing:)();
    v68 = sub_100004C50(v66, v67, v94);

    *(v19 + 4) = v68;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v26;
    *v64 = v15;
    v69 = v26;
    _os_log_impl(&_mh_execute_header, v62, v63, "Expected source to be app, found %s. Discarding %@.", v19, 0x16u);
    sub_100003EFC(v64, &unk_10019A260, &unk_10014D030);
    sub_1000036AC();
    sub_1000034F8(v65);
    sub_100003A0C();
    sub_100011FBC();

LABEL_43:
    sub_100060730();
    v82 = sub_100007978();
    sub_1000610E8(v82, v83);

    goto LABEL_52;
  }

  v39 = *(v0 + 56);
  v38 = *(v0 + 64);
  v40 = *(v0 + 48);
  v41 = [v15 executionDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceNow.getter();
  v43 = v42;
  v44 = *(v39 + 8);
  v44(v38, v40);
  if (v43 >= 5.0)
  {

    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v70 = type metadata accessor for Logger();
    sub_100011AB8(v70, qword_10019DA38);
    v26 = v15;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v71, v72))
    {

LABEL_50:
      sub_100060730();
      sub_100007978();
      v32 = 1;
LABEL_51:
      *v31 = v32;
      swift_willThrow();

      goto LABEL_52;
    }

    v73 = *(v0 + 64);
    v91 = *(v0 + 48);
    sub_1000063EC();
    v92 = sub_100024674();
    v93 = sub_1000056E4();
    v94[0] = v93;
    *v40 = 136315394;
    v74 = [v26 executionDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000099CC();
    sub_100060C6C(v75, v76);
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v44;
    v80 = v79;
    v78(v73, v91);
    v81 = sub_100004C50(v77, v80, v94);

    *(v40 + 4) = v81;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v26;
    *v92 = v15;
    v69 = v26;
    _os_log_impl(&_mh_execute_header, v71, v72, "Expected execution date to be recent, found %s. Discarding %@.", v40, 0x16u);
    sub_100003EFC(v92, &unk_10019A260, &unk_10014D030);
    sub_1000036AC();
    sub_1000034F8(v93);
    sub_1000036AC();
    sub_100004D70();

    goto LABEL_43;
  }

  v45 = *(*(v0 + 32) + OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager);
  v46 = sub_10000B5E4(v18, v19);
  v48 = v47;
  v50 = v49;

  *(v0 + 80) = v48;
  if (!v48)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v84 = type metadata accessor for Logger();
    sub_100011AB8(v84, qword_10019DA38);
    v26 = v15;
    v62 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v85))
    {
      sub_100007764();
      v86 = sub_100024674();
      sub_1000215A4(v86, 5.7779e-34);
      sub_100011AD0(&_mh_execute_header, v87, v85, "Stream reference nil. Failed to record %@.");
      sub_100003EFC(v86, &unk_10019A260, &unk_10014D030);
      sub_100003A0C();
      sub_100004D70();
    }

LABEL_49:

    goto LABEL_50;
  }

  v51 = *(v0 + 64);
  v52 = *(v0 + 48);
  v53 = *(v0 + 32);
  *(v0 + 88) = v50;
  *(v0 + 96) = sub_10000B338(v46, v48, v50);
  v54 = [v15 executionDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v44(v51, v52);
  v55 = swift_task_alloc();
  *(v0 + 104) = v55;
  *v55 = v0;
  v55[1] = sub_10005A148;
  sub_100017F74();
  sub_10000483C();

  return sub_1000589BC(v56, v57, v58);
}

uint64_t sub_10005A148()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10005A248()
{
  sub_1000070C8();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  sub_100006734();

  return v4();
}

void sub_10005A2C0(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_100009D54();
  v4 = sub_10000B484();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000347C(v8, qword_10019DA38);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100004C50(v6, v7, &v20);
      _os_log_impl(&_mh_execute_header, v9, v10, "Transcript read access request from %s", v11, 0xCu);
      sub_1000034F8(v12);
    }

    v13 = sub_10000A01C(v6, v7);

    (a2)[2](a2, v13, 0);
  }

  else
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000347C(v14, qword_10019DA38);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Connected client lacks application-identifier in entitlements.", v17, 2u);
    }

    sub_100060730();
    swift_allocError();
    *v18 = 3;
    v19 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v19);
  }

  _Block_release(a2);
}

uint64_t sub_10005A670()
{
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (sub_1000139BC())
  {

    v0 = v2;
  }

  else
  {

    if (!sub_1000139BC())
    {

      return 0;
    }

    if (v3)
    {
      v0 = 4;
    }

    else
    {
      v0 = 5;
    }
  }

  return v0;
}

uint64_t sub_10005A738(void (*a1)(void))
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_10005781C();
  v5 = [v4 pruner];

  v6 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10005A9CC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_1000077E4();
  aBlock[2] = v7;
  aBlock[3] = &unk_10018D108;
  v8 = _Block_copy(aBlock);

  [v5 deleteWithPolicy:v6 eventsPassingTest:v8];

  _Block_release(v8);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    sub_100002A70();
    v10 = type metadata accessor for Logger();
    sub_100011AB8(v10, qword_10019DA38);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      sub_100007764();
      v13 = sub_100024674();
      *v8 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 1) = v14;
      *v13 = v14;
      sub_100011AD0(&_mh_execute_header, v15, v12, "Unexpected error. Failed to delete all records. Error: %@");
      sub_100003EFC(v13, &unk_10019A260, &unk_10014D030);
      sub_100003A0C();
      sub_100004D70();
    }

    sub_100060730();
    sub_100007978();
    *v16 = 1;
    a1();
  }

  else
  {
    v9 = *(v2 + OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager);
    sub_10005E19C(2, sub_10004DF34, 0);
    return (a1)(0);
  }
}

void sub_10005AA5C(void *a1, void (*a2)(void *, void))
{
  v3 = v2;
  swift_getObjectType();
  v108 = sub_100009D54();
  if ((sub_100004250() & 1) == 0)
  {
    v6 = sub_10000B484();
    if (!v7)
    {
      if (qword_100198128 != -1)
      {
        sub_100002A70();
      }

      v58 = type metadata accessor for Logger();
      sub_100011AB8(v58, qword_10019DA38);
      v59 = a1;
      v60 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (sub_10001A9A4())
      {
        sub_100007764();
        v61 = sub_100006418();
        sub_100011290(v61, 5.7779e-34);
        sub_100007AFC();
        _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
        sub_100003EFC(v61, &unk_10019A260, &unk_10014D030);
        sub_100004D8C();
        sub_100013468();
      }

      sub_100060730();
      v35 = sub_100007978();
      v36 = 3;
      goto LABEL_32;
    }

    sub_10000B274(v6, v7, a1);
  }

  v8 = sub_10000B2D8(a1);
  if (v9)
  {
    v105 = *&v2[OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager];
    v10 = sub_10000B5E4(v8, v9);
    v12 = v11;
    v14 = v13;

    if (v12)
    {
      v101 = v14;
      v106 = v10;
      v107 = v12;
      v102 = v3;
      v15 = sub_10000B338(v10, v12, v14);
      v16 = *(v15 + 16);
      v103 = a2;
      v104 = v15;
      if (v16)
      {
        v17 = v15;
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100011438(0, v16, 0);
        v18 = _swiftEmptyArrayStorage;
        v19 = (v17 + 40);
        do
        {
          v20 = *(v19 - 1);
          v21 = *v19;
          aBlock[0] = v18;
          v23 = v18[2];
          v22 = v18[3];

          if (v23 >= v22 >> 1)
          {
            sub_100011438(v22 > 1, v23 + 1, 1);
            v18 = aBlock[0];
          }

          v18[2] = v23 + 1;
          v24 = &v18[2 * v23];
          v24[4] = v20;
          v24[5] = v21;
          v19 += 3;
          --v16;
        }

        while (v16);
      }

      if (qword_100198128 != -1)
      {
        sub_100002A70();
      }

      v37 = type metadata accessor for Logger();
      sub_10000347C(v37, qword_10019DA38);
      v38 = a1;

      v39 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (sub_100010424())
      {
        v40 = sub_1000063EC();
        v41 = sub_100006418();
        aBlock[0] = sub_1000056E4();
        v42 = aBlock[0];
        *v40 = 136315394;
        v43 = Array.description.getter();
        v45 = sub_100004C50(v43, v44, aBlock);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2112;
        *(v40 + 14) = v38;
        *v41 = v38;
        v46 = v38;
        sub_10001D664(&_mh_execute_header, v47, v48, "Deleting from streams %s with %@");
        sub_100003EFC(v41, &unk_10019A260, &unk_10014D030);
        sub_100003A0C();
        sub_1000034F8(v42);
        sub_1000036AC();
        sub_100013468();
      }

      v69 = sub_10000EF60();
      v71 = v70;
      v72 = sub_10005781C();
      v73 = [v72 pruner];

      v74 = String._bridgeToObjectiveC()();
      v75 = swift_allocObject();
      *(v75 + 16) = v69;
      *(v75 + 24) = v71;
      v76 = swift_allocObject();
      *(v76 + 16) = sub_10000F394;
      *(v76 + 24) = v75;
      aBlock[4] = sub_10000F300;
      aBlock[5] = v76;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      sub_1000077E4();
      aBlock[2] = v77;
      aBlock[3] = &unk_10018D0B8;
      v78 = _Block_copy(aBlock);

      [v73 deleteWithPolicy:v74 eventsPassingTest:v78];

      _Block_release(v78);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        sub_10000FD10();
        v80 = *(v104 + 16);

        v100 = v101;
        v99 = v102;

        v81 = (v104 + 48);
        for (i = _swiftEmptyArrayStorage; v80; --v80)
        {
          v83 = *v81;
          v84 = *(v81 - 2) == v106 && v107 == *(v81 - 1);
          if (v84 || (v85 = *(v81 - 2), v86 = *(v81 - 1), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {

            v87 = v83;
            v88 = sub_1000105A8();
            i = sub_1000100E0(v88, v89, v90, v91, v92, 1);
          }

          else
          {

            v93 = v83;
            v94 = sub_1000105A8();
            sub_1000100E0(v94, v95, v96, v97, v98, 0);
          }

          v81 += 3;
        }

        v103(i, 0);

        sub_10001310C();
      }

      return;
    }

    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v49 = type metadata accessor for Logger();
    sub_100011AB8(v49, qword_10019DA38);
    v50 = a1;
    v51 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_10001A9A4())
    {
      sub_100007764();
      v52 = sub_100006418();
      sub_100011290(v52, 5.7779e-34);
      sub_100007AFC();
      _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
      sub_100003EFC(v52, &unk_10019A260, &unk_10014D030);
      sub_100004D8C();
      sub_100013468();
    }

    sub_100060730();
    v35 = sub_100007978();
    v36 = 1;
  }

  else
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v25 = type metadata accessor for Logger();
    sub_100011AB8(v25, qword_10019DA38);
    v26 = a1;
    v27 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_10001A9A4())
    {
      sub_100007764();
      v28 = sub_100006418();
      sub_100011290(v28, 5.7779e-34);
      sub_100007AFC();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_100003EFC(v28, &unk_10019A260, &unk_10014D030);
      sub_100004D8C();
      sub_100013468();
    }

    sub_100060730();
    v35 = sub_100007978();
    v36 = 2;
  }

LABEL_32:
  *v34 = v36;
  a2(_swiftEmptyArrayStorage, v35);

  sub_10001310C();
}

uint64_t sub_10005B50C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v10 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a1;
  v13 = sub_10001832C();
  a7(v13);
}

void sub_10005B5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UUID();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

id sub_10005B648(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  sub_100004B70(v17);
  v19 = *(v18 + 64);
  sub_100003A54();
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  result = [objc_opt_self() currentConnection];
  if (result)
  {
    v24 = result;
    type metadata accessor for TaskPriority();
    sub_100007E2C();
    sub_1000075C4(v25, v26, v27, v28);
    v29 = swift_allocObject();
    v30 = a6;
    v31 = v29;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = v8;
    *(v29 + 40) = a1;
    *(v29 + 48) = a2;
    *(v29 + 56) = a3;
    *(v29 + 64) = a4;
    *(v29 + 72) = a8;
    *(v29 + 80) = a5 & 1;
    *(v29 + 88) = v24;
    *(v29 + 96) = v30;
    *(v29 + 104) = a7;
    v32 = v8;
    sub_1000098F0(a1, a2);

    v33 = sub_10000EE44();
    sub_10003A6C0(v33, v34, v22, v35, v31);
  }

  return result;
}

uint64_t sub_10005B7B8()
{
  v0[2] = v4;
  v0[3] = v5;
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10005B8A4;

  return sub_10005BA80();
}

uint64_t sub_10005B8A4()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 40) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10005B99C()
{
  sub_1000036A0();
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  sub_100003A00();

  return v2();
}

uint64_t sub_10005B9FC()
{
  sub_1000070C8();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(v1);

  sub_100003A00();

  return v4();
}

uint64_t sub_10005BA80()
{
  sub_1000036A0();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[2] = v6;
  v1[3] = v7;
  v8 = type metadata accessor for OSSignpostID();
  v1[9] = v8;
  sub_10000D33C(v8);
  v1[10] = v9;
  v11 = *(v10 + 64) + 15;
  v1[11] = swift_task_alloc();
  v12 = sub_10001E094();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10005BB38()
{
  sub_1000036A0();
  v1 = *(v0 + 11);
  static OSSignpostID.exclusive.getter();
  sub_100012720();
  sub_1000C4378();
  *(v0 + 12) = v2;
  v3 = swift_task_alloc();
  *(v0 + 13) = v3;
  *v3 = v0;
  v3[1] = sub_10005BBE8;
  v5 = *(v0 + 7);
  v4 = *(v0 + 8);
  v6 = v0[6];
  v7 = *(v0 + 4);
  v8 = *(v0 + 5);
  v9 = *(v0 + 2);
  v10 = *(v0 + 3);

  return sub_10005BF1C(v6, v3, v9, v10, v4, v7, v8, v5);
}

uint64_t sub_10005BBE8()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 112) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10005BCE0()
{
  sub_1000070C8();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  sub_100012720();
  sub_1000F1718();

  v5 = sub_100007500();
  v6(v5);

  sub_100006734();

  return v7();
}

uint64_t sub_10005BD68()
{
  sub_1000070C8();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  sub_100012720();
  sub_1000F1718();

  v5 = sub_100007500();
  v6(v5);

  sub_100003A00();
  v8 = v0[14];

  return v7();
}

uint64_t sub_10005BF1C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a1;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  return _swift_task_switch(sub_10005BF48, 0, 0);
}

uint64_t sub_10005BF48()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  sub_100003D44(0, &qword_100199D18, LNTranscriptActionRecord_ptr);
  v4 = sub_100012F50();
  v0[9] = v4;
  if (v3)
  {

LABEL_3:
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v5 = type metadata accessor for Logger();
    sub_100011AB8(v5, qword_10019DA38);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (sub_10000E7D4(v7))
    {
      *sub_100011344() = 0;
      sub_1000117B8();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100011FBC();
    }

    sub_100060730();
    v13 = sub_100007978();
    sub_1000610E8(v13, v14);
LABEL_8:
    sub_100003A00();

    return v15();
  }

  v17 = v4;
  if (!v4)
  {
    goto LABEL_3;
  }

  v18 = *(v0[4] + OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager);
  v19 = sub_10000B5E4(v0[5], v0[6]);
  v0[10] = v20;
  if (!v20)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v28 = type metadata accessor for Logger();
    sub_100011AB8(v28, qword_10019DA38);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (sub_10000E7D4(v30))
    {
      v31 = sub_100011344();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Stream reference nil. Failed to record serialized action record.", v31, 2u);
      sub_100004D8C();
    }

    sub_100060730();
    v32 = sub_100007978();
    sub_1000610E8(v32, v33);

    goto LABEL_8;
  }

  v22 = v0[4];
  v0[11] = v21;
  v0[12] = sub_10000B338(v19, v20, v21);
  v23 = swift_task_alloc();
  v0[13] = v23;
  *v23 = v0;
  v23[1] = sub_10005C1DC;
  v24 = v0[8];
  v25 = sub_100017F74();

  return sub_1000589BC(v25, v26, v27);
}

uint64_t sub_10005C1DC()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10005C2DC()
{
  sub_1000036A0();
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);

  sub_100006734();

  return v3();
}

void sub_10005C344(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = __chkstk_darwin(v6);
  v8 = __chkstk_darwin(v7);
  v62 = &v49 - v9;
  __chkstk_darwin(v8);
  v61 = &v49 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v63 = a2;
  _Block_copy(a2);
  v50 = sub_100009D54();
  UUID.init()();
  v19 = *(v12 + 16);
  v51 = v12 + 16;
  v55 = v19;
  v19(v15, v17, v11);
  v20 = *(v12 + 80);
  v57 = ((v20 + 24) & ~v20) + v13;
  v21 = (v20 + 24) & ~v20;
  v59 = v21;
  v60 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  v54 = v12;
  v23 = *(v12 + 32);
  v56 = v12 + 32;
  v58 = v23;
  v23(v22 + v21, v15, v11);
  v69 = sub_100060784;
  v70 = v22;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v52 = &v67;
  v67 = sub_10000C13C;
  v68 = &unk_10018CF00;
  v24 = _Block_copy(&aBlock);
  v25 = a1;

  v26 = v50;
  [v50 setInvalidationHandler:v24];
  _Block_release(v24);
  v27 = v55;
  v53 = v18;
  v55(v15, v17, v11);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v58(v28 + v59, v15, v11);
  v69 = sub_100060784;
  v70 = v28;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_10000C13C;
  v68 = &unk_10018CF50;
  v29 = _Block_copy(&aBlock);
  v30 = v25;

  [v26 setInterruptionHandler:v29];
  _Block_release(v29);
  __chkstk_darwin(v31);
  *(&v49 - 2) = v17;
  *(&v49 - 1) = v26;
  sub_10000C99C();
  v27(v15, v17, v11);
  v32 = (v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  v34 = v15;
  v35 = v26;
  v58(v33 + v59, v34, v11);
  v36 = (v33 + v32);
  v37 = v53;
  *v36 = sub_100060728;
  v36[1] = v37;
  v69 = sub_1000608CC;
  v70 = v33;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_1000A10D0;
  v68 = &unk_10018CFA0;
  v38 = _Block_copy(&aBlock);
  v39 = v30;

  v40 = [v26 remoteObjectProxyWithErrorHandler:v38];

  _Block_release(v38);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002EB80(&unk_100199D00, &unk_10014E7F0);
  swift_dynamicCast();
  v41 = v64;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v41 observationDidStartWithConnectionUUID:isa];

  v43 = v61;
  v55(v61, v17, v11);
  sub_1000075C4(v43, 0, 1, v11);
  v44 = v62;
  sub_100009E90(v43, v62, &qword_100199C90, &qword_10014D060);
  if (sub_1000032C4(v44, 1, v11) == 1)
  {
    v45 = 0;
    v46 = v63;
    v47 = v54;
  }

  else
  {
    v45 = UUID._bridgeToObjectiveC()().super.isa;
    v48 = v54;
    (*(v54 + 8))(v44, v11);
    v46 = v63;
    v47 = v48;
  }

  (v46)[2](v46, v45, 0);
  swift_unknownObjectRelease();

  sub_100003EFC(v43, &qword_100199C90, &qword_10014D060);
  (*(v47 + 8))(v17, v11);

  _Block_release(v46);
}

void sub_10005CB8C(uint64_t *a1)
{
  v2 = *a1;
  sub_100045A18();
  if (v4)
  {
    v5 = v3;
    v6 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000468C();
    v7 = sub_10002EB80(&qword_100199BC0, &unk_10014EEA0);
    sub_100018B88(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22);
    v15 = *(v23 + 48);
    v16 = type metadata accessor for UUID();
    sub_10000482C(v16);
    (*(v17 + 8))(v15 + *(v17 + 72) * v5, v16);
    v18 = *(*(v23 + 56) + 8 * v5);
    sub_100003D44(0, &qword_100199BC8, NSXPCConnection_ptr);
    sub_100006A48();
    sub_100060C6C(v19, v20);
    _NativeDictionary._delete(at:)();

    *a1 = v23;
  }
}

uint64_t sub_10005CD0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14[-v8];
  v15 = a3;
  sub_10000C99C();
  v10 = type metadata accessor for UUID();
  sub_1000075C4(v9, 1, 1, v10);
  swift_errorRetain();
  LOBYTE(a3) = sub_10005A670();
  sub_100060730();
  v11 = swift_allocError();
  *v12 = a3;
  a4(v9, v11);

  return sub_100003EFC(v9, &qword_100199C90, &qword_10014D060);
}

void sub_10005CE6C(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_10005CEE0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  sub_100009E90(a1, &v12 - v8, &qword_100199C90, &qword_10014D060);
  v10 = type metadata accessor for UUID();
  isa = 0;
  if (sub_1000032C4(v9, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (a2)
  {
    a2 = _convertErrorToNSError(_:)();
  }

  (*(a3 + 16))(a3, isa, a2);
}

void sub_10005D018(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_10000C99C();
  a3[2](a3, 0);
  _Block_release(a3);
}

uint64_t sub_10005D190()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionLock);

  os_unfair_lock_lock(v1 + 4);
  sub_10005D210(v0, &v4);
  v2 = v4;
  os_unfair_lock_unlock(v1 + 4);

  return v2;
}

uint64_t sub_10005D210@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionObserverConnections;
  result = swift_beginAccess();
  v6 = *(*(a1 + v4) + 16);
  if (v6)
  {
    v24 = a2;
    v27 = *(a1 + v4);

    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = sub_100060B10(v27);
    result = v27;
    v10 = v9;
    v11 = 0;
    v28 = v27 + 64;
    v25 = v9;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(result + 32))
    {
      v12 = v8 >> 6;
      if ((*(v28 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (*(result + 36) != v10)
      {
        goto LABEL_22;
      }

      v26 = v7;
      v13 = *(*(result + 56) + 8 * v8);
      v14 = [v13 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      sub_10002EB80(&unk_100199D00, &unk_10014E7F0);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      result = v27;
      v16 = 1 << *(v27 + 32);
      if (v8 >= v16)
      {
        goto LABEL_23;
      }

      v17 = *(v28 + 8 * v12);
      if ((v17 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v27 + 36) != v10)
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v8 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v12 << 6;
        v20 = v12 + 1;
        v21 = (v27 + 72 + 8 * v12);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_100060B50(v8, v10, v26 & 1);
            result = v27;
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_17;
          }
        }

        sub_100060B50(v8, v10, v26 & 1);
        result = v27;
      }

LABEL_17:
      v7 = 0;
      ++v11;
      v8 = v16;
      v10 = v25;
      if (v11 == v6)
      {

        a2 = v24;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_19:
    *a2 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10005D4D4(uint64_t a1, void *a2)
{
  v3 = *sub_1000034B4((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_10006A0B4(v3, v4);
}

uint64_t sub_10005D520(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  sub_100004B70(v2);
  v4 = *(v3 + 64);
  sub_100003A54();
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_100009E90(a1, &v10 - v6, &qword_1001990C0, &unk_10014E200);
  v8 = sub_10005D5EC(0xD000000000000010, 0x8000000100154FB0, v7);
  sub_100003EFC(a1, &qword_1001990C0, &unk_10014E200);
  return v8;
}

uint64_t sub_10005D5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  v7 = qword_10019E598;
  v8 = type metadata accessor for URL();
  sub_1000075C4(v3 + v7, 1, 1, v8);
  *(v3 + qword_10019C860) = &_swiftEmptyDictionarySingleton;
  v9 = qword_10019C868;
  sub_10002EB80(&qword_100199D38, &qword_100151700);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v3 + v9) = v10;
  v11 = (v3 + qword_10019C850);
  *v11 = a1;
  v11[1] = a2;
  sub_100009E90(a3, v3 + qword_10019C858, &qword_1001990C0, &unk_10014E200);
  sub_10005D860();
  sub_100003EFC(a3, &qword_1001990C0, &unk_10014E200);
  return v3;
}

uint64_t sub_10005D6E8()
{
  sub_100003EFC(v0 + qword_10019E598, &qword_1001990C0, &unk_10014E200);
  v1 = *(v0 + qword_10019C850 + 8);

  sub_100003EFC(v0 + qword_10019C858, &qword_1001990C0, &unk_10014E200);
  v2 = *(v0 + qword_10019C860);

  v3 = *(v0 + qword_10019C868);

  return v0;
}

uint64_t sub_10005D788()
{
  v0 = sub_10005D6E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TranscriptActionRecordStreamManager()
{
  result = qword_100199970;
  if (!qword_100199970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005D860()
{
  v1 = v0;
  v2 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v44 - v7;
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v46 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  *(v1 + 16) = 0;
  sub_100009E90(v1 + qword_10019C858, v13, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v13, 1, v14) == 1)
  {
    sub_100003EFC(v13, &qword_1001990C0, &unk_10014E200);
    v24 = [objc_opt_self() defaultManager];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10006B868();

    v27 = *(v1 + qword_10019C850);
    v28 = *(v1 + qword_10019C850 + 8);
    v10 = v45;
    URL.appendingPathComponent(_:)();
    v29 = *(v15 + 8);
    v29(v20, v14);
  }

  else
  {
    (*(v15 + 32))(v23, v13, v14);
    v25 = *(v1 + qword_10019C850);
    v26 = *(v1 + qword_10019C850 + 8);
    URL.appendingPathComponent(_:)();
    v29 = *(v15 + 8);
    v29(v23, v14);
  }

  sub_1000075C4(v10, 0, 1, v14);
  v30 = qword_10019E598;
  swift_beginAccess();
  sub_100060D78(v10, v1 + v30);
  swift_endAccess();
  v31 = qword_10019E598;
  swift_beginAccess();
  sub_100009E90(v1 + v31, v5, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v5, 1, v14))
  {
    sub_100003EFC(v5, &qword_1001990C0, &unk_10014E200);
    sub_100039858();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000347C(v33, qword_10019DA38);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v38 = Error.localizedDescription.getter();
      v40 = sub_100004C50(v38, v39, &v47);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "StreamManager initialization failed due to %s", v36, 0xCu);
      sub_1000034F8(v37);
    }

    else
    {
    }
  }

  else
  {
    v41 = v46;
    (*(v15 + 16))(v46, v5, v14);
    sub_100003EFC(v5, &qword_1001990C0, &unk_10014E200);
    URL.path.getter();
    v29(v41, v14);

    v42 = qword_10019C860;
    swift_beginAccess();
    v43 = *(v1 + v42);
    *(v1 + v42) = &_swiftEmptyDictionarySingleton;

    *(v1 + 16) = 1;
  }
}

void sub_10005DE18(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + qword_10019C868);
    __chkstk_darwin(a1);
    __chkstk_darwin(v3);

    os_unfair_lock_lock(v2 + 4);
    sub_10000CAE0();
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000347C(v4, qword_10019DA38);
    v8 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100004C50(0xD00000000000001BLL, 0x8000000100154F30, &v9);
      _os_log_impl(&_mh_execute_header, v8, v5, "%s not executed due to failed initialization - nil config", v6, 0xCu);
      sub_1000034F8(v7);
    }

    else
    {
    }
  }
}

void sub_10005E040()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = sub_10000B5E4(v0, v1);
  v4 = v3;
  v6 = v5;

  if (v4)
  {
    v7 = CFAbsoluteTimeGetCurrent() + -86400.0;
    v8 = objc_autoreleasePoolPush();
    __chkstk_darwin(v8);
    v11 = v7;
    sub_10000F828(v2, v4, v6, 1, sub_1000610C0, v10);
    objc_autoreleasePoolPop(v8);
  }

  CFAbsoluteTimeGetCurrent();
  v11 = __chkstk_darwin(v9);
  sub_10005E19C(1, sub_1000606B8, v10);
}

void sub_10005E19C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = v3;
  v102 = a3;
  v101 = a2;
  v100 = a1;
  v95 = type metadata accessor for NSFastEnumerationIterator();
  v94 = *(v95 - 8);
  v5 = *(v94 + 64);
  __chkstk_darwin(v95);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v91 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  v108 = &v91 - v20;
  v21 = __chkstk_darwin(v19);
  v112 = &v91 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v91 - v24;
  __chkstk_darwin(v23);
  v98 = &v91 - v27;
  if (*(v4 + 16) != 1)
  {
    goto LABEL_4;
  }

  v99 = v26;
  v28 = qword_10019E598;
  swift_beginAccess();
  sub_100009E90(v4 + v28, v14, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v14, 1, v15) == 1)
  {
    sub_100003EFC(v14, &qword_1001990C0, &unk_10014E200);
LABEL_4:
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000347C(v29, qword_10019DA38);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v116[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100004C50(0xD000000000000024, 0x8000000100154EB0, v116);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s not executed due to failed initialization - nil directory", v32, 0xCu);
      sub_1000034F8(v33);
    }

    return;
  }

  v106 = *(v16 + 32);
  v107 = v16 + 32;
  v106(v98, v14, v15);
  v97 = objc_opt_self();
  v34 = [v97 defaultManager];
  v35 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (v35)
  {
    v92 = v35;
    NSEnumerator.makeIterator()();
    v109 = (v16 + 16);
    v114 = (v16 + 8);
    *&v36 = 136315138;
    v103 = v36;
    *&v36 = 138412290;
    v93 = v36;
    v111 = v4;
    v105 = v7;
    v37 = v108;
    v38 = v112;
    v96 = v12;
    while (1)
    {
      NSFastEnumerationIterator.next()();
      if (!v116[3])
      {
        break;
      }

      if (swift_dynamicCast())
      {
        sub_1000075C4(v12, 0, 1, v15);
        v106(v38, v12, v15);
        if (qword_100198128 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        v40 = sub_10000347C(v39, qword_10019DA38);
        v41 = *v109;
        (*v109)(v37, v38, v15);
        v110 = v40;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v115 = v45;
          *v44 = v103;
          sub_100060C6C(&qword_100198D68, &type metadata accessor for URL);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v37;
          v49 = v48;
          v113 = *v114;
          (v113)(v47, v15);
          v50 = sub_100004C50(v46, v49, &v115);

          *(v44 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v42, v43, "Evaluating stream reference at %s", v44, 0xCu);
          sub_1000034F8(v45);
        }

        else
        {

          v113 = *v114;
          (v113)(v37, v15);
        }

        v38 = v112;
        if (sub_10005EF28(v112))
        {
          v51 = objc_autoreleasePoolPush();
          v52 = URL.lastPathComponent.getter();
          v54 = sub_10000B5E4(v52, v53);
          v56 = v55;
          v58 = v57;

          if (v56)
          {
            sub_10000F828(v54, v56, v58, v100, v101, v102);
          }

          objc_autoreleasePoolPop(v51);
          (v113)(v38, v15);
          v7 = v105;
          v37 = v108;
        }

        else
        {
          v59 = v99;
          v41(v99, v38, v15);
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v115 = v63;
            *v62 = v103;
            sub_100060C6C(&qword_100198D68, &type metadata accessor for URL);
            v64 = dispatch thunk of CustomStringConvertible.description.getter();
            v66 = v65;
            (v113)(v59, v15);
            v67 = sub_100004C50(v64, v66, &v115);

            *(v62 + 4) = v67;
            _os_log_impl(&_mh_execute_header, v60, v61, "Invalid streamURL detected, removing %s", v62, 0xCu);
            sub_1000034F8(v63);
          }

          else
          {

            (v113)(v59, v15);
          }

          v68 = [v97 defaultManager];
          v38 = v112;
          URL._bridgeToObjectiveC()(v69);
          v71 = v70;
          v115 = 0;
          v72 = [v68 removeItemAtURL:v70 error:&v115];

          v12 = v96;
          if (v72)
          {
            v73 = v115;
          }

          else
          {
            v74 = v115;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v104 = 0;
            swift_errorRetain();
            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              *v77 = v93;
              swift_errorRetain();
              v79 = _swift_stdlib_bridgeErrorToNSError();
              *(v77 + 4) = v79;
              *v78 = v79;
              _os_log_impl(&_mh_execute_header, v75, v76, "Failed to remove file %@", v77, 0xCu);
              sub_100003EFC(v78, &unk_10019A260, &unk_10014D030);
            }

            else
            {
            }

            v38 = v112;
          }

          (v113)(v38, v15);
          v7 = v105;
          v37 = v108;
        }
      }

      else
      {
        sub_1000075C4(v12, 1, 1, v15);
        sub_100003EFC(v12, &qword_1001990C0, &unk_10014E200);
      }
    }

    (*(v94 + 8))(v7, v95);
    (*v114)(v98, v15);
  }

  else
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_10000347C(v80, qword_10019DA38);
    (*(v16 + 16))(v25, v98, v15);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v113 = v83;
      v114 = swift_slowAlloc();
      v116[0] = v114;
      *v83 = 136315138;
      sub_100060C6C(&qword_100198D68, &type metadata accessor for URL);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      v87 = *(v16 + 8);
      v87(v25, v15);
      v88 = sub_100004C50(v84, v86, v116);

      v89 = v113;
      *(v113 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v81, v82, "Failed to generate enumerator for directory %s", v89, 0xCu);
      sub_1000034F8(v114);
    }

    else
    {

      v87 = *(v16 + 8);
      v87(v25, v15);
    }

    sub_100039858();
    swift_allocError();
    *v90 = 0;
    swift_willThrow();
    v87(v98, v15);
  }
}

BOOL sub_10005EF28(uint64_t a1)
{
  sub_10002EB80(&unk_100199C50, &unk_10014E7B8);
  v2 = *(sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10014E680;
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  v7[2] = a1;
  LOBYTE(a1) = sub_10005761C(sub_1000606EC, v7, v5);
  swift_setDeallocating();
  sub_1000B306C();
  return (a1 & 1) == 0;
}

void *sub_10005F130(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = qword_10019C860;
  swift_beginAccess();
  v9 = *(v4 + v8);

  v10 = sub_1000B6338(a1, a2, v9);

  if (v10)
  {

    v11 = sub_100010054(a1, a2, a3);
    v13 = v12;
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000347C(v14, qword_10019DA38);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42[0] = v18;
      *v17 = 136315138;
      v19 = sub_100004C50(v11, v13, v42);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Returned writer for %s", v17, 0xCu);
      sub_1000034F8(v18);
    }

    else
    {
    }
  }

  else
  {
    objc_allocWithZone(BMStreamDatastore);
    v20 = a3;
    v21 = sub_1000600CC(a1, a2, 1, a3);
    if (v21)
    {
      v10 = v21;
      v22 = sub_100010054(a1, a2, v20);
      v24 = v23;
      if (qword_100198128 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000347C(v25, qword_10019DA38);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        log = v26;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v42[0] = v29;
        *v28 = 136315138;
        v30 = sub_100004C50(v22, v24, v42);

        *(v28 + 4) = v30;
        _os_log_impl(&_mh_execute_header, log, v27, "Created writer for %s", v28, 0xCu);
        sub_1000034F8(v29);
      }

      else
      {
      }

      sub_100003D44(0, &qword_100199D18, LNTranscriptActionRecord_ptr);
      [v10 updateMetadata:swift_getObjCClassFromMetadata()];
      swift_beginAccess();
      v37 = v10;
      v38 = *(v4 + v8);
      swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v4 + v8);
      sub_100068DFC(v37, a1, a2);
      *(v4 + v8) = v41;
      swift_endAccess();
    }

    else
    {
      if (qword_100198128 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000347C(v31, qword_10019DA38);

      v32 = v20;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v42[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_100004C50(a1, a2, v42);
        _os_log_impl(&_mh_execute_header, v33, v34, "Biome stream writer for %s returned nil", v35, 0xCu);
        sub_1000034F8(v36);
      }

      return 0;
    }
  }

  return v10;
}

uint64_t sub_10005F66C()
{
  sub_1000070C8();
  v1 = *(*(v0 + 16) + 112);
  sub_10005E040();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_10005F6F0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10005F768()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005F7F8;

  return sub_10005F64C();
}

uint64_t sub_10005F7F8()
{
  sub_1000036A0();
  v3 = v2;
  sub_1000036D0();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;

  if (v0)
  {
    sub_100003A00();

    return v8();
  }

  else
  {
    v10 = *(v6 + 8);

    return v10(v3 & 1);
  }
}

uint64_t sub_10005F914()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DA60 = result;
  *algn_10019DA68 = v1;
  return result;
}

uint64_t sub_10005F958(uint64_t a1)
{
  if ((a1 - 1000) >= 7)
  {
    return 6;
  }

  else
  {
    return (0x4060503020100uLL >> (8 * (a1 + 24)));
  }
}

Swift::Int sub_10005F998(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10014E9B8[a1]);
  return Hasher._finalize()();
}

Swift::Int sub_10005FA30(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10014E9B8[a2]);
  return Hasher._finalize()();
}

uint64_t sub_10005FA80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005F958(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005FAAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005F944(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10005FAD8(uint64_t a1)
{
  v2 = sub_100060FA8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10005FB14(uint64_t a1)
{
  v2 = sub_100060FA8();
  v3 = sub_100060FFC();
  v4 = sub_100061050();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_10005FB70()
{
  if (qword_100198138 != -1)
  {
    swift_once();
  }

  v0 = qword_10019DA60;

  return v0;
}

uint64_t sub_10005FBE4()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  if (qword_100198438 != -1)
  {
    swift_once();
  }

  v8 = qword_10019E550;
  swift_unknownObjectRetain();
  OSSignpostID.init(log:object:)();
  if (qword_100198430 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000347C(v9, qword_10019E538);
  sub_10010FB90();
  v11 = v10;
  v13 = v12;
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((v13 & 1) == 0)
  {
    if (v11)
    {
LABEL_13:
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v18, v11, "", v17, 2u);

LABEL_14:

      (*(v1 + 16))(v4, v7, v0);
      v19 = type metadata accessor for OSSignpostIntervalState();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      v22 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v1 + 8))(v7, v0);
      return v22;
    }

    __break(1u);
  }

  if (v11 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v11 & 0xFFFFF800) != 0xD800)
  {
    if (v11 >> 16 <= 0x10)
    {
      v11 = &v24;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_10005FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithStoreBasePath:v7 segmentSize:a3 protectionClass:a4];

  return v8;
}

void sub_10005FF24(double a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  v11 = sub_10005F130(a3, a4, a5);
  if (v11)
  {
    v12 = v11;
    if (([v11 writeEventWithEventBody:a6 timestamp:a1] & 1) == 0)
    {
      if (qword_100198128 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000347C(v13, qword_10019DA38);

      v14 = a5;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100004C50(a3, a4, &v19);
        _os_log_impl(&_mh_execute_header, v15, v16, "Biome stream writer for %s failed to write", v17, 0xCu);
        sub_1000034F8(v18);
      }
    }
  }
}

id sub_1000600CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithStream:v7 permission:a3 config:a4];

  return v8;
}

void *sub_100060168(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000601A0()
{
  v1 = v0;
  v2 = *v0;
  sub_100045A18();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v8 = *(*v1 + 24);
  sub_10002EB80(&qword_100199BC0, &unk_10014EEA0);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
  v9 = *(v13 + 48);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v5, v10);
  v11 = *(*(v13 + 56) + 8 * v5);
  sub_100003D44(0, &qword_100199BC8, NSXPCConnection_ptr);
  sub_100060C6C(&qword_100199BD0, &type metadata accessor for UUID);
  _NativeDictionary._delete(at:)();
  *v1 = v13;
  return v11;
}

uint64_t sub_1000602F0()
{
  sub_100061108();
  v5 = sub_10000C2A0(v3, v4);
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100018700();
    v9 = sub_10002EB80(&qword_100199C68, &unk_10014E7D0);
    v17 = sub_10001D594(v9, v10, v11, v12, v13, v14, v15, v16, v35, v37);
    sub_10001CEA0(v17, v18, v19, v20, v21, v22, v23, v24, v36, v38);
    v26 = *(v25 + 8);

    v27 = *(v1 + 56);
    v28 = type metadata accessor for UUID();
    sub_10000482C(v28);
    (*(v29 + 32))(v0, v27 + *(v29 + 72) * v7, v28);
    sub_10001832C();
    _NativeDictionary._delete(at:)();
    v30 = sub_100019CE8();
    v33 = v28;
  }

  else
  {
    type metadata accessor for UUID();
    v30 = sub_10001A9BC();
  }

  return sub_1000075C4(v30, v31, v32, v33);
}

uint64_t sub_1000603E8()
{
  sub_100061108();
  v5 = sub_100045ADC(v3, v4);
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100018700();
    v9 = sub_10002EB80(&qword_100199C78, &unk_10014E7E0);
    v17 = sub_10001D594(v9, v10, v11, v12, v13, v14, v15, v16, v34, v36);
    sub_10001CEA0(v17, v18, v19, v20, v21, v22, v23, v24, v35, v37);
    sub_100009B18(*v25, *(v25 + 8));
    v26 = *(v1 + 56);
    v27 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    sub_10000482C(v27);
    sub_10005644C(v26 + *(v28 + 72) * v7, v0, &qword_100199C70, &unk_10014EE60);
    sub_10002EB2C();
    sub_10001832C();
    _NativeDictionary._delete(at:)();
    v29 = sub_100019CE8();
    v32 = v27;
  }

  else
  {
    sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    v29 = sub_10001A9BC();
  }

  return sub_1000075C4(v29, v30, v31, v32);
}

uint64_t sub_1000604FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10000C2A0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000468C();
  v9 = sub_10002EB80(&qword_100199C88, &qword_10014EE80);
  sub_100018B88(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24);
  v17 = *(*(v25 + 48) + 16 * v7 + 8);

  v18 = (*(v25 + 56) + 24 * v7);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  _NativeDictionary._delete(at:)();
  *v3 = v25;
  return v19;
}

uint64_t sub_1000605D4()
{
  sub_100061108();
  v5 = sub_10000C2A0(v3, v4);
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100018700();
    v9 = sub_10002EB80(&qword_100199C60, &qword_10014E7C8);
    v17 = sub_10001D594(v9, v10, v11, v12, v13, v14, v15, v16, v35, v37);
    sub_10001CEA0(v17, v18, v19, v20, v21, v22, v23, v24, v36, v38);
    v26 = *(v25 + 8);

    v27 = *(v1 + 56);
    v28 = type metadata accessor for LNBundleRecord();
    sub_10000482C(v28);
    sub_10004AEF0(v27 + *(v29 + 72) * v7, v0);
    sub_10001832C();
    _NativeDictionary._delete(at:)();
    v30 = sub_100019CE8();
    v33 = v28;
  }

  else
  {
    type metadata accessor for LNBundleRecord();
    v30 = sub_10001A9BC();
  }

  return sub_1000075C4(v30, v31, v32, v33);
}

BOOL sub_1000606B8(void *a1)
{
  v2 = *(v1 + 16);
  [a1 timestamp];
  return v3 < v2;
}

unint64_t sub_100060730()
{
  result = qword_100199C98;
  if (!qword_100199C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199C98);
  }

  return result;
}

uint64_t sub_10006079C()
{
  v2 = type metadata accessor for UUID();
  sub_1000128D8(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_100060850(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = type metadata accessor for UUID();
  sub_100004B70(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

uint64_t sub_1000608CC(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_10000D33C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_10005CD0C(a1, v9, v1 + v8, v11);
}

uint64_t sub_100060970()
{
  v1 = *(v0 + 24);
  v15 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v14 = *(v0 + 88);
  v9 = *(v0 + 104);
  v10 = swift_task_alloc();
  v11 = sub_100004DC8(v10);
  *v11 = v12;
  v11[1] = sub_10000BEC4;
  sub_10001298C();
  sub_100003AB4();

  return sub_10005B7B8();
}

uint64_t sub_100060AA0(void *a1)
{
  v2 = [a1 activityIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100060B10(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100060B50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100060B8C()
{
  v1 = *(v0 + 24);
  v13 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = swift_task_alloc();
  v10 = sub_100004DC8(v9);
  *v10 = v11;
  v10[1] = sub_10000BEC4;
  sub_10001298C();
  sub_100003AB4();

  return sub_10005925C();
}

uint64_t sub_100060C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100060CB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = swift_task_alloc();
  v9 = sub_100004DC8(v8);
  *v9 = v10;
  v9[1] = sub_10000BEC4;
  sub_10001298C();
  sub_100003AB4();

  return sub_100057D50(v11, v12, v13, v14, v15, v16, v6, v7);
}

uint64_t sub_100060D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TranscriptError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TranscriptError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100060F54()
{
  result = qword_100199D40;
  if (!qword_100199D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D40);
  }

  return result;
}

unint64_t sub_100060FA8()
{
  result = qword_100199D48;
  if (!qword_100199D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D48);
  }

  return result;
}

unint64_t sub_100060FFC()
{
  result = qword_100199D50;
  if (!qword_100199D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D50);
  }

  return result;
}

unint64_t sub_100061050()
{
  result = qword_100199D58;
  if (!qword_100199D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D58);
  }

  return result;
}

uint64_t sub_1000610E8(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_10006112C()
{

  return Logger.logObject.getter();
}

unint64_t sub_100061144(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v11[0] = 95;
  v11[1] = 0xE100000000000000;
  v10[2] = v11;
  v4 = sub_1000615E0(sub_10004BC6C, v10, a1, a2);
  if ((v5 & 1) != 0 || !(v4 >> 14))
  {
    goto LABEL_6;
  }

  v6 = String.index(after:)();
  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 >> 14 == 4 * v7)
  {
LABEL_6:
    sub_1000616E4();
    swift_allocError();
    *v8 = a1;
    *(v8 + 8) = v2;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    String.subscript.getter();
    v2 = static String._fromSubstring(_:)();
  }

  return v2;
}

uint64_t sub_10006140C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = sub_100061264(a1, a2, a3);
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v16 = &type metadata for String;
  *&v15 = v7;
  *(&v15 + 1) = v9;
  sub_1000398F4(&v15, v14);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100068968(v14, v10, v12);

  return v6;
}

uint64_t sub_100061568(uint64_t a1)
{
  v2 = sub_100061800();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000615A4(uint64_t a1)
{
  v2 = sub_100061800();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000615E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unint64_t sub_1000616E4()
{
  result = qword_100199D60;
  if (!qword_100199D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D60);
  }

  return result;
}

uint64_t sub_100061738(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100061754(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100061794(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000617D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_100061800()
{
  result = qword_100199D68;
  if (!qword_100199D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D68);
  }

  return result;
}

uint64_t sub_100061858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * v1);
  }
}

Swift::Int Connection.Operation.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100061918(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = a1;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = a4;
  v13[4] = sub_100061FB8;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100061D24;
  v13[3] = &unk_10018D420;
  v10 = _Block_copy(v13);
  swift_retain_n();

  v11 = os_state_add_handler();

  _Block_release(v10);
  *(v4 + 16) = v11;
  *(v4 + 24) = 0;
  return v4;
}

void *sub_100061A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  if (*(Strong + 48) == 1 && (*(Strong + 24) & 1) == 0)
  {
    v7 = *(Strong + 16);
    *(v6 + 16) = 0;
    *(v6 + 24) = 1;
    os_state_remove_handler();
  }

  v8 = sub_100061858(a1);
  v9 = a3(v8);
  if (v10)
  {
    v11 = sub_100061B18(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void *sub_100061B18(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __src[0] = 0;
  v6 = [v4 dataWithPropertyList:isa format:200 options:0 error:__src];

  v7 = __src[0];
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = Data.count.getter();
    v12 = __OFADD__(v11, 200);
    v13 = v11 + 200;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = calloc(v13, 1uLL);
      if (!v14)
      {

        goto LABEL_9;
      }

      bzero(__src + 4, 0xC4uLL);
      LODWORD(__src[0]) = 1;
      sub_100061FF4(a1, a2, &__src[17], &v19);

      v15 = Data.count.getter();
      if ((v15 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v15))
        {
          HIDWORD(__src[0]) = v15;
          memcpy(v14, __src, 0xC8uLL);
          Data.count.getter();
          Data.copyBytes(to:count:)();
LABEL_9:
          sub_100009B18(v8, v10);
          return v14;
        }

LABEL_13:
        __break(1u);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v16 = v7;

  _convertNSErrorToError(_:)();

  swift_willThrow();

  return 0;
}

uint64_t sub_100061D24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_100061D74()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v1 = *(v0 + 16);
    os_state_remove_handler();
  }

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_100061DA4()
{
  sub_100061D74();

  return _swift_deallocClassInstance(v0, 49, 7);
}

uint64_t getEnumTagSinglePayload for OSStateHandler.Hint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OSStateHandler.Hint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100061F64()
{
  result = qword_100199E20;
  if (!qword_100199E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199E20);
  }

  return result;
}

char *sub_100061FC4(char *__src, char *__dst, uint64_t a3)
{
  if (__dst)
  {
    return strncpy(__dst, __src, a3 - __dst);
  }

  __break(1u);
  return __src;
}

char *sub_100061FF4(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = a1;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
    return sub_100061FC4(v4, __dst, a4);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_100061FC4(v4, __dst, a4);
}

void sub_10006209C()
{
  sub_100062140();
  if (v0 <= 0x3F)
  {
    sub_100003D44(319, &unk_10019AB20, LNActionMetadata_ptr);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100062140()
{
  if (!qword_10019A8C0)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10019A8C0);
    }
  }
}

void sub_100062198(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_100011438(0, v2 & ~(v2 >> 63), 0);
    v41 = _swiftEmptyArrayStorage;
    v44 = sub_10006651C(v1);
    v45 = v3;
    v46 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v37 = v1 + 56;
      v36 = v1 + 64;
      v38 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v44;
        v8 = v46;
        v40 = v45;
        v9 = v1;
        sub_100066190(v44, v45, v46, v1);
        v11 = v10;
        v42 = 0x273D65756C6176;
        v43 = 0xE700000000000000;
        v12 = [v10 identifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16._countAndFlagsBits = v13;
        v16._object = v15;
        String.append(_:)(v16);

        v17._countAndFlagsBits = 39;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);

        v18 = v42;
        v19 = v43;
        v20 = v41;
        v47 = v41;
        v22 = v41[2];
        v21 = v41[3];
        if (v22 >= v21 >> 1)
        {
          sub_100011438(v21 > 1, v22 + 1, 1);
          v20 = v47;
        }

        v20[2] = v22 + 1;
        v23 = &v20[2 * v22];
        v23[4] = v18;
        v23[5] = v19;
        v41 = v20;
        if (v39)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v28 = v38;
          sub_10002EB80(&qword_100199ED8, &qword_10014ED28);
          v29 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v29(&v42, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v24 = 1 << *(v9 + 32);
          if (v7 >= v24)
          {
            goto LABEL_32;
          }

          v25 = v7 >> 6;
          v26 = *(v37 + 8 * (v7 >> 6));
          if (((v26 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v40)
          {
            goto LABEL_34;
          }

          v27 = v26 & (-2 << (v7 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v28 = v38;
          }

          else
          {
            v30 = v25 << 6;
            v31 = v25 + 1;
            v32 = (v36 + 8 * v25);
            v28 = v38;
            while (v31 < (v24 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_100060B50(v7, v40, 0);
                v24 = __clz(__rbit64(v33)) + v30;
                goto LABEL_27;
              }
            }

            sub_100060B50(v7, v40, 0);
          }

LABEL_27:
          v35 = *(v9 + 36);
          v44 = v24;
          v45 = v35;
          v46 = 0;
        }

        if (v5 == v28)
        {
          sub_100060B50(v44, v45, v46);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void sub_1000624FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35._countAndFlagsBits = a4;
  v35._object = a5;
  v34._countAndFlagsBits = a1;
  v34._object = a2;
  v7 = *(a7 + 16);
  v8 = _swiftEmptyArrayStorage;
  v9 = (a7 + 56);
  v10 = v7;
  if (v7)
  {
    while (1)
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      v14 = *(v9 - 3);
      v13 = *(v9 - 2);
      sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
      inited = swift_initStackObject();
      *(inited + 32) = v14;
      *(inited + 16) = xmmword_10014BC40;
      *(inited + 40) = v13;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      v16 = v8[2];
      if (__OFADD__(v16, 2))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = v8[3] >> 1, v17 < v16 + 2))
      {
        sub_100013A60();
        v8 = v18;
        v17 = v18[3] >> 1;
      }

      if (v17 - v8[2] < 2)
      {
        goto LABEL_16;
      }

      swift_arrayInitWithCopy();

      v19 = v8[2];
      v20 = __OFADD__(v19, 2);
      v21 = v19 + 2;
      if (v20)
      {
        goto LABEL_17;
      }

      v8[2] = v21;
      v9 += 4;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_9:
    if (v7)
    {
      sub_100011438(0, v7, 0);
      v22 = _swiftEmptyArrayStorage[2];
      v23 = 2 * v22;
      do
      {
        v24 = _swiftEmptyArrayStorage[3];
        v25 = v22 + 1;
        if (v22 >= v24 >> 1)
        {
          sub_100011438(v24 > 1, v22 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v25;
        v26 = &_swiftEmptyArrayStorage[v23];
        v26[4] = 0x293F202C3F28;
        v26[5] = 0xE600000000000000;
        v23 += 2;
        v22 = v25;
        --v7;
      }

      while (v7);
    }

    _StringGuts.grow(_:)(27);

    String.append(_:)(v34);
    v27._countAndFlagsBits = 8236;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    String.append(_:)(v35);
    v28._countAndFlagsBits = 0x2028204E49202920;
    v28._object = 0xEF205345554C4156;
    String.append(_:)(v28);
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    sub_100013EBC(&qword_10019BB00, &unk_10019ACC0, &qword_1001507B0);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 10528;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    sub_10006DF2C(v8);
  }
}

uint64_t sub_100062880()
{
  v0 = sub_1000077D8();
  v2 = sub_10002EB80(v0, v1);
  sub_100007108();
  v4 = sub_100013EBC(v3, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v2, v4);
}

uint64_t sub_10006294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  sub_100007108();
  v8 = sub_100013EBC(v7, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(a3, a4, v6, v8);
}

uint64_t sub_1000629D8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100198140 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_10019DA70, sizeof(__dst));
  memcpy(v12, &unk_10019DA70, sizeof(v12));
  if (qword_100198150 != -1)
  {
    swift_once();
  }

  memcpy(v11, __dst, sizeof(v11));
  QueryType.namespace<A>(_:)(qword_10019DB38, unk_10019DB40, qword_10019DB48, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v2, v3, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11[3] = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v11[4] = &protocol witness table for Expression<A>;
  v11[0] = v5;
  v11[1] = v7;
  v11[2] = v9;
  a1[3] = &type metadata for Table;
  a1[4] = &protocol witness table for Table;
  *a1 = swift_allocObject();
  SchemaType.select(_:_:)(v11, _swiftEmptyArrayStorage, &type metadata for Table, &protocol witness table for Table);
  return sub_1000034F8(v11);
}

uint64_t sub_100062B70(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t *), uint64_t a4, uint64_t a5)
{
  v42 = a3;
  v43 = a4;
  v8 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (v41 - v10);
  v12 = type metadata accessor for LNActionRecord();
  v13 = sub_10000482C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = a5;
  sub_100017580(v49);
  v18 = v50;
  v19 = v51;
  sub_1000034B4(v49, v50);
  if (qword_100198148 != -1)
  {
    sub_100002A90();
    swift_once();
  }

  sub_100003A8C(&qword_10019DB20);
  v46[0] = a1;
  v46[1] = a2;
  v20 = == infix<A>(_:_:)();
  v22 = v21;
  v24 = v23;
  v47 = v18;
  v48 = v19;
  sub_100013234(v46);
  QueryType.filter(_:)(v20, v22, v24, v18, v19);

  v25 = v47;
  v26 = v48;
  v41[1] = sub_1000034B4(v46, v47);
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10014CE90;
  if (qword_100198150 != -1)
  {
    sub_100007EAC();
    swift_once();
  }

  v44 = qword_10019DB38;
  v45 = unk_10019DB40;
  v28 = sub_1000077D8();
  v30 = sub_10002EB80(v28, v29);
  sub_100007108();
  v32 = sub_100013EBC(v31, &unk_10019AAC0, &unk_10014BE40);
  ExpressionType.asc.getter(v30, v32, (v27 + 32));
  v52[3] = v25;
  v52[4] = v26;
  sub_100013234(v52);
  QueryType.order(_:)(v27, v25, v26);

  sub_1000034F8(v46);
  sub_1000034F8(v49);
  v33 = v41[2];
  Connection.prepareRowIterator(_:)(v52);
  if (!v33)
  {
    v35 = v34;
    LOBYTE(v49[0]) = 0;
    while (1)
    {
      v36 = Statement.failableNext()();
      if (v37)
      {

        goto LABEL_16;
      }

      v38 = v36;
      if (!v36)
      {
        goto LABEL_16;
      }

      if (v49[0])
      {
        break;
      }

      v39 = objc_autoreleasePoolPush();
      sub_1000149DC(v35, v38, v11);

      if (sub_1000032C4(v11, 1, v12) == 1)
      {
        sub_100003EFC(v11, &qword_100199EE0, &qword_1001507C0);
      }

      else
      {
        sub_1000651AC(v11, v17);
        v42(*&v17[*(v12 + 24)], v49);
        sub_100065150(v17);
      }

      objc_autoreleasePoolPop(v39);
    }

LABEL_16:
  }

  return sub_1000034F8(v52);
}

uint64_t sub_100062F80(uint64_t a1, unint64_t a2)
{
  v6 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v50 - v8);
  v10 = type metadata accessor for LNActionRecord();
  v11 = sub_10000482C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B2E4(a1, a2);
  if (!v2)
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v53 = v15;
    v54 = v10;
    sub_100017580(v56);
    v25 = v57;
    v24 = v58;
    v60 = sub_1000034B4(v56, v57);
    v55 = "yBundleIdentifierV2";
    v59[3] = v25;
    v59[4] = v24;
    v26 = sub_100013234(v59);
    sub_10004B514(v20, v21, v22, v23, v26, v25, v24);

    sub_1000034F8(v56);
    Connection.prepareRowIterator(_:)(v59);
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    v3 = Dictionary.init(dictionaryLiteral:)();
    v27 = v54;
    while (1)
    {
      v28 = Statement.failableNext()();
      if (v29)
      {
        break;
      }

      v30 = v28;
      if (!v28)
      {

        sub_1000034F8(v59);
        return v3;
      }

      sub_1000149DC(v31, v30, v9);

      if (sub_1000032C4(v9, 1, v27) == 1)
      {
        sub_100003EFC(v9, &qword_100199EE0, &qword_1001507C0);
      }

      else
      {
        v32 = v53;
        sub_1000651AC(v9, v53);
        v33 = *(v32 + 8);
        v60 = *v32;
        v52 = *(v32 + *(v27 + 24));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v33;
        v56[0] = v3;
        v50 = sub_10000C2A0(v60, v33);
        v35 = v3[2];
        v36 = (v34 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v38 = v34;
        sub_10002EB80(&qword_100198B90, &unk_10014D040);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v37))
        {
          v39 = sub_10000C2A0(v60, v55);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_24;
          }

          v41 = v39;
        }

        else
        {
          v41 = v50;
        }

        v3 = v56[0];
        if (v38)
        {
          v42 = *(v56[0] + 56);
          v43 = *(v42 + 8 * v41);
          *(v42 + 8 * v41) = v52;
        }

        else
        {
          *(v56[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v44 = (v3[6] + 16 * v41);
          v45 = v55;
          *v44 = v60;
          v44[1] = v45;
          *(v3[7] + 8 * v41) = v52;
          v46 = v3[2];
          v47 = __OFADD__(v46, 1);
          v48 = v46 + 1;
          if (v47)
          {
            goto LABEL_23;
          }

          v3[2] = v48;
        }

        sub_100065150(v53);
      }
    }

    sub_1000034F8(v59);
  }

  return v3;
}

uint64_t sub_1000633AC(uint64_t a1, uint64_t a2)
{
  v6 = sub_1000629D8(v31);
  if (a2)
  {
    v11 = v31[3];
    v3 = v31[4];
    sub_100024690(v6, v7, v8, v9, v10);
    if (qword_100198148 != -1)
    {
      sub_100002A90();
      swift_once();
    }

    sub_100003A8C(&qword_10019DB20);
    *&v27 = a1;
    *(&v27 + 1) = a2;
    v12 = == infix<A>(_:_:)();
    v14 = v13;
    v16 = v15;
    v29 = v11;
    v30 = v3;
    sub_100013234(&v27);
    QueryType.filter(_:)(v12, v14, v16, v11, v3);

    v17 = sub_1000034F8(v31);
    sub_10001A9D0(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, v31[0]);
  }

  Connection.prepareRowIterator(_:)(v31);
  if (v2)
  {
    sub_1000034F8(v31);
  }

  else
  {
    RowIterator.compactMap<A>(_:)();
    v3 = v26;
    sub_1000034F8(v31);
  }

  return v3;
}

void sub_100063560(void *a1@<X8>)
{
  if (qword_100198150 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (v1)
  {

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = v5;
    v4 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
}

char *sub_100063624(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v2 = sub_1000232F4(v1);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
LABEL_12:
    if (qword_100198150 != -1)
    {
      sub_100007EAC();
      swift_once();
    }

    if (qword_100198148 != -1)
    {
      sub_100002A90();
      swift_once();
    }

    v20 = sub_100013484();
    sub_1000624FC(v20, v21, v22, v23, v24, v25, v3);

    sub_100017580(v34);
    v26 = v35;
    v27 = v36;
    sub_1000034B4(v34, v35);
    v33[3] = v26;
    v33[4] = v27;
    sub_100013234(v33);
    v28 = sub_100013484();
    QueryType.filter(_:)(v28, v29, v30, v26, v27);

    v31 = sub_10001DF8C(v33);
    sub_1000034F8(v33);
    sub_1000034F8(v34);
    return v31;
  }

  v4 = v2;
  v34[0] = _swiftEmptyArrayStorage;
  result = sub_1000B3558(0, v2 & ~(v2 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v3 = v34[0];
    v32 = v1 & 0xC000000000000001;
    v37 = v1;
    do
    {
      if (v32)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 actionIdentifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [v8 bundleIdentifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v34[0] = v3;
      v18 = v3[2];
      v17 = v3[3];
      if (v18 >= v17 >> 1)
      {
        sub_1000B3558((v17 > 1), v18 + 1, 1);
        v3 = v34[0];
      }

      ++v6;
      v3[2] = v18 + 1;
      v19 = &v3[4 * v18];
      v19[4] = v10;
      v19[5] = v12;
      v19[6] = v14;
      v19[7] = v16;
      v1 = v37;
    }

    while (v4 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000638E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  result = sub_100063A0C(a1, a2, a3, a4, 0x736E6F69746361, 0xE700000000000000, a6, a7, 0x696669746E656469, 0xEA00000000007265, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000023, 0x8000000100155290);
  if (!v8)
  {
    if (v14)
    {
      v15 = sub_100028F9C(a1, a2, result, v14, a5);

      sub_100065300(v15);
    }

    else
    {
      v16 = type metadata accessor for LNActionRecord();
      return sub_1000075C4(a8, 1, 1, v16);
    }
  }

  return result;
}

uint64_t sub_100063A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(90);
  v17._countAndFlagsBits = 0x200A5443454C4553;
  v17._object = 0xEB00000000202020;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a9;
  v18._object = a10;
  String.append(_:)(v18);
  sub_1000117C8();
  v19._countAndFlagsBits = a5;
  v19._object = a6;
  String.append(_:)(v19);
  sub_100003764();
  v20._countAndFlagsBits = a5;
  v20._object = a6;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = sub_100012014();
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x2E2427202CLL;
  v23._object = 0xE500000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = a13;
  v24._object = a14;
  String.append(_:)(v24);
  sub_100007510();
  v25._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v25);
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  Connection.prepare(_:_:)();
  if (v32[16])
  {

    swift_setDeallocating();
    return sub_1000B30E8();
  }

  swift_setDeallocating();
  sub_1000B30E8();
  v28 = Statement.failableNext()();
  if (!v29)
  {
    if (v28)
    {
      if (*(v28 + 16) == 1)
      {
        sub_100009EDC(v28 + 32, v32, &qword_100199ED0, &qword_10014ED20);

        if (v32[3])
        {
          sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
          if (swift_dynamicCast())
          {
            return v31;
          }
        }

        else
        {
          sub_100003EFC(v32, &qword_100199ED0, &qword_10014ED20);
        }

        return 0;
      }
    }

    return 0;
  }
}

void sub_100063EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = type metadata accessor for LNActionRecord();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v46);
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v42 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v49 = a1 & 0xC000000000000001;
  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v14 = a1;
  }

  v53 = v14;
  v44 = _swiftEmptyArrayStorage;
  v42[4] = a2;
  v42[5] = a3;
  v42[2] = v42 - v10;
  v42[3] = v6;
  v42[1] = v13;
LABEL_4:
  for (i = v12; i != v13; i = v17)
  {
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = i + 1;
    v47 = *(v6 + 72);
    v48 = v16;
    sub_1000650EC(a3 + v16 + v47 * i, v11);
    switch(a2)
    {
      case 2:
        v50 = v17;
        v30 = [sub_1000183D8() systemProtocols];
        v6 = sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
        v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000232F4(v31);
        sub_100004E38();
        v11 = 0;
        v17 = v49;
        v45 = v30;
        while (v11 != v30)
        {
          if (a3)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *(v52 + 16))
            {
              goto LABEL_57;
            }

            v32 = *(v51 + 8 * v11);
          }

          v13 = v32;
          v21 = __OFADD__(v11++, 1);
          if (v21)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            return;
          }

          if (v17)
          {
            v33 = v32;
            a2 = __CocoaSet.contains(_:)();

            if (a2)
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (*(a1 + 16))
            {
              NSObject._rawHashValue(seed:)(*(a1 + 40));
              sub_100013C6C();
              while (1)
              {
                sub_1000110C8(v34);
                if ((v35 & 1) == 0)
                {
                  break;
                }

                a2 = **(a1 + 48);
                v36 = static NSObject.== infix(_:_:)();

                v34 = 1;
                if (v36)
                {

                  goto LABEL_47;
                }
              }
            }

            v17 = v49;
            v30 = v45;
          }
        }

LABEL_43:

LABEL_44:

        sub_1000115D0();
        break;
      case 1:
        v26 = [sub_1000183D8() systemProtocols];
        sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
        v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000C2C6C(v27);
        sub_100064BB4(v28, a1);
        LOBYTE(v27) = v29;

        if (v27)
        {
          goto LABEL_48;
        }

        break;
      case 0:
        v50 = v17;
        v18 = [sub_1000183D8() systemProtocols];
        v6 = sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000232F4(v19);
        sub_100004E38();
        v11 = 0;
        v17 = v49;
        v45 = v18;
        while (v11 != v18)
        {
          if (a3)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *(v52 + 16))
            {
              goto LABEL_56;
            }

            v20 = *(v51 + 8 * v11);
          }

          v13 = v20;
          v21 = __OFADD__(v11++, 1);
          if (v21)
          {
            goto LABEL_55;
          }

          if (v17)
          {
            v22 = v20;
            v13 = __CocoaSet.contains(_:)();

            if (v13)
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (*(a1 + 16))
            {
              NSObject._rawHashValue(seed:)(*(a1 + 40));
              sub_100013C6C();
              while (1)
              {
                sub_1000110C8(v23);
                if ((v24 & 1) == 0)
                {
                  break;
                }

                a2 = **(a1 + 48);
                v25 = static NSObject.== infix(_:_:)();

                v23 = 1;
                if (v25)
                {

                  goto LABEL_44;
                }
              }
            }

            v17 = v49;
            v18 = v45;
          }
        }

LABEL_46:

LABEL_47:

        sub_1000115D0();
LABEL_48:
        sub_1000651AC(v11, v43);
        v37 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v37;
        v54 = v37;
        v50 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B35D4(0, v37[2] + 1, 1);
          v39 = v54;
        }

        v41 = v39[2];
        v40 = v39[3];
        if (v41 >= v40 >> 1)
        {
          sub_1000B35D4(v40 > 1, v41 + 1, 1);
          v39 = v54;
        }

        v39[2] = v41 + 1;
        v44 = v39;
        sub_1000651AC(v43, v39 + v48 + v41 * v47);
        v12 = v50;
        goto LABEL_4;
    }

    sub_100065150(v11);
  }
}

uint64_t sub_100064420(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_100064440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100012A48();
  a29 = v31;
  a30 = v32;
  sub_100062198(v33);
  a14 = v34;
  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_100013EBC(&qword_10019BB00, &unk_10019ACC0, &qword_1001507B0);
  v35 = BidirectionalCollection<>.joined(separator:)();
  v37 = v36;

  a14 = 0;
  a15 = 0xE000000000000000;
  _StringGuts.grow(_:)(97);
  sub_100007510();
  String.append(_:)(v38);
  sub_100007510();
  v39._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 8236;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x696669746E656469;
  v41._object = 0xEA00000000007265;
  String.append(_:)(v41);
  sub_1000117C8();
  v42._countAndFlagsBits = 0x736E6F69746361;
  v42._object = 0xE700000000000000;
  String.append(_:)(v42);
  sub_100003764();
  v43._countAndFlagsBits = 0x736E6F69746361;
  v43._object = 0xE700000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x617461646174656DLL;
  v45._object = 0xE800000000000000;
  String.append(_:)(v45);
  sub_100007510();
  String.append(_:)(v46);
  v47._countAndFlagsBits = v35;
  v47._object = v37;
  String.append(_:)(v47);

  a20 = _swiftEmptyArrayStorage;
  Connection.prepare(_:_:)();

  if (v30)
  {
LABEL_20:
    sub_100013494();
    return;
  }

  v52 = _swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      v48 = Statement.failableNext()();
      if (v49)
      {

        goto LABEL_20;
      }

      v50 = v48;
      if (!v48)
      {
        sub_100063624(v52);

        goto LABEL_20;
      }

      if (*(v48 + 16) == 2)
      {
        sub_100009EDC(v48 + 32, &a14, &qword_100199ED0, &qword_10014ED20);
        if (!a17)
        {
          goto LABEL_13;
        }

        sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
        if (swift_dynamicCast())
        {
          break;
        }
      }

LABEL_11:
    }

    if (*(v50 + 16) < 2uLL)
    {
      break;
    }

    sub_100009EDC(v50 + 72, &a14, &qword_100199ED0, &qword_10014ED20);

    if (a17)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

      v51 = objc_allocWithZone(LNFullyQualifiedActionIdentifier);
      sub_1000077D8();
      sub_10006500C();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((a20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = a20;
    }

    else
    {
LABEL_13:

      sub_100003EFC(&a14, &qword_100199ED0, &qword_10014ED20);
    }
  }

  __break(1u);
}

uint64_t sub_100064864(uint64_t *a1)
{
  v2 = *(a1 + *(type metadata accessor for LNActionRecord() + 24));
  result = LNActionMetadata.asJson(prettyPrinted:)(0)._countAndFlagsBits;
  if (!v4)
  {
    if (qword_100198140 != -1)
    {
      sub_100006744();
      swift_once();
    }

    memcpy(__dst, &unk_10019DA70, sizeof(__dst));
    memcpy(__src, &unk_10019DA70, sizeof(__src));
    sub_1000196B0(__dst, v19);
    if (qword_100198148 != -1)
    {
      sub_100002A90();
      swift_once();
    }

    sub_100003A8C(&qword_10019DB20);
    v17 = *a1;
    v18 = a1[1];
    <- infix<A>(_:_:)();
    sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
    *(swift_initStackObject() + 16) = xmmword_10014CE90;
    if (qword_100198158 != -1)
    {
      sub_100007B0C();
      swift_once();
    }

    sub_100003A8C(&qword_10019DB50);
    <- infix<A>(_:_:)();

    v5 = QueryType.insert(_:_:)(v19);
    v7 = v6;
    v9 = v8;
    swift_setDeallocating();
    sub_1000B3030();
    sub_10002EBC8(v19);
    memcpy(v22, __src, sizeof(v22));
    sub_10001970C(v22);
    v23.template._countAndFlagsBits = v5;
    v23.template._object = v7;
    v23.bindings._rawValue = v9;
    Connection.run(_:)(v23);
    if (v10)
    {

      v19[0] = v10;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      if (swift_dynamicCast())
      {

        v11 = __src[1];
        v12 = __src[2];
        v13 = __src[3];
        if (LODWORD(__src[2]) == 19)
        {
          type metadata accessor for Schema.RuntimeError();
          sub_100065094();
          swift_allocError();
          *v14 = 0xD0000000000000FALL;
          v14[1] = 0x8000000100155110;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        else
        {
          v15 = __src[0];
          sub_10002EC1C();
          swift_allocError();
          *v16 = v15;
          *(v16 + 8) = v11;
          *(v16 + 16) = v12;
          *(v16 + 24) = v13;
          swift_willThrow();
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100064BB4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7 < v5)
  {
    return;
  }

  if (v4)
  {

    __CocoaSet.makeIterator()();
    sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
    sub_100065210();
    Set.Iterator.init(_cocoa:)();
    v2 = v30;
    v8 = v31;
    v9 = v32;
    v10 = v33;
    v11 = v34;
  }

  else
  {
    v12 = -1 << *(v2 + 32);
    v8 = v2 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v2 + 56);

    v10 = 0;
  }

  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  v15 = (v9 + 64) >> 6;
  v27 = v2;
  v26 = v8;
LABEL_15:
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_34:
      sub_100014464();
      return;
    }

    swift_dynamicCast();
    v20 = v11;
    v18 = v29;
    v28 = v20;
    if (!v6)
    {
LABEL_26:
      if (*(a1 + 16))
      {
        v21 = NSObject._rawHashValue(seed:)(*(a1 + 40));
        v22 = ~(-1 << *(a1 + 32));
        while (1)
        {
          v23 = v21 & v22;
          if (((*(a1 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {
            break;
          }

          v24 = *(*(a1 + 48) + 8 * v23);
          v25 = static NSObject.== infix(_:_:)();

          v21 = v23 + 1;
          if (v25)
          {

            v8 = v26;
            v2 = v27;
            v6 = a1 & 0xC000000000000001;
            v11 = v28;
            goto LABEL_15;
          }
        }
      }

LABEL_32:
      sub_100014464();
      return;
    }

LABEL_22:
    v19 = __CocoaSet.contains(_:)();

    v11 = v28;
    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v16 = v11;
  if (v11)
  {
LABEL_21:
    v28 = (v16 - 1) & v16;
    v29 = *(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v29;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_34;
    }

    v16 = *(v8 + 8 * v10);
    ++v17;
    if (v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

id sub_100064EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = String._bridgeToObjectiveC()();

  v9 = type metadata accessor for URL();
  v11 = 0;
  if (sub_1000032C4(a4, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(*(v9 - 8) + 8))(a4, v9);
  }

  v13 = [v5 initWithType:a1 bundleIdentifier:v8 url:v11];

  return v13;
}

id sub_100064FA0(uint64_t *a1)
{
  sub_1000034B4(a1, a1[3]);
  v3 = [v1 initWithObject:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  sub_1000034F8(a1);
  return v3;
}

id sub_10006500C()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithActionIdentifier:v1 bundleIdentifier:v2];

  return v3;
}

unint64_t sub_100065094()
{
  result = qword_100198770;
  if (!qword_100198770)
  {
    type metadata accessor for Schema.RuntimeError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198770);
  }

  return result;
}

uint64_t sub_1000650EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNActionRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065150(uint64_t a1)
{
  v2 = type metadata accessor for LNActionRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000651AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNActionRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100065210()
{
  result = qword_10019ABB0;
  if (!qword_10019ABB0)
  {
    sub_100003D44(255, &qword_100199040, LNSystemProtocol_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019ABB0);
  }

  return result;
}

uint64_t sub_100065278(uint64_t a1)
{
  sub_100007120(a1);
  v2 = type metadata accessor for URL();
  if (v1)
  {
    v3 = *(v2 - 8);
    v4 = *(v3 + 16);
    v5 = *(v3 + 80);
    v6 = sub_100007B20();
    v7(v6);
  }

  v8 = sub_100007EC0();

  return sub_1000075C4(v8, v9, v10, v11);
}

uint64_t sub_100065300(uint64_t a1)
{
  sub_100007120(a1);
  v4 = type metadata accessor for LNActionRecord();
  if (v3)
  {
    sub_1000650EC(v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v1);
  }

  v5 = sub_100007EC0();

  return sub_1000075C4(v5, v6, v7, v8);
}

uint64_t sub_100065394(uint64_t a1)
{
  result = sub_1000660F0(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1000661A4(result, v3, 0, a1);
  }
}

uint64_t sub_1000653FC(uint64_t a1)
{
  sub_100007120(a1);
  v2 = sub_10002EB80(&unk_10019B280, &qword_1001504C0);
  if (v1)
  {
    v3 = *(v2 - 8);
    v4 = *(v3 + 16);
    v5 = *(v3 + 80);
    v6 = sub_100007B20();
    v7(v6);
  }

  v8 = sub_100007EC0();

  return sub_1000075C4(v8, v9, v10, v11);
}

void *sub_100065490()
{
  v0 = type metadata accessor for DispatchQoS();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100002958();
  v4 = v3 - v2;
  static DispatchQoS.userInitiated.getter();
  v5 = sub_10002EB80(&qword_100199EF0, &qword_10014ED68);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_10006580C(1, 300, v4);
  qword_10019DB68 = result;
  return result;
}

uint64_t sub_100065530()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DB70 = result;
  *algn_10019DB78 = v1;
  return result;
}

void *sub_100065560(uint64_t a1)
{

  v3 = sub_100065394(v2);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_10002EB80(&qword_10019B230, &unk_100150470);
    v7 = *(type metadata accessor for Notification() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10014CE90;
    v11 = LNAppShortcutsChangedNotification;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v13 = v11;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v5;
    *(inited + 80) = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    v14 = sub_100003D44(0, &qword_100199510, NSArray_ptr);
    v15 = sub_1000A1F48(a1);
    sub_10006DE3C(v15);

    v16 = sub_100034D2C();
    *(inited + 168) = v14;
    *(inited + 144) = v16;
    Dictionary.init(dictionaryLiteral:)();
    Notification.init(name:object:userInfo:)();
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v10;
}

uint64_t sub_100065798()
{
  v0._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v0);

  return 0x676E697461647075;
}

void *sub_10006580C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v35 = type metadata accessor for DispatchQoS();
  v14 = *(v35 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v35);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 136)) = 0;
  v18 = v4 + *(*v4 + 144);
  *v18 = 0;
  *(v18 + 1) = 0;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v33 = a1;
    if (qword_1001982F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v31 = v8;
  v32 = a2;
  v19 = type metadata accessor for Logger();
  v20 = sub_10000347C(v19, qword_10019E008);
  (*(*(v19 - 8) + 16))(v4 + qword_10019E588, v20, v19);
  v30 = sub_100003D44(0, &qword_10019BAF0, OS_dispatch_queue_ptr);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v36 = 0xD000000000000010;
  v37 = 0x8000000100154B90;
  if (qword_100198168 != -1)
  {
    swift_once();
  }

  v22 = qword_10019DB70;
  v21 = *algn_10019DB78;

  v23._countAndFlagsBits = v22;
  v23._object = v21;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x636E756F6265442ELL;
  v24._object = 0xEA00000000007265;
  String.append(_:)(v24);
  v25 = *(v14 + 16);
  v29 = a3;
  v25(v17, a3, v35);
  v36 = _swiftEmptyArrayStorage;
  sub_100066220();
  sub_10002EB80(&qword_1001992C8, &unk_10014DFF0);
  sub_10004AE28();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *(v4 + qword_10019E590) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = v33;
  v4[2] = v32;
  if (v26 <= 1)
  {
    v26 = [objc_opt_self() defaultCenter];
  }

  (*(v14 + 8))(v29, v35);
  v4[3] = v26;
  return v4;
}

void *sub_100065C94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = sub_100002944(v8);
  v39 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100002958();
  v15 = v14 - v13;
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  sub_100002958();
  v40 = type metadata accessor for DispatchQoS();
  v18 = sub_100002944(v40);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_100002958();
  v25 = v24 - v23;
  v26 = (v4 + *(*v4 + 128));
  *v26 = 0;
  v26[1] = 0;
  *(v4 + *(*v4 + 136)) = 0;
  v27 = v4 + *(*v4 + 144);
  *v27 = 0;
  *(v27 + 1) = 0;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v38 = a1;
    if (qword_1001982F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v36 = v8;
  v37 = a2;
  v28 = type metadata accessor for Logger();
  v29 = sub_10000347C(v28, qword_10019E008);
  (*(*(v28 - 8) + 16))(v4 + qword_10019E588, v29, v28);
  sub_100003D44(0, &qword_10019BAF0, OS_dispatch_queue_ptr);
  _StringGuts.grow(_:)(28);

  if (qword_1001982B0 != -1)
  {
    swift_once();
  }

  v31 = qword_10019DEB8;
  v30 = qword_10019DEC0;

  v32._countAndFlagsBits = v31;
  v32._object = v30;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 0x636E756F6265442ELL;
  v33._object = 0xEA00000000007265;
  String.append(_:)(v33);
  (*(v20 + 16))(v25, a3, v40);
  sub_100066220();
  sub_10002EB80(&qword_1001992C8, &unk_10014DFF0);
  sub_10004AE28();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
  *(v4 + qword_10019E590) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v34 = v38;
  v4[2] = v37;
  if (v38 <= 1)
  {
    v34 = [objc_opt_self() defaultCenter];
  }

  (*(v20 + 8))(a3, v40);
  v4[3] = v34;
  return v4;
}
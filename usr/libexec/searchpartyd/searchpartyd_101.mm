uint64_t sub_100A870CC(uint64_t a1)
{
  v142 = a1;
  v2 = sub_1000BC4D4(&qword_101699ED0, &qword_101393188);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v143 = v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v144 = v140 - v6;
  v7 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  v8 = *(v7 - 8);
  v157 = v7;
  v158 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v141 = v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v156 = v140 - v13;
  v14 = __chkstk_darwin(v12);
  v159 = v140 - v15;
  v16 = __chkstk_darwin(v14);
  v148 = v140 - v17;
  v18 = __chkstk_darwin(v16);
  v153 = v140 - v19;
  v20 = __chkstk_darwin(v18);
  v149 = v140 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v140 - v23;
  *&v147 = v1;
  v25 = *v1;
  v26 = _swiftEmptyArrayStorage;
  v152 = *(*v1 + 16);
  if (v152)
  {
    v27 = 0;
    *&v151 = v25;
    do
    {
      if (v27 >= *(v25 + 16))
      {
        goto LABEL_66;
      }

      v28 = (*(v158 + 80) + 32) & ~*(v158 + 80);
      v154 = *(v158 + 72);
      v155 = v28;
      sub_1000D2A70(v25 + v28 + v154 * v27, v24, &qword_101697DE0, &qword_101393190);
      v29 = v157;
      v30 = &v24[*(v157 + 40)];
      v31 = *(v30 + 3);
      v32 = *(v30 + 4);
      sub_1000035D0(v30, v31);
      if ((*(v32 + 32))(&v24[*(v29 + 36)], v31, v32))
      {
        v22 = sub_10000B3A8(v24, &qword_101697DE0, &qword_101393190);
        v25 = v151;
      }

      else
      {
        sub_1000D2AD8(v24, v153, &qword_101697DE0, &qword_101393190);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v160 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1011247FC(0, v26[2] + 1, 1);
          v26 = v160;
        }

        v25 = v151;
        v35 = v26[2];
        v34 = v26[3];
        if (v35 >= v34 >> 1)
        {
          sub_1011247FC(v34 > 1, v35 + 1, 1);
          v26 = v160;
        }

        v26[2] = v35 + 1;
        v22 = sub_1000D2AD8(v153, v26 + v155 + v35 * v154, &qword_101697DE0, &qword_101393190);
      }

      ++v27;
    }

    while (v152 != v27);
  }

  __chkstk_darwin(v22);
  v140[-2] = v147;
  v36 = v150;
  v37 = sub_10013D4C8(sub_100B23B20, &v140[-4], v26);
  v38 = v37;
  v140[1] = v36;
  v155 = *(v37 + 16);
  if (v155)
  {
    v39 = 0;
    v40 = v149;
    v41 = (v149 + *(v157 + 40));
    v42 = *(v158 + 80);
    v153 = (v42 + 32) & ~v42;
    v154 = v42;
    v152 = (v37 + v153);
    v43 = &_swiftEmptyDictionarySingleton;
    v151 = xmmword_101385D80;
    v150 = v37;
    while (1)
    {
      if (v39 >= *(v38 + 16))
      {
        goto LABEL_67;
      }

      sub_1000D2A70(v152 + *(v158 + 72) * v39, v40, &qword_101697DE0, &qword_101393190);
      v47 = *(v41 + 3);
      v48 = *(v41 + 4);
      sub_1000035D0(v41, v47);
      v49 = (*(v48 + 16))(v47, v48);
      if (v43[2] && (v50 = sub_100772234(v49), (v51 & 1) != 0))
      {
        v52 = *(v43[7] + 8 * v50);
        v53 = *(v41 + 3);
        v54 = *(v41 + 4);
        sub_1000035D0(v41, v53);
        v55 = v43;
        v56 = *(v54 + 16);

        v57 = v56(v53, v54);
        v58 = v55;
        v40 = v149;
        v59 = v57;
        sub_1000BC4D4(&qword_1016B3B00, &qword_1013D48A8);
        v60 = v153;
        v61 = swift_allocObject();
        *(v61 + 16) = v151;
        sub_1000D2A70(v40, v61 + v60, &qword_101697DE0, &qword_101393190);
        v160 = v52;
        sub_100398F38(v61);
        v62 = v160;
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v58;
        v64 = sub_100772234(v59);
        v66 = v58[2];
        v67 = (v65 & 1) == 0;
        v68 = __OFADD__(v66, v67);
        v69 = v66 + v67;
        if (v68)
        {
          goto LABEL_70;
        }

        v70 = v65;
        if (v58[3] >= v69)
        {
          if ((v63 & 1) == 0)
          {
            v93 = v64;
            sub_1010071AC();
            v64 = v93;
          }
        }

        else
        {
          sub_100FEA784(v69, v63);
          v64 = sub_100772234(v59);
          if ((v70 & 1) != (v71 & 1))
          {
            goto LABEL_72;
          }
        }

        v43 = v160;
        if ((v70 & 1) == 0)
        {
          v160[(v64 >> 6) + 8] |= 1 << v64;
          *(v43[6] + v64) = v59;
          *(v43[7] + 8 * v64) = v62;
          v91 = v43[2];
          v68 = __OFADD__(v91, 1);
          v88 = v91 + 1;
          if (v68)
          {
            goto LABEL_71;
          }

          goto LABEL_37;
        }

        v89 = v160[7];
        v90 = *(v89 + 8 * v64);
        *(v89 + 8 * v64) = v62;
      }

      else
      {
        v72 = *(v41 + 3);
        v73 = *(v41 + 4);
        sub_1000035D0(v41, v72);
        v74 = (*(v73 + 16))(v72, v73);
        sub_1000BC4D4(&qword_1016B3B00, &qword_1013D48A8);
        v75 = v153;
        v76 = v43;
        v77 = swift_allocObject();
        *(v77 + 16) = v151;
        sub_1000D2A70(v40, v77 + v75, &qword_101697DE0, &qword_101393190);
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v76;
        v79 = sub_100772234(v74);
        v81 = v76[2];
        v82 = (v80 & 1) == 0;
        v68 = __OFADD__(v81, v82);
        v83 = v81 + v82;
        if (v68)
        {
          goto LABEL_68;
        }

        v84 = v80;
        if (v76[3] >= v83)
        {
          if ((v78 & 1) == 0)
          {
            v92 = v79;
            sub_1010071AC();
            v79 = v92;
          }
        }

        else
        {
          sub_100FEA784(v83, v78);
          v79 = sub_100772234(v74);
          if ((v84 & 1) != (v85 & 1))
          {
            goto LABEL_72;
          }
        }

        v86 = v160;
        if ((v84 & 1) == 0)
        {
          v160[(v79 >> 6) + 8] |= 1 << v79;
          *(v86[6] + v79) = v74;
          *(v86[7] + 8 * v79) = v77;
          v87 = v86[2];
          v68 = __OFADD__(v87, 1);
          v88 = v87 + 1;
          if (v68)
          {
            goto LABEL_69;
          }

          v43 = v86;
LABEL_37:
          v43[2] = v88;
          goto LABEL_15;
        }

        v44 = v160[7];
        v45 = *(v44 + 8 * v79);
        *(v44 + 8 * v79) = v77;

        v43 = v86;
      }

LABEL_15:
      v46 = v156;
      v38 = v150;
      ++v39;
      sub_10000B3A8(v40, &qword_101697DE0, &qword_101393190);
      if (v155 == v39)
      {
        goto LABEL_39;
      }
    }
  }

  v43 = &_swiftEmptyDictionarySingleton;
  v46 = v156;
LABEL_39:

  v160 = _swiftEmptyArrayStorage;
  v94 = v43[8];
  v146 = v43 + 8;
  v95 = 1 << *(v43 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v97 = v96 & v94;
  v145 = (v95 + 63) >> 6;
  v152 = v43;

  v98 = 0;
  v99 = &qword_101697DE0;
  v147 = xmmword_101385D80;
  v100 = v157;
  while (1)
  {
    do
    {
      if (!v97)
      {
        do
        {
          v105 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            goto LABEL_65;
          }

          if (v105 >= v145)
          {

            v132 = v144;
            sub_10030BDFC(v160, v144);

            v133 = v143;
            sub_1000D2A70(v132, v143, &qword_101699ED0, &qword_101393188);
            if ((*(v158 + 48))(v133, 1, v100) == 1)
            {
              v134 = &qword_101699ED0;
              sub_10000B3A8(v133, &qword_101699ED0, &qword_101393188);
              sub_1000BC4D4(&qword_1016B5480, &qword_1013D67B0);
              sub_1000041A4(&qword_1016B5488, &qword_1016B5480, &qword_1013D67B0);
              swift_allocError();
              swift_willThrow();
              sub_10000B3A8(v132, &qword_101699ED0, &qword_101393188);
            }

            else
            {
              v135 = v100;
              v136 = v141;
              sub_1000D2AD8(v133, v141, &qword_101697DE0, &qword_101393190);
              v137 = (v136 + *(v135 + 40));
              v134 = v137[3];
              v138 = v137[4];
              sub_1000035D0(v137, v134);
              LOBYTE(v134) = (*(v138 + 24))(v134, v138);
              sub_10000B3A8(v132, &qword_101699ED0, &qword_101393188);
              sub_100022A54(v136, v142, type metadata accessor for DeviceEvent);
              sub_10000B3A8(v136, &qword_101697DE0, &qword_101393190);
            }

            return v134 & 1;
          }

          v97 = v146[v105];
          ++v98;
        }

        while (!v97);
        v98 = v105;
      }

      v106 = __clz(__rbit64(v97));
      v97 &= v97 - 1;
      v107 = *(v152[7] + ((v98 << 9) | (8 * v106)));
      v108 = *(v107 + 16);
    }

    while (!v108);
    v149 = *(v158 + 80);
    v150 = (v149 + 32) & ~v149;
    *&v151 = v97;
    v155 = v107 + v150;
    sub_1000D2A70(v107 + v150, v159, v99, &qword_101393190);

    if (v108 != 1)
    {
      break;
    }

LABEL_42:
    v101 = v148;
    sub_1000D2AD8(v159, v148, v99, &qword_101393190);
    sub_1000BC4D4(&qword_1016B3B00, &qword_1013D48A8);
    v102 = v150;
    v103 = *(v158 + 72) + v150;
    v104 = swift_allocObject();
    *(v104 + 16) = v147;
    sub_1000D2A70(v101, v104 + v102, v99, &qword_101393190);
    sub_100398F38(v104);

    sub_10000B3A8(v101, v99, &qword_101393190);
    v97 = v151;
  }

  v109 = 1;
  v153 = v108;
  v154 = v107;
  while (v109 < *(v107 + 16))
  {
    v110 = v99;
    sub_1000D2A70(v155 + *(v158 + 72) * v109, v46, v99, &qword_101393190);
    v111 = (v46 + *(v100 + 40));
    v112 = v100;
    v113 = v111[3];
    v114 = v111[4];
    sub_1000035D0(v111, v113);
    v115 = (*(v114 + 16))(v113, v114);
    v116 = (v159 + *(v112 + 40));
    v118 = v116[3];
    v117 = v116[4];
    sub_1000035D0(v116, v118);
    if (v115 == (*(v117 + 16))(v118, v117) || (v119 = v111[3], v120 = v111[4], sub_1000035D0(v111, v119), v121 = (*(v120 + 8))(v119, v120), v123 = v116[3], v122 = v116[4], sub_1000035D0(v116, v123), v121 == (*(v122 + 8))(v123, v122)))
    {
      v46 = v156;
      v100 = v157;
      v124 = *(v157 + 36);
      if (static Date.> infix(_:_:)())
      {
        goto LABEL_59;
      }
    }

    else
    {
      v125 = v111[3];
      v126 = v111[4];
      sub_1000035D0(v111, v125);
      v127 = (*(v126 + 8))(v125, v126);
      v128 = v116[3];
      v129 = v116[4];
      sub_1000035D0(v116, v128);
      v130 = (*(v129 + 8))(v128, v129);
      v46 = v156;
      v100 = v157;
      if (v127 < v130)
      {
LABEL_59:
        v131 = v159;
        v99 = v110;
        sub_10000B3A8(v159, v110, &qword_101393190);
        sub_1000D2AD8(v46, v131, v110, &qword_101393190);
        goto LABEL_52;
      }
    }

    v99 = v110;
    sub_10000B3A8(v46, v110, &qword_101393190);
LABEL_52:
    v107 = v154;
    if (v153 == ++v109)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A87EA8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v29 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v18 = *(sub_1000BC4D4(&qword_101697DE0, &qword_101393190) + 44);
  v19 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  (*(v4 + 16))(v17, a2 + *(v19 + 36), v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v20 = *(v8 + 56);
  sub_1000D2A70(v30 + v18, v11, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v17, &v11[v20], &qword_1016980D0, &unk_10138F3B0);
  v21 = *(v4 + 48);
  if (v21(v11, 1, v3) != 1)
  {
    v23 = v29;
    sub_1000D2A70(v11, v29, &qword_1016980D0, &unk_10138F3B0);
    if (v21(&v11[v20], 1, v3) != 1)
    {
      v24 = v28;
      (*(v4 + 32))(v28, &v11[v20], v3);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v4 + 8);
      v25(v24, v3);
      sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
      v25(v23, v3);
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      return v22 & 1;
    }

    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v23, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
  if (v21(&v11[v20], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v11, &qword_1016AF880, &unk_10138CE20);
    v22 = 0;
    return v22 & 1;
  }

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_100A882C8(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v15);
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100B27C00();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;
  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:v14];

  v11 = v14[0];
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    if (swift_dynamicCast())
    {
      v12 = sub_1006950E0(v14[0]);

      sub_100016590(v5, v7);

      return v12;
    }

    sub_100016590(v5, v7);
  }

  else
  {
    v13 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v5, v7);
  }

  return 0;
}

uint64_t sub_100A884DC(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v15);
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100B27B2C();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;
  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:v14];

  v11 = v14[0];
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    if (swift_dynamicCast())
    {
      v12 = sub_1006950E0(v14[0]);

      sub_100016590(v5, v7);

      return v12;
    }

    sub_100016590(v5, v7);
  }

  else
  {
    v13 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v5, v7);
  }

  return 0;
}

uint64_t sub_100A886F0(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v15);
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100B27AD8();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;
  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:v14];

  v11 = v14[0];
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    if (swift_dynamicCast())
    {
      v12 = sub_1006950E0(v14[0]);

      sub_100016590(v5, v7);

      return v12;
    }

    sub_100016590(v5, v7);
  }

  else
  {
    v13 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v5, v7);
  }

  return 0;
}

uint64_t sub_100A88934(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v15);
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  sub_100B26C84();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;
  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:v14];

  v11 = v14[0];
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    if (swift_dynamicCast())
    {
      v12 = sub_1006950E0(v14[0]);

      sub_100016590(v5, v7);

      return v12;
    }

    sub_100016590(v5, v7);
  }

  else
  {
    v13 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v5, v7);
  }

  return 0;
}

uint64_t sub_100A88B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v119 = a2;
  v122 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v5 = *(v122[-1].isa + 8);
  __chkstk_darwin(v122);
  v125 = v116 - v6;
  v136 = type metadata accessor for OwnedDeviceKeyRecord();
  v131 = *(v136 - 8);
  v7 = *(v131 + 64);
  v8 = __chkstk_darwin(v136);
  v128 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v120 = v116 - v11;
  v12 = __chkstk_darwin(v10);
  v127 = v116 - v13;
  v14 = __chkstk_darwin(v12);
  v124 = v116 - v15;
  __chkstk_darwin(v14);
  v135 = (v116 - v16);
  v138 = type metadata accessor for UUID();
  v17 = *(v138 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v138);
  v126 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v118 = v116 - v21;
  v22 = __chkstk_darwin(v20);
  v123 = v116 - v23;
  v24 = __chkstk_darwin(v22);
  v121 = v116 - v25;
  __chkstk_darwin(v24);
  v27 = v116 - v26;
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_1000076D4(v28, qword_10177CE28);
  v30 = v17[2];
  v137 = v17 + 2;
  v133 = v30;
  v30(v27, a1, v138);
  v130 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v134 = a1;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v129 = v2;
    v36 = v35;
    v139[0] = v35;
    *v34 = 141558275;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v17;
    v40 = v39;
    v132 = v38[1];
    v132(v27, v138);
    v41 = sub_1000136BC(v37, v40, v139);
    v17 = v38;

    *(v34 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "BeaconStore createNewOwnedDeviceKeyRecord called with deviceIdentifier:%{private,mask.hash}s", v34, 0x16u);
    sub_100007BAC(v36);
    v3 = v129;
  }

  else
  {

    v132 = v17[1];
    v132(v27, v138);
  }

  result = sub_100A7F75C(v140);
  if (!v3)
  {
    v116[1] = 0;
    v44 = v135;
    v43 = v136;
    v45 = v135 + *(v136 + 20);
    UUID.init()();
    v46 = v44 + v43[6];
    v129 = v17;
    v47 = v134;
    v48 = v138;
    v49 = v133;
    (v133)(v46);
    v141 = v140[1];
    v142 = v140[0];
    sub_10012C094(&v142, v139);
    sub_10012C038(&v141, v139);
    sub_100A80F28(v140);
    *v44 = xmmword_10138C660;
    v50 = v141;
    *(v44 + v43[7]) = v142;
    *(v44 + v43[8]) = v50;
    v51 = dispatch_group_create();
    v52 = swift_allocBox();
    v53 = *(v131 + 56);
    v117 = v54;
    v53(v54, 1, 1, v43);
    dispatch_group_enter(v51);
    v55 = v121;
    v49(v121, v47, v48);
    v56 = v129;
    v57 = (*(v129 + 80) + 24) & ~*(v129 + 80);
    v58 = (v18 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = v51;
    (v56[4])(v59 + v57, v55, v48);
    *(v59 + v58) = v52;
    v122 = v51;
    v121 = v52;

    sub_1006DE50C(v44, 0, sub_100B2495C, v59);

    v60 = v123;
    v133(v123, v134, v48);
    v61 = v44;
    v62 = v124;
    sub_100022A54(v61, v124, type metadata accessor for OwnedDeviceKeyRecord);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v139[0] = swift_slowAlloc();
      *v65 = 141558787;
      *(v65 + 4) = 1752392040;
      *(v65 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v66 = v138;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v60;
      v70 = v69;
      v132(v68, v66);
      v71 = sub_1000136BC(v67, v70, v139);

      *(v65 + 14) = v71;
      *(v65 + 22) = 2160;
      *(v65 + 24) = 1752392040;
      *(v65 + 32) = 2081;
      v72 = v62 + *(v136 + 20);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      sub_100022C40(v62, type metadata accessor for OwnedDeviceKeyRecord);
      v76 = sub_1000136BC(v73, v75, v139);

      *(v65 + 34) = v76;
      _os_log_impl(&_mh_execute_header, v63, v64, "Waiting for the new record to be saved to the cloud %{private,mask.hash}s uuid: %{private,mask.hash}s.", v65, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100022C40(v62, type metadata accessor for OwnedDeviceKeyRecord);
      v132(v60, v138);
    }

    v77 = v128;
    v78 = v126;
    v79 = v122;
    OS_dispatch_group.wait()();
    v80 = v117;
    swift_beginAccess();
    v81 = v125;
    sub_1000D2A70(v80, v125, &qword_10169EF98, &unk_1013D66D0);
    v82 = (*(v131 + 48))(v81, 1, v136);
    v83 = v134;
    if (v82 == 1)
    {
      sub_10000B3A8(v81, &qword_10169EF98, &unk_1013D66D0);
      v133(v78, v83, v138);
      sub_100022A54(v135, v77, type metadata accessor for OwnedDeviceKeyRecord);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v88 = v138;
        v137 = v87;
        v143 = v87;
        *v86 = 141558787;
        *(v86 + 4) = 1752392040;
        *(v86 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v132(v78, v88);
        v92 = sub_1000136BC(v89, v91, &v143);

        *(v86 + 14) = v92;
        *(v86 + 22) = 2160;
        *(v86 + 24) = 1752392040;
        *(v86 + 32) = 2081;
        v93 = v128;
        v94 = &v128[*(v136 + 20)];
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v96;
        sub_100022C40(v93, type metadata accessor for OwnedDeviceKeyRecord);
        v98 = sub_1000136BC(v95, v97, &v143);

        *(v86 + 34) = v98;
        _os_log_impl(&_mh_execute_header, v84, v85, "OwnedDeviceKeyRecord save failed for %{private,mask.hash}s uuid: %{private,mask.hash}s", v86, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_100022C40(v77, type metadata accessor for OwnedDeviceKeyRecord);
        v132(v78, v138);
      }

      sub_100139CA0();
      swift_allocError();
      *v115 = 13;
      swift_willThrow();

      sub_100022C40(v135, type metadata accessor for OwnedDeviceKeyRecord);
    }

    else
    {
      sub_10002911C(v81, v127, type metadata accessor for OwnedDeviceKeyRecord);
      v99 = v118;
      v133(v118, v83, v138);
      v100 = v120;
      sub_100022A54(v135, v120, type metadata accessor for OwnedDeviceKeyRecord);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *v103 = 141558787;
        *(v103 + 4) = 1752392040;
        v104 = v138;
        *(v103 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v107 = v106;
        v132(v99, v104);
        v108 = sub_1000136BC(v105, v107, &v143);

        *(v103 + 14) = v108;
        *(v103 + 22) = 2160;
        *(v103 + 24) = 1752392040;
        *(v103 + 32) = 2081;
        v109 = v120;
        v110 = v120 + *(v136 + 20);
        v111 = dispatch thunk of CustomStringConvertible.description.getter();
        v113 = v112;
        sub_100022C40(v109, type metadata accessor for OwnedDeviceKeyRecord);
        v114 = sub_1000136BC(v111, v113, &v143);

        *(v103 + 34) = v114;
        _os_log_impl(&_mh_execute_header, v101, v102, "OwnedDeviceKeyRecord saved to CloudKit for: %{private,mask.hash}s uuid: %{private,mask.hash}s.", v103, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_100022C40(v100, type metadata accessor for OwnedDeviceKeyRecord);
        v132(v99, v138);
      }

      sub_100022C40(v135, type metadata accessor for OwnedDeviceKeyRecord);
      sub_10002911C(v127, v119, type metadata accessor for OwnedDeviceKeyRecord);
    }
  }

  return result;
}

uint64_t sub_100A89AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v54 = a2;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v51 - v7;
  v70 = type metadata accessor for UUID();
  v55 = *(v70 - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(v70);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v51 - v17;
  __chkstk_darwin(v16);
  v20 = &v51 - v19;
  v21 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v51 - v23;
  v25 = type metadata accessor for DirectorySequence();
  v52 = *(v25 - 8);
  v53 = v25;
  v26 = *(v52 + 64);
  __chkstk_darwin(v25);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [objc_opt_self() defaultManager];
  if (qword_1016947A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177AEC8);
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v68 = v12[6];
  v69 = v12 + 6;
  if (v68(v24, 1, v11) != 1)
  {
    v35 = v12[4];
    v34 = v12 + 4;
    v66 = v24;
    v67 = v35;
    v71 = 0x80000001013541B0;
    v36 = (v34 - 3);
    v64 = v18;
    v65 = (v55 + 48);
    v60 = (v55 + 8);
    v61 = (v55 + 32);
    v58 = v8;
    v59 = v34;
    v35(v20, v24, v11);
    while (1)
    {
      if (URL.pathExtension.getter() == 0xD000000000000010 && v71 == v39)
      {
      }

      else
      {
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v40 & 1) == 0)
        {
          (*v36)(v20, v11);
          goto LABEL_8;
        }
      }

      URL.deletingPathExtension()();
      URL.lastPathComponent.getter();
      UUID.init(uuidString:)();

      v41 = v18;
      v42 = *v65;
      v43 = v70;
      if ((*v65)(v8, 1, v70) == 1)
      {
        v37 = *v36;
        (*v36)(v41, v11);
        v37(v20, v11);
        sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
        v18 = v41;
      }

      else
      {
        v44 = *v61;
        v45 = v62;
        (*v61)();
        if (static UUID.== infix(_:_:)())
        {
          v56 = v44;
          v46 = v57;
          v47 = v64;
          URL.deletingLastPathComponent()();
          URL.lastPathComponent.getter();
          UUID.init(uuidString:)();

          v48 = *v36;
          (*v36)(v46, v11);
          (*v60)(v45, v70);
          v48(v47, v11);
          v48(v20, v11);
          v32 = v70;
          if (v42(v6, 1, v70) != 1)
          {
            (*(v52 + 8))(v28, v53);
            v50 = v54;
            (v56)(v54, v6, v32);
            v31 = v50;
            v30 = 0;
            return (*(v55 + 56))(v31, v30, 1, v32);
          }

          sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
          v8 = v58;
          v18 = v64;
        }

        else
        {
          (*v60)(v45, v43);
          v49 = *v36;
          v18 = v64;
          (*v36)(v64, v11);
          v49(v20, v11);
          v8 = v58;
        }
      }

LABEL_8:
      v38 = v66;
      DirectorySequence.next()();
      if (v68(v38, 1, v11) == 1)
      {
        break;
      }

      v67(v20, v38, v11);
    }
  }

  (*(v52 + 8))(v28, v53);
  v30 = 1;
  v31 = v54;
  v32 = v70;
  return (*(v55 + 56))(v31, v30, 1, v32);
}

void *sub_100A8A1DC(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v47 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (v39 - v5);
  v7 = _s18ConnectionKeyGroupVMa();
  v40 = *(v7 - 1);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v39 - v18;
  __chkstk_darwin(v17);
  v21 = v39 - v20;
  v22 = v49;
  v23 = sub_100ADA680(a1, v47);
  if (!v22)
  {
    v45 = v6;
    v46 = v10;
    v47 = v7;
    v48 = v11;
    v24 = v23[2];
    if (v24)
    {
      v42 = v19;
      v39[1] = 0;
      v39[2] = v23;
      v25 = v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v44 = (v40 + 48);
      v6 = _swiftEmptyArrayStorage;
      v43 = *(v12 + 72);
      v26 = v48;
      v41 = v16;
      do
      {
        v49 = v6;
        sub_1000D2A70(v25, v21, &qword_1016A5A80, &qword_1013B35A8);
        v27 = v21;
        v28 = v21;
        v29 = v42;
        sub_1000D2A70(v27, v42, &qword_1016A5A80, &qword_1013B35A8);
        v30 = *(v26 + 48);
        sub_1000D2AD8(v29, v16, &qword_10169BA30, &unk_101395620);
        v31 = v29 + v30;
        v21 = v28;
        sub_1000D2AD8(v31, &v16[v30], &qword_1016A5A70, &unk_1013D6860);
        v32 = &v16[v30];
        v33 = v45;
        sub_1000D2A70(v32, v45, &qword_1016A5A70, &unk_1013D6860);
        sub_10000B3A8(v16, &qword_1016A5A80, &qword_1013B35A8);
        sub_10000B3A8(v28, &qword_1016A5A80, &qword_1013B35A8);
        if ((*v44)(v33, 1, v47) == 1)
        {
          sub_10000B3A8(v33, &qword_1016A5A70, &unk_1013D6860);
          v6 = v49;
          v16 = v41;
        }

        else
        {
          sub_10002911C(v33, v46, _s18ConnectionKeyGroupVMa);
          v6 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_100A5BE18(0, v6[2] + 1, 1, v6);
          }

          v34 = v40;
          v16 = v41;
          v36 = v6[2];
          v35 = v6[3];
          if (v36 >= v35 >> 1)
          {
            v37 = sub_100A5BE18(v35 > 1, v36 + 1, 1, v6);
            v34 = v40;
            v6 = v37;
          }

          v6[2] = v36 + 1;
          sub_10002911C(v46, v6 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v36, _s18ConnectionKeyGroupVMa);
        }

        v25 += v43;
        --v24;
        v26 = v48;
      }

      while (v24);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v6;
}

void *sub_100A8A624(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v4 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v41 - v6;
  v8 = type metadata accessor for TimeBasedKey();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v41 - v18;
  __chkstk_darwin(v17);
  v21 = v41 - v20;
  v52[3] = type metadata accessor for OwnedBeaconRecord();
  v52[4] = sub_10000768C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v22 = sub_1000280DC(v52);
  sub_100022A54(a1, v22, type metadata accessor for OwnedBeaconRecord);
  v23 = v53;
  v24 = sub_100ADA680(v52, a2);
  v25 = v23;
  sub_100007BAC(v52);
  if (!v23)
  {
    v49 = v7;
    v50 = v12;
    v47 = v11;
    v48 = v8;
    v26 = v24[2];
    if (v26)
    {
      v43 = v16;
      v44 = v19;
      v41[1] = v24;
      v41[2] = 0;
      v27 = v24 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
      v46 = (v42 + 48);
      v25 = _swiftEmptyArrayStorage;
      v45 = *(v45 + 72);
      v28 = v50;
      do
      {
        v51 = v26;
        v53 = v25;
        sub_1000D2A70(v27, v21, &qword_1016A5A80, &qword_1013B35A8);
        v29 = v21;
        v30 = v21;
        v31 = v44;
        sub_1000D2A70(v29, v44, &qword_1016A5A80, &qword_1013B35A8);
        v32 = *(v28 + 48);
        v33 = v43;
        sub_1000D2AD8(v31, v43, &qword_10169BA30, &unk_101395620);
        v34 = v31 + v32;
        v21 = v30;
        sub_1000D2AD8(v34, v33 + v32, &qword_1016A5A70, &unk_1013D6860);
        v35 = v49;
        sub_1000D2A70(v33, v49, &qword_10169BA30, &unk_101395620);
        sub_10000B3A8(v33, &qword_1016A5A80, &qword_1013B35A8);
        sub_10000B3A8(v30, &qword_1016A5A80, &qword_1013B35A8);
        if ((*v46)(v35, 1, v48) == 1)
        {
          sub_10000B3A8(v35, &qword_10169BA30, &unk_101395620);
          v25 = v53;
        }

        else
        {
          sub_10002911C(v35, v47, type metadata accessor for TimeBasedKey);
          v25 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_100A5BDF0(0, v25[2] + 1, 1, v25);
          }

          v37 = v25[2];
          v36 = v25[3];
          v38 = v42;
          if (v37 >= v36 >> 1)
          {
            v39 = sub_100A5BDF0(v36 > 1, v37 + 1, 1, v25);
            v38 = v42;
            v25 = v39;
          }

          v25[2] = v37 + 1;
          sub_10002911C(v47, v25 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37, type metadata accessor for TimeBasedKey);
        }

        v27 += v45;
        v28 = v50;
        v26 = v51 - 1;
      }

      while (v51 != 1);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v25;
}

Swift::Int sub_100A8AAFC(void **a1)
{
  v2 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3200C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100AFBBC8(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100A8ABA4(void **a1)
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B320AC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100AFBCF4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100A8AC4C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for BeaconStatus(0) - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100B32138(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_100AFBE20(a1, a2);
  *v3 = v7;
  return result;
}

int *sub_100A8AD0C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + result[16]) == 1)
  {
    v8 = *(v1 + result[17]);
    if (v8)
    {
      v9 = v8 - 1;
      if (is_mul_ok(v9, 0xFuLL))
      {
        if (is_mul_ok(15 * v9, 0x3CuLL))
        {
          v10 = v1 + result[18];
          return Date.addingTimeInterval(_:)();
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v11 = result;
      static os_log_type_t.error.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_101385D80;
      sub_100022A54(v1, v7, type metadata accessor for SharedBeaconRecord);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_100008C00();
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v16 = v1;
      v17 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v18 = v11[18];
      v19 = type metadata accessor for Date();
      return (*(*(v19 - 8) + 16))(a1, v16 + v18, v19);
    }
  }

  else
  {

    return static Date.distantPast.getter();
  }

  return result;
}

void sub_100A8AF58()
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177BA08);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requesting SPUnknownBeaconsSetChangedNotification to be posted before rate limit.", v3, 2u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v4)
  {
  }
}

uint64_t sub_100A8B080(void *a1)
{
  v506 = type metadata accessor for Date();
  v523 = *(v506 - 8);
  v2 = v523[8];
  v3 = __chkstk_darwin(v506);
  v463 = &v438[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v462 = &v438[-v5];
  v6 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v473 = &v438[-v8];
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v438[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v438[-v15];
  v17 = __chkstk_darwin(v14);
  v465 = &v438[-v18];
  v19 = __chkstk_darwin(v17);
  v467 = &v438[-v20];
  v21 = __chkstk_darwin(v19);
  v23 = &v438[-v22];
  __chkstk_darwin(v21);
  v25 = &v438[-v24];
  v26 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v469 = &v438[-v28];
  v468 = type metadata accessor for BeaconProductInfoRecord();
  v522 = *(v468 - 8);
  v29 = *(v522 + 64);
  __chkstk_darwin(v468);
  v464 = &v438[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v498 = type metadata accessor for SystemInfo.DeviceLockState();
  v508 = *(v498 - 8);
  v31 = *(v508 + 64);
  v32 = __chkstk_darwin(v498);
  v497 = &v438[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v496 = &v438[-v34];
  v35 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v495 = &v438[-v37];
  v494 = type metadata accessor for OwnedBeaconRecord();
  v38 = *(v494 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v494);
  v479 = &v438[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v520 = type metadata accessor for BeaconStatus(0);
  v510 = *(v520 - 8);
  v41 = *(v510 + 64);
  v42 = __chkstk_darwin(v520);
  v44 = &v438[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __chkstk_darwin(v42);
  v519 = &v438[-v46];
  v47 = __chkstk_darwin(v45);
  v49 = &v438[-v48];
  v50 = __chkstk_darwin(v47);
  v521 = &v438[-v51];
  v52 = __chkstk_darwin(v50);
  v513 = &v438[-v53];
  v54 = __chkstk_darwin(v52);
  v489 = &v438[-v55];
  v56 = __chkstk_darwin(v54);
  v501 = &v438[-v57];
  v58 = __chkstk_darwin(v56);
  v517 = &v438[-v59];
  v60 = __chkstk_darwin(v58);
  v512 = &v438[-v61];
  v62 = __chkstk_darwin(v60);
  v499 = &v438[-v63];
  v64 = __chkstk_darwin(v62);
  v500 = &v438[-v65];
  v66 = __chkstk_darwin(v64);
  v516 = &v438[-v67];
  v68 = __chkstk_darwin(v66);
  v459 = &v438[-v69];
  v70 = __chkstk_darwin(v68);
  v453 = &v438[-v71];
  v72 = __chkstk_darwin(v70);
  v451 = &v438[-v73];
  v74 = __chkstk_darwin(v72);
  v452 = &v438[-v75];
  v76 = __chkstk_darwin(v74);
  v456 = &v438[-v77];
  v78 = __chkstk_darwin(v76);
  v449 = &v438[-v79];
  v80 = __chkstk_darwin(v78);
  v461 = &v438[-v81];
  v82 = __chkstk_darwin(v80);
  v474 = &v438[-v83];
  __chkstk_darwin(v82);
  v515 = &v438[-v84];
  v85 = type metadata accessor for UUID();
  v507 = *(v85 - 8);
  v86 = *(v507 + 64);
  v87 = __chkstk_darwin(v85);
  v457 = &v438[-((v88 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = __chkstk_darwin(v87);
  v493 = &v438[-v90];
  v91 = __chkstk_darwin(v89);
  v460 = &v438[-v92];
  v93 = __chkstk_darwin(v91);
  v458 = &v438[-v94];
  v95 = __chkstk_darwin(v93);
  v448 = &v438[-v96];
  v97 = __chkstk_darwin(v95);
  v511 = &v438[-v98];
  __chkstk_darwin(v97);
  v492 = &v438[-v99];
  v100 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v101 = *(*(v100 - 8) + 64);
  v102 = __chkstk_darwin(v100 - 8);
  v103 = __chkstk_darwin(v102);
  v466 = &v438[-v104];
  __chkstk_darwin(v103);
  v480 = &v438[-v106];
  v475 = v9;
  v107 = *(*(a1 + *(v9 + 40)) + 16);
  if (v107 > 0xFF)
  {
    goto LABEL_213;
  }

  v518 = v85;
  if (v107 == 1)
  {
    if (qword_101694BF8 != -1)
    {
      goto LABEL_214;
    }

    goto LABEL_4;
  }

  v446 = v105;
  v443 = v16;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v118 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v488 = 0;
  sub_101073CD0(v525);

  v119 = v507 + 56;
  v13 = 1;
  v454 = *(v507 + 56);
  v454(v480, 1, 1, v85);
  v476 = a1;
  v120 = sub_100519FB0();
  v121 = 0;
  v123 = v120 + 56;
  v122 = *(v120 + 56);
  v491 = v120;
  v124 = 1 << *(v120 + 32);
  if (v124 < 64)
  {
    v125 = ~(-1 << v124);
  }

  else
  {
    v125 = -1;
  }

  v126 = (v124 + 63) >> 6;
  v509 = (v119 - 40);
  v490 = (v119 - 24);
  v487 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v486 = (v508 + 104);
  v485 = (v508 + 8);
  v472 = (v38 + 48);
  v450 = (v522 + 48);
  v445 = (v523 + 1);
  v455 = v119;
  v508 = v119 - 48;
  v471 = (v38 + 56);
  v127 = &_swiftEmptySetSingleton;
  v484 = xmmword_10139D930;
  *(&v128 + 1) = 2;
  v483 = xmmword_101385D80;
  *&v128 = 141558275;
  v470 = v128;
  *&v128 = 16777987;
  v442 = v128;
  *&v128 = 141558531;
  v447 = v128;
  v444 = v23;
  v441 = v25;
  v129 = v125 & v122;
  v482 = v120 + 56;
  v481 = v126;
  v514 = v49;
LABEL_12:
  v522 = (v127 + 7);
  if (!v129)
  {
    goto LABEL_13;
  }

  do
  {
LABEL_17:
    v523 = v127;
    v503 = v121;
    v131 = *(v491 + 48);
    v132 = v507;
    v477 = *(v507 + 72);
    v133 = *(v507 + 16);
    v134 = v492;
    v133(v492, v131 + v477 * (__clz(__rbit64(v129)) | (v121 << 6)), v85);
    v135 = v511;
    v478 = *(v132 + 32);
    v478(v511, v134, v85);
    v136 = v515;
    v505 = v133;
    v133(v515, v135, v85);
    v137 = v520;
    v138 = &v136[*(v520 + 24)];
    static Date.distantPast.getter();
    v136[v137[5]] = 0;
    *&v136[v137[7]] = v484;
    v136[v137[8]] = 0;
    *&v136[v137[9]] = 0;
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v504 = (v129 - 1) & v129;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v139 = swift_allocObject();
    *(v139 + 16) = v483;
    v140 = UUID.uuidString.getter();
    v142 = v141;
    *(v139 + 56) = &type metadata for String;
    *(v139 + 64) = sub_100008C00();
    *(v139 + 32) = v140;
    *(v139 + 40) = v142;
    os_log(_:dso:log:_:_:)();

    v143 = v496;
    static SystemInfo.lockState.getter();
    v144 = v497;
    v145 = v498;
    (*v486)(v497, v487, v498);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v140) = dispatch thunk of static Equatable.== infix(_:_:)();
    v146 = *v485;
    (*v485)(v144, v145);
    v146(v143, v145);
    if (v140)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v147 = v495;
      (*v471)(v495, 1, 1, v494);
      v148 = v493;
      v149 = v135;
LABEL_22:
      sub_10000B3A8(v147, &unk_1016A9A20, &qword_10138B280);
      v153 = v518;
      v154 = v523;
      v155 = v505;
      if (qword_101694BF8 != -1)
      {
        swift_once();
      }

      v156 = type metadata accessor for Logger();
      sub_1000076D4(v156, qword_10177BA38);
      v155(v148, v149, v153);
      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v160 = v148;
        v161 = swift_slowAlloc();
        v525 = v161;
        *v159 = v470;
        *(v159 + 4) = 1752392040;
        *(v159 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v162 = dispatch thunk of CustomStringConvertible.description.getter();
        v164 = v163;
        a1 = *v508;
        (*v508)(v160, v518);
        v165 = sub_1000136BC(v162, v164, &v525);

        *(v159 + 14) = v165;
        _os_log_impl(&_mh_execute_header, v157, v158, "No beacon record for %{private,mask.hash}s", v159, 0x16u);
        sub_100007BAC(v161);
      }

      else
      {

        a1 = *v508;
        (*v508)(v148, v153);
      }

      sub_100022A54(v515, v521, type metadata accessor for BeaconStatus);
      v166 = v154[5];
      Hasher.init(_seed:)();
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v167 = v520;
      v168 = *(v520 + 24);
      sub_10000768C(&unk_101698070, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v169 = Hasher._finalize()();
      v170 = -1 << *(v154 + 32);
      v13 = v169 & ~v170;
      if ((*(v522 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v171 = ~v170;
        v172 = *(v510 + 72);
        do
        {
          sub_100022A54(v154[6] + v172 * v13, v44, type metadata accessor for BeaconStatus);
          v173 = v521;
          if (static UUID.== infix(_:_:)() & 1) != 0 && (v174 = *(v167 + 24), (static Date.== infix(_:_:)()))
          {
            v175 = v44[*(v167 + 20)];
            sub_100022C40(v44, type metadata accessor for BeaconStatus);
            v176 = v175 == v173[*(v520 + 20)];
            v167 = v520;
            if (v176)
            {
              v177 = type metadata accessor for BeaconStatus;
              v178 = v521;
              goto LABEL_36;
            }
          }

          else
          {
            sub_100022C40(v44, type metadata accessor for BeaconStatus);
          }

          v13 = (v13 + 1) & v171;
          v154 = v523;
        }

        while (((*(v522 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100022A54(v521, v514, type metadata accessor for BeaconStatus);
      v524 = v154;
      v280 = v154[2];
      if (v154[3] <= v280)
      {
        v281 = v519;
        v282 = v280 + 1;
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_100DF7AB8(v282);
        }

        else
        {
          sub_100E0AF78(v282);
        }

        v283 = v524;
        v284 = v524[5];
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v285 = *(v520 + 24);
        dispatch thunk of Hashable.hash(into:)();
        v286 = Hasher._finalize()();
        v287 = -1 << *(v283 + 32);
        v13 = v286 & ~v287;
        if ((*(v283 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13))
        {
          v288 = ~v287;
          v289 = *(v510 + 72);
          v290 = v514;
          while (1)
          {
            sub_100022A54(v283[6] + v289 * v13, v281, type metadata accessor for BeaconStatus);
            if (static UUID.== infix(_:_:)() & 1) != 0 && (v291 = *(v520 + 24), (static Date.== infix(_:_:)()))
            {
              v292 = v520;
              v293 = v519[*(v520 + 20)];
              sub_100022C40(v519, type metadata accessor for BeaconStatus);
              v294 = *(v292 + 20);
              v290 = v514;
              v176 = v293 == v514[v294];
              v281 = v519;
              if (v176)
              {
                goto LABEL_218;
              }
            }

            else
            {
              sub_100022C40(v281, type metadata accessor for BeaconStatus);
            }

            v13 = (v13 + 1) & v288;
            if (((*(v283 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100E055EC();
      }

      v290 = v514;
LABEL_108:
      v127 = v524;
      *(v524 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v13;
      sub_10002911C(v290, v127[6] + *(v510 + 72) * v13, type metadata accessor for BeaconStatus);
      v295 = v127[2];
      v296 = __OFADD__(v295, 1);
      v297 = v295 + 1;
      if (v296)
      {
        goto LABEL_212;
      }

      v127[2] = v297;
      sub_100022C40(v521, type metadata accessor for BeaconStatus);
      sub_100022C40(v515, type metadata accessor for BeaconStatus);
      v85 = v518;
      (a1)(v511, v518);
      goto LABEL_144;
    }

    v150 = sub_100025044();
    __chkstk_darwin(v150);
    *&v438[-16] = v135;
    v147 = v495;
    v151 = v488;
    sub_1012BBBD0(sub_100B27F94, v150, v495);
    v488 = v151;

    v152 = (*v472)(v147, 1, v494);
    v148 = v493;
    v149 = v135;
    if (v152 == 1)
    {
      goto LABEL_22;
    }

    sub_10002911C(v147, v479, type metadata accessor for OwnedBeaconRecord);
    v180 = v469;
    sub_100AC1584(v135, v469);
    v181 = v468;
    v182 = (*v450)(v180, 1, v468);
    v183 = v518;
    v184 = v473;
    v185 = v523;
    v186 = v505;
    if (v182 == 1)
    {
      sub_10000B3A8(v180, &unk_1016AF8C0, &unk_1013A07A0);
    }

    else
    {
      v187 = v180;
      v188 = v464;
      sub_10002911C(v187, v464, type metadata accessor for BeaconProductInfoRecord);
      v189 = *&v188[*(v181 + 84)];
      if (v189)
      {
        v190 = *(v189 + 16);
        if (v190)
        {
          v191 = 88;
          while (1)
          {
            v192 = *(v189 + v191);
            if (v192 != 2 && (v192 & 1) != 0)
            {
              break;
            }

            v191 += 64;
            if (!--v190)
            {
              goto LABEL_51;
            }
          }

          if (qword_101694BF8 != -1)
          {
            swift_once();
          }

          v193 = type metadata accessor for Logger();
          sub_1000076D4(v193, qword_10177BA38);
          v194 = v441;
          sub_100022A54(v476, v441, type metadata accessor for OwnedBeaconGroup);

          v195 = Logger.logObject.getter();
          v196 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v195, v196))
          {
            v197 = swift_slowAlloc();
            v440 = swift_slowAlloc();
            v525 = v440;
            *v197 = v447;
            *(v197 + 4) = 1752392040;
            *(v197 + 12) = 2081;
            v439 = v196;
            v198 = *(v475 + 24);
            sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
            v199 = dispatch thunk of CustomStringConvertible.description.getter();
            v201 = v200;
            sub_100022C40(v194, type metadata accessor for OwnedBeaconGroup);
            v202 = sub_1000136BC(v199, v201, &v525);
            v183 = v518;

            *(v197 + 14) = v202;
            *(v197 + 22) = 2080;
            v203 = Array.description.getter();
            v205 = sub_1000136BC(v203, v204, &v525);

            *(v197 + 24) = v205;
            _os_log_impl(&_mh_execute_header, v195, v439, "Group %{private,mask.hash}s multipart layout template: %s", v197, 0x20u);
            swift_arrayDestroy();

            v184 = v473;
          }

          else
          {

            sub_100022C40(v194, type metadata accessor for OwnedBeaconGroup);
          }

          v219 = v480;
          sub_10000B3A8(v480, &qword_1016980D0, &unk_10138F3B0);
          sub_100022C40(v464, type metadata accessor for BeaconProductInfoRecord);
          goto LABEL_59;
        }
      }

LABEL_51:
      sub_100022C40(v188, type metadata accessor for BeaconProductInfoRecord);
    }

    v206 = sub_100D608FC();
    v207 = v520;
    if ((v206 & 0x1FF) != 2)
    {
      goto LABEL_60;
    }

    if (qword_101694BF8 != -1)
    {
      swift_once();
    }

    v208 = type metadata accessor for Logger();
    sub_1000076D4(v208, qword_10177BA38);
    v209 = v444;
    sub_100022A54(v476, v444, type metadata accessor for OwnedBeaconGroup);
    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v525 = v213;
      *v212 = v442;
      *(v212 + 4) = 28674;
      *(v212 + 6) = 8;
      *(v212 + 7) = 1752392040;
      *(v212 + 15) = 2081;
      v214 = *(v475 + 24);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v215 = dispatch thunk of CustomStringConvertible.description.getter();
      v217 = v216;
      sub_100022C40(v209, type metadata accessor for OwnedBeaconGroup);
      v218 = sub_1000136BC(v215, v217, &v525);
      v183 = v518;

      *(v212 + 17) = v218;
      _os_log_impl(&_mh_execute_header, v210, v211, "AlphaWasp: hardcoding primary part %hhu for group %{private,mask.hash}s.", v212, 0x19u);
      sub_100007BAC(v213);

      v184 = v473;
    }

    else
    {

      sub_100022C40(v209, type metadata accessor for OwnedBeaconGroup);
    }

    v219 = v480;
    sub_10000B3A8(v480, &qword_1016980D0, &unk_10138F3B0);
LABEL_59:
    v149 = v511;
    v186(v219, v511, v183);
    v454(v219, 0, 1, v183);
    v207 = v520;
LABEL_60:
    sub_100AC6DA0(v149, v184);
    v220 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
    if ((*(*(v220 - 8) + 48))(v184, 1, v220) != 1)
    {
      v231 = v184;
      v232 = v461;
      sub_10002911C(v231, v461, type metadata accessor for BeaconStatus);
      v233 = v232;
      v234 = v474;
      sub_10002911C(v233, v474, type metadata accessor for BeaconStatus);
      v235 = &v234[*(v207 + 24)];
      v236 = v462;
      Date.addingTimeInterval(_:)();
      v237 = v463;
      static Date.trustedNow.getter(v463);
      LOBYTE(v235) = static Date.> infix(_:_:)();
      v238 = *v445;
      v239 = v237;
      v240 = v506;
      (*v445)(v239, v506);
      v238(v236, v240);
      if (v235)
      {
        v336 = v520;
        v337 = sub_10001993C(v474[*(v520 + 20)] & 0xB);
        v338 = sub_100B06298(v479, (v337 >> 8) & 1, HIWORD(v337) & 1, HIBYTE(v337) & 1, v502);
        v339 = *(v338 + 16);
        if (v339)
        {
          v524 = _swiftEmptyArrayStorage;
          sub_101123D4C(0, v339, 0);
          v340 = v524;
          v522 = v338;
          v341 = v338 + 32;
          v342 = v448;
          v343 = v477;
          do
          {
            sub_10001F280(v341, &v525);
            v345 = v526;
            v344 = v527;
            sub_1000035D0(&v525, v526);
            (*(*(*(v344 + 8) + 8) + 32))(v345);
            sub_100007BAC(&v525);
            v524 = v340;
            v347 = v340[2];
            v346 = v340[3];
            if (v347 >= v346 >> 1)
            {
              sub_101123D4C(v346 > 1, v347 + 1, 1);
              v340 = v524;
            }

            v340[2] = v347 + 1;
            v478(v340 + ((*(v507 + 80) + 32) & ~*(v507 + 80)) + v347 * v343, v342, v518);
            v341 += 40;
            --v339;
          }

          while (v339);

          v336 = v520;
        }

        else
        {

          v340 = _swiftEmptyArrayStorage;
        }

        v348 = v449;
        sub_100022A54(v474, v449, type metadata accessor for BeaconStatus);
        v349 = sub_10000954C(v340);

        v350 = v336;
        v351 = *(v336 + 36);
        v352 = *&v348[v351];

        *&v348[v351] = v349;
        sub_100022A54(v348, v456, type metadata accessor for BeaconStatus);
        v353 = v185[5];
        Hasher.init(_seed:)();
        a1 = sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v13 = *(v350 + 24);
        v522 = sub_10000768C(&unk_101698070, &type metadata accessor for Date);
        dispatch thunk of Hashable.hash(into:)();
        v354 = Hasher._finalize()();
        v355 = v185 + 7;
        v356 = -1 << *(v185 + 32);
        v357 = v354 & ~v356;
        if ((*(v185 + ((v357 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v357))
        {
          v358 = ~v356;
          v359 = *(v510 + 72);
          v360 = v453;
          do
          {
            sub_100022A54(v185[6] + v359 * v357, v360, type metadata accessor for BeaconStatus);
            v361 = v456;
            if (static UUID.== infix(_:_:)() & 1) != 0 && (v362 = *(v520 + 24), (static Date.== infix(_:_:)()))
            {
              v363 = v520;
              v364 = v453[*(v520 + 20)];
              sub_100022C40(v453, type metadata accessor for BeaconStatus);
              v176 = v364 == v361[*(v363 + 20)];
              v360 = v453;
              if (v176)
              {
                sub_100022C40(v456, type metadata accessor for BeaconStatus);
                sub_100022C40(v474, type metadata accessor for BeaconStatus);
                sub_100022C40(v479, type metadata accessor for OwnedBeaconRecord);
                sub_100022C40(v515, type metadata accessor for BeaconStatus);
                v85 = v518;
                (*v508)(v511, v518);
                v129 = v504;
                v127 = v523;
                goto LABEL_178;
              }
            }

            else
            {
              sub_100022C40(v360, type metadata accessor for BeaconStatus);
            }

            v357 = (v357 + 1) & v358;
            v185 = v523;
          }

          while (((*(v355 + ((v357 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v357) & 1) != 0);
        }

        v365 = swift_isUniquelyReferenced_nonNull_native();
        sub_100022A54(v456, v452, type metadata accessor for BeaconStatus);
        v524 = v185;
        v366 = v185[2];
        if (v185[3] <= v366)
        {
          v367 = v366 + 1;
          if (v365)
          {
            sub_100DF7AB8(v367);
          }

          else
          {
            sub_100E0AF78(v367);
          }

          v13 = v522;
          v368 = v524;
          v369 = v524[5];
          Hasher.init(_seed:)();
          dispatch thunk of Hashable.hash(into:)();
          v522 = *(v520 + 24);
          dispatch thunk of Hashable.hash(into:)();
          v370 = Hasher._finalize()();
          v371 = v368 + 7;
          v523 = v368;
          v372 = -1 << *(v368 + 32);
          v357 = v370 & ~v372;
          if ((*(v368 + ((v357 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v357))
          {
            v373 = ~v372;
            v374 = *(v510 + 72);
            v375 = v451;
            v376 = v499;
            do
            {
              v377 = v376;
              v378 = v375;
              sub_100022A54(v523[6] + v374 * v357, v375, type metadata accessor for BeaconStatus);
              v13 = v452;
              if (static UUID.== infix(_:_:)() & 1) != 0 && (v379 = v378 + *(v520 + 24), (static Date.== infix(_:_:)()))
              {
                v380 = v520;
                v381 = *(v378 + *(v520 + 20));
                sub_100022C40(v378, type metadata accessor for BeaconStatus);
                v376 = v499;
                if (v381 == *(v13 + *(v380 + 20)))
                {
                  goto LABEL_218;
                }
              }

              else
              {
                sub_100022C40(v378, type metadata accessor for BeaconStatus);
                v376 = v377;
              }

              v357 = (v357 + 1) & v373;
              v375 = v451;
            }

            while (((*(v371 + ((v357 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v357) & 1) != 0);
          }
        }

        else if ((v365 & 1) == 0)
        {
          sub_100E055EC();
        }

        v127 = v524;
        *(v524 + ((v357 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v357;
        sub_10002911C(v452, v127[6] + *(v510 + 72) * v357, type metadata accessor for BeaconStatus);
        v382 = v127[2];
        v296 = __OFADD__(v382, 1);
        v383 = v382 + 1;
        if (v296)
        {
          goto LABEL_217;
        }

        v127[2] = v383;
        sub_100022C40(v456, type metadata accessor for BeaconStatus);
        sub_100022C40(v474, type metadata accessor for BeaconStatus);
        sub_100022C40(v479, type metadata accessor for OwnedBeaconRecord);
        sub_100022C40(v515, type metadata accessor for BeaconStatus);
        v85 = v518;
        (*v508)(v511, v518);
        v129 = v504;
LABEL_178:
        sub_100022C40(v449, type metadata accessor for BeaconStatus);
        v123 = v482;
        v126 = v481;
        goto LABEL_145;
      }

      v241 = v458;
      if (qword_101694BF8 != -1)
      {
        swift_once();
      }

      v242 = type metadata accessor for Logger();
      sub_1000076D4(v242, qword_10177BA38);
      v186(v241, v511, v183);
      v243 = v459;
      sub_100022A54(v474, v459, type metadata accessor for BeaconStatus);
      v244 = Logger.logObject.getter();
      v245 = static os_log_type_t.default.getter();
      v246 = os_log_type_enabled(v244, v245);
      v247 = v520;
      if (v246)
      {
        v248 = swift_slowAlloc();
        v525 = swift_slowAlloc();
        *v248 = v447;
        *(v248 + 4) = 1752392040;
        *(v248 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v249 = dispatch thunk of CustomStringConvertible.description.getter();
        v251 = v250;
        v505 = *v508;
        (v505)(v241, v518);
        v252 = sub_1000136BC(v249, v251, &v525);

        *(v248 + 14) = v252;
        *(v248 + 22) = 2080;
        sub_10001993C(v243[*(v247 + 20)] & 0xB);
        v253 = sub_100019E48();
        v255 = v254;
        sub_100022C40(v243, type metadata accessor for BeaconStatus);
        v256 = sub_1000136BC(v253, v255, &v525);

        *(v248 + 24) = v256;
        _os_log_impl(&_mh_execute_header, v244, v245, "Beacon status for %{private,mask.hash}s expired. %s", v248, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100022C40(v243, type metadata accessor for BeaconStatus);
        v505 = *v508;
        (v505)(v241, v183);
      }

      sub_100022A54(v515, v516, type metadata accessor for BeaconStatus);
      v268 = v523;
      v269 = v523[5];
      Hasher.init(_seed:)();
      a1 = sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v270 = *(v247 + 24);
      sub_10000768C(&unk_101698070, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v271 = Hasher._finalize()();
      v272 = -1 << *(v268 + 32);
      v13 = v271 & ~v272;
      v273 = v512;
      if ((*(v522 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v274 = ~v272;
        v275 = *(v510 + 72);
        do
        {
          sub_100022A54(v268[6] + v275 * v13, v273, type metadata accessor for BeaconStatus);
          v276 = v516;
          if (static UUID.== infix(_:_:)() & 1) != 0 && (v277 = *(v247 + 24), (static Date.== infix(_:_:)()))
          {
            v278 = v512[*(v247 + 20)];
            sub_100022C40(v512, type metadata accessor for BeaconStatus);
            v176 = v278 == v276[*(v247 + 20)];
            v273 = v512;
            if (v176)
            {
              sub_100022C40(v516, type metadata accessor for BeaconStatus);
              sub_100022C40(v474, type metadata accessor for BeaconStatus);
              sub_100022C40(v479, type metadata accessor for OwnedBeaconRecord);
              v179 = v511;
              v127 = v523;
              a1 = v505;
              goto LABEL_37;
            }
          }

          else
          {
            sub_100022C40(v273, type metadata accessor for BeaconStatus);
          }

          v13 = (v13 + 1) & v274;
          v268 = v523;
        }

        while (((*(v522 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
      }

      v302 = swift_isUniquelyReferenced_nonNull_native();
      sub_100022A54(v516, v500, type metadata accessor for BeaconStatus);
      v524 = v268;
      v303 = v268[2];
      if (v268[3] <= v303)
      {
        v306 = v303 + 1;
        if (v302)
        {
          sub_100DF7AB8(v306);
        }

        else
        {
          sub_100E0AF78(v306);
        }

        v322 = v499;
        v323 = v524;
        v324 = v524[5];
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v523 = *(v520 + 24);
        dispatch thunk of Hashable.hash(into:)();
        v325 = Hasher._finalize()();
        v326 = v323 + 7;
        v327 = -1 << *(v323 + 32);
        v13 = v325 & ~v327;
        if ((*(v323 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13))
        {
          a1 = v323;
          v328 = ~v327;
          v329 = *(v510 + 72);
          do
          {
            sub_100022A54(a1[6] + v329 * v13, v322, type metadata accessor for BeaconStatus);
            v330 = v500;
            if (static UUID.== infix(_:_:)() & 1) != 0 && (v331 = &v322[*(v520 + 24)], (static Date.== infix(_:_:)()))
            {
              v332 = v520;
              v333 = v499[*(v520 + 20)];
              sub_100022C40(v499, type metadata accessor for BeaconStatus);
              v322 = v499;
              if (v333 == v330[*(v332 + 20)])
              {
                goto LABEL_218;
              }
            }

            else
            {
              sub_100022C40(v322, type metadata accessor for BeaconStatus);
            }

            v13 = (v13 + 1) & v328;
          }

          while (((*(v326 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
        }
      }

      else if ((v302 & 1) == 0)
      {
        sub_100E055EC();
      }

      v127 = v524;
      *(v524 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v13;
      sub_10002911C(v500, v127[6] + *(v510 + 72) * v13, type metadata accessor for BeaconStatus);
      v334 = v127[2];
      v296 = __OFADD__(v334, 1);
      v335 = v334 + 1;
      if (v296)
      {
        goto LABEL_216;
      }

      v127[2] = v335;
      sub_100022C40(v516, type metadata accessor for BeaconStatus);
      v321 = v474;
      goto LABEL_143;
    }

    sub_10000B3A8(v184, &qword_10169DBD0, &unk_1013D6790);
    if (qword_101694BF8 != -1)
    {
      swift_once();
    }

    v221 = type metadata accessor for Logger();
    sub_1000076D4(v221, qword_10177BA38);
    v222 = v460;
    v186(v460, v511, v183);
    v223 = Logger.logObject.getter();
    v224 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v525 = v226;
      *v225 = v470;
      *(v225 + 4) = 1752392040;
      *(v225 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v227 = dispatch thunk of CustomStringConvertible.description.getter();
      v229 = v228;
      a1 = *v508;
      (*v508)(v222, v518);
      v230 = sub_1000136BC(v227, v229, &v525);

      *(v225 + 14) = v230;
      _os_log_impl(&_mh_execute_header, v223, v224, "No beacon status for %{private,mask.hash}s", v225, 0x16u);
      sub_100007BAC(v226);
    }

    else
    {

      a1 = *v508;
      (*v508)(v222, v183);
    }

    v257 = v513;
    sub_100022A54(v515, v517, type metadata accessor for BeaconStatus);
    v258 = v523;
    v259 = v523[5];
    Hasher.init(_seed:)();
    v478 = sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v260 = *(v207 + 24);
    sub_10000768C(&unk_101698070, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    v261 = Hasher._finalize()();
    v262 = -1 << *(v258 + 32);
    v13 = v261 & ~v262;
    if (((*(v522 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
LABEL_110:
      v298 = swift_isUniquelyReferenced_nonNull_native();
      sub_100022A54(v517, v501, type metadata accessor for BeaconStatus);
      v524 = v258;
      v299 = v258[2];
      v300 = v258[3];
      v301 = v499;
      v505 = a1;
      if (v300 <= v299)
      {
        v304 = v489;
        v305 = v299 + 1;
        if (v298)
        {
          sub_100DF7AB8(v305);
        }

        else
        {
          sub_100E0AF78(v305);
        }

        v307 = v524;
        v308 = v524[5];
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v523 = *(v520 + 24);
        dispatch thunk of Hashable.hash(into:)();
        v309 = Hasher._finalize()();
        v310 = v307 + 7;
        v311 = -1 << *(v307 + 32);
        v13 = v309 & ~v311;
        if ((*(v307 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13))
        {
          a1 = v307;
          v312 = ~v311;
          v313 = *(v510 + 72);
          do
          {
            v314 = v301;
            sub_100022A54(a1[6] + v313 * v13, v304, type metadata accessor for BeaconStatus);
            v315 = v501;
            if (static UUID.== infix(_:_:)() & 1) != 0 && (v316 = &v304[*(v520 + 24)], (static Date.== infix(_:_:)()))
            {
              v317 = v520;
              v318 = v489[*(v520 + 20)];
              sub_100022C40(v489, type metadata accessor for BeaconStatus);
              v176 = v318 == v315[*(v317 + 20)];
              v301 = v499;
              v304 = v489;
              if (v176)
              {
                goto LABEL_218;
              }
            }

            else
            {
              sub_100022C40(v304, type metadata accessor for BeaconStatus);
              v301 = v314;
            }

            v13 = (v13 + 1) & v312;
          }

          while (((*(v310 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
        }
      }

      else if ((v298 & 1) == 0)
      {
        sub_100E055EC();
      }

      v127 = v524;
      *(v524 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v13;
      sub_10002911C(v501, v127[6] + *(v510 + 72) * v13, type metadata accessor for BeaconStatus);
      v319 = v127[2];
      v296 = __OFADD__(v319, 1);
      v320 = v319 + 1;
      if (v296)
      {
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v127[2] = v320;
      v321 = v517;
LABEL_143:
      sub_100022C40(v321, type metadata accessor for BeaconStatus);
      sub_100022C40(v479, type metadata accessor for OwnedBeaconRecord);
      sub_100022C40(v515, type metadata accessor for BeaconStatus);
      v85 = v518;
      (v505)(v511, v518);
LABEL_144:
      v123 = v482;
      v126 = v481;
      v129 = v504;
LABEL_145:
      v121 = v503;
      goto LABEL_12;
    }

    v263 = ~v262;
    v264 = *(v510 + 72);
    while (1)
    {
      sub_100022A54(v258[6] + v264 * v13, v257, type metadata accessor for BeaconStatus);
      v265 = v517;
      if (static UUID.== infix(_:_:)())
      {
        v266 = *(v207 + 24);
        if (static Date.== infix(_:_:)())
        {
          break;
        }
      }

      sub_100022C40(v257, type metadata accessor for BeaconStatus);
LABEL_74:
      v13 = (v13 + 1) & v263;
      v258 = v523;
      if (((*(v522 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    v267 = v513[*(v207 + 20)];
    sub_100022C40(v513, type metadata accessor for BeaconStatus);
    v176 = v267 == v265[*(v207 + 20)];
    v257 = v513;
    if (!v176)
    {
      goto LABEL_74;
    }

    sub_100022C40(v517, type metadata accessor for BeaconStatus);
    v177 = type metadata accessor for OwnedBeaconRecord;
    v178 = v479;
LABEL_36:
    sub_100022C40(v178, v177);
    v179 = v511;
    v127 = v523;
LABEL_37:
    sub_100022C40(v515, type metadata accessor for BeaconStatus);
    v85 = v518;
    (a1)(v179, v518);
    v123 = v482;
    v126 = v481;
    v129 = v504;
    v121 = v503;
  }

  while (v504);
LABEL_13:
  while (1)
  {
    v130 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      break;
    }

    if (v130 >= v126)
    {

      v384 = v480;
      v385 = sub_100AD4838(v127, v480);

      if (qword_101694BF8 != -1)
      {
        swift_once();
      }

      v386 = type metadata accessor for Logger();
      sub_1000076D4(v386, qword_10177BA38);
      v387 = v467;
      sub_100022A54(v476, v467, type metadata accessor for OwnedBeaconGroup);

      v388 = Logger.logObject.getter();
      v389 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v388, v389))
      {
        v390 = swift_slowAlloc();
        v525 = swift_slowAlloc();
        *v390 = v447;
        *(v390 + 4) = 1752392040;
        *(v390 + 12) = 2081;
        v391 = *(v475 + 24);
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v392 = dispatch thunk of CustomStringConvertible.description.getter();
        v393 = v387;
        v395 = v394;
        sub_100022C40(v393, type metadata accessor for OwnedBeaconGroup);
        v396 = sub_1000136BC(v392, v395, &v525);

        *(v390 + 14) = v396;
        *(v390 + 22) = 2080;
        sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
        sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
        v384 = v480;
        v397 = Set.description.getter();
        v399 = sub_1000136BC(v397, v398, &v525);

        *(v390 + 24) = v399;
        _os_log_impl(&_mh_execute_header, v388, v389, "MultipartStatus for %{private,mask.hash}s: %s)", v390, 0x20u);
        swift_arrayDestroy();

        v85 = v518;
      }

      else
      {

        sub_100022C40(v387, type metadata accessor for OwnedBeaconGroup);
      }

      v402 = v465;
      v403 = v466;
      sub_1000D2A70(v384, v466, &qword_1016980D0, &unk_10138F3B0);
      v404 = (*(v507 + 48))(v403, 1, v85);
      v405 = v476;
      if (v404 == 1)
      {
        sub_10000B3A8(v403, &qword_1016980D0, &unk_10138F3B0);
        sub_100022A54(v405, v402, type metadata accessor for OwnedBeaconGroup);
        v406 = Logger.logObject.getter();
        v407 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v406, v407))
        {
          v408 = swift_slowAlloc();
          v409 = swift_slowAlloc();
          v525 = v409;
          *v408 = v470;
          *(v408 + 4) = 1752392040;
          *(v408 + 12) = 2081;
          v410 = *(v475 + 24);
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v411 = dispatch thunk of CustomStringConvertible.description.getter();
          v413 = v412;
          sub_100022C40(v402, type metadata accessor for OwnedBeaconGroup);
          v414 = sub_1000136BC(v411, v413, &v525);

          *(v408 + 14) = v414;
          _os_log_impl(&_mh_execute_header, v406, v407, "No primary beacon in group %{private,mask.hash}s.", v408, 0x16u);
          sub_100007BAC(v409);
        }

        else
        {

          sub_100022C40(v402, type metadata accessor for OwnedBeaconGroup);
        }

        v418 = v476;
        v419 = sub_100AC3C94(v476);
        if (v419 == 3)
        {
          sub_10000B3A8(v384, &qword_1016980D0, &unk_10138F3B0);
          return v385;
        }

        v420 = v419;
        v421 = v446;
        v454(v446, 1, 1, v518);
        v401 = sub_100B07144(v385, v421);

        sub_10000B3A8(v421, &qword_1016980D0, &unk_10138F3B0);
        v422 = v443;
        sub_100022A54(v418, v443, type metadata accessor for OwnedBeaconGroup);

        v423 = Logger.logObject.getter();
        v424 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v423, v424))
        {
          v425 = swift_slowAlloc();
          v525 = swift_slowAlloc();
          *v425 = 141558787;
          *(v425 + 4) = 1752392040;
          *(v425 + 12) = 2081;
          v426 = *(v475 + 24);
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v427 = dispatch thunk of CustomStringConvertible.description.getter();
          v429 = v428;
          sub_100022C40(v422, type metadata accessor for OwnedBeaconGroup);
          v430 = sub_1000136BC(v427, v429, &v525);

          *(v425 + 14) = v430;
          *(v425 + 22) = 2080;
          if (v420 <= 1)
          {
            if (v420)
            {
              v384 = v480;
              if (v420 == 1)
              {
                v431 = 0xE900000000000064;
                goto LABEL_202;
              }

LABEL_203:
              v431 = 0xE700000000000000;
              v432 = 0x6E776F6E6B6E75;
              goto LABEL_207;
            }

            v431 = 0xE700000000000000;
            v432 = 0x6E776F6E6B6E75;
LABEL_206:
            v384 = v480;
            goto LABEL_207;
          }

          if (v420 == 2)
          {
            v431 = 0xE700000000000000;
            v432 = 0x646570756F7267;
            goto LABEL_206;
          }

          v384 = v480;
          if (v420 != 4)
          {
            goto LABEL_203;
          }

          v431 = 0xEF657361436E4964;
LABEL_202:
          v432 = 0x6574617261706573;
LABEL_207:
          v433 = sub_1000136BC(v432, v431, &v525);

          *(v425 + 24) = v433;
          *(v425 + 32) = 2080;
          sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
          sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
          v434 = Set.description.getter();
          v436 = sub_1000136BC(v434, v435, &v525);

          *(v425 + 34) = v436;
          _os_log_impl(&_mh_execute_header, v423, v424, "Group %{private,mask.hash}s legacy status: %s. After separated: %s.", v425, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          sub_100022C40(v422, type metadata accessor for OwnedBeaconGroup);
        }

        v417 = v384;
      }

      else
      {
        v415 = v457;
        (*v490)(v457, v403, v85);
        v416 = v446;
        (*v509)(v446, v415, v85);
        v454(v416, 0, 1, v85);
        v401 = sub_100B07144(v385, v416);

        sub_10000B3A8(v416, &qword_1016980D0, &unk_10138F3B0);
        (*v508)(v415, v85);
        v417 = v384;
      }

      sub_10000B3A8(v417, &qword_1016980D0, &unk_10138F3B0);
      return v401;
    }

    v129 = *(v123 + 8 * v130);
    ++v121;
    if (v129)
    {
      v121 = v130;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  swift_once();
LABEL_4:
  v108 = type metadata accessor for Logger();
  sub_1000076D4(v108, qword_10177BA38);
  sub_100022A54(a1, v13, type metadata accessor for OwnedBeaconGroup);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v525 = v112;
    *v111 = 141558275;
    *(v111 + 4) = 1752392040;
    *(v111 + 12) = 2081;
    v113 = *(v475 + 24);
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v114 = dispatch thunk of CustomStringConvertible.description.getter();
    v116 = v115;
    sub_100022C40(v13, type metadata accessor for OwnedBeaconGroup);
    v117 = sub_1000136BC(v114, v116, &v525);

    *(v111 + 14) = v117;
    _os_log_impl(&_mh_execute_header, v109, v110, "%{private,mask.hash}s is a single beacon group, returning default set of 1 beacon", v111, 0x16u);
    sub_100007BAC(v112);
  }

  else
  {

    sub_100022C40(v13, type metadata accessor for OwnedBeaconGroup);
  }

  sub_1000BC4D4(&qword_1016B54A0, &qword_1013D6830);
  v400 = swift_allocObject();
  *(v400 + 16) = xmmword_101385D80;
  *(v400 + 32) = sub_100519FB0();
  v401 = sub_10112AB64(v400);
  swift_setDeallocating();
  sub_10000B3A8(v400 + 32, &qword_1016AF8E0, &qword_101393130);
  swift_deallocClassInstance();
  return v401;
}

uint64_t sub_100A8F20C(uint64_t a1)
{
  v2 = v1;
  v179 = a1;
  v3 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v164 = &v158 - v5;
  v163 = type metadata accessor for BeaconProductInfoRecord();
  v162 = *(v163 - 8);
  v6 = *(v162 + 64);
  __chkstk_darwin(v163);
  v159 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v167 = &v158 - v10;
  v168 = type metadata accessor for OwnedBeaconGroup(0);
  v166 = *(v168 - 8);
  v11 = *(v166 + 64);
  __chkstk_darwin(v168);
  v165 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v170 = &v158 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v177 = v16;
  v178 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v176 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v171 = &v158 - v22;
  v23 = __chkstk_darwin(v21);
  v172 = &v158 - v24;
  v25 = __chkstk_darwin(v23);
  v161 = &v158 - v26;
  v27 = __chkstk_darwin(v25);
  v160 = &v158 - v28;
  __chkstk_darwin(v27);
  v169 = &v158 - v29;
  v30 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v158 - v32;
  v175 = type metadata accessor for OwnedBeaconRecord();
  v34 = *(v175 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v175);
  v173 = &v158 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = &v158 - v39;
  v41 = type metadata accessor for BeaconNamingRecord();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v158 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  v180 = v2;
  v47 = v179;
  v181 = v179;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v48 = *(v42 + 48);
  v174 = v41;
  if (v48(v40, 1, v41) != 1)
  {
    sub_10002911C(v40, v45, type metadata accessor for BeaconNamingRecord);
    sub_100AA33AC(v47, v33);
    v61 = v175;
    v62 = v45;
    if ((*(v34 + 48))(v33, 1, v175) == 1)
    {
      sub_10000B3A8(v33, &unk_1016A9A20, &qword_10138B280);
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_1000076D4(v63, qword_10177BA08);
      v64 = v177;
      v65 = v178;
      v66 = v171;
      (*(v178 + 16))(v171, v47, v177);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v182 = v70;
        *v69 = 141558275;
        *(v69 + 4) = 1752392040;
        *(v69 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        (*(v65 + 8))(v66, v64);
        v74 = sub_1000136BC(v71, v73, &v182);

        *(v69 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v67, v68, "groupedBeaconDisplayName: No beacon record for beacon identifier %{private,mask.hash}s", v69, 0x16u);
        sub_100007BAC(v70);
      }

      else
      {

        (*(v65 + 8))(v66, v64);
      }

LABEL_24:
      v97 = (v62 + *(v174 + 32));
      v75 = *v97;
      v98 = v97[1];

      v99 = type metadata accessor for BeaconNamingRecord;
      v100 = v62;
LABEL_25:
      sub_100022C40(v100, v99);
      return v75;
    }

    v76 = v173;
    sub_10002911C(v33, v173, type metadata accessor for OwnedBeaconRecord);
    v77 = v170;
    sub_1000D2A70(v76 + *(v61 + 28), v170, &qword_1016980D0, &unk_10138F3B0);
    v78 = v177;
    v79 = v178;
    if ((*(v178 + 48))(v77, 1, v177) == 1)
    {
      sub_10000B3A8(v77, &qword_1016980D0, &unk_10138F3B0);
      v80 = v172;
LABEL_18:
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_1000076D4(v85, qword_10177BA08);
      (*(v79 + 16))(v80, v47, v78);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v182 = v89;
        *v88 = 141558275;
        *(v88 + 4) = 1752392040;
        *(v88 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v80;
        v92 = v76;
        v94 = v93;
        (*(v79 + 8))(v91, v78);
        v95 = sub_1000136BC(v90, v94, &v182);

        *(v88 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v86, v87, "groupedBeaconDisplayName: Beacon %{private,mask.hash}s does not belong to an item group or group record is missing.", v88, 0x16u);
        sub_100007BAC(v89);

        v96 = v92;
      }

      else
      {

        (*(v79 + 8))(v80, v78);
        v96 = v76;
      }

      sub_100022C40(v96, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_24;
    }

    v81 = v169;
    (*(v79 + 32))(v169, v77, v78);
    v82 = v167;
    sub_100AC53EC(v81, v167);
    v83 = v168;
    v84 = (*(v166 + 48))(v82, 1, v168);
    v80 = v172;
    if (v84 == 1)
    {
      (*(v79 + 8))(v81, v78);
      sub_10000B3A8(v82, &unk_1016AF8B0, &unk_1013A0700);
      v47 = v179;
      goto LABEL_18;
    }

    v102 = v82;
    v103 = v165;
    sub_10002911C(v102, v165, type metadata accessor for OwnedBeaconGroup);
    v104 = *(*(v103 + *(v83 + 40)) + 16);
    if (v104 > 0xFF)
    {
      __break(1u);
    }

    else
    {
      v105 = v164;
      if (v104 != 1)
      {
        v118 = sub_100B0E7A8(v76);
        sub_100AC1584(v179, v105);
        v119 = v163;
        v120 = (*(v162 + 48))(v105, 1, v163);
        if (v120 == 1)
        {
          sub_10000B3A8(v105, &unk_1016AF8C0, &unk_1013A07A0);
        }

        else
        {
          v126 = v159;
          sub_10002911C(v105, v159, type metadata accessor for BeaconProductInfoRecord);
          v127 = *(v126 + *(v119 + 84));
          if (v127)
          {
            v128 = *(v127 + 16) + 1;
            while (--v128)
            {
              v129 = v127 + 64;
              v130 = *(v127 + 32);
              v127 += 64;
              if (v118 == v130)
              {
                v131 = v83;
                v132 = *(v129 - 16);
                v133 = *(v129 - 8);
                v134 = *v129;
                v135 = *(v129 + 16);
                v136 = v165;
                v137 = (v165 + *(v131 + 36));
                v138 = v137[1];
                v182 = *v137;
                v183 = v138;

                v139._countAndFlagsBits = 2108704;
                v139._object = 0xE300000000000000;
                String.append(_:)(v139);

                v140._countAndFlagsBits = v133;
                v140._object = v134;
                String.append(_:)(v140);

                swift_bridgeObjectRelease_n();

                v75 = v182;
                (*(v79 + 8))(v169, v78);
                sub_100022C40(v76, type metadata accessor for OwnedBeaconRecord);
                sub_100022C40(v159, type metadata accessor for BeaconProductInfoRecord);
                sub_100022C40(v62, type metadata accessor for BeaconNamingRecord);
                v99 = type metadata accessor for OwnedBeaconGroup;
                v100 = v136;
                goto LABEL_25;
              }
            }
          }

          sub_100022C40(v126, type metadata accessor for BeaconProductInfoRecord);
        }

        v141 = v160;
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v176 = v62;
        v142 = type metadata accessor for Logger();
        sub_1000076D4(v142, qword_10177BA08);
        v143 = v178;
        (*(v178 + 16))(v141, v179, v78);
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v182 = v147;
          *v146 = 141558275;
          *(v146 + 4) = 1752392040;
          *(v146 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v148 = dispatch thunk of CustomStringConvertible.description.getter();
          v150 = v149;
          v151 = *(v143 + 8);
          v151(v141, v78);
          v152 = sub_1000136BC(v148, v150, &v182);
          v76 = v173;

          *(v146 + 14) = v152;
          _os_log_impl(&_mh_execute_header, v144, v145, "groupedBeaconDisplayName: No product info or partInfo for %{private,mask.hash}s.", v146, 0x16u);
          sub_100007BAC(v147);
          v81 = v169;

          v83 = v168;
        }

        else
        {

          v151 = *(v143 + 8);
          v151(v141, v78);
        }

        v153 = v165;
        v154 = (v165 + *(v83 + 36));
        v155 = v154[1];
        v182 = *v154;
        v183 = v155;

        v156._countAndFlagsBits = 2108704;
        v156._object = 0xE300000000000000;
        String.append(_:)(v156);
        v157 = v176;
        String.append(_:)(*&v176[*(v174 + 32)]);
        v75 = v182;
        v151(v81, v78);
        sub_100022C40(v76, type metadata accessor for OwnedBeaconRecord);
        sub_100022C40(v157, type metadata accessor for BeaconNamingRecord);
        v99 = type metadata accessor for OwnedBeaconGroup;
        v100 = v153;
        goto LABEL_25;
      }

      if (qword_101694BE8 == -1)
      {
        goto LABEL_31;
      }
    }

    swift_once();
LABEL_31:
    v106 = type metadata accessor for Logger();
    sub_1000076D4(v106, qword_10177BA08);
    v107 = v161;
    (*(v79 + 16))(v161, v179, v78);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v182 = v111;
      *v110 = 141558275;
      *(v110 + 4) = 1752392040;
      *(v110 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      v114 = v113;
      v115 = *(v79 + 8);
      v115(v107, v78);
      v116 = sub_1000136BC(v112, v114, &v182);

      *(v110 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v108, v109, "groupedBeaconDisplayName: Beacon %{private,mask.hash}s is from a single group.", v110, 0x16u);
      sub_100007BAC(v111);

      v83 = v168;

      v115(v169, v78);
      v117 = v173;
    }

    else
    {

      v121 = *(v79 + 8);
      v121(v107, v78);
      v121(v81, v78);
      v117 = v76;
    }

    sub_100022C40(v117, type metadata accessor for OwnedBeaconRecord);
    sub_100022C40(v62, type metadata accessor for BeaconNamingRecord);
    v122 = *(v83 + 36);
    v123 = v165;
    v124 = (v165 + v122);
    v75 = *v124;
    v125 = v124[1];

    v99 = type metadata accessor for OwnedBeaconGroup;
    v100 = v123;
    goto LABEL_25;
  }

  sub_10000B3A8(v40, &unk_1016B29E0, &unk_1013B70E0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000076D4(v49, qword_10177BA08);
  v50 = v177;
  v51 = v178;
  v52 = v176;
  (*(v178 + 16))(v176, v47, v177);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v182 = v56;
    *v55 = 141558275;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    (*(v51 + 8))(v52, v50);
    v60 = sub_1000136BC(v57, v59, &v182);

    *(v55 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "groupedBeaconDisplayName: No beacon naming record for beacon %{private,mask.hash}s", v55, 0x16u);
    sub_100007BAC(v56);
  }

  else
  {

    (*(v51 + 8))(v52, v50);
  }

  return 0;
}

uint64_t sub_100A906A4(char a1, const char *a2, void *a3)
{
  v6 = v3;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177BA08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, a2, v11, 8u);
  }

  v12 = v6 + *a3;
  ThrottledDarwinPoster.post(bypassRateLimit:)(a1 & 1);
  if (v13)
  {
  }

  type metadata accessor for Transaction();
  return static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100A907FC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v13, v9);
  aBlock[4] = sub_100B22B70;
  v22 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101646650;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v4, v1);
  (*(v5 + 8))(v8, v18);
}

uint64_t sub_100A90B94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0;
  v6 = *(v0 + 168);
  if (qword_101694E08 != -1)
  {
LABEL_14:
    swift_once();
  }

  v7 = type metadata accessor for URL();
  v8 = sub_1000076D4(v7, qword_10177BF38);
  v9 = sub_100AF4FC0(v8, sub_1006011CC, sub_100FFDCB0);
  v10 = v9;
  v11 = 0;
  v12 = v9 + 64;
  v13 = 1 << v9[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 8);
  v16 = (v13 + 63) >> 6;
  v20 = v2 + 16;
  if (v15)
  {
    while (1)
    {
      v17 = v11;
LABEL_10:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v2 + 16))(v5, *(v10 + 6) + *(v2 + 72) * (v18 | (v17 << 6)), v1);
      sub_100ACF470(v5);
      (*(v2 + 8))(v5, v1);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
    }

    v15 = *&v12[8 * v17];
    ++v11;
    if (v15)
    {
      v11 = v17;
      goto LABEL_10;
    }
  }
}

void *sub_100A90DAC()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for URL();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord();
  v40 = *(v13 - 8);
  v14 = *(v40 + 64);
  __chkstk_darwin(v13);
  v48 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BeaconStoreFileRecord();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v50 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v1 + 168);
  if (qword_101694E78 != -1)
  {
    swift_once();
  }

  v46 = sub_1000076D4(v6, qword_10177C070);
  v20 = sub_100B3A0F8(v46);
  v21 = v20[2];
  if (v21)
  {
    v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v39 = v20;
    v23 = v20 + v22;
    v24 = *(v16 + 20);
    v54 = (v52 + 48);
    v55 = v24;
    v53 = *(v17 + 72);
    v42 = (v52 + 8);
    v43 = (v52 + 32);
    v52 = v40 + 56;
    v41 = (v40 + 48);
    v51 = _swiftEmptyArrayStorage;
    v25 = v50;
    v44 = v13;
    v45 = v5;
    while (1)
    {
      sub_100022A54(v23, v25, type metadata accessor for BeaconStoreFileRecord);
      sub_1000D2A70(v25 + v55, v5, &unk_101696AC0, &qword_101390A60);
      if ((*v54)(v5, 1, v6) == 1)
      {
        sub_100022C40(v25, type metadata accessor for BeaconStoreFileRecord);
        sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
        (*v52)(v12, 1, 1, v13);
      }

      else
      {
        v26 = v12;
        v27 = v49;
        (*v43)(v49, v5, v6);
        v28 = objc_autoreleasePoolPush();
        v29 = *(v47 + 16);
        __chkstk_darwin(v28);
        *(&v39 - 4) = v27;
        *(&v39 - 3) = v30;
        *(&v39 - 2) = v46;
        sub_1000BC4D4(&qword_101696920, &unk_10138B200);
        v25 = v50;
        OS_dispatch_queue.sync<A>(execute:)();
        objc_autoreleasePoolPop(v28);
        sub_100022C40(v25, type metadata accessor for BeaconStoreFileRecord);
        (*v42)(v27, v6);
        if (v57)
        {
          sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
          v12 = v26;
          v13 = v44;
          v31 = swift_dynamicCast();
          (*v52)(v12, v31 ^ 1u, 1, v13);
        }

        else
        {
          sub_10000B3A8(v56, &qword_101696920, &unk_10138B200);
          v12 = v26;
          v32 = v26;
          v13 = v44;
          (*v52)(v32, 1, 1, v44);
        }

        v33 = (*v41)(v12, 1, v13);
        v5 = v45;
        if (v33 != 1)
        {
          sub_10002911C(v12, v48, type metadata accessor for OwnedBeaconRecord);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v34 = v51;
          }

          else
          {
            v34 = sub_100A5C050(0, v51[2] + 1, 1, v51);
          }

          v36 = v34[2];
          v35 = v34[3];
          if (v36 >= v35 >> 1)
          {
            v34 = sub_100A5C050(v35 > 1, v36 + 1, 1, v34);
          }

          v34[2] = v36 + 1;
          v37 = (*(v40 + 80) + 32) & ~*(v40 + 80);
          v51 = v34;
          sub_10002911C(v48, v34 + v37 + *(v40 + 72) * v36, type metadata accessor for OwnedBeaconRecord);
          goto LABEL_7;
        }
      }

      sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
LABEL_7:
      v23 += v53;
      if (!--v21)
      {

        return v51;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100A9146C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for OwnedBeaconRecord();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v11 + 44) + 8) >> 60 != 15)
  {
    return sub_100022A54(a1, a4, type metadata accessor for OwnedBeaconRecord);
  }

  v42 = v13;
  v43 = v12;
  v49 = a4;
  v15 = dispatch_group_create();
  v16 = swift_allocBox();
  v47 = v17;
  sub_100022A54(a1, v17, type metadata accessor for OwnedBeaconRecord);
  dispatch_group_enter(v15);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v45 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  v44 = v19;
  sub_100017D5C(a2, a3);
  v48 = v16;

  v46 = v15;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100008C00();
  *(v20 + 32) = 0x65736C6166;
  *(v20 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v21 = objc_autoreleasePoolPush();
  sub_101121B40(a1);
  v23 = v22;
  v41 = v22;
  objc_autoreleasePoolPop(v21);
  v39 = v4;
  v24 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v50 = type metadata accessor for OwnedBeaconRecord;
  sub_100022A54(a1, v14, type metadata accessor for OwnedBeaconRecord);
  v25 = *(v43 + 80);
  v40 = a1;
  v26 = v42;
  v27 = v14;
  v28 = swift_allocObject();
  v29 = v45;
  *(v28 + 16) = sub_100B27190;
  *(v28 + 24) = v29;
  v43 = type metadata accessor for OwnedBeaconRecord;
  sub_10002911C(v27, v28 + ((v25 + 32) & ~v25), type metadata accessor for OwnedBeaconRecord);

  sub_100FDCA40(v23, sub_100B271A0, v28);

  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 16) = sub_100B27198;
  *(v30 + 24) = v31;

  Future.addFailure(block:)();

  sub_100022A54(v40, v27, v50);
  v32 = (v25 + 16) & ~v25;
  v33 = (v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_10002911C(v27, v34 + v32, v43);
  *(v34 + v33) = v39;
  v35 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_100B27198;
  v35[1] = v31;

  Future.addSuccess(block:)();

  v36 = v46;
  OS_dispatch_group.wait()();

  v37 = v47;
  swift_beginAccess();
  sub_100022A54(v37, v49, v50);
}

uint64_t sub_100A919F8()
{
  _StringGuts.grow(_:)(31);

  type metadata accessor for UUID();
  sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A737265657020;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  v3 = type metadata accessor for BeaconStatus(0);
  v4 = v3;
  if (*(v0 + *(v3 + 36)))
  {
    v5 = *(v0 + *(v3 + 36));
  }

  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);

  v6 = Set.description.getter();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x203A6574616420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11 = v0 + *(v4 + 24);
  v12._countAndFlagsBits = Date.localISO8601.getter();
  String.append(_:)(v12);

  return 0x64496E6F63616562;
}

Swift::Int sub_100A91BB8(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = *(a1 + 24);
  type metadata accessor for Date();
  sub_10000768C(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100A91CA4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(a2 + 24);
  type metadata accessor for Date();
  sub_10000768C(&unk_101698070, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100A91D78(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(a2 + 24);
  type metadata accessor for Date();
  sub_10000768C(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100A91EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v6 = *(a3 + 24), (static Date.== infix(_:_:)()))
  {
    return *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A91F4C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - v4;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v6 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074FE4(v14[1]);
  v8 = v7;

  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v8;

  sub_1008CE048(0, 0, v5, &unk_1013D6B50, v11);

  sub_10000B3A8(v5, &qword_101698C00, &qword_10138B570);
  v10(v5, 1, 1, v9);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_100BB9ADC(0, 0, v5, &unk_1013D6B60, v12);

  return sub_10000B3A8(v5, &qword_101698C00, &qword_10138B570);
}

uint64_t sub_100A92198(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v5 + 40) = v8;
  *v8 = v5;
  v8[1] = sub_100A9225C;

  return daemon.getter();
}

uint64_t sub_100A9225C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100A92438;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A92438(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;

  v8 = *(v4 + 48);
  if (v1)
  {

    v9 = sub_100A9258C;
  }

  else
  {

    *(v5 + 64) = a1;
    v9 = sub_100A926A8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100A9258C()
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor!", v4, 2u);
  }

  v5 = *(v0 + 32);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100A926A8()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[3];
  v0[9] = type metadata accessor for XPCActivity();
  static DispatchQoS.background.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_100A927E0;
  v7 = v0[8];
  v8 = v0[4];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000022, 0x800000010136CF90, v8, &unk_1013D6B70, v4, &unk_1013D6B80, v7);
}

uint64_t sub_100A927E0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100A928E0, 0, 0);
}

uint64_t sub_100A928E0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + 48);
  *(v2 + 48) = v0[11];

  static DispatchQoS.background.getter();
  v4 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_100A929F4;
  v6 = v0[9];
  v7 = v0[4];
  v8 = v0[2];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000012, 0x800000010136CFC0, v7, &unk_1013D6B90, v8, &unk_1013D6B98, 0);
}

uint64_t sub_100A929F4(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100A92AF4, 0, 0);
}

uint64_t sub_100A92AF4()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = *(v2 + 32);
  *(v2 + 32) = v0[13];

  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100A92B74(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = type metadata accessor for XPCActivity.Criteria.Options();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v7 = type metadata accessor for XPCActivity.Priority();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v11 = type metadata accessor for XPCActivity.Criteria();
  *(v3 + 104) = v11;
  v12 = *(v11 - 8);
  *(v3 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100A92D28, 0, 0);
}

uint64_t sub_100A92D28()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_1000D2A70(*(v0 + 32), v3, &qword_10169E370, &qword_1013BA3F0);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 104);
    v20 = *(v0 + 24);
    v21 = *(v18 + 32);
    v21(v17, *(v0 + 96), v19);
    v21(v20, v17, v19);
    (*(v18 + 56))(v20, 0, 1, v19);
    goto LABEL_7;
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  sub_10000B3A8(*(v0 + 96), &qword_10169E370, &qword_1013BA3F0);
  result = (*(v6 + 104))(v4, enum case for XPCActivity.Priority.utility(_:), v5);
  v9 = v7 * 0.5;
  if (COERCE__INT64(fabs(v7 * 0.5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v10 = *(v0 + 112);
  v28 = *(v0 + 88);
  v29 = *(v0 + 104);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);
  v27 = *(v0 + 24);
  sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
  v14 = *(v11 + 72);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138B360;
  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  static XPCActivity.Criteria.Options.requiresClassC.getter();
  static XPCActivity.Criteria.Options.allowBattery.getter();
  *(v0 + 16) = v16;
  sub_10000768C(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options);
  sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
  sub_1000041A4(&qword_10169E388, &qword_10169E380, &unk_1013B8530);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
  (*(v10 + 56))(v27, 0, 1, v29);
LABEL_7:
  v22 = *(v0 + 120);
  v23 = *(v0 + 88);
  v24 = *(v0 + 96);
  v25 = *(v0 + 64);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100A93070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for XPCActivity.State();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100A93134, 0, 0);
}

uint64_t sub_100A93134()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for XPCActivity.State.checkIn(_:) && v4 != enum case for XPCActivity.State.wait(_:))
  {
    if (v4 == enum case for XPCActivity.State.run(_:))
    {
      if (sub_100B1BC50())
      {
        if (qword_101694BF0 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_1000076D4(v9, qword_10177BA20);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Calling postMetrics()", v12, 2u);
        }

        v13 = swift_task_alloc();
        v0[8] = v13;
        *v13 = v0;
        v13[1] = sub_100A93504;
        v14 = v0[4];

        return sub_100A936D4();
      }

      v20 = v0[2];
      type metadata accessor for XPCActivity();
      sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity);
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v21;
      v19 = sub_100A9366C;
      goto LABEL_21;
    }

    if (v4 == enum case for XPCActivity.State.defer(_:))
    {
      v15 = v0[2];
      type metadata accessor for XPCActivity();
      sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity);
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      v19 = sub_100A9349C;
LABEL_21:

      return _swift_task_switch(v19, v16, v18);
    }

    if (v4 != enum case for XPCActivity.State.continue(_:) && v4 != enum case for XPCActivity.State.done(_:) && v4 != enum case for XPCActivity.State.invalidated(_:))
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
    }
  }

  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100A9349C()
{
  v1 = *(v0 + 16);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1000EFE28, 0, 0);
}

uint64_t sub_100A93504()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = *(v1 + 16);
  type metadata accessor for XPCActivity();
  sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A9366C, v5, v4);
}

uint64_t sub_100A9366C()
{
  v1 = *(v0 + 16);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_1008CD60C, 0, 0);
}

uint64_t sub_100A936D4()
{
  v1[19] = v0;
  v2 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for StableIdentifier();
  v1[22] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v1[29] = v9;
  *v9 = v1;
  v9[1] = sub_100A93850;

  return daemon.getter();
}

uint64_t sub_100A93850(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v12 = *v1;
  *(v3 + 240) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 248) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FMIPService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B1100, type metadata accessor for FMIPService);
  *v6 = v12;
  v6[1] = sub_100A93A2C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A93A2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  v7 = *(v3 + 240);
  v8 = *(v3 + 152);
  if (v1)
  {

    v9 = sub_100A94460;
  }

  else
  {

    v9 = sub_100A93B90;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100A93B90()
{
  v1 = *(v0 + 152);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_100A93C7C;
  v5 = *(v0 + 152);

  return unsafeBlocking<A>(context:_:)(v0 + 136, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_100A93C7C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_100A93D94, v2, 0);
}

uint64_t sub_100A93D94()
{
  result = *(v0 + 136);
  v34 = *(result + 16);
  if (v34)
  {
    v2 = 0;
    v31 = *(v0 + 184) + 8;
    v32 = *(v0 + 200);
    v33 = *(v0 + 208);
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v4 = *(v0 + 224);
      v5 = *(v0 + 192);
      v6 = *(v0 + 176);
      v7 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v8 = result;
      v9 = *(v33 + 72);
      sub_100022A54(result + v7 + v9 * v2, v4, type metadata accessor for OwnedBeaconRecord);
      v10 = *(v32 + 24);
      sub_100022A54(v4 + v10, v5, type metadata accessor for StableIdentifier);
      LODWORD(v6) = swift_getEnumCaseMultiPayload();
      sub_100022C40(v5, type metadata accessor for StableIdentifier);
      if (v6 == 1)
      {
        goto LABEL_12;
      }

      v11 = *(v0 + 176);
      sub_100022A54(v4 + v10, *(v0 + 184), type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v14 = v31;
        v15 = *(v31 + v13[12]);

        v16 = *(v31 + v13[16]);

        v17 = *(v31 + v13[20]);

        v18 = v13[28];
LABEL_11:
        v22 = *(v14 + v18);
        v23 = *(v0 + 184);

        v24 = type metadata accessor for UUID();
        (*(*(v24 - 8) + 8))(v23, v24);
LABEL_12:
        sub_10002911C(*(v0 + 224), *(v0 + 216), type metadata accessor for OwnedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          sub_10112434C(v25 > 1, v26 + 1, 1);
        }

        v27 = *(v0 + 216);
        _swiftEmptyArrayStorage[2] = v26 + 1;
        sub_10002911C(v27, _swiftEmptyArrayStorage + v7 + v26 * v9, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      v3 = *(v0 + 184);
      sub_100022C40(*(v0 + 224), type metadata accessor for OwnedBeaconRecord);
      sub_100022C40(v3, type metadata accessor for StableIdentifier);
LABEL_4:
      ++v2;
      result = v8;
      if (v34 == v2)
      {
        goto LABEL_17;
      }
    }

    v19 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v14 = v31;
    v20 = *(v31 + v19[12]);

    v21 = *(v31 + v19[16]);

    v18 = v19[20];
    goto LABEL_11;
  }

LABEL_17:
  v28 = *(v0 + 264);

  *(v0 + 144) = &_swiftEmptySetSingleton;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  sub_100A81D44((v0 + 16), _swiftEmptyArrayStorage, (v0 + 144), (v0 + 64));

  v29 = swift_task_alloc();
  *(v0 + 280) = v29;
  *v29 = v0;
  v29[1] = sub_100A94170;
  v30 = *(v0 + 256);

  return sub_10012FF84(v0 + 64);
}

uint64_t sub_100A94170()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_100A945B4;
  }

  else
  {
    v6 = sub_100A9429C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100A9429C()
{
  v1 = v0[21];
  Date.init()();
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  if (qword_101694C30 != -1)
  {
    swift_once();
  }

  v3 = v0[32];
  v4 = v0[20];
  v5 = v0[21];
  v6 = sub_1000BC4D4(&qword_1016B55E0, &qword_1013D6BB8);
  sub_1000076D4(v6, qword_1016B4938);
  sub_1000D2A70(v5, v4, &unk_101696900, &unk_10138B1E0);
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();

  sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
  v7 = v0[18];

  v9 = v0[27];
  v8 = v0[28];
  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[20];
  v12 = v0[21];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100A94460()
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing FMIPService!", v4, 2u);
  }

  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[20];
  v9 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100A945B4()
{
  if (qword_101694BF0 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BA20);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[36];
  v7 = v0[32];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error from postMetrics: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[18];

  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[20];
  v16 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100A947AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1000BC4D4(&qword_1016AF9F0, &qword_1013CAFE8);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016AF9F8, &qword_1013CAFF0);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v4[11] = v12;
  *v12 = v4;
  v12[1] = sub_100A94910;

  return daemon.getter();
}

uint64_t sub_100A94910(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  v3[12] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[13] = v6;
  v7 = type metadata accessor for Daemon();
  v3[14] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100A94AF0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A94AF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {
    v7 = v4[12];

    v8 = v4[10];
    v9 = v4[7];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_100A94C58, a1, 0);
  }
}

uint64_t sub_100A94C58()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  sub_10001B108();
  v0[17] = v5;
  v0[18] = v2;
  sub_10000768C(&qword_1016969E0, &type metadata accessor for Daemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_100A94EF8;
  }

  else
  {
    v8 = sub_100A94D38;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100A94D38()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_100A94DAC, 0, 0);
}

uint64_t sub_100A94DAC()
{
  v1 = v0[18];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = *(*(v0[17] + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_productInfoManager) + 16);

  OS_dispatch_queue.sync<A>(execute:)();

  AsyncStream.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v0[19] = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconProductInfoRecordCache;
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_100A94F7C;
  v9 = v0[10];
  v10 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v10);
}

uint64_t sub_100A94EF8()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[18];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100A94F7C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100A95078, 0, 0);
}

uint64_t sub_100A95078()
{
  if (v0[2])
  {
    v1 = v0[3];
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177BA08);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Flushing beaconProductInfoRecordCache", v5, 2u);
    }

    v6 = v0[19];
    v7 = v0[4];

    v8 = *(v7 + v6);
    os_unfair_lock_lock((v8 + 24));
    v9 = *(v8 + 16);

    *(v8 + 16) = _swiftEmptyDictionarySingleton;
    os_unfair_lock_unlock((v8 + 24));

    v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_100A94F7C;
    v12 = v0[10];
    v13 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v13);
  }

  else
  {
    v14 = v0[17];
    v15 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100A952A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000BC4D4(&unk_10169BA88, &qword_101395670) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100A95344, 0, 0);
}

uint64_t sub_100A95344()
{
  v1 = v0[2];
  v2 = *(v1 + 40);

  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));

  v3 = *(v1 + 32);
  v0[4] = v3;
  if (v3)
  {
    v4 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
    v11 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_100A954D0;
    v6 = v0[3];

    return v11(v6);
  }

  else
  {
    v8 = v0[3];
    v9 = type metadata accessor for XPCActivity.State();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_10000B3A8(v8, &unk_10169BA88, &qword_101395670);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100A954D0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1008BFCD8, 0, 0);
}

uint64_t sub_100A955E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for XPCActivity.Criteria.Options();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for XPCActivity.Priority();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = type metadata accessor for XPCActivity.Criteria();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100A9579C, 0, 0);
}

uint64_t sub_100A9579C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_1000D2A70(v0[4], v3, &qword_10169E370, &qword_1013BA3F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_10000B3A8(v0[12], &qword_10169E370, &qword_1013BA3F0);
    v5 = *(v4 + 40);

    os_unfair_lock_lock((v5 + 20));
    v6 = *(v5 + 16);
    os_unfair_lock_unlock((v5 + 20));

    v7 = v0[13];
    v8 = v0[14];
    if (v6)
    {
      v9 = v0[8];
      v10 = v0[6];
      v11 = v0[7];
      v26 = v0[3];
      (*(v0[10] + 104))(v0[11], enum case for XPCActivity.Priority.maintenance(_:), v0[9]);
      sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10138BBE0;
      static XPCActivity.Criteria.Options.requiresNetwork.getter();
      static XPCActivity.Criteria.Options.requiresClassC.getter();
      v0[2] = v14;
      sub_10000768C(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options);
      sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
      sub_1000041A4(&qword_10169E388, &qword_10169E380, &unk_1013B8530);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
      (*(v8 + 56))(v26, 0, 1, v7);
    }

    else
    {
      (*(v8 + 56))(v0[3], 1, 1, v7);
    }
  }

  else
  {
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[13];
    v18 = v0[3];
    v19 = *(v16 + 32);
    v19(v15, v0[12], v17);
    v19(v18, v15, v17);
    (*(v16 + 56))(v18, 0, 1, v17);
  }

  v20 = v0[15];
  v21 = v0[11];
  v22 = v0[12];
  v23 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100A95AB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for XPCActivity.State();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100A95B70, 0, 0);
}

uint64_t sub_100A95B70()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for XPCActivity.State.run(_:))
  {
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_100A95D54;

    return daemon.getter();
  }

  else if (v4 == enum case for XPCActivity.State.defer(_:))
  {
    v7 = v0[2];
    type metadata accessor for XPCActivity();
    sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100A963F4, v9, v8);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    v10 = v0[6];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100A95D54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100A95F30;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A95F30(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 72);
  v7 = *v2;

  v8 = *(v4 + 64);
  if (v1)
  {

    v9 = sub_100A96090;
    v10 = 0;
  }

  else
  {

    *(v5 + 80) = a1;
    v9 = sub_100A96204;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100A96090()
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor!", v4, 2u);
  }

  v5 = *(v0 + 16);
  type metadata accessor for XPCActivity();
  sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A9632C, v7, v6);
}

uint64_t sub_100A96204()
{
  v1 = *(v0 + 80);
  sub_100E6D7E0();

  return _swift_task_switch(sub_100A9626C, 0, 0);
}

uint64_t sub_100A9626C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 16);
  type metadata accessor for XPCActivity();
  sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A9632C, v4, v3);
}

uint64_t sub_100A9632C()
{
  v1 = *(v0 + 16);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100A96394, 0, 0);
}

uint64_t sub_100A96394()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A963F4()
{
  v1 = *(v0 + 16);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100B27E38, 0, 0);
}

unint64_t sub_100A9645C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B16E04(*a1);
  *a2 = result;
  return result;
}

CKRecordZoneID sub_100A96488()
{
  sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._object = v1;
  v2._countAndFlagsBits = 0x74536E6F63616542;
  v2._object = 0xEB0000000065726FLL;
  result.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v2, v0).super.isa;
  qword_10177BA50 = result.super.isa;
  return result;
}

uint64_t sub_100A96500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  if (*a1)
  {
    v14 = *a1;
  }

  else
  {
    v21 = *(a2 + 216);
    v15 = *(a2 + 192);
    v16 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v20[2] = "Could not restore record %@";
    v20[3] = v16;
    (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    v20[1] = sub_10000768C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    type metadata accessor for CloudKitCoordinator();
    v18 = swift_allocObject();

    v14 = sub_100B1C0B4(v21, a2, v15, v17, v18);

    *v22 = v14;
  }

  *v23 = v14;
}

uint64_t sub_100A96828()
{
  v1 = *(v0 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (*(v7 + 192) == 1 || *(v7 + 144) && (v2 = *(v7 + 144), , v3 = sub_10050252C(), , (v3 & 1) != 0))
  {

    v4 = 1;
  }

  else
  {
    v5 = sub_10047B36C();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

id sub_100A96904()
{
  v1 = OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___locationStateCapture;
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___locationStateCapture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___locationStateCapture);
  }

  else
  {
    v4 = objc_allocWithZone(FMStateCapture);

    v5 = [v4 init];
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100B26C74;
    *(v6 + 24) = v0;
    v11[4] = sub_100B26C7C;
    v11[5] = v6;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10015013C;
    v11[3] = &unk_1016480B8;
    v7 = _Block_copy(v11);

    [v5 setStateCaptureBlock:v7];
    _Block_release(v7);

    v8 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_100A96A60@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 168);
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for URL();
  v5 = sub_1000076D4(v4, qword_10177BF38);
  result = sub_100AF4FC0(v5, sub_1006011CC, sub_100FFDCB0);
  *a2 = result;
  return result;
}

uint64_t sub_100A96AF8()
{
  v1 = OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___sharedBeaconKeysUpdatedPublisher;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___sharedBeaconKeysUpdatedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___sharedBeaconKeysUpdatedPublisher);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v4 = *(v8 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_sharedBeaconKeysUpdatedSubject);

    sub_1000BC4D4(&qword_1016B55C0, &qword_101411AA0);
    sub_1000041A4(&qword_1016B55C8, &qword_1016B55C0, &qword_101411AA0);
    v5 = v0;
    v2 = Publisher.eraseToAnyPublisher()();

    v6 = *(v0 + v1);
    *(v5 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100A96C40()
{
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___recordPublisher))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___recordPublisher);
  }

  else
  {
    v1 = *(*(v0 + 168) + 56);
    *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___recordPublisher) = v1;
    swift_retain_n();
  }

  return v1;
}

void *sub_100A96C98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v124 = a4;
  v134 = a2;
  v135 = a3;
  v136 = a1;
  v131 = *v4;
  v5 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v125 = &v118 - v7;
  v128 = sub_1000BC4D4(&qword_1016B5608, &qword_1013D6BE8);
  v127 = *(v128 - 8);
  v8 = *(v127 + 64);
  __chkstk_darwin(v128);
  v126 = &v118 - v9;
  v144 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DispatchQoS();
  v130 = *(v133 - 8);
  v13 = *(v130 + 64);
  v14 = __chkstk_darwin(v133);
  v129 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v118 - v16;
  v143 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v143 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v143);
  v21 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0x74536E6F63616542;
  v4[3] = 0xEB0000000065726FLL;
  v4[4] = 0;
  sub_1000BC4D4(&qword_1016B5610, &unk_1013D6BF0);
  v22 = swift_allocObject();
  *(v22 + 20) = 0;
  *(v22 + 16) = 0;
  v4[5] = v22;
  v4[6] = 0;
  LOBYTE(aBlock[0]) = 0;
  v23 = sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v4[7] = CurrentValueSubject.init(_:)();
  v137 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v141 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v26 = *(v18 + 104);
  v142 = v18 + 104;
  v145 = v26;
  (v26)(v21);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v27 = sub_10000768C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v139 = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v138 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  v140 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v118 = v21;
  v4[9] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[11] = 0;
  v119 = v4;
  v123 = ".searchpartyd.BeaconStore";
  v28 = v21;
  v29 = v141;
  v30 = v143;
  v31 = v145;
  v145(v28, v141, v143);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v118;
  v4[12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v123 = "parationMonitoringWorkQueue";
  v31(v32, v29, v30);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v34 = v119;
  v119[13] = v33;
  v34[14] = 0;
  v123 = "parationMonitoringDataQueue";
  v34[15] = 0;
  v34[16] = 0;
  v35 = v141;
  v145(v32, v141, v30);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34[18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v145(v32, v35, v143);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = v32;
  v34[19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v37 = qword_10177BA50;
  v34[20] = qword_10177BA50;
  v34[22] = 0;
  sub_1000BC4D4(&qword_1016B5618, &unk_1013D6C00);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 16) = 0;
  v34[26] = &_swiftEmptySetSingleton;
  v123 = (v34 + 26);
  v34[23] = v38;
  v39 = SPBeaconsChangedNotification;
  v40 = v37;
  v41 = v39;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v42 = SPUnknownBeaconsChangedNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v43 = SPUnknownBeaconsSetChangedNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v44 = SPSeparationMonitoringBeaconsChangedNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v45 = SPSeparationMonitoringStateChangedNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v46 = SPAccessoryDidPairNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_analyticsXPCActivity) = 0;
  v47 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
  v145(v32, v141, v143);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v34 + v47) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_statusForBeacon) = _swiftEmptyDictionarySingleton;
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_attachEventForBeacon) = _swiftEmptyDictionarySingleton;
  PressuredExitTransactionManager.init()();
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___locationStateCapture) = 0;
  v48 = (v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler);
  *v48 = 0;
  v48[1] = 0;
  v49 = (v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged);
  *v49 = 0;
  v49[1] = 0;
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer) = 0;
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___sharedBeaconKeysUpdatedPublisher) = 0;
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage____beaconKeyManager) = 0;
  v50 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
  v122 = sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v34 + v50) = v51;
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___recordPublisher) = 0;
  v52 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_estimatedLocationSubject;
  v53 = sub_1000BC4D4(&qword_1016B28A8, &qword_1013D3768);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  *(v34 + v52) = PassthroughSubject.init()();
  v56 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject;
  v120 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject;
  v57 = sub_1000BC4D4(&qword_1016B5620, &qword_1013D6C10);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  *(v34 + v56) = PassthroughSubject.init()();
  v60 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_changeSetSequence;
  type metadata accessor for Sequencer();
  *(v34 + v60) = Sequencer.__allocating_init(name:softTimeout:hardTimeout:)();
  v61 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper;
  _s22SharedBeaconUUIDMapperCMa();
  v62 = swift_allocObject();
  *(v62 + 16) = _swiftEmptyDictionarySingleton;
  *(v62 + 24) = _swiftEmptyDictionarySingleton;
  *(v34 + v61) = v62;
  v63 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_hiddenBeaconCoordinator;
  _s23HiddenBeaconCoordinatorCMa();
  v64 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v34 + v63) = v64;
  *(v64 + 112) = &_swiftEmptySetSingleton;
  v65 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueue;
  v145(v36, v141, v143);
  v132 = v17;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v121 = v12;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v66 = v36;
  *(v34 + v65) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedOwnedBeaconRecords) = 0;
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedSharedBeaconRecords) = 0;
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconNamingRecordCache) = _swiftEmptyDictionarySingleton;
  v67 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconProductInfoRecordCache;
  sub_1000BC4D4(&qword_1016B5628, &qword_1013D6C18);
  v68 = swift_allocObject();
  *(v68 + 24) = 0;
  *(v68 + 16) = _swiftEmptyDictionarySingleton;
  *(v34 + v67) = v68;
  v69 = v34[9];
  v70 = type metadata accessor for QueueSynchronizer();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  v73 = v69;
  v34[10] = QueueSynchronizer.init(queue:)();
  v74 = *(v34 + v65);
  v75 = *(v70 + 48);
  v76 = *(v70 + 52);
  swift_allocObject();
  v77 = v74;
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer) = QueueSynchronizer.init(queue:)();
  v79 = v135;
  v78 = v136;
  v34[27] = v136;
  v34[24] = v134;
  v34[25] = v79;
  type metadata accessor for BeaconStoreFileManager();
  swift_allocObject();
  swift_retain_n();

  v34[21] = sub_100B29BB8(v78);
  v80 = v34[7];
  sub_1000BC4D4(&qword_1016B5630, &unk_1013D6C20);
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  v34[8] = v81;
  v82 = v124;
  v34[17] = v124;
  aBlock[0] = *(v34 + v120);
  sub_1000041A4(&qword_1016B5638, &qword_1016B5620, &qword_1013D6C10);

  v124 = v82;
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher) = Publisher.eraseToAnyPublisher()();
  aBlock[0] = *(v79 + 64);
  v147 = v34[9];
  v83 = v147;
  v84 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v85 = v125;
  (*(*(v84 - 8) + 56))(v125, 1, 1, v84);

  v86 = v83;
  sub_1000BC4D4(&qword_1016B2A78, &qword_1013EACA0);
  sub_1000041A4(&unk_1016B2A80, &qword_1016B2A78, &qword_1013EACA0);
  sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
  v87 = v126;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v85, &unk_1016B0FE0, &unk_101391980);

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016B5640, &qword_1016B5608, &qword_1013D6BE8);
  v88 = v128;
  Publisher<>.sink(receiveValue:)();

  (*(v127 + 8))(v87, v88);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  type metadata accessor for InstructionEventCoalescer();
  swift_allocObject();

  v90 = sub_100E92444(v89);

  v91 = *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer);
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer) = v90;

  v128 = 0x800000010136D250;
  v92 = v132;
  static DispatchQoS.background.getter();
  v93 = swift_allocObject();
  *(v93 + 16) = v131;
  type metadata accessor for XPCActivity();
  v94 = swift_allocObject();
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  *(v94 + 40) = v95;
  swift_unknownObjectWeakInit();
  *(v94 + 88) = 0;
  *(v94 + 96) = 0;
  *(v94 + 104) = 0;
  v96 = v130;
  (*(v130 + 16))(v129, v92, v133);
  v145(v66, v141, v143);
  aBlock[0] = _swiftEmptyArrayStorage;

  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v94 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v94 + 24) = 0xD00000000000002BLL;
  *(v94 + 32) = v128;
  *(v94 + 48) = sub_100B27B88;
  *(v94 + 56) = v93;
  *(v94 + 64) = sub_100B27B90;
  *(v94 + 72) = v34;

  sub_100997398();

  (*(v96 + 8))(v132, v133);
  v97 = *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_analyticsXPCActivity);
  *(v34 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_analyticsXPCActivity) = v94;

  v98 = objc_opt_self();
  v99 = [v98 standardUserDefaults];
  v100 = String._bridgeToObjectiveC()();
  v101 = [v99 stringForKey:v100];

  if (v101)
  {
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v103;

    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    sub_1000076D4(v105, qword_10177BA08);

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      aBlock[0] = v109;
      *v108 = 136446210;
      v110 = sub_1000136BC(v102, v104, aBlock);

      *(v108 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v106, v107, "Previous daemon crashed during transaction: %{public}s", v108, 0xCu);
      sub_100007BAC(v109);
    }

    else
    {
    }

    v112 = [v98 standardUserDefaults];
    v113 = String._bridgeToObjectiveC()();
    [v112 setBool:1 forKey:v113];

    v114 = [v98 standardUserDefaults];
    v115 = String._bridgeToObjectiveC()();
    [v114 removeObjectForKey:v115];

    v111 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100A984E8;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100A985BC;
    aBlock[3] = &unk_101648770;
    v116 = _Block_copy(aBlock);
    AnalyticsSendEventLazy();

    _Block_release(v116);
  }

  else
  {

    v111 = v124;
  }

  return v34;
}

uint64_t sub_100A981C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100AA2958();
  }

  return result;
}

void sub_100A9821C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 == 2)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177BA08);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218496;
      *(v7 + 4) = 43200;
      *(v7 + 12) = 2048;
      *(v7 + 14) = 43200;
      *(v7 + 22) = 2048;
      *(v7 + 24) = 86400;
      _os_log_impl(&_mh_execute_header, v5, v6, "BeaconStore XPC criteria: delay %lld, gracePeriod %lld, interval %lld", v7, 0x20u);
    }

    v8 = xmmword_1013D6370;
    v9 = vdupq_n_s64(0xA8C0uLL);
    v3 = 257;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 8);
  }

  *a2 = v3;
  *(a2 + 8) = v9;
  *(a2 + 24) = v8;
}

void sub_100A9837C(uint64_t a1, uint64_t a2, char a3)
{
  Transaction.capture()();
  if (a3 == 3)
  {
    sub_1009971C0();
  }

  else if (a3 == 2)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177BA08);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "XPC activity fired for BeaconStore", v7, 2u);
    }

    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    sub_1009971E8();
  }
}

unint64_t sub_100A984E8()
{
  sub_1000BC4D4(&qword_1016B5648, &qword_1013D6C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x800000010136D330;
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  v1 = sub_10090AFFC(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_1016B5650, &qword_1013D6C38);
  return v1;
}

Class sub_100A985BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100A98658()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for CryptorRepairTool();
  v3 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v3[3] = v4;
  v3[4] = 0;
  v3[5] = sub_100B263F4;
  v3[6] = v2;
  v5 = sub_1000BC4D4(&qword_1016B55A8, &qword_1013D6AD0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v3[2] = KeyedThrottle.init(throttleInterval:)();
  v8 = *(v1 + 168);
  v9 = *(v8 + 32);
  *(v8 + 32) = v3;

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v15 & 1) == 0)
  {
    v11 = *(v1 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_100FD26B8();
    sub_100FD3164(1);
    sub_100FD3A30();
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }

  if (*(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer))
  {
    v12 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v13 = *(OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_publisher + 0x7365547265646E75);

    sub_100E9063C(v13);

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_1012CF9EC();

    sub_100B1B1AC(v14, v1);

    unsafeFromAsyncTask<A>(_:)();

    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A98A28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = type metadata accessor for Transaction();
    __chkstk_darwin(v1);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_100A98AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_100B26A24;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647E88;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v7, v4);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_100A98DE0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[9];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = type metadata accessor for Transaction();
    __chkstk_darwin(v12);
    *&v13[-16] = a2;
    *&v13[-8] = v3;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A98F8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_100A99020;

  return daemon.getter();
}

uint64_t sub_100A99020(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100A991FC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A991FC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;

  v8 = *(v4 + 32);
  if (v1)
  {

    v9 = sub_100A993BC;
  }

  else
  {

    *(v5 + 48) = a1;
    v9 = sub_100A99350;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100A99350()
{
  v1 = v0[2];
  v2 = *(v1 + 176);
  *(v1 + 176) = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100A993BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 176);
  *(v1 + 176) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100A99424(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100A994F0;

  return daemon.getter();
}

uint64_t sub_100A994F0(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = a1;

  type metadata accessor for Daemon();
  sub_10000768C(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A99648, v5, v4);
}

uint64_t sub_100A99648()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100A996BC, 0, 0);
}

uint64_t sub_100A996BC()
{
  if (qword_101695240 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = qword_10177C648;
  v3 = swift_allocObject();
  v0[7] = v3;
  swift_weakInit();
  v4 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v8 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100A997F4;
  v6 = v0[6];

  return v8(v2, &unk_1013D6B08, v3);
}

uint64_t sub_100A997F4(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100A99918, 0, 0);
}

uint64_t sub_100A99918()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_100BB9ADC(0, 0, v3, &unk_1013D6B18, v5);

  sub_10000B3A8(v3, &qword_101698C00, &qword_10138B570);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100A99A68()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_100A99B34(uint64_t a1, char a2)
{
  Transaction.capture()();
  if (a2)
  {
    v32[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_101694BE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 64);
    v15 = *(a1 + 16);
    v16 = (v12 + 63) >> 6;
    while (v14)
    {
      v17 = v10;
LABEL_14:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = *(*(a1 + 56) + ((v17 << 9) | (8 * v18)));
      v20 = __OFADD__(v11, v19);
      v11 += v19;
      if (v20)
      {
        __break(1u);
LABEL_17:
        sub_1001DB9A4(a1, 0);

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1000076D4(v21, qword_10177BA08);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v32[0] = v25;
          *v24 = 136446210;
          *(v24 + 4) = sub_1000136BC(0xD000000000000038, 0x800000010136D370, v32);
          _os_log_impl(&_mh_execute_header, v22, v23, "Publishing %{public}s analytics event.", v24, 0xCu);
          sub_100007BAC(v25);
        }

        else
        {
        }

        v26 = String._bridgeToObjectiveC()();
        v27 = swift_allocObject();
        *(v27 + 16) = v15;
        *(v27 + 24) = v11;
        *(v27 + 32) = v15 != v11;
        v32[4] = sub_100B27BF4;
        v32[5] = v27;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 1107296256;
        v32[2] = sub_100A985BC;
        v32[3] = &unk_1016487C0;
        v28 = _Block_copy(v32);

        AnalyticsSendEventLazy();
        _Block_release(v28);

        if (v15 != v11)
        {
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 134218240;
            *(v31 + 4) = v11;
            *(v31 + 12) = 2048;
            *(v31 + 14) = v15;
            _os_log_impl(&_mh_execute_header, v29, v30, "DUPLICATE BEACONS DETECTED -- beaconCount: %ld stableIdentifierCount: %ld", v31, 0x16u);
          }
        }

        return;
      }
    }

    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        goto LABEL_17;
      }

      v14 = *(a1 + 64 + 8 * v17);
      ++v10;
      if (v14)
      {
        v10 = v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BA08);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  sub_1001DB7B8(a1, 1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "duplicateReport error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_1001DB7B8(a1, 1);
  }

  else
  {

    sub_1001DB7B8(a1, 1);
  }
}

unint64_t sub_100A9A010()
{
  sub_1000BC4D4(&qword_1016B5648, &qword_1013D6C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x800000010136D3B0;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x664F7265626D756ELL;
  *(inited + 64) = 0xEF736E6F63616542;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x800000010136D3D0;
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  v1 = sub_10090AFFC(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_1016B5650, &qword_1013D6C38);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_100A9A13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100A9A1D0;

  return sub_100A9A4DC();
}

uint64_t sub_100A9A1D0(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100A9A2D0, 0, 0);
}

uint64_t sub_100A9A2D0()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  v5 = async function pointer to unsafeBlocking<A>(_:)[1];

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_100A9A3C4;

  return unsafeBlocking<A>(_:)(v6, sub_1002FB50C, v4, &type metadata for () + 8);
}

uint64_t sub_100A9A3C4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100014748, 0, 0);
}

uint64_t sub_100A9A4FC()
{
  v1 = *(v0[3] + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v2 = v0[2];
  v0[4] = v2;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100A9A63C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD000000000000014, 0x8000000101354C60, sub_10046825C, v2, &type metadata for Bool);
}

uint64_t sub_100A9A63C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_100A9A738, 0, 0);
}

uint64_t sub_100A9A738()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  v3 = *(v0 + 8);

  return v3(v2);
}

void *sub_100A9A79C(uint64_t a1)
{
  v93 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(v93 - 1);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v93);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v76 = &v69 - v7;
  __chkstk_darwin(v6);
  v9 = &v69 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DateInterval();
  v14 = *(v86 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v86);
  v83 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v17;
  __chkstk_darwin(v16);
  v19 = &v69 - v18;
  static Date.trustedNow.getter(v13);
  v85 = v19;
  DateInterval.init(start:duration:)();
  v71 = *(a1 + 16);
  if (v71)
  {
    v20 = 0;
    v21 = 0;
    v22 = *(v2 + 80);
    v69 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
    v75 = (v22 + 32) & ~v22;
    v70 = a1 + v75;
    v78 = *(v2 + 72);
    v81 = v14 + 16;
    v80 = v14 + 32;
    v91 = _swiftEmptyArrayStorage;
    v79 = xmmword_101385D80;
    v82 = v14;
    v90 = v9;
    while (1)
    {
      v73 = v20;
      sub_100022A54(v70 + v78 * v20, v9, type metadata accessor for SharedBeaconRecord);
      if (*&v9[v93[11]] == -1 || (v23 = &off_10160CF50, *&v9[v93[12]] == -1))
      {
        v23 = &off_10160CF78;
      }

      v24 = v23[2];
      v72 = v23;
      if (v24)
      {
        break;
      }

LABEL_3:
      v20 = v73 + 1;

      sub_100022C40(v9, type metadata accessor for SharedBeaconRecord);
      if (v20 == v71)
      {
        goto LABEL_36;
      }
    }

    v88 = *(v89 + v69);
    v25 = (v23 + 4);
    v87 = sub_10000768C(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
    while (1)
    {
      v29 = *v25;
      v96[3] = v93;
      v96[4] = v87;
      v30 = sub_1000280DC(v96);
      sub_100022A54(v9, v30, type metadata accessor for SharedBeaconRecord);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v92 = v21;
      v31 = v94;
      sub_10001F280(v96, &v94);
      v32 = v83;
      v33 = v86;
      (*(v14 + 16))(v83, v85, v86);
      v34 = (*(v14 + 80) + 64) & ~*(v14 + 80);
      v35 = v34 + v84;
      v36 = swift_allocObject();
      *(v36 + 16) = v31;
      sub_10000A748(&v94, v36 + 24);
      (*(v14 + 32))(v36 + v34, v32, v33);
      v37 = v36 + v35;
      *v37 = v29;
      *(v37 + 1) = 0;

      unsafeFromAsyncTask<A>(_:)();

      v38 = v94;
      v39 = v95;
      sub_100007BAC(v96);
      static os_log_type_t.default.getter();
      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v48 = v90;
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v49 = swift_allocObject();
          *(v49 + 16) = v79;
          v50 = &v48[v93[5]];
          v51 = UUID.uuidString.getter();
          v53 = v52;
          *(v49 + 56) = &type metadata for String;
          *(v49 + 64) = sub_100008C00();
          *(v49 + 32) = v51;
          *(v49 + 40) = v53;
          v9 = v90;
          os_log(_:dso:log:_:_:)();
          sub_100359088(v38, *(&v38 + 1), 2u);
          goto LABEL_27;
        }

        v9 = v90;
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v60 = swift_allocObject();
        *(v60 + 16) = v79;
        v61 = &v9[v93[5]];
        v62 = UUID.uuidString.getter();
        v64 = v63;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = sub_100008C00();
        *(v60 + 32) = v62;
        *(v60 + 40) = v64;
        os_log(_:dso:log:_:_:)();

        sub_100022A54(v9, v77, type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_100A5C0C8(0, v91[2] + 1, 1, v91);
        }

        v14 = v82;
        v21 = v92;
        v66 = v91[2];
        v65 = v91[3];
        if (v66 >= v65 >> 1)
        {
          v91 = sub_100A5C0C8(v65 > 1, v66 + 1, 1, v91);
        }

        v67 = v91;
        v91[2] = v66 + 1;
        v27 = v67 + v75 + v66 * v78;
        v28 = &v98;
      }

      else
      {
        if (v39)
        {
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v54 = swift_allocObject();
          *(v54 + 16) = v79;
          v55 = v90;
          v56 = &v90[v93[5]];
          v57 = UUID.uuidString.getter();
          v59 = v58;
          *(v54 + 56) = &type metadata for String;
          *(v54 + 64) = sub_100008C00();
          *(v54 + 32) = v57;
          *(v54 + 40) = v59;
          os_log(_:dso:log:_:_:)();
          sub_100359088(v38, *(&v38 + 1), 1u);
          v9 = v55;
LABEL_27:

          v14 = v82;
          v21 = v92;
          goto LABEL_11;
        }

        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v74 = *(&v38 + 1);
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v40 = swift_allocObject();
        *(v40 + 16) = v79;
        v41 = v90;
        v42 = &v90[v93[5]];
        v43 = UUID.uuidString.getter();
        v45 = v44;
        *(v40 + 56) = &type metadata for String;
        *(v40 + 64) = sub_100008C00();
        *(v40 + 32) = v43;
        *(v40 + 40) = v45;
        v9 = v41;
        os_log(_:dso:log:_:_:)();

        sub_100022A54(v41, v76, type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_100A5C0C8(0, v91[2] + 1, 1, v91);
        }

        v14 = v82;
        v21 = v92;
        v47 = v91[2];
        v46 = v91[3];
        if (v47 >= v46 >> 1)
        {
          v91 = sub_100A5C0C8(v46 > 1, v47 + 1, 1, v91);
        }

        sub_100359088(v38, v74, 0);
        v26 = v91;
        v91[2] = v47 + 1;
        v27 = v26 + v75 + v47 * v78;
        v28 = &v97;
      }

      sub_10002911C(*(v28 - 32), v27, type metadata accessor for SharedBeaconRecord);
LABEL_11:
      ++v25;
      if (!--v24)
      {
        goto LABEL_3;
      }
    }
  }

  v91 = _swiftEmptyArrayStorage;
LABEL_36:
  (*(v14 + 8))(v85, v86);
  return v91;
}

uint64_t sub_100A9B21C()
{
  v0 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v55 = &v55 - v2;
  v3 = type metadata accessor for DispatchPredicate();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v55 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - v16;
  __chkstk_darwin(v15);
  v62 = &v55 - v18;
  if (qword_101694F00 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177C158);
  v19 = objc_opt_self();
  v20 = [v19 standardUserDefaults];
  v21 = String._bridgeToObjectiveC()();
  v59 = [v20 integerForKey:v21];

  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v22 = sub_1000076D4(v7, qword_10177BA58);
  (*(v8 + 16))(v14, v22, v7);
  URL.appendingPathComponent(_:isDirectory:)();
  v25 = *(v8 + 8);
  v24 = v8 + 8;
  v23 = v25;
  v25(v14, v7);
  URL.appendingPathComponent(_:)();
  v25(v17, v7);
  v26 = v61;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  sub_10088F30C(2, qword_10177BA50);
  v27 = URL.checkResourceIsReachable()();
  if (v28)
  {

    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v58 = v24;
  v30 = URL.checkResourceIsReachable()();
  if (v31)
  {

    v32 = v60;
    if (!v29)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v32 = v60;
    if (v30 || !v29)
    {
      goto LABEL_19;
    }
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177BA08);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Recovering from 110328093", v36, 2u);
    v26 = v61;
  }

  v37 = [v19 standardUserDefaults];
  v38 = String._bridgeToObjectiveC()();
  [v37 removeObjectForKey:v38];

  v32 = v60;
LABEL_19:
  if (v59 == 28)
  {
LABEL_24:
    v23(v26, v7);
    return (v23)(v62, v7);
  }

  v59 = v23;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
    v32 = v60;
  }

  os_log(_:dso:log:_:_:)();
  v39 = *(v32 + 168);
  v40 = *(v32 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v41 = v63;
  v42 = *(v39 + 16);
  *v6 = v42;
  v43 = v56;
  v44 = v57;
  (*(v56 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v57);
  v45 = v42;
  v46 = _dispatchPreconditionTest(_:)();
  result = (*(v43 + 8))(v6, v44);
  if (v46)
  {
    v48 = dispatch_group_create();
    dispatch_group_enter(v48);

    v49 = v48;
    sub_1010101E8(0, v41, v39, v49);

    v50 = *(v32 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v51 = v63;
    v52 = type metadata accessor for TaskPriority();
    v53 = v55;
    (*(*(v52 - 8) + 56))(v55, 1, 1, v52);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v51;

    sub_10025EDD4(0, 0, v53, &unk_101411AD0, v54);

    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();

    sub_100B1A674();
    v23 = v59;
    v26 = v61;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A9BA28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v42 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177AE40);
  (*(v12 + 16))(v15, a1, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v44 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v2;
    v48 = v42;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v6;
    v24 = v23;
    (*(v12 + 8))(v15, v11);
    v25 = sub_1000136BC(v21, v24, &v48);
    v6 = v22;

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Reading sessionTokenRecord for %{private,mask.hash}s", v20, 0x16u);
    sub_100007BAC(v42);
    v3 = v43;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v26 = v45;
  static SystemInfo.lockState.getter();
  v27 = v46;
  (*(v6 + 104))(v46, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v6 + 8);
  v29(v27, v5);
  v29(v26, v5);
  if (v28)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v30 = type metadata accessor for SessionTokenRecord();
    return (*(*(v30 - 8) + 56))(v47, 1, 1, v30);
  }

  else
  {
    v32 = *(v3 + 168);
    if (qword_101694A68 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for URL();
    v34 = sub_1000076D4(v33, qword_10177B608);
    v35._object = 0x800000010135B5A0;
    v35._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v35);
    v48 = type metadata accessor for SessionTokenRecord();
    sub_1000BC4D4(&qword_1016B55A0, &qword_1013D6AB8);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = objc_autoreleasePoolPush();
    v40 = v32[2];
    __chkstk_darwin(v39);
    v41 = v44;
    *(&v42 - 6) = v32;
    *(&v42 - 5) = v41;
    *(&v42 - 4) = v34;
    *(&v42 - 3) = v36;
    *(&v42 - 2) = v38;
    sub_1000BC4D4(&qword_101699B90, &unk_101392670);
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v39);
  }
}

uint64_t sub_100A9BFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  __chkstk_darwin(v8);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin(v52);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SessionTokenRecord();
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v17;
  __chkstk_darwin(v16);
  v20 = &v44 - v19;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177BA08);
  sub_100022A54(a1, v20, type metadata accessor for SessionTokenRecord);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v47 = v4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v46 = a1;
    v27 = v26;
    aBlock[0] = v26;
    *v25 = 136315138;
    sub_100022A54(v20, v18, type metadata accessor for SessionTokenRecord);
    v28 = String.init<A>(describing:)();
    v45 = v18;
    v29 = a2;
    v30 = v13;
    v31 = a3;
    v33 = v32;
    sub_100022C40(v20, type metadata accessor for SessionTokenRecord);
    v34 = sub_1000136BC(v28, v33, aBlock);
    a3 = v31;
    v13 = v30;
    a2 = v29;
    v18 = v45;

    *(v25 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "Saving SessionTokenRecord %s", v25, 0xCu);
    sub_100007BAC(v27);
    a1 = v46;

    v4 = v47;
  }

  else
  {

    sub_100022C40(v20, type metadata accessor for SessionTokenRecord);
  }

  v35 = *(v4 + 72);
  sub_100022A54(a1, v18, type metadata accessor for SessionTokenRecord);
  v36 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v37 = (v49 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v4;
  sub_10002911C(v18, v38 + v36, type metadata accessor for SessionTokenRecord);
  v39 = (v38 + v37);
  *v39 = a2;
  v39[1] = a3;
  aBlock[4] = sub_100B26308;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647CD0;
  v40 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v41 = v51;
  v42 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);
  (*(v53 + 8))(v41, v42);
  (*(v50 + 8))(v13, v52);
}

uint64_t sub_100A9C5BC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v30[1] = a4;
  v7 = sub_1000BC4D4(&qword_101699BA0, &qword_1013D6AB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v30 - v9;
  v11 = type metadata accessor for SessionTokenRecord();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v30 - v16;
  v18 = *(a1 + 168);
  sub_1009F21F0(a2);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177BA08);
  sub_100022A54(a2, v17, type metadata accessor for SessionTokenRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = a3;
    v24 = v23;
    v31 = v23;
    *v22 = 136315138;
    sub_100022A54(v17, v15, type metadata accessor for SessionTokenRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    sub_100022C40(v17, type metadata accessor for SessionTokenRecord);
    v28 = sub_1000136BC(v25, v27, &v31);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Saved SessionTokenRecord %s", v22, 0xCu);
    sub_100007BAC(v24);
    a3 = v30[0];
  }

  else
  {

    sub_100022C40(v17, type metadata accessor for SessionTokenRecord);
  }

  sub_100022A54(a2, v10, type metadata accessor for SessionTokenRecord);
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_10000B3A8(v10, &qword_101699BA0, &qword_1013D6AB0);
}

uint64_t sub_100A9CA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a3;
  v57 = a2;
  v8 = type metadata accessor for MemberSharingCircle();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(v8 - 8);
  v56 = v10;
  v58 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SharedBeaconRecord(0);
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v16 = &v48[-v15];
  __chkstk_darwin(v14);
  v18 = &v48[-v17];
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177BA08);
  sub_100022A54(a1, v18, type metadata accessor for SharedBeaconRecord);
  v54 = a1;
  sub_100022A54(a1, v16, type metadata accessor for SharedBeaconRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v22 = 136315651;
    sub_100022A54(v18, &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SharedBeaconRecord);
    v23 = String.init<A>(describing:)();
    v49 = v21;
    v24 = v23;
    v50 = v20;
    v25 = v5;
    v27 = v26;
    v52 = a4;
    sub_100022C40(v18, type metadata accessor for SharedBeaconRecord);
    v28 = sub_1000136BC(v24, v27, aBlock);
    v5 = v25;

    *(v22 + 4) = v28;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v29 = *(v11 + 20);
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    a4 = v52;
    sub_100022C40(v16, type metadata accessor for SharedBeaconRecord);
    v33 = sub_1000136BC(v30, v32, aBlock);
    v34 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];

    *(v22 + 24) = v33;
    v35 = v50;
    _os_log_impl(&_mh_execute_header, v50, v49, "Saving SharedBeaconRecord %s,\nbeacon %{private,mask.hash}s.", v22, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v16, type metadata accessor for SharedBeaconRecord);
    sub_100022C40(v18, type metadata accessor for SharedBeaconRecord);
    v34 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  }

  v36 = *(v5 + 72);
  sub_100022A54(v54, v34, type metadata accessor for SharedBeaconRecord);
  v37 = v58;
  sub_100022A54(v57, v58, type metadata accessor for MemberSharingCircle);
  v38 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v39 = (v12 + *(v55 + 80) + v38) & ~*(v55 + 80);
  v40 = (v56 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v34;
  v43 = v41;
  *(v41 + 16) = v5;
  sub_10002911C(v42, v41 + v38, type metadata accessor for SharedBeaconRecord);
  sub_10002911C(v37, v43 + v39, type metadata accessor for MemberSharingCircle);
  v44 = (v43 + v40);
  *v44 = v59;
  v44[1] = a4;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_100B261A4;
  *(v45 + 24) = v43;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101647C80;
  v46 = _Block_copy(aBlock);

  dispatch_sync(v36, v46);
  _Block_release(v46);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A9D050(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v83 = a5;
  v84 = a4;
  v82 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v8 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v81 = &v70 - v9;
  v10 = type metadata accessor for MemberSharingCircle();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v70 - v16;
  __chkstk_darwin(v15);
  v19 = &v70 - v18;
  v79 = type metadata accessor for SharedBeaconRecord(0);
  v20 = *(*(v79 - 8) + 64);
  v21 = __chkstk_darwin(v79);
  v80 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v70 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v70 - v27;
  __chkstk_darwin(v26);
  v30 = &v70 - v29;
  v31 = *(a1 + 168);
  v85 = a2;
  sub_1009F1368(a2);
  v75 = v31;
  v76 = a3;
  v77 = v14;
  v78 = v10;
  v74 = v19;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_1000076D4(v32, qword_10177BA08);
  v34 = v85;
  sub_100022A54(v85, v30, type metadata accessor for SharedBeaconRecord);
  sub_100022A54(v34, v28, type metadata accessor for SharedBeaconRecord);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v73 = v17;
    v38 = v37;
    v71 = swift_slowAlloc();
    v86[0] = v71;
    *v38 = 136315651;
    sub_100022A54(v30, v25, type metadata accessor for SharedBeaconRecord);
    v39 = v79;
    v40 = String.init<A>(describing:)();
    v72 = v33;
    v41 = v36;
    v42 = v40;
    v44 = v43;
    sub_100022C40(v30, type metadata accessor for SharedBeaconRecord);
    v45 = sub_1000136BC(v42, v44, v86);

    *(v38 + 4) = v45;
    *(v38 + 12) = 2160;
    *(v38 + 14) = 1752392040;
    *(v38 + 22) = 2081;
    v46 = *(v39 + 20);
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    sub_100022C40(v28, type metadata accessor for SharedBeaconRecord);
    v50 = sub_1000136BC(v47, v49, v86);

    *(v38 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v35, v41, "Saved SharedBeaconRecord %s\nfor beacon %{private,mask.hash}s.", v38, 0x20u);
    swift_arrayDestroy();

    v17 = v73;
  }

  else
  {

    sub_100022C40(v28, type metadata accessor for SharedBeaconRecord);
    sub_100022C40(v30, type metadata accessor for SharedBeaconRecord);
  }

  v52 = v76;
  v51 = v77;
  sub_1009EF3EC(v76);
  v53 = v78;
  v55 = v74;
  sub_100022A54(v52, v74, type metadata accessor for MemberSharingCircle);
  sub_100022A54(v52, v17, type metadata accessor for MemberSharingCircle);
  v56 = Logger.logObject.getter();
  v57 = v17;
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v58))
  {
    v59 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    *v59 = 136315651;
    sub_100022A54(v55, v51, type metadata accessor for MemberSharingCircle);
    v60 = String.init<A>(describing:)();
    v62 = v61;
    sub_100022C40(v55, type metadata accessor for MemberSharingCircle);
    v63 = sub_1000136BC(v60, v62, v86);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2160;
    *(v59 + 14) = 1752392040;
    *(v59 + 22) = 2081;
    v64 = *(v53 + 24);
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    sub_100022C40(v57, type metadata accessor for MemberSharingCircle);
    v68 = sub_1000136BC(v65, v67, v86);

    *(v59 + 24) = v68;
    _os_log_impl(&_mh_execute_header, v56, v58, "Saved MemberSharingCircle %s\nfor beacon %{private,mask.hash}s.", v59, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v57, type metadata accessor for MemberSharingCircle);
    sub_100022C40(v55, type metadata accessor for MemberSharingCircle);
  }

  v69 = v81;
  sub_100022A54(v85, v81, type metadata accessor for SharedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  v84(v69);
  return sub_10000B3A8(v69, &qword_101699BC8, &qword_1013926D8);
}

uint64_t sub_100A9DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v57 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  __chkstk_darwin(v4);
  v62 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  __chkstk_darwin(v7);
  v60 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeaconEstimatedLocation();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v15 = &v50 - v14;
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177BA08);
  sub_100022A54(a1, v17, type metadata accessor for BeaconEstimatedLocation);
  sub_100022A54(a1, v15, type metadata accessor for BeaconEstimatedLocation);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v54 = v19;
    v22 = v21;
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v22 = 136315651;
    sub_100022A54(v17, &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconEstimatedLocation);
    v23 = String.init<A>(describing:)();
    v53 = v20;
    v24 = v23;
    v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = a1;
    v26 = v7;
    v27 = v4;
    v29 = v28;
    v52 = type metadata accessor for BeaconEstimatedLocation;
    sub_100022C40(v17, type metadata accessor for BeaconEstimatedLocation);
    v30 = sub_1000136BC(v24, v29, aBlock);
    v4 = v27;
    v7 = v26;
    a1 = v25;

    *(v22 + 4) = v30;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v31 = *(v10 + 24);
    v32 = v51;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    sub_100022C40(v15, v52);
    v36 = sub_1000136BC(v33, v35, aBlock);

    *(v22 + 24) = v36;
    v37 = v54;
    _os_log_impl(&_mh_execute_header, v54, v53, "Saving BeaconEstimatedLocation record %s,\nbeacon %{private,mask.hash}s.", v22, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v15, type metadata accessor for BeaconEstimatedLocation);
    sub_100022C40(v17, type metadata accessor for BeaconEstimatedLocation);
    v32 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v38 = v59;
  v39 = *(v59 + 144);
  sub_100022A54(a1, v32, type metadata accessor for BeaconEstimatedLocation);
  v40 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v41 = (v11 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_10002911C(v32, v43 + v40, type metadata accessor for BeaconEstimatedLocation);
  v44 = (v43 + v41);
  v45 = v58;
  *v44 = v57;
  v44[1] = v45;
  *(v43 + v42) = v38;
  aBlock[4] = sub_100B25F90;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647A28;
  v46 = _Block_copy(aBlock);

  v47 = v60;
  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v48 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);
  (*(v63 + 8))(v48, v4);
  (*(v61 + 8))(v47, v7);
}

uint64_t sub_100A9E100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v193 = a4;
  v187 = a3;
  v186 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v195 = *(v5 - 8);
  v6 = *(v195 + 64);
  __chkstk_darwin(v5);
  v189 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v190 = *(v8 - 8);
  v9 = *(v190 + 64);
  __chkstk_darwin(v8);
  v188 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for DispatchQoS.QoSClass();
  v181 = *(v182 - 8);
  v11 = *(v181 + 64);
  __chkstk_darwin(v182);
  v180 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BeaconEstimatedLocation();
  v174 = *(v13 - 8);
  v14 = *(v174 + 64);
  v15 = __chkstk_darwin(v13);
  v197 = (&v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v19 = &v163 - v18;
  v20 = __chkstk_darwin(v17);
  v183 = &v163 - v21;
  v22 = __chkstk_darwin(v20);
  v169 = &v163 - v23;
  v175 = v24;
  __chkstk_darwin(v22);
  v168 = &v163 - v25;
  v26 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v171 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v179 = &v163 - v30;
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v173 = &v163 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v184 = &v163 - v37;
  v38 = __chkstk_darwin(v36);
  v167 = &v163 - v39;
  v172 = v40;
  __chkstk_darwin(v38);
  v176 = &v163 - v41;
  v42 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v163 - v44;
  v178 = type metadata accessor for DirectorySequence();
  v177 = *(v178 - 8);
  v46 = *(v177 + 64);
  __chkstk_darwin(v178);
  v48 = &v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for URL();
  v194 = *(v198 - 1);
  v49 = *(v194 + 64);
  v50 = __chkstk_darwin(v198);
  v52 = &v163 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v185 = &v163 - v53;
  v196 = a1;
  v54 = sub_1010E1954();
  v191 = v8;
  v192 = v5;
  if (v54)
  {
    v55 = v195;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000076D4(v56, qword_10177BA08);
    v57 = v196;
    sub_100022A54(v196, v19, type metadata accessor for BeaconEstimatedLocation);
    v58 = v57;
    v59 = v197;
    sub_100022A54(v58, v197, type metadata accessor for BeaconEstimatedLocation);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v62 = 136315651;
      sub_100022A54(v19, v183, type metadata accessor for BeaconEstimatedLocation);
      v63 = String.init<A>(describing:)();
      v65 = v64;
      sub_100022C40(v19, type metadata accessor for BeaconEstimatedLocation);
      v66 = sub_1000136BC(v63, v65, &aBlock);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2160;
      *(v62 + 14) = 1752392040;
      *(v62 + 22) = 2081;
      v67 = *(v13 + 24);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v68 = v197;
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v72 = v190;
      sub_100022C40(v68, type metadata accessor for BeaconEstimatedLocation);
      v73 = sub_1000136BC(v69, v71, &aBlock);

      *(v62 + 24) = v73;
      _os_log_impl(&_mh_execute_header, v60, v61, "Not saving blocked region BeaconEstimatedLocation record %s,\nbeacon %{private,mask.hash}s.", v62, 0x20u);
      swift_arrayDestroy();
      v74 = v195;

      v75 = v192;
    }

    else
    {

      sub_100022C40(v59, type metadata accessor for BeaconEstimatedLocation);
      sub_100022C40(v19, type metadata accessor for BeaconEstimatedLocation);
      v75 = v192;
      v72 = v190;
      v74 = v55;
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v104 = v181;
    v105 = v180;
    v106 = v182;
    (*(v181 + 104))(v180, enum case for DispatchQoS.QoSClass.default(_:), v182);
    v107 = static OS_dispatch_queue.global(qos:)();
    (*(v104 + 8))(v105, v106);
    v108 = swift_allocObject();
    v109 = v187;
    *(v108 + 16) = v186;
    *(v108 + 24) = v109;
    v203 = sub_100B2609C;
    v204 = v108;
    aBlock = _NSConcreteStackBlock;
    v200 = 1107296256;
    v201 = sub_100006684;
    v202 = &unk_101647B18;
    v110 = _Block_copy(&aBlock);

    v111 = v188;
    static DispatchQoS.unspecified.getter();
    v205 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v112 = v189;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v110);

    (*(v74 + 8))(v112, v75);
    (*(v72 + 8))(v111, v191);
  }

  v165 = v32;
  v170 = v31;
  v166 = v13;
  v76 = *(v13 + 24);
  v77 = *(v193 + 168);
  v78 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v79 = v198;
  sub_1000076D4(v198, qword_10177BF38);
  v164 = v76;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v78);
  aBlock = _swiftEmptyArrayStorage;
  v205 = _swiftEmptyArrayStorage;
  v80 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v197 = v48;
  DirectorySequence.next()();
  v81 = v79;
  v82 = *(v194 + 48);
  if (v82(v45, 1, v79) != 1)
  {
    v83 = v77;
    v84 = *(v194 + 32);
    v85 = (v194 + 8);
    do
    {
      v84(v52, v45, v81);
      v86 = objc_autoreleasePoolPush();
      sub_1006011CC(v52, v83, &aBlock, &v205);
      objc_autoreleasePoolPop(v86);
      (*v85)(v52, v198);
      DirectorySequence.next()();
      v81 = v198;
    }

    while (v82(v45, 1, v198) != 1);
  }

  (*(v177 + 8))(v197, v178);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v87 = v81;
  v88 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_10138BBE0;
  v90 = aBlock;
  v91 = aBlock[2];
  *(v89 + 56) = &type metadata for Int;
  *(v89 + 64) = &protocol witness table for Int;
  *(v89 + 32) = v91;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

  v92 = v185;
  v93 = dispatch thunk of CustomStringConvertible.description.getter();
  v95 = v94;
  *(v89 + 96) = &type metadata for String;
  *(v89 + 104) = sub_100008C00();
  *(v89 + 72) = v93;
  *(v89 + 80) = v95;
  os_log(_:dso:log:_:_:)();

  (*(v194 + 8))(v92, v87);

  v96 = v166;
  v97 = v196;
  v98 = v179;
  v99 = v193;
  sub_100A9F938(v196 + v164, *(v196 + *(v166 + 44)), v90, v179);
  v100 = v165;
  v101 = *(v165 + 48);
  v102 = v170;
  if (v101(v98, 1, v170) == 1)
  {
    sub_10000B3A8(v98, &unk_101696900, &unk_10138B1E0);
    v103 = v192;
LABEL_17:
    v115 = v171;
    sub_100AA09DC(v90, 0x14u, v171);

    if (v101(v115, 1, v102) == 1)
    {
      v116 = v184;
      static Date.distantPast.getter();
      if (v101(v115, 1, v102) != 1)
      {
        sub_10000B3A8(v115, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v116 = v184;
      (*(v100 + 32))(v184, v115, v102);
    }

    v198 = *(v99 + 72);
    v117 = v183;
    sub_100022A54(v196, v183, type metadata accessor for BeaconEstimatedLocation);
    v118 = v173;
    (*(v100 + 16))(v173, v116, v102);
    v119 = (*(v174 + 80) + 24) & ~*(v174 + 80);
    v120 = (v175 + *(v100 + 80) + v119) & ~*(v100 + 80);
    v121 = v99;
    v122 = (v172 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
    v123 = swift_allocObject();
    *(v123 + 16) = v121;
    sub_10002911C(v117, v123 + v119, type metadata accessor for BeaconEstimatedLocation);
    (*(v100 + 32))(v123 + v120, v118, v102);
    v124 = (v123 + v122);
    v125 = v187;
    *v124 = v186;
    v124[1] = v125;
    v203 = sub_100B2602C;
    v204 = v123;
    aBlock = _NSConcreteStackBlock;
    v200 = 1107296256;
    v201 = sub_100006684;
    v202 = &unk_101647A78;
    v126 = _Block_copy(&aBlock);

    v127 = v188;
    static DispatchQoS.unspecified.getter();
    v205 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v128 = v189;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v126);
    (*(v195 + 8))(v128, v103);
    (*(v190 + 8))(v127, v191);
    (*(v100 + 8))(v184, v102);
  }

  v113 = v176;
  (*(v100 + 32))(v176, v98, v102);
  v114 = *(v96 + 40);
  if (static Date.> infix(_:_:)())
  {
    (*(v100 + 8))(v113, v102);
    v103 = v192;
    v99 = v193;
    goto LABEL_17;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v130 = type metadata accessor for Logger();
  sub_1000076D4(v130, qword_10177BA08);
  v131 = v167;
  (*(v100 + 16))(v167, v113, v102);
  v132 = v168;
  sub_100022A54(v97, v168, type metadata accessor for BeaconEstimatedLocation);
  v133 = v169;
  sub_100022A54(v97, v169, type metadata accessor for BeaconEstimatedLocation);
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = v131;
    v137 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    aBlock = v197;
    *v137 = 136446979;
    sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
    v138 = dispatch thunk of CustomStringConvertible.description.getter();
    v139 = v102;
    v141 = v140;
    v198 = *(v100 + 8);
    (v198)(v136, v139);
    v142 = sub_1000136BC(v138, v141, &aBlock);

    *(v137 + 4) = v142;
    *(v137 + 12) = 2160;
    *(v137 + 14) = 1752392040;
    *(v137 + 22) = 2081;
    v143 = *(v96 + 24);
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v144 = dispatch thunk of CustomStringConvertible.description.getter();
    v146 = v145;
    sub_100022C40(v132, type metadata accessor for BeaconEstimatedLocation);
    v147 = sub_1000136BC(v144, v146, &aBlock);

    *(v137 + 24) = v147;
    *(v137 + 32) = 2080;
    sub_100022A54(v133, v183, type metadata accessor for BeaconEstimatedLocation);
    v148 = String.init<A>(describing:)();
    v150 = v149;
    sub_100022C40(v133, type metadata accessor for BeaconEstimatedLocation);
    v151 = sub_1000136BC(v148, v150, &aBlock);

    *(v137 + 34) = v151;
    _os_log_impl(&_mh_execute_header, v134, v135, "Not saving outdated (latestLocationDate: %{public}s,\nbeacon %{private,mask.hash}s,\nBeaconEstimatedLocation record %s.", v137, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v133, type metadata accessor for BeaconEstimatedLocation);
    sub_100022C40(v132, type metadata accessor for BeaconEstimatedLocation);
    v198 = *(v100 + 8);
    (v198)(v131, v102);
  }

  v152 = v195;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v153 = v181;
  v154 = v180;
  v155 = v182;
  (*(v181 + 104))(v180, enum case for DispatchQoS.QoSClass.default(_:), v182);
  v156 = static OS_dispatch_queue.global(qos:)();
  (*(v153 + 8))(v154, v155);
  v157 = swift_allocObject();
  v158 = v187;
  *(v157 + 16) = v186;
  *(v157 + 24) = v158;
  v203 = sub_100B2606C;
  v204 = v157;
  aBlock = _NSConcreteStackBlock;
  v200 = 1107296256;
  v201 = sub_100006684;
  v202 = &unk_101647AC8;
  v159 = _Block_copy(&aBlock);

  v160 = v188;
  static DispatchQoS.unspecified.getter();
  v205 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v161 = v189;
  v162 = v192;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v159);

  (*(v152 + 8))(v161, v162);
  (*(v190 + 8))(v160, v191);
  (v198)(v176, v170);
}

uint64_t sub_100A9F938@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v145) = a2;
  v140 = a1;
  v119 = a4;
  v139 = type metadata accessor for URL();
  v117 = *(v139 - 8);
  v5 = *(v117 + 64);
  __chkstk_darwin(v139);
  v138 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for UUID();
  v124 = *(v149 - 8);
  v7 = *(v124 + 64);
  v8 = __chkstk_darwin(v149);
  v137 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v120 = &v114 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v114 - v17;
  v19 = type metadata accessor for BeaconEstimatedLocation();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v142 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v141 = &v114 - v25;
  v26 = __chkstk_darwin(v24);
  v122 = &v114 - v27;
  __chkstk_darwin(v26);
  v29 = &v114 - v28;
  v30 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v134 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v133 = (&v114 - v35);
  __chkstk_darwin(v34);
  v146 = &v114 - v36;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v37 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v123 = sub_101073FC8(v150);

  v150 = a3;
  v121 = a3;

  sub_100A8AAFC(&v150);
  v38 = v150;
  v131 = *(v12 + 56);
  v132 = (v12 + 56);
  (v131)(v146, 1, 1, v11);
  v39 = v38[2];
  v147 = v19;
  v148 = 0;
  v135 = v20;
  if (v39)
  {
    LODWORD(v145) = v145;
    v40 = *(v19 + 44);
    v41 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v116 = v38;
    v115 = v41;
    v143 = (v38 + v41);
    sub_100022A54(v38 + v41, v29, type metadata accessor for BeaconEstimatedLocation);
    v144 = v40;
    v42 = v29[v40];
    v129 = (v12 + 16);
    v128 = (v12 + 48);
    v136 = (v12 + 32);
    v127 = (v12 + 8);
    v125 = _swiftEmptyArrayStorage;
    v43 = 1;
    *&v130 = v39;
    v126 = v29;
LABEL_5:
    v44 = v42;
    while (1)
    {
      v42 = v44;
      if (v44 == v145)
      {
        (*v129)(v18, &v29[*(v147 + 40)], v11);
        v45 = v134;
        sub_1000D2A70(v146, v134, &unk_101696900, &unk_10138B1E0);
        v46 = *v128;
        if ((*v128)(v45, 1, v11) == 1)
        {
          static Date.distantPast.getter();
          if (v46(v45, 1, v11) != 1)
          {
            sub_10000B3A8(v45, &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          (*v136)(v16, v45, v11);
        }

        sub_10000768C(&qword_1016C9070, &type metadata accessor for Date);
        v47 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v48 = v146;
        sub_10000B3A8(v146, &unk_101696900, &unk_10138B1E0);
        if (v47)
        {
          v49 = v18;
        }

        else
        {
          v49 = v16;
        }

        if (v47)
        {
          v50 = v16;
        }

        else
        {
          v50 = v18;
        }

        (*v127)(v49, v11);
        v51 = v18;
        v52 = v16;
        v53 = v133;
        (*v136)(v133, v50, v11);
        (v131)(v53, 0, 1, v11);
        v54 = v53;
        v16 = v52;
        v18 = v51;
        sub_1000D2AD8(v54, v48, &unk_101696900, &unk_10138B1E0);
        v20 = v135;
        v39 = v130;
        v29 = v126;
      }

      sub_100022C40(v29, type metadata accessor for BeaconEstimatedLocation);
      if (v39 == v43)
      {
        break;
      }

      v55 = *(v20 + 72);
      sub_100022A54(v143 + v55 * v43++, v29, type metadata accessor for BeaconEstimatedLocation);
      v44 = v29[v144];
      if (v42 == v44)
      {
        sub_100022A54(v29, v122, type metadata accessor for BeaconEstimatedLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_100A5D0A0(0, v125[2] + 1, 1, v125);
        }

        v57 = v125[2];
        v56 = v125[3];
        v58 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          v114 = v57 + 1;
          v60 = sub_100A5D0A0(v56 > 1, v57 + 1, 1, v125);
          v58 = v114;
          v125 = v60;
        }

        v59 = v125;
        v125[2] = v58;
        sub_10002911C(v122, v59 + v115 + v57 * v55, type metadata accessor for BeaconEstimatedLocation);
        goto LABEL_5;
      }
    }

    v61 = v125;
  }

  else
  {

    v61 = _swiftEmptyArrayStorage;
  }

  v62 = v61[2];
  if (v123 >= v62)
  {
    v63 = v61[2];
  }

  else
  {
    v63 = v123;
  }

  v131 = v63;
  v64 = v149;
  v66 = v141;
  v65 = v142;
  v67 = v124;
  v68 = v121;
  v69 = v120;
  if (v123 < 0)
  {
    __break(1u);
  }

  else
  {
    v134 = v62;
    v70 = qword_101694770;

    if (v70 == -1)
    {
      goto LABEL_32;
    }
  }

  swift_once();
LABEL_32:
  v71 = type metadata accessor for Logger();
  v72 = sub_1000076D4(v71, qword_10177AE10);
  v143 = *(v67 + 16);
  v144 = v67 + 16;
  v143(v69, v140, v64);

  v145 = v72;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    LODWORD(v132) = v74;
    v77 = v68;
    v133 = v76;
    v150 = v76;
    *v75 = 134218755;
    v78 = v134;
    *(v75 + 4) = v134 - v131;

    *(v75 + 12) = 2048;
    *(v75 + 14) = v77[2];

    *(v75 + 22) = 2160;
    *(v75 + 24) = 1752392040;
    *(v75 + 32) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v61;
    v82 = v81;
    v136 = *(v124 + 8);
    (v136)(v69, v64);
    v83 = sub_1000136BC(v79, v82, &v150);
    v61 = v80;
    v67 = v124;

    *(v75 + 34) = v83;
    _os_log_impl(&_mh_execute_header, v73, v132, "Decimating %ld of %ld locations for beacon %{private,mask.hash}s.", v75, 0x2Au);
    sub_100007BAC(v133);

    v20 = v135;
  }

  else
  {

    v136 = *(v67 + 8);
    (v136)(v69, v64);
    v78 = v134;
  }

  if (v78 > v123)
  {
    v85 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v135 = *(v118 + 168);
    v86 = *(v20 + 72);
    v133 = (v67 + 8);
    v132 = (v117 + 8);
    v87 = v78 - v131;
    v134 = v86;
    v125 = v61;
    v88 = v61 + v85 + v86 * v131;
    *&v84 = 141558787;
    v130 = v84;
    do
    {
      sub_100022A54(v88, v66, type metadata accessor for BeaconEstimatedLocation);
      sub_100022A54(v66, v65, type metadata accessor for BeaconEstimatedLocation);
      v89 = v137;
      v143(v137, v140, v64);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v150 = v131;
        *v92 = v130;
        *(v92 + 4) = 1752392040;
        *(v92 + 12) = 2081;
        v93 = v147;
        v94 = *(v147 + 20);
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v65;
        v98 = v97;
        sub_100022C40(v96, type metadata accessor for BeaconEstimatedLocation);
        v99 = sub_1000136BC(v95, v98, &v150);

        *(v92 + 14) = v99;
        *(v92 + 22) = 2160;
        *(v92 + 24) = 1752392040;
        *(v92 + 32) = 2081;
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        (v136)(v89, v149);
        v103 = sub_1000136BC(v100, v102, &v150);

        *(v92 + 34) = v103;
        _os_log_impl(&_mh_execute_header, v90, v91, "Decimating beacon BeaconEstimatedLocation %{private,mask.hash}s for beacon %{private,mask.hash}s.", v92, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        (v136)(v89, v64);
        sub_100022C40(v65, type metadata accessor for BeaconEstimatedLocation);
        v93 = v147;
      }

      v105 = *(v93 + 20);
      v104 = *(v93 + 24);
      v106 = objc_autoreleasePoolPush();
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v66 = v141;
      v107 = v139;
      sub_1000076D4(v139, qword_10177BF38);
      UUID.uuidString.getter();
      v108 = v138;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v106);
      v109 = *(v135 + 16);
      __chkstk_darwin(v110);
      *(&v114 - 4) = v111;
      *(&v114 - 3) = v66 + v105;
      *(&v114 - 2) = v108;
      v112 = v148;
      OS_dispatch_queue.sync<A>(execute:)();
      v148 = v112;
      (*v132)(v108, v107);
      sub_100022C40(v66, type metadata accessor for BeaconEstimatedLocation);
      v88 += v134;
      --v87;
      v65 = v142;
      v64 = v149;
    }

    while (v87);
  }

  sub_1000D2AD8(v146, v119, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_100AA08F4(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3, uint64_t *a4, char a5)
{
  v9 = sub_1000BC4D4(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100139CA0();
  v13 = swift_allocError();
  *v14 = a5;
  *v12 = v13;
  swift_storeEnumTagMultiPayload();
  a1(v12);
  return sub_10000B3A8(v12, a3, a4);
}

uint64_t sub_100AA09DC@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v47 = type metadata accessor for BeaconEstimatedLocation();
  v5 = *(*(v47 - 8) + 64);
  v6 = __chkstk_darwin(v47);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - v10;
  v12 = __chkstk_darwin(v9);
  v43 = &v41 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v41 - v15;
  __chkstk_darwin(v14);
  v42 = &v41 - v18;
  v19 = *(a1 + 16);
  v44 = v17;
  if (v19)
  {
    v20 = a2;
    v21 = *(v17 + 72);
    v46 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = a1 + v46;
    v23 = _swiftEmptyArrayStorage;
    do
    {
      sub_100022A54(v22, v16, type metadata accessor for BeaconEstimatedLocation);
      if (v20 == 20 || v16[*(v47 + 44)] == v20)
      {
        sub_10002911C(v16, v11, type metadata accessor for BeaconEstimatedLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124A24(0, v23[2] + 1, 1);
          v23 = v48;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_101124A24(v25 > 1, v26 + 1, 1);
          v23 = v48;
        }

        v23[2] = v26 + 1;
        sub_10002911C(v11, v23 + v46 + v26 * v21, type metadata accessor for BeaconEstimatedLocation);
      }

      else
      {
        sub_100022C40(v16, type metadata accessor for BeaconEstimatedLocation);
      }

      v22 += v21;
      --v19;
    }

    while (v19);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v27 = v23[2];
  if (v27)
  {
    v29 = v43;
    v28 = v44;
    v30 = v23 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    result = sub_100022A54(v30, v43, type metadata accessor for BeaconEstimatedLocation);
    if (v27 == 1)
    {
LABEL_15:

      v32 = v42;
      sub_10002911C(v29, v42, type metadata accessor for BeaconEstimatedLocation);
      v33 = *(v47 + 40);
      v34 = type metadata accessor for Date();
      v35 = *(v34 - 8);
      v36 = v32 + v33;
      v37 = v45;
      (*(v35 + 16))(v45, v36, v34);
      sub_100022C40(v32, type metadata accessor for BeaconEstimatedLocation);
      return (*(v35 + 56))(v37, 0, 1, v34);
    }

    else
    {
      v39 = 1;
      while (v39 < v23[2])
      {
        sub_100022A54(v30 + *(v28 + 72) * v39, v8, type metadata accessor for BeaconEstimatedLocation);
        v40 = *(v47 + 40);
        if (static Date.< infix(_:_:)())
        {
          sub_100022C40(v29, type metadata accessor for BeaconEstimatedLocation);
          result = sub_10002911C(v8, v29, type metadata accessor for BeaconEstimatedLocation);
        }

        else
        {
          result = sub_100022C40(v8, type metadata accessor for BeaconEstimatedLocation);
        }

        if (v27 == ++v39)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  else
  {

    v38 = type metadata accessor for Date();
    return (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  }

  return result;
}

uint64_t sub_100AA0E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107 = a5;
  v106 = a4;
  v99 = a3;
  v105 = type metadata accessor for DispatchQoS.QoSClass();
  v104 = *(v105 - 8);
  v7 = *(v104 + 64);
  __chkstk_darwin(v105);
  v103 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchWorkItemFlags();
  v109 = *(v110 - 8);
  v9 = *(v109 + 64);
  __chkstk_darwin(v110);
  v112 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DispatchQoS();
  v113 = *(v108 - 8);
  v11 = *(v113 + 64);
  __chkstk_darwin(v108);
  v111 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BeaconObservation();
  v100 = *(v13 - 8);
  v14 = *(v100 + 64);
  __chkstk_darwin(v13);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for BeaconEstimatedLocation();
  v17 = *(v102 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v102);
  v101 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v93 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v93 - v24;
  __chkstk_darwin(v23);
  v27 = &v93 - v26;
  v28 = a1;
  v29 = *(a1 + 168);
  v114 = a2;
  sub_1009F245C(a2);
  v95 = 0;
  v94 = v13;
  v96 = v16;
  v97 = v28;
  v98 = v17;
  v101 = v22;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000076D4(v30, qword_10177BA08);
  v31 = v114;
  sub_100022A54(v114, v27, type metadata accessor for BeaconEstimatedLocation);
  v32 = v31;
  v33 = v25;
  sub_100022A54(v32, v25, type metadata accessor for BeaconEstimatedLocation);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = v18;
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v37 = 136315651;
    v38 = v18;
    v39 = v35;
    sub_100022A54(v27, v101, type metadata accessor for BeaconEstimatedLocation);
    v40 = v33;
    v41 = v102;
    v42 = String.init<A>(describing:)();
    v44 = v43;
    sub_100022C40(v27, type metadata accessor for BeaconEstimatedLocation);
    v45 = sub_1000136BC(v42, v44, &aBlock);

    *(v37 + 4) = v45;
    *(v37 + 12) = 2160;
    *(v37 + 14) = 1752392040;
    *(v37 + 22) = 2081;
    v46 = *(v41 + 24);
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    sub_100022C40(v40, type metadata accessor for BeaconEstimatedLocation);
    v50 = sub_1000136BC(v47, v49, &aBlock);

    *(v37 + 24) = v50;
    v51 = v39;
    v36 = v38;
    _os_log_impl(&_mh_execute_header, v34, v51, "Saved BeaconEstimatedLocation record %s\nfor beacon %{private,mask.hash}s.", v37, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v25, type metadata accessor for BeaconEstimatedLocation);
    sub_100022C40(v27, type metadata accessor for BeaconEstimatedLocation);
  }

  v52 = v100;
  v53 = v96;
  v54 = v94;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v55 = qword_10177B2E8;
  v56 = v102;
  v57 = *(v102 + 24);
  v58 = type metadata accessor for UUID();
  v59 = v114;
  (*(*(v58 - 8) + 16))(v53, v114 + v57, v58);
  v60 = *(v56 + 40);
  v61 = *(v54 + 20);
  v62 = type metadata accessor for Date();
  (*(*(v62 - 8) + 16))(v53 + v61, v59 + v60, v62);
  *(v53 + *(v54 + 24)) = 0;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v63 = *(v52 + 72);
  v64 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v65 = v53;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_101385D80;
  sub_100022A54(v65, v66 + v64, type metadata accessor for BeaconObservation);
  v67 = type metadata accessor for Transaction();
  __chkstk_darwin(v67);
  *(&v93 - 4) = v55;
  *(&v93 - 3) = v66;
  *(&v93 - 2) = 0;
  *(&v93 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_100022C40(v65, type metadata accessor for BeaconObservation);
  v68 = v97;
  sub_100AA2B78(v59 + v57, &v118);
  sub_1000D2A70(&v118, &aBlock, &qword_101696920, &unk_10138B200);
  if (v121)
  {
    sub_10000A748(&aBlock, v117);
    v69 = static Date.> infix(_:_:)();
    v70 = v110;
    v71 = v109;
    v72 = v108;
    if (v69)
    {
      v102 = *(v68 + 152);
      v73 = v59;
      v74 = v68;
      v75 = v101;
      sub_100022A54(v73, v101, type metadata accessor for BeaconEstimatedLocation);
      sub_10001F280(v117, v116);
      v76 = (*(v98 + 80) + 24) & ~*(v98 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = v74;
      sub_10002911C(v75, v77 + v76, type metadata accessor for BeaconEstimatedLocation);
      sub_10000A748(v116, v77 + ((v36 + v76 + 7) & 0xFFFFFFFFFFFFFFF8));
      v122 = sub_100B26114;
      v123 = v77;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v120 = sub_100006684;
      v121 = &unk_101647C08;
      v78 = _Block_copy(&aBlock);

      v79 = v111;
      static DispatchQoS.unspecified.getter();
      v115 = _swiftEmptyArrayStorage;
      sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v80 = v112;
      v59 = v114;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v78);
      (*(v71 + 8))(v80, v70);
      (*(v113 + 8))(v79, v72);
      sub_100007BAC(v117);
    }

    else
    {
      sub_100007BAC(v117);
    }
  }

  else
  {
    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v70 = v110;
    v71 = v109;
    v72 = v108;
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v81 = v104;
  v82 = v103;
  v83 = v105;
  (*(v104 + 104))(v103, enum case for DispatchQoS.QoSClass.default(_:), v105);
  v84 = static OS_dispatch_queue.global(qos:)();
  (*(v81 + 8))(v82, v83);
  v85 = v101;
  sub_100022A54(v59, v101, type metadata accessor for BeaconEstimatedLocation);
  v86 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v87 = swift_allocObject();
  v88 = v107;
  *(v87 + 16) = v106;
  *(v87 + 24) = v88;
  sub_10002911C(v85, v87 + v86, type metadata accessor for BeaconEstimatedLocation);
  v122 = sub_100B260D8;
  v123 = v87;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v120 = sub_100006684;
  v121 = &unk_101647BB8;
  v89 = _Block_copy(&aBlock);

  v90 = v111;
  static DispatchQoS.unspecified.getter();
  v117[0] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v91 = v112;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v89);

  (*(v71 + 8))(v91, v70);
  (*(v113 + 8))(v90, v72);
  sub_10000B3A8(&v118, &qword_101696920, &unk_10138B200);
}

uint64_t sub_100AA213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016B2A70, &unk_1013D37D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v14 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_estimatedLocationSubject);
  v12 = *(v8 + 56);
  sub_100022A54(a2, &v14 - v9, type metadata accessor for BeaconEstimatedLocation);
  sub_10001F280(a3, &v10[v12]);
  PassthroughSubject.send(_:)();
  return sub_10000B3A8(v10, &qword_1016B2A70, &unk_1013D37D0);
}

uint64_t sub_100AA2228(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  *(&v10 - v7) = a3;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a1(v8);
  return sub_10000B3A8(v8, &qword_10169F438, &unk_1013B3300);
}

uint64_t sub_100AA22F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100AA24B8(a3, sub_100AF59BC, v11);
}

uint64_t sub_100AA2444(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100AA24B8(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v26 = *v3;
  v6 = sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for CloudKitChangeSet(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_1000D2A70(a1, v9, &qword_1016975C8, &qword_10138C1F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &qword_1016975C8, &qword_10138C1F0);
    return v27(0, 0);
  }

  else
  {
    sub_10002911C(v9, v16, type metadata accessor for CloudKitChangeSet);
    v18 = *(v3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_changeSetSequence);
    sub_100022A54(v16, v14, type metadata accessor for CloudKitChangeSet);
    v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    sub_10002911C(v14, v22 + v19, type metadata accessor for CloudKitChangeSet);
    *(v22 + v20) = v4;
    v23 = (v22 + v21);
    v24 = v28;
    *v23 = v27;
    v23[1] = v24;
    *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v26;

    Sequencer.perform(identifier:_:enqueueCompletion:)();

    return sub_100022C40(v16, type metadata accessor for CloudKitChangeSet);
  }
}

uint64_t sub_100AA279C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v11 - v4);
  static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v11[1] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_101141BDC(v5);
  return sub_10000B3A8(v5, &qword_101699BC8, &qword_1013926D8);
}

uint64_t sub_100AA2958()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 72);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  static os_log_type_t.info.getter();
  if (qword_101695040 != -1)
  {
LABEL_5:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v8 = *(v0 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v9 = *(*(v11[1] + 128) + 16);

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100AA2B9C(void *a1, uint64_t a2)
{
  v66 = a2;
  v59 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v3 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v62 = &v55 - v4;
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v58 = &v55 - v7;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v57 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v61 = &v55 - v13;
  __chkstk_darwin(v12);
  v64 = &v55 - v14;
  v15 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v55 - v17;
  v19 = type metadata accessor for SharedBeaconRecord(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v63 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v28 = a1[4];
  sub_1000035D0(a1, v29);
  (*(*(*(v28 + 8) + 8) + 32))(v29);
  LOBYTE(v28) = static UUID.== infix(_:_:)();
  v60 = v24;
  v56 = *(v24 + 8);
  v56(v27, v23);
  if (v28)
  {
    goto LABEL_2;
  }

  sub_10001F280(a1, v65);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v31 = swift_dynamicCast();
  v32 = *(v20 + 56);
  if ((v31 & 1) == 0)
  {
    v32(v18, 1, 1, v19);
    v40 = &unk_101698C30;
    v41 = &unk_101392630;
LABEL_14:
    sub_10000B3A8(v18, v40, v41);
    v30 = 0;
    return v30 & 1;
  }

  v32(v18, 0, 1, v19);
  v33 = v18;
  v34 = v63;
  sub_10002911C(v33, v63, type metadata accessor for SharedBeaconRecord);
  v35 = v58;
  sub_1000D2A70(v34 + *(v19 + 80), v58, &unk_1016AF890, &qword_1013926D0);
  v36 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    sub_10000B3A8(v35, &unk_1016AF890, &qword_1013926D0);
    v37 = v60;
    v38 = v64;
    (*(v60 + 56))(v64, 1, 1, v23);
  }

  else
  {
    v38 = v64;
    sub_1000D2A70(v35 + *(v36 + 20), v64, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v35, type metadata accessor for SharedBeaconRecord.PropertyListContent);
    v37 = v60;
  }

  v39 = v61;
  (*(v37 + 16))(v61, v66, v23);
  (*(v37 + 56))(v39, 0, 1, v23);
  v42 = *(v59 + 48);
  v43 = v37;
  v44 = v38;
  v45 = v62;
  sub_1000D2A70(v44, v62, &qword_1016980D0, &unk_10138F3B0);
  v46 = v45;
  sub_1000D2A70(v39, v45 + v42, &qword_1016980D0, &unk_10138F3B0);
  v47 = v43;
  v48 = v23;
  v49 = v39;
  v50 = *(v47 + 48);
  if (v50(v46, 1, v23) != 1)
  {
    v51 = v57;
    sub_1000D2A70(v46, v57, &qword_1016980D0, &unk_10138F3B0);
    if (v50(v46 + v42, 1, v48) != 1)
    {
      (*(v60 + 32))(v27, v46 + v42, v48);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
      v53 = v56;
      v54 = v46;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53(v27, v48);
      sub_10000B3A8(v61, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v64, &qword_1016980D0, &unk_10138F3B0);
      sub_100022C40(v63, type metadata accessor for SharedBeaconRecord);
      v53(v51, v48);
      sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
      return v30 & 1;
    }

    sub_10000B3A8(v61, &qword_1016980D0, &unk_10138F3B0);
    v18 = v62;
    sub_10000B3A8(v64, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v63, type metadata accessor for SharedBeaconRecord);
    v56(v51, v48);
    goto LABEL_13;
  }

  sub_10000B3A8(v49, &qword_1016980D0, &unk_10138F3B0);
  v18 = v62;
  sub_10000B3A8(v64, &qword_1016980D0, &unk_10138F3B0);
  sub_100022C40(v63, type metadata accessor for SharedBeaconRecord);
  if (v50(&v18[v42], 1, v23) != 1)
  {
LABEL_13:
    v40 = &qword_1016AF880;
    v41 = &unk_10138CE20;
    goto LABEL_14;
  }

  sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
LABEL_2:
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_100AA33AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  static os_log_type_t.info.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v8, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v10, v3);
  if (v12)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v16 = type metadata accessor for OwnedBeaconRecord();
    return (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
  }

  else
  {
    v18 = sub_100025044();
    __chkstk_darwin(v18);
    *(&v19 - 2) = a1;
    sub_1012BBBD0(sub_100B27F94, v18, v20);
  }
}

uint64_t *sub_100AA372C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v120 = type metadata accessor for StableIdentifier();
  v6 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v8 = &v107[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OwnedBeaconRecord();
  v123 = *(v9 - 8);
  v124 = v9;
  v10 = *(v123 + 64);
  v11 = __chkstk_darwin(v9);
  v117 = &v107[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v107[-v13];
  v15 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v122 = &v107[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v121 = &v107[-v20];
  v21 = type metadata accessor for String.Encoding();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  if (qword_101694BE8 != -1)
  {
LABEL_115:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_1000076D4(v23, qword_10177BA08);
  sub_100017D5C(a1, a2);
  v119 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  sub_100016590(a1, a2);
  v27 = os_log_type_enabled(v25, v26);
  v114 = a2;
  v115 = a1;
  if (v27)
  {
    v118 = v3;
    v28 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v125 = v116;
    *v28 = 136315138;
    static String.Encoding.utf8.getter();
    v29 = String.init(data:encoding:)();
    if (!v30)
    {
      v29 = Data.hexString.getter();
    }

    a1 = v122;
    v31 = sub_1000136BC(v29, v30, &v125);

    *(v28 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "ownedBeaconGroups(serialNumber: %s", v28, 0xCu);
    sub_100007BAC(v116);

    v3 = v118;
  }

  else
  {

    a1 = v122;
  }

  v32 = v121;
  static SystemInfo.lockState.getter();
  (*(v16 + 104))(a1, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v15);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v16 + 8);
  v16 += 8;
  v34(a1, v15);
  v34(v32, v15);
  if (v33)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "ownedBeaconGroup call failed because in device is in beforeFirstUnlock state", v37, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v39 = sub_100025044();
  v40 = v39;
  v122 = v39[2];
  if (!v122)
  {
    v116 = _swiftEmptyArrayStorage;
LABEL_113:

    return v116;
  }

  a2 = 0;
  if (v115)
  {
    v41 = 0;
  }

  else
  {
    v41 = v114 == 0xC000000000000000;
  }

  v42 = !v41;
  v113 = v42;
  v118 = v114 >> 62;
  v119 = v8 + 1;
  v43 = __OFSUB__(HIDWORD(v115), v115);
  v110 = v43;
  v109 = HIDWORD(v115) - v115;
  v111 = 0;
  v112 = BYTE6(v114);
  v116 = _swiftEmptyArrayStorage;
  v121 = v39;
  while (1)
  {
    if (a2 >= *(v40 + 2))
    {
      __break(1u);
      goto LABEL_115;
    }

    v16 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    a1 = *(v123 + 72);
    sub_100022A54(&v40[v16 + a1 * a2], v14, type metadata accessor for OwnedBeaconRecord);
    sub_100022A54(&v14[*(v124 + 24)], v8, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v51 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v15 = v119;
        v52 = *(v119 + v51[12]);

        v53 = *(v15 + v51[16]);

        v54 = (v8 + v51[20]);
        v3 = *v54;
        v49 = v54[1];
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          sub_100022C40(v8, type metadata accessor for StableIdentifier);
          goto LABEL_24;
        }

        v45 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v15 = v119;
        v46 = *(v119 + v45[12]);

        v47 = *(v15 + v45[16]);

        v48 = (v8 + v45[20]);
        v3 = *v48;
        v49 = v48[1];
        v50 = *(v15 + v45[28]);
      }

      v55 = type metadata accessor for UUID();
      (*(*(v55 - 8) + 8))(v8, v55);
      v125 = v3;
      v126 = v49;
      sub_1000DF96C();
      v56 = Data.init<A>(hexString:)();
      if (v57 >> 60 == 15)
      {
        goto LABEL_23;
      }

      v58 = v56;
      v3 = v57;
      v125 = v56;
      v126 = v57;
      sub_1000E0A3C();
      if (DataProtocol.isNull.getter())
      {
        sub_100006654(v58, v3);
        goto LABEL_23;
      }

      result = Data.trimmed.getter();
      v60 = result;
      v61 = v59;
      v62 = v59 >> 62;
      if (v59 >> 62 == 3)
      {
        if (result)
        {
          v63 = 0;
        }

        else
        {
          v63 = v59 == 0xC000000000000000;
        }

        v65 = !v63 || v118 < 3;
        if (((v65 | v113) & 1) == 0)
        {
          sub_100006654(v58, v3);
          v84 = 0;
          v85 = 0xC000000000000000;
LABEL_106:
          sub_100016590(v84, v85);
          v40 = v121;
LABEL_107:
          sub_10002911C(v14, v117, type metadata accessor for OwnedBeaconRecord);
          v15 = v116;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v127 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10112434C(0, v15[2] + 1, 1);
            v40 = v121;
            v15 = v127;
          }

          v106 = v15[2];
          v105 = v15[3];
          v3 = v106 + 1;
          if (v106 >= v105 >> 1)
          {
            sub_10112434C(v105 > 1, v106 + 1, 1);
            v40 = v121;
            v15 = v127;
          }

          v15[2] = v3;
          v116 = v15;
          sub_10002911C(v117, v15 + v16 + v106 * a1, type metadata accessor for OwnedBeaconRecord);
          goto LABEL_25;
        }

        v66 = 0;
LABEL_86:
        v82 = v118;
        if (v118 <= 1)
        {
          goto LABEL_87;
        }

        goto LABEL_74;
      }

      v82 = v118;
      if (v62)
      {
        if (v62 != 1)
        {
          v95 = result[2];
          v94 = result[3];
          v88 = __OFSUB__(v94, v95);
          v66 = v94 - v95;
          if (v88)
          {
            goto LABEL_122;
          }

          goto LABEL_86;
        }

        LODWORD(v66) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_123;
        }

        v66 = v66;
        if (v118 <= 1)
        {
LABEL_87:
          v96 = v82;
          v89 = v112;
          if (v96)
          {
            v89 = v109;
            if (v110)
            {
              goto LABEL_117;
            }
          }

          goto LABEL_89;
        }
      }

      else
      {
        v66 = BYTE6(v59);
        if (v118 <= 1)
        {
          goto LABEL_87;
        }
      }

LABEL_74:
      if (v82 == 2)
      {
        v87 = *(v115 + 16);
        v86 = *(v115 + 24);
        v88 = __OFSUB__(v86, v87);
        v89 = v86 - v87;
        if (v88)
        {
          goto LABEL_119;
        }

LABEL_89:
        if (v66 != v89)
        {
          goto LABEL_93;
        }

        if (v66 < 1)
        {
LABEL_95:
          sub_100006654(v58, v3);
          v84 = v60;
          v85 = v61;
          goto LABEL_106;
        }

        v97 = v114;
        sub_100017D5C(v115, v114);
        v98 = v97;
        v15 = v111;
        v108 = sub_100F0B1BC(v60, v61, v115, v98);
        v111 = v15;
        sub_100006654(v58, v3);
        sub_100016590(v60, v61);
        v40 = v121;
        if (v108)
        {
          goto LABEL_107;
        }

        goto LABEL_24;
      }

      if (!v66)
      {
        goto LABEL_95;
      }

LABEL_93:
      sub_100006654(v58, v3);
      v73 = v60;
      v74 = v61;
LABEL_94:
      sub_100016590(v73, v74);
      v40 = v121;
      goto LABEL_24;
    }

    v67 = v8[1];
    v68 = v8[3];
    v3 = v8[4];
    v69 = v8[5];

    v70 = sub_100260364(v3, v69);
    v72 = v71;
    v125 = v70;
    v126 = v71;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      v73 = v70;
      v74 = v72;
      goto LABEL_94;
    }

    v3 = Data.trimmed.getter();
    v76 = v75;
    result = sub_100016590(v70, v72);
    v77 = v76 >> 62;
    if (v76 >> 62 == 3)
    {
      if (v3)
      {
        v78 = 0;
      }

      else
      {
        v78 = v76 == 0xC000000000000000;
      }

      v80 = !v78 || v118 < 3;
      if (((v80 | v113) & 1) == 0)
      {
        v84 = 0;
        v85 = 0xC000000000000000;
        goto LABEL_106;
      }

      v81 = 0;
LABEL_81:
      v83 = v118;
      if (v118 > 1)
      {
        goto LABEL_97;
      }

      goto LABEL_82;
    }

    v83 = v118;
    if (v77 == 2)
    {
      v91 = *(v3 + 16);
      v90 = *(v3 + 24);
      v88 = __OFSUB__(v90, v91);
      v81 = v90 - v91;
      if (v88)
      {
        goto LABEL_120;
      }

      goto LABEL_81;
    }

    if (v77 == 1)
    {
      break;
    }

    v81 = BYTE6(v76);
    if (v118 > 1)
    {
      goto LABEL_97;
    }

LABEL_82:
    v92 = v83;
    v93 = v112;
    if (v92)
    {
      v93 = v109;
      if (v110)
      {
        goto LABEL_118;
      }
    }

LABEL_99:
    if (v81 != v93)
    {
      goto LABEL_104;
    }

    if (v81 <= 0)
    {
      goto LABEL_105;
    }

    v101 = v114;
    sub_100017D5C(v115, v114);
    sub_100017D5C(v3, v76);
    v102 = v101;
    v15 = v111;
    v103 = sub_100F0B1BC(v3, v76, v115, v102);
    v111 = v15;
    sub_100016590(v3, v76);
    sub_100016590(v3, v76);
    v40 = v121;
    if (v103)
    {
      goto LABEL_107;
    }

LABEL_24:
    sub_100022C40(v14, type metadata accessor for OwnedBeaconRecord);
LABEL_25:
    if (v122 == ++a2)
    {
      goto LABEL_113;
    }
  }

  LODWORD(v81) = HIDWORD(v3) - v3;
  if (__OFSUB__(HIDWORD(v3), v3))
  {
    goto LABEL_121;
  }

  v81 = v81;
  if (v118 <= 1)
  {
    goto LABEL_82;
  }

LABEL_97:
  if (v83 != 2)
  {
    if (!v81)
    {
LABEL_105:
      v84 = v3;
      v85 = v76;
      goto LABEL_106;
    }

LABEL_104:
    sub_100016590(v3, v76);
LABEL_23:
    v40 = v121;
    goto LABEL_24;
  }

  v100 = *(v115 + 16);
  v99 = *(v115 + 24);
  v88 = __OFSUB__(v99, v100);
  v93 = v99 - v100;
  if (!v88)
  {
    goto LABEL_99;
  }

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
  return result;
}

uint64_t sub_100AA42BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v96 = &v89 - v6;
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v97 = &v89 - v9;
  v93 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v10 = *(*(v93 - 8) + 64);
  v11 = __chkstk_darwin(v93);
  v98 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v89 - v14;
  __chkstk_darwin(v13);
  v103 = &v89 - v16;
  v17 = type metadata accessor for SharedBeaconRecord(0);
  v109 = *(v17 - 8);
  v18 = *(v109 + 64);
  v19 = __chkstk_darwin(v17);
  v95 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v101 = &v89 - v21;
  v22 = type metadata accessor for SystemInfo.DeviceLockState();
  v108 = *(v22 - 8);
  v23 = *(v108 + 8);
  v24 = __chkstk_darwin(v22);
  v107 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v106 = &v89 - v26;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v92 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v89 - v32;
  v34._countAndFlagsBits = 0xD00000000000001ELL;
  v34._object = 0x800000010136CCA0;
  prohibitAsyncContext(functionName:)(v34);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_1000076D4(v35, qword_10177BA08);
  v37 = *(v28 + 16);
  v104 = a1;
  v37(v33, a1, v27);
  v102 = v36;
  v38 = Logger.logObject.getter();
  v39 = v28;
  v40 = static os_log_type_t.info.getter();
  v41 = os_log_type_enabled(v38, v40);
  v99 = v15;
  v100 = v27;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v94 = v39;
    v90 = v43;
    v110[0] = v43;
    *v42 = 141558275;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v27;
    v46 = v17;
    v47 = a2;
    v49 = v48;
    v91 = *(v39 + 8);
    v91(v33, v45);
    v50 = sub_1000136BC(v44, v49, v110);
    a2 = v47;
    v17 = v46;

    *(v42 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v38, v40, "legacySharedBeaconRecord(for uuid: %{private,mask.hash}s", v42, 0x16u);
    sub_100007BAC(v90);

    v51 = v94;
  }

  else
  {

    v91 = *(v39 + 8);
    v91(v33, v27);
    v51 = v39;
  }

  v52 = v106;
  static SystemInfo.lockState.getter();
  v54 = v107;
  v53 = v108;
  (*(v108 + 13))(v107, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v22);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v53 + 1);
  v56(v54, v22);
  v56(v52, v22);
  if ((v55 & 1) == 0)
  {
    v61 = v105;
    v62 = sub_100030068();
    __chkstk_darwin(v62);
    v63 = v103;
    *(&v89 - 2) = v104;
    sub_1012BBC38(sub_100B25ED4, v62, v63);
    v64 = v63;

    v65 = v109;
    v66 = *(v109 + 48);
    if (v66(v64, 1, v17) == 1)
    {
      v67 = v64;
LABEL_12:
      sub_10000B3A8(v67, &unk_101698C30, &unk_101392630);
      return (*(v65 + 56))(a2, 1, 1, v17);
    }

    v108 = v66;
    v68 = v101;
    sub_10002911C(v64, v101, type metadata accessor for SharedBeaconRecord);
    v69 = v96;
    sub_1000D2A70(v68 + *(v17 + 80), v96, &unk_1016AF890, &qword_1013926D0);
    v70 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
    {
      sub_10000B3A8(v69, &unk_1016AF890, &qword_1013926D0);
      v71 = v97;
      (*(v51 + 56))(v97, 1, 1, v100);
    }

    else
    {
      v72 = v69 + *(v70 + 20);
      v71 = v97;
      sub_1000D2A70(v72, v97, &qword_1016980D0, &unk_10138F3B0);
      sub_100022C40(v69, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v73 = v100;
      if ((*(v51 + 48))(v71, 1, v100) != 1)
      {
        v107 = a2;
        v75 = v73;
        v76 = v92;
        (*(v51 + 32))(v92, v71, v75);
        v77 = *(v61 + 168);
        v94 = v51;
        if (qword_101695470 != -1)
        {
          swift_once();
        }

        v78 = type metadata accessor for URL();
        v106 = sub_1000076D4(v78, qword_10177CD50);
        v79._object = 0x800000010135B5A0;
        v79._countAndFlagsBits = 0xD000000000000014;
        prohibitAsyncContext(functionName:)(v79);
        v110[0] = v17;
        sub_1000BC4D4(&qword_101697750, &qword_1013B3560);
        v80 = String.init<A>(describing:)();
        v82 = v81;
        v83 = objc_autoreleasePoolPush();
        v84 = *(v77 + 16);
        __chkstk_darwin(v83);
        *(&v89 - 6) = v77;
        *(&v89 - 5) = v76;
        *(&v89 - 4) = v106;
        *(&v89 - 3) = v80;
        *(&v89 - 2) = v82;
        v85 = v99;
        OS_dispatch_queue.sync<A>(execute:)();
        v74 = v85;
        objc_autoreleasePoolPop(v83);

        sub_100022C40(v101, type metadata accessor for SharedBeaconRecord);
        v91(v76, v100);
        a2 = v107;
        v65 = v109;
LABEL_20:
        v86 = v98;
        sub_1000D2A70(v74, v98, &unk_101698C30, &unk_101392630);
        if (v108(v86, 1, v17) == 1)
        {
          sub_10000B3A8(v86, &unk_101698C30, &unk_101392630);
        }

        else
        {
          v87 = v95;
          sub_10002911C(v86, v95, type metadata accessor for SharedBeaconRecord);
          v88 = *(v87 + *(v17 + 64));
          sub_100022C40(v87, type metadata accessor for SharedBeaconRecord);
          if (v88 != 1)
          {
            v67 = v74;
            goto LABEL_12;
          }
        }

        return sub_1000D2AD8(v74, a2, &unk_101698C30, &unk_101392630);
      }
    }

    sub_10000B3A8(v71, &qword_1016980D0, &unk_10138F3B0);
    v74 = v99;
    sub_10002911C(v68, v99, type metadata accessor for SharedBeaconRecord);
    (*(v65 + 56))(v74, 0, 1, v17);
    goto LABEL_20;
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "legacySharedBeaconRecord call failed because in device is in beforeFirstUnlock state", v59, 2u);
  }

  return (*(v109 + 56))(a2, 1, 1, v17);
}
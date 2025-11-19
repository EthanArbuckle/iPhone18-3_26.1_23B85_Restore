uint64_t sub_1002D37C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_1002D383C(void **a1)
{
  v2 = *(type metadata accessor for RDIntentsRelevantShortcutsHandlerItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10043648C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1002D38E4(v5);
  *a1 = v3;
}

void sub_1002D38E4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for RDIntentsRelevantShortcutsHandlerItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002D40D4(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002D3A10(0, v2, 1, a1);
  }
}

void sub_1002D3A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v86 = type metadata accessor for UUID();
  v8 = *(v86 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v86);
  v85 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v84 = &v74[-v12];
  v13 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v82 = &v74[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v92 = &v74[-v17];
  v91 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v18 = *(v91 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v91);
  v81 = &v74[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v74[-v22];
  v24 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v89 = &v74[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v93 = &v74[-v28];
  __chkstk_darwin(v29);
  v98 = &v74[-v32];
  v76 = a2;
  if (a3 != a2)
  {
    v33 = v30;
    v34 = *a4;
    v35 = *(v31 + 72);
    v94 = (v18 + 48);
    v83 = (v8 + 8);
    v36 = v34 + v35 * (a3 - 1);
    v87 = -v35;
    v88 = v34;
    v37 = a1 - a3;
    v75 = v35;
    v38 = v34 + v35 * a3;
    v90 = v30;
    v95 = v23;
LABEL_6:
    v79 = v36;
    v80 = a3;
    v77 = v38;
    v78 = v37;
    v39 = v37;
    v40 = v93;
    while (1)
    {
      v96 = v38;
      v97 = v39;
      v41 = v98;
      sub_1002D6320(v38, v98, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D6320(v36, v40, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v42 = v92;
      v43 = v40;
      sub_100010364(v41 + *(v33 + 24), v92, &qword_1009410B8, &qword_1007A0A38);
      v44 = *v94;
      v45 = v91;
      v46 = (*v94)(v42, 1, v91);
      v47 = v42;
      v48 = v95;
      v49 = v46;
      v50 = v47;
      if (v49 != 1)
      {
        sub_100031B58(v47, v95, &qword_10094B8E0, &unk_1007AABD0);
        v51 = v40 + *(v33 + 24);
        v52 = v82;
        sub_100010364(v51, v82, &qword_1009410B8, &qword_1007A0A38);
        if (v44(v52, 1, v45) != 1)
        {
          v67 = v81;
          sub_100031B58(v52, v81, &qword_10094B8E0, &unk_1007AABD0);
          v66 = static Date.< infix(_:_:)();
          v68 = v67;
          v69 = v95;
          v40 = v93;
          sub_1000050A4(v68, &qword_10094B8E0, &unk_1007AABD0);
          sub_1000050A4(v69, &qword_10094B8E0, &unk_1007AABD0);
          goto LABEL_14;
        }

        sub_1000050A4(v48, &qword_10094B8E0, &unk_1007AABD0);
        v50 = v52;
        v41 = v98;
        v43 = v93;
      }

      sub_1000050A4(v50, &qword_1009410B8, &qword_1007A0A38);
      v53 = [*v41 uuid];
      v54 = v84;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = UUID.uuidString.getter();
      v56 = v43;
      v58 = v57;
      v59 = *v83;
      v60 = v86;
      (*v83)(v54, v86);
      v61 = [*v56 uuid];
      v62 = v85;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = UUID.uuidString.getter();
      v65 = v64;
      v59(v62, v60);
      if (v55 == v63 && v58 == v65)
      {

        sub_1002D627C(v93, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        sub_1002D627C(v98, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v33 = v90;
LABEL_5:
        a3 = v80 + 1;
        v36 = v79 + v75;
        v37 = v78 - 1;
        v38 = v77 + v75;
        if (v80 + 1 == v76)
        {
          return;
        }

        goto LABEL_6;
      }

      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v40 = v93;
LABEL_14:
      sub_1002D627C(v40, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D627C(v98, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v33 = v90;
      v70 = v96;
      v71 = v97;
      if ((v66 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v88)
      {
        __break(1u);
        return;
      }

      v72 = v89;
      sub_1002D61DC(v96, v89);
      swift_arrayInitWithTakeFrontToBack();
      sub_1002D61DC(v72, v36);
      v36 += v87;
      v38 = v70 + v87;
      v73 = __CFADD__(v71, 1);
      v39 = v71 + 1;
      if (v73)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_1002D40D4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v182 = a1;
  v208 = type metadata accessor for UUID();
  v8 = *(v208 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v208);
  v206 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v205 = &v178 - v12;
  __chkstk_darwin(v13);
  v191 = &v178 - v14;
  __chkstk_darwin(v15);
  v190 = &v178 - v16;
  v17 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v204 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v217 = &v178 - v21;
  __chkstk_darwin(v22);
  v24 = &v178 - v23;
  __chkstk_darwin(v25);
  v198 = &v178 - v26;
  v27 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v199 = &v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v203 = &v178 - v32;
  __chkstk_darwin(v33);
  v183 = &v178 - v34;
  __chkstk_darwin(v35);
  v187 = &v178 - v36;
  v213 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  v196 = *(v213 - 8);
  v37 = *(v196 + 64);
  __chkstk_darwin(v213);
  v188 = &v178 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v212 = &v178 - v40;
  __chkstk_darwin(v41);
  v215 = (&v178 - v42);
  __chkstk_darwin(v43);
  v214 = (&v178 - v44);
  __chkstk_darwin(v45);
  __chkstk_darwin(v46);
  v202 = (&v178 - v47);
  __chkstk_darwin(v48);
  v179 = (&v178 - v49);
  __chkstk_darwin(v50);
  v200 = a3;
  if (*(a3 + 8) < 1)
  {
    v55 = _swiftEmptyArrayStorage;
LABEL_115:
    a3 = *v182;
    if (!*v182)
    {
      goto LABEL_157;
    }

    v8 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_151;
    }

    v173 = v8;
LABEL_118:
    v221 = v173;
    v8 = *(v173 + 2);
    if (v8 >= 2)
    {
      while (*v200)
      {
        v174 = *&v173[16 * v8];
        v175 = v173;
        v176 = *&v173[16 * v8 + 24];
        sub_1002D5378(*v200 + *(v196 + 72) * v174, *v200 + *(v196 + 72) * *&v173[16 * v8 + 16], *v200 + *(v196 + 72) * v176, a3);
        if (v5)
        {
          goto LABEL_129;
        }

        if (v176 < v174)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = sub_1004361F4(v175);
        }

        if (v8 - 2 >= *(v175 + 2))
        {
          goto LABEL_145;
        }

        v177 = &v175[16 * v8];
        *v177 = v174;
        *(v177 + 1) = v176;
        v221 = v175;
        sub_100436168(v8 - 1);
        v173 = v221;
        v8 = *(v221 + 2);
        if (v8 <= 1)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_155;
    }

LABEL_129:

    return;
  }

  v53 = *(a3 + 8);
  v178 = (&v178 - v51);
  v54 = 0;
  v218 = (v28 + 48);
  v55 = _swiftEmptyArrayStorage;
  v207 = (v8 + 8);
  v181 = a4;
  v185 = v24;
  v209 = v27;
  v56 = v52;
  v197 = v52;
  while (1)
  {
    v189 = v55;
    if (v54 + 1 >= v53)
    {
      v89 = v54 + 1;
      v90 = v54;
      goto LABEL_35;
    }

    v201 = v53;
    v57 = *v200;
    v58 = *(v196 + 72);
    v220 = *v200 + v58 * (v54 + 1);
    v59 = v178;
    sub_1002D6320(v220, v178, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v60 = v179;
    sub_1002D6320(v57 + v58 * v54, v179, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    LODWORD(v211) = sub_1002D3254(v59, v60);
    if (v5)
    {
      sub_1002D627C(v60, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D627C(v59, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      goto LABEL_129;
    }

    a3 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem;
    sub_1002D627C(v60, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    sub_1002D627C(v59, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v180 = v54;
    v61 = v54 + 2;
    v210 = v58;
    v62 = v57 + v58 * (v54 + 2);
    v195 = 0;
    v63 = v213;
    v64 = v220;
    do
    {
      v8 = v202;
      if (v201 == v61)
      {
        v89 = v201;
        goto LABEL_21;
      }

      v219 = v61;
      sub_1002D6320(v62, v202, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v220 = v64;
      sub_1002D6320(v64, v56, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v67 = v8 + *(v63 + 24);
      v68 = v8;
      v69 = v198;
      v70 = v56;
      sub_100010364(v67, v198, &qword_1009410B8, &qword_1007A0A38);
      v71 = *v218;
      v72 = v209;
      if ((*v218)(v69, 1, v209) != 1)
      {
        v216 = v62;
        v73 = v187;
        sub_100031B58(v198, v187, &qword_10094B8E0, &unk_1007AABD0);
        v74 = v56 + *(v63 + 24);
        v75 = v185;
        sub_100010364(v74, v185, &qword_1009410B8, &qword_1007A0A38);
        if (v71(v75, 1, v72) != 1)
        {
          v87 = v183;
          sub_100031B58(v75, v183, &qword_10094B8E0, &unk_1007AABD0);
          v88 = v73;
          v8 = static Date.< infix(_:_:)();
          sub_1000050A4(v87, &qword_10094B8E0, &unk_1007AABD0);
          sub_1000050A4(v88, &qword_10094B8E0, &unk_1007AABD0);
          v5 = v195;
          v65 = v210;
          v56 = v197;
          v66 = v220;
          v62 = v216;
          goto LABEL_9;
        }

        sub_1000050A4(v73, &qword_10094B8E0, &unk_1007AABD0);
        v69 = v75;
        v68 = v202;
        v70 = v197;
        v62 = v216;
      }

      sub_1000050A4(v69, &qword_1009410B8, &qword_1007A0A38);
      v76 = [*v68 uuid];
      v77 = v190;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v216 = UUID.uuidString.getter();
      v79 = v78;
      v80 = v208;
      v81 = *v207;
      (*v207)(v77, v208);
      v82 = [*v70 uuid];
      v83 = v191;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = UUID.uuidString.getter();
      v86 = v85;
      v81(v83, v80);
      if (v216 == v84 && v79 == v86)
      {

        v8 = 0;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v5 = v195;
      v56 = v197;
      v65 = v210;
      v66 = v220;
LABEL_9:
      a3 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem;
      sub_1002D627C(v56, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D627C(v202, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v61 = v219 + 1;
      v62 += v65;
      v64 = v66 + v65;
      v63 = v213;
    }

    while (((v211 ^ v8) & 1) == 0);
    v89 = v219;
LABEL_21:
    a4 = v181;
    v90 = v180;
    if (v211)
    {
      if (v89 >= v180)
      {
        if (v180 < v89)
        {
          v91 = v89;
          v8 = v210 * (v89 - 1);
          v92 = v89 * v210;
          v93 = v180;
          v94 = v180 * v210;
          v95 = v210;
          do
          {
            if (v93 != --v91)
            {
              v96 = *v200;
              if (!*v200)
              {
                goto LABEL_154;
              }

              a3 = v96 + v94;
              sub_1002D61DC(v96 + v94, v188);
              if (v94 < v8 || a3 >= v96 + v92)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v94 != v8)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1002D61DC(v188, v96 + v8);
            }

            ++v93;
            v8 -= v95;
            v92 -= v95;
            v94 += v95;
          }

          while (v93 < v91);
          v5 = v195;
          a4 = v181;
          v90 = v180;
        }

        goto LABEL_35;
      }

LABEL_150:
      __break(1u);
LABEL_151:
      v173 = sub_1004361F4(v8);
      goto LABEL_118;
    }

LABEL_35:
    v97 = v200[1];
    if (v89 >= v97)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v89, v90))
    {
      goto LABEL_147;
    }

    if (v89 - v90 >= a4)
    {
      goto LABEL_43;
    }

    if (__OFADD__(v90, a4))
    {
      goto LABEL_148;
    }

    if (v90 + a4 < v97)
    {
      v97 = v90 + a4;
    }

    v98 = v209;
    if (v97 < v90)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v186 = v97;
    if (v89 == v97)
    {
LABEL_43:
      v54 = v89;
      if (v89 < v90)
      {
        goto LABEL_146;
      }

      goto LABEL_44;
    }

    v195 = v5;
    v144 = *v200;
    v145 = *(v196 + 72);
    v146 = *v200 + v145 * (v89 - 1);
    v210 = -v145;
    v180 = v90;
    v147 = v90 - v89;
    v211 = v144;
    v184 = v145;
    v148 = v144 + v89 * v145;
    v150 = v214;
    v149 = v215;
    v151 = v213;
LABEL_97:
    v201 = v89;
    v192 = v148;
    v193 = v147;
    v8 = v147;
    v194 = v146;
LABEL_98:
    v219 = v8;
    v220 = v148;
    sub_1002D6320(v148, v150, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    sub_1002D6320(v146, v149, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v152 = v217;
    v153 = v149;
    sub_100010364(v150 + *(v151 + 24), v217, &qword_1009410B8, &qword_1007A0A38);
    v154 = *v218;
    if ((*v218)(v152, 1, v98) != 1)
    {
      break;
    }

LABEL_101:
    sub_1000050A4(v152, &qword_1009410B8, &qword_1007A0A38);
    v158 = [*v150 uuid];
    v159 = v205;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v216 = UUID.uuidString.getter();
    v161 = v160;
    v162 = v208;
    v163 = *v207;
    (*v207)(v159, v208);
    v164 = [*v153 uuid];
    v8 = v206;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v165 = UUID.uuidString.getter();
    v167 = v166;
    v163(v8, v162);
    if (v216 != v165 || v161 != v167)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v98 = v209;
      v151 = v213;
      v150 = v214;
      goto LABEL_105;
    }

    a3 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem;
    v149 = v215;
    sub_1002D627C(v215, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v150 = v214;
    sub_1002D627C(v214, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v98 = v209;
    v151 = v213;
LABEL_96:
    v89 = v201 + 1;
    v146 = v194 + v184;
    v147 = v193 - 1;
    v148 = v192 + v184;
    if (v201 + 1 != v186)
    {
      goto LABEL_97;
    }

    v5 = v195;
    v90 = v180;
    v54 = v186;
    if (v186 < v180)
    {
      goto LABEL_146;
    }

LABEL_44:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v55 = v189;
    }

    else
    {
      v55 = sub_1003658B8(0, *(v189 + 2) + 1, 1, v189);
    }

    a3 = *(v55 + 2);
    v99 = *(v55 + 3);
    v8 = a3 + 1;
    if (a3 >= v99 >> 1)
    {
      v55 = sub_1003658B8((v99 > 1), a3 + 1, 1, v55);
    }

    *(v55 + 2) = v8;
    v100 = &v55[16 * a3];
    *(v100 + 4) = v90;
    *(v100 + 5) = v54;
    v101 = *v182;
    if (!*v182)
    {
      goto LABEL_156;
    }

    if (a3)
    {
      while (2)
      {
        v102 = v8 - 1;
        if (v8 >= 4)
        {
          v107 = &v55[16 * v8 + 32];
          v108 = *(v107 - 64);
          v109 = *(v107 - 56);
          v113 = __OFSUB__(v109, v108);
          v110 = v109 - v108;
          if (v113)
          {
            goto LABEL_133;
          }

          v112 = *(v107 - 48);
          v111 = *(v107 - 40);
          v113 = __OFSUB__(v111, v112);
          v105 = v111 - v112;
          v106 = v113;
          if (v113)
          {
            goto LABEL_134;
          }

          v114 = &v55[16 * v8];
          v116 = *v114;
          v115 = *(v114 + 1);
          v113 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v113)
          {
            goto LABEL_136;
          }

          v113 = __OFADD__(v105, v117);
          v118 = v105 + v117;
          if (v113)
          {
            goto LABEL_139;
          }

          if (v118 >= v110)
          {
            v136 = &v55[16 * v102 + 32];
            v138 = *v136;
            v137 = *(v136 + 1);
            v113 = __OFSUB__(v137, v138);
            v139 = v137 - v138;
            if (v113)
            {
              goto LABEL_143;
            }

            if (v105 < v139)
            {
              v102 = v8 - 2;
            }
          }

          else
          {
LABEL_63:
            if (v106)
            {
              goto LABEL_135;
            }

            v119 = &v55[16 * v8];
            v121 = *v119;
            v120 = *(v119 + 1);
            v122 = __OFSUB__(v120, v121);
            v123 = v120 - v121;
            v124 = v122;
            if (v122)
            {
              goto LABEL_138;
            }

            v125 = &v55[16 * v102 + 32];
            v127 = *v125;
            v126 = *(v125 + 1);
            v113 = __OFSUB__(v126, v127);
            v128 = v126 - v127;
            if (v113)
            {
              goto LABEL_141;
            }

            if (__OFADD__(v123, v128))
            {
              goto LABEL_142;
            }

            if (v123 + v128 < v105)
            {
              goto LABEL_77;
            }

            if (v105 < v128)
            {
              v102 = v8 - 2;
            }
          }
        }

        else
        {
          if (v8 == 3)
          {
            v103 = *(v55 + 4);
            v104 = *(v55 + 5);
            v113 = __OFSUB__(v104, v103);
            v105 = v104 - v103;
            v106 = v113;
            goto LABEL_63;
          }

          v129 = &v55[16 * v8];
          v131 = *v129;
          v130 = *(v129 + 1);
          v113 = __OFSUB__(v130, v131);
          v123 = v130 - v131;
          v124 = v113;
LABEL_77:
          if (v124)
          {
            goto LABEL_137;
          }

          v132 = &v55[16 * v102];
          v134 = *(v132 + 4);
          v133 = *(v132 + 5);
          v113 = __OFSUB__(v133, v134);
          v135 = v133 - v134;
          if (v113)
          {
            goto LABEL_140;
          }

          if (v135 < v123)
          {
            break;
          }
        }

        a3 = v102 - 1;
        if (v102 - 1 >= v8)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v200)
        {
          goto LABEL_153;
        }

        v140 = v55;
        v8 = *&v55[16 * a3 + 32];
        v141 = *&v55[16 * v102 + 40];
        sub_1002D5378(*v200 + *(v196 + 72) * v8, *v200 + *(v196 + 72) * *&v55[16 * v102 + 32], *v200 + *(v196 + 72) * v141, v101);
        if (v5)
        {
          goto LABEL_129;
        }

        if (v141 < v8)
        {
          goto LABEL_131;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v142 = v140;
        }

        else
        {
          v142 = sub_1004361F4(v140);
        }

        if (a3 >= *(v142 + 2))
        {
          goto LABEL_132;
        }

        v143 = &v142[16 * a3];
        *(v143 + 4) = v8;
        *(v143 + 5) = v141;
        v221 = v142;
        sub_100436168(v102);
        v55 = v221;
        v8 = *(v221 + 2);
        if (v8 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v53 = v200[1];
    a4 = v181;
    v56 = v197;
    if (v54 >= v53)
    {
      goto LABEL_115;
    }
  }

  v155 = v203;
  sub_100031B58(v217, v203, &qword_10094B8E0, &unk_1007AABD0);
  v156 = v149 + *(v151 + 24);
  v157 = v204;
  sub_100010364(v156, v204, &qword_1009410B8, &qword_1007A0A38);
  if (v154(v157, 1, v98) == 1)
  {
    sub_1000050A4(v155, &qword_10094B8E0, &unk_1007AABD0);
    v152 = v157;
    v150 = v214;
    v153 = v215;
    goto LABEL_101;
  }

  v168 = v199;
  sub_100031B58(v157, v199, &qword_10094B8E0, &unk_1007AABD0);
  v169 = v155;
  v8 = static Date.< infix(_:_:)();
  sub_1000050A4(v168, &qword_10094B8E0, &unk_1007AABD0);
  v150 = v214;
  sub_1000050A4(v169, &qword_10094B8E0, &unk_1007AABD0);
  v151 = v213;
LABEL_105:
  v149 = v215;
  a3 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem;
  sub_1002D627C(v215, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
  sub_1002D627C(v150, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
  v170 = v220;
  if ((v8 & 1) == 0)
  {
    goto LABEL_96;
  }

  v171 = v219;
  if (v211)
  {
    a3 = v212;
    sub_1002D61DC(v220, v212);
    swift_arrayInitWithTakeFrontToBack();
    sub_1002D61DC(a3, v146);
    v146 += v210;
    v148 = v170 + v210;
    v172 = __CFADD__(v171, 1);
    v8 = v171 + 1;
    if (v172)
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

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
}

void sub_1002D5378(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v133 = a4;
  v124 = type metadata accessor for UUID();
  v7 = *(v124 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v124);
  v116 = &v110[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v115 = &v110[-v11];
  __chkstk_darwin(v12);
  v120 = &v110[-v13];
  __chkstk_darwin(v14);
  v119 = &v110[-v15];
  v16 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v114 = &v110[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v121 = &v110[-v20];
  __chkstk_darwin(v21);
  v23 = &v110[-v22];
  __chkstk_darwin(v24);
  v26 = &v110[-v25];
  v130 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v27 = *(v130 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v130);
  v111 = &v110[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v113 = &v110[-v31];
  __chkstk_darwin(v32);
  v112 = &v110[-v33];
  __chkstk_darwin(v34);
  v117 = &v110[-v35];
  v36 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v126 = &v110[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  v132 = &v110[-v41];
  __chkstk_darwin(v42);
  v129 = &v110[-v44];
  v125 = *(v45 + 72);
  if (!v125)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v125 == -1)
  {
    goto LABEL_78;
  }

  v46 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v125 == -1)
  {
    goto LABEL_79;
  }

  v47 = (a2 - a1) / v125;
  v136 = a1;
  v135 = v133;
  v127 = v36;
  if (v47 >= v46 / v125)
  {
    v49 = a2;
    v50 = v46 / v125 * v125;
    v132 = v43;
    if (v133 < v49 || v49 + v50 <= v133)
    {
      v51 = v49;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v51 = v49;
      if (v133 != v49)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    if (v50 < 1)
    {
      v80 = (v133 + v50);
      goto LABEL_74;
    }

    v77 = -v125;
    v120 = (v27 + 48);
    v117 = (v7 + 8);
    v78 = v133 + v50;
    v79 = v127;
    v80 = (v133 + v50);
    v128 = a1;
    v129 = -v125;
    while (1)
    {
      v112 = v80;
      v81 = v51 + v77;
      v131 = v51 + v77;
      v119 = v51;
      while (1)
      {
        if (v51 <= a1)
        {
          v136 = v51;
          v134 = v112;
          goto LABEL_76;
        }

        v118 = v80;
        v125 = v78;
        v82 = v78 + v77;
        v122 = a3;
        v123 = (v78 + v77);
        v83 = v132;
        sub_1002D6320(v82, v132, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v84 = v126;
        sub_1002D6320(v81, v126, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v85 = v121;
        sub_100010364(v83 + *(v79 + 24), v121, &qword_1009410B8, &qword_1007A0A38);
        v86 = *v120;
        if ((*v120)(v85, 1, v130) != 1)
        {
          v87 = v113;
          sub_100031B58(v121, v113, &qword_10094B8E0, &unk_1007AABD0);
          v88 = v84 + *(v79 + 24);
          v89 = v114;
          sub_100010364(v88, v114, &qword_1009410B8, &qword_1007A0A38);
          if (v86(v89, 1, v130) != 1)
          {
            v104 = v89;
            v105 = v111;
            sub_100031B58(v104, v111, &qword_10094B8E0, &unk_1007AABD0);
            v103 = static Date.< infix(_:_:)();
            sub_1000050A4(v105, &qword_10094B8E0, &unk_1007AABD0);
            sub_1000050A4(v87, &qword_10094B8E0, &unk_1007AABD0);
            goto LABEL_61;
          }

          sub_1000050A4(v87, &qword_10094B8E0, &unk_1007AABD0);
          v85 = v89;
          v84 = v126;
          v83 = v132;
        }

        sub_1000050A4(v85, &qword_1009410B8, &qword_1007A0A38);
        v90 = [*v83 uuid];
        v91 = v115;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v92 = UUID.uuidString.getter();
        v94 = v93;
        v95 = *v117;
        v96 = v91;
        v97 = v124;
        (*v117)(v96, v124);
        v98 = [*v84 uuid];
        v99 = v116;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = UUID.uuidString.getter();
        v102 = v101;
        v95(v99, v97);
        if (v92 != v100)
        {
          goto LABEL_58;
        }

        if (v94 == v102)
        {

          v103 = 0;
        }

        else
        {
LABEL_58:
          v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v79 = v127;
        a1 = v128;
LABEL_61:
        v106 = v122;
        v107 = v122 + v129;
        sub_1002D627C(v126, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        sub_1002D627C(v132, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v108 = v123;
        if (v103)
        {
          break;
        }

        v80 = v123;
        a3 = v107;
        if (v106 < v125 || v107 >= v125)
        {
          swift_arrayInitWithTakeFrontToBack();
          v77 = v129;
        }

        else
        {
          v77 = v129;
          if (v106 != v125)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v78 = v108;
        v81 = v131;
        v51 = v119;
        if (v108 <= v133)
        {
          goto LABEL_74;
        }
      }

      a3 = v107;
      if (v106 < v119 || v107 >= v119)
      {
        v51 = v131;
        swift_arrayInitWithTakeFrontToBack();
        v80 = v118;
        v77 = v129;
      }

      else
      {
        v109 = v106 == v119;
        v51 = v131;
        v80 = v118;
        v77 = v129;
        if (!v109)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v78 = v125;
      if (v125 <= v133)
      {
LABEL_74:
        v136 = v51;
        v134 = v80;
        goto LABEL_76;
      }
    }
  }

  v116 = v23;
  v123 = a3;
  v48 = v47 * v125;
  if (v133 < a1 || a1 + v48 <= v133)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v133 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v122 = v133 + v48;
  v134 = (v133 + v48);
  if (v48 >= 1 && a2 < v123)
  {
    v126 = (v27 + 48);
    v121 = (v7 + 8);
    v118 = v26;
    do
    {
      v53 = v129;
      sub_1002D6320(a2, v129, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D6320(v133, v132, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_100010364(v53 + *(v36 + 24), v26, &qword_1009410B8, &qword_1007A0A38);
      v54 = *v126;
      v55 = (*v126)(v26, 1, v130);
      v56 = v26;
      v131 = a2;
      if (v55 != 1)
      {
        v57 = v117;
        sub_100031B58(v26, v117, &qword_10094B8E0, &unk_1007AABD0);
        v58 = v116;
        sub_100010364(v132 + *(v36 + 24), v116, &qword_1009410B8, &qword_1007A0A38);
        if (v54(v58, 1, v130) != 1)
        {
          v72 = v58;
          v73 = v112;
          sub_100031B58(v72, v112, &qword_10094B8E0, &unk_1007AABD0);
          v71 = static Date.< infix(_:_:)();
          sub_1000050A4(v73, &qword_10094B8E0, &unk_1007AABD0);
          sub_1000050A4(v57, &qword_10094B8E0, &unk_1007AABD0);
          a2 = v131;
          v36 = v127;
          goto LABEL_29;
        }

        sub_1000050A4(v57, &qword_10094B8E0, &unk_1007AABD0);
        v56 = v58;
        v53 = v129;
      }

      v128 = a1;
      sub_1000050A4(v56, &qword_1009410B8, &qword_1007A0A38);
      v59 = [*v53 uuid];
      v60 = v119;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = UUID.uuidString.getter();
      v63 = v62;
      v64 = *v121;
      v65 = v124;
      (*v121)(v60, v124);
      v66 = [*v132 uuid];
      v67 = v120;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = UUID.uuidString.getter();
      v70 = v69;
      v64(v67, v65);
      if (v61 == v68 && v63 == v70)
      {

        sub_1002D627C(v132, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        sub_1002D627C(v129, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        a2 = v131;
        v36 = v127;
        a1 = v128;
        v26 = v118;
        goto LABEL_34;
      }

      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v131;
      v36 = v127;
      a1 = v128;
      v26 = v118;
LABEL_29:
      sub_1002D627C(v132, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D627C(v129, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      if (v71)
      {
        v74 = v125;
        v75 = v123;
        if (a1 < a2 || a1 >= a2 + v125)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v74;
        goto LABEL_42;
      }

LABEL_34:
      v74 = v125;
      v76 = v133 + v125;
      v75 = v123;
      if (a1 < v133 || a1 >= v76)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v133)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v135 = v76;
      v133 = v76;
LABEL_42:
      a1 += v74;
      v136 = a1;
    }

    while (v133 < v122 && a2 < v75);
  }

LABEL_76:
  sub_100558A10(&v136, &v135, &v134);
}

uint64_t sub_1002D611C(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  a3(a1, &v8);
  v7 = *(a5 + 48);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_1002D61DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D627C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D62DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002D6320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1002D6388(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v38 = &v34 - v5;
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v34 = v1;
    v44 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v6, 0);
    v41 = v44;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v35 = a1 + 64;
    v36 = v6;
    v37 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 36);
      v39 = v11;
      v40 = v15;
      v16 = (*(a1 + 48) + 16 * v10);
      v17 = v16[1];
      v42 = *v16;
      v43 = v17;

      v18 = v38;
      static Locale.current.getter();
      v19 = type metadata accessor for Locale();
      (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
      sub_10013BCF4();
      v20 = StringProtocol.foldedStringForWriting(locale:)();
      v22 = v21;
      sub_1000050A4(v18, &unk_10093F420, &unk_100797AE0);

      v23 = v41;
      v44 = v41;
      v25 = v41[2];
      v24 = v41[3];
      if (v25 >= v24 >> 1)
      {
        result = sub_100026EF4((v24 > 1), v25 + 1, 1);
        v23 = v44;
      }

      v23[2] = v25 + 1;
      v26 = &v23[2 * v25];
      v26[4] = v20;
      v26[5] = v22;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v37;
      v27 = *(v37 + 8 * v14);
      if ((v27 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v23;
      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v10 & 0x3F));
      if (v28)
      {
        v12 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v36;
      }

      else
      {
        v29 = v14 << 6;
        v30 = v14 + 1;
        v13 = v36;
        v31 = (v35 + 8 * v14);
        while (v30 < (v12 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_100010E34(v10, v40, 0);
            v12 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_100010E34(v10, v40, 0);
      }

LABEL_4:
      v11 = v39 + 1;
      v10 = v12;
      if (v39 + 1 == v13)
      {
        return v41;
      }
    }

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

  return result;
}

uint64_t sub_1002D669C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009410C8);
  v1 = sub_100006654(v0, qword_1009410C8);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002D678C(uint64_t a1, SEL *a2, void *a3)
{
  v5 = v3;
  if (*(a1 + 16))
  {
    v6 = &v3[*a3];
    v7 = *v6;
    v8 = *(v6 + 1);
    sub_1000F5104(&unk_100945240, &qword_1007A0A70);
    sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70);
    sub_10013BCF4();
    Sequence<>.joined(separator:)();

    v9 = String._bridgeToObjectiveC()();

    [v5 *a2];
  }

  else
  {

    v10 = *a2;

    [v3 v10];
  }
}

uint64_t sub_1002D68D0(char a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_1002D6CCC(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
    return 0;
  }

  (*(v9 + 32))(v15, v7, v8);
  [v2 lastAccessedSinceReferenceDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_1002D81D8();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v12, v8);
  if (v16)
  {
    v17(v15, v8);
    return 0;
  }

  (*(v9 + 16))(v12, v15, v8);
  Date.timeIntervalSinceReferenceDate.getter();
  [v2 setLastAccessedSinceReferenceDate:Int32.init(timeIntervalSinceReferenceDate:)(v19)];
  v17(v12, v8);
  if (qword_100935E58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_1009410C8);
  v21 = v2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136315138;
    v26 = [v21 remObjectID];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 description];
      v34 = v25;
      v29 = v28;

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v25 = v34;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = sub_10000668C(v30, v32, &v35);

    *(v24 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Updated lastAccessed in REMCDManualSortHint {objectID: %s}", v24, 0xCu);
    sub_10000607C(v25);
  }

  v17(v15, v8);
  return 1;
}

uint64_t sub_1002D6CCC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v36 = v17;
    v37 = v10;
    v38 = v16;
    v39 = v9;
    v40 = a2;
    v41 = v5;
    v42 = v4;
    Date.init()();
    static Calendar.current.getter();
    sub_1000F5104(&qword_100940900, &unk_1007A0220);
    if (a1 == 1)
    {
      v20 = type metadata accessor for Calendar.Component();
      v21 = *(v20 - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100791320;
      v25 = v24 + v23;
      v26 = *(v21 + 104);
      v26(v25, enum case for Calendar.Component.year(_:), v20);
      v26(v25 + v22, enum case for Calendar.Component.month(_:), v20);
      v26(v25 + 2 * v22, enum case for Calendar.Component.day(_:), v20);
      sub_100391E24(v24);
    }

    else
    {
      v29 = type metadata accessor for Calendar.Component();
      v30 = *(v29 - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100791340;
      v34 = *(v30 + 104);
      v34(v33 + v32, enum case for Calendar.Component.year(_:), v29);
      v34(v33 + v32 + v31, enum case for Calendar.Component.month(_:), v29);
      sub_100391E24(v33);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    Calendar.date(from:)();
    (*(v41 + 8))(v8, v42);
    (*(v37 + 8))(v13, v39);
    return (*(v36 + 8))(v19, v38);
  }

  else
  {
    v27 = *(v17 + 56);

    return v27(a2, 1, 1);
  }
}

void sub_1002D71DC(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (qword_100935E58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_1009410C8);

    sub_100138D40(a1, 1);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_10000668C(a3, a4, &v18);
      *(v9 + 12) = 2080;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_10000668C(v10, v11, &v18);

      *(v9 + 14) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Failed to update lastAccessed in REMCDManualSortHint {objectID: %s, error: %s}", v9, 0x16u);
      swift_arrayDestroy();

LABEL_11:

      return;
    }
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    if (qword_100935E58 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_1009410C8);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10000668C(a3, a4, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "Updated lastAccessed in REMCDManualSortHint {objectID: %s}", v15, 0xCu);
      sub_10000607C(v16);

      goto LABEL_11;
    }
  }
}

uint64_t sub_1002D74D4(int a1, char a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v44 = a1;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v38 - v18;
  sub_1002D6CCC(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    return (a3)(0, 0);
  }

  v45 = a4;
  v42 = *(v14 + 32);
  v43 = a3;
  v42(v19, v12, v13);
  [v5 lastAccessedSinceReferenceDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_1002D81D8();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v14 + 8);
  v21(v17, v13);
  if (v20)
  {
    v21(v19, v13);
    a3 = v43;
    return (a3)(0, 0);
  }

  v41 = v21;
  v23 = [v5 storeControllerManagedObjectContext];
  if (v23)
  {
    v40 = v23;
    v24 = [v5 objectID];
    v38 = v24;
    v25 = [v5 remObjectID];
    v39 = v25;
    (*(v14 + 16))(v17, v19, v13);
    v26 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v27 = v26 + v15;
    v28 = swift_allocObject();
    *(v28 + 2) = v40;
    *(v28 + 3) = v24;
    v29 = v43;
    *(v28 + 4) = v25;
    *(v28 + 5) = v29;
    *(v28 + 6) = v45;
    v42(&v28[v26], v17, v13);
    v28[v27] = v44 & 1;
    aBlock[4] = sub_1002D8230;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008ED2C0;
    v30 = _Block_copy(aBlock);
    v31 = v40;
    v32 = v38;
    v33 = v39;

    [v31 performBlock:v30];
    _Block_release(v30);
  }

  else
  {
    v34 = objc_opt_self();
    type metadata accessor for REMCDManualSortHint();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v36 = String._bridgeToObjectiveC()();
    v37 = [v34 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v36];

    v43(v37, 1);
  }

  return v41(v19, v13);
}

void sub_1002D7960(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, char a7)
{
  v31[1] = a5;
  v32 = a4;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v17 = [a1 existingObjectWithID:a2 error:&v33];
  v18 = v33;
  if (v17)
  {
    v19 = v17;
    type metadata accessor for REMCDManualSortHint();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
      v27 = v18;

      if (a3)
      {
        v28 = [objc_opt_self() noSuchObjectErrorWithObjectID:a3];
      }

      else
      {
        v28 = [objc_opt_self() unexpectedError];
      }

      v30 = v28;
      swift_errorRetain();
      v32(v30, 1);

      goto LABEL_14;
    }

    v21 = v20;
    (*(v13 + 16))(v16, a6, v12);
    v22 = v18;
    Date.timeIntervalSinceReferenceDate.getter();
    [v21 setLastAccessedSinceReferenceDate:Int32.init(timeIntervalSinceReferenceDate:)(v23)];
    (*(v13 + 8))(v16, v12);
    if ((a7 & 1) == 0)
    {
LABEL_6:
      v32(1, 0);

      return;
    }

    v33 = 0;
    if ([a1 save:&v33])
    {
      v24 = v33;
      goto LABEL_6;
    }

    v29 = v33;
    v26 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v25 = v33;
    v26 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_errorRetain();
  v32(v26, 1);

LABEL_14:
}

id sub_1002D7DCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDManualSortHint();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002D7E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v5 + 96))(v9, v4);
    v12 = *v9;
    v11 = v9[1];

    v13 = sub_1002D6388(v12);

    v27[0] = v13;

    sub_1004C7D34(v27);

    v14 = sub_1000F5104(&qword_100941120, &qword_1007A0A78);
    v15 = *(v14 + 64);
    v16 = v27[0];
    __chkstk_darwin(v14);
    *(&v26 - 2) = a2;
    v17 = sub_1003DED2C(sub_1002D82BC, (&v26 - 4), v16);

    v27[0] = v17;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    v27[0] = 9406690;
    v27[1] = 0xA300000000000000;
    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 9406690;
    v22._object = 0xA300000000000000;
    String.append(_:)(v22);

    v23 = v27[0];
    v24 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v24 - 8) + 8))(v9 + v15, v24);
    return v23;
  }

  if (v10 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
  {
    return 0;
  }

  if (v10 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    return 0x6174687361486F6ELL;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_1002D81D8()
{
  result = qword_100938DB0;
  if (!qword_100938DB0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938DB0);
  }

  return result;
}

void sub_1002D8230()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));
  v8 = *(v7 + *(v1 + 64));

  sub_1002D7960(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D82BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  v7 = v4[3];
  v8 = v4[4];
  sub_10000F61C(v4, v7);
  result = (*(v8 + 16))(v5, v6, v7, v8);
  *a2 = result;
  a2[1] = v10;
  return result;
}

id sub_1002D833C(void *a1, void *a2, unint64_t a3)
{
  v224 = a3;
  v226 = a2;
  v5 = type metadata accessor for RDUserNotificationCategory();
  v6 = *(v5 - 8);
  v229 = v5;
  v230 = v6;
  v7 = *(v6 + 8);
  __chkstk_darwin(v5);
  v228 = &v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_1009511D0, &qword_1007A0A90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v220 - v11;
  v13 = type metadata accessor for REMNotificationIdentifier();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v221 = &v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v222 = &v220 - v19;
  v20 = __chkstk_darwin(v18);
  v223 = &v220 - v21;
  v22 = __chkstk_darwin(v20);
  v227 = &v220 - v23;
  v24 = __chkstk_darwin(v22);
  v225 = &v220 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v220 - v27;
  __chkstk_darwin(v26);
  v30 = &v220 - v29;
  v31 = type metadata accessor for RDUserNotificationType();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = (&v220 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v231 = [objc_allocWithZone(UNMutableNotificationContent) init];
  (*(v32 + 16))(v35, v3, v31);
  v36 = (*(v32 + 88))(v35, v31);
  if (v36 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {
    (*(v32 + 96))(v35, v31);
    (*(v14 + 32))(v30, v35, v13);
    v37 = v13;
    v38 = v30;
    if (a1)
    {
      v39 = a1;
      REMNotificationIdentifier.init(reminder:)();
      (*(v14 + 56))(v12, 0, 1, v13);
      v40 = v231;
      UNMutableNotificationContent.setNotificationIdentifier(_:)();
      sub_1000050A4(v12, &qword_1009511D0, &qword_1007A0A90);
      v41 = [v39 legacyNotificationIdentifier];
      if (v41)
      {
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        sub_1002DA5BC(v43, v45);
      }

      [v40 setInterruptionLevel:2];
      v46 = [v39 titleDocument];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v85 = String._bridgeToObjectiveC()();

      [v40 setTitle:v85];

      v87 = v229;
      v86 = v230;
      v88 = v228;
      (*(v230 + 13))(v228, enum case for RDUserNotificationCategory.reminderAlarm(_:), v229);
      RDUserNotificationCategory.rawValue.getter();
      (*(v86 + 1))(v88, v87);
      v89 = String._bridgeToObjectiveC()();

      [v40 setThreadIdentifier:v89];

      sub_1002DEB24(v39);
      v90 = String._bridgeToObjectiveC()();

      [v40 setCategoryIdentifier:v90];

      [v40 setShouldPreventNotificationDismissalAfterDefaultAction:1];
      v91 = [objc_opt_self() soundWithAlertType:11];
      [v40 setSound:v91];

      sub_1002DF450(v40, v39);
      goto LABEL_27;
    }

    if (qword_100935E60 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100006654(v68, qword_100941128);
    v69 = *(v14 + 16);
    v69(v28, v30, v13);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v230 = v30;
      v73 = v72;
      v74 = swift_slowAlloc();
      v233 = v74;
      *v73 = 136315138;
      v69(v225, v28, v37);
      v75 = String.init<A>(describing:)();
      v77 = v76;
      v78 = *(v14 + 8);
      v78(v28, v37);
      v79 = sub_10000668C(v75, v77, &v233);

      *(v73 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "Trying to create a notificationContent without a reminder. Returning empty content. {notificationIdentifier: %s}", v73, 0xCu);
      sub_10000607C(v74);

      v78(v230, v37);
      return v231;
    }

    v104 = *(v14 + 8);
    v104(v28, v13);
    goto LABEL_42;
  }

  v49 = a1;
  if (v36 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {
    (*(v32 + 96))(v35, v31);
    v38 = v227;
    v50 = v35;
    v37 = v13;
    (*(v14 + 32))(v227, v50, v13);
    if (a1)
    {
      v51 = a1;
      REMNotificationIdentifier.init(reminder:)();
      (*(v14 + 56))(v12, 0, 1, v13);
      v40 = v231;
      UNMutableNotificationContent.setNotificationIdentifier(_:)();
      sub_1000050A4(v12, &qword_1009511D0, &qword_1007A0A90);
      v53 = v229;
      v52 = v230;
      v54 = v228;
      (*(v230 + 13))(v228, enum case for RDUserNotificationCategory.todayNotificationForSingleReminder(_:), v229);
      RDUserNotificationCategory.rawValue.getter();
      (*(v52 + 1))(v54, v53);
      v55 = String._bridgeToObjectiveC()();

      [v40 setCategoryIdentifier:v55];

      [v40 setShouldPreventNotificationDismissalAfterDefaultAction:1];
      v56 = [objc_opt_self() soundWithAlertType:11];
      [v40 setSound:v56];

      sub_1002DF450(v40, v51);
LABEL_27:
      (*(v14 + 8))(v38, v37);
      return v40;
    }

    if (qword_100935E60 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_100006654(v92, qword_100941128);
    v93 = *(v14 + 16);
    v94 = v223;
    v30 = v227;
    v93(v223, v227, v13);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v233 = v98;
      *v97 = 136315138;
      v93(v225, v94, v37);
      v99 = String.init<A>(describing:)();
      v101 = v100;
      v102 = *(v14 + 8);
      v102(v94, v37);
      v103 = sub_10000668C(v99, v101, &v233);

      *(v97 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v95, v96, "Trying to create a todayNotificationForSingleReminder content without a reminder. Returning empty content. {notificationIdentifier: %s}", v97, 0xCu);
      sub_10000607C(v98);

      v102(v227, v37);
      return v231;
    }

    v104 = *(v14 + 8);
    v104(v94, v13);
LABEL_42:
    v104(v30, v37);
    return v231;
  }

  if (v36 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {
    (*(v32 + 96))(v35, v31);
    v57 = *v35;
    v58 = v226;
    if (v226)
    {
      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
      v59 = v58;
      v60 = [v59 objectID];
      v61 = static NSObject.== infix(_:_:)();

      if (v61)
      {
        v62 = v57;
        v40 = v231;
        UNMutableNotificationContent.setListID(_:)();

        v64 = v229;
        v63 = v230;
        v65 = v228;
        (*(v230 + 13))(v228, enum case for RDUserNotificationCategory.caldavSharedList(_:), v229);
        RDUserNotificationCategory.rawValue.getter();
        (*(v63 + 1))(v65, v64);
        v66 = String._bridgeToObjectiveC()();

        [v40 setCategoryIdentifier:v66];

        v67 = [objc_opt_self() soundWithAlertType:11];
        [v40 setSound:v67];

LABEL_104:
        return v40;
      }
    }

    if (qword_100935E60 != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_100006654(v110, qword_100941128);
    v111 = v58;
    v112 = v57;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v233 = v117;
      *v115 = 136315394;
      if (v58)
      {
        v118 = [v111 objectID];
      }

      else
      {
        v118 = 0;
      }

      v232 = v118;
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v141 = Optional.descriptionOrNil.getter();
      v143 = v142;

      v144 = sub_10000668C(v141, v143, &v233);

      *(v115 + 4) = v144;
      *(v115 + 12) = 2112;
      *(v115 + 14) = v112;
      *v116 = v112;
      v145 = v112;
      _os_log_impl(&_mh_execute_header, v113, v114, "(caldavSharedList) Trying to create a notificationContent with a list whose objectID doesn't match with the listID in the enum. Returning empty content. {list.objectID: %s, enum.listID: %@}", v115, 0x16u);
      sub_1000050A4(v116, &unk_100938E70, &unk_100797230);

      sub_10000607C(v117);
    }

    else
    {
    }

    return v231;
  }

  if (v36 == enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    (*(v32 + 96))(v35, v31);
    v80 = *v35;
    if (v224)
    {
      v81 = sub_1003AF444(v224, *v35);
      v40 = v231;
      if (v81)
      {
        if (v80 >> 62)
        {
          v207 = _CocoaArrayWrapper.endIndex.getter();
          v82 = v226;
          if (v207)
          {
LABEL_23:
            if (v82)
            {
              v59 = v82;

              UNMutableNotificationContent.setReminderIDs(_:)(v234);

              v83 = [v59 objectID];
              UNMutableNotificationContent.setListID(_:)();

              if (v80 >> 62)
              {
                v84 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v84 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v186 = &enum case for RDUserNotificationCategory.singleAssignmentNotification(_:);
              if (v84 != 1)
              {
                v186 = &enum case for RDUserNotificationCategory.multipleAssignmentsNotification(_:);
              }

LABEL_103:
              v204 = v229;
              v203 = v230;
              v205 = v228;
              (*(v230 + 13))(v228, *v186, v229);
              RDUserNotificationCategory.rawValue.getter();
              (*(v203 + 1))(v205, v204);
              v206 = String._bridgeToObjectiveC()();

              [v40 setCategoryIdentifier:v206];

              v67 = [objc_opt_self() soundWithAlertType:11];
              [v40 setSound:v67];
              goto LABEL_104;
            }

            if (qword_100935E60 != -1)
            {
              swift_once();
            }

            v177 = type metadata accessor for Logger();
            sub_100006654(v177, qword_100941128);

            v127 = Logger.logObject.getter();
            v128 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v127, v128))
            {
              v129 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v233 = v130;
              *v129 = 136315138;
              sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
              v178 = Array.description.getter();
              v180 = v179;

              v181 = sub_10000668C(v178, v180, &v233);

              *(v129 + 4) = v181;
              v135 = "Trying to create an assignment notification content without a list. Returning empty content. {reminderIDs: %s}";
              goto LABEL_115;
            }

LABEL_116:

            goto LABEL_117;
          }
        }

        else
        {
          v82 = v226;
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }
        }

        if (qword_100935E60 != -1)
        {
          swift_once();
        }

        v208 = type metadata accessor for Logger();
        sub_100006654(v208, qword_100941128);

        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v233 = v130;
          *v129 = 136315138;
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v209 = Array.description.getter();
          v211 = v210;

          v212 = sub_10000668C(v209, v211, &v233);

          *(v129 + 4) = v212;
          v135 = "Trying to create an assignment notification content with 0 reminderIDs. Returning empty content. {reminderIDs: %s}";
          goto LABEL_115;
        }

        goto LABEL_116;
      }

      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v136 = type metadata accessor for Logger();
      sub_100006654(v136, qword_100941128);

      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v127, v128))
      {
        goto LABEL_116;
      }

      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v233 = v130;
      *v129 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v137 = Array.description.getter();
      v139 = v138;

      v140 = sub_10000668C(v137, v139, &v233);

      *(v129 + 4) = v140;
      v135 = "Trying to create an assignment notification content with inconsistent reminderIDs in parameters. Returning empty content. {reminderIDs: %s}";
    }

    else
    {
      v40 = v231;
      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v126 = type metadata accessor for Logger();
      sub_100006654(v126, qword_100941128);

      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v127, v128))
      {
        goto LABEL_116;
      }

      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v233 = v130;
      *v129 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v131 = Array.description.getter();
      v133 = v132;

      v134 = sub_10000668C(v131, v133, &v233);

      *(v129 + 4) = v134;
      v135 = "Trying to create an assignment notification content without reminderIDs. Returning empty content. {reminderIDs: %s}";
    }

LABEL_115:
    _os_log_impl(&_mh_execute_header, v127, v128, v135, v129, 0xCu);
    sub_10000607C(v130);

    goto LABEL_117;
  }

  if (v36 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    (*(v32 + 96))(v35, v31);
    v105 = *v35;
    if (!v224)
    {
      v40 = v231;
      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v150 = type metadata accessor for Logger();
      sub_100006654(v150, qword_100941128);

      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v127, v128))
      {
        goto LABEL_116;
      }

      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v233 = v130;
      *v129 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v151 = Array.description.getter();
      v153 = v152;

      v154 = sub_10000668C(v151, v153, &v233);

      *(v129 + 4) = v154;
      v135 = "Trying to create a shared list update notification without reminderIDs. Returning empty content. {reminderIDs: %s}";
      goto LABEL_115;
    }

    v106 = sub_1003AF444(v224, *v35);
    v40 = v231;
    if ((v106 & 1) == 0)
    {
      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v155 = type metadata accessor for Logger();
      sub_100006654(v155, qword_100941128);

      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v127, v128))
      {
        goto LABEL_116;
      }

      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v233 = v130;
      *v129 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v156 = Array.description.getter();
      v158 = v157;

      v159 = sub_10000668C(v156, v158, &v233);

      *(v129 + 4) = v159;
      v135 = "Trying to create a shared list update notification with inconsistent reminderIDs in parameters. Returning empty content. {reminderIDs: %s}";
      goto LABEL_115;
    }

    if (v105 >> 62)
    {
      v213 = _CocoaArrayWrapper.endIndex.getter();
      v107 = v226;
      if (v213)
      {
LABEL_38:
        if (v107)
        {
          v59 = v107;

          UNMutableNotificationContent.setReminderIDs(_:)(v235);

          v108 = [v59 objectID];
          UNMutableNotificationContent.setListID(_:)();

          if (v105 >> 62)
          {
            v109 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v109 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v186 = &enum case for RDUserNotificationCategory.sharedListSingleReminderAddedNotification(_:);
          if (v109 != 1)
          {
            v186 = &enum case for RDUserNotificationCategory.sharedListMultipleRemindersAddedNotification(_:);
          }

          goto LABEL_103;
        }

        if (qword_100935E60 != -1)
        {
          swift_once();
        }

        v198 = type metadata accessor for Logger();
        sub_100006654(v198, qword_100941128);

        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v233 = v130;
          *v129 = 136315138;
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v199 = Array.description.getter();
          v201 = v200;

          v202 = sub_10000668C(v199, v201, &v233);

          *(v129 + 4) = v202;
          v135 = "Trying to create a shared list update notification content without a list. Returning empty content. {reminderIDs: %s}";
          goto LABEL_115;
        }

        goto LABEL_116;
      }
    }

    else
    {
      v107 = v226;
      if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }
    }

    if (qword_100935E60 != -1)
    {
      swift_once();
    }

    v214 = type metadata accessor for Logger();
    sub_100006654(v214, qword_100941128);

    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v233 = v130;
      *v129 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v215 = Array.description.getter();
      v217 = v216;

      v218 = sub_10000668C(v215, v217, &v233);

      *(v129 + 4) = v218;
      v135 = "Trying to create a shared list update notification with 0 reminderIDs. Returning empty content. {reminderIDs: %s}";
      goto LABEL_115;
    }

    goto LABEL_116;
  }

  if (v36 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
    (*(v32 + 96))(v35, v31);
    v119 = v222;
    v120 = v13;
    (*(v14 + 32))(v222, v35, v13);
    if (v49)
    {
      v121 = v49;
      REMNotificationIdentifier.init(reminder:)();
      v122 = *(v14 + 56);
      v227 = v120;
      v122(v12, 0, 1, v120);
      v40 = v231;
      UNMutableNotificationContent.setNotificationIdentifier(_:)();
      sub_1000050A4(v12, &qword_1009511D0, &qword_1007A0A90);
      [v40 setInterruptionLevel:2];
      v226 = v121;
      v123 = [v121 titleDocument];
      if (v123)
      {
        v124 = v123;
        v125 = [v123 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v187 = String._bridgeToObjectiveC()();

      [v40 setTitle:v187];

      v188 = v229;
      v189 = v230;
      v190 = *(v230 + 13);
      v191 = v228;
      v190(v228, enum case for RDUserNotificationCategory.reminderAlarm(_:), v229);
      RDUserNotificationCategory.rawValue.getter();
      v192 = *(v189 + 1);
      v192(v191, v188);
      v193 = String._bridgeToObjectiveC()();

      [v40 setThreadIdentifier:v193];

      v190(v191, enum case for RDUserNotificationCategory.dueDateDeltaAlarm(_:), v188);
      RDUserNotificationCategory.rawValue.getter();
      v192(v191, v188);
      v194 = String._bridgeToObjectiveC()();

      [v40 setCategoryIdentifier:v194];

      [v40 setShouldPreventNotificationDismissalAfterDefaultAction:1];
      v195 = [objc_opt_self() soundWithAlertType:11];
      [v40 setSound:v195];

      v196 = v226;
      sub_1002DF450(v40, v226);

      (*(v14 + 8))(v222, v227);
    }

    else
    {
      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v163 = type metadata accessor for Logger();
      sub_100006654(v163, qword_100941128);
      v164 = v14;
      v165 = *(v14 + 16);
      v166 = v221;
      v167 = v13;
      v165(v221, v119, v13);
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v233 = v171;
        *v170 = 136315138;
        v165(v225, v166, v13);
        v172 = String.init<A>(describing:)();
        v174 = v173;
        v175 = *(v164 + 8);
        v175(v166, v13);
        v176 = sub_10000668C(v172, v174, &v233);

        *(v170 + 4) = v176;
        _os_log_impl(&_mh_execute_header, v168, v169, "Trying to create a notificationContent without a reminder. Returning empty content. {notificationIdentifier: %s}", v170, 0xCu);
        sub_10000607C(v171);

        v175(v222, v167);
      }

      else
      {

        v197 = *(v164 + 8);
        v197(v166, v13);
        v197(v119, v13);
      }

      return v231;
    }

    return v40;
  }

  if (v36 == enum case for RDUserNotificationType.todayNotification(_:))
  {
    v147 = v229;
    v146 = v230;
    v148 = v228;
    (*(v230 + 13))(v228, enum case for RDUserNotificationCategory.todayNotification(_:), v229);
    RDUserNotificationCategory.rawValue.getter();
    (*(v146 + 1))(v148, v147);
    v149 = String._bridgeToObjectiveC()();

    v40 = v231;
    [v231 setCategoryIdentifier:v149];

    v127 = [objc_opt_self() soundWithAlertType:11];
    [v40 setSound:v127];
LABEL_117:

    return v40;
  }

  if (v36 == enum case for RDUserNotificationType.todayNotificationBadge(_:))
  {
    v161 = v229;
    v160 = v230;
    v162 = v228;
    (*(v230 + 13))(v228, enum case for RDUserNotificationCategory.todayNotificationBadge(_:), v229);
    RDUserNotificationCategory.rawValue.getter();
    (*(v160 + 1))(v162, v161);
    v127 = String._bridgeToObjectiveC()();

    v40 = v231;
    [v231 setCategoryIdentifier:v127];
    goto LABEL_117;
  }

  if (v36 == enum case for RDUserNotificationType.beforeFirstUnlock(_:))
  {
    v182 = _REMGetLocalizedString();
    if (!v182)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v182 = String._bridgeToObjectiveC()();
    }

    v40 = v231;
    [v231 setBody:v182];

    v184 = v229;
    v183 = v230;
    v185 = v228;
    (*(v230 + 13))(v228, enum case for RDUserNotificationCategory.beforeFirstUnlock(_:), v229);
    RDUserNotificationCategory.rawValue.getter();
    (*(v183 + 1))(v185, v184);
    v127 = String._bridgeToObjectiveC()();

    [v40 setCategoryIdentifier:v127];
    goto LABEL_117;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002DA4F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941128);
  v1 = sub_100006654(v0, qword_100941128);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002DA5BC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100935E60 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100941128);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000668C(a1, a2, v22);
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting BLTBulletinContextKeyWatchLegacyMapKey to %s", v9, 0xCu);
    sub_10000607C(v10);
  }

  sub_1000F5104(&qword_100941160, &qword_1007A0A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:393216];
  *(inited + 40) = a1;
  *(inited + 48) = a2;

  v12 = sub_10038E980(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_100941168, &qword_1007A0AA0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v20 + 1) = v13;
  AnyHashable.init<A>(_:)();
  v21 = sub_1000F5104(&qword_100941170, &qword_1007A0AA8);
  *&v20 = v12;
  v14 = [v3 userInfo];
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = v15;
  if (v21)
  {
    sub_100005EE0(&v20, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C7E48(v18, v22, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_1000050A4(&v20, &qword_100939ED0, &qword_100791B10);
    sub_1003690E0(v22, v18);
    sub_1000050A4(v18, &qword_100939ED0, &qword_100791B10);
  }

  sub_10001B2CC(v22);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v3 setUserInfo:isa];
}

void sub_1002DA8FC(void *a1, uint64_t a2, void (*a3)(char *, void *))
{
  v239 = a3;
  v241 = a1;
  v4 = type metadata accessor for DateComponents();
  v234 = *(v4 - 8);
  v235 = v4;
  v5 = *(v234 + 64);
  __chkstk_darwin(v4);
  v232 = &v223 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v233 = &v223 - v8;
  v9 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v238 = &v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v231 = &v223 - v13;
  __chkstk_darwin(v14);
  v16 = &v223 - v15;
  __chkstk_darwin(v17);
  v19 = &v223 - v18;
  v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v223 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v236 = &v223 - v25;
  __chkstk_darwin(v26);
  v237 = &v223 - v27;
  __chkstk_darwin(v28);
  v30 = &v223 - v29;
  __chkstk_darwin(v31);
  v33 = &v223 - v32;
  __chkstk_darwin(v34);
  v36 = &v223 - v35;
  v240 = type metadata accessor for Date();
  v37 = *(*(v240 - 1) + 64);
  __chkstk_darwin(v240);
  __chkstk_darwin(v38);
  __chkstk_darwin(v39);
  v41 = &v223 - v40;
  __chkstk_darwin(v42);
  __chkstk_darwin(v43);
  v45 = &v223 - v44;
  __chkstk_darwin(v46);
  __chkstk_darwin(v47);
  *&v55 = __chkstk_darwin(v48).n128_u64[0];
  v57 = &v223 - v56;
  v59 = *(a2 + 8);
  v58 = *(a2 + 16);
  v60 = *(a2 + 24);
  v61 = *(a2 + 32);
  if (v61 <= 1)
  {
    v238 = v19;
    if (v61)
    {
      v121 = v58;
      v122 = v60;
      v123 = v59;
      v240 = [v59 trigger];
      objc_opt_self();
      v124 = swift_dynamicCastObjCClass();
      if (v124)
      {
        v125 = v124;
        v126 = [v124 structuredLocation];
        v127 = [v126 displayName];

        if (!v127)
        {
          sub_1001A39AC(v123, v121, v122, 1u);
LABEL_45:
          v156 = v240;
LABEL_58:

          return;
        }

        v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v130 = v129;

        v131 = [v125 proximity];
        if (v131)
        {
          v132 = v241;
          if (v131 == 1 || v131 == 2)
          {
            v179 = _REMGetLocalizedString();
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
            v180 = swift_allocObject();
            *(v180 + 16) = xmmword_100791300;
            *(v180 + 56) = &type metadata for String;
            *(v180 + 64) = sub_100006600();
            *(v180 + 32) = v128;
            *(v180 + 40) = v130;
            String.init(format:_:)();
          }

          else
          {
          }
        }

        else
        {

          v132 = v241;
        }

        v241 = String._bridgeToObjectiveC()();

        [v132 setBody:v241];

        v158 = v123;
        v159 = v121;
        v160 = v122;
        v161 = 1;
LABEL_57:
        sub_1001A39AC(v158, v159, v160, v161);
        v156 = v241;
        goto LABEL_58;
      }

      v133 = v123;
      v134 = v121;
      v135 = v122;
      v136 = 1;
      goto LABEL_36;
    }

    v237 = v51;
    v67 = v53;
    v230 = v52;
    v68 = *a2;
    v69 = [*a2 displayDate];
    if (v69)
    {
      v70 = v69;
      v71 = [objc_allocWithZone(NSDateFormatter) init];
      [v71 setDoesRelativeDateFormatting:1];
      [v71 setDateStyle:1];
      [v71 setTimeStyle:1];
      v72 = [v68 isOverdue];
      v73 = v240;
      if (v72)
      {
        v74 = [v70 date];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = v230;
        (*(v230 + 56))(v33, 0, 1, v73);
        sub_1004F153C(v68, v239, v33, v36);
        sub_1000050A4(v33, &unk_100938850, qword_100795AE0);
        if ((*(v75 + 48))(v36, 1, v73) != 1)
        {
          v168 = v36;
          v169 = v73;
          (*(v75 + 32))(v57, v168, v73);
          isa = Date._bridgeToObjectiveC()().super.isa;
          v171 = [v71 stringFromDate:isa];

          v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v174 = v173;

          v242 = v172;
          v243 = v174;
          v175 = [v70 timeZone];
          if (v175)
          {
            v176 = v238;
            v177 = v175;
            static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

            v178 = 0;
            v88 = v241;
          }

          else
          {
            v178 = 1;
            v88 = v241;
            v176 = v238;
          }

          v211 = type metadata accessor for TimeZone();
          (*(*(v211 - 8) + 56))(v176, v178, 1, v211);
          v212 = sub_1002DFB64(v57, v176);
          v214 = v213;
          sub_1000050A4(v176, &qword_10093F970, &unk_1007A7670);
          v215._countAndFlagsBits = v212;
          v215._object = v214;
          String.append(_:)(v215);

          (*(v230 + 8))(v57, v169);
          goto LABEL_71;
        }

        sub_1000050A4(v36, &unk_100938850, qword_100795AE0);
      }

      v76 = [v70 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = Date._bridgeToObjectiveC()().super.isa;
      v78 = *(v230 + 8);
      v230 += 8;
      v78(v67, v73);
      v79 = [v71 stringFromDate:v77];

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v242 = v80;
      v243 = v82;
      v83 = [v70 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = [v70 timeZone];
      if (v84)
      {
        v85 = v16;
        v86 = v84;
        static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

        v87 = 0;
        v88 = v241;
      }

      else
      {
        v87 = 1;
        v88 = v241;
        v85 = v16;
      }

      v162 = type metadata accessor for TimeZone();
      (*(*(v162 - 8) + 56))(v85, v87, 1, v162);
      v163 = v237;
      v164 = sub_1002DFB64(v237, v85);
      v166 = v165;
      sub_1000050A4(v85, &qword_10093F970, &unk_1007A7670);
      v78(v163, v73);
      v167._countAndFlagsBits = v164;
      v167._object = v166;
      String.append(_:)(v167);
    }

    else
    {
      v242 = 0;
      v243 = 0xE000000000000000;
      v88 = v241;
    }

LABEL_71:
    v216 = String._bridgeToObjectiveC()();

    [v88 setBody:v216];
LABEL_75:

    return;
  }

  if (v61 != 2)
  {
    if (v61 == 3)
    {
      v62 = *(a2 + 16);

      if (!v63)
      {
        return;
      }

      v64 = v63;
      v65 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_100791300;
      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = sub_100006600();
      *(v66 + 32) = v62;
      *(v66 + 40) = v64;
      String.init(format:_:)();

      v240 = String._bridgeToObjectiveC()();

      [v241 setBody:v240];
      goto LABEL_45;
    }

    v224 = v49;
    v225 = v50;
    v228 = v53;
    v229 = v54;
    v230 = v52;
    v96 = *a2;
    v97 = [*a2 displayDate];
    if (!v97)
    {
      v242 = 0;
      v243 = 0xE000000000000000;
      v103 = v241;
      goto LABEL_74;
    }

    v98 = v97;
    v99 = [objc_allocWithZone(NSDateFormatter) init];
    [v99 setDoesRelativeDateFormatting:1];
    [v99 setDateStyle:1];
    v226 = v99;
    [v99 setTimeStyle:1];
    v227 = v98;
    if (![v98 isAllDay])
    {
      v137 = [v96 isOverdue];
      v138 = v240;
      v139 = v227;
      if (v137)
      {
        v140 = [v227 date];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v141 = v230;
        (*(v230 + 56))(v33, 0, 1, v138);
        sub_1004F1A8C(v96, v239, v33, v23);
        sub_1000050A4(v33, &unk_100938850, qword_100795AE0);
        if ((*(v141 + 48))(v23, 1, v138) != 1)
        {
          (*(v141 + 32))(v225, v23, v138);
          v201 = Date._bridgeToObjectiveC()().super.isa;
          v202 = v226;
          v203 = [v226 stringFromDate:v201];

          v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v206 = v205;

          v242 = v204;
          v243 = v206;
          v207 = [v139 timeZone];
          v103 = v241;
          if (v207)
          {
            v208 = v231;
            v209 = v207;
            static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

            v210 = 0;
          }

          else
          {
            v210 = 1;
            v208 = v231;
          }

          v217 = type metadata accessor for TimeZone();
          (*(*(v217 - 8) + 56))(v208, v210, 1, v217);
          v218 = v225;
          v219 = sub_1002DFB64(v225, v208);
          v221 = v220;
          sub_1000050A4(v208, &qword_10093F970, &unk_1007A7670);
          v222._countAndFlagsBits = v219;
          v222._object = v221;
          String.append(_:)(v222);

          (*(v230 + 8))(v218, v138);
          goto LABEL_74;
        }

        sub_1000050A4(v23, &unk_100938850, qword_100795AE0);
      }

      v142 = [v139 date];
      v143 = v228;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v144 = Date._bridgeToObjectiveC()().super.isa;
      v145 = *(v230 + 8);
      v145(v143, v138);
      v146 = v226;
      v147 = [v226 stringFromDate:v144];

      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = v149;

      v242 = v148;
      v243 = v150;
      v151 = [v139 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v152 = [v139 timeZone];
      if (v152)
      {
        v153 = v238;
        v154 = v152;
        static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

        v155 = 0;
        v103 = v241;
      }

      else
      {
        v155 = 1;
        v103 = v241;
        v153 = v238;
      }

      v190 = type metadata accessor for TimeZone();
      (*(*(v190 - 8) + 56))(v153, v155, 1, v190);
      v191 = v229;
      v192 = sub_1002DFB64(v229, v153);
      v194 = v193;
      sub_1000050A4(v153, &qword_10093F970, &unk_1007A7670);
      v145(v191, v138);
      v195._countAndFlagsBits = v192;
      v195._object = v194;
      String.append(_:)(v195);

LABEL_74:
      v216 = String._bridgeToObjectiveC()();

      [v103 setBody:v216];
      goto LABEL_75;
    }

    v100 = [objc_allocWithZone(NSDateFormatter) init];
    [v100 setDoesRelativeDateFormatting:1];
    [v100 setDateStyle:1];
    [v100 setTimeStyle:0];
    v101 = [v96 isOverdue];
    v102 = v240;
    v103 = v241;
    if (v101)
    {
      sub_1004F1548(v96, v239, v30);
      v104 = v230;
      if ((*(v230 + 48))(v30, 1, v102) != 1)
      {
        (*(v104 + 32))(v45, v30, v102);
        v196 = Date._bridgeToObjectiveC()().super.isa;
        v197 = [v100 stringFromDate:v196];

        v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v200 = v199;

        (*(v104 + 8))(v45, v102);
        v242 = v198;
        v243 = v200;
        goto LABEL_74;
      }

      sub_1000050A4(v30, &unk_100938850, qword_100795AE0);
    }

    v105 = [v96 dueDateComponents];
    if (v105)
    {
      v106 = v232;
      v107 = v105;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v109 = v233;
      v108 = v234;
      v110 = v235;
      (*(v234 + 32))(v233, v106, v235);
      v111 = v236;
      sub_1004F20E4(v236);
      (*(v108 + 8))(v109, v110);
      v112 = v230;
      v113 = *(v230 + 48);
      if (v113(v111, 1, v102) != 1)
      {
        v238 = *(v112 + 32);
        (v238)(v41, v111, v102);
        v114 = v237;
        sub_1004F2BFC(v41, v237);
        v239 = *(v112 + 8);
        v239(v41, v102);
        if (v113(v114, 1, v102) != 1)
        {
          v115 = v224;
          (v238)(v224, v114, v102);
          v116 = Date._bridgeToObjectiveC()().super.isa;
          v117 = [v100 stringFromDate:v116];

          v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v120 = v119;

          v239(v115, v102);
          v242 = v118;
          v243 = v120;
          goto LABEL_74;
        }

LABEL_63:
        sub_1000050A4(v114, &unk_100938850, qword_100795AE0);
        v181 = v227;
        v182 = [v227 date];
        v183 = v228;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v184 = Date._bridgeToObjectiveC()().super.isa;
        (*(v112 + 8))(v183, v102);
        v185 = v226;
        v186 = [v226 stringFromDate:v184];

        v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v189 = v188;

        v242 = v187;
        v243 = v189;
        goto LABEL_74;
      }
    }

    else
    {
      v112 = v230;
      v111 = v236;
      (*(v230 + 56))(v236, 1, 1, v102);
    }

    sub_1000050A4(v111, &unk_100938850, qword_100795AE0);
    v114 = v237;
    (*(v112 + 56))(v237, 1, 1, v102);
    goto LABEL_63;
  }

  v89 = *(a2 + 16);
  v90 = *(a2 + 24);
  v91 = *(a2 + 8);
  v92 = [v59 trigger];
  objc_opt_self();
  v93 = swift_dynamicCastObjCClass();
  if (v93)
  {
    v94 = [v93 event];
    if (v94 == 1)
    {
      v95 = v241;
    }

    else
    {
      v95 = v241;
      if (v94 != 2)
      {
LABEL_48:
        v241 = String._bridgeToObjectiveC()();

        [v95 setBody:v241];

        v158 = v91;
        v159 = v89;
        v160 = v90;
        v161 = 2;
        goto LABEL_57;
      }
    }

    v157 = _REMGetLocalizedString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_48;
  }

  v133 = v91;
  v134 = v89;
  v135 = v90;
  v136 = 2;
LABEL_36:

  sub_1001A39AC(v133, v134, v135, v136);
}

id sub_1002DBEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  if (a4)
  {
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v19 = 0;
  v11 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v9 options:v10.super.isa error:&v19];

  v12 = v19;
  if (v11)
  {
    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a3, v13);
  }

  else
  {
    v16 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 8))(a3, v17);
  }

  return v11;
}

uint64_t sub_1002DC07C(uint64_t a1, char a2)
{
  v4 = 0x726F4D7478656E2ELL;
  v5 = type metadata accessor for RDUserNotificationCategory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0xEC000000676E696ELL;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v10 = 0xE800000000000000;
      v4 = 0x746867696E6F742ELL;
      goto LABEL_8;
    }

    if (a1 == 3)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 0xEE006E6F6F6E7265;
      v4 = 0x746641736968742ELL;
      goto LABEL_8;
    }

LABEL_15:
    type metadata accessor for REMReminderNextThirdsHour(0);
    v19[0] = a1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

LABEL_8:
  if (a2)
  {
    v11 = 0x646E656B6565772ELL;
  }

  else
  {
    v11 = 0;
  }

  if (a2)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  (*(v6 + 104))(v9, enum case for RDUserNotificationCategory.reminderAlarm(_:), v5);
  v13 = RDUserNotificationCategory.rawValue.getter();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  v19[0] = v13;
  v19[1] = v15;
  v16._countAndFlagsBits = v4;
  v16._object = v10;
  String.append(_:)(v16);

  v17._countAndFlagsBits = v11;
  v17._object = v12;
  String.append(_:)(v17);

  return v19[0];
}

uint64_t sub_1002DC288()
{
  v0 = type metadata accessor for RDUserNotificationAction();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v235 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v235 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v235 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v235 - v13;
  v15 = __chkstk_darwin(v12);
  v254 = &v235 - v16;
  v17 = __chkstk_darwin(v15);
  v282 = &v235 - v18;
  v19 = __chkstk_darwin(v17);
  v288 = &v235 - v20;
  v21 = __chkstk_darwin(v19);
  v267 = &v235 - v22;
  v23 = __chkstk_darwin(v21);
  v266 = &v235 - v24;
  __chkstk_darwin(v23);
  v265 = &v235 - v25;
  v280 = type metadata accessor for RDUserNotificationCategory();
  v26 = *(v280 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v280);
  v30 = &v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v252 = &v235 - v32;
  v33 = __chkstk_darwin(v31);
  v276 = &v235 - v34;
  v35 = __chkstk_darwin(v33);
  v268 = &v235 - v36;
  v37 = __chkstk_darwin(v35);
  v264 = &v235 - v38;
  __chkstk_darwin(v37);
  v275 = &v235 - v39;
  v40 = _swiftEmptyArrayStorage;
  v302 = _swiftEmptyArrayStorage;
  v41 = static RDUserNotificationCategory.allCases.getter();
  v269 = *(v41 + 16);
  if (!v269)
  {
LABEL_111:
    v43 = v40;
LABEL_112:

    return v43;
  }

  v238 = v30;
  v235 = v5;
  v42 = 0;
  v278 = v26 + 16;
  v273 = enum case for RDUserNotificationCategory.reminderAlarm(_:);
  v258 = enum case for RDUserNotificationCategory.todayNotification(_:);
  v253 = enum case for RDUserNotificationCategory.todayNotificationForSingleReminder(_:);
  v250 = enum case for RDUserNotificationCategory.todayNotificationBadge(_:);
  v292 = (v1 + 104);
  v296 = (v1 + 8);
  v249 = enum case for RDUserNotificationCategory.caldavSharedList(_:);
  v263 = "sWithLocalElementIDPrefix";
  v251 = xmmword_1007953F0;
  v257 = xmmword_100796900;
  v248 = enum case for RDUserNotificationCategory.beforeFirstUnlock(_:);
  v260 = enum case for RDUserNotificationCategory.singleAssignmentNotification(_:);
  v246 = enum case for RDUserNotificationCategory.multipleAssignmentsNotification(_:);
  v245 = enum case for RDUserNotificationCategory.sharedListSingleReminderAddedNotification(_:);
  v244 = enum case for RDUserNotificationCategory.sharedListMultipleRemindersAddedNotification(_:);
  v239 = enum case for RDUserNotificationCategory.sharedListSingleReminderCompletedNotification(_:);
  v237 = enum case for RDUserNotificationCategory.sharedListMultipleRemindersCompletedNotification(_:);
  v236 = enum case for RDUserNotificationCategory.dueDateDeltaAlarm(_:);
  v262 = enum case for RDUserNotificationAction.markAsCompleted(_:);
  v241 = enum case for RDUserNotificationAction.viewAssignmentInList(_:);
  v240 = enum case for RDUserNotificationAction.declineAssignment(_:);
  v256 = enum case for RDUserNotificationAction.snoozeForOneHour(_:);
  v255 = enum case for RDUserNotificationAction.snoozeForOneDay(_:);
  v283 = enum case for RDUserNotificationAction.snoozeToNextThirds(_:);
  v281 = enum case for RDUserNotificationAction.snoozeToNextWeekend(_:);
  v271 = v26 + 88;
  v270 = (v26 + 104);
  v277 = (v26 + 8);
  v43 = _swiftEmptyArrayStorage;
  v293 = v0;
  v243 = v8;
  v242 = v11;
  v247 = v14;
  v44 = v280;
  v259 = v26;
  v261 = v41;
  while (v42 < *(v41 + 16))
  {
    v45 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v46 = *(v26 + 72);
    v274 = v42;
    v47 = v41 + v45 + v46 * v42;
    v48 = v26;
    v49 = *(v26 + 16);
    v50 = v275;
    v49(v275, v47, v44);
    v51 = (*(v48 + 88))(v50, v44);
    if (v51 == v273)
    {
      v52 = v265;
      v295 = *v292;
      v295(v265, v262, v0);
      RDUserNotificationAction.rawValue.getter();
      v294 = *v296;
      (v294)(v52, v0);
      v53 = _REMGetLocalizedString();
      if (!v53)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = String._bridgeToObjectiveC()();
      }

      v54 = String._bridgeToObjectiveC()();
      v55 = objc_opt_self();
      v56 = [v55 iconWithSystemImageName:v54];

      v57 = String._bridgeToObjectiveC()();

      v58 = objc_opt_self();
      v287 = [v58 actionWithIdentifier:v57 title:v53 options:0 icon:v56];

      v59 = v266;
      v295(v266, v256, v0);
      RDUserNotificationAction.rawValue.getter();
      (v294)(v59, v0);
      v60 = _REMGetLocalizedString();
      if (!v60)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = String._bridgeToObjectiveC()();
      }

      v61 = String._bridgeToObjectiveC()();
      v62 = [v55 iconWithSystemImageName:v61];

      v63 = String._bridgeToObjectiveC()();

      v286 = [v58 actionWithIdentifier:v63 title:v60 options:0 icon:v62];

      v64 = v267;
      v295(v267, v255, v0);
      RDUserNotificationAction.rawValue.getter();
      (v294)(v64, v0);
      v65 = _REMGetLocalizedString();
      if (!v65)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = String._bridgeToObjectiveC()();
      }

      v66 = String._bridgeToObjectiveC()();
      v291 = v55;
      v67 = [v55 iconWithSystemImageName:v66];

      v68 = String._bridgeToObjectiveC()();

      v290 = v58;
      v285 = [v58 actionWithIdentifier:v68 title:v65 options:0 icon:v67];

      v284 = objc_opt_self();
      v69 = 0;
      v70 = v295;
      while (2)
      {
        v71 = 0;
        v72 = 0;
        v289 = *(&off_1008DCF80 + v69 + 4);
        v279 = v69 + 1;
        do
        {
          LODWORD(v297) = v71;
          v73 = *(&off_1008DCFB8 + v72 + 32);
          v298 = sub_1002DC07C(v289, *(&off_1008DCFB8 + v72 + 32));
          REMReminderNextThirdsHour.stringForSnoozingUntil()();
          REMReminderNextThirdsHour.systemImageStringForSnoozingUntil()();
          v74 = v288;
          v75 = v293;
          v70(v288, v283, v293);
          RDUserNotificationAction.rawValue.getter();
          (v294)(v74, v75);
          v76 = String._bridgeToObjectiveC()();

          v77 = [v291 iconWithSystemImageName:v76];

          v78 = String._bridgeToObjectiveC()();

          v79 = String._bridgeToObjectiveC()();

          v80 = [v290 actionWithIdentifier:v78 title:v79 options:0 icon:v77];

          v81 = 0;
          if (v73 == 1)
          {
            v82 = v282;
            v83 = v293;
            v295(v282, v281, v293);
            RDUserNotificationAction.rawValue.getter();
            (v294)(v82, v83);
            v84 = _REMGetLocalizedString();
            if (!v84)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v84 = String._bridgeToObjectiveC()();
            }

            v85 = String._bridgeToObjectiveC()();
            v86 = [v291 iconWithSystemImageName:v85];

            v87 = String._bridgeToObjectiveC()();

            v81 = [v290 actionWithIdentifier:v87 title:v84 options:0 icon:v86];
          }

          v88 = String._bridgeToObjectiveC()();

          sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v90 = Array._bridgeToObjectiveC()().super.isa;
          v40 = [v284 categoryWithIdentifier:v88 actions:isa intentIdentifiers:v90 options:3];

          [v40 addPrivateOptions:8519680];
          v91 = v287;
          v92 = v286;
          v299[0] = v287;
          v299[1] = v286;
          v93 = v285;
          v299[2] = v80;
          v299[3] = v285;
          v299[4] = v81;
          v299[5] = 0;
          v300 = _swiftEmptyArrayStorage;
          v94 = v81;
          v298 = v91;
          v95 = v92;
          v96 = v80;
          v97 = v93;
          v98 = 0;
LABEL_19:
          v99 = 6;
          if (v98 > 6)
          {
            v99 = v98;
          }

          while (v98 != 6)
          {
            if (v99 == v98)
            {
              __break(1u);
              goto LABEL_111;
            }

            v100 = v299[v98++];
            if (v100)
            {
              v101 = v100;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v300 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v300 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              goto LABEL_19;
            }
          }

          sub_1000F5104(&qword_100941158, &qword_1007A0A88);
          swift_arrayDestroy();
          v102 = Array._bridgeToObjectiveC()().super.isa;

          [v40 setActions:v102];

          v103 = _REMGetLocalizedString();
          if (!v103)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v103 = String._bridgeToObjectiveC()();
          }

          [v40 setCategorySummaryFormat:v103, v235];

          v104 = _REMGetLocalizedString();
          if (!v104)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v104 = String._bridgeToObjectiveC()();
          }

          [v40 setHiddenPreviewsBodyPlaceholder:v104];

          v105 = v40;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v302 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v302 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v106 = *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v71 = 1;
          v72 = &_mh_execute_header.magic + 1;
          v70 = v295;
        }

        while ((v297 & 1) == 0);
        v69 = v279;
        if (v279 != 3)
        {
          continue;
        }

        break;
      }

      v43 = v302;

      v0 = v293;
      v14 = v247;
      v44 = v280;
      goto LABEL_90;
    }

    if (v51 == v258)
    {
      v107 = v264;
      (*v270)(v264);
      RDUserNotificationCategory.rawValue.getter();
      (*v277)(v107, v44);
      v108 = String._bridgeToObjectiveC()();

      sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
      v109 = Array._bridgeToObjectiveC()().super.isa;
      v110 = Array._bridgeToObjectiveC()().super.isa;
      v111 = [objc_opt_self() categoryWithIdentifier:v108 actions:v109 intentIdentifiers:v110 options:3];

      v112 = _REMGetLocalizedString();
      v41 = v261;
      if (!v112)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v41 = v261;
      if (v51 == v253)
      {
        v114 = v254;
        (*v292)(v254, v262, v0);
        RDUserNotificationAction.rawValue.getter();
        (*v296)(v114, v0);
        v115 = _REMGetLocalizedString();
        if (!v115)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v115 = String._bridgeToObjectiveC()();
        }

        v116 = String._bridgeToObjectiveC()();
        v117 = [objc_opt_self() iconWithSystemImageName:v116];

        v118 = String._bridgeToObjectiveC()();

        v119 = [objc_opt_self() actionWithIdentifier:v118 title:v115 options:0 icon:v117];

        v120 = v264;
        v121 = v280;
        (*v270)(v264, v253, v280);
        RDUserNotificationCategory.rawValue.getter();
        (*v277)(v120, v121);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v122 = swift_allocObject();
        *(v122 + 16) = v251;
        *(v122 + 32) = v119;
        v123 = v119;
        v124 = String._bridgeToObjectiveC()();

        sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
        v125 = Array._bridgeToObjectiveC()().super.isa;

        v126 = Array._bridgeToObjectiveC()().super.isa;
        v127 = [objc_opt_self() categoryWithIdentifier:v124 actions:v125 intentIdentifiers:v126 options:3];

        v128 = _REMGetLocalizedString();
LABEL_45:
        v129 = v128;
        if (!v129)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v129 = String._bridgeToObjectiveC()();
        }

        [v127 setHiddenPreviewsBodyPlaceholder:{v129, v235}];

        v130 = v127;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v302 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v302 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v229 = *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v43 = v302;
        v0 = v293;
        goto LABEL_50;
      }

      if (v51 == v250)
      {
        goto LABEL_51;
      }

      v131 = v274;
      if (v51 == v249)
      {
        goto LABEL_52;
      }

      if (v51 != v248)
      {
        if (v51 == v260 || v51 == v246)
        {
          v149 = *v292;
          (*v292)(v14, v241, v0);
          RDUserNotificationAction.rawValue.getter();
          v297 = *v296;
          (v297)(v14, v0);
          v150 = _REMGetLocalizedString();
          if (!v150)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v150 = String._bridgeToObjectiveC()();
          }

          v290 = v149;
          v151 = String._bridgeToObjectiveC()();
          v294 = objc_opt_self();
          v152 = [v294 iconWithSystemImageName:v151];

          v153 = String._bridgeToObjectiveC()();

          v291 = objc_opt_self();
          v295 = [v291 actionWithIdentifier:v153 title:v150 options:4 icon:v152];

          v154 = v242;
          v155 = v240;
          v156 = v293;
          (v149)(v242, v240, v293);
          RDUserNotificationAction.rawValue.getter();
          (v297)(v154, v156);
          v157 = _REMGetLocalizedString();
          if (!v157)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v157 = String._bridgeToObjectiveC()();
          }

          v158 = String._bridgeToObjectiveC()();
          v159 = [v294 iconWithSystemImageName:v158];

          v160 = String._bridgeToObjectiveC()();

          v298 = [v291 actionWithIdentifier:v160 title:v157 options:0 icon:v159];

          v161 = v243;
          v162 = v155;
          v163 = v293;
          (v290)(v243, v162, v293);
          RDUserNotificationAction.rawValue.getter();
          (v297)(v161, v163);
          v164 = _REMGetLocalizedString();
          if (!v164)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v164 = String._bridgeToObjectiveC()();
          }

          v165 = String._bridgeToObjectiveC()();
          v166 = [v294 iconWithSystemImageName:v165];

          v167 = String._bridgeToObjectiveC()();

          v290 = [v291 actionWithIdentifier:v167 title:v164 options:0 icon:v166];

          sub_1000F5104(&qword_100941148, &qword_1007A0A80);
          v289 = swift_allocObject();
          v168 = (v289 + v45);
          v169 = *v270;
          v44 = v280;
          (*v270)(v289 + v45, v260, v280);
          v297 = v168;
          v294 = v169;
          (v169)(&v168[v46], v246, v44);
          v291 = objc_opt_self();
          v170 = 0;
          v171 = 0;
          v172 = v268;
          do
          {
            v173 = v170;
            v49(v172, &v297[v171 * v46], v44);
            RDUserNotificationCategory.rawValue.getter();
            v174 = v44;
            v175 = String._bridgeToObjectiveC()();

            sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
            v176 = Array._bridgeToObjectiveC()().super.isa;
            v177 = Array._bridgeToObjectiveC()().super.isa;
            v178 = [v291 categoryWithIdentifier:v175 actions:v176 intentIdentifiers:v177 options:0];

            v179 = _REMGetLocalizedString();
            if (!v179)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v179 = String._bridgeToObjectiveC()();
            }

            [v178 setHiddenPreviewsBodyPlaceholder:{v179, v235}];

            (v294)(v276, v260, v174);
            sub_1002DEACC();
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            if (v300 != v299[6] || (v180 = v298, v301 != v299[7]))
            {
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                v180 = v298;
              }

              else
              {
                v180 = v290;
              }
            }

            v181 = *v277;
            (*v277)(v276, v280);

            sub_1000F5104(&unk_100939D60, &unk_1007959E0);
            v182 = swift_allocObject();
            *(v182 + 16) = v257;
            v183 = v295;
            *(v182 + 32) = v295;
            *(v182 + 40) = v180;
            v184 = v180;
            v185 = v183;
            v186 = Array._bridgeToObjectiveC()().super.isa;

            [v178 setActions:v186];

            v187 = _REMGetLocalizedString();
            if (!v187)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v187 = String._bridgeToObjectiveC()();
            }

            [v178 setCategorySummaryFormat:v187];

            v188 = v178;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v302 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v302 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v189 = *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v172 = v268;
            v44 = v280;
            v181(v268, v280);
            v170 = 1;
            v171 = 1;
          }

          while ((v173 & 1) == 0);
          v43 = v302;
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();

          v0 = v293;
          v14 = v247;
LABEL_90:
          v41 = v261;
          goto LABEL_51;
        }

        if (v51 == v245 || v51 == v244)
        {
          sub_1000F5104(&qword_100941148, &qword_1007A0A80);
          v298 = swift_allocObject();
          v190 = &v298[v45];
          v191 = v44;
          v192 = *v270;
          (*v270)(&v298[v45], v245, v191);
          (v192)(&v190[v46], v244, v191);
          v193 = objc_opt_self();
          v49(v252, v190, v191);
          RDUserNotificationCategory.rawValue.getter();
          v194 = String._bridgeToObjectiveC()();

          sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
          v195 = Array._bridgeToObjectiveC()().super.isa;
          v196 = Array._bridgeToObjectiveC()().super.isa;
          v197 = [v193 categoryWithIdentifier:v194 actions:v195 intentIdentifiers:v196 options:0];

          v198 = _REMGetLocalizedString();
          if (!v198)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v198 = String._bridgeToObjectiveC()();
          }

          [v197 setHiddenPreviewsBodyPlaceholder:{v198, v235}];

          v199 = v197;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v41 = v261;
          if (*((v302 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v302 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v230 = *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v200 = *v277;
          v201 = v252;
          v202 = v280;
          (*v277)(v252, v280);
          v49(v201, &v190[v46], v202);
          RDUserNotificationCategory.rawValue.getter();
          v203 = String._bridgeToObjectiveC()();

          v204 = Array._bridgeToObjectiveC()().super.isa;
          v205 = Array._bridgeToObjectiveC()().super.isa;
          v206 = [v193 categoryWithIdentifier:v203 actions:v204 intentIdentifiers:v205 options:0];

          v207 = _REMGetLocalizedString();
          if (!v207)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v207 = String._bridgeToObjectiveC()();
          }

          [v206 setHiddenPreviewsBodyPlaceholder:v207];

          v208 = v206;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v0 = v293;
          if (*((v302 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v302 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v231 = *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v209 = &v285;
          goto LABEL_109;
        }

        if (v51 == v239 || v51 == v237)
        {
          sub_1000F5104(&qword_100941148, &qword_1007A0A80);
          v298 = swift_allocObject();
          v210 = &v298[v45];
          v211 = v44;
          v212 = *v270;
          (*v270)(&v298[v45], v239, v211);
          (v212)(&v210[v46], v237, v211);
          v213 = objc_opt_self();
          v49(v238, v210, v211);
          RDUserNotificationCategory.rawValue.getter();
          v214 = String._bridgeToObjectiveC()();

          sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
          v215 = Array._bridgeToObjectiveC()().super.isa;
          v216 = Array._bridgeToObjectiveC()().super.isa;
          v217 = [v213 categoryWithIdentifier:v214 actions:v215 intentIdentifiers:v216 options:0];

          v218 = _REMGetLocalizedString();
          if (!v218)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v218 = String._bridgeToObjectiveC()();
          }

          [v217 setHiddenPreviewsBodyPlaceholder:{v218, v235}];

          v219 = v217;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v41 = v261;
          if (*((v302 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v302 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v232 = *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v200 = *v277;
          v220 = v238;
          v221 = v280;
          (*v277)(v238, v280);
          v49(v220, &v210[v46], v221);
          RDUserNotificationCategory.rawValue.getter();
          v222 = String._bridgeToObjectiveC()();

          v223 = Array._bridgeToObjectiveC()().super.isa;
          v224 = Array._bridgeToObjectiveC()().super.isa;
          v225 = [v213 categoryWithIdentifier:v222 actions:v223 intentIdentifiers:v224 options:0];

          v226 = _REMGetLocalizedString();
          if (!v226)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v226 = String._bridgeToObjectiveC()();
          }

          [v225 setHiddenPreviewsBodyPlaceholder:v226];

          v227 = v225;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v0 = v293;
          if (*((v302 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v302 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v233 = *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v209 = &v272;
LABEL_109:
          v44 = v280;
          v200(*(v209 - 32), v280);
          v43 = v302;
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v14 = v247;
          goto LABEL_51;
        }

        if (v51 != v236)
        {
          goto LABEL_114;
        }

        v136 = v235;
        (*v292)(v235, v262, v0);
        RDUserNotificationAction.rawValue.getter();
        (*v296)(v136, v0);
        v137 = _REMGetLocalizedString();
        if (!v137)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v137 = String._bridgeToObjectiveC()();
        }

        v138 = String._bridgeToObjectiveC()();
        v139 = [objc_opt_self() iconWithSystemImageName:v138];

        v140 = String._bridgeToObjectiveC()();

        v141 = [objc_opt_self() actionWithIdentifier:v140 title:v137 options:0 icon:v139];

        v142 = v264;
        v143 = v280;
        (*v270)(v264, v236, v280);
        RDUserNotificationCategory.rawValue.getter();
        (*v277)(v142, v143);
        v144 = String._bridgeToObjectiveC()();

        sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
        v145 = Array._bridgeToObjectiveC()().super.isa;
        v146 = Array._bridgeToObjectiveC()().super.isa;
        v127 = [objc_opt_self() categoryWithIdentifier:v144 actions:v145 intentIdentifiers:v146 options:3];

        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v147 = swift_allocObject();
        *(v147 + 16) = v251;
        *(v147 + 32) = v141;
        v123 = v141;
        v148 = Array._bridgeToObjectiveC()().super.isa;

        [v127 setActions:v148];

        v128 = _REMGetLocalizedString();
        goto LABEL_45;
      }

      v132 = v264;
      (*v270)(v264);
      RDUserNotificationCategory.rawValue.getter();
      (*v277)(v132, v44);
      v133 = String._bridgeToObjectiveC()();

      sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
      v134 = Array._bridgeToObjectiveC()().super.isa;
      v135 = Array._bridgeToObjectiveC()().super.isa;
      v111 = [objc_opt_self() categoryWithIdentifier:v133 actions:v134 intentIdentifiers:v135 options:3];

      v112 = _REMGetLocalizedString();
      if (!v112)
      {
LABEL_37:
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = String._bridgeToObjectiveC()();
      }
    }

    [v111 setHiddenPreviewsBodyPlaceholder:{v112, v235}];

    v113 = v111;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v302 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v302 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v228 = *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v43 = v302;
LABEL_50:
    v44 = v280;
LABEL_51:
    v131 = v274;
LABEL_52:
    v42 = v131 + 1;
    v26 = v259;
    if (v42 == v269)
    {
      goto LABEL_112;
    }
  }

  __break(1u);
LABEL_114:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_1002DEACC()
{
  result = qword_100941150;
  if (!qword_100941150)
  {
    type metadata accessor for RDUserNotificationCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941150);
  }

  return result;
}

uint64_t sub_1002DEB24(void *a1)
{
  v30 = a1;
  v1 = type metadata accessor for Date();
  v28 = *(v1 - 8);
  v29 = v1;
  v2 = *(v28 + 64);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Calendar();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DateComponents();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1000F5104(&qword_100940900, &unk_1007A0220);
  v13 = type metadata accessor for Calendar.Component();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100791300;
  (*(v14 + 104))(v17 + v16, enum case for Calendar.Component.hour(_:), v13);
  sub_100391E24(v17);
  swift_setDeallocating();
  (*(v14 + 8))(v17 + v16, v13);
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:)();

  (*(v28 + 8))(v4, v29);
  (*(v5 + 8))(v8, v27);
  v18 = DateComponents.hour.getter();
  LOBYTE(v5) = v19;
  (*(v9 + 8))(v12, v26);
  if (v5)
  {
    v18 = 0;
  }

  v20 = [objc_opt_self() nextThirdsHourFromHour:v18];
  v21 = [v30 dueDateComponents];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 rem_isWeekendDateComponents];
  }

  else
  {
    v23 = 0;
  }

  return sub_1002DC07C(v20, v23);
}

id sub_1002DEEB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v59 = a3;
  v60 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  v21 = [objc_opt_self() defaultManager];
  v62 = 0;
  v22 = [v21 rem_createProtectedTemporaryDirectoryIfNeededWithError:&v62];
  v23 = v62;
  if (v22)
  {
    v57 = a5;
    v61 = v8;
    v24 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v23;

    v26 = [objc_opt_self() processInfo];
    v27 = [v26 globallyUniqueString];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathComponent(_:isDirectory:)();

    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v62 = 0;
    v31 = [v21 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v62];

    v32 = v62;
    if (v31)
    {
      v62 = a1;
      v63 = a2;
      v33 = v32;

      v34._countAndFlagsBits = 1735290926;
      v34._object = 0xE400000000000000;
      String.append(_:)(v34);
      v36 = v62;
      v35 = v63;
      URL.appendingPathComponent(_:)();
      Data.write(to:options:)();
      v41 = v58;
      (*(v9 + 16))(v58, v15, v61);
      if (v57)
      {
        v42 = sub_10045BA24(v57);
      }

      else
      {
        v42 = 0;
      }

      sub_1000060C8(0, &qword_100941178, UNNotificationAttachment_ptr);
      v51 = sub_1002DBEC0(v36, v35, v41, v42);

      v52 = *(v9 + 8);
      v53 = v15;
      v54 = v61;
      v52(v53, v61);
      v52(v18, v54);
      v52(v20, v54);
      return v51;
    }

    v38 = v62;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v39 = *(v9 + 8);
    v40 = v61;
    v39(v18, v61);
    v39(v20, v40);
  }

  else
  {
    v37 = v62;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_100935E60 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100006654(v43, qword_100941128);
  swift_errorRetain();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v62 = v47;
    *v46 = 136315138;
    swift_getErrorValue();
    v48 = Error.localizedDescription.getter();
    v50 = sub_10000668C(v48, v49, &v62);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v44, v45, "Error creating UNNotificationAttachment from UIImage {error: %s}", v46, 0xCu);
    sub_10000607C(v47);
  }

  else
  {
  }

  return 0;
}

void sub_1002DF450(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMApplicationIconFormat();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 userActivity];
  if (v14)
  {
    v15 = v14;
    v34 = a1;
    (*(v10 + 104))(v13, enum case for REMApplicationIconFormat.notificationShortLook(_:), v9);
    v16 = REMUserActivity.appIconAndName(format:scale:)();
    (*(v10 + 8))(v13, v9);
    if (v16)
    {

      v17 = [objc_allocWithZone(UIImage) initWithCGImage:v16 scale:0 orientation:3.0];
      v18 = UIImagePNGRepresentation(v17);
      if (v18)
      {
        v19 = v18;
        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = [a2 objectID];
        v24 = [v23 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = UUID.uuidString.getter();
        v27 = v26;
        (*(v5 + 8))(v8, v4);
        v28 = sub_10038EA80(_swiftEmptyArrayStorage);
        v29 = sub_1002DEEB8(v25, v27, v20, v22, v28);

        if (v29)
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1007953F0;
          *(v30 + 32) = v29;
          sub_1000060C8(0, &qword_100941178, UNNotificationAttachment_ptr);
          v31 = v29;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v34 setAttachments:isa];
          sub_10001BBA0(v20, v22);

          v15 = v31;
        }

        else
        {
          sub_10001BBA0(v20, v22);
        }
      }

      else
      {

        v15 = v16;
      }
    }
  }
}

BOOL sub_1002DF7D8(uint64_t a1)
{
  v30 = a1;
  v31 = type metadata accessor for Date();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = objc_opt_self();
  v17 = [v16 daemonUserDefaults];
  v18 = [v17 timeZoneOverrideEnabled];

  if (v18 && (v19 = [v16 daemonUserDefaults], v20 = objc_msgSend(v19, "timeZoneOverride"), v19, v20))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    TimeZone.init(identifier:)();

    v21 = *(v10 + 48);
    if (v21(v8, 1, v9) == 1)
    {
      v22 = v29;
      static TimeZone.current.getter();
      if (v21(v8, 1, v9) != 1)
      {
        sub_1000050A4(v8, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      v22 = v29;
      (*(v10 + 32))(v29, v8, v9);
    }

    (*(v10 + 32))(v15, v22, v9);
  }

  else
  {
    static TimeZone.current.getter();
  }

  Date.init()();
  v23 = TimeZone.secondsFromGMT(for:)();
  v24 = *(v1 + 8);
  v25 = v31;
  v24(v4, v31);
  Date.init()();
  v26 = TimeZone.secondsFromGMT(for:)();
  v24(v4, v25);
  (*(v10 + 8))(v15, v9);
  return v23 == v26;
}

uint64_t sub_1002DFB64(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v36 - v5;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMFeatureFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, enum case for REMFeatureFlags.timeZoneSupport(_:), v12, v15);
  v18 = REMFeatureFlags.isEnabled.getter();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    sub_1002DFF48(a2, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000050A4(v6, &qword_10093F970, &unk_1007A7670);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v19 = TimeZone.abbreviation(for:)();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        if (!sub_1002DF7D8(v11))
        {
          v24 = [objc_allocWithZone(NSDateFormatter) init];
          [v24 setDoesRelativeDateFormatting:1];
          [v24 setDateStyle:0];
          [v24 setTimeStyle:1];
          isa = TimeZone._bridgeToObjectiveC()().super.isa;
          [v24 setTimeZone:isa];

          v36[0] = 10272;
          v36[1] = 0xE200000000000000;
          v26 = Date._bridgeToObjectiveC()().super.isa;
          v27 = [v24 stringFromDate:v26];

          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v31._countAndFlagsBits = v28;
          v31._object = v30;
          String.append(_:)(v31);

          v32._countAndFlagsBits = 32;
          v32._object = 0xE100000000000000;
          String.append(_:)(v32);
          v33._countAndFlagsBits = v22;
          v33._object = v21;
          String.append(_:)(v33);

          v34._countAndFlagsBits = 41;
          v34._object = 0xE100000000000000;
          String.append(_:)(v34);

          v35 = v36[0];
          (*(v8 + 8))(v11, v7);
          return v35;
        }

        (*(v8 + 8))(v11, v7);
      }

      else
      {
        (*(v8 + 8))(v11, v7);
      }
    }
  }

  return 0;
}

uint64_t sub_1002DFF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DFFB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941180);
  v1 = sub_100006654(v0, qword_100941180);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002E0080(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v100 = a2;
  v104 = type metadata accessor for UUID();
  v99 = *(v104 - 8);
  v5 = *(v99 + 64);
  __chkstk_darwin(v104);
  v103 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RDPermanentlyHiddenReminder();
  v102 = *(v7 - 8);
  v8 = *(v102 + 64);
  __chkstk_darwin(v7 - 8);
  v101 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s10PredicatesOMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters.reminderID.getter();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007953F0;
  *(v15 + 32) = v14;
  *v13 = v15;
  v13[8] = 1;
  swift_storeEnumTagMultiPayload();
  v16 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v17 = qword_100936080;
  v18 = v14;
  if (v17 != -1)
  {
LABEL_19:
    swift_once();
  }

  v109 = qword_100974E30;
  v19 = sub_100043AA8();
  v20 = [objc_allocWithZone(NSFetchRequest) init];
  v111 = v16;
  v21 = [swift_getObjCClassFromMetadata() entity];
  [v20 setEntity:v21];

  [v20 setAffectedStores:0];
  [v20 setPredicate:v19];

  [v20 setFetchLimit:0];
  v110 = v20;
  [v20 setFetchOffset:0];
  v16 = _swiftEmptyArrayStorage;
  v115 = _swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100949370, &unk_100797770);
  sub_1002E0F3C();
  Predicate = Sequence<>.postFetchPredicateTypes.getter();
  v115 = sub_1003EBAD0();
  sub_100271EA8(_swiftEmptyArrayStorage);
  v117[2] = v115;
  v23 = sub_100235FA0(Predicate);

  v24 = sub_100277CC0(v23);

  if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_21:

LABEL_22:
    sub_100271EA8(v16);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v34 = v110;
    [v110 setRelationshipKeyPathsForPrefetching:isa];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v35 = Array._bridgeToObjectiveC()().super.isa;
    [v34 setSortDescriptors:v35];

    v36 = NSManagedObjectContext.fetch<A>(_:)();
    v16 = v3;
    if (v3)
    {
      sub_1002E0FE8(v13, _s10PredicatesOMa);
    }

    else
    {
      v26 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v36);

      if (v26 >> 62)
      {
        goto LABEL_57;
      }

      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        while (1)
        {
          v108 = v18;
          if ((v26 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_65;
            }

            v37 = *(v26 + 32);
          }

          v38 = v37;

          v39 = [v38 account];
          if (!v39)
          {
            if (qword_100935E68 != -1)
            {
              swift_once();
            }

            v46 = type metadata accessor for Logger();
            sub_100006654(v46, qword_100941180);
            v47 = v108;
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              *v50 = 138412290;
              *(v50 + 4) = v47;
              *v51 = v47;
              v52 = v47;
              _os_log_impl(&_mh_execute_header, v48, v49, "permanentlyHiddenReminders: Failed to get account of reminderID: %@.", v50, 0xCu);
              sub_100039860(v51);
            }

            v53 = objc_opt_self();
            v115 = 0;
            v116 = 0xE000000000000000;
            _StringGuts.grow(_:)(70);
            v54._countAndFlagsBits = 0xD000000000000043;
            v54._object = 0x80000001007F4470;
            String.append(_:)(v54);
            v55 = [v47 description];
            v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;

            v59._countAndFlagsBits = v56;
            v59._object = v58;
            String.append(_:)(v59);

            v60._countAndFlagsBits = 46;
            v60._object = 0xE100000000000000;
            String.append(_:)(v60);
            v61 = String._bridgeToObjectiveC()();

            [v53 internalErrorWithDebugDescription:v61];

            swift_willThrow();
            goto LABEL_62;
          }

          v40 = v39;
          v41 = [v39 recentlyDeletedInfoAsData];
          if (!v41)
          {
            break;
          }

          v42 = v41;
          v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v26 = type metadata accessor for RDRecentlyDeletedInfo();
          sub_1002E0FA0(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo);
          static REMJSONRepresentable.fromJSONData(_:)();
          if (v16)
          {
            sub_1002E0FE8(v13, _s10PredicatesOMa);
            sub_10001BBA0(v43, v45);

            return;
          }

          v111 = v40;
          v112 = v38;
          v107 = v13;
          sub_10001BBA0(v43, v45);
          v110 = v115;
          v69 = v115[2];
          v72 = *(v69 + 56);
          v71 = v69 + 56;
          v70 = v72;
          v73 = 1 << *(v115[2] + 32);
          v74 = -1;
          if (v73 < 64)
          {
            v74 = ~(-1 << v73);
          }

          v75 = v74 & v70;
          v76 = (v73 + 63) >> 6;
          v13 = (v99 + 8);
          v113 = v115[2];
          swift_bridgeObjectRetain_n();
          v18 = 0;
          while (v75)
          {
            v77 = v18;
LABEL_52:
            v78 = __clz(__rbit64(v75));
            v75 &= v75 - 1;
            v26 = v101;
            sub_1001A3A2C(*(v113 + 48) + *(v102 + 72) * (v78 | (v77 << 6)), v101);
            v79 = [v108 uuid];
            v80 = v103;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            LOBYTE(v79) = static UUID.== infix(_:_:)();
            (*v13)(v80, v104);
            sub_1002E0FE8(v26, type metadata accessor for RDPermanentlyHiddenReminder);
            if (v79)
            {
LABEL_53:

              v13 = v107;
              v40 = v111;
              v38 = v112;
              goto LABEL_54;
            }
          }

          while (1)
          {
            v77 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v77 >= v76)
            {
              goto LABEL_53;
            }

            v75 = *(v71 + 8 * v77);
            ++v18;
            if (v75)
            {
              v18 = v77;
              goto LABEL_52;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_58;
          }
        }

        if (qword_100935E68 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_100006654(v62, qword_100941180);
        v63 = v108;
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v66 = 138412290;
          *(v66 + 4) = v63;
          *v67 = v63;
          v68 = v63;
          _os_log_impl(&_mh_execute_header, v64, v65, "permanentlyHiddenReminders: No recentlyDeletedInfo for account of reminderID: %@.", v66, 0xCu);
          sub_100039860(v67);
        }

LABEL_54:
        REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result.init(isPermanentlyHidden:)();
      }

      else
      {
LABEL_58:

        if (qword_100935E68 != -1)
        {
LABEL_65:
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        sub_100006654(v81, qword_100941180);
        v82 = v18;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *v85 = 138412290;
          *(v85 + 4) = v82;
          *v86 = v82;
          v87 = v82;
          _os_log_impl(&_mh_execute_header, v83, v84, "permanentlyHiddenReminders: Failed to get reminder of reminderID: %@.", v85, 0xCu);
          sub_100039860(v86);
        }

        v88 = objc_opt_self();
        v115 = 0;
        v116 = 0xE000000000000000;
        _StringGuts.grow(_:)(71);
        v89._countAndFlagsBits = 0xD000000000000044;
        v89._object = 0x80000001007F44C0;
        String.append(_:)(v89);
        v90 = [v82 description];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94._countAndFlagsBits = v91;
        v94._object = v93;
        String.append(_:)(v94);

        v95._countAndFlagsBits = 46;
        v95._object = 0xE100000000000000;
        String.append(_:)(v95);
        v96 = String._bridgeToObjectiveC()();

        [v88 internalErrorWithDebugDescription:v96];

        swift_willThrow();
      }

LABEL_62:
      sub_1002E0FE8(v13, _s10PredicatesOMa);
    }

    return;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (!v25)
  {
    goto LABEL_21;
  }

LABEL_5:
  v117[0] = _swiftEmptyArrayStorage;
  v26 = v117;
  sub_100026EF4(0, v25 & ~(v25 >> 63), 0);
  if (v25 < 0)
  {
    goto LABEL_56;
  }

  v105 = a1;
  v106 = v3;
  v107 = v13;
  v108 = v18;
  a1 = 0;
  v16 = v117[0];
  v112 = v25;
  v113 = v24 & 0xC000000000000001;
  while (1)
  {
    v13 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v113)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a1 >= *(v24 + 16))
      {
        goto LABEL_18;
      }

      v27 = *(v24 + 8 * a1 + 32);
    }

    v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v29)
    {
      break;
    }

    v3 = v28;
    v30 = v29;

    v117[0] = v16;
    v18 = v16[2];
    v31 = v16[3];
    if (v18 >= v31 >> 1)
    {
      sub_100026EF4((v31 > 1), v18 + 1, 1);
      v16 = v117[0];
    }

    v16[2] = v18 + 1;
    v32 = &v16[2 * v18];
    v32[4] = v3;
    v32[5] = v30;
    ++a1;
    if (v13 == v112)
    {

      v13 = v107;
      v18 = v108;
      v3 = v106;
      goto LABEL_22;
    }
  }

  v115 = 0;
  v116 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v97._object = 0x80000001007EC120;
  v97._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v97);
  v114 = v27;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002E0EE4(uint64_t a1)
{
  result = sub_1002E0FA0(&qword_1009411B8, &type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002E0F3C()
{
  result = qword_100939850;
  if (!qword_100939850)
  {
    sub_1000F514C(&qword_100949370, &unk_100797770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939850);
  }

  return result;
}

uint64_t sub_1002E0FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002E0FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1002E1048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100026EF4(0, v1, 0);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v40 = *(v2 + 36);
  v33 = v2 + 72;
  v34 = v2;
  v35 = v1;
  v36 = v2 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_29;
    }

    if (v40 != *(v2 + 36))
    {
      goto LABEL_30;
    }

    v39 = v6 >> 6;
    v38 = v7;
    v10 = *(v2 + 48) + 16 * v6;
    v11 = *(*(v2 + 56) + 8 * v6);
    v12 = *(v11 + 16);
    if (v12)
    {
      v37 = *(v10 + 8);

      sub_100026EF4(0, v12, 0);
      v13 = (v11 + 40);
      do
      {
        v15 = *(v13 - 1);
        v14 = *v13;
        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];

        if (v17 >= v16 >> 1)
        {
          sub_100026EF4((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = v15;
        v18[5] = v14;
        v13 += 4;
        --v12;
      }

      while (v12);
      v2 = v34;
    }

    else
    {
      v19 = *(v10 + 8);
    }

    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      result = sub_100026EF4((v23 > 1), v24 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v24 + 1;
    v25 = &_swiftEmptyArrayStorage[2 * v24];
    v25[4] = v20;
    v25[5] = v22;
    v8 = 1 << *(v2 + 32);
    if (v6 >= v8)
    {
      goto LABEL_31;
    }

    v3 = v36;
    v26 = *(v36 + 8 * v39);
    if ((v26 & (1 << v6)) == 0)
    {
      goto LABEL_32;
    }

    if (v40 != *(v2 + 36))
    {
      goto LABEL_33;
    }

    v27 = v26 & (-2 << (v6 & 0x3F));
    if (v27)
    {
      v8 = __clz(__rbit64(v27)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v35;
    }

    else
    {
      v28 = v39 << 6;
      v29 = v39 + 1;
      v30 = (v33 + 8 * v39);
      v9 = v35;
      while (v29 < (v8 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_100010E34(v6, v40, 0);
          v8 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_100010E34(v6, v40, 0);
    }

LABEL_4:
    v7 = v38 + 1;
    v6 = v8;
    if (v38 + 1 == v9)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1002E13F0(void (*a1)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = v2;
  sub_1000F5104(&qword_100941340, &qword_1007A1068);
  sub_10000CB48(&qword_100941370, &qword_100941340, &qword_1007A1068);
  v4 = dispatch thunk of Sequence.underestimatedCount.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v4 & ~(v4 >> 63), 0);
  v5 = _swiftEmptyArrayStorage;
  v20 = v1;

  dispatch thunk of Sequence.makeIterator()();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v19 = v18;
      if (!v18)
      {
        break;
      }

      a1(&v20, &v19);
      if (v3)
      {
        goto LABEL_16;
      }

      v3 = 0;

      v7 = v20;
      v6 = v21;
      v22 = v5;
      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        sub_100026EF4((v8 > 1), v9 + 1, 1);
        v5 = v22;
      }

      v5[2] = v9 + 1;
      v10 = &v5[2 * v9];
      v10[4] = v7;
      v10[5] = v6;
      if (!--v4)
      {
LABEL_8:
        while (1)
        {
          dispatch thunk of _AnyIteratorBoxBase.next()();
          if (!v20)
          {
            break;
          }

          v19 = v20;
          a1(&v20, &v19);
          if (v3)
          {
            goto LABEL_17;
          }

          v3 = 0;

          v11 = v20;
          v12 = v21;
          v22 = v5;
          v14 = v5[2];
          v13 = v5[3];
          if (v14 >= v13 >> 1)
          {
            sub_100026EF4((v13 > 1), v14 + 1, 1);
            v5 = v22;
          }

          v5[2] = v14 + 1;
          v15 = &v5[2 * v14];
          v15[4] = v11;
          v15[5] = v12;
        }

        return v5;
      }
    }
  }

  __break(1u);
LABEL_16:

  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

void *sub_1002E165C(uint64_t a1)
{
  sub_1000F5104(&qword_100941388, &qword_1007A1200);
  sub_10000CB48(&qword_1009413A8, &qword_100941388, &qword_1007A1200);
  v2 = dispatch thunk of Sequence.underestimatedCount.getter();
  sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
  v16 = a1;

  result = dispatch thunk of Sequence.makeIterator()();
  if (v2 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v2)
  {
    do
    {
      result = dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!a1)
      {
        goto LABEL_13;
      }

      v4 = REMSuggestedList.listIdentifier.getter();
      v6 = v5;

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_100026EF4((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v4;
      v9[5] = v6;
    }

    while (--v2);
  }

  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!v16)
    {
      break;
    }

    v10 = REMSuggestedList.listIdentifier.getter();
    v12 = v11;

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      sub_100026EF4((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v10;
    v15[5] = v12;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1002E1854(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v21 = a1;
  v4 = sub_1000F5104(&qword_10094A360, &unk_1007A12E0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v20 - v7;
  v9 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  sub_10000CB48(&qword_1009413B0, &qword_10093EDF8, &qword_10079D5B0);
  dispatch thunk of Sequence.makeIterator()();
  v10 = *(v5 + 44);
  sub_10000CB48(&qword_10093EE00, &qword_10093EDF8, &qword_10079D5B0);
  dispatch thunk of Collection.endIndex.getter();
  v11 = _swiftEmptyArrayStorage;
  if (*&v8[v10] == v22[0])
  {
LABEL_2:
    sub_1000050A4(v8, &qword_10094A360, &unk_1007A12E0);
  }

  else
  {
    v20[0] = v9;
    v20[1] = a2;
    while (1)
    {
      v14 = dispatch thunk of Collection.subscript.read();
      v16 = *v15;
      v14(v22, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v23 = v16;
      v17 = v21(&v23);
      if (v2)
      {
        break;
      }

      if (v17)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253830(0, v11[2] + 1, 1);
          v11 = v24;
        }

        v13 = v11[2];
        v12 = v11[3];
        if (v13 >= v12 >> 1)
        {
          sub_100253830((v12 > 1), v13 + 1, 1);
          v11 = v24;
        }

        v11[2] = v13 + 1;
        v11[v13 + 4] = v16;
      }

      dispatch thunk of Collection.endIndex.getter();
      if (*&v8[v10] == v22[0])
      {
        goto LABEL_2;
      }
    }

    sub_1000050A4(v8, &qword_10094A360, &unk_1007A12E0);
  }

  return v11;
}

void sub_1002E1AFC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = 0;
  v20 = _swiftEmptyArrayStorage;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v6;
  }

  while (!v10);
  while (1)
  {
    v19 = *(*(v4 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v19;
    v16 = a1(&v19);
    if (v3)
    {
      break;
    }

    v10 &= v10 - 1;
    if (v16)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = a2;
      v13 = v20[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a2 = v12;
      v4 = a3;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v6 = v14;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v6 = v14;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v14 = v6;
  }
}

void sub_1002E1C94(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v24 = _swiftEmptyArrayStorage;
  if ((a3 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_1002F1430();
    Set.Iterator.init(_cocoa:)();
    v4 = v23[1];
    v5 = v23[2];
    v6 = v23[3];
    v7 = v23[4];
    v8 = v23[5];
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v21 = v4;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000060C8(0, &qword_100939EE0, off_1008D41D0), swift_dynamicCast(), v17 = v22, v15 = v7, v16 = v8, !v22))
    {
LABEL_22:
      sub_10001B860();
      return;
    }

LABEL_19:
    v23[0] = v17;
    v18 = a1(v23);
    if (v3)
    {

      sub_10001B860();

      return;
    }

    if (v18)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = v24[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
    v4 = v21;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1002E1F04()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009411C0);
  v1 = sub_100006654(v0, qword_1009411C0);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_1002E1FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (!a2)
  {
    Hasher._combine(_:)(0);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1002E208C()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  v3 = *v0;
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_1002E2144()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (!v2)
  {
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002E21EC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

void sub_1002E2298(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v478 = a3;
  v479 = a2;
  v439 = a5;
  v455 = sub_1000F5104(&qword_1009412C8, &qword_1007A0EA0);
  v436 = *(v455 - 8);
  v8 = *(v436 + 64);
  __chkstk_darwin(v455);
  v424 = &v402 - v9;
  v437 = sub_1000F5104(&qword_1009412D0, &qword_1007A0EA8);
  v10 = *(*(v437 - 8) + 64);
  __chkstk_darwin(v437);
  v444 = &v402 - v11;
  v12 = sub_1000F5104(&qword_1009412D8, &qword_1007A0EB0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v438 = &v402 - v14;
  v15 = sub_1000F5104(&qword_1009412E0, &qword_1007A0EB8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v451 = &v402 - v17;
  v18 = sub_1000F5104(&qword_1009412E8, &qword_1007A0EC0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v449 = &v402 - v20;
  v21 = sub_1000F5104(&qword_1009412F0, &qword_1007A0EC8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v450 = &v402 - v23;
  v454 = sub_1000F5104(&qword_1009412F8, &qword_1007A0ED0);
  v24 = *(*(v454 - 8) + 64);
  __chkstk_darwin(v454);
  v448 = &v402 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v443 = (&v402 - v27);
  __chkstk_darwin(v28);
  v464 = &v402 - v29;
  v30 = sub_1000F5104(&qword_100941300, &qword_1007A0ED8);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v434 = (&v402 - v32);
  v425 = type metadata accessor for KMeansAutoTuner.KMeanTuningHistory();
  v426 = *(v425 - 8);
  v33 = *(v426 + 64);
  __chkstk_darwin(v425);
  v417 = &v402 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v416 = &v402 - v36;
  __chkstk_darwin(v37);
  v415 = &v402 - v38;
  v447 = type metadata accessor for REMSuggestedAttributesTrainer.Result.IntentionalWord();
  v446 = *(v447 - 8);
  v39 = *(v446 + 64);
  __chkstk_darwin(v447);
  v420 = &v402 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = type metadata accessor for RDIntentClusterModel.TuningSnapshot();
  v418 = *(v419 - 8);
  v41 = *(v418 + 64);
  __chkstk_darwin(v419);
  v427 = &v402 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = type metadata accessor for KMeans.TrainingMetrics();
  v468 = *(v475 - 8);
  v43 = *(v468 + 64);
  __chkstk_darwin(v475);
  v412 = &v402 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v411 = &v402 - v46;
  __chkstk_darwin(v47);
  v474 = &v402 - v48;
  v414 = type metadata accessor for RDIntentClusterModel.ModelSnapshot();
  v413 = *(v414 - 8);
  v49 = *(v413 + 64);
  __chkstk_darwin(v414);
  v429 = &v402 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = sub_1000F5104(&qword_100941308, &qword_1007A0EE0);
  v51 = *(*(v456 - 8) + 64);
  __chkstk_darwin(v456);
  v435 = (&v402 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v53);
  v421 = (&v402 - v54);
  __chkstk_darwin(v55);
  v442 = (&v402 - v56);
  __chkstk_darwin(v57);
  v463 = &v402 - v58;
  v453 = sub_1000F5104(&qword_100941310, &unk_1007A0EE8);
  v59 = *(*(v453 - 8) + 64);
  __chkstk_darwin(v453);
  v440 = &v402 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v441 = (&v402 - v62);
  __chkstk_darwin(v63);
  v462 = &v402 - v64;
  v432 = type metadata accessor for REMTitleEmbeddingConfig();
  v431 = *(v432 - 8);
  v65 = *(v431 + 64);
  __chkstk_darwin(v432);
  v430 = &v402 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v457 = *(v458 - 8);
  v67 = *(v457 + 64);
  __chkstk_darwin(v458);
  v465 = &v402 - v68;
  v466 = sub_1000F5104(&qword_100941318, &qword_1007A0EF8);
  v69 = *(*(v466 - 8) + 64);
  __chkstk_darwin(v466);
  v480 = (&v402 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v71);
  v461 = (&v402 - v72);
  __chkstk_darwin(v73);
  v470 = &v402 - v74;
  v75 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v76 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75 - 8);
  v428 = &v402 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v471 = &v402 - v79;
  v460 = type metadata accessor for REMSuggestedAttributeInputDataFrame();
  v459 = *(v460 - 8);
  v80 = *(v459 + 64);
  __chkstk_darwin(v460);
  v473 = &v402 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v469 = sub_1000F5104(&qword_100941320, &qword_1007A0F00);
  v472 = *(v469 - 8);
  v82 = *(v472 + 64);
  __chkstk_darwin(v469);
  v433 = &v402 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84);
  v467 = &v402 - v85;
  v476 = type metadata accessor for URL();
  v477 = *(v476 - 8);
  v86 = *(v477 + 64);
  __chkstk_darwin(v476);
  v423 = &v402 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v422 = &v402 - v89;
  __chkstk_darwin(v90);
  v482 = (&v402 - v91);
  isUniquelyReferenced_nonNull_native = type metadata accessor for TrainingContext();
  v93 = *(*(isUniquelyReferenced_nonNull_native - 8) + 64);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v485 = &v402 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters();
  v484 = *(v95 - 8);
  v96 = *(v484 + 64);
  __chkstk_darwin(v95);
  v483 = &v402 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  v488 = *(v489 - 8);
  v98 = *(v488 + 64);
  __chkstk_darwin(v489);
  v100 = &v402 - v99;
  v486 = sub_1000F5104(&qword_100941330, &qword_1007A0F10);
  v487 = *(v486 - 8);
  v101 = *(v487 + 64);
  __chkstk_darwin(v486);
  v481 = &v402 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v103);
  v105 = &v402 - v104;
  __chkstk_darwin(v106);
  v108 = &v402 - v107;
  __chkstk_darwin(v109);
  v111 = &v402 - v110;
  v112 = type metadata accessor for Date();
  v492 = *(v112 - 8);
  v493 = v112;
  v113 = *(v492 + 64);
  __chkstk_darwin(v112);
  v445 = &v402 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v115);
  v452 = &v402 - v116;
  __chkstk_darwin(v117);
  v491 = &v402 - v118;
  Date.init()();
  v119 = REMSuggestedAttributesTrainer.Parameters.allowLocalOverrides.getter();
  v490 = v100;
  if (v119)
  {
    v409 = isUniquelyReferenced_nonNull_native;
    v410 = a4;
    v120 = *(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 24);
    v121 = a1;
    v122 = (*(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 16))();
    sub_1002F05EC(&qword_100941368, &type metadata accessor for REMSuggestedAttributesTrainer.Parameters);
    v123 = v122;
    Partial<A>.init(dictionary:)();
    v494 = v5;
    if (v5)
    {
      (*(v492 + 8))(v491, v493);

      return;
    }

    v408 = v121;
    (*(v487 + 16))(v108, v111, v486);
    v125 = sub_1003679A8(0, 1, 1, _swiftEmptyArrayStorage);
    v100 = *(v125 + 16);
    v126 = *(v125 + 24);
    v127 = v125;
    v128 = v100 + 1;
    if (v100 >= v126 >> 1)
    {
LABEL_201:
      v129 = v128;
      v127 = sub_1003679A8(v126 > 1, v128, 1, v127);
    }

    else
    {
      v129 = v100 + 1;
    }

    v124 = v105;

    v130 = v487;
    v131 = v486;
    (*(v487 + 8))(v111, v486);
    v111 = v127;
    *(v127 + 16) = v129;
    (*(v130 + 32))(v127 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v100, v108, v131);
    v100 = v490;
    a4 = v410;
    a1 = v408;
    isUniquelyReferenced_nonNull_native = v409;
    if ((REMSuggestedAttributesTrainer.Parameters.allowCloudOverrides.getter() & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v494 = v5;
  v111 = _swiftEmptyArrayStorage;
  v124 = v105;
  if ((REMSuggestedAttributesTrainer.Parameters.allowCloudOverrides.getter() & 1) == 0)
  {
LABEL_15:
    (*(v484 + 16))(v483, a4, v95);

    PartialOverride.init(full:partials:)();
    swift_getKeyPath();
    v141 = v489;
    PartialOverride.subscript.getter();

    if (LOBYTE(v499[0]) != 1)
    {

      if (qword_100935E70 != -1)
      {
        swift_once();
      }

      v157 = type metadata accessor for Logger();
      sub_100006654(v157, qword_1009411C0);
      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&_mh_execute_header, v158, v159, "SuggestedAttributes Training is enabled on iOS: NO", v160, 2u);
        v100 = v490;
      }

      sub_1002F06A4();
      swift_allocError();
      swift_willThrow();
      (*(v488 + 8))(v100, v141);
      (*(v492 + 8))(v491, v493);
      return;
    }

    if (qword_100935E70 != -1)
    {
LABEL_198:
      swift_once();
    }

    v142 = type metadata accessor for Logger();
    v410 = sub_100006654(v142, qword_1009411C0);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&_mh_execute_header, v143, v144, "SuggestedAttributes Training is enabled on iOS: NO", v145, 2u);
      v100 = v490;
    }

    v146 = v485;
    (*(v488 + 16))(v485, v100, v141);
    swift_getKeyPath();
    PartialOverride.subscript.getter();

    v147 = type metadata accessor for MersenneTwister();
    v148 = *(v147 + 48);
    v149 = *(v147 + 52);
    v408 = v147;
    swift_allocObject();
    v150 = MersenneTwister.init(seed:)();
    v151 = *(isUniquelyReferenced_nonNull_native + 28);
    v409 = v150;
    *(v146 + v151) = v150;
    v152 = v478;
    *(v146 + *(isUniquelyReferenced_nonNull_native + 20)) = v478;
    v153 = v479;
    *(v146 + *(isUniquelyReferenced_nonNull_native + 24)) = v479;
    swift_getKeyPath();
    v127 = v152;
    v154 = v153;
    PartialOverride.subscript.getter();

    v155 = LOBYTE(v499[0]);
    sub_1000060C8(0, &qword_10093E9B0, REMPaths_ptr);
    if (v155 == 1)
    {
      v156 = v494;
      static REMPaths.writableURLForMLModel()();
      isUniquelyReferenced_nonNull_native = v156;
      if (v156)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v161 = v494;
      static REMPaths.temporaryURLForMLModel()();
      isUniquelyReferenced_nonNull_native = v161;
      if (v161)
      {
LABEL_21:
        (*(v488 + 8))(v490, v489);
        (*(v492 + 8))(v491, v493);

        goto LABEL_22;
      }
    }

    swift_getKeyPath();
    v163 = v489;
    v162 = v490;
    PartialOverride.subscript.getter();

    v164 = sub_1002F048C(v499[0], v154);
    v494 = isUniquelyReferenced_nonNull_native;
    if (isUniquelyReferenced_nonNull_native)
    {
      (*(v477 + 8))(v482, v476);
      (*(v488 + 8))(v162, v163);
      (*(v492 + 8))(v491, v493);

      sub_1002F06F8(v485, type metadata accessor for TrainingContext);
      return;
    }

    v95 = v164;

    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.default.getter();
    v167 = os_log_type_enabled(v165, v166);
    v407 = v95 >> 62;
    if (v167)
    {
      v168 = swift_slowAlloc();
      *v168 = 134217984;
      if (v95 >> 62)
      {
        v399 = v168;
        v169 = _CocoaArrayWrapper.endIndex.getter();
        v168 = v399;
      }

      else
      {
        v169 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v168 + 4) = v169;
      v170 = v168;

      _os_log_impl(&_mh_execute_header, v165, v166, "Done fetching reminder data source array for training. %ld distinct reminders fetched", v170, 0xCu);
    }

    else
    {
    }

    if (v407)
    {
      goto LABEL_210;
    }

    v171 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:
    swift_getKeyPath();
    v173 = v489;
    v172 = v490;
    PartialOverride.subscript.getter();

    if (v171 < v499[0])
    {

      sub_1002F1050();
      swift_allocError();
      *v174 = v171;
      swift_willThrow();
      (*(v477 + 8))(v482, v476);
      (*(v488 + 8))(v172, v173);
      goto LABEL_40;
    }

    swift_getKeyPath();
    v175 = v467;
    PartialOverride.subscript.getter();

    swift_getKeyPath();
    v176 = v469;
    PartialOverride.subscript.getter();

    v177 = *(v472 + 8);
    v472 += 8;
    v405 = v177;
    v177(v175, v176);
    if (LOBYTE(v499[1]) != 1)
    {
      v178 = v482;
      if (v171 < v499[0])
      {

        sub_1002F1050();
        swift_allocError();
        *v179 = v171;
        swift_willThrow();
        (*(v477 + 8))(v178, v476);
        (*(v488 + 8))(v490, v489);
LABEL_40:
        (*(v492 + 8))(v491, v493);
LABEL_22:
        sub_1002F06F8(v485, type metadata accessor for TrainingContext);
        return;
      }
    }

    REMSuggestedAttributeInputDataFrame.init(reminderDataSourceArray:)();
    v499[0] = 0;
    v180 = [v127 fetchDefaultListWithError:v499];
    v181 = v180;
    if (v499[0])
    {
      v182 = v499[0];

      swift_willThrow();
      v494 = 0;
      v127 = 1;
    }

    else
    {
      if (!v180)
      {
        v127 = 1;
LABEL_49:
        v100 = v480;
        v184 = type metadata accessor for UUID();
        v185 = *(v184 - 8);
        (*(v185 + 56))(v471, v127, 1, v184);
        if (v407)
        {
          v108 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v108 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v467 = v111;
        v403 = v185;
        v404 = v184;
        if (v108)
        {
          v100 = 0;
          v486 = v95 & 0xC000000000000001;
          v478 = v95 & 0xFFFFFFFFFFFFFF8;
          v186 = _swiftEmptyDictionarySingleton;
          v484 = v95;
          v483 = v108;
          while (1)
          {
            if (v486)
            {
              v141 = v186;
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v100 >= *(v478 + 16))
              {
                goto LABEL_208;
              }

              v141 = v186;
              v190 = *(v95 + 8 * v100 + 32);
            }

            v487 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              __break(1u);
LABEL_197:
              __break(1u);
              goto LABEL_198;
            }

            v191 = dispatch thunk of REMSuggestedAttributeReminderDataSource.listUUIDString.getter();
            v127 = v192;
            v95 = dispatch thunk of REMSuggestedAttributeReminderDataSource.listName.getter();
            v111 = v193;
            v194 = v141;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v499[0] = v141;
            v195 = sub_100005F4C(v191, v127);
            v197 = *(v141 + 16);
            v198 = (v196 & 1) == 0;
            v199 = __OFADD__(v197, v198);
            v200 = v197 + v198;
            if (v199)
            {
              goto LABEL_197;
            }

            v105 = v196;
            if (*(v194 + 24) < v200)
            {
              break;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_66;
            }

            isUniquelyReferenced_nonNull_native = v195;
            sub_100373664();
            v195 = isUniquelyReferenced_nonNull_native;
            if (v105)
            {
LABEL_54:
              v187 = v195;

              v188 = v499[0];
              v189 = (*(v499[0] + 56) + 16 * v187);
              v127 = v189[1];
              *v189 = v95;
              v189[1] = v111;
              v186 = v188;

              goto LABEL_55;
            }

LABEL_67:
            v186 = v499[0];
            *(v499[0] + 8 * (v195 >> 6) + 64) |= 1 << v195;
            v202 = (v186[6] + 16 * v195);
            *v202 = v191;
            v202[1] = v127;
            v203 = (v186[7] + 16 * v195);
            *v203 = v95;
            v203[1] = v111;

            v204 = v186[2];
            v199 = __OFADD__(v204, 1);
            v205 = v204 + 1;
            if (v199)
            {
              __break(1u);
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              v171 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_38;
            }

            v186[2] = v205;
LABEL_55:
            v95 = v484;
            v108 = v483;
            ++v100;
            if (v487 == v483)
            {
              v406 = v186;
              v127 = 0;
              v124 = _swiftEmptyDictionarySingleton;
              while (1)
              {
                if (v486)
                {
                  v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v127 >= *(v478 + 16))
                  {
                    goto LABEL_209;
                  }

                  v123 = *(v95 + 8 * v127 + 32);
                }

                v487 = v127;
                v126 = v127 + 1;
                v481 = (v127 + 1);
                if (__OFADD__(v127, 1))
                {
                  break;
                }

                dispatch thunk of REMSuggestedAttributeReminderDataSource.title.getter();
                String.index(_:offsetBy:limitedBy:)();
                String.subscript.getter();
                v111 = v208;

                v127 = static String._fromSubstring(_:)();
                isUniquelyReferenced_nonNull_native = v209;

                v479 = v123;
                v108 = dispatch thunk of REMSuggestedAttributeReminderDataSource.listUUIDString.getter();
                v95 = v210;
                v100 = swift_isUniquelyReferenced_nonNull_native();
                v499[0] = v124;
                v123 = v124;
                v105 = sub_100005F4C(v127, isUniquelyReferenced_nonNull_native);
                v126 = v124[2];
                v211 = (v128 & 1) == 0;
                v212 = v126 + v211;
                if (__OFADD__(v126, v211))
                {
                  goto LABEL_200;
                }

                v111 = v128;
                if (v124[3] >= v212)
                {
                  if ((v100 & 1) == 0)
                  {
                    sub_100373664();
                  }
                }

                else
                {
                  sub_10036A8F0(v212, v100);
                  v213 = sub_100005F4C(v127, isUniquelyReferenced_nonNull_native);
                  if ((v111 & 1) != (v214 & 1))
                  {
                    goto LABEL_215;
                  }

                  v105 = v213;
                }

                v100 = v480;
                if (v111)
                {

                  v124 = v499[0];
                  v206 = (*(v499[0] + 56) + 16 * v105);
                  v207 = v206[1];
                  *v206 = v108;
                  v206[1] = v95;
                }

                else
                {
                  v124 = v499[0];
                  *(v499[0] + 8 * (v105 >> 6) + 64) |= 1 << v105;
                  v215 = (v124[6] + 16 * v105);
                  *v215 = v127;
                  v215[1] = isUniquelyReferenced_nonNull_native;
                  v216 = (v124[7] + 16 * v105);
                  *v216 = v108;
                  v216[1] = v95;

                  v217 = v124[2];
                  v199 = __OFADD__(v217, 1);
                  v218 = v217 + 1;
                  if (v199)
                  {
                    goto LABEL_206;
                  }

                  v124[2] = v218;
                }

                v95 = v484;
                v108 = v483;
                v127 = v487 + 1;
                if (v481 == v483)
                {
                  goto LABEL_89;
                }
              }

              __break(1u);
LABEL_200:
              __break(1u);
              goto LABEL_201;
            }
          }

          sub_10036A8F0(v200, isUniquelyReferenced_nonNull_native);
          v195 = sub_100005F4C(v191, v127);
          if ((v105 & 1) != (v201 & 1))
          {
LABEL_215:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

LABEL_66:
          if (v105)
          {
            goto LABEL_54;
          }

          goto LABEL_67;
        }

        v124 = _swiftEmptyDictionarySingleton;
        v406 = _swiftEmptyDictionarySingleton;
LABEL_89:
        v219 = v494;
        sub_1002E61C4(v124, v482, v100);
        v135 = v219;
        if (v219)
        {
          v220 = v461;
          *v461 = v219;
          swift_storeEnumTagMultiPayload();
          v135 = 0;
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          v220 = v461;
          sub_100031B58(v100, v461, &qword_100941318, &qword_1007A0EF8);
        }

        v221 = v407;
        sub_100031B58(v220, v470, &qword_100941318, &qword_1007A0EF8);

        if ((v108 & 0x8000000000000000) != 0)
        {
          v222 = 100;
          if (!v221)
          {
LABEL_97:
            v223 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_101:
            if (v223 < v222)
            {
              goto LABEL_213;
            }

            v483 = 0;
            if ((v95 & 0xC000000000000001) != 0 && v222)
            {
              type metadata accessor for REMSuggestedAttributeReminderDataSource();

              v224 = 0;
              do
              {
                v135 = (v224 + 1);
                _ArrayBuffer._typeCheckSlowPath(_:)(v224);
                v224 = v135;
              }

              while (v222 != v135);
            }

            else
            {
            }

            if (v221)
            {
              v135 = _CocoaArrayWrapper.subscript.getter();
              v487 = v226;
              v111 = v227;
              v229 = v228;

              v225 = v135;
              v222 = v229 >> 1;
            }

            else
            {
              v111 = 0;
              v225 = v95 & 0xFFFFFFFFFFFFFF8;
              v487 = (v95 & 0xFFFFFFFFFFFFFF8) + 32;
            }

            if (v111 == v222)
            {
              v132 = _swiftEmptyDictionarySingleton;
LABEL_129:
              swift_unknownObjectRelease();
              v248 = v465;
              v249 = v473;
              v250 = REMSuggestedAttributeInputDataFrame.index.getter();
              __chkstk_darwin(v250);
              v400 = v249;
              v251 = v483;
              v252 = sub_1003DF568(sub_1002F0758, (&v402 - 4));
              (*(v457 + 8))(v248, v458);
              v253 = sub_1002F0774(v252);

              sub_1002E1048(v253);

              v254 = Logger.logObject.getter();
              v255 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v254, v255))
              {
                v256 = swift_slowAlloc();
                v257 = swift_slowAlloc();
                v499[0] = v257;
                *v256 = 136315138;
                v258 = Array.description.getter();
                v260 = v132;
                v261 = sub_10000668C(v258, v259, v499);

                *(v256 + 4) = v261;
                v132 = v260;
                _os_log_impl(&_mh_execute_header, v254, v255, "Training REMFilteredTitleEmbedding with %s", v256, 0xCu);
                sub_10000607C(v257);
              }

              v262 = v482;
              v263 = type metadata accessor for REMFilteredTitleEmbedding();
              v264 = *(v263 + 48);
              v265 = *(v263 + 52);
              swift_allocObject();
              v266 = REMFilteredTitleEmbedding.init(from:stopWordThresholdByPercent:)();
              if (v251)
              {
                sub_1000050A4(v470, &qword_100941318, &qword_1007A0EF8);
                sub_1000050A4(v471, &unk_100939D90, "8\n\r");
                (*(v477 + 8))(v262, v476);
                (*(v488 + 8))(v490, v489);
                (*(v492 + 8))(v491, v493);

                goto LABEL_195;
              }

              v267 = v266;
              v494 = 0;
              v268 = v430;
              REMFilteredTitleEmbedding.config()();
              v269 = REMTitleEmbeddingConfig.saveConfig(to:)();
              (*(v431 + 8))(v268, v432);
              v270 = *(v477 + 16);
              v271 = v476;
              v483 = v267;
              v481 = v132;
              if (v269)
              {
                v272 = v422;
                v270(v422, v262, v476);
                v273 = Logger.logObject.getter();
                v274 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v273, v274))
                {
                  v275 = v271;
                  v276 = swift_slowAlloc();
                  v277 = swift_slowAlloc();
                  v499[0] = v277;
                  *v276 = 136315138;
                  v278 = URL.absoluteString.getter();
                  v280 = v279;
                  v480 = *(v477 + 8);
                  v480(v272, v275);
                  v281 = sub_10000668C(v278, v280, v499);

                  *(v276 + 4) = v281;
                  v282 = "embedding config file saved to %s";
                  goto LABEL_138;
                }

                v290 = *(v477 + 8);
                v291 = v272;
LABEL_142:
                v480 = v290;
                v290(v291, v271);
              }

              else
              {
                v283 = v423;
                v270(v423, v262, v476);
                v273 = Logger.logObject.getter();
                v274 = static os_log_type_t.error.getter();
                if (!os_log_type_enabled(v273, v274))
                {

                  v290 = *(v477 + 8);
                  v291 = v283;
                  goto LABEL_142;
                }

                v284 = v283;
                v285 = v271;
                v276 = swift_slowAlloc();
                v277 = swift_slowAlloc();
                v499[0] = v277;
                *v276 = 136315138;
                v286 = URL.absoluteString.getter();
                v288 = v287;
                v480 = *(v477 + 8);
                v480(v284, v285);
                v289 = sub_10000668C(v286, v288, v499);

                *(v276 + 4) = v289;
                v282 = "failed saving embedding config file to %s";
LABEL_138:
                _os_log_impl(&_mh_execute_header, v273, v274, v282, v276, 0xCu);
                sub_10000607C(v277);
                v267 = v483;
              }

              v292 = v429;
              v293 = v428;
              REMSuggestedAttributeInputDataFrame.title.getter();

              v294 = v494;
              sub_1002F09B4();
              v221 = v294;

              v499[0] = REMFilteredTitleEmbedding.vector(for:)();
              v295 = sub_1000F5104(&qword_100941340, &qword_1007A1068);
              v296 = *(v295 + 48);
              v297 = *(v295 + 52);
              swift_allocObject();
              v494 = Series.init(_:defaultValue:)();
              v500 = v263;
              v501 = &protocol witness table for REMFilteredTitleEmbedding;
              v499[0] = v267;
              sub_100010364(v471, v293, &unk_100939D90, "8\n\r");
              v298 = v403;
              v299 = v404;
              LODWORD(v294) = (*(v403 + 48))(v293, 1, v404);

              if (v294 == 1)
              {
                sub_1000050A4(v293, &unk_100939D90, "8\n\r");
              }

              else
              {
                UUID.uuidString.getter();
                (*(v298 + 8))(v293, v299);
              }

              v300 = v440;
              sub_1002E74A4(v485, v494, v473, v440);

              sub_10000607C(v499);
              if (v221)
              {
                v301 = v441;
                *v441 = v221;
                swift_storeEnumTagMultiPayload();
                v221 = 0;
              }

              else
              {
                swift_storeEnumTagMultiPayload();
                v301 = v441;
                sub_100031B58(v300, v441, &qword_100941310, &unk_1007A0EE8);
              }

              sub_100031B58(v301, v462, &qword_100941310, &unk_1007A0EE8);
              v479 = *(v455 + 48);
              v302 = dispatch thunk of Series.values.getter();
              swift_getKeyPath();
              v303 = v433;
              PartialOverride.subscript.getter();

              swift_getKeyPath();
              v304 = v469;
              PartialOverride.subscript.getter();

              v405(v303, v304);
              v305 = v498;
              v500 = v263;
              v501 = &protocol witness table for REMFilteredTitleEmbedding;
              v499[0] = v483;

              Date.init()();
              if (v305)
              {
                if (!(v302 >> 62))
                {
                  v306 = *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_152;
                }

LABEL_214:
                v306 = _CocoaArrayWrapper.endIndex.getter();
LABEL_152:
                v307 = v444;
                if (v306 >= 10)
                {
                  v308 = 10;
                }

                else
                {
                  v308 = v306;
                }

                type metadata accessor for RDIntentClusterModel();
                v496 = v408;
                v497 = sub_1002F05EC(&qword_100941348, &type metadata accessor for MersenneTwister);
                v495 = v409;

                v400 = 0;
                v401 = 0;
                v309 = v427;
                v310 = static RDIntentClusterModel.modelByTuning(_:writeTo:minK:maxK:maxIter:embedding:randomGenerator:filename:)();
                if (v221)
                {

                  v311 = *(v492 + 8);
                  v311(v452, v493);
                  sub_10000607C(&v495);
                  v312 = v221;
                  v313 = 0;
                  v314 = v448;
                  v316 = v455;
                  sub_10000607C(v499);
                  v317 = v442;
                  *v442 = v312;
                  swift_storeEnumTagMultiPayload();
LABEL_181:
                  sub_100031B58(v317, v463, &qword_100941308, &qword_1007A0EE0);
                  v383 = v434;
                  Result.valueOrNil()();
                  v384 = v383;
                  if ((*(v436 + 48))(v383, 1, v316) == 1)
                  {
                    sub_1000050A4(v383, &qword_100941300, &qword_1007A0ED8);

                    v385 = 0;
                  }

                  else
                  {
                    v386 = *v383;
                    (*(v446 + 8))(v384 + *(v316 + 48), v447);

                    sub_1002F0DE4(v494, v386);

                    Series.index.getter();
                    strcpy(v499, "missing intent");
                    HIBYTE(v499[1]) = -18;
                    v387 = sub_1000F5104(&qword_100941358, &qword_1007A1078);
                    v388 = *(v387 + 48);
                    v389 = *(v387 + 52);
                    swift_allocObject();
                    v314 = v448;
                    v385 = Series.init(_:index:defaultValue:)();
                  }

                  sub_1002E8E10(v485, v473, v385, v406, v314);
                  if (v313)
                  {
                    v390 = v443;
                    *v443 = v313;
                    swift_storeEnumTagMultiPayload();
                  }

                  else
                  {
                    swift_storeEnumTagMultiPayload();
                    v390 = v443;
                    sub_100031B58(v314, v443, &qword_1009412F8, &qword_1007A0ED0);
                  }

                  sub_100031B58(v390, v464, &qword_1009412F8, &qword_1007A0ED0);
                  swift_getKeyPath();
                  PartialOverride.subscript.getter();

                  if (LOBYTE(v499[0]) == 1)
                  {
                    if (qword_100935D08 != -1)
                    {
                      swift_once();
                    }

                    sub_1000F5104(&unk_10093E978, &qword_1007A1070);
                    sub_10000CB48(&qword_100941350, &unk_10093E978, &qword_1007A1070);
                    Subject<>.send()();
                  }

                  Result.eraseToCodableError()();
                  Result.eraseToCodableError()();
                  Result.eraseToCodableError()();
                  v391 = v435;
                  sub_100010364(v463, v435, &qword_100941308, &qword_1007A0EE0);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    *v307 = *v391;
                  }

                  else
                  {
                    v392 = v391;
                    v393 = v424;
                    sub_100031B58(v392, v424, &qword_1009412C8, &qword_1007A0EA0);
                    v394 = *v393;

                    (*(v446 + 32))(v307, &v393[*(v316 + 48)], v447);
                  }

                  swift_storeEnumTagMultiPayload();
                  Result.eraseToCodableError()();
                  sub_1000050A4(v307, &qword_1009412D0, &qword_1007A0EA8);
                  v395 = v445;
                  Date.init()();
                  v396 = v491;
                  Date.timeIntervalSince(_:)();
                  v397 = v395;
                  v398 = v493;
                  v311(v397, v493);
                  REMSuggestedAttributesTrainer.Result.init(embedding:anchoredBubble:corebehavior:intentionalWord:trainingDuration:)();

                  sub_1000050A4(v464, &qword_1009412F8, &qword_1007A0ED0);
                  sub_1000050A4(v463, &qword_100941308, &qword_1007A0EE0);
                  sub_1000050A4(v462, &qword_100941310, &unk_1007A0EE8);
                  sub_1000050A4(v470, &qword_100941318, &qword_1007A0EF8);
                  sub_1000050A4(v471, &unk_100939D90, "8\n\r");
                  v480(v482, v476);
                  (*(v488 + 8))(v490, v489);
                  v311(v396, v398);

LABEL_195:

                  (*(v459 + 8))(v473, v460);
                  goto LABEL_22;
                }

                v461 = v308;
                v472 = 0;
                v478 = v310;

                sub_10000607C(&v495);
                v458 = RDIntentClusterModel.TuningSnapshot.bestK.getter();
                v457 = RDIntentClusterModel.TuningSnapshot.intentionalWords.getter();
                v318 = v415;
                RDIntentClusterModel.TuningSnapshot.kmeansTuningHistory.getter();
                v319 = KMeansAutoTuner.KMeanTuningHistory.modelMetricHistory.getter();
                v320 = v426 + 8;
                v321 = *(v426 + 8);
                v321(v318, v425);
                v322 = *(v319 + 16);
                v426 = v320;
                v469 = v321;
                if (v322)
                {
                  v495 = _swiftEmptyArrayStorage;
                  sub_10025367C(0, v322, 0);
                  v323 = v495;
                  v487 = *(v468 + 16);
                  v324 = (*(v468 + 80) + 32) & ~*(v468 + 80);
                  v484 = v319;
                  v325 = v319 + v324;
                  v486 = *(v468 + 72);
                  v326 = (v468 + 8);
                  do
                  {
                    v327 = v474;
                    v328 = v475;
                    (v487)(v474, v325, v475);
                    v329 = KMeans.TrainingMetrics.clusterVariances.getter();
                    (*v326)(v327, v328);
                    v495 = v323;
                    v331 = v323[2];
                    v330 = v323[3];
                    if (v331 >= v330 >> 1)
                    {
                      sub_10025367C((v330 > 1), v331 + 1, 1);
                      v323 = v495;
                    }

                    v323[2] = v331 + 1;
                    v323[v331 + 4] = v329;
                    v325 += v486;
                    --v322;
                  }

                  while (v322);

                  v345 = v427;
                  v321 = v469;
                }

                else
                {
                  v345 = v309;
                }

                v346 = v416;
                RDIntentClusterModel.TuningSnapshot.kmeansTuningHistory.getter();
                v347 = KMeansAutoTuner.KMeanTuningHistory.modelMetricHistory.getter();
                v321(v346, v425);
                v348 = v347[2];
                if (v348)
                {
                  v495 = _swiftEmptyArrayStorage;
                  sub_10025363C(0, v348, 0);
                  v349 = v495;
                  v486 = *(v468 + 16);
                  v350 = (*(v468 + 80) + 32) & ~*(v468 + 80);
                  v441 = v347;
                  v351 = v347 + v350;
                  v484 = *(v468 + 72);
                  v487 = v468 + 16;
                  v352 = (v468 + 8);
                  do
                  {
                    v353 = v474;
                    v354 = v475;
                    (v486)(v474, v351, v475);
                    v355 = KMeans.TrainingMetrics.clusterSizes.getter();
                    (*v352)(v353, v354);
                    v495 = v349;
                    v357 = v349[2];
                    v356 = v349[3];
                    if (v357 >= v356 >> 1)
                    {
                      sub_10025363C((v356 > 1), v357 + 1, 1);
                      v349 = v495;
                    }

                    v349[2] = v357 + 1;
                    v349[v357 + 4] = v355;
                    v351 += v484;
                    --v348;
                  }

                  while (v348);

                  v345 = v427;
                  v321 = v469;
                }

                else
                {
                }

                v358 = v417;
                RDIntentClusterModel.TuningSnapshot.kmeansTuningHistory.getter();
                v359 = KMeansAutoTuner.KMeanTuningHistory.modelMetricHistory.getter();
                v360 = v358;
                v361 = v359;
                v321(v360, v425);
                v362 = *(v361 + 16);
                if (v362)
                {
                  v495 = _swiftEmptyArrayStorage;
                  sub_10025361C(0, v362, 0);
                  v363 = v495;
                  v487 = *(v468 + 16);
                  v364 = (*(v468 + 80) + 32) & ~*(v468 + 80);
                  v484 = v361;
                  v365 = v361 + v364;
                  v486 = *(v468 + 72);
                  v468 += 16;
                  v366 = (v468 - 8);
                  do
                  {
                    v367 = v474;
                    v368 = v475;
                    (v487)(v474, v365, v475);
                    KMeans.TrainingMetrics.mse.getter();
                    v370 = v369;
                    (*v366)(v367, v368);
                    v495 = v363;
                    v372 = v363[2];
                    v371 = v363[3];
                    if (v372 >= v371 >> 1)
                    {
                      sub_10025361C((v371 > 1), v372 + 1, 1);
                      v363 = v495;
                    }

                    v363[2] = v372 + 1;
                    v363[v372 + 4] = v370;
                    v365 += v486;
                    --v362;
                  }

                  while (v362);

                  v345 = v427;
                }

                else
                {
                }

                v373 = v445;
                Date.init()();
                v374 = v452;
                Date.timeIntervalSince(_:)();
                v375 = *(v492 + 8);
                v376 = v373;
                v377 = v493;
                v375(v376, v493);
                v378 = v420;
                v311 = v375;
                REMSuggestedAttributesTrainer.Result.IntentionalWordTuned.init(bestK:bestClusterLabels:minK:maxK:clusterVariances:clusterSizes:mse:trainingDuration:)();
                (*(v418 + 8))(v345, v419);
                v375(v374, v377);
                v379 = v446;
                v380 = v447;
                (*(v446 + 104))(v378, enum case for REMSuggestedAttributesTrainer.Result.IntentionalWord.fromTuning(_:), v447);
                v381 = *(v379 + 32);
                v344 = v421;
                v381(v479 + v421, v378, v380);
                v307 = v444;
                v316 = v455;
                v314 = v448;
              }

              else
              {
                type metadata accessor for RDIntentClusterModel();
                v496 = v408;
                v497 = sub_1002F05EC(&qword_100941348, &type metadata accessor for MersenneTwister);
                v495 = v409;

                v315 = static RDIntentClusterModel.modelByTraining(_:writeTo:k:embedding:randomGenerator:filename:)();
                v472 = 0;
                v478 = v315;

                sub_10000607C(&v495);
                v487 = RDIntentClusterModel.ModelSnapshot.intentionalWords.getter();
                v332 = v474;
                RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter();
                KMeans.TrainingMetrics.clusterVariances.getter();
                v333 = *(v468 + 8);
                v334 = v475;
                v333(v332, v475);
                v335 = v411;
                RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter();
                KMeans.TrainingMetrics.clusterSizes.getter();
                v333(v335, v334);
                v336 = v292;
                v337 = v412;
                RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter();
                KMeans.TrainingMetrics.mse.getter();
                v333(v337, v334);
                v338 = v445;
                Date.init()();
                v339 = v452;
                Date.timeIntervalSince(_:)();
                v311 = *(v492 + 8);
                v340 = v338;
                v341 = v493;
                v311(v340, v493);
                v342 = v421;
                v343 = v479;
                REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed.init(clusterLabels:clusterVariances:clusterSizes:mse:trainingDuration:)();
                (*(v413 + 8))(v336, v414);
                v311(v339, v341);
                v344 = v342;
                (*(v446 + 104))(&v343[v342], enum case for REMSuggestedAttributesTrainer.Result.IntentionalWord.prescribed(_:), v447);
                v314 = v448;
                v307 = v444;
                v316 = v455;
              }

              sub_10000607C(v499);
              *v344 = v478;
              swift_storeEnumTagMultiPayload();
              v382 = v344;
              v317 = v442;
              sub_100031B58(v382, v442, &qword_100941308, &qword_1007A0EE0);
              v313 = v472;
              goto LABEL_181;
            }

            v484 = v225;
            swift_unknownObjectRetain();
            v132 = _swiftEmptyDictionarySingleton;
            v486 = v222;
            while (1)
            {
              if (v111 >= v222)
              {
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                v111 = sub_1003679A8(0, *(v111 + 16) + 1, 1, v111);
LABEL_12:
                v138 = *(v111 + 16);
                v137 = *(v111 + 24);
                if (v138 >= v137 >> 1)
                {
                  v111 = sub_1003679A8(v137 > 1, v138 + 1, 1, v111);
                }

                v139 = v487;
                v140 = v486;
                (*(v487 + 8))(v124, v486);
                *(v111 + 16) = v138 + 1;
                (*(v139 + 32))(v111 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v138, v481, v140);
                v100 = v490;
                a4 = v132;
                goto LABEL_15;
              }

              v233 = *(v487 + 8 * v111);

              v124 = dispatch thunk of REMSuggestedAttributeReminderDataSource.title.getter();
              v235 = v234;
              isUniquelyReferenced_nonNull_native = dispatch thunk of REMSuggestedAttributeReminderDataSource.listUUIDString.getter();
              v494 = v236;
              v135 = v132;
              v132 = swift_isUniquelyReferenced_nonNull_native();
              v499[0] = v135;
              v95 = sub_100005F4C(v124, v235);
              v238 = v135[2];
              v239 = (v237 & 1) == 0;
              v240 = v238 + v239;
              if (__OFADD__(v238, v239))
              {
                goto LABEL_203;
              }

              v127 = v237;
              if (v135[3] >= v240)
              {
                if (v132)
                {
                  if ((v237 & 1) == 0)
                  {
                    goto LABEL_124;
                  }
                }

                else
                {
                  v135 = v499;
                  sub_100373664();
                  if ((v127 & 1) == 0)
                  {
                    goto LABEL_124;
                  }
                }
              }

              else
              {
                sub_10036A8F0(v240, v132);
                v135 = v499[0];
                v241 = sub_100005F4C(v124, v235);
                if ((v127 & 1) != (v242 & 1))
                {
                  goto LABEL_215;
                }

                v95 = v241;
                if ((v127 & 1) == 0)
                {
LABEL_124:
                  v132 = v499[0];
                  *(v499[0] + 8 * (v95 >> 6) + 64) |= 1 << v95;
                  v243 = (*(v132 + 48) + 16 * v95);
                  *v243 = v124;
                  v243[1] = v235;
                  v244 = (*(v132 + 56) + 16 * v95);
                  v245 = v494;
                  *v244 = isUniquelyReferenced_nonNull_native;
                  v244[1] = v245;

                  v246 = *(v132 + 16);
                  v199 = __OFADD__(v246, 1);
                  v247 = v246 + 1;
                  if (v199)
                  {
                    goto LABEL_207;
                  }

                  *(v132 + 16) = v247;
                  goto LABEL_115;
                }
              }

              v132 = v499[0];
              v230 = (*(v499[0] + 56) + 16 * v95);
              v231 = v230[1];
              v232 = v494;
              *v230 = isUniquelyReferenced_nonNull_native;
              v230[1] = v232;

LABEL_115:
              v222 = v486;
              if (v486 == ++v111)
              {
                swift_unknownObjectRelease();
                goto LABEL_129;
              }
            }
          }
        }

        else
        {
          if (v108 >= 0x64)
          {
            v222 = 100;
          }

          else
          {
            v222 = v108;
          }

          if (!v221)
          {
            goto LABEL_97;
          }
        }

        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
          __break(1u);
LABEL_213:
          __break(1u);
          goto LABEL_214;
        }

        v223 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_101;
      }

      v183 = [v180 objectID];

      v182 = [v183 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = 0;
    }

    goto LABEL_49;
  }

LABEL_9:
  v132 = a4;
  v133 = *(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 8);
  v134 = (*(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource))();
  sub_1002F05EC(&qword_100941368, &type metadata accessor for REMSuggestedAttributesTrainer.Parameters);
  v135 = v134;
  v136 = v494;
  Partial<A>.init(dictionary:)();
  v494 = v136;
  if (!v136)
  {
    (*(v487 + 16))(v481, v124, v486);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_12;
  }

  (*(v492 + 8))(v491, v493);
}

uint64_t sub_1002E61C4@<X0>(uint64_t a1@<X1>, void (**a2)(_BYTE *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v136 = a3;
  v137 = a2;
  v149 = a1;
  v3 = sub_1000F5104(&qword_1009413C0, &qword_1007A6A60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v148 = &v118[-v5];
  v147 = type metadata accessor for REMSuggestedAttributeOutput();
  v138 = *(v147 - 8);
  v6 = *(v138 + 64);
  __chkstk_darwin(v147);
  v143 = &v118[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v132 = &v118[-v9];
  v10 = type metadata accessor for URL();
  v141 = *(v10 - 8);
  v142 = v10;
  v11 = *(v141 + 64);
  __chkstk_darwin(v10);
  v140 = &v118[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v134 = &v118[-v14];
  v15 = type metadata accessor for Date();
  v144 = *(v15 - 8);
  v145 = v15;
  v16 = *(v144 + 64);
  __chkstk_darwin(v15);
  v135 = &v118[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v118[-v19];
  v21 = sub_1000F5104(&qword_1009413C8, &qword_1007A1300);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v139 = &v118[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v27 = &v118[-v26];
  swift_getKeyPath();
  sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v28 = *(v22 + 8);
  (v28)(v27, v21);
  if (LOBYTE(v150[0]) != 1)
  {
    sub_1002F06A4();
    swift_allocError();
    return swift_willThrow();
  }

  v133 = v20;
  Date.init()();
  swift_getKeyPath();
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (v28)(v27, v21);
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (LOBYTE(v150[0]) == 1)
  {
    if (qword_100935E70 != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_4;
  }

  v39 = v140;
  if (qword_100935E70 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100006654(v40, qword_1009411C0);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v35 = v149;
  v45 = v142;
  v44 = v143;
  v46 = v133;
  if (v43)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "REMSuggestedAttributesTrainer: tuning anchoredBubbleModel", v47, 2u);
  }

  type metadata accessor for REMAnchoredBubbleModel();
  v48 = v146;
  v49 = static REMAnchoredBubbleModel.train(titleList:distanceScale:usePCA:)();
  v50 = v141;
  if (v48)
  {
    return (*(v144 + 8))(v46, v145);
  }

  v139 = v49;
  v131 = 0;
LABEL_17:

  v51 = v137;
  v52 = dispatch thunk of REMAnchoredBubbleModel.save(path:)();

  v53 = p_class_meths[462];
  if (v52)
  {
    if (v53 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006654(v54, qword_1009411C0);
    v39 = v134;
    (*(v50 + 16))(v134, v51, v45);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v50;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v150[0] = v59;
      *v58 = 136315138;
      v60 = URL.absoluteString.getter();
      v61 = v39;
      v63 = v62;
      (*(v57 + 8))(v61, v45);
      v64 = sub_10000668C(v60, v63, v150);

      *(v58 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v55, v56, "REMSuggestedAttributesTrainer: anchoredBubbleModel saved to %s", v58, 0xCu);
      sub_10000607C(v59);
      v35 = v149;

LABEL_26:

      goto LABEL_28;
    }
  }

  else
  {
    if (v53 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100006654(v65, qword_1009411C0);
    (*(v50 + 16))(v39, v51, v45);
    v55 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v66))
    {
      v67 = swift_slowAlloc();
      v68 = v39;
      v69 = swift_slowAlloc();
      v150[0] = v69;
      *v67 = 136315138;
      v70 = URL.absoluteString.getter();
      v71 = v45;
      v72 = v70;
      v74 = v73;
      (*(v50 + 8))(v68, v71);
      v75 = sub_10000668C(v72, v74, v150);

      *(v67 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v55, v66, "REMSuggestedAttributesTrainer: failed to save anchoredBubbleModel to %s", v67, 0xCu);
      sub_10000607C(v69);

      v44 = v143;
      goto LABEL_26;
    }
  }

  (*(v50 + 8))(v39, v45);
LABEL_28:
  v21 = v148;
  v28 = (v35 + 64);
  v76 = *(v35 + 64);
  v77 = 1 << *(v35 + 32);
  LODWORD(v134) = enum case for REMSuggestedAttributeOutput.list(_:);
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  else
  {
    v78 = -1;
  }

  v79 = v78 & v76;
  v80 = (v77 + 63) >> 6;
  v146 = (v138 + 48);
  v120 = v44 + 8;
  v140 = (v138 + 32);
  v130 = (v138 + 16);
  v129 = (v138 + 88);
  v128 = enum case for REMSuggestedAttributeOutput.pasteboardURL(_:);
  v127 = enum case for REMSuggestedAttributeOutput.recurrenceFrequency(_:);
  v126 = enum case for REMSuggestedAttributeOutput.location(_:);
  v125 = enum case for REMSuggestedAttributeOutput.dueDate(_:);
  v124 = enum case for REMSuggestedAttributeOutput.assignee(_:);
  v123 = enum case for REMSuggestedAttributeOutput.flagged(_:);
  v122 = enum case for REMSuggestedAttributeOutput.priority(_:);
  v121 = enum case for REMSuggestedAttributeOutput.tag(_:);
  v137 = (v138 + 96);
  v138 += 8;
  v119 = enum case for REMSuggestedAttributeOutput.contact(_:);

  v141 = 0;
  v142 = 0;
  v81 = 0;
  while (2)
  {
    v82 = v81;
    if (!v79)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v81 = v82;
LABEL_37:
      v83 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v84 = (v81 << 10) | (16 * v83);
      v85 = *(v35 + 56);
      v86 = (*(v35 + 48) + v84);
      v87 = *v86;
      v88 = v86[1];
      v89 = (v85 + v84);
      v91 = *v89;
      v90 = v89[1];

      dispatch thunk of REMAnchoredBubbleModel.predict(title:)();
      v21 = v148;
      if ((*v146)(v148, 1, v147) != 1)
      {
        break;
      }

      sub_1000050A4(v21, &qword_1009413C0, &qword_1007A6A60);
      v82 = v81;
      v35 = v149;
      if (!v79)
      {
LABEL_34:
        while (1)
        {
          v81 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            break;
          }

          if (v81 >= v80)
          {

            v112 = *(v35 + 16);
            v113 = v135;
            Date.init()();
            v114 = v133;
            Date.timeIntervalSince(_:)();
            v115 = *(v144 + 8);
            v116 = v113;
            v117 = v145;
            v115(v116, v145);
            REMSuggestedAttributesTrainer.Result.AnchoredBubble.init(precision:recall:skippedRemindersCount:trainingSetCount:validationSetCount:trainingDuration:)();

            return (v115)(v114, v117);
          }

          v79 = v28[v81];
          ++v82;
          if (v79)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_73:
        swift_once();
LABEL_4:
        v30 = type metadata accessor for Logger();
        sub_100006654(v30, qword_1009411C0);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "REMSuggestedAttributesTrainer: anchoredBubbleModel using .defaultWordDistanceScale", v33, 2u);
        }

        type metadata accessor for REMAnchoredBubbleModel();
        swift_getKeyPath();
        v34 = v139;
        PartialOverride.subscript.getter();

        swift_getKeyPath();
        PartialOverride.subscript.getter();

        (v28)(v34, v21);
        v35 = v149;
        v36 = v146;
        v37 = static REMAnchoredBubbleModel.train(titleList:distanceScale:usePCA:)();
        if (v36)
        {
          return (*(v144 + 8))(v133, v145);
        }

        v139 = v37;
        v131 = 0;
        v45 = v142;
        v44 = v143;
        v39 = v140;
        v50 = v141;
        p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
        goto LABEL_17;
      }
    }

    v92 = v132;
    (*v140)(v132, v21, v147);
    v93 = __OFADD__(v142++, 1);
    if (v93)
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v94 = v92;
    v95 = v147;
    (*v130)(v143, v94, v147);
    v96 = (*v129)(v143, v95);
    if (v96 == v134)
    {

      v97 = v143;
      (*v137)(v143, v147);
      v98 = *&v97[*(sub_1000F5104(&qword_1009413F8, &qword_1007A13C0) + 48)];
      if (v91 == REMSuggestedList.listIdentifier.getter() && v90 == v99)
      {

        (*v138)(v132, v147);
      }

      else
      {
        v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v138)(v132, v147);
        if ((v101 & 1) == 0)
        {
          v21 = v148;
          v35 = v149;
          v102 = v143;
LABEL_57:
          v104 = type metadata accessor for REMSuggestedAttributeOutput.Source();
          (*(*(v104 - 8) + 8))(v102, v104);
          continue;
        }
      }

      v93 = __OFADD__(v141++, 1);
      v21 = v148;
      v35 = v149;
      if (!v93)
      {
        v102 = v143;
        goto LABEL_57;
      }

      goto LABEL_75;
    }

    break;
  }

  if (v96 == v128)
  {
    v103 = v147;
    (*v138)(v132, v147);
LABEL_55:

    v102 = v143;
    (*v137)(v143, v103);
LABEL_56:
    v35 = v149;
    goto LABEL_57;
  }

  v103 = v147;
  if (v96 == v127)
  {
LABEL_54:
    (*v138)(v132, v147);
    goto LABEL_55;
  }

  if (v96 == v126)
  {
    (*v138)(v132, v147);

    v102 = v143;
    (*v137)(v143, v103);
    v105 = &unk_1009413F0;
    v106 = &unk_1007A8C30;
LABEL_62:
    v107 = *&v102[*(sub_1000F5104(v105, v106) + 48)];

    goto LABEL_56;
  }

  if (v96 == v125)
  {
    (*v138)(v132, v147);

    v102 = v143;
    (*v137)(v143, v103);
    v105 = &unk_1009413E8;
    v106 = &unk_1007A13B0;
    goto LABEL_62;
  }

  if (v96 == v124)
  {
    (*v138)(v132, v147);

    v102 = v143;
    (*v137)(v143, v103);

    goto LABEL_56;
  }

  if (v96 == v123 || v96 == v122)
  {
    goto LABEL_54;
  }

  if (v96 == v121)
  {
    (*v138)(v132, v147);

    v102 = v143;
    (*v137)(v143, v103);
    v108 = sub_1000F5104(&qword_1009413D8, &unk_1007A13A0);
    v109 = *&v120[*(v108 + 48)];

    goto LABEL_56;
  }

  if (v96 == v119)
  {
    v110 = v147;
    (*v138)(v132, v147);

    v102 = v143;
    (*v137)(v143, v110);
    v111 = *&v102[*(sub_1000F5104(&qword_1009413D0, &qword_1007A1398) + 48)];

    v21 = v148;
    v35 = v149;
    goto LABEL_57;
  }

LABEL_76:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E73AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  REMSuggestedAttributeInput.list.getter();

  v4 = REMSuggestedList.isValid.getter();

  if (v4)
  {
    REMSuggestedAttributeInputDataFrame.iloc(_:)();
    v6 = REMSuggestedAttributeInput.title.getter();
    v8 = v7;

    REMSuggestedAttributeInputDataFrame.iloc(_:)();
    REMSuggestedAttributeInput.list.getter();

    v9 = REMSuggestedList.listIdentifier.getter();
    v11 = v10;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v11;
  return result;
}

uint64_t sub_1002E74A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v192 = a3;
  v181 = a2;
  v165 = a4;
  v168 = type metadata accessor for URL();
  v167 = *(v168 - 8);
  v5 = *(v167 + 64);
  __chkstk_darwin(v168);
  v177 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for REMSuggestedAttributesTrainer.Result.Embedding();
  v179 = *(v180 - 8);
  v7 = *(v179 + 64);
  __chkstk_darwin(v180);
  v9 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMSuggestedAttributesAccuracy();
  v178 = *(v10 - 8);
  v11 = *(v178 + 64);
  __chkstk_darwin(v10);
  v176 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v189 = &v158 - v14;
  v198 = type metadata accessor for MultiClassificationMetric();
  v187 = *(v198 - 8);
  v15 = *(v187 + 64);
  __chkstk_darwin(v198);
  v175 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v194 = &v158 - v18;
  __chkstk_darwin(v19);
  v200 = &v158 - v20;
  v21 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v199 = &v158 - v23;
  v190 = type metadata accessor for Date();
  v183 = *(v190 - 8);
  v24 = *(v183 + 64);
  __chkstk_darwin(v190);
  v174 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v158 - v27;
  __chkstk_darwin(v29);
  v31 = &v158 - v30;
  v32 = sub_1000F5104(&qword_1009413A0, &qword_1007A1218);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v158 - v35;
  swift_getKeyPath();
  v191 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  v201 = a1;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v37 = *(v33 + 8);
  v184 = v36;
  v185 = v32;
  v186 = v33 + 8;
  v37(v36, v32);
  if (LOBYTE(v204) != 1)
  {
    sub_1002F06A4();
    swift_allocError();
    return swift_willThrow();
  }

  v182 = v37;
  v163 = v10;
  v164 = v9;
  v173 = REMSuggestedAttributeInputDataFrame.list.getter();
  Date.init()();
  if (qword_100935E70 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    v39 = sub_100006654(v38, qword_1009411C0);
    v40 = v183;
    v41 = *(v183 + 16);
    v172 = v31;
    v42 = v190;
    v41(v28, v31, v190);
    v162 = v39;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v40;
      v46 = swift_slowAlloc();
      *&v47 = COERCE_DOUBLE(swift_slowAlloc());
      v204 = *&v47;
      *v46 = 136446210;
      v48 = Date.description.getter();
      v49 = v42;
      v51 = v50;
      v171 = *(v45 + 8);
      v171(v28, v49);
      v52 = sub_10000668C(v48, v51, &v204);

      *(v46 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "trainEvaluatekNN started at %{public}s", v46, 0xCu);
      sub_10000607C(v47);
    }

    else
    {

      v171 = *(v40 + 8);
      v171(v28, v42);
    }

    swift_getKeyPath();
    v54 = v201;
    PartialOverride.subscript.getter();

    v55 = v204;
    if (v204 <= 1.0)
    {
      v56 = v204;
    }

    else
    {
      v56 = 1.0;
    }

    v57 = 1.0 - v56;
    v204 = *(v54 + *(type metadata accessor for TrainingContext() + 28));

    v58 = v192;
    v59 = REMSuggestedAttributeInputDataFrame.index.getter();
    v60 = &v158;
    __chkstk_darwin(v59);
    *(&v158 - 2) = v58;
    v61 = v197;
    v203 = sub_1002E1854(sub_1002F13B0, (&v158 - 4));
    sub_1002EB904();
    v62 = v203;
    v63 = v203[2];
    if (v55 <= 0.0)
    {
      v64 = 1.0;
    }

    else
    {
      v64 = v57;
    }

    v65 = v64 * v63;
    if (COERCE_UNSIGNED_INT64(fabs(v65)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      swift_unknownObjectRelease();
      sub_1002786C4(v62, v62 + 32, v60, (2 * v63) | 1);
      v81 = v157;
      goto LABEL_35;
    }

    if (v65 <= -9.22337204e18)
    {
      goto LABEL_82;
    }

    if (v65 >= 9.22337204e18)
    {
      goto LABEL_83;
    }

    v66 = v65;
    v67 = sub_1002F36CC(v65, v203);
    v69 = v68;
    v71 = v70;
    v60 = v72;
    v169 = v66;
    v196 = v61;
    if (v72)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();

      v73 = swift_dynamicCastClass();
      if (!v73)
      {
        swift_unknownObjectRelease();
        v73 = _swiftEmptyArrayStorage;
      }

      v74 = v73[2];

      if (__OFSUB__(v60 >> 1, v71))
      {
        __break(1u);
      }

      else if (v74 == (v60 >> 1) - v71)
      {
        v75 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v66 = v169;
        if (v75)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      swift_unknownObjectRelease();
      v66 = v169;
    }

    else
    {
    }

    sub_1002786C4(v67, v69, v71, v60);
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    v76 = v63 - v66;
    if (__OFSUB__(v63, v66))
    {
      goto LABEL_84;
    }

    if ((v76 & 0x8000000000000000) != 0)
    {
      goto LABEL_85;
    }

    v63 = *(v62 + 16);
    v77 = v63 >= v76;
    v78 = v63 - v76;
    if (v77)
    {
      v60 = v78;
    }

    else
    {
      v60 = 0;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v79 = swift_dynamicCastClass();
    if (!v79)
    {
      swift_unknownObjectRelease();
      v79 = _swiftEmptyArrayStorage;
    }

    v80 = v79[2];

    if (v80 != v63 - v60)
    {
      goto LABEL_86;
    }

    v81 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v81)
    {
      goto LABEL_36;
    }

    v81 = _swiftEmptyArrayStorage;
LABEL_35:
    swift_unknownObjectRelease();
LABEL_36:
    v82 = dispatch thunk of Series.iloc(index:)();
    v83 = dispatch thunk of Series.iloc(index:)();

    v84 = dispatch thunk of Series.iloc(index:)();
    v85 = v81;
    v86 = v84;
    v170 = v85;
    v197 = dispatch thunk of Series.iloc(index:)();
    v160 = v82;
    dispatch thunk of Series.values.getter();
    v161 = v83;
    v87 = v196;
    sub_1002E165C(v83);
    v88 = type metadata accessor for REMkNNByTitleEmbedding();
    v89 = *(v88 + 48);
    v90 = *(v88 + 52);
    v159 = v88;
    swift_allocObject();
    v91 = REMkNNByTitleEmbedding.init(vectors:labels:)();
    v92 = sub_1002F0B98(v86);
    v196 = v87;
    v93 = v92[2];
    v193 = v86;
    v195 = v91;
    if (v93)
    {
      v202 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      type metadata accessor for REMSuggestedList();
      v94 = v92 + 5;
      do
      {
        v96 = *(v94 - 1);
        v95 = *v94;

        REMSuggestedList.__allocating_init(stringLiteral:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v97 = *(v202 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v94 += 2;
        --v93;
      }

      while (v93);
    }

    Series.index.getter();
    type metadata accessor for REMSuggestedList();
    v202 = static REMSuggestedList.defaultValue.getter();
    v98 = sub_1000F5104(&qword_100941388, &qword_1007A1200);
    v99 = *(v98 + 48);
    v100 = *(v98 + 52);
    v188 = v98;
    swift_allocObject();
    v28 = Series.init(_:index:defaultValue:)();
    v203 = v28;

    MultiClassificationMetric.init<A>(groundTruth:prediction:)();
    swift_getKeyPath();
    v101 = v184;
    PartialOverride.subscript.getter();

    swift_getKeyPath();
    v102 = v185;
    PartialOverride.subscript.getter();

    v103 = v182;
    (v182)(v101, v102);
    if (v202 < 3)
    {
      goto LABEL_43;
    }

    swift_getKeyPath();
    PartialOverride.subscript.getter();

    swift_getKeyPath();
    PartialOverride.subscript.getter();

    result = v103(v101, v102);
    v104 = v202 + 1;
    if (__OFADD__(v202, 1))
    {
      break;
    }

    if (v104 < 3)
    {
      goto LABEL_90;
    }

    if (v202 == 2)
    {
LABEL_43:
      v182 = 1;
      v105 = v196;
LABEL_44:
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      v108 = os_log_type_enabled(v106, v107);
      v109 = v182;
      if (v108)
      {
        v110 = swift_slowAlloc();
        *v110 = 134349056;
        *(v110 + 4) = v109;
        _os_log_impl(&_mh_execute_header, v106, v107, "best k for kNN model is %{public}ld", v110, 0xCu);
      }

      v111 = [objc_opt_self() daemonUserDefaults];
      v112 = [objc_allocWithZone(NSNumber) initWithInteger:v109];
      [v111 setBestKForKNN:v112];

      v113 = MultiClassificationMetric.correctIndices.getter();
      __chkstk_darwin(v113);
      v114 = v192;
      *(&v158 - 2) = v192;
      v115 = v105;
      sub_10024D1A0(sub_1002F13D0, (&v158 - 4), v113);

      v116 = MultiClassificationMetric.incorrectIndices.getter();
      __chkstk_darwin(v116);
      *(&v158 - 2) = v114;
      *(&v158 - 1) = &v203;
      sub_10024D1A0(sub_1002F13F0, (&v158 - 4), v116);

      (*(v187 + 16))(v175, v200, v198);
      REMSuggestedAttributesAccuracy.init(correctSample:incorrectSample:metrics:)();
      v117 = v174;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v119 = v118;
      v171(v117, v190);
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 134349056;
        *(v122 + 4) = v119;
        _os_log_impl(&_mh_execute_header, v120, v121, "kNN model training time: %{public}f", v122, 0xCu);
      }

      type metadata accessor for Analytics();
      sub_1000F5104(&unk_100939240, &unk_100798990);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      strcpy((inited + 32), "list_accuracy");
      *(inited + 46) = -4864;
      MultiClassificationMetric.accuracy.getter();
      *(inited + 48) = Double._bridgeToObjectiveC()();
      *(inited + 56) = 0x616E5F6C65646F6DLL;
      *(inited + 64) = 0xEA0000000000656DLL;
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      *(inited + 72) = NSString.init(stringLiteral:)();
      sub_10038D880(inited);
      swift_setDeallocating();
      sub_1000F5104(&unk_100939250, &unk_100795D30);
      swift_arrayDestroy();
      static Analytics.postEvent(_:payload:duration:)();

      v124 = v178;
      v125 = v163;
      (*(v178 + 16))(v176, v189, v163);
      v126 = v170[2];
      v127 = v164;
      REMSuggestedAttributesTrainer.Result.Embedding.init(listAccuracy:skippedRemindersCount:trainingSetCount:validationSetCount:trainingDuration:)();
      swift_getKeyPath();
      PartialOverride.subscript.getter();

      v128 = v202;
      sub_1000060C8(0, &qword_10093E9B0, REMPaths_ptr);
      v129 = v177;
      if (v128 == 1)
      {
        static REMPaths.writableURLForMLModel()();
      }

      else
      {
        static REMPaths.temporaryURLForMLModel()();
      }

      v130 = v173;
      if (v115)
      {

LABEL_77:
        (*(v179 + 8))(v127, v180);
        (*(v124 + 8))(v189, v125);
        (*(v187 + 8))(v200, v198);

        v171(v172, v190);
      }

      v131 = v170[2];

      if (v131)
      {
        dispatch thunk of Series.values.getter();
        sub_1002E165C(v130);
        v132 = *(v159 + 48);
        v133 = *(v159 + 52);
        swift_allocObject();
        REMkNNByTitleEmbedding.init(vectors:labels:)();
        if (REMkNNByTitleEmbedding.save(to:with:)())
        {

LABEL_73:

          (*(v167 + 8))(v129, v168);
          (*(v124 + 8))(v189, v125);
          (*(v187 + 8))(v200, v198);

          v171(v172, v190);
          (*(v179 + 32))(v165, v127, v180);
        }

        v153 = objc_opt_self();
        v154 = String._bridgeToObjectiveC()();
        [v153 internalErrorWithDebugDescription:v154];

        swift_willThrow();
      }

      else
      {
        if (REMkNNByTitleEmbedding.save(to:with:)())
        {
          goto LABEL_73;
        }

        v155 = objc_opt_self();
        v156 = String._bridgeToObjectiveC()();
        [v155 internalErrorWithDebugDescription:v156];

        swift_willThrow();
      }

      (*(v167 + 8))(v129, v168);
      goto LABEL_77;
    }

    v185 = (v187 + 8);
    v166 = (v187 + 32);
    v134 = v202 - 2;
    if ((v202 - 2) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v134 = -3;
    }

    v135 = v134 + 3;
    v136 = 3;
    v182 = 1;
    v31 = v200;
    v105 = v196;
    v186 = v202 + 1;
    v184 = (v134 + 3);
    while (v136 != v135)
    {
      if (v136)
      {
        __chkstk_darwin(result);
        v138 = v201;
        *(&v158 - 2) = v195;
        *(&v158 - 1) = v138;
        v139 = sub_1002E13F0(sub_1002F1410);
        v140 = *(v139 + 16);
        if (v140)
        {
          v196 = v105;
          v202 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v141 = (v139 + 40);
          do
          {
            v143 = *(v141 - 1);
            v142 = *v141;

            REMSuggestedList.__allocating_init(stringLiteral:)();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v144 = *(v202 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v141 += 2;
            --v140;
          }

          while (v140);

          v31 = v200;
          v105 = v196;
        }

        else
        {
        }

        Series.index.getter();
        v202 = static REMSuggestedList.defaultValue.getter();
        v145 = *(v188 + 48);
        v146 = *(v188 + 52);
        swift_allocObject();
        v137 = Series.init(_:index:defaultValue:)();

        v147 = v194;
        MultiClassificationMetric.init<A>(groundTruth:prediction:)();
        MultiClassificationMetric.accuracy.getter();
        v149 = v148;
        MultiClassificationMetric.accuracy.getter();
        v150 = *v185;
        if (v149 >= v151)
        {
          v150(v147, v198);

          v137 = v28;
        }

        else
        {
          v152 = v198;
          v150(v31, v198);

          v203 = v137;
          result = (*v166)(v31, v147, v152);
          v182 = v136;
        }

        v104 = v186;
        v135 = v184;
      }

      else
      {
        v137 = v28;
      }

      ++v136;
      v28 = v137;
      if (v136 == v104)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_80:
    swift_once();
  }

  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

void sub_1002E8E10(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v249 = a4;
  v253 = a3;
  v259 = a2;
  v236 = a5;
  v6 = type metadata accessor for REMSuggestedLocation.LocationValue();
  v229 = *(v6 - 8);
  v230 = v6;
  v7 = *(v229 + 64);
  __chkstk_darwin(v6);
  v228 = v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMSuggestedAttributesAccuracy();
  v237 = *(v9 - 8);
  v238 = v9;
  v10 = *(v237 + 64);
  __chkstk_darwin(v9);
  v235 = v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v234 = v217 - v13;
  __chkstk_darwin(v14);
  v233 = v217 - v15;
  __chkstk_darwin(v16);
  v243 = v217 - v17;
  __chkstk_darwin(v18);
  v246 = v217 - v19;
  __chkstk_darwin(v20);
  v248 = v217 - v21;
  v251 = type metadata accessor for MultiClassificationMetric();
  v244 = *(v251 - 8);
  v22 = v244[8];
  __chkstk_darwin(v251);
  v231 = v217 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v245 = v217 - v25;
  __chkstk_darwin(v26);
  v250 = v217 - v27;
  __chkstk_darwin(v28);
  v247 = v217 - v29;
  v30 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v240 = *(v30 - 8);
  v241 = v30;
  v31 = v240[8];
  __chkstk_darwin(v30);
  v239 = v217 - v32;
  v33 = type metadata accessor for URL();
  v266 = *(v33 - 8);
  v267 = v33;
  v34 = *(v266 + 64);
  __chkstk_darwin(v33);
  v258 = v217 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v265 = v217 - v37;
  v263 = type metadata accessor for Date();
  v261 = *(v263 - 8);
  v38 = *(v261 + 64);
  __chkstk_darwin(v263);
  v232 = v217 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = v217 - v41;
  v43 = sub_1000F5104(&qword_100941378, &qword_1007A1080);
  v44 = *(v43 - 1);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v257 = v217 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v252 = v217 - v48;
  __chkstk_darwin(v49);
  v256 = v217 - v50;
  __chkstk_darwin(v51);
  *&v255 = v217 - v52;
  __chkstk_darwin(v53);
  v55 = v217 - v54;
  swift_getKeyPath();
  v56 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  v57 = a1;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v58 = *(v44 + 8);
  v254 = v55;
  v260 = v43;
  v264 = (v44 + 8);
  v58(v55, v43);
  if (LOBYTE(v270[0]) != 1)
  {
    sub_1002F06A4();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v226 = v58;
  v227 = v42;
  Date.init()();
  swift_getKeyPath();
  v242 = v57;
  PartialOverride.subscript.getter();

  v59 = LOBYTE(v270[0]);
  sub_1000060C8(0, &qword_10093E9B0, REMPaths_ptr);
  v60 = v265;
  v61 = v262;
  if (v59 == 1)
  {
    static REMPaths.writableURLForMLModel()();
  }

  else
  {
    static REMPaths.temporaryURLForMLModel()();
  }

  if (v61)
  {
    (*(v261 + 8))(v227, v263, v267);
    return;
  }

  (*(v266 + 16))(v258, v60, v267);
  swift_getKeyPath();
  v62 = v255;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  v63 = v260;
  PartialOverride.subscript.getter();

  v64 = v62;
  v65 = v226;
  v226(v64, v63);
  v262 = v270[0];
  swift_getKeyPath();
  v66 = v256;
  v225 = v56;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v65(v66, v63);
  v67 = v271;
  v68 = type metadata accessor for RDCoreBehaviorModel(0);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = sub_1004C9A28(v258, v262, 0, v67, 0);
  v262 = 0;
  swift_getKeyPath();
  v72 = v254;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v65(v72, v63);
  if (v270[0])
  {
    sub_1004C5AE0(v270[0]);
  }

  v258 = v71;
  swift_getKeyPath();
  v73 = v254;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  v74 = v260;
  PartialOverride.subscript.getter();

  v75 = v226;
  v226(v73, v74);
  v76 = v270[0];
  swift_getKeyPath();
  v77 = v75;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v75(v73, v74);
  v78 = v270[0];
  v256 = v76;
  *&v255 = &v76[v270[0]];
  v79 = v259;
  v80 = v253;
  if (__CFADD__(v76, v270[0]))
  {
    goto LABEL_87;
  }

  swift_getKeyPath();
  v81 = v252;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v75(v81, v74);
  v82 = v262;
  sub_1004C5C68(v79, v80, v255, 0, *v270);
  v87 = v80;
  if (v82)
  {
LABEL_12:

    (*(v266 + 8))(v265, v267);
    (*(v261 + 8))(v227, v263);
    return;
  }

  v262 = 0;
  if (v78 <= 2 && v85 == 1)
  {
    *&v86 = 134217984;
    v255 = v86;
    while (1)
    {
      v88 = &v256[v78 + 1];
      if (__CFADD__(v256, v78 + 1))
      {
        break;
      }

      if (qword_100935E70 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      sub_100006654(v89, qword_1009411C0);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = v255;
        *(v92 + 4) = v88;
        _os_log_impl(&_mh_execute_header, v90, v91, "CoreBehavior terminated early. Retrying with support = %lu", v92, 0xCu);
      }

      swift_getKeyPath();
      v93 = v257;
      PartialOverride.subscript.getter();

      swift_getKeyPath();
      v94 = v260;
      PartialOverride.subscript.getter();

      v95 = v93;
      v77 = v226;
      v226(v95, v94);
      v96 = v262;
      sub_1004C5C68(v259, v87, v88, 0, *v270);
      if (v96)
      {
        goto LABEL_12;
      }

      v262 = 0;
      if (v78 <= 1)
      {
        ++v78;
        if (v97 == 1)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    return;
  }

LABEL_24:
  v222 = v84;
  v223 = v83;
  v257 = objc_opt_self();
  *&v255 = [v257 daemonUserDefaults];
  sub_1000F5104(&unk_10094EC20, &qword_1007A11D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = 0x74726F70707573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = UInt._bridgeToObjectiveC()();
  *(inited + 56) = 0x656D7473756A6461;
  *(inited + 64) = 0xEA0000000000746ELL;
  *(inited + 72) = UInt._bridgeToObjectiveC()();
  *(inited + 80) = 0x6E656469666E6F63;
  *(inited + 88) = 0xEA00000000006563;
  swift_getKeyPath();
  v99 = v254;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  v100 = v260;
  PartialOverride.subscript.getter();

  v77(v99, v100);
  *(inited + 96) = Double._bridgeToObjectiveC()();
  sub_10038F938(inited);
  swift_setDeallocating();
  sub_1000F5104(&qword_100941380, &unk_1007A11E0);
  swift_arrayDestroy();
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v102 = v255;
  [v255 setCoreBehaviorTrainingParameters:isa];

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v77(v99, v100);
  v103 = v270[0];
  v104 = v103 / REMSuggestedAttributeInputDataFrame.size.getter();
  swift_getKeyPath();
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v77(v99, v100);
  v105 = v270[0];
  v106 = [v257 daemonUserDefaults];
  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  v107 = swift_initStackObject();
  *(v107 + 16) = xmmword_100791300;
  strcpy(v270, "coreBehavior");
  BYTE5(v270[1]) = 0;
  HIWORD(v270[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_1000F5104(&unk_1009439E0, &unk_1007A11F0);
  v108 = swift_initStackObject();
  *(v108 + 16) = xmmword_100791340;
  *(v108 + 32) = 0x65766974616C6572;
  *(v108 + 40) = 0xEF74726F70707553;
  *(v108 + 48) = v104;
  *(v108 + 56) = 0x6E656469666E6F63;
  *(v108 + 64) = 0xEA00000000006563;
  *(v108 + 72) = v105;
  v109 = sub_10038DA10(v108);
  swift_setDeallocating();
  sub_1000F5104(&qword_10093EC60, &unk_10079D390);
  swift_arrayDestroy();
  *(v107 + 96) = sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  *(v107 + 72) = v109;
  sub_10038ED74(v107);
  swift_setDeallocating();
  sub_1000050A4(v107 + 32, &unk_100946590, &qword_100796FF0);
  v110 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v106 setSuggestedAttributesHarvestingOverrides:v110];

  v111 = v258;
  v112 = v262;
  v113 = sub_1004C6658(v249);
  v114 = v112;
  if (v112)
  {
    goto LABEL_12;
  }

  v218 = v113;
  v115 = v239;
  v116 = v259;
  v117 = REMSuggestedAttributeInputDataFrame.index.getter();
  __chkstk_darwin(v117);
  v217[-4] = v111;
  v217[-3] = v116;
  v215 = v253;
  v118 = sub_10024D5D0(sub_1002F10A4);
  v252 = 0;
  (v240[1])(v115, v241);
  v271 = _swiftEmptyArrayStorage;
  v119 = v118[2];
  v254 = _swiftEmptyArrayStorage;
  *&v255 = _swiftEmptyArrayStorage;
  v264 = _swiftEmptyArrayStorage;
  v225 = v118;
  v226 = _swiftEmptyArrayStorage;
  v224 = v119;
  while (v119 != v114)
  {
    if (v114 >= v118[2])
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v120 = &v118[v114];
    v121 = v120[4];
    ++v114;
    v122 = *(v121 + 16);
    if (v122)
    {
      v123 = v120[4];

      v253 = v114 - 1;
      v124 = (v121 + 80);
      do
      {
        if (!*v124)
        {
          v129 = *(v124 - 6);
          v130 = *(v124 - 4);
          v131 = *(v124 - 3);
          v133 = *(v124 - 2);
          v132 = *(v124 - 1);
          v262 = *(v124 - 5);
          v260 = v130;
          v256 = v131;
          v257 = v132;
          sub_1002F10C8(v129, v262, v130, v131, v133, v132, 0);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v254 = sub_1003679CC(0, *(v254 + 2) + 1, 1, v254);
          }

          v135 = *(v254 + 2);
          v134 = *(v254 + 3);
          if (v135 >= v134 >> 1)
          {
            v254 = sub_1003679CC((v134 > 1), v135 + 1, 1, v254);
          }

          v137 = v253;
          v136 = v254;
          *(v254 + 2) = v135 + 1;
          *&v136[8 * v135 + 32] = v137;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v271 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v271 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v226 = v271;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v255 = sub_100365788(0, *(v255 + 16) + 1, 1, v255);
          }

          v139 = *(v255 + 16);
          v138 = *(v255 + 24);
          if (v139 >= v138 >> 1)
          {
            *&v255 = sub_100365788((v138 > 1), v139 + 1, 1, v255);
          }

          v125 = v255;
          *(v255 + 16) = v139 + 1;
          v126 = v125 + 16 * v139;
          v127 = v256;
          v128 = v257;
          *(v126 + 32) = v256;
          *(v126 + 40) = v133;
          sub_1002F115C(v129, v262, v260, v127, v133, v128, 0);
          v116 = v259;
        }

        v124 += 56;
        --v122;
      }

      while (v122);

      v119 = v224;
      v118 = v225;
    }
  }

  sub_1000F5104(&qword_100941388, &qword_1007A1200);
  type metadata accessor for REMSuggestedList();

  v270[0] = static REMSuggestedList.defaultValue.getter();

  v140 = Series.__allocating_init(_:index:defaultValue:)();
  v141 = sub_1000F5104(&qword_100941358, &qword_1007A1078);
  v270[0] = 0;
  v270[1] = 0xE000000000000000;

  v219 = v141;
  v142 = Series.__allocating_init(_:index:defaultValue:)();
  REMSuggestedAttributeInputDataFrame.list.getter();

  v143 = v247;
  MultiClassificationMetric.init<A>(groundTruth:prediction:)();
  v144 = MultiClassificationMetric.correctIndices.getter();
  __chkstk_darwin(v144);
  v216 = v142;
  v145 = v252;
  sub_10024D1A0(sub_1002F11F0, &v217[-4], v144);

  v146 = MultiClassificationMetric.incorrectIndices.getter();
  __chkstk_darwin(v146);
  v217[-4] = v116;
  v217[-3] = v140;
  v217[3] = v142;
  v217[4] = v140;
  v215 = v142;
  sub_10024D1A0(sub_1002F1210, &v217[-6], v146);
  v241 = v145;

  v220 = v244[2];
  v221 = v244 + 2;
  v220(v250, v143, v251);
  REMSuggestedAttributesAccuracy.init(correctSample:incorrectSample:metrics:)();
  v147 = 0;
  v269 = _swiftEmptyArrayStorage;
  v257 = _swiftEmptyArrayStorage;
  v260 = _swiftEmptyArrayStorage;
  v240 = _swiftEmptyArrayStorage;
  while (v224 != v147)
  {
    if (v147 >= v225[2])
    {
      goto LABEL_84;
    }

    v148 = &v225[v147];
    v149 = v148[4];
    ++v147;
    v150 = *(v149 + 16);
    if (v150)
    {
      v151 = v148[4];

      v242 = v147 - 1;
      v152 = (v149 + 80);
      do
      {
        if (*v152 == 2)
        {
          v159 = *(v152 - 6);
          v158 = *(v152 - 5);
          v160 = *(v152 - 4);
          v162 = *(v152 - 2);
          v161 = *(v152 - 1);
          v252 = *(v152 - 3);
          v253 = v161;
          sub_1002F10C8(v159, v158, v160, v252, v162, v161, 2u);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v262 = v158;
          v256 = v160;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v260 = sub_1003679CC(0, *(v260 + 2) + 1, 1, v260);
          }

          v165 = *(v260 + 2);
          v164 = *(v260 + 3);
          if (v165 >= v164 >> 1)
          {
            v260 = sub_1003679CC((v164 > 1), v165 + 1, 1, v260);
          }

          v166 = v260;
          *(v260 + 2) = v165 + 1;
          *&v166[8 * v165 + 32] = v242;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v269 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v269 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v240 = v269;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v257 = sub_100365788(0, *(v257 + 2) + 1, 1, v257);
          }

          v168 = *(v257 + 2);
          v167 = *(v257 + 3);
          if (v168 >= v167 >> 1)
          {
            v257 = sub_100365788((v167 > 1), v168 + 1, 1, v257);
          }

          v153 = v256;
          v154 = v257;
          *(v257 + 2) = v168 + 1;
          v155 = &v154[16 * v168];
          v156 = v252;
          v157 = v253;
          *(v155 + 4) = v252;
          *(v155 + 5) = v162;
          sub_1002F115C(v159, v262, v153, v156, v162, v157, 2u);
        }

        v152 += 56;
        --v150;
      }

      while (v150);
    }
  }

  sub_1000F5104(&qword_100941390, &qword_1007A1208);
  v169 = type metadata accessor for REMSuggestedWeekDay();

  static REMSuggestedWeekDay.nilValue.getter();
  v170 = *(v169 + 48);
  v171 = *(v169 + 52);
  swift_allocObject();
  v270[0] = REMSuggestedWeekDay.init(_:)();

  v172 = Series.__allocating_init(_:index:defaultValue:)();
  v270[0] = 0;
  v270[1] = 0xE000000000000000;

  v173 = Series.__allocating_init(_:index:defaultValue:)();
  v174 = v259;
  REMSuggestedAttributeInputDataFrame.dueDayOfWeek.getter();

  v175 = v245;
  MultiClassificationMetric.init<A>(groundTruth:prediction:)();
  v176 = MultiClassificationMetric.correctIndices.getter();
  __chkstk_darwin(v176);
  v216 = v173;
  v177 = v241;
  sub_10024D1A0(sub_1002F1268, &v217[-4], v176);

  v178 = MultiClassificationMetric.incorrectIndices.getter();
  __chkstk_darwin(v178);
  v217[-4] = v174;
  v217[-3] = v172;
  v217[1] = v173;
  v217[2] = v172;
  v215 = v173;
  sub_10024D1A0(sub_1002F12AC, &v217[-6], v178);
  v179 = v177;

  v220(v250, v175, v251);
  REMSuggestedAttributesAccuracy.init(correctSample:incorrectSample:metrics:)();
  v180 = 0;
  v268 = _swiftEmptyArrayStorage;
  v256 = _swiftEmptyArrayStorage;
  v241 = _swiftEmptyArrayStorage;
  while (v224 != v180)
  {
    if (v180 >= v225[2])
    {
      goto LABEL_85;
    }

    v181 = v225[v180++ + 4];
    v182 = *(v181 + 16);
    if (v182)
    {
      v217[0] = v179;

      v239 = (v180 - 1);
      v183 = (v181 + 80);
      do
      {
        if (*v183 == 1)
        {
          v188 = *(v183 - 6);
          v187 = *(v183 - 5);
          v189 = *(v183 - 4);
          v191 = *(v183 - 2);
          v190 = *(v183 - 1);
          v242 = *(v183 - 3);
          v252 = v190;
          sub_1002F10C8(v188, v187, v189, v242, v191, v190, 1u);

          v192 = swift_isUniquelyReferenced_nonNull_native();
          v262 = v187;
          v253 = v189;
          if ((v192 & 1) == 0)
          {
            v256 = sub_1003679CC(0, *(v256 + 2) + 1, 1, v256);
          }

          v194 = *(v256 + 2);
          v193 = *(v256 + 3);
          if (v194 >= v193 >> 1)
          {
            v256 = sub_1003679CC((v193 > 1), v194 + 1, 1, v256);
          }

          v195 = v256;
          *(v256 + 2) = v194 + 1;
          *&v195[8 * v194 + 32] = v239;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v268 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v268 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v241 = v268;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v264 = sub_100365788(0, *(v264 + 2) + 1, 1, v264);
          }

          v197 = *(v264 + 2);
          v196 = *(v264 + 3);
          if (v197 >= v196 >> 1)
          {
            v264 = sub_100365788((v196 > 1), v197 + 1, 1, v264);
          }

          v184 = v264;
          *(v264 + 2) = v197 + 1;
          v185 = &v184[16 * v197];
          v186 = v242;
          *(v185 + 4) = v242;
          *(v185 + 5) = v191;
          sub_1002F115C(v188, v262, v253, v186, v191, v252, 1u);
        }

        v183 += 56;
        --v182;
      }

      while (v182);

      v179 = v217[0];
    }
  }

  sub_1000F5104(&qword_100941398, &qword_1007A1210);
  type metadata accessor for REMSuggestedLocation();
  (*(v229 + 104))(v228, enum case for REMSuggestedLocation.LocationValue.notAvailable(_:), v230);

  v270[0] = REMSuggestedLocation.__allocating_init(_:)();

  v198 = Series.__allocating_init(_:index:defaultValue:)();
  v270[0] = 0;
  v270[1] = 0xE000000000000000;

  v199 = Series.__allocating_init(_:index:defaultValue:)();
  v200 = v179;
  v201 = v259;
  REMSuggestedAttributeInputDataFrame.location.getter();

  v202 = v250;
  v252 = v198;
  MultiClassificationMetric.init<A>(groundTruth:prediction:)();
  v203 = MultiClassificationMetric.correctIndices.getter();
  __chkstk_darwin(v203);
  v216 = v199;
  v253 = v199;
  v242 = sub_10024D1A0(sub_1002F1310, &v217[-4], v203);

  v204 = MultiClassificationMetric.incorrectIndices.getter();
  __chkstk_darwin(v204);
  v217[-4] = v201;
  v217[-3] = v198;
  v215 = v199;
  sub_10024D1A0(sub_1002F1350, &v217[-6], v204);
  v262 = v200;

  v220(v231, v202, v251);
  v205 = v243;
  REMSuggestedAttributesAccuracy.init(correctSample:incorrectSample:metrics:)();
  type metadata accessor for Analytics();
  sub_1000F5104(&unk_100939240, &unk_100798990);
  v206 = swift_initStackObject();
  *(v206 + 16) = xmmword_100792CE0;
  *(v206 + 32) = 0xD000000000000014;
  *(v206 + 40) = 0x80000001007F4590;
  MultiClassificationMetric.accuracy.getter();
  *(v206 + 48) = Double._bridgeToObjectiveC()();
  strcpy((v206 + 56), "list_accuracy");
  *(v206 + 70) = -4864;
  MultiClassificationMetric.accuracy.getter();
  *(v206 + 72) = Double._bridgeToObjectiveC()();
  *(v206 + 80) = 0xD000000000000011;
  *(v206 + 88) = 0x80000001007F45B0;
  MultiClassificationMetric.accuracy.getter();
  *(v206 + 96) = Double._bridgeToObjectiveC()();
  *(v206 + 104) = 0x616E5F6C65646F6DLL;
  *(v206 + 112) = 0xEA0000000000656DLL;
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  *(v206 + 120) = NSString.init(stringLiteral:)();
  sub_10038D880(v206);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939250, &unk_100795D30);
  swift_arrayDestroy();
  static Analytics.postEvent(_:payload:duration:)();

  v208 = v237;
  v207 = v238;
  v209 = *(v237 + 16);
  v209(v233, v248, v238);
  v209(v234, v246, v207);
  v209(v235, v205, v207);
  v210 = *(v249 + 16);
  v260 = REMSuggestedAttributeInputDataFrame.size.getter();
  v259 = REMSuggestedAttributeInputDataFrame.size.getter();
  v211 = v232;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v264 = *(v261 + 8);
  (v264)(v211, v263);
  v215 = v218;
  REMSuggestedAttributesTrainer.Result.CoreBehavior.init(listAccuracy:dueDayOfWeekAccuracy:alarmLocationAccuracy:minedRuleCount:filteredOutRulesCount:distinctListCount:trainingSetCount:validationSetCount:trainingDuration:topRules:)();

  v212 = *(v208 + 8);
  v212(v243, v207);
  v213 = v244[1];
  v214 = v251;
  v213(v250, v251);
  v212(v246, v207);
  v213(v245, v214);
  v212(v248, v207);
  v213(v247, v214);
  (*(v266 + 8))(v265, v267);
  (v264)(v227, v263);
}
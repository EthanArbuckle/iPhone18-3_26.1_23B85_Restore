uint64_t sub_100078B68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;

  v6 = __CocoaSet.count.getter();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1000653DC(v7, v6);
  v27 = v8;
  v9 = *(v8 + 40);
  Hasher.init(_seed:)();
  v10 = *(a2 + 16);
  v11 = *(v10 + 16);

  v12 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v12);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v8 + 32);
  v15 = v13 & ~v14;
  if ((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = *(*(*(*(v8 + 48) + 8 * v15) + 16) + 16);

      v18 = NWConnection.identifier.getter();

      v19 = *(v10 + 16);

      v20 = NWConnection.identifier.getter();

      if (v18 == v20)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v8 + 48) + 8 * v15);
  sub_100079054(v15);
  v22 = *(v10 + 16);

  v23 = NWConnection.identifier.getter();

  v24 = *(*(v21 + 16) + 16);

  v25 = NWConnection.identifier.getter();

  if (v23 == v25)
  {
    *v3 = v27;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100078D4C(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_10007A988(&qword_10012A1F8, &type metadata accessor for UUID);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_100079054(unint64_t result)
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
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        v13 = *(*(v12 + 16) + 16);

        v14 = NWConnection.identifier.getter();

        Hasher._combine(_:)(v14);
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
          v18 = (v17 + 8 * v2);
          v19 = (v17 + 8 * v6);
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

uint64_t sub_100079238(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012AC60, &qword_100109B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000792A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012AC60, &qword_100109B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079318()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100079358()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000770F4();
}

uint64_t sub_100079360()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_100077170(v1, v2);
}

uint64_t sub_100079394@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for NWBrowser.Result();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_100079464()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  return sub_100079498(v1);
}

uint64_t sub_100079498(uint64_t a1)
{
  v2 = v1;
  v189 = type metadata accessor for NWBrowser.Result.Change.Flags();
  v4 = *(v189 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v189);
  v160 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v169 = &v153 - v9;
  __chkstk_darwin(v8);
  v168 = &v153 - v10;
  v11 = sub_10000560C(&qword_10012AC50, &qword_100109B08);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v153 - v13;
  v15 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v185 = &v153 - v18;
  v177 = type metadata accessor for NWEndpoint();
  v214 = *(v177 - 8);
  v19 = *(v214 + 64);
  __chkstk_darwin(v177);
  v176 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for Logger();
  v213 = *(v197 - 8);
  v21 = *(v213 + 64);
  v22 = __chkstk_darwin(v197);
  v180 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v153 - v25;
  __chkstk_darwin(v24);
  v192 = &v153 - v27;
  v210 = type metadata accessor for NWBrowser.Result();
  v28 = *(v210 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v210);
  v159 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v167 = &v153 - v33;
  v34 = __chkstk_darwin(v32);
  v166 = &v153 - v35;
  v36 = __chkstk_darwin(v34);
  v179 = &v153 - v37;
  v38 = __chkstk_darwin(v36);
  v178 = &v153 - v39;
  v40 = __chkstk_darwin(v38);
  v188 = &v153 - v41;
  v42 = __chkstk_darwin(v40);
  v187 = &v153 - v43;
  v44 = __chkstk_darwin(v42);
  v191 = &v153 - v45;
  __chkstk_darwin(v44);
  v198 = &v153 - v46;
  v209 = type metadata accessor for NWBrowser.Result.Change();
  v47 = *(*(v209 - 8) + 64);
  v48 = __chkstk_darwin(v209);
  v204 = &v153 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v203 = &v153 - v51;
  v52 = *(a1 + 56);
  v182 = a1 + 56;
  v53 = 1 << *(a1 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v52;
  v56 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
  v181 = (v53 + 63) >> 6;
  v201 = v50 + 32;
  v202 = v50 + 16;
  v200 = v50 + 88;
  v199 = enum case for NWBrowser.Result.Change.added(_:);
  v184 = enum case for NWBrowser.Result.Change.removed(_:);
  v165 = enum case for NWBrowser.Result.Change.changed(_:);
  v158 = (v50 + 8);
  v205 = v50;
  v195 = (v50 + 96);
  v194 = (v28 + 32);
  v162 = enum case for NWBrowser.Result.Change.identical(_:);
  v161 = (v4 + 32);
  v207 = (v28 + 16);
  v164 = (v4 + 16);
  v163 = (v4 + 8);
  v208 = (v28 + 8);
  v196 = (v213 + 8);
  v174 = (v214 + 8);
  v57 = (v16 + 56);
  v213 = v16 + 48;
  v214 = v16 + 32;
  v211 = v16;
  v212 = (v16 + 8);
  v206 = a1;

  v59 = 0;
  *&v60 = 136315138;
  v173 = v60;
  *&v60 = 136315650;
  v157 = v60;
  v175 = v26;
  v186 = v2;
  v183 = v57;
  while (v55)
  {
    v61 = v209;
LABEL_12:
    v63 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v64 = v205;
    v65 = v203;
    (*(v205 + 16))(v203, *(v206 + 48) + *(v205 + 72) * (v63 | (v59 << 6)), v61);
    v66 = v204;
    (*(v64 + 32))(v204, v65, v61);
    v67 = *(v64 + 88);
    v68 = v66;
    result = v67(v66, v61);
    if (result == v199)
    {
      (*v195)(v66, v61);
      v69 = v198;
      v70 = v210;
      (*v194)(v198, v66, v210);
      v71 = v192;
      static Log.network.getter();
      v72 = v191;
      (*v207)(v191, v69, v70);
      v73 = Logger.logObject.getter();
      LODWORD(v190) = static os_log_type_t.info.getter();
      v74 = os_log_type_enabled(v73, v190);
      v75 = v185;
      if (v74)
      {
        v76 = swift_slowAlloc();
        v171 = v76;
        v172 = swift_slowAlloc();
        v215 = v172;
        *v76 = v173;
        v77 = v176;
        v78 = v191;
        NWBrowser.Result.endpoint.getter();
        v170 = sub_10007AA34();
        v80 = v79;
        (*v174)(v77, v177);
        v193 = *v208;
        (v193)(v78, v210);
        v81 = sub_100102F80(v170, v80, &v215);

        v82 = v171;
        *(v171 + 1) = v81;
        _os_log_impl(&_mh_execute_header, v73, v190, "[OCM] Browser results added endpoint: %s", v82, 0xCu);
        sub_10000C304(v172);

        v83 = (*v196)(v192, v197);
      }

      else
      {

        v193 = *v208;
        (v193)(v72, v70);
        v83 = (*v196)(v71, v197);
      }

      v104 = v186;
      v105 = v183;
      v106 = sub_100074AFC(v83);
      if (v106)
      {
        while (1)
        {
          swift_beginAccess();
          if (*(*(v104 + v56) + 24) < 1)
          {
            v112 = 1;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10000BA8C();
            }

            v107 = *(v104 + v56);
            result = (*(v211 + 32))(v14, &v107[((*(v211 + 80) + 40) & ~*(v211 + 80)) + *(v211 + 72) * *(v107 + 4)], v15);
            v108 = *(v107 + 4);
            v109 = __OFADD__(v108, 1);
            v110 = v108 + 1;
            if (v109)
            {
              goto LABEL_42;
            }

            v111 = *(v107 + 3);
            if (v110 >= *(v107 + 2))
            {
              v110 = 0;
            }

            *(v107 + 4) = v110;
            if (__OFSUB__(v111, 1))
            {
              goto LABEL_43;
            }

            v112 = 0;
            *(v107 + 3) = v111 - 1;
          }

          (*v105)(v14, v112, 1, v15);
          swift_endAccess();
          if ((*v213)(v14, 1, v15) == 1)
          {
            break;
          }

          (*v214)(v75, v14, v15);
          v215 = v106;

          CheckedContinuation.resume(returning:)();
          (*v212)(v75, v15);
        }

        (v193)(v198, v210);

        result = sub_10000C460(v14, &qword_10012AC50, &qword_100109B08);
      }

      else
      {
        v103 = v198;
LABEL_35:
        result = (v193)(v103, v210);
      }
    }

    else
    {
      v84 = v207;
      if (result == v184)
      {
        (*v195)(v68, v209);
        v85 = v187;
        v86 = v68;
        v87 = v210;
        (*v194)(v187, v86, v210);
        v88 = v175;
        static Log.network.getter();
        v89 = v85;
        v90 = v87;
        (*v84)(v188, v89, v87);
        v91 = v88;
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v171 = v94;
          v190 = swift_slowAlloc();
          v215 = v190;
          *v94 = v173;
          v95 = v176;
          v172 = v92;
          v96 = v188;
          NWBrowser.Result.endpoint.getter();
          v170 = sub_10007AA34();
          v98 = v97;
          (*v174)(v95, v177);
          v193 = *v208;
          (v193)(v96, v210);
          v99 = sub_100102F80(v170, v98, &v215);

          v100 = v171;
          *(v171 + 1) = v99;
          v101 = v175;
          v102 = v172;
          _os_log_impl(&_mh_execute_header, v172, v93, "[OCM] Browser results removed endpoint: %s", v100, 0xCu);
          sub_10000C304(v190);

          (*v196)(v101, v197);
          v103 = v187;
          goto LABEL_35;
        }

        v150 = *v208;
        (*v208)(v188, v90);
        (*v196)(v91, v197);
        result = (v150)(v187, v90);
      }

      else if (result == v165)
      {
        (*v195)(v68, v209);
        v113 = sub_10000560C(&qword_10012AC68, &qword_100109B28);
        v114 = v68;
        v190 = *(v113 + 48);
        v193 = *(v113 + 64);
        v115 = *v194;
        v116 = v68;
        v117 = v210;
        (*v194)(v178, v116, v210);
        v115(v179, &v114[v190], v117);
        v118 = v207;
        v119 = v193 + v114;
        v120 = v168;
        (*v161)(v168, v119, v189);
        static Log.network.getter();
        v121 = *v118;
        (*v118)(v166, v178, v117);
        v193 = v121;
        (v121)(v167, v179, v117);
        v171 = *v164;
        (v171)(v169, v120, v189);
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.info.getter();
        v124 = v123;
        if (os_log_type_enabled(v122, v123))
        {
          v125 = swift_slowAlloc();
          v190 = v125;
          v170 = swift_slowAlloc();
          v215 = v170;
          *v125 = v157;
          v156 = v122;
          v126 = v159;
          v127 = v166;
          v155 = v124;
          v128 = v210;
          (v193)(v159, v166, v210);
          v154 = String.init<A>(describing:)();
          v130 = v129;
          v172 = *v208;
          v131 = v127;
          v132 = v128;
          (v172)(v131, v128);
          v133 = sub_100102F80(v154, v130, &v215);

          v134 = v190;
          *(v190 + 4) = v133;
          *(v134 + 6) = 2080;
          v135 = v167;
          (v193)(v126, v167, v132);
          v136 = String.init<A>(describing:)();
          v138 = v137;
          (v172)(v135, v132);
          v139 = sub_100102F80(v136, v138, &v215);

          v140 = v190;
          *(v190 + 14) = v139;
          *(v140 + 11) = 2080;
          v141 = v169;
          v142 = v189;
          (v171)(v160, v169, v189);
          v171 = String.init<A>(describing:)();
          v144 = v143;
          v193 = *v163;
          (v193)(v141, v142);
          v145 = sub_100102F80(v171, v144, &v215);

          v146 = v190;
          *(v190 + 24) = v145;
          v147 = v156;
          _os_log_impl(&_mh_execute_header, v156, v155, "[OCM] Browser result changed: %s to %s with %s", v146, 0x20u);
          swift_arrayDestroy();

          (*v196)(v180, v197);
          (v193)(v168, v189);
          v148 = v210;
          v149 = v172;
          (v172)(v179, v210);
          result = (v149)(v178, v148);
        }

        else
        {

          v193 = *v163;
          (v193)(v169, v189);
          v151 = *v208;
          v152 = v210;
          (*v208)(v167, v210);
          (v151)(v166, v152);
          (*v196)(v180, v197);
          (v193)(v168, v189);
          (v151)(v179, v152);
          result = (v151)(v178, v152);
        }
      }

      else if (result != v162)
      {
        result = (*v158)(v68, v209);
      }
    }
  }

  v61 = v209;
  while (1)
  {
    v62 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v62 >= v181)
    {
    }

    v55 = *(v182 + 8 * v62);
    ++v59;
    if (v55)
    {
      v59 = v62;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_10007A958()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1000764EC(v1);
}

uint64_t sub_10007A988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007A9D0()
{
  v1 = v0[2];

  v2 = v0[4];
  sub_100071B20(v0[3]);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10007AA34()
{
  v49 = type metadata accessor for URL();
  v51 = *(v49 - 8);
  v1 = *(v51 + 64);
  __chkstk_darwin(v49);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWEndpoint.Port();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NWEndpoint.Host();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NWEndpoint();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = NWEndpoint.deviceName.getter();
  if (!v19)
  {
    v46 = v12;
    v47 = v9;
    v48 = v7;
    v20 = v3;
    v21 = v50;
    v22 = v51;
    (*(v14 + 16))(v17, v0, v13);
    v23 = (*(v14 + 88))(v17, v13);
    if (v23 == enum case for NWEndpoint.hostPort(_:))
    {
      (*(v14 + 96))(v17, v13);
      v24 = *(sub_10000560C(&qword_10012AE40, &qword_100109BA8) + 48);
      v25 = v46;
      v26 = v47;
      v27 = v8;
      (*(v47 + 32))(v46, v17, v8);
      v28 = v48;
      (*(v21 + 32))(v48, v17 + v24, v4);
      v52 = 0;
      v53 = 0xE000000000000000;
      v29._countAndFlagsBits = 0x726F503A74736F48;
      v29._object = 0xEA00000000002074;
      String.append(_:)(v29);
      _print_unlocked<A, B>(_:_:)();
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      _print_unlocked<A, B>(_:_:)();
      v31 = v52;
      (*(v21 + 8))(v28, v4);
      (*(v26 + 8))(v25, v27);
      return v31;
    }

    else if (v23 == enum case for NWEndpoint.service(_:))
    {
      (*(v14 + 96))(v17, v13);
      v32 = *v17;
      v33 = v17[1];
      v34 = v17[3];

      v35 = v17[5];

      v36 = *(sub_10000560C(&qword_10012AE30, &qword_100109B98) + 80);
      v52 = 0x2065636976726553;
      v53 = 0xE800000000000000;
      v37._countAndFlagsBits = v32;
      v37._object = v33;
      String.append(_:)(v37);

      v38 = v52;
      sub_10007B02C(v17 + v36);
      return v38;
    }

    else if (v23 == enum case for NWEndpoint.unix(_:))
    {
      (*(v14 + 96))(v17, v13);
      v39._countAndFlagsBits = *v17;
      v40 = v17[1];
      v52 = 0x2078696E55;
      v53 = 0xE500000000000000;
      v39._object = v40;
      String.append(_:)(v39);

      return v52;
    }

    else if (v23 == enum case for NWEndpoint.url(_:))
    {
      (*(v14 + 96))(v17, v13);
      v41 = v49;
      (*(v22 + 32))(v20, v17, v49);
      v52 = 541872725;
      v53 = 0xE400000000000000;
      v42._countAndFlagsBits = URL.absoluteString.getter();
      String.append(_:)(v42);

      v43 = v52;
      (*(v22 + 8))(v20, v41);
      return v43;
    }

    else
    {
      v44 = enum case for NWEndpoint.opaque(_:);
      v45 = v23;
      (*(v14 + 8))(v17, v13);
      if (v45 == v44)
      {
        return 0x552065757161704FLL;
      }

      else
      {
        return 0x6E776F6E6B6E55;
      }
    }
  }

  return result;
}

uint64_t sub_10007B02C(uint64_t a1)
{
  v2 = sub_10000560C(&qword_10012AE38, &qword_100109BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007B094()
{
  v1 = type metadata accessor for Logger();
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v54[-v7];
  __chkstk_darwin(v6);
  v10 = &v54[-v9];
  v11 = type metadata accessor for NWProtocolQUIC.Metadata.KeepAliveBehavior();
  v12 = *(v11 - 8);
  v61 = v11;
  v62 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v60 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v54[-v16];
  v18 = *(v0 + 16);
  v19 = *(v18 + 16);
  type metadata accessor for NWProtocolQUIC();

  static NWProtocolQUIC.definition.getter();
  v20 = NWConnection.metadata(definition:)();

  if (v20)
  {
    type metadata accessor for NWProtocolQUIC.Metadata();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v57 = v22;
      dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.getter();
      v23 = v61;
      v24 = v62;
      v25 = (*(v62 + 88))(v17, v61);
      if (v25 == enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.seconds(_:))
      {
        (*(v24 + 96))(v17, v23);
        v26 = *v17;
        static Log.network.getter();

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v63 = v30;
          *v29 = 134218242;
          *(v29 + 4) = v26;
          *(v29 + 12) = 2080;
          v31 = *(v18 + 16);

          v32 = sub_1000842B8();
          v34 = v33;

          v35 = sub_100102F80(v32, v34, &v63);

          *(v29 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v27, v28, "Fixing invalid keepalive (%ld): %s", v29, 0x16u);
          sub_10000C304(v30);
          v23 = v61;
        }

        (*(v58 + 8))(v8, v59);
        (*(v62 + 104))(v60, enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.off(_:), v23);
LABEL_14:
        dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.setter();
      }

      if (v25 == enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.on(_:))
      {
        static Log.network.getter();

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v63 = v39;
          *v38 = 136315138;
          v40 = *(v18 + 16);

          v41 = sub_1000842B8();
          v43 = v42;

          v44 = v41;
          v24 = v62;
          v45 = sub_100102F80(v44, v43, &v63);

          *(v38 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v36, v37, "Fixing invalid keepalive (on): %s", v38, 0xCu);
          sub_10000C304(v39);
          v23 = v61;
        }

        (*(v58 + 8))(v10, v59);
        (*(v24 + 104))(v60, enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.off(_:), v23);
        goto LABEL_14;
      }

      v46 = enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.off(_:);
      if (v25 == enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.off(_:))
      {
      }

      static Log.network.getter();

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v63 = v56;
        *v49 = 136315138;
        v55 = v48;
        v50 = v60;
        dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.getter();
        v51 = String.init<A>(describing:)();
        v53 = sub_100102F80(v51, v52, &v63);

        *(v49 + 4) = v53;
        v24 = v62;
        _os_log_impl(&_mh_execute_header, v47, v55, "Found unkown keepalive: %s", v49, 0xCu);
        sub_10000C304(v56);
        v23 = v61;

        (*(v58 + 8))(v5, v59);
      }

      else
      {

        (*(v58 + 8))(v5, v59);
        v50 = v60;
      }

      (*(v24 + 104))(v50, v46, v23);
      dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.setter();

      return (*(v24 + 8))(v17, v23);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10007B790(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = *(*(type metadata accessor for MessageBody() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Message.Operation() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = *(*(sub_10000560C(&qword_10012AFD8, &qword_100109D40) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for ProtocolVersion();
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v9 = *(v8 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = type metadata accessor for FileHeaderProto();
  v2[21] = v10;
  v11 = *(v10 - 8);
  v2[22] = v11;
  v12 = *(v11 + 64) + 15;
  v2[23] = swift_task_alloc();
  v13 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v14 = type metadata accessor for MessageProto();
  v2[26] = v14;
  v15 = *(v14 - 8);
  v2[27] = v15;
  v16 = *(v15 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = type metadata accessor for CommunicationActor();
  v2[31] = static CommunicationActor.shared.getter();
  v17 = swift_task_alloc();
  v2[32] = v17;
  *v17 = v2;
  v17[1] = sub_10007BA6C;

  return sub_10008165C();
}

uint64_t sub_10007BA6C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 256);
  v7 = *v2;
  v5[33] = a1;
  v5[34] = v1;

  v8 = v4[31];
  v9 = v4[30];
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v3)
  {
    v12 = sub_10007CE1C;
  }

  else
  {
    v5[35] = v10;
    v5[36] = v11;
    v12 = sub_10007BC10;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_10007BC10()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = LazyData.getData()();
  v5 = *(v0 + 264);
  if (v2)
  {
    v6 = *(v0 + 248);

    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 184);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    v22 = *(v0 + 112);
    v63 = *(v0 + 104);

    v23 = *(v0 + 8);
LABEL_4:

    return v23();
  }

  v7 = v3;
  v8 = v4;
  v9 = *(v0 + 232);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 264);

  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  BinaryDecodingOptions.init()();
  sub_10008518C(&qword_10012AFA8, 255, &type metadata accessor for MessageProto);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v25 = *(v0 + 232);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  *(v0 + 296) = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000010, 0x8000000100107690);
  v26 = MessageProto.fileCount.getter();
  *(v0 + 360) = v26;
  if (!v26)
  {
    v29 = *(v0 + 248);
    v30 = *(v0 + 232);
    v31 = *(v0 + 136);
    v32 = *(v0 + 144);
    v33 = *(v0 + 128);

    MessageProto.version.getter();
    ProtocolVersion.init(rawValue:)();
    v34 = *(v32 + 48);
    if (v34(v33, 1, v31) == 1)
    {
      v35 = *(v0 + 128);
      v36 = *(v0 + 136);
      v37 = *(v0 + 160);
      static ProtocolVersion.current.getter();
      if (v34(v35, 1, v36) != 1)
      {
        sub_10000C460(*(v0 + 128), &qword_10012AFD8, &qword_100109D40);
      }
    }

    else
    {
      (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 128), *(v0 + 136));
    }

    v38 = *(v0 + 120);
    (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
    Message.Operation.init(protobuf:)();
    v39 = *(v0 + 232);
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v42 = *(v0 + 136);
    v43 = *(v0 + 144);
    v44 = *(v0 + 112);
    MessageProto.messageContent.getter();
    (*(v43 + 16))(v41, v40, v42);
    MessageBody.init(data:files:version:)();
    if (MessageProto.hasComplete.getter())
    {
      v45 = *(v0 + 232);
      MessageProto.complete.getter();
    }

    v46 = *(v0 + 296);
    v47 = *(v0 + 232);
    v48 = *(v0 + 216);
    v58 = *(v0 + 208);
    v59 = *(v0 + 224);
    v60 = *(v0 + 200);
    v61 = *(v0 + 192);
    v49 = *(v0 + 160);
    v62 = *(v0 + 184);
    v64 = *(v0 + 152);
    v51 = *(v0 + 136);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v65 = *(v0 + 128);
    v54 = *(v0 + 104);
    v53 = *(v0 + 112);
    v55 = *(v0 + 88);
    Message.init(operation:content:complete:)();
    (*(v50 + 8))(v49, v51);
    v56 = type metadata accessor for TaskPriority();
    (*(*(v56 - 8) + 56))(v54, 1, 1, v56);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v46;

    sub_100005654(0, 0, v54, &unk_100109D78, v57);

    (*(v48 + 8))(v47, v58);

    v23 = *(v0 + 8);
    goto LABEL_4;
  }

  *(v0 + 364) = 0;
  *(v0 + 304) = &_swiftEmptyDictionarySingleton;
  v27 = swift_task_alloc();
  *(v0 + 312) = v27;
  *v27 = v0;
  v27[1] = sub_10007C28C;
  v28 = *(v0 + 96);

  return sub_10008165C();
}

uint64_t sub_10007C28C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v10 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v5 = v3[38];

    v6 = v3[35];
    v7 = v3[36];
    v8 = sub_10007CF14;
  }

  else
  {
    v6 = v3[35];
    v7 = v3[36];
    v8 = sub_10007C3A8;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10007C3A8()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = LazyData.getData()();
  v5 = *(v0 + 320);
  if (v2)
  {
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 248);
    v9 = *(v0 + 232);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    v12 = *(v0 + 104);

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v7;

    sub_100005654(0, 0, v12, &unk_100109D58, v14);

    (*(v11 + 8))(v9, v10);
    v22 = *(v0 + 224);
    v21 = *(v0 + 232);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v25 = *(v0 + 184);
    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v30 = *(v0 + 112);
    v35 = *(v0 + 104);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v15 = v3;
    v16 = v4;
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    v19 = *(v0 + 168);
    v20 = *(v0 + 320);

    *(v0 + 72) = v15;
    *(v0 + 80) = v16;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    BinaryDecodingOptions.init()();
    sub_10008518C(&qword_10012AFB8, 255, &type metadata accessor for FileHeaderProto);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v33 = swift_task_alloc();
    *(v0 + 336) = v33;
    *v33 = v0;
    v33[1] = sub_10007C74C;
    v34 = *(v0 + 96);

    return sub_10008165C();
  }
}

uint64_t sub_10007C74C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v11 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v6 = v4[38];

    v7 = v4[35];
    v8 = v4[36];
    v9 = sub_10007D0D0;
  }

  else
  {
    v4[44] = a1;
    v7 = v4[35];
    v8 = v4[36];
    v9 = sub_10007C878;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10007C878()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  v69 = *(v0 + 360);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 364) + 1;
  v7 = FileHeaderProto.filename.getter();
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10005C26C(v1, v7, v9, isUniquelyReferenced_nonNull_native);

  (*(v4 + 8))(v3, v5);
  if (v6 == v69)
  {
    v11 = *(v0 + 344);
    v12 = *(v0 + 248);
    v13 = *(v0 + 232);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = *(v0 + 128);

    MessageProto.version.getter();
    ProtocolVersion.init(rawValue:)();
    v17 = *(v15 + 48);
    if (v17(v16, 1, v14) == 1)
    {
      v19 = *(v0 + 128);
      v18 = *(v0 + 136);
      v20 = *(v0 + 160);
      static ProtocolVersion.current.getter();
      if (v17(v19, 1, v18) != 1)
      {
        sub_10000C460(*(v0 + 128), &qword_10012AFD8, &qword_100109D40);
      }
    }

    else
    {
      (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 128), *(v0 + 136));
    }

    v24 = *(v0 + 120);
    (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
    Message.Operation.init(protobuf:)();
    if (v11)
    {
      v25 = *(v0 + 296);
      v26 = *(v0 + 232);
      v28 = *(v0 + 208);
      v27 = *(v0 + 216);
      v29 = *(v0 + 104);
      (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));

      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v25;

      sub_100005654(0, 0, v29, &unk_100109D70, v31);

      (*(v27 + 8))(v26, v28);
      v33 = *(v0 + 224);
      v32 = *(v0 + 232);
      v35 = *(v0 + 192);
      v34 = *(v0 + 200);
      v36 = *(v0 + 184);
      v38 = *(v0 + 152);
      v37 = *(v0 + 160);
      v40 = *(v0 + 120);
      v39 = *(v0 + 128);
      v41 = *(v0 + 112);
      v67 = *(v0 + 104);

      v42 = *(v0 + 8);
    }

    else
    {
      v43 = *(v0 + 232);
      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v46 = *(v0 + 136);
      v47 = *(v0 + 144);
      v48 = *(v0 + 112);
      MessageProto.messageContent.getter();
      (*(v47 + 16))(v45, v44, v46);
      MessageBody.init(data:files:version:)();
      if (MessageProto.hasComplete.getter())
      {
        v49 = *(v0 + 232);
        MessageProto.complete.getter();
      }

      v50 = *(v0 + 296);
      v51 = *(v0 + 232);
      v52 = *(v0 + 216);
      v62 = *(v0 + 208);
      v63 = *(v0 + 224);
      v64 = *(v0 + 200);
      v65 = *(v0 + 192);
      v53 = *(v0 + 160);
      v66 = *(v0 + 184);
      v68 = *(v0 + 152);
      v55 = *(v0 + 136);
      v54 = *(v0 + 144);
      v56 = *(v0 + 120);
      v70 = *(v0 + 128);
      v58 = *(v0 + 104);
      v57 = *(v0 + 112);
      v59 = *(v0 + 88);
      Message.init(operation:content:complete:)();
      (*(v54 + 8))(v53, v55);
      v60 = type metadata accessor for TaskPriority();
      (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
      v61 = swift_allocObject();
      v61[2] = 0;
      v61[3] = 0;
      v61[4] = v50;

      sub_100005654(0, 0, v58, &unk_100109D78, v61);

      (*(v52 + 8))(v51, v62);

      v42 = *(v0 + 8);
    }

    return v42();
  }

  else
  {
    ++*(v0 + 364);
    *(v0 + 304) = v2;
    v21 = swift_task_alloc();
    *(v0 + 312) = v21;
    *v21 = v0;
    v21[1] = sub_10007C28C;
    v22 = *(v0 + 96);

    return sub_10008165C();
  }
}

uint64_t sub_10007CE1C()
{
  v1 = v0[31];

  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  v14 = v0[13];
  v15 = v0[34];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007CF14()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[13];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_100005654(0, 0, v6, &unk_100109D50, v8);

  (*(v5 + 8))(v3, v4);
  v10 = v0[28];
  v9 = v0[29];
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[23];
  v15 = v0[19];
  v14 = v0[20];
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[14];
  v21 = v0[13];
  v22 = v0[41];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10007D0D0()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[27];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v0[13];

  (*(v7 + 8))(v6, v8);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_100005654(0, 0, v9, &unk_100109D68, v11);

  (*(v5 + 8))(v3, v4);
  v13 = v0[28];
  v12 = v0[29];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[23];
  v18 = v0[19];
  v17 = v0[20];
  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[14];
  v24 = v0[13];
  v25 = v0[43];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10007D2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for FileHeaderProto();
  v4[21] = v6;
  v7 = *(v6 - 8);
  v4[22] = v7;
  v8 = *(v7 + 64) + 15;
  v4[23] = swift_task_alloc();
  v9 = type metadata accessor for MessageBody();
  v4[24] = v9;
  v10 = *(v9 - 8);
  v4[25] = v10;
  v11 = *(v10 + 64) + 15;
  v4[26] = swift_task_alloc();
  v12 = type metadata accessor for MessageProto();
  v4[27] = v12;
  v13 = *(v12 - 8);
  v4[28] = v13;
  v14 = *(v13 + 64) + 15;
  v4[29] = swift_task_alloc();
  v15 = type metadata accessor for Message.Operation();
  v4[30] = v15;
  v16 = *(v15 - 8);
  v4[31] = v16;
  v17 = *(v16 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = type metadata accessor for CommunicationActor();
  v4[34] = static CommunicationActor.shared.getter();
  v4[35] = sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[36] = v19;
  v4[37] = v18;

  return _swift_task_switch(sub_10007D52C, v19, v18);
}

uint64_t sub_10007D52C()
{
  if (v0[18])
  {
    v1 = v0[17];
    v2 = v0[18];
  }

  else
  {
    v4 = v0[31];
    v3 = v0[32];
    v5 = v0[30];
    v6 = v0[16];
    Message.operation.getter();
    v1 = sub_1000849D0(v3);
    v2 = v7;
    (*(v4 + 8))(v3, v5);
  }

  v0[38] = v2;
  v8 = v0[29];
  v9 = v0[27];
  v10 = v0[16];

  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v0[39] = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0x20676E69646E6553, 0xEF6567617373654DLL);
  *(swift_task_alloc() + 16) = v10;
  sub_10008518C(&qword_10012AFA8, 255, &type metadata accessor for MessageProto);
  static Message.with(_:)();
  v11 = v0[29];
  v12 = v0[27];

  sub_10000560C(&qword_10012AFB0, &qword_100109CE0);
  inited = swift_initStackObject();
  v0[40] = inited;
  *(inited + 16) = xmmword_1001089C0;
  v14 = Message.serializedData(partial:)();
  v51 = v1;
  v15 = inited;
  v17 = v0[25];
  v16 = v0[26];
  v18 = v0[24];
  v19 = v0[22];
  v20 = v0[16];
  *(v15 + 32) = v14;
  *(v15 + 40) = v21;
  v52 = v15;
  v53 = v2;
  Message.content.getter();
  v22 = MessageBody.files.getter();
  (*(v17 + 8))(v16, v18);
  v23 = v22 + 64;
  v24 = -1;
  v25 = -1 << *(v22 + 32);
  if (-v25 < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & *(v22 + 64);
  v27 = (63 - v25) >> 6;
  v54 = (v19 + 8);
  v55 = v22;

  v29 = 0;
  if (v26)
  {
    while (1)
    {
      v30 = v29;
LABEL_11:
      v31 = v0[35];
      v32 = v0[33];
      v33 = __clz(__rbit64(v26)) | (v30 << 6);
      v34 = (*(v55 + 48) + 16 * v33);
      v35 = *v34;
      v36 = *(*(v55 + 56) + 8 * v33);
      v56 = v34[1];

      static CommunicationActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v37 = v0[23];
      v38 = v0[21];
      v39 = swift_task_alloc();
      *(v39 + 16) = v35;
      *(v39 + 24) = v56;
      sub_10008518C(&qword_10012AFB8, 255, &type metadata accessor for FileHeaderProto);
      static Message.with(_:)();

      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_100109BB0;
      *(v40 + 32) = Message.serializedData(partial:)();
      *(v40 + 40) = v41;
      v42 = LazyData.getData()();
      v44 = v43;
      v45 = v0[23];
      v46 = v0[21];
      v26 &= v26 - 1;
      *(v40 + 48) = v42;
      *(v40 + 56) = v44;
      (*v54)(v45, v46);

      result = sub_1000848DC(v40);
      v29 = v30;
      if (!v26)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      return result;
    }

    if (v30 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v30);
    ++v29;
    if (v26)
    {
      goto LABEL_11;
    }
  }

  v47 = v0[16];

  sub_1000848DC(&_swiftEmptyArrayStorage);
  v0[41] = v52;
  v48 = Message.complete.getter();
  v49 = swift_task_alloc();
  v0[42] = v49;
  *v49 = v0;
  v49[1] = sub_10007DDB0;
  v50 = v0[19];

  return sub_10007F048(v52, v48 & 1, v51, v53);
}

uint64_t sub_10007DDB0()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = v2[41];
  v6 = v2[38];

  v7 = v2[37];
  v8 = v2[36];
  if (v0)
  {
    v9 = sub_10007E07C;
  }

  else
  {
    v9 = sub_10007DF20;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10007DF20()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[20];

  (*(v5 + 8))(v4, v7);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  sub_100005654(0, 0, v9, &unk_100109D08, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007E07C()
{
  v1 = v0[39];
  v2 = v0[34];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[20];

  (*(v4 + 8))(v3, v5);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  sub_100005654(0, 0, v6, &unk_100109D00, v8);

  v9 = v0[43];
  v10 = v0[32];
  v11 = v0[29];
  v12 = v0[26];
  v13 = v0[23];
  v14 = v0[20];

  v15 = v0[1];

  return v15();
}

void sub_10007E1D8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v32 - v9;
  if ((__swp(1u, (*(**(v0 + 24) + 136))(v8)) & 1) == 0)
  {
    sub_10000560C(&qword_10012AFA0, &qword_100109CC0);
    v11 = atomic_fetch_add_explicit((swift_initStaticObject() + 16), 1uLL, memory_order_relaxed) + 1;
    if (v11 < 21)
    {
      static Log.network.getter();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v32 = v11;
        v24 = v23;
        v25 = swift_slowAlloc();
        v33 = v25;
        *v24 = 136315394;
        v26 = *(v0 + 16);
        v27 = sub_1000842B8();
        v29 = sub_100102F80(v27, v28, &v33);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v21, v22, "[NWC] %s start: (total: %ld)", v24, 0x16u);
        sub_10000C304(v25);
      }

      (*(v3 + 8))(v7, v2);
    }

    else
    {
      static Log.network.getter();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v32 = v11;
        v15 = v14;
        v16 = swift_slowAlloc();
        v33 = v16;
        *v15 = 136315650;
        v17 = *(v0 + 16);
        v18 = sub_1000842B8();
        v20 = sub_100102F80(v18, v19, &v33);

        *(v15 + 4) = v20;
        *(v15 + 12) = 2048;
        *(v15 + 14) = v32;
        *(v15 + 22) = 2048;
        *(v15 + 24) = 20;
        _os_log_impl(&_mh_execute_header, v12, v13, "[NWC] %s start: (total: %ld > max: %ld)", v15, 0x20u);
        sub_10000C304(v16);
      }

      (*(v3 + 8))(v10, v2);
    }

    v30 = *(v1 + 16);
    type metadata accessor for CommunicationActor();
    v31 = static CommunicationActor.sharedQueue.getter();
    NWConnection.start(queue:)();
  }
}

void sub_10007E560()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(**(v0 + 24) + 136))(v5);
  __swp(v9, v8);
  if (v9)
  {
    sub_10000560C(&qword_10012AFA0, &qword_100109CC0);
    add_explicit = atomic_fetch_add_explicit((swift_initStaticObject() + 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    static Log.network.getter();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v20 = add_explicit - 1;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315394;
      v15 = *(v0 + 16);
      v16 = sub_1000842B8();
      v18 = sub_100102F80(v16, v17, &v21);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "[NWC] %s close: (total: %ld)", v13, 0x16u);
      sub_10000C304(v14);
    }

    (*(v3 + 8))(v7, v2);
    v19 = *(v1 + 16);
    NWConnection.cancel()();
  }
}

uint64_t sub_10007E794()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWConnection.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(v0 + 16);

  NWConnection.state.getter();

  (*(v8 + 104))(v12, enum case for NWConnection.State.cancelled(_:), v7);
  sub_10008518C(&qword_10012AF98, 255, &type metadata accessor for NWConnection.State);
  LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v8 + 8);
  v16(v12, v7);
  v16(v14, v7);
  if ((v15 & 1) == 0)
  {
    static Log.network.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      v21 = *(v1 + 16);
      v22 = sub_1000842B8();
      v24 = sub_100102F80(v22, v23, &v29);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "[NWC] %s non-cancelled deinit", v19, 0xCu);
      sub_10000C304(v20);
    }

    (*(v3 + 8))(v6, v2);
    sub_10007E560();
  }

  v25 = *(v1 + 16);

  v26 = *(v1 + 24);

  return v1;
}

uint64_t sub_10007EAC8()
{
  v0 = sub_10007E794();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10007EB40(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = type metadata accessor for ProtocolVersion();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageBody();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for Message.Operation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationActor();
  static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Message.operation.getter();
  v18 = v31;
  Message.Operation.protobuf(proto:)();
  if (v18)
  {
    (*(v14 + 8))(v17, v13);
  }

  (*(v14 + 8))(v17, v13);
  Message.content.getter();
  v19 = MessageBody.files.getter();
  v31 = a2;
  v21 = v29 + 8;
  v20 = *(v29 + 8);
  v20(v12, v30);
  v22 = *(v19 + 16);

  if (!HIDWORD(v22))
  {
    MessageProto.fileCount.setter();
    Message.content.getter();
    MessageBody.getData()();
    v29 = v21;
    v24 = v30;
    v20(v10, v30);
    MessageProto.messageContent.setter();
    Message.content.getter();
    v25 = v26;
    MessageBody.version.getter();
    v20(v12, v24);
    ProtocolVersion.rawValue.getter();
    (*(v27 + 8))(v25, v28);
    MessageProto.version.setter();
    Message.complete.getter();
    MessageProto.complete.setter();
  }

  __break(1u);
  return result;
}

uint64_t sub_10007EF50()
{
  type metadata accessor for CommunicationActor();
  static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  FileHeaderProto.filename.setter();
}

uint64_t sub_10007F048(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 216) = a2;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;
  v6 = type metadata accessor for Logger();
  *(v5 + 80) = v6;
  v7 = *(v6 - 8);
  *(v5 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  *(v5 + 104) = static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 112) = v10;
  *(v5 + 120) = v9;

  return _swift_task_switch(sub_10007F178, v10, v9);
}

uint64_t sub_10007F178()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 136) = v3;
      v5 = *(v0 + 48) + 16 * v3;
      v6 = *(v5 + 32);
      *(v0 + 144) = v6;
      v7 = *(v5 + 40);
      *(v0 + 152) = v7;
      sub_100041E80(v6, v7);
      sub_100041E80(v6, v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001001A0(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_1001001A0((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v0 + 160) = v4;
      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v7;
      v12 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v12 == 2)
        {
          v15 = *(v6 + 16);
          v14 = *(v6 + 24);
          v16 = __OFSUB__(v14, v15);
          v13 = v14 - v15;
          if (v16)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v12)
      {
        LODWORD(v13) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_30;
        }

        v13 = v13;
      }

      else
      {
        v13 = BYTE6(v7);
      }

      v16 = __OFADD__(v2, v13);
      v2 += v13;
      *(v0 + 168) = v2;
      if (v16)
      {
        break;
      }

      if (v2 >= 0x100000)
      {
        v25 = swift_task_alloc();
        *(v0 + 176) = v25;
        *v25 = v0;
        v25[1] = sub_10007F3EC;
        v20 = *(v0 + 64);
        v26 = *(v0 + 72);
        v22 = *(v0 + 56);
        v24 = v4;
        v23 = 0;
        goto LABEL_25;
      }

      v17 = v3 + 1;
      v18 = *(v0 + 128);
      result = sub_10000C868(v6, v7);
      if (v17 == v18)
      {
        goto LABEL_23;
      }

      v3 = *(v0 + 136) + 1;
      if (v3 == *(v0 + 128))
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
LABEL_23:
    *(v0 + 192) = v4;
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_10007F9CC;
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);
    v22 = *(v0 + 56);
    v23 = *(v0 + 216);
    v24 = v4;
LABEL_25:

    return sub_10008004C(v24, v23, v22, v20);
  }

  return result;
}

uint64_t sub_10007F3EC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = v2[20];

  v6 = v2[15];
  v7 = v2[14];
  if (v0)
  {
    v8 = sub_10007FB54;
  }

  else
  {
    v8 = sub_10007F540;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10007F540()
{
  v58 = v0;
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  static Log.network.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v55 = *(v0 + 144);
    v56 = *(v0 + 152);
    v6 = *(v0 + 88);
    v54 = *(v0 + 96);
    v7 = *(v0 + 72);
    v52 = *(v0 + 168);
    v53 = *(v0 + 80);
    v51 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57 = v9;
    *v8 = 136315394;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v10 = *(v0 + 40);

    *(v0 + 16) = 0xD000000000000012;
    *(v0 + 24) = 0x8000000100107640;
    v11 = *(*(v7 + 16) + 16);

    v12 = sub_1000842B8();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x6567617373656D20;
    v16._object = 0xE900000000000020;
    String.append(_:)(v16);
    String.append(_:)(v51);
    v17 = sub_100102F80(*(v0 + 16), *(v0 + 24), &v57);

    *(v8 + 4) = v17;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s end of batch after (%ld bytes)", v8, 0x16u);
    sub_10000C304(v9);

    (*(v6 + 8))(v54, v53);
    v18 = v55;
    v19 = v56;
  }

  else
  {
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 80);

    (*(v23 + 8))(v22, v24);
    v18 = v21;
    v19 = v20;
  }

  result = sub_10000C868(v18, v19);
  if (*(v0 + 136) + 1 == *(v0 + 128))
  {
    v26 = &_swiftEmptyArrayStorage;
LABEL_6:
    *(v0 + 192) = v26;
    v27 = swift_task_alloc();
    *(v0 + 200) = v27;
    *v27 = v0;
    v27[1] = sub_10007F9CC;
    v28 = *(v0 + 64);
    v29 = *(v0 + 72);
    v30 = *(v0 + 56);
    v31 = *(v0 + 216);
    v32 = v26;
LABEL_28:

    return sub_10008004C(v32, v31, v30, v28);
  }

  else
  {
    v33 = 0;
    v26 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v34 = *(v0 + 136);
      v35 = v34 + 1;
      if (v34 + 1 == *(v0 + 128))
      {
        break;
      }

      *(v0 + 136) = v35;
      v36 = *(v0 + 48) + 16 * v35;
      v37 = *(v36 + 32);
      *(v0 + 144) = v37;
      v38 = *(v36 + 40);
      *(v0 + 152) = v38;
      sub_100041E80(v37, v38);
      sub_100041E80(v37, v38);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001001A0(0, *(v26 + 2) + 1, 1, v26);
        v26 = result;
      }

      v40 = *(v26 + 2);
      v39 = *(v26 + 3);
      if (v40 >= v39 >> 1)
      {
        result = sub_1001001A0((v39 > 1), v40 + 1, 1, v26);
        v26 = result;
      }

      *(v0 + 160) = v26;
      *(v26 + 2) = v40 + 1;
      v41 = &v26[16 * v40];
      *(v41 + 4) = v37;
      *(v41 + 5) = v38;
      v42 = v38 >> 62;
      if ((v38 >> 62) > 1)
      {
        if (v42 == 2)
        {
          v45 = *(v37 + 16);
          v44 = *(v37 + 24);
          v46 = __OFSUB__(v44, v45);
          v43 = v44 - v45;
          if (v46)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v43 = 0;
        }
      }

      else if (v42)
      {
        LODWORD(v43) = HIDWORD(v37) - v37;
        if (__OFSUB__(HIDWORD(v37), v37))
        {
          goto LABEL_34;
        }

        v43 = v43;
      }

      else
      {
        v43 = BYTE6(v38);
      }

      v46 = __OFADD__(v33, v43);
      v33 += v43;
      *(v0 + 168) = v33;
      if (v46)
      {
        goto LABEL_32;
      }

      if (v33 >= 0x100000)
      {
        v49 = swift_task_alloc();
        *(v0 + 176) = v49;
        *v49 = v0;
        v49[1] = sub_10007F3EC;
        v28 = *(v0 + 64);
        v50 = *(v0 + 72);
        v30 = *(v0 + 56);
        v32 = v26;
        v31 = 0;
        goto LABEL_28;
      }

      v47 = v34 + 2;
      v48 = *(v0 + 128);
      result = sub_10000C868(v37, v38);
      if (v47 == v48)
      {
        goto LABEL_6;
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

  return result;
}

uint64_t sub_10007F9CC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_10007FBD0;
  }

  else
  {
    v7 = v2[24];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_10007FAE8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10007FAE8()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10007FB54()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[13];

  sub_10000C868(v1, v2);
  v4 = v0[23];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007FBD0()
{
  v1 = v0[24];
  v2 = v0[13];

  v3 = v0[26];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

unint64_t sub_10007FC48(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(31);

  v5 = *(*(v2 + 16) + 16);

  v6 = sub_1000842B8();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6567617373656D20;
  v10._object = 0xE900000000000020;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  return 0xD000000000000012;
}

uint64_t sub_10007FD30(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v30 = a1;
  v31 = a3;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  sub_100041E80(a5, a6);
  sub_100041E80(a5, a6);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v15, v16))
  {
    sub_10000C868(a5, a6);
    sub_10000C868(a5, a6);

    return (*(v11 + 8))(v14, v10);
  }

  v29 = v16;
  v27 = v11;
  v28 = v10;
  v17 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v17 = 136315650;
  v18 = sub_10007FC48(v30, a2);
  v20 = sub_100102F80(v18, v19, &v32);

  *(v17 + 4) = v20;
  *(v17 + 12) = 2080;
  *(v17 + 14) = sub_100102F80(v31, a4, &v32);
  *(v17 + 22) = 2048;
  v21 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a5 + 16);
      v25 = *(a5 + 24);
      sub_10000C868(a5, a6);
      v23 = v25 - v22;
      if (__OFSUB__(v25, v22))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    else
    {
      sub_10000C868(a5, a6);
      v23 = 0;
    }

    v26 = v27;
    LOBYTE(v22) = v29;
    goto LABEL_15;
  }

  LOBYTE(v22) = v29;
  if (v21)
  {
LABEL_10:
    result = sub_10000C868(a5, a6);
    LODWORD(v23) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      __break(1u);
      return result;
    }

    v23 = v23;
    goto LABEL_12;
  }

  sub_10000C868(a5, a6);
  v23 = BYTE6(a6);
LABEL_12:
  v26 = v27;
LABEL_15:
  *(v17 + 24) = v23;
  sub_10000C868(a5, a6);
  _os_log_impl(&_mh_execute_header, v15, v22, "%s sending %s (%ld bytes)", v17, 0x20u);
  swift_arrayDestroy();

  return (*(v26 + 8))(v14, v28);
}

uint64_t sub_10008004C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 216) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = type metadata accessor for NWConnection.SendCompletion();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = type metadata accessor for ProtocolVersion();
  *(v5 + 72) = v9;
  v10 = *(v9 - 8);
  *(v5 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = type metadata accessor for CommunicationActor();
  *(v5 + 112) = static CommunicationActor.shared.getter();
  *(v5 + 120) = sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 128) = v13;
  *(v5 + 136) = v12;

  return _swift_task_switch(sub_1000801EC, v13, v12);
}

uint64_t sub_1000801EC()
{
  v1 = *(v0 + 16);
  v4 = *(v1 + 16);
  v2 = (v1 + 16);
  v3 = v4;
  if (v4 < 2)
  {
LABEL_18:
    if (!v3)
    {
      v28 = *(v0 + 112);
      v30 = *(v0 + 88);
      v29 = *(v0 + 96);
      v31 = *(v0 + 64);

      v32 = *(v0 + 8);

      return v32();
    }

    v23 = &v2[2 * v3];
    v24 = *v23;
    *(v0 + 144) = *v23;
    v25 = v23[1];
    *(v0 + 152) = v25;
    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v26 != 2)
      {
LABEL_32:
        LODWORD(v27) = 0;
LABEL_33:
        v35 = *(v0 + 88);
        *(v0 + 212) = v27;
        static ProtocolVersion.current.getter();
        sub_100084F58();
        v36 = FixedWidthInteger.serialized(version:)();
        *(v0 + 160) = v36;
        *(v0 + 168) = v37;
        v67 = *(v0 + 120);
        v64 = *(v0 + 104);
        v39 = *(v0 + 64);
        v40 = *(v0 + 56);
        v69 = *(v0 + 48);
        v42 = *(v0 + 32);
        v41 = *(v0 + 40);
        v62 = v42;
        v43 = *(v0 + 24);
        v65 = *(v0 + 216);
        v44 = v36;
        v45 = v37;
        (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
        sub_10007FD30(v43, v42, 0x7A6973207473616CLL, 0xE900000000000065, v44, v45);
        v46 = *(*(v41 + 16) + 16);
        *v39 = nullsub_1;
        v39[1] = 0;
        (*(v40 + 104))(v39, enum case for NWConnection.SendCompletion.contentProcessed(_:), v69);
        type metadata accessor for NWConnection.ContentContext();

        sub_100041E80(v44, v45);
        static NWConnection.ContentContext.defaultMessage.getter();
        NWConnection.send(content:contentContext:isComplete:completion:)();

        sub_10000C868(v44, v45);

        (*(v40 + 8))(v39, v69);
        *(v0 + 176) = static CommunicationActor.shared.getter();
        v47 = swift_task_alloc();
        *(v0 + 184) = v47;
        *(v47 + 16) = v41;
        *(v47 + 24) = v43;
        *(v47 + 32) = v62;
        *(v47 + 40) = v24;
        *(v47 + 48) = v25;
        *(v47 + 56) = v65;
        v48 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
        v49 = swift_task_alloc();
        *(v0 + 192) = v49;
        *v49 = v0;
        v49[1] = sub_100080984;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)();
      }

      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      v27 = v33 - v34;
      if (!__OFSUB__(v33, v34))
      {
LABEL_29:
        sub_100041E80(v24, v25);
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (!HIDWORD(v27))
        {
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v26)
    {
      LODWORD(v27) = BYTE6(v25);
      goto LABEL_33;
    }

    if (__OFSUB__(HIDWORD(v24), v24))
    {
      goto LABEL_45;
    }

    v27 = HIDWORD(v24) - v24;
    goto LABEL_29;
  }

  v50 = v2;
  v5 = *(v0 + 56);
  v54 = *(v0 + 64);
  v53 = *(v0 + 40);
  v55 = (*(v0 + 80) + 8);
  v56 = v0;
  v66 = enum case for NWConnection.SendCompletion.contentProcessed(_:);
  v51 = (v5 + 8);
  v52 = (v5 + 104);
  v6 = v3 - 1;
  v7 = ( + 40);
  while (1)
  {
    v8 = *v7;
    v68 = *(v7 - 1);
    v9 = *v7 >> 62;
    if (v9 > 1)
    {
      v10 = v56;
      if (v9 != 2)
      {
        LODWORD(v11) = 0;
        goto LABEL_16;
      }

      v13 = *(v68 + 16);
      v12 = *(v68 + 24);
      v11 = v12 - v13;
      if (__OFSUB__(v12, v13))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v10 = v56;
      if (!v9)
      {
        LODWORD(v11) = BYTE6(v8);
        goto LABEL_16;
      }

      if (__OFSUB__(HIDWORD(v68), v68))
      {
        goto LABEL_42;
      }

      v11 = HIDWORD(v68) - v68;
    }

    sub_100041E80(v68, v8);
    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(v11))
    {
      goto LABEL_41;
    }

LABEL_16:
    v14 = *(v10 + 96);
    *(v10 + 208) = v11;
    static ProtocolVersion.current.getter();
    sub_100084F58();
    v15 = FixedWidthInteger.serialized(version:)();
    v17 = v16;
    v63 = v7 + 2;
    v18 = *(v10 + 64);
    v19 = *(v10 + 48);
    v61 = *(v10 + 32);
    v60 = *(v10 + 24);
    (*v55)(*(v10 + 96), *(v10 + 72));
    sub_10007FD30(v60, v61, 1702521203, 0xE400000000000000, v15, v17);
    v58 = *(v53 + 16);
    v20 = *(v58 + 16);
    *v18 = nullsub_1;
    *(v54 + 8) = 0;
    v57 = *v52;
    (*v52)(v18, v66, v19);
    type metadata accessor for NWConnection.ContentContext();

    sub_100041E80(v15, v17);
    static NWConnection.ContentContext.defaultMessage.getter();
    NWConnection.send(content:contentContext:isComplete:completion:)();

    sub_10000C868(v15, v17);

    v59 = *v51;
    (*v51)(v18, v19);
    sub_10007FD30(v60, v61, 1635017060, 0xE400000000000000, v68, v8);
    v21 = *(v58 + 16);
    *v18 = nullsub_1;
    *(v54 + 8) = 0;
    v57(v18, v66, v19);
    sub_100041E80(v68, v8);

    static NWConnection.ContentContext.defaultMessage.getter();
    NWConnection.send(content:contentContext:isComplete:completion:)();

    sub_10000C868(v68, v8);

    sub_10000C868(v68, v8);
    sub_10000C868(v15, v17);
    v59(v18, v19);
    v7 = v63;
    if (!--v6)
    {
      v0 = v56;
      v22 = *(v56 + 16);
      swift_unknownObjectRelease();
      v2 = v50;
      v3 = *v50;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100080984()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v10 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_100080B4C;
  }

  else
  {
    v7 = v2[22];
    v8 = v2[23];

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_100080AA8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100080AA8()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_10000C868(v0[20], v0[21]);
  sub_10000C868(v1, v2);
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100080B4C()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[14];
  sub_10000C868(v0[20], v0[21]);

  sub_10000C868(v4, v3);

  v6 = v0[25];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100080C0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, int a7)
{
  v32 = a7;
  v33 = a5;
  v30 = a2;
  v27 = a1;
  v10 = sub_10000560C(&qword_10012AFC8, &qword_100109D18);
  v11 = *(v10 - 8);
  v26 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v31 = type metadata accessor for NWConnection.SendCompletion();
  v29 = *(v31 - 8);
  v14 = *(v29 + 64);
  __chkstk_darwin(v31);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CommunicationActor();
  v17 = static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  v28 = v17;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = v30;
  sub_10007FD30(a3, a4, 0x746164207473616CLL, 0xE900000000000061, v33, a6);
  v19 = *(*(v18 + 16) + 16);
  (*(v11 + 16))(v13, v27, v10);
  v20 = *(v11 + 80);
  v27 = a6;
  v21 = (v20 + 40) & ~v20;
  v22 = swift_allocObject();
  *(v22 + 2) = v18;
  *(v22 + 3) = a3;
  *(v22 + 4) = a4;
  (*(v11 + 32))(&v22[v21], v13, v10);
  *v16 = sub_100085098;
  v16[1] = v22;
  v23 = v29;
  v24 = v31;
  (*(v29 + 104))(v16, enum case for NWConnection.SendCompletion.contentProcessed(_:), v31);
  type metadata accessor for NWConnection.ContentContext();

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  (*(v23 + 8))(v16, v24);
}

uint64_t sub_100080F68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v60 = a5;
  v61 = a4;
  v57 = a3;
  v7 = type metadata accessor for Logger();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v14 = sub_10000560C(&qword_10012AFD0, &unk_100109D20);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v51 - v16;
  v18 = type metadata accessor for NWError();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  sub_10008511C(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000C460(v17, &qword_10012AFD0, &unk_100109D20);
    static Log.network.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = *(*(a2 + 16) + 16);

      v30 = sub_1000842B8();
      v32 = v31;

      v33 = sub_100102F80(v30, v32, &v62);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_100102F80(v57, v61, &v62);
      _os_log_impl(&_mh_execute_header, v26, v27, "[NWC] %s message %s done sending", v28, 0x16u);
      swift_arrayDestroy();
    }

    (*(v58 + 8))(v11, v59);
    sub_10000560C(&qword_10012AFC8, &qword_100109D18);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    static Log.network.getter();
    v56 = *(v19 + 16);
    v56(v23, v25, v18);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v55 = v36;
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v37 = 136315650;
      v38 = *(a2 + 16);
      v52 = v35;
      v39 = *(v38 + 16);

      v40 = sub_1000842B8();
      v42 = v41;

      v43 = sub_100102F80(v40, v42, &v62);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_100102F80(v57, v61, &v62);
      *(v37 + 22) = 2112;
      sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError);
      swift_allocError();
      v56(v44, v23, v18);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v46 = *(v19 + 8);
      v46(v23, v18);
      *(v37 + 24) = v45;
      v47 = v52;
      v48 = v53;
      *v53 = v45;
      _os_log_impl(&_mh_execute_header, v47, v55, "[NWC] %s message %s error sending data %@", v37, 0x20u);
      sub_10000C460(v48, &qword_100129EF8, &qword_100108C70);

      swift_arrayDestroy();
    }

    else
    {

      v46 = *(v19 + 8);
      v46(v23, v18);
    }

    (*(v58 + 8))(v13, v59);
    sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError);
    v49 = swift_allocError();
    v56(v50, v25, v18);
    v62 = v49;
    sub_10000560C(&qword_10012AFC8, &qword_100109D18);
    CheckedContinuation.resume(throwing:)();
    return (v46)(v25, v18);
  }
}

uint64_t sub_10008165C()
{
  v1[4] = v0;
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for CommunicationActor();
  v1[12] = static CommunicationActor.shared.getter();
  v1[13] = sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v7;
  v1[15] = v6;

  return _swift_task_switch(sub_1000817D0, v7, v6);
}

uint64_t sub_1000817D0()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[16] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[17] = v4;
  v0[18] = v3;

  return _swift_task_switch(sub_100081864, v4, v3);
}

uint64_t sub_100081864()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[4];
  v4 = static CommunicationActor.shared.getter();
  v0[19] = v4;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = 4;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_10008197C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v4, v1, 0x2865766965636572, 0xEF293A7365747962, sub_100085214, v5, &type metadata for Data);
}

uint64_t sub_10008197C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v10 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_100081E80;
  }

  else
  {
    v7 = v2[19];
    v8 = v2[20];

    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_100081AA0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100081AA0()
{
  v1 = *(v0 + 128);

  *(v0 + 184) = *(v0 + 16);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  return _swift_task_switch(sub_100081B0C, v2, v3);
}

uint64_t sub_100081B0C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 80);
  static ProtocolVersion.current.getter();
  sub_100084F58();
  FixedWidthInteger.init(serialized:version:)();
  if (v3)
  {
    v5 = *(v0 + 96);

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 272);
    if (v12)
    {
      if (v12 <= 0x4000)
      {
        v32 = swift_task_alloc();
        *(v0 + 200) = v32;
        *v32 = v0;
        v32[1] = sub_100081F88;
        v33 = *(v0 + 32);

        return sub_100082548(v12);
      }

      else
      {
        v13 = *(v0 + 72);
        static SystemDirectory.tempFolder()();
        v14 = *(v0 + 104);
        v15 = *(v0 + 88);
        v17 = *(v0 + 64);
        v16 = *(v0 + 72);
        v18 = *(v0 + 32);
        v19 = [objc_allocWithZone(NSProcessInfo) init];
        v20 = [v19 globallyUniqueString];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        URL.appendingPathComponent(_:)();

        v21 = static CommunicationActor.shared.getter();
        *(v0 + 240) = v21;
        v22 = swift_task_alloc();
        *(v0 + 248) = v22;
        v22[2] = v18;
        v22[3] = v12;
        v22[4] = v17;
        v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
        v24 = swift_task_alloc();
        *(v0 + 256) = v24;
        *v24 = v0;
        v24[1] = sub_100082168;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v21, v14, 0x4465766965636572, 0xED00002928617461, sub_10008521C, v22, &type metadata for () + 8);
      }
    }

    else
    {
      v25 = *(v0 + 96);

      type metadata accessor for LazyData();
      v26 = LazyData.__allocating_init(data:)();
      v28 = *(v0 + 72);
      v27 = *(v0 + 80);
      v30 = *(v0 + 56);
      v29 = *(v0 + 64);

      v31 = *(v0 + 8);

      return v31(v26);
    }
  }
}

uint64_t sub_100081E80()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];

  v4 = v0[14];
  v5 = v0[15];

  return _swift_task_switch(sub_100081EF8, v4, v5);
}

uint64_t sub_100081EF8()
{
  v1 = v0[12];

  v2 = v0[22];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100081F88(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 200);
  v12 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {
    v8 = v6[14];
    v9 = v6[15];
    v10 = sub_1000823EC;
  }

  else
  {
    v6[27] = a2;
    v6[28] = a1;
    v6[29] = type metadata accessor for LazyData();
    v8 = v6[14];
    v9 = v6[15];
    v10 = sub_1000820BC;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1000820BC()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[12];

  v5 = LazyData.__allocating_init(data:)();
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_100082168()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = v2[31];
  v6 = v2[30];

  v7 = v2[15];
  v8 = v2[14];
  if (v0)
  {
    v9 = sub_10008247C;
  }

  else
  {
    v9 = sub_1000822D8;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000822D8()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  type metadata accessor for LazyData();
  (*(v5 + 16))(v4, v3, v6);
  v7 = LazyData.__allocating_init(filename:isTempFile:)();
  v8 = *(v5 + 8);
  v8(v2, v6);
  v8(v3, v6);
  v10 = v0[9];
  v9 = v0[10];
  v12 = v0[7];
  v11 = v0[8];

  v13 = v0[1];

  return v13(v7);
}

uint64_t sub_1000823EC()
{
  v1 = v0[12];

  v2 = v0[26];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10008247C()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];

  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);
  v7 = v0[33];
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[7];
  v10 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100082548(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for CommunicationActor();
  v2[7] = static CommunicationActor.shared.getter();
  v2[8] = sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_10008261C, v4, v3);
}

uint64_t sub_10008261C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[8];
    v4 = v0[5];
    v3 = v0[6];
    v5 = static CommunicationActor.shared.getter();
    v0[11] = v5;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v1;
    v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_100082788;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v5, v2, 0x2865766965636572, 0xEF293A7365747962, sub_100085640, v6, &type metadata for Data);
  }

  else
  {
    v9 = v0[7];

    v10 = v0[1];

    return v10(0, 0xC000000000000000);
  }
}

uint64_t sub_100082788()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_100082914;
  }

  else
  {
    v7 = v2[11];
    v8 = v2[12];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1000828AC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000828AC()
{
  v1 = v0[7];

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_100082914()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_10008298C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000560C(&qword_10012AFC8, &qword_100109D18);
  v7 = *(v6 - 8);
  v42 = *(v7 + 64);
  __chkstk_darwin(v6);
  v43 = &v35 - v8;
  v9 = type metadata accessor for Logger();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationActor();
  v13 = static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  v41 = v13;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Log.network.getter();

  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v38 = v7;
    v20 = v19;
    v44 = v19;
    *v18 = 136315394;
    v21 = *(a2 + 16);
    v36 = v14;
    v22 = *(v21 + 16);

    v23 = sub_1000842B8();
    v35 = v9;
    v24 = v23;
    v37 = a1;
    v25 = a3;
    v27 = v26;

    v28 = sub_100102F80(v24, v27, &v44);
    a1 = v37;

    *(v18 + 4) = v28;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "[NWC] %s file download start: (%ld bytes)", v18, 0x16u);
    sub_10000C304(v20);
    v7 = v38;

    v6 = v39;

    (*(v40 + 8))(v36, v35);
  }

  else
  {

    (*(v40 + 8))(v14, v9);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = *(*(a2 + 16) + 16);
  v31 = v43;
  (*(v7 + 16))(v43, a1, v6);
  v32 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = v29;
  (*(v7 + 32))(v33 + v32, v31, v6);

  NWConnection.receiveFile(at:maximumLength:handler:)();
}

uint64_t sub_100082DD0()
{
  type metadata accessor for CommunicationActor();
  static CommunicationActor.assumeOnQueue<A>(_:)();
  return v1;
}

uint64_t sub_100082E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  v72 = a6;
  v67 = a4;
  v70 = a3;
  v9 = type metadata accessor for Logger();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v71 = &v60[-v14];
  v15 = sub_10000560C(&qword_10012AFD0, &unk_100109D20);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v60[-v17];
  v19 = type metadata accessor for NWError();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v60[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v26 = &v60[-v25];
  sub_10008511C(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v26, v18, v19);
    static Log.network.getter();
    v38 = *(v20 + 16);
    v38(v24, v26, v19);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v66 = v20 + 16;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v64 = v26;
      v43 = v42;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v73[0] = v63;
      *v43 = 136315394;
      v44 = *(a2 + 16);
      v45 = v39;
      v46 = *(v44 + 16);

      v47 = sub_1000842B8();
      v65 = v38;
      v48 = v47;
      v61 = v40;
      v50 = v49;

      v51 = sub_100102F80(v48, v50, v73);

      *(v43 + 4) = v51;
      *(v43 + 12) = 2112;
      sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError);
      swift_allocError();
      v65(v52, v24, v19);
      v38 = v65;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      v54 = *(v20 + 8);
      v54(v24, v19);
      *(v43 + 14) = v53;
      v55 = v62;
      *v62 = v53;
      _os_log_impl(&_mh_execute_header, v45, v61, "[NWC] %s file download error: %@", v43, 0x16u);
      sub_10000C460(v55, &qword_100129EF8, &qword_100108C70);

      sub_10000C304(v63);

      v26 = v64;
    }

    else
    {

      v54 = *(v20 + 8);
      v54(v24, v19);
    }

    (*(v68 + 8))(v71, v69);
    v57 = v70;
    swift_beginAccess();
    if ((*v57 & 1) == 0)
    {
      swift_beginAccess();
      *v57 = 1;
      sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError);
      v58 = swift_allocError();
      v38(v59, v26, v19);
      v73[4] = v58;
      sub_10000560C(&qword_10012AFC8, &qword_100109D18);
      CheckedContinuation.resume(throwing:)();
    }

    result = (v54)(v26, v19);
    goto LABEL_14;
  }

  result = sub_10000C460(v18, &qword_10012AFD0, &unk_100109D20);
  if (a5)
  {
    static Log.network.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v73[0] = v31;
      *v30 = 136315138;
      v32 = *(*(a2 + 16) + 16);

      v33 = sub_1000842B8();
      v35 = v34;

      v36 = sub_100102F80(v33, v35, v73);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "[NWC] %s file download done", v30, 0xCu);
      sub_10000C304(v31);
    }

    (*(v68 + 8))(v13, v69);
    v37 = v70;
    result = swift_beginAccess();
    if ((*v37 & 1) == 0)
    {
      swift_beginAccess();
      *v37 = 1;
      sub_10000560C(&qword_10012AFC8, &qword_100109D18);
      result = CheckedContinuation.resume(returning:)();
    }

LABEL_14:
    v56 = 0;
    goto LABEL_15;
  }

  v56 = 1;
LABEL_15:
  *v72 = v56;
  return result;
}

uint64_t sub_100083584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000560C(&qword_10012AFE0, &qword_100109D88);
  v7 = *(v6 - 8);
  v46 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v40 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationActor();
  v14 = static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor);
  v47 = v14;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Log.network.getter();

  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44 = v6;
    v21 = v20;
    v49 = v20;
    *v19 = 136315394;
    v22 = *(a2 + 16);
    v43 = v15;
    v23 = *(v22 + 16);

    v24 = sub_1000842B8();
    v41 = v10;
    v42 = v9;
    v25 = a2;
    v26 = v7;
    v27 = a1;
    v28 = v24;
    v30 = v29;

    v31 = v28;
    a1 = v27;
    v7 = v26;
    a2 = v25;
    v32 = sub_100102F80(v31, v30, &v49);

    *(v19 + 4) = v32;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v16, v17, "[NWC] %s receive start: (%ld bytes)", v19, 0x16u);
    sub_10000C304(v21);
    v6 = v44;

    (*(v41 + 8))(v43, v42);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  v33 = *(a2 + 16);
  v34 = *(v33 + 16);
  v35 = v48;
  (*(v7 + 16))(v48, a1, v6);
  v36 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v37 = (v46 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  (*(v7 + 32))(v38 + v36, v35, v6);
  *(v38 + v37) = v33;

  NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();
}

uint64_t sub_1000839B4(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v83 = a8;
  v88 = a7;
  v85 = a1;
  v11 = type metadata accessor for Logger();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  v13 = __chkstk_darwin(v11);
  v84 = &v80[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v80[-v16];
  __chkstk_darwin(v15);
  v19 = &v80[-v18];
  v20 = sub_10000560C(&qword_10012AFD0, &unk_100109D20);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v80[-v22];
  v24 = type metadata accessor for NWError();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v80[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v31 = &v80[-v30];
  sub_10008511C(a5, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000C460(v23, &qword_10012AFD0, &unk_100109D20);
    if (a2 >> 60 == 15)
    {
      static Log.network.getter();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v89[0] = v35;
        *v34 = 136315138;
        v36 = *(*(a6 + 16) + 16);

        v37 = sub_1000842B8();
        v39 = v38;

        v40 = sub_100102F80(v37, v39, v89);

        *(v34 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "[NWC] %s receive didn't receive data, connection is finished. Closing.", v34, 0xCu);
        sub_10000C304(v35);
      }

      (*(v86 + 8))(v17, v87);
      sub_10007E560();
      sub_10008559C();
      v41 = swift_allocError();
      *v42 = 0;
      v89[0] = v41;
      sub_10000560C(&qword_10012AFE0, &qword_100109D88);
      return CheckedContinuation.resume(throwing:)();
    }

    v60 = a2;
    v61 = v85;
    sub_100041E80(v85, a2);
    v62 = v84;
    static Log.network.getter();
    sub_1000855F0(v61, v60);

    sub_1000855F0(v61, v60);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v63, v64))
    {
      sub_100085604(v61, v60);
      sub_100085604(v61, v60);
LABEL_22:

      (*(v86 + 8))(v62, v87);
      v89[0] = v61;
      v89[1] = v60;
      sub_10000560C(&qword_10012AFE0, &qword_100109D88);
      return CheckedContinuation.resume(returning:)();
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v89[0] = v66;
    *v65 = 136315394;
    v67 = *(*(a6 + 16) + 16);

    v68 = sub_1000842B8();
    v70 = v69;

    v71 = sub_100102F80(v68, v70, v89);

    *(v65 + 4) = v71;
    *(v65 + 12) = 2048;
    v72 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v72 != 2)
      {
        sub_100085604(v61, v60);
        v73 = 0;
        goto LABEL_21;
      }

      v76 = v60;
      v78 = v61[2];
      v77 = v61[3];
      v79 = v76;
      result = sub_100085604(v61, v76);
      v73 = v77 - v78;
      if (!__OFSUB__(v77, v78))
      {
        v60 = v79;
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v72)
      {
        sub_100085604(v61, v60);
        v73 = BYTE6(v60);
LABEL_21:
        *(v65 + 14) = v73;
        sub_100085604(v61, v60);
        _os_log_impl(&_mh_execute_header, v63, v64, "[NWC] %s receive done (%ld bytes)", v65, 0x16u);
        sub_10000C304(v66);

        goto LABEL_22;
      }

      result = sub_100085604(v61, v60);
      LODWORD(v73) = HIDWORD(v61) - v61;
      if (!__OFSUB__(HIDWORD(v61), v61))
      {
        v73 = v73;
        goto LABEL_21;
      }
    }

    __break(1u);
    return result;
  }

  (*(v25 + 32))(v31, v23, v24);
  static Log.network.getter();
  v44 = *(v25 + 16);
  (v44)(v29, v31, v24);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v85 = v44;
    v48 = v47;
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v89[0] = v84;
    *v48 = 136315394;
    v49 = *(a6 + 16);
    v82 = v45;
    v50 = *(v49 + 16);

    v51 = sub_1000842B8();
    v81 = v46;
    v53 = v52;

    v54 = sub_100102F80(v51, v53, v89);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2112;
    sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError);
    swift_allocError();
    (v85)(v55, v29, v24);
    v56 = _swift_stdlib_bridgeErrorToNSError();
    v57 = *(v25 + 8);
    v57(v29, v24);
    *(v48 + 14) = v56;
    v58 = v82;
    v59 = v83;
    *v83 = v56;
    _os_log_impl(&_mh_execute_header, v58, v81, "[NWC] %s receive read error: %@", v48, 0x16u);
    sub_10000C460(v59, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(v84);

    v44 = v85;
  }

  else
  {

    v57 = *(v25 + 8);
    v57(v29, v24);
  }

  (*(v86 + 8))(v19, v87);
  sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError);
  v74 = swift_allocError();
  (v44)(v75, v31, v24);
  v89[0] = v74;
  sub_10000560C(&qword_10012AFE0, &qword_100109D88);
  CheckedContinuation.resume(throwing:)();
  return (v57)(v31, v24);
}

uint64_t sub_1000842B8()
{
  v0 = type metadata accessor for NWConnection.State();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  v5._countAndFlagsBits = 67;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v10[1] = NWConnection.identifier.getter();
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 40;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  NWConnection.state.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v4, v0);
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v11;
}

uint64_t sub_100084444()
{
  v1 = *(*(*v0 + 16) + 16);

  v2 = sub_1000842B8();

  return v2;
}

Swift::Int sub_100084498()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(*(v1 + 16) + 16);

  v3 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100084500()
{
  v1 = *(*(*v0 + 16) + 16);

  v2 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v2);
}

Swift::Int sub_100084558()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(*(v1 + 16) + 16);

  v3 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL sub_1000845BC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(*a1 + 16) + 16);

  v4 = NWConnection.identifier.getter();

  v5 = *(*(v2 + 16) + 16);

  v6 = NWConnection.identifier.getter();

  return v4 == v6;
}

uint64_t sub_100084678(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1000FFF80(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_10000560C(&unk_10012B2A0, &qword_100109D30);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000847B0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for UUID();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000848DC(uint64_t result)
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

  result = sub_1001001A0(result, v11, 1, v3);
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

uint64_t sub_1000849D0(uint64_t a1)
{
  v2 = type metadata accessor for Message.Operation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Message.Operation.event(_:))
  {
    (*(v3 + 96))(v6, v2);
    LODWORD(v28) = *v6;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = 0x28746E657665;
    v29 = 0xE600000000000000;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
LABEL_5:

    return v28;
  }

  if (v7 == enum case for Message.Operation.request(_:))
  {
    (*(v3 + 96))(v6, v2);
    v10 = v6[1];
    LODWORD(v28) = *v6;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = 0x2874736575716572;
    v29 = 0xE800000000000000;
    String.append(_:)(v11);

    v13 = v28;
    v12 = v29;
    v28 = 8236;
    v29 = 0xE200000000000000;
    v27 = v10;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = v28;
    v17 = v29;
    v28 = v13;
    v29 = v12;

    v18._countAndFlagsBits = v16;
    v18._object = v17;
    String.append(_:)(v18);

    goto LABEL_5;
  }

  if (v7 == enum case for Message.Operation.response(_:))
  {
    (*(v3 + 96))(v6, v2);
    v20 = *v6;
    v21 = 0x65736E6F70736572;
    v22 = 0xE900000000000028;
  }

  else
  {
    if (v7 != enum case for Message.Operation.error(_:))
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v25 = v28;
      (*(v3 + 8))(v6, v2);
      return v25;
    }

    (*(v3 + 96))(v6, v2);
    v20 = *v6;
    v21 = 0x28726F727265;
    v22 = 0xE600000000000000;
  }

  v28 = v21;
  v29 = v22;
  v27 = v20;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return v28;
}

uint64_t sub_100084D80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000045BC;

  return sub_1001044D0(a1, v4, v5, v6);
}

uint64_t sub_100084E34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10007EF50();
}

uint64_t sub_100084EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1001044D0(a1, v4, v5, v6);
}

unint64_t sub_100084F58()
{
  result = qword_10012AFC0;
  if (!qword_10012AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012AFC0);
  }

  return result;
}

uint64_t sub_100084FC0()
{
  v1 = sub_10000560C(&qword_10012AFC8, &qword_100109D18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100085098(uint64_t a1)
{
  v3 = *(sub_10000560C(&qword_10012AFC8, &qword_100109D18) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_100080F68(a1, v4, v5, v6, v7);
}

uint64_t sub_10008511C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012AFD0, &unk_100109D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008518C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000851D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100085238()
{
  v1 = sub_10000560C(&qword_10012AFC8, &qword_100109D18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100085310()
{
  v1 = *(*(sub_10000560C(&qword_10012AFC8, &qword_100109D18) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_100082DD0();
}

uint64_t sub_1000853DC()
{
  v1 = sub_10000560C(&qword_10012AFE0, &qword_100109D88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000854C0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_10000560C(&qword_10012AFE0, &qword_100109D88) - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = *(v5 + 16);
  v14 = *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000839B4(a1, a2, a3, a4, a5, v13, v5 + v12, v14);
}

unint64_t sub_10008559C()
{
  result = qword_10012AFE8;
  if (!qword_10012AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012AFE8);
  }

  return result;
}

uint64_t sub_1000855F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100041E80(a1, a2);
  }

  return a1;
}

uint64_t sub_100085604(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000C868(a1, a2);
  }

  return a1;
}

unint64_t _s11photosfaced16NetworkConstantsO10parameters6domain4type0B012NWParametersCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for NWParameters.MultipathServiceType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWParameters();
  v13 = static NWParameters.applicationServiceQUIC(identity:)();
  (*(v9 + 104))(v12, enum case for NWParameters.MultipathServiceType.disabled(_:), v8);
  NWParameters.multipathServiceType.setter();
  NWParameters.acceptLocalOnly.setter();
  NWParameters.includePeerToPeer.setter();
  NWParameters.nw.getter();
  nw_parameters_set_account_id();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  nw_parameters_set_attach_protocol_listener();
  swift_unknownObjectRelease();
  sub_10000560C(&qword_10012AFF0, "J)");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001089C0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;

  NWParameters.preferredNetworkAgents.setter();
  v15 = static TestProperties.quicTimeout.getter();
  if (v16)
  {
    return v13;
  }

  v17 = *&v15;
  NWParameters.defaultProtocolStack.getter();
  v18 = dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.getter();

  v32 = &_swiftEmptyArrayStorage;
  if (v18 >> 62)
  {
LABEL_21:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v31 = v13;
    if (v19)
    {
LABEL_4:
      v20 = 0;
      v13 = v18 & 0xC000000000000001;
      v21 = &_swiftEmptyArrayStorage;
      do
      {
        v22 = v20;
        while (1)
        {
          if (v13)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v20 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v23 = *(v18 + 8 * v22 + 32);

            v20 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
LABEL_19:
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          type metadata accessor for NWProtocolQUIC.Options();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v22;
          if (v20 == v19)
          {
            goto LABEL_23;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v32;
      }

      while (v20 != v19);
      goto LABEL_23;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v13;
    if (v19)
    {
      goto LABEL_4;
    }
  }

  v21 = &_swiftEmptyArrayStorage;
LABEL_23:

  if (v21 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = 0;
    v27 = v17 * 1000.0;
    *&v17 = (v17 * 1000.0);
    while ((v21 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_36;
      }

LABEL_29:
      if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      if (v27 <= -9.22337204e18)
      {
        goto LABEL_39;
      }

      if (v27 >= 9.22337204e18)
      {
        goto LABEL_40;
      }

      dispatch thunk of NWProtocolQUIC.Options.idleTimeout.setter();

      ++v26;
      if (v29 == i)
      {
        goto LABEL_42;
      }
    }

    if (v26 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    v28 = *(v21 + 8 * v26 + 32);

    v29 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:

  return v31;
}

uint64_t getEnumTagSinglePayload for NetworkError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100085CB8()
{
  result = qword_10012AFF8[0];
  if (!qword_10012AFF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10012AFF8);
  }

  return result;
}

void *sub_100085D74()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[8];

  return v0;
}

uint64_t sub_100085DBC()
{
  sub_100085D74();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_100085E08(uint64_t a1)
{
  v2 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_100005654(0, 0, v5, &unk_100109F50, v7);
}

uint64_t sub_100085F14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a4;
  *(v4 + 160) = a3;
  *(v4 + 32) = a1;
  v5 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v6 = type metadata accessor for MessageBody();
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v9 = type metadata accessor for Message.Operation();
  *(v4 + 96) = v9;
  v10 = *(v9 - 8);
  *(v4 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v12 = type metadata accessor for Message();
  *(v4 + 120) = v12;
  v13 = *(v12 - 8);
  *(v4 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_1000860CC, 0, 0);
}

uint64_t sub_1000860CC()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  **(v0 + 112) = *(v0 + 160);
  (*(v1 + 104))();
  *(v0 + 16) = 0xD000000000000019;
  *(v0 + 24) = 0x8000000100107730;
  Message.content.getter();
  MessageBody.version.getter();
  (*(v5 + 8))(v4, v6);
  MessageBody.init<A>(serializable:version:)();
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 32);
  Message.init(operation:content:complete:)();
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_100086328;
  v15 = *(v0 + 136);
  v16 = *(v0 + 40);

  return v18(v15);
}

uint64_t sub_100086328()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v2[19] = v0;

  v5 = v2[16];
  if (v0)
  {
    (*(v5 + 8))(v2[17], v2[15]);

    return _swift_task_switch(sub_100086510, 0, 0);
  }

  else
  {
    v6 = v2[14];
    v8 = v2[10];
    v7 = v2[11];
    v9 = v2[7];
    (*(v5 + 8))();

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_100086510()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000865B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1000865F0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 24))
  {
    v12 = *(v0 + 16);
    v13 = v12;
  }

  else
  {
    v40 = v9;
    v14 = [objc_opt_self() sharedInstance];
    v15 = [v14 getActivePairedDeviceExcludingAltAccount];

    if (v15)
    {
      v39 = v0;
      static Log.default.getter();
      v16 = v15;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v41 = v38;
        *v19 = 136315138;
        v20 = [v16 bluetoothIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100087EB0();
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v18;
        v22 = v16;
        v24 = v23;
        (*(v2 + 8))(v5, v1);
        v25 = sub_100102F80(v21, v24, &v41);
        v16 = v22;

        *(v19 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v17, v37, "Found ID: %s", v19, 0xCu);
        sub_10000C304(v38);
      }

      (*(v7 + 8))(v11, v40);
      v26 = objc_opt_self();
      v27 = [v16 bluetoothIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v2 + 8))(v5, v1);
      v29 = [v26 newDeviceIdentifierWithBluetoothUUID:isa];

      v30 = v39;
      v31 = *(v39 + 16);
      type metadata accessor for CommunicationActor();
      v12 = v31;
      v32 = static CommunicationActor.sharedQueue.getter();
      v33 = [objc_allocWithZone(NRDeviceMonitor) initWithDeviceIdentifier:v29 delegate:v12 queue:v32];

      v34 = *(v30 + 24);
      *(v30 + 24) = v33;
    }

    else
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_1000869D4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100086C9C(uint64_t a1, char a2, void *a3)
{
  v7 = sub_10000560C(&unk_10012B2A0, &qword_100109D30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = a1 + *a3;
  swift_beginAccess();
  if (*(v12 + 8))
  {
    v13 = *v12;
    *v12 = a2 & 1;
    *(v12 + 8) = 0;
    v14 = *(v13 + 16);
    if (v14)
    {
      v23 = v13;
      v24 = v3;
      v17 = *(v8 + 16);
      v15 = v8 + 16;
      v16 = v17;
      v18 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v19 = *(v15 + 56);
      v20 = a2 & 1;
      do
      {
        v16(v11, v18, v7);
        v25 = v20;
        CheckedContinuation.resume(returning:)();
        (*(v15 - 8))(v11, v7);
        v18 += v19;
        --v14;
      }

      while (v14);
      sub_1000420A0(v23, 1);
    }

    else
    {
      sub_1000420A0(v13, 1);
    }
  }

  else
  {
    *v12 = a2 & 1;
    *(v12 + 8) = 0;
  }

  return swift_endAccess();
}

id sub_100086EC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100086FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation();
    result = type metadata accessor for Array();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100087060(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100087178(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_100087348(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100102F80(0xD000000000000024, 0x8000000100107900, v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %{BOOL}d", v11, 0x12u);
    sub_10000C304(v12);
  }

  (*(v5 + 8))(v8, v4);
  v13 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v13);
  v15[-2] = v2;
  LOBYTE(v15[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

uint64_t sub_100087568(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100102F80(0xD00000000000002ALL, 0x80000001001078D0, v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %{BOOL}d", v11, 0x12u);
    sub_10000C304(v12);
  }

  (*(v5 + 8))(v8, v4);
  v13 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v13);
  v15[-2] = v2;
  LOBYTE(v15[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

uint64_t sub_100087788(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100102F80(0xD000000000000024, 0x80000001001078A0, v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %{BOOL}d", v11, 0x12u);
    sub_10000C304(v12);
  }

  (*(v5 + 8))(v8, v4);
  v13 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v13);
  v15[-2] = v2;
  LOBYTE(v15[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

uint64_t sub_1000879A8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100102F80(0xD000000000000036, 0x8000000100107860, v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %{BOOL}d", v11, 0x12u);
    sub_10000C304(v12);
  }

  (*(v5 + 8))(v8, v4);
  v13 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v13);
  v15[-2] = v2;
  LOBYTE(v15[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

uint64_t sub_100087BC8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100102F80(0xD00000000000002ALL, 0x8000000100107830, v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %{BOOL}d", v11, 0x12u);
    sub_10000C304(v12);
  }

  (*(v5 + 8))(v8, v4);
  v13 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v13);
  v15[-2] = v2;
  LOBYTE(v15[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

unint64_t sub_100087EB0()
{
  result = qword_10012A1C0;
  if (!qword_10012A1C0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012A1C0);
  }

  return result;
}

uint64_t sub_100087F38@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v38 = a1;
  v41 = a3;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42 = &v34 - v6;
  v7 = type metadata accessor for ProtocolVersion();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShuffleID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MessageBody();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  v17 = __chkstk_darwin(v15);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v36 = *(v3 + 16);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v20 = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0);
  v21 = sub_10000560C(&qword_100129E78, &unk_100108BE0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = AsyncThrowingChannel.init()();
  (*(v11 + 16))(v14, v44, v10);
  static ProtocolVersion.current.getter();
  v25 = v45;
  MessageBody.init<A>(serializable:version:)();
  if (v25)
  {
  }

  else
  {
    LODWORD(v44) = 0xB050802u >> (8 * v38);
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
    v28 = v39;
    v29 = v40;
    v30 = *(v39 + 16);
    v31 = v37;
    v35 = v19;
    v30(v37, v19, v40);
    v32 = (*(v28 + 80) + 49) & ~*(v28 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v45 = v20;
    *(v33 + 32) = v36;
    *(v33 + 40) = v24;
    *(v33 + 48) = v44;
    (*(v28 + 32))(v33 + v32, v31, v29);
    *(v33 + v32 + v16) = 1;

    sub_100005654(0, 0, v42, &unk_10010A488, v33);

    sub_10000560C(&qword_100129E90, &qword_100108C00);
    v46 = v24;

    v46 = DestructableSequence.__allocating_init(_:_:)();
    type metadata accessor for StoredPhoto();
    sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00);
    AsyncThrowingMapSequence.init(_:transform:)();

    return (*(v28 + 8))(v35, v29);
  }
}

uint64_t sub_100088450@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v38 = a1;
  v41 = a3;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42 = &v34 - v6;
  v7 = type metadata accessor for ProtocolVersion();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DailyID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MessageBody();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  v17 = __chkstk_darwin(v15);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v36 = *(v3 + 16);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v20 = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0);
  v21 = sub_10000560C(&qword_100129E78, &unk_100108BE0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = AsyncThrowingChannel.init()();
  (*(v11 + 16))(v14, v44, v10);
  static ProtocolVersion.current.getter();
  v25 = v45;
  MessageBody.init<A>(serializable:version:)();
  if (v25)
  {
  }

  else
  {
    LODWORD(v44) = 0xB050802u >> (8 * v38);
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
    v28 = v39;
    v29 = v40;
    v30 = *(v39 + 16);
    v31 = v37;
    v35 = v19;
    v30(v37, v19, v40);
    v32 = (*(v28 + 80) + 49) & ~*(v28 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v45 = v20;
    *(v33 + 32) = v36;
    *(v33 + 40) = v24;
    *(v33 + 48) = v44;
    (*(v28 + 32))(v33 + v32, v31, v29);
    *(v33 + v32 + v16) = 1;

    sub_100005654(0, 0, v42, &unk_10010A660, v33);

    sub_10000560C(&qword_100129E90, &qword_100108C00);
    v46 = v24;

    v46 = DestructableSequence.__allocating_init(_:_:)();
    type metadata accessor for StoredPhoto();
    sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00);
    AsyncThrowingMapSequence.init(_:transform:)();

    return (*(v28 + 8))(v35, v29);
  }
}

uint64_t sub_100088968@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v38 = a1;
  v41 = a3;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42 = &v34 - v6;
  v7 = type metadata accessor for ProtocolVersion();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlbumID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MessageBody();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  v17 = __chkstk_darwin(v15);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v36 = *(v3 + 16);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v20 = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0);
  v21 = sub_10000560C(&qword_100129E78, &unk_100108BE0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = AsyncThrowingChannel.init()();
  (*(v11 + 16))(v14, v44, v10);
  static ProtocolVersion.current.getter();
  v25 = v45;
  MessageBody.init<A>(serializable:version:)();
  if (v25)
  {
  }

  else
  {
    LODWORD(v44) = 0xB050802u >> (8 * v38);
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
    v28 = v39;
    v29 = v40;
    v30 = *(v39 + 16);
    v31 = v37;
    v35 = v19;
    v30(v37, v19, v40);
    v32 = (*(v28 + 80) + 49) & ~*(v28 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v45 = v20;
    *(v33 + 32) = v36;
    *(v33 + 40) = v24;
    *(v33 + 48) = v44;
    (*(v28 + 32))(v33 + v32, v31, v29);
    *(v33 + v32 + v16) = 1;

    sub_100005654(0, 0, v42, &unk_10010A9A8, v33);

    sub_10000560C(&qword_100129E90, &qword_100108C00);
    v46 = v24;

    v46 = DestructableSequence.__allocating_init(_:_:)();
    type metadata accessor for StoredPhoto();
    sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00);
    AsyncThrowingMapSequence.init(_:transform:)();

    return (*(v28 + 8))(v35, v29);
  }
}

uint64_t sub_100088E80(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 144) = a2;
  *(v4 + 32) = a1;
  v5 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v6 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v7 = type metadata accessor for SyncFacesRequest();
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  *(v4 + 96) = v10;
  v11 = *(v10 - 8);
  *(v4 + 104) = v11;
  *(v4 + 112) = *(v11 + 64);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  *(v4 + 136) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089080, v13, v12);
}

uint64_t sub_100089080()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 48);
  v27 = *(v0 + 144);

  v29 = *(v2 + 16);
  v30 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0);
  v8 = sub_10000560C(&qword_100129E78, &unk_100108BE0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = AsyncThrowingChannel.init()();
  (*(v4 + 16))(v3, v7, v5);
  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v24 = 0xD070A04u >> (8 * v27);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 96);
  v28 = *(v0 + 88);
  v17 = *(v0 + 56);
  v31 = *(v0 + 64);
  v25 = v13;
  v26 = *(v0 + 32);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v15 + 16))(v12, v13, v16);
  v19 = (*(v15 + 80) + 49) & ~*(v15 + 80);
  v20 = v19 + v14;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v29;
  *(v21 + 40) = v11;
  *(v21 + 48) = v24;
  (*(v15 + 32))(v21 + v19, v12, v16);
  *(v21 + v20) = 1;

  sub_100005654(0, 0, v17, &unk_10010A3D8, v21);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 16) = v11;

  *(v0 + 24) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000560C(&qword_100129F30, &qword_100108D20);
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v15 + 8))(v25, v16);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1000894D0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 144) = a2;
  *(v4 + 32) = a1;
  v5 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v6 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v7 = type metadata accessor for SyncFacesRequest();
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  *(v4 + 96) = v10;
  v11 = *(v10 - 8);
  *(v4 + 104) = v11;
  *(v4 + 112) = *(v11 + 64);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  *(v4 + 136) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000896D0, v13, v12);
}

uint64_t sub_1000896D0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 48);
  v27 = *(v0 + 144);

  v29 = *(v2 + 16);
  v30 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0);
  v8 = sub_10000560C(&qword_100129E78, &unk_100108BE0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = AsyncThrowingChannel.init()();
  (*(v4 + 16))(v3, v7, v5);
  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v24 = 0xD070A04u >> (8 * v27);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 96);
  v28 = *(v0 + 88);
  v17 = *(v0 + 56);
  v31 = *(v0 + 64);
  v25 = v13;
  v26 = *(v0 + 32);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v15 + 16))(v12, v13, v16);
  v19 = (*(v15 + 80) + 49) & ~*(v15 + 80);
  v20 = v19 + v14;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v29;
  *(v21 + 40) = v11;
  *(v21 + 48) = v24;
  (*(v15 + 32))(v21 + v19, v12, v16);
  *(v21 + v20) = 1;

  sub_100005654(0, 0, v17, &unk_10010A5C0, v21);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 16) = v11;

  *(v0 + 24) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000560C(&qword_100129F60, &qword_100108D78);
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v15 + 8))(v25, v16);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100089B20(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 144) = a2;
  *(v4 + 32) = a1;
  v5 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v6 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v7 = type metadata accessor for SyncFacesRequest();
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  *(v4 + 96) = v10;
  v11 = *(v10 - 8);
  *(v4 + 104) = v11;
  *(v4 + 112) = *(v11 + 64);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  *(v4 + 136) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089D20, v13, v12);
}

uint64_t sub_100089D20()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 48);
  v27 = *(v0 + 144);

  v29 = *(v2 + 16);
  v30 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0);
  v8 = sub_10000560C(&qword_100129E78, &unk_100108BE0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = AsyncThrowingChannel.init()();
  (*(v4 + 16))(v3, v7, v5);
  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v24 = 0xD070A04u >> (8 * v27);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 96);
  v28 = *(v0 + 88);
  v17 = *(v0 + 56);
  v31 = *(v0 + 64);
  v25 = v13;
  v26 = *(v0 + 32);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v15 + 16))(v12, v13, v16);
  v19 = (*(v15 + 80) + 49) & ~*(v15 + 80);
  v20 = v19 + v14;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v29;
  *(v21 + 40) = v11;
  *(v21 + 48) = v24;
  (*(v15 + 32))(v21 + v19, v12, v16);
  *(v21 + v20) = 1;

  sub_100005654(0, 0, v17, &unk_10010A908, v21);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 16) = v11;

  *(v0 + 24) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000560C(&qword_100129F70, &qword_100108D90);
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v15 + 8))(v25, v16);

  v22 = *(v0 + 8);

  return v22();
}

void *sub_10008A170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_10005C5B0(0, v1, 0);
  v3 = -1 << *(v2 + 32);
  v24 = v2 + 64;
  v4 = _HashTable.startBucket.getter();
  result = type metadata accessor for CommunicationActor();
  v22 = v2;
  v6 = 0;
  v20 = v2 + 72;
  v21 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_27;
    }

    v23 = *(v2 + 36);
    v9 = *(*(v2 + 48) + 8 * v4);
    static CommunicationActor.shared.getter();
    sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() >= v9)
    {
    }

    else
    {
      v10 = static PhotosFaceIDDatabaseFix.hourValueDivisor()();

      if (!v10)
      {
        goto LABEL_31;
      }

      v9 /= v10;
    }

    v12 = *(&_swiftEmptyArrayStorage + 2);
    v11 = *(&_swiftEmptyArrayStorage + 3);
    if (v12 >= v11 >> 1)
    {
      result = sub_10005C5B0((v11 > 1), v12 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
    *(&_swiftEmptyArrayStorage + v12 + 4) = v9;
    v2 = v22;
    v7 = 1 << *(v22 + 32);
    if (v4 >= v7)
    {
      goto LABEL_28;
    }

    v13 = *(v24 + 8 * v8);
    if ((v13 & (1 << v4)) == 0)
    {
      goto LABEL_29;
    }

    if (v23 != *(v22 + 36))
    {
      goto LABEL_30;
    }

    v14 = v13 & (-2 << (v4 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v15 = v8 << 6;
      v16 = v8 + 1;
      v17 = (v20 + 8 * v8);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_100042AF0(v4, v23, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_100042AF0(v4, v23, 0);
    }

LABEL_4:
    ++v6;
    v4 = v7;
    if (v6 == v21)
    {
      return &_swiftEmptyArrayStorage;
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
  return result;
}

uint64_t sub_10008A444()
{
  v1[3] = v0;
  type metadata accessor for CommunicationActor();
  v1[4] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10008A50C, v3, v2);
}

uint64_t sub_10008A50C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 64) = *(v1 + 16);
  type metadata accessor for AlbumID();

  sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  sub_1000FAACC(&qword_10012A048, &type metadata accessor for AlbumID);
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  PhotosXPCServer.registerTrackFace<A, B>(type:callback:)();

  PhotosXPCServer.registerUntrackFace(type:callback:)();

  PhotosXPCServer.registerFetchFaceList<A>(type:callback:)();

  sub_10000560C(&qword_10012A3F8, &qword_100109178);
  *(v0 + 16) = type metadata accessor for StoredPhoto();
  swift_getOpaqueTypeConformance2();
  PhotosXPCServer.registerFetchFace<A>(type:callback:)();

  PhotosXPCServer.registerFetchFaceByDay(type:callback:)();

  PhotosXPCServer.registerProvideAssetList<A>(type:callback:)();

  v3 = *(v1 + 88);
  *(v0 + 56) = v3;

  return _swift_task_switch(sub_10008A7C4, v3, 0);
}

uint64_t sub_10008A7C4()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_10010A840;
  *(v3 + 24) = v2;

  sub_1000FCA38(2, &unk_10010A848, v3);

  v4 = v0[5];
  v5 = v0[6];

  return _swift_task_switch(sub_10008A894, v4, v5);
}

uint64_t sub_10008A894()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_10008A904, v1, 0);
}

uint64_t sub_10008A904()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_10010A858;
  *(v3 + 24) = v2;

  sub_1000FCA38(0, &unk_10010A860, v3);

  v4 = v0[5];
  v5 = v0[6];

  return _swift_task_switch(sub_10008A9D4, v4, v5);
}

uint64_t sub_10008A9D4()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = *(v3 + 96);
  v5 = *(v4 + 16);
  v6 = *(v0 + 64);
  v7 = *(v0 + 24);

  sub_10004FD10(0xB050802u >> (8 * v1), &unk_10010A870, v7);

  v8 = *(v4 + 16);
  v9 = 0xC060903u >> (8 * v6);
  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_10010A880;
  *(v12 + 24) = v11;
  swift_retain_n();
  sub_1000ECC88(v9, &unk_10010A888, v12, &unk_1001272D0, sub_1000F6468);

  v13 = *(v4 + 16);
  LOBYTE(v12) = *(v0 + 64);
  v14 = *(v0 + 24);

  sub_10004FCF0(0xD070A04u >> (8 * v10), &unk_10010A898, v14);

  v15 = *(v4 + 16);
  v16 = 0x3010200u >> (8 * v12);
  LOBYTE(v4) = *(v0 + 64);
  v17 = *(v0 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = &unk_10010A8A8;
  *(v18 + 32) = v17;
  swift_retain_n();
  sub_1000EE1B4(v16, &unk_10010A8B0, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10008AC0C()
{
  v1[3] = v0;
  type metadata accessor for CommunicationActor();
  v1[4] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10008ACD4, v3, v2);
}

uint64_t sub_10008ACD4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 64) = *(v1 + 16);
  type metadata accessor for ShuffleID();

  sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  PhotosXPCServer.registerTrackFace<A, B>(type:callback:)();

  PhotosXPCServer.registerUntrackFace(type:callback:)();

  PhotosXPCServer.registerFetchFaceList<A>(type:callback:)();

  sub_10000560C(&qword_10012A3F8, &qword_100109178);
  *(v0 + 16) = type metadata accessor for StoredPhoto();
  swift_getOpaqueTypeConformance2();
  PhotosXPCServer.registerFetchFace<A>(type:callback:)();

  PhotosXPCServer.registerFetchFaceByDay(type:callback:)();

  PhotosXPCServer.registerProvideAssetList<A>(type:callback:)();

  v3 = *(v1 + 88);
  *(v0 + 56) = v3;

  return _swift_task_switch(sub_10008AF8C, v3, 0);
}

uint64_t sub_10008AF8C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_10010A6D0;
  *(v3 + 24) = v2;

  sub_1000FCA38(2, &unk_10010A6D8, v3);

  v4 = v0[5];
  v5 = v0[6];

  return _swift_task_switch(sub_10008B05C, v4, v5);
}

uint64_t sub_10008B05C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_10008B0CC, v1, 0);
}

uint64_t sub_10008B0CC()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_10010A6E8;
  *(v3 + 24) = v2;

  sub_1000FCA38(0, &unk_10010A6F0, v3);

  v4 = v0[5];
  v5 = v0[6];

  return _swift_task_switch(sub_10008B19C, v4, v5);
}

uint64_t sub_10008B19C()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = *(v3 + 96);
  v5 = *(v4 + 16);
  v6 = *(v0 + 64);
  v7 = *(v0 + 24);

  sub_10004FC90(0xB050802u >> (8 * v1), &unk_10010A700, v7);

  v8 = *(v4 + 16);
  v9 = 0xC060903u >> (8 * v6);
  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_10010A710;
  *(v12 + 24) = v11;
  swift_retain_n();
  sub_1000ECC88(v9, &unk_10010A718, v12, &unk_1001272D0, sub_1000F6468);

  v13 = *(v4 + 16);
  LOBYTE(v12) = *(v0 + 64);
  v14 = *(v0 + 24);

  sub_10004F9F4(0xD070A04u >> (8 * v10), &unk_10010A728, v14);

  v15 = *(v4 + 16);
  v16 = 0x3010200u >> (8 * v12);
  LOBYTE(v4) = *(v0 + 64);
  v17 = *(v0 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = &unk_10010A738;
  *(v18 + 32) = v17;
  swift_retain_n();
  sub_1000EE1B4(v16, &unk_10010A740, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10008B3D4()
{
  v1[3] = v0;
  type metadata accessor for CommunicationActor();
  v1[4] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10008B49C, v3, v2);
}

uint64_t sub_10008B49C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 64) = *(v1 + 16);
  type metadata accessor for DailyID();

  sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  sub_1000FAACC(&qword_10012A178, &type metadata accessor for DailyID);
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  PhotosXPCServer.registerTrackFace<A, B>(type:callback:)();

  PhotosXPCServer.registerUntrackFace(type:callback:)();

  PhotosXPCServer.registerFetchFaceList<A>(type:callback:)();

  sub_10000560C(&qword_10012A3F8, &qword_100109178);
  *(v0 + 16) = type metadata accessor for StoredPhoto();
  swift_getOpaqueTypeConformance2();
  PhotosXPCServer.registerFetchFace<A>(type:callback:)();

  PhotosXPCServer.registerFetchFaceByDay(type:callback:)();

  PhotosXPCServer.registerProvideAssetList<A>(type:callback:)();

  v3 = *(v1 + 88);
  *(v0 + 56) = v3;

  return _swift_task_switch(sub_10008B754, v3, 0);
}

uint64_t sub_10008B754()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_10010A4F8;
  *(v3 + 24) = v2;

  sub_1000FCA38(2, &unk_10010A500, v3);

  v4 = v0[5];
  v5 = v0[6];

  return _swift_task_switch(sub_10008B824, v4, v5);
}

uint64_t sub_10008B824()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_10008B894, v1, 0);
}

uint64_t sub_10008B894()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_10010A510;
  *(v3 + 24) = v2;

  sub_1000FCA38(0, &unk_10010A518, v3);

  v4 = v0[5];
  v5 = v0[6];

  return _swift_task_switch(sub_10008B964, v4, v5);
}

uint64_t sub_10008B964()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = *(v3 + 96);
  v5 = *(v4 + 16);
  v6 = *(v0 + 64);
  v7 = *(v0 + 24);

  sub_10004FCD0(0xB050802u >> (8 * v1), &unk_10010A528, v7);

  v8 = *(v4 + 16);
  v9 = 0xC060903u >> (8 * v6);
  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_10010A538;
  *(v12 + 24) = v11;
  swift_retain_n();
  sub_1000ECC88(v9, &unk_10010A540, v12, &unk_1001272D0, sub_1000F6468);

  v13 = *(v4 + 16);
  LOBYTE(v12) = *(v0 + 64);
  v14 = *(v0 + 24);

  sub_10004FCB0(0xD070A04u >> (8 * v10), &unk_10010A550, v14);

  v15 = *(v4 + 16);
  v16 = 0x3010200u >> (8 * v12);
  LOBYTE(v4) = *(v0 + 64);
  v17 = *(v0 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = &unk_10010A560;
  *(v18 + 32) = v17;
  swift_retain_n();
  sub_1000EE1B4(v16, &unk_10010A568, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10008BB9C()
{
  v1[3] = v0;
  type metadata accessor for CommunicationActor();
  v1[4] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10008BC64, v3, v2);
}

uint64_t sub_10008BC64()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 64) = *(v1 + 16);
  type metadata accessor for ShuffleID();

  sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  PhotosXPCServer.registerTrackFace<A, B>(type:callback:)();

  PhotosXPCServer.registerUntrackFace(type:callback:)();

  PhotosXPCServer.registerFetchFaceList<A>(type:callback:)();

  sub_10000560C(&qword_10012A3F8, &qword_100109178);
  *(v0 + 16) = type metadata accessor for StoredPhoto();
  swift_getOpaqueTypeConformance2();
  PhotosXPCServer.registerFetchFace<A>(type:callback:)();

  PhotosXPCServer.registerFetchFaceByDay(type:callback:)();

  PhotosXPCServer.registerProvideAssetList<A>(type:callback:)();

  v3 = *(v1 + 88);
  *(v0 + 56) = v3;

  return _swift_task_switch(sub_10008BF1C, v3, 0);
}

uint64_t sub_10008BF1C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_10010A1D0;
  *(v3 + 24) = v2;

  sub_1000FCA38(2, &unk_100109070, v3);

  v4 = v0[5];
  v5 = v0[6];

  return _swift_task_switch(sub_10008BFEC, v4, v5);
}

uint64_t sub_10008BFEC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_10008C05C, v1, 0);
}

uint64_t sub_10008C05C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_10010A1E0;
  *(v3 + 24) = v2;

  sub_1000FCA38(0, &unk_10010A1E8, v3);

  v4 = v0[5];
  v5 = v0[6];

  return _swift_task_switch(sub_10008C12C, v4, v5);
}

uint64_t sub_10008C12C()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = *(v3 + 96);
  v5 = *(v4 + 16);
  v6 = *(v0 + 64);
  v7 = *(v0 + 24);

  sub_10004FC90(0xB050802u >> (8 * v1), &unk_10010A1F8, v7);

  v8 = *(v4 + 16);
  v9 = 0xC060903u >> (8 * v6);
  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_10010A208;
  *(v12 + 24) = v11;
  swift_retain_n();
  sub_1000ECC88(v9, &unk_10010A210, v12, &unk_1001272D0, sub_1000F6468);

  v13 = *(v4 + 16);
  LOBYTE(v12) = *(v0 + 64);
  v14 = *(v0 + 24);

  sub_10004F9F4(0xD070A04u >> (8 * v10), &unk_10010A220, v14);

  v15 = *(v4 + 16);
  v16 = 0x3010200u >> (8 * v12);
  LOBYTE(v4) = *(v0 + 64);
  v17 = *(v0 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = &unk_10010A230;
  *(v18 + 32) = v17;
  swift_retain_n();
  sub_1000EE1B4(v16, &unk_10010A238, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10008C364(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10008C444;

  return sub_10008C870(a1, a2);
}

uint64_t sub_10008C444()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_1000FBF20;
  }

  else
  {
    v8 = sub_1000FBF34;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10008C5D0(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10008C444;

  return sub_10008D344(a1, a2);
}

uint64_t sub_10008C6B0(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10008C444;

  return sub_10008DBC0(a1, a2);
}

uint64_t sub_10008C790(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10008C444;

  return sub_10008E43C(a1, a2);
}

uint64_t sub_10008C870(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[26] = v6;
  v7 = *(v6 - 8);
  v3[27] = v7;
  v8 = *(v7 + 64) + 15;
  v3[28] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v3[29] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v10;
  v3[31] = v9;

  return _swift_task_switch(sub_10008CA14, v10, v9);
}

uint64_t sub_10008CA14()
{
  v44 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  static Log.photos.getter();
  v7 = *(v4 + 16);
  v0[32] = v7;
  v0[33] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v3);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[25];
  v42 = v0[26];
  if (v10)
  {
    v40 = v9;
    v14 = v0[24];
    v41 = v0[28];
    v16 = v0[20];
    v15 = v0[21];
    v38 = v0[19];
    log = v8;
    v17 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v17 = 136315394;
    v7(v14, v13, v16);
    v18 = *(v15 + 8);
    v18(v13, v16);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v18(v14, v16);
    v22 = sub_100102F80(v19, v21, &v43);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = *(v38 + 16);

    v24 = PhotosFaceType.description.getter();
    v26 = v25;

    v27 = sub_100102F80(v24, v26, &v43);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v40, "Tracking %s for type %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v41, v42);
  }

  else
  {
    v28 = v0[20];
    v29 = v0[21];
    v30 = v0[19];

    (*(v29 + 8))(v13, v28);

    (*(v11 + 8))(v12, v42);
  }

  v31 = v0[19];
  v32 = type metadata accessor for GalleryDatabase();
  v33 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase);
  v34 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.insert(id:)[1];
  v35 = swift_task_alloc();
  v0[34] = v35;
  *v35 = v0;
  v35[1] = sub_10008CDA4;
  v36 = v0[18];

  return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v36, v32, v33);
}

uint64_t sub_10008CDA4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_1000FBEFC;
  }

  else
  {
    v7 = sub_10008CEE0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008CEE0()
{
  if (static Platform.current.getter())
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 184);
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    (*(v0 + 256))(v2, *(v0 + 144), v3);
    v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v0 + 304) = v7;
    *(v7 + 16) = v5;
    (*(v4 + 32))(v7 + v6, v2, v3);

    v8 = swift_task_alloc();
    *(v0 + 312) = v8;
    *v8 = v0;
    v8[1] = sub_10008D228;
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);

    return sub_100021E0C(v0 + 56, v9, &unk_10010A460, v7);
  }

  else
  {
    *(v0 + 120) = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
    *(v0 + 128) = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
    v12 = sub_10000C1AC((v0 + 96));
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = sub_10008D0EC;
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);

    return sub_1000203C4(v12, v14, 1);
  }
}

uint64_t sub_10008D0EC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_1000FBF38;
  }

  else
  {
    v7 = sub_1000FBED4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008D228()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v9 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_1000FBEE8;
  }

  else
  {
    v7 = v2[38];

    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_1000FBED8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10008D344(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for DailyID();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[26] = v6;
  v7 = *(v6 - 8);
  v3[27] = v7;
  v8 = *(v7 + 64) + 15;
  v3[28] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v3[29] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v10;
  v3[31] = v9;

  return _swift_task_switch(sub_10008D4E8, v10, v9);
}

uint64_t sub_10008D4E8()
{
  v44 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  static Log.photos.getter();
  v7 = *(v4 + 16);
  v0[32] = v7;
  v0[33] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v3);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[25];
  v42 = v0[26];
  if (v10)
  {
    v40 = v9;
    v14 = v0[24];
    v41 = v0[28];
    v16 = v0[20];
    v15 = v0[21];
    v38 = v0[19];
    log = v8;
    v17 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v17 = 136315394;
    v7(v14, v13, v16);
    v18 = *(v15 + 8);
    v18(v13, v16);
    sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v18(v14, v16);
    v22 = sub_100102F80(v19, v21, &v43);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = *(v38 + 16);

    v24 = PhotosFaceType.description.getter();
    v26 = v25;

    v27 = sub_100102F80(v24, v26, &v43);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v40, "Tracking %s for type %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v41, v42);
  }

  else
  {
    v28 = v0[20];
    v29 = v0[21];
    v30 = v0[19];

    (*(v29 + 8))(v13, v28);

    (*(v11 + 8))(v12, v42);
  }

  v31 = v0[19];
  v32 = type metadata accessor for DailyDatabase();
  v33 = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase);
  v34 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.insert(id:)[1];
  v35 = swift_task_alloc();
  v0[34] = v35;
  *v35 = v0;
  v35[1] = sub_10008D878;
  v36 = v0[18];

  return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v36, v32, v33);
}

uint64_t sub_10008D878()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_1000FBEFC;
  }

  else
  {
    v7 = sub_10008D9B4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008D9B4()
{
  if (static Platform.current.getter())
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 184);
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    (*(v0 + 256))(v2, *(v0 + 144), v3);
    v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v0 + 304) = v7;
    *(v7 + 16) = v5;
    (*(v4 + 32))(v7 + v6, v2, v3);

    v8 = swift_task_alloc();
    *(v0 + 312) = v8;
    *v8 = v0;
    v8[1] = sub_10008D228;
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);

    return sub_100022978(v0 + 56, v9, &unk_10010A638, v7);
  }

  else
  {
    *(v0 + 120) = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
    *(v0 + 128) = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
    v12 = sub_10000C1AC((v0 + 96));
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = sub_10008D0EC;
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);

    return sub_100020A84(v12, v14, 1);
  }
}

uint64_t sub_10008DBC0(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[26] = v6;
  v7 = *(v6 - 8);
  v3[27] = v7;
  v8 = *(v7 + 64) + 15;
  v3[28] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v3[29] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v10;
  v3[31] = v9;

  return _swift_task_switch(sub_10008DD64, v10, v9);
}

uint64_t sub_10008DD64()
{
  v44 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  static Log.photos.getter();
  v7 = *(v4 + 16);
  v0[32] = v7;
  v0[33] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v3);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[25];
  v42 = v0[26];
  if (v10)
  {
    v40 = v9;
    v14 = v0[24];
    v41 = v0[28];
    v16 = v0[20];
    v15 = v0[21];
    v38 = v0[19];
    log = v8;
    v17 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v17 = 136315394;
    v7(v14, v13, v16);
    v18 = *(v15 + 8);
    v18(v13, v16);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v18(v14, v16);
    v22 = sub_100102F80(v19, v21, &v43);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = *(v38 + 16);

    v24 = PhotosFaceType.description.getter();
    v26 = v25;

    v27 = sub_100102F80(v24, v26, &v43);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v40, "Tracking %s for type %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v41, v42);
  }

  else
  {
    v28 = v0[20];
    v29 = v0[21];
    v30 = v0[19];

    (*(v29 + 8))(v13, v28);

    (*(v11 + 8))(v12, v42);
  }

  v31 = v0[19];
  v32 = type metadata accessor for ShuffleDatabase();
  v33 = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase);
  v34 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.insert(id:)[1];
  v35 = swift_task_alloc();
  v0[34] = v35;
  *v35 = v0;
  v35[1] = sub_10008E0F4;
  v36 = v0[18];

  return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v36, v32, v33);
}

uint64_t sub_10008E0F4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_1000FBEFC;
  }

  else
  {
    v7 = sub_10008E230;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008E230()
{
  if (static Platform.current.getter())
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 184);
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    (*(v0 + 256))(v2, *(v0 + 144), v3);
    v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v0 + 304) = v7;
    *(v7 + 16) = v5;
    (*(v4 + 32))(v7 + v6, v2, v3);

    v8 = swift_task_alloc();
    *(v0 + 312) = v8;
    *v8 = v0;
    v8[1] = sub_10008D228;
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);

    return sub_1000234E4(v0 + 56, v9, &unk_10010A7B8, v7);
  }

  else
  {
    *(v0 + 120) = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
    *(v0 + 128) = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
    v12 = sub_10000C1AC((v0 + 96));
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = sub_10008D0EC;
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);

    return sub_100021028(v12, v14, 1);
  }
}

uint64_t sub_10008E43C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for AlbumID();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[26] = v6;
  v7 = *(v6 - 8);
  v3[27] = v7;
  v8 = *(v7 + 64) + 15;
  v3[28] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v3[29] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v10;
  v3[31] = v9;

  return _swift_task_switch(sub_10008E5E0, v10, v9);
}

uint64_t sub_10008E5E0()
{
  v44 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  static Log.photos.getter();
  v7 = *(v4 + 16);
  v0[32] = v7;
  v0[33] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v3);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[25];
  v42 = v0[26];
  if (v10)
  {
    v40 = v9;
    v14 = v0[24];
    v41 = v0[28];
    v16 = v0[20];
    v15 = v0[21];
    v38 = v0[19];
    log = v8;
    v17 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v17 = 136315394;
    v7(v14, v13, v16);
    v18 = *(v15 + 8);
    v18(v13, v16);
    sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v18(v14, v16);
    v22 = sub_100102F80(v19, v21, &v43);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = *(v38 + 16);

    v24 = PhotosFaceType.description.getter();
    v26 = v25;

    v27 = sub_100102F80(v24, v26, &v43);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v40, "Tracking %s for type %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v41, v42);
  }

  else
  {
    v28 = v0[20];
    v29 = v0[21];
    v30 = v0[19];

    (*(v29 + 8))(v13, v28);

    (*(v11 + 8))(v12, v42);
  }

  v31 = v0[19];
  v32 = type metadata accessor for AlbumDatabase();
  v33 = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase);
  v34 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.insert(id:)[1];
  v35 = swift_task_alloc();
  v0[34] = v35;
  *v35 = v0;
  v35[1] = sub_10008E970;
  v36 = v0[18];

  return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v36, v32, v33);
}

uint64_t sub_10008E970()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_10008ECB8;
  }

  else
  {
    v7 = sub_10008EAAC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008EAAC()
{
  if (static Platform.current.getter())
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 184);
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    (*(v0 + 256))(v2, *(v0 + 144), v3);
    v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v0 + 304) = v7;
    *(v7 + 16) = v5;
    (*(v4 + 32))(v7 + v6, v2, v3);

    v8 = swift_task_alloc();
    *(v0 + 312) = v8;
    *v8 = v0;
    v8[1] = sub_10008EE88;
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);

    return sub_100024050(v0 + 56, v9, &unk_10010A980, v7);
  }

  else
  {
    *(v0 + 120) = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
    *(v0 + 128) = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
    v12 = sub_10000C1AC((v0 + 96));
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = sub_10008ED4C;
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);

    return sub_1000215CC(v12, v14, 1);
  }
}

uint64_t sub_10008ECB8()
{
  v1 = v0[29];

  v2 = v0[35];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10008ED4C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_10008F08C;
  }

  else
  {
    v7 = sub_10008EFA4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008EE88()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v9 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_10008F210;
  }

  else
  {
    v7 = v2[38];

    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_10008F128;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10008EFA4()
{
  v1 = *(v0 + 232);

  sub_10000C350((v0 + 96), v0 + 16);
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 136);
  v7 = *(v0 + 48);
  sub_10000C3CC((v0 + 16), *(v0 + 40));
  AsyncSequence.generic.getter();
  sub_10000C304((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10008F08C()
{
  v1 = v0[29];

  sub_1000F6694(v0 + 12);
  v2 = v0[37];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10008F128()
{
  v1 = *(v0 + 232);

  sub_10000C350((v0 + 56), v0 + 16);
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 136);
  v7 = *(v0 + 48);
  sub_10000C3CC((v0 + 16), *(v0 + 40));
  AsyncSequence.generic.getter();
  sub_10000C304((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10008F210()
{
  v1 = v0[38];
  v2 = v0[29];

  v3 = v0[40];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10008F2B0(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10008C444;

  return sub_10008F5F0(a1);
}

uint64_t sub_10008F380(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10008C444;

  return sub_100090020(a1);
}

uint64_t sub_10008F450(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10008C444;

  return sub_100090744(a1);
}

uint64_t sub_10008F520(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10008C444;

  return sub_100090E68(a1);
}

uint64_t sub_10008F5F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[10] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v10;
  v2[12] = v9;

  return _swift_task_switch(sub_10008F770, v10, v9);
}

uint64_t sub_10008F770()
{
  v43 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  static Log.photos.getter();
  (*(v3 + 16))(v2, v6, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];
  if (v9)
  {
    v39 = v8;
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 136315650;
    *(v17 + 4) = sub_100102F80(0xD000000000000010, 0x8000000100107A10, &v42);
    *(v17 + 12) = 2080;
    v18 = *(v16 + 16);
    v40 = v13;
    v41 = v10;
    v19 = PhotosFaceType.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, &v42);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v14 + 8))(v12, v15);
    v26 = sub_100102F80(v23, v25, &v42);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v7, v39, "%s type = %s, id: %s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v11 + 8))(v41, v40);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v27 = static Platform.current.getter();
  v28 = v0[3];
  if (v27)
  {
    v29 = *(v28 + 96);
    v30 = *(v28 + 16);
    v31 = swift_task_alloc();
    v0[13] = v31;
    *v31 = v0;
    v31[1] = sub_10008FB44;
    v32 = v0[2];

    return sub_100004B38(v30, v32);
  }

  else
  {
    v34 = type metadata accessor for GalleryDatabase();
    v35 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase);
    v36 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.delete(id:)[1];
    v37 = swift_task_alloc();
    v0[15] = v37;
    *v37 = v0;
    v37[1] = sub_10008FD14;
    v38 = v0[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v38, v34, v35);
  }
}

uint64_t sub_10008FB44()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];
    v5 = v3[12];

    return _swift_task_switch(sub_1000FBE24, v4, v5);
  }

  else
  {
    v6 = v3[3];
    v7 = type metadata accessor for GalleryDatabase();
    v8 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase);
    v9 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.delete(id:)[1];
    v10 = swift_task_alloc();
    v3[15] = v10;
    *v10 = v3;
    v10[1] = sub_10008FD14;
    v11 = v3[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v11, v7, v8);
  }
}

uint64_t sub_10008FD14()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1000FBE1C;
  }

  else
  {
    v7 = sub_10008FE50;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008FE50()
{
  v1 = *(*(v0 + 24) + 104);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_10008FEE4;

  return sub_10006254C();
}

uint64_t sub_10008FEE4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1000FBE20;
  }

  else
  {
    v7 = sub_1000FBE80;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100090020(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[10] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v10;
  v2[12] = v9;

  return _swift_task_switch(sub_1000901A0, v10, v9);
}

uint64_t sub_1000901A0()
{
  v43 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  static Log.photos.getter();
  (*(v3 + 16))(v2, v6, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];
  if (v9)
  {
    v39 = v8;
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 136315650;
    *(v17 + 4) = sub_100102F80(0xD000000000000010, 0x8000000100107A10, &v42);
    *(v17 + 12) = 2080;
    v18 = *(v16 + 16);
    v40 = v13;
    v41 = v10;
    v19 = PhotosFaceType.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, &v42);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v14 + 8))(v12, v15);
    v26 = sub_100102F80(v23, v25, &v42);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v7, v39, "%s type = %s, id: %s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v11 + 8))(v41, v40);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v27 = static Platform.current.getter();
  v28 = v0[3];
  if (v27)
  {
    v29 = *(v28 + 96);
    v30 = *(v28 + 16);
    v31 = swift_task_alloc();
    v0[13] = v31;
    *v31 = v0;
    v31[1] = sub_100090574;
    v32 = v0[2];

    return sub_100004B38(v30, v32);
  }

  else
  {
    v34 = type metadata accessor for DailyDatabase();
    v35 = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase);
    v36 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.delete(id:)[1];
    v37 = swift_task_alloc();
    v0[15] = v37;
    *v37 = v0;
    v37[1] = sub_10008FD14;
    v38 = v0[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v38, v34, v35);
  }
}

uint64_t sub_100090574()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];
    v5 = v3[12];

    return _swift_task_switch(sub_1000FBE24, v4, v5);
  }

  else
  {
    v6 = v3[3];
    v7 = type metadata accessor for DailyDatabase();
    v8 = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase);
    v9 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.delete(id:)[1];
    v10 = swift_task_alloc();
    v3[15] = v10;
    *v10 = v3;
    v10[1] = sub_10008FD14;
    v11 = v3[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v11, v7, v8);
  }
}

uint64_t sub_100090744(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[10] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v10;
  v2[12] = v9;

  return _swift_task_switch(sub_1000908C4, v10, v9);
}

uint64_t sub_1000908C4()
{
  v43 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  static Log.photos.getter();
  (*(v3 + 16))(v2, v6, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];
  if (v9)
  {
    v39 = v8;
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 136315650;
    *(v17 + 4) = sub_100102F80(0xD000000000000010, 0x8000000100107A10, &v42);
    *(v17 + 12) = 2080;
    v18 = *(v16 + 16);
    v40 = v13;
    v41 = v10;
    v19 = PhotosFaceType.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, &v42);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v14 + 8))(v12, v15);
    v26 = sub_100102F80(v23, v25, &v42);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v7, v39, "%s type = %s, id: %s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v11 + 8))(v41, v40);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v27 = static Platform.current.getter();
  v28 = v0[3];
  if (v27)
  {
    v29 = *(v28 + 96);
    v30 = *(v28 + 16);
    v31 = swift_task_alloc();
    v0[13] = v31;
    *v31 = v0;
    v31[1] = sub_100090C98;
    v32 = v0[2];

    return sub_100004B38(v30, v32);
  }

  else
  {
    v34 = type metadata accessor for ShuffleDatabase();
    v35 = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase);
    v36 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.delete(id:)[1];
    v37 = swift_task_alloc();
    v0[15] = v37;
    *v37 = v0;
    v37[1] = sub_10008FD14;
    v38 = v0[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v38, v34, v35);
  }
}

uint64_t sub_100090C98()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];
    v5 = v3[12];

    return _swift_task_switch(sub_1000FBE24, v4, v5);
  }

  else
  {
    v6 = v3[3];
    v7 = type metadata accessor for ShuffleDatabase();
    v8 = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase);
    v9 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.delete(id:)[1];
    v10 = swift_task_alloc();
    v3[15] = v10;
    *v10 = v3;
    v10[1] = sub_10008FD14;
    v11 = v3[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v11, v7, v8);
  }
}

uint64_t sub_100090E68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[10] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v10;
  v2[12] = v9;

  return _swift_task_switch(sub_100090FE8, v10, v9);
}

uint64_t sub_100090FE8()
{
  v43 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  static Log.photos.getter();
  (*(v3 + 16))(v2, v6, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];
  if (v9)
  {
    v39 = v8;
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 136315650;
    *(v17 + 4) = sub_100102F80(0xD000000000000010, 0x8000000100107A10, &v42);
    *(v17 + 12) = 2080;
    v18 = *(v16 + 16);
    v40 = v13;
    v41 = v10;
    v19 = PhotosFaceType.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, &v42);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v14 + 8))(v12, v15);
    v26 = sub_100102F80(v23, v25, &v42);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v7, v39, "%s type = %s, id: %s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v11 + 8))(v41, v40);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v27 = static Platform.current.getter();
  v28 = v0[3];
  if (v27)
  {
    v29 = *(v28 + 96);
    v30 = *(v28 + 16);
    v31 = swift_task_alloc();
    v0[13] = v31;
    *v31 = v0;
    v31[1] = sub_1000913BC;
    v32 = v0[2];

    return sub_100004B38(v30, v32);
  }

  else
  {
    v34 = type metadata accessor for AlbumDatabase();
    v35 = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase);
    v36 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.delete(id:)[1];
    v37 = swift_task_alloc();
    v0[15] = v37;
    *v37 = v0;
    v37[1] = sub_10009158C;
    v38 = v0[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v38, v34, v35);
  }
}

uint64_t sub_1000913BC()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];
    v5 = v3[12];

    return _swift_task_switch(sub_100091A10, v4, v5);
  }

  else
  {
    v6 = v3[3];
    v7 = type metadata accessor for AlbumDatabase();
    v8 = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase);
    v9 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.delete(id:)[1];
    v10 = swift_task_alloc();
    v3[15] = v10;
    *v10 = v3;
    v10[1] = sub_10009158C;
    v11 = v3[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v11, v7, v8);
  }
}

uint64_t sub_10009158C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_100091898;
  }

  else
  {
    v7 = sub_1000916C8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000916C8()
{
  v1 = *(*(v0 + 24) + 104);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_10009175C;

  return sub_10006254C();
}

uint64_t sub_10009175C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_100091990;
  }

  else
  {
    v7 = sub_100091918;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100091898()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100091918()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100091990()
{
  v1 = v0[18];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100091A10()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100091A90()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v0[4] = static CommunicationActor.shared.getter();
  v1 = type metadata accessor for GalleryDatabase();
  v2 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase);
  v3 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v1, v2);
}

uint64_t sub_100091B9C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;
  v5[6] = v1;

  v8 = v5[4];
  v9 = v5[2];
  if (v3)
  {
    v5[9] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v13 = sub_100091E18;
  }

  else
  {
    v5[7] = a1;
    v5[8] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v14;
    v13 = sub_100091D8C;
  }

  return _swift_task_switch(v13, v10, v12);
}

uint64_t sub_100091D8C()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBF24, v6, v5);
}

uint64_t sub_100091E18()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBF28, v6, v5);
}

uint64_t sub_100091EA4()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v0[4] = static CommunicationActor.shared.getter();
  v1 = type metadata accessor for DailyDatabase();
  v2 = sub_1000FAACC(&qword_10012A468, &type metadata accessor for DailyDatabase);
  v3 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v1, v2);
}

uint64_t sub_100091FB0()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v0[4] = static CommunicationActor.shared.getter();
  v1 = type metadata accessor for ShuffleDatabase();
  v2 = sub_1000FAACC(&qword_10012A478, &type metadata accessor for ShuffleDatabase);
  v3 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v1, v2);
}

uint64_t sub_1000920BC()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v0[4] = static CommunicationActor.shared.getter();
  v1 = type metadata accessor for AlbumDatabase();
  v2 = sub_1000FAACC(&qword_10012A488, &type metadata accessor for AlbumDatabase);
  v3 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v1, v2);
}

uint64_t sub_1000921C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(FaceRequest - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for CommunicationActor();
  v3[10] = static CommunicationActor.shared.getter();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10009230C, v7, v6);
}

uint64_t sub_10009230C()
{
  v1 = v0[11];
  v2 = v0[9];
  v15 = v0[12];
  v16 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v14 = v0[2];

  static CommunicationActor.shared.getter();
  (*(v6 + 16))(v4, v8, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  (*(v6 + 32))(v10 + v9, v4, v5);
  type metadata accessor for StoredPhoto();

  generateElements<A>(isolation:_:)();

  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBE10, v12, v11);
}

uint64_t sub_100092480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(FaceRequest - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for CommunicationActor();
  v3[10] = static CommunicationActor.shared.getter();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000925C4, v7, v6);
}

uint64_t sub_1000925C4()
{
  v1 = v0[11];
  v2 = v0[9];
  v15 = v0[12];
  v16 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v14 = v0[2];

  static CommunicationActor.shared.getter();
  (*(v6 + 16))(v4, v8, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  (*(v6 + 32))(v10 + v9, v4, v5);
  type metadata accessor for StoredPhoto();

  generateElements<A>(isolation:_:)();

  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBE10, v12, v11);
}

uint64_t sub_100092738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(FaceRequest - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for CommunicationActor();
  v3[10] = static CommunicationActor.shared.getter();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10009287C, v7, v6);
}

uint64_t sub_10009287C()
{
  v1 = v0[11];
  v2 = v0[9];
  v15 = v0[12];
  v16 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v14 = v0[2];

  static CommunicationActor.shared.getter();
  (*(v6 + 16))(v4, v8, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  (*(v6 + 32))(v10 + v9, v4, v5);
  type metadata accessor for StoredPhoto();

  generateElements<A>(isolation:_:)();

  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBE10, v12, v11);
}

uint64_t sub_1000929F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(FaceRequest - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for CommunicationActor();
  v3[10] = static CommunicationActor.shared.getter();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100092B34, v7, v6);
}

uint64_t sub_100092B34()
{
  v1 = v0[11];
  v2 = v0[9];
  v15 = v0[12];
  v16 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v14 = v0[2];

  static CommunicationActor.shared.getter();
  (*(v6 + 16))(v4, v8, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  (*(v6 + 32))(v10 + v9, v4, v5);
  type metadata accessor for StoredPhoto();

  generateElements<A>(isolation:_:)();

  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100092CA8, v12, v11);
}

uint64_t sub_100092CA8()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100092D18(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v1[4] = static CommunicationActor.shared.getter();
  v3 = type metadata accessor for GalleryDatabase();
  v4 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase);
  v5 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v6 = swift_task_alloc();
  v1[5] = v6;
  *v6 = v1;
  v6[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(a1, v3, v4);
}

uint64_t sub_100092E34(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v1[4] = static CommunicationActor.shared.getter();
  v3 = type metadata accessor for DailyDatabase();
  v4 = sub_1000FAACC(&qword_10012A468, &type metadata accessor for DailyDatabase);
  v5 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v6 = swift_task_alloc();
  v1[5] = v6;
  *v6 = v1;
  v6[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(a1, v3, v4);
}

uint64_t sub_100092F50(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v1[4] = static CommunicationActor.shared.getter();
  v3 = type metadata accessor for ShuffleDatabase();
  v4 = sub_1000FAACC(&qword_10012A478, &type metadata accessor for ShuffleDatabase);
  v5 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v6 = swift_task_alloc();
  v1[5] = v6;
  *v6 = v1;
  v6[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(a1, v3, v4);
}

uint64_t sub_10009306C(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v1[4] = static CommunicationActor.shared.getter();
  v3 = type metadata accessor for AlbumDatabase();
  v4 = sub_1000FAACC(&qword_10012A488, &type metadata accessor for AlbumDatabase);
  v5 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v6 = swift_task_alloc();
  v1[5] = v6;
  *v6 = v1;
  v6[1] = sub_100093188;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(a1, v3, v4);
}

uint64_t sub_100093188(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;
  v5[6] = v1;

  v8 = v5[4];
  v9 = v5[2];
  if (v3)
  {
    v5[9] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v13 = sub_10009346C;
  }

  else
  {
    v5[7] = a1;
    v5[8] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v14;
    v13 = sub_100093378;
  }

  return _swift_task_switch(v13, v10, v12);
}

uint64_t sub_100093378()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100093404, v6, v5);
}

uint64_t sub_100093404()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_10009346C()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000934F8, v6, v5);
}

uint64_t sub_1000934F8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_10009355C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for CommunicationActor();
  v2[5] = static CommunicationActor.shared.getter();
  v2[6] = static CommunicationActor.shared.getter();
  v2[7] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100093638, v4, v3);
}

uint64_t sub_100093638()
{
  v1 = *(v0[3] + 32);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1000936D8;
  v3 = v0[2];

  return sub_100011914(v3, 1);
}

uint64_t sub_1000936D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_1000938AC;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_100093800;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100093800()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  sub_1000730FC(v1);
  v7 = v6;

  v0[13] = v7;
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBF30, v9, v8);
}

uint64_t sub_1000938AC()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBF2C, v6, v5);
}

uint64_t sub_100093934(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for CommunicationActor();
  v2[5] = static CommunicationActor.shared.getter();
  v2[6] = static CommunicationActor.shared.getter();
  v2[7] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100093A10, v4, v3);
}

uint64_t sub_100093A10()
{
  v1 = *(v0[3] + 32);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1000936D8;
  v3 = v0[2];

  return sub_1000105AC(v3);
}

uint64_t sub_100093AC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for CommunicationActor();
  v2[5] = static CommunicationActor.shared.getter();
  v2[6] = static CommunicationActor.shared.getter();
  v2[7] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100093B9C, v4, v3);
}

uint64_t sub_100093B9C()
{
  v1 = *(v0[3] + 32);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100093C3C;
  v3 = v0[2];

  return sub_10000CCAC(v3, 1);
}

uint64_t sub_100093C3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_100093E88;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_100093D64;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100093D64()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  sub_1000730FC(v1);
  v7 = v6;

  v0[13] = v7;
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100093E10, v9, v8);
}

uint64_t sub_100093E10()
{
  v1 = v0[5];

  v2 = v0[1];
  if (v0[13])
  {
    v3 = v0[13];
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  return v2(v3);
}

uint64_t sub_100093E88()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100093F10, v6, v5);
}

uint64_t sub_100093F10()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_100093F74()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_100014A8C();
}

uint64_t sub_100094038()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_100017684();
}

uint64_t sub_1000940FC()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_10001A828();
}

uint64_t sub_1000941C0()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_10001D0C8();
}

uint64_t sub_100094284()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_100094594();
}

uint64_t sub_100094348()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000A2D30();
}

uint64_t sub_10009440C()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000B1B4C();
}

uint64_t sub_1000944D0()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000C0B00();
}

uint64_t sub_100094594()
{
  v1[16] = v0;
  v2 = *(*(sub_10000560C(&qword_10012B490, &qword_10010A268) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v3 = sub_10000560C(&qword_10012B498, &qword_10010A270);
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for StoredPhoto();
  v1[23] = v6;
  v7 = *(v6 - 8);
  v1[24] = v7;
  v8 = *(v7 + 64) + 15;
  v1[25] = swift_task_alloc();
  v9 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v1[26] = v9;
  v10 = *(v9 - 8);
  v1[27] = v10;
  v11 = *(v10 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v12 = *(*(sub_10000560C(&qword_10012A6B8, &qword_1001095C0) - 8) + 64) + 15;
  v1[44] = swift_task_alloc();
  v13 = sub_10000560C(&qword_10012B4A0, &qword_10010A278);
  v1[45] = v13;
  v14 = *(v13 - 8);
  v1[46] = v14;
  v15 = *(v14 + 64) + 15;
  v1[47] = swift_task_alloc();
  v16 = sub_10000560C(&qword_10012B4A8, &qword_10010A280);
  v1[48] = v16;
  v17 = *(v16 - 8);
  v1[49] = v17;
  v18 = *(v17 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  v1[52] = v19;
  v20 = *(v19 - 8);
  v1[53] = v20;
  v21 = *(v20 + 64) + 15;
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v22 = type metadata accessor for SyncFacesRequest();
  v1[69] = v22;
  v23 = *(v22 - 8);
  v1[70] = v23;
  v24 = *(v23 + 64) + 15;
  v1[71] = swift_task_alloc();
  v25 = type metadata accessor for ShuffleID();
  v1[72] = v25;
  v26 = *(v25 - 8);
  v1[73] = v26;
  v27 = *(v26 + 64) + 15;
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v28 = type metadata accessor for UUID();
  v1[85] = v28;
  v29 = *(v28 - 8);
  v1[86] = v29;
  v30 = *(v29 + 64) + 15;
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = type metadata accessor for CommunicationActor();
  v1[95] = static CommunicationActor.shared.getter();
  v31 = type metadata accessor for GalleryDatabase();
  v1[96] = v31;
  v32 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase);
  v1[97] = v32;
  v33 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()[1];
  v34 = swift_task_alloc();
  v1[98] = v34;
  *v34 = v1;
  v34[1] = sub_100094CC0;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v31, v32);
}
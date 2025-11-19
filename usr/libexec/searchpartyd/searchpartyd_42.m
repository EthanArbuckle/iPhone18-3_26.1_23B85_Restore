uint64_t sub_100463B54(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for StandaloneBeacon();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_100465DA8(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_10046A814(v114 + v25 * v24, v19, type metadata accessor for StandaloneBeacon);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_10046A814(v27, v120, type metadata accessor for StandaloneBeacon);
      v30 = *(v9 + 32);
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_10046B858(v29, type metadata accessor for StandaloneBeacon);
      result = sub_10046B858(v19, type metadata accessor for StandaloneBeacon);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_10046A814(v32, v19, type metadata accessor for StandaloneBeacon);
        v33 = v120;
        sub_10046A814(v5, v120, type metadata accessor for StandaloneBeacon);
        v34 = *(v121 + 32);
        v35 = static Date.< infix(_:_:)() & 1;
        sub_10046B858(v33, type metadata accessor for StandaloneBeacon);
        result = sub_10046B858(v19, type metadata accessor for StandaloneBeacon);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_10046B7F0(v42 + v41, v111, type metadata accessor for StandaloneBeacon);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10046B7F0(v111, v42 + v36, type metadata accessor for StandaloneBeacon);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_10046A814(v5, v19, type metadata accessor for StandaloneBeacon);
    v96 = v120;
    sub_10046A814(v93, v120, type metadata accessor for StandaloneBeacon);
    v97 = *(v9 + 32);
    a4 = static Date.< infix(_:_:)();
    sub_10046B858(v96, type metadata accessor for StandaloneBeacon);
    result = sub_10046B858(v19, type metadata accessor for StandaloneBeacon);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_100465DA8(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100B31E68(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_100B31DDC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for StandaloneBeacon;
    v98 = v119;
    sub_10046B7F0(v5, v119, type metadata accessor for StandaloneBeacon);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_10046B7F0(v98, v93, type metadata accessor for StandaloneBeacon);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_1004644B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v186 = &v183 - v14;
  v15 = __chkstk_darwin(v13);
  v196 = &v183 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v183 - v18;
  v20 = __chkstk_darwin(v17);
  v190 = &v183 - v21;
  v22 = __chkstk_darwin(v20);
  v189 = &v183 - v23;
  v24 = __chkstk_darwin(v22);
  v195 = &v183 - v25;
  __chkstk_darwin(v24);
  v194 = &v183 - v26;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v201 = &v183 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v198 = &v183 - v33;
  v34 = __chkstk_darwin(v32);
  v204 = &v183 - v35;
  __chkstk_darwin(v34);
  v203 = &v183 - v36;
  v200 = type metadata accessor for OwnedBeaconGroup(0);
  v37 = *(*(v200 - 8) + 64);
  v38 = __chkstk_darwin(v200);
  v205 = (&v183 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __chkstk_darwin(v38);
  v197 = (&v183 - v41);
  v42 = __chkstk_darwin(v40);
  v209 = (&v183 - v43);
  __chkstk_darwin(v42);
  v202 = (&v183 - v44);
  v46 = *(v45 + 72);
  if (!v46)
  {
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v208 = a1;
  v47 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v46 == -1)
  {
    goto LABEL_144;
  }

  v48 = a3;
  v49 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v46 == -1)
  {
LABEL_145:
    __break(1u);
  }

  v212 = a4;
  v213 = v208;
  v206 = v27;
  if (v47 / v46 >= v49 / v46)
  {
    v185 = v12;
    v51 = v49 / v46 * v46;
    if (a4 < a2 || a2 + v51 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v115 = (a4 + v51);
    if (v51 < 1)
    {
LABEL_141:
      v213 = a2;
      v211 = v115;
      goto LABEL_142;
    }

    v116 = -v46;
    v204 = (v28 + 56);
    v209 = (v28 + 48);
    v184 = (v28 + 32);
    v190 = (v28 + 8);
    v187 = xmmword_101385D80;
    v117 = (a4 + v51);
    v207 = a4;
    v194 = v116;
    v118 = v208;
    *&v191 = v19;
LABEL_81:
    v183 = v115;
    v119 = a2;
    v120 = a2 + v116;
    v199 = a2 + v116;
    v193 = a2;
    while (1)
    {
      if (v119 <= v118)
      {
        v213 = v119;
        v211 = v183;
        goto LABEL_142;
      }

      v189 = v115;
      v203 = v117;
      v195 = &v117[v116];
      v121 = v197;
      sub_10046A814(&v117[v116], v197, type metadata accessor for OwnedBeaconGroup);
      sub_10046A814(v120, v205, type metadata accessor for OwnedBeaconGroup);
      v122 = objc_autoreleasePoolPush();
      v123 = *v121;
      v124 = v121[1];
      v125 = v124 >> 62;
      v202 = v48;
      if ((v124 >> 62) > 1)
      {
        v126 = v196;
        if (v125 != 2 || *(v123 + 16) == *(v123 + 24))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v126 = v196;
        if (v125)
        {
          if (v123 == v123 >> 32)
          {
            goto LABEL_100;
          }
        }

        else if ((v124 & 0xFF000000000000) == 0)
        {
          goto LABEL_100;
        }
      }

      v127 = objc_autoreleasePoolPush();
      v128 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v123, v124);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v211 = 0;
      v130 = [v128 initForReadingFromData:isa error:&v211];

      if (!v130)
      {
        break;
      }

      v131 = v211;
      sub_100016590(v123, v124);
      [v130 _enableStrictSecureDecodingMode];
      v132 = [objc_allocWithZone(CKRecord) initWithCoder:v130];
      if (!v132)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v143 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_99;
      }

      v133 = v132;

      objc_autoreleasePoolPop(v127);
      v134 = [v133 creationDate];

      v126 = v196;
      v116 = v194;
      if (v134)
      {
        v135 = v186;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v136 = 0;
      }

      else
      {
        v136 = 1;
        v135 = v186;
      }

      v145 = *v204;
      v179 = v135;
      v180 = v135;
      v146 = v206;
      (*v204)(v179, v136, 1, v206);
      v181 = v180;
      v144 = v191;
      sub_1000D2AD8(v181, v191, &unk_101696900, &unk_10138B1E0);
      v147 = *v209;
      if ((*v209)(v144, 1, v146) != 1)
      {
        (*v184)(v198, v144, v146);
        goto LABEL_103;
      }

LABEL_101:
      Date.init()();
      v147 = *v209;
      if ((*v209)(v144, 1, v146) != 1)
      {
        sub_10000B3A8(v144, &unk_101696900, &unk_10138B1E0);
      }

LABEL_103:
      objc_autoreleasePoolPop(v122);
      v148 = objc_autoreleasePoolPush();
      v149 = *v205;
      v150 = v205[1];
      v151 = v150 >> 62;
      if ((v150 >> 62) > 1)
      {
        v152 = v206;
        if (v151 != 2 || *(v149 + 16) == *(v149 + 24))
        {
          goto LABEL_118;
        }
      }

      else
      {
        v152 = v206;
        if (v151)
        {
          if (v149 == v149 >> 32)
          {
            goto LABEL_118;
          }
        }

        else if ((v150 & 0xFF000000000000) == 0)
        {
          goto LABEL_118;
        }
      }

      v153 = objc_autoreleasePoolPush();
      v154 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v149, v150);
      v155 = Data._bridgeToObjectiveC()().super.isa;
      v211 = 0;
      v156 = [v154 initForReadingFromData:v155 error:&v211];

      if (!v156)
      {
        v188 = v153;
        v163 = v211;
        v164 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v149, v150);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v165 = swift_allocObject();
        *(v165 + 16) = v187;
        v211 = v164;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v166 = String.init<A>(describing:)();
        v168 = v167;
        *(v165 + 56) = &type metadata for String;
        *(v165 + 64) = sub_100008C00();
        *(v165 + 32) = v166;
        *(v165 + 40) = v168;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v156 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v152 = v206;

        v192 = 0;
LABEL_117:
        v126 = v196;
        v116 = v194;

        objc_autoreleasePoolPop(v188);
LABEL_118:
        v145(v126, 1, 1, v152);
        goto LABEL_119;
      }

      v157 = v211;
      sub_100016590(v149, v150);
      [v156 _enableStrictSecureDecodingMode];
      v158 = [objc_allocWithZone(CKRecord) initWithCoder:v156];
      if (!v158)
      {
        v188 = v153;
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v169 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_117;
      }

      v159 = v158;

      objc_autoreleasePoolPop(v153);
      v160 = [v159 creationDate];

      v126 = v196;
      v116 = v194;
      if (v160)
      {
        v161 = v185;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v162 = 0;
      }

      else
      {
        v162 = 1;
        v161 = v185;
      }

      v145(v161, v162, 1, v152);
      sub_1000D2AD8(v161, v126, &unk_101696900, &unk_10138B1E0);
      if (v147(v126, 1, v152) != 1)
      {
        (*v184)(v201, v126, v152);
        v120 = v199;
        goto LABEL_121;
      }

LABEL_119:
      v170 = v199;
      Date.init()();
      v171 = v147(v126, 1, v152);
      v120 = v170;
      if (v171 != 1)
      {
        sub_10000B3A8(v126, &unk_101696900, &unk_10138B1E0);
      }

LABEL_121:
      v172 = v202;
      v173 = v202 + v116;
      objc_autoreleasePoolPop(v148);
      v174 = v201;
      v175 = v198;
      v176 = Date.compare(_:)();
      v177 = *v190;
      (*v190)(v174, v152);
      v177(v175, v152);
      sub_10046B858(v205, type metadata accessor for OwnedBeaconGroup);
      sub_10046B858(v197, type metadata accessor for OwnedBeaconGroup);
      if (v176 == 1)
      {
        v118 = v208;
        v48 = v173;
        if (v172 < v193 || v173 >= v193)
        {
          a2 = v120;
          swift_arrayInitWithTakeFrontToBack();
          v115 = v189;
          v116 = v194;
        }

        else
        {
          v115 = v189;
          v116 = v194;
          a2 = v120;
          if (v172 != v193)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v117 = v203;
        if (v203 <= v207)
        {
          goto LABEL_141;
        }

        goto LABEL_81;
      }

      v178 = v195;
      v115 = v195;
      v118 = v208;
      v48 = v173;
      if (v172 < v203 || v173 >= v203)
      {
        swift_arrayInitWithTakeFrontToBack();
        v116 = v194;
      }

      else
      {
        v116 = v194;
        if (v172 != v203)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v117 = v115;
      v119 = v193;
      if (v178 <= v207)
      {
        a2 = v193;
        goto LABEL_141;
      }
    }

    v137 = v211;
    v138 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v123, v124);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v139 = swift_allocObject();
    *(v139 + 16) = v187;
    v211 = v138;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v140 = String.init<A>(describing:)();
    v142 = v141;
    *(v139 + 56) = &type metadata for String;
    *(v139 + 64) = sub_100008C00();
    *(v139 + 32) = v140;
    *(v139 + 40) = v142;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v130 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v192 = 0;
LABEL_99:
    v126 = v196;
    v116 = v194;

    objc_autoreleasePoolPop(v127);
LABEL_100:
    v144 = v191;
    v145 = *v204;
    v146 = v206;
    (*v204)(v191, 1, 1, v206);
    goto LABEL_101;
  }

  v50 = v47 / v46 * v46;
  if (a4 < v208 || v208 + v50 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != v208)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v198 = (a4 + v50);
  v211 = (a4 + v50);
  if (v50 >= 1 && a2 < a3)
  {
    v201 = (v28 + 56);
    v205 = (v28 + 48);
    v188 = (v28 + 32);
    v196 = (v28 + 8);
    v191 = xmmword_101385D80;
    v197 = a3;
    v193 = v46;
    while (1)
    {
      v53 = v202;
      sub_10046A814(a2, v202, type metadata accessor for OwnedBeaconGroup);
      v207 = a4;
      sub_10046A814(a4, v209, type metadata accessor for OwnedBeaconGroup);
      v54 = objc_autoreleasePoolPush();
      v55 = *v53;
      v56 = v53[1];
      v57 = v56 >> 62;
      if ((v56 >> 62) > 1)
      {
        if (v57 != 2 || *(v55 + 16) == *(v55 + 24))
        {
          goto LABEL_36;
        }
      }

      else if (v57)
      {
        if (v55 == v55 >> 32)
        {
          goto LABEL_36;
        }
      }

      else if ((v56 & 0xFF000000000000) == 0)
      {
        goto LABEL_36;
      }

      v58 = a2;
      v59 = objc_autoreleasePoolPush();
      v60 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v55, v56);
      v61 = Data._bridgeToObjectiveC()().super.isa;
      v210 = 0;
      v62 = [v60 initForReadingFromData:v61 error:&v210];

      if (!v62)
      {
        break;
      }

      v63 = v210;
      sub_100016590(v55, v56);
      [v62 _enableStrictSecureDecodingMode];
      v64 = [objc_allocWithZone(CKRecord) initWithCoder:v62];
      if (!v64)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v75 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_35;
      }

      v65 = v64;

      objc_autoreleasePoolPop(v59);
      v66 = [v65 creationDate];

      a2 = v58;
      if (v66)
      {
        v67 = v189;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = 0;
        v27 = v206;
      }

      else
      {
        v68 = 1;
        v27 = v206;
        v67 = v189;
      }

      v77 = *v201;
      (*v201)(v67, v68, 1, v27);
      v113 = v67;
      v76 = v194;
      sub_1000D2AD8(v113, v194, &unk_101696900, &unk_10138B1E0);
      v78 = *v205;
      if ((*v205)(v76, 1, v27) != 1)
      {
        (*v188)(v203, v76, v27);
        goto LABEL_39;
      }

LABEL_37:
      Date.init()();
      v78 = *v205;
      if ((*v205)(v76, 1, v27) != 1)
      {
        sub_10000B3A8(v76, &unk_101696900, &unk_10138B1E0);
      }

LABEL_39:
      objc_autoreleasePoolPop(v54);
      v79 = objc_autoreleasePoolPush();
      v80 = *v209;
      v81 = v209[1];
      v82 = v81 >> 62;
      if ((v81 >> 62) > 1)
      {
        if (v82 != 2 || *(v80 + 16) == *(v80 + 24))
        {
LABEL_50:
          v93 = v207;
LABEL_54:
          v101 = v195;
          v77(v195, 1, 1, v27);
LABEL_55:
          Date.init()();
          v102 = a2;
          if (v78(v101, 1, v27) != 1)
          {
            sub_10000B3A8(v101, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_57;
        }
      }

      else if (v82)
      {
        if (v80 == v80 >> 32)
        {
          goto LABEL_50;
        }
      }

      else if ((v81 & 0xFF000000000000) == 0)
      {
        goto LABEL_50;
      }

      v199 = a2;
      v83 = objc_autoreleasePoolPush();
      v84 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v80, v81);
      v85 = Data._bridgeToObjectiveC()().super.isa;
      v210 = 0;
      v86 = [v84 initForReadingFromData:v85 error:&v210];

      if (!v86)
      {
        v94 = v210;
        v95 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v80, v81);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v96 = swift_allocObject();
        *(v96 + 16) = v191;
        v210 = v95;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v97 = String.init<A>(describing:)();
        v99 = v98;
        *(v96 + 56) = &type metadata for String;
        *(v96 + 64) = sub_100008C00();
        *(v96 + 32) = v97;
        *(v96 + 40) = v99;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v86 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v192 = 0;
LABEL_53:
        a2 = v199;

        objc_autoreleasePoolPop(v83);
        v27 = v206;
        v93 = v207;
        goto LABEL_54;
      }

      v87 = v210;
      sub_100016590(v80, v81);
      [v86 _enableStrictSecureDecodingMode];
      v88 = [objc_allocWithZone(CKRecord) initWithCoder:v86];
      if (!v88)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v100 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_53;
      }

      v89 = v88;

      objc_autoreleasePoolPop(v83);
      v90 = [v89 creationDate];

      a2 = v199;
      if (v90)
      {
        v91 = v190;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v92 = 0;
        v27 = v206;
        v93 = v207;
      }

      else
      {
        v92 = 1;
        v27 = v206;
        v93 = v207;
        v91 = v190;
      }

      v77(v91, v92, 1, v27);
      v114 = v91;
      v101 = v195;
      sub_1000D2AD8(v114, v195, &unk_101696900, &unk_10138B1E0);
      if (v78(v101, 1, v27) == 1)
      {
        goto LABEL_55;
      }

      v102 = a2;
      (*v188)(v204, v101, v27);
LABEL_57:
      v103 = v197;
      objc_autoreleasePoolPop(v79);
      v105 = v203;
      v104 = v204;
      v106 = Date.compare(_:)();
      v107 = *v196;
      (*v196)(v104, v27);
      v107(v105, v27);
      sub_10046B858(v209, type metadata accessor for OwnedBeaconGroup);
      sub_10046B858(v202, type metadata accessor for OwnedBeaconGroup);
      if (v106 == 1)
      {
        v108 = v193;
        v109 = v102;
        a2 = v102 + v193;
        v110 = v208;
        if (v208 < v102 || v208 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v93;
        }

        else
        {
          a4 = v93;
          if (v208 != v109)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v108 = v193;
        v111 = v93 + v193;
        v110 = v208;
        a2 = v102;
        if (v208 < v93 || v208 >= v111)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v208 != v93)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v212 = v111;
        a4 = v93 + v108;
      }

      v112 = v110 + v108;
      v213 = v112;
      if (a4 < v198)
      {
        v208 = v112;
        if (a2 < v103)
        {
          continue;
        }
      }

      goto LABEL_142;
    }

    v69 = v210;
    v70 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v55, v56);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v71 = swift_allocObject();
    *(v71 + 16) = v191;
    v210 = v70;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v72 = String.init<A>(describing:)();
    v74 = v73;
    *(v71 + 56) = &type metadata for String;
    *(v71 + 64) = sub_100008C00();
    *(v71 + 32) = v72;
    *(v71 + 40) = v74;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v62 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v192 = 0;
LABEL_35:
    a2 = v58;

    objc_autoreleasePoolPop(v59);
    v27 = v206;
LABEL_36:
    v76 = v194;
    v77 = *v201;
    (*v201)(v194, 1, 1, v27);
    goto LABEL_37;
  }

LABEL_142:
  sub_10060AB5C(&v213, &v212, &v211);
  return 1;
}

uint64_t sub_100465DA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for StandaloneBeacon();
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_10046A814(v33, v47, type metadata accessor for StandaloneBeacon);
          v35 = v48;
          sub_10046A814(v29, v48, type metadata accessor for StandaloneBeacon);
          v36 = *(v31 + 32);
          v37 = static Date.< infix(_:_:)();
          sub_10046B858(v35, type metadata accessor for StandaloneBeacon);
          sub_10046B858(v34, type metadata accessor for StandaloneBeacon);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_10046A814(a2, v47, type metadata accessor for StandaloneBeacon);
        v22 = v48;
        sub_10046A814(a4, v48, type metadata accessor for StandaloneBeacon);
        v23 = *(v49 + 32);
        v24 = static Date.< infix(_:_:)();
        sub_10046B858(v22, type metadata accessor for StandaloneBeacon);
        sub_10046B858(v21, type metadata accessor for StandaloneBeacon);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB74(&v52, &v51, &v50);
  return 1;
}

void *sub_1004662D8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_100466360(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1004662D8(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1004664D0(unint64_t *a1, uint64_t a2, void *a3)
{
  v42 = a2;
  v43 = a1;
  v53 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v4 = *(*(v53 - 8) + 64);
  v5 = __chkstk_darwin(v53);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v52 = (&v42 - v8);
  v9 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  v17 = 0;
  v54 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v44 = 0;
  v45 = v13 + 2;
  v24 = (v21 + 63) >> 6;
  v48 = v24;
  v49 = v13;
  v47 = v16;
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v55 = (v23 - 1) & v23;
LABEL_12:
    v46 = v25 | (v17 << 6);
    v28 = (v54[6] + 16 * v46);
    v29 = *v28;
    v30 = v28[1];
    sub_10046A814(v54[7] + *(v50 + 72) * v46, v16, type metadata accessor for OwnedBeaconGroup.PairingState);
    v31 = v52;
    v32 = v53;
    *v52 = v29;
    *(v31 + 8) = v30;
    sub_10046A814(v16, v31 + *(v32 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_1000D2AD8(v31, v7, &qword_1016A4190, &unk_1013A3550);
    v34 = *v7;
    v33 = v7[1];
    sub_100017D5C(v29, v30);
    sub_100017D5C(v29, v30);
    sub_100016590(v34, v33);
    v35 = *(v32 + 48);
    v36 = v49;
    sub_10046A814(v7 + v35, v49, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10046B858(v36, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B858(v7 + v35, type metadata accessor for OwnedBeaconGroup.PairingState);
      v16 = v47;
      sub_10046B858(v47, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100016590(v29, v30);
      v24 = v48;
      v23 = v55;
    }

    else
    {
      v37 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v38 = v45[*(v37 + 48)];
      sub_10000B3A8(v36, &qword_1016A40D0, &unk_10138BE70);
      sub_10046B858(v7 + v35, type metadata accessor for OwnedBeaconGroup.PairingState);
      v39 = v47;
      sub_10046B858(v47, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100016590(v29, v30);
      v40 = v38 == 2;
      v16 = v39;
      v24 = v48;
      v23 = v55;
      if (v40)
      {
        *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
          return sub_10061C5F4(v43, v42, v44, v54);
        }
      }
    }
  }

  v26 = v17;
  while (1)
  {
    v17 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      return sub_10061C5F4(v43, v42, v44, v54);
    }

    v27 = v19[v17];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v55 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004668BC(unint64_t *a1, uint64_t a2, void *a3)
{
  v42 = a2;
  v43 = a1;
  v53 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v4 = *(*(v53 - 8) + 64);
  v5 = __chkstk_darwin(v53);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v52 = (&v42 - v8);
  v9 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  v17 = 0;
  v54 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v44 = 0;
  v45 = v13 + 2;
  v24 = (v21 + 63) >> 6;
  v48 = v24;
  v49 = v13;
  v47 = v16;
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v55 = (v23 - 1) & v23;
LABEL_12:
    v46 = v25 | (v17 << 6);
    v28 = (v54[6] + 16 * v46);
    v29 = *v28;
    v30 = v28[1];
    sub_10046A814(v54[7] + *(v50 + 72) * v46, v16, type metadata accessor for OwnedBeaconGroup.PairingState);
    v31 = v52;
    v32 = v53;
    *v52 = v29;
    *(v31 + 8) = v30;
    sub_10046A814(v16, v31 + *(v32 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_1000D2AD8(v31, v7, &qword_1016A4190, &unk_1013A3550);
    v34 = *v7;
    v33 = v7[1];
    sub_100017D5C(v29, v30);
    sub_100017D5C(v29, v30);
    sub_100016590(v34, v33);
    v35 = *(v32 + 48);
    v36 = v49;
    sub_10046A814(v7 + v35, v49, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10046B858(v36, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B858(v7 + v35, type metadata accessor for OwnedBeaconGroup.PairingState);
      v16 = v47;
      sub_10046B858(v47, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100016590(v29, v30);
      v24 = v48;
      v23 = v55;
    }

    else
    {
      v37 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v38 = v45[*(v37 + 48)];
      sub_10000B3A8(v36, &qword_1016A40D0, &unk_10138BE70);
      sub_10046B858(v7 + v35, type metadata accessor for OwnedBeaconGroup.PairingState);
      v39 = v47;
      sub_10046B858(v47, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100016590(v29, v30);
      v40 = v38 == 1;
      v16 = v39;
      v24 = v48;
      v23 = v55;
      if (v40)
      {
        *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
          return sub_10061C5F4(v43, v42, v44, v54);
        }
      }
    }
  }

  v26 = v17;
  while (1)
  {
    v17 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      return sub_10061C5F4(v43, v42, v44, v54);
    }

    v27 = v19[v17];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v55 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100466CA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100466D68;

  return sub_10044EA7C(a3, a4);
}

uint64_t sub_100466D68(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100466E68, 0, 0);
}

void sub_100466E88(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v13 = 0xD000000000000010;
  v14 = 0x8000000101354BE0;
  v7._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v7);

  v8 = [objc_opt_self() standardUserDefaults];
  sub_1000D2A70(a2, v6, &unk_101696900, &unk_10138B1E0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v6, v9);
  }

  v12 = String._bridgeToObjectiveC()();

  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
}

unint64_t sub_100467074(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608DD8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_1004670C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v45 = a4;
  v42 = a1;
  v43 = a2;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v37[2] = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v39);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v38 = "lastPairingEvents";
  v46 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v40 = *(v11 + 104);
  v41 = v11 + 104;
  v40(v14);
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  v49 = sub_100019D54(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v48 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  v37[1] = v6;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[6] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v38 = "rvice.ClassicPairingSupport";
  v15 = v39;
  v16 = v40;
  (v40)(v14, v46, v39);
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v38 = "iringSupport.nameChangeQueue";
  (v16)(v14, v46, v15);
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[8] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[10] = &_swiftEmptySetSingleton;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[14] = &_swiftEmptySetSingleton;
  v4[15] = &_swiftEmptySetSingleton;
  v4[16] = &_swiftEmptySetSingleton;
  v4[17] = 0;
  v17 = sub_1000BC4D4(&qword_1016A05E8, &qword_1013A36C0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v4[18] = PassthroughSubject.init()();
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();
  v22 = PassthroughSubject.init()();
  v4[20] = 0;
  v4[21] = 0;
  v4[19] = v22;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v23 = qword_10177B348;
  v24 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010748E8(v50);
  v26 = v25;

  v5[22] = v26;
  v27 = *(v23 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v28 = sub_10107488C(v50);

  v5[23] = v28;
  v5[24] = _swiftEmptyDictionarySingleton;
  v29 = v43;
  v5[2] = v42;
  v5[3] = v29;
  v30 = v45;
  v5[4] = v44;
  v5[5] = v30;
  v31 = v5[6];
  v32 = type metadata accessor for QueueSynchronizer();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  v35 = v31;
  v5[9] = QueueSynchronizer.init(queue:)();
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v50 = 0x7365547265646E75;
  v51 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  return v5;
}

void sub_1004676B4(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = *(v102 + 64);
  __chkstk_darwin(v8);
  v100 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS();
  v99 = *(v101 - 8);
  v11 = *(v99 + 64);
  __chkstk_darwin(v101);
  v98 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MACAddress();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v95 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v86 - v18;
  _Block_copy(a4);
  _Block_copy(a4);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_1000076D4(v20, qword_10177AD08);
  v22 = v14[2];
  v104 = a1;
  v92 = v22;
  v22(v19, a1, v13);

  v94 = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v25 = os_log_type_enabled(v23, v24);
  v96 = v14;
  v97 = v13;
  if (v25)
  {
    v90 = v24;
    v91 = a3;
    v26 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v26 = 136315394;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v93 = v14[1];
    v93(v19, v13);
    v30 = sub_1000136BC(v27, v29, aBlock);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = *(a2 + 16);
    if (v31)
    {
      v88 = a4;
      v106 = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v31, 0);
      v32 = v106;
      v87 = a2;
      v33 = (a2 + 40);
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        sub_100017D5C(v35, *v33);
        v36 = Data.hexString.getter();
        v38 = v37;
        sub_100016590(v35, v34);
        v106 = v32;
        v40 = v32[2];
        v39 = v32[3];
        if (v40 >= v39 >> 1)
        {
          sub_101123BB8((v39 > 1), v40 + 1, 1);
          v32 = v106;
        }

        v33 += 2;
        v32[2] = v40 + 1;
        v41 = &v32[2 * v40];
        v41[4] = v36;
        v41[5] = v38;
        --v31;
      }

      while (v31);
      a4 = v88;
      a2 = v87;
    }

    v43 = Array.description.getter();
    v45 = v44;

    v46 = sub_1000136BC(v43, v45, aBlock);

    *(v26 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v23, v90, "forceRePairing: %s, forcePairSerialNumber: %s", v26, 0x16u);
    swift_arrayDestroy();

    a3 = v91;
  }

  else
  {

    v93 = v14[1];
    v42 = (v93)(v19, v13);
  }

  v47 = *(*(*(a3 + 32) + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  __chkstk_darwin(v42);
  v48 = v104;
  *(&v86 - 2) = v104;
  *(&v86 - 1) = v49;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v50 = aBlock[0];
  if (aBlock[0])
  {
    v104 = *(a3 + 48);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = v50;
    v52[4] = a2;
    aBlock[4] = sub_1004681D8;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161D3B0;
    v53 = _Block_copy(aBlock);

    v54 = v50;
    v55 = v98;
    static DispatchQoS.unspecified.getter();
    v106 = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v56 = v100;
    v57 = v103;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v53);
    (*(v102 + 8))(v56, v57);
    (*(v99 + 8))(v55, v101);

    a4[2](a4, 0);
  }

  else
  {
    v58 = v95;
    v59 = v97;
    v92(v95, v48, v97);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v62 = 136315394;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v93(v58, v59);
      v67 = sub_1000136BC(v64, v66, aBlock);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      v68 = a2;
      v69 = *(a2 + 16);
      if (v69)
      {
        v104 = v63;
        v88 = a4;
        v106 = _swiftEmptyArrayStorage;
        sub_101123BB8(0, v69, 0);
        v70 = v106;
        v71 = (v68 + 40);
        do
        {
          v72 = *(v71 - 1);
          v73 = *v71;
          sub_100017D5C(v72, *v71);
          v74 = Data.hexString.getter();
          v76 = v75;
          sub_100016590(v72, v73);
          v106 = v70;
          v78 = v70[2];
          v77 = v70[3];
          if (v78 >= v77 >> 1)
          {
            sub_101123BB8((v77 > 1), v78 + 1, 1);
            v70 = v106;
          }

          v71 += 2;
          v70[2] = v78 + 1;
          v79 = &v70[2 * v78];
          v79[4] = v74;
          v79[5] = v76;
          --v69;
        }

        while (v69);
        a4 = v88;
      }

      v80 = Array.description.getter();
      v82 = v81;

      v83 = sub_1000136BC(v80, v82, aBlock);

      *(v62 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v60, v61, "Could not retreive peripheral for forceRePairing: %s, forcePairSerialNumber: %s", v62, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v93(v58, v59);
    }

    sub_100468184();
    swift_allocError();
    *v84 = 0;
    _Block_copy(a4);
    v85 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v85);

    _Block_release(a4);
  }

  _Block_release(a4);
  _Block_release(a4);
}

unint64_t sub_100468184()
{
  result = qword_1016A04C0;
  if (!qword_1016A04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A04C0);
  }

  return result;
}

uint64_t sub_100468264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_100440548(v2, a1);
}

unint64_t sub_1004682F0()
{
  result = qword_1016AF9C0;
  if (!qword_1016AF9C0)
  {
    sub_100008BB8(255, &qword_101695570, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF9C0);
  }

  return result;
}

uint64_t sub_100468360(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_1004683F0(uint64_t a1)
{
  v3 = *(type metadata accessor for Device() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_10044B998(a1, v6, v7, v1 + v4, v8, v10, v11);
}

uint64_t sub_1004684A4()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 9);
}

uint64_t sub_10046859C()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_10044BBC0(v7, v8, v0 + v3, v6, v9, v10);
}

void sub_1004686D4()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_10044C488(v6, v0 + v2, v5, v7, v9, v10);
}

uint64_t sub_1004687B8(uint64_t a1)
{
  v3 = *(type metadata accessor for Device() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10044AC28(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1004688A8(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100466CA8(a1, v1 + 2, v4, v5);
}

uint64_t sub_10046896C()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = v6 + v5;
  v8 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);
  v10 = *(v0 + 16);
  v11 = *(v0 + v8 + 8);
  v12 = *(v0 + v8 + 16);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_100014744;

  return sub_10045A088(v10, v0 + v4, v0 + v6, v9, v11, v12);
}

uint64_t sub_100468AA0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + ((v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 17);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014744;

  return sub_1000E5758(a1, v9, v10, v1 + v6, v1 + v8, v12, v13, v14);
}

uint64_t sub_100468C00()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100443754(v4, v5, v0 + v3, v6);
}

void sub_100468D34()
{
  v1 = v0;
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  Transaction.capture()();
  sub_1004490E8(v6, v1 + v3, 1, 0, v7);
}

uint64_t sub_100468E08(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100466CA8(a1, v1 + 2, v4, v5);
}

uint64_t sub_100468ECC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100441814(v2, v3);
}

void sub_100468F6C()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = *(v0 + 24);
  v3 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v4 = *(v0 + 16);
  sub_1004347D0(v2, v3);
}

uint64_t sub_100469018(void (*a1)(void))
{
  v3 = type metadata accessor for Device();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);

  v9 = *(v1 + 24);

  (*(v4 + 8))(v1 + v6, v3);
  a1(*(v1 + v7));

  return _swift_deallocObject(v1, v7 + 8, v5 | 7);
}

uint64_t sub_100469110(unint64_t *a1)
{
  v3 = *(type metadata accessor for Device() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10045BFC8(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_1004691B4()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_10045C1F0(v4, v5, v6, v7, v0 + v3, v8);
}

unint64_t sub_1004692DC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1004692EC()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  if (*(v0 + 40) >= 3uLL)
  {
  }

  v7 = (v3 + 48) & ~v3;
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v7, v1);
  v9 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_1004693E4()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10045C6A0(v3, v4, v5, v6, v0 + v2, v7);
}

uint64_t sub_100469478()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_10045FBB8(v5, v6, v0 + v3, v7, v8);
}

unint64_t sub_1004695BC()
{
  result = qword_1016A05C0;
  if (!qword_1016A05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A05C0);
  }

  return result;
}

void sub_10046964C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Device() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  sub_10045F6E4(a1, a2 & 1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1004696F4()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_10045E6E0(v6, v7, v0 + v2, v4, v5);
}

void sub_100469790(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  sub_100454AF8(a1, a2 & 1, v2 + v6, v10, v2 + v9, v12);
}

uint64_t sub_1004698B4(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100455170(a1, v1 + v5);
}

uint64_t sub_100469990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v85 = a6;
  v86 = a5;
  v78 = a3;
  v84 = a1;
  v83 = type metadata accessor for BeaconIdentifier();
  v8 = *(*(v83 - 8) + 64);
  v9 = __chkstk_darwin(v83);
  v82 = (&v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v80 = &v76 - v11;
  v12 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v76 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v81 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v76 - v25;
  __chkstk_darwin(v24);
  v28 = &v76 - v27;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v29 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v30 = sub_1010748CC(v88);

  v77 = v30;
  v31 = v30;
  static Date.trustedNow.getter(v28);
  v79 = a2;
  v87 = v28;
  Date.timeIntervalSince(_:)();
  v33 = v32;
  sub_1000D2A70(a4, v18, &unk_101696900, &unk_10138B1E0);
  v34 = *(v20 + 48);
  if (v34(v18, 1, v19) == 1)
  {
    (*(v20 + 16))(v26, v78, v19);
    if (v34(v18, 1, v19) != 1)
    {
      sub_10000B3A8(v18, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v20 + 32))(v26, v18, v19);
  }

  Date.timeIntervalSince(_:)();
  v36 = v35;
  v37 = *(v20 + 8);
  v37(v26, v19);
  if (v36 <= v31 || v33 <= v31)
  {
    sub_1000D2A70(a4, v16, &unk_101696900, &unk_10138B1E0);
    if (v34(v16, 1, v19) == 1)
    {
      sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
      v39 = 0xE500000000000000;
      v40 = 0x726576654ELL;
    }

    else
    {
      v40 = Date.description.getter();
      v39 = v54;
      v37(v16, v19);
    }

    v55 = v81;
    v56 = v82;
    v82 = v37;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000076D4(v57, qword_10177AD08);
    sub_10046A814(v84, v56, type metadata accessor for BeaconIdentifier);
    (*(v20 + 16))(v55, v79, v19);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v56;
      v61 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v88 = v84;
      *v61 = 141558787;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2081;
      v62 = *(v83 + 20);
      type metadata accessor for UUID();
      v83 = v40;
      sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      sub_10046B858(v60, type metadata accessor for BeaconIdentifier);
      v66 = sub_1000136BC(v63, v65, &v88);

      *(v61 + 14) = v66;
      *(v61 + 22) = 2082;
      sub_100019D54(&qword_1016969A0, &type metadata accessor for Date);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v70 = v82;
      v82(v55, v19);
      v71 = sub_1000136BC(v67, v69, &v88);

      *(v61 + 24) = v71;
      *(v61 + 32) = 2080;
      v72 = sub_1000136BC(v83, v39, &v88);

      *(v61 + 34) = v72;
      _os_log_impl(&_mh_execute_header, v58, v59, "Not force pairing %{private,mask.hash}s: lastObserved: %{public}s lastForcePaired: %s", v61, 0x2Au);
      swift_arrayDestroy();

      v41 = v70;
    }

    else
    {

      v73 = v55;
      v41 = v82;
      v82(v73, v19);
      sub_10046B858(v56, type metadata accessor for BeaconIdentifier);
    }

    v53 = 0;
  }

  else
  {
    v41 = v37;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177AD08);
    v43 = v80;
    sub_10046A814(v84, v80, type metadata accessor for BeaconIdentifier);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v88 = v47;
      *v46 = 141558531;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      v48 = *(v83 + 20);
      type metadata accessor for UUID();
      sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_10046B858(v43, type metadata accessor for BeaconIdentifier);
      v52 = sub_1000136BC(v49, v51, &v88);

      *(v46 + 14) = v52;
      *(v46 + 22) = 2048;
      *(v46 + 24) = v77;
      _os_log_impl(&_mh_execute_header, v44, v45, "shouldForcePair beacon %{private,mask.hash}s threshold: %ld seconds", v46, 0x20u);
      sub_100007BAC(v47);
    }

    else
    {

      sub_10046B858(v43, type metadata accessor for BeaconIdentifier);
    }

    v53 = 1;
  }

  v74 = v87;
  v86(v53, 0);
  return v41(v74, v19);
}

uint64_t sub_10046A2EC()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10046A3E4()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_10045E8C0(v5, v6, v0 + v3, v7, v8);
}

uint64_t sub_10046A508()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  return sub_100456EE4(v3, v4, v5, v0 + v2, v7, v8);
}

void sub_10046A5AC()
{
  v1 = v0;
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  Transaction.capture()();
  sub_10044C750(v6, v7, v1 + v3, 1, v8);
}

uint64_t sub_10046A674()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  v9 = *(v0 + v5);

  return _swift_deallocObject(v0, v6 + 8);
}

void sub_10046A778()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100460468(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10046A814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10046A87C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for StandaloneBeacon() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1004425E4(a1, a2 & 1, v6, v7);
}

uint64_t sub_10046A900(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StandaloneBeacon() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1004558B8(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t sub_10046AA68()
{
  v1 = (type metadata accessor for StandaloneBeacon() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  v7 = v1[7];
  v8 = type metadata accessor for MACAddress();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v2 + v7, v8);
  v9(v0 + v2 + v1[8], v8);
  v10 = *(v0 + v2 + v1[9] + 8);

  v11 = v1[10];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v0 + v2 + v11, v12);
  sub_100016590(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v13 = v0 + v2 + v1[12];
  sub_100016590(*v13, *(v13 + 8));
  sub_100016590(*(v13 + 16), *(v13 + 24));
  sub_100016590(*(v13 + 32), *(v13 + 40));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10046AC40()
{
  v1 = *(type metadata accessor for StandaloneBeacon() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_100442B14(v2, sub_100442AF4, 0);
}

uint64_t sub_10046ACBC()
{
  v1 = *(type metadata accessor for StandaloneBeacon() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  return sub_1004589B8(v0 + v2, v5, v7, v8);
}

uint64_t sub_10046AD70()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v6 + v4) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v5, v1);
  v9(v0 + v6, v1);
  if (*(v0 + v7 + 8))
  {
    v10 = *(v0 + v7 + 16);
  }

  return _swift_deallocObject(v0, v7 + 24);
}

void sub_10046AE80(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

void sub_10046AEB8()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10043C154((v0 + v2), v4, v5);
}

uint64_t sub_10046AF74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1004391DC(v2, v3);
}

void sub_10046B028()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1004445E0(v1);
  Transaction.capture()();
}

uint64_t sub_10046B05C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_10043819C(a1, v1);
}

uint64_t sub_10046B0F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_10046B1D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100437B0C();
}

uint64_t sub_10046B284(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

void sub_10046B308(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10043691C(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_10046B3CC(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_10043247C(a1, v1 + v5);
}

uint64_t sub_10046B4A8()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10046B530(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100432840(a1, v1 + v5);
}

uint64_t sub_10046B640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100432D90(a1, v4, v5, v6);
}

uint64_t sub_10046B6F4(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10046B73C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10042EC4C();
}

uint64_t sub_10046B7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10046B858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10046B8B8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  v7 = *(v1 + v6);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10046B988(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v5);
}

unint64_t sub_10046BA30()
{
  result = qword_1016A06E0;
  if (!qword_1016A06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A06E0);
  }

  return result;
}

unint64_t sub_10046BA84()
{
  result = qword_1016A06E8;
  if (!qword_1016A06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A06E8);
  }

  return result;
}

unint64_t sub_10046BAEC()
{
  result = qword_1016A06F0;
  if (!qword_1016A06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A06F0);
  }

  return result;
}

unint64_t sub_10046BB40()
{
  result = qword_1016A06F8;
  if (!qword_1016A06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A06F8);
  }

  return result;
}

uint64_t sub_10046BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  Endpoint = type metadata accessor for PencilSecureLocationsFetchEndpoint();
  v5[27] = Endpoint;
  v7 = *(*(Endpoint - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v8 = *(*(type metadata accessor for SearchpartyAccount() - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_10046BD90, v4, 0);
}

uint64_t sub_10046BD90()
{
  v0[31] = *(v0[26] + 112);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_10046BE30;
  v2 = v0[30];

  return sub_100300A9C(v2);
}

uint64_t sub_10046BE30()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_10046C198;
  }

  else
  {
    v6 = sub_10046BF5C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10046BF5C()
{
  v1 = v0[30];
  v0[34] = v1[2];
  v0[35] = v1[3];
  v0[36] = v1[4];
  v0[37] = v1[5];

  sub_10046C860(v1, type metadata accessor for SearchpartyAccount);
  type metadata accessor for ServerInteractionController();
  v0[38] = ServerInteractionController.__allocating_init(bundleIdentifier:)();
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_10046C06C;
  v3 = v0[31];
  v4 = v0[29];

  return sub_100300A9C(v4);
}

uint64_t sub_10046C06C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_10046C518;
  }

  else
  {
    v6 = sub_10046C218;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10046C198()
{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10046C218()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v16 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);
  sub_101251A08(*(v0 + 232), v3);
  *(v0 + 40) = v4;
  *(v0 + 48) = sub_10046C750();
  v8 = sub_1000280DC((v0 + 16));
  sub_10046C7A8(v3, v8);
  *(v0 + 80) = &type metadata for PencilSecureLocationsFetchRequest;
  v9 = sub_10046C80C();
  *(v0 + 56) = v7;
  *(v0 + 88) = v9;
  *(v0 + 64) = v6;
  *(v0 + 72) = v5;
  *(v0 + 120) = &type metadata for SearchpartyCredential;
  *(v0 + 128) = sub_100132C84();
  v10 = swift_allocObject();
  *(v0 + 96) = v10;
  *(v10 + 16) = v16;
  *(v10 + 32) = v2;
  *(v10 + 40) = v1;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  sub_10002E98C(v7, v6);
  v11 = *(&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + 1);
  v17 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));

  v12 = swift_task_alloc();
  *(v0 + 328) = v12;
  *v12 = v0;
  v12[1] = sub_10046C3B8;
  v13 = *(v0 + 304);
  v14 = *(v0 + 176);

  return v17(v14, v0 + 16, v0 + 56, v0 + 96, v0 + 136);
}

uint64_t sub_10046C3B8()
{
  v2 = *v1;
  v3 = (*v1)[41];
  v8 = *v1;
  v2[42] = v0;

  sub_10000B3A8((v2 + 17), &qword_1016978B0, &qword_1013A3960);
  if (v0)
  {
    v4 = v2[26];
    v5 = sub_10046C65C;
  }

  else
  {
    v6 = v2[26];
    sub_10000B3A8((v2 + 12), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 7);
    sub_100007BAC(v2 + 2);
    v5 = sub_10046C5B4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10046C518()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];

  v4 = v0[40];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10046C5B4()
{
  v1 = v0[38];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];

  sub_10046C860(v4, type metadata accessor for PencilSecureLocationsFetchEndpoint);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10046C65C()
{
  v1 = v0[38];
  v2 = v0[28];

  sub_10046C860(v2, type metadata accessor for PencilSecureLocationsFetchEndpoint);
  sub_10000B3A8((v0 + 12), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 7);
  sub_100007BAC(v0 + 2);
  v3 = v0[42];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];

  v7 = v0[1];

  return v7();
}

unint64_t sub_10046C750()
{
  result = qword_1016A07B8;
  if (!qword_1016A07B8)
  {
    type metadata accessor for PencilSecureLocationsFetchEndpoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07B8);
  }

  return result;
}

uint64_t sub_10046C7A8(uint64_t a1, uint64_t a2)
{
  Endpoint = type metadata accessor for PencilSecureLocationsFetchEndpoint();
  (*(*(Endpoint - 8) + 16))(a2, a1, Endpoint);
  return a2;
}

unint64_t sub_10046C80C()
{
  result = qword_1016A07C0;
  if (!qword_1016A07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07C0);
  }

  return result;
}

uint64_t sub_10046C860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10046C8E0()
{
  result = qword_1016A07C8;
  if (!qword_1016A07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07C8);
  }

  return result;
}

uint64_t sub_10046C934(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 80;
  }

  else
  {
    v2 = 84;
  }

  if (*a2)
  {
    v3 = 80;
  }

  else
  {
    v3 = 84;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10046C9A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10046CA04()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10046CA48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10046CAA4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101608EF8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10046CB04(uint64_t *a1@<X8>)
{
  v2 = 84;
  if (*v1)
  {
    v2 = 80;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_10046CB24()
{
  if (*v0)
  {
    return 80;
  }

  else
  {
    return 84;
  }
}

uint64_t sub_10046CB40@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_101608EF8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10046CBA4(uint64_t a1)
{
  v2 = sub_10046D258();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046CBE0(uint64_t a1)
{
  v2 = sub_10046D258();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046CCCC(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A07E8, &qword_1013A3B78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10046D258();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((a3 & 0x2000000000000000) != 0)
  {
    LOBYTE(v16) = 1;
    v18 = 0;
    sub_10046D300();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v3)
    {
      v14 = a3 & 0xDFFFFFFFFFFFFFFFLL;
      v16 = a2;
      v17 = a3 & 0xDFFFFFFFFFFFFFFFLL;
      v18 = 1;
      v13 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v18 = 0;
    sub_10046D300();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v3)
    {
      v16 = a2;
      v17 = a3;
      v18 = 1;
      v13 = a2;
      v14 = a3;
LABEL_6:
      sub_100017D5C(v13, v14);
      sub_1000E3190();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v16, v17);
    }
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10046CEE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10046CFF0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10046CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      sub_100029784(a1, a2);
      sub_100029784(a3, a4);
      v9 = a2 & 0xDFFFFFFFFFFFFFFFLL;
      v11 = a4 & 0xDFFFFFFFFFFFFFFFLL;
      v8 = a1;
      v10 = a3;
      goto LABEL_7;
    }
  }

  else if ((a4 & 0x2000000000000000) == 0)
  {
    sub_100029784(a1, a2);
    sub_100029784(a3, a4);
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
LABEL_7:
    v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9, v10, v11);
    sub_10001E524(a3, a4);
    sub_10001E524(a1, a2);
    return v12 & 1;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_10046CFF0(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A07D0, &qword_1013A3B70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_10046D258();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v14 = 0;
    sub_10046D2AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = 1;
    if (v12)
    {
      sub_1000E307C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v9 = sub_10049BD68(v12, v13);
    }

    else
    {
      sub_1000E307C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v9 = sub_10049C0AC(v12, v13);
    }

    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v9;
}

unint64_t sub_10046D258()
{
  result = qword_1016A07D8;
  if (!qword_1016A07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07D8);
  }

  return result;
}

unint64_t sub_10046D2AC()
{
  result = qword_1016A07E0;
  if (!qword_1016A07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07E0);
  }

  return result;
}

unint64_t sub_10046D300()
{
  result = qword_1016A07F0;
  if (!qword_1016A07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07F0);
  }

  return result;
}

unint64_t sub_10046D378()
{
  result = qword_1016A07F8;
  if (!qword_1016A07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07F8);
  }

  return result;
}

unint64_t sub_10046D3D0()
{
  result = qword_1016A0800;
  if (!qword_1016A0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0800);
  }

  return result;
}

unint64_t sub_10046D428()
{
  result = qword_1016A0808;
  if (!qword_1016A0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0808);
  }

  return result;
}

unint64_t sub_10046D480()
{
  result = qword_1016A0810;
  if (!qword_1016A0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0810);
  }

  return result;
}

unint64_t sub_10046D4D4()
{
  result = qword_1016A0818;
  if (!qword_1016A0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0818);
  }

  return result;
}

uint64_t sub_10046D528()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AD20);
  sub_1000076D4(v0, qword_10177AD20);
  return Logger.init(subsystem:category:)();
}

id sub_10046D5AC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = type metadata accessor for UnknownDiscoveryTrampoline();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC12searchpartyd26UnknownDiscoveryTrampoline_implementation] = v0;
    v9.receiver = v4;
    v9.super_class = v3;

    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 56);
    *(v0 + 56) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_10046D648()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 40);
  aBlock[4] = sub_10046EABC;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161E3B0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_10046D89C(uint64_t a1)
{
  v2 = type metadata accessor for XPCServiceDescription();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MachServiceName();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 40);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  MachServiceName.init(_:)();
  (*(v7 + 16))(v11, v13, v6);
  sub_10046D5AC();
  if (qword_101694710 != -1)
  {
LABEL_5:
    swift_once();
  }

  v21 = qword_1016A0820;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 interfaceWithProtocol:&OBJC_PROTOCOL___SPUnknownDiscoveryXPCClientProtocol];
  swift_retain_n();
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v25 = *(a1 + 48);
  XPCSessionManager.register(service:)();
  (*(v27 + 8))(v5, v28);
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_10046DC38(void *a1)
{
  v2 = v1;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD20);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "shouldAccept: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10047020C();
  v11 = NSXPCConnection.hasEntitlement<A>(_:)();
  if (v11)
  {
    v12 = *(v2 + 40);
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v5;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100470260;
    *(v14 + 24) = v13;
    v25[4] = sub_10040B9F8;
    v25[5] = v14;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = sub_10013FE14;
    v25[3] = &unk_10161E590;
    v15 = _Block_copy(v25);
    v16 = v5;

    dispatch_sync(v12, v15);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v11 & 1;
    }

    __break(1u);
  }

  v18 = v5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Missing entitlement: %@", v21, 0xCu);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);
  }

  return v11 & 1;
}

uint64_t sub_10046DF98(void *a1)
{
  v2 = v1;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD20);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "interruptionHandler: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  v11 = *(v2 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1004701E4;
  *(v13 + 24) = v12;
  v18[4] = sub_10040B9F8;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10013FE14;
  v18[3] = &unk_10161E518;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046E20C(void *a1)
{
  v2 = v1;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD20);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "invalidationHandler: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  v11 = *(v2 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100470304;
  *(v13 + 24) = v12;
  v18[4] = sub_1000D2FB0;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10013FE14;
  v18[3] = &unk_10161E428;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10046E480()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPUnknownDiscoveryXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016A0820 = v2;
}

uint64_t sub_10046E4E8(void *a1, void *a2)
{
  if (!a1[8])
  {
    v4 = a1[4];
    v6 = a1[9];
    v5 = a1[10];
    v7 = a1[11];
    type metadata accessor for UnknownDiscoverySession();
    swift_allocObject();

    v8 = v5;

    v9 = sub_1010FBB40(v4, v6, v8, v7);

    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177AD20);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101355560, &v17);
      _os_log_impl(&_mh_execute_header, v11, v12, "Created new UnknownDiscoverySession: %s", v13, 0xCu);
      sub_100007BAC(v14);
    }

    v15 = a1[8];
    a1[8] = v9;
    swift_retain_n();
  }

  swift_retain_n();
  sub_1010EEA14(a2);
}

uint64_t sub_10046E70C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[5];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v2[8];
  if (!v12)
  {
    return result;
  }

  v13 = *(v12 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1004701C0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10161E4A0;
  v16 = _Block_copy(aBlock);
  swift_retain_n();
  v17 = a1;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = *(v12 + 16);
  OS_dispatch_queue.sync<A>(execute:)();
  if (LOBYTE(aBlock[0]) == 1)
  {
    v20 = v2[8];
    v2[8] = 0;

    v21 = v2[9];
    sub_10118F518();
  }
}

uint64_t sub_10046E9AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  return v0;
}

uint64_t sub_10046EA0C()
{
  sub_10046E9AC();

  return swift_deallocClassInstance();
}

uint64_t sub_10046EA64()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

unint64_t sub_10046EAC4()
{
  result = qword_1016A30B0;
  if (!qword_1016A30B0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A30B0);
  }

  return result;
}

uint64_t sub_10046EB28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "UnknownDiscoveryService.start", v9, 2u);
  }

  v10 = *(v3 + 40);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1004702C8;
  *(v12 + 24) = v11;
  v16[4] = sub_10040B9F8;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10013FE14;
  v16[3] = &unk_10161E7E8;
  v13 = _Block_copy(v16);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046ED4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v41);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 64);
  v43 = v9;
  if (v18)
  {

    sub_1010E22E0();
    sub_1000BC488();
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v19 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v17, v13);
    v20 = swift_allocObject();
    *(v20 + 16) = v40;
    *(v20 + 24) = a3;
    v49 = sub_100470308;
    v50 = v20;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100006684;
    v48 = &unk_10161E888;
    v21 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v44 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v22 = v41;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v5 + 8))(v8, v22);
    (*(v42 + 8))(v12, v43);
  }

  else
  {
    v37 = a3;
    v38 = v12;
    v24 = v40;
    v23 = v41;
    v39 = v5;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AD20);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = v23;
    v29 = v8;
    if (os_log_type_enabled(v26, v27))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No session to start discovery", v30, 2u);
    }

    sub_1000BC488();
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v17, v13);
    v32 = swift_allocObject();
    v33 = v37;
    *(v32 + 16) = v24;
    *(v32 + 24) = v33;
    v49 = sub_100470308;
    v50 = v32;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100006684;
    v48 = &unk_10161E838;
    v34 = _Block_copy(&aBlock);

    v35 = v38;
    static DispatchQoS.unspecified.getter();
    v44 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v39 + 8))(v29, v28);
    (*(v42 + 8))(v35, v43);
  }
}

uint64_t sub_10046F318(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "UnknownDiscoveryService.stopUnknownDiscovery", v9, 2u);
  }

  v10 = *(v3 + 40);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10047027C;
  *(v12 + 24) = v11;
  v16[4] = sub_10040B9F8;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10013FE14;
  v16[3] = &unk_10161E6D0;
  v13 = _Block_copy(v16);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046F53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v42);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 64);
  v44 = v9;
  if (v18)
  {
    v19 = *(*(v18 + 72) + 24);

    sub_10131ECB4();
    sub_1000BC488();
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v20 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v17, v13);
    v21 = swift_allocObject();
    *(v21 + 16) = v41;
    *(v21 + 24) = a3;
    v50 = sub_10041ABC0;
    v51 = v21;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_100006684;
    v49 = &unk_10161E770;
    v22 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v23 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v5 + 8))(v8, v23);
    (*(v43 + 8))(v12, v44);
  }

  else
  {
    v38 = a3;
    v39 = v12;
    v25 = v41;
    v24 = v42;
    v40 = v5;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177AD20);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = v24;
    v30 = v8;
    if (os_log_type_enabled(v27, v28))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "No session to stop discovery", v31, 2u);
    }

    sub_1000BC488();
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v32 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v17, v13);
    v33 = swift_allocObject();
    v34 = v38;
    *(v33 + 16) = v25;
    *(v33 + 24) = v34;
    v50 = sub_100470308;
    v51 = v33;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_100006684;
    v49 = &unk_10161E720;
    v35 = _Block_copy(&aBlock);

    v36 = v39;
    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v40 + 8))(v30, v29);
    (*(v43 + 8))(v36, v44);
  }
}

uint64_t sub_10046FB0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177AD20);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "UnknownDiscoveryService.fetchEncryptedPayload", v11, 2u);
  }

  v12 = *(v4 + 40);
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100470268;
  *(v14 + 24) = v13;
  v19[4] = sub_10040B9F8;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10013FE14;
  v19[3] = &unk_10161E608;
  v15 = _Block_copy(v19);

  v16 = a1;

  dispatch_sync(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046FD38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v25 = *(v12 - 8);
  v26 = v12;
  v13 = *(v25 + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 64))
  {

    sub_1010FCFCC(a4, a2, a3);
  }

  else
  {
    sub_1000BC488();
    (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
    v22 = static OS_dispatch_queue.global(qos:)();
    (*(v17 + 8))(v20, v16);
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    aBlock[4] = sub_100470274;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161E658;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v27 + 8))(v11, v8);
    (*(v25 + 8))(v15, v26);
  }
}

uint64_t sub_1004700D8(void (*a1)(char *))
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a1(v5);
  return sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
}

uint64_t sub_1004701E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_10046E70C(v1);
}

unint64_t sub_10047020C()
{
  result = qword_1016BC4C0;
  if (!qword_1016BC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC4C0);
  }

  return result;
}

uint64_t sub_100470288()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t type metadata accessor for FetchDevicesEndpoint()
{
  result = qword_1016A09C8;
  if (!qword_1016A09C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004703B0()
{
  result = type metadata accessor for URLComponents();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10047041C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URLComponents();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t getEnumTagSinglePayload for LocationSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004705D4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004707CC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1004706C4()
{
  result = qword_1016A0A00;
  if (!qword_1016A0A00)
  {
    sub_1000BC580(&qword_1016A0A08, qword_1013A3EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0A00);
  }

  return result;
}

unint64_t sub_100470728()
{
  result = qword_1016A0A10;
  if (!qword_1016A0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0A10);
  }

  return result;
}

unint64_t sub_1004707CC(unint64_t result)
{
  if (result >= 0x14)
  {
    return 20;
  }

  return result;
}

unint64_t sub_1004707DC()
{
  result = qword_1016A0A18;
  if (!qword_1016A0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0A18);
  }

  return result;
}

uint64_t sub_100470834(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 264))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100470888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100470928(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v25 = *v1;
  v7 = *v1;
  sub_10015049C(v8, v9);
  sub_1001022C4(&v25, v6);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v7, *(&v7 + 1));
    v24 = v1[2];
    v7 = v1[2];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v24, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v23 = v1[1];
    v7 = v1[1];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v23, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v22 = v1[3];
    v7 = v1[3];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v22, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v21 = v1[4];
    v7 = v1[4];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v21, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v20 = v1[5];
    v7 = v1[5];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v20, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v19 = v1[6];
    v7 = v1[6];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v19, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v18 = v1[7];
    v7 = v1[7];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v18, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v17 = v1[8];
    v7 = v1[8];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v17, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v16 = v1[9];
    v7 = v1[9];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v16, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v15 = v1[10];
    v7 = v1[10];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v15, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v14 = v1[11];
    v7 = v1[11];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v14, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v13 = v1[12];
    v7 = v1[12];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v13, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v6[0] = *(v1 + 208);
    sub_1000198E8();
    *&v7 = FixedWidthInteger.data.getter();
    *(&v7 + 1) = v5;
    sub_10015049C(v8, v9);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v12 = *(v1 + 216);
    v7 = *(v1 + 216);
    sub_10015049C(v8, v9);
    sub_1001022C4(&v12, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v11 = *(v1 + 232);
    v7 = *(v1 + 232);
    sub_10015049C(v8, v9);
    sub_1001022C4(&v11, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v10 = *(v1 + 248);
    v7 = *(v1 + 248);
    sub_10015049C(v8, v9);
    sub_1001022C4(&v10, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v7, *(&v7 + 1));
  return sub_100007BAC(v8);
}

void *sub_100471008@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1004710F0(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x108uLL);
  }

  return result;
}

unint64_t sub_10047106C(uint64_t a1)
{
  *(a1 + 8) = sub_10047109C();
  result = sub_100392A48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10047109C()
{
  result = qword_1016A0A20;
  if (!qword_1016A0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0A20);
  }

  return result;
}

uint64_t sub_1004710F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(&v146, v147);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_14;
  }

  v143 = v8;
  v148 = v9;
  sub_10015049C(&v146, v147);
  v141 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v142 = v10;
  sub_10015049C(&v146, v147);
  v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v13 = v12;
  v144 = v11;
  v145 = v12;
  sub_1000E0A3C();
  v140 = v11;
  if (DataProtocol.intValue.getter() < 1)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C448);
    sub_100017D5C(v11, v13);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      v144 = v140;
      v145 = v13;
      *(v25 + 4) = DataProtocol.intValue.getter();
      sub_100016590(v140, v13);
      _os_log_impl(&_mh_execute_header, v23, v24, "Invalid number of beacons: %ld", v25, 0xCu);
      v11 = v140;
    }

    else
    {
      sub_100016590(v11, v13);
    }

    v26 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for BinaryEncodingError.encodingError(_:), v26);
    swift_willThrow();
    v28 = v11;
    v29 = v13;
    goto LABEL_13;
  }

  v139 = v13;
  sub_10015049C(&v146, v147);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v15;
  v17 = v139;
  v144 = v140;
  v145 = v139;
  v18 = DataProtocol.intValue.getter();
  v19 = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v19 * 20) >> 64 != (20 * v19) >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (20 * v19 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v137 = v16;
  v138 = Data.subdata(in:)();
  v21 = v20;
  sub_10015049C(&v146, v147);
  v133 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v134 = v30;
  v135 = v14;
  v136 = v21;
  sub_10015049C(&v146, v147);
  v131 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v132 = v31;
  sub_10015049C(&v146, v147);
  v129 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v130 = v32;
  sub_10015049C(&v146, v147);
  v33 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v36 = v34;
  v37 = v33;
  sub_100017D5C(v33, v34);
  static Endianness.current.getter();
  sub_1002053B0();
  v128 = v37;
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v144 & 0x10000) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177C448);
    sub_100017D5C(v37, v36);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = v36;
    sub_100016590(v128, v36);
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v144 = v43;
      *v42 = 136315138;
      v44 = Data.hexString.getter();
      v46 = sub_1000136BC(v44, v45, &v144);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Invalid certs length: %s", v42, 0xCu);
      sub_100007BAC(v43);
    }

    v47 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v47 - 8) + 104))(v48, enum case for BinaryEncodingError.encodingError(_:), v47);
    swift_willThrow();
    v49 = v128;
    v50 = v41;
    goto LABEL_46;
  }

  v127 = v36;
  sub_100017D5C(v129, v130);
  sub_10002EA98(v144, v129, v130, &v144);
  v125 = v144;
  v126 = v145;
  sub_10015049C(&v146, v147);
  v123 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v124 = v51;
  sub_10015049C(&v146, v147);
  v122 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v17 = v52;
  sub_100017D5C(v122, v52);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v144 & 0x10000) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177C448);
    sub_100017D5C(v122, v17);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    sub_100016590(v122, v17);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v144 = v57;
      *v56 = 136315138;
      v58 = Data.hexString.getter();
      v60 = sub_1000136BC(v58, v59, &v144);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Invalid CSR length: %s", v56, 0xCu);
      sub_100007BAC(v57);
    }

    v61 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v61 - 8) + 104))(v62, enum case for BinaryEncodingError.encodingError(_:), v61);
    swift_willThrow();
    goto LABEL_45;
  }

  v63 = v144;
  sub_100017D5C(v123, v124);
  sub_10002EA98(v63, v123, v124, &v144);
  v120 = v144;
  v121 = v145;
  sub_10015049C(&v146, v147);
  v118 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v119 = v64;
  sub_10015049C(&v146, v147);
  v116 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v117 = v65;
  sub_100017D5C(v116, v65);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v144 & 0x100) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_1000076D4(v66, qword_10177C448);
    sub_100017D5C(v116, v117);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    sub_100016590(v116, v117);
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v144 = v70;
      *v69 = 136315138;
      v71 = Data.hexString.getter();
      v73 = sub_1000136BC(v71, v72, &v144);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "Invalid signature length: %s", v69, 0xCu);
      sub_100007BAC(v70);
    }

    v74 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v74 - 8) + 104))(v75, enum case for BinaryEncodingError.encodingError(_:), v74);
    swift_willThrow();
LABEL_44:
    sub_100016590(v116, v117);
    sub_100016590(v118, v119);
    sub_100016590(v120, v121);
LABEL_45:
    sub_100016590(v122, v17);
    sub_100016590(v123, v124);
    sub_100016590(v125, v126);
    v49 = v128;
    v50 = v127;
LABEL_46:
    sub_100016590(v49, v50);
    sub_100016590(v129, v130);
    sub_100016590(v131, v132);
    sub_100016590(v133, v134);
    sub_100016590(v138, v136);
    sub_100016590(v135, v137);
    v29 = v139;
    v28 = v140;
LABEL_13:
    sub_100016590(v28, v29);
    sub_100016590(v141, v142);
    sub_100016590(v143, v148);
LABEL_14:
    sub_100007BAC(&v146);
    return sub_100007BAC(a1);
  }

LABEL_36:
  v76 = v144;
  sub_100017D5C(v118, v119);
  sub_10002EA98(v76, v118, v119, &v144);
  v114 = v144;
  v115 = v145;
  sub_10015049C(&v146, v147);
  v112 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v113 = v77;
  sub_10015049C(&v146, v147);
  v110 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v111 = v78;
  sub_100017D5C(v110, v78);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v144 & 0x100) != 0 || (v79 = v144, v144 > 3u))
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_1000076D4(v84, qword_10177C448);
    sub_100017D5C(v110, v111);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    sub_100016590(v110, v111);
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v144 = v88;
      *v87 = 136315138;
      v89 = Data.hexString.getter();
      v91 = sub_1000136BC(v89, v90, &v144);

      *(v87 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v85, v86, "Invalid beaconPartId: %s", v87, 0xCu);
      sub_100007BAC(v88);
    }

    v92 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v92 - 8) + 104))(v93, enum case for BinaryEncodingError.encodingError(_:), v92);
    swift_willThrow();
    sub_100016590(v110, v111);
    sub_100016590(v112, v113);
    sub_100016590(v114, v115);
    goto LABEL_44;
  }

  sub_10015049C(&v146, v147);
  v80 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v109 = v81;
  v82 = v80;
  sub_10015049C(&v146, v147);
  v107 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v108 = v83;
  sub_10015049C(&v146, v147);
  v94 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v96 = v95;
  sub_100016590(v135, v137);
  sub_100016590(v110, v111);
  sub_100016590(v118, v119);
  sub_100016590(v123, v124);
  result = sub_100016590(v129, v130);
  v97 = v148 >> 62;
  if ((v148 >> 62) <= 1)
  {
    if (!v97)
    {
      v98 = BYTE6(v148);
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v97 != 2)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v99 = *(v143 + 16);
  v100 = *(v143 + 24);
  v101 = __OFSUB__(v100, v99);
  v98 = v100 - v99;
  if (v101)
  {
    __break(1u);
LABEL_54:
    LODWORD(v98) = HIDWORD(v143) - v143;
    if (__OFSUB__(HIDWORD(v143), v143))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v98 = v98;
  }

LABEL_56:
  if (v98 != 32)
  {
    goto LABEL_70;
  }

  v102 = v139 >> 62;
  if ((v139 >> 62) <= 1)
  {
    if (!v102)
    {
      v103 = BYTE6(v139);
      goto LABEL_66;
    }

LABEL_64:
    LODWORD(v103) = HIDWORD(v140) - v140;
    if (!__OFSUB__(HIDWORD(v140), v140))
    {
      v103 = v103;
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  if (v102 != 2)
  {
    goto LABEL_71;
  }

  v105 = *(v140 + 16);
  v104 = *(v140 + 24);
  v101 = __OFSUB__(v104, v105);
  v103 = v104 - v105;
  if (v101)
  {
    __break(1u);
    goto LABEL_64;
  }

LABEL_66:
  if (v103 == 1)
  {
    sub_100007BAC(&v146);
    result = sub_100007BAC(a1);
    v106 = v148;
    *a2 = v143;
    *(a2 + 8) = v106;
    *(a2 + 16) = v140;
    *(a2 + 24) = v139;
    *(a2 + 32) = v141;
    *(a2 + 40) = v142;
    *(a2 + 48) = v138;
    *(a2 + 56) = v136;
    *(a2 + 64) = v133;
    *(a2 + 72) = v134;
    *(a2 + 80) = v131;
    *(a2 + 88) = v132;
    *(a2 + 96) = v125;
    *(a2 + 104) = v126;
    *(a2 + 112) = v128;
    *(a2 + 120) = v127;
    *(a2 + 128) = v120;
    *(a2 + 136) = v121;
    *(a2 + 144) = v122;
    *(a2 + 152) = v17;
    *(a2 + 160) = v114;
    *(a2 + 168) = v115;
    *(a2 + 176) = v116;
    *(a2 + 184) = v117;
    *(a2 + 192) = v112;
    *(a2 + 200) = v113;
    *(a2 + 208) = v79;
    *(a2 + 216) = v82;
    *(a2 + 224) = v109;
    *(a2 + 232) = v107;
    *(a2 + 240) = v108;
    *(a2 + 248) = v94;
    *(a2 + 256) = v96;
    return result;
  }

LABEL_71:
  __break(1u);
  return result;
}

void sub_10047247C(uint64_t a1)
{
  v1 = a1;
  v38 = a1 & 0xC000000000000001;
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
    v45 = _swiftEmptyArrayStorage;
    sub_1011249A4(0, v2 & ~(v2 >> 63), 0);
    v40 = _swiftEmptyArrayStorage;
    if (v38)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v42 = v3;
    v43 = v4;
    v44 = v38 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v36 = v1 + 56;
      v35 = v1 + 64;
      v37 = v2;
      while (v6 < v2)
      {
        v8 = __OFADD__(v6, 1);
        v9 = v6 + 1;
        if (v8)
        {
          goto LABEL_36;
        }

        v39 = v9;
        v11 = v42;
        v10 = v43;
        v12 = v44;
        v13 = v1;
        sub_101133A88(v42, v43, v44, v1);
        v15 = v14;
        v16 = [v14 uniqueID];
        if (!v16)
        {
          goto LABEL_41;
        }

        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = v40;
        v45 = v40;
        v23 = v40[2];
        v22 = v40[3];
        if (v23 >= v22 >> 1)
        {
          sub_1011249A4((v22 > 1), v23 + 1, 1);
          v21 = v45;
        }

        v21[2] = v23 + 1;
        v24 = &v21[2 * v23];
        v24[4] = v18;
        v24[5] = v20;
        v40 = v21;
        if (v38)
        {
          if (!v12)
          {
            goto LABEL_42;
          }

          v1 = v13;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v37;
          v6 = v39;
          sub_1000BC4D4(&qword_1016A0AC8, &qword_1013A4880);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v41, 0);
          if (v39 == v37)
          {
LABEL_33:
            sub_1000BB408(v42, v43, v44);
            return;
          }
        }

        else
        {
          if (v12)
          {
            goto LABEL_43;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v13;
          v25 = 1 << *(v13 + 32);
          if (v11 >= v25)
          {
            goto LABEL_37;
          }

          v26 = v11 >> 6;
          v27 = *(v36 + 8 * (v11 >> 6));
          if (((v27 >> v11) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v13 + 36) != v10)
          {
            goto LABEL_39;
          }

          v28 = v27 & (-2 << (v11 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v11 & 0x7FFFFFFFFFFFFFC0;
            v2 = v37;
            v6 = v39;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v35 + 8 * v26);
            v2 = v37;
            v6 = v39;
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                sub_1000BB408(v11, v10, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_32;
              }
            }

            sub_1000BB408(v11, v10, 0);
          }

LABEL_32:
          v34 = *(v1 + 36);
          v42 = v25;
          v43 = v34;
          v44 = 0;
          if (v6 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

void sub_100472800(NSObject *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v95 = a3;
  v96 = a4;
  v97 = a1;
  v11 = sub_1000BC4D4(&unk_1016A0AE0, &unk_1013A4890);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v89 - v13;
  v15 = type metadata accessor for MessagingMessageContext();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v7[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C4F0);
    v32 = v7;
    v97 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v32;
      *v35 = v32;
      v36 = v32;
      _os_log_impl(&_mh_execute_header, v97, v33, "MessagingServiceDelegateTrampoline: No delegate for %@", v34, 0xCu);
      sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_44;
  }

  if (!v97)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177C4F0);
    v38 = v7;
    v97 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v38;
      *v41 = v38;
      v42 = v38;
      _os_log_impl(&_mh_execute_header, v97, v39, "MessagingServiceDelegateTrampoline: No service for %@", v40, 0xCu);
      sub_10000B3A8(v41, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  if (!a2)
  {
    v43 = qword_101695190;
    v97 = v97;
    if (v43 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_10177C4F0);
    v45 = v7;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&_mh_execute_header, v46, v47, "MessagingServiceDelegateTrampoline: No account for %@", v48, 0xCu);
      sub_10000B3A8(v49, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_43;
  }

  if (v96 >> 60 == 15)
  {
    v22 = qword_101695190;
    v23 = v97;
    v97 = a2;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177C4F0);
    v25 = v7;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "MessagingServiceDelegateTrampoline: No data for %@", v28, 0xCu);
      sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_unknownObjectRelease();

    goto LABEL_44;
  }

  v94 = Strong;
  if (!a6)
  {
    v62 = v97;
    v63 = a2;
    sub_10002E98C(v95, v96);
    goto LABEL_38;
  }

  v92 = *(v20 + 1);
  v93 = v97;
  v51 = a2;
  sub_10002E98C(v95, v96);

  v52 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v54)
  {
LABEL_38:
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177C4F0);
    v65 = v7;
    v46 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      *(v67 + 4) = v65;
      *v68 = v65;
      v69 = v65;
      _os_log_impl(&_mh_execute_header, v46, v66, "MessagingServiceDelegateTrampoline: No fromID for %@", v67, 0xCu);
      sub_10000B3A8(v68, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_100006654(v95, v96);
LABEL_43:
    swift_unknownObjectRelease();

LABEL_44:
    v70 = v97;
LABEL_45:

    return;
  }

  v55 = v54;
  if (!a7)
  {
    v71 = v51;

    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_1000076D4(v72, qword_10177C4F0);
    v73 = v7;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      *(v76 + 4) = v73;
      *v77 = v73;
      v78 = v73;
      _os_log_impl(&_mh_execute_header, v74, v75, "MessagingServiceDelegateTrampoline: No context for %@", v76, 0xCu);
      sub_10000B3A8(v77, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_100006654(v95, v96);
    swift_unknownObjectRelease();

    v70 = v93;
    goto LABEL_45;
  }

  v97 = v53;
  v91 = v52;
  v56 = qword_1016951A0;
  v57 = a7;
  v58 = v57;
  if (v56 != -1)
  {
    v57 = swift_once();
  }

  __chkstk_darwin(v57);
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v99)
  {
    v59 = v98;
  }

  else
  {
    v59 = 0xD000000000000011;
  }

  if (v99)
  {
    v60 = v99;
  }

  else
  {
    v60 = 0x8000000101355820;
  }

  v61 = v58;
  sub_100F54DB4(v61, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_100006654(v95, v96);
    swift_unknownObjectRelease();

    sub_10000B3A8(v14, &unk_1016A0AE0, &unk_1013A4890);
  }

  else
  {
    v90 = v59;
    sub_100476E9C(v14, v19);
    v79 = v51;
    v80 = [v79 uniqueID];
    if (v80)
    {
      v81 = v80;
      ObjectType = swift_getObjectType();
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v88 = ObjectType;
      v87 = v95;
      v86 = v96;
      (*(v92 + 24))(v90, v60, v83, v85, v95, v96, v91, v97, v55, v19, v88, v92);
      sub_100006654(v87, v86);

      swift_unknownObjectRelease();

      sub_100476F00(v19);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100473444(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v100 = a4;
  v101 = a6;
  v98[1] = a5;
  v12 = sub_1000BC4D4(&unk_1016A0AE0, &unk_1013A4890);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v98 - v14;
  v16 = type metadata accessor for MessagingMessageContext();
  v99 = *(v16 - 8);
  v17 = *(v99 + 64);
  __chkstk_darwin(v16);
  v19 = v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v98 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v104 = v24;
  v105 = v25;
  isa = v25[8].isa;
  __chkstk_darwin(v24);
  v103 = v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &v7[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v102 = Strong;
    if (a2)
    {
      v98[0] = *(v28 + 1);
      sub_1000D5660(a3, v23);
      v31 = v104;
      v30 = v105;
      if ((v105[6].isa)(v23, 1, v104) == 1)
      {
        v32 = a2;
        sub_10000B3A8(v23, &unk_101696AC0, &qword_101390A60);
        if (qword_101695190 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_1000076D4(v33, qword_10177C4F0);
        v34 = v7;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          *(v37 + 4) = v34;
          *v38 = v34;
          v39 = v34;
          _os_log_impl(&_mh_execute_header, v35, v36, "MessagingServiceDelegateTrampoline: No resourceURL for %@", v37, 0xCu);
          sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);
        }

        swift_unknownObjectRelease();

        return;
      }

      (v30[4].isa)(v103, v23, v31);
      if (v101)
      {
        if (a7)
        {
          if (v100)
          {
            if (a1)
            {
              v53 = qword_1016951A0;
              v54 = a7;
              v55 = a2;
              v56 = v55;
              if (v53 != -1)
              {
                v55 = swift_once();
              }

              __chkstk_darwin(v55);
              sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
              OSAllocatedUnfairLock.callAsFunction<A>(_:)();
              if (v107)
              {
                v57 = v106;
              }

              else
              {
                v57 = 0xD000000000000011;
              }

              if (v107)
              {
                v58 = v107;
              }

              else
              {
                v58 = 0x8000000101355820;
              }

              v59 = v54;
              sub_100F54DB4(v59, v15);
              if ((*(v99 + 48))(v15, 1, v16) == 1)
              {
                (v105[1].isa)(v103, v31);
                swift_unknownObjectRelease();

                sub_10000B3A8(v15, &unk_1016A0AE0, &unk_1013A4890);
                return;
              }

              v99 = v57;
              sub_100476E9C(v15, v19);
              v84 = v56;
              v85 = [v84 uniqueID];
              if (v85)
              {
                v86 = v85;
                v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v89 = v88;

                v100 = sub_100476954(v100);

                v90 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
                v101 = v92;
                if (v91)
                {
                  v93 = v90;
                  v94 = v91;
                  ObjectType = swift_getObjectType();
                  v96 = v58;
                  v97 = v103;
                  (*(v98[0] + 32))(v99, v96, v87, v89, v103, v100, v93, v101, v94, v19, ObjectType, v98[0]);

                  swift_unknownObjectRelease();

                  sub_100476F00(v19);
                  (v105[1].isa)(v97, v104);
                  return;
                }

                goto LABEL_58;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
LABEL_58:
            __break(1u);
            return;
          }

          v75 = qword_101695190;
          v76 = a7;
          v77 = a2;
          if (v75 != -1)
          {
            swift_once();
          }

          v78 = type metadata accessor for Logger();
          sub_1000076D4(v78, qword_10177C4F0);
          v79 = v7;
          v64 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v64, v80))
          {

            swift_unknownObjectRelease();
            v64 = v76;
            goto LABEL_47;
          }

          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *v81 = 138412290;
          *(v81 + 4) = v79;
          *v82 = v79;
          v83 = v79;
          _os_log_impl(&_mh_execute_header, v64, v80, "MessagingServiceDelegateTrampoline: No metadata for %@", v81, 0xCu);
          sub_10000B3A8(v82, &qword_10169BB30, &unk_10138B3C0);
          v30 = v105;

LABEL_46:
          swift_unknownObjectRelease();
LABEL_47:

          (v30[1].isa)(v103, v31);
          return;
        }

        v70 = qword_101695190;
        v61 = a2;
        if (v70 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_1000076D4(v71, qword_10177C4F0);
        v72 = v7;
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v66 = 138412290;
          *(v66 + 4) = v72;
          *v67 = v72;
          v73 = v72;
          v69 = "MessagingServiceDelegateTrampoline: No context for %@";
          goto LABEL_43;
        }
      }

      else
      {
        v60 = qword_101695190;
        v61 = a2;
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_1000076D4(v62, qword_10177C4F0);
        v63 = v7;
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v66 = 138412290;
          *(v66 + 4) = v63;
          *v67 = v63;
          v68 = v63;
          v69 = "MessagingServiceDelegateTrampoline: No fromID for %@";
LABEL_43:
          _os_log_impl(&_mh_execute_header, v64, v65, v69, v66, 0xCu);
          sub_10000B3A8(v67, &qword_10169BB30, &unk_10138B3C0);

          v74 = v61;
LABEL_45:

          goto LABEL_46;
        }
      }

      v74 = v64;
      v64 = v61;
      goto LABEL_45;
    }

    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177C4F0);
    v47 = v7;
    v105 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v105, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v47;
      *v50 = v47;
      v51 = v47;
      _os_log_impl(&_mh_execute_header, v105, v48, "MessagingServiceDelegateTrampoline: No account for %@", v49, 0xCu);
      sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177C4F0);
    v41 = v7;
    v105 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v105, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v41;
      *v44 = v41;
      v45 = v41;
      _os_log_impl(&_mh_execute_header, v105, v42, "MessagingServiceDelegateTrampoline: No delegate for %@", v43, 0xCu);
      sub_10000B3A8(v44, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  v52 = v105;
}

void sub_100474248(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5, NSObject *a6)
{
  v66 = a6;
  v65 = a5;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &ObjectType - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &ObjectType - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v6[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v64 = Strong;
      if (a4)
      {
        v63 = *(v20 + 1);
        v22 = a2;
        UUID.init(uuidString:)();
        if ((*(v16 + 48))(v14, 1, v15) == 1)
        {
          v23 = v22;
          sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
          if (qword_101695190 != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          sub_1000076D4(v24, qword_10177C4F0);

          v25 = v6;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v67[0] = v30;
            *v28 = 136315394;
            *(v28 + 4) = sub_1000136BC(a3, a4, v67);
            *(v28 + 12) = 2112;
            *(v28 + 14) = v25;
            *v29 = v25;
            v31 = v25;
            _os_log_impl(&_mh_execute_header, v26, v27, "MessagingServiceDelegateTrampoline: identifier [%s] is not a valid UUID for %@", v28, 0x16u);
            sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v30);
          }

          swift_unknownObjectRelease();

          return;
        }

        v53 = (*(v16 + 32))(v19, v14, v15);
        if (a1)
        {
          if (qword_1016951A0 != -1)
          {
            v53 = swift_once();
          }

          __chkstk_darwin(v53);
          sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v55 = v67[0];
          v54 = v67[1];
          v56 = v22;
          v57 = [v56 uniqueID];
          if (v57)
          {
            v58 = v57;
            if (!v54)
            {
              v54 = 0x8000000101355820;
              v55 = 0xD000000000000011;
            }

            ObjectType = swift_getObjectType();
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;

            (*(v63 + 8))(v55, v54, v59, v61, v19, v65 & 1, v66, ObjectType, v63);
            swift_unknownObjectRelease();

            (*(v16 + 8))(v19, v15);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v44 = qword_101695190;
      v66 = a2;
      if (v44 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177C4F0);
      v46 = v6;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v46;
        *v50 = v46;
        v51 = v46;
        _os_log_impl(&_mh_execute_header, v47, v48, "MessagingServiceDelegateTrampoline: No identifier for %@", v49, 0xCu);
        sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000076D4(v38, qword_10177C4F0);
      v39 = v6;
      v66 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        *(v41 + 4) = v39;
        *v42 = v39;
        v43 = v39;
        _os_log_impl(&_mh_execute_header, v66, v40, "MessagingServiceDelegateTrampoline: No account for %@", v41, 0xCu);
        sub_10000B3A8(v42, &qword_10169BB30, &unk_10138B3C0);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177C4F0);
    v33 = v6;
    v66 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v33;
      *v36 = v33;
      v37 = v33;
      _os_log_impl(&_mh_execute_header, v66, v34, "MessagingServiceDelegateTrampoline: No delegate for %@", v35, 0xCu);
      sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  v52 = v66;
}

void sub_100474B88(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a5;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v81 - v14;
  v16 = type metadata accessor for UUID();
  v85 = *(v16 - 8);
  isa = v85[8].isa;
  __chkstk_darwin(v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v6[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v83 = Strong;
      if (a4)
      {
        v82 = *(v20 + 1);
        v22 = a2;
        UUID.init(uuidString:)();
        v23 = v85;
        if ((v85[6].isa)(v15, 1, v16) == 1)
        {
          sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
          if (qword_101695190 != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          sub_1000076D4(v24, qword_10177C4F0);

          v25 = v6;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v30 = v22;
            v31 = swift_slowAlloc();
            v86 = v31;
            *v28 = 136315394;
            *(v28 + 4) = sub_1000136BC(a3, a4, &v86);
            *(v28 + 12) = 2112;
            *(v28 + 14) = v25;
            *v29 = v25;
            v32 = v25;
            _os_log_impl(&_mh_execute_header, v26, v27, "MessagingServiceDelegateTrampoline: identifier [%s] is not a valid UUID for %@", v28, 0x16u);
            sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v31);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          return;
        }

        (v23[4].isa)(v19, v15, v16);
        if (a6)
        {
          if (a1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v71 = IDSCopyLocalDeviceUniqueID();
          if (!v71)
          {
LABEL_43:
            if (qword_101695190 != -1)
            {
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            sub_1000076D4(v77, qword_10177C4F0);
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              *v80 = 0;
              _os_log_impl(&_mh_execute_header, v78, v79, "Ignoring IDSCopyLocalDeviceUniqueID() failed to return a value!", v80, 2u);

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            goto LABEL_38;
          }

          v72 = v71;
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          v86 = 0x3A656369766564;
          v87 = 0xE700000000000000;
          v76._countAndFlagsBits = v73;
          v76._object = v75;
          String.append(_:)(v76);

          v84 = v86;
          if (a1)
          {
LABEL_28:
            v54 = qword_1016951A0;

            if (v54 != -1)
            {
              v55 = swift_once();
            }

            __chkstk_darwin(v55);
            sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
            OSAllocatedUnfairLock.callAsFunction<A>(_:)();
            v56 = v86;
            if (!v87)
            {
              v56 = 0xD000000000000011;
            }

            v81 = v56;
            if (v87)
            {
              v57 = v87;
            }

            else
            {
              v57 = 0x8000000101355820;
            }

            v58 = v22;
            v59 = [v58 uniqueID];
            if (v59)
            {
              v60 = v59;
              v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v63 = v62;

              v64 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
              if (v66)
              {
                v67 = v64;
                v68 = v65;
                v69 = v66;
                ObjectType = swift_getObjectType();
                (*(v82 + 16))(v81, v57, v61, v63, v19, v67, v68, v69, ObjectType, v82);

                swift_unknownObjectRelease();

LABEL_38:
                (v85[1].isa)(v19, v16);
                return;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_43;
      }

      v45 = qword_101695190;
      v85 = a2;
      if (v45 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000076D4(v46, qword_10177C4F0);
      v47 = v6;
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
        _os_log_impl(&_mh_execute_header, v48, v49, "MessagingServiceDelegateTrampoline: No identifier for %@", v50, 0xCu);
        sub_10000B3A8(v51, &qword_10169BB30, &unk_10138B3C0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177C4F0);
      v40 = v6;
      v85 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        *(v42 + 4) = v40;
        *v43 = v40;
        v44 = v40;
        _os_log_impl(&_mh_execute_header, v85, v41, "MessagingServiceDelegateTrampoline: No account for %@", v42, 0xCu);
        sub_10000B3A8(v43, &qword_10169BB30, &unk_10138B3C0);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177C4F0);
    v34 = v6;
    v85 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v34;
      *v37 = v34;
      v38 = v34;
      _os_log_impl(&_mh_execute_header, v85, v35, "MessagingServiceDelegateTrampoline: No delegate for %@", v36, 0xCu);
      sub_10000B3A8(v37, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  v53 = v85;
}

void sub_100475688(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1004759D0(a2);
    if (v5)
    {
      sub_10047247C(v5);
      v7 = sub_10112A7D4(v6);

      if (a1)
      {

        if (qword_1016951A0 != -1)
        {
          v8 = swift_once();
        }

        __chkstk_darwin(v8);
        sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v9 = v23;
        if (v24)
        {
          v10 = v24;
        }

        else
        {
          v10 = 0x8000000101355820;
        }

        v11 = v2 + OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (!v24)
          {
            v9 = 0xD000000000000011;
          }

          v12 = *(v11 + 8);
          ObjectType = swift_getObjectType();
          (*(v12 + 40))(v9, v10, v7, ObjectType, v12);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C4F0);

  v22 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    if (a2)
    {
      v18 = v17;

      v19 = Set.description.getter();
      v21 = sub_1000136BC(v19, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v22, v15, "MessagingServiceDelegateTrampoline: Unable to convert accounts to Set<IDSAccount> %s", v16, 0xCu);
      sub_100007BAC(v18);

      return;
    }

    goto LABEL_23;
  }
}

void sub_1004759D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016A0AD0, &qword_1013A4888);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = sub_100476DA0();
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_100476DEC(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_100476E48(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_100D246D4(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 7);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_100476DEC(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_100476E48(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = NSObject._rawHashValue(seed:)(v2[5]);
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v10[8 * (v19 >> 6)]) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *&v10[8 * v20];
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*&v10[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v16;
      ++v2[2];
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

void sub_100475D70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_100514628(a2);
    if (v5)
    {
      if (!a1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v6 = v5;
      if (qword_1016951A0 != -1)
      {
        v5 = swift_once();
      }

      __chkstk_darwin(v5);
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (*(&v36[0] + 1))
      {
        v7 = *&v36[0];
      }

      else
      {
        v7 = 0xD000000000000011;
      }

      if (*(&v36[0] + 1))
      {
        v8 = *(&v36[0] + 1);
      }

      else
      {
        v8 = 0x8000000101355820;
      }

      v9 = v2 + OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {

        return;
      }

      v10 = *(v9 + 8);
      if (v6 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
LABEL_15:
          v34 = v8;
          sub_101124390(0, v11 & ~(v11 >> 63), 0);
          if ((v11 & 0x8000000000000000) == 0)
          {
            v12 = 0;
            do
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v13 = *(v6 + 8 * v12 + 32);
              }

              v14 = v13;
              sub_100E77148(v13, v36);

              v16 = _swiftEmptyArrayStorage[2];
              v15 = _swiftEmptyArrayStorage[3];
              if (v16 >= v15 >> 1)
              {
                sub_101124390((v15 > 1), v16 + 1, 1);
              }

              ++v12;
              _swiftEmptyArrayStorage[2] = v16 + 1;
              v17 = &_swiftEmptyArrayStorage[20 * v16];
              v18 = v36[1];
              v17[2] = v36[0];
              v17[3] = v18;
              v19 = v36[2];
              v20 = v36[3];
              v21 = v36[5];
              v17[6] = v36[4];
              v17[7] = v21;
              v17[4] = v19;
              v17[5] = v20;
              v22 = v36[6];
              v23 = v36[7];
              v24 = v36[9];
              v17[10] = v36[8];
              v17[11] = v24;
              v17[8] = v22;
              v17[9] = v23;
            }

            while (v11 != v12);

            v8 = v34;
            goto LABEL_35;
          }

          __break(1u);
          goto LABEL_37;
        }
      }

LABEL_35:
      ObjectType = swift_getObjectType();
      (*(v10 + 48))(v7, v8, _swiftEmptyArrayStorage, ObjectType, v10);

      swift_unknownObjectRelease();
      return;
    }
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177C4F0);

  v35 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v36[0] = v28;
    *v27 = 136315138;
    if (a2)
    {
      v29 = v28;

      v30 = Array.description.getter();
      v32 = sub_1000136BC(v30, v31, v36);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v35, v26, "MessagingServiceDelegateTrampoline: Unable to convert devices to [IDSDevice] %s", v27, 0xCu);
      sub_100007BAC(v29);

      return;
    }

    goto LABEL_38;
  }
}

void sub_10047622C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_100514628(a2);
    if (v5)
    {
      if (!a1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v6 = v5;
      if (qword_1016951A0 != -1)
      {
        v5 = swift_once();
      }

      __chkstk_darwin(v5);
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (*(&v36[0] + 1))
      {
        v7 = *&v36[0];
      }

      else
      {
        v7 = 0xD000000000000011;
      }

      if (*(&v36[0] + 1))
      {
        v8 = *(&v36[0] + 1);
      }

      else
      {
        v8 = 0x8000000101355820;
      }

      v9 = v2 + OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {

        return;
      }

      v10 = *(v9 + 8);
      if (v6 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
LABEL_15:
          v34 = v8;
          sub_101124390(0, v11 & ~(v11 >> 63), 0);
          if ((v11 & 0x8000000000000000) == 0)
          {
            v12 = 0;
            do
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v13 = *(v6 + 8 * v12 + 32);
              }

              v14 = v13;
              sub_100E77148(v13, v36);

              v16 = _swiftEmptyArrayStorage[2];
              v15 = _swiftEmptyArrayStorage[3];
              if (v16 >= v15 >> 1)
              {
                sub_101124390((v15 > 1), v16 + 1, 1);
              }

              ++v12;
              _swiftEmptyArrayStorage[2] = v16 + 1;
              v17 = &_swiftEmptyArrayStorage[20 * v16];
              v18 = v36[1];
              v17[2] = v36[0];
              v17[3] = v18;
              v19 = v36[2];
              v20 = v36[3];
              v21 = v36[5];
              v17[6] = v36[4];
              v17[7] = v21;
              v17[4] = v19;
              v17[5] = v20;
              v22 = v36[6];
              v23 = v36[7];
              v24 = v36[9];
              v17[10] = v36[8];
              v17[11] = v24;
              v17[8] = v22;
              v17[9] = v23;
            }

            while (v11 != v12);

            v8 = v34;
            goto LABEL_35;
          }

          __break(1u);
          goto LABEL_37;
        }
      }

LABEL_35:
      ObjectType = swift_getObjectType();
      (*(v10 + 56))(v7, v8, _swiftEmptyArrayStorage, ObjectType, v10);

      swift_unknownObjectRelease();
      return;
    }
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177C4F0);

  v35 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v36[0] = v28;
    *v27 = 136315138;
    if (a2)
    {
      v29 = v28;

      v30 = Array.description.getter();
      v32 = sub_1000136BC(v30, v31, v36);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v35, v26, "MessagingServiceDelegateTrampoline: Unable to convert devices to [IDSDevice] %s", v27, 0xCu);
      sub_100007BAC(v29);

      return;
    }

    goto LABEL_38;
  }
}

uint64_t sub_100476700(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  if (a4)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a1;
  a5(a3, v8);
}

id sub_1004768D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagingServiceDelegateTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100476954(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;

  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_100476DEC(*(v1 + 48) + 40 * v10, v37);
    sub_100013894(*(v1 + 56) + 32 * v10, v38);
    sub_100476DEC(v37, &v30);
    if (swift_dynamicCast())
    {
      v34 = v33;
      sub_100013894(v38, &v30);
      sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
      swift_dynamicCast();
    }

    else
    {
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177C4F0);
      sub_100476DEC(v37, &v30);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v29 = v8;
        v15 = swift_slowAlloc();
        *&v33 = v15;
        *v14 = 136446210;
        v16 = AnyHashable.description.getter();
        v18 = v17;
        sub_100476E48(&v30);
        v19 = sub_1000136BC(v16, v18, &v33);
        v1 = v28;

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "Dropping non-String metadata key: %{public}s", v14, 0xCu);
        sub_100007BAC(v15);
        v8 = v29;
      }

      else
      {

        sub_100476E48(&v30);
      }

      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
    }

    v5 &= v5 - 1;
    sub_10000B3A8(v37, &unk_1016A0AF0, &unk_1013A48A0);
    if (*(&v34 + 1))
    {
      v30 = v34;
      v31 = v35;
      v32 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100A5CDE8(0, v8[2] + 1, 1, v8);
      }

      v21 = v8[2];
      v20 = v8[3];
      if (v21 >= v20 >> 1)
      {
        v8 = sub_100A5CDE8((v20 > 1), v21 + 1, 1, v8);
      }

      v8[2] = v21 + 1;
      v22 = &v8[6 * v21];
      v23 = v30;
      v24 = v32;
      v22[3] = v31;
      v22[4] = v24;
      v22[2] = v23;
    }

    else
    {
      sub_10000B3A8(&v34, &unk_1016AD660, &unk_1013C3FE0);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_1000BC4D4(&qword_1016A0B08, &unk_1013C5390);
    v25 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v25 = _swiftEmptyDictionarySingleton;
  }

  v37[0] = v25;

  sub_1008D65E0(v26, 1, v37);

  return v37[0];
}

unint64_t sub_100476DA0()
{
  result = qword_1016A0AD8;
  if (!qword_1016A0AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016A0AD8);
  }

  return result;
}

uint64_t sub_100476E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagingMessageContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100476F00(uint64_t a1)
{
  v2 = type metadata accessor for MessagingMessageContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100476F5C(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a1)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C4F0);
    v23 = v6;
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, oslog, v24, "MessagingServiceDelegateTrampoline: No account for %@", v25, 0xCu);
      sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    v28 = qword_101695190;
    oslog = a1;
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C4F0);
    v30 = v6;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "MessagingServiceDelegateTrampoline: No session for %@", v33, 0xCu);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_20;
  }

  if (!a4)
  {
    v10 = a1;
    v37 = a1;
    v38 = a2;
    goto LABEL_22;
  }

  v10 = a1;
  v11 = a1;
  oslog = a2;

  v12 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v14)
  {
LABEL_22:
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177C4F0);
    v40 = v6;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "MessagingServiceDelegateTrampoline: No fromID for %@", v43, 0xCu);
      sub_10000B3A8(v44, &qword_10169BB30, &unk_10138B3C0);
    }

    v36 = v10;
    goto LABEL_32;
  }

  if (a6 >> 60 == 15)
  {

    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C4F0);
    v16 = v6;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "MessagingServiceDelegateTrampoline: No context for %@", v19, 0xCu);
      sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_31;
  }

  v56 = v12;
  v57 = v13;
  v46 = v14;
  v47 = &v6[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_31:

    v36 = v11;
    goto LABEL_32;
  }

  v48 = *(v47 + 1);
  v49 = v11;
  sub_10002E98C(a5, a6);
  v50 = [v49 uniqueID];
  if (!v50)
  {
    __break(1u);
    return;
  }

  v51 = v50;
  ObjectType = swift_getObjectType();
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  (*(v48 + 64))(v53, v55, oslog, v56, v57, v46, a5, a6, ObjectType, v48);
  swift_unknownObjectRelease();

  sub_100006654(a5, a6);

LABEL_20:
  v36 = oslog;
LABEL_32:
}

uint64_t sub_1004775B4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x657461446E616373;
    v5 = 0x797469726F697270;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = 0x6E6F697461636F6CLL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7942737574617473;
    if (a1 != 6)
    {
      v1 = 0xD000000000000015;
    }

    v2 = 0xD000000000000012;
    if (a1 != 4)
    {
      v2 = 0x656372756F73;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1004776E8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A0D48, &qword_1013A4AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100479598();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21[31] = 0;
  type metadata accessor for Date();
  sub_100479754(&unk_101697F60, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for BeaconPayloadFile.MetaData(0);
    v12 = v11[5];
    v21[30] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + v11[6]);
    v21[29] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21[28] = *(v3 + v11[7]);
    v21[27] = 3;
    sub_10047979C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    v16 = *(v14 + 8);
    v21[26] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21[25] = *(v3 + v11[9]);
    v21[24] = 5;
    sub_1004797F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + v11[10]);
    v21[15] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v11[11]);
    v21[14] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + v11[12]);
    v21[13] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100477A24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for Date();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v32 - v8;
  v9 = sub_1000BC4D4(&qword_1016A0D30, &qword_1013A4AC8);
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100479598();
  v39 = v13;
  v19 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100007BAC(a1);
  }

  v33 = v14;
  v40 = v17;
  v51 = 0;
  sub_100479754(&qword_101697F40, &type metadata accessor for Date);
  v20 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v40;
  v22 = v38;
  v38 = *(v35 + 32);
  (v38)(v40, v22, v3);
  v50 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v7;
  v24 = v33;
  (v38)(v21 + v33[5], v23, v3);
  v49 = 2;
  v25 = v21;
  *(v21 + v24[6]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v47 = 3;
  sub_1004795EC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v37;
  *(v25 + v24[7]) = v48;
  v46 = 4;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v25 + v24[8];
  *v28 = v27;
  *(v28 + 8) = v29 & 1;
  v44 = 5;
  sub_100479640();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v25 + v24[9]) = v45;
  v43 = 6;
  *(v25 + v24[10]) = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = 7;
  *(v25 + v24[11]) = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = 8;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v26 + 8))(v39, v20);
  *(v25 + v24[12]) = v30;
  sub_100479694(v25, v34);
  sub_100007BAC(a1);
  return sub_1004796F8(v25);
}

uint64_t sub_100477FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100479A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100477FD4(uint64_t a1)
{
  v2 = sub_100479598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100478010(uint64_t a1)
{
  v2 = sub_100479598();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100478130@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100033DEC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10047815C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData;
  v13 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate;
  v15 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL;
  (*(v5 + 16))(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL, a1, v4);
  v17 = sub_100479344();
  if (v18 >> 60 == 15)
  {
    type metadata accessor for BeaconPayloadFile(0);
    v19 = *(v5 + 8);
    v19(a1, v4);
    v19(v2 + v16, v4);
    sub_10000B3A8(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData, &unk_10169BA78, &unk_101395650);
    sub_10000B3A8(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate, &unk_1016980C0, &unk_10138F3A0);
    v20 = *(*v2 + 48);
    v21 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v22 = (v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement);
    *v22 = v17;
    v22[1] = v18;
    v23 = v17;
    v24 = v18;
    sub_100017D5C(v17, v18);
    URL.deletingLastPathComponent()();
    URL.deletingLastPathComponent()();
    sub_100006654(v23, v24);
    v25 = *(v5 + 8);
    v25(a1, v4);
    v25(v9, v4);
    (*(v5 + 32))(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_rootURL, v11, v4);
    v26 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData;
    v27 = type metadata accessor for BeaconPayloadFile.MetaData(0);
    (*(*(v27 - 8) + 56))(v2 + v26, 1, 1, v27);
  }

  return v2;
}

uint64_t sub_1004784B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&unk_10169BA78, &unk_101395650);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData;
  swift_beginAccess();
  sub_1000D2A70(v1 + v10, v9, &unk_10169BA78, &unk_101395650);
  v11 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_1000D2AD8(v9, a1, &qword_10169BA58, &unk_101395640);
  }

  sub_10000B3A8(v9, &unk_10169BA78, &unk_101395650);
  sub_1004786C0(v1, a1);
  sub_1000D2A70(a1, v7, &qword_10169BA58, &unk_101395640);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_10002311C(v7, v1 + v10, &unk_10169BA78, &unk_101395650);
  return swift_endAccess();
}

uint64_t sub_1004786C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-v6];
  v8 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D2A70(a1 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData, v7, &qword_10169BA58, &unk_101395640);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000B3A8(v7, &qword_10169BA58, &unk_101395640);
    v14 = URL.extendedAttribute(name:)();
    v16 = v15;
    v17 = type metadata accessor for PropertyListDecoder();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100479754(&qword_1016A0D68, type metadata accessor for BeaconPayloadFile.MetaData);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100016590(v14, v16);
  }

  else
  {
    sub_100479898(v7, v12);
    sub_100479898(v12, a2);
  }

  return (*(v9 + 56))(a2, 0, 1, v8);
}

uint64_t sub_10047895C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = sub_1000BC4D4(&unk_1016980C0, &unk_10138F3A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate;
  swift_beginAccess();
  sub_1000D2A70(v1 + v18, v17, &unk_1016980C0, &unk_10138F3A0);
  v19 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    return sub_1000D2AD8(v17, v27, &unk_101696900, &unk_10138B1E0);
  }

  sub_10000B3A8(v17, &unk_1016980C0, &unk_10138F3A0);
  sub_1004784B0(v10);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_10000B3A8(v10, &qword_10169BA58, &unk_101395640);
    v21 = type metadata accessor for Date();
    v22 = v27;
    (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  }

  else
  {
    sub_100479694(v10, v6);
    sub_10000B3A8(v10, &qword_10169BA58, &unk_101395640);
    v24 = type metadata accessor for Date();
    v25 = *(v24 - 8);
    v22 = v27;
    (*(v25 + 16))(v27, v6, v24);
    sub_1004796F8(v6);
    (*(v25 + 56))(v22, 0, 1, v24);
  }

  sub_1000D2A70(v22, v15, &unk_101696900, &unk_10138B1E0);
  (*(v20 + 56))(v15, 0, 1, v19);
  swift_beginAccess();
  sub_10002311C(v15, v1 + v18, &unk_1016980C0, &unk_10138F3A0);
  return swift_endAccess();
}

uint64_t sub_100478D50()
{
  v1 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_rootURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_100016590(*(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement), *(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement + 8));
  v3(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL, v2);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData, &qword_10169BA58, &unk_101395640);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData, &unk_10169BA78, &unk_101395650);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate, &unk_1016980C0, &unk_10138F3A0);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100478EB8()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_100479034();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1002ECE54(319, &qword_1016A0B78, &qword_10169BA58, &unk_101395640);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1002ECE54(319, &unk_1016A0B80, &unk_101696900, &unk_10138B1E0);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100479034()
{
  if (!qword_1016A0B70)
  {
    type metadata accessor for BeaconPayloadFile.MetaData(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A0B70);
    }
  }
}

void sub_1004790D4()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &unk_1016A0CD8);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_10169D5F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1004791C8()
{
  result = qword_1016A0D28;
  if (!qword_1016A0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D28);
  }

  return result;
}

uint64_t sub_10047921C(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v5 = v4[5];
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v6 = v4[8];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if ((v8 & 1) == 0)
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }

LABEL_11:
    if (*(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]) || *(a1 + v4[11]) != *(a2 + v4[11]))
    {
      return 0;
    }

    v11 = v4[12];
    v12 = *(a1 + v11);
    v13 = *(a2 + v11);
    if (v12 == 2)
    {
      if (v13 != 2)
      {
        return 0;
      }
    }

    else if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v10)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_100479344()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.deletingLastPathComponent()();
  v5 = URL.lastPathComponent.getter();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v14[0] = v5;
  v14[1] = v7;
  sub_1000DF96C();
  v8 = Data.init<A>(hexString:)();
  if (v9 >> 60 == 15)
  {
    return 0;
  }

  v10 = v8;
  v11 = v9;
  sub_100017D5C(v8, v9);
  sub_1004A4714(v10, v11, v14);
  sub_100006654(v10, v11);
  return v14[0];
}

unint64_t sub_100479598()
{
  result = qword_1016A0D38;
  if (!qword_1016A0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D38);
  }

  return result;
}

unint64_t sub_1004795EC()
{
  result = qword_1016A0D40;
  if (!qword_1016A0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D40);
  }

  return result;
}

unint64_t sub_100479640()
{
  result = qword_1016BA0E0;
  if (!qword_1016BA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0E0);
  }

  return result;
}

uint64_t sub_100479694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004796F8(uint64_t a1)
{
  v2 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100479754(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10047979C()
{
  result = qword_1016A0D50;
  if (!qword_1016A0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D50);
  }

  return result;
}

unint64_t sub_1004797F0()
{
  result = qword_1016A0D58;
  if (!qword_1016A0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D58);
  }

  return result;
}

unint64_t sub_100479844()
{
  result = qword_1016A0D60;
  if (!qword_1016A0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D60);
  }

  return result;
}

uint64_t sub_100479898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100479920()
{
  result = qword_1016A0D70;
  if (!qword_1016A0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D70);
  }

  return result;
}

unint64_t sub_100479978()
{
  result = qword_1016A0D78;
  if (!qword_1016A0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D78);
  }

  return result;
}

unint64_t sub_1004799D0()
{
  result = qword_1016A0D80;
  if (!qword_1016A0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D80);
  }

  return result;
}

unint64_t sub_100479A28()
{
  result = qword_1016A0D88;
  if (!qword_1016A0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D88);
  }

  return result;
}

uint64_t sub_100479A7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461446E616373 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001013559C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101347FC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7942737574617473 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013559E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101355A00 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t CryptoAdvertisementKeys.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CryptoAdvertisementKeys.publicKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoAdvertisementKeys() + 20);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for CryptoAdvertisementKeys()
{
  result = qword_1016A0E20;
  if (!qword_1016A0E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptoAdvertisementKeys.privateKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoAdvertisementKeys() + 24);
  v2 = *v1;
  sub_10002E98C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoAdvertisementKeys.advertisement.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoAdvertisementKeys() + 28);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

Swift::Int sub_100479EFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100479F90()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10047A010()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10047A0A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10047B320(*a1);
  *a2 = result;
  return result;
}

void sub_10047A0D0(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 68;
  v4 = 0xE200000000000000;
  v5 = 21072;
  if (*v1 != 2)
  {
    v5 = 65;
    v4 = 0xE100000000000000;
  }

  if (*v1)
  {
    v3 = 21840;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10047A120()
{
  v1 = 68;
  v2 = 21072;
  if (*v0 != 2)
  {
    v2 = 65;
  }

  if (*v0)
  {
    v1 = 21840;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10047A16C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10047B320(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10047A194(uint64_t a1)
{
  v2 = sub_10047A5E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10047A1D0(uint64_t a1)
{
  v2 = sub_10047A5E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CryptoAdvertisementKeys.encode(to:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A0D90, &qword_1013A4CC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v28 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10047A5E4();
  v13 = v29;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000BC4D4(&qword_1016A0DA0, &qword_1013A4CC8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138BBE0;
  DateInterval.start.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  *(v14 + 32) = v16;
  DateInterval.duration.getter();
  *(v14 + 40) = v17;
  v30 = v14;
  v32 = 0;
  sub_1000BC4D4(&qword_1016A0DA8, &qword_1013A4CD0);
  sub_10047AC58(&qword_1016A0DB0);
  v18 = v28[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v18)
  {
  }

  else
  {

    v19 = type metadata accessor for CryptoAdvertisementKeys();
    v20 = (v13 + v19[5]);
    v21 = v20[1];
    v30 = *v20;
    v31 = v21;
    v32 = 1;
    sub_100017D5C(v30, v21);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, v31);
    v22 = (v13 + v19[6]);
    v23 = v22[1];
    if (v23 >> 60 != 15)
    {
      v30 = *v22;
      v24 = v30;
      v31 = v23;
      v32 = 2;
      sub_10002E98C(v30, v23);
      sub_100017D5C(v24, v23);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v30, v31);
      sub_100006654(v24, v23);
      v13 = v29;
    }

    v25 = (v13 + v19[7]);
    v26 = v25[1];
    v30 = *v25;
    v31 = v26;
    v32 = 3;
    sub_100017D5C(v30, v26);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, v31);
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_10047A5E4()
{
  result = qword_1016A0D98;
  if (!qword_1016A0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D98);
  }

  return result;
}

uint64_t CryptoAdvertisementKeys.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A0DB8, &qword_1013A4CD8);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v11 = type metadata accessor for CryptoAdvertisementKeys();
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10047A5E4();
  v16 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100007BAC(a1);
  }

  v46 = v6;
  v49 = a1;
  v17 = v48;
  sub_1000BC4D4(&qword_1016A0DA8, &qword_1013A4CD0);
  v51 = 0;
  sub_10047AC58(&qword_1016A0DC0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v7;
  v19 = v50;
  v51 = 1;
  sub_1000E307C();
  v20 = v10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v19;
  v21 = v50;
  v51 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v43 = *(&v21 + 1);
  v22 = *(&v50 + 1);
  v44 = v50;
  v51 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  result = v20;
  v41 = v20;
  v42 = v21;
  v24 = v45;
  if (!*(v45 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v40 = v50;
  v25 = *(v45 + 32);
  result = Date.init(timeIntervalSinceReferenceDate:)();
  if (*(v24 + 16) < 2uLL)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v26 = v14;
  v27 = *(v24 + 40);

  DateInterval.init(start:duration:)();
  v28 = v22;
  v29 = v44;
  if (v22 >> 60 == 15)
  {
    v30 = 0;
    v31 = 0xF000000000000000;
  }

  else
  {
    sub_10002E98C(v44, v22);
    v30 = sub_10049BD68(v29, v22);
  }

  v32 = v43;
  v33 = (v26 + v11[6]);
  *v33 = v30;
  v33[1] = v31;
  v34 = v42;
  sub_100017D5C(v42, v32);
  v35 = sub_10049C0AC(v34, v32);
  v36 = v47;
  v37 = (v26 + v11[5]);
  *v37 = v35;
  v37[1] = v38;
  sub_100018000(v40, *(&v40 + 1), &v50);
  (*(v17 + 8))(v41, v18);
  sub_100006654(v44, v28);
  sub_100016590(v42, v32);
  *(v26 + v11[7]) = v50;
  sub_10047AFE4(v26, v36);
  sub_100007BAC(v49);
  return sub_10047B048(v26);
}

uint64_t sub_10047AC58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A0DA8, &qword_1013A4CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10047AFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptoAdvertisementKeys();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047B048(uint64_t a1)
{
  v2 = type metadata accessor for CryptoAdvertisementKeys();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10047B0A4()
{
  result = qword_10169D0F8;
  if (!qword_10169D0F8)
  {
    type metadata accessor for DateInterval();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0F8);
  }

  return result;
}

void sub_10047B124()
{
  type metadata accessor for DateInterval();
  if (v0 <= 0x3F)
  {
    sub_10047B1B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10047B1B8()
{
  if (!qword_1016A0E30)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A0E30);
    }
  }
}

unint64_t sub_10047B21C()
{
  result = qword_1016A0E68;
  if (!qword_1016A0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0E68);
  }

  return result;
}

unint64_t sub_10047B274()
{
  result = qword_1016A0E70;
  if (!qword_1016A0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0E70);
  }

  return result;
}

unint64_t sub_10047B2CC()
{
  result = qword_1016A0E78;
  if (!qword_1016A0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0E78);
  }

  return result;
}

unint64_t sub_10047B320(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608FD0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10047B36C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - v7;
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = [objc_opt_self() defaultManager];
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v12, v0);
  v13 = 1;
  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v1 + 8);
  v14(v5, v0);
  URL.appendingPathComponent(_:)();
  v14(v8, v0);
  URL.path.getter();
  v14(v10, v0);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v11 fileExistsAtPath:v15];

  if ((v16 & 1) == 0)
  {
    if (qword_101694C00 != -1)
    {
      swift_once();
    }

    sub_10088F30C(2, qword_10177BA50);
    URL.path.getter();
    v14(v10, v0);
    v17 = String._bridgeToObjectiveC()();

    v13 = [v11 fileExistsAtPath:v17];
  }

  return v13;
}

uint64_t sub_10047B664(uint64_t a1)
{
  *(a1 + 24) = 1;
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  *(v2 + 56) = &type metadata for Bool;
  *(v2 + 64) = &protocol witness table for Bool;
  *(v2 + 32) = 1;
  os_log(_:dso:log:_:_:)();

  v3 = *(a1 + 32);
  return PassthroughSubject.send(_:)();
}

uint64_t sub_10047B7AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  result = os_log(_:dso:log:_:_:)();
  *(a1 + 24) = 0;
  *a2 = 1;
  return result;
}

uint64_t sub_10047B858()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_10047B8D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A0FF8, "ڎ\v");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v1 + 16) = v9;
  *(v1 + 24) = 0;
  v10 = sub_1000BC4D4(&qword_1016A1000, &qword_1013F1BD0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v1 + 32) = PassthroughSubject.init()();
  *(v1 + 48) = &_swiftEmptySetSingleton;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v1 + 56) = v13;
  *(v1 + 64) = 1;
  *(v1 + 40) = a1;
  v14 = *(v1 + 16);
  v15 = *(a1 + 64);

  v19[1] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40);
  Publisher.filter(_:)();

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  sub_1000041A4(&qword_1016A1008, &qword_1016A0FF8, "ڎ\v");

  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_10047BBD0(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = *v1;
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v5 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2[5] = v5;
  v2[6] = *(v5 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v2;
  v6[1] = sub_10047BD60;

  return sub_10047C1D8(a1);
}

uint64_t sub_10047BD60()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_10047BED4, v4, 0);
  }

  else
  {
    v6 = v3[9];
    v5 = v3[10];
    v8 = v3[7];
    v7 = v3[8];
    v9 = v3[4];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_10047BED4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v24 = v0[12];
  v25 = v0[8];
  v18 = v0[5];
  v4 = v0[4];
  v20 = v0[6];
  v21 = v4;
  v23 = v0[3];
  v5 = v0[2];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  v22 = v1;
  v7(v1, 1, 1, v6);
  v19 = *(v5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1000D2A70(v2, v25, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v1, v3, &qword_1016980D0, &unk_10138F3B0);
  v9 = *(v18 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = (v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v9 + v11 + 8) & ~v9;
  v13 = (v12 + v20) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1000D2AD8(v25, v14 + v10, &qword_1016980D0, &unk_10138F3B0);
  *(v14 + v11) = v19;
  sub_1000D2AD8(v3, v14 + v12, &qword_1016980D0, &unk_10138F3B0);
  *(v14 + v12 + v20) = 2;
  *(v14 + v13 + 8) = v24;
  *(v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v21, &unk_1013A52A0, v14);

  sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();

  v15 = v0[1];
  v16 = v0[12];

  return v15();
}

uint64_t sub_10047C1D8(uint64_t a1)
{
  v2[135] = v1;
  v2[134] = a1;
  v3 = *(*(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8) + 64) + 15;
  v2[136] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v2[137] = swift_task_alloc();
  v5 = type metadata accessor for MACAddress();
  v2[138] = v5;
  v6 = *(v5 - 8);
  v2[139] = v6;
  v7 = *(v6 + 64) + 15;
  v2[140] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[141] = v8;
  v9 = *(v8 - 8);
  v2[142] = v9;
  v10 = *(v9 + 64) + 15;
  v2[143] = swift_task_alloc();
  v11 = type metadata accessor for PairingExecutorState();
  v2[144] = v11;
  v12 = *(v11 - 8);
  v2[145] = v12;
  v13 = *(v12 + 64) + 15;
  v2[146] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[147] = v14;
  v15 = *(v14 - 8);
  v2[148] = v15;
  v16 = *(v15 + 64) + 15;
  v2[149] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8) + 64) + 15;
  v2[150] = swift_task_alloc();
  v18 = type metadata accessor for AccessoryMetadata(0);
  v2[151] = v18;
  v19 = *(v18 - 8);
  v2[152] = v19;
  v20 = *(v19 + 64) + 15;
  v2[153] = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v2[154] = swift_task_alloc();
  v22 = type metadata accessor for AccessoryProductInfo();
  v2[155] = v22;
  v23 = *(v22 - 8);
  v2[156] = v23;
  v24 = *(v23 + 64) + 15;
  v2[157] = swift_task_alloc();

  return _swift_task_switch(sub_10047C560, v1, 0);
}
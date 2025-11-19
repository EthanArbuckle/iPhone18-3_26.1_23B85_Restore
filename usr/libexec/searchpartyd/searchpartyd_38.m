uint64_t sub_1003F4F58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for OwnedBeaconRecord();
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
          sub_100032504(v33, v47, type metadata accessor for OwnedBeaconRecord);
          v35 = v48;
          sub_100032504(v29, v48, type metadata accessor for OwnedBeaconRecord);
          v36 = *(v31 + 32);
          v37 = static Date.< infix(_:_:)();
          sub_10040A66C(v35, type metadata accessor for OwnedBeaconRecord);
          sub_10040A66C(v34, type metadata accessor for OwnedBeaconRecord);
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
        sub_100032504(a2, v47, type metadata accessor for OwnedBeaconRecord);
        v22 = v48;
        sub_100032504(a4, v48, type metadata accessor for OwnedBeaconRecord);
        v23 = *(v49 + 32);
        v24 = static Date.< infix(_:_:)();
        sub_10040A66C(v22, type metadata accessor for OwnedBeaconRecord);
        sub_10040A66C(v21, type metadata accessor for OwnedBeaconRecord);
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
  sub_10060AB44(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_1003F5488(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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
  v200 = type metadata accessor for OwnedBeaconRecord();
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
      sub_100032504(&v117[v116], v197, type metadata accessor for OwnedBeaconRecord);
      sub_100032504(v120, v205, type metadata accessor for OwnedBeaconRecord);
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
      sub_10040A66C(v205, type metadata accessor for OwnedBeaconRecord);
      sub_10040A66C(v197, type metadata accessor for OwnedBeaconRecord);
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
      sub_100032504(a2, v202, type metadata accessor for OwnedBeaconRecord);
      v207 = a4;
      sub_100032504(a4, v209, type metadata accessor for OwnedBeaconRecord);
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
      sub_10040A66C(v209, type metadata accessor for OwnedBeaconRecord);
      sub_10040A66C(v202, type metadata accessor for OwnedBeaconRecord);
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
  sub_10060AB44(&v213, &v212, &v211);
  return 1;
}

id sub_1003F6D78(uint64_t a1, uint64_t a2)
{
  v375 = a2;
  v321 = sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  v3 = *(*(v321 - 8) + 64);
  __chkstk_darwin(v321);
  v323 = &v310 - v4;
  v322 = type metadata accessor for KeyDropLostItemDates(0);
  v320 = *(v322 - 8);
  v5 = *(v320 + 64);
  __chkstk_darwin(v322);
  v315 = &v310 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v317 = &v310 - v9;
  v10 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v352 = &v310 - v12;
  v13 = type metadata accessor for SharedBeaconRecord(0);
  v331 = *(v13 - 8);
  v14 = *(v331 + 64);
  v15 = __chkstk_darwin(v13);
  v314 = &v310 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v310 - v18;
  v20 = __chkstk_darwin(v17);
  v318 = &v310 - v21;
  v319 = v22;
  __chkstk_darwin(v20);
  v353 = &v310 - v23;
  v24 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v316 = &v310 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v326 = &v310 - v28;
  v29 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v350 = &v310 - v31;
  v351 = type metadata accessor for OwnedBeaconRecord();
  v349 = *(v351 - 8);
  v32 = *(v349 + 64);
  __chkstk_darwin(v351);
  v327 = &v310 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v34 = *(*(v347 - 8) + 64);
  __chkstk_darwin(v347);
  v348 = &v310 - v35;
  v339 = type metadata accessor for BeaconNamingRecord();
  v346 = *(v339 - 8);
  v36 = *(v346 + 64);
  __chkstk_darwin(v339);
  v328 = &v310 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v345 = &v310 - v40;
  v344 = type metadata accessor for BeaconProductInfoRecord();
  v343 = *(v344 - 8);
  v41 = *(v343 + 64);
  __chkstk_darwin(v344);
  v325 = &v310 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v341 = &v310 - v45;
  v342 = type metadata accessor for KeyAlignmentRecord();
  v340 = *(v342 - 8);
  v46 = *(v340 + 64);
  __chkstk_darwin(v342);
  v324 = &v310 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v312 = &v310 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v338 = &v310 - v52;
  v334 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v53 = *(*(v334 - 8) + 64);
  v54 = __chkstk_darwin(v334);
  v337 = &v310 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v335 = (&v310 - v57);
  __chkstk_darwin(v56);
  v369 = &v310 - v58;
  v374 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v59 = *(*(v374 - 8) + 64);
  v60 = __chkstk_darwin(v374);
  v62 = &v310 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v361 = &v310 - v63;
  v64 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64 - 8);
  v373 = (&v310 - v66);
  v371 = type metadata accessor for Date();
  v362 = *(v371 - 8);
  v67 = *(v362 + 64);
  v68 = __chkstk_darwin(v371);
  v70 = &v310 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v68);
  v313 = &v310 - v72;
  v73 = __chkstk_darwin(v71);
  v336 = &v310 - v74;
  v75 = __chkstk_darwin(v73);
  v359 = &v310 - v76;
  __chkstk_darwin(v75);
  v355 = &v310 - v77;
  v78 = type metadata accessor for UUID();
  v357 = *(v78 - 8);
  v79 = *(v357 + 64);
  v80 = __chkstk_darwin(v78);
  v372 = &v310 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v360 = &v310 - v82;
  v387[3] = v13;
  v387[4] = sub_1003FD7F0(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
  v83 = sub_1000280DC(v387);
  sub_100032504(a1, v83, type metadata accessor for SharedBeaconRecord);
  v84 = [objc_allocWithZone(SPBeacon) init];
  v85 = *(v13 + 48);
  v86 = *(v83 + *(v13 + 44));
  v370 = v83;
  v358 = *(v83 + v85);
  v87 = sub_100314604(v86, v358);
  v365 = v13;
  v311 = v19;
  v310 = v70;
  v333 = v62;
  if (v88 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000076D4(v89, qword_10177BA08);
    sub_10001F280(v387, &v382);
    sub_10001F280(v387, &v377);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 134218240;
      v93 = *(sub_1000035D0(&v382, *(&v383 + 1)) + *(v13 + 44));
      sub_100007BAC(&v382);
      *(v92 + 4) = v93;
      *(v92 + 12) = 2048;
      v94 = *(sub_1000035D0(&v377, *(&v378 + 1)) + *(v13 + 48));
      sub_100007BAC(&v377);
      *(v92 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "Unable to create AccessoryProductData from %ld/%ld", v92, 0x16u);
    }

    else
    {
      sub_100007BAC(&v377);
      sub_100007BAC(&v382);
    }

    v100 = v371;
    UUID.init(uuid:)();
  }

  else
  {
    v95 = v87;
    v96 = v88;
    v97 = v78;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v382 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v99 = *(&v382 + 1);
    v98 = v382;
    v377 = v382;
    sub_100017D5C(v382, *(&v382 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v95, v96);
    sub_100016590(v98, v99);
    sub_100016590(v98, v99);
    v78 = v97;
    v100 = v371;
  }

  v101 = v365;
  v102 = v365[5];
  v103 = v370;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v84 setIdentifier:isa];

  v105 = (v103 + v101[9]);
  v106 = *v105;
  v107 = v105[1];
  v108 = String._bridgeToObjectiveC()();
  [v84 setModel:v108];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100405DEC();
  v109 = Set._bridgeToObjectiveC()().super.isa;
  [v84 setShares:v109];

  v110 = (v103 + v101[10]);
  v111 = *v110;
  v112 = v110[1];
  v113 = String._bridgeToObjectiveC()();
  [v84 setSystemVersion:v113];

  v114 = UUID._bridgeToObjectiveC()().super.isa;
  [v84 setProductUUID:v114];

  v332 = v86;
  [v84 setVendorId:v86];
  [v84 setProductId:v358];
  v115 = v355;
  sub_100A8AD0C(v355);
  v116 = Date._bridgeToObjectiveC()().super.isa;
  v117 = v100;
  v118 = v362 + 8;
  v366 = *(v362 + 8);
  v366(v115, v117);
  [v84 setPairingDate:v116];

  [v84 setType:sub_1011DBF4C()];
  v367 = v102;
  v119 = v373;
  sub_100ABD87C(v373);
  v120 = type metadata accessor for LostModeRecord();
  if ((*(*(v120 - 8) + 48))(v119, 1, v120) == 1)
  {
    sub_10000B3A8(v119, &unk_1016A99E0, &qword_1013A07B0);
    v121 = 0;
  }

  else
  {
    v121 = sub_100E78AA8();
    sub_10040A66C(v119, type metadata accessor for LostModeRecord);
  }

  v122 = v333;
  v123 = v374;
  v124 = v372;
  v368 = v118;
  [v84 setLostModeInfo:{v121, v310}];

  v125 = *(v123 + 48);
  v126 = v357;
  v127 = *(v357 + 16);
  v364 = v357 + 16;
  v363 = v127;
  v127(v124, v103 + v367, v78);
  v128 = v78;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v129 = v124;
  v130 = sub_100035730(v124, 0, 0);
  v131 = v361;
  v132 = &v361[v125];
  v133 = v375;
  v134 = sub_10003ABC0(v132, v129, v130, 1);

  v135 = *(v126 + 8);
  v354 = v128;
  v374 = v126 + 8;
  v373 = v135;
  (v135)(v129, v128);
  *v131 = v134 & 1;
  [v84 setConnected:?];
  sub_1000D2A70(v131, v122, &unk_1016AA420, &unk_1013BCFE0);
  v136 = *(v123 + 48);
  v137 = v362;
  v138 = *(v362 + 48);
  v139 = v371;
  v330 = v362 + 48;
  v329 = v138;
  v140 = 0;
  if (v138(v122 + v136, 1, v371) != 1)
  {
    v140 = Date._bridgeToObjectiveC()().super.isa;
    v366(v122 + v136, v139);
  }

  [v84 setConnectedStateExpiryDate:v140];

  [v84 setIsAppleAudioAccessory:{sub_100E0EA64(v332, v358)}];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v141 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107485C(v382);

  Date.init(timeIntervalSinceNow:)();
  v142 = *(v133 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v333 = 0;
  v143 = v382;
  sub_10001F280(v387, &v382);
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  sub_100031694(&v382, v144 + 24);
  v358 = v143;

  v145 = v369;
  unsafeFromAsyncTask<A>(_:)();

  v146 = v335;
  sub_1000D2A70(v145, v335, &unk_1016AF8A0, &unk_10139D7C0);
  v147 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v148 = *(*(v147 - 8) + 48);
  if (v148(v146, 1, v147) == 1)
  {
    v149 = v339;
    sub_10000B3A8(v146, &unk_1016AF8A0, &unk_10139D7C0);
    v150 = 1;
  }

  else
  {
    v149 = v339;
    v150 = *v146;
    sub_10000B3A8(v146, &unk_1016C8FC0, &unk_10139D7D0);
  }

  [v84 setKeySyncLastObservedIndex:v150];
  v151 = v337;
  sub_1000D2A70(v369, v337, &unk_1016AF8A0, &unk_10139D7C0);
  if (v148(v151, 1, v147) == 1)
  {
    sub_10000B3A8(v151, &unk_1016AF8A0, &unk_10139D7C0);
    v152 = v338;
    v153 = v371;
    (*(v137 + 56))(v338, 1, 1, v371);
    v154 = v336;
    sub_100A8AD0C(v336);
    v155 = v329(v152, 1, v153);
    v156 = v354;
    v157 = v375;
    if (v155 != 1)
    {
      sub_10000B3A8(v152, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v158 = v151 + *(v147 + 36);
    v159 = v338;
    v153 = v371;
    (*(v137 + 16))(v338, v158, v371);
    sub_10000B3A8(v151, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v137 + 56))(v159, 0, 1, v153);
    v160 = *(v137 + 32);
    v154 = v336;
    v160(v336, v159, v153);
    v156 = v354;
    v157 = v375;
  }

  v161 = Date._bridgeToObjectiveC()().super.isa;
  v162 = v154;
  v163 = v366;
  v366(v162, v153);
  [v84 setKeySyncLastIndexObservationDate:v161];

  [v84 setKeySyncWildIndexFallback:1];
  v164 = v372;
  v363(v372, v370 + v367, v156);
  v165 = *(v157 + 168);
  v166 = v341;
  sub_100B2DA4C(v341);
  (v373)(v164, v156);
  v167 = v342;
  if ((*(v340 + 48))(v166, 1, v342) == 1)
  {
    sub_10000B3A8(v166, &qword_10169F328, &unk_1013CB040);
    [v84 setKeyAlignmentLastObservedIndex:0];
    v168 = v355;
    static Date.distantPast.getter();
    v169 = Date._bridgeToObjectiveC()().super.isa;
    v163(v168, v153);
    [v84 setKeyAlignmentLastIndexObservationDate:v169];
  }

  else
  {
    v170 = v324;
    sub_10040A014(v166, v324, type metadata accessor for KeyAlignmentRecord);
    [v84 setKeyAlignmentLastObservedIndex:*(v170 + *(v167 + 28))];
    v171 = v170 + *(v167 + 32);
    v172 = Date._bridgeToObjectiveC()().super.isa;
    [v84 setKeyAlignmentLastIndexObservationDate:v172];

    sub_10040A66C(v170, type metadata accessor for KeyAlignmentRecord);
  }

  v173 = v149;
  v174 = v348;
  v175 = [v84 identifier];
  v176 = v372;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v177 = v345;
  v178 = v375;
  sub_100AC1584(v176, v345);
  (v373)(v176, v156);
  v179 = (*(v343 + 48))(v177, 1, v344);
  v356 = v84;
  if (v179 == 1)
  {
    sub_10000B3A8(v177, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v180 = v325;
    sub_10040A014(v177, v325, type metadata accessor for BeaconProductInfoRecord);
    v181 = sub_10083B890();
    [v84 setAccessoryProductInfo:v181];

    sub_10040A66C(v180, type metadata accessor for BeaconProductInfoRecord);
  }

  v182 = v372;
  v183 = (v363)(v372, v370 + v367, v156);
  v184 = *(v178 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v183);
  QueueSynchronizer.conditionalSync<A>(_:)();
  (v373)(v182, v156);
  v185 = v156;
  if ((*(v346 + 48))(v174, 1, v173) == 1)
  {
    sub_10000B3A8(v174, &unk_1016B29E0, &unk_1013B70E0);
    sub_10001F280(v387, &v376);
    v186 = swift_allocObject();
    *(v186 + 16) = v178;
    sub_100031694(&v376, v186 + 24);

    sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
    unsafeFromAsyncTask<A>(_:)();

    v382 = v377;
    v383 = v378;
    v384 = v379;
    v385 = v380;
    v187 = v381;
    v386 = v381;
    if (*(&v377 + 1))
    {
      v188 = v384;
      v189 = v383;
      v190 = String._bridgeToObjectiveC()();
      v191 = v356;
      [v356 setName:v190];

      v192 = sub_1012BD7E8(v189);
      v193 = v192;
      if (v189 == SPBeaconRoleIdOther && v188 && v192)
      {

        v194 = [v193 role];
        if (!v194)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v194 = String._bridgeToObjectiveC()();
        }

        v195 = objc_allocWithZone(SPBeaconRole);
        v196 = String._bridgeToObjectiveC()();

        v197 = [v195 initWithRoleId:v189 role:v194 roleEmoji:v196];

        [v191 setRole:v197];
      }

      else
      {
        [v191 setRole:v192];
      }

      v178 = v375;
      v214 = v351;
      v215 = v350;
      if (v187)
      {

        v216 = String._bridgeToObjectiveC()();
        sub_10000B3A8(&v382, &unk_1016AF910, &unk_10138C4C0);
      }

      else
      {
        sub_10000B3A8(&v382, &unk_1016AF910, &unk_10138C4C0);
        v216 = 0;
      }

      [v191 setSerialNumber:v216];

      v212 = v365;
      v213 = v352;
    }

    else
    {
      v191 = v356;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v217 = type metadata accessor for Logger();
      sub_1000076D4(v217, qword_10177BA08);
      sub_10001F280(v387, &v377);
      v218 = Logger.logObject.getter();
      v219 = static os_log_type_t.error.getter();
      v220 = os_log_type_enabled(v218, v219);
      v221 = v372;
      if (v220)
      {
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        *&v376 = v223;
        *v222 = 141558275;
        *(v222 + 4) = 1752392040;
        *(v222 + 12) = 2081;
        v224 = sub_1000035D0(&v377, *(&v378 + 1));
        v363(v221, &v224[v365[5]], v156);
        sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
        v225 = dispatch thunk of CustomStringConvertible.description.getter();
        v226 = v156;
        v228 = v227;
        (v373)(v221, v226);
        sub_100007BAC(&v377);
        v229 = sub_1000136BC(v225, v228, &v376);

        *(v222 + 14) = v229;
        _os_log_impl(&_mh_execute_header, v218, v219, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v222, 0x16u);
        sub_100007BAC(v223);
      }

      else
      {

        sub_100007BAC(&v377);
      }

      v213 = v352;
      v214 = v351;
      v215 = v350;
      v230 = String._bridgeToObjectiveC()();
      [v191 setName:v230];

      v212 = v365;
      v178 = v375;
    }
  }

  else
  {
    v198 = v328;
    sub_10040A014(v174, v328, type metadata accessor for BeaconNamingRecord);
    v199 = (v198 + v173[8]);
    v200 = *v199;
    v201 = v199[1];
    v202 = String._bridgeToObjectiveC()();
    [v356 setName:v202];

    v203 = *(v198 + v173[7]);
    v204 = sub_1012BD7E8(v203);
    v205 = v204;
    if (v203 == SPBeaconRoleIdOther && (v206 = (v198 + v173[9]), v206[1]) && v204)
    {
      v207 = *v206;
      v208 = [v204 role];
      if (!v208)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v208 = String._bridgeToObjectiveC()();
      }

      v209 = objc_allocWithZone(SPBeaconRole);
      v210 = String._bridgeToObjectiveC()();
      v211 = [v209 initWithRoleId:v203 role:v208 roleEmoji:v210];

      v191 = v356;
      [v356 setRole:v211];

      v178 = v375;
      v198 = v328;
    }

    else
    {
      v191 = v356;
      [v356 setRole:v204];
    }

    sub_10040A66C(v198, type metadata accessor for BeaconNamingRecord);
    v212 = v365;
    v213 = v352;
    v214 = v351;
    v215 = v350;
  }

  sub_10001F280(v387, &v382);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v231 = swift_dynamicCast();
  v232 = *(v349 + 56);
  if (!v231)
  {
    v232(v215, 1, 1, v214);
    sub_10000B3A8(v215, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v387, &v382);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000B3A8(v369, &unk_1016AF8A0, &unk_10139D7C0);
      v366(v359, v371);
      sub_10000B3A8(v361, &unk_1016AA420, &unk_1013BCFE0);
      (v373)(v360, v185);
      (*(v331 + 56))(v213, 1, 1, v212);
      sub_10000B3A8(v213, &unk_101698C30, &unk_101392630);
      goto LABEL_94;
    }

    (*(v331 + 56))(v213, 0, 1, v212);
    v238 = v213;
    v239 = v353;
    sub_10040A014(v238, v353, type metadata accessor for SharedBeaconRecord);
    v240 = String._bridgeToObjectiveC()();
    [v191 setStableIdentifier:v240];

    v241 = sub_100EB3708(*(v239 + v212[7]), *(v239 + v212[7] + 8), *(v239 + v212[7] + 16));
    [v191 setOwner:v241];

    [v191 setAccepted:*(v239 + v212[13])];
    v242 = (v239 + v212[8]);
    v243 = *v242;
    v244 = v242[1];
    v245 = String._bridgeToObjectiveC()();
    [v191 setCorrelationIdentifier:v245];

    [v191 setInternalShareType:*(v239 + v212[16])];
    v246 = v239 + v212[20];
    v247 = v317;
    sub_1000D2A70(v246, v317, &unk_1016AF890, &qword_1013926D0);
    v248 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v249 = v185;
    if ((*(*(v248 - 8) + 48))(v247, 1, v248) == 1)
    {
      sub_10000B3A8(v247, &unk_1016AF890, &qword_1013926D0);
      (*(v357 + 56))(v316, 1, 1, v185);
      v250 = 0;
    }

    else
    {
      v254 = v247 + *(v248 + 20);
      v255 = v316;
      sub_1000D2A70(v254, v316, &qword_1016980D0, &unk_10138F3B0);
      sub_10040A66C(v247, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if ((*(v357 + 48))(v255, 1, v185) == 1)
      {
        v250 = 0;
      }

      else
      {
        v256.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v257 = v255;
        v250 = v256.super.isa;
        (v373)(v257, v185);
      }
    }

    [v191 setOwnerBeaconIdentifier:v250];

    v258 = v318;
    sub_100032504(v353, v318, type metadata accessor for SharedBeaconRecord);
    v259 = (*(v331 + 80) + 24) & ~*(v331 + 80);
    v260 = swift_allocObject();
    *(v260 + 16) = v178;
    sub_10040A014(v258, v260 + v259, type metadata accessor for SharedBeaconRecord);

    v261 = v323;
    unsafeFromAsyncTask<A>(_:)();

    v262 = v322;
    if ((*(v320 + 48))(v261, 1, v322) == 1)
    {
      sub_10000B3A8(v261, &unk_101698C20, &qword_101390748);
    }

    else
    {
      v263 = v261;
      v264 = v262;
      v265 = v315;
      sub_10040A014(v263, v315, type metadata accessor for KeyDropLostItemDates);
      v266 = v265 + *(v264 + 20);
      v267 = v312;
      sub_1000D2A70(v266, v312, &unk_101696900, &unk_10138B1E0);
      v268 = v371;
      if (v329(v267, 1, v371) != 1)
      {
        v284 = v362;
        v285 = v313;
        (*(v362 + 32))(v313, v267, v268);
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v286 = type metadata accessor for Logger();
        sub_1000076D4(v286, qword_10177A560);
        v287 = v311;
        sub_100032504(v353, v311, type metadata accessor for SharedBeaconRecord);
        v288 = v310;
        (*(v284 + 16))(v310, v285, v268);
        v289 = Logger.logObject.getter();
        v290 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v289, v290))
        {
          v291 = v212;
          v292 = swift_slowAlloc();
          *&v382 = swift_slowAlloc();
          *v292 = 141558531;
          *(v292 + 4) = 1752392040;
          *(v292 + 12) = 2081;
          v293 = v291[5];
          sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
          v294 = dispatch thunk of CustomStringConvertible.description.getter();
          v296 = v295;
          sub_10040A66C(v287, type metadata accessor for SharedBeaconRecord);
          v297 = sub_1000136BC(v294, v296, &v382);

          *(v292 + 14) = v297;
          *(v292 + 22) = 2080;
          sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date);
          v298 = dispatch thunk of CustomStringConvertible.description.getter();
          v300 = v299;
          v301 = v288;
          v302 = v366;
          v366(v301, v371);
          v303 = sub_1000136BC(v298, v300, &v382);

          *(v292 + 24) = v303;
          _os_log_impl(&_mh_execute_header, v289, v290, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v292, 0x20u);
          swift_arrayDestroy();
          v304 = v302;
          v268 = v371;
        }

        else
        {

          v304 = v366;
          v366(v288, v268);
          sub_10040A66C(v287, type metadata accessor for SharedBeaconRecord);
          v185 = v354;
        }

        v305 = objc_allocWithZone(SPLostModeInfo);
        v306 = v313;
        v307 = Date._bridgeToObjectiveC()().super.isa;
        v308 = [v305 initWithMessage:0 email:0 phoneNumber:0 timestamp:v307];

        [v191 setLostModeInfo:v308];

        v304(v306, v268);
        sub_10040A66C(v315, type metadata accessor for KeyDropLostItemDates);
        sub_10000B3A8(v369, &unk_1016AF8A0, &unk_10139D7C0);
        v304(v359, v268);
        goto LABEL_92;
      }

      sub_10040A66C(v265, type metadata accessor for KeyDropLostItemDates);
      sub_10000B3A8(v267, &unk_101696900, &unk_10138B1E0);
      v249 = v354;
    }

    [v191 setLostModeInfo:0];
    v269 = v314;
    v270 = v371;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v271 = type metadata accessor for Logger();
    sub_1000076D4(v271, qword_10177A560);
    sub_100032504(v353, v269, type metadata accessor for SharedBeaconRecord);
    v272 = Logger.logObject.getter();
    v273 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v272, v273))
    {

      sub_10040A66C(v269, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v369, &unk_1016AF8A0, &unk_10139D7C0);
      v366(v359, v270);
      sub_10000B3A8(v361, &unk_1016AA420, &unk_1013BCFE0);
      v282 = v360;
      v283 = v249;
LABEL_93:
      (v373)(v282, v283);
      sub_10040A66C(v353, type metadata accessor for SharedBeaconRecord);
      goto LABEL_94;
    }

    v274 = v212;
    v275 = swift_slowAlloc();
    v276 = swift_slowAlloc();
    *&v382 = v276;
    *v275 = 141558275;
    *(v275 + 4) = 1752392040;
    *(v275 + 12) = 2081;
    v277 = v274[5];
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v278 = dispatch thunk of CustomStringConvertible.description.getter();
    v185 = v249;
    v280 = v279;
    sub_10040A66C(v269, type metadata accessor for SharedBeaconRecord);
    v281 = sub_1000136BC(v278, v280, &v382);

    *(v275 + 14) = v281;
    _os_log_impl(&_mh_execute_header, v272, v273, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v275, 0x16u);
    sub_100007BAC(v276);

    sub_10000B3A8(v369, &unk_1016AF8A0, &unk_10139D7C0);
    v366(v359, v270);
LABEL_92:
    sub_10000B3A8(v361, &unk_1016AA420, &unk_1013BCFE0);
    v282 = v360;
    v283 = v185;
    goto LABEL_93;
  }

  v232(v215, 0, 1, v214);
  v233 = v327;
  sub_10040A014(v215, v327, type metadata accessor for OwnedBeaconRecord);
  v234 = v233 + v214[6];
  sub_1010DA578();
  v235 = String._bridgeToObjectiveC()();

  [v191 setStableIdentifier:v235];

  v236 = v326;
  sub_1000D2A70(v233 + v214[7], v326, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v357 + 48))(v236, 1, v185) == 1)
  {
    v237 = 0;
  }

  else
  {
    v237 = UUID._bridgeToObjectiveC()().super.isa;
    (v373)(v236, v185);
  }

  [v191 setGroupIdentifier:v237];

  sub_100B0E4A8(v233);
  if (v251)
  {
    v252 = String._bridgeToObjectiveC()();
  }

  else
  {
    v252 = 0;
  }

  [v191 setSerialNumber:v252];

  [v191 setPartIdentifier:sub_100B0E7A8(v233)];
  [v191 setBatteryLevel:*(v233 + v214[19])];
  [v191 setIsZeus:*(v233 + v214[20])];
  if (qword_101694E80 != -1)
  {
    swift_once();
  }

  [v191 setOwner:qword_10177C088];
  [v191 setAccepted:1];
  v253 = String._bridgeToObjectiveC()();
  [v191 setCorrelationIdentifier:v253];

  [v191 setInternalShareType:-1];
  [v191 setOwnerBeaconIdentifier:0];

  sub_10040A66C(v233, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v369, &unk_1016AF8A0, &unk_10139D7C0);
  v366(v359, v371);
  sub_10000B3A8(v361, &unk_1016AA420, &unk_1013BCFE0);
  (v373)(v360, v185);
LABEL_94:
  sub_100007BAC(v387);
  return v191;
}

void *sub_1003F9EC4(uint64_t a1, uint64_t a2)
{
  v378 = a2;
  v326 = sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  v3 = *(*(v326 - 8) + 64);
  __chkstk_darwin(v326);
  v328 = &v313 - v4;
  v327 = type metadata accessor for KeyDropLostItemDates(0);
  v325 = *(v327 - 8);
  v5 = *(v325 + 64);
  __chkstk_darwin(v327);
  v320 = &v313 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v322 = &v313 - v9;
  v10 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v355 = &v313 - v12;
  v356 = type metadata accessor for SharedBeaconRecord(0);
  v334 = *(v356 - 8);
  v13 = *(v334 + 64);
  v14 = __chkstk_darwin(v356);
  v319 = &v313 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v313 - v17;
  v19 = __chkstk_darwin(v16);
  v323 = &v313 - v20;
  v324 = v21;
  __chkstk_darwin(v19);
  v357 = &v313 - v22;
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v321 = &v313 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v331 = &v313 - v27;
  v28 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v353 = &v313 - v30;
  v354 = type metadata accessor for OwnedBeaconRecord();
  v352 = *(v354 - 8);
  v31 = *(v352 + 64);
  __chkstk_darwin(v354);
  v332 = &v313 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v33 = *(*(v349 - 8) + 64);
  __chkstk_darwin(v349);
  v350 = &v313 - v34;
  v351 = type metadata accessor for BeaconNamingRecord();
  v348 = *(v351 - 8);
  v35 = *(v348 + 64);
  __chkstk_darwin(v351);
  v333 = &v313 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v347 = &v313 - v39;
  v346 = type metadata accessor for BeaconProductInfoRecord();
  v345 = *(v346 - 8);
  v40 = *(v345 + 64);
  __chkstk_darwin(v346);
  v330 = &v313 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v343 = &v313 - v44;
  v344 = type metadata accessor for KeyAlignmentRecord();
  v342 = *(v344 - 8);
  v45 = *(v342 + 64);
  __chkstk_darwin(v344);
  v329 = &v313 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v317 = &v313 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v341 = &v313 - v51;
  v337 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v52 = *(*(v337 - 8) + 64);
  v53 = __chkstk_darwin(v337);
  v340 = &v313 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v57 = &v313 - v56;
  __chkstk_darwin(v55);
  v371 = &v313 - v58;
  v59 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v60 = *(*(v59 - 8) + 64);
  v61 = __chkstk_darwin(v59);
  v336 = &v313 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v365 = &v313 - v63;
  v64 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64 - 8);
  v376 = &v313 - v66;
  v374 = type metadata accessor for Date();
  v358 = *(v374 - 8);
  v67 = *(v358 + 64);
  v68 = __chkstk_darwin(v374);
  v70 = &v313 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v68);
  v318 = &v313 - v72;
  v73 = __chkstk_darwin(v71);
  v339 = &v313 - v74;
  v75 = __chkstk_darwin(v73);
  v363 = &v313 - v76;
  __chkstk_darwin(v75);
  v359 = &v313 - v77;
  v78 = type metadata accessor for UUID();
  v360 = *(v78 - 8);
  v79 = *(v360 + 64);
  v80 = __chkstk_darwin(v78);
  v82 = &v313 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v364 = &v313 - v83;
  v84 = type metadata accessor for LocalFindableAccessoryRecord();
  v390[3] = v84;
  v390[4] = sub_1003FD7F0(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord);
  v85 = sub_1000280DC(v390);
  v372 = v85;
  sub_100032504(a1, v85, type metadata accessor for LocalFindableAccessoryRecord);
  v377 = [objc_allocWithZone(SPBeacon) init];
  v86 = *(v85 + v84[11]);
  v362 = *(v85 + v84[10]);
  v361 = v86;
  v87 = sub_100314604(v362, v86);
  v373 = v78;
  v315 = v18;
  v314 = v70;
  v338 = v57;
  v335 = v59;
  if (v88 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000076D4(v89, qword_10177BA08);
    sub_10001F280(v390, &v385);
    sub_10001F280(v390, &v380);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 134218240;
      v93 = *(sub_1000035D0(&v385, *(&v386 + 1)) + v84[10]);
      sub_100007BAC(&v385);
      *(v92 + 4) = v93;
      *(v92 + 12) = 2048;
      v94 = *(sub_1000035D0(&v380, *(&v381 + 1)) + v84[11]);
      sub_100007BAC(&v380);
      *(v92 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "Unable to create AccessoryProductData from %ld/%ld", v92, 0x16u);
    }

    else
    {
      sub_100007BAC(&v380);
      sub_100007BAC(&v385);
    }

    v99 = v374;
    UUID.init(uuid:)();
  }

  else
  {
    v95 = v87;
    v96 = v88;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v385 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v97 = *(&v385 + 1);
    v98 = v385;
    v380 = v385;
    sub_100017D5C(v385, *(&v385 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v95, v96);
    sub_100016590(v98, v97);
    sub_100016590(v98, v97);
    v78 = v373;
    v99 = v374;
  }

  v100 = v372;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v102 = v377;
  [v377 setIdentifier:isa];

  v103 = (v100 + v84[5]);
  v104 = *v103;
  v105 = v103[1];
  v106 = String._bridgeToObjectiveC()();
  [v102 setModel:v106];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100405DEC();
  v107 = Set._bridgeToObjectiveC()().super.isa;
  [v102 setShares:v107];

  v108 = (v100 + v84[6]);
  v109 = *v108;
  v110 = v108[1];
  v111 = String._bridgeToObjectiveC()();
  [v102 setSystemVersion:v111];

  v112 = v100;
  v113 = UUID._bridgeToObjectiveC()().super.isa;
  [v102 setProductUUID:v113];

  [v102 setVendorId:v362];
  [v102 setProductId:v361];
  v114 = *(v100 + v84[12]) / 1000.0;
  v115 = v359;
  Date.init(timeIntervalSince1970:)();
  v116 = Date._bridgeToObjectiveC()().super.isa;
  v117 = v358;
  v118 = *(v358 + 8);
  v369 = v358 + 8;
  v368 = v118;
  v118(v115, v99);
  [v102 setPairingDate:v116];

  [v102 setType:SPBeaconTypeLocalFindable];
  v119 = v376;
  sub_100ABD87C(v376);
  v120 = type metadata accessor for LostModeRecord();
  v121 = (*(*(v120 - 8) + 48))(v119, 1, v120);
  v370 = v82;
  if (v121 == 1)
  {
    sub_10000B3A8(v119, &unk_1016A99E0, &qword_1013A07B0);
    v122 = 0;
  }

  else
  {
    v122 = sub_100E78AA8();
    sub_10040A66C(v119, type metadata accessor for LostModeRecord);
  }

  v123 = v360;
  v124 = v335;
  v125 = v377;
  [v377 setLostModeInfo:v122];

  v126 = v124[12];
  v127 = *(v123 + 16);
  v128 = v370;
  v367 = v123 + 16;
  v366 = v127;
  v127(v370, v112, v78);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v129 = sub_100035730(v128, 0, 0);
  v130 = v365;
  v131 = sub_10003ABC0(&v365[v126], v128, v129, 1);

  v132 = *(v123 + 8);
  v376 = v123 + 8;
  v375 = v132;
  v132(v128, v78);
  *v130 = v131 & 1;
  [v125 setConnected:?];
  v133 = v336;
  sub_1000D2A70(v130, v336, &unk_1016AA420, &unk_1013BCFE0);
  v134 = v124[12];
  v135 = *(v117 + 48);
  v136 = v374;
  v137 = 0;
  if (v135(v133 + v134, 1, v374) != 1)
  {
    v137 = Date._bridgeToObjectiveC()().super.isa;
    v368(v133 + v134, v136);
  }

  v138 = v377;
  [v377 setConnectedStateExpiryDate:v137];

  [v138 setIsAppleAudioAccessory:{sub_100E0EA64(v362, v361)}];
  v139 = v339;
  v140 = v338;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v141 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107485C(v385);

  Date.init(timeIntervalSinceNow:)();
  v142 = *(v378 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v143 = v385;
  sub_10001F280(v390, &v385);
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  sub_100031694(&v385, v144 + 24);
  v362 = v143;

  v145 = v371;
  unsafeFromAsyncTask<A>(_:)();

  sub_1000D2A70(v145, v140, &unk_1016AF8A0, &unk_10139D7C0);
  v146 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v147 = *(*(v146 - 8) + 48);
  if (v147(v140, 1, v146) == 1)
  {
    sub_10000B3A8(v140, &unk_1016AF8A0, &unk_10139D7C0);
    v148 = 1;
  }

  else
  {
    v148 = *v140;
    sub_10000B3A8(v140, &unk_1016C8FC0, &unk_10139D7D0);
  }

  [v377 setKeySyncLastObservedIndex:v148];
  v149 = v340;
  sub_1000D2A70(v371, v340, &unk_1016AF8A0, &unk_10139D7C0);
  v150 = v147(v149, 1, v146);
  v316 = v117 + 48;
  v335 = v135;
  if (v150 == 1)
  {
    sub_10000B3A8(v149, &unk_1016AF8A0, &unk_10139D7C0);
    v151 = v341;
    v152 = v374;
    (*(v117 + 56))(v341, 1, 1, v374);
    Date.init(timeIntervalSince1970:)();
    v153 = v135(v151, 1, v152);
    v154 = v373;
    if (v153 != 1)
    {
      sub_10000B3A8(v151, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v155 = v149 + *(v146 + 36);
    v156 = v341;
    v152 = v374;
    (*(v117 + 16))(v341, v155, v374);
    sub_10000B3A8(v149, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v117 + 56))(v156, 0, 1, v152);
    (*(v117 + 32))(v139, v156, v152);
    v154 = v373;
  }

  v157 = Date._bridgeToObjectiveC()().super.isa;
  v158 = v368;
  v368(v139, v152);
  v159 = v377;
  [v377 setKeySyncLastIndexObservationDate:v157];

  [v159 setKeySyncWildIndexFallback:1];
  v160 = v370;
  v366(v370, v372, v154);
  v161 = *(v378 + 168);
  v162 = v343;
  sub_100B2DA4C(v343);
  v375(v160, v154);
  v163 = v344;
  if ((*(v342 + 48))(v162, 1, v344) == 1)
  {
    sub_10000B3A8(v162, &qword_10169F328, &unk_1013CB040);
    [v159 setKeyAlignmentLastObservedIndex:0];
    v164 = v359;
    static Date.distantPast.getter();
    v165 = Date._bridgeToObjectiveC()().super.isa;
    v158(v164, v152);
    [v159 setKeyAlignmentLastIndexObservationDate:v165];
  }

  else
  {
    v166 = v329;
    sub_10040A014(v162, v329, type metadata accessor for KeyAlignmentRecord);
    [v159 setKeyAlignmentLastObservedIndex:*(v166 + *(v163 + 28))];
    v167 = v166 + *(v163 + 32);
    v168 = Date._bridgeToObjectiveC()().super.isa;
    [v159 setKeyAlignmentLastIndexObservationDate:v168];

    sub_10040A66C(v166, type metadata accessor for KeyAlignmentRecord);
  }

  v169 = v350;
  v170 = v159;
  v171 = [v159 identifier];
  v172 = v370;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v173 = v347;
  sub_100AC1584(v172, v347);
  v375(v172, v154);
  if ((*(v345 + 48))(v173, 1, v346) == 1)
  {
    v174 = v170;
    sub_10000B3A8(v173, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v175 = v330;
    sub_10040A014(v173, v330, type metadata accessor for BeaconProductInfoRecord);
    v176 = sub_10083B890();
    v174 = v170;
    [v170 setAccessoryProductInfo:v176];

    sub_10040A66C(v175, type metadata accessor for BeaconProductInfoRecord);
  }

  v177 = v351;
  v178 = v373;
  v179 = (v366)(v172, v372, v373);
  v180 = v378;
  v181 = *(v378 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v179);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v375(v172, v178);
  if ((*(v348 + 48))(v169, 1, v177) != 1)
  {
    v195 = v333;
    sub_10040A014(v169, v333, type metadata accessor for BeaconNamingRecord);
    v196 = (v195 + v177[8]);
    v197 = *v196;
    v198 = v196[1];
    v199 = String._bridgeToObjectiveC()();
    v184 = v174;
    [v174 setName:v199];

    v200 = *(v195 + v177[7]);
    v201 = sub_1012BD7D0(v200);
    v202 = v201;
    if (v200 == SPBeaconRoleIdOther && (v203 = (v195 + v177[9]), v203[1]) && v201)
    {
      v204 = *v203;
      v205 = [v201 role];
      v191 = v354;
      if (!v205)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v205 = String._bridgeToObjectiveC()();
      }

      v206 = objc_allocWithZone(SPBeaconRole);
      v207 = String._bridgeToObjectiveC()();
      v208 = [v206 initWithRoleId:v200 role:v205 roleEmoji:v207];

      [v174 setRole:v208];
      v209 = v373;
      v210 = v374;
      v195 = v333;
    }

    else
    {
      [v174 setRole:v201];
      v191 = v354;
      v210 = v374;
      v209 = v373;
    }

    sub_10040A66C(v195, type metadata accessor for BeaconNamingRecord);
    v211 = v356;
    goto LABEL_58;
  }

  sub_10000B3A8(v169, &unk_1016B29E0, &unk_1013B70E0);
  sub_10001F280(v390, &v379);
  v182 = swift_allocObject();
  *(v182 + 16) = v180;
  sub_100031694(&v379, v182 + 24);

  sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
  unsafeFromAsyncTask<A>(_:)();

  v385 = v380;
  v386 = v381;
  v387 = v382;
  v388 = v383;
  v183 = v384;
  v389 = v384;
  v184 = v174;
  if (*(&v380 + 1))
  {
    v185 = v387;
    v186 = v386;
    v187 = String._bridgeToObjectiveC()();
    [v174 setName:v187];

    v188 = sub_1012BD7D0(v186);
    v189 = v188;
    if (v186 == SPBeaconRoleIdOther && v185 && v188)
    {

      v190 = [v189 role];
      v191 = v354;
      if (!v190)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v190 = String._bridgeToObjectiveC()();
      }

      v192 = objc_allocWithZone(SPBeaconRole);
      v193 = String._bridgeToObjectiveC()();

      v194 = [v192 initWithRoleId:v186 role:v190 roleEmoji:v193];

      v184 = v174;
      [v174 setRole:v194];
    }

    else
    {
      [v174 setRole:v188];
      v191 = v354;
    }

    v209 = v373;
    v210 = v374;
    v211 = v356;
    if (v183)
    {

      v212 = String._bridgeToObjectiveC()();
      sub_10000B3A8(&v385, &unk_1016AF910, &unk_10138C4C0);
    }

    else
    {
      sub_10000B3A8(&v385, &unk_1016AF910, &unk_10138C4C0);
      v212 = 0;
    }

    [v184 setSerialNumber:v212];

LABEL_58:
    v224 = v355;
    v225 = v353;
    goto LABEL_59;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v213 = type metadata accessor for Logger();
  sub_1000076D4(v213, qword_10177BA08);
  sub_10001F280(v390, &v380);
  v214 = Logger.logObject.getter();
  v215 = static os_log_type_t.error.getter();
  v216 = os_log_type_enabled(v214, v215);
  v191 = v354;
  v209 = v373;
  if (v216)
  {
    v217 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    *&v379 = v218;
    *v217 = 141558275;
    *(v217 + 4) = 1752392040;
    *(v217 + 12) = 2081;
    v219 = sub_1000035D0(&v380, *(&v381 + 1));
    v366(v172, v219, v373);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v220 = dispatch thunk of CustomStringConvertible.description.getter();
    v222 = v221;
    v375(v172, v373);
    sub_100007BAC(&v380);
    v223 = sub_1000136BC(v220, v222, &v379);

    *(v217 + 14) = v223;
    _os_log_impl(&_mh_execute_header, v214, v215, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v217, 0x16u);
    sub_100007BAC(v218);
    v209 = v373;
  }

  else
  {

    sub_100007BAC(&v380);
  }

  v210 = v374;
  v211 = v356;
  v224 = v355;
  v225 = v353;
  v256 = String._bridgeToObjectiveC()();
  [v174 setName:v256];

LABEL_59:
  sub_10001F280(v390, &v385);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v226 = swift_dynamicCast();
  v227 = *(v352 + 56);
  if (!v226)
  {
    v227(v225, 1, 1, v191);
    sub_10000B3A8(v225, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v390, &v385);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000B3A8(v371, &unk_1016AF8A0, &unk_10139D7C0);
      v368(v363, v210);
      sub_10000B3A8(v365, &unk_1016AA420, &unk_1013BCFE0);
      v375(v364, v209);
      (*(v334 + 56))(v224, 1, 1, v211);
      sub_10000B3A8(v224, &unk_101698C30, &unk_101392630);
      goto LABEL_95;
    }

    (*(v334 + 56))(v224, 0, 1, v211);
    v236 = v224;
    v237 = v357;
    sub_10040A014(v236, v357, type metadata accessor for SharedBeaconRecord);
    v238 = String._bridgeToObjectiveC()();
    [v184 setStableIdentifier:v238];

    v239 = sub_100EB3708(*(v237 + v211[7]), *(v237 + v211[7] + 8), *(v237 + v211[7] + 16));
    [v184 setOwner:v239];

    [v184 setAccepted:*(v237 + v211[13])];
    v240 = (v237 + v211[8]);
    v241 = *v240;
    v242 = v240[1];
    v243 = String._bridgeToObjectiveC()();
    [v184 setCorrelationIdentifier:v243];

    [v184 setInternalShareType:*(v237 + v211[16])];
    v244 = v237 + v211[20];
    v245 = v322;
    sub_1000D2A70(v244, v322, &unk_1016AF890, &qword_1013926D0);
    v246 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v246 - 8) + 48))(v245, 1, v246) == 1)
    {
      sub_10000B3A8(v245, &unk_1016AF890, &qword_1013926D0);
      (*(v360 + 56))(v321, 1, 1, v209);
      v247 = 0;
      v248 = v335;
    }

    else
    {
      v253 = v245 + *(v246 + 20);
      v254 = v321;
      sub_1000D2A70(v253, v321, &qword_1016980D0, &unk_10138F3B0);
      sub_10040A66C(v245, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v255 = (*(v360 + 48))(v254, 1, v209);
      v248 = v335;
      if (v255 == 1)
      {
        v247 = 0;
      }

      else
      {
        v257.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v258 = v254;
        v247 = v257.super.isa;
        v375(v258, v209);
      }
    }

    [v184 setOwnerBeaconIdentifier:v247];

    v259 = v323;
    sub_100032504(v357, v323, type metadata accessor for SharedBeaconRecord);
    v260 = (*(v334 + 80) + 24) & ~*(v334 + 80);
    v261 = swift_allocObject();
    *(v261 + 16) = v378;
    sub_10040A014(v259, v261 + v260, type metadata accessor for SharedBeaconRecord);

    v262 = v328;
    unsafeFromAsyncTask<A>(_:)();

    v263 = v327;
    if ((*(v325 + 48))(v262, 1, v327) == 1)
    {
      v264 = &unk_101698C20;
      v265 = &qword_101390748;
    }

    else
    {
      v266 = v262;
      v267 = v263;
      v268 = v320;
      sub_10040A014(v266, v320, type metadata accessor for KeyDropLostItemDates);
      v269 = v268 + *(v267 + 20);
      v262 = v317;
      sub_1000D2A70(v269, v317, &unk_101696900, &unk_10138B1E0);
      if ((v248)(v262, 1, v210) != 1)
      {
        v287 = v184;
        v288 = v358;
        v289 = v318;
        (*(v358 + 32))(v318, v262, v210);
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v290 = type metadata accessor for Logger();
        sub_1000076D4(v290, qword_10177A560);
        v291 = v315;
        sub_100032504(v357, v315, type metadata accessor for SharedBeaconRecord);
        v292 = v314;
        (*(v288 + 16))(v314, v289, v210);
        v293 = Logger.logObject.getter();
        v294 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v293, v294))
        {
          v295 = swift_slowAlloc();
          *&v385 = swift_slowAlloc();
          *v295 = 141558531;
          *(v295 + 4) = 1752392040;
          *(v295 + 12) = 2081;
          v296 = v211[5];
          sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
          v297 = dispatch thunk of CustomStringConvertible.description.getter();
          v299 = v298;
          sub_10040A66C(v291, type metadata accessor for SharedBeaconRecord);
          v300 = sub_1000136BC(v297, v299, &v385);

          *(v295 + 14) = v300;
          *(v295 + 22) = 2080;
          sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date);
          v301 = dispatch thunk of CustomStringConvertible.description.getter();
          v303 = v302;
          v304 = v368;
          v368(v292, v374);
          v305 = sub_1000136BC(v301, v303, &v385);
          v209 = v373;

          *(v295 + 24) = v305;
          _os_log_impl(&_mh_execute_header, v293, v294, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v295, 0x20u);
          swift_arrayDestroy();
          v210 = v374;
        }

        else
        {

          v306 = v368;
          v368(v292, v210);
          v307 = v291;
          v304 = v306;
          sub_10040A66C(v307, type metadata accessor for SharedBeaconRecord);
        }

        v308 = objc_allocWithZone(SPLostModeInfo);
        v309 = v318;
        v310 = Date._bridgeToObjectiveC()().super.isa;
        v311 = [v308 initWithMessage:0 email:0 phoneNumber:0 timestamp:v310];

        [v287 setLostModeInfo:v311];

        v304(v309, v210);
        sub_10040A66C(v320, type metadata accessor for KeyDropLostItemDates);
        sub_10000B3A8(v371, &unk_1016AF8A0, &unk_10139D7C0);
        v304(v363, v210);
        v184 = v287;
        goto LABEL_93;
      }

      sub_10040A66C(v268, type metadata accessor for KeyDropLostItemDates);
      v264 = &unk_101696900;
      v265 = &unk_10138B1E0;
    }

    sub_10000B3A8(v262, v264, v265);
    [v184 setLostModeInfo:0];
    v270 = v319;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v271 = type metadata accessor for Logger();
    sub_1000076D4(v271, qword_10177A560);
    sub_100032504(v357, v270, type metadata accessor for SharedBeaconRecord);
    v272 = Logger.logObject.getter();
    v273 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      v275 = v184;
      v276 = v210;
      v277 = swift_slowAlloc();
      *&v385 = v277;
      *v274 = 141558275;
      *(v274 + 4) = 1752392040;
      *(v274 + 12) = 2081;
      v278 = v211[5];
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
      v279 = dispatch thunk of CustomStringConvertible.description.getter();
      v280 = v209;
      v282 = v281;
      sub_10040A66C(v270, type metadata accessor for SharedBeaconRecord);
      v283 = sub_1000136BC(v279, v282, &v385);

      *(v274 + 14) = v283;
      _os_log_impl(&_mh_execute_header, v272, v273, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v274, 0x16u);
      sub_100007BAC(v277);

      sub_10000B3A8(v371, &unk_1016AF8A0, &unk_10139D7C0);
      v284 = v276;
      v184 = v275;
      v368(v363, v284);
      sub_10000B3A8(v365, &unk_1016AA420, &unk_1013BCFE0);
      v285 = v364;
      v286 = v280;
LABEL_94:
      v375(v285, v286);
      sub_10040A66C(v357, type metadata accessor for SharedBeaconRecord);
      goto LABEL_95;
    }

    sub_10040A66C(v270, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v371, &unk_1016AF8A0, &unk_10139D7C0);
    v368(v363, v210);
LABEL_93:
    sub_10000B3A8(v365, &unk_1016AA420, &unk_1013BCFE0);
    v285 = v364;
    v286 = v209;
    goto LABEL_94;
  }

  v227(v225, 0, 1, v191);
  v228 = v225;
  v229 = v209;
  v230 = v332;
  sub_10040A014(v228, v332, type metadata accessor for OwnedBeaconRecord);
  v231 = v230 + v191[6];
  sub_1010DA578();
  v232 = String._bridgeToObjectiveC()();

  [v184 setStableIdentifier:v232];

  v233 = v331;
  sub_1000D2A70(v230 + v191[7], v331, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v360 + 48))(v233, 1, v229) == 1)
  {
    v234 = v229;
    v235 = 0;
  }

  else
  {
    v235 = UUID._bridgeToObjectiveC()().super.isa;
    v234 = v229;
    v375(v233, v229);
  }

  v249 = v368;
  [v184 setGroupIdentifier:v235];

  sub_100B0E4A8(v230);
  if (v250)
  {
    v251 = String._bridgeToObjectiveC()();
  }

  else
  {
    v251 = 0;
  }

  [v184 setSerialNumber:v251];

  [v184 setPartIdentifier:sub_100B0E7A8(v230)];
  [v184 setBatteryLevel:*(v230 + v191[19])];
  [v184 setIsZeus:*(v230 + v191[20])];
  if (qword_101694E80 != -1)
  {
    swift_once();
  }

  [v184 setOwner:qword_10177C088];
  [v184 setAccepted:1];
  v252 = String._bridgeToObjectiveC()();
  [v184 setCorrelationIdentifier:v252];

  [v184 setInternalShareType:-1];
  [v184 setOwnerBeaconIdentifier:0];

  sub_10040A66C(v230, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v371, &unk_1016AF8A0, &unk_10139D7C0);
  v249(v363, v210);
  sub_10000B3A8(v365, &unk_1016AA420, &unk_1013BCFE0);
  v375(v364, v234);
LABEL_95:
  sub_100007BAC(v390);
  return v184;
}

uint64_t sub_1003FCFF8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v85) = a4;
  v61 = a3;
  v83 = a2;
  v79 = type metadata accessor for SystemInfo.DeviceLockState();
  v5 = *(v79 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v79);
  v78 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v77 = &v56[-v9];
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v56[-v12];
  v75 = type metadata accessor for OwnedBeaconRecord();
  v14 = *(v75 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v75);
  v58 = &v56[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = v17;
  __chkstk_darwin(v16);
  v19 = &v56[-v18];
  v20 = type metadata accessor for UUID();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a1 + 56;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 56);
  v29 = (v26 + 63) >> 6;
  v71 = v22 + 16;
  v70 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v68 = (v5 + 8);
  v69 = (v5 + 104);
  v63 = (v14 + 48);
  v57 = v85 & 1;
  v60 = v14;
  v62 = (v14 + 56);
  v73 = v22;
  v66 = (v22 + 8);
  v80 = a1;

  v31 = 0;
  v65 = xmmword_101385D80;
  v72 = v29;
  v76 = v13;
  v64 = v19;
  v74 = v20;
  v82 = v24;
  v67 = a1 + 56;
  while (v28)
  {
LABEL_12:
    (*(v73 + 16))(v24, *(v80 + 48) + *(v73 + 72) * (__clz(__rbit64(v28)) | (v31 << 6)), v20);
    v85 = *(v83 + 280);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v34 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = v65;
    v36 = UUID.uuidString.getter();
    v38 = v37;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_100008C00();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v84 = v34;
    os_log(_:dso:log:_:_:)();

    v39 = v77;
    static SystemInfo.lockState.getter();
    v41 = v78;
    v40 = v79;
    (*v69)(v78, v70, v79);
    sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v36) = dispatch thunk of static Equatable.== infix(_:_:)();
    v42 = *v68;
    (*v68)(v41, v40);
    v42(v39, v40);
    if (v36)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v32 = v76;
      (*v62)(v76, 1, 1, v75);
      v20 = v74;
      v24 = v82;
LABEL_5:
      v25 = v67;
      sub_10000B3A8(v32, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_6;
    }

    v43 = sub_100025044();
    __chkstk_darwin(v43);
    v44 = v81;
    v24 = v82;
    *&v56[-16] = v82;
    v32 = v76;
    sub_1012BBBD0(sub_10040B9D8, v43, v76);
    v81 = v44;

    v45 = (*v63)(v32, 1, v75);
    v46 = v64;
    if (v45 == 1)
    {
      v20 = v74;
      goto LABEL_5;
    }

    sub_10040A014(v32, v64, type metadata accessor for OwnedBeaconRecord);
    v47 = v58;
    sub_100032504(v46, v58, type metadata accessor for OwnedBeaconRecord);
    v48 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v49 = v48 + v59;
    v50 = swift_allocObject();
    *(v50 + 16) = v83;
    sub_10040A014(v47, v50 + v48, type metadata accessor for OwnedBeaconRecord);
    *(v50 + v49) = v57;
    v51 = sub_1000BC4D4(&qword_10169F3D0, &qword_1013A08A0);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();

    Future.init(_:)();
    v54 = v61;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v25 = v67;
    if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v55 = *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_10040A66C(v64, type metadata accessor for OwnedBeaconRecord);
    v20 = v74;
    v24 = v82;
LABEL_6:
    v28 &= v28 - 1;
    result = (*v66)(v24, v20);
    v29 = v72;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v29)
    {
    }

    v28 = *(v25 + 8 * v33);
    ++v31;
    if (v28)
    {
      v31 = v33;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FD7F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003FD838()
{
  result = qword_1016B26C0;
  if (!qword_1016B26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B26C0);
  }

  return result;
}

uint64_t sub_1003FD88C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1003FD8B4(char *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1003E539C(a1, v5, v6, v1 + v4, v8, v9);
}

id sub_1003FD95C(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1003E5534(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003FD9D8()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003E1B90(v4, v0 + v3, v6, v7);
}

id sub_1003FDAF4(int a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1003E2184(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1003FDBCC(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003E4650(a1, v1 + v4, v7, v9, v10, v11);
}

uint64_t sub_1003FDC88()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 16);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1003FDD48(uint64_t a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003E4838(a1, v1 + v4, v7, v9, v10, v11);
}

unint64_t sub_1003FDE68()
{
  result = qword_10169F310;
  if (!qword_10169F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F310);
  }

  return result;
}

uint64_t sub_1003FDEBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003E44D0(v2, v3);
}

uint64_t sub_1003FDF54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003E3894(v2, v3);
}

uint64_t sub_1003FDFF0(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1003E3A04(a1, v6, v7, v1 + v5);
}

uint64_t sub_1003FE0E0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_1003FE130()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1011663F8(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1003FE1F4()
{
  v1 = *(type metadata accessor for OSSignpostID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v6);
  v9 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003ED190(v0 + v2, v7, v0 + v5, v8, v9);
}

uint64_t sub_1003FE308(uint64_t a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v7 = ((v5 & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  return sub_1003ED538(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), v1 + v7, *(v1 + v8), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + (((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

void *sub_1003FE438(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v53 = type metadata accessor for UUID();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v53);
  v51 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v7;
  __chkstk_darwin(v6);
  v50 = v40 - v8;
  v9 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v9)
  {
    v40[1] = v2;
    v57 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = a1 + 56;
    v12 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v13 = v4;
    v14 = result;
    v15 = 0;
    v16 = *(a1 + 36);
    v46 = v13 + 32;
    v47 = v13 + 16;
    v48 = a1;
    v49 = v13;
    v44 = v9;
    v45 = v13 + 8;
    v41 = a1 + 64;
    v42 = v16;
    v43 = a1 + 56;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_21;
      }

      if (v16 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v55 = v15;
      v56 = 1 << v14;
      v20 = v49;
      v19 = v50;
      v21 = *(a1 + 48) + *(v49 + 72) * v14;
      v22 = *(v49 + 16);
      v23 = v53;
      v22(v50, v21, v53);
      v24 = v51;
      v22(v51, v19, v23);
      v25 = (*(v20 + 80) + 24) & ~*(v20 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v54;
      (*(v20 + 32))(v26 + v25, v24, v23);
      v27 = sub_1000BC4D4(&qword_10169F350, &qword_1013A0808);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();

      Future.init(_:)();
      v30 = v23;
      a1 = v48;
      (*(v20 + 8))(v19, v30);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = v57[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v17 = 1 << *(a1 + 32);
      if (v14 >= v17)
      {
        goto LABEL_23;
      }

      v11 = v43;
      v32 = v44;
      v33 = *(v43 + 8 * v18);
      if ((v33 & v56) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v16) = v42;
      if (v42 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v34 = v33 & (-2 << (v14 & 0x3F));
      if (v34)
      {
        v17 = __clz(__rbit64(v34)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v18 << 6;
        v36 = v18 + 1;
        v37 = (v41 + 8 * v18);
        while (v36 < (v17 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_1000BB408(v14, v42, 0);
            v17 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_1000BB408(v14, v42, 0);
      }

LABEL_4:
      v15 = v55 + 1;
      v14 = v17;
      if (v55 + 1 == v32)
      {
        return v57;
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

  return result;
}

double sub_1003FE810@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = [a1 ecid];
  if (!v12)
  {
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    goto LABEL_37;
  }

  v13 = v12;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = [a1 chipId];
  if (!v17)
  {
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    goto LABEL_35;
  }

  v18 = v17;
  v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [a1 serialNumber];
  if (!v21)
  {
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v46 = v69;
    v47 = v20;
    goto LABEL_34;
  }

  v68 = v20;
  v22 = v21;
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [a1 systemVersion];
  if (!v25)
  {

    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    goto LABEL_33;
  }

  v67 = v16;
  v26 = v25;
  *&v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = [a1 payloadSignature];
  if (!v29)
  {

    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    goto LABEL_25;
  }

  *(&v64 + 1) = v28;
  v30 = v29;
  *&v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v65 + 1) = v31;

  v32 = [a1 attestation];
  if (!v32)
  {

    static os_log_type_t.error.getter();
    v16 = v67;
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    goto LABEL_32;
  }

  v33 = v32;
  *&v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = v34;

  v35 = [a1 systemPublicKey];
  v16 = v67;
  if (!v35)
  {

    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100016590(v63, *(&v63 + 1));
LABEL_32:
    sub_100016590(v65, *(&v65 + 1));
LABEL_33:
    v47 = v68;
    v46 = v69;
LABEL_34:
    sub_100016590(v46, v47);
LABEL_35:
    v48 = v14;
    v49 = v16;
    goto LABEL_36;
  }

  v36 = v35;
  v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v38;

  v39 = [a1 refKeyPublicKey];
  if (!v39)
  {

    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100016590(v37, v62);
    sub_100016590(v63, *(&v63 + 1));
    sub_100016590(v65, *(&v65 + 1));
LABEL_25:
    sub_100016590(v69, v68);
    v48 = v14;
    v49 = v67;
LABEL_36:
    sub_100016590(v48, v49);
LABEL_37:
    sub_100408020(&v82);
    goto LABEL_38;
  }

  v40 = v39;
  v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v42;
  v61 = v41;

  v59 = [a1 productId];
  v58 = [a1 vendorId];
  v43 = [a1 nonce];
  v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v45;

  *&v70 = v14;
  *(&v70 + 1) = v67;
  *&v71 = v69;
  *(&v71 + 1) = v68;
  *&v72 = v66;
  *(&v72 + 1) = v24;
  *&v73 = v59;
  *(&v73 + 1) = v58;
  v74 = v64;
  v75 = v65;
  v76 = v63;
  *&v77 = v37;
  *(&v77 + 1) = v62;
  *&v78 = v61;
  *(&v78 + 1) = v60;
  *&v79 = v44;
  *(&v79 + 1) = v57;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  SharingCircleWildAdvertisementKey.init(key:)(&v70);
  sub_100017D5C(a2, a3);
  sub_100017D5C(a4, a5);
  v90 = v78;
  v91 = v79;
  v92 = v80;
  v93 = v81;
  v86 = v74;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v82 = v70;
  v83 = v71;
  v84 = v72;
  v85 = v73;
LABEL_38:
  v50 = v91;
  a6[8] = v90;
  a6[9] = v50;
  v51 = v93;
  a6[10] = v92;
  a6[11] = v51;
  v52 = v87;
  a6[4] = v86;
  a6[5] = v52;
  v53 = v89;
  a6[6] = v88;
  a6[7] = v53;
  v54 = v83;
  *a6 = v82;
  a6[1] = v54;
  result = *&v84;
  v56 = v85;
  a6[2] = v84;
  a6[3] = v56;
  return result;
}

uint64_t sub_1003FEF4C(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  v8 = __chkstk_darwin(v6);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v69 - v10;
  v11 = type metadata accessor for OwnedBeaconRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v80 = v15;
  v81 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v69 - v16;
  v86 = swift_allocObject();
  *(v86 + 16) = a3;
  v84 = a3;
  LODWORD(v85) = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
LABEL_15:
    swift_once();
  }

  v18 = qword_10177C3B0;
  v83 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10138BBE0;
  v88 = *a2;
  sub_1000BC4D4(&qword_10169F430, &qword_1013A08F8);
  v20 = String.init<A>(describing:)();
  v21 = a2;
  v23 = v22;
  *(v19 + 56) = &type metadata for String;
  v24 = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v23;
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v24;
  *(v19 + 64) = v24;
  *(v19 + 72) = 0xD000000000000038;
  *(v19 + 80) = 0x8000000101352DE0;
  v85 = v18;
  v25 = v24;
  os_log(_:dso:log:_:_:)();

  v82 = v21;
  v26 = sub_100025044();
  a2 = v26[2];
  if (a2)
  {
    v27 = 0;
    while (1)
    {
      if (v27 >= v26[2])
      {
        __break(1u);
        goto LABEL_15;
      }

      v28 = *(v12 + 80);
      sub_100032504(v26 + ((v28 + 32) & ~v28) + *(v12 + 72) * v27, v17, type metadata accessor for OwnedBeaconRecord);
      if (sub_1010DF484(&v17[*(v11 + 24)], a1))
      {
        break;
      }

      ++v27;
      sub_10040A66C(v17, type metadata accessor for OwnedBeaconRecord);
      if (a2 == v27)
      {
        goto LABEL_7;
      }
    }

    static os_log_type_t.default.getter();
    v29 = swift_allocObject();
    v75 = xmmword_101385D80;
    *(v29 + 16) = xmmword_101385D80;
    v30 = *(v11 + 20);
    v31 = v25;
    v32 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = v31;
    v74 = v31;
    *(v29 + 32) = v33;
    *(v29 + 40) = v34;
    os_log(_:dso:log:_:_:)();

    v35 = swift_allocObject();
    *(v35 + 16) = sub_100407BC0;
    v73 = v35;
    *(v35 + 24) = v86;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v70 = ~v28;
    v36 = swift_allocObject();
    *(v36 + 16) = v75;
    v71 = v32;
    v72 = v30;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v74;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v38;
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    os_log(_:dso:log:_:_:)();

    v40 = v76;
    static SystemInfo.lockState.getter();
    v42 = v77;
    v41 = v78;
    v43 = v79;
    (*(v78 + 104))(v77, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v79);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v44 = *(v41 + 8);
    v44(v42, v43);
    v44(v40, v43);
    if (v88 == v87)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100139CA0();
      v45 = swift_allocError();
      *v46 = 0;
      swift_errorRetain();
      static os_log_type_t.error.getter();
      v47 = swift_allocObject();
      *(v47 + 16) = v75;
      v88 = v45;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v48 = String.init<A>(describing:)();
      v49 = v74;
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = v49;
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      os_log(_:dso:log:_:_:)();

      dispatch_group_leave(v84);
    }

    v51 = dispatch_group_create();
    dispatch_group_enter(v51);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v52 = v71;
    v53 = *(v71 - 8);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v75;
    (*(v53 + 16))(v56 + v55, &v17[v72], v52);
    v57 = swift_allocObject();
    *(v57 + 16) = v51;
    v58 = v51;
    v59 = v82;
    sub_1009C99C0(v56, sub_10040B9F4, v57);

    OS_dispatch_group.wait()();
    v60 = v81;
    sub_100032504(v17, v81, type metadata accessor for OwnedBeaconRecord);
    v61 = (v28 + 16) & v70;
    v62 = (v80 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 23) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    sub_10040A014(v60, v64 + v61, type metadata accessor for OwnedBeaconRecord);
    v65 = (v64 + v62);
    v66 = v73;
    *v65 = sub_100407BC8;
    v65[1] = v66;
    v67 = v64 + v63;
    *v67 = v59;
    *(v67 + 8) = 257;

    sub_100AAA40C(v17, sub_10040BA50, v64);

    sub_10040A66C(v17, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {
LABEL_7:

    dispatch_group_leave(v84);
  }
}

uint64_t sub_1003FF8AC(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  v8 = __chkstk_darwin(v6);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v69 - v10;
  v11 = type metadata accessor for OwnedBeaconRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v80 = v15;
  v81 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v69 - v16;
  v86 = swift_allocObject();
  *(v86 + 16) = a3;
  v84 = a3;
  LODWORD(v85) = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
LABEL_15:
    swift_once();
  }

  v18 = qword_10177C3B0;
  v83 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10138BBE0;
  v88 = *a2;
  sub_1000BC4D4(&qword_10169F430, &qword_1013A08F8);
  v20 = String.init<A>(describing:)();
  v21 = a2;
  v23 = v22;
  *(v19 + 56) = &type metadata for String;
  v24 = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v23;
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v24;
  *(v19 + 64) = v24;
  *(v19 + 72) = 0xD000000000000038;
  *(v19 + 80) = 0x8000000101352DE0;
  v85 = v18;
  v25 = v24;
  os_log(_:dso:log:_:_:)();

  v82 = v21;
  v26 = sub_100025044();
  a2 = v26[2];
  if (a2)
  {
    v27 = 0;
    while (1)
    {
      if (v27 >= v26[2])
      {
        __break(1u);
        goto LABEL_15;
      }

      v28 = *(v12 + 80);
      sub_100032504(v26 + ((v28 + 32) & ~v28) + *(v12 + 72) * v27, v17, type metadata accessor for OwnedBeaconRecord);
      if (sub_1010DF484(&v17[*(v11 + 24)], a1))
      {
        break;
      }

      ++v27;
      sub_10040A66C(v17, type metadata accessor for OwnedBeaconRecord);
      if (a2 == v27)
      {
        goto LABEL_7;
      }
    }

    static os_log_type_t.default.getter();
    v29 = swift_allocObject();
    v75 = xmmword_101385D80;
    *(v29 + 16) = xmmword_101385D80;
    v30 = *(v11 + 20);
    v31 = v25;
    v32 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = v31;
    v74 = v31;
    *(v29 + 32) = v33;
    *(v29 + 40) = v34;
    os_log(_:dso:log:_:_:)();

    v35 = swift_allocObject();
    *(v35 + 16) = sub_10040A36C;
    v73 = v35;
    *(v35 + 24) = v86;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v70 = ~v28;
    v36 = swift_allocObject();
    *(v36 + 16) = v75;
    v71 = v32;
    v72 = v30;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v74;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v38;
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    os_log(_:dso:log:_:_:)();

    v40 = v76;
    static SystemInfo.lockState.getter();
    v42 = v77;
    v41 = v78;
    v43 = v79;
    (*(v78 + 104))(v77, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v79);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v44 = *(v41 + 8);
    v44(v42, v43);
    v44(v40, v43);
    if (v88 == v87)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100139CA0();
      v45 = swift_allocError();
      *v46 = 0;
      swift_errorRetain();
      static os_log_type_t.error.getter();
      v47 = swift_allocObject();
      *(v47 + 16) = v75;
      v88 = v45;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v48 = String.init<A>(describing:)();
      v49 = v74;
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = v49;
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      os_log(_:dso:log:_:_:)();

      dispatch_group_leave(v84);
    }

    v51 = dispatch_group_create();
    dispatch_group_enter(v51);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v52 = v71;
    v53 = *(v71 - 8);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v75;
    (*(v53 + 16))(v56 + v55, &v17[v72], v52);
    v57 = swift_allocObject();
    *(v57 + 16) = v51;
    v58 = v51;
    v59 = v82;
    sub_1009C99C0(v56, sub_10040B9F4, v57);

    OS_dispatch_group.wait()();
    v60 = v81;
    sub_100032504(v17, v81, type metadata accessor for OwnedBeaconRecord);
    v61 = (v28 + 16) & v70;
    v62 = (v80 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 23) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    sub_10040A014(v60, v64 + v61, type metadata accessor for OwnedBeaconRecord);
    v65 = (v64 + v62);
    v66 = v73;
    *v65 = sub_10040BAA0;
    v65[1] = v66;
    v67 = v64 + v63;
    *v67 = v59;
    *(v67 + 8) = 257;

    sub_100AAA40C(v17, sub_10040BA50, v64);

    sub_10040A66C(v17, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {
LABEL_7:

    dispatch_group_leave(v84);
  }
}

uint64_t sub_10040020C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v52 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OwnedBeaconRecord();
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = *(v44 + 64);
  __chkstk_darwin(v17);
  v43 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v47 = &v43 - v25;
  v53 = a1;
  v26 = *(a1 + 280);
  v27 = *(v26 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v28 = *(aBlock[0] + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();

  if (LOBYTE(aBlock[0]) != 1)
  {
    goto LABEL_9;
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v29 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  LOBYTE(v29) = sub_101073BE8(aBlock[0]);

  if (v29)
  {
    v30 = swift_allocObject();
    v31 = v53;
    v32 = v46;
    v30[2] = v52;
    v30[3] = v32;
    v30[4] = v31;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v33 = objc_autoreleasePoolPush();
    v34 = v47;
    sub_100AD6EE0(v26, sub_10040A4BC, v30, v47);
    objc_autoreleasePoolPop(v33);
    sub_1000D2A70(v34, v24, &unk_1016A9A20, &qword_10138B280);
    if ((*(v44 + 48))(v24, 1, v45) == 1)
    {
      sub_10000B3A8(v34, &unk_1016A9A20, &qword_10138B280);
      v35 = v24;
    }

    else
    {
      v41 = v43;
      sub_10040A014(v24, v43, type metadata accessor for OwnedBeaconRecord);

      sub_100B0E9C8(v41, 0, v26, v26, sub_10040A4BC, v30);

      sub_10040A66C(v41, type metadata accessor for OwnedBeaconRecord);
      v35 = v34;
    }

    sub_10000B3A8(v35, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
LABEL_9:
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
    v36 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v16, v12);
    v37 = swift_allocObject();
    v38 = v52;
    *(v37 + 16) = v53;
    *(v37 + 24) = v38;
    aBlock[4] = sub_10040A46C;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161B9C0;
    v39 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v54 = _swiftEmptyArrayStorage;
    sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v40 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);

    (*(v50 + 8))(v7, v40);
    (*(v48 + 8))(v11, v49);
  }
}

void sub_100400A38(char *a1, int a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v113 = a2;
  v9 = type metadata accessor for ShareRecord();
  v118 = *(v9 - 8);
  v10 = *(v118 + 64);
  __chkstk_darwin(v9 - 8);
  v117 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for SystemInfo.DeviceLockState();
  v109 = *(v110 - 8);
  v12 = *(v109 + 64);
  v13 = __chkstk_darwin(v110);
  v108 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v107 = &v99 - v15;
  v16 = type metadata accessor for OwnedBeaconRecord();
  v104 = *(v16 - 8);
  v17 = *(v104 + 64);
  v18 = __chkstk_darwin(v16);
  v112 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v123 = &v99 - v21;
  v105 = v22;
  __chkstk_darwin(v20);
  v106 = &v99 - v23;
  v24 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v99 - v26;
  v28 = type metadata accessor for DirectorySequence();
  v114 = *(v28 - 8);
  v115 = v28;
  v29 = *(v114 + 64);
  __chkstk_darwin(v28);
  v31 = (&v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for URL();
  v124 = *(v32 - 8);
  v33 = *(v124 + 64);
  v34 = __chkstk_darwin(v32);
  v36 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v99 - v37;
  v39 = swift_allocObject();
  v101 = a4;
  *(v39 + 16) = a4;
  *(v39 + 24) = a5;
  v121 = v39;
  v103 = *(a3 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);
  v119 = a3;
  v40 = *(a3 + 280);
  v100 = v16;
  v41 = *(v16 + 20);
  v111 = v40;
  *&v125 = *(v40 + 168);
  v102 = a5;

  v42 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_18:
    swift_once();
  }

  sub_1000076D4(v32, qword_10177A518);
  v122 = a1;
  v120 = v41;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v42);
  v127 = _swiftEmptyArrayStorage;
  v128 = _swiftEmptyArrayStorage;
  v43 = [objc_opt_self() defaultManager];
  v116 = v38;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v126 = v31;
  DirectorySequence.next()();
  v44 = *(v124 + 48);
  v45 = v32;
  if (v44(v27, 1, v32) != 1)
  {
    v46 = *(v124 + 32);
    v47 = (v124 + 8);
    do
    {
      v46(v36, v27, v45);
      v48 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v36, v125, &v128, &v127);
      objc_autoreleasePoolPop(v48);
      (*v47)(v36, v45);
      DirectorySequence.next()();
    }

    while (v44(v27, 1, v45) != 1);
  }

  (*(v114 + 8))(v126, v115);
  v31 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v27 = static OS_os_log.default.getter();
  v115 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v38 = swift_allocObject();
  *(v38 + 1) = xmmword_10138BBE0;
  v36 = v128;
  v49 = *(v128 + 2);
  *(v38 + 7) = &type metadata for Int;
  *(v38 + 8) = &protocol witness table for Int;
  *(v38 + 4) = v49;
  sub_1003FD7F0(&qword_1016B14E0, &type metadata accessor for URL);

  v50 = v116;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  v53 = v52;
  *(v38 + 12) = &type metadata for String;
  v126 = sub_100008C00();
  *(v38 + 13) = v126;
  *(v38 + 9) = v51;
  *(v38 + 10) = v53;
  os_log(_:dso:log:_:_:)();

  a1 = v127;
  (*(v124 + 8))(v50, v45);

  v42 = *(v36 + 2);
  v55 = v118;
  v54 = v119;
  v32 = v117;
  if (v42)
  {
    v41 = 0;
    while (1)
    {
      if (v41 >= *(v36 + 2))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_100032504(&v36[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v41], v32, type metadata accessor for ShareRecord);
      a1 = *(v54 + 40);
      if (!a1)
      {
        break;
      }

      ++v41;
      v56 = *(v54 + 40);

      sub_100528B94(v32, sub_1003EDE24, 0);

      sub_10040A66C(v32, type metadata accessor for ShareRecord);
      if (v42 == v41)
      {
        goto LABEL_10;
      }
    }

    __break(1u);

    objc_autoreleasePoolPop(0);
    __break(1u);
  }

  else
  {
LABEL_10:

    v57 = v106;
    sub_100032504(v122, v106, type metadata accessor for OwnedBeaconRecord);
    sub_100032504(v57, v123, type metadata accessor for OwnedBeaconRecord);
    v58 = *(v104 + 80);
    v59 = (v58 + 16) & ~v58;
    v124 = v59 + v105;
    v60 = (v59 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
    v118 = v58;
    v116 = (v61 + 8);
    v62 = swift_allocObject();
    v119 = v59;
    sub_10040A014(v57, v62 + v59, type metadata accessor for OwnedBeaconRecord);
    v106 = v60;
    v63 = (v62 + v60);
    v64 = v121;
    *v63 = sub_100407A6C;
    v63[1] = v64;
    v117 = v62;
    v114 = v61;
    *(v62 + v61) = v103;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v65 = swift_allocObject();
    v125 = xmmword_101385D80;
    *(v65 + 16) = xmmword_101385D80;
    v66 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v126;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = v68;
    *(v65 + 32) = v67;
    *(v65 + 40) = v69;
    os_log(_:dso:log:_:_:)();

    v70 = v107;
    static SystemInfo.lockState.getter();
    v71 = v109;
    v72 = v108;
    v73 = v110;
    (*(v109 + 104))(v108, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v110);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v74 = *(v71 + 8);
    v74(v72, v73);
    v74(v70, v73);
    if (v128 == v127)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100139CA0();
      v75 = swift_allocError();
      *v76 = 0;
      static os_log_type_t.default.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v77 = swift_allocObject();
      *(v77 + 16) = v125;
      v78 = v123 + *(v100 + 20);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v126;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = v80;
      *(v77 + 32) = v79;
      *(v77 + 40) = v81;
      os_log(_:dso:log:_:_:)();

      swift_errorRetain();
      v101(v75, 1);
    }

    v82 = dispatch_group_create();
    dispatch_group_enter(v82);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v83 = *(v66 - 8);
    v84 = *(v83 + 72);
    v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = v125;
    v87 = v122;
    (*(v83 + 16))(v86 + v85, &v122[v120], v66);
    v88 = swift_allocObject();
    *(v88 + 16) = v82;
    v126 = v82;
    v89 = v111;
    sub_1009C99C0(v86, sub_10040B9F4, v88);

    OS_dispatch_group.wait()();
    v90 = v112;
    sub_100032504(v87, v112, type metadata accessor for OwnedBeaconRecord);
    v91 = v114;
    v92 = swift_allocObject();
    v93 = v119;
    sub_10040A014(v90, v92 + v119, type metadata accessor for OwnedBeaconRecord);
    v94 = (v92 + v106);
    v95 = v116;
    v96 = v117;
    *v94 = sub_10040BA4C;
    v94[1] = v96;
    v97 = v92 + v91;
    *v97 = v89;
    v95[v92] = v113 & 1;
    *(v97 + 9) = 1;

    sub_100AAA40C(v87, sub_10040BA50, v92);

    sub_10040A66C(v123, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for Transaction();
    sub_100032504(v87, v90, type metadata accessor for OwnedBeaconRecord);
    v98 = swift_allocObject();
    sub_10040A014(v90, v98 + v93, type metadata accessor for OwnedBeaconRecord);
    static Transaction.asyncTask(name:block:)();
  }
}

void sub_100401924(NSObject *a1, int a2, uint64_t a3, void *a4)
{
  v112 = a2;
  v7 = type metadata accessor for ShareRecord();
  v118 = *(v7 - 8);
  v8 = *(v118 + 8);
  __chkstk_darwin(v7 - 8);
  v117 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for SystemInfo.DeviceLockState();
  v108 = *(v109 - 8);
  v10 = *(v108 + 64);
  v11 = __chkstk_darwin(v109);
  v107 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v99 - v13;
  v14 = type metadata accessor for OwnedBeaconRecord();
  v103 = *(v14 - 8);
  v15 = *(v103 + 64);
  v16 = __chkstk_darwin(v14);
  v111 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v123 = &v99 - v19;
  v104 = v20;
  __chkstk_darwin(v18);
  v105 = &v99 - v21;
  v22 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v99 - v24;
  v26 = type metadata accessor for DirectorySequence();
  v114 = *(v26 - 8);
  v115 = v26;
  v27 = *(v114 + 64);
  __chkstk_darwin(v26);
  v29 = (&v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for URL();
  v124 = *(v30 - 8);
  v31 = *(v124 + 64);
  v32 = __chkstk_darwin(v30);
  v34 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v99 - v35;
  v37 = swift_allocObject();
  *(v37 + 16) = a4;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_10026AE30;
  *(v38 + 24) = v37;
  v121 = v38;
  v102 = *(a3 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);
  v119 = a3;
  v39 = *(a3 + 280);
  v100 = v14;
  v40 = *(v14 + 20);
  v110 = v39;
  *&v125 = *(v39 + 168);
  v101 = a4;
  _Block_copy(a4);
  v113 = v37;

  v41 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_18:
    swift_once();
  }

  sub_1000076D4(v30, qword_10177A518);
  v122 = a1;
  v120 = v40;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v41);
  v127 = _swiftEmptyArrayStorage;
  v128 = _swiftEmptyArrayStorage;
  v42 = [objc_opt_self() defaultManager];
  v116 = v36;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v126 = v29;
  DirectorySequence.next()();
  v43 = *(v124 + 48);
  v44 = v30;
  if (v43(v25, 1, v30) != 1)
  {
    v45 = *(v124 + 32);
    v46 = (v124 + 8);
    do
    {
      v45(v34, v25, v44);
      v47 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v34, v125, &v128, &v127);
      objc_autoreleasePoolPop(v47);
      (*v46)(v34, v44);
      DirectorySequence.next()();
    }

    while (v43(v25, 1, v44) != 1);
  }

  (*(v114 + 8))(v126, v115);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v48 = static OS_os_log.default.getter();
  v30 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v36 = swift_allocObject();
  *(v36 + 1) = xmmword_10138BBE0;
  v29 = v128;
  isa = v128[2].isa;
  *(v36 + 7) = &type metadata for Int;
  *(v36 + 8) = &protocol witness table for Int;
  *(v36 + 4) = isa;
  sub_1003FD7F0(&qword_1016B14E0, &type metadata accessor for URL);

  v50 = v116;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  v53 = v52;
  *(v36 + 12) = &type metadata for String;
  v126 = sub_100008C00();
  *(v36 + 13) = v126;
  *(v36 + 9) = v51;
  *(v36 + 10) = v53;
  os_log(_:dso:log:_:_:)();

  a1 = v127;
  (*(v124 + 8))(v50, v44);

  v41 = v29[2].isa;
  v25 = v118;
  v54 = v119;
  v34 = v117;
  if (v41)
  {
    v40 = 0;
    while (1)
    {
      if (v40 >= v29[2].isa)
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_100032504(v29 + ((v25[80] + 32) & ~v25[80]) + *(v25 + 9) * v40, v34, type metadata accessor for ShareRecord);
      a1 = *(v54 + 40);
      if (!a1)
      {
        break;
      }

      ++v40;
      v55 = *(v54 + 40);

      sub_100528B94(v34, sub_1003EDE24, 0);

      sub_10040A66C(v34, type metadata accessor for ShareRecord);
      if (v41 == v40)
      {
        goto LABEL_10;
      }
    }

    _Block_release(v101);
    __break(1u);

    _Block_release(v101);
    objc_autoreleasePoolPop(0);
    __break(1u);
  }

  else
  {
LABEL_10:

    v56 = v105;
    sub_100032504(v122, v105, type metadata accessor for OwnedBeaconRecord);
    sub_100032504(v56, v123, type metadata accessor for OwnedBeaconRecord);
    v57 = *(v103 + 80);
    v58 = (v57 + 16) & ~v57;
    v124 = v58 + v104;
    v59 = (v58 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
    v118 = v57;
    v116 = (v60 + 8);
    v61 = swift_allocObject();
    v119 = v58;
    sub_10040A014(v56, v61 + v58, type metadata accessor for OwnedBeaconRecord);
    v114 = v59;
    v62 = (v61 + v59);
    v63 = v121;
    *v62 = sub_10040A6CC;
    v62[1] = v63;
    v117 = v61;
    v115 = v60;
    *(v61 + v60) = v102;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v64 = swift_allocObject();
    v125 = xmmword_101385D80;
    *(v64 + 16) = xmmword_101385D80;
    v65 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v126;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 64) = v67;
    *(v64 + 32) = v66;
    *(v64 + 40) = v68;
    os_log(_:dso:log:_:_:)();

    v69 = v106;
    static SystemInfo.lockState.getter();
    v70 = v108;
    v71 = v107;
    v72 = v109;
    (*(v108 + 104))(v107, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v109);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v73 = *(v70 + 8);
    v73(v71, v72);
    v73(v69, v72);
    if (v128 == v127)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100139CA0();
      swift_allocError();
      *v74 = 0;
      static os_log_type_t.default.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v75 = swift_allocObject();
      *(v75 + 16) = v125;
      v76 = v123 + *(v100 + 20);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v126;
      *(v75 + 56) = &type metadata for String;
      *(v75 + 64) = v78;
      *(v75 + 32) = v77;
      *(v75 + 40) = v79;
      os_log(_:dso:log:_:_:)();

      v80 = v101;
      _Block_copy(v101);
      v81 = _convertErrorToNSError(_:)();
      v80[2](v80, v81);

      _Block_release(v80);
    }

    v82 = dispatch_group_create();
    dispatch_group_enter(v82);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v83 = *(v65 - 8);
    v84 = *(v83 + 72);
    v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = v125;
    v87 = v122;
    (*(v83 + 16))(v86 + v85, v122 + v120, v65);
    v88 = swift_allocObject();
    *(v88 + 16) = v82;
    v126 = v82;
    v89 = v110;
    sub_1009C99C0(v86, sub_10040B9F4, v88);

    OS_dispatch_group.wait()();
    v90 = v111;
    sub_100032504(v87, v111, type metadata accessor for OwnedBeaconRecord);
    v91 = v115;
    v92 = swift_allocObject();
    v93 = v119;
    sub_10040A014(v90, v92 + v119, type metadata accessor for OwnedBeaconRecord);
    v94 = (v92 + v114);
    v95 = v116;
    v96 = v117;
    *v94 = sub_10040BA4C;
    v94[1] = v96;
    v97 = v92 + v91;
    *v97 = v89;
    v95[v92] = v112 & 1;
    *(v97 + 9) = 1;

    sub_100AAA40C(v87, sub_10040BA50, v92);

    sub_10040A66C(v123, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for Transaction();
    sub_100032504(v87, v90, type metadata accessor for OwnedBeaconRecord);
    v98 = swift_allocObject();
    sub_10040A014(v90, v98 + v93, type metadata accessor for OwnedBeaconRecord);
    static Transaction.asyncTask(name:block:)();
  }
}

void sub_100402860()
{
  v0 = sub_1000BC4D4(&qword_10169F478, &qword_1013A0A48);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v99 = &v75 - v2;
  v101 = type metadata accessor for URLResourceValues();
  v84 = *(v101 - 8);
  v3 = *(v84 + 64);
  __chkstk_darwin(v101);
  v96 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for URL();
  v105 = *(v79 - 8);
  v5 = v105[8];
  __chkstk_darwin(v79);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v75 - v10;
  v81 = type metadata accessor for DirectorySequence();
  v80 = *(v81 - 8);
  v12 = *(v80 + 64);
  __chkstk_darwin(v81);
  v104 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Calendar.Component();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Calendar();
  v103 = *(v106 - 8);
  v19 = *(v103 + 64);
  __chkstk_darwin(v106);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v94 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v75 - v26;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v28);
  v89 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v75 - v34;
  __chkstk_darwin(v33);
  v91 = &v75 - v36;
  v90 = [objc_opt_self() defaultManager];
  static Calendar.current.getter();
  (*(v15 + 104))(v18, enum case for Calendar.Component.day(_:), v14);
  static Date.trustedNow.getter(v35);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v37 = v29[1];
  v88 = v29 + 1;
  v87 = v37;
  v37(v35, v28);
  (*(v15 + 8))(v18, v14);
  (*(v103 + 8))(v21, v106);
  v38 = v29[6];
  v93 = v29 + 6;
  v92 = v38;
  if (v38(v27, 1, v28) != 1)
  {
    v39 = v29[4];
    v83 = v29 + 4;
    v82 = v39;
    (v39)(v91, v27, v28);
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v40 = qword_10177C380;
    v77 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v41 = swift_allocObject();
    v100 = xmmword_101385D80;
    *(v41 + 16) = xmmword_101385D80;
    sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date);
    v95 = v28;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    *(v41 + 56) = &type metadata for String;
    v76 = sub_100008C00();
    *(v41 + 64) = v76;
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    v78 = v40;
    os_log(_:dso:log:_:_:)();

    v45 = v79;
    if (qword_1016947A0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v45, qword_10177AEC8);
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();
    DirectorySequence.next()();
    v46 = v105 + 6;
    v103 = v105[6];
    if ((v103)(v11, 1, v45) == 1)
    {
LABEL_10:

      (*(v80 + 8))(v104, v81);
      v87(v91, v95);
      return;
    }

    v102 = v105[4];
    v106 = 0x80000001013541B0;
    v105 += 4;
    v47 = (v105 - 3);
    v98 = NSURLCreationDateKey;
    v97 = (v84 + 56);
    v85 = (v84 + 32);
    v84 += 8;
    v75 = xmmword_10138BBE0;
    v86 = v46;
    v102(v7, v11, v45);
    while (1)
    {
      if (URL.pathExtension.getter() == 0xD000000000000010 && v106 == v48)
      {
      }

      else
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_1000BC4D4(&qword_10169F480, &qword_1013A0A50);
      inited = swift_initStackObject();
      *(inited + 16) = v100;
      v51 = v98;
      *(inited + 32) = v98;
      v52 = v51;
      sub_10112A718(inited);
      swift_setDeallocating();
      v53 = v99;
      sub_10040A66C(inited + 32, type metadata accessor for URLResourceKey);
      URL.resourceValues(forKeys:)();

      v54 = v101;
      (*v97)(v53, 0, 1, v101);
      v55 = v96;
      (*v85)();
      v56 = v94;
      URLResourceValues.creationDate.getter();
      v57 = v95;
      if (v92(v56, 1, v95) == 1)
      {
        (*v84)(v55, v54);
        (*v47)(v7, v45);
        sub_10000B3A8(v56, &unk_101696900, &unk_10138B1E0);
        goto LABEL_12;
      }

      v58 = v89;
      v82();
      if ((static Date.< infix(_:_:)() & 1) == 0)
      {
        break;
      }

      static os_log_type_t.default.getter();
      v59 = swift_allocObject();
      *(v59 + 16) = v100;
      v60 = URL.absoluteString.getter();
      v61 = v76;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = v61;
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      os_log(_:dso:log:_:_:)();

      URL._bridgeToObjectiveC()(v63);
      v65 = v64;
      v107 = 0;
      v66 = [v90 removeItemAtURL:v64 error:&v107];

      if (v66)
      {
        v67 = v107;
        v87(v89, v95);
        (*v84)(v96, v101);
LABEL_25:
        (*v47)(v7, v45);
        goto LABEL_12;
      }

      v68 = v107;
      v69 = _convertNSErrorToError(_:)();

      swift_willThrow();
      static os_log_type_t.error.getter();
      v70 = swift_allocObject();
      *(v70 + 16) = v75;
      v71 = URL.absoluteString.getter();
      *(v70 + 56) = &type metadata for String;
      *(v70 + 64) = v61;
      *(v70 + 32) = v71;
      *(v70 + 40) = v72;
      v107 = v69;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v73 = String.init<A>(describing:)();
      *(v70 + 96) = &type metadata for String;
      *(v70 + 104) = v61;
      *(v70 + 72) = v73;
      *(v70 + 80) = v74;
      os_log(_:dso:log:_:_:)();

      v87(v89, v95);
      (*v84)(v96, v101);
      (*v47)(v7, v45);
LABEL_12:
      DirectorySequence.next()();
      if ((v103)(v11, 1, v45) == 1)
      {
        goto LABEL_10;
      }

      v102(v7, v11, v45);
    }

    v87(v58, v57);
    (*v84)(v55, v54);
    goto LABEL_25;
  }

  sub_10000B3A8(v27, &unk_101696900, &unk_10138B1E0);
  static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100403718(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v87 = a1;
  v2 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v88 = v77 - v4;
  v89 = type metadata accessor for OwnedBeaconRecord();
  v85 = *(v89 - 8);
  v5 = *(v85 + 64);
  __chkstk_darwin(v89);
  v83 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SystemInfo.DeviceLockState();
  v91 = *(v7 - 8);
  v8 = *(v91 + 64);
  v9 = __chkstk_darwin(v7);
  v90 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v77 - v11;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v80 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v82 = v77 - v18;
  v19 = __chkstk_darwin(v17);
  v79 = v77 - v20;
  v21 = __chkstk_darwin(v19);
  v81 = v77 - v22;
  v23 = __chkstk_darwin(v21);
  v84 = v77 - v24;
  v25 = __chkstk_darwin(v23);
  v86 = v77 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = v77 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = v77 - v31;
  __chkstk_darwin(v30);
  v34 = v77 - v33;
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v92 = v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v39 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v40 = v95;
  KeyPath = swift_getKeyPath();
  sub_101075400(KeyPath, v40, v34);

  v42 = *(v36 + 48);
  if (v42(v34, 1, v35) == 1)
  {
    sub_10000B3A8(v34, &qword_1016980D0, &unk_10138F3B0);
    (*(v36 + 56))(v32, 1, 1, v35);
    sub_1000D2A70(v32, v29, &qword_1016980D0, &unk_10138F3B0);
    if (v42(v29, 1, v35) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v36 + 8))(v29, v35);
    }

    (*(v93 + 16))(v93, isa);

    return sub_10000B3A8(v32, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v77[0] = v42;
    v77[1] = v36 + 48;
    v44 = v36;
    v45 = *(v36 + 32);
    v46 = v92;
    v78 = v35;
    v45(v92, v34, v35);
    static SystemInfo.lockState.getter();
    v48 = v90;
    v47 = v91;
    (*(v91 + 104))(v90, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v7);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v49 = *(v47 + 8);
    v49(v48, v7);
    v49(v12, v7);
    if (v95 == v94)
    {
      static os_log_type_t.default.getter();
      v50 = v77[0];
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v51 = v86;
      v52 = v78;
      (*(v44 + 16))(v86, v46, v78);
      (*(v44 + 56))(v51, 0, 1, v52);
      v53 = v84;
      sub_1000D2A70(v51, v84, &qword_1016980D0, &unk_10138F3B0);
      if (v50(v53, 1, v52) == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v44 + 8))(v53, v52);
      }

      (*(v93 + 16))(v93, v54);

      sub_10000B3A8(v51, &qword_1016980D0, &unk_10138F3B0);
      return (*(v44 + 8))(v46, v52);
    }

    else
    {
      v56 = v88;
      sub_1003DB678(v88);
      v57 = v89;
      if ((*(v85 + 48))(v56, 1, v89) == 1)
      {
        sub_10000B3A8(v56, &unk_1016A9A20, &qword_10138B280);
        static os_log_type_t.error.getter();
        if (qword_101695068 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_101385D80;
        v59 = UUID.uuidString.getter();
        v61 = v60;
        *(v58 + 56) = &type metadata for String;
        *(v58 + 64) = sub_100008C00();
        *(v58 + 32) = v59;
        *(v58 + 40) = v61;
        os_log(_:dso:log:_:_:)();

        v62 = v82;
        v63 = v78;
        (*(v44 + 56))(v82, 1, 1, v78);
        v64 = v80;
        sub_1000D2A70(v62, v80, &qword_1016980D0, &unk_10138F3B0);
        if ((v77[0])(v64, 1, v63) == 1)
        {
          v65 = 0;
        }

        else
        {
          v65 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v44 + 8))(v64, v63);
        }

        (*(v93 + 16))(v93, v65);

        sub_10000B3A8(v62, &qword_1016980D0, &unk_10138F3B0);
        return (*(v44 + 8))(v92, v63);
      }

      else
      {
        v66 = v83;
        sub_10040A014(v56, v83, type metadata accessor for OwnedBeaconRecord);
        static os_log_type_t.default.getter();
        if (qword_101695068 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_101385D80;
        v68 = *(v57 + 20);
        v69 = UUID.uuidString.getter();
        v71 = v70;
        *(v67 + 56) = &type metadata for String;
        *(v67 + 64) = sub_100008C00();
        *(v67 + 32) = v69;
        *(v67 + 40) = v71;
        os_log(_:dso:log:_:_:)();

        v72 = v81;
        v73 = v78;
        (*(v44 + 16))(v81, v66 + v68, v78);
        (*(v44 + 56))(v72, 0, 1, v73);
        v74 = v79;
        sub_1000D2A70(v72, v79, &qword_1016980D0, &unk_10138F3B0);
        if ((v77[0])(v74, 1, v73) == 1)
        {
          v75 = 0;
        }

        else
        {
          v75 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v44 + 8))(v74, v73);
        }

        v76 = v92;
        (*(v93 + 16))(v93, v75);

        sub_10000B3A8(v72, &qword_1016980D0, &unk_10138F3B0);
        sub_10040A66C(v66, type metadata accessor for OwnedBeaconRecord);
        return (*(v44 + 8))(v76, v73);
      }
    }
  }
}

uint64_t sub_1004042AC()
{
  v1 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100404374;

  return daemon.getter();
}

uint64_t sub_100404374(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  v3[4] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[5] = v6;
  v7 = type metadata accessor for Daemon();
  v3[6] = v7;
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[7] = v9;
  v10 = sub_1003FD7F0(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_100404554;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100404554(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = v4[4];

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v4[11] = v9;
    *v9 = v6;
    v9[1] = sub_100404A60;

    return daemon.getter();
  }

  else
  {
    v10 = v4[4];

    return _swift_task_switch(sub_1004046F0, a1, 0);
  }
}

uint64_t sub_1004046F0()
{
  v1 = v0[9];
  v2 = *(v0[8] + 128);
  v3 = sub_1003FD7F0(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase);
  v4 = *(v3 + 96);
  v5 = type metadata accessor for StandaloneBeaconDatabase();
  v4(v5, v3);
  if (v1)
  {
    v0[10] = v1;
    v6 = sub_100404878;
  }

  else
  {
    sub_100C656D8();
    v6 = sub_1004047E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004047E0()
{
  v1 = *(v0 + 64);

  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_100404A60;

  return daemon.getter();
}

uint64_t sub_100404878()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[8];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error purging StandaloneBeaconService: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_100404A60;

  return daemon.getter();
}

uint64_t sub_100404A60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;
  v3[12] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[13] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_1003FD7F0(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_100404C14;
  v10 = v3[7];
  v11 = v3[6];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100404C14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {
    v7 = v4[12];

    v8 = v4[2];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[12];

    return _swift_task_switch(sub_100404D84, a1, 0);
  }
}

uint64_t sub_100404D84()
{
  v1 = v0[14];
  if (*(v1 + 128))
  {
    v2 = v0[15];
    v3 = sub_1003FD7F0(&qword_101699D28, type metadata accessor for ObservationDatabase);
    v4 = *(v3 + 96);
    v5 = type metadata accessor for ObservationDatabase();
    v4(v5, v3);
    if (v2)
    {
      v0[16] = v2;
      v6 = sub_100404F88;
      goto LABEL_9;
    }

    sub_100C640C8();
    v1 = v0[14];
  }

  v7 = *(v1 + 136);
  if (v7)
  {
    v8 = v0[2];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;

    sub_100A838D4(0, 0, v8, &unk_1013A09E0, v10);
  }

  v6 = sub_100404F20;
LABEL_9:

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100404F20()
{
  v1 = v0[14];

  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100404F88()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  v7 = v0[14];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error purging ObservationStoreSerivce: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[2];

  v12 = v0[1];

  return v12();
}

void sub_100405140()
{
  v0 = sub_1003256BC();
  v1 = sub_1011D1800();
  v2 = sub_100B108D8();
  v3 = sub_10130A3DC();
  v4 = sub_1008504DC();
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67110144;
    *(v7 + 4) = v0 & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v1 & 1;
    *(v7 + 14) = 1024;
    *(v7 + 16) = v2 & 1;
    *(v7 + 20) = 1024;
    *(v7 + 22) = v3 & 1;
    *(v7 + 26) = 1024;
    *(v7 + 28) = v4 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Deleted account keychain items. deletedItemSharingKey: %{BOOL}d, deletedObservationKey: %{BOOL}d, deletedBeaconStoreKey: %{BOOL}d, deletedKeyManagerKey: %{BOOL}d deletedStandaloneBeaconDatabaseKey: %{BOOL}d.", v7, 0x20u);
  }
}

void sub_1004052AC(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v48 = type metadata accessor for PairingErrorRecord(0);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  __chkstk_darwin(v48);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for DirectorySequence();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  v54 = *(*(a1 + 280) + 168);
  if (qword_101694E68 != -1)
  {
    swift_once();
  }

  v21 = sub_1000076D4(v13, qword_10177C048);
  (*(v14 + 16))(v20, v21, v13);
  v56 = _swiftEmptyArrayStorage;
  v57 = _swiftEmptyArrayStorage;
  v22 = [objc_opt_self() defaultManager];
  v51 = v20;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v55 = v12;
  DirectorySequence.next()();
  v53 = v14;
  v23 = *(v14 + 48);
  if (v23(v8, 1, v13) != 1)
  {
    v24 = *(v53 + 32);
    v25 = (v53 + 8);
    do
    {
      v24(v18, v8, v13);
      v26 = objc_autoreleasePoolPush();
      sub_1005FD5CC(v18, v54, &v57, &v56);
      objc_autoreleasePoolPop(v26);
      (*v25)(v18, v13);
      DirectorySequence.next()();
    }

    while (v23(v8, 1, v13) != 1);
  }

  (*(v49 + 8))(v55, v50);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v27 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10138BBE0;
  v29 = v57;
  v30 = v57[2];
  *(v28 + 56) = &type metadata for Int;
  *(v28 + 64) = &protocol witness table for Int;
  *(v28 + 32) = v30;
  sub_1003FD7F0(&qword_1016B14E0, &type metadata accessor for URL);

  v31 = v51;
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v34 = v33;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = sub_100008C00();
  *(v28 + 72) = v32;
  *(v28 + 80) = v34;
  os_log(_:dso:log:_:_:)();

  (*(v53 + 8))(v31, v13);

  v35 = *(v29 + 16);
  if (v35)
  {
    v57 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v36 = v47;
    v37 = v29 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v38 = *(v46 + 72);
    v39 = v48;
    do
    {
      sub_100032504(v37, v36, type metadata accessor for PairingErrorRecord);
      v40 = v36 + *(v39 + 20);
      sub_100D57594();
      sub_10040A66C(v36, type metadata accessor for PairingErrorRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v41 = v57[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v37 += v38;
      --v35;
    }

    while (v35);

    v42 = v57;
  }

  else
  {

    v42 = _swiftEmptyArrayStorage;
  }

  static os_log_type_t.info.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_101385D80;
  v44 = v42[2];
  *(v43 + 56) = &type metadata for Int;
  *(v43 + 64) = &protocol witness table for Int;
  *(v43 + 32) = v44;
  os_log(_:dso:log:_:_:)();

  sub_10039C60C(v42);

  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v52 + 16))(v52, isa);
}

uint64_t sub_100405A6C(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OSSignpostID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v11 = (*(v10 + 80) + v9 + 8) & ~*(v10 + 80);
  v13 = *(v2 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1003EDA2C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + v8), *(v2 + v9), v2 + v11);
}

uint64_t sub_100405BB0(uint64_t a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003ED37C(a1);
}

id sub_100405C58@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  result = sub_10003EB74(v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)), *(*(v1 + 16) + 280));
  *a1 = result;
  return result;
}

uint64_t sub_100405CC4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101164E08(v2, v3);
}

uint64_t sub_100405D5C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1011655D4(v0);
}

unint64_t sub_100405DEC()
{
  result = qword_101698BF0;
  if (!qword_101698BF0)
  {
    sub_100008BB8(255, &unk_1016BBE80, SPBeaconShare_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698BF0);
  }

  return result;
}

uint64_t sub_100405E70(uint64_t a1)
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100AD3A1C(a1, v6, v1 + v5);
}

uint64_t sub_100405F54(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1003EC8A4(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_100405FFC(char *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = (v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1003ECD14(a1, v1 + v4, v6, v7, v9, v10);
}

uint64_t sub_1004060AC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003ECF68(a1, v1 + v4, v7, v8, v9, v10);
}

uint64_t sub_10040617C()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003EF220(v0 + v3);
}

uint64_t sub_100406248()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v35 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = (v2 + 32) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = (v2 + 32) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v31 = *(v5 + v1[14] + 8);

  v32 = *(v5 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v35);
}

uint64_t sub_1004065B4(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1003EE354(a1, v6, v7, v1 + v5);
}

uint64_t sub_1004066A4()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 25) & ~v2;
  v37 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v36 = (v2 + 25) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v36;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v36 = (v2 + 25) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = (v37 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v32 = *(v5 + v1[14] + 8);

  v33 = *(v5 + v1[15] + 8);

  v34 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16);
}

uint64_t sub_100406A28(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1003E3564(a1, v5, v6, v1 + v4, v8);
}

uint64_t sub_100406AE8(void (*a1)(void))
{
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v4 = *(*(v3 - 1) + 80);
  v24 = *(*(v3 - 1) + 64);
  a1(*(v1 + 16));
  v5 = v1 + ((v4 + 24) & ~v4);
  sub_100016590(*v5, *(v5 + 8));
  v6 = v3[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v9(v5 + v3[6], v7);
  v10 = *(v5 + v3[7] + 16);

  v11 = *(v5 + v3[8] + 8);

  v12 = *(v5 + v3[9] + 8);

  v13 = *(v5 + v3[10] + 8);

  v14 = v3[18];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v3[19];
  v17 = *(v8 + 48);
  if (!v17(v5 + v16, 1, v7))
  {
    v9(v5 + v16, v7);
  }

  v18 = v5 + v3[20];
  v19 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = *(v19 + 20);
    if (!v17(v18 + v20, 1, v7))
    {
      v9(v18 + v20, v7);
    }
  }

  v21 = (v24 + ((v4 + 24) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + v21 + 8);

  return _swift_deallocObject(v1, v21 + 16, v4 | 7);
}

uint64_t sub_100406D9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

uint64_t sub_100406E54(uint64_t a1)
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1003F0290(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100406FA4()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1003E7200(v3, v0 + v2, v5, v6);
}

void sub_100407038(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_1003E7FB0(a1, v1 + v4, v7, v8, v9, v11);
}

uint64_t sub_1004070EC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003E9004(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_100407190(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003EB664(a1, v1 + v4, v5);
}

uint64_t sub_100407238()
{
  v2 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_1003E9224(v0 + v3, v5, v7, v8);
}

uint64_t sub_10040735C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_1003EA6F8(a1, a2, v7, v6);
}

uint64_t sub_100407410(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1003EAEA8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100407508(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100010F48(a1, v5);
}

uint64_t sub_1004075C0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1003EC4C8(a1, a2, v6, v7);
}

uint64_t sub_100407644(_BYTE *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1003EC69C(a1, v4, v5, v6);
}

uint64_t sub_1004076C0()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v5 + v1[11] + 8);

  v11 = *(v5 + v1[12]);

  v12 = *(v0 + v3);

  v13 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

void sub_100407830(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_1003E7380(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_1004078DC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  return sub_1003EBF80(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_100407988(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v6 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));
  v7 = v6[*(v5 + 64)];
  v8 = *(v2 + 16);

  return sub_1003EDD10(a1, a2, v8, v6, v7);
}

uint64_t sub_100407A2C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_100407A74()
{
  v1 = *(v0 + 80);
  *(v0 + 80) = 0;
}

uint64_t sub_100407AB8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1003D55B8(v0);
}

uint64_t sub_100407BE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003D6C40(v2, v3);
}

uint64_t sub_100407C78()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1003D7198(v4, v5, v0 + v3);
}

uint64_t sub_100407D54(uint64_t a1)
{
  v3 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1003D6D60(a1);
}

double sub_100407E28(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100407E78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003D0CEC(v2, v3);
}

double sub_100408020(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100408040()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_101165260(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100408110(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

void sub_100408170(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_1004081B0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1004081BC(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

void sub_10040820C(char a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1003CE19C(a1, *(v1 + 16));
}

uint64_t sub_100408218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100A9A13C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004082E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AD35D4(a1, v4, v1 + 24);
}

uint64_t sub_10040838C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100AD3688(a1, v4, v1 + 24);
}

uint64_t sub_100408438(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AD3688(a1, v4, v1 + 24);
}

uint64_t sub_1004084E4()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v8(v4 + v1[6], v6);
  v9 = *(v4 + v1[7] + 16);

  v10 = *(v4 + v1[8] + 8);

  v11 = *(v4 + v1[9] + 8);

  v12 = *(v4 + v1[10] + 8);

  v13 = v1[18];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v1[19];
  v16 = *(v7 + 48);
  if (!v16(v4 + v15, 1, v6))
  {
    v8(v4 + v15, v6);
  }

  v17 = v4 + v1[20];
  v18 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 20);
    if (!v16(v17 + v19, 1, v6))
    {
      v8(v17 + v19, v6);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 24) & ~v2) + v21);
}

uint64_t sub_100408760()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1003DBBD4(v0);
}

uint64_t sub_1004087F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1003DD220(a1, v5);
}

uint64_t sub_1004088A8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10094D880(v0);
}

uint64_t sub_100408940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1009904EC(a1, v4, v5, v6);
}

void sub_100408A2C(uint64_t a1, int a2, uint64_t a3, void (**a4)(const void *, void))
{
  v74 = a2;
  v76 = a1;
  v71 = type metadata accessor for UUID();
  v67 = *(v71 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v71);
  v64 = v7;
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v65 = &v64 - v10;
  v69 = type metadata accessor for LocalFindableAccessoryRecord();
  v11 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v70 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SharedBeaconRecord(0);
  v13 = *(*(v72 - 8) + 64);
  v14 = __chkstk_darwin(v72);
  v68 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v18 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v64 - v20;
  v22 = type metadata accessor for OwnedBeaconGroup(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OwnedBeaconRecord();
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v64 - v32;
  v77 = swift_allocObject();
  *(v77 + 2) = a4;
  v75 = a3;
  v34 = *(a3 + 280);
  v73 = a4;
  v35 = a4;
  v36 = v76;
  _Block_copy(v35);
  sub_100025020(v36, &v79);
  if (v80)
  {
    sub_100031694(&v79, v81);
    sub_10001F280(v81, &v79);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    if (swift_dynamicCast())
    {
      sub_10040A014(v33, v31, type metadata accessor for OwnedBeaconRecord);
      sub_1003DF44C(v31, v74 & 1, sub_10001E370, v77);
      v37 = type metadata accessor for OwnedBeaconRecord;
      v38 = v31;
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        v46 = v70;
        if (swift_dynamicCast())
        {
          v47 = swift_allocObject();
          v48 = v77;
          *(v47 + 16) = sub_10001E370;
          *(v47 + 24) = v48;
          v49 = type metadata accessor for TaskPriority();
          v50 = v65;
          (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
          v51 = v67;
          v52 = v66;
          v53 = v71;
          (*(v67 + 16))(v66, v36, v71);
          v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
          v55 = (v64 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
          v56 = swift_allocObject();
          *(v56 + 16) = 0;
          *(v56 + 24) = 0;
          (*(v51 + 32))(v56 + v54, v52, v53);
          v57 = (v56 + v55);
          *v57 = sub_10040BA44;
          v57[1] = v47;

          sub_10025EDD4(0, 0, v50, &unk_1013A0A28, v56);

          v73[2](v73, 0);
          sub_100007BAC(v81);
          sub_10040A66C(v46, type metadata accessor for LocalFindableAccessoryRecord);
        }

        else
        {
          static os_log_type_t.error.getter();
          if (qword_101695068 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_101385D80;
          sub_10001F280(v81, v78);
          v59 = String.init<A>(describing:)();
          v61 = v60;
          *(v58 + 56) = &type metadata for String;
          *(v58 + 64) = sub_100008C00();
          *(v58 + 32) = v59;
          *(v58 + 40) = v61;
          os_log(_:dso:log:_:_:)();

          sub_1003FD838();
          swift_allocError();
          *v62 = 3;
          v63 = _convertErrorToNSError(_:)();
          (v73)[2](v73, v63);

          sub_100007BAC(v81);
        }

        goto LABEL_11;
      }

      v45 = v68;
      sub_10040A014(v17, v68, type metadata accessor for SharedBeaconRecord);
      sub_1003E0AE0(v45, sub_10001E370, v77);
      v37 = type metadata accessor for SharedBeaconRecord;
      v38 = v45;
    }

    sub_10040A66C(v38, v37);
    sub_100007BAC(v81);
LABEL_11:
    sub_100007BAC(&v79);
LABEL_13:

    return;
  }

  sub_10000B3A8(&v79, &qword_101696920, &unk_10138B200);
  sub_100AC53EC(v36, v21);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    sub_10040A014(v21, v26, type metadata accessor for OwnedBeaconGroup);
    sub_1003E0D7C(v26, v74 & 1, sub_10001E370, v77);
    sub_10040A66C(v26, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_13;
  }

  sub_10000B3A8(v21, &unk_1016AF8B0, &unk_1013A0700);
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_101385D80;
  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v41;
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_100008C00();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for SPOwnerSessionError(0);
  *&v79 = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1003FD7F0(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v43 = v81[0];
  v44 = _convertErrorToNSError(_:)();
  (v73)[2](v73, v44);
}

uint64_t sub_100409474(char a1, uint64_t a2)
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C418);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "setAlwaysBeaconWildState to %{BOOL}d", v7, 8u);
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  [v8 setBool:a1 & 1 forKey:v9];

  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v10)
  {
    v11 = v10;
    v12 = SPBeaconingStateChangedNotification;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    CFNotificationCenterPostNotification(v11, v12, 0, 0, 1u);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  v13 = *(a2 + 16);

  return v13(a2, 1);
}

uint64_t sub_100409708(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t))
{
  v45 = a2;
  v2 = sub_1000BC4D4(&qword_10169F458, &unk_1013D35E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for OfflineFindingInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for OwnedBeaconRecord();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DB678(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &unk_1016A9A20, &qword_10138B280);
    sub_1003FD838();
    v19 = swift_allocError();
    *v20 = 1;
    v45(0, 0xF000000000000000, v19);
  }

  else
  {
    v22 = v45;
    sub_10040A014(v13, v18, type metadata accessor for OwnedBeaconRecord);
    sub_1003DE85C(v18, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10000B3A8(v5, &qword_10169F458, &unk_1013D35E0);
      sub_1003FD838();
      v23 = swift_allocError();
      *v24 = 1;
      v22(0, 0xF000000000000000, v23);
    }

    else
    {
      v25 = v44;
      sub_10040A014(v5, v44, type metadata accessor for OfflineFindingInfo);
      v26 = objc_opt_self();
      sub_100B9925C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v46 = 0;
      v28 = [v26 dataWithPropertyList:isa format:200 options:0 error:&v46];

      v29 = v46;
      if (v28)
      {
        v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        sub_100017D5C(v30, v32);
        v22(v30, v32, 0);
        sub_100016590(v30, v32);
        sub_100016590(v30, v32);
      }

      else
      {
        v33 = v29;
        v34 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_101694840 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_1000076D4(v35, qword_10177B060);
        swift_errorRetain();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v39 = v46;
          *v38 = 136315138;
          swift_getErrorValue();
          v40 = Error.localizedDescription.getter();
          v42 = sub_1000136BC(v40, v41, &v46);

          *(v38 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v36, v37, "PropertyListSerialization error: %s", v38, 0xCu);
          sub_100007BAC(v39);
          v22 = v45;
        }

        swift_errorRetain();
        v22(0, 0xF000000000000000, v34);
      }

      sub_10040A66C(v25, type metadata accessor for OfflineFindingInfo);
    }

    return sub_10040A66C(v18, type metadata accessor for OwnedBeaconRecord);
  }
}

uint64_t sub_100409D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() standardUserDefaults];
  UUID.uuidString.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();
  [v9 setObject:v10 forKey:v11];

  if (qword_101694840 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177B060);
  (*(v5 + 16))(v8, a1, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1000136BC(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Poisoning beacon UUID: %s", v15, 0xCu);
    sub_100007BAC(v16);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return (*(a2 + 16))(a2);
}

uint64_t sub_10040A014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10040A0D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10040A1AC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1006D6D14(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10040A2EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10040A390(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10040A41C(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10040A46C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1003D7BB0();
}

uint64_t sub_10040A474()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10040A4C8()
{
  v1 = *(sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003D8150(v0 + v2, v5);
}

uint64_t sub_10040A578(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for OwnedBeaconRecord();
  return sub_1010DF484(a1 + *(v4 + 24), v3) & 1;
}

uint64_t sub_10040A5FC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003D8DBC(a1, v4);
}

uint64_t sub_10040A66C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10040A6D4()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 64);
  v37 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v37;
  sub_100016590(*(v0 + v37), *(v0 + v37 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v37 + v4, v5);
  v8 = (v0 + v37 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v10 = v8[1];

      v11 = v8[3];

      v12 = v8 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v36 = v2;
      v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v14 = *(v8 + v13[12] + 8);

      v15 = *(v8 + v13[16] + 8);

      v16 = *(v8 + v13[20] + 8);

      v17 = v13[28];
LABEL_12:
      v2 = v36;
      v12 = (v8 + v17 + 8);
      goto LABEL_13;
    case 3:
      v7(v8, v5);
      v36 = v2;
      v18 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v19 = *(v8 + v18[12] + 8);

      v20 = *(v8 + v18[16] + 8);

      v17 = v18[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v12 = v8 + 1;
LABEL_13:
      v21 = *v12;

      break;
  }

LABEL_14:
  v22 = v1[7];
  if (!(*(v6 + 48))(v3 + v22, 1, v5))
  {
    v7(v3 + v22, v5);
  }

  v23 = v1[8];
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 8))(v3 + v23, v24);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v25 = (v3 + v1[10]);
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_100016590(*v25, v26);
  }

  v27 = (v3 + v1[11]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v2 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v31 = *(v3 + v1[14] + 8);

  v32 = *(v3 + v1[15] + 8);

  v33 = *(v0 + v29 + 8);

  v34 = *(v0 + v30);

  return _swift_deallocObject(v0, v30 + 8);
}

uint64_t sub_10040AA60(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  return sub_1003EDF5C(a1, v1 + v4, v9, v10);
}

uint64_t sub_10040AB0C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 64);
  v37 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v37;
  sub_100016590(*(v0 + v37), *(v0 + v37 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v37 + v4, v5);
  v8 = (v0 + v37 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v10 = v8[1];

      v11 = v8[3];

      v12 = v8 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v36 = v2;
      v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v14 = *(v8 + v13[12] + 8);

      v15 = *(v8 + v13[16] + 8);

      v16 = *(v8 + v13[20] + 8);

      v17 = v13[28];
LABEL_12:
      v2 = v36;
      v12 = (v8 + v17 + 8);
      goto LABEL_13;
    case 3:
      v7(v8, v5);
      v36 = v2;
      v18 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v19 = *(v8 + v18[12] + 8);

      v20 = *(v8 + v18[16] + 8);

      v17 = v18[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v12 = v8 + 1;
LABEL_13:
      v21 = *v12;

      break;
  }

LABEL_14:
  v22 = v1[7];
  if (!(*(v6 + 48))(v3 + v22, 1, v5))
  {
    v7(v3 + v22, v5);
  }

  v23 = v1[8];
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 8))(v3 + v23, v24);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v25 = (v3 + v1[10]);
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_100016590(*v25, v26);
  }

  v27 = (v3 + v1[11]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v2 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v31 = *(v3 + v1[14] + 8);

  v32 = *(v3 + v1[15] + 8);

  v33 = *(v0 + v29 + 8);

  v34 = *(v0 + v30);

  return _swift_deallocObject(v0, v30 + 10);
}

uint64_t sub_10040AE98(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v6 + 9);

  return sub_100DDEE3C(a1, v1 + v4, v8, v9, v10, v11, v12);
}

uint64_t sub_10040AF50()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord();
  v34 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v2[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = (v0 + v3 + v2[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v11 = v9[1];

      v12 = v9[3];

      v13 = v9 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v33 = v0;
      v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v15 = *(v9 + v14[12] + 8);

      v16 = *(v9 + v14[16] + 8);

      v17 = *(v9 + v14[20] + 8);

      v18 = v14[28];
LABEL_12:
      v1 = v33;
      v13 = (v9 + v18 + 8);
      goto LABEL_13;
    case 3:
      v8(v9, v6);
      v33 = v0;
      v19 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v20 = *(v9 + v19[12] + 8);

      v21 = *(v9 + v19[16] + 8);

      v18 = v19[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v13 = v9 + 1;
LABEL_13:
      v22 = *v13;

      break;
  }

LABEL_14:
  v23 = v2[7];
  if (!(*(v7 + 48))(v4 + v23, 1, v6))
  {
    v8(v4 + v23, v6);
  }

  v24 = v2[8];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v4 + v24, v25);
  sub_100016590(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v26 = (v4 + v2[10]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  v28 = (v4 + v2[11]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  sub_100016590(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  sub_100016590(*(v4 + v2[13]), *(v4 + v2[13] + 8));
  v30 = *(v4 + v2[14] + 8);

  v31 = *(v4 + v2[15] + 8);

  return _swift_deallocObject(v1, v3 + v34);
}

uint64_t sub_10040B2B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v72 = a3;
  v67 = a2;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v69 = &v66[-v10];
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = qword_1016950D0;

  v70 = a5;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  sub_100032504(a1, v14, type metadata accessor for OwnedBeaconGroup);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v71 = v11;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v78[0] = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v22 = *(v71 + 24);
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_10040A66C(v14, type metadata accessor for OwnedBeaconGroup);
    v26 = sub_1000136BC(v23, v25, v78);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "removeAirPodsPairingLock for %{private,mask.hash}s", v20, 0x16u);
    sub_100007BAC(v21);
    v11 = v71;
  }

  else
  {

    sub_10040A66C(v14, type metadata accessor for OwnedBeaconGroup);
  }

  v27 = sub_1003CDA20(*(a1 + *(v11 + 40)));
  v28 = sub_1003E28E4(v27);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v78[0] = v32;
    *v31 = 136315138;
    type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    v33 = Array.description.getter();
    v35 = sub_1000136BC(v33, v34, v78);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "unpairDevices: %s", v31, 0xCu);
    sub_100007BAC(v32);
  }

  v36 = MobileGestalt_get_current_device();
  if (v36)
  {
    v37 = v36;
    v68 = a4;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    v39 = MobileGestalt_get_current_device();
    if (v39)
    {
      v40 = v39;
      chipID = MobileGestalt_get_chipID();

      *&v78[0] = uniqueChipID;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      *&v78[0] = chipID;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v48 = sub_100EF9784();
      v50 = v49;
      v51 = v71;
      v52 = a1 + *(v71 + 28);
      v53 = MACAddress.udid.getter();
      *&v73 = v42;
      *(&v73 + 1) = v44;
      *&v74 = v45;
      *(&v74 + 1) = v47;
      *&v75 = v48;
      *(&v75 + 1) = v50;
      *&v76 = v53;
      *(&v76 + 1) = v54;
      LOBYTE(v77) = v67 & 1;
      *(&v77 + 1) = v28;
      v78[3] = v76;
      v78[4] = v77;
      v78[1] = v74;
      v78[2] = v75;
      v78[0] = v73;
      v55 = sub_100A2C34C();
      v56 = *(v51 + 24);
      v57 = type metadata accessor for UUID();
      v58 = *(v57 - 8);
      v59 = a1 + v56;
      v60 = v69;
      (*(v58 + 16))(v69, v59, v57);
      (*(v58 + 56))(v60, 0, 1, v57);
      v61 = v68;

      v62 = v70;
      sub_10093B584(v60, v78, v55, v61, v62);

      sub_100405A18(&v73);
      sub_10000B3A8(v60, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v64 = v70;

    __break(1u);
  }

  v65 = v70;

  __break(1u);
  return result;
}

unint64_t sub_10040B930()
{
  result = qword_10169F488;
  if (!qword_10169F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F488);
  }

  return result;
}

uint64_t sub_10040BF28(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169F550, &qword_1013A0D20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10040E0E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1000BC4D4(&qword_10169F560, &qword_1013A0D28);
  sub_10040E2F8(&qword_10169F568, &qword_10169F570);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10040C0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6269726373627573 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10040C168(uint64_t a1)
{
  v2 = sub_10040E0E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10040C1A4(uint64_t a1)
{
  v2 = sub_10040E0E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10040C1E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10040E13C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10040C228(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7461447472617473;
    v6 = 0x646E756F46636F6CLL;
    if (a1 != 2)
    {
      v6 = 0x646975756162;
    }

    if (a1)
    {
      v5 = 0x7069726373627573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x49746375646F7270;
    v2 = 0x7261646E6F636573;
    if (a1 != 7)
    {
      v2 = 0x76654464656E776FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 7562345;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10040C36C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169F5A8, &qword_1013A0D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v22 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10040E394();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26) = 0;
  v11 = type metadata accessor for Date();
  sub_10040E520(&unk_101697F60, &type metadata accessor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v22[2] = v11;
    v23 = type metadata accessor for NotifyMeRequest.Subscription();
    v12 = v23[5];
    LOBYTE(v26) = 1;
    v13 = type metadata accessor for UUID();
    sub_10040E520(&qword_101698330, &type metadata accessor for UUID);
    v24 = v3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22[1] = v13;
    v14 = v23;
    v15 = *(v24 + v23[6]);
    LOBYTE(v26) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v14[7];
    LOBYTE(v26) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = *(v24 + v14[8]);
    v25 = 4;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_10040E3E8(&qword_10169C9F8, sub_1000E3190);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v23[9];
    LOBYTE(v26) = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = (v24 + v23[10]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v26) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = *(v24 + v23[11]);
    v25 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v24 + v23[12]);
    v25 = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10040C770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = v43 - v5;
  v6 = type metadata accessor for UUID();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = v43 - v15;
  v50 = sub_1000BC4D4(&qword_10169F590, &qword_1013A0D38);
  v48 = *(v50 - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin(v50);
  v18 = v43 - v17;
  v19 = type metadata accessor for NotifyMeRequest.Subscription();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  v53 = a1;
  sub_1000035D0(a1, v23);
  sub_10040E394();
  v51 = v18;
  v25 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_100007BAC(v53);
  }

  v44 = v14;
  v26 = v48;
  v52 = v19;
  type metadata accessor for Date();
  LOBYTE(v55) = 0;
  v27 = sub_10040E520(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v43[1] = v27;
  v28 = v49;
  v49 = v22;
  sub_1000D2AD8(v28, v22, &unk_101696900, &unk_10138B1E0);
  LOBYTE(v55) = 1;
  v29 = v9;
  v30 = v6;
  v31 = sub_10040E520(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v26;
  v43[2] = v30;
  v43[0] = v31;
  v33 = v52;
  v34 = v49;
  (*(v47 + 32))(&v49[v52[5]], v29, v30);
  LOBYTE(v55) = 2;
  v34[v33[6]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v55) = 3;
  v35 = v46;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v35, &v49[v33[7]], &qword_1016980D0, &unk_10138F3B0);
  v36 = sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v54 = 4;
  sub_10040E3E8(&qword_10169F5A0, sub_1000E307C);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v49;
  v46 = v36;
  *&v49[v33[8]] = v55;
  LOBYTE(v55) = 5;
  v38 = v44;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v38, v37 + v33[9], &unk_101696900, &unk_10138B1E0);
  LOBYTE(v55) = 6;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = (v37 + v33[10]);
  *v40 = v39;
  v40[1] = v41;
  v54 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v37 + v33[11]) = v55;
  v54 = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 8))(v51, v50);
  *(v37 + v33[12]) = v55;
  sub_10040E460(v37, v45);
  sub_100007BAC(v53);
  return sub_10040E4C4(v37);
}

uint64_t sub_10040CFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10040E798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10040D010(uint64_t a1)
{
  v2 = sub_10040E394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10040D04C(uint64_t a1)
{
  v2 = sub_10040E394();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10040D0B8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for HashAlgorithm();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10040D230, 0, 0);
}

void sub_10040D230()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v37 = v0[18];
  v38 = v0[17];
  v39 = v0[12];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v6 + 8))(v7, v9);
  v0[9] = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  v0[10] = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  v0[23] = v25;
  v30 = type metadata accessor for JSONEncoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v0[24] = JSONEncoder.init()();
  *v8 = sub_100281AE0;
  v8[1] = 0;
  (*(v37 + 104))(v8, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v38);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v0[11] = v39;
  sub_10040DDF0();
  v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[25] = 0;
  v0[26] = v33;
  v0[27] = v34;
  v35 = v0[12];

  v36 = swift_task_alloc();
  v0[28] = v36;
  *v36 = v0;
  v36[1] = sub_10040D66C;

  sub_100EA16FC();
}

uint64_t sub_10040D66C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v6 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;

  return _swift_task_switch(sub_10040D76C, 0, 0);
}

uint64_t sub_10040D76C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[15];
  v7 = v0[16];
  v0[7] = v2;
  v18 = v6;
  v19 = v0[14];
  v20 = v7;
  v0[8] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v3;
  v0[3] = v4;
  v8 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v9 = *v8;
  v10 = v8[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v9, v10);
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v11 = v0[8];
  v0[31] = v0[7];
  v0[32] = v11;
  (*(v18 + 104))(v20, enum case for HashAlgorithm.sha256(_:), v19);
  v12 = Data.hash(algorithm:)();
  v14 = v13;
  v0[33] = v12;
  v0[34] = v13;
  (*(v18 + 8))(v20, v19);
  v15 = swift_task_alloc();
  v0[35] = v15;
  *v15 = v0;
  v15[1] = sub_10040D93C;
  v16 = v0[13];

  return sub_100EA87F4(v12, v14, v16);
}

uint64_t sub_10040D93C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_10040DBA4;
  }

  else
  {
    v8 = v4[33];
    v9 = v4[34];
    v4[37] = a1;
    sub_100016590(v8, v9);
    v7 = sub_10040DA6C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10040DA6C()
{
  v20 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v6;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v19);

  sub_100016590(v4, v3);

  v9 = v19;
  v11 = v0[26];
  v10 = v0[27];

  sub_100017D5C(v11, v10);

  sub_100016590(v11, v10);
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[16];

  v17 = v0[1];

  return v17(v9, v13, v12);
}

uint64_t sub_10040DBA4()
{
  v1 = v0[31];
  v2 = v0[32];
  sub_100016590(v0[33], v0[34]);
  sub_100016590(v1, v2);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AC78);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[36];
  v9 = v0[24];
  v10 = v0[13];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not sign request: %{public}@.", v11, 0xCu);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v14 = v0[24];
  }

  v15 = v0[23];
  v17 = v0[26];
  v16 = v0[27];

  sub_100017D5C(v17, v16);

  sub_100016590(v17, v16);
  v19 = v0[26];
  v18 = v0[27];
  v20 = v0[22];
  v21 = v0[19];
  v22 = v0[16];

  v23 = v0[1];

  return v23(v15, v19, v18);
}

unint64_t sub_10040DDF0()
{
  result = qword_10169F490;
  if (!qword_10169F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F490);
  }

  return result;
}

uint64_t type metadata accessor for NotifyMeRequest.Subscription()
{
  result = qword_10169F4F0;
  if (!qword_10169F4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040DED8()
{
  sub_10040E044(319, &qword_1016BA040, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_10040E044(319, &qword_1016B1C20, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        sub_10040E098(319, &unk_10169F500, &type metadata for Data, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_10040E098(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10040E044(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10040E098(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10040E0E8()
{
  result = qword_10169F558;
  if (!qword_10169F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F558);
  }

  return result;
}

void *sub_10040E13C(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_10169F578, &qword_1013A0D30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_10040E0E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_10169F560, &qword_1013A0D28);
    sub_10040E2F8(&qword_10169F580, &qword_10169F588);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

uint64_t sub_10040E2F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169F560, &qword_1013A0D28);
    sub_10040E520(a2, type metadata accessor for NotifyMeRequest.Subscription);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10040E394()
{
  result = qword_10169F598;
  if (!qword_10169F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F598);
  }

  return result;
}

uint64_t sub_10040E3E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101699EB8, &qword_101398AA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10040E460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotifyMeRequest.Subscription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040E4C4(uint64_t a1)
{
  v2 = type metadata accessor for NotifyMeRequest.Subscription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040E520(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10040E58C()
{
  result = qword_10169F5B0;
  if (!qword_10169F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5B0);
  }

  return result;
}

unint64_t sub_10040E5E4()
{
  result = qword_10169F5B8;
  if (!qword_10169F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5B8);
  }

  return result;
}

unint64_t sub_10040E63C()
{
  result = qword_10169F5C0;
  if (!qword_10169F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5C0);
  }

  return result;
}

unint64_t sub_10040E694()
{
  result = qword_10169F5C8;
  if (!qword_10169F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5C8);
  }

  return result;
}

unint64_t sub_10040E6EC()
{
  result = qword_10169F5D0;
  if (!qword_10169F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5D0);
  }

  return result;
}

unint64_t sub_10040E744()
{
  result = qword_10169F5D8;
  if (!qword_10169F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5D8);
  }

  return result;
}

uint64_t sub_10040E798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xEE0064496E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E756F46636F6CLL && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646975756162 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101354290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEC00000073644979 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x76654464656E776FLL && a2 == 0xEE00736449656369)
  {

    return 8;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

__n128 sub_10040EAAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_10040EAF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 216))
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

uint64_t sub_10040EB44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
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
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10040EBD8(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v22 = *v1;
  v7 = *v1;
  sub_10015049C(v8, v9);
  sub_1001022C4(&v22, v6);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v7, *(&v7 + 1));
    v21 = v1[2];
    v7 = v1[2];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v21, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v20 = v1[4];
    v7 = v1[4];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v20, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v19 = v1[5];
    v7 = v1[5];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v19, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v18 = v1[1];
    v7 = v1[1];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v18, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v17 = v1[3];
    v7 = v1[3];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v17, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v16 = v1[6];
    v7 = v1[6];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v16, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v15 = v1[7];
    v7 = v1[7];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v15, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v14 = v1[8];
    v7 = v1[8];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v14, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v13 = v1[9];
    v7 = v1[9];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v13, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v12 = v1[10];
    v7 = v1[10];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v12, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v11 = v1[11];
    v7 = v1[11];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v11, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v6[0] = *(v1 + 192);
    sub_1000198E8();
    *&v7 = FixedWidthInteger.data.getter();
    *(&v7 + 1) = v5;
    sub_10015049C(v8, v9);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v10 = *(v1 + 200);
    v7 = *(v1 + 200);
    sub_10015049C(v8, v9);
    sub_1001022C4(&v10, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v7, *(&v7 + 1));
  return sub_100007BAC(v8);
}

double sub_10040F198@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10040F314(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

unint64_t sub_10040F23C(uint64_t a1)
{
  *(a1 + 8) = sub_10040F26C();
  result = sub_10040F2C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10040F26C()
{
  result = qword_10169F5E0;
  if (!qword_10169F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5E0);
  }

  return result;
}

unint64_t sub_10040F2C0()
{
  result = qword_10169F5E8;
  if (!qword_10169F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5E8);
  }

  return result;
}

uint64_t sub_10040F314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(&v126, v127);
  v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_20;
  }

  v12 = v10;
  v13 = v11;
  sub_10015049C(&v126, v127);
  v123 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v128 = v14;
  sub_10015049C(&v126, v127);
  v121 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v122 = v15;
  sub_10015049C(&v126, v127);
  v119 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v120 = v16;
  sub_10015049C(&v126, v127);
  v117 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v118 = v17;
  sub_10015049C(&v126, v127);
  v18 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v20 = v19;
  v124 = v117;
  v125 = v118;
  v112 = sub_1000E0A3C();
  v21 = DataProtocol.intValue.getter();
  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v22 * 20) >> 64 != (20 * v22) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (20 * v22 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v113 = v18;
  v114 = v20;
  v115 = Data.subdata(in:)();
  v116 = v23;
  sub_10015049C(&v126, v127);
  v110 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v111 = v24;
  sub_10015049C(&v126, v127);
  v108 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v109 = v25;
  sub_10015049C(&v126, v127);
  v26 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v28 = v27;
  sub_100017D5C(v26, v27);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE2(v124) == 1)
  {
    v29 = type metadata accessor for BinaryEncodingError();
    sub_1000E17C4(&qword_101696E20, &type metadata accessor for BinaryEncodingError);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, enum case for BinaryEncodingError.encodingError(_:), v29);
    swift_willThrow();
    v31 = v26;
    v32 = v28;
LABEL_19:
    sub_100016590(v31, v32);
    sub_100016590(v108, v109);
    sub_100016590(v110, v111);
    sub_100016590(v115, v116);
    sub_100016590(v113, v114);
    sub_100016590(v117, v118);
    sub_100016590(v119, v120);
    sub_100016590(v121, v122);
    sub_100016590(v123, v128);
    sub_100016590(v12, v13);
LABEL_20:
    sub_100007BAC(&v126);
    return sub_100007BAC(a1);
  }

  v106 = v26;
  v107 = v28;
  v33 = v124;
  v34 = v108;
  v35 = v109;
  sub_100017D5C(v108, v109);
  sub_10002EA98(v33, v34, v35, &v124);
  v104 = v124;
  v105 = v125;
  sub_10015049C(&v126, v127);
  v102 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v103 = v36;
  sub_10015049C(&v126, v127);
  v37 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v39 = v38;
  v124 = v37;
  v125 = v38;
  v40 = DataProtocol.intValue.getter();
  sub_100016590(v37, v39);
  v41 = v102;
  v42 = v103;
  sub_100017D5C(v102, v103);
  sub_10002EA98(v40, v41, v42, &v124);
  v100 = v124;
  v101 = v125;
  sub_10015049C(&v126, v127);
  v98 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v99 = v43;
  sub_10015049C(&v126, v127);
  v44 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v46 = v45;
  v124 = v44;
  v125 = v45;
  v47 = DataProtocol.intValue.getter();
  sub_100016590(v44, v46);
  v48 = v98;
  v49 = v99;
  sub_100017D5C(v98, v99);
  sub_10002EA98(v47, v48, v49, &v124);
  v96 = v124;
  v97 = v125;
  sub_10015049C(&v126, v127);
  v94 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v95 = v50;
  sub_10015049C(&v126, v127);
  v51 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v53 = v52;
  v124 = v51;
  v125 = v52;
  v54 = DataProtocol.intValue.getter();
  sub_100016590(v51, v53);
  v55 = v94;
  v56 = v95;
  sub_100017D5C(v94, v95);
  sub_10002EA98(v54, v55, v56, &v124);
  v92 = v124;
  v93 = v125;
  sub_10015049C(&v126, v127);
  v90 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v91 = v57;
  sub_10015049C(&v126, v127);
  v58 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v89 = v59;
  v8 = v58;
  v124 = v58;
  v125 = v59;
  v112 = DataProtocol.intValue.getter();
  sub_10015049C(&v126, v127);
  v88 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v18 = v60;
  if (v112 > 3)
  {
LABEL_15:
    if (qword_1016950E0 == -1)
    {
LABEL_16:
      v64 = type metadata accessor for Logger();
      sub_1000076D4(v64, qword_10177C448);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 134217984;
        *(v67 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v65, v66, "Invalid beaconPartId %ld!", v67, 0xCu);
      }

      v68 = type metadata accessor for BinaryDecodingError();
      sub_1000E17C4(&qword_101696E30, &type metadata accessor for BinaryDecodingError);
      swift_allocError();
      (*(*(v68 - 8) + 104))(v69, enum case for BinaryDecodingError.decodingError(_:), v68);
      swift_willThrow();
      sub_100016590(v88, v18);
      sub_100016590(v8, v89);
      sub_100016590(v90, v91);
      sub_100016590(v92, v93);
      sub_100016590(v94, v95);
      sub_100016590(v96, v97);
      sub_100016590(v98, v99);
      sub_100016590(v100, v101);
      sub_100016590(v102, v103);
      sub_100016590(v104, v105);
      v31 = v106;
      v32 = v107;
      goto LABEL_19;
    }

LABEL_40:
    swift_once();
    goto LABEL_16;
  }

  sub_100016590(v113, v114);
  sub_100016590(v8, v89);
  sub_100016590(v94, v95);
  sub_100016590(v98, v99);
  sub_100016590(v102, v103);
  sub_100016590(v108, v109);
  result = sub_100016590(v106, v107);
  if (v112 < 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v62 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v62)
    {
      v63 = BYTE6(v13);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v62 != 2)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v70 = *(v12 + 16);
  v71 = *(v12 + 24);
  v72 = __OFSUB__(v71, v70);
  v63 = v71 - v70;
  if (v72)
  {
    __break(1u);
LABEL_25:
    LODWORD(v63) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v63 = v63;
  }

LABEL_27:
  if (v63 != 32)
  {
    goto LABEL_43;
  }

  v73 = v118 >> 62;
  if ((v118 >> 62) <= 1)
  {
    if (!v73)
    {
      v74 = BYTE6(v118);
      goto LABEL_37;
    }

LABEL_35:
    LODWORD(v74) = HIDWORD(v117) - v117;
    if (!__OFSUB__(HIDWORD(v117), v117))
    {
      v74 = v74;
      goto LABEL_37;
    }

    goto LABEL_42;
  }

  if (v73 != 2)
  {
    goto LABEL_44;
  }

  v76 = *(v117 + 16);
  v75 = *(v117 + 24);
  v72 = __OFSUB__(v75, v76);
  v74 = v75 - v76;
  if (v72)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  if (v74 == 1)
  {
    sub_100007BAC(&v126);
    result = sub_100007BAC(a1);
    *a2 = v12;
    *(a2 + 8) = v13;
    v77 = v118;
    *(a2 + 16) = v117;
    *(a2 + 24) = v77;
    v78 = v128;
    *(a2 + 32) = v123;
    *(a2 + 40) = v78;
    v79 = v116;
    *(a2 + 48) = v115;
    *(a2 + 56) = v79;
    v80 = v122;
    *(a2 + 64) = v121;
    *(a2 + 72) = v80;
    v81 = v120;
    *(a2 + 80) = v119;
    *(a2 + 88) = v81;
    v82 = v111;
    *(a2 + 96) = v110;
    *(a2 + 104) = v82;
    v83 = v105;
    *(a2 + 112) = v104;
    *(a2 + 120) = v83;
    v84 = v101;
    *(a2 + 128) = v100;
    *(a2 + 136) = v84;
    v85 = v97;
    *(a2 + 144) = v96;
    *(a2 + 152) = v85;
    v86 = v93;
    *(a2 + 160) = v92;
    *(a2 + 168) = v86;
    v87 = v91;
    *(a2 + 176) = v90;
    *(a2 + 184) = v87;
    *(a2 + 192) = v112;
    *(a2 + 200) = v88;
    *(a2 + 208) = v18;
    return result;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for NotifyMeEndpoint()
{
  result = qword_10169F648;
  if (!qword_10169F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100410010()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0x697263736275732FLL;
  v3._object = 0xEA00000000006562;
  String.append(_:)(v3);
  return v2(&v5, 0);
}

uint64_t sub_10041011C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v95 = *(v5 - 8);
  v96 = v5;
  v6 = *(v95 + 64);
  __chkstk_darwin(v5);
  v94 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, &v99);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v92 = v2;
    v90 = a2;
    v8 = v98[0];
    v9 = v98[1];
    v11 = v98[2];
    v10 = v98[3];
    if (qword_1016946B0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v12 = type metadata accessor for Logger();
      v13 = sub_1000076D4(v12, qword_10177ACB0);
      sub_100017D5C(v8, v9);
      sub_100017D5C(v11, v10);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      sub_100016590(v8, v9);
      sub_100016590(v11, v10);
      v16 = os_log_type_enabled(v14, v15);
      v93 = v8;
      v97 = v13;
      if (v16)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v98[0] = v18;
        *v17 = 136315138;
        v99 = v8;
        v100 = v9;
        v101 = v11;
        v102 = v10;
        sub_100017D5C(v8, v9);
        sub_100017D5C(v11, v10);
        v19 = String.init<A>(describing:)();
        v21 = sub_1000136BC(v19, v20, v98);

        *(v17 + 4) = v21;
        v8 = v93;
        _os_log_impl(&_mh_execute_header, v14, v15, "Received beacon group data %s", v17, 0xCu);
        sub_100007BAC(v18);
      }

      sub_100017D5C(v8, v9);
      sub_100017D5C(v11, v10);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      sub_100016590(v8, v9);
      sub_100016590(v11, v10);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v99 = v25;
        *v24 = 136315138;
        v26 = Data.hexString.getter();
        v28 = sub_1000136BC(v26, v27, &v99);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "numberOfBeacons: %s", v24, 0xCu);
        sub_100007BAC(v25);
        v8 = v93;
      }

      sub_100017D5C(v8, v9);
      sub_100017D5C(v11, v10);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      sub_100016590(v8, v9);
      sub_100016590(v11, v10);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v99 = v32;
        *v31 = 136315138;
        v33 = Data.hexString.getter();
        v35 = sub_1000136BC(v33, v34, &v99);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "beaconGroupData: %s", v31, 0xCu);
        sub_100007BAC(v32);
        v8 = v93;
      }

      v99 = v8;
      v100 = v9;
      sub_1000E0A3C();
      *(v90 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = DataProtocol.intValue.getter();
      v36 = v92;
      v37 = sub_1000E0768();
      if (v36)
      {
        break;
      }

      v55 = v37;
      v84[1] = 0;

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      v58 = os_log_type_enabled(v56, v57);
      v86 = v10;
      v85 = v11;
      if (v58)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v99 = v60;
        *v59 = 136315138;
        sub_100101BAC();
        v61 = Dictionary.description.getter();
        v63 = sub_1000136BC(v61, v62, &v99);

        *(v59 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v56, v57, "beaconGroupInfo: %s", v59, 0xCu);
        sub_100007BAC(v60);
      }

      v64 = *(v90 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
      *(v90 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = v55;

      sub_1000BC4D4(&qword_10169F690, &unk_1013F7880);
      v65 = static _DictionaryStorage.copy(original:)();
      v10 = 0;
      v8 = (v55 + 8);
      v66 = 1 << *(v55 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v68 = v67 & v55[8];
      v11 = (v66 + 63) >> 6;
      v97 = v65;
      v88 = v9;
      v89 = v65 + 64;
      v87 = v55;
      if (v68)
      {
        while (1)
        {
          v69 = __clz(__rbit64(v68));
          v91 = (v68 - 1) & v68;
LABEL_29:
          v72 = v69 | (v10 << 6);
          v73 = (v55[6] + 16 * v72);
          v75 = *v73;
          v74 = v73[1];
          v76 = v94;
          sub_1000E180C(v55[7] + *(v95 + 72) * v72, v94);
          v77 = v97;
          v92 = *(v96 + 24);
          *(v89 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
          v78 = (v77[6] + 16 * v72);
          *v78 = v75;
          v78[1] = v74;
          v9 = v77[7];
          v79 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
          sub_1000E18CC(v76 + v92, v9 + *(*(v79 - 8) + 72) * v72);
          v80 = v77[2];
          v81 = __OFADD__(v80, 1);
          v82 = v80 + 1;
          if (v81)
          {
            break;
          }

          v97[2] = v82;
          sub_100017D5C(v75, v74);
          v55 = v87;
          v9 = v88;
          v68 = v91;
          if (!v91)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
LABEL_24:
        v70 = v10;
        while (1)
        {
          v10 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            break;
          }

          if (v10 >= v11)
          {

            sub_100016590(v93, v9);
            sub_100016590(v85, v86);
            v83 = *(v90 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses);
            *(v90 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = v97;
          }

          v71 = *(v8 + 8 * v10);
          ++v70;
          if (v71)
          {
            v69 = __clz(__rbit64(v71));
            v91 = (v71 - 1) & v71;
            goto LABEL_29;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_36:
      swift_once();
    }

    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v8;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "Unable to parse beacon group info due to %@, privacy: .public)", v41, 0xCu);
      sub_10000B3A8(v42, &qword_10169BB30, &unk_10138B3C0);

      sub_100016590(v40, v9);
      return sub_100016590(v11, v10);
    }

    else
    {

      sub_100016590(v8, v9);
      sub_100016590(v11, v10);
    }
  }

  else
  {
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000076D4(v45, qword_10177ACB0);
    sub_10001F280(a1, &v99);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103 = v49;
      *v48 = 136446210;
      sub_10001F280(&v99, v98);
      v50 = String.init<A>(describing:)();
      v52 = v51;
      sub_100007BAC(&v99);
      v53 = sub_1000136BC(v50, v52, &v103);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "Invalid sendBeaconGroupData payload %{public}s", v48, 0xCu);
      sub_100007BAC(v49);
    }

    else
    {

      sub_100007BAC(&v99);
    }

    sub_100413200();
    swift_allocError();
    *v54 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100410BB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v85 = a3;
  v83 = a4;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v79 - v8;
  v10 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(a1 + v10, v9, &qword_101697268, &qword_101394FE0);
  v11 = type metadata accessor for AccessoryProductInfo();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11))
  {
    v86 = 0;
    v87 = 0xF000000000000000;
  }

  else
  {
    v12 = &v9[*(v11 + 96)];
    v13 = v12[1];
    v86 = *v12;
    v87 = v13;
    sub_10002E98C(v86, v13);
  }

  sub_10000B3A8(v9, &qword_101697268, &qword_101394FE0);
  v14 = sub_100F4F600(v86, v87);
  if (v15 >> 60 == 15)
  {
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177ACB0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to generate E1 blob.", v19, 2u);
    }

    sub_100413200();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
    return sub_100006654(v86, v87);
  }

  v21 = v14;
  v22 = v15;
  v80 = v4;
  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177ACB0);
  sub_100017D5C(v21, v22);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  sub_100006654(v21, v22);
  v26 = os_log_type_enabled(v24, v25);
  v81 = v21;
  v82 = v22;
  if (v26)
  {
    v27 = v22;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v102 = v29;
    *v28 = 136315138;
    *&v88 = v21;
    *(&v88 + 1) = v27;
    sub_100413338();
    v30 = RawRepresentable<>.hexString.getter();
    v32 = sub_1000136BC(v30, v31, &v102);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "E1: %s", v28, 0xCu);
    sub_100007BAC(v29);
  }

  v33 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId + 8);
  if (v33 >> 60 == 15)
  {
    sub_100413200();
    swift_allocError();
    *v34 = 6;
    swift_willThrow();
    sub_100006654(v81, v82);
    return sub_100006654(v86, v87);
  }

  v36 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v37 = (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) & 1) == 0;
  v38 = *(a1 + 16);
  v39 = *(a1 + 24);
  v103 = v37;
  v40 = v81;
  v41 = v82;
  sub_10002E98C(v81, v82);
  sub_10002E98C(v36, v33);
  sub_100017D5C(v38, v39);
  sub_1000198E8();
  v42 = FixedWidthInteger.data.getter();
  v44 = v43;
  v45 = v39 >> 62;
  if ((v39 >> 62) <= 1)
  {
    result = v84;
    v46 = v85;
    if (!v45)
    {
      v47 = BYTE6(v39);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  result = v84;
  v46 = v85;
  if (v45 != 2)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v49 = *(v38 + 16);
  v48 = *(v38 + 24);
  v50 = __OFSUB__(v48, v49);
  v47 = v48 - v49;
  if (v50)
  {
    __break(1u);
LABEL_24:
    LODWORD(v47) = HIDWORD(v38) - v38;
    if (__OFSUB__(HIDWORD(v38), v38))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v47 = v47;
  }

LABEL_26:
  if (v47 != 32)
  {
    goto LABEL_84;
  }

  v51 = v41 >> 62;
  if ((v41 >> 62) <= 1)
  {
    if (!v51)
    {
      v52 = BYTE6(v41);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v51 != 2)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v54 = *(v40 + 16);
  v53 = *(v40 + 24);
  v50 = __OFSUB__(v53, v54);
  v52 = v53 - v54;
  if (v50)
  {
    __break(1u);
LABEL_34:
    LODWORD(v52) = HIDWORD(v40) - v40;
    if (__OFSUB__(HIDWORD(v40), v40))
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v52 = v52;
  }

LABEL_36:
  if (v52 != 113)
  {
    goto LABEL_85;
  }

  v55 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (!v55)
    {
      v56 = BYTE6(v33);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (v55 != 2)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v58 = *(v36 + 16);
  v57 = *(v36 + 24);
  v50 = __OFSUB__(v57, v58);
  v56 = v57 - v58;
  if (v50)
  {
    __break(1u);
LABEL_44:
    LODWORD(v56) = HIDWORD(v36) - v36;
    if (__OFSUB__(HIDWORD(v36), v36))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v56 = v56;
  }

LABEL_46:
  if (v56 != 32)
  {
    goto LABEL_86;
  }

  v59 = v44 >> 62;
  if ((v44 >> 62) <= 1)
  {
    if (!v59)
    {
      v60 = BYTE6(v44);
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v59 != 2)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v62 = *(v42 + 16);
  v61 = *(v42 + 24);
  v50 = __OFSUB__(v61, v62);
  v60 = v61 - v62;
  if (v50)
  {
    __break(1u);
LABEL_54:
    LODWORD(v60) = HIDWORD(v42) - v42;
    if (__OFSUB__(HIDWORD(v42), v42))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v60 = v60;
  }

LABEL_56:
  if (v60 != 1)
  {
    goto LABEL_87;
  }

  v63 = v46 >> 62;
  if ((v46 >> 62) <= 1)
  {
    if (!v63)
    {
      v64 = BYTE6(v46);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (v63 != 2)
  {
    goto LABEL_88;
  }

  v66 = *(result + 16);
  v65 = *(result + 24);
  v50 = __OFSUB__(v65, v66);
  v64 = v65 - v66;
  if (v50)
  {
    __break(1u);
LABEL_64:
    LODWORD(v64) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v64 = v64;
  }

LABEL_66:
  if (v64 == 96)
  {
    *&v102 = result;
    *(&v102 + 1) = v46;
    v79 = v44;
    if (v63 == 2)
    {
      v69 = *(result + 16);
      v68 = *(result + 24);
      v67 = v68 - v69;
      if (__OFSUB__(v68, v69))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    else
    {
      if (v63 != 1)
      {
        v67 = BYTE6(v46);
        goto LABEL_74;
      }

      if (__OFSUB__(HIDWORD(result), result))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v67 = HIDWORD(result) - result;
    }

    sub_100017D5C(result, v46);
LABEL_74:
    result = 96 - v67;
    if (!__OFSUB__(96, v67))
    {
      *&v88 = sub_100845C88(result);
      *(&v88 + 1) = v70;
      sub_100776394(&v88, 0);
      v84 = v33;
      v85 = v42;
      v80 = v36;
      v71 = v88;
      Data.append(_:)();
      sub_100006654(v86, v87);
      sub_100006654(v40, v41);
      sub_100016590(v71, *(&v71 + 1));
      *&v88 = v38;
      *(&v88 + 1) = v39;
      *&v89 = v40;
      *(&v89 + 1) = v41;
      *&v90 = v80;
      *(&v90 + 1) = v84;
      v91 = v102;
      *&v92 = v85;
      *(&v92 + 1) = v79;
      result = sub_1001DAAA0(&v88);
      v72 = v99;
      v73 = v83;
      *(v83 + 160) = v98;
      *(v73 + 176) = v72;
      *(v73 + 192) = v100;
      *(v73 + 208) = v101;
      v74 = v95;
      *(v73 + 96) = v94;
      *(v73 + 112) = v74;
      v75 = v97;
      *(v73 + 128) = v96;
      *(v73 + 144) = v75;
      v76 = v91;
      *(v73 + 32) = v90;
      *(v73 + 48) = v76;
      v77 = v93;
      *(v73 + 64) = v92;
      *(v73 + 80) = v77;
      v78 = v89;
      *v73 = v88;
      *(v73 + 16) = v78;
      return result;
    }

    __break(1u);
    goto LABEL_77;
  }

LABEL_88:
  __break(1u);
  return result;
}
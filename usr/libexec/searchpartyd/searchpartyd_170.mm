void sub_101170CAC(void *a1, void *a2)
{
  v3 = v2;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v6 = a1[15];
    object = a1[16];
    v8 = sub_10111EACC(v6, object, qword_10177C6E8);
    if (v8)
    {
      break;
    }

    v244 = a2;
    v246 = v3;
    v14 = sub_1011709D8(v8);
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v3 = v17 & *(v14 + 64);
    swift_beginAccess();
    v18 = 0;
    v19 = (v16 + 63) >> 6;
    *&v20 = 138412290;
    v245 = v20;
    v248 = a1;
    v247 = v14;
    while (v3)
    {
LABEL_15:
      v22 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v23 = (v18 << 10) | (16 * v22);
      v24 = *(v14 + 56);
      v25 = (*(v14 + 48) + v23);
      v26 = v25[1];
      v251 = *v25;
      v27 = (v24 + v23);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = a1[14];
      v31 = *(v30 + 16);
      v252 = v26;

      v250 = v28;
      sub_10090C56C(v28, v29);
      v249 = v29;
      if (v31)
      {

        v32 = sub_100771D58(v251, v252);
        if ((v33 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v30 + 56) + 48 * v32, &v259);

        if (v29 <= 1)
        {
          if (v29)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v34 = NSNumber.init(BOOLeanLiteral:)(v250 & 1).super.super.isa;
          }

          else
          {
            v34 = v250;
          }

          v98 = v34;
          goto LABEL_102;
        }

        if (v29 != 2)
        {
          sub_1010100EC(&v259, &v254);
          if (v255[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v254);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v259);
            return;
          }

          v99 = v250;
          sub_10000A748(&v254._countAndFlagsBits, v256);
          v100 = v257;
          v101 = sub_1000035D0(v256, v257);
          v102 = *(*(v100 - 8) + 64);
          __chkstk_darwin(v101);
          (*(v104 + 16))(v238 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v248;
          v98 = [objc_allocWithZone(NSNumber) initWithDouble:*&v254._countAndFlagsBits + *&v99];
          sub_100007BAC(v256);
          goto LABEL_102;
        }

        sub_1010100EC(&v259, &v254);
        if (v255[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v254._countAndFlagsBits, v256);
        v81 = v257;
        v80 = v258;
        v82 = sub_1000035D0(v256, v257);
        v242 = v238;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v240 = v84;
        v85 = v238 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v243 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v254._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v241 = v80;
            v239 = v238;
            __chkstk_darwin(v87);
            v89 = v238 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v241 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v243 + 8))(v89, v81);
            v80 = v241;
            if (v91)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v239) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v132 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v239)
            {
              v241 = v80;
              if (v132 <= 64)
              {
                v239 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v238[3] = v238;
                v139 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v238[1] = v238 - v140;
                swift_getAssociatedConformanceWitness();
                v141 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v238[2] = v238;
                __chkstk_darwin(v141);
                v143 = v238 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v144 = *(*(v241 + 32) + 8);
                v145 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v243 + 8))(v143, v81);
                if (v145)
                {
                  goto LABEL_163;
                }

                v80 = v241;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v239 = v238;
              __chkstk_darwin(v132);
              v134 = v238 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v135 = *(*(v241 + 32) + 8);
              v136 = dispatch thunk of static Comparable.< infix(_:_:)();
              v137 = v134;
              v80 = v241;
              (*(v243 + 8))(v137, v81);
              if (v136)
              {
                goto LABEL_163;
              }
            }

            else if (v132 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v254._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v146 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v147 = v80;
          v148 = v146;
          v241 = v147;
          v149 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v148)
          {
            if (v149 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v149 >= 64)
          {
LABEL_93:
            v239 = v238;
            __chkstk_darwin(v149);
            v240 = v238 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v151 = v241;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v152 = *(*(v151 + 32) + 8);
            v153 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v243 + 8))(v240, v81);
            if (v153)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v154 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v243 + 8))(v85, v81);
        v49 = __OFADD__(v154, v250);
        v155 = &v250[v154];
        if (v49)
        {
          goto LABEL_154;
        }

        v98 = [objc_allocWithZone(NSNumber) initWithLongLong:v155];
        sub_100007BAC(v256);
        a1 = v248;
LABEL_102:
        objc_opt_self();
        v156 = swift_dynamicCastObjCClass();
        if (v156)
        {
          v157 = v156;
          v158 = v98;
          v159 = String.init(_:)(v157);
          v160 = a1;
          v161 = sub_1000DF96C();
          swift_beginAccess();
          v254 = v159;
          *&v255[8] = &type metadata for String;
          *&v255[16] = v161;
          v255[24] = 1;
          v162 = v160[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v253 = v160[14];
          v164 = v253;
          v160[14] = 0x8000000000000000;
          v165 = sub_100771D58(v251, v252);
          v167 = v164[2];
          v168 = (v166 & 1) == 0;
          v49 = __OFADD__(v167, v168);
          v169 = v167 + v168;
          if (v49)
          {
            goto LABEL_151;
          }

          v170 = v166;
          if (v164[3] >= v169)
          {
            v14 = v247;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v233 = v165;
              sub_1010050E8();
              v165 = v233;
            }
          }

          else
          {
            sub_100FE65C4(v169, isUniquelyReferenced_nonNull_native);
            v165 = sub_100771D58(v251, v252);
            v14 = v247;
            if ((v170 & 1) != (v171 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v248;
          if (v170)
          {
            v191 = v165;

            a2 = v253;
            sub_10118B568(&v254, v253[7] + 48 * v191);
          }

          else
          {
            a2 = v253;
            v253[(v165 >> 6) + 8] |= 1 << v165;
            v192 = (a2[6] + 16 * v165);
            v193 = v252;
            *v192 = v251;
            v192[1] = v193;
            v194 = (a2[7] + 48 * v165);
            v195 = *&v255[9];
            v196 = *v255;
            *v194 = v254;
            v194[1] = v196;
            *(&v194[1]._object + 1) = v195;
            v197 = a2[2];
            v49 = __OFADD__(v197, 1);
            v198 = v197 + 1;
            if (v49)
            {
              goto LABEL_153;
            }

            a2[2] = v198;
          }

          v199 = v249;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v250, v199);

          goto LABEL_120;
        }

        objc_opt_self();
        v172 = swift_dynamicCastObjCClass();
        if (v172)
        {
          v173 = v172;
          [v172 doubleValue];
          v175 = v174;
          v176 = [v173 integerValue];
          if (v175 == v176)
          {
            v177 = v176;
            v178 = sub_1000DFAD8();
            swift_beginAccess();
            v254._countAndFlagsBits = v177;
            *&v255[8] = &type metadata for Int;
            *&v255[16] = v178;
            v255[24] = 2;
            v179 = a1[14];
            v180 = swift_isUniquelyReferenced_nonNull_native();
            v181 = a1;
            v182 = v180;
            v253 = v181[14];
            v183 = v253;
            v181[14] = 0x8000000000000000;
            v184 = sub_100771D58(v251, v252);
            v186 = v183[2];
            v187 = (v185 & 1) == 0;
            v49 = __OFADD__(v186, v187);
            v188 = v186 + v187;
            if (v49)
            {
              goto LABEL_157;
            }

            v189 = v185;
            if (v183[3] >= v188)
            {
              if ((v182 & 1) == 0)
              {
                v236 = v184;
                sub_1010050E8();
                v184 = v236;
              }
            }

            else
            {
              sub_100FE65C4(v188, v182);
              v184 = sub_100771D58(v251, v252);
              if ((v189 & 1) != (v190 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v248;
            if ((v189 & 1) == 0)
            {
              a2 = v253;
              v253[(v184 >> 6) + 8] |= 1 << v184;
              v217 = (a2[6] + 16 * v184);
              v218 = v252;
              *v217 = v251;
              v217[1] = v218;
              v219 = (a2[7] + 48 * v184);
              v220 = *&v255[9];
              v221 = *v255;
              *v219 = v254;
              v219[1] = v221;
              *(&v219[1]._object + 1) = v220;
              v222 = a2[2];
              v49 = __OFADD__(v222, 1);
              v223 = v222 + 1;
              if (v49)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v224 = v184;

            a2 = v253;
            sub_10118B568(&v254, v253[7] + 48 * v224);
          }

          else
          {
            v205 = sub_1000DFA84();
            swift_beginAccess();
            *&v254._countAndFlagsBits = v175;
            *&v255[8] = &type metadata for Double;
            *&v255[16] = v205;
            v255[24] = 3;
            v206 = a1[14];
            v207 = swift_isUniquelyReferenced_nonNull_native();
            v208 = a1;
            v209 = v207;
            v253 = v208[14];
            v210 = v253;
            v208[14] = 0x8000000000000000;
            v184 = sub_100771D58(v251, v252);
            v212 = v210[2];
            v213 = (v211 & 1) == 0;
            v49 = __OFADD__(v212, v213);
            v214 = v212 + v213;
            if (v49)
            {
              goto LABEL_159;
            }

            v215 = v211;
            if (v210[3] >= v214)
            {
              if ((v209 & 1) == 0)
              {
                v237 = v184;
                sub_1010050E8();
                v184 = v237;
              }
            }

            else
            {
              sub_100FE65C4(v214, v209);
              v184 = sub_100771D58(v251, v252);
              if ((v215 & 1) != (v216 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v248;
            if (v215)
            {
              goto LABEL_139;
            }

            a2 = v253;
            v253[(v184 >> 6) + 8] |= 1 << v184;
            v225 = (a2[6] + 16 * v184);
            v226 = v252;
            *v225 = v251;
            v225[1] = v226;
            v227 = (a2[7] + 48 * v184);
            v228 = *&v255[9];
            v229 = *v255;
            *v227 = v254;
            v227[1] = v229;
            *(&v227[1]._object + 1) = v228;
            v230 = a2[2];
            v49 = __OFADD__(v230, 1);
            v223 = v230 + 1;
            if (v49)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v223;
          }

          v231 = v249;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v250, v231);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v200 = type metadata accessor for Logger();
        sub_1000076D4(v200, qword_10177C6D0);
        v201 = v98;
        v158 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v158, a2))
        {

          sub_101010148(v250, v249);
LABEL_120:

          goto LABEL_143;
        }

        v202 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        *v202 = v245;
        *(v202 + 4) = v201;
        *v203 = v201;
        v204 = v201;
        _os_log_impl(&_mh_execute_header, v158, a2, "Unsupported value type: %@!", v202, 0xCu);
        sub_10000B3A8(v203, &qword_10169BB30, &unk_10138B3C0);
        v14 = v247;

        a1 = v248;

        sub_101010148(v250, v249);
LABEL_143:
        sub_10118B5A0(&v259);
      }

      else
      {
LABEL_21:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v36 = objc_allocWithZone(NSNumber);
            isa = [v36 initWithLongLong:v250];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v250];
          }
        }

        else if (v29)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v250 & 1).super.super.isa;
        }

        else
        {
          isa = v250;
        }

        v37 = isa;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          v6 = v37;
          v40 = String.init(_:)(v39);
          object = v40._object;
          v41 = sub_1000DF96C();
          swift_beginAccess();
          v259 = v40;
          *&v260[8] = &type metadata for String;
          *&v260[16] = v41;
          v260[24] = 1;
          v42 = a1[14];
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v256[0] = a1[14];
          v44 = v256[0];
          a1[14] = 0x8000000000000000;
          v45 = sub_100771D58(v251, v252);
          v47 = *(v44 + 16);
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            __break(1u);
            goto LABEL_149;
          }

          v51 = v46;
          if (*(v44 + 24) >= v50)
          {
            if ((v43 & 1) == 0)
            {
              v232 = v45;
              sub_1010050E8();
              v45 = v232;
            }
          }

          else
          {
            sub_100FE65C4(v50, v43);
            v45 = sub_100771D58(v251, v252);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v248;
          v14 = v247;
          if (v51)
          {
            v72 = v45;

            a2 = v256[0];
            sub_10118B568(&v259, *(v256[0] + 56) + 48 * v72);
          }

          else
          {
            a2 = v256[0];
            *(v256[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v73 = (a2[6] + 16 * v45);
            v74 = v252;
            *v73 = v251;
            v73[1] = v74;
            v75 = (a2[7] + 48 * v45);
            v76 = *&v260[9];
            v77 = *v260;
            *v75 = v259;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = a2[2];
            v49 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v49)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v79;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v250, v249);
        }

        else
        {
          objc_opt_self();
          v53 = swift_dynamicCastObjCClass();
          if (v53)
          {
            v54 = v53;
            [v53 doubleValue];
            v56 = v55;
            v57 = [v54 integerValue];
            if (v56 == v57)
            {
              v58 = v57;
              v59 = sub_1000DFAD8();
              swift_beginAccess();
              v259._countAndFlagsBits = v58;
              *&v260[8] = &type metadata for Int;
              *&v260[16] = v59;
              v260[24] = 2;
              v60 = a1[14];
              v61 = swift_isUniquelyReferenced_nonNull_native();
              v62 = a1;
              v63 = v61;
              v256[0] = v62[14];
              v64 = v256[0];
              v62[14] = 0x8000000000000000;
              v65 = sub_100771D58(v251, v252);
              v67 = *(v64 + 16);
              v68 = (v66 & 1) == 0;
              v49 = __OFADD__(v67, v68);
              v69 = v67 + v68;
              if (v49)
              {
                goto LABEL_152;
              }

              v70 = v66;
              if (*(v64 + 24) >= v69)
              {
                if ((v63 & 1) == 0)
                {
                  v234 = v65;
                  sub_1010050E8();
                  v65 = v234;
                }
              }

              else
              {
                sub_100FE65C4(v69, v63);
                v65 = sub_100771D58(v251, v252);
                if ((v70 & 1) != (v71 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v248;
              if (v70)
              {
                goto LABEL_77;
              }

              a2 = v256[0];
              *(v256[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v117 = (a2[6] + 16 * v65);
              v118 = v252;
              *v117 = v251;
              v117[1] = v118;
              v119 = (a2[7] + 48 * v65);
              v120 = *&v260[9];
              v121 = *v260;
              *v119 = v259;
              v119[1] = v121;
              *(&v119[1]._object + 1) = v120;
              v122 = a2[2];
              v49 = __OFADD__(v122, 1);
              v123 = v122 + 1;
              if (v49)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v105 = sub_1000DFA84();
              swift_beginAccess();
              *&v259._countAndFlagsBits = v56;
              *&v260[8] = &type metadata for Double;
              *&v260[16] = v105;
              v260[24] = 3;
              v106 = a1[14];
              v107 = swift_isUniquelyReferenced_nonNull_native();
              v108 = a1;
              v109 = v107;
              v256[0] = v108[14];
              v110 = v256[0];
              v108[14] = 0x8000000000000000;
              v65 = sub_100771D58(v251, v252);
              v112 = *(v110 + 16);
              v113 = (v111 & 1) == 0;
              v49 = __OFADD__(v112, v113);
              v114 = v112 + v113;
              if (v49)
              {
                goto LABEL_155;
              }

              v115 = v111;
              if (*(v110 + 24) >= v114)
              {
                if ((v109 & 1) == 0)
                {
                  v235 = v65;
                  sub_1010050E8();
                  v65 = v235;
                }
              }

              else
              {
                sub_100FE65C4(v114, v109);
                v65 = sub_100771D58(v251, v252);
                if ((v115 & 1) != (v116 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v248;
              if (v115)
              {
LABEL_77:
                v124 = v65;

                a2 = v256[0];
                sub_10118B568(&v259, *(v256[0] + 56) + 48 * v124);
                goto LABEL_80;
              }

              a2 = v256[0];
              *(v256[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v125 = (a2[6] + 16 * v65);
              v126 = v252;
              *v125 = v251;
              v125[1] = v126;
              v127 = (a2[7] + 48 * v65);
              v128 = *&v260[9];
              v129 = *v260;
              *v127 = v259;
              v127[1] = v129;
              *(&v127[1]._object + 1) = v128;
              v130 = a2[2];
              v49 = __OFADD__(v130, 1);
              v123 = v130 + 1;
              if (v49)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v123;
LABEL_80:
            v131 = v249;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v250, v131);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            sub_1000076D4(v92, qword_10177C6D0);
            v93 = v37;
            v94 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v94, a2))
            {
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              *v95 = v245;
              *(v95 + 4) = v93;
              *v96 = v93;
              v97 = v93;
              _os_log_impl(&_mh_execute_header, v94, a2, "Unsupported value type: %@!", v95, 0xCu);
              sub_10000B3A8(v96, &qword_10169BB30, &unk_10138B3C0);
              v14 = v247;

              a1 = v248;

              goto LABEL_46;
            }

            sub_101010148(v250, v249);
          }
        }
      }
    }

    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v3 = *(v15 + 8 * v21);
      ++v18;
      if (v3)
      {
        v18 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C6D0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v259._countAndFlagsBits = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1000136BC(v6, object, &v259._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v10, v11, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v12, 0xCu);
    sub_100007BAC(v13);
  }
}

unint64_t sub_1011726B8(char a1)
{
  result = 0x6552746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
    case 7:
    case 13:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 12:
    case 14:
      result = 0xD000000000000013;
      break;
    case 8:
    case 10:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6C627550666C6573;
      break;
    case 11:
      return result;
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

void sub_101172840(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  static Transaction.asyncTask(name:block:)();

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CE28);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "analytics: logged key decryption error to CA", v7, 2u);
  }
}

void sub_1011729A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    _os_log_impl(&_mh_execute_header, oslog, v10, "analytics: logged fetch failure event to CA", v11, 2u);
  }
}

void sub_101172B1C(void *a1, void *a2, double a3)
{
  v4 = v3;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v8 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v8, object, qword_10177C6E8))
    {
      break;
    }

    v245 = v4;
    v243 = a2;
    v15 = sub_10069D698(a2, a3);
    v16 = v15 + 64;
    v17 = 1 << v15[32];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v4 = v18 & *(v15 + 8);
    swift_beginAccess();
    v19 = 0;
    v20 = (v17 + 63) >> 6;
    *&v21 = 138412290;
    v244 = v21;
    v247 = a1;
    v246 = v15;
    while (v4)
    {
LABEL_15:
      v23 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v24 = (v19 << 10) | (16 * v23);
      v25 = *(v15 + 7);
      v26 = (*(v15 + 6) + v24);
      v27 = v26[1];
      v250 = *v26;
      v28 = (v25 + v24);
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = a1[14];
      v32 = *(v31 + 16);
      v251 = v27;

      v249 = v29;
      sub_10090C56C(v29, v30);
      v248 = v30;
      if (v32)
      {

        v33 = sub_100771D58(v250, v251);
        if ((v34 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v31 + 56) + 48 * v33, &v258);

        if (v30 <= 1)
        {
          if (v30)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v35 = NSNumber.init(BOOLeanLiteral:)(v249 & 1).super.super.isa;
          }

          else
          {
            v35 = v249;
          }

          v98 = v35;
          goto LABEL_102;
        }

        if (v30 != 2)
        {
          sub_1010100EC(&v258, &v253);
          if (v254[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v253);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v258);
            return;
          }

          v99 = v249;
          sub_10000A748(&v253._countAndFlagsBits, v255);
          v100 = v256;
          v101 = sub_1000035D0(v255, v256);
          v102 = *(*(v100 - 8) + 64);
          __chkstk_darwin(v101);
          (*(v104 + 16))(v237 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v247;
          a3 = *&v253._countAndFlagsBits + *&v99;
          v98 = [objc_allocWithZone(NSNumber) initWithDouble:a3];
          sub_100007BAC(v255);
          goto LABEL_102;
        }

        sub_1010100EC(&v258, &v253);
        if (v254[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v253._countAndFlagsBits, v255);
        v81 = v256;
        v80 = v257;
        v82 = sub_1000035D0(v255, v256);
        v241 = v237;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v239 = v84;
        v85 = v237 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v242 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v253._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v240 = v80;
            v238 = v237;
            __chkstk_darwin(v87);
            v89 = v237 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v240 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v242 + 8))(v89, v81);
            v80 = v240;
            if (v91)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v238) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v132 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v238)
            {
              v240 = v80;
              if (v132 <= 64)
              {
                v238 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v237[3] = v237;
                v139 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v237[1] = v237 - v140;
                swift_getAssociatedConformanceWitness();
                v141 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v237[2] = v237;
                __chkstk_darwin(v141);
                v143 = v237 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v144 = *(*(v240 + 32) + 8);
                v145 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v242 + 8))(v143, v81);
                if (v145)
                {
                  goto LABEL_163;
                }

                v80 = v240;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v238 = v237;
              __chkstk_darwin(v132);
              v134 = v237 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v135 = *(*(v240 + 32) + 8);
              v136 = dispatch thunk of static Comparable.< infix(_:_:)();
              v137 = v134;
              v80 = v240;
              (*(v242 + 8))(v137, v81);
              if (v136)
              {
                goto LABEL_163;
              }
            }

            else if (v132 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v253._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v146 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v147 = v80;
          v148 = v146;
          v240 = v147;
          v149 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v148)
          {
            if (v149 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v149 >= 64)
          {
LABEL_93:
            v238 = v237;
            __chkstk_darwin(v149);
            v239 = v237 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v151 = v240;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v152 = *(*(v151 + 32) + 8);
            v153 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v242 + 8))(v239, v81);
            if (v153)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v154 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v242 + 8))(v85, v81);
        v50 = __OFADD__(v154, v249);
        v155 = &v249[v154];
        if (v50)
        {
          goto LABEL_154;
        }

        v98 = [objc_allocWithZone(NSNumber) initWithLongLong:v155];
        sub_100007BAC(v255);
        a1 = v247;
LABEL_102:
        objc_opt_self();
        v156 = swift_dynamicCastObjCClass();
        if (v156)
        {
          v157 = v156;
          v158 = v98;
          v159 = String.init(_:)(v157);
          v160 = a1;
          v161 = sub_1000DF96C();
          swift_beginAccess();
          v253 = v159;
          *&v254[8] = &type metadata for String;
          *&v254[16] = v161;
          v254[24] = 1;
          v162 = v160[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v252 = v160[14];
          v164 = v252;
          v160[14] = 0x8000000000000000;
          v165 = sub_100771D58(v250, v251);
          v167 = v164[2];
          v168 = (v166 & 1) == 0;
          v50 = __OFADD__(v167, v168);
          v169 = v167 + v168;
          if (v50)
          {
            goto LABEL_151;
          }

          v170 = v166;
          if (v164[3] >= v169)
          {
            v15 = v246;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v232 = v165;
              sub_1010050E8();
              v165 = v232;
            }
          }

          else
          {
            sub_100FE65C4(v169, isUniquelyReferenced_nonNull_native);
            v165 = sub_100771D58(v250, v251);
            v15 = v246;
            if ((v170 & 1) != (v171 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v247;
          if (v170)
          {
            v190 = v165;

            a2 = v252;
            sub_10118B568(&v253, v252[7] + 48 * v190);
          }

          else
          {
            a2 = v252;
            v252[(v165 >> 6) + 8] |= 1 << v165;
            v191 = (a2[6] + 16 * v165);
            v192 = v251;
            *v191 = v250;
            v191[1] = v192;
            v193 = (a2[7] + 48 * v165);
            v194 = *&v254[9];
            v195 = *v254;
            *v193 = v253;
            v193[1] = v195;
            *(&v193[1]._object + 1) = v194;
            v196 = a2[2];
            v50 = __OFADD__(v196, 1);
            v197 = v196 + 1;
            if (v50)
            {
              goto LABEL_153;
            }

            a2[2] = v197;
          }

          v198 = v248;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v249, v198);

          goto LABEL_120;
        }

        objc_opt_self();
        v172 = swift_dynamicCastObjCClass();
        if (v172)
        {
          v173 = v172;
          [v172 doubleValue];
          a3 = v174;
          v175 = [v173 integerValue];
          if (a3 == v175)
          {
            v176 = v175;
            v177 = sub_1000DFAD8();
            swift_beginAccess();
            v253._countAndFlagsBits = v176;
            *&v254[8] = &type metadata for Int;
            *&v254[16] = v177;
            v254[24] = 2;
            v178 = a1[14];
            v179 = swift_isUniquelyReferenced_nonNull_native();
            v180 = a1;
            v181 = v179;
            v252 = v180[14];
            v182 = v252;
            v180[14] = 0x8000000000000000;
            v183 = sub_100771D58(v250, v251);
            v185 = v182[2];
            v186 = (v184 & 1) == 0;
            v50 = __OFADD__(v185, v186);
            v187 = v185 + v186;
            if (v50)
            {
              goto LABEL_157;
            }

            v188 = v184;
            if (v182[3] >= v187)
            {
              if ((v181 & 1) == 0)
              {
                v235 = v183;
                sub_1010050E8();
                v183 = v235;
              }
            }

            else
            {
              sub_100FE65C4(v187, v181);
              v183 = sub_100771D58(v250, v251);
              if ((v188 & 1) != (v189 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v247;
            if ((v188 & 1) == 0)
            {
              a2 = v252;
              v252[(v183 >> 6) + 8] |= 1 << v183;
              v216 = (a2[6] + 16 * v183);
              v217 = v251;
              *v216 = v250;
              v216[1] = v217;
              v218 = (a2[7] + 48 * v183);
              v219 = *&v254[9];
              v220 = *v254;
              *v218 = v253;
              v218[1] = v220;
              *(&v218[1]._object + 1) = v219;
              v221 = a2[2];
              v50 = __OFADD__(v221, 1);
              v222 = v221 + 1;
              if (v50)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v223 = v183;

            a2 = v252;
            sub_10118B568(&v253, v252[7] + 48 * v223);
          }

          else
          {
            v204 = sub_1000DFA84();
            swift_beginAccess();
            *&v253._countAndFlagsBits = a3;
            *&v254[8] = &type metadata for Double;
            *&v254[16] = v204;
            v254[24] = 3;
            v205 = a1[14];
            v206 = swift_isUniquelyReferenced_nonNull_native();
            v207 = a1;
            v208 = v206;
            v252 = v207[14];
            v209 = v252;
            v207[14] = 0x8000000000000000;
            v183 = sub_100771D58(v250, v251);
            v211 = v209[2];
            v212 = (v210 & 1) == 0;
            v50 = __OFADD__(v211, v212);
            v213 = v211 + v212;
            if (v50)
            {
              goto LABEL_159;
            }

            v214 = v210;
            if (v209[3] >= v213)
            {
              if ((v208 & 1) == 0)
              {
                v236 = v183;
                sub_1010050E8();
                v183 = v236;
              }
            }

            else
            {
              sub_100FE65C4(v213, v208);
              v183 = sub_100771D58(v250, v251);
              if ((v214 & 1) != (v215 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v247;
            if (v214)
            {
              goto LABEL_139;
            }

            a2 = v252;
            v252[(v183 >> 6) + 8] |= 1 << v183;
            v224 = (a2[6] + 16 * v183);
            v225 = v251;
            *v224 = v250;
            v224[1] = v225;
            v226 = (a2[7] + 48 * v183);
            v227 = *&v254[9];
            v228 = *v254;
            *v226 = v253;
            v226[1] = v228;
            *(&v226[1]._object + 1) = v227;
            v229 = a2[2];
            v50 = __OFADD__(v229, 1);
            v222 = v229 + 1;
            if (v50)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v222;
          }

          v230 = v248;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v249, v230);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v199 = type metadata accessor for Logger();
        sub_1000076D4(v199, qword_10177C6D0);
        v200 = v98;
        v158 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v158, a2))
        {

          sub_101010148(v249, v248);
LABEL_120:

          goto LABEL_143;
        }

        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        *v201 = v244;
        *(v201 + 4) = v200;
        *v202 = v200;
        v203 = v200;
        _os_log_impl(&_mh_execute_header, v158, a2, "Unsupported value type: %@!", v201, 0xCu);
        sub_10000B3A8(v202, &qword_10169BB30, &unk_10138B3C0);
        v15 = v246;

        a1 = v247;

        sub_101010148(v249, v248);
LABEL_143:
        sub_10118B5A0(&v258);
      }

      else
      {
LABEL_21:
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            v37 = objc_allocWithZone(NSNumber);
            isa = [v37 initWithLongLong:v249];
          }

          else
          {
            a3 = *&v249;
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v249];
          }
        }

        else if (v30)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v249 & 1).super.super.isa;
        }

        else
        {
          isa = v249;
        }

        v38 = isa;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v8 = v38;
          v41 = String.init(_:)(v40);
          object = v41._object;
          v42 = sub_1000DF96C();
          swift_beginAccess();
          v258 = v41;
          *&v259[8] = &type metadata for String;
          *&v259[16] = v42;
          v259[24] = 1;
          v43 = a1[14];
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v255[0] = a1[14];
          v45 = v255[0];
          a1[14] = 0x8000000000000000;
          v46 = sub_100771D58(v250, v251);
          v48 = *(v45 + 16);
          v49 = (v47 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            __break(1u);
            goto LABEL_149;
          }

          v52 = v47;
          if (*(v45 + 24) >= v51)
          {
            if ((v44 & 1) == 0)
            {
              v231 = v46;
              sub_1010050E8();
              v46 = v231;
            }
          }

          else
          {
            sub_100FE65C4(v51, v44);
            v46 = sub_100771D58(v250, v251);
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v247;
          v15 = v246;
          if (v52)
          {
            v72 = v46;

            a2 = v255[0];
            sub_10118B568(&v258, *(v255[0] + 56) + 48 * v72);
          }

          else
          {
            a2 = v255[0];
            *(v255[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v73 = (a2[6] + 16 * v46);
            v74 = v251;
            *v73 = v250;
            v73[1] = v74;
            v75 = (a2[7] + 48 * v46);
            v76 = *&v259[9];
            v77 = *v259;
            *v75 = v258;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = a2[2];
            v50 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v50)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v79;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v249, v248);
        }

        else
        {
          objc_opt_self();
          v54 = swift_dynamicCastObjCClass();
          if (v54)
          {
            v55 = v54;
            [v54 doubleValue];
            a3 = v56;
            v57 = [v55 integerValue];
            if (a3 == v57)
            {
              v58 = v57;
              v59 = sub_1000DFAD8();
              swift_beginAccess();
              v258._countAndFlagsBits = v58;
              *&v259[8] = &type metadata for Int;
              *&v259[16] = v59;
              v259[24] = 2;
              v60 = a1[14];
              v61 = swift_isUniquelyReferenced_nonNull_native();
              v62 = a1;
              v63 = v61;
              v255[0] = v62[14];
              v64 = v255[0];
              v62[14] = 0x8000000000000000;
              v65 = sub_100771D58(v250, v251);
              v67 = *(v64 + 16);
              v68 = (v66 & 1) == 0;
              v50 = __OFADD__(v67, v68);
              v69 = v67 + v68;
              if (v50)
              {
                goto LABEL_152;
              }

              v70 = v66;
              if (*(v64 + 24) >= v69)
              {
                if ((v63 & 1) == 0)
                {
                  v233 = v65;
                  sub_1010050E8();
                  v65 = v233;
                }
              }

              else
              {
                sub_100FE65C4(v69, v63);
                v65 = sub_100771D58(v250, v251);
                if ((v70 & 1) != (v71 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v247;
              if (v70)
              {
                goto LABEL_77;
              }

              a2 = v255[0];
              *(v255[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v117 = (a2[6] + 16 * v65);
              v118 = v251;
              *v117 = v250;
              v117[1] = v118;
              v119 = (a2[7] + 48 * v65);
              v120 = *&v259[9];
              v121 = *v259;
              *v119 = v258;
              v119[1] = v121;
              *(&v119[1]._object + 1) = v120;
              v122 = a2[2];
              v50 = __OFADD__(v122, 1);
              v123 = v122 + 1;
              if (v50)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v105 = sub_1000DFA84();
              swift_beginAccess();
              *&v258._countAndFlagsBits = a3;
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
              v65 = sub_100771D58(v250, v251);
              v112 = *(v110 + 16);
              v113 = (v111 & 1) == 0;
              v50 = __OFADD__(v112, v113);
              v114 = v112 + v113;
              if (v50)
              {
                goto LABEL_155;
              }

              v115 = v111;
              if (*(v110 + 24) >= v114)
              {
                if ((v109 & 1) == 0)
                {
                  v234 = v65;
                  sub_1010050E8();
                  v65 = v234;
                }
              }

              else
              {
                sub_100FE65C4(v114, v109);
                v65 = sub_100771D58(v250, v251);
                if ((v115 & 1) != (v116 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v247;
              if (v115)
              {
LABEL_77:
                v124 = v65;

                a2 = v255[0];
                sub_10118B568(&v258, *(v255[0] + 56) + 48 * v124);
                goto LABEL_80;
              }

              a2 = v255[0];
              *(v255[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v125 = (a2[6] + 16 * v65);
              v126 = v251;
              *v125 = v250;
              v125[1] = v126;
              v127 = (a2[7] + 48 * v65);
              v128 = *&v259[9];
              v129 = *v259;
              *v127 = v258;
              v127[1] = v129;
              *(&v127[1]._object + 1) = v128;
              v130 = a2[2];
              v50 = __OFADD__(v130, 1);
              v123 = v130 + 1;
              if (v50)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v123;
LABEL_80:
            v131 = v248;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v249, v131);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            sub_1000076D4(v92, qword_10177C6D0);
            v93 = v38;
            v94 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v94, a2))
            {
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              *v95 = v244;
              *(v95 + 4) = v93;
              *v96 = v93;
              v97 = v93;
              _os_log_impl(&_mh_execute_header, v94, a2, "Unsupported value type: %@!", v95, 0xCu);
              sub_10000B3A8(v96, &qword_10169BB30, &unk_10138B3C0);
              v15 = v246;

              a1 = v247;

              goto LABEL_46;
            }

            sub_101010148(v249, v248);
          }
        }
      }
    }

    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        return;
      }

      v4 = *&v16[8 * v22];
      ++v19;
      if (v4)
      {
        v19 = v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C6D0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v258._countAndFlagsBits = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000136BC(v8, object, &v258._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v11, v12, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v13, 0xCu);
    sub_100007BAC(v14);
  }
}

void sub_101174574(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), int64_t a4)
{
  v7 = v4;
  if (qword_101695280 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v10 = a1[15];
    v11 = a1[16];
    if (sub_10111EACC(v10, v11, qword_10177C6E8))
    {
      break;
    }

    v242 = a4;
    v244 = v7;
    v241 = a2;
    v17 = a3(a2);
    a3 = (v17 + 64);
    v18 = *(v17 + 64);
    v248 = v17;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    swift_beginAccess();
    v22 = 0;
    a4 = (v19 + 63) >> 6;
    *&v23 = 138412290;
    v243 = v23;
    v247 = a1;
    v245 = a4;
    v246 = a3;
    while (v21)
    {
LABEL_19:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = (v22 << 10) | (16 * v26);
      v28 = *(v248 + 56);
      v29 = (*(v248 + 48) + v27);
      v30 = v29[1];
      v249 = *v29;
      v31 = v28 + v27;
      v7 = *v31;
      v32 = *(v31 + 8);
      v33 = a1[14];
      v34 = *(v33 + 16);
      v250 = v30;

      sub_10090C56C(*&v7, v32);
      if (v34)
      {

        v35 = sub_100771D58(v249, v250);
        if (v36)
        {
          sub_1010100EC(*(v33 + 56) + 48 * v35, &v257);

          if (v32 <= 1)
          {
            if (v32)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v37 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v7) & 1).super.super.isa;
            }

            else
            {
              v37 = *&v7;
            }

            v98 = v37;
            goto LABEL_108;
          }

          if (v32 != 2)
          {
            sub_1010100EC(&v257, &v252);
            if (v253[24] != 3)
            {
LABEL_148:

              sub_10118B5A0(&v252);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v257);
              return;
            }

            sub_10000A748(&v252._countAndFlagsBits, v254);
            v99 = v255;
            v100 = sub_1000035D0(v254, v255);
            v101 = *(*(v99 - 8) + 64);
            __chkstk_darwin(v100);
            a2 = v234 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v103 + 16))(a2);
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v247;
            v98 = [objc_allocWithZone(NSNumber) initWithDouble:*&v252._countAndFlagsBits + v7];
            sub_100007BAC(v254);
            goto LABEL_108;
          }

          sub_1010100EC(&v257, &v252);
          if (v253[24] != 2)
          {
            goto LABEL_148;
          }

          v239 = v7;
          sub_10000A748(&v252._countAndFlagsBits, v254);
          a2 = v255;
          v79 = v256;
          v80 = sub_1000035D0(v254, v255);
          v240 = v234;
          v81 = *(a2 - 8);
          v82 = v81[8];
          __chkstk_darwin(v80);
          v238 = v83;
          v84 = v234 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v81[2])(v84);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_95;
          }

          v252._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v85 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v85 >= 64)
            {
              v236 = v79;
              v237 = v234;
              __chkstk_darwin(v85);
              v87 = v234 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v88 = *(*(v236 + 32) + 8);
              v89 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v81[1])(v87, a2);
              v79 = v236;
              if (v89)
              {
                goto LABEL_166;
              }

              goto LABEL_95;
            }

LABEL_94:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_95;
          }

          LODWORD(v237) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v129 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v237 & 1) == 0)
          {
            if (v129 >= 64)
            {
              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v236 = v79;
          if (v129 <= 64)
          {
            v237 = *(*(v79 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v235 = v234;
            v136 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            __chkstk_darwin(AssociatedTypeWitness);
            v234[0] = v234 - v137;
            swift_getAssociatedConformanceWitness();
            v138 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v234[1] = v234;
            __chkstk_darwin(v138);
            v140 = v234 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v141 = *(*(v236 + 32) + 8);
            v142 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v81[1])(v140, a2);
            if (v142)
            {
              goto LABEL_166;
            }

            v79 = v236;
            goto LABEL_94;
          }

          v237 = v234;
          __chkstk_darwin(v129);
          v131 = v234 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v132 = *(*(v236 + 32) + 8);
          v133 = dispatch thunk of static Comparable.< infix(_:_:)();
          v134 = v131;
          v79 = v236;
          (v81[1])(v134, a2);
          if (v133)
          {
            goto LABEL_166;
          }

LABEL_95:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_106:
            v154 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v81[1])(v84, a2);
            v7 = v239;
            v50 = __OFADD__(v154, *&v239);
            v155 = v154 + *&v239;
            if (v50)
            {
              goto LABEL_157;
            }

            v98 = [objc_allocWithZone(NSNumber) initWithLongLong:v155];
            sub_100007BAC(v254);
            a1 = v247;
LABEL_108:
            objc_opt_self();
            v156 = swift_dynamicCastObjCClass();
            if (v156)
            {
              v157 = v156;
              v158 = v32;
              v159 = v98;
              v160 = String.init(_:)(v157);
              v161 = a1;
              v162 = sub_1000DF96C();
              swift_beginAccess();
              v252 = v160;
              *&v253[8] = &type metadata for String;
              *&v253[16] = v162;
              v253[24] = 1;
              v163 = v161[14];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v251 = v161[14];
              v165 = v251;
              v161[14] = 0x8000000000000000;
              v166 = sub_100771D58(v249, v250);
              v168 = v165[2];
              v169 = (v167 & 1) == 0;
              v50 = __OFADD__(v168, v169);
              v170 = v168 + v169;
              if (v50)
              {
                goto LABEL_154;
              }

              a2 = v167;
              if (v165[3] >= v170)
              {
                v172 = v158;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v229 = v166;
                  sub_1010050E8();
                  v166 = v229;
                }
              }

              else
              {
                sub_100FE65C4(v170, isUniquelyReferenced_nonNull_native);
                v166 = sub_100771D58(v249, v250);
                if ((a2 & 1) != (v171 & 1))
                {
                  goto LABEL_167;
                }

                v172 = v158;
              }

              a1 = v247;
              a4 = v245;
              if (a2)
              {
                a2 = v166;

                v191 = v251;
                sub_10118B568(&v252, v251[7] + 48 * a2);
              }

              else
              {
                v191 = v251;
                v251[(v166 >> 6) + 8] |= 1 << v166;
                v192 = (v191[6] + 16 * v166);
                v193 = v250;
                *v192 = v249;
                v192[1] = v193;
                v194 = (v191[7] + 48 * v166);
                v195 = *&v253[9];
                v196 = *v253;
                *v194 = v252;
                v194[1] = v196;
                *(&v194[1]._object + 1) = v195;
                v197 = v191[2];
                v50 = __OFADD__(v197, 1);
                v198 = v197 + 1;
                if (v50)
                {
                  goto LABEL_156;
                }

                v191[2] = v198;
              }

              a1[14] = v191;
              swift_endAccess();
              sub_101010148(*&v7, v172);

LABEL_126:
              goto LABEL_12;
            }

            objc_opt_self();
            v173 = swift_dynamicCastObjCClass();
            if (!v173)
            {
              LODWORD(v249) = v32;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v199 = type metadata accessor for Logger();
              sub_1000076D4(v199, qword_10177C6D0);
              v200 = v98;
              v159 = Logger.logObject.getter();
              v201 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v159, v201))
              {

                sub_101010148(*&v7, v249);
                goto LABEL_126;
              }

              a2 = swift_slowAlloc();
              v202 = swift_slowAlloc();
              *a2 = v243;
              *(a2 + 4) = v200;
              *v202 = v200;
              v203 = v200;
              _os_log_impl(&_mh_execute_header, v159, v201, "Unsupported value type: %@!", a2, 0xCu);
              sub_10000B3A8(v202, &qword_10169BB30, &unk_10138B3C0);
              a1 = v247;

              sub_101010148(*&v7, v249);
LABEL_12:
              sub_10118B5A0(&v257);
              goto LABEL_13;
            }

            v174 = v173;
            [v173 doubleValue];
            v176 = v175;
            v177 = [v174 integerValue];
            if (v176 == v177)
            {
              v178 = v177;
              v179 = sub_1000DFAD8();
              swift_beginAccess();
              v252._countAndFlagsBits = v178;
              *&v253[8] = &type metadata for Int;
              *&v253[16] = v179;
              v253[24] = 2;
              v180 = a1[14];
              v181 = swift_isUniquelyReferenced_nonNull_native();
              v182 = a1;
              v183 = v181;
              v251 = v182[14];
              v184 = v251;
              v182[14] = 0x8000000000000000;
              v185 = sub_100771D58(v249, v250);
              v187 = v184[2];
              v188 = (v186 & 1) == 0;
              v50 = __OFADD__(v187, v188);
              v189 = v187 + v188;
              if (v50)
              {
                goto LABEL_160;
              }

              a2 = v186;
              if (v184[3] >= v189)
              {
                if ((v183 & 1) == 0)
                {
                  v232 = v185;
                  sub_1010050E8();
                  v185 = v232;
                }
              }

              else
              {
                sub_100FE65C4(v189, v183);
                v185 = sub_100771D58(v249, v250);
                if ((a2 & 1) != (v190 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v247;
              if ((a2 & 1) == 0)
              {
                v24 = v251;
                v251[(v185 >> 6) + 8] |= 1 << v185;
                v215 = (v24[6] + 16 * v185);
                v216 = v250;
                *v215 = v249;
                v215[1] = v216;
                v217 = (v24[7] + 48 * v185);
                v218 = *&v253[9];
                v219 = *v253;
                *v217 = v252;
                v217[1] = v219;
                *(&v217[1]._object + 1) = v218;
                v220 = v24[2];
                v50 = __OFADD__(v220, 1);
                v221 = v220 + 1;
                if (v50)
                {
                  goto LABEL_164;
                }

                goto LABEL_146;
              }

LABEL_10:
              a2 = v185;

              v24 = v251;
              sub_10118B568(&v252, v251[7] + 48 * a2);
            }

            else
            {
              v204 = sub_1000DFA84();
              swift_beginAccess();
              *&v252._countAndFlagsBits = v176;
              *&v253[8] = &type metadata for Double;
              *&v253[16] = v204;
              v253[24] = 3;
              v205 = a1[14];
              v206 = swift_isUniquelyReferenced_nonNull_native();
              v207 = a1;
              v208 = v206;
              v251 = v207[14];
              v209 = v251;
              v207[14] = 0x8000000000000000;
              v185 = sub_100771D58(v249, v250);
              v211 = v209[2];
              v212 = (v210 & 1) == 0;
              v50 = __OFADD__(v211, v212);
              v213 = v211 + v212;
              if (v50)
              {
                goto LABEL_162;
              }

              a2 = v210;
              if (v209[3] >= v213)
              {
                if ((v208 & 1) == 0)
                {
                  v233 = v185;
                  sub_1010050E8();
                  v185 = v233;
                }
              }

              else
              {
                sub_100FE65C4(v213, v208);
                v185 = sub_100771D58(v249, v250);
                if ((a2 & 1) != (v214 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v247;
              if (a2)
              {
                goto LABEL_10;
              }

              v24 = v251;
              v251[(v185 >> 6) + 8] |= 1 << v185;
              v222 = (v24[6] + 16 * v185);
              v223 = v250;
              *v222 = v249;
              v222[1] = v223;
              v224 = (v24[7] + 48 * v185);
              v225 = *&v253[9];
              v226 = *v253;
              *v224 = v252;
              v224[1] = v226;
              *(&v224[1]._object + 1) = v225;
              v227 = v24[2];
              v50 = __OFADD__(v227, 1);
              v221 = v227 + 1;
              if (v50)
              {
                goto LABEL_165;
              }

LABEL_146:
              v24[2] = v221;
            }

            a1[14] = v24;
            swift_endAccess();

            sub_101010148(*&v7, v32);
            goto LABEL_12;
          }

          v237 = v81;
          v252._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v143 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v144 = v79;
          v145 = v143;
          v146 = v144;
          v147 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v145)
          {
            if (v147 > 64)
            {
              v235 = v234;
              __chkstk_darwin(v147);
              v238 = v234 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v149 = *(*(v146 + 32) + 8);
              v150 = dispatch thunk of static Comparable.< infix(_:_:)();
              v81 = v237;
              (v237[1])(v238, a2);
              goto LABEL_105;
            }
          }

          else if (v147 >= 64)
          {
            v235 = v234;
            __chkstk_darwin(v147);
            v152 = v234 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v153 = *(*(v146 + 32) + 8);
            v150 = dispatch thunk of static Comparable.< infix(_:_:)();
            v81 = v237;
            (v237[1])(v152, a2);
LABEL_105:
            if (v150)
            {
              goto LABEL_163;
            }

            goto LABEL_106;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v81 = v237;
          goto LABEL_106;
        }
      }

      if (v32 > 1)
      {
        if (v32 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v7];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v7];
        }
      }

      else if (v32)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v7) & 1).super.super.isa;
      }

      else
      {
        isa = *&v7;
      }

      v10 = isa;
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        v40 = v39;
        v41 = v32;
        v10 = v10;
        v42 = String.init(_:)(v40);
        v43 = sub_1000DF96C();
        swift_beginAccess();
        v257 = v42;
        *&v258[8] = &type metadata for String;
        *&v258[16] = v43;
        v258[24] = 1;
        v44 = a1[14];
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v254[0] = a1[14];
        v45 = v254[0];
        a1[14] = 0x8000000000000000;
        v46 = sub_100771D58(v249, v250);
        v48 = *(v45 + 16);
        v49 = (v47 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          __break(1u);
          goto LABEL_152;
        }

        a2 = v47;
        if (*(v45 + 24) >= v51)
        {
          if ((v11 & 1) == 0)
          {
            v228 = v46;
            sub_1010050E8();
            v46 = v228;
          }
        }

        else
        {
          sub_100FE65C4(v51, v11);
          v46 = sub_100771D58(v249, v250);
          if ((a2 & 1) != (v52 & 1))
          {
            goto LABEL_167;
          }
        }

        a1 = v247;
        LOBYTE(v32) = v41;
        a4 = v245;
        if (a2)
        {
          a2 = v46;

          v71 = v254[0];
          sub_10118B568(&v257, *(v254[0] + 56) + 48 * a2);
        }

        else
        {
          v71 = v254[0];
          *(v254[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v72 = (v71[6] + 16 * v46);
          v73 = v250;
          *v72 = v249;
          v72[1] = v73;
          v74 = (v71[7] + 48 * v46);
          v75 = *&v258[9];
          v76 = *v258;
          *v74 = v257;
          v74[1] = v76;
          *(&v74[1]._object + 1) = v75;
          v77 = v71[2];
          v50 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v50)
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
            v242(v241);
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v71[2] = v78;
        }

        a1[14] = v71;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v54 = v53;
        [v53 doubleValue];
        v56 = v55;
        v57 = [v54 integerValue];
        a4 = v245;
        if (v56 == v57)
        {
          v58 = v57;
          v59 = sub_1000DFAD8();
          swift_beginAccess();
          v257._countAndFlagsBits = v58;
          *&v258[8] = &type metadata for Int;
          *&v258[16] = v59;
          v258[24] = 2;
          v60 = a1[14];
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v62 = a1;
          v63 = v61;
          v254[0] = v62[14];
          v64 = v254[0];
          v62[14] = 0x8000000000000000;
          v65 = sub_100771D58(v249, v250);
          v67 = *(v64 + 16);
          v68 = (v66 & 1) == 0;
          v50 = __OFADD__(v67, v68);
          v69 = v67 + v68;
          if (v50)
          {
            goto LABEL_155;
          }

          a2 = v66;
          if (*(v64 + 24) >= v69)
          {
            if ((v63 & 1) == 0)
            {
              v230 = v65;
              sub_1010050E8();
              v65 = v230;
            }
          }

          else
          {
            sub_100FE65C4(v69, v63);
            v65 = sub_100771D58(v249, v250);
            if ((a2 & 1) != (v70 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v247;
          if ((a2 & 1) == 0)
          {
            v115 = v254[0];
            *(v254[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
            v116 = (v115[6] + 16 * v65);
            v117 = v250;
            *v116 = v249;
            v116[1] = v117;
            v118 = (v115[7] + 48 * v65);
            v119 = *&v258[9];
            v120 = *v258;
            *v118 = v257;
            v118[1] = v120;
            *(&v118[1]._object + 1) = v119;
            v121 = v115[2];
            v50 = __OFADD__(v121, 1);
            v122 = v121 + 1;
            if (v50)
            {
              goto LABEL_159;
            }

            goto LABEL_82;
          }

LABEL_80:
          a2 = v65;

          v115 = v254[0];
          sub_10118B568(&v257, *(v254[0] + 56) + 48 * a2);
        }

        else
        {
          v104 = sub_1000DFA84();
          swift_beginAccess();
          *&v257._countAndFlagsBits = v56;
          *&v258[8] = &type metadata for Double;
          *&v258[16] = v104;
          v258[24] = 3;
          v105 = a1[14];
          v106 = swift_isUniquelyReferenced_nonNull_native();
          v107 = a1;
          v108 = v106;
          v254[0] = v107[14];
          v109 = v254[0];
          v107[14] = 0x8000000000000000;
          v65 = sub_100771D58(v249, v250);
          v111 = *(v109 + 16);
          v112 = (v110 & 1) == 0;
          v50 = __OFADD__(v111, v112);
          v113 = v111 + v112;
          if (v50)
          {
            goto LABEL_158;
          }

          a2 = v110;
          if (*(v109 + 24) >= v113)
          {
            if ((v108 & 1) == 0)
            {
              v231 = v65;
              sub_1010050E8();
              v65 = v231;
            }
          }

          else
          {
            sub_100FE65C4(v113, v108);
            v65 = sub_100771D58(v249, v250);
            if ((a2 & 1) != (v114 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v247;
          if (a2)
          {
            goto LABEL_80;
          }

          v115 = v254[0];
          *(v254[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
          v123 = (v115[6] + 16 * v65);
          v124 = v250;
          *v123 = v249;
          v123[1] = v124;
          v125 = (v115[7] + 48 * v65);
          v126 = *&v258[9];
          v127 = *v258;
          *v125 = v257;
          v125[1] = v127;
          *(&v125[1]._object + 1) = v126;
          v128 = v115[2];
          v50 = __OFADD__(v128, 1);
          v122 = v128 + 1;
          if (v50)
          {
            goto LABEL_161;
          }

LABEL_82:
          v115[2] = v122;
        }

        a1[14] = v115;
        swift_endAccess();
LABEL_84:

        v96 = v7;
        v97 = v32;
        goto LABEL_85;
      }

      LODWORD(v249) = v32;

      a4 = v245;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_1000076D4(v90, qword_10177C6D0);
      v91 = v10;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v92, v93))
      {

        sub_101010148(*&v7, v249);
        goto LABEL_13;
      }

      a2 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *a2 = v243;
      *(a2 + 4) = v91;
      *v94 = v91;
      v95 = v91;
      _os_log_impl(&_mh_execute_header, v92, v93, "Unsupported value type: %@!", a2, 0xCu);
      sub_10000B3A8(v94, &qword_10169BB30, &unk_10138B3C0);
      a1 = v247;

      v96 = v7;
      v97 = v249;
LABEL_85:
      sub_101010148(*&v96, v97);
LABEL_13:
      a3 = v246;
    }

    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= a4)
      {

        return;
      }

      v21 = *(a3 + v25);
      ++v22;
      if (v21)
      {
        v22 = v25;
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

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C6D0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v257._countAndFlagsBits = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000136BC(v10, v11, &v257._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v13, v14, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v15, 0xCu);
    sub_100007BAC(v16);
  }
}

void sub_101175FFC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v8 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v8, object, qword_10177C6E8))
    {
      break;
    }

    v246 = v4;
    v244 = a3;
    v15 = sub_1006CBD34(a2, a3);
    v16 = v15 + 64;
    v17 = 1 << v15[32];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v4 = v18 & *(v15 + 8);
    swift_beginAccess();
    v19 = 0;
    a3 = ((v17 + 63) >> 6);
    *&v20 = 138412290;
    v245 = v20;
    v248 = a1;
    v247 = v15;
    while (v4)
    {
LABEL_15:
      v22 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v23 = (v19 << 10) | (16 * v22);
      v24 = *(v15 + 7);
      v25 = (*(v15 + 6) + v23);
      v26 = v25[1];
      v251 = *v25;
      v27 = (v24 + v23);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = a1[14];
      v31 = *(v30 + 16);
      v252 = v26;

      v250 = v28;
      sub_10090C56C(v28, v29);
      v249 = v29;
      if (v31)
      {

        v32 = sub_100771D58(v251, v252);
        if ((v33 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v30 + 56) + 48 * v32, &v259);

        if (v29 <= 1)
        {
          if (v29)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v34 = NSNumber.init(BOOLeanLiteral:)(v250 & 1).super.super.isa;
          }

          else
          {
            v34 = v250;
          }

          v98 = v34;
          goto LABEL_102;
        }

        if (v29 != 2)
        {
          sub_1010100EC(&v259, &v254);
          if (v255[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v254);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v259);
            return;
          }

          v99 = v250;
          sub_10000A748(&v254._countAndFlagsBits, v256);
          v100 = v257;
          v101 = sub_1000035D0(v256, v257);
          v102 = *(*(v100 - 8) + 64);
          __chkstk_darwin(v101);
          (*(v104 + 16))(v238 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v248;
          v98 = [objc_allocWithZone(NSNumber) initWithDouble:*&v254._countAndFlagsBits + *&v99];
          sub_100007BAC(v256);
          goto LABEL_102;
        }

        sub_1010100EC(&v259, &v254);
        if (v255[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v254._countAndFlagsBits, v256);
        v81 = v257;
        v80 = v258;
        v82 = sub_1000035D0(v256, v257);
        v242 = v238;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v240 = v84;
        v85 = v238 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v243 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v254._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v241 = v80;
            v239 = v238;
            __chkstk_darwin(v87);
            v89 = v238 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v241 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v243 + 8))(v89, v81);
            v80 = v241;
            if (v91)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v239) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v132 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v239)
            {
              v241 = v80;
              if (v132 <= 64)
              {
                v239 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v238[3] = v238;
                v139 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v238[1] = v238 - v140;
                swift_getAssociatedConformanceWitness();
                v141 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v238[2] = v238;
                __chkstk_darwin(v141);
                v143 = v238 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v144 = *(*(v241 + 32) + 8);
                v145 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v243 + 8))(v143, v81);
                if (v145)
                {
                  goto LABEL_163;
                }

                v80 = v241;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v239 = v238;
              __chkstk_darwin(v132);
              v134 = v238 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v135 = *(*(v241 + 32) + 8);
              v136 = dispatch thunk of static Comparable.< infix(_:_:)();
              v137 = v134;
              v80 = v241;
              (*(v243 + 8))(v137, v81);
              if (v136)
              {
                goto LABEL_163;
              }
            }

            else if (v132 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v254._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v146 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v147 = v80;
          v148 = v146;
          v241 = v147;
          v149 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v148)
          {
            if (v149 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v149 >= 64)
          {
LABEL_93:
            v239 = v238;
            __chkstk_darwin(v149);
            v240 = v238 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v151 = v241;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v152 = *(*(v151 + 32) + 8);
            v153 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v243 + 8))(v240, v81);
            if (v153)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v154 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v243 + 8))(v85, v81);
        v49 = __OFADD__(v154, v250);
        v155 = &v250[v154];
        if (v49)
        {
          goto LABEL_154;
        }

        v98 = [objc_allocWithZone(NSNumber) initWithLongLong:v155];
        sub_100007BAC(v256);
        a1 = v248;
LABEL_102:
        objc_opt_self();
        v156 = swift_dynamicCastObjCClass();
        if (v156)
        {
          v157 = v156;
          v158 = v98;
          v159 = String.init(_:)(v157);
          v160 = a1;
          v161 = sub_1000DF96C();
          swift_beginAccess();
          v254 = v159;
          *&v255[8] = &type metadata for String;
          *&v255[16] = v161;
          v255[24] = 1;
          v162 = v160[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v253 = v160[14];
          v164 = v253;
          v160[14] = 0x8000000000000000;
          v165 = sub_100771D58(v251, v252);
          v167 = v164[2];
          v168 = (v166 & 1) == 0;
          v49 = __OFADD__(v167, v168);
          v169 = v167 + v168;
          if (v49)
          {
            goto LABEL_151;
          }

          v170 = v166;
          if (v164[3] >= v169)
          {
            v15 = v247;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v233 = v165;
              sub_1010050E8();
              v165 = v233;
            }
          }

          else
          {
            sub_100FE65C4(v169, isUniquelyReferenced_nonNull_native);
            v165 = sub_100771D58(v251, v252);
            v15 = v247;
            if ((v170 & 1) != (v171 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v248;
          if (v170)
          {
            v191 = v165;

            a2 = v253;
            sub_10118B568(&v254, v253[7] + 48 * v191);
          }

          else
          {
            a2 = v253;
            v253[(v165 >> 6) + 8] |= 1 << v165;
            v192 = (a2[6] + 16 * v165);
            v193 = v252;
            *v192 = v251;
            v192[1] = v193;
            v194 = (a2[7] + 48 * v165);
            v195 = *&v255[9];
            v196 = *v255;
            *v194 = v254;
            v194[1] = v196;
            *(&v194[1]._object + 1) = v195;
            v197 = a2[2];
            v49 = __OFADD__(v197, 1);
            v198 = v197 + 1;
            if (v49)
            {
              goto LABEL_153;
            }

            a2[2] = v198;
          }

          v199 = v249;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v250, v199);

          goto LABEL_120;
        }

        objc_opt_self();
        v172 = swift_dynamicCastObjCClass();
        if (v172)
        {
          v173 = v172;
          [v172 doubleValue];
          v175 = v174;
          v176 = [v173 integerValue];
          if (v175 == v176)
          {
            v177 = v176;
            v178 = sub_1000DFAD8();
            swift_beginAccess();
            v254._countAndFlagsBits = v177;
            *&v255[8] = &type metadata for Int;
            *&v255[16] = v178;
            v255[24] = 2;
            v179 = a1[14];
            v180 = swift_isUniquelyReferenced_nonNull_native();
            v181 = a1;
            v182 = v180;
            v253 = v181[14];
            v183 = v253;
            v181[14] = 0x8000000000000000;
            v184 = sub_100771D58(v251, v252);
            v186 = v183[2];
            v187 = (v185 & 1) == 0;
            v49 = __OFADD__(v186, v187);
            v188 = v186 + v187;
            if (v49)
            {
              goto LABEL_157;
            }

            v189 = v185;
            if (v183[3] >= v188)
            {
              if ((v182 & 1) == 0)
              {
                v236 = v184;
                sub_1010050E8();
                v184 = v236;
              }
            }

            else
            {
              sub_100FE65C4(v188, v182);
              v184 = sub_100771D58(v251, v252);
              if ((v189 & 1) != (v190 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v248;
            if ((v189 & 1) == 0)
            {
              a2 = v253;
              v253[(v184 >> 6) + 8] |= 1 << v184;
              v217 = (a2[6] + 16 * v184);
              v218 = v252;
              *v217 = v251;
              v217[1] = v218;
              v219 = (a2[7] + 48 * v184);
              v220 = *&v255[9];
              v221 = *v255;
              *v219 = v254;
              v219[1] = v221;
              *(&v219[1]._object + 1) = v220;
              v222 = a2[2];
              v49 = __OFADD__(v222, 1);
              v223 = v222 + 1;
              if (v49)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v224 = v184;

            a2 = v253;
            sub_10118B568(&v254, v253[7] + 48 * v224);
          }

          else
          {
            v205 = sub_1000DFA84();
            swift_beginAccess();
            *&v254._countAndFlagsBits = v175;
            *&v255[8] = &type metadata for Double;
            *&v255[16] = v205;
            v255[24] = 3;
            v206 = a1[14];
            v207 = swift_isUniquelyReferenced_nonNull_native();
            v208 = a1;
            v209 = v207;
            v253 = v208[14];
            v210 = v253;
            v208[14] = 0x8000000000000000;
            v184 = sub_100771D58(v251, v252);
            v212 = v210[2];
            v213 = (v211 & 1) == 0;
            v49 = __OFADD__(v212, v213);
            v214 = v212 + v213;
            if (v49)
            {
              goto LABEL_159;
            }

            v215 = v211;
            if (v210[3] >= v214)
            {
              if ((v209 & 1) == 0)
              {
                v237 = v184;
                sub_1010050E8();
                v184 = v237;
              }
            }

            else
            {
              sub_100FE65C4(v214, v209);
              v184 = sub_100771D58(v251, v252);
              if ((v215 & 1) != (v216 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v248;
            if (v215)
            {
              goto LABEL_139;
            }

            a2 = v253;
            v253[(v184 >> 6) + 8] |= 1 << v184;
            v225 = (a2[6] + 16 * v184);
            v226 = v252;
            *v225 = v251;
            v225[1] = v226;
            v227 = (a2[7] + 48 * v184);
            v228 = *&v255[9];
            v229 = *v255;
            *v227 = v254;
            v227[1] = v229;
            *(&v227[1]._object + 1) = v228;
            v230 = a2[2];
            v49 = __OFADD__(v230, 1);
            v223 = v230 + 1;
            if (v49)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v223;
          }

          v231 = v249;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v250, v231);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v200 = type metadata accessor for Logger();
        sub_1000076D4(v200, qword_10177C6D0);
        v201 = v98;
        v158 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v158, a2))
        {

          sub_101010148(v250, v249);
LABEL_120:

          goto LABEL_143;
        }

        v202 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        *v202 = v245;
        *(v202 + 4) = v201;
        *v203 = v201;
        v204 = v201;
        _os_log_impl(&_mh_execute_header, v158, a2, "Unsupported value type: %@!", v202, 0xCu);
        sub_10000B3A8(v203, &qword_10169BB30, &unk_10138B3C0);
        v15 = v247;

        a1 = v248;

        sub_101010148(v250, v249);
LABEL_143:
        sub_10118B5A0(&v259);
      }

      else
      {
LABEL_21:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v36 = objc_allocWithZone(NSNumber);
            isa = [v36 initWithLongLong:v250];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v250];
          }
        }

        else if (v29)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v250 & 1).super.super.isa;
        }

        else
        {
          isa = v250;
        }

        v37 = isa;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          v8 = v37;
          v40 = String.init(_:)(v39);
          object = v40._object;
          v41 = sub_1000DF96C();
          swift_beginAccess();
          v259 = v40;
          *&v260[8] = &type metadata for String;
          *&v260[16] = v41;
          v260[24] = 1;
          v42 = a1[14];
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v256[0] = a1[14];
          v44 = v256[0];
          a1[14] = 0x8000000000000000;
          v45 = sub_100771D58(v251, v252);
          v47 = *(v44 + 16);
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            __break(1u);
            goto LABEL_149;
          }

          v51 = v46;
          if (*(v44 + 24) >= v50)
          {
            if ((v43 & 1) == 0)
            {
              v232 = v45;
              sub_1010050E8();
              v45 = v232;
            }
          }

          else
          {
            sub_100FE65C4(v50, v43);
            v45 = sub_100771D58(v251, v252);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v248;
          v15 = v247;
          if (v51)
          {
            v72 = v45;

            a2 = v256[0];
            sub_10118B568(&v259, *(v256[0] + 56) + 48 * v72);
          }

          else
          {
            a2 = v256[0];
            *(v256[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v73 = (a2[6] + 16 * v45);
            v74 = v252;
            *v73 = v251;
            v73[1] = v74;
            v75 = (a2[7] + 48 * v45);
            v76 = *&v260[9];
            v77 = *v260;
            *v75 = v259;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = a2[2];
            v49 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v49)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v79;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v250, v249);
        }

        else
        {
          objc_opt_self();
          v53 = swift_dynamicCastObjCClass();
          if (v53)
          {
            v54 = v53;
            [v53 doubleValue];
            v56 = v55;
            v57 = [v54 integerValue];
            if (v56 == v57)
            {
              v58 = v57;
              v59 = sub_1000DFAD8();
              swift_beginAccess();
              v259._countAndFlagsBits = v58;
              *&v260[8] = &type metadata for Int;
              *&v260[16] = v59;
              v260[24] = 2;
              v60 = a1[14];
              v61 = swift_isUniquelyReferenced_nonNull_native();
              v62 = a1;
              v63 = v61;
              v256[0] = v62[14];
              v64 = v256[0];
              v62[14] = 0x8000000000000000;
              v65 = sub_100771D58(v251, v252);
              v67 = *(v64 + 16);
              v68 = (v66 & 1) == 0;
              v49 = __OFADD__(v67, v68);
              v69 = v67 + v68;
              if (v49)
              {
                goto LABEL_152;
              }

              v70 = v66;
              if (*(v64 + 24) >= v69)
              {
                if ((v63 & 1) == 0)
                {
                  v234 = v65;
                  sub_1010050E8();
                  v65 = v234;
                }
              }

              else
              {
                sub_100FE65C4(v69, v63);
                v65 = sub_100771D58(v251, v252);
                if ((v70 & 1) != (v71 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v248;
              if (v70)
              {
                goto LABEL_77;
              }

              a2 = v256[0];
              *(v256[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v117 = (a2[6] + 16 * v65);
              v118 = v252;
              *v117 = v251;
              v117[1] = v118;
              v119 = (a2[7] + 48 * v65);
              v120 = *&v260[9];
              v121 = *v260;
              *v119 = v259;
              v119[1] = v121;
              *(&v119[1]._object + 1) = v120;
              v122 = a2[2];
              v49 = __OFADD__(v122, 1);
              v123 = v122 + 1;
              if (v49)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v105 = sub_1000DFA84();
              swift_beginAccess();
              *&v259._countAndFlagsBits = v56;
              *&v260[8] = &type metadata for Double;
              *&v260[16] = v105;
              v260[24] = 3;
              v106 = a1[14];
              v107 = swift_isUniquelyReferenced_nonNull_native();
              v108 = a1;
              v109 = v107;
              v256[0] = v108[14];
              v110 = v256[0];
              v108[14] = 0x8000000000000000;
              v65 = sub_100771D58(v251, v252);
              v112 = *(v110 + 16);
              v113 = (v111 & 1) == 0;
              v49 = __OFADD__(v112, v113);
              v114 = v112 + v113;
              if (v49)
              {
                goto LABEL_155;
              }

              v115 = v111;
              if (*(v110 + 24) >= v114)
              {
                if ((v109 & 1) == 0)
                {
                  v235 = v65;
                  sub_1010050E8();
                  v65 = v235;
                }
              }

              else
              {
                sub_100FE65C4(v114, v109);
                v65 = sub_100771D58(v251, v252);
                if ((v115 & 1) != (v116 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v248;
              if (v115)
              {
LABEL_77:
                v124 = v65;

                a2 = v256[0];
                sub_10118B568(&v259, *(v256[0] + 56) + 48 * v124);
                goto LABEL_80;
              }

              a2 = v256[0];
              *(v256[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v125 = (a2[6] + 16 * v65);
              v126 = v252;
              *v125 = v251;
              v125[1] = v126;
              v127 = (a2[7] + 48 * v65);
              v128 = *&v260[9];
              v129 = *v260;
              *v127 = v259;
              v127[1] = v129;
              *(&v127[1]._object + 1) = v128;
              v130 = a2[2];
              v49 = __OFADD__(v130, 1);
              v123 = v130 + 1;
              if (v49)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v123;
LABEL_80:
            v131 = v249;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v250, v131);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            sub_1000076D4(v92, qword_10177C6D0);
            v93 = v37;
            v94 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v94, a2))
            {
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              *v95 = v245;
              *(v95 + 4) = v93;
              *v96 = v93;
              v97 = v93;
              _os_log_impl(&_mh_execute_header, v94, a2, "Unsupported value type: %@!", v95, 0xCu);
              sub_10000B3A8(v96, &qword_10169BB30, &unk_10138B3C0);
              v15 = v247;

              a1 = v248;

              goto LABEL_46;
            }

            sub_101010148(v250, v249);
          }
        }
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= a3)
      {

        return;
      }

      v4 = *&v16[8 * v21];
      ++v19;
      if (v4)
      {
        v19 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C6D0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v259._countAndFlagsBits = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000136BC(v8, object, &v259._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v11, v12, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v13, 0xCu);
    sub_100007BAC(v14);
  }
}

void sub_101177A14(void *a1, void *a2)
{
  v3 = v2;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v6 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v6, object, qword_10177C6E8))
    {
      break;
    }

    v245 = v3;
    v243 = a2;
    v13 = sub_100761BAC(a2);
    v14 = v13 + 64;
    v15 = 1 << v13[32];
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v3 = v16 & *(v13 + 8);
    swift_beginAccess();
    v17 = 0;
    v18 = (v15 + 63) >> 6;
    *&v19 = 138412290;
    v244 = v19;
    v247 = a1;
    v246 = v13;
    while (v3)
    {
LABEL_15:
      v21 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v22 = (v17 << 10) | (16 * v21);
      v23 = *(v13 + 7);
      v24 = (*(v13 + 6) + v22);
      v25 = v24[1];
      v250 = *v24;
      v26 = (v23 + v22);
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = a1[14];
      v30 = *(v29 + 16);
      v251 = v25;

      v249 = v27;
      sub_10090C56C(v27, v28);
      v248 = v28;
      if (v30)
      {

        v31 = sub_100771D58(v250, v251);
        if ((v32 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v29 + 56) + 48 * v31, &v258);

        if (v28 <= 1)
        {
          if (v28)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v249 & 1).super.super.isa;
          }

          else
          {
            v33 = v249;
          }

          v97 = v33;
          goto LABEL_102;
        }

        if (v28 != 2)
        {
          sub_1010100EC(&v258, &v253);
          if (v254[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v253);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v258);
            return;
          }

          v98 = v249;
          sub_10000A748(&v253._countAndFlagsBits, v255);
          v99 = v256;
          v100 = sub_1000035D0(v255, v256);
          v101 = *(*(v99 - 8) + 64);
          __chkstk_darwin(v100);
          (*(v103 + 16))(v237 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v247;
          v97 = [objc_allocWithZone(NSNumber) initWithDouble:*&v253._countAndFlagsBits + *&v98];
          sub_100007BAC(v255);
          goto LABEL_102;
        }

        sub_1010100EC(&v258, &v253);
        if (v254[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v253._countAndFlagsBits, v255);
        v80 = v256;
        v79 = v257;
        v81 = sub_1000035D0(v255, v256);
        v241 = v237;
        v82 = *(*(v80 - 8) + 64);
        __chkstk_darwin(v81);
        v239 = v83;
        v84 = v237 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        v242 = v85;
        (*(v85 + 16))(v84);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v253._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v86 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v86 < 64)
            {
              goto LABEL_89;
            }

            v240 = v79;
            v238 = v237;
            __chkstk_darwin(v86);
            v88 = v237 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v89 = *(*(v240 + 32) + 8);
            v90 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v242 + 8))(v88, v80);
            v79 = v240;
            if (v90)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v238) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v131 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v238)
            {
              v240 = v79;
              if (v131 <= 64)
              {
                v238 = *(*(v79 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v237[3] = v237;
                v138 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v237[1] = v237 - v139;
                swift_getAssociatedConformanceWitness();
                v140 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v237[2] = v237;
                __chkstk_darwin(v140);
                v142 = v237 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v143 = *(*(v240 + 32) + 8);
                v144 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v242 + 8))(v142, v80);
                if (v144)
                {
                  goto LABEL_163;
                }

                v79 = v240;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v238 = v237;
              __chkstk_darwin(v131);
              v133 = v237 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v134 = *(*(v240 + 32) + 8);
              v135 = dispatch thunk of static Comparable.< infix(_:_:)();
              v136 = v133;
              v79 = v240;
              (*(v242 + 8))(v136, v80);
              if (v135)
              {
                goto LABEL_163;
              }
            }

            else if (v131 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v253._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v145 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v146 = v79;
          v147 = v145;
          v240 = v146;
          v148 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v147)
          {
            if (v148 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v148 >= 64)
          {
LABEL_93:
            v238 = v237;
            __chkstk_darwin(v148);
            v239 = v237 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v150 = v240;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v151 = *(*(v150 + 32) + 8);
            v152 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v242 + 8))(v239, v80);
            if (v152)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v153 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v242 + 8))(v84, v80);
        v48 = __OFADD__(v153, v249);
        v154 = &v249[v153];
        if (v48)
        {
          goto LABEL_154;
        }

        v97 = [objc_allocWithZone(NSNumber) initWithLongLong:v154];
        sub_100007BAC(v255);
        a1 = v247;
LABEL_102:
        objc_opt_self();
        v155 = swift_dynamicCastObjCClass();
        if (v155)
        {
          v156 = v155;
          v157 = v97;
          v158 = String.init(_:)(v156);
          v159 = a1;
          v160 = sub_1000DF96C();
          swift_beginAccess();
          v253 = v158;
          *&v254[8] = &type metadata for String;
          *&v254[16] = v160;
          v254[24] = 1;
          v161 = v159[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v252 = v159[14];
          v163 = v252;
          v159[14] = 0x8000000000000000;
          v164 = sub_100771D58(v250, v251);
          v166 = v163[2];
          v167 = (v165 & 1) == 0;
          v48 = __OFADD__(v166, v167);
          v168 = v166 + v167;
          if (v48)
          {
            goto LABEL_151;
          }

          v169 = v165;
          if (v163[3] >= v168)
          {
            v13 = v246;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v232 = v164;
              sub_1010050E8();
              v164 = v232;
            }
          }

          else
          {
            sub_100FE65C4(v168, isUniquelyReferenced_nonNull_native);
            v164 = sub_100771D58(v250, v251);
            v13 = v246;
            if ((v169 & 1) != (v170 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v247;
          if (v169)
          {
            v190 = v164;

            a2 = v252;
            sub_10118B568(&v253, v252[7] + 48 * v190);
          }

          else
          {
            a2 = v252;
            v252[(v164 >> 6) + 8] |= 1 << v164;
            v191 = (a2[6] + 16 * v164);
            v192 = v251;
            *v191 = v250;
            v191[1] = v192;
            v193 = (a2[7] + 48 * v164);
            v194 = *&v254[9];
            v195 = *v254;
            *v193 = v253;
            v193[1] = v195;
            *(&v193[1]._object + 1) = v194;
            v196 = a2[2];
            v48 = __OFADD__(v196, 1);
            v197 = v196 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            a2[2] = v197;
          }

          v198 = v248;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v249, v198);

          goto LABEL_120;
        }

        objc_opt_self();
        v171 = swift_dynamicCastObjCClass();
        if (v171)
        {
          v172 = v171;
          [v171 doubleValue];
          v174 = v173;
          v175 = [v172 integerValue];
          if (v174 == v175)
          {
            v176 = v175;
            v177 = sub_1000DFAD8();
            swift_beginAccess();
            v253._countAndFlagsBits = v176;
            *&v254[8] = &type metadata for Int;
            *&v254[16] = v177;
            v254[24] = 2;
            v178 = a1[14];
            v179 = swift_isUniquelyReferenced_nonNull_native();
            v180 = a1;
            v181 = v179;
            v252 = v180[14];
            v182 = v252;
            v180[14] = 0x8000000000000000;
            v183 = sub_100771D58(v250, v251);
            v185 = v182[2];
            v186 = (v184 & 1) == 0;
            v48 = __OFADD__(v185, v186);
            v187 = v185 + v186;
            if (v48)
            {
              goto LABEL_157;
            }

            v188 = v184;
            if (v182[3] >= v187)
            {
              if ((v181 & 1) == 0)
              {
                v235 = v183;
                sub_1010050E8();
                v183 = v235;
              }
            }

            else
            {
              sub_100FE65C4(v187, v181);
              v183 = sub_100771D58(v250, v251);
              if ((v188 & 1) != (v189 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v247;
            if ((v188 & 1) == 0)
            {
              a2 = v252;
              v252[(v183 >> 6) + 8] |= 1 << v183;
              v216 = (a2[6] + 16 * v183);
              v217 = v251;
              *v216 = v250;
              v216[1] = v217;
              v218 = (a2[7] + 48 * v183);
              v219 = *&v254[9];
              v220 = *v254;
              *v218 = v253;
              v218[1] = v220;
              *(&v218[1]._object + 1) = v219;
              v221 = a2[2];
              v48 = __OFADD__(v221, 1);
              v222 = v221 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v223 = v183;

            a2 = v252;
            sub_10118B568(&v253, v252[7] + 48 * v223);
          }

          else
          {
            v204 = sub_1000DFA84();
            swift_beginAccess();
            *&v253._countAndFlagsBits = v174;
            *&v254[8] = &type metadata for Double;
            *&v254[16] = v204;
            v254[24] = 3;
            v205 = a1[14];
            v206 = swift_isUniquelyReferenced_nonNull_native();
            v207 = a1;
            v208 = v206;
            v252 = v207[14];
            v209 = v252;
            v207[14] = 0x8000000000000000;
            v183 = sub_100771D58(v250, v251);
            v211 = v209[2];
            v212 = (v210 & 1) == 0;
            v48 = __OFADD__(v211, v212);
            v213 = v211 + v212;
            if (v48)
            {
              goto LABEL_159;
            }

            v214 = v210;
            if (v209[3] >= v213)
            {
              if ((v208 & 1) == 0)
              {
                v236 = v183;
                sub_1010050E8();
                v183 = v236;
              }
            }

            else
            {
              sub_100FE65C4(v213, v208);
              v183 = sub_100771D58(v250, v251);
              if ((v214 & 1) != (v215 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v247;
            if (v214)
            {
              goto LABEL_139;
            }

            a2 = v252;
            v252[(v183 >> 6) + 8] |= 1 << v183;
            v224 = (a2[6] + 16 * v183);
            v225 = v251;
            *v224 = v250;
            v224[1] = v225;
            v226 = (a2[7] + 48 * v183);
            v227 = *&v254[9];
            v228 = *v254;
            *v226 = v253;
            v226[1] = v228;
            *(&v226[1]._object + 1) = v227;
            v229 = a2[2];
            v48 = __OFADD__(v229, 1);
            v222 = v229 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v222;
          }

          v230 = v248;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v249, v230);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v199 = type metadata accessor for Logger();
        sub_1000076D4(v199, qword_10177C6D0);
        v200 = v97;
        v157 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v157, a2))
        {

          sub_101010148(v249, v248);
LABEL_120:

          goto LABEL_143;
        }

        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        *v201 = v244;
        *(v201 + 4) = v200;
        *v202 = v200;
        v203 = v200;
        _os_log_impl(&_mh_execute_header, v157, a2, "Unsupported value type: %@!", v201, 0xCu);
        sub_10000B3A8(v202, &qword_10169BB30, &unk_10138B3C0);
        v13 = v246;

        a1 = v247;

        sub_101010148(v249, v248);
LABEL_143:
        sub_10118B5A0(&v258);
      }

      else
      {
LABEL_21:
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v249];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v249];
          }
        }

        else if (v28)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v249 & 1).super.super.isa;
        }

        else
        {
          isa = v249;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v6 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v258 = v39;
          *&v259[8] = &type metadata for String;
          *&v259[16] = v40;
          v259[24] = 1;
          v41 = a1[14];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v255[0] = a1[14];
          v43 = v255[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v250, v251);
          v46 = *(v43 + 16);
          v47 = (v45 & 1) == 0;
          v48 = __OFADD__(v46, v47);
          v49 = v46 + v47;
          if (v48)
          {
            __break(1u);
            goto LABEL_149;
          }

          v50 = v45;
          if (*(v43 + 24) >= v49)
          {
            if ((v42 & 1) == 0)
            {
              v231 = v44;
              sub_1010050E8();
              v44 = v231;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v250, v251);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v247;
          v13 = v246;
          if (v50)
          {
            v71 = v44;

            a2 = v255[0];
            sub_10118B568(&v258, *(v255[0] + 56) + 48 * v71);
          }

          else
          {
            a2 = v255[0];
            *(v255[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v72 = (a2[6] + 16 * v44);
            v73 = v251;
            *v72 = v250;
            v72[1] = v73;
            v74 = (a2[7] + 48 * v44);
            v75 = *&v259[9];
            v76 = *v259;
            *v74 = v258;
            v74[1] = v76;
            *(&v74[1]._object + 1) = v75;
            v77 = a2[2];
            v48 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (v48)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v78;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v249, v248);
        }

        else
        {
          objc_opt_self();
          v52 = swift_dynamicCastObjCClass();
          if (v52)
          {
            v53 = v52;
            [v52 doubleValue];
            v55 = v54;
            v56 = [v53 integerValue];
            if (v55 == v56)
            {
              v57 = v56;
              v58 = sub_1000DFAD8();
              swift_beginAccess();
              v258._countAndFlagsBits = v57;
              *&v259[8] = &type metadata for Int;
              *&v259[16] = v58;
              v259[24] = 2;
              v59 = a1[14];
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v61 = a1;
              v62 = v60;
              v255[0] = v61[14];
              v63 = v255[0];
              v61[14] = 0x8000000000000000;
              v64 = sub_100771D58(v250, v251);
              v66 = *(v63 + 16);
              v67 = (v65 & 1) == 0;
              v48 = __OFADD__(v66, v67);
              v68 = v66 + v67;
              if (v48)
              {
                goto LABEL_152;
              }

              v69 = v65;
              if (*(v63 + 24) >= v68)
              {
                if ((v62 & 1) == 0)
                {
                  v233 = v64;
                  sub_1010050E8();
                  v64 = v233;
                }
              }

              else
              {
                sub_100FE65C4(v68, v62);
                v64 = sub_100771D58(v250, v251);
                if ((v69 & 1) != (v70 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v247;
              if (v69)
              {
                goto LABEL_77;
              }

              a2 = v255[0];
              *(v255[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v116 = (a2[6] + 16 * v64);
              v117 = v251;
              *v116 = v250;
              v116[1] = v117;
              v118 = (a2[7] + 48 * v64);
              v119 = *&v259[9];
              v120 = *v259;
              *v118 = v258;
              v118[1] = v120;
              *(&v118[1]._object + 1) = v119;
              v121 = a2[2];
              v48 = __OFADD__(v121, 1);
              v122 = v121 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v104 = sub_1000DFA84();
              swift_beginAccess();
              *&v258._countAndFlagsBits = v55;
              *&v259[8] = &type metadata for Double;
              *&v259[16] = v104;
              v259[24] = 3;
              v105 = a1[14];
              v106 = swift_isUniquelyReferenced_nonNull_native();
              v107 = a1;
              v108 = v106;
              v255[0] = v107[14];
              v109 = v255[0];
              v107[14] = 0x8000000000000000;
              v64 = sub_100771D58(v250, v251);
              v111 = *(v109 + 16);
              v112 = (v110 & 1) == 0;
              v48 = __OFADD__(v111, v112);
              v113 = v111 + v112;
              if (v48)
              {
                goto LABEL_155;
              }

              v114 = v110;
              if (*(v109 + 24) >= v113)
              {
                if ((v108 & 1) == 0)
                {
                  v234 = v64;
                  sub_1010050E8();
                  v64 = v234;
                }
              }

              else
              {
                sub_100FE65C4(v113, v108);
                v64 = sub_100771D58(v250, v251);
                if ((v114 & 1) != (v115 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v247;
              if (v114)
              {
LABEL_77:
                v123 = v64;

                a2 = v255[0];
                sub_10118B568(&v258, *(v255[0] + 56) + 48 * v123);
                goto LABEL_80;
              }

              a2 = v255[0];
              *(v255[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v124 = (a2[6] + 16 * v64);
              v125 = v251;
              *v124 = v250;
              v124[1] = v125;
              v126 = (a2[7] + 48 * v64);
              v127 = *&v259[9];
              v128 = *v259;
              *v126 = v258;
              v126[1] = v128;
              *(&v126[1]._object + 1) = v127;
              v129 = a2[2];
              v48 = __OFADD__(v129, 1);
              v122 = v129 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v122;
LABEL_80:
            v130 = v248;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v249, v130);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v91 = type metadata accessor for Logger();
            sub_1000076D4(v91, qword_10177C6D0);
            v92 = v36;
            v93 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v93, a2))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              *v94 = v244;
              *(v94 + 4) = v92;
              *v95 = v92;
              v96 = v92;
              _os_log_impl(&_mh_execute_header, v93, a2, "Unsupported value type: %@!", v94, 0xCu);
              sub_10000B3A8(v95, &qword_10169BB30, &unk_10138B3C0);
              v13 = v246;

              a1 = v247;

              goto LABEL_46;
            }

            sub_101010148(v249, v248);
          }
        }
      }
    }

    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v3 = *&v14[8 * v20];
      ++v17;
      if (v3)
      {
        v17 = v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C6D0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v258._countAndFlagsBits = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000136BC(v6, object, &v258._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v9, v10, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }
}

uint64_t sub_101179424(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for BeaconObservation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v5, &qword_1016A42E0, &qword_1013B0010);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v11 = 0x6E776F6E6B6E75;
    sub_10000B3A8(v5, &qword_1016A42E0, &qword_1013B0010);
  }

  else
  {
    sub_100B3DB48(v5, v10);
    v13 = v10[*(v6 + 24)];
    switch(v13)
    {
      case '#':
        sub_10073B5F0(v10);
        return 0x656E6E6F63736964;
      case '""':
        sub_10073B5F0(v10);
        return 0xD000000000000016;
      case '!':
        sub_10073B5F0(v10);
        return 0x657463656E6E6F63;
      default:
        v11 = 0x6E776F6E6B6E75;
        sub_10073B5F0(v10);
        break;
    }
  }

  return v11;
}

void sub_101179650(void *a1, int64_t a2, unint64_t a3, void *a4, uint64_t a5, int64_t a6, double a7, double a8, double a9)
{
  v10 = v9;
  if (qword_101695280 != -1)
  {
    goto LABEL_152;
  }

  while (1)
  {
    v20 = a1[15];
    v21 = a1[16];
    if (sub_10111EACC(v20, v21, qword_10177C6E8))
    {
      break;
    }

    v266 = v10;
    v263 = a3;
    v262 = a5;
    v264 = a6;
    v27 = sub_100762F54(a7, a8, a9, a2, a3, a4, a5, a6);
    a5 = (v27 + 8);
    v28 = v27[8];
    v271 = v27;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    a3 = v30 & v28;
    swift_beginAccess();
    a6 = 0;
    a2 = (v29 + 63) >> 6;
    *&v31 = 138412290;
    v265 = v31;
    v270 = a1;
    v268 = a2;
    v269 = a5;
    while (a3)
    {
LABEL_15:
      v33 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
      v34 = (a6 << 10) | (16 * v33);
      v35 = v271[7];
      v36 = v271[6] + v34;
      v37 = *(v36 + 8);
      v272 = *v36;
      v38 = v35 + v34;
      v39 = *v38;
      v10 = *(v38 + 8);
      v40 = a1[14];
      v41 = *(v40 + 16);
      v273 = v37;

      sub_10090C56C(*&v39, v10);
      if (v41)
      {

        v42 = sub_100771D58(*&v272, v273);
        if ((v43 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v40 + 56) + 48 * v42, &v280);

        if (v10 <= 1)
        {
          if (v10)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v44 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v39) & 1).super.super.isa;
          }

          else
          {
            v44 = *&v39;
          }

          v110 = v44;
          goto LABEL_105;
        }

        if (v10 != 2)
        {
          sub_1010100EC(&v280, &v275);
          if (v276[24] != 3)
          {
LABEL_150:

            sub_10118B5A0(&v275);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v280);
            return;
          }

          sub_10000A748(&v275._countAndFlagsBits, v277);
          v111 = v278;
          v112 = sub_1000035D0(v277, v278);
          v113 = *(*(v111 - 8) + 64);
          __chkstk_darwin(v112);
          (*(v115 + 16))(v256 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          a1 = v270;
          BinaryFloatingPoint.init<A>(_:)();
          a9 = *&v275._countAndFlagsBits + v39;
          v110 = [objc_allocWithZone(NSNumber) initWithDouble:*&v275._countAndFlagsBits + v39];
          sub_100007BAC(v277);
          goto LABEL_105;
        }

        sub_1010100EC(&v280, &v275);
        if (v276[24] != 2)
        {
          goto LABEL_150;
        }

        v267 = 2;
        sub_10000A748(&v275._countAndFlagsBits, v277);
        v92 = v278;
        v91 = v279;
        v93 = sub_1000035D0(v277, v278);
        v94 = *(*(v92 - 8) + 64);
        __chkstk_darwin(v93);
        v260 = v95;
        v96 = v256 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
        v261 = v97;
        (*(v97 + 16))(v96);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v275._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v98 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v98 < 64)
            {
              goto LABEL_91;
            }

            v258 = v91;
            v259 = v256;
            __chkstk_darwin(v98);
            v100 = v256 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v101 = *(*(v258 + 32) + 8);
            v102 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v261 + 8))(v100, v92);
            v91 = v258;
            if (v102)
            {
              goto LABEL_168;
            }
          }

          else
          {
            LODWORD(v259) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v144 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v259)
            {
              v258 = v91;
              if (v144 <= 64)
              {
                v259 = *(*(v91 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v257 = v256;
                v151 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v256[0] = v256 - v152;
                swift_getAssociatedConformanceWitness();
                v153 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v256[1] = v256;
                __chkstk_darwin(v153);
                v155 = v256 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v156 = *(*(v258 + 32) + 8);
                v157 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v261 + 8))(v155, v92);
                if (v157)
                {
                  goto LABEL_168;
                }

                v91 = v258;
LABEL_91:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_92;
              }

              v259 = v256;
              __chkstk_darwin(v144);
              v146 = v256 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v147 = *(*(v258 + 32) + 8);
              v148 = dispatch thunk of static Comparable.< infix(_:_:)();
              v149 = v146;
              v91 = v258;
              (*(v261 + 8))(v149, v92);
              if (v148)
              {
                goto LABEL_168;
              }
            }

            else if (v144 < 64)
            {
              goto LABEL_91;
            }
          }
        }

LABEL_92:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v259 = v256;
          v275._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v158 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v159 = v91;
          v160 = v158;
          v161 = v159;
          v162 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v160)
          {
            if (v162 > 64)
            {
              v257 = v256;
              __chkstk_darwin(v162);
              v260 = v256 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v164 = *(*(v161 + 32) + 8);
              v165 = v260;
              v166 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v261 + 8))(v165, v92);
              goto LABEL_102;
            }
          }

          else if (v162 >= 64)
          {
            v257 = v256;
            __chkstk_darwin(v162);
            v168 = v256 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v169 = *(*(v161 + 32) + 8);
            v166 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v261 + 8))(v168, v92);
LABEL_102:
            if (v166)
            {
              goto LABEL_165;
            }

            goto LABEL_103;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_103:
        v170 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v261 + 8))(v96, v92);
        v60 = __OFADD__(v170, *&v39);
        v171 = v170 + *&v39;
        if (v60)
        {
          goto LABEL_159;
        }

        v110 = [objc_allocWithZone(NSNumber) initWithLongLong:v171];
        sub_100007BAC(v277);
        a1 = v270;
        v10 = v267;
LABEL_105:
        objc_opt_self();
        v172 = swift_dynamicCastObjCClass();
        if (v172)
        {
          v173 = v172;
          v174 = v39;
          v175 = v10;
          v176 = v110;
          v177 = String.init(_:)(v173);
          v178 = sub_1000DF96C();
          swift_beginAccess();
          v275 = v177;
          *&v276[8] = &type metadata for String;
          *&v276[16] = v178;
          v276[24] = 1;
          v179 = a1[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v274 = a1[14];
          v181 = v274;
          a1[14] = 0x8000000000000000;
          v182 = *&v272;
          v183 = sub_100771D58(*&v272, v273);
          v185 = v181[2];
          v186 = (v184 & 1) == 0;
          v60 = __OFADD__(v185, v186);
          v187 = v185 + v186;
          if (v60)
          {
            goto LABEL_156;
          }

          v188 = v184;
          if (v181[3] >= v187)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v251 = v183;
              sub_1010050E8();
              v183 = v251;
            }
          }

          else
          {
            sub_100FE65C4(v187, isUniquelyReferenced_nonNull_native);
            v183 = sub_100771D58(v182, v273);
            if ((v188 & 1) != (v189 & 1))
            {
              goto LABEL_169;
            }
          }

          v10 = v175;
          v208 = v174;
          if (v188)
          {
            v209 = v183;

            a4 = v274;
            sub_10118B568(&v275, v274[7] + 48 * v209);
            a1 = v270;
            a2 = v268;
            a5 = v269;
          }

          else
          {
            a4 = v274;
            v274[(v183 >> 6) + 8] |= 1 << v183;
            v210 = (a4[6] + 16 * v183);
            v211 = v273;
            *v210 = v182;
            v210[1] = v211;
            v212 = (a4[7] + 48 * v183);
            v213 = *&v276[9];
            v214 = *v276;
            *v212 = v275;
            v212[1] = v214;
            *(&v212[1]._object + 1) = v213;
            v215 = a4[2];
            v60 = __OFADD__(v215, 1);
            v216 = v215 + 1;
            a5 = v269;
            if (v60)
            {
              goto LABEL_158;
            }

            a4[2] = v216;
            a1 = v270;
            a2 = v268;
          }

          a1[14] = a4;
          swift_endAccess();
          sub_101010148(*&v208, v10);

          goto LABEL_123;
        }

        objc_opt_self();
        v190 = swift_dynamicCastObjCClass();
        if (v190)
        {
          v267 = v10;
          v191 = v190;
          [v190 doubleValue];
          a9 = v192;
          v193 = [v191 integerValue];
          a5 = v269;
          if (a9 == v193)
          {
            v194 = v193;
            v195 = a1;
            v196 = sub_1000DFAD8();
            swift_beginAccess();
            v275._countAndFlagsBits = v194;
            *&v276[8] = &type metadata for Int;
            *&v276[16] = v196;
            v276[24] = 2;
            v197 = v195[14];
            v198 = swift_isUniquelyReferenced_nonNull_native();
            v274 = v195[14];
            v199 = v274;
            v195[14] = 0x8000000000000000;
            v200 = *&v272;
            v201 = sub_100771D58(*&v272, v273);
            v203 = v199[2];
            v204 = (v202 & 1) == 0;
            v60 = __OFADD__(v203, v204);
            v205 = v203 + v204;
            if (v60)
            {
              goto LABEL_162;
            }

            v206 = v202;
            if (v199[3] >= v205)
            {
              if ((v198 & 1) == 0)
              {
                v254 = v201;
                sub_1010050E8();
                v201 = v254;
              }
            }

            else
            {
              sub_100FE65C4(v205, v198);
              v201 = sub_100771D58(v200, v273);
              if ((v206 & 1) != (v207 & 1))
              {
                goto LABEL_169;
              }
            }

            v10 = v267;
            if (v206)
            {
              v233 = v201;

              a4 = v274;
              sub_10118B568(&v275, v274[7] + 48 * v233);
            }

            else
            {
              a4 = v274;
              v274[(v201 >> 6) + 8] |= 1 << v201;
              v234 = (a4[6] + 16 * v201);
              v235 = v273;
              *v234 = v200;
              v234[1] = v235;
              v236 = (a4[7] + 48 * v201);
              v237 = *&v276[9];
              v238 = *v276;
              *v236 = v275;
              v236[1] = v238;
              *(&v236[1]._object + 1) = v237;
              v239 = a4[2];
              v60 = __OFADD__(v239, 1);
              v240 = v239 + 1;
              if (v60)
              {
                goto LABEL_166;
              }

              a4[2] = v240;
            }

            a1 = v270;
            a2 = v268;
          }

          else
          {
            v222 = sub_1000DFA84();
            swift_beginAccess();
            *&v275._countAndFlagsBits = a9;
            *&v276[8] = &type metadata for Double;
            *&v276[16] = v222;
            v276[24] = 3;
            v223 = a1[14];
            v224 = swift_isUniquelyReferenced_nonNull_native();
            v274 = a1[14];
            v225 = v274;
            a1[14] = 0x8000000000000000;
            v226 = sub_100771D58(*&v272, v273);
            v228 = v225[2];
            v229 = (v227 & 1) == 0;
            v60 = __OFADD__(v228, v229);
            v230 = v228 + v229;
            if (v60)
            {
              goto LABEL_164;
            }

            v231 = v227;
            if (v225[3] >= v230)
            {
              if ((v224 & 1) == 0)
              {
                v255 = v226;
                sub_1010050E8();
                v226 = v255;
              }
            }

            else
            {
              sub_100FE65C4(v230, v224);
              v226 = sub_100771D58(*&v272, v273);
              if ((v231 & 1) != (v232 & 1))
              {
                goto LABEL_169;
              }
            }

            v10 = v267;
            if (v231)
            {
              v241 = v226;

              a4 = v274;
              v242 = v274[7] + 48 * v241;
              a2 = v268;
              sub_10118B568(&v275, v242);
            }

            else
            {
              a4 = v274;
              v274[(v226 >> 6) + 8] |= 1 << v226;
              v243 = (a4[6] + 16 * v226);
              v244 = v273;
              *v243 = v272;
              *(v243 + 1) = v244;
              v245 = (a4[7] + 48 * v226);
              v246 = *&v276[9];
              v247 = *v276;
              *v245 = v275;
              v245[1] = v247;
              *(&v245[1]._object + 1) = v246;
              v248 = a4[2];
              v60 = __OFADD__(v248, 1);
              v249 = v248 + 1;
              if (v60)
              {
                goto LABEL_167;
              }

              a4[2] = v249;
            }

            a1 = v270;
          }

          a1[14] = a4;
          swift_endAccess();

          sub_101010148(*&v39, v10);
        }

        else
        {
          v272 = v39;

          a5 = v269;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v217 = type metadata accessor for Logger();
          sub_1000076D4(v217, qword_10177C6D0);
          v218 = v110;
          v176 = Logger.logObject.getter();
          a4 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v176, a4))
          {

            sub_101010148(*&v272, v10);
LABEL_123:

            goto LABEL_148;
          }

          v219 = swift_slowAlloc();
          v220 = swift_slowAlloc();
          *v219 = v265;
          *(v219 + 4) = v218;
          *v220 = v218;
          v221 = v218;
          _os_log_impl(&_mh_execute_header, v176, a4, "Unsupported value type: %@!", v219, 0xCu);
          sub_10000B3A8(v220, &qword_10169BB30, &unk_10138B3C0);
          a1 = v270;

          a2 = v268;

          sub_101010148(*&v272, v10);
        }

LABEL_148:
        sub_10118B5A0(&v280);
      }

      else
      {
LABEL_21:
        if (v10 > 1)
        {
          if (v10 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v39];
          }

          else
          {
            a9 = v39;
            isa = [objc_allocWithZone(NSNumber) initWithDouble:v39];
          }
        }

        else if (v10)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v39) & 1).super.super.isa;
        }

        else
        {
          isa = *&v39;
        }

        v46 = isa;
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          v48 = v47;
          v49 = v39;
          v21 = v10;
          v20 = v46;
          v50 = String.init(_:)(v48);
          v51 = sub_1000DF96C();
          swift_beginAccess();
          v280 = v50;
          *&v281[8] = &type metadata for String;
          *&v281[16] = v51;
          v281[24] = 1;
          v52 = a1[14];
          v53 = swift_isUniquelyReferenced_nonNull_native();
          v277[0] = a1[14];
          v54 = v277[0];
          a1[14] = 0x8000000000000000;
          v55 = *&v272;
          v56 = sub_100771D58(*&v272, v273);
          v58 = *(v54 + 16);
          v59 = (v57 & 1) == 0;
          v60 = __OFADD__(v58, v59);
          v61 = v58 + v59;
          if (v60)
          {
            __break(1u);
            goto LABEL_154;
          }

          v62 = v57;
          if (*(v54 + 24) >= v61)
          {
            if ((v53 & 1) == 0)
            {
              v250 = v56;
              sub_1010050E8();
              v56 = v250;
            }
          }

          else
          {
            sub_100FE65C4(v61, v53);
            v56 = sub_100771D58(v55, v273);
            if ((v62 & 1) != (v63 & 1))
            {
              goto LABEL_169;
            }
          }

          v10 = v21;
          v82 = v49;
          if (v62)
          {
            v83 = v56;

            a4 = v277[0];
            sub_10118B568(&v280, *(v277[0] + 56) + 48 * v83);
            a5 = v269;
          }

          else
          {
            a4 = v277[0];
            *(v277[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
            v84 = (a4[6] + 16 * v56);
            v85 = v273;
            *v84 = v55;
            v84[1] = v85;
            v86 = (a4[7] + 48 * v56);
            v87 = *&v281[9];
            v88 = *v281;
            *v86 = v280;
            v86[1] = v88;
            *(&v86[1]._object + 1) = v87;
            v89 = a4[2];
            v60 = __OFADD__(v89, 1);
            v90 = v89 + 1;
            a5 = v269;
            if (v60)
            {
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
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a4[2] = v90;
          }

          a1 = v270;
          v270[14] = a4;
          swift_endAccess();

          sub_101010148(*&v82, v10);
          a2 = v268;
        }

        else
        {
          objc_opt_self();
          v64 = swift_dynamicCastObjCClass();
          if (v64)
          {
            v267 = v10;
            v65 = v64;
            [v64 doubleValue];
            a9 = v66;
            v67 = [v65 integerValue];
            a5 = v269;
            if (a9 == v67)
            {
              v68 = v67;
              v69 = a1;
              v70 = sub_1000DFAD8();
              swift_beginAccess();
              v280._countAndFlagsBits = v68;
              *&v281[8] = &type metadata for Int;
              *&v281[16] = v70;
              v281[24] = 2;
              v71 = v69[14];
              v72 = swift_isUniquelyReferenced_nonNull_native();
              v277[0] = v69[14];
              v73 = v277[0];
              v69[14] = 0x8000000000000000;
              v74 = *&v272;
              v75 = sub_100771D58(*&v272, v273);
              v77 = *(v73 + 16);
              v78 = (v76 & 1) == 0;
              v60 = __OFADD__(v77, v78);
              v79 = v77 + v78;
              if (v60)
              {
                goto LABEL_157;
              }

              v80 = v76;
              if (*(v73 + 24) >= v79)
              {
                if ((v72 & 1) == 0)
                {
                  v252 = v75;
                  sub_1010050E8();
                  v75 = v252;
                }
              }

              else
              {
                sub_100FE65C4(v79, v72);
                v75 = sub_100771D58(v74, v273);
                if ((v80 & 1) != (v81 & 1))
                {
                  goto LABEL_169;
                }
              }

              v10 = v267;
              if (v80)
              {
                v127 = v75;

                a4 = v277[0];
                sub_10118B568(&v280, *(v277[0] + 56) + 48 * v127);
              }

              else
              {
                a4 = v277[0];
                *(v277[0] + 8 * (v75 >> 6) + 64) |= 1 << v75;
                v128 = (a4[6] + 16 * v75);
                v129 = v273;
                *v128 = v74;
                v128[1] = v129;
                v130 = (a4[7] + 48 * v75);
                v131 = *&v281[9];
                v132 = *v281;
                *v130 = v280;
                v130[1] = v132;
                *(&v130[1]._object + 1) = v131;
                v133 = a4[2];
                v60 = __OFADD__(v133, 1);
                v134 = v133 + 1;
                if (v60)
                {
                  goto LABEL_161;
                }

                a4[2] = v134;
              }

              a1 = v270;
              a2 = v268;
            }

            else
            {
              v116 = sub_1000DFA84();
              swift_beginAccess();
              *&v280._countAndFlagsBits = a9;
              *&v281[8] = &type metadata for Double;
              *&v281[16] = v116;
              v281[24] = 3;
              v117 = a1[14];
              v118 = swift_isUniquelyReferenced_nonNull_native();
              v277[0] = a1[14];
              v119 = v277[0];
              a1[14] = 0x8000000000000000;
              v120 = sub_100771D58(*&v272, v273);
              v122 = *(v119 + 16);
              v123 = (v121 & 1) == 0;
              v60 = __OFADD__(v122, v123);
              v124 = v122 + v123;
              if (v60)
              {
                goto LABEL_160;
              }

              v125 = v121;
              if (*(v119 + 24) >= v124)
              {
                if ((v118 & 1) == 0)
                {
                  v253 = v120;
                  sub_1010050E8();
                  v120 = v253;
                }
              }

              else
              {
                sub_100FE65C4(v124, v118);
                v120 = sub_100771D58(*&v272, v273);
                if ((v125 & 1) != (v126 & 1))
                {
                  goto LABEL_169;
                }
              }

              v10 = v267;
              if (v125)
              {
                v135 = v120;

                a4 = v277[0];
                v136 = *(v277[0] + 56) + 48 * v135;
                a2 = v268;
                sub_10118B568(&v280, v136);
              }

              else
              {
                a4 = v277[0];
                *(v277[0] + 8 * (v120 >> 6) + 64) |= 1 << v120;
                v137 = (a4[6] + 16 * v120);
                v138 = v273;
                *v137 = v272;
                *(v137 + 1) = v138;
                v139 = (a4[7] + 48 * v120);
                v140 = *&v281[9];
                v141 = *v281;
                *v139 = v280;
                v139[1] = v141;
                *(&v139[1]._object + 1) = v140;
                v142 = a4[2];
                v60 = __OFADD__(v142, 1);
                v143 = v142 + 1;
                if (v60)
                {
                  goto LABEL_163;
                }

                a4[2] = v143;
              }

              a1 = v270;
            }

            a1[14] = a4;
            swift_endAccess();

            v109 = v39;
LABEL_82:
            sub_101010148(*&v109, v10);
          }

          else
          {
            v272 = v39;

            a5 = v269;
            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v103 = type metadata accessor for Logger();
            sub_1000076D4(v103, qword_10177C6D0);
            v104 = v46;
            v105 = Logger.logObject.getter();
            a4 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v105, a4))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              *v106 = v265;
              *(v106 + 4) = v104;
              *v107 = v104;
              v108 = v104;
              _os_log_impl(&_mh_execute_header, v105, a4, "Unsupported value type: %@!", v106, 0xCu);
              sub_10000B3A8(v107, &qword_10169BB30, &unk_10138B3C0);
              a1 = v270;

              a2 = v268;

              v109 = v272;
              goto LABEL_82;
            }

            sub_101010148(*&v272, v10);
          }
        }
      }
    }

    while (1)
    {
      v32 = a6 + 1;
      if (__OFADD__(a6, 1))
      {
        break;
      }

      if (v32 >= a2)
      {

        return;
      }

      a3 = *(a5 + 8 * v32);
      ++a6;
      if (a3)
      {
        a6 = v32;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_152:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_154:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C6D0);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v280._countAndFlagsBits = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(v20, v21, &v280._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v23, v24, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v25, 0xCu);
    sub_100007BAC(v26);
  }
}

uint64_t sub_10117B278(unint64_t a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 == 2)
  {
    return 2;
  }

  if (a1 < 4)
  {
    return 3;
  }

  if (a1 == 4)
  {
    return 4;
  }

  if (a1 < 6)
  {
    return 5;
  }

  if (a1 < 0xB)
  {
    return 10;
  }

  if (a1 < 0x10)
  {
    return 15;
  }

  if (a1 < 0x15)
  {
    return 20;
  }

  if (a1 < 0x1A)
  {
    return 25;
  }

  if (a1 < 0x33)
  {
    return 50;
  }

  if (a1 < 0x65)
  {
    return 100;
  }

  if (a1 < 0xC9)
  {
    return 200;
  }

  if (a1 <= 0x320)
  {
    return 800;
  }

  return 900;
}

uint64_t sub_10117B344(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10117B36C, a1, 0);
}

uint64_t sub_10117B36C()
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
    v12[1] = sub_10117B5B8;
    v13 = v0[91];

    return sub_1008F5A28(v13);
  }
}

uint64_t sub_10117B5B8(uint64_t a1)
{
  v2 = *(*v1 + 736);
  v3 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 744) = a1;

  return _swift_task_switch(sub_10117B6D0, v3, 0);
}

unint64_t sub_10117B6D0()
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

void sub_10117C3F4(void *a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t, int64_t), int64_t a5)
{
  v8 = v5;
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

    v243 = a5;
    v245 = v8;
    v242 = a3;
    v19 = a4(a2, a3);
    a4 = (v19 + 64);
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
    v247 = a4;
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
      v8 = *v32;
      v33 = *(v32 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v251 = v31;

      sub_10090C56C(*&v8, v33);
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
              v38 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v8) & 1).super.super.isa;
            }

            else
            {
              v38 = *&v8;
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
            v99 = [objc_allocWithZone(NSNumber) initWithDouble:*&v253._countAndFlagsBits + v8];
            sub_100007BAC(v255);
            goto LABEL_108;
          }

          sub_1010100EC(&v258, &v253);
          if (v254[24] != 2)
          {
            goto LABEL_148;
          }

          v240 = v8;
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
            v8 = v240;
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
              sub_101010148(*&v8, v173);

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

                sub_101010148(*&v8, v250);
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

              sub_101010148(*&v8, v250);
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

            sub_101010148(*&v8, v33);
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
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v8];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v8];
        }
      }

      else if (v33)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v8) & 1).super.super.isa;
      }

      else
      {
        isa = *&v8;
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
            v243(v242);
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

        v97 = v8;
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

        sub_101010148(*&v8, v250);
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

      v97 = v8;
      v98 = v250;
LABEL_85:
      sub_101010148(*&v97, v98);
LABEL_13:
      a4 = v247;
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

      v23 = *(a4 + v26);
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

void sub_10117DEF0(void *a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t, int64_t))
{
  v6 = v4;
  if (qword_101695280 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v10 = a1[15];
    v11 = a1[16];
    if (sub_10111EACC(v10, v11, qword_10177C6E8))
    {
      break;
    }

    v244 = v6;
    v241 = a2;
    v242 = a3;
    v17 = a4(a2, a3);
    a4 = (v17 + 64);
    v18 = *(v17 + 64);
    v248 = v17;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    swift_beginAccess();
    v22 = 0;
    a3 = (v19 + 63) >> 6;
    *&v23 = 138412290;
    v243 = v23;
    v247 = a1;
    v245 = a3;
    v246 = a4;
    while (v21)
    {
LABEL_19:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = (v22 << 10) | (16 * v26);
      v28 = *(v248 + 56);
      v29 = (*(v248 + 48) + v27);
      v30 = v29[1];
      v249 = *v29;
      v31 = v28 + v27;
      v6 = *v31;
      v32 = *(v31 + 8);
      v33 = a1[14];
      v34 = *(v33 + 16);
      v250 = v30;

      sub_10090C56C(*&v6, v32);
      if (v34)
      {

        v35 = sub_100771D58(v249, v250);
        if (v36)
        {
          sub_1010100EC(*(v33 + 56) + 48 * v35, &v257);

          if (v32 <= 1)
          {
            if (v32)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v37 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
            }

            else
            {
              v37 = *&v6;
            }

            v98 = v37;
            goto LABEL_108;
          }

          if (v32 != 2)
          {
            sub_1010100EC(&v257, &v252);
            if (v253[24] != 3)
            {
LABEL_148:

              sub_10118B5A0(&v252);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v257);
              return;
            }

            sub_10000A748(&v252._countAndFlagsBits, v254);
            v99 = v255;
            v100 = sub_1000035D0(v254, v255);
            v101 = *(*(v99 - 8) + 64);
            __chkstk_darwin(v100);
            a2 = v234 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v103 + 16))(a2);
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v247;
            v98 = [objc_allocWithZone(NSNumber) initWithDouble:*&v252._countAndFlagsBits + v6];
            sub_100007BAC(v254);
            goto LABEL_108;
          }

          sub_1010100EC(&v257, &v252);
          if (v253[24] != 2)
          {
            goto LABEL_148;
          }

          v239 = v6;
          sub_10000A748(&v252._countAndFlagsBits, v254);
          a2 = v255;
          v79 = v256;
          v80 = sub_1000035D0(v254, v255);
          v240 = v234;
          v81 = *(a2 - 8);
          v82 = v81[8];
          __chkstk_darwin(v80);
          v238 = v83;
          v84 = v234 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v81[2])(v84);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_95;
          }

          v252._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v85 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v85 >= 64)
            {
              v236 = v79;
              v237 = v234;
              __chkstk_darwin(v85);
              v87 = v234 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v88 = *(*(v236 + 32) + 8);
              v89 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v81[1])(v87, a2);
              v79 = v236;
              if (v89)
              {
                goto LABEL_166;
              }

              goto LABEL_95;
            }

LABEL_94:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_95;
          }

          LODWORD(v237) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v129 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v237 & 1) == 0)
          {
            if (v129 >= 64)
            {
              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v236 = v79;
          if (v129 <= 64)
          {
            v237 = *(*(v79 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v235 = v234;
            v136 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            __chkstk_darwin(AssociatedTypeWitness);
            v234[0] = v234 - v137;
            swift_getAssociatedConformanceWitness();
            v138 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v234[1] = v234;
            __chkstk_darwin(v138);
            v140 = v234 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v141 = *(*(v236 + 32) + 8);
            v142 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v81[1])(v140, a2);
            if (v142)
            {
              goto LABEL_166;
            }

            v79 = v236;
            goto LABEL_94;
          }

          v237 = v234;
          __chkstk_darwin(v129);
          v131 = v234 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v132 = *(*(v236 + 32) + 8);
          v133 = dispatch thunk of static Comparable.< infix(_:_:)();
          v134 = v131;
          v79 = v236;
          (v81[1])(v134, a2);
          if (v133)
          {
            goto LABEL_166;
          }

LABEL_95:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_106:
            v154 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v81[1])(v84, a2);
            v6 = v239;
            v50 = __OFADD__(v154, *&v239);
            v155 = v154 + *&v239;
            if (v50)
            {
              goto LABEL_157;
            }

            v98 = [objc_allocWithZone(NSNumber) initWithLongLong:v155];
            sub_100007BAC(v254);
            a1 = v247;
LABEL_108:
            objc_opt_self();
            v156 = swift_dynamicCastObjCClass();
            if (v156)
            {
              v157 = v156;
              v158 = v32;
              v159 = v98;
              v160 = String.init(_:)(v157);
              v161 = a1;
              v162 = sub_1000DF96C();
              swift_beginAccess();
              v252 = v160;
              *&v253[8] = &type metadata for String;
              *&v253[16] = v162;
              v253[24] = 1;
              v163 = v161[14];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v251 = v161[14];
              v165 = v251;
              v161[14] = 0x8000000000000000;
              v166 = sub_100771D58(v249, v250);
              v168 = v165[2];
              v169 = (v167 & 1) == 0;
              v50 = __OFADD__(v168, v169);
              v170 = v168 + v169;
              if (v50)
              {
                goto LABEL_154;
              }

              a2 = v167;
              if (v165[3] >= v170)
              {
                v172 = v158;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v229 = v166;
                  sub_1010050E8();
                  v166 = v229;
                }
              }

              else
              {
                sub_100FE65C4(v170, isUniquelyReferenced_nonNull_native);
                v166 = sub_100771D58(v249, v250);
                if ((a2 & 1) != (v171 & 1))
                {
                  goto LABEL_167;
                }

                v172 = v158;
              }

              a1 = v247;
              a3 = v245;
              if (a2)
              {
                a2 = v166;

                v191 = v251;
                sub_10118B568(&v252, v251[7] + 48 * a2);
              }

              else
              {
                v191 = v251;
                v251[(v166 >> 6) + 8] |= 1 << v166;
                v192 = (v191[6] + 16 * v166);
                v193 = v250;
                *v192 = v249;
                v192[1] = v193;
                v194 = (v191[7] + 48 * v166);
                v195 = *&v253[9];
                v196 = *v253;
                *v194 = v252;
                v194[1] = v196;
                *(&v194[1]._object + 1) = v195;
                v197 = v191[2];
                v50 = __OFADD__(v197, 1);
                v198 = v197 + 1;
                if (v50)
                {
                  goto LABEL_156;
                }

                v191[2] = v198;
              }

              a1[14] = v191;
              swift_endAccess();
              sub_101010148(*&v6, v172);

LABEL_126:
              goto LABEL_12;
            }

            objc_opt_self();
            v173 = swift_dynamicCastObjCClass();
            if (!v173)
            {
              LODWORD(v249) = v32;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v199 = type metadata accessor for Logger();
              sub_1000076D4(v199, qword_10177C6D0);
              v200 = v98;
              v159 = Logger.logObject.getter();
              v201 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v159, v201))
              {

                sub_101010148(*&v6, v249);
                goto LABEL_126;
              }

              a2 = swift_slowAlloc();
              v202 = swift_slowAlloc();
              *a2 = v243;
              *(a2 + 4) = v200;
              *v202 = v200;
              v203 = v200;
              _os_log_impl(&_mh_execute_header, v159, v201, "Unsupported value type: %@!", a2, 0xCu);
              sub_10000B3A8(v202, &qword_10169BB30, &unk_10138B3C0);
              a1 = v247;

              sub_101010148(*&v6, v249);
LABEL_12:
              sub_10118B5A0(&v257);
              goto LABEL_13;
            }

            v174 = v173;
            [v173 doubleValue];
            v176 = v175;
            v177 = [v174 integerValue];
            if (v176 == v177)
            {
              v178 = v177;
              v179 = sub_1000DFAD8();
              swift_beginAccess();
              v252._countAndFlagsBits = v178;
              *&v253[8] = &type metadata for Int;
              *&v253[16] = v179;
              v253[24] = 2;
              v180 = a1[14];
              v181 = swift_isUniquelyReferenced_nonNull_native();
              v182 = a1;
              v183 = v181;
              v251 = v182[14];
              v184 = v251;
              v182[14] = 0x8000000000000000;
              v185 = sub_100771D58(v249, v250);
              v187 = v184[2];
              v188 = (v186 & 1) == 0;
              v50 = __OFADD__(v187, v188);
              v189 = v187 + v188;
              if (v50)
              {
                goto LABEL_160;
              }

              a2 = v186;
              if (v184[3] >= v189)
              {
                if ((v183 & 1) == 0)
                {
                  v232 = v185;
                  sub_1010050E8();
                  v185 = v232;
                }
              }

              else
              {
                sub_100FE65C4(v189, v183);
                v185 = sub_100771D58(v249, v250);
                if ((a2 & 1) != (v190 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v247;
              if ((a2 & 1) == 0)
              {
                v24 = v251;
                v251[(v185 >> 6) + 8] |= 1 << v185;
                v215 = (v24[6] + 16 * v185);
                v216 = v250;
                *v215 = v249;
                v215[1] = v216;
                v217 = (v24[7] + 48 * v185);
                v218 = *&v253[9];
                v219 = *v253;
                *v217 = v252;
                v217[1] = v219;
                *(&v217[1]._object + 1) = v218;
                v220 = v24[2];
                v50 = __OFADD__(v220, 1);
                v221 = v220 + 1;
                if (v50)
                {
                  goto LABEL_164;
                }

                goto LABEL_146;
              }

LABEL_10:
              a2 = v185;

              v24 = v251;
              sub_10118B568(&v252, v251[7] + 48 * a2);
            }

            else
            {
              v204 = sub_1000DFA84();
              swift_beginAccess();
              *&v252._countAndFlagsBits = v176;
              *&v253[8] = &type metadata for Double;
              *&v253[16] = v204;
              v253[24] = 3;
              v205 = a1[14];
              v206 = swift_isUniquelyReferenced_nonNull_native();
              v207 = a1;
              v208 = v206;
              v251 = v207[14];
              v209 = v251;
              v207[14] = 0x8000000000000000;
              v185 = sub_100771D58(v249, v250);
              v211 = v209[2];
              v212 = (v210 & 1) == 0;
              v50 = __OFADD__(v211, v212);
              v213 = v211 + v212;
              if (v50)
              {
                goto LABEL_162;
              }

              a2 = v210;
              if (v209[3] >= v213)
              {
                if ((v208 & 1) == 0)
                {
                  v233 = v185;
                  sub_1010050E8();
                  v185 = v233;
                }
              }

              else
              {
                sub_100FE65C4(v213, v208);
                v185 = sub_100771D58(v249, v250);
                if ((a2 & 1) != (v214 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v247;
              if (a2)
              {
                goto LABEL_10;
              }

              v24 = v251;
              v251[(v185 >> 6) + 8] |= 1 << v185;
              v222 = (v24[6] + 16 * v185);
              v223 = v250;
              *v222 = v249;
              v222[1] = v223;
              v224 = (v24[7] + 48 * v185);
              v225 = *&v253[9];
              v226 = *v253;
              *v224 = v252;
              v224[1] = v226;
              *(&v224[1]._object + 1) = v225;
              v227 = v24[2];
              v50 = __OFADD__(v227, 1);
              v221 = v227 + 1;
              if (v50)
              {
                goto LABEL_165;
              }

LABEL_146:
              v24[2] = v221;
            }

            a1[14] = v24;
            swift_endAccess();

            sub_101010148(*&v6, v32);
            goto LABEL_12;
          }

          v237 = v81;
          v252._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v143 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v144 = v79;
          v145 = v143;
          v146 = v144;
          v147 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v145)
          {
            if (v147 > 64)
            {
              v235 = v234;
              __chkstk_darwin(v147);
              v238 = v234 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v149 = *(*(v146 + 32) + 8);
              v150 = dispatch thunk of static Comparable.< infix(_:_:)();
              v81 = v237;
              (v237[1])(v238, a2);
              goto LABEL_105;
            }
          }

          else if (v147 >= 64)
          {
            v235 = v234;
            __chkstk_darwin(v147);
            v152 = v234 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v153 = *(*(v146 + 32) + 8);
            v150 = dispatch thunk of static Comparable.< infix(_:_:)();
            v81 = v237;
            (v237[1])(v152, a2);
LABEL_105:
            if (v150)
            {
              goto LABEL_163;
            }

            goto LABEL_106;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v81 = v237;
          goto LABEL_106;
        }
      }

      if (v32 > 1)
      {
        if (v32 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v6];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v6];
        }
      }

      else if (v32)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
      }

      else
      {
        isa = *&v6;
      }

      v10 = isa;
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        v40 = v39;
        v41 = v32;
        v10 = v10;
        v42 = String.init(_:)(v40);
        v43 = sub_1000DF96C();
        swift_beginAccess();
        v257 = v42;
        *&v258[8] = &type metadata for String;
        *&v258[16] = v43;
        v258[24] = 1;
        v44 = a1[14];
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v254[0] = a1[14];
        v45 = v254[0];
        a1[14] = 0x8000000000000000;
        v46 = sub_100771D58(v249, v250);
        v48 = *(v45 + 16);
        v49 = (v47 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          __break(1u);
          goto LABEL_152;
        }

        a2 = v47;
        if (*(v45 + 24) >= v51)
        {
          if ((v11 & 1) == 0)
          {
            v228 = v46;
            sub_1010050E8();
            v46 = v228;
          }
        }

        else
        {
          sub_100FE65C4(v51, v11);
          v46 = sub_100771D58(v249, v250);
          if ((a2 & 1) != (v52 & 1))
          {
            goto LABEL_167;
          }
        }

        a1 = v247;
        LOBYTE(v32) = v41;
        a3 = v245;
        if (a2)
        {
          a2 = v46;

          v71 = v254[0];
          sub_10118B568(&v257, *(v254[0] + 56) + 48 * a2);
        }

        else
        {
          v71 = v254[0];
          *(v254[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v72 = (v71[6] + 16 * v46);
          v73 = v250;
          *v72 = v249;
          v72[1] = v73;
          v74 = (v71[7] + 48 * v46);
          v75 = *&v258[9];
          v76 = *v258;
          *v74 = v257;
          v74[1] = v76;
          *(&v74[1]._object + 1) = v75;
          v77 = v71[2];
          v50 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v50)
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

          v71[2] = v78;
        }

        a1[14] = v71;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v54 = v53;
        [v53 doubleValue];
        v56 = v55;
        v57 = [v54 integerValue];
        a3 = v245;
        if (v56 == v57)
        {
          v58 = v57;
          v59 = sub_1000DFAD8();
          swift_beginAccess();
          v257._countAndFlagsBits = v58;
          *&v258[8] = &type metadata for Int;
          *&v258[16] = v59;
          v258[24] = 2;
          v60 = a1[14];
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v62 = a1;
          v63 = v61;
          v254[0] = v62[14];
          v64 = v254[0];
          v62[14] = 0x8000000000000000;
          v65 = sub_100771D58(v249, v250);
          v67 = *(v64 + 16);
          v68 = (v66 & 1) == 0;
          v50 = __OFADD__(v67, v68);
          v69 = v67 + v68;
          if (v50)
          {
            goto LABEL_155;
          }

          a2 = v66;
          if (*(v64 + 24) >= v69)
          {
            if ((v63 & 1) == 0)
            {
              v230 = v65;
              sub_1010050E8();
              v65 = v230;
            }
          }

          else
          {
            sub_100FE65C4(v69, v63);
            v65 = sub_100771D58(v249, v250);
            if ((a2 & 1) != (v70 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v247;
          if ((a2 & 1) == 0)
          {
            v115 = v254[0];
            *(v254[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
            v116 = (v115[6] + 16 * v65);
            v117 = v250;
            *v116 = v249;
            v116[1] = v117;
            v118 = (v115[7] + 48 * v65);
            v119 = *&v258[9];
            v120 = *v258;
            *v118 = v257;
            v118[1] = v120;
            *(&v118[1]._object + 1) = v119;
            v121 = v115[2];
            v50 = __OFADD__(v121, 1);
            v122 = v121 + 1;
            if (v50)
            {
              goto LABEL_159;
            }

            goto LABEL_82;
          }

LABEL_80:
          a2 = v65;

          v115 = v254[0];
          sub_10118B568(&v257, *(v254[0] + 56) + 48 * a2);
        }

        else
        {
          v104 = sub_1000DFA84();
          swift_beginAccess();
          *&v257._countAndFlagsBits = v56;
          *&v258[8] = &type metadata for Double;
          *&v258[16] = v104;
          v258[24] = 3;
          v105 = a1[14];
          v106 = swift_isUniquelyReferenced_nonNull_native();
          v107 = a1;
          v108 = v106;
          v254[0] = v107[14];
          v109 = v254[0];
          v107[14] = 0x8000000000000000;
          v65 = sub_100771D58(v249, v250);
          v111 = *(v109 + 16);
          v112 = (v110 & 1) == 0;
          v50 = __OFADD__(v111, v112);
          v113 = v111 + v112;
          if (v50)
          {
            goto LABEL_158;
          }

          a2 = v110;
          if (*(v109 + 24) >= v113)
          {
            if ((v108 & 1) == 0)
            {
              v231 = v65;
              sub_1010050E8();
              v65 = v231;
            }
          }

          else
          {
            sub_100FE65C4(v113, v108);
            v65 = sub_100771D58(v249, v250);
            if ((a2 & 1) != (v114 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v247;
          if (a2)
          {
            goto LABEL_80;
          }

          v115 = v254[0];
          *(v254[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
          v123 = (v115[6] + 16 * v65);
          v124 = v250;
          *v123 = v249;
          v123[1] = v124;
          v125 = (v115[7] + 48 * v65);
          v126 = *&v258[9];
          v127 = *v258;
          *v125 = v257;
          v125[1] = v127;
          *(&v125[1]._object + 1) = v126;
          v128 = v115[2];
          v50 = __OFADD__(v128, 1);
          v122 = v128 + 1;
          if (v50)
          {
            goto LABEL_161;
          }

LABEL_82:
          v115[2] = v122;
        }

        a1[14] = v115;
        swift_endAccess();
LABEL_84:

        v96 = v6;
        v97 = v32;
        goto LABEL_85;
      }

      LODWORD(v249) = v32;

      a3 = v245;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_1000076D4(v90, qword_10177C6D0);
      v91 = v10;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v92, v93))
      {

        sub_101010148(*&v6, v249);
        goto LABEL_13;
      }

      a2 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *a2 = v243;
      *(a2 + 4) = v91;
      *v94 = v91;
      v95 = v91;
      _os_log_impl(&_mh_execute_header, v92, v93, "Unsupported value type: %@!", a2, 0xCu);
      sub_10000B3A8(v94, &qword_10169BB30, &unk_10138B3C0);
      a1 = v247;

      v96 = v6;
      v97 = v249;
LABEL_85:
      sub_101010148(*&v96, v97);
LABEL_13:
      a4 = v246;
    }

    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= a3)
      {

        return;
      }

      v21 = *(a4 + v25);
      ++v22;
      if (v21)
      {
        v22 = v25;
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

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C6D0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v257._countAndFlagsBits = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000136BC(v10, v11, &v257._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v13, v14, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v15, 0xCu);
    sub_100007BAC(v16);
  }
}

void sub_10117F97C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v6 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v6, object, qword_10177C6E8))
    {
      break;
    }

    v245 = v3;
    v243 = a2;
    v13 = sub_101164F24(a2);
    v14 = v13 + 64;
    v15 = 1 << v13[32];
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v3 = v16 & *(v13 + 8);
    swift_beginAccess();
    v17 = 0;
    v18 = (v15 + 63) >> 6;
    *&v19 = 138412290;
    v244 = v19;
    v247 = a1;
    v246 = v13;
    while (v3)
    {
LABEL_15:
      v21 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v22 = (v17 << 10) | (16 * v21);
      v23 = *(v13 + 7);
      v24 = (*(v13 + 6) + v22);
      v25 = v24[1];
      v250 = *v24;
      v26 = (v23 + v22);
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = a1[14];
      v30 = *(v29 + 16);
      v251 = v25;

      v249 = v27;
      sub_10090C56C(v27, v28);
      v248 = v28;
      if (v30)
      {

        v31 = sub_100771D58(v250, v251);
        if ((v32 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v29 + 56) + 48 * v31, &v258);

        if (v28 <= 1)
        {
          if (v28)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v249 & 1).super.super.isa;
          }

          else
          {
            v33 = v249;
          }

          v97 = v33;
          goto LABEL_102;
        }

        if (v28 != 2)
        {
          sub_1010100EC(&v258, &v253);
          if (v254[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v253);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v258);
            return;
          }

          v98 = v249;
          sub_10000A748(&v253._countAndFlagsBits, v255);
          v99 = v256;
          v100 = sub_1000035D0(v255, v256);
          v101 = *(*(v99 - 8) + 64);
          __chkstk_darwin(v100);
          (*(v103 + 16))(v237 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v247;
          v97 = [objc_allocWithZone(NSNumber) initWithDouble:*&v253._countAndFlagsBits + *&v98];
          sub_100007BAC(v255);
          goto LABEL_102;
        }

        sub_1010100EC(&v258, &v253);
        if (v254[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v253._countAndFlagsBits, v255);
        v80 = v256;
        v79 = v257;
        v81 = sub_1000035D0(v255, v256);
        v241 = v237;
        v82 = *(*(v80 - 8) + 64);
        __chkstk_darwin(v81);
        v239 = v83;
        v84 = v237 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        v242 = v85;
        (*(v85 + 16))(v84);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v253._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v86 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v86 < 64)
            {
              goto LABEL_89;
            }

            v240 = v79;
            v238 = v237;
            __chkstk_darwin(v86);
            v88 = v237 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v89 = *(*(v240 + 32) + 8);
            v90 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v242 + 8))(v88, v80);
            v79 = v240;
            if (v90)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v238) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v131 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v238)
            {
              v240 = v79;
              if (v131 <= 64)
              {
                v238 = *(*(v79 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v237[3] = v237;
                v138 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v237[1] = v237 - v139;
                swift_getAssociatedConformanceWitness();
                v140 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v237[2] = v237;
                __chkstk_darwin(v140);
                v142 = v237 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v143 = *(*(v240 + 32) + 8);
                v144 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v242 + 8))(v142, v80);
                if (v144)
                {
                  goto LABEL_163;
                }

                v79 = v240;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v238 = v237;
              __chkstk_darwin(v131);
              v133 = v237 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v134 = *(*(v240 + 32) + 8);
              v135 = dispatch thunk of static Comparable.< infix(_:_:)();
              v136 = v133;
              v79 = v240;
              (*(v242 + 8))(v136, v80);
              if (v135)
              {
                goto LABEL_163;
              }
            }

            else if (v131 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v253._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v145 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v146 = v79;
          v147 = v145;
          v240 = v146;
          v148 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v147)
          {
            if (v148 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v148 >= 64)
          {
LABEL_93:
            v238 = v237;
            __chkstk_darwin(v148);
            v239 = v237 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v150 = v240;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v151 = *(*(v150 + 32) + 8);
            v152 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v242 + 8))(v239, v80);
            if (v152)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v153 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v242 + 8))(v84, v80);
        v48 = __OFADD__(v153, v249);
        v154 = &v249[v153];
        if (v48)
        {
          goto LABEL_154;
        }

        v97 = [objc_allocWithZone(NSNumber) initWithLongLong:v154];
        sub_100007BAC(v255);
        a1 = v247;
LABEL_102:
        objc_opt_self();
        v155 = swift_dynamicCastObjCClass();
        if (v155)
        {
          v156 = v155;
          v157 = v97;
          v158 = String.init(_:)(v156);
          v159 = a1;
          v160 = sub_1000DF96C();
          swift_beginAccess();
          v253 = v158;
          *&v254[8] = &type metadata for String;
          *&v254[16] = v160;
          v254[24] = 1;
          v161 = v159[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v252 = v159[14];
          v163 = v252;
          v159[14] = 0x8000000000000000;
          v164 = sub_100771D58(v250, v251);
          v166 = v163[2];
          v167 = (v165 & 1) == 0;
          v48 = __OFADD__(v166, v167);
          v168 = v166 + v167;
          if (v48)
          {
            goto LABEL_151;
          }

          v169 = v165;
          if (v163[3] >= v168)
          {
            v13 = v246;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v232 = v164;
              sub_1010050E8();
              v164 = v232;
            }
          }

          else
          {
            sub_100FE65C4(v168, isUniquelyReferenced_nonNull_native);
            v164 = sub_100771D58(v250, v251);
            v13 = v246;
            if ((v169 & 1) != (v170 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v247;
          if (v169)
          {
            v190 = v164;

            a2 = v252;
            sub_10118B568(&v253, v252[7] + 48 * v190);
          }

          else
          {
            a2 = v252;
            v252[(v164 >> 6) + 8] |= 1 << v164;
            v191 = (a2[6] + 16 * v164);
            v192 = v251;
            *v191 = v250;
            v191[1] = v192;
            v193 = (a2[7] + 48 * v164);
            v194 = *&v254[9];
            v195 = *v254;
            *v193 = v253;
            v193[1] = v195;
            *(&v193[1]._object + 1) = v194;
            v196 = a2[2];
            v48 = __OFADD__(v196, 1);
            v197 = v196 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            a2[2] = v197;
          }

          v198 = v248;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v249, v198);

          goto LABEL_120;
        }

        objc_opt_self();
        v171 = swift_dynamicCastObjCClass();
        if (v171)
        {
          v172 = v171;
          [v171 doubleValue];
          v174 = v173;
          v175 = [v172 integerValue];
          if (v174 == v175)
          {
            v176 = v175;
            v177 = sub_1000DFAD8();
            swift_beginAccess();
            v253._countAndFlagsBits = v176;
            *&v254[8] = &type metadata for Int;
            *&v254[16] = v177;
            v254[24] = 2;
            v178 = a1[14];
            v179 = swift_isUniquelyReferenced_nonNull_native();
            v180 = a1;
            v181 = v179;
            v252 = v180[14];
            v182 = v252;
            v180[14] = 0x8000000000000000;
            v183 = sub_100771D58(v250, v251);
            v185 = v182[2];
            v186 = (v184 & 1) == 0;
            v48 = __OFADD__(v185, v186);
            v187 = v185 + v186;
            if (v48)
            {
              goto LABEL_157;
            }

            v188 = v184;
            if (v182[3] >= v187)
            {
              if ((v181 & 1) == 0)
              {
                v235 = v183;
                sub_1010050E8();
                v183 = v235;
              }
            }

            else
            {
              sub_100FE65C4(v187, v181);
              v183 = sub_100771D58(v250, v251);
              if ((v188 & 1) != (v189 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v247;
            if ((v188 & 1) == 0)
            {
              a2 = v252;
              v252[(v183 >> 6) + 8] |= 1 << v183;
              v216 = (a2[6] + 16 * v183);
              v217 = v251;
              *v216 = v250;
              v216[1] = v217;
              v218 = (a2[7] + 48 * v183);
              v219 = *&v254[9];
              v220 = *v254;
              *v218 = v253;
              v218[1] = v220;
              *(&v218[1]._object + 1) = v219;
              v221 = a2[2];
              v48 = __OFADD__(v221, 1);
              v222 = v221 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v223 = v183;

            a2 = v252;
            sub_10118B568(&v253, v252[7] + 48 * v223);
          }

          else
          {
            v204 = sub_1000DFA84();
            swift_beginAccess();
            *&v253._countAndFlagsBits = v174;
            *&v254[8] = &type metadata for Double;
            *&v254[16] = v204;
            v254[24] = 3;
            v205 = a1[14];
            v206 = swift_isUniquelyReferenced_nonNull_native();
            v207 = a1;
            v208 = v206;
            v252 = v207[14];
            v209 = v252;
            v207[14] = 0x8000000000000000;
            v183 = sub_100771D58(v250, v251);
            v211 = v209[2];
            v212 = (v210 & 1) == 0;
            v48 = __OFADD__(v211, v212);
            v213 = v211 + v212;
            if (v48)
            {
              goto LABEL_159;
            }

            v214 = v210;
            if (v209[3] >= v213)
            {
              if ((v208 & 1) == 0)
              {
                v236 = v183;
                sub_1010050E8();
                v183 = v236;
              }
            }

            else
            {
              sub_100FE65C4(v213, v208);
              v183 = sub_100771D58(v250, v251);
              if ((v214 & 1) != (v215 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v247;
            if (v214)
            {
              goto LABEL_139;
            }

            a2 = v252;
            v252[(v183 >> 6) + 8] |= 1 << v183;
            v224 = (a2[6] + 16 * v183);
            v225 = v251;
            *v224 = v250;
            v224[1] = v225;
            v226 = (a2[7] + 48 * v183);
            v227 = *&v254[9];
            v228 = *v254;
            *v226 = v253;
            v226[1] = v228;
            *(&v226[1]._object + 1) = v227;
            v229 = a2[2];
            v48 = __OFADD__(v229, 1);
            v222 = v229 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v222;
          }

          v230 = v248;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v249, v230);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v199 = type metadata accessor for Logger();
        sub_1000076D4(v199, qword_10177C6D0);
        v200 = v97;
        v157 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v157, a2))
        {

          sub_101010148(v249, v248);
LABEL_120:

          goto LABEL_143;
        }

        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        *v201 = v244;
        *(v201 + 4) = v200;
        *v202 = v200;
        v203 = v200;
        _os_log_impl(&_mh_execute_header, v157, a2, "Unsupported value type: %@!", v201, 0xCu);
        sub_10000B3A8(v202, &qword_10169BB30, &unk_10138B3C0);
        v13 = v246;

        a1 = v247;

        sub_101010148(v249, v248);
LABEL_143:
        sub_10118B5A0(&v258);
      }

      else
      {
LABEL_21:
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v249];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v249];
          }
        }

        else if (v28)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v249 & 1).super.super.isa;
        }

        else
        {
          isa = v249;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v6 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v258 = v39;
          *&v259[8] = &type metadata for String;
          *&v259[16] = v40;
          v259[24] = 1;
          v41 = a1[14];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v255[0] = a1[14];
          v43 = v255[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v250, v251);
          v46 = *(v43 + 16);
          v47 = (v45 & 1) == 0;
          v48 = __OFADD__(v46, v47);
          v49 = v46 + v47;
          if (v48)
          {
            __break(1u);
            goto LABEL_149;
          }

          v50 = v45;
          if (*(v43 + 24) >= v49)
          {
            if ((v42 & 1) == 0)
            {
              v231 = v44;
              sub_1010050E8();
              v44 = v231;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v250, v251);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v247;
          v13 = v246;
          if (v50)
          {
            v71 = v44;

            a2 = v255[0];
            sub_10118B568(&v258, *(v255[0] + 56) + 48 * v71);
          }

          else
          {
            a2 = v255[0];
            *(v255[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v72 = (a2[6] + 16 * v44);
            v73 = v251;
            *v72 = v250;
            v72[1] = v73;
            v74 = (a2[7] + 48 * v44);
            v75 = *&v259[9];
            v76 = *v259;
            *v74 = v258;
            v74[1] = v76;
            *(&v74[1]._object + 1) = v75;
            v77 = a2[2];
            v48 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (v48)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v78;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v249, v248);
        }

        else
        {
          objc_opt_self();
          v52 = swift_dynamicCastObjCClass();
          if (v52)
          {
            v53 = v52;
            [v52 doubleValue];
            v55 = v54;
            v56 = [v53 integerValue];
            if (v55 == v56)
            {
              v57 = v56;
              v58 = sub_1000DFAD8();
              swift_beginAccess();
              v258._countAndFlagsBits = v57;
              *&v259[8] = &type metadata for Int;
              *&v259[16] = v58;
              v259[24] = 2;
              v59 = a1[14];
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v61 = a1;
              v62 = v60;
              v255[0] = v61[14];
              v63 = v255[0];
              v61[14] = 0x8000000000000000;
              v64 = sub_100771D58(v250, v251);
              v66 = *(v63 + 16);
              v67 = (v65 & 1) == 0;
              v48 = __OFADD__(v66, v67);
              v68 = v66 + v67;
              if (v48)
              {
                goto LABEL_152;
              }

              v69 = v65;
              if (*(v63 + 24) >= v68)
              {
                if ((v62 & 1) == 0)
                {
                  v233 = v64;
                  sub_1010050E8();
                  v64 = v233;
                }
              }

              else
              {
                sub_100FE65C4(v68, v62);
                v64 = sub_100771D58(v250, v251);
                if ((v69 & 1) != (v70 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v247;
              if (v69)
              {
                goto LABEL_77;
              }

              a2 = v255[0];
              *(v255[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v116 = (a2[6] + 16 * v64);
              v117 = v251;
              *v116 = v250;
              v116[1] = v117;
              v118 = (a2[7] + 48 * v64);
              v119 = *&v259[9];
              v120 = *v259;
              *v118 = v258;
              v118[1] = v120;
              *(&v118[1]._object + 1) = v119;
              v121 = a2[2];
              v48 = __OFADD__(v121, 1);
              v122 = v121 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v104 = sub_1000DFA84();
              swift_beginAccess();
              *&v258._countAndFlagsBits = v55;
              *&v259[8] = &type metadata for Double;
              *&v259[16] = v104;
              v259[24] = 3;
              v105 = a1[14];
              v106 = swift_isUniquelyReferenced_nonNull_native();
              v107 = a1;
              v108 = v106;
              v255[0] = v107[14];
              v109 = v255[0];
              v107[14] = 0x8000000000000000;
              v64 = sub_100771D58(v250, v251);
              v111 = *(v109 + 16);
              v112 = (v110 & 1) == 0;
              v48 = __OFADD__(v111, v112);
              v113 = v111 + v112;
              if (v48)
              {
                goto LABEL_155;
              }

              v114 = v110;
              if (*(v109 + 24) >= v113)
              {
                if ((v108 & 1) == 0)
                {
                  v234 = v64;
                  sub_1010050E8();
                  v64 = v234;
                }
              }

              else
              {
                sub_100FE65C4(v113, v108);
                v64 = sub_100771D58(v250, v251);
                if ((v114 & 1) != (v115 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v247;
              if (v114)
              {
LABEL_77:
                v123 = v64;

                a2 = v255[0];
                sub_10118B568(&v258, *(v255[0] + 56) + 48 * v123);
                goto LABEL_80;
              }

              a2 = v255[0];
              *(v255[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v124 = (a2[6] + 16 * v64);
              v125 = v251;
              *v124 = v250;
              v124[1] = v125;
              v126 = (a2[7] + 48 * v64);
              v127 = *&v259[9];
              v128 = *v259;
              *v126 = v258;
              v126[1] = v128;
              *(&v126[1]._object + 1) = v127;
              v129 = a2[2];
              v48 = __OFADD__(v129, 1);
              v122 = v129 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v122;
LABEL_80:
            v130 = v248;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v249, v130);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v91 = type metadata accessor for Logger();
            sub_1000076D4(v91, qword_10177C6D0);
            v92 = v36;
            v93 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v93, a2))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              *v94 = v244;
              *(v94 + 4) = v92;
              *v95 = v92;
              v96 = v92;
              _os_log_impl(&_mh_execute_header, v93, a2, "Unsupported value type: %@!", v94, 0xCu);
              sub_10000B3A8(v95, &qword_10169BB30, &unk_10138B3C0);
              v13 = v246;

              a1 = v247;

              goto LABEL_46;
            }

            sub_101010148(v249, v248);
          }
        }
      }
    }

    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v3 = *&v14[8 * v20];
      ++v17;
      if (v3)
      {
        v17 = v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C6D0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v258._countAndFlagsBits = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000136BC(v6, object, &v258._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v9, v10, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }
}
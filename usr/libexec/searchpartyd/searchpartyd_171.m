void sub_10118138C(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v252 = a7;
  if (qword_101695280 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v14 = *(a1 + 120);
    v15 = *(a1 + 128);
    v16 = sub_10111EACC(v14, v15, qword_10177C6E8);
    v259 = a1;
    if (v16)
    {
      break;
    }

    v250 = v8;
    v247 = a3;
    v248 = a5;
    v22 = sub_1011653DC(a2, a3, a4, a5);
    v24 = v22 + 64;
    v23 = *(v22 + 64);
    v257 = v22;
    v25 = 1 << *(v22 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    a3 = v26 & v23;
    swift_beginAccess();
    a5 = 0;
    a4 = (v25 + 63) >> 6;
    *&v27 = 138412290;
    v249 = v27;
    v28 = a1;
    v255 = v24;
    v254 = a4;
    while (a3)
    {
LABEL_15:
      v30 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
      v31 = (a5 << 10) | (16 * v30);
      v32 = *(v257 + 48) + v31;
      a1 = *v32;
      v15 = *(v32 + 8);
      v33 = *(v257 + 56) + v31;
      v34 = *v33;
      v8 = *(v33 + 8);
      v35 = *(v28 + 112);
      v36 = *(v35 + 16);

      sub_10090C56C(*&v34, v8);
      if (v36)
      {

        v37 = sub_100771D58(a1, v15);
        if (v38)
        {
          sub_1010100EC(*(v35 + 56) + 48 * v37, &v266);

          v251 = v15;
          if (v8 <= 1)
          {
            if (v8)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v39 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v34) & 1).super.super.isa;
            }

            else
            {
              v39 = *&v34;
            }

            v105 = v39;
            goto LABEL_102;
          }

          if (v8 != 2)
          {
            sub_1010100EC(&v266, &v261);
            if (v262[24] != 3)
            {
LABEL_146:

              sub_10118B5A0(&v261);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v266);
              return;
            }

            sub_10000A748(&v261._countAndFlagsBits, v263);
            v106 = v264;
            v107 = sub_1000035D0(v263, v264);
            v258 = *&a1;
            v108 = *(*(v106 - 8) + 64);
            __chkstk_darwin(v107);
            a2 = v243 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v110 + 16))(a2);
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = *&v258;
            v105 = [objc_allocWithZone(NSNumber) initWithDouble:*&v261._countAndFlagsBits + v34];
            sub_100007BAC(v263);
            goto LABEL_102;
          }

          sub_1010100EC(&v266, &v261);
          if (v262[24] != 2)
          {
            goto LABEL_146;
          }

          v256 = 2;
          sub_10000A748(&v261._countAndFlagsBits, v263);
          a2 = v264;
          v88 = v265;
          v89 = sub_1000035D0(v263, v264);
          v253 = v243;
          v90 = *(*(a2 - 8) + 64);
          __chkstk_darwin(v89);
          v246 = v91;
          v92 = v243 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
          v258 = *&v93;
          (v93)[2](v92);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_90;
          }

          v261._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v94 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v94 >= 64)
            {
              v245 = v88;
              v244 = v243;
              __chkstk_darwin(v94);
              v96 = v243 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v97 = *(*(v245 + 32) + 8);
              v98 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(*&v258 + 8))(v96, a2);
              v88 = v245;
              if (v98)
              {
                goto LABEL_164;
              }

              goto LABEL_90;
            }

LABEL_89:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_90;
          }

          LODWORD(v244) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v135 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v244 & 1) == 0)
          {
            if (v135 >= 64)
            {
              goto LABEL_90;
            }

            goto LABEL_89;
          }

          v245 = v88;
          if (v135 <= 64)
          {
            v244 = *(*(v88 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v243[2] = v243;
            v142 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            __chkstk_darwin(AssociatedTypeWitness);
            v243[0] = v243 - v143;
            swift_getAssociatedConformanceWitness();
            v144 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v243[1] = v243;
            __chkstk_darwin(v144);
            v146 = v243 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v147 = *(*(v245 + 32) + 8);
            v148 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(*&v258 + 8))(v146, a2);
            if (v148)
            {
              goto LABEL_164;
            }

            v88 = v245;
            goto LABEL_89;
          }

          v244 = v243;
          __chkstk_darwin(v135);
          v137 = v243 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v138 = *(*(v245 + 32) + 8);
          v139 = dispatch thunk of static Comparable.< infix(_:_:)();
          v140 = v137;
          v88 = v245;
          (*(*&v258 + 8))(v140, a2);
          if (v139)
          {
            goto LABEL_164;
          }

LABEL_90:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_100:
            v158 = dispatch thunk of BinaryInteger._lowWord.getter();
            (*(*&v258 + 8))(v92, a2);
            v56 = __OFADD__(v158, *&v34);
            v159 = v158 + *&v34;
            if (v56)
            {
              goto LABEL_155;
            }

            v105 = [objc_allocWithZone(NSNumber) initWithLongLong:v159];
            sub_100007BAC(v263);
            v8 = v256;
LABEL_102:
            objc_opt_self();
            v160 = swift_dynamicCastObjCClass();
            if (v160)
            {
              v161 = v160;
              v258 = v34;
              v162 = v8;
              v163 = v105;
              v164 = String.init(_:)(v161);
              v165 = sub_1000DF96C();
              v166 = a1;
              v167 = v259;
              v168 = v165;
              swift_beginAccess();
              v261 = v164;
              *&v262[8] = &type metadata for String;
              *&v262[16] = v168;
              v262[24] = 1;
              v169 = *(v167 + 112);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v260 = *(v167 + 112);
              v171 = v260;
              *(v167 + 112) = 0x8000000000000000;
              a1 = v166;
              v172 = v166;
              v173 = v251;
              v174 = sub_100771D58(v172, v251);
              v176 = v171[2];
              v177 = (v175 & 1) == 0;
              v56 = __OFADD__(v176, v177);
              v178 = v176 + v177;
              if (v56)
              {
                goto LABEL_152;
              }

              a2 = v175;
              if (v171[3] >= v178)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_114;
                }

                v232 = v174;
                sub_1010050E8();
                v174 = v232;
                v8 = v162;
                if ((a2 & 1) == 0)
                {
                  goto LABEL_140;
                }

LABEL_115:
                v199 = v174;

                v200 = v260;
                sub_10118B568(&v261, v260[7] + 48 * v199);
              }

              else
              {
                sub_100FE65C4(v178, isUniquelyReferenced_nonNull_native);
                v174 = sub_100771D58(a1, v173);
                if ((a2 & 1) != (v179 & 1))
                {
                  goto LABEL_165;
                }

LABEL_114:
                v8 = v162;
                if (a2)
                {
                  goto LABEL_115;
                }

LABEL_140:
                v200 = v260;
                v260[(v174 >> 6) + 8] |= 1 << v174;
                v233 = (v200[6] + 16 * v174);
                *v233 = a1;
                v233[1] = v173;
                v234 = (v200[7] + 48 * v174);
                v235 = *&v262[9];
                v236 = *v262;
                *v234 = v261;
                v234[1] = v236;
                *(&v234[1]._object + 1) = v235;
                v237 = v200[2];
                v56 = __OFADD__(v237, 1);
                v238 = v237 + 1;
                if (v56)
                {
                  goto LABEL_154;
                }

                v200[2] = v238;
              }

              v24 = v255;
              a4 = v254;
              *(v259 + 112) = v200;
              swift_endAccess();
              sub_101010148(*&v258, v8);

LABEL_143:
              sub_10118B5A0(&v266);
              goto LABEL_144;
            }

            objc_opt_self();
            v180 = swift_dynamicCastObjCClass();
            if (!v180)
            {

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v201 = type metadata accessor for Logger();
              sub_1000076D4(v201, qword_10177C6D0);
              v202 = v105;
              v203 = Logger.logObject.getter();
              v204 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v203, v204))
              {
                a1 = *&v34;
                v205 = swift_slowAlloc();
                a2 = swift_slowAlloc();
                *v205 = v249;
                *(v205 + 4) = v202;
                *a2 = v202;
                v206 = v202;
                _os_log_impl(&_mh_execute_header, v203, v204, "Unsupported value type: %@!", v205, 0xCu);
                sub_10000B3A8(a2, &qword_10169BB30, &unk_10138B3C0);

                sub_101010148(a1, v8);
              }

              else
              {

                sub_101010148(*&v34, v8);
              }

              v24 = v255;
              a4 = v254;
              goto LABEL_143;
            }

            v258 = *&a1;
            v256 = v8;
            v181 = v180;
            [v180 doubleValue];
            v183 = v182;
            v184 = [v181 integerValue];
            v185 = v251;
            if (v183 == v184)
            {
              v186 = v184;
              v187 = sub_1000DFAD8();
              v188 = v259;
              swift_beginAccess();
              v261._countAndFlagsBits = v186;
              *&v262[8] = &type metadata for Int;
              *&v262[16] = v187;
              v262[24] = 2;
              v189 = *(v188 + 112);
              v190 = swift_isUniquelyReferenced_nonNull_native();
              v260 = *(v188 + 112);
              v191 = v260;
              *(v188 + 112) = 0x8000000000000000;
              a1 = *&v258;
              v192 = sub_100771D58(*&v258, v185);
              v194 = v191[2];
              v195 = (v193 & 1) == 0;
              v56 = __OFADD__(v194, v195);
              v196 = v194 + v195;
              if (v56)
              {
                goto LABEL_158;
              }

              v197 = v193;
              if (v191[3] >= v196)
              {
                if ((v190 & 1) == 0)
                {
                  v241 = v192;
                  sub_1010050E8();
                  v192 = v241;
                }
              }

              else
              {
                sub_100FE65C4(v196, v190);
                v192 = sub_100771D58(a1, v185);
                if ((v197 & 1) != (v198 & 1))
                {
                  goto LABEL_165;
                }
              }

              v8 = v256;
              if ((v197 & 1) == 0)
              {
                v218 = v260;
                v260[(v192 >> 6) + 8] |= 1 << v192;
                v219 = (v218[6] + 16 * v192);
                *v219 = a1;
                v219[1] = v185;
                v220 = (v218[7] + 48 * v192);
                v221 = *&v262[9];
                v222 = *v262;
                *v220 = v261;
                v220[1] = v222;
                *(&v220[1]._object + 1) = v221;
                v223 = v218[2];
                v56 = __OFADD__(v223, 1);
                v224 = v223 + 1;
                if (v56)
                {
                  goto LABEL_162;
                }

                goto LABEL_137;
              }

LABEL_135:
              a2 = *&v34;
              v225 = v192;

              v218 = v260;
              sub_10118B568(&v261, v260[7] + 48 * v225);
            }

            else
            {
              v207 = sub_1000DFA84();
              v208 = v259;
              swift_beginAccess();
              *&v261._countAndFlagsBits = v183;
              *&v262[8] = &type metadata for Double;
              *&v262[16] = v207;
              v262[24] = 3;
              v209 = *(v208 + 112);
              v210 = swift_isUniquelyReferenced_nonNull_native();
              v260 = *(v208 + 112);
              v211 = v260;
              *(v208 + 112) = 0x8000000000000000;
              a1 = *&v258;
              v192 = sub_100771D58(*&v258, v185);
              v213 = v211[2];
              v214 = (v212 & 1) == 0;
              v56 = __OFADD__(v213, v214);
              v215 = v213 + v214;
              if (v56)
              {
                goto LABEL_160;
              }

              v216 = v212;
              if (v211[3] >= v215)
              {
                if ((v210 & 1) == 0)
                {
                  v242 = v192;
                  sub_1010050E8();
                  v192 = v242;
                }
              }

              else
              {
                sub_100FE65C4(v215, v210);
                v192 = sub_100771D58(a1, v185);
                if ((v216 & 1) != (v217 & 1))
                {
                  goto LABEL_165;
                }
              }

              v8 = v256;
              if (v216)
              {
                goto LABEL_135;
              }

              v218 = v260;
              v260[(v192 >> 6) + 8] |= 1 << v192;
              v226 = (v218[6] + 16 * v192);
              *v226 = a1;
              v226[1] = v185;
              v227 = (v218[7] + 48 * v192);
              v228 = *&v262[9];
              v229 = *v262;
              *v227 = v261;
              v227[1] = v229;
              *(&v227[1]._object + 1) = v228;
              v230 = v218[2];
              v56 = __OFADD__(v230, 1);
              v224 = v230 + 1;
              if (v56)
              {
                goto LABEL_163;
              }

LABEL_137:
              a2 = *&v34;
              v218[2] = v224;
            }

            v24 = v255;
            a4 = v254;
            *(v259 + 112) = v218;
            swift_endAccess();

            sub_101010148(a2, v8);
            goto LABEL_143;
          }

          v261._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v149 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v150 = v88;
          v151 = v149;
          v152 = v150;
          v153 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v151)
          {
            if (v153 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v153 >= 64)
          {
LABEL_93:
            v244 = v243;
            __chkstk_darwin(v153);
            v155 = v243 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v156 = *(*(v152 + 32) + 8);
            v157 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(*&v258 + 8))(v155, a2);
            if (v157)
            {
              goto LABEL_161;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_100;
        }
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v34];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v34];
        }
      }

      else if (v8)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v34) & 1).super.super.isa;
      }

      else
      {
        isa = *&v34;
      }

      v41 = isa;
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v43 = v42;
        v258 = v34;
        v256 = v8;
        v253 = v41;
        v44 = String.init(_:)(v43);
        v45 = sub_1000DF96C();
        v14 = a1;
        v46 = v259;
        v47 = v45;
        swift_beginAccess();
        v266 = v44;
        *&v267[8] = &type metadata for String;
        *&v267[16] = v47;
        v267[24] = 1;
        v48 = *(v46 + 112);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v263[0] = *(v46 + 112);
        v50 = v263[0];
        *(v46 + 112) = 0x8000000000000000;
        v51 = v14;
        a1 = v15;
        v52 = sub_100771D58(v14, v15);
        v54 = *(v50 + 16);
        v55 = (v53 & 1) == 0;
        v56 = __OFADD__(v54, v55);
        v57 = v54 + v55;
        if (v56)
        {
          __break(1u);
          goto LABEL_150;
        }

        a2 = v53;
        if (*(v50 + 24) >= v57)
        {
          if ((v49 & 1) == 0)
          {
            v231 = v52;
            sub_1010050E8();
            v52 = v231;
          }
        }

        else
        {
          sub_100FE65C4(v57, v49);
          v52 = sub_100771D58(v14, v15);
          if ((a2 & 1) != (v58 & 1))
          {
            goto LABEL_165;
          }
        }

        v28 = v259;
        v8 = v256;
        if (a2)
        {
          v79 = v52;

          v80 = v263[0];
          sub_10118B568(&v266, *(v263[0] + 56) + 48 * v79);
        }

        else
        {
          v80 = v263[0];
          *(v263[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
          v81 = (v80[6] + 16 * v52);
          *v81 = v51;
          v81[1] = v15;
          v82 = (v80[7] + 48 * v52);
          v83 = *&v267[9];
          v84 = *v267;
          *v82 = v266;
          v82[1] = v84;
          *(&v82[1]._object + 1) = v83;
          v85 = v80[2];
          v56 = __OFADD__(v85, 1);
          v86 = v85 + 1;
          if (v56)
          {
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
            __break(1u);
LABEL_165:

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v80[2] = v86;
        }

        *(v28 + 112) = v80;
        swift_endAccess();
        v87 = v253;

        sub_101010148(*&v258, v8);
        v24 = v255;
        a4 = v254;
      }

      else
      {
        objc_opt_self();
        v59 = swift_dynamicCastObjCClass();
        if (v59)
        {
          v258 = v34;
          v60 = a1;
          v256 = v8;
          v61 = v59;
          [v59 doubleValue];
          v63 = v62;
          v64 = [v61 integerValue];
          if (v63 == v64)
          {
            v65 = v64;
            v66 = sub_1000DFAD8();
            v67 = v259;
            swift_beginAccess();
            v266._countAndFlagsBits = v65;
            *&v267[8] = &type metadata for Int;
            *&v267[16] = v66;
            v267[24] = 2;
            v68 = *(v67 + 112);
            v69 = swift_isUniquelyReferenced_nonNull_native();
            v263[0] = *(v67 + 112);
            v70 = v263[0];
            *(v67 + 112) = 0x8000000000000000;
            a1 = v60;
            v71 = sub_100771D58(v60, v15);
            v73 = *(v70 + 16);
            v74 = (v72 & 1) == 0;
            v56 = __OFADD__(v73, v74);
            v75 = v73 + v74;
            if (v56)
            {
              goto LABEL_153;
            }

            v76 = v72;
            v77 = *&v258;
            if (*(v70 + 24) >= v75)
            {
              if ((v69 & 1) == 0)
              {
                v239 = v71;
                sub_1010050E8();
                v71 = v239;
              }
            }

            else
            {
              sub_100FE65C4(v75, v69);
              v71 = sub_100771D58(a1, v15);
              if ((v76 & 1) != (v78 & 1))
              {
                goto LABEL_165;
              }
            }

            v8 = v259;
            if (v76)
            {
              goto LABEL_77;
            }

            v122 = v263[0];
            *(v263[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
            v123 = (v122[6] + 16 * v71);
            *v123 = a1;
            v123[1] = v15;
            v124 = (v122[7] + 48 * v71);
            v125 = *&v267[9];
            v126 = *v267;
            *v124 = v266;
            v124[1] = v126;
            *(&v124[1]._object + 1) = v125;
            v127 = v122[2];
            v56 = __OFADD__(v127, 1);
            v128 = v127 + 1;
            if (v56)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v111 = sub_1000DFA84();
            v112 = v259;
            swift_beginAccess();
            *&v266._countAndFlagsBits = v63;
            *&v267[8] = &type metadata for Double;
            *&v267[16] = v111;
            v267[24] = 3;
            v113 = *(v112 + 112);
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v263[0] = *(v112 + 112);
            v115 = v263[0];
            *(v112 + 112) = 0x8000000000000000;
            a1 = v60;
            v71 = sub_100771D58(v60, v15);
            v117 = *(v115 + 16);
            v118 = (v116 & 1) == 0;
            v56 = __OFADD__(v117, v118);
            v119 = v117 + v118;
            if (v56)
            {
              goto LABEL_156;
            }

            v120 = v116;
            v77 = *&v258;
            if (*(v115 + 24) >= v119)
            {
              if ((v114 & 1) == 0)
              {
                v240 = v71;
                sub_1010050E8();
                v71 = v240;
              }
            }

            else
            {
              sub_100FE65C4(v119, v114);
              v71 = sub_100771D58(a1, v15);
              if ((v120 & 1) != (v121 & 1))
              {
                goto LABEL_165;
              }
            }

            v8 = v259;
            if (v120)
            {
LABEL_77:
              a2 = v77;
              v129 = v71;

              v122 = v263[0];
              sub_10118B568(&v266, *(v263[0] + 56) + 48 * v129);
              goto LABEL_80;
            }

            v122 = v263[0];
            *(v263[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
            v130 = (v122[6] + 16 * v71);
            *v130 = a1;
            v130[1] = v15;
            v131 = (v122[7] + 48 * v71);
            v132 = *&v267[9];
            v133 = *v267;
            *v131 = v266;
            v131[1] = v133;
            *(&v131[1]._object + 1) = v132;
            v134 = v122[2];
            v56 = __OFADD__(v134, 1);
            v128 = v134 + 1;
            if (v56)
            {
              goto LABEL_159;
            }
          }

          a2 = v77;
          v122[2] = v128;
LABEL_80:
          v24 = v255;
          a4 = v254;
          *(v8 + 112) = v122;
          swift_endAccess();

          v28 = v8;
          sub_101010148(a2, v256);
        }

        else
        {

          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v99 = type metadata accessor for Logger();
          sub_1000076D4(v99, qword_10177C6D0);
          v100 = v41;
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v101, v102))
          {
            a1 = *&v34;
            v103 = swift_slowAlloc();
            a2 = swift_slowAlloc();
            *v103 = v249;
            *(v103 + 4) = v100;
            *a2 = v100;
            v104 = v100;
            _os_log_impl(&_mh_execute_header, v101, v102, "Unsupported value type: %@!", v103, 0xCu);
            sub_10000B3A8(a2, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(a1, v8);
          }

          else
          {

            sub_101010148(*&v34, v8);
          }

          v24 = v255;
          a4 = v254;
LABEL_144:
          v28 = v259;
        }
      }
    }

    while (1)
    {
      v29 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v29 >= a4)
      {

        return;
      }

      a3 = *(v24 + 8 * v29);
      ++a5;
      if (a3)
      {
        a5 = v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_148:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_150:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C6D0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v266._countAndFlagsBits = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(v14, v15, &v266._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v18, v19, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v20, 0xCu);
    sub_100007BAC(v21);
  }
}

void sub_101182DDC(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (qword_101695280 != -1)
  {
    goto LABEL_152;
  }

  while (1)
  {
    v12 = a1[15];
    v13 = a1[16];
    if (sub_10111EACC(v12, v13, qword_10177C6E8))
    {
      break;
    }

    v261 = v6;
    v257 = a2;
    v258 = a3;
    v259 = a5;
    v19 = sub_1011665B8(a2, a3, a4, a5);
    a2 = (v19 + 8);
    v20 = v19[8];
    v266 = v19;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    a3 = v22 & v20;
    swift_beginAccess();
    a5 = 0;
    v23 = (v21 + 63) >> 6;
    *&v24 = 138412290;
    v260 = v24;
    v265 = a1;
    v263 = v23;
    v264 = a2;
    while (a3)
    {
LABEL_15:
      v26 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
      v27 = (a5 << 10) | (16 * v26);
      v28 = v266[7];
      v29 = v266[6] + v27;
      v30 = *(v29 + 8);
      v267 = *v29;
      v31 = v28 + v27;
      v32 = *v31;
      v6 = *(v31 + 8);
      v33 = a1[14];
      v34 = *(v33 + 16);
      v268 = v30;

      sub_10090C56C(*&v32, v6);
      if (v34)
      {

        v35 = sub_100771D58(*&v267, v268);
        if ((v36 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v33 + 56) + 48 * v35, &v275);

        if (v6 <= 1)
        {
          if (v6)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v37 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v32) & 1).super.super.isa;
          }

          else
          {
            v37 = *&v32;
          }

          v104 = v37;
          goto LABEL_105;
        }

        if (v6 != 2)
        {
          sub_1010100EC(&v275, &v270);
          if (v271[24] != 3)
          {
LABEL_150:

            sub_10118B5A0(&v270);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v275);
            return;
          }

          sub_10000A748(&v270._countAndFlagsBits, v272);
          v105 = v273;
          v106 = sub_1000035D0(v272, v273);
          v107 = *(*(v105 - 8) + 64);
          __chkstk_darwin(v106);
          (*(v109 + 16))(v251 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          a1 = v265;
          BinaryFloatingPoint.init<A>(_:)();
          v104 = [objc_allocWithZone(NSNumber) initWithDouble:*&v270._countAndFlagsBits + v32];
          sub_100007BAC(v272);
          goto LABEL_105;
        }

        sub_1010100EC(&v275, &v270);
        if (v271[24] != 2)
        {
          goto LABEL_150;
        }

        v262 = 2;
        sub_10000A748(&v270._countAndFlagsBits, v272);
        v86 = v273;
        v85 = v274;
        v87 = sub_1000035D0(v272, v273);
        v88 = *(*(v86 - 8) + 64);
        __chkstk_darwin(v87);
        v255 = v89;
        v90 = v251 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
        v256 = v91;
        (*(v91 + 16))(v90);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v270._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v92 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v92 < 64)
            {
              goto LABEL_91;
            }

            v253 = v85;
            v254 = v251;
            __chkstk_darwin(v92);
            v94 = v251 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v95 = *(*(v253 + 32) + 8);
            v96 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v256 + 8))(v94, v86);
            v85 = v253;
            if (v96)
            {
              goto LABEL_168;
            }
          }

          else
          {
            LODWORD(v254) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v138 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v254)
            {
              v253 = v85;
              if (v138 <= 64)
              {
                v254 = *(*(v85 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v252 = v251;
                v145 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v251[0] = v251 - v146;
                swift_getAssociatedConformanceWitness();
                v147 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v251[1] = v251;
                __chkstk_darwin(v147);
                v149 = v251 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v150 = *(*(v253 + 32) + 8);
                v151 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v256 + 8))(v149, v86);
                if (v151)
                {
                  goto LABEL_168;
                }

                v85 = v253;
LABEL_91:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_92;
              }

              v254 = v251;
              __chkstk_darwin(v138);
              v140 = v251 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v141 = *(*(v253 + 32) + 8);
              v142 = dispatch thunk of static Comparable.< infix(_:_:)();
              v143 = v140;
              v85 = v253;
              (*(v256 + 8))(v143, v86);
              if (v142)
              {
                goto LABEL_168;
              }
            }

            else if (v138 < 64)
            {
              goto LABEL_91;
            }
          }
        }

LABEL_92:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v254 = v251;
          v270._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v152 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v153 = v85;
          v154 = v152;
          v155 = v153;
          v156 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v154)
          {
            if (v156 > 64)
            {
              v252 = v251;
              __chkstk_darwin(v156);
              v255 = v251 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v158 = *(*(v155 + 32) + 8);
              v159 = v255;
              v160 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v256 + 8))(v159, v86);
              goto LABEL_102;
            }
          }

          else if (v156 >= 64)
          {
            v252 = v251;
            __chkstk_darwin(v156);
            v162 = v251 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v163 = *(*(v155 + 32) + 8);
            v160 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v256 + 8))(v162, v86);
LABEL_102:
            if (v160)
            {
              goto LABEL_165;
            }

            goto LABEL_103;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_103:
        v164 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v256 + 8))(v90, v86);
        v53 = __OFADD__(v164, *&v32);
        v165 = v164 + *&v32;
        if (v53)
        {
          goto LABEL_159;
        }

        v104 = [objc_allocWithZone(NSNumber) initWithLongLong:v165];
        sub_100007BAC(v272);
        a1 = v265;
        v6 = v262;
LABEL_105:
        objc_opt_self();
        v166 = swift_dynamicCastObjCClass();
        if (v166)
        {
          v167 = v166;
          v168 = v32;
          v169 = v6;
          v170 = v104;
          v171 = String.init(_:)(v167);
          v172 = sub_1000DF96C();
          swift_beginAccess();
          v270 = v171;
          *&v271[8] = &type metadata for String;
          *&v271[16] = v172;
          v271[24] = 1;
          v173 = a1[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v269 = a1[14];
          v175 = v269;
          a1[14] = 0x8000000000000000;
          v176 = *&v267;
          v177 = sub_100771D58(*&v267, v268);
          v179 = v175[2];
          v180 = (v178 & 1) == 0;
          v53 = __OFADD__(v179, v180);
          v181 = v179 + v180;
          if (v53)
          {
            goto LABEL_156;
          }

          v182 = v178;
          if (v175[3] >= v181)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v246 = v177;
              sub_1010050E8();
              v177 = v246;
            }
          }

          else
          {
            sub_100FE65C4(v181, isUniquelyReferenced_nonNull_native);
            v177 = sub_100771D58(v176, v268);
            if ((v182 & 1) != (v183 & 1))
            {
              goto LABEL_169;
            }
          }

          v6 = v169;
          v203 = v168;
          if (v182)
          {
            v204 = v177;

            a4 = v269;
            sub_10118B568(&v270, v269[7] + 48 * v204);
            a1 = v265;
            v23 = v263;
            a2 = v264;
          }

          else
          {
            a4 = v269;
            v269[(v177 >> 6) + 8] |= 1 << v177;
            v205 = (a4[6] + 16 * v177);
            v206 = v268;
            *v205 = v176;
            v205[1] = v206;
            v207 = (a4[7] + 48 * v177);
            v208 = *&v271[9];
            v209 = *v271;
            *v207 = v270;
            v207[1] = v209;
            *(&v207[1]._object + 1) = v208;
            v210 = a4[2];
            v53 = __OFADD__(v210, 1);
            v211 = v210 + 1;
            a2 = v264;
            if (v53)
            {
              goto LABEL_158;
            }

            a4[2] = v211;
            a1 = v265;
            v23 = v263;
          }

          a1[14] = a4;
          swift_endAccess();
          sub_101010148(*&v203, v6);

          goto LABEL_123;
        }

        objc_opt_self();
        v184 = swift_dynamicCastObjCClass();
        if (v184)
        {
          v262 = v6;
          v185 = v184;
          [v184 doubleValue];
          v187 = v186;
          v188 = [v185 integerValue];
          a2 = v264;
          if (v187 == v188)
          {
            v189 = v188;
            v190 = a1;
            v191 = sub_1000DFAD8();
            swift_beginAccess();
            v270._countAndFlagsBits = v189;
            *&v271[8] = &type metadata for Int;
            *&v271[16] = v191;
            v271[24] = 2;
            v192 = v190[14];
            v193 = swift_isUniquelyReferenced_nonNull_native();
            v269 = v190[14];
            v194 = v269;
            v190[14] = 0x8000000000000000;
            v195 = *&v267;
            v196 = sub_100771D58(*&v267, v268);
            v198 = v194[2];
            v199 = (v197 & 1) == 0;
            v53 = __OFADD__(v198, v199);
            v200 = v198 + v199;
            if (v53)
            {
              goto LABEL_162;
            }

            v201 = v197;
            if (v194[3] >= v200)
            {
              if ((v193 & 1) == 0)
              {
                v249 = v196;
                sub_1010050E8();
                v196 = v249;
              }
            }

            else
            {
              sub_100FE65C4(v200, v193);
              v196 = sub_100771D58(v195, v268);
              if ((v201 & 1) != (v202 & 1))
              {
                goto LABEL_169;
              }
            }

            v6 = v262;
            if (v201)
            {
              v228 = v196;

              a4 = v269;
              sub_10118B568(&v270, v269[7] + 48 * v228);
            }

            else
            {
              a4 = v269;
              v269[(v196 >> 6) + 8] |= 1 << v196;
              v229 = (a4[6] + 16 * v196);
              v230 = v268;
              *v229 = v195;
              v229[1] = v230;
              v231 = (a4[7] + 48 * v196);
              v232 = *&v271[9];
              v233 = *v271;
              *v231 = v270;
              v231[1] = v233;
              *(&v231[1]._object + 1) = v232;
              v234 = a4[2];
              v53 = __OFADD__(v234, 1);
              v235 = v234 + 1;
              if (v53)
              {
                goto LABEL_166;
              }

              a4[2] = v235;
            }

            a1 = v265;
            v23 = v263;
          }

          else
          {
            v217 = sub_1000DFA84();
            swift_beginAccess();
            *&v270._countAndFlagsBits = v187;
            *&v271[8] = &type metadata for Double;
            *&v271[16] = v217;
            v271[24] = 3;
            v218 = a1[14];
            v219 = swift_isUniquelyReferenced_nonNull_native();
            v269 = a1[14];
            v220 = v269;
            a1[14] = 0x8000000000000000;
            v221 = sub_100771D58(*&v267, v268);
            v223 = v220[2];
            v224 = (v222 & 1) == 0;
            v53 = __OFADD__(v223, v224);
            v225 = v223 + v224;
            if (v53)
            {
              goto LABEL_164;
            }

            v226 = v222;
            if (v220[3] >= v225)
            {
              if ((v219 & 1) == 0)
              {
                v250 = v221;
                sub_1010050E8();
                v221 = v250;
              }
            }

            else
            {
              sub_100FE65C4(v225, v219);
              v221 = sub_100771D58(*&v267, v268);
              if ((v226 & 1) != (v227 & 1))
              {
                goto LABEL_169;
              }
            }

            v6 = v262;
            if (v226)
            {
              v236 = v221;

              a4 = v269;
              v237 = v269[7] + 48 * v236;
              v23 = v263;
              sub_10118B568(&v270, v237);
            }

            else
            {
              a4 = v269;
              v269[(v221 >> 6) + 8] |= 1 << v221;
              v238 = (a4[6] + 16 * v221);
              v239 = v268;
              *v238 = v267;
              *(v238 + 1) = v239;
              v240 = (a4[7] + 48 * v221);
              v241 = *&v271[9];
              v242 = *v271;
              *v240 = v270;
              v240[1] = v242;
              *(&v240[1]._object + 1) = v241;
              v243 = a4[2];
              v53 = __OFADD__(v243, 1);
              v244 = v243 + 1;
              if (v53)
              {
                goto LABEL_167;
              }

              a4[2] = v244;
            }

            a1 = v265;
          }

          a1[14] = a4;
          swift_endAccess();

          sub_101010148(*&v32, v6);
        }

        else
        {
          v267 = v32;

          a2 = v264;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v212 = type metadata accessor for Logger();
          sub_1000076D4(v212, qword_10177C6D0);
          v213 = v104;
          v170 = Logger.logObject.getter();
          a4 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v170, a4))
          {

            sub_101010148(*&v267, v6);
LABEL_123:

            goto LABEL_148;
          }

          v214 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          *v214 = v260;
          *(v214 + 4) = v213;
          *v215 = v213;
          v216 = v213;
          _os_log_impl(&_mh_execute_header, v170, a4, "Unsupported value type: %@!", v214, 0xCu);
          sub_10000B3A8(v215, &qword_10169BB30, &unk_10138B3C0);
          a1 = v265;

          v23 = v263;

          sub_101010148(*&v267, v6);
        }

LABEL_148:
        sub_10118B5A0(&v275);
      }

      else
      {
LABEL_21:
        if (v6 > 1)
        {
          if (v6 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v32];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:v32];
          }
        }

        else if (v6)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v32) & 1).super.super.isa;
        }

        else
        {
          isa = *&v32;
        }

        v39 = isa;
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = v40;
          v42 = v32;
          v13 = v6;
          v12 = v39;
          v43 = String.init(_:)(v41);
          v44 = sub_1000DF96C();
          swift_beginAccess();
          v275 = v43;
          *&v276[8] = &type metadata for String;
          *&v276[16] = v44;
          v276[24] = 1;
          v45 = a1[14];
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v272[0] = a1[14];
          v47 = v272[0];
          a1[14] = 0x8000000000000000;
          v48 = *&v267;
          v49 = sub_100771D58(*&v267, v268);
          v51 = *(v47 + 16);
          v52 = (v50 & 1) == 0;
          v53 = __OFADD__(v51, v52);
          v54 = v51 + v52;
          if (v53)
          {
            __break(1u);
            goto LABEL_154;
          }

          v55 = v50;
          if (*(v47 + 24) >= v54)
          {
            if ((v46 & 1) == 0)
            {
              v245 = v49;
              sub_1010050E8();
              v49 = v245;
            }
          }

          else
          {
            sub_100FE65C4(v54, v46);
            v49 = sub_100771D58(v48, v268);
            if ((v55 & 1) != (v56 & 1))
            {
              goto LABEL_169;
            }
          }

          v6 = v13;
          v76 = v42;
          if (v55)
          {
            v77 = v49;

            a4 = v272[0];
            sub_10118B568(&v275, *(v272[0] + 56) + 48 * v77);
            a2 = v264;
          }

          else
          {
            a4 = v272[0];
            *(v272[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
            v78 = (a4[6] + 16 * v49);
            v79 = v268;
            *v78 = v48;
            v78[1] = v79;
            v80 = (a4[7] + 48 * v49);
            v81 = *&v276[9];
            v82 = *v276;
            *v80 = v275;
            v80[1] = v82;
            *(&v80[1]._object + 1) = v81;
            v83 = a4[2];
            v53 = __OFADD__(v83, 1);
            v84 = v83 + 1;
            a2 = v264;
            if (v53)
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

            a4[2] = v84;
          }

          a1 = v265;
          v265[14] = a4;
          swift_endAccess();

          sub_101010148(*&v76, v6);
          v23 = v263;
        }

        else
        {
          objc_opt_self();
          v57 = swift_dynamicCastObjCClass();
          if (v57)
          {
            v262 = v6;
            v58 = v57;
            [v57 doubleValue];
            v60 = v59;
            v61 = [v58 integerValue];
            a2 = v264;
            if (v60 == v61)
            {
              v62 = v61;
              v63 = a1;
              v64 = sub_1000DFAD8();
              swift_beginAccess();
              v275._countAndFlagsBits = v62;
              *&v276[8] = &type metadata for Int;
              *&v276[16] = v64;
              v276[24] = 2;
              v65 = v63[14];
              v66 = swift_isUniquelyReferenced_nonNull_native();
              v272[0] = v63[14];
              v67 = v272[0];
              v63[14] = 0x8000000000000000;
              v68 = *&v267;
              v69 = sub_100771D58(*&v267, v268);
              v71 = *(v67 + 16);
              v72 = (v70 & 1) == 0;
              v53 = __OFADD__(v71, v72);
              v73 = v71 + v72;
              if (v53)
              {
                goto LABEL_157;
              }

              v74 = v70;
              if (*(v67 + 24) >= v73)
              {
                if ((v66 & 1) == 0)
                {
                  v247 = v69;
                  sub_1010050E8();
                  v69 = v247;
                }
              }

              else
              {
                sub_100FE65C4(v73, v66);
                v69 = sub_100771D58(v68, v268);
                if ((v74 & 1) != (v75 & 1))
                {
                  goto LABEL_169;
                }
              }

              v6 = v262;
              if (v74)
              {
                v121 = v69;

                a4 = v272[0];
                sub_10118B568(&v275, *(v272[0] + 56) + 48 * v121);
              }

              else
              {
                a4 = v272[0];
                *(v272[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
                v122 = (a4[6] + 16 * v69);
                v123 = v268;
                *v122 = v68;
                v122[1] = v123;
                v124 = (a4[7] + 48 * v69);
                v125 = *&v276[9];
                v126 = *v276;
                *v124 = v275;
                v124[1] = v126;
                *(&v124[1]._object + 1) = v125;
                v127 = a4[2];
                v53 = __OFADD__(v127, 1);
                v128 = v127 + 1;
                if (v53)
                {
                  goto LABEL_161;
                }

                a4[2] = v128;
              }

              a1 = v265;
              v23 = v263;
            }

            else
            {
              v110 = sub_1000DFA84();
              swift_beginAccess();
              *&v275._countAndFlagsBits = v60;
              *&v276[8] = &type metadata for Double;
              *&v276[16] = v110;
              v276[24] = 3;
              v111 = a1[14];
              v112 = swift_isUniquelyReferenced_nonNull_native();
              v272[0] = a1[14];
              v113 = v272[0];
              a1[14] = 0x8000000000000000;
              v114 = sub_100771D58(*&v267, v268);
              v116 = *(v113 + 16);
              v117 = (v115 & 1) == 0;
              v53 = __OFADD__(v116, v117);
              v118 = v116 + v117;
              if (v53)
              {
                goto LABEL_160;
              }

              v119 = v115;
              if (*(v113 + 24) >= v118)
              {
                if ((v112 & 1) == 0)
                {
                  v248 = v114;
                  sub_1010050E8();
                  v114 = v248;
                }
              }

              else
              {
                sub_100FE65C4(v118, v112);
                v114 = sub_100771D58(*&v267, v268);
                if ((v119 & 1) != (v120 & 1))
                {
                  goto LABEL_169;
                }
              }

              v6 = v262;
              if (v119)
              {
                v129 = v114;

                a4 = v272[0];
                v130 = *(v272[0] + 56) + 48 * v129;
                v23 = v263;
                sub_10118B568(&v275, v130);
              }

              else
              {
                a4 = v272[0];
                *(v272[0] + 8 * (v114 >> 6) + 64) |= 1 << v114;
                v131 = (a4[6] + 16 * v114);
                v132 = v268;
                *v131 = v267;
                *(v131 + 1) = v132;
                v133 = (a4[7] + 48 * v114);
                v134 = *&v276[9];
                v135 = *v276;
                *v133 = v275;
                v133[1] = v135;
                *(&v133[1]._object + 1) = v134;
                v136 = a4[2];
                v53 = __OFADD__(v136, 1);
                v137 = v136 + 1;
                if (v53)
                {
                  goto LABEL_163;
                }

                a4[2] = v137;
              }

              a1 = v265;
            }

            a1[14] = a4;
            swift_endAccess();

            v103 = v32;
LABEL_82:
            sub_101010148(*&v103, v6);
          }

          else
          {
            v267 = v32;

            a2 = v264;
            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v97 = type metadata accessor for Logger();
            sub_1000076D4(v97, qword_10177C6D0);
            v98 = v39;
            v99 = Logger.logObject.getter();
            a4 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v99, a4))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              *v100 = v260;
              *(v100 + 4) = v98;
              *v101 = v98;
              v102 = v98;
              _os_log_impl(&_mh_execute_header, v99, a4, "Unsupported value type: %@!", v100, 0xCu);
              sub_10000B3A8(v101, &qword_10169BB30, &unk_10138B3C0);
              a1 = v265;

              v23 = v263;

              v103 = v267;
              goto LABEL_82;
            }

            sub_101010148(*&v267, v6);
          }
        }
      }
    }

    while (1)
    {
      v25 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        return;
      }

      a3 = *(a2 + 8 * v25);
      ++a5;
      if (a3)
      {
        a5 = v25;
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

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C6D0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v275._countAndFlagsBits = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000136BC(v12, v13, &v275._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v15, v16, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v17, 0xCu);
    sub_100007BAC(v18);
  }
}

void sub_10118498C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int64_t a6)
{
  v7 = v6;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v11 = a1[15];
    v12 = a1[16];
    v13 = sub_10111EACC(v11, v12, qword_10177C6E8);
    v262 = a1;
    if (v13)
    {
      break;
    }

    v257 = v7;
    v253 = a4;
    v254 = a6;
    v19 = sub_101166FD0();
    v7 = v19 + 64;
    v20 = *(v19 + 64);
    v261 = v19;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    a4 = v22 & v20;
    swift_beginAccess();
    a6 = 0;
    v23 = (v21 + 63) >> 6;
    *&v24 = 138412290;
    v256 = v24;
    v259 = v23;
    v260 = v7;
    while (a4)
    {
LABEL_15:
      v26 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
      v27 = (a6 << 10) | (16 * v26);
      v28 = *(v261 + 56);
      v29 = (*(v261 + 48) + v27);
      v30 = v29[1];
      v263 = *v29;
      v31 = v28 + v27;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v264 = v30;

      sub_10090C56C(*&v32, v33);
      if (v35)
      {

        v36 = sub_100771D58(v263, v264);
        if ((v37 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v34 + 56) + 48 * v36, &v271);

        if (v33 <= 1)
        {
          if (v33)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v38 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v32) & 1).super.super.isa;
          }

          else
          {
            v38 = *&v32;
          }

          v105 = v38;
          goto LABEL_104;
        }

        if (v33 != 2)
        {
          sub_1010100EC(&v271, &v266);
          if (v267[24] != 3)
          {
LABEL_147:

            sub_10118B5A0(&v266);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v271);
            return;
          }

          sub_10000A748(&v266._countAndFlagsBits, v268);
          v106 = v269;
          v107 = sub_1000035D0(v268, v269);
          v108 = *(*(v106 - 8) + 64);
          __chkstk_darwin(v107);
          (*(v110 + 16))(v248 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v262;
          v105 = [objc_allocWithZone(NSNumber) initWithDouble:*&v266._countAndFlagsBits + v32];
          sub_100007BAC(v268);
          goto LABEL_104;
        }

        sub_1010100EC(&v271, &v266);
        if (v267[24] != 2)
        {
          goto LABEL_147;
        }

        v255 = v32;
        v258 = 2;
        sub_10000A748(&v266._countAndFlagsBits, v268);
        v88 = v269;
        v87 = v270;
        v89 = sub_1000035D0(v268, v269);
        v252 = v248;
        v90 = *(v88 - 8);
        v91 = v90[8];
        __chkstk_darwin(v89);
        v92 = v248 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
        (v90[2])(v92);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v266._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v93 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v93 < 64)
            {
              goto LABEL_90;
            }

            v251 = v87;
            v250 = v248;
            __chkstk_darwin(v93);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v94 = *(*(v251 + 32) + 8);
            v95 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v90[1])(v248 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), v88);
            v87 = v251;
            if (v95)
            {
              goto LABEL_165;
            }
          }

          else
          {
            LODWORD(v250) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v138 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v250)
            {
              v251 = v87;
              if (v138 <= 64)
              {
                v250 = *(*(v87 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v249 = v248;
                v142 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v248[1] = v248 - v143;
                swift_getAssociatedConformanceWitness();
                v144 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v248[2] = v248;
                __chkstk_darwin(v144);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v145 = *(*(v251 + 32) + 8);
                v146 = dispatch thunk of static Comparable.< infix(_:_:)();
                (v90[1])(v248 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), v88);
                if (v146)
                {
                  goto LABEL_165;
                }

                v87 = v251;
LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v250 = v248;
              __chkstk_darwin(v138);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v139 = *(*(v251 + 32) + 8);
              v140 = dispatch thunk of static Comparable.< infix(_:_:)();
              v87 = v251;
              (v90[1])(v248 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), v88);
              if (v140)
              {
                goto LABEL_165;
              }
            }

            else if (v138 < 64)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v266._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v147 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v148 = v87;
          v149 = v147;
          v251 = v148;
          v150 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v149)
          {
            if (v150 > 64)
            {
              v249 = v248;
              __chkstk_darwin(v150);
              v250 = v90;
              sub_1000DF9C0();
              v151 = v251;
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v152 = *(*(v151 + 32) + 8);
              v153 = dispatch thunk of static Comparable.< infix(_:_:)();
              v90 = v250;
              (v250[1])(v248 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), v88);
              v154 = &v272[8];
              goto LABEL_101;
            }
          }

          else if (v150 >= 64)
          {
            v250 = v248;
            __chkstk_darwin(v150);
            v155 = v248 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v156 = v251;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v157 = *(*(v156 + 32) + 8);
            v153 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v90[1])(v155, v88);
            v154 = &v272[16];
LABEL_101:
            v158 = *(v154 - 32);
            if (v153)
            {
              goto LABEL_162;
            }

            goto LABEL_102;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_102:
        v159 = dispatch thunk of BinaryInteger._lowWord.getter();
        (v90[1])(v92, v88);
        v32 = v255;
        v53 = __OFADD__(v159, *&v255);
        v160 = (v159 + *&v255);
        if (v53)
        {
          goto LABEL_156;
        }

        v105 = [objc_allocWithZone(NSNumber) initWithLongLong:v160];
        sub_100007BAC(v268);
        a1 = v262;
        LODWORD(v33) = v258;
LABEL_104:
        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
          v162 = v161;
          v163 = v32;
          v164 = v33;
          v165 = v105;
          v166 = String.init(_:)(v162);
          v167 = sub_1000DF96C();
          swift_beginAccess();
          v266 = v166;
          *&v267[8] = &type metadata for String;
          *&v267[16] = v167;
          v267[24] = 1;
          v168 = a1[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v265 = a1[14];
          v170 = v265;
          a1[14] = 0x8000000000000000;
          v171 = sub_100771D58(v263, v264);
          v173 = v170[2];
          v174 = (v172 & 1) == 0;
          v53 = __OFADD__(v173, v174);
          v175 = v173 + v174;
          if (v53)
          {
            goto LABEL_153;
          }

          v176 = v172;
          if (v170[3] >= v175)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v243 = v171;
              sub_1010050E8();
              v171 = v243;
            }
          }

          else
          {
            sub_100FE65C4(v175, isUniquelyReferenced_nonNull_native);
            v171 = sub_100771D58(v263, v264);
            if ((v176 & 1) != (v177 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v262;
          v196 = v163;
          if (v176)
          {
            v197 = v171;

            v198 = v265;
            sub_10118B568(&v266, v265[7] + 48 * v197);
          }

          else
          {
            v198 = v265;
            v265[(v171 >> 6) + 8] |= 1 << v171;
            v199 = (v198[6] + 16 * v171);
            v200 = v264;
            *v199 = v263;
            v199[1] = v200;
            v201 = (v198[7] + 48 * v171);
            v202 = *&v267[9];
            v203 = *v267;
            *v201 = v266;
            v201[1] = v203;
            *(&v201[1]._object + 1) = v202;
            v204 = v198[2];
            v53 = __OFADD__(v204, 1);
            v205 = v204 + 1;
            if (v53)
            {
              goto LABEL_155;
            }

            v198[2] = v205;
          }

          v23 = v259;
          a1[14] = v198;
          swift_endAccess();
          sub_101010148(*&v196, v164);

          v7 = v260;
        }

        else
        {

          objc_opt_self();
          v178 = swift_dynamicCastObjCClass();
          if (v178)
          {
            v179 = v32;
            v258 = v33;
            v180 = v178;
            [v178 doubleValue];
            v182 = v181;
            v183 = [v180 integerValue];
            v7 = v260;
            if (v182 == v183)
            {
              v184 = v183;
              v185 = sub_1000DFAD8();
              swift_beginAccess();
              v266._countAndFlagsBits = v184;
              *&v267[8] = &type metadata for Int;
              *&v267[16] = v185;
              v267[24] = 2;
              v186 = a1[14];
              v187 = swift_isUniquelyReferenced_nonNull_native();
              v265 = a1[14];
              v188 = v265;
              a1[14] = 0x8000000000000000;
              v189 = sub_100771D58(v263, v264);
              v191 = v188[2];
              v192 = (v190 & 1) == 0;
              v53 = __OFADD__(v191, v192);
              v193 = v191 + v192;
              if (v53)
              {
                goto LABEL_159;
              }

              v194 = v190;
              if (v188[3] >= v193)
              {
                if ((v187 & 1) == 0)
                {
                  v246 = v189;
                  sub_1010050E8();
                  v189 = v246;
                }
              }

              else
              {
                sub_100FE65C4(v193, v187);
                v189 = sub_100771D58(v263, v264);
                if ((v194 & 1) != (v195 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v262;
              v225 = v179;
              if ((v194 & 1) == 0)
              {
                v226 = v265;
                v265[(v189 >> 6) + 8] |= 1 << v189;
                v227 = (v226[6] + 16 * v189);
                v228 = v264;
                *v227 = v263;
                v227[1] = v228;
                v229 = (v226[7] + 48 * v189);
                v230 = *&v267[9];
                v231 = *v267;
                *v229 = v266;
                v229[1] = v231;
                *(&v229[1]._object + 1) = v230;
                v232 = v226[2];
                v53 = __OFADD__(v232, 1);
                v233 = v232 + 1;
                if (v53)
                {
                  goto LABEL_163;
                }

                goto LABEL_143;
              }

LABEL_141:
              v234 = v189;

              v226 = v265;
              sub_10118B568(&v266, v265[7] + 48 * v234);
            }

            else
            {
              v215 = sub_1000DFA84();
              swift_beginAccess();
              *&v266._countAndFlagsBits = v182;
              *&v267[8] = &type metadata for Double;
              *&v267[16] = v215;
              v267[24] = 3;
              v216 = a1[14];
              v217 = swift_isUniquelyReferenced_nonNull_native();
              v265 = a1[14];
              v218 = v265;
              a1[14] = 0x8000000000000000;
              v189 = sub_100771D58(v263, v264);
              v220 = v218[2];
              v221 = (v219 & 1) == 0;
              v53 = __OFADD__(v220, v221);
              v222 = v220 + v221;
              if (v53)
              {
                goto LABEL_161;
              }

              v223 = v219;
              if (v218[3] >= v222)
              {
                if ((v217 & 1) == 0)
                {
                  v247 = v189;
                  sub_1010050E8();
                  v189 = v247;
                }
              }

              else
              {
                sub_100FE65C4(v222, v217);
                v189 = sub_100771D58(v263, v264);
                if ((v223 & 1) != (v224 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v262;
              v225 = v179;
              if (v223)
              {
                goto LABEL_141;
              }

              v226 = v265;
              v265[(v189 >> 6) + 8] |= 1 << v189;
              v235 = (v226[6] + 16 * v189);
              v236 = v264;
              *v235 = v263;
              v235[1] = v236;
              v237 = (v226[7] + 48 * v189);
              v238 = *&v267[9];
              v239 = *v267;
              *v237 = v266;
              v237[1] = v239;
              *(&v237[1]._object + 1) = v238;
              v240 = v226[2];
              v53 = __OFADD__(v240, 1);
              v233 = v240 + 1;
              if (v53)
              {
                goto LABEL_164;
              }

LABEL_143:
              v226[2] = v233;
            }

            v23 = v259;
            v241 = v258;
            a1[14] = v226;
            swift_endAccess();

            sub_101010148(*&v225, v241);
            goto LABEL_145;
          }

          v7 = v260;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v206 = type metadata accessor for Logger();
          sub_1000076D4(v206, qword_10177C6D0);
          v207 = v105;
          v208 = Logger.logObject.getter();
          v209 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v208, v209))
          {
            v210 = swift_slowAlloc();
            v258 = v33;
            v211 = v210;
            v212 = swift_slowAlloc();
            v255 = v32;
            v213 = v212;
            *v211 = v256;
            *(v211 + 4) = v207;
            *v212 = v207;
            v214 = v207;
            _os_log_impl(&_mh_execute_header, v208, v209, "Unsupported value type: %@!", v211, 0xCu);
            sub_10000B3A8(v213, &qword_10169BB30, &unk_10138B3C0);
            a1 = v262;

            sub_101010148(*&v255, v258);
          }

          else
          {

            sub_101010148(*&v32, v33);
          }

          v23 = v259;
        }

LABEL_145:
        sub_10118B5A0(&v271);
      }

      else
      {
LABEL_21:
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v32];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:v32];
          }
        }

        else if (v33)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v32) & 1).super.super.isa;
        }

        else
        {
          isa = *&v32;
        }

        v40 = isa;
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
          v42 = v41;
          v43 = v32;
          v12 = v33;
          v11 = v40;
          v44 = String.init(_:)(v42);
          v45 = sub_1000DF96C();
          swift_beginAccess();
          v271 = v44;
          *&v272[8] = &type metadata for String;
          *&v272[16] = v45;
          v272[24] = 1;
          v46 = a1[14];
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v268[0] = a1[14];
          v48 = v268[0];
          a1[14] = 0x8000000000000000;
          v49 = sub_100771D58(v263, v264);
          v51 = *(v48 + 16);
          v52 = (v50 & 1) == 0;
          v53 = __OFADD__(v51, v52);
          v54 = v51 + v52;
          if (v53)
          {
            __break(1u);
            goto LABEL_151;
          }

          v55 = v50;
          if (*(v48 + 24) >= v54)
          {
            if ((v47 & 1) == 0)
            {
              v242 = v49;
              sub_1010050E8();
              v49 = v242;
            }
          }

          else
          {
            sub_100FE65C4(v54, v47);
            v49 = sub_100771D58(v263, v264);
            if ((v55 & 1) != (v56 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v262;
          v75 = v43;
          v7 = v260;
          if (v55)
          {
            v76 = v49;

            v77 = v268[0];
            sub_10118B568(&v271, *(v268[0] + 56) + 48 * v76);
          }

          else
          {
            v77 = v268[0];
            *(v268[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
            v78 = (v77[6] + 16 * v49);
            v79 = v264;
            *v78 = v263;
            v78[1] = v79;
            v80 = (v77[7] + 48 * v49);
            v81 = *&v272[9];
            v82 = *v272;
            *v80 = v271;
            v80[1] = v82;
            *(&v80[1]._object + 1) = v81;
            v83 = v77[2];
            v53 = __OFADD__(v83, 1);
            v84 = v83 + 1;
            if (v53)
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

            v77[2] = v84;
          }

          a1[14] = v77;
          swift_endAccess();

          v85 = v75;
          v86 = v12;
          goto LABEL_46;
        }

        objc_opt_self();
        v57 = swift_dynamicCastObjCClass();
        if (v57)
        {
          v58 = v32;
          v258 = v33;
          v59 = v57;
          [v57 doubleValue];
          v61 = v60;
          v62 = [v59 integerValue];
          v7 = v260;
          if (v61 == v62)
          {
            v63 = v62;
            v64 = sub_1000DFAD8();
            swift_beginAccess();
            v271._countAndFlagsBits = v63;
            *&v272[8] = &type metadata for Int;
            *&v272[16] = v64;
            v272[24] = 2;
            v65 = a1[14];
            v66 = swift_isUniquelyReferenced_nonNull_native();
            v268[0] = a1[14];
            v67 = v268[0];
            a1[14] = 0x8000000000000000;
            v68 = sub_100771D58(v263, v264);
            v70 = *(v67 + 16);
            v71 = (v69 & 1) == 0;
            v53 = __OFADD__(v70, v71);
            v72 = v70 + v71;
            if (v53)
            {
              goto LABEL_154;
            }

            v73 = v69;
            if (*(v67 + 24) >= v72)
            {
              if ((v66 & 1) == 0)
              {
                v244 = v68;
                sub_1010050E8();
                v68 = v244;
              }
            }

            else
            {
              sub_100FE65C4(v72, v66);
              v68 = sub_100771D58(v263, v264);
              if ((v73 & 1) != (v74 & 1))
              {
                goto LABEL_166;
              }
            }

            a1 = v262;
            v121 = v58;
            if (v73)
            {
              goto LABEL_78;
            }

            v122 = v268[0];
            *(v268[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
            v123 = (v122[6] + 16 * v68);
            v124 = v264;
            *v123 = v263;
            v123[1] = v124;
            v125 = (v122[7] + 48 * v68);
            v126 = *&v272[9];
            v127 = *v272;
            *v125 = v271;
            v125[1] = v127;
            *(&v125[1]._object + 1) = v126;
            v128 = v122[2];
            v53 = __OFADD__(v128, 1);
            v129 = v128 + 1;
            if (v53)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v111 = sub_1000DFA84();
            swift_beginAccess();
            *&v271._countAndFlagsBits = v61;
            *&v272[8] = &type metadata for Double;
            *&v272[16] = v111;
            v272[24] = 3;
            v112 = a1[14];
            v113 = swift_isUniquelyReferenced_nonNull_native();
            v268[0] = a1[14];
            v114 = v268[0];
            a1[14] = 0x8000000000000000;
            v68 = sub_100771D58(v263, v264);
            v116 = *(v114 + 16);
            v117 = (v115 & 1) == 0;
            v53 = __OFADD__(v116, v117);
            v118 = v116 + v117;
            if (v53)
            {
              goto LABEL_157;
            }

            v119 = v115;
            if (*(v114 + 24) >= v118)
            {
              if ((v113 & 1) == 0)
              {
                v245 = v68;
                sub_1010050E8();
                v68 = v245;
              }
            }

            else
            {
              sub_100FE65C4(v118, v113);
              v68 = sub_100771D58(v263, v264);
              if ((v119 & 1) != (v120 & 1))
              {
                goto LABEL_166;
              }
            }

            a1 = v262;
            v121 = v58;
            if (v119)
            {
LABEL_78:
              v130 = v68;

              v122 = v268[0];
              sub_10118B568(&v271, *(v268[0] + 56) + 48 * v130);
              goto LABEL_81;
            }

            v122 = v268[0];
            *(v268[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
            v131 = (v122[6] + 16 * v68);
            v132 = v264;
            *v131 = v263;
            v131[1] = v132;
            v133 = (v122[7] + 48 * v68);
            v134 = *&v272[9];
            v135 = *v272;
            *v133 = v271;
            v133[1] = v135;
            *(&v133[1]._object + 1) = v134;
            v136 = v122[2];
            v53 = __OFADD__(v136, 1);
            v129 = v136 + 1;
            if (v53)
            {
              goto LABEL_160;
            }
          }

          v122[2] = v129;
LABEL_81:
          v23 = v259;
          v137 = v258;
          a1[14] = v122;
          swift_endAccess();

          sub_101010148(*&v121, v137);
        }

        else
        {

          v7 = v260;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v96 = type metadata accessor for Logger();
          sub_1000076D4(v96, qword_10177C6D0);
          v97 = v40;
          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v258 = v33;
            v101 = v100;
            v102 = swift_slowAlloc();
            v255 = v32;
            v103 = v102;
            *v101 = v256;
            *(v101 + 4) = v97;
            *v102 = v97;
            v104 = v97;
            _os_log_impl(&_mh_execute_header, v98, v99, "Unsupported value type: %@!", v101, 0xCu);
            sub_10000B3A8(v103, &qword_10169BB30, &unk_10138B3C0);
            a1 = v262;

            v85 = v255;
            v86 = v258;
LABEL_46:
            sub_101010148(*&v85, v86);
            goto LABEL_47;
          }

          sub_101010148(*&v32, v33);
LABEL_47:
          v23 = v259;
        }
      }
    }

    while (1)
    {
      v25 = a6 + 1;
      if (__OFADD__(a6, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        return;
      }

      a4 = *(v7 + 8 * v25);
      ++a6;
      if (a4)
      {
        a6 = v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_149:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
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
    v271._countAndFlagsBits = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000136BC(v11, v12, &v271._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v15, v16, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v17, 0xCu);
    sub_100007BAC(v18);
  }
}

void sub_1011864A4(void *a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v7 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v7, object, qword_10177C6E8))
    {
      break;
    }

    v252 = v4;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0x726F727265;
    *(inited + 40) = 0xE500000000000000;
    v250 = a3;
    *(inited + 48) = String._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v15 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v4 = v18 & *(v15 + 64);
    swift_beginAccess();
    v19 = 0;
    a3 = (v17 + 63) >> 6;
    *&v20 = 138412290;
    v251 = v20;
    v254 = a1;
    v253 = v15;
    while (v4)
    {
LABEL_15:
      v22 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v23 = (v19 << 10) | (16 * v22);
      v24 = *(v15 + 56);
      v25 = (*(v15 + 48) + v23);
      v26 = v25[1];
      v257 = *v25;
      v27 = (v24 + v23);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = a1[14];
      v31 = *(v30 + 16);
      v258 = v26;

      v256 = v28;
      sub_10090C56C(v28, v29);
      v255 = v29;
      if (v31)
      {

        v32 = sub_100771D58(v257, v258);
        if ((v33 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v30 + 56) + 48 * v32, &v265);

        if (v29 <= 1)
        {
          if (v29)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v34 = NSNumber.init(BOOLeanLiteral:)(v256 & 1).super.super.isa;
          }

          else
          {
            v34 = v256;
          }

          v100 = v34;
          goto LABEL_102;
        }

        if (v29 != 2)
        {
          sub_1010100EC(&v265, &v260);
          if (BYTE8(v261[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v260);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v265);
            return;
          }

          v101 = v256;
          sub_10000A748(&v260._countAndFlagsBits, v262);
          v102 = v263;
          v103 = sub_1000035D0(v262, v263);
          v104 = *(*(v102 - 8) + 64);
          __chkstk_darwin(v103);
          (*(v106 + 16))(v244 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v254;
          v100 = [objc_allocWithZone(NSNumber) initWithDouble:*&v260._countAndFlagsBits + *&v101];
          sub_100007BAC(v262);
          goto LABEL_102;
        }

        sub_1010100EC(&v265, &v260);
        if (BYTE8(v261[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v260._countAndFlagsBits, v262);
        v82 = v263;
        v81 = v264;
        v83 = sub_1000035D0(v262, v263);
        v248 = v244;
        v84 = *(*(v82 - 8) + 64);
        __chkstk_darwin(v83);
        v246 = v85;
        v86 = v244 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
        v249 = v87;
        (*(v87 + 16))(v86);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v260._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v88 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v88 < 64)
            {
              goto LABEL_89;
            }

            v247 = v81;
            v245 = v244;
            __chkstk_darwin(v88);
            v90 = v244 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v91 = *(*(v247 + 32) + 8);
            v92 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v249 + 8))(v90, v82);
            v81 = v247;
            if (v92)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v245) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v135 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v245)
            {
              v247 = v81;
              if (v135 <= 64)
              {
                v245 = *(*(v81 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v244[3] = v244;
                v142 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v244[1] = v244 - v143;
                swift_getAssociatedConformanceWitness();
                v144 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v244[2] = v244;
                __chkstk_darwin(v144);
                v146 = v244 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v147 = *(*(v247 + 32) + 8);
                v148 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v249 + 8))(v146, v82);
                if (v148)
                {
                  goto LABEL_163;
                }

                v81 = v247;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v245 = v244;
              __chkstk_darwin(v135);
              v137 = v244 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v138 = *(*(v247 + 32) + 8);
              v139 = dispatch thunk of static Comparable.< infix(_:_:)();
              v140 = v137;
              v81 = v247;
              (*(v249 + 8))(v140, v82);
              if (v139)
              {
                goto LABEL_163;
              }
            }

            else if (v135 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v260._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v149 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v150 = v81;
          v151 = v149;
          v247 = v150;
          v152 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v151)
          {
            if (v152 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v152 >= 64)
          {
LABEL_93:
            v245 = v244;
            __chkstk_darwin(v152);
            v246 = v244 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v154 = v247;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v155 = *(*(v154 + 32) + 8);
            v156 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v249 + 8))(v246, v82);
            if (v156)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v157 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v249 + 8))(v86, v82);
        v49 = __OFADD__(v157, v256);
        v158 = &v256[v157];
        if (v49)
        {
          goto LABEL_154;
        }

        v100 = [objc_allocWithZone(NSNumber) initWithLongLong:v158];
        sub_100007BAC(v262);
        a1 = v254;
LABEL_102:
        objc_opt_self();
        v159 = swift_dynamicCastObjCClass();
        if (v159)
        {
          v160 = v159;
          v161 = v100;
          v162 = String.init(_:)(v160);
          v163 = a1;
          v164 = sub_1000DF96C();
          swift_beginAccess();
          v260 = v162;
          *(&v261[0] + 1) = &type metadata for String;
          *&v261[1] = v164;
          BYTE8(v261[1]) = 1;
          v165 = v163[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v259 = v163[14];
          v167 = v259;
          v163[14] = 0x8000000000000000;
          v168 = sub_100771D58(v257, v258);
          v170 = v167[2];
          v171 = (v169 & 1) == 0;
          v49 = __OFADD__(v170, v171);
          v172 = v170 + v171;
          if (v49)
          {
            goto LABEL_151;
          }

          v173 = v169;
          if (v167[3] >= v172)
          {
            v15 = v253;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v239 = v168;
              sub_1010050E8();
              v168 = v239;
            }
          }

          else
          {
            sub_100FE65C4(v172, isUniquelyReferenced_nonNull_native);
            v168 = sub_100771D58(v257, v258);
            v15 = v253;
            if ((v173 & 1) != (v174 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v254;
          if (v173)
          {
            v194 = v168;

            v195 = v259;
            sub_10118B568(&v260, v259[7] + 48 * v194);
          }

          else
          {
            v195 = v259;
            v259[(v168 >> 6) + 8] |= 1 << v168;
            v196 = (v195[6] + 16 * v168);
            v197 = v258;
            *v196 = v257;
            v196[1] = v197;
            v198 = (v195[7] + 48 * v168);
            v199 = *(v261 + 9);
            v200 = v261[0];
            *v198 = v260;
            v198[1] = v200;
            *(&v198[1]._object + 1) = v199;
            v201 = v195[2];
            v49 = __OFADD__(v201, 1);
            v202 = v201 + 1;
            if (v49)
            {
              goto LABEL_153;
            }

            v195[2] = v202;
          }

          v203 = v255;
          a1[14] = v195;
          swift_endAccess();
          sub_101010148(v256, v203);

          goto LABEL_120;
        }

        objc_opt_self();
        v175 = swift_dynamicCastObjCClass();
        if (v175)
        {
          v176 = v175;
          [v175 doubleValue];
          v178 = v177;
          v179 = [v176 integerValue];
          if (v178 == v179)
          {
            v180 = v179;
            v181 = sub_1000DFAD8();
            swift_beginAccess();
            v260._countAndFlagsBits = v180;
            *(&v261[0] + 1) = &type metadata for Int;
            *&v261[1] = v181;
            BYTE8(v261[1]) = 2;
            v182 = a1[14];
            v183 = swift_isUniquelyReferenced_nonNull_native();
            v184 = a1;
            v185 = v183;
            v259 = v184[14];
            v186 = v259;
            v184[14] = 0x8000000000000000;
            v187 = sub_100771D58(v257, v258);
            v189 = v186[2];
            v190 = (v188 & 1) == 0;
            v49 = __OFADD__(v189, v190);
            v191 = v189 + v190;
            if (v49)
            {
              goto LABEL_157;
            }

            v192 = v188;
            if (v186[3] >= v191)
            {
              if ((v185 & 1) == 0)
              {
                v242 = v187;
                sub_1010050E8();
                v187 = v242;
              }
            }

            else
            {
              sub_100FE65C4(v191, v185);
              v187 = sub_100771D58(v257, v258);
              if ((v192 & 1) != (v193 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v254;
            if ((v192 & 1) == 0)
            {
              v222 = v259;
              v259[(v187 >> 6) + 8] |= 1 << v187;
              v223 = (v222[6] + 16 * v187);
              v224 = v258;
              *v223 = v257;
              v223[1] = v224;
              v225 = (v222[7] + 48 * v187);
              v226 = *(v261 + 9);
              v227 = v261[0];
              *v225 = v260;
              v225[1] = v227;
              *(&v225[1]._object + 1) = v226;
              v228 = v222[2];
              v49 = __OFADD__(v228, 1);
              v229 = v228 + 1;
              if (v49)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v230 = v187;

            v222 = v259;
            sub_10118B568(&v260, v259[7] + 48 * v230);
          }

          else
          {
            v210 = sub_1000DFA84();
            swift_beginAccess();
            *&v260._countAndFlagsBits = v178;
            *(&v261[0] + 1) = &type metadata for Double;
            *&v261[1] = v210;
            BYTE8(v261[1]) = 3;
            v211 = a1[14];
            v212 = swift_isUniquelyReferenced_nonNull_native();
            v213 = a1;
            v214 = v212;
            v259 = v213[14];
            v215 = v259;
            v213[14] = 0x8000000000000000;
            v187 = sub_100771D58(v257, v258);
            v217 = v215[2];
            v218 = (v216 & 1) == 0;
            v49 = __OFADD__(v217, v218);
            v219 = v217 + v218;
            if (v49)
            {
              goto LABEL_159;
            }

            v220 = v216;
            if (v215[3] >= v219)
            {
              if ((v214 & 1) == 0)
              {
                v243 = v187;
                sub_1010050E8();
                v187 = v243;
              }
            }

            else
            {
              sub_100FE65C4(v219, v214);
              v187 = sub_100771D58(v257, v258);
              if ((v220 & 1) != (v221 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v254;
            if (v220)
            {
              goto LABEL_139;
            }

            v222 = v259;
            v259[(v187 >> 6) + 8] |= 1 << v187;
            v231 = (v222[6] + 16 * v187);
            v232 = v258;
            *v231 = v257;
            v231[1] = v232;
            v233 = (v222[7] + 48 * v187);
            v234 = *(v261 + 9);
            v235 = v261[0];
            *v233 = v260;
            v233[1] = v235;
            *(&v233[1]._object + 1) = v234;
            v236 = v222[2];
            v49 = __OFADD__(v236, 1);
            v229 = v236 + 1;
            if (v49)
            {
              goto LABEL_162;
            }

LABEL_141:
            v222[2] = v229;
          }

          v237 = v255;
          a1[14] = v222;
          swift_endAccess();

          sub_101010148(v256, v237);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v204 = type metadata accessor for Logger();
        sub_1000076D4(v204, qword_10177C6D0);
        v205 = v100;
        v161 = Logger.logObject.getter();
        v206 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v161, v206))
        {

          sub_101010148(v256, v255);
LABEL_120:

          goto LABEL_143;
        }

        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *v207 = v251;
        *(v207 + 4) = v205;
        *v208 = v205;
        v209 = v205;
        _os_log_impl(&_mh_execute_header, v161, v206, "Unsupported value type: %@!", v207, 0xCu);
        sub_10000B3A8(v208, &qword_10169BB30, &unk_10138B3C0);
        v15 = v253;

        a1 = v254;

        sub_101010148(v256, v255);
LABEL_143:
        sub_10118B5A0(&v265);
      }

      else
      {
LABEL_21:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v36 = objc_allocWithZone(NSNumber);
            isa = [v36 initWithLongLong:v256];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v256];
          }
        }

        else if (v29)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v256 & 1).super.super.isa;
        }

        else
        {
          isa = v256;
        }

        v37 = isa;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          v7 = v37;
          v40 = String.init(_:)(v39);
          object = v40._object;
          v41 = sub_1000DF96C();
          swift_beginAccess();
          v265 = v40;
          *&v266[8] = &type metadata for String;
          *&v266[16] = v41;
          v266[24] = 1;
          v42 = a1[14];
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v262[0] = a1[14];
          v44 = v262[0];
          a1[14] = 0x8000000000000000;
          v45 = sub_100771D58(v257, v258);
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
              v238 = v45;
              sub_1010050E8();
              v45 = v238;
            }
          }

          else
          {
            sub_100FE65C4(v50, v43);
            v45 = sub_100771D58(v257, v258);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v254;
          v15 = v253;
          if (v51)
          {
            v72 = v45;

            v73 = v262[0];
            sub_10118B568(&v265, *(v262[0] + 56) + 48 * v72);
          }

          else
          {
            v73 = v262[0];
            *(v262[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v74 = (v73[6] + 16 * v45);
            v75 = v258;
            *v74 = v257;
            v74[1] = v75;
            v76 = (v73[7] + 48 * v45);
            v77 = *&v266[9];
            v78 = *v266;
            *v76 = v265;
            v76[1] = v78;
            *(&v76[1]._object + 1) = v77;
            v79 = v73[2];
            v49 = __OFADD__(v79, 1);
            v80 = v79 + 1;
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

            v73[2] = v80;
          }

          a1[14] = v73;
          swift_endAccess();

LABEL_46:
          sub_101010148(v256, v255);
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
              v265._countAndFlagsBits = v58;
              *&v266[8] = &type metadata for Int;
              *&v266[16] = v59;
              v266[24] = 2;
              v60 = a1[14];
              v61 = swift_isUniquelyReferenced_nonNull_native();
              v62 = a1;
              v63 = v61;
              v262[0] = v62[14];
              v64 = v262[0];
              v62[14] = 0x8000000000000000;
              v65 = sub_100771D58(v257, v258);
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
                  v240 = v65;
                  sub_1010050E8();
                  v65 = v240;
                }
              }

              else
              {
                sub_100FE65C4(v69, v63);
                v65 = sub_100771D58(v257, v258);
                if ((v70 & 1) != (v71 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v254;
              if (v70)
              {
                goto LABEL_77;
              }

              v119 = v262[0];
              *(v262[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v120 = (v119[6] + 16 * v65);
              v121 = v258;
              *v120 = v257;
              v120[1] = v121;
              v122 = (v119[7] + 48 * v65);
              v123 = *&v266[9];
              v124 = *v266;
              *v122 = v265;
              v122[1] = v124;
              *(&v122[1]._object + 1) = v123;
              v125 = v119[2];
              v49 = __OFADD__(v125, 1);
              v126 = v125 + 1;
              if (v49)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v107 = sub_1000DFA84();
              swift_beginAccess();
              *&v265._countAndFlagsBits = v56;
              *&v266[8] = &type metadata for Double;
              *&v266[16] = v107;
              v266[24] = 3;
              v108 = a1[14];
              v109 = swift_isUniquelyReferenced_nonNull_native();
              v110 = a1;
              v111 = v109;
              v262[0] = v110[14];
              v112 = v262[0];
              v110[14] = 0x8000000000000000;
              v65 = sub_100771D58(v257, v258);
              v114 = *(v112 + 16);
              v115 = (v113 & 1) == 0;
              v49 = __OFADD__(v114, v115);
              v116 = v114 + v115;
              if (v49)
              {
                goto LABEL_155;
              }

              v117 = v113;
              if (*(v112 + 24) >= v116)
              {
                if ((v111 & 1) == 0)
                {
                  v241 = v65;
                  sub_1010050E8();
                  v65 = v241;
                }
              }

              else
              {
                sub_100FE65C4(v116, v111);
                v65 = sub_100771D58(v257, v258);
                if ((v117 & 1) != (v118 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v254;
              if (v117)
              {
LABEL_77:
                v127 = v65;

                v119 = v262[0];
                sub_10118B568(&v265, *(v262[0] + 56) + 48 * v127);
                goto LABEL_80;
              }

              v119 = v262[0];
              *(v262[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v128 = (v119[6] + 16 * v65);
              v129 = v258;
              *v128 = v257;
              v128[1] = v129;
              v130 = (v119[7] + 48 * v65);
              v131 = *&v266[9];
              v132 = *v266;
              *v130 = v265;
              v130[1] = v132;
              *(&v130[1]._object + 1) = v131;
              v133 = v119[2];
              v49 = __OFADD__(v133, 1);
              v126 = v133 + 1;
              if (v49)
              {
                goto LABEL_158;
              }
            }

            v119[2] = v126;
LABEL_80:
            v134 = v255;
            a1[14] = v119;
            swift_endAccess();

            sub_101010148(v256, v134);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v93 = type metadata accessor for Logger();
            sub_1000076D4(v93, qword_10177C6D0);
            v94 = v37;
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              *v97 = v251;
              *(v97 + 4) = v94;
              *v98 = v94;
              v99 = v94;
              _os_log_impl(&_mh_execute_header, v95, v96, "Unsupported value type: %@!", v97, 0xCu);
              sub_10000B3A8(v98, &qword_10169BB30, &unk_10138B3C0);
              v15 = v253;

              a1 = v254;

              goto LABEL_46;
            }

            sub_101010148(v256, v255);
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

      v4 = *(v16 + 8 * v21);
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

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C6D0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v265._countAndFlagsBits = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1000136BC(v7, object, &v265._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v10, v11, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v12, 0xCu);
    sub_100007BAC(v13);
  }
}

void sub_101188008(void *a1, uint64_t a2, int64_t a3, uint64_t a4, int64_t a5)
{
  v6 = v5;
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

    v257 = v6;
    v255 = a3;
    v254 = a5;
    v17 = sub_101167D1C();
    v19 = v17 + 64;
    v18 = *(v17 + 64);
    v261 = v17;
    v20 = 1 << *(v17 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    swift_beginAccess();
    a5 = 0;
    a3 = (v20 + 63) >> 6;
    *&v23 = 138412290;
    v256 = v23;
    v260 = a1;
    v258 = a3;
    v259 = v19;
    while (v22)
    {
LABEL_19:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = (a5 << 10) | (16 * v27);
      v29 = *(v261 + 56);
      v30 = (*(v261 + 48) + v28);
      v31 = v30[1];
      v262 = *v30;
      v32 = v29 + v28;
      v6 = *v32;
      v33 = *(v32 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v263 = v31;

      sub_10090C56C(*&v6, v33);
      if (v35)
      {

        v36 = sub_100771D58(v262, v263);
        if (v37)
        {
          sub_1010100EC(*(v34 + 56) + 48 * v36, &v270);

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

            v104 = v38;
            goto LABEL_108;
          }

          if (v33 != 2)
          {
            sub_1010100EC(&v270, &v265);
            if (v266[24] != 3)
            {
LABEL_148:

              sub_10118B5A0(&v265);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v270);
              return;
            }

            sub_10000A748(&v265._countAndFlagsBits, v267);
            v105 = v268;
            v106 = sub_1000035D0(v267, v268);
            v107 = *(*(v105 - 8) + 64);
            __chkstk_darwin(v106);
            (*(v109 + 16))(v247 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v260;
            v104 = [objc_allocWithZone(NSNumber) initWithDouble:*&v265._countAndFlagsBits + v6];
            sub_100007BAC(v267);
            goto LABEL_108;
          }

          sub_1010100EC(&v270, &v265);
          if (v266[24] != 2)
          {
            goto LABEL_148;
          }

          v252 = v6;
          sub_10000A748(&v265._countAndFlagsBits, v267);
          v84 = v268;
          v83 = v269;
          v85 = sub_1000035D0(v267, v268);
          v253 = v247;
          v86 = *(v84 - 8);
          v87 = v86[8];
          __chkstk_darwin(v85);
          v251 = v88;
          v89 = v247 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v86[2])(v89);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_95;
          }

          v265._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v90 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v90 >= 64)
            {
              v249 = v83;
              v250 = v247;
              __chkstk_darwin(v90);
              v92 = v247 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v93 = *(*(v249 + 32) + 8);
              v94 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v86[1])(v92, v84);
              v83 = v249;
              if (v94)
              {
                goto LABEL_166;
              }

              goto LABEL_95;
            }

LABEL_94:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_95;
          }

          LODWORD(v250) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v137 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v250 & 1) == 0)
          {
            if (v137 >= 64)
            {
              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v249 = v83;
          if (v137 <= 64)
          {
            v250 = *(*(v83 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v248 = v247;
            v144 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            __chkstk_darwin(AssociatedTypeWitness);
            v247[0] = v247 - v145;
            swift_getAssociatedConformanceWitness();
            v146 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v247[1] = v247;
            __chkstk_darwin(v146);
            v148 = v247 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v149 = *(*(v249 + 32) + 8);
            v150 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v86[1])(v148, v84);
            if (v150)
            {
              goto LABEL_166;
            }

            v83 = v249;
            goto LABEL_94;
          }

          v250 = v247;
          __chkstk_darwin(v137);
          v139 = v247 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v140 = *(*(v249 + 32) + 8);
          v141 = dispatch thunk of static Comparable.< infix(_:_:)();
          v142 = v139;
          v83 = v249;
          (v86[1])(v142, v84);
          if (v141)
          {
            goto LABEL_166;
          }

LABEL_95:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_106:
            v162 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v86[1])(v89, v84);
            v6 = v252;
            v51 = __OFADD__(v162, *&v252);
            v163 = v162 + *&v252;
            if (v51)
            {
              goto LABEL_157;
            }

            v104 = [objc_allocWithZone(NSNumber) initWithLongLong:v163];
            sub_100007BAC(v267);
            a1 = v260;
LABEL_108:
            objc_opt_self();
            v164 = swift_dynamicCastObjCClass();
            if (v164)
            {
              v165 = v164;
              v166 = v33;
              v167 = v104;
              v168 = String.init(_:)(v165);
              v169 = a1;
              v170 = sub_1000DF96C();
              swift_beginAccess();
              v265 = v168;
              *&v266[8] = &type metadata for String;
              *&v266[16] = v170;
              v266[24] = 1;
              v171 = v169[14];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v264 = v169[14];
              v173 = v264;
              v169[14] = 0x8000000000000000;
              v174 = sub_100771D58(v262, v263);
              v176 = v173[2];
              v177 = (v175 & 1) == 0;
              v51 = __OFADD__(v176, v177);
              v178 = v176 + v177;
              if (v51)
              {
                goto LABEL_154;
              }

              v179 = v175;
              if (v173[3] >= v178)
              {
                v181 = v166;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v242 = v174;
                  sub_1010050E8();
                  v174 = v242;
                }
              }

              else
              {
                sub_100FE65C4(v178, isUniquelyReferenced_nonNull_native);
                v174 = sub_100771D58(v262, v263);
                if ((v179 & 1) != (v180 & 1))
                {
                  goto LABEL_167;
                }

                v181 = v166;
              }

              a1 = v260;
              a3 = v258;
              if (v179)
              {
                v201 = v174;

                v202 = v264;
                sub_10118B568(&v265, v264[7] + 48 * v201);
              }

              else
              {
                v202 = v264;
                v264[(v174 >> 6) + 8] |= 1 << v174;
                v203 = (v202[6] + 16 * v174);
                v204 = v263;
                *v203 = v262;
                v203[1] = v204;
                v205 = (v202[7] + 48 * v174);
                v206 = *&v266[9];
                v207 = *v266;
                *v205 = v265;
                v205[1] = v207;
                *(&v205[1]._object + 1) = v206;
                v208 = v202[2];
                v51 = __OFADD__(v208, 1);
                v209 = v208 + 1;
                if (v51)
                {
                  goto LABEL_156;
                }

                v202[2] = v209;
              }

              a1[14] = v202;
              swift_endAccess();
              sub_101010148(*&v6, v181);

LABEL_126:
              goto LABEL_12;
            }

            objc_opt_self();
            v182 = swift_dynamicCastObjCClass();
            if (!v182)
            {
              LODWORD(v262) = v33;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v210 = type metadata accessor for Logger();
              sub_1000076D4(v210, qword_10177C6D0);
              v211 = v104;
              v167 = Logger.logObject.getter();
              v212 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v167, v212))
              {

                sub_101010148(*&v6, v262);
                goto LABEL_126;
              }

              v213 = swift_slowAlloc();
              v214 = swift_slowAlloc();
              *v213 = v256;
              *(v213 + 4) = v211;
              *v214 = v211;
              v215 = v211;
              _os_log_impl(&_mh_execute_header, v167, v212, "Unsupported value type: %@!", v213, 0xCu);
              sub_10000B3A8(v214, &qword_10169BB30, &unk_10138B3C0);
              a1 = v260;

              sub_101010148(*&v6, v262);
LABEL_12:
              sub_10118B5A0(&v270);
              goto LABEL_13;
            }

            v183 = v182;
            [v182 doubleValue];
            v185 = v184;
            v186 = [v183 integerValue];
            if (v185 == v186)
            {
              v187 = v186;
              v188 = sub_1000DFAD8();
              swift_beginAccess();
              v265._countAndFlagsBits = v187;
              *&v266[8] = &type metadata for Int;
              *&v266[16] = v188;
              v266[24] = 2;
              v189 = a1[14];
              v190 = swift_isUniquelyReferenced_nonNull_native();
              v191 = a1;
              v192 = v190;
              v264 = v191[14];
              v193 = v264;
              v191[14] = 0x8000000000000000;
              v194 = sub_100771D58(v262, v263);
              v196 = v193[2];
              v197 = (v195 & 1) == 0;
              v51 = __OFADD__(v196, v197);
              v198 = v196 + v197;
              if (v51)
              {
                goto LABEL_160;
              }

              v199 = v195;
              if (v193[3] >= v198)
              {
                if ((v192 & 1) == 0)
                {
                  v245 = v194;
                  sub_1010050E8();
                  v194 = v245;
                }
              }

              else
              {
                sub_100FE65C4(v198, v192);
                v194 = sub_100771D58(v262, v263);
                if ((v199 & 1) != (v200 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v260;
              if ((v199 & 1) == 0)
              {
                v25 = v264;
                v264[(v194 >> 6) + 8] |= 1 << v194;
                v228 = (v25[6] + 16 * v194);
                v229 = v263;
                *v228 = v262;
                v228[1] = v229;
                v230 = (v25[7] + 48 * v194);
                v231 = *&v266[9];
                v232 = *v266;
                *v230 = v265;
                v230[1] = v232;
                *(&v230[1]._object + 1) = v231;
                v233 = v25[2];
                v51 = __OFADD__(v233, 1);
                v234 = v233 + 1;
                if (v51)
                {
                  goto LABEL_164;
                }

                goto LABEL_146;
              }

LABEL_10:
              v24 = v194;

              v25 = v264;
              sub_10118B568(&v265, v264[7] + 48 * v24);
            }

            else
            {
              v216 = sub_1000DFA84();
              swift_beginAccess();
              *&v265._countAndFlagsBits = v185;
              *&v266[8] = &type metadata for Double;
              *&v266[16] = v216;
              v266[24] = 3;
              v217 = a1[14];
              v218 = swift_isUniquelyReferenced_nonNull_native();
              v219 = a1;
              v220 = v218;
              v264 = v219[14];
              v221 = v264;
              v219[14] = 0x8000000000000000;
              v194 = sub_100771D58(v262, v263);
              v223 = v221[2];
              v224 = (v222 & 1) == 0;
              v51 = __OFADD__(v223, v224);
              v225 = v223 + v224;
              if (v51)
              {
                goto LABEL_162;
              }

              v226 = v222;
              if (v221[3] >= v225)
              {
                if ((v220 & 1) == 0)
                {
                  v246 = v194;
                  sub_1010050E8();
                  v194 = v246;
                }
              }

              else
              {
                sub_100FE65C4(v225, v220);
                v194 = sub_100771D58(v262, v263);
                if ((v226 & 1) != (v227 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v260;
              if (v226)
              {
                goto LABEL_10;
              }

              v25 = v264;
              v264[(v194 >> 6) + 8] |= 1 << v194;
              v235 = (v25[6] + 16 * v194);
              v236 = v263;
              *v235 = v262;
              v235[1] = v236;
              v237 = (v25[7] + 48 * v194);
              v238 = *&v266[9];
              v239 = *v266;
              *v237 = v265;
              v237[1] = v239;
              *(&v237[1]._object + 1) = v238;
              v240 = v25[2];
              v51 = __OFADD__(v240, 1);
              v234 = v240 + 1;
              if (v51)
              {
                goto LABEL_165;
              }

LABEL_146:
              v25[2] = v234;
            }

            a1[14] = v25;
            swift_endAccess();

            sub_101010148(*&v6, v33);
            goto LABEL_12;
          }

          v250 = v86;
          v265._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v151 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v152 = v83;
          v153 = v151;
          v154 = v152;
          v155 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v153)
          {
            if (v155 > 64)
            {
              v248 = v247;
              __chkstk_darwin(v155);
              v251 = v247 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v157 = *(*(v154 + 32) + 8);
              v158 = dispatch thunk of static Comparable.< infix(_:_:)();
              v86 = v250;
              (v250[1])(v251, v84);
              goto LABEL_105;
            }
          }

          else if (v155 >= 64)
          {
            v248 = v247;
            __chkstk_darwin(v155);
            v160 = v247 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v161 = *(*(v154 + 32) + 8);
            v158 = dispatch thunk of static Comparable.< infix(_:_:)();
            v86 = v250;
            (v250[1])(v160, v84);
LABEL_105:
            if (v158)
            {
              goto LABEL_163;
            }

            goto LABEL_106;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v86 = v250;
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

      v10 = isa;
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v42 = v33;
        v10 = v10;
        v43 = String.init(_:)(v41);
        v44 = sub_1000DF96C();
        swift_beginAccess();
        v270 = v43;
        *&v271[8] = &type metadata for String;
        *&v271[16] = v44;
        v271[24] = 1;
        v45 = a1[14];
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v267[0] = a1[14];
        v46 = v267[0];
        a1[14] = 0x8000000000000000;
        v47 = sub_100771D58(v262, v263);
        v49 = *(v46 + 16);
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          __break(1u);
          goto LABEL_152;
        }

        v53 = v48;
        if (*(v46 + 24) >= v52)
        {
          if ((v11 & 1) == 0)
          {
            v241 = v47;
            sub_1010050E8();
            v47 = v241;
          }
        }

        else
        {
          sub_100FE65C4(v52, v11);
          v47 = sub_100771D58(v262, v263);
          if ((v53 & 1) != (v54 & 1))
          {
            goto LABEL_167;
          }
        }

        a1 = v260;
        LOBYTE(v33) = v42;
        a3 = v258;
        if (v53)
        {
          v74 = v47;

          v75 = v267[0];
          sub_10118B568(&v270, *(v267[0] + 56) + 48 * v74);
        }

        else
        {
          v75 = v267[0];
          *(v267[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v76 = (v75[6] + 16 * v47);
          v77 = v263;
          *v76 = v262;
          v76[1] = v77;
          v78 = (v75[7] + 48 * v47);
          v79 = *&v271[9];
          v80 = *v271;
          *v78 = v270;
          v78[1] = v80;
          *(&v78[1]._object + 1) = v79;
          v81 = v75[2];
          v51 = __OFADD__(v81, 1);
          v82 = v81 + 1;
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

          v75[2] = v82;
        }

        a1[14] = v75;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = v55;
        [v55 doubleValue];
        v58 = v57;
        v59 = [v56 integerValue];
        a3 = v258;
        if (v58 == v59)
        {
          v60 = v59;
          v61 = sub_1000DFAD8();
          swift_beginAccess();
          v270._countAndFlagsBits = v60;
          *&v271[8] = &type metadata for Int;
          *&v271[16] = v61;
          v271[24] = 2;
          v62 = a1[14];
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v64 = a1;
          v65 = v63;
          v267[0] = v64[14];
          v66 = v267[0];
          v64[14] = 0x8000000000000000;
          v67 = sub_100771D58(v262, v263);
          v69 = *(v66 + 16);
          v70 = (v68 & 1) == 0;
          v51 = __OFADD__(v69, v70);
          v71 = v69 + v70;
          if (v51)
          {
            goto LABEL_155;
          }

          v72 = v68;
          if (*(v66 + 24) >= v71)
          {
            if ((v65 & 1) == 0)
            {
              v243 = v67;
              sub_1010050E8();
              v67 = v243;
            }
          }

          else
          {
            sub_100FE65C4(v71, v65);
            v67 = sub_100771D58(v262, v263);
            if ((v72 & 1) != (v73 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v260;
          if ((v72 & 1) == 0)
          {
            v122 = v267[0];
            *(v267[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
            v123 = (v122[6] + 16 * v67);
            v124 = v263;
            *v123 = v262;
            v123[1] = v124;
            v125 = (v122[7] + 48 * v67);
            v126 = *&v271[9];
            v127 = *v271;
            *v125 = v270;
            v125[1] = v127;
            *(&v125[1]._object + 1) = v126;
            v128 = v122[2];
            v51 = __OFADD__(v128, 1);
            v129 = v128 + 1;
            if (v51)
            {
              goto LABEL_159;
            }

            goto LABEL_82;
          }

LABEL_80:
          v130 = v67;

          v122 = v267[0];
          sub_10118B568(&v270, *(v267[0] + 56) + 48 * v130);
        }

        else
        {
          v110 = sub_1000DFA84();
          swift_beginAccess();
          *&v270._countAndFlagsBits = v58;
          *&v271[8] = &type metadata for Double;
          *&v271[16] = v110;
          v271[24] = 3;
          v111 = a1[14];
          v112 = swift_isUniquelyReferenced_nonNull_native();
          v113 = a1;
          v114 = v112;
          v267[0] = v113[14];
          v115 = v267[0];
          v113[14] = 0x8000000000000000;
          v67 = sub_100771D58(v262, v263);
          v117 = *(v115 + 16);
          v118 = (v116 & 1) == 0;
          v51 = __OFADD__(v117, v118);
          v119 = v117 + v118;
          if (v51)
          {
            goto LABEL_158;
          }

          v120 = v116;
          if (*(v115 + 24) >= v119)
          {
            if ((v114 & 1) == 0)
            {
              v244 = v67;
              sub_1010050E8();
              v67 = v244;
            }
          }

          else
          {
            sub_100FE65C4(v119, v114);
            v67 = sub_100771D58(v262, v263);
            if ((v120 & 1) != (v121 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v260;
          if (v120)
          {
            goto LABEL_80;
          }

          v122 = v267[0];
          *(v267[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
          v131 = (v122[6] + 16 * v67);
          v132 = v263;
          *v131 = v262;
          v131[1] = v132;
          v133 = (v122[7] + 48 * v67);
          v134 = *&v271[9];
          v135 = *v271;
          *v133 = v270;
          v133[1] = v135;
          *(&v133[1]._object + 1) = v134;
          v136 = v122[2];
          v51 = __OFADD__(v136, 1);
          v129 = v136 + 1;
          if (v51)
          {
            goto LABEL_161;
          }

LABEL_82:
          v122[2] = v129;
        }

        a1[14] = v122;
        swift_endAccess();
LABEL_84:

        v102 = v6;
        v103 = v33;
        goto LABEL_85;
      }

      LODWORD(v262) = v33;

      a3 = v258;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_1000076D4(v95, qword_10177C6D0);
      v96 = v10;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v97, v98))
      {

        sub_101010148(*&v6, v262);
        goto LABEL_13;
      }

      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = v256;
      *(v99 + 4) = v96;
      *v100 = v96;
      v101 = v96;
      _os_log_impl(&_mh_execute_header, v97, v98, "Unsupported value type: %@!", v99, 0xCu);
      sub_10000B3A8(v100, &qword_10169BB30, &unk_10138B3C0);
      a1 = v260;

      v102 = v6;
      v103 = v262;
LABEL_85:
      sub_101010148(*&v102, v103);
LABEL_13:
      v19 = v259;
    }

    while (1)
    {
      v26 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v26 >= a3)
      {

        return;
      }

      v22 = *(v19 + 8 * v26);
      ++a5;
      if (v22)
      {
        a5 = v26;
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
    v270._countAndFlagsBits = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000136BC(v10, v11, &v270._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v13, v14, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v15, 0xCu);
    sub_100007BAC(v16);
  }
}

void sub_101189A9C(void *a1, uint64_t a2, int64_t a3, uint64_t a4, int64_t a5)
{
  v6 = v5;
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

    v257 = v6;
    v255 = a3;
    v254 = a5;
    v17 = sub_1011681B0();
    v19 = v17 + 64;
    v18 = *(v17 + 64);
    v261 = v17;
    v20 = 1 << *(v17 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    swift_beginAccess();
    a5 = 0;
    a3 = (v20 + 63) >> 6;
    *&v23 = 138412290;
    v256 = v23;
    v260 = a1;
    v258 = a3;
    v259 = v19;
    while (v22)
    {
LABEL_19:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = (a5 << 10) | (16 * v27);
      v29 = *(v261 + 56);
      v30 = (*(v261 + 48) + v28);
      v31 = v30[1];
      v262 = *v30;
      v32 = v29 + v28;
      v6 = *v32;
      v33 = *(v32 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v263 = v31;

      sub_10090C56C(*&v6, v33);
      if (v35)
      {

        v36 = sub_100771D58(v262, v263);
        if (v37)
        {
          sub_1010100EC(*(v34 + 56) + 48 * v36, &v269);

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

            v104 = v38;
            goto LABEL_108;
          }

          if (v33 != 2)
          {
            sub_1010100EC(&v269, &v264);
            if (v265[24] != 3)
            {
LABEL_148:

              sub_10118B5A0(&v264);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v269);
              return;
            }

            sub_10000A748(&v264._countAndFlagsBits, v266);
            v105 = v267;
            v106 = sub_1000035D0(v266, v267);
            v107 = *(*(v105 - 8) + 64);
            __chkstk_darwin(v106);
            (*(v109 + 16))(v247 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v260;
            v104 = [objc_allocWithZone(NSNumber) initWithDouble:*&v264._countAndFlagsBits + v6];
            sub_100007BAC(v266);
            goto LABEL_108;
          }

          sub_1010100EC(&v269, &v264);
          if (v265[24] != 2)
          {
            goto LABEL_148;
          }

          v252 = v6;
          sub_10000A748(&v264._countAndFlagsBits, v266);
          v84 = v267;
          v83 = v268;
          v85 = sub_1000035D0(v266, v267);
          v253 = v247;
          v86 = *(v84 - 8);
          v87 = v86[8];
          __chkstk_darwin(v85);
          v251 = v88;
          v89 = v247 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v86[2])(v89);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_95;
          }

          v264._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v90 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v90 >= 64)
            {
              v249 = v83;
              v250 = v247;
              __chkstk_darwin(v90);
              v92 = v247 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v93 = *(*(v249 + 32) + 8);
              v94 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v86[1])(v92, v84);
              v83 = v249;
              if (v94)
              {
                goto LABEL_166;
              }

              goto LABEL_95;
            }

LABEL_94:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_95;
          }

          LODWORD(v250) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v137 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v250 & 1) == 0)
          {
            if (v137 >= 64)
            {
              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v249 = v83;
          if (v137 <= 64)
          {
            v250 = *(*(v83 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v248 = v247;
            v144 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            __chkstk_darwin(AssociatedTypeWitness);
            v247[0] = v247 - v145;
            swift_getAssociatedConformanceWitness();
            v146 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v247[1] = v247;
            __chkstk_darwin(v146);
            v148 = v247 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v149 = *(*(v249 + 32) + 8);
            v150 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v86[1])(v148, v84);
            if (v150)
            {
              goto LABEL_166;
            }

            v83 = v249;
            goto LABEL_94;
          }

          v250 = v247;
          __chkstk_darwin(v137);
          v139 = v247 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v140 = *(*(v249 + 32) + 8);
          v141 = dispatch thunk of static Comparable.< infix(_:_:)();
          v142 = v139;
          v83 = v249;
          (v86[1])(v142, v84);
          if (v141)
          {
            goto LABEL_166;
          }

LABEL_95:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_106:
            v162 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v86[1])(v89, v84);
            v6 = v252;
            v51 = __OFADD__(v162, *&v252);
            v163 = v162 + *&v252;
            if (v51)
            {
              goto LABEL_157;
            }

            v104 = [objc_allocWithZone(NSNumber) initWithLongLong:v163];
            sub_100007BAC(v266);
            a1 = v260;
LABEL_108:
            objc_opt_self();
            v164 = swift_dynamicCastObjCClass();
            if (v164)
            {
              v165 = v164;
              v166 = v33;
              v167 = v104;
              v168 = String.init(_:)(v165);
              v169 = a1;
              v170 = sub_1000DF96C();
              swift_beginAccess();
              v264 = v168;
              *&v265[8] = &type metadata for String;
              *&v265[16] = v170;
              v265[24] = 1;
              v171 = v169[14];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v271 = v169[14];
              v173 = v271;
              v169[14] = 0x8000000000000000;
              v174 = sub_100771D58(v262, v263);
              v176 = v173[2];
              v177 = (v175 & 1) == 0;
              v51 = __OFADD__(v176, v177);
              v178 = v176 + v177;
              if (v51)
              {
                goto LABEL_154;
              }

              v179 = v175;
              if (v173[3] >= v178)
              {
                v181 = v166;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v242 = v174;
                  sub_1010050E8();
                  v174 = v242;
                }
              }

              else
              {
                sub_100FE65C4(v178, isUniquelyReferenced_nonNull_native);
                v174 = sub_100771D58(v262, v263);
                if ((v179 & 1) != (v180 & 1))
                {
                  goto LABEL_167;
                }

                v181 = v166;
              }

              a1 = v260;
              a3 = v258;
              if (v179)
              {
                v201 = v174;

                v202 = v271;
                sub_10118B568(&v264, v271[7] + 48 * v201);
              }

              else
              {
                v202 = v271;
                v271[(v174 >> 6) + 8] |= 1 << v174;
                v203 = (v202[6] + 16 * v174);
                v204 = v263;
                *v203 = v262;
                v203[1] = v204;
                v205 = (v202[7] + 48 * v174);
                v206 = *&v265[9];
                v207 = *v265;
                *v205 = v264;
                v205[1] = v207;
                *(&v205[1]._object + 1) = v206;
                v208 = v202[2];
                v51 = __OFADD__(v208, 1);
                v209 = v208 + 1;
                if (v51)
                {
                  goto LABEL_156;
                }

                v202[2] = v209;
              }

              a1[14] = v202;
              swift_endAccess();
              sub_101010148(*&v6, v181);

LABEL_126:
              goto LABEL_12;
            }

            objc_opt_self();
            v182 = swift_dynamicCastObjCClass();
            if (!v182)
            {
              LODWORD(v262) = v33;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v210 = type metadata accessor for Logger();
              sub_1000076D4(v210, qword_10177C6D0);
              v211 = v104;
              v167 = Logger.logObject.getter();
              v212 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v167, v212))
              {

                sub_101010148(*&v6, v262);
                goto LABEL_126;
              }

              v213 = swift_slowAlloc();
              v214 = swift_slowAlloc();
              *v213 = v256;
              *(v213 + 4) = v211;
              *v214 = v211;
              v215 = v211;
              _os_log_impl(&_mh_execute_header, v167, v212, "Unsupported value type: %@!", v213, 0xCu);
              sub_10000B3A8(v214, &qword_10169BB30, &unk_10138B3C0);
              a1 = v260;

              sub_101010148(*&v6, v262);
LABEL_12:
              sub_10118B5A0(&v269);
              goto LABEL_13;
            }

            v183 = v182;
            [v182 doubleValue];
            v185 = v184;
            v186 = [v183 integerValue];
            if (v185 == v186)
            {
              v187 = v186;
              v188 = sub_1000DFAD8();
              swift_beginAccess();
              v264._countAndFlagsBits = v187;
              *&v265[8] = &type metadata for Int;
              *&v265[16] = v188;
              v265[24] = 2;
              v189 = a1[14];
              v190 = swift_isUniquelyReferenced_nonNull_native();
              v191 = a1;
              v192 = v190;
              v271 = v191[14];
              v193 = v271;
              v191[14] = 0x8000000000000000;
              v194 = sub_100771D58(v262, v263);
              v196 = v193[2];
              v197 = (v195 & 1) == 0;
              v51 = __OFADD__(v196, v197);
              v198 = v196 + v197;
              if (v51)
              {
                goto LABEL_160;
              }

              v199 = v195;
              if (v193[3] >= v198)
              {
                if ((v192 & 1) == 0)
                {
                  v245 = v194;
                  sub_1010050E8();
                  v194 = v245;
                }
              }

              else
              {
                sub_100FE65C4(v198, v192);
                v194 = sub_100771D58(v262, v263);
                if ((v199 & 1) != (v200 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v260;
              if ((v199 & 1) == 0)
              {
                v25 = v271;
                v271[(v194 >> 6) + 8] |= 1 << v194;
                v228 = (v25[6] + 16 * v194);
                v229 = v263;
                *v228 = v262;
                v228[1] = v229;
                v230 = (v25[7] + 48 * v194);
                v231 = *&v265[9];
                v232 = *v265;
                *v230 = v264;
                v230[1] = v232;
                *(&v230[1]._object + 1) = v231;
                v233 = v25[2];
                v51 = __OFADD__(v233, 1);
                v234 = v233 + 1;
                if (v51)
                {
                  goto LABEL_164;
                }

                goto LABEL_146;
              }

LABEL_10:
              v24 = v194;

              v25 = v271;
              sub_10118B568(&v264, v271[7] + 48 * v24);
            }

            else
            {
              v216 = sub_1000DFA84();
              swift_beginAccess();
              *&v264._countAndFlagsBits = v185;
              *&v265[8] = &type metadata for Double;
              *&v265[16] = v216;
              v265[24] = 3;
              v217 = a1[14];
              v218 = swift_isUniquelyReferenced_nonNull_native();
              v219 = a1;
              v220 = v218;
              v271 = v219[14];
              v221 = v271;
              v219[14] = 0x8000000000000000;
              v194 = sub_100771D58(v262, v263);
              v223 = v221[2];
              v224 = (v222 & 1) == 0;
              v51 = __OFADD__(v223, v224);
              v225 = v223 + v224;
              if (v51)
              {
                goto LABEL_162;
              }

              v226 = v222;
              if (v221[3] >= v225)
              {
                if ((v220 & 1) == 0)
                {
                  v246 = v194;
                  sub_1010050E8();
                  v194 = v246;
                }
              }

              else
              {
                sub_100FE65C4(v225, v220);
                v194 = sub_100771D58(v262, v263);
                if ((v226 & 1) != (v227 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v260;
              if (v226)
              {
                goto LABEL_10;
              }

              v25 = v271;
              v271[(v194 >> 6) + 8] |= 1 << v194;
              v235 = (v25[6] + 16 * v194);
              v236 = v263;
              *v235 = v262;
              v235[1] = v236;
              v237 = (v25[7] + 48 * v194);
              v238 = *&v265[9];
              v239 = *v265;
              *v237 = v264;
              v237[1] = v239;
              *(&v237[1]._object + 1) = v238;
              v240 = v25[2];
              v51 = __OFADD__(v240, 1);
              v234 = v240 + 1;
              if (v51)
              {
                goto LABEL_165;
              }

LABEL_146:
              v25[2] = v234;
            }

            a1[14] = v25;
            swift_endAccess();

            sub_101010148(*&v6, v33);
            goto LABEL_12;
          }

          v250 = v86;
          v264._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v151 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v152 = v83;
          v153 = v151;
          v154 = v152;
          v155 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v153)
          {
            if (v155 > 64)
            {
              v248 = v247;
              __chkstk_darwin(v155);
              v251 = v247 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v157 = *(*(v154 + 32) + 8);
              v158 = dispatch thunk of static Comparable.< infix(_:_:)();
              v86 = v250;
              (v250[1])(v251, v84);
              goto LABEL_105;
            }
          }

          else if (v155 >= 64)
          {
            v248 = v247;
            __chkstk_darwin(v155);
            v160 = v247 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v161 = *(*(v154 + 32) + 8);
            v158 = dispatch thunk of static Comparable.< infix(_:_:)();
            v86 = v250;
            (v250[1])(v160, v84);
LABEL_105:
            if (v158)
            {
              goto LABEL_163;
            }

            goto LABEL_106;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v86 = v250;
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

      v10 = isa;
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v42 = v33;
        v10 = v10;
        v43 = String.init(_:)(v41);
        v44 = sub_1000DF96C();
        swift_beginAccess();
        v269 = v43;
        *&v270[8] = &type metadata for String;
        *&v270[16] = v44;
        v270[24] = 1;
        v45 = a1[14];
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v266[0] = a1[14];
        v46 = v266[0];
        a1[14] = 0x8000000000000000;
        v47 = sub_100771D58(v262, v263);
        v49 = *(v46 + 16);
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          __break(1u);
          goto LABEL_152;
        }

        v53 = v48;
        if (*(v46 + 24) >= v52)
        {
          if ((v11 & 1) == 0)
          {
            v241 = v47;
            sub_1010050E8();
            v47 = v241;
          }
        }

        else
        {
          sub_100FE65C4(v52, v11);
          v47 = sub_100771D58(v262, v263);
          if ((v53 & 1) != (v54 & 1))
          {
            goto LABEL_167;
          }
        }

        a1 = v260;
        LOBYTE(v33) = v42;
        a3 = v258;
        if (v53)
        {
          v74 = v47;

          v75 = v266[0];
          sub_10118B568(&v269, *(v266[0] + 56) + 48 * v74);
        }

        else
        {
          v75 = v266[0];
          *(v266[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v76 = (v75[6] + 16 * v47);
          v77 = v263;
          *v76 = v262;
          v76[1] = v77;
          v78 = (v75[7] + 48 * v47);
          v79 = *&v270[9];
          v80 = *v270;
          *v78 = v269;
          v78[1] = v80;
          *(&v78[1]._object + 1) = v79;
          v81 = v75[2];
          v51 = __OFADD__(v81, 1);
          v82 = v81 + 1;
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

          v75[2] = v82;
        }

        a1[14] = v75;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = v55;
        [v55 doubleValue];
        v58 = v57;
        v59 = [v56 integerValue];
        a3 = v258;
        if (v58 == v59)
        {
          v60 = v59;
          v61 = sub_1000DFAD8();
          swift_beginAccess();
          v269._countAndFlagsBits = v60;
          *&v270[8] = &type metadata for Int;
          *&v270[16] = v61;
          v270[24] = 2;
          v62 = a1[14];
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v64 = a1;
          v65 = v63;
          v266[0] = v64[14];
          v66 = v266[0];
          v64[14] = 0x8000000000000000;
          v67 = sub_100771D58(v262, v263);
          v69 = *(v66 + 16);
          v70 = (v68 & 1) == 0;
          v51 = __OFADD__(v69, v70);
          v71 = v69 + v70;
          if (v51)
          {
            goto LABEL_155;
          }

          v72 = v68;
          if (*(v66 + 24) >= v71)
          {
            if ((v65 & 1) == 0)
            {
              v243 = v67;
              sub_1010050E8();
              v67 = v243;
            }
          }

          else
          {
            sub_100FE65C4(v71, v65);
            v67 = sub_100771D58(v262, v263);
            if ((v72 & 1) != (v73 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v260;
          if ((v72 & 1) == 0)
          {
            v122 = v266[0];
            *(v266[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
            v123 = (v122[6] + 16 * v67);
            v124 = v263;
            *v123 = v262;
            v123[1] = v124;
            v125 = (v122[7] + 48 * v67);
            v126 = *&v270[9];
            v127 = *v270;
            *v125 = v269;
            v125[1] = v127;
            *(&v125[1]._object + 1) = v126;
            v128 = v122[2];
            v51 = __OFADD__(v128, 1);
            v129 = v128 + 1;
            if (v51)
            {
              goto LABEL_159;
            }

            goto LABEL_82;
          }

LABEL_80:
          v130 = v67;

          v122 = v266[0];
          sub_10118B568(&v269, *(v266[0] + 56) + 48 * v130);
        }

        else
        {
          v110 = sub_1000DFA84();
          swift_beginAccess();
          *&v269._countAndFlagsBits = v58;
          *&v270[8] = &type metadata for Double;
          *&v270[16] = v110;
          v270[24] = 3;
          v111 = a1[14];
          v112 = swift_isUniquelyReferenced_nonNull_native();
          v113 = a1;
          v114 = v112;
          v266[0] = v113[14];
          v115 = v266[0];
          v113[14] = 0x8000000000000000;
          v67 = sub_100771D58(v262, v263);
          v117 = *(v115 + 16);
          v118 = (v116 & 1) == 0;
          v51 = __OFADD__(v117, v118);
          v119 = v117 + v118;
          if (v51)
          {
            goto LABEL_158;
          }

          v120 = v116;
          if (*(v115 + 24) >= v119)
          {
            if ((v114 & 1) == 0)
            {
              v244 = v67;
              sub_1010050E8();
              v67 = v244;
            }
          }

          else
          {
            sub_100FE65C4(v119, v114);
            v67 = sub_100771D58(v262, v263);
            if ((v120 & 1) != (v121 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v260;
          if (v120)
          {
            goto LABEL_80;
          }

          v122 = v266[0];
          *(v266[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
          v131 = (v122[6] + 16 * v67);
          v132 = v263;
          *v131 = v262;
          v131[1] = v132;
          v133 = (v122[7] + 48 * v67);
          v134 = *&v270[9];
          v135 = *v270;
          *v133 = v269;
          v133[1] = v135;
          *(&v133[1]._object + 1) = v134;
          v136 = v122[2];
          v51 = __OFADD__(v136, 1);
          v129 = v136 + 1;
          if (v51)
          {
            goto LABEL_161;
          }

LABEL_82:
          v122[2] = v129;
        }

        a1[14] = v122;
        swift_endAccess();
LABEL_84:

        v102 = v6;
        v103 = v33;
        goto LABEL_85;
      }

      LODWORD(v262) = v33;

      a3 = v258;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_1000076D4(v95, qword_10177C6D0);
      v96 = v10;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v97, v98))
      {

        sub_101010148(*&v6, v262);
        goto LABEL_13;
      }

      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = v256;
      *(v99 + 4) = v96;
      *v100 = v96;
      v101 = v96;
      _os_log_impl(&_mh_execute_header, v97, v98, "Unsupported value type: %@!", v99, 0xCu);
      sub_10000B3A8(v100, &qword_10169BB30, &unk_10138B3C0);
      a1 = v260;

      v102 = v6;
      v103 = v262;
LABEL_85:
      sub_101010148(*&v102, v103);
LABEL_13:
      v19 = v259;
    }

    while (1)
    {
      v26 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v26 >= a3)
      {

        return;
      }

      v22 = *(v19 + 8 * v26);
      ++a5;
      if (v22)
      {
        a5 = v26;
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
    v269._countAndFlagsBits = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000136BC(v10, v11, &v269._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v13, v14, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v15, 0xCu);
    sub_100007BAC(v16);
  }
}

unint64_t sub_10118B5D0()
{
  result = qword_1016C9728;
  if (!qword_1016C9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9728);
  }

  return result;
}

void sub_10118B624(void *a1, unint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v14 = a1[15];
    v15 = a1[16];
    v16 = sub_10111EACC(v14, v15, qword_10177C6E8);
    v251 = a1;
    if (v16)
    {
      break;
    }

    v246 = v7;
    v244 = a3;
    v22 = sub_10116870C(a2, a3, a4, a5, a6);
    v24 = v22 + 64;
    v23 = *(v22 + 64);
    v250 = v22;
    v25 = 1 << *(v22 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    a2 = v26 & v23;
    swift_beginAccess();
    v7 = 0;
    a3 = (v25 + 63) >> 6;
    *&v27 = 138412290;
    v245 = v27;
    v248 = a3;
    v249 = v24;
    while (a2)
    {
LABEL_15:
      v29 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v30 = (v7 << 10) | (16 * v29);
      v31 = *(v250 + 56);
      v32 = (*(v250 + 48) + v30);
      v33 = v32[1];
      v252 = *v32;
      v34 = v31 + v30;
      a5 = *v34;
      a4 = *(v34 + 8);
      v35 = a1[14];
      v36 = *(v35 + 16);
      v253 = v33;

      sub_10090C56C(a5, a4);
      if (v36)
      {

        v37 = sub_100771D58(v252, v253);
        if ((v38 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v35 + 56) + 48 * v37, &v260);

        if (a4 <= 1)
        {
          if (a4)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v39 = NSNumber.init(BOOLeanLiteral:)(a5 & 1).super.super.isa;
          }

          else
          {
            v39 = a5;
          }

          v101 = v39;
          goto LABEL_104;
        }

        if (a4 != 2)
        {
          sub_1010100EC(&v260, &v255);
          if (v256[24] != 3)
          {
LABEL_147:

            sub_10118B5A0(&v255);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v260);
            return;
          }

          sub_10000A748(&v255._countAndFlagsBits, v257);
          v102 = v258;
          v103 = sub_1000035D0(v257, v258);
          v104 = *(*(v102 - 8) + 64);
          __chkstk_darwin(v103);
          (*(v106 + 16))(v238 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          a1 = v251;
          BinaryFloatingPoint.init<A>(_:)();
          v101 = [objc_allocWithZone(NSNumber) initWithDouble:*&v255._countAndFlagsBits + *&a5];
          sub_100007BAC(v257);
          goto LABEL_104;
        }

        sub_1010100EC(&v260, &v255);
        if (v256[24] != 2)
        {
          goto LABEL_147;
        }

        v247 = a5;
        sub_10000A748(&v255._countAndFlagsBits, v257);
        v84 = v258;
        v83 = v259;
        v85 = sub_1000035D0(v257, v258);
        v86 = *(*(v84 - 8) + 64);
        __chkstk_darwin(v85);
        v242 = v87;
        v88 = v238 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
        v243 = v89;
        (*(v89 + 16))(v88);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v255._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v90 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v90 < 64)
            {
              goto LABEL_90;
            }

            v240 = v83;
            v241 = v238;
            __chkstk_darwin(v90);
            v92 = v238 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v93 = *(*(v240 + 32) + 8);
            v94 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v243 + 8))(v92, v84);
            v83 = v240;
            if (v94)
            {
              goto LABEL_165;
            }
          }

          else
          {
            LODWORD(v241) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v131 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v241)
            {
              v240 = v83;
              if (v131 <= 64)
              {
                v241 = *(*(v83 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v239 = v238;
                v138 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v238[0] = v238 - v139;
                swift_getAssociatedConformanceWitness();
                v140 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v238[1] = v238;
                __chkstk_darwin(v140);
                v142 = v238 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v143 = *(*(v240 + 32) + 8);
                v144 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v243 + 8))(v142, v84);
                if (v144)
                {
                  goto LABEL_165;
                }

                v83 = v240;
LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v241 = v238;
              __chkstk_darwin(v131);
              v133 = v238 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v134 = *(*(v240 + 32) + 8);
              v135 = dispatch thunk of static Comparable.< infix(_:_:)();
              v136 = v133;
              v83 = v240;
              (*(v243 + 8))(v136, v84);
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
          v241 = v238;
          v255._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v145 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v146 = v83;
          v147 = v145;
          v148 = v146;
          v149 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v147)
          {
            if (v149 > 64)
            {
              v239 = v238;
              __chkstk_darwin(v149);
              v242 = v238 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v151 = *(*(v148 + 32) + 8);
              v152 = v242;
              v153 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v243 + 8))(v152, v84);
              goto LABEL_101;
            }
          }

          else if (v149 >= 64)
          {
            v239 = v238;
            __chkstk_darwin(v149);
            v155 = v238 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v156 = *(*(v148 + 32) + 8);
            v153 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v243 + 8))(v155, v84);
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
        (*(v243 + 8))(v88, v84);
        a5 = v247;
        v52 = __OFADD__(v157, v247);
        v158 = &v247[v157];
        if (v52)
        {
          goto LABEL_156;
        }

        v101 = [objc_allocWithZone(NSNumber) initWithLongLong:v158];
        sub_100007BAC(v257);
        a1 = v251;
LABEL_104:
        objc_opt_self();
        v159 = swift_dynamicCastObjCClass();
        if (v159)
        {
          v160 = v159;
          v161 = a5;
          v162 = v101;
          v163 = String.init(_:)(v160);
          v164 = sub_1000DF96C();
          swift_beginAccess();
          v255 = v163;
          *&v256[8] = &type metadata for String;
          *&v256[16] = v164;
          v256[24] = 1;
          v165 = a1[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v254 = a1[14];
          v167 = v254;
          a1[14] = 0x8000000000000000;
          v168 = sub_100771D58(v252, v253);
          v170 = v167[2];
          v171 = (v169 & 1) == 0;
          v52 = __OFADD__(v170, v171);
          v172 = v170 + v171;
          if (v52)
          {
            goto LABEL_153;
          }

          v173 = v169;
          if (v167[3] >= v172)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v233 = v168;
              sub_1010050E8();
              v168 = v233;
            }
          }

          else
          {
            sub_100FE65C4(v172, isUniquelyReferenced_nonNull_native);
            v168 = sub_100771D58(v252, v253);
            if ((v173 & 1) != (v174 & 1))
            {
              goto LABEL_166;
            }
          }

          a3 = v248;
          a5 = v161;
          v24 = v249;
          if (v173)
          {
            v194 = v168;

            a6 = v254;
            sub_10118B568(&v255, v254[7] + 48 * v194);
          }

          else
          {
            a6 = v254;
            v254[(v168 >> 6) + 8] |= 1 << v168;
            v195 = (a6[6] + 16 * v168);
            v196 = v253;
            *v195 = v252;
            v195[1] = v196;
            v197 = (a6[7] + 48 * v168);
            v198 = *&v256[9];
            v199 = *v256;
            *v197 = v255;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = a6[2];
            v52 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v52)
            {
              goto LABEL_155;
            }

            a6[2] = v201;
          }

          a1 = v251;
          v251[14] = a6;
          swift_endAccess();
          sub_101010148(a5, a4);
        }

        else
        {

          objc_opt_self();
          v175 = swift_dynamicCastObjCClass();
          if (v175)
          {
            v247 = a5;
            v176 = v175;
            [v175 doubleValue];
            v178 = v177;
            v179 = [v176 integerValue];
            v24 = v249;
            if (v178 == v179)
            {
              v180 = v179;
              v181 = a4;
              v182 = a1;
              v183 = sub_1000DFAD8();
              swift_beginAccess();
              v255._countAndFlagsBits = v180;
              *&v256[8] = &type metadata for Int;
              *&v256[16] = v183;
              v256[24] = 2;
              v184 = v182[14];
              v185 = swift_isUniquelyReferenced_nonNull_native();
              v254 = v182[14];
              v186 = v254;
              v182[14] = 0x8000000000000000;
              v187 = sub_100771D58(v252, v253);
              v189 = v186[2];
              v190 = (v188 & 1) == 0;
              v52 = __OFADD__(v189, v190);
              v191 = v189 + v190;
              if (v52)
              {
                goto LABEL_159;
              }

              v192 = v188;
              a4 = v181;
              if (v186[3] >= v191)
              {
                a3 = v248;
                if ((v185 & 1) == 0)
                {
                  v236 = v187;
                  sub_1010050E8();
                  v187 = v236;
                }
              }

              else
              {
                sub_100FE65C4(v191, v185);
                v187 = sub_100771D58(v252, v253);
                a3 = v248;
                if ((v192 & 1) != (v193 & 1))
                {
                  goto LABEL_166;
                }
              }

              a5 = v247;
              if ((v192 & 1) == 0)
              {
                a6 = v254;
                v254[(v187 >> 6) + 8] |= 1 << v187;
                v218 = (a6[6] + 16 * v187);
                v219 = v253;
                *v218 = v252;
                v218[1] = v219;
                v220 = (a6[7] + 48 * v187);
                v221 = *&v256[9];
                v222 = *v256;
                *v220 = v255;
                v220[1] = v222;
                *(&v220[1]._object + 1) = v221;
                v223 = a6[2];
                v52 = __OFADD__(v223, 1);
                v224 = v223 + 1;
                if (v52)
                {
                  goto LABEL_163;
                }

                goto LABEL_143;
              }

LABEL_141:
              v225 = v187;

              a6 = v254;
              sub_10118B568(&v255, v254[7] + 48 * v225);
            }

            else
            {
              v208 = sub_1000DFA84();
              swift_beginAccess();
              *&v255._countAndFlagsBits = v178;
              *&v256[8] = &type metadata for Double;
              *&v256[16] = v208;
              v256[24] = 3;
              v209 = a1[14];
              v210 = swift_isUniquelyReferenced_nonNull_native();
              v254 = a1[14];
              v211 = v254;
              a1[14] = 0x8000000000000000;
              v187 = sub_100771D58(v252, v253);
              v213 = v211[2];
              v214 = (v212 & 1) == 0;
              v52 = __OFADD__(v213, v214);
              v215 = v213 + v214;
              if (v52)
              {
                goto LABEL_161;
              }

              v216 = v212;
              if (v211[3] >= v215)
              {
                if ((v210 & 1) == 0)
                {
                  v237 = v187;
                  sub_1010050E8();
                  v187 = v237;
                }
              }

              else
              {
                sub_100FE65C4(v215, v210);
                v187 = sub_100771D58(v252, v253);
                if ((v216 & 1) != (v217 & 1))
                {
                  goto LABEL_166;
                }
              }

              a5 = v247;
              if (v216)
              {
                goto LABEL_141;
              }

              a6 = v254;
              v254[(v187 >> 6) + 8] |= 1 << v187;
              v226 = (a6[6] + 16 * v187);
              v227 = v253;
              *v226 = v252;
              v226[1] = v227;
              v228 = (a6[7] + 48 * v187);
              v229 = *&v256[9];
              v230 = *v256;
              *v228 = v255;
              v228[1] = v230;
              *(&v228[1]._object + 1) = v229;
              v231 = a6[2];
              v52 = __OFADD__(v231, 1);
              v224 = v231 + 1;
              if (v52)
              {
                goto LABEL_164;
              }

LABEL_143:
              a6[2] = v224;
            }

            a1 = v251;
            v251[14] = a6;
            swift_endAccess();

            sub_101010148(a5, a4);
            goto LABEL_145;
          }

          v24 = v249;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v202 = type metadata accessor for Logger();
          sub_1000076D4(v202, qword_10177C6D0);
          v203 = v101;
          v204 = Logger.logObject.getter();
          a6 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v204, a6))
          {
            *&v205 = COERCE_DOUBLE(swift_slowAlloc());
            v247 = a5;
            a5 = v205;
            v206 = swift_slowAlloc();
            LODWORD(v253) = a4;
            a4 = v206;
            *a5 = v245;
            *(a5 + 4) = v203;
            *v206 = v203;
            v207 = v203;
            _os_log_impl(&_mh_execute_header, v204, a6, "Unsupported value type: %@!", a5, 0xCu);
            sub_10000B3A8(a4, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v247, v253);
          }

          else
          {

            sub_101010148(a5, a4);
          }

          a1 = v251;
        }

LABEL_145:
        sub_10118B5A0(&v260);
      }

      else
      {
LABEL_21:
        if (a4 > 1)
        {
          if (a4 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:a5];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&a5];
          }
        }

        else if (a4)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(a5 & 1).super.super.isa;
        }

        else
        {
          isa = a5;
        }

        v14 = isa;
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
          v42 = v41;
          v15 = a5;
          v14 = v14;
          v43 = String.init(_:)(v42);
          v44 = sub_1000DF96C();
          swift_beginAccess();
          v260 = v43;
          *&v261[8] = &type metadata for String;
          *&v261[16] = v44;
          v261[24] = 1;
          v45 = a1[14];
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v257[0] = a1[14];
          v47 = v257[0];
          a1[14] = 0x8000000000000000;
          v48 = sub_100771D58(v252, v253);
          v50 = *(v47 + 16);
          v51 = (v49 & 1) == 0;
          v52 = __OFADD__(v50, v51);
          v53 = v50 + v51;
          if (v52)
          {
            __break(1u);
            goto LABEL_151;
          }

          v54 = v49;
          if (*(v47 + 24) >= v53)
          {
            if ((v46 & 1) == 0)
            {
              v232 = v48;
              sub_1010050E8();
              v48 = v232;
            }
          }

          else
          {
            sub_100FE65C4(v53, v46);
            v48 = sub_100771D58(v252, v253);
            if ((v54 & 1) != (v55 & 1))
            {
              goto LABEL_166;
            }
          }

          a3 = v248;
          a5 = v15;
          v24 = v249;
          if (v54)
          {
            v75 = v48;

            a6 = v257[0];
            sub_10118B568(&v260, *(v257[0] + 56) + 48 * v75);
          }

          else
          {
            a6 = v257[0];
            *(v257[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
            v76 = (a6[6] + 16 * v48);
            v77 = v253;
            *v76 = v252;
            v76[1] = v77;
            v78 = (a6[7] + 48 * v48);
            v79 = *&v261[9];
            v80 = *v261;
            *v78 = v260;
            v78[1] = v80;
            *(&v78[1]._object + 1) = v79;
            v81 = a6[2];
            v52 = __OFADD__(v81, 1);
            v82 = v81 + 1;
            if (v52)
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

            a6[2] = v82;
          }

          a1 = v251;
          v251[14] = a6;
          swift_endAccess();

LABEL_81:
          sub_101010148(a5, a4);
        }

        else
        {
          objc_opt_self();
          v56 = swift_dynamicCastObjCClass();
          if (v56)
          {
            v247 = a5;
            v57 = v56;
            [v56 doubleValue];
            v59 = v58;
            v60 = [v57 integerValue];
            v24 = v249;
            if (v59 == v60)
            {
              v61 = v60;
              v62 = a4;
              v63 = a1;
              v64 = sub_1000DFAD8();
              swift_beginAccess();
              v260._countAndFlagsBits = v61;
              *&v261[8] = &type metadata for Int;
              *&v261[16] = v64;
              v261[24] = 2;
              v65 = v63[14];
              v66 = swift_isUniquelyReferenced_nonNull_native();
              v257[0] = v63[14];
              v67 = v257[0];
              v63[14] = 0x8000000000000000;
              v68 = sub_100771D58(v252, v253);
              v70 = *(v67 + 16);
              v71 = (v69 & 1) == 0;
              v52 = __OFADD__(v70, v71);
              v72 = v70 + v71;
              if (v52)
              {
                goto LABEL_154;
              }

              v73 = v69;
              a4 = v62;
              if (*(v67 + 24) >= v72)
              {
                a3 = v248;
                if ((v66 & 1) == 0)
                {
                  v234 = v68;
                  sub_1010050E8();
                  v68 = v234;
                }
              }

              else
              {
                sub_100FE65C4(v72, v66);
                v68 = sub_100771D58(v252, v253);
                a3 = v248;
                if ((v73 & 1) != (v74 & 1))
                {
                  goto LABEL_166;
                }
              }

              a5 = v247;
              if ((v73 & 1) == 0)
              {
                a6 = v257[0];
                *(v257[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
                v117 = (a6[6] + 16 * v68);
                v118 = v253;
                *v117 = v252;
                v117[1] = v118;
                v119 = (a6[7] + 48 * v68);
                v120 = *&v261[9];
                v121 = *v261;
                *v119 = v260;
                v119[1] = v121;
                *(&v119[1]._object + 1) = v120;
                v122 = a6[2];
                v52 = __OFADD__(v122, 1);
                v123 = v122 + 1;
                if (v52)
                {
                  goto LABEL_158;
                }

                goto LABEL_79;
              }

LABEL_77:
              v124 = v68;

              a6 = v257[0];
              sub_10118B568(&v260, *(v257[0] + 56) + 48 * v124);
            }

            else
            {
              v107 = sub_1000DFA84();
              swift_beginAccess();
              *&v260._countAndFlagsBits = v59;
              *&v261[8] = &type metadata for Double;
              *&v261[16] = v107;
              v261[24] = 3;
              v108 = a1[14];
              v109 = swift_isUniquelyReferenced_nonNull_native();
              v257[0] = a1[14];
              v110 = v257[0];
              a1[14] = 0x8000000000000000;
              v68 = sub_100771D58(v252, v253);
              v112 = *(v110 + 16);
              v113 = (v111 & 1) == 0;
              v52 = __OFADD__(v112, v113);
              v114 = v112 + v113;
              if (v52)
              {
                goto LABEL_157;
              }

              v115 = v111;
              if (*(v110 + 24) >= v114)
              {
                a3 = v248;
                if ((v109 & 1) == 0)
                {
                  v235 = v68;
                  sub_1010050E8();
                  v68 = v235;
                }
              }

              else
              {
                sub_100FE65C4(v114, v109);
                v68 = sub_100771D58(v252, v253);
                a3 = v248;
                if ((v115 & 1) != (v116 & 1))
                {
                  goto LABEL_166;
                }
              }

              a5 = v247;
              if (v115)
              {
                goto LABEL_77;
              }

              a6 = v257[0];
              *(v257[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
              v125 = (a6[6] + 16 * v68);
              v126 = v253;
              *v125 = v252;
              v125[1] = v126;
              v127 = (a6[7] + 48 * v68);
              v128 = *&v261[9];
              v129 = *v261;
              *v127 = v260;
              v127[1] = v129;
              *(&v127[1]._object + 1) = v128;
              v130 = a6[2];
              v52 = __OFADD__(v130, 1);
              v123 = v130 + 1;
              if (v52)
              {
                goto LABEL_160;
              }

LABEL_79:
              a6[2] = v123;
            }

            a1 = v251;
            v251[14] = a6;
            swift_endAccess();
            goto LABEL_81;
          }

          a3 = v248;
          v24 = v249;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v95 = type metadata accessor for Logger();
          sub_1000076D4(v95, qword_10177C6D0);
          v96 = v14;
          v97 = Logger.logObject.getter();
          a6 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v97, a6))
          {
            *&v98 = COERCE_DOUBLE(swift_slowAlloc());
            v247 = a5;
            a5 = v98;
            v99 = swift_slowAlloc();
            LODWORD(v253) = a4;
            a4 = v99;
            *a5 = v245;
            *(a5 + 4) = v96;
            *v99 = v96;
            v100 = v96;
            _os_log_impl(&_mh_execute_header, v97, a6, "Unsupported value type: %@!", a5, 0xCu);
            sub_10000B3A8(a4, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v247, v253);
          }

          else
          {

            sub_101010148(a5, a4);
          }

          a1 = v251;
        }
      }
    }

    while (1)
    {
      v28 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v28 >= a3)
      {

        return;
      }

      a2 = *(v24 + 8 * v28);
      ++v7;
      if (a2)
      {
        v7 = v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_149:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C6D0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v260._countAndFlagsBits = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(v14, v15, &v260._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v18, v19, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v20, 0xCu);
    sub_100007BAC(v21);
  }
}

uint64_t sub_10118D168()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1011675EC(v2, v3);
}

uint64_t sub_10118D200()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014650;

  return sub_10116783C(v2, v3, v5, v4);
}

uint64_t sub_10118D2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1011647FC(a1, v4, v5, v6);
}

uint64_t sub_10118D360()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101164D20(v2, v3);
}

void sub_10118D458(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
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
    v242 = a2;
    v241 = a3;
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
    a2 = ((v19 + 63) >> 6);
    *&v23 = 138412290;
    v243 = v23;
    v247 = a1;
    v245 = a2;
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
            a3 = v234 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v103 + 16))(a3);
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
          a3 = v255;
          v79 = v256;
          v80 = sub_1000035D0(v254, v255);
          v240 = v234;
          v81 = *(a3 - 8);
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
              (v81[1])(v87, a3);
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
            (v81[1])(v140, a3);
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
          (v81[1])(v134, a3);
          if (v133)
          {
            goto LABEL_166;
          }

LABEL_95:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_106:
            v154 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v81[1])(v84, a3);
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

              a3 = v167;
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
                if ((a3 & 1) != (v171 & 1))
                {
                  goto LABEL_167;
                }

                v172 = v158;
              }

              a1 = v247;
              a2 = v245;
              if (a3)
              {
                a3 = v166;

                v191 = v251;
                sub_10118B568(&v252, v251[7] + 48 * a3);
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

              a3 = swift_slowAlloc();
              v202 = swift_slowAlloc();
              *a3 = v243;
              *(a3 + 4) = v200;
              *v202 = v200;
              v203 = v200;
              _os_log_impl(&_mh_execute_header, v159, v201, "Unsupported value type: %@!", a3, 0xCu);
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

              a3 = v186;
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
                if ((a3 & 1) != (v190 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v247;
              if ((a3 & 1) == 0)
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
              a3 = v185;

              v24 = v251;
              sub_10118B568(&v252, v251[7] + 48 * a3);
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

              a3 = v210;
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
                if ((a3 & 1) != (v214 & 1))
                {
                  goto LABEL_167;
                }
              }

              a1 = v247;
              if (a3)
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
              (v237[1])(v238, a3);
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
            (v237[1])(v152, a3);
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

        a3 = v47;
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
          if ((a3 & 1) != (v52 & 1))
          {
            goto LABEL_167;
          }
        }

        a1 = v247;
        LOBYTE(v32) = v41;
        a2 = v245;
        if (a3)
        {
          a3 = v46;

          v71 = v254[0];
          sub_10118B568(&v257, *(v254[0] + 56) + 48 * a3);
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
        a2 = v245;
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

          a3 = v66;
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
            if ((a3 & 1) != (v70 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v247;
          if ((a3 & 1) == 0)
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
          a3 = v65;

          v115 = v254[0];
          sub_10118B568(&v257, *(v254[0] + 56) + 48 * a3);
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

          a3 = v110;
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
            if ((a3 & 1) != (v114 & 1))
            {
              goto LABEL_167;
            }
          }

          a1 = v247;
          if (a3)
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

      a2 = v245;
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

      a3 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *a3 = v243;
      *(a3 + 4) = v91;
      *v94 = v91;
      v95 = v91;
      _os_log_impl(&_mh_execute_header, v92, v93, "Unsupported value type: %@!", a3, 0xCu);
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

      if (v25 >= a2)
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

uint64_t sub_10118EEE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_101166C40(v2, v3, v4, v6, v5);
}

uint64_t sub_10118EFA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101166260(v2, v3);
}

uint64_t sub_10118F044()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101165F24(v2, v3);
}

uint64_t sub_10118F0E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101165E28(v2, v3);
}

uint64_t sub_10118F18C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101165D2C(v2, v3);
}

unint64_t sub_10118F230()
{
  result = qword_1016C9738;
  if (!qword_1016C9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9738);
  }

  return result;
}

uint64_t sub_10118F284()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10118F2C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_101167AAC(v2, v3, v5, v4);
}

__n128 sub_10118F37C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10118F390(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10118F3CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_10118F418(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

unint64_t sub_10118F480()
{
  result = qword_1016C9740;
  if (!qword_1016C9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9740);
  }

  return result;
}

uint64_t sub_10118F518()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 56);
  aBlock[4] = sub_1011970CC;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016693D0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10000415C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_10118F7CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C730);
  sub_1000076D4(v0, qword_10177C730);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10118F84C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x536E6F636165622ELL;
  }

  *v0;
  return result;
}

unint64_t sub_10118F894()
{
  v1 = type metadata accessor for AccessoryMetadata(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BluetoothCommunicationCoordinator.Error();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_101197190(v0, v13, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6E776F6E6B6E752ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v6 + 32))(v9, v13, v5);
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v24 = 0xD000000000000028;
      v25 = 0x8000000101351B10;
      sub_10000415C(&qword_1016A4210, &type metadata accessor for MACAddress);
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 41;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20 = v24;
      (*(v6 + 8))(v9, v5);
      result = v20;
      break;
    case 2:
      sub_100D5DD08(v13, v4);
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v24 = 0xD00000000000001CLL;
      v25 = 0x8000000101351AD0;
      v21._countAndFlagsBits = sub_100230E34();
      String.append(_:)(v21);

      v22 = v24;
      sub_1008AFD40(v4);
      result = v22;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0x676E697373696D2ELL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
    case 10:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x74756F656D69742ELL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x70707553746F6E2ELL;
      break;
    case 13:
      result = 0x6176616E5574622ELL;
      break;
    default:
      v16 = *v13;
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v24 = 0xD000000000000013;
      v25 = 0x800000010134D700;
      v23[1] = v16;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v17._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v17);

      result = v24;
      break;
  }

  return result;
}

void *sub_10118FD4C()
{
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v27);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v28 = v0;
  v0[2] = v9;
  v0[4] = 0;
  v0[5] = &_swiftEmptySetSingleton;
  v25[0] = sub_1000BC488();
  v26 = "AlreadyInProgress";
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  v25[2] = sub_10000415C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v25[1] = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = *(v1 + 104);
  v11 = v27;
  v10(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = v28;
  v28[6] = v12;
  v26 = ".searchpartyd.ObjectDiscovery";
  v10(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v13[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = 0;
  v14 = sub_1000BC4D4(&qword_1016AF9D8, &unk_1013D37E0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v13[8] = CurrentValueSubject.init(_:)();
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v18;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v19;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v20;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  v21 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(type metadata accessor for CentralManager());
  sub_1013190AC(0, v21, 2.0);
  v13[3] = v23;
  sub_101190C50();
  return v13;
}

uint64_t sub_10119021C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_1000BC4D4(&qword_1016C9A28, &qword_101409EF0);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = sub_1000BC4D4(&qword_1016C9A30, &qword_101409EF8);
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = a3;
  v22 = *(a3 + 24);
  v23 = *(v22 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  v40 = v22;
  v41 = a4;
  v39 = a4;

  sub_1000BC4D4(&qword_1016A7438, &unk_101409F00);
  Lock.callAsFunction<A>(_:)();
  sub_1000041A4(&qword_1016A7440, &qword_1016A7438, &unk_101409F00);
  sub_100101B58();
  Publisher<>.setFailureType<A>(to:)();

  if (qword_101695528 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v24, qword_10177CED8);
  v42 = *(v21 + 56);
  v25 = v42;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_1000BC488();
  sub_1000041A4(&qword_1016C9A38, &qword_1016C9A28, &qword_101409EF0);
  sub_10000415C(&qword_1016AF9C0, sub_1000BC488);
  v27 = v25;
  v28 = v36;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  (*(v35 + 8))(v15, v28);
  v29 = swift_allocObject();
  v30 = v39;
  v29[2] = v39;
  v29[3] = sub_100407A2C;
  v29[4] = v20;
  sub_1000041A4(&qword_1016C9A40, &qword_1016C9A30, &qword_101409EF8);
  v31 = v30;
  v32 = v38;
  Publisher.oneshot(_:)();

  return (*(v37 + 8))(v19, v32);
}

double sub_1011906EC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 11;
  return result;
}

void sub_10119070C(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, &v50, &unk_1016A6150, &unk_10139DB30);
  if (v52)
  {
    v48 = v50;
    v49[0] = *v51;
    *(v49 + 9) = *&v51[9];
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177CEA8);
    sub_100101AA8(&v48, v47);
    v14 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v45 = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v44 = a3;
      v46 = v19;
      *v18 = 136446466;
      v20 = sub_1013181BC();
      v22 = v21;
      sub_100101B04(v47);
      v23 = sub_1000136BC(v20, v22, &v46);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2082;
      v24 = [*&v14[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000415C(&qword_101696930, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v9 + 8))(v12, v8);
      v28 = sub_1000136BC(v25, v27, &v46);

      *(v18 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v15, v16, "waitForCompanionLinkReady error: %{public}s. Peripheral %{public}s.", v18, 0x16u);
      swift_arrayDestroy();
      a3 = v44;
    }

    else
    {

      sub_100101B04(v47);
    }

    a3(v14, 0);
    sub_100101B04(&v48);
  }

  else
  {
    v45 = a4;
    v29 = v50;
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177CEA8);
    v31 = a2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = a3;
      v36 = v35;
      *&v48 = v35;
      *v34 = 136446210;
      v37 = [*&v31[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000415C(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v9 + 8))(v12, v8);
      v41 = sub_1000136BC(v38, v40, &v48);

      *(v34 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "companionLinkReady for peripheral %{public}s.", v34, 0xCu);
      sub_100007BAC(v36);
      a3 = v44;
    }

    v42 = v29;
    a3(v29, 0);
  }
}

uint64_t sub_101190C50()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016C9918, &qword_101409DC8);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = v22 - v4;
  v6 = sub_1000BC4D4(&qword_1016C9920, &qword_101409DD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_1000BC4D4(&qword_1016A6380, &qword_1013B3CF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v22 - v14;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v27 = 0x7365547265646E75;
  v28 = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v29 & 1) == 0)
  {
    v17 = *(v0 + 24);
    v18 = sub_10131A394();
    v25 = v7;
    v27 = v18;
    v23 = v2;
    sub_1000BC4D4(&qword_1016A6388, &unk_1013B3D00);
    v24 = v6;
    v22[1] = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_1000041A4(&qword_1016A6390, &qword_1016A6388, &unk_1013B3D00);
    sub_10000415C(&qword_1016A6398, type metadata accessor for CBManagerState);
    Publisher<>.removeDuplicates()();

    sub_1000041A4(&unk_1016A63A0, &qword_1016A6380, &qword_1013B3CF8);
    v19 = Publisher.share()();
    (*(v12 + 8))(v15, v11);
    v27 = v19;
    sub_1000BC4D4(&qword_1016C9928, &unk_101409DD8);
    sub_1000041A4(&qword_1016C9930, &qword_1016C9928, &unk_101409DD8);
    Publisher<>.sink(receiveValue:)();
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v27 = v19;
    Publisher.filter(_:)();

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_10169B790, &unk_101395270);
    sub_1000041A4(&qword_1016C9938, &qword_1016C9918, &qword_101409DC8);
    sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270);
    v20 = v23;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    (*(v26 + 8))(v5, v20);
    swift_getKeyPath();
    v27 = *(v1 + 64);
    sub_1000041A4(&qword_1016C9940, &qword_1016C9920, &qword_101409DD0);

    v21 = v24;
    Publisher<>.assign<A>(to:on:)();

    (*(v25 + 8))(v10, v21);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

void sub_101191244(void *a1)
{
  if (*a1 == 5)
  {
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C730);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_12;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "powered on";
    goto LABEL_11;
  }

  if (*a1 != 4)
  {
    return;
  }

  if (qword_101695288 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C730);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "powered off";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);
  }

LABEL_12:
}

uint64_t sub_1011913F0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016C9948, &qword_101409E28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 24);
  *(swift_allocObject() + 16) = v9;
  v10 = v9;
  sub_1000BC4D4(&unk_1016CDD90, &unk_101409E30);
  sub_1000041A4(&qword_1016C9950, &unk_1016CDD90, &unk_101409E30);
  Deferred.init(createPublisher:)();
  sub_1000041A4(&qword_1016C9958, &qword_1016C9948, &qword_101409E28);
  v11 = Publisher.eraseToAnyPublisher()();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v11;
  return result;
}

uint64_t sub_1011915AC(int a1)
{
  v24 = a1;
  v2 = type metadata accessor for BluetoothCommunicationCoordinator.Error();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = sub_1000BC4D4(&qword_1016C98D8, &qword_101409DA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-v7];
  v9 = sub_1000BC4D4(&qword_1016C98E0, &qword_101409DB0);
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v13 = sub_1000BC4D4(&qword_1016C98E8, &qword_101409DB8);
  v26 = *(v13 - 8);
  v27 = v13;
  v14 = *(v26 + 64);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = type metadata accessor for Feature.Bluetooth();
  v28[3] = v17;
  v28[4] = sub_10000415C(&qword_1016B1168, &type metadata accessor for Feature.Bluetooth);
  v18 = sub_1000280DC(v28);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.Bluetooth.sentinel(_:), v17);
  LOBYTE(v17) = isFeatureEnabled(_:)();
  sub_100007BAC(v28);
  if (v17)
  {
    v19 = *(v1 + 24);
    v28[0] = sub_10131E144(v24 & 1);
    sub_1000BC4D4(&qword_1016C98F8, &qword_101409DC0);
    sub_1000041A4(&qword_1016C9900, &qword_1016C98F8, &qword_101409DC0);
    sub_10000415C(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    Publisher.mapError<A>(_:)();

    swift_allocObject();
    swift_weakInit();
    sub_1000041A4(&qword_1016C9908, &qword_1016C98E0, &qword_101409DB0);
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v25 + 8))(v12, v9);
    sub_1000041A4(&qword_1016C9910, &qword_1016C98E8, &qword_101409DB8);
    v20 = v27;
    v21 = Publisher.eraseToAnyPublisher()();
    (*(v26 + 8))(v16, v20);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    type metadata accessor for DiscoveredObject(0);
    sub_10000415C(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    Fail.init(error:)();
    sub_1000041A4(&qword_1016C98F0, &qword_1016C98D8, &qword_101409DA8);
    v21 = Publisher.eraseToAnyPublisher()();
    (*(v5 + 8))(v8, v4);
  }

  return v21;
}

uint64_t sub_101191B28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100101B58();
  v4 = swift_allocError();
  sub_100101AA8(a1, v5);
  *a2 = v4;
  type metadata accessor for BluetoothCommunicationCoordinator.Error();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_101191BA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    sub_10131ECB4();
  }

  return result;
}

uint64_t sub_101191C00(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a1;
  v69 = a3;
  v58 = sub_1000BC4D4(&qword_1016A62F8, &qword_1013B3CC8);
  v57 = *(v58 - 8);
  v6 = *(v57 + 64);
  __chkstk_darwin(v58);
  v56 = &v52 - v7;
  v61 = sub_1000BC4D4(&qword_1016C9960, &qword_101409E40);
  v60 = *(v61 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin(v61);
  v59 = &v52 - v9;
  v10 = sub_1000BC4D4(&qword_1016C9968, &unk_101409E48);
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  __chkstk_darwin(v10);
  v62 = &v52 - v12;
  v67 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  v13 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v15 = &v52 - v14;
  v16 = type metadata accessor for MACAddress();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695288 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177C730);
  v65 = *(v17 + 16);
  v65(v20, v69, v16);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v66 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v54 = a4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v55 = a2;
    v53 = v27;
    v71 = v27;
    *v26 = 141558275;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    sub_10000415C(&qword_1016A4210, &type metadata accessor for MACAddress);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v15;
    v31 = v30;
    (*(v17 + 8))(v20, v16);
    v32 = sub_1000136BC(v28, v31, &v71);
    v15 = v29;

    *(v26 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "readMetadata from %{private,mask.hash}s", v26, 0x16u);
    sub_100007BAC(v53);
    a2 = v55;
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_10;
    }

    v36 = *(Strong + 24);

    v38 = *&v36[OBJC_IVAR____TtC12searchpartyd14CentralManager_lock];
    __chkstk_darwin(v37);
    *(&v52 - 2) = v69;
    *(&v52 - 1) = v36;
    sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
    Lock.callAsFunction<A>(_:)();

    v39 = v70;
    if (v70)
    {
      v40 = *(v34 + 24);
      v41 = sub_10131F050(v39, 0);

      v70 = v41;
      static Subscribers.Demand.unlimited.getter();
      v42 = a2;
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      type metadata accessor for Peripheral();
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
      v43 = v56;
      Publisher.flatMap<A, B>(maxPublishers:_:)();

      sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
      sub_1000041A4(&unk_1016A6300, &qword_1016A62F8, &qword_1013B3CC8);
      v44 = v59;
      v45 = v58;
      Publisher.map<A>(_:)();
      (*(v57 + 8))(v43, v45);
      sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
      sub_1000041A4(&qword_1016C9970, &qword_1016C9960, &qword_101409E40);
      sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
      v46 = v62;
      v47 = v61;
      Publisher.catch<A>(_:)();
      (*(v60 + 8))(v44, v47);
      v48 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v49 = swift_allocObject();
      v50 = v68;
      v49[2] = v48;
      v49[3] = v50;
      v49[4] = v42;
      sub_1000041A4(&qword_1016C9978, &qword_1016C9968, &unk_101409E48);

      v51 = v64;
      Publisher<>.sink(receiveValue:)();

      (*(v63 + 8))(v46, v51);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    else
    {
LABEL_10:
      v65(v15, v69, v66);
      type metadata accessor for BluetoothCommunicationCoordinator.Error();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v68(v15);

      return sub_10000B3A8(v15, &qword_10169E890, &unk_1013BB590);
    }
  }

  return result;
}

uint64_t sub_1011925A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = &type metadata for BAServiceIdentifier;
  *(inited + 64) = &off_10162CAF0;
  *(inited + 32) = 0;
  v5 = (inited + 32);
  v6 = sub_100A255C8(inited);
  swift_setDeallocating();
  result = sub_100007BAC(v5);
  *a2 = v6;
  return result;
}

uint64_t sub_101192640(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v7 = sub_1000BC4D4(&qword_1016C9980, &qword_101409E58);
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v10 = v44 - v9;
  v52 = sub_1000BC4D4(&qword_1016C9988, &qword_101409E60);
  v51 = *(v52 - 8);
  v11 = *(v51 + 64);
  __chkstk_darwin(v52);
  v13 = v44 - v12;
  v14 = sub_1000BC4D4(&qword_1016C9990, &unk_101409E68);
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  __chkstk_darwin(v14);
  v53 = v44 - v16;
  v17 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v44 - v19);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    sub_1000D2A70(a1, &v57, &unk_1016A6150, &unk_10139DB30);
    if (v59)
    {
      v55 = v57;
      *v56 = *v58;
      *&v56[9] = *&v58[9];
      sub_100101B58();
      v23 = swift_allocError();
      sub_100101AA8(&v55, v24);
      *v20 = v23;
      type metadata accessor for BluetoothCommunicationCoordinator.Error();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      a3(v20);

      sub_10000B3A8(v20, &qword_10169E890, &unk_1013BB590);
      return sub_100101B04(&v55);
    }

    else
    {
      v47 = v14;
      v49 = a3;
      v25 = v57;
      *&v56[8] = &type metadata for BAServiceIdentifier;
      *&v56[16] = &off_10162CAF0;
      LOBYTE(v55) = 0;
      v26 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
      v27 = swift_beginAccess();
      v48 = v25;
      v28 = *&v25[v26];
      __chkstk_darwin(v27);
      v44[-2] = &v55;

      v29 = sub_1012BBDB4(sub_1001DB280, &v44[-4], v28);

      sub_100007BAC(&v55);
      if (v29)
      {
        v30 = sub_10039CF6C(&off_10160D418);
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        *(v31 + 24) = v30;
        v32 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();

        v35 = Future.init(_:)();
        v46 = v29;
        *&v55 = v35;
        sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
        v36 = Publisher.eraseToAnyPublisher()();
        v44[3] = v36;

        *&v55 = v36;

        v44[2] = static Subscribers.Demand.unlimited.getter();
        v44[1] = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
        v44[0] = type metadata accessor for AccessoryMetadata(0);
        v45 = a4;
        sub_1000BC4D4(&qword_1016C9998, &qword_101409E78);
        sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
        sub_1000041A4(&qword_1016C99A0, &qword_1016C9998, &qword_101409E78);
        Publisher.flatMap<A, B>(maxPublishers:_:)();

        sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
        sub_1000041A4(&qword_1016C99B0, &qword_1016C9980, &qword_101409E58);
        Publisher.map<A>(_:)();
        (*(v50 + 8))(v10, v7);
        sub_1000BC4D4(&qword_1016C99B8, &qword_101409E88);
        sub_1000041A4(&qword_1016C99C0, &qword_1016C9988, &qword_101409E60);
        sub_1000041A4(&qword_1016C99C8, &qword_1016C99B8, &qword_101409E88);
        v37 = v53;
        v38 = v52;
        Publisher.catch<A>(_:)();
        (*(v51 + 8))(v13, v38);
        v39 = swift_allocObject();
        v40 = v45;
        v39[2] = v49;
        v39[3] = v40;
        v41 = v48;
        v39[4] = v22;
        v39[5] = v41;
        sub_1000041A4(&qword_1016C99D0, &qword_1016C9990, &unk_101409E68);

        v42 = v41;
        v43 = v47;
        Publisher<>.sink(receiveValue:)();

        (*(v54 + 8))(v37, v43);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();
      }

      else
      {
        type metadata accessor for BluetoothCommunicationCoordinator.Error();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v49(v20);

        return sub_10000B3A8(v20, &qword_10169E890, &unk_1013BB590);
      }
    }
  }

  return result;
}

uint64_t sub_101192F28@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v7 = sub_1000BC4D4(&qword_1016C99D8, &qword_101409E98);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = v5;

  Future.init(_:)();
  sub_1000041A4(&qword_1016C99E0, &qword_1016C99D8, &qword_101409E98);
  v11 = Publisher.eraseToAnyPublisher()();

  *a3 = v11;
  return result;
}

uint64_t sub_101193038(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, void *a5)
{
  v39 = a5;
  v40 = a4;
  v41 = a3;
  v42 = a2;
  v6 = sub_1000BC4D4(&qword_1016A6130, &qword_101409E90);
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_1000BC4D4(&qword_1016A6138, &unk_1013B3C00);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v35 - v16);
  v18 = type metadata accessor for AccessoryMetadata(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v35 - v24);
  sub_1000D2A70(a1, &v35 - v24, &qword_1016C99A8, &qword_101409E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v25[1];
    v43 = *v25;
    v44[0] = v26;
    *(v44 + 9) = *(v25 + 25);
    sub_100101B58();
    v27 = swift_allocError();
    sub_100101AA8(&v43, v28);
    *v17 = v27;
    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v42(v17);
    sub_10000B3A8(v17, &qword_10169E890, &unk_1013BB590);
    return sub_100101B04(&v43);
  }

  else
  {
    sub_100D5DD08(v25, v21);
    sub_101197190(v21, v17, type metadata accessor for AccessoryMetadata);
    swift_storeEnumTagMultiPayload();
    v42(v17);
    sub_10000B3A8(v17, &qword_10169E890, &unk_1013BB590);
    v30 = v39;
    v31 = *(v40 + 24);
    *&v43 = sub_10131FAE0(v39);
    sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
    Publisher.map<A>(_:)();

    sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
    sub_1000041A4(&qword_1016A6168, &qword_1016A6130, &qword_101409E90);
    sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
    v32 = v36;
    Publisher.catch<A>(_:)();
    (*(v35 + 8))(v9, v32);
    *(swift_allocObject() + 16) = v30;
    sub_1000041A4(&qword_1016A6178, &qword_1016A6138, &unk_1013B3C00);
    v33 = v30;
    v34 = v38;
    Publisher<>.sink(receiveValue:)();

    (*(v37 + 8))(v13, v34);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    return sub_1008AFD40(v21);
  }
}

void sub_1011935F4(uint64_t a1, void *a2)
{
  sub_1000D2A70(a1, &v22, &unk_1016A6150, &unk_10139DB30);
  if (v24)
  {
    v20 = v22;
    v21[0] = *v23;
    *(v21 + 9) = *&v23[9];
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C730);
    sub_100101AA8(&v20, v19);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2112;
      sub_100101B58();
      swift_allocError();
      sub_100101AA8(v19, v9);
      v10 = v4;
      v11 = _convertErrorToNSError(_:)();
      sub_100101B04(v19);

      *(v7 + 14) = v11;
      v8[1] = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to disconnect from %@: %@", v7, 0x16u);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();
    }

    else
    {

      sub_100101B04(v19);
    }

    sub_100101B04(&v20);
  }

  else
  {
    sub_10000B3A8(&v22, &unk_1016A6150, &unk_10139DB30);
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C730);
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully disconnected after readMetadata on %@", v16, 0xCu);
      sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);
    }
  }
}

uint64_t sub_101193914(void *a1, ValueMetadata *a2, uint64_t *a3, uint64_t a4)
{
  v112 = a4;
  v7 = sub_1000BC4D4(&qword_1016A6048, &qword_101409EA0);
  v96 = *(v7 - 8);
  v8 = *(v96 + 64);
  __chkstk_darwin(v7);
  v10 = &v93 - v9;
  v103 = sub_1000BC4D4(&qword_1016C99E8, &qword_101409EA8);
  v102 = *(v103 - 8);
  v11 = *(v102 + 64);
  __chkstk_darwin(v103);
  v100 = &v93 - v12;
  v105 = sub_1000BC4D4(&qword_1016C99F0, &qword_101409EB0);
  v104 = *(v105 - 8);
  v13 = *(v104 + 64);
  __chkstk_darwin(v105);
  v101 = &v93 - v14;
  v108 = sub_1000BC4D4(&qword_1016C99F8, &qword_101409EB8);
  v107 = *(v108 - 8);
  v15 = *(v107 + 64);
  __chkstk_darwin(v108);
  v106 = &v93 - v16;
  v111 = sub_1000BC4D4(&qword_1016C9A00, &unk_101409EC0);
  v110 = *(v111 - 8);
  v17 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = &v93 - v18;
  v123 = sub_1000BC4D4(&qword_1016A6070, &unk_1013B3BA0);
  v121 = *(v123 - 8);
  v19 = *(v121 + 8);
  v20 = __chkstk_darwin(v123);
  v22 = (&v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v20);
  v25 = &v93 - v24;
  __chkstk_darwin(v23);
  v98 = &v93 - v26;
  v116 = sub_1000BC4D4(&qword_1016A6078, &unk_101409ED0);
  v115 = *(v116 - 1);
  v27 = *(v115 + 8);
  __chkstk_darwin(v116);
  v99 = &v93 - v28;
  v113 = sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
  v29 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v31 = &v93 - v30;
  if (qword_101695288 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v120 = v22;
    v95 = v25;
    v97 = v10;
    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177C730);
    v33 = a3;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    v36 = os_log_type_enabled(v34, v35);
    v114 = v33;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      *(v37 + 4) = v114;
      *v38 = v114;
      v39 = v114;
      _os_log_impl(&_mh_execute_header, v34, v35, "readMetadata from %{public}@", v37, 0xCu);
      sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);

      v33 = v114;
    }

    v127 = &type metadata for BAServiceIdentifier;
    v128 = &off_10162CAF0;
    LOBYTE(v126) = 0;
    v40 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
    v41 = swift_beginAccess();
    v42 = *(v33 + v40);
    __chkstk_darwin(v41);
    *(&v93 - 2) = &v126;

    v43 = sub_1012BBDB4(sub_1001DB3F8, (&v93 - 4), v42);

    sub_100007BAC(&v126);
    if (!v43)
    {
      *(v31 + 3) = &type metadata for BAServiceIdentifier;
      *(v31 + 4) = &off_10162CAF0;
      *v31 = 0;
      v31[40] = 1;
      swift_storeEnumTagMultiPayload();
      (a1)(v31);
      return sub_10000B3A8(v31, &qword_1016C99A8, &qword_101409E80);
    }

    v117 = v7;
    v93 = a1;
    v94 = a2;
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v31 = 0;
    a1 = _swiftEmptyArrayStorage;
    a2 = &type metadata for BACharacteristicIdentifier.AccessoryInformation;
    v122 = v43;
    do
    {
      v46 = *(&off_101609968 + v31 + 32);
      v127 = &type metadata for BACharacteristicIdentifier.AccessoryInformation;
      v128 = &off_10162CAE0;
      LOBYTE(v126) = v46;
      v10 = *(v43 + 40);
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      *(&v93 - 2) = &v126;

      v47 = sub_1012BBE10(sub_1001DB2A0, (&v93 - 4), v10);

      isUniquelyReferenced_nonNull_native = sub_100007BAC(&v126);
      if (v47)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100A5D53C(0, a1[2] + 1, 1, a1);
          a1 = isUniquelyReferenced_nonNull_native;
        }

        v49 = a1[2];
        v48 = a1[3];
        v10 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100A5D53C((v48 > 1), v49 + 1, 1, a1);
          a1 = isUniquelyReferenced_nonNull_native;
        }

        a1[2] = v10;
        v45 = &a1[2 * v49];
        *(v45 + 32) = v46;
        v45[5] = v47;
      }

      ++v31;
      v43 = v122;
    }

    while (v31 != 9);
    v25 = a1[2];
    if (!v25)
    {
      break;
    }

    v126 = _swiftEmptyArrayStorage;
    a3 = &v126;
    sub_101124F10(0, v25, 0);
    v50 = 0;
    v118 = v121 + 32;
    v119 = v25;
    v7 = v126;
    v22 = a1 + 5;
    while (v50 < a1[2])
    {
      v51 = *(v22 - 8);
      v124 = v7;
      v52 = *v22;
      v53 = sub_1000BC4D4(&qword_1016A6088, &qword_1013B3BB8);
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      swift_retain_n();
      v125 = Future.init(_:)();
      sub_1000041A4(&unk_1016A6090, &qword_1016A6088, &qword_1013B3BB8);
      v56 = Publisher.eraseToAnyPublisher()();

      v125 = v56;
      v57 = swift_allocObject();
      *(v57 + 16) = v51;
      *(v57 + 24) = v52;

      sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
      a2 = sub_1000BC4D4(&unk_1016A60A0, &unk_10139FD40);
      sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0);
      a3 = &v125;
      v58 = v120;
      Publisher.map<A>(_:)();
      v7 = v124;

      v126 = v7;
      v60 = *(v7 + 16);
      v59 = *(v7 + 24);
      if (v60 >= v59 >> 1)
      {
        a3 = &v126;
        sub_101124F10(v59 > 1, v60 + 1, 1);
        v7 = v126;
      }

      ++v50;
      *(v7 + 16) = v60 + 1;
      v31 = v121;
      v10 = (v31[80] + 32) & ~v31[80];
      (*(v121 + 4))(v7 + v10 + *(v121 + 9) * v60, v58, v123);
      v22 += 2;
      v25 = v119;
      if (v119 == v50)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  v31 = v121;
  v10 = (v121[80] + 32) & ~v121[80];
  v7 = _swiftEmptyArrayStorage;
LABEL_22:
  v62 = *(v7 + 16);
  v63 = v123;
  if (v62)
  {
    v64 = v98;
    v121 = *(v31 + 2);
    (v121)(v98, v7 + v10, v123);
    v65 = sub_1000BC4D4(&qword_1016A60B0, &qword_1013B3BD0);
    v66 = v99;
    v120 = v65;
    Publishers.Map.map<A>(_:)();
    v67 = v31 + 8;
    v68 = *(v31 + 1);
    v68(v64, v63);
    v69 = sub_1000BC4D4(&qword_1016A60B8, &qword_1013B3BD8);
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    v72 = swift_allocObject();
    (*(v115 + 4))(&v72[*(*v72 + class metadata base offset for PublisherBox + 16)], v66, v116);
    v73 = v62 - 1;
    if (v73)
    {
      v76 = *(v31 + 9);
      v124 = v7;
      v118 = v76;
      v119 = (v96 + 8);
      v77 = &v76[v7 + v10];
      v78 = v97;
      v79 = v95;
      v115 = v67;
      v116 = v68;
      do
      {
        (v121)(v79, v77, v63);
        v126 = v72;
        sub_1000BC4D4(&qword_1016A60C0, &qword_1013B3BE0);
        sub_1000041A4(&qword_1016A60C8, &qword_1016A60C0, &qword_1013B3BE0);
        sub_1000041A4(&qword_1016A60D0, &qword_1016A6070, &unk_1013B3BA0);
        v63 = v123;
        Publisher.zip<A, B>(_:_:)();

        sub_1000041A4(&qword_1016A60D8, &qword_1016A6048, &qword_101409EA0);
        v80 = v117;
        v72 = Publisher.eraseToAnyPublisher()();
        (*v119)(v78, v80);
        v116(v79, v63);
        v77 = &v118[v77];
        --v73;
      }

      while (v73);

      v75 = v94;
      v74 = v93;
    }

    else
    {

      v74 = v93;
      v75 = v94;
    }

    v126 = v72;
    v81 = swift_allocObject();
    v82 = v114;
    *(v81 + 16) = v114;
    v83 = v82;
    sub_1000BC4D4(&qword_1016A60C0, &qword_1013B3BE0);
    type metadata accessor for AccessoryMetadata(0);
    sub_1000041A4(&qword_1016A60C8, &qword_1016A60C0, &qword_1013B3BE0);
    v84 = v100;
    Publisher.tryMap<A>(_:)();

    sub_1000041A4(&qword_1016C9A08, &qword_1016C99E8, &qword_101409EA8);
    sub_100101B58();
    v85 = v101;
    v86 = v103;
    Publisher.mapError<A>(_:)();
    (*(v102 + 8))(v84, v86);
    sub_1000041A4(&qword_1016C9A10, &qword_1016C99F0, &qword_101409EB0);
    v87 = v106;
    v88 = v105;
    Publisher.map<A>(_:)();
    (*(v104 + 8))(v85, v88);
    sub_1000BC4D4(&qword_1016C99B8, &qword_101409E88);
    sub_1000041A4(&qword_1016C9A18, &qword_1016C99F8, &qword_101409EB8);
    sub_1000041A4(&qword_1016C99C8, &qword_1016C99B8, &qword_101409E88);
    v89 = v109;
    v90 = v108;
    Publisher.catch<A>(_:)();
    (*(v107 + 8))(v87, v90);
    v91 = swift_allocObject();
    *(v91 + 16) = v74;
    *(v91 + 24) = v75;
    sub_1000041A4(&qword_1016C9A20, &qword_1016C9A00, &unk_101409EC0);

    v92 = v111;
    Publisher<>.sink(receiveValue:)();

    (*(v110 + 8))(v89, v92);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}
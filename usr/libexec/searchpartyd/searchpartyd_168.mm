void sub_10114C918(uint64_t a1, char a2, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a4)
{
  v7 = v4;
  LOBYTE(v8) = a2;
  if (qword_101695280 != -1)
  {
    goto LABEL_154;
  }

  while (1)
  {
    v10 = *(a1 + 120);
    object = *(a1 + 128);
    v12 = sub_10111EACC(v10, object, qword_10177C6E8);
    v251 = a1;
    if (v12)
    {
      break;
    }

    v247 = v7;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 32) = isUniquelyReferenced_nonNull_native;
    v19 = inited + 32;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 40) = a4;
    *(inited + 48) = v8 & 1;
    *(inited + 56) = 1;
    a4 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(v19, &qword_101699340, &qword_1013918A0);
    v7 = a4 + 64;
    v20 = *(a4 + 64);
    v250 = a4;
    v21 = 1 << *(a4 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    swift_beginAccess();
    v24 = 0;
    v8 = (v21 + 63) >> 6;
    *&v25 = 138412290;
    v246 = v25;
    v26 = a1;
    v249 = v8;
    v248 = a4 + 64;
    while (v23)
    {
LABEL_15:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = (v24 << 10) | (16 * v28);
      v30 = *(v250 + 56);
      v31 = (*(v250 + 48) + v29);
      v32 = v31[1];
      v252 = *v31;
      v33 = v30 + v29;
      v34 = *v33;
      a1 = *(v33 + 8);
      v35 = *(v26 + 112);
      v36 = *(v35 + 16);
      v253 = v32;

      sub_10090C56C(*&v34, a1);
      if (v36)
      {

        v37 = sub_100771D58(v252, v253);
        if ((v38 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v35 + 56) + 48 * v37, &v260);

        if (a1 <= 1)
        {
          if (a1)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v39 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v34) & 1).super.super.isa;
          }

          else
          {
            sub_10090C56C(*&v34, 0);
            v39 = *&v34;
          }

          v105 = v39;
          goto LABEL_97;
        }

        if (a1 != 2)
        {
          sub_1010100EC(&v260, &v255);
          if (BYTE8(v256[1]) != 3)
          {
LABEL_152:

            sub_10118B5A0(&v255);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v260);
            return;
          }

          sub_10000A748(&v255._countAndFlagsBits, v257);
          v106 = v258;
          v107 = sub_1000035D0(v257, v258);
          isUniquelyReferenced_nonNull_native = v240;
          v108 = *(*(v106 - 8) + 64);
          __chkstk_darwin(v107);
          (*(v110 + 16))(v240 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          v26 = v251;
          BinaryFloatingPoint.init<A>(_:)();
          v105 = [objc_allocWithZone(NSNumber) initWithDouble:*&v255._countAndFlagsBits + v34];
          sub_100007BAC(v257);
          goto LABEL_97;
        }

        sub_1010100EC(&v260, &v255);
        if (BYTE8(v256[1]) != 2)
        {
          goto LABEL_152;
        }

        sub_10000A748(&v255._countAndFlagsBits, v257);
        isUniquelyReferenced_nonNull_native = v258;
        v87 = v259;
        v88 = sub_1000035D0(v257, v258);
        v244 = v240;
        v89 = *(*(isUniquelyReferenced_nonNull_native - 8) + 64);
        __chkstk_darwin(v88);
        v242 = v90;
        v91 = v240 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
        v245 = v92;
        (*(v92 + 16))(v91);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v255._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v93 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v93 < 64)
            {
              goto LABEL_84;
            }

            v243 = v87;
            v241 = v240;
            __chkstk_darwin(v93);
            v95 = v240 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v96 = *(*(v243 + 32) + 8);
            v97 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v245 + 8))(v95, isUniquelyReferenced_nonNull_native);
            v87 = v243;
            if (v97)
            {
              goto LABEL_170;
            }
          }

          else
          {
            LODWORD(v241) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v124 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v241)
            {
              v243 = v87;
              if (v124 <= 64)
              {
                v241 = *(*(v87 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v240[2] = v240;
                v131 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v240[0] = v240 - v132;
                swift_getAssociatedConformanceWitness();
                v133 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v240[1] = v240;
                __chkstk_darwin(v133);
                v135 = v240 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v136 = *(*(v243 + 32) + 8);
                v137 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v245 + 8))(v135, isUniquelyReferenced_nonNull_native);
                if (v137)
                {
                  goto LABEL_170;
                }

                v87 = v243;
LABEL_84:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_85;
              }

              v241 = v240;
              __chkstk_darwin(v124);
              v126 = v240 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v127 = *(*(v243 + 32) + 8);
              v128 = dispatch thunk of static Comparable.< infix(_:_:)();
              v129 = v126;
              v87 = v243;
              (*(v245 + 8))(v129, isUniquelyReferenced_nonNull_native);
              if (v128)
              {
                goto LABEL_170;
              }
            }

            else if (v124 < 64)
            {
              goto LABEL_84;
            }
          }
        }

LABEL_85:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v255._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v139 = v87;
          v140 = v138;
          v243 = v139;
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              goto LABEL_88;
            }
          }

          else if (v141 >= 64)
          {
LABEL_88:
            v241 = v240;
            __chkstk_darwin(v141);
            v242 = v240 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v143 = v243;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v144 = *(*(v143 + 32) + 8);
            v145 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v245 + 8))(v242, isUniquelyReferenced_nonNull_native);
            if (v145)
            {
              goto LABEL_167;
            }

            goto LABEL_95;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_95:
        v146 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v245 + 8))(v91, isUniquelyReferenced_nonNull_native);
        v55 = __OFADD__(v146, *&v34);
        v147 = v146 + *&v34;
        if (v55)
        {
          goto LABEL_161;
        }

        v105 = [objc_allocWithZone(NSNumber) initWithLongLong:v147];
        sub_100007BAC(v257);
        v26 = v251;
LABEL_97:
        objc_opt_self();
        v148 = swift_dynamicCastObjCClass();
        if (v148)
        {
          v149 = v148;
          v150 = v34;
          v151 = v105;
          v152 = String.init(_:)(v149);
          v153 = sub_1000DF96C();
          swift_beginAccess();
          v255 = v152;
          *(&v256[0] + 1) = &type metadata for String;
          *&v256[1] = v153;
          BYTE8(v256[1]) = 1;
          v154 = *(v26 + 112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v254 = *(v26 + 112);
          v155 = v254;
          *(v26 + 112) = 0x8000000000000000;
          v156 = sub_100771D58(v252, v253);
          v158 = *(v155 + 16);
          v159 = (v157 & 1) == 0;
          v55 = __OFADD__(v158, v159);
          v160 = v158 + v159;
          if (v55)
          {
            goto LABEL_158;
          }

          v161 = v157;
          if (*(v155 + 24) >= v160)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v157 & 1) == 0)
              {
                goto LABEL_130;
              }
            }

            else
            {
              isUniquelyReferenced_nonNull_native = v156;
              sub_1010050E8();
              v156 = isUniquelyReferenced_nonNull_native;
              if ((v161 & 1) == 0)
              {
                goto LABEL_130;
              }
            }
          }

          else
          {
            sub_100FE65C4(v160, isUniquelyReferenced_nonNull_native);
            v156 = sub_100771D58(v252, v253);
            if ((v161 & 1) != (v162 & 1))
            {
              goto LABEL_171;
            }

            if ((v161 & 1) == 0)
            {
LABEL_130:
              a4 = v254;
              *(v254 + 8 * (v156 >> 6) + 64) |= 1 << v156;
              v203 = (*(a4 + 48) + 16 * v156);
              v204 = v253;
              *v203 = v252;
              v203[1] = v204;
              v205 = (*(a4 + 56) + 48 * v156);
              v206 = *(v256 + 9);
              v207 = v256[0];
              *v205 = v255;
              v205[1] = v207;
              *(&v205[1]._object + 1) = v206;
              v208 = *(a4 + 16);
              v55 = __OFADD__(v208, 1);
              v209 = v208 + 1;
              if (v55)
              {
                goto LABEL_160;
              }

              *(a4 + 16) = v209;
              goto LABEL_132;
            }
          }

          v182 = v156;

          a4 = v254;
          sub_10118B568(&v255, *(v254 + 56) + 48 * v182);
LABEL_132:
          v26 = v251;
          v8 = v249;
          *(v251 + 112) = a4;
          swift_endAccess();
          sub_101010148(*&v150, a1);

          goto LABEL_133;
        }

        objc_opt_self();
        v163 = swift_dynamicCastObjCClass();
        if (v163)
        {
          v164 = v163;
          [v163 doubleValue];
          v166 = v165;
          v167 = [v164 integerValue];
          if (v166 == v167)
          {
            v168 = v167;
            v169 = v34;
            v170 = a1;
            v171 = v26;
            v172 = sub_1000DFAD8();
            swift_beginAccess();
            v255._countAndFlagsBits = v168;
            *(&v256[0] + 1) = &type metadata for Int;
            *&v256[1] = v172;
            BYTE8(v256[1]) = 2;
            v173 = *(v171 + 112);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v254 = *(v171 + 112);
            v174 = v254;
            *(v171 + 112) = 0x8000000000000000;
            v175 = sub_100771D58(v252, v253);
            v177 = *(v174 + 16);
            v178 = (v176 & 1) == 0;
            v55 = __OFADD__(v177, v178);
            v179 = v177 + v178;
            if (v55)
            {
              goto LABEL_164;
            }

            v180 = v176;
            if (*(v174 + 24) >= v179)
            {
              a1 = v170;
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v176 & 1) == 0)
                {
                  goto LABEL_144;
                }
              }

              else
              {
                isUniquelyReferenced_nonNull_native = v175;
                sub_1010050E8();
                v175 = isUniquelyReferenced_nonNull_native;
                if ((v180 & 1) == 0)
                {
                  goto LABEL_144;
                }
              }
            }

            else
            {
              sub_100FE65C4(v179, isUniquelyReferenced_nonNull_native);
              v175 = sub_100771D58(v252, v253);
              if ((v180 & 1) != (v181 & 1))
              {
                goto LABEL_171;
              }

              a1 = v170;
              if ((v180 & 1) == 0)
              {
LABEL_144:
                a4 = v254;
                *(v254 + 8 * (v175 >> 6) + 64) |= 1 << v175;
                v225 = (*(a4 + 48) + 16 * v175);
                v226 = v253;
                *v225 = v252;
                v225[1] = v226;
                v227 = (*(a4 + 56) + 48 * v175);
                v228 = *(v256 + 9);
                v229 = v256[0];
                *v227 = v255;
                v227[1] = v229;
                *(&v227[1]._object + 1) = v228;
                v230 = *(a4 + 16);
                v55 = __OFADD__(v230, 1);
                v231 = v230 + 1;
                if (v55)
                {
                  goto LABEL_168;
                }

                *(a4 + 16) = v231;
LABEL_146:
                v26 = v251;
                v8 = v249;
                *(v251 + 112) = a4;
                swift_endAccess();

                sub_101010148(*&v169, a1);
LABEL_133:
                v7 = v248;
                goto LABEL_134;
              }
            }

            v201 = v175;

            a4 = v254;
            sub_10118B568(&v255, *(v254 + 56) + 48 * v201);
            goto LABEL_146;
          }

          v190 = sub_1000DFA84();
          swift_beginAccess();
          *&v255._countAndFlagsBits = v166;
          *(&v256[0] + 1) = &type metadata for Double;
          *&v256[1] = v190;
          BYTE8(v256[1]) = 3;
          v191 = *(v26 + 112);
          v192 = swift_isUniquelyReferenced_nonNull_native();
          v254 = *(v26 + 112);
          v193 = v254;
          *(v26 + 112) = 0x8000000000000000;
          v194 = sub_100771D58(v252, v253);
          v196 = *(v193 + 16);
          v197 = (v195 & 1) == 0;
          v55 = __OFADD__(v196, v197);
          v198 = v196 + v197;
          if (v55)
          {
            goto LABEL_166;
          }

          v199 = v195;
          if (*(v193 + 24) >= v198)
          {
            if (v192)
            {
              goto LABEL_127;
            }

            v232 = v194;
            sub_1010050E8();
            v194 = v232;
            if ((v199 & 1) == 0)
            {
              goto LABEL_148;
            }

LABEL_128:
            isUniquelyReferenced_nonNull_native = *&v34;
            v202 = v194;

            a4 = v254;
            sub_10118B568(&v255, *(v254 + 56) + 48 * v202);
          }

          else
          {
            sub_100FE65C4(v198, v192);
            v194 = sub_100771D58(v252, v253);
            if ((v199 & 1) != (v200 & 1))
            {
              goto LABEL_171;
            }

LABEL_127:
            if (v199)
            {
              goto LABEL_128;
            }

LABEL_148:
            a4 = v254;
            *(v254 + 8 * (v194 >> 6) + 64) |= 1 << v194;
            v233 = (*(a4 + 48) + 16 * v194);
            v234 = v253;
            *v233 = v252;
            v233[1] = v234;
            v235 = (*(a4 + 56) + 48 * v194);
            v236 = *(v256 + 9);
            v237 = v256[0];
            *v235 = v255;
            v235[1] = v237;
            *(&v235[1]._object + 1) = v236;
            v238 = *(a4 + 16);
            v55 = __OFADD__(v238, 1);
            v239 = v238 + 1;
            if (v55)
            {
              goto LABEL_169;
            }

            isUniquelyReferenced_nonNull_native = *&v34;
            *(a4 + 16) = v239;
          }

          v26 = v251;
          v8 = v249;
          *(v251 + 112) = a4;
          swift_endAccess();

          sub_101010148(isUniquelyReferenced_nonNull_native, a1);
          goto LABEL_134;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v183 = type metadata accessor for Logger();
        sub_1000076D4(v183, qword_10177C6D0);
        v184 = v105;
        v185 = Logger.logObject.getter();
        a4 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v185, a4))
        {
          v186 = v34;
          v187 = swift_slowAlloc();
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();
          *v187 = v246;
          *(v187 + 4) = v184;
          *isUniquelyReferenced_nonNull_native = v184;
          v188 = v184;
          _os_log_impl(&_mh_execute_header, v185, a4, "Unsupported value type: %@!", v187, 0xCu);
          sub_10000B3A8(isUniquelyReferenced_nonNull_native, &qword_10169BB30, &unk_10138B3C0);

          v189 = v186;
          v7 = v248;
          sub_101010148(*&v189, a1);
        }

        else
        {

          sub_101010148(*&v34, a1);
        }

        v26 = v251;
        v8 = v249;
LABEL_134:
        sub_10118B5A0(&v260);
      }

      else
      {
LABEL_21:
        if (a1 > 1)
        {
          if (a1 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v34];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:v34];
          }
        }

        else if (a1)
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
          v44 = v34;
          v45 = a1;
          v10 = v41;
          v46 = String.init(_:)(v43);
          v47 = v26;
          object = v46._object;
          v48 = sub_1000DF96C();
          swift_beginAccess();
          v260 = v46;
          *&v261[8] = &type metadata for String;
          *&v261[16] = v48;
          v261[24] = 1;
          v49 = *(v47 + 112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v257[0] = *(v47 + 112);
          v50 = v257[0];
          *(v47 + 112) = 0x8000000000000000;
          v51 = sub_100771D58(v252, v253);
          v53 = *(v50 + 16);
          v54 = (v52 & 1) == 0;
          v55 = __OFADD__(v53, v54);
          v56 = v53 + v54;
          if (v55)
          {
            __break(1u);
            goto LABEL_156;
          }

          v57 = v52;
          if (*(v50 + 24) >= v56)
          {
            a1 = v45;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = v51;
              sub_1010050E8();
              v51 = isUniquelyReferenced_nonNull_native;
            }
          }

          else
          {
            sub_100FE65C4(v56, isUniquelyReferenced_nonNull_native);
            v51 = sub_100771D58(v252, v253);
            if ((v57 & 1) != (v58 & 1))
            {
              goto LABEL_171;
            }

            a1 = v45;
          }

          v78 = v44;
          v7 = v248;
          if (v57)
          {
            v79 = v51;

            a4 = v257[0];
            sub_10118B568(&v260, *(v257[0] + 56) + 48 * v79);
          }

          else
          {
            a4 = v257[0];
            *(v257[0] + 8 * (v51 >> 6) + 64) |= 1 << v51;
            v80 = (*(a4 + 48) + 16 * v51);
            v81 = v253;
            *v80 = v252;
            v80[1] = v81;
            v82 = (*(a4 + 56) + 48 * v51);
            v83 = *&v261[9];
            v84 = *v261;
            *v82 = v260;
            v82[1] = v84;
            *(&v82[1]._object + 1) = v83;
            v85 = *(a4 + 16);
            v55 = __OFADD__(v85, 1);
            v86 = v85 + 1;
            if (v55)
            {
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
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            *(a4 + 16) = v86;
          }

          v26 = v251;
          *(v251 + 112) = a4;
          swift_endAccess();

          sub_101010148(*&v78, a1);
LABEL_47:
          v8 = v249;
        }

        else
        {
          objc_opt_self();
          v59 = swift_dynamicCastObjCClass();
          if (!v59)
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v98 = type metadata accessor for Logger();
            sub_1000076D4(v98, qword_10177C6D0);
            v99 = v41;
            v100 = Logger.logObject.getter();
            a4 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v100, a4))
            {
              v101 = v34;
              v102 = swift_slowAlloc();
              isUniquelyReferenced_nonNull_native = swift_slowAlloc();
              *v102 = v246;
              *(v102 + 4) = v99;
              *isUniquelyReferenced_nonNull_native = v99;
              v103 = v99;
              _os_log_impl(&_mh_execute_header, v100, a4, "Unsupported value type: %@!", v102, 0xCu);
              sub_10000B3A8(isUniquelyReferenced_nonNull_native, &qword_10169BB30, &unk_10138B3C0);

              v104 = v101;
              v7 = v248;
              sub_101010148(*&v104, a1);
            }

            else
            {

              sub_101010148(*&v34, a1);
            }

            v26 = v251;
            goto LABEL_47;
          }

          v60 = v59;
          [v59 doubleValue];
          v62 = v61;
          v63 = [v60 integerValue];
          if (v62 == v63)
          {
            v64 = v63;
            v65 = v34;
            v66 = a1;
            v67 = v26;
            v68 = sub_1000DFAD8();
            swift_beginAccess();
            v260._countAndFlagsBits = v64;
            *&v261[8] = &type metadata for Int;
            *&v261[16] = v68;
            v261[24] = 2;
            v69 = *(v67 + 112);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v257[0] = *(v67 + 112);
            v70 = v257[0];
            *(v67 + 112) = 0x8000000000000000;
            v71 = sub_100771D58(v252, v253);
            v73 = *(v70 + 16);
            v74 = (v72 & 1) == 0;
            v55 = __OFADD__(v73, v74);
            v75 = v73 + v74;
            if (v55)
            {
              goto LABEL_159;
            }

            v76 = v72;
            if (*(v70 + 24) >= v75)
            {
              a1 = v66;
              if (isUniquelyReferenced_nonNull_native)
              {
                if (v72)
                {
                  goto LABEL_70;
                }
              }

              else
              {
                isUniquelyReferenced_nonNull_native = v71;
                sub_1010050E8();
                v71 = isUniquelyReferenced_nonNull_native;
                if (v76)
                {
                  goto LABEL_70;
                }
              }
            }

            else
            {
              sub_100FE65C4(v75, isUniquelyReferenced_nonNull_native);
              v71 = sub_100771D58(v252, v253);
              if ((v76 & 1) != (v77 & 1))
              {
                goto LABEL_171;
              }

              a1 = v66;
              if (v76)
              {
LABEL_70:
                v122 = v71;

                a4 = v257[0];
                sub_10118B568(&v260, *(v257[0] + 56) + 48 * v122);
                goto LABEL_138;
              }
            }

            a4 = v257[0];
            *(v257[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
            v210 = (*(a4 + 48) + 16 * v71);
            v211 = v253;
            *v210 = v252;
            v210[1] = v211;
            v212 = (*(a4 + 56) + 48 * v71);
            v213 = *&v261[9];
            v214 = *v261;
            *v212 = v260;
            v212[1] = v214;
            *(&v212[1]._object + 1) = v213;
            v215 = *(a4 + 16);
            v55 = __OFADD__(v215, 1);
            v216 = v215 + 1;
            if (v55)
            {
              goto LABEL_163;
            }

            *(a4 + 16) = v216;
LABEL_138:
            v26 = v251;
            v8 = v249;
            *(v251 + 112) = a4;
            swift_endAccess();

            sub_101010148(*&v65, a1);
            v7 = v248;
          }

          else
          {
            v111 = sub_1000DFA84();
            swift_beginAccess();
            *&v260._countAndFlagsBits = v62;
            *&v261[8] = &type metadata for Double;
            *&v261[16] = v111;
            v261[24] = 3;
            v112 = *(v26 + 112);
            v113 = swift_isUniquelyReferenced_nonNull_native();
            v257[0] = *(v26 + 112);
            v114 = v257[0];
            *(v26 + 112) = 0x8000000000000000;
            v115 = sub_100771D58(v252, v253);
            v117 = *(v114 + 16);
            v118 = (v116 & 1) == 0;
            v55 = __OFADD__(v117, v118);
            v119 = v117 + v118;
            if (v55)
            {
              goto LABEL_162;
            }

            v120 = v116;
            if (*(v114 + 24) < v119)
            {
              sub_100FE65C4(v119, v113);
              v115 = sub_100771D58(v252, v253);
              if ((v120 & 1) != (v121 & 1))
              {
                goto LABEL_171;
              }

LABEL_74:
              if (v120)
              {
                goto LABEL_75;
              }

              goto LABEL_140;
            }

            if (v113)
            {
              goto LABEL_74;
            }

            v217 = v115;
            sub_1010050E8();
            v115 = v217;
            if (v120)
            {
LABEL_75:
              isUniquelyReferenced_nonNull_native = *&v34;
              v123 = v115;

              a4 = v257[0];
              sub_10118B568(&v260, *(v257[0] + 56) + 48 * v123);
              goto LABEL_142;
            }

LABEL_140:
            a4 = v257[0];
            *(v257[0] + 8 * (v115 >> 6) + 64) |= 1 << v115;
            v218 = (*(a4 + 48) + 16 * v115);
            v219 = v253;
            *v218 = v252;
            v218[1] = v219;
            v220 = (*(a4 + 56) + 48 * v115);
            v221 = *&v261[9];
            v222 = *v261;
            *v220 = v260;
            v220[1] = v222;
            *(&v220[1]._object + 1) = v221;
            v223 = *(a4 + 16);
            v55 = __OFADD__(v223, 1);
            v224 = v223 + 1;
            if (v55)
            {
              goto LABEL_165;
            }

            isUniquelyReferenced_nonNull_native = *&v34;
            *(a4 + 16) = v224;
LABEL_142:
            v26 = v251;
            v8 = v249;
            *(v251 + 112) = a4;
            swift_endAccess();

            sub_101010148(isUniquelyReferenced_nonNull_native, a1);
          }
        }
      }
    }

    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v27 >= v8)
      {

        return;
      }

      v23 = *(v7 + 8 * v27);
      ++v24;
      if (v23)
      {
        v24 = v27;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_154:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_156:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C6D0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v260._countAndFlagsBits = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000136BC(v10, object, &v260._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v14, v15, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v16, 0xCu);
    sub_100007BAC(v17);
  }
}

void sub_10114E540(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v249 = v2;
    v11 = sub_101165C24();
    v2 = v11 + 64;
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    swift_beginAccess();
    v15 = 0;
    v16 = (v12 + 63) >> 6;
    *&v17 = 138412290;
    v248 = v17;
    v251 = a1;
    v250 = v11;
    while (v14)
    {
LABEL_15:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = (v15 << 10) | (16 * v19);
      v21 = *(v11 + 56);
      v22 = (*(v11 + 48) + v20);
      v23 = v22[1];
      v254 = *v22;
      v24 = (v21 + v20);
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = a1[14];
      v28 = *(v27 + 16);
      v255 = v23;

      v253 = v25;
      sub_10090C56C(v25, v26);
      v252 = v26;
      if (v28)
      {

        v29 = sub_100771D58(v254, v255);
        if ((v30 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v27 + 56) + 48 * v29, &v262);

        if (v26 <= 1)
        {
          if (v26)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v32 = NSNumber.init(BOOLeanLiteral:)(v253 & 1).super.super.isa;
          }

          else
          {
            v31 = v253;
            sub_10090C56C(v253, 0);
            v32 = v31;
          }

          v98 = v32;
          goto LABEL_102;
        }

        if (v26 != 2)
        {
          sub_1010100EC(&v262, &v257);
          if (v258[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v257);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v262);
            return;
          }

          v99 = v253;
          sub_10000A748(&v257._countAndFlagsBits, v259);
          v100 = v260;
          v101 = sub_1000035D0(v259, v260);
          v102 = *(*(v100 - 8) + 64);
          __chkstk_darwin(v101);
          (*(v104 + 16))(v242 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v251;
          v98 = [objc_allocWithZone(NSNumber) initWithDouble:*&v257._countAndFlagsBits + *&v99];
          sub_100007BAC(v259);
          goto LABEL_102;
        }

        sub_1010100EC(&v262, &v257);
        if (v258[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v257._countAndFlagsBits, v259);
        v80 = v260;
        v79 = v261;
        v81 = sub_1000035D0(v259, v260);
        v246 = v242;
        v82 = *(*(v80 - 8) + 64);
        __chkstk_darwin(v81);
        v244 = v83;
        v84 = v242 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        v247 = v85;
        (*(v85 + 16))(v84);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v257._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v86 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v86 < 64)
            {
              goto LABEL_89;
            }

            v245 = v79;
            v243 = v242;
            __chkstk_darwin(v86);
            v88 = v242 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v89 = *(*(v245 + 32) + 8);
            v90 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v247 + 8))(v88, v80);
            v79 = v245;
            if (v90)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v243) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v133 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v243)
            {
              v245 = v79;
              if (v133 <= 64)
              {
                v243 = *(*(v79 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v242[2] = v242;
                v140 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v242[0] = v242 - v141;
                swift_getAssociatedConformanceWitness();
                v142 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v242[1] = v242;
                __chkstk_darwin(v142);
                v144 = v242 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v145 = *(*(v245 + 32) + 8);
                v146 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v247 + 8))(v144, v80);
                if (v146)
                {
                  goto LABEL_163;
                }

                v79 = v245;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v243 = v242;
              __chkstk_darwin(v133);
              v135 = v242 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v136 = *(*(v245 + 32) + 8);
              v137 = dispatch thunk of static Comparable.< infix(_:_:)();
              v138 = v135;
              v79 = v245;
              (*(v247 + 8))(v138, v80);
              if (v137)
              {
                goto LABEL_163;
              }
            }

            else if (v133 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v257._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v147 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v148 = v79;
          v149 = v147;
          v245 = v148;
          v150 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v149)
          {
            if (v150 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v150 >= 64)
          {
LABEL_93:
            v243 = v242;
            __chkstk_darwin(v150);
            v244 = v242 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v152 = v245;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v153 = *(*(v152 + 32) + 8);
            v154 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v247 + 8))(v244, v80);
            if (v154)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v155 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v247 + 8))(v84, v80);
        v47 = __OFADD__(v155, v253);
        v156 = &v253[v155];
        if (v47)
        {
          goto LABEL_154;
        }

        v98 = [objc_allocWithZone(NSNumber) initWithLongLong:v156];
        sub_100007BAC(v259);
        a1 = v251;
LABEL_102:
        objc_opt_self();
        v157 = swift_dynamicCastObjCClass();
        if (v157)
        {
          v158 = v157;
          v159 = v98;
          v160 = String.init(_:)(v158);
          v161 = a1;
          v162 = sub_1000DF96C();
          swift_beginAccess();
          v257 = v160;
          *&v258[8] = &type metadata for String;
          *&v258[16] = v162;
          v258[24] = 1;
          v163 = v161[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v256 = v161[14];
          v165 = v256;
          v161[14] = 0x8000000000000000;
          v166 = sub_100771D58(v254, v255);
          v168 = v165[2];
          v169 = (v167 & 1) == 0;
          v47 = __OFADD__(v168, v169);
          v170 = v168 + v169;
          if (v47)
          {
            goto LABEL_151;
          }

          v171 = v167;
          if (v165[3] >= v170)
          {
            v11 = v250;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v237 = v166;
              sub_1010050E8();
              v166 = v237;
            }
          }

          else
          {
            sub_100FE65C4(v170, isUniquelyReferenced_nonNull_native);
            v166 = sub_100771D58(v254, v255);
            v11 = v250;
            if ((v171 & 1) != (v172 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v251;
          if (v171)
          {
            v192 = v166;

            v193 = v256;
            sub_10118B568(&v257, v256[7] + 48 * v192);
          }

          else
          {
            v193 = v256;
            v256[(v166 >> 6) + 8] |= 1 << v166;
            v194 = (v193[6] + 16 * v166);
            v195 = v255;
            *v194 = v254;
            v194[1] = v195;
            v196 = (v193[7] + 48 * v166);
            v197 = *&v258[9];
            v198 = *v258;
            *v196 = v257;
            v196[1] = v198;
            *(&v196[1]._object + 1) = v197;
            v199 = v193[2];
            v47 = __OFADD__(v199, 1);
            v200 = v199 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            v193[2] = v200;
          }

          v201 = v252;
          a1[14] = v193;
          swift_endAccess();
          sub_101010148(v253, v201);

          goto LABEL_120;
        }

        objc_opt_self();
        v173 = swift_dynamicCastObjCClass();
        if (v173)
        {
          v174 = v173;
          [v173 doubleValue];
          v176 = v175;
          v177 = [v174 integerValue];
          if (v176 == v177)
          {
            v178 = v177;
            v179 = sub_1000DFAD8();
            swift_beginAccess();
            v257._countAndFlagsBits = v178;
            *&v258[8] = &type metadata for Int;
            *&v258[16] = v179;
            v258[24] = 2;
            v180 = a1[14];
            v181 = swift_isUniquelyReferenced_nonNull_native();
            v182 = a1;
            v183 = v181;
            v256 = v182[14];
            v184 = v256;
            v182[14] = 0x8000000000000000;
            v185 = sub_100771D58(v254, v255);
            v187 = v184[2];
            v188 = (v186 & 1) == 0;
            v47 = __OFADD__(v187, v188);
            v189 = v187 + v188;
            if (v47)
            {
              goto LABEL_157;
            }

            v190 = v186;
            if (v184[3] >= v189)
            {
              if ((v183 & 1) == 0)
              {
                v240 = v185;
                sub_1010050E8();
                v185 = v240;
              }
            }

            else
            {
              sub_100FE65C4(v189, v183);
              v185 = sub_100771D58(v254, v255);
              if ((v190 & 1) != (v191 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v251;
            if ((v190 & 1) == 0)
            {
              v220 = v256;
              v256[(v185 >> 6) + 8] |= 1 << v185;
              v221 = (v220[6] + 16 * v185);
              v222 = v255;
              *v221 = v254;
              v221[1] = v222;
              v223 = (v220[7] + 48 * v185);
              v224 = *&v258[9];
              v225 = *v258;
              *v223 = v257;
              v223[1] = v225;
              *(&v223[1]._object + 1) = v224;
              v226 = v220[2];
              v47 = __OFADD__(v226, 1);
              v227 = v226 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v228 = v185;

            v220 = v256;
            sub_10118B568(&v257, v256[7] + 48 * v228);
          }

          else
          {
            v208 = sub_1000DFA84();
            swift_beginAccess();
            *&v257._countAndFlagsBits = v176;
            *&v258[8] = &type metadata for Double;
            *&v258[16] = v208;
            v258[24] = 3;
            v209 = a1[14];
            v210 = swift_isUniquelyReferenced_nonNull_native();
            v211 = a1;
            v212 = v210;
            v256 = v211[14];
            v213 = v256;
            v211[14] = 0x8000000000000000;
            v185 = sub_100771D58(v254, v255);
            v215 = v213[2];
            v216 = (v214 & 1) == 0;
            v47 = __OFADD__(v215, v216);
            v217 = v215 + v216;
            if (v47)
            {
              goto LABEL_159;
            }

            v218 = v214;
            if (v213[3] >= v217)
            {
              if ((v212 & 1) == 0)
              {
                v241 = v185;
                sub_1010050E8();
                v185 = v241;
              }
            }

            else
            {
              sub_100FE65C4(v217, v212);
              v185 = sub_100771D58(v254, v255);
              if ((v218 & 1) != (v219 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v251;
            if (v218)
            {
              goto LABEL_139;
            }

            v220 = v256;
            v256[(v185 >> 6) + 8] |= 1 << v185;
            v229 = (v220[6] + 16 * v185);
            v230 = v255;
            *v229 = v254;
            v229[1] = v230;
            v231 = (v220[7] + 48 * v185);
            v232 = *&v258[9];
            v233 = *v258;
            *v231 = v257;
            v231[1] = v233;
            *(&v231[1]._object + 1) = v232;
            v234 = v220[2];
            v47 = __OFADD__(v234, 1);
            v227 = v234 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            v220[2] = v227;
          }

          v235 = v252;
          a1[14] = v220;
          swift_endAccess();

          sub_101010148(v253, v235);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v202 = type metadata accessor for Logger();
        sub_1000076D4(v202, qword_10177C6D0);
        v203 = v98;
        v159 = Logger.logObject.getter();
        v204 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v159, v204))
        {

          sub_101010148(v253, v252);
LABEL_120:

          goto LABEL_143;
        }

        v205 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *v205 = v248;
        *(v205 + 4) = v203;
        *v206 = v203;
        v207 = v203;
        _os_log_impl(&_mh_execute_header, v159, v204, "Unsupported value type: %@!", v205, 0xCu);
        sub_10000B3A8(v206, &qword_10169BB30, &unk_10138B3C0);
        a1 = v251;

        v11 = v250;

        sub_101010148(v253, v252);
LABEL_143:
        sub_10118B5A0(&v262);
      }

      else
      {
LABEL_21:
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v34 = objc_allocWithZone(NSNumber);
            isa = [v34 initWithLongLong:v253];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v253];
          }
        }

        else if (v26)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v253 & 1).super.super.isa;
        }

        else
        {
          isa = v253;
        }

        v35 = isa;
        objc_opt_self();
        v36 = swift_dynamicCastObjCClass();
        if (v36)
        {
          v37 = v36;
          v4 = v35;
          v38 = String.init(_:)(v37);
          object = v38._object;
          v39 = sub_1000DF96C();
          swift_beginAccess();
          v262 = v38;
          *&v263[8] = &type metadata for String;
          *&v263[16] = v39;
          v263[24] = 1;
          v40 = a1[14];
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v259[0] = a1[14];
          v42 = v259[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v254, v255);
          v45 = *(v42 + 16);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            __break(1u);
            goto LABEL_149;
          }

          v49 = v44;
          if (*(v42 + 24) >= v48)
          {
            if ((v41 & 1) == 0)
            {
              v236 = v43;
              sub_1010050E8();
              v43 = v236;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v254, v255);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v251;
          v11 = v250;
          if (v49)
          {
            v70 = v43;

            v71 = v259[0];
            sub_10118B568(&v262, *(v259[0] + 56) + 48 * v70);
          }

          else
          {
            v71 = v259[0];
            *(v259[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v72 = (v71[6] + 16 * v43);
            v73 = v255;
            *v72 = v254;
            v72[1] = v73;
            v74 = (v71[7] + 48 * v43);
            v75 = *&v263[9];
            v76 = *v263;
            *v74 = v262;
            v74[1] = v76;
            *(&v74[1]._object + 1) = v75;
            v77 = v71[2];
            v47 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (v47)
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

            v71[2] = v78;
          }

          a1[14] = v71;
          swift_endAccess();

LABEL_46:
          sub_101010148(v253, v252);
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            [v51 doubleValue];
            v54 = v53;
            v55 = [v52 integerValue];
            if (v54 == v55)
            {
              v56 = v55;
              v57 = sub_1000DFAD8();
              swift_beginAccess();
              v262._countAndFlagsBits = v56;
              *&v263[8] = &type metadata for Int;
              *&v263[16] = v57;
              v263[24] = 2;
              v58 = a1[14];
              v59 = swift_isUniquelyReferenced_nonNull_native();
              v60 = a1;
              v61 = v59;
              v259[0] = v60[14];
              v62 = v259[0];
              v60[14] = 0x8000000000000000;
              v63 = sub_100771D58(v254, v255);
              v65 = *(v62 + 16);
              v66 = (v64 & 1) == 0;
              v47 = __OFADD__(v65, v66);
              v67 = v65 + v66;
              if (v47)
              {
                goto LABEL_152;
              }

              v68 = v64;
              if (*(v62 + 24) >= v67)
              {
                if ((v61 & 1) == 0)
                {
                  v238 = v63;
                  sub_1010050E8();
                  v63 = v238;
                }
              }

              else
              {
                sub_100FE65C4(v67, v61);
                v63 = sub_100771D58(v254, v255);
                if ((v68 & 1) != (v69 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v251;
              if (v68)
              {
                goto LABEL_77;
              }

              v117 = v259[0];
              *(v259[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v118 = (v117[6] + 16 * v63);
              v119 = v255;
              *v118 = v254;
              v118[1] = v119;
              v120 = (v117[7] + 48 * v63);
              v121 = *&v263[9];
              v122 = *v263;
              *v120 = v262;
              v120[1] = v122;
              *(&v120[1]._object + 1) = v121;
              v123 = v117[2];
              v47 = __OFADD__(v123, 1);
              v124 = v123 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v105 = sub_1000DFA84();
              swift_beginAccess();
              *&v262._countAndFlagsBits = v54;
              *&v263[8] = &type metadata for Double;
              *&v263[16] = v105;
              v263[24] = 3;
              v106 = a1[14];
              v107 = swift_isUniquelyReferenced_nonNull_native();
              v108 = a1;
              v109 = v107;
              v259[0] = v108[14];
              v110 = v259[0];
              v108[14] = 0x8000000000000000;
              v63 = sub_100771D58(v254, v255);
              v112 = *(v110 + 16);
              v113 = (v111 & 1) == 0;
              v47 = __OFADD__(v112, v113);
              v114 = v112 + v113;
              if (v47)
              {
                goto LABEL_155;
              }

              v115 = v111;
              if (*(v110 + 24) >= v114)
              {
                if ((v109 & 1) == 0)
                {
                  v239 = v63;
                  sub_1010050E8();
                  v63 = v239;
                }
              }

              else
              {
                sub_100FE65C4(v114, v109);
                v63 = sub_100771D58(v254, v255);
                if ((v115 & 1) != (v116 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v251;
              if (v115)
              {
LABEL_77:
                v125 = v63;

                v117 = v259[0];
                sub_10118B568(&v262, *(v259[0] + 56) + 48 * v125);
                goto LABEL_80;
              }

              v117 = v259[0];
              *(v259[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v126 = (v117[6] + 16 * v63);
              v127 = v255;
              *v126 = v254;
              v126[1] = v127;
              v128 = (v117[7] + 48 * v63);
              v129 = *&v263[9];
              v130 = *v263;
              *v128 = v262;
              v128[1] = v130;
              *(&v128[1]._object + 1) = v129;
              v131 = v117[2];
              v47 = __OFADD__(v131, 1);
              v124 = v131 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            v117[2] = v124;
LABEL_80:
            v132 = v252;
            a1[14] = v117;
            swift_endAccess();

            sub_101010148(v253, v132);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v91 = type metadata accessor for Logger();
            sub_1000076D4(v91, qword_10177C6D0);
            v92 = v35;
            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              *v95 = v248;
              *(v95 + 4) = v92;
              *v96 = v92;
              v97 = v92;
              _os_log_impl(&_mh_execute_header, v93, v94, "Unsupported value type: %@!", v95, 0xCu);
              sub_10000B3A8(v96, &qword_10169BB30, &unk_10138B3C0);
              a1 = v251;

              v11 = v250;

              goto LABEL_46;
            }

            sub_101010148(v253, v252);
          }
        }
      }
    }

    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        return;
      }

      v14 = *(v2 + 8 * v18);
      ++v15;
      if (v14)
      {
        v15 = v18;
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

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v262._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v262._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_10114FF40(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v250 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x800000010137CFF0;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v249 = v18;
    v252 = a1;
    v251 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v255 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v256 = v24;

      v254 = v26;
      sub_10090C56C(v26, v27);
      v253 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v255, v256);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v263);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
          }

          else
          {
            v32 = v254;
            sub_10090C56C(v254, 0);
            v33 = v32;
          }

          v99 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v263, &v258);
          if (BYTE8(v259[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v258);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v263);
            return;
          }

          v100 = v254;
          sub_10000A748(&v258._countAndFlagsBits, v260);
          v101 = v261;
          v102 = sub_1000035D0(v260, v261);
          v103 = *(*(v101 - 8) + 64);
          __chkstk_darwin(v102);
          (*(v105 + 16))(v243 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v252;
          v99 = [objc_allocWithZone(NSNumber) initWithDouble:*&v258._countAndFlagsBits + *&v100];
          sub_100007BAC(v260);
          goto LABEL_102;
        }

        sub_1010100EC(&v263, &v258);
        if (BYTE8(v259[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v258._countAndFlagsBits, v260);
        v81 = v261;
        v80 = v262;
        v82 = sub_1000035D0(v260, v261);
        v247 = v243;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v245 = v84;
        v85 = v243 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v248 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v258._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v246 = v80;
            v244 = v243;
            __chkstk_darwin(v87);
            v89 = v243 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v246 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v89, v81);
            v80 = v246;
            if (v91)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v244) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v244)
            {
              v246 = v80;
              if (v134 <= 64)
              {
                v244 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v243[2] = v243;
                v141 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v243[0] = v243 - v142;
                swift_getAssociatedConformanceWitness();
                v143 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v243[1] = v243;
                __chkstk_darwin(v143);
                v145 = v243 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v146 = *(*(v246 + 32) + 8);
                v147 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v248 + 8))(v145, v81);
                if (v147)
                {
                  goto LABEL_163;
                }

                v80 = v246;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v244 = v243;
              __chkstk_darwin(v134);
              v136 = v243 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v137 = *(*(v246 + 32) + 8);
              v138 = dispatch thunk of static Comparable.< infix(_:_:)();
              v139 = v136;
              v80 = v246;
              (*(v248 + 8))(v139, v81);
              if (v138)
              {
                goto LABEL_163;
              }
            }

            else if (v134 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v258._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v148 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v149 = v80;
          v150 = v148;
          v246 = v149;
          v151 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v150)
          {
            if (v151 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v151 >= 64)
          {
LABEL_93:
            v244 = v243;
            __chkstk_darwin(v151);
            v245 = v243 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v153 = v246;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v154 = *(*(v153 + 32) + 8);
            v155 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v245, v81);
            if (v155)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v156 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v248 + 8))(v85, v81);
        v48 = __OFADD__(v156, v254);
        v157 = &v254[v156];
        if (v48)
        {
          goto LABEL_154;
        }

        v99 = [objc_allocWithZone(NSNumber) initWithLongLong:v157];
        sub_100007BAC(v260);
        a1 = v252;
LABEL_102:
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = v158;
          v160 = v99;
          v161 = String.init(_:)(v159);
          v162 = a1;
          v163 = sub_1000DF96C();
          swift_beginAccess();
          v258 = v161;
          *(&v259[0] + 1) = &type metadata for String;
          *&v259[1] = v163;
          BYTE8(v259[1]) = 1;
          v164 = v162[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v257 = v162[14];
          v166 = v257;
          v162[14] = 0x8000000000000000;
          v167 = sub_100771D58(v255, v256);
          v169 = v166[2];
          v170 = (v168 & 1) == 0;
          v48 = __OFADD__(v169, v170);
          v171 = v169 + v170;
          if (v48)
          {
            goto LABEL_151;
          }

          v172 = v168;
          if (v166[3] >= v171)
          {
            v12 = v251;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v238 = v167;
              sub_1010050E8();
              v167 = v238;
            }
          }

          else
          {
            sub_100FE65C4(v171, isUniquelyReferenced_nonNull_native);
            v167 = sub_100771D58(v255, v256);
            v12 = v251;
            if ((v172 & 1) != (v173 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          if (v172)
          {
            v193 = v167;

            v194 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v193);
          }

          else
          {
            v194 = v257;
            v257[(v167 >> 6) + 8] |= 1 << v167;
            v195 = (v194[6] + 16 * v167);
            v196 = v256;
            *v195 = v255;
            v195[1] = v196;
            v197 = (v194[7] + 48 * v167);
            v198 = *(v259 + 9);
            v199 = v259[0];
            *v197 = v258;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = v194[2];
            v48 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            v194[2] = v201;
          }

          v202 = v253;
          a1[14] = v194;
          swift_endAccess();
          sub_101010148(v254, v202);

          goto LABEL_120;
        }

        objc_opt_self();
        v174 = swift_dynamicCastObjCClass();
        if (v174)
        {
          v175 = v174;
          [v174 doubleValue];
          v177 = v176;
          v178 = [v175 integerValue];
          if (v177 == v178)
          {
            v179 = v178;
            v180 = sub_1000DFAD8();
            swift_beginAccess();
            v258._countAndFlagsBits = v179;
            *(&v259[0] + 1) = &type metadata for Int;
            *&v259[1] = v180;
            BYTE8(v259[1]) = 2;
            v181 = a1[14];
            v182 = swift_isUniquelyReferenced_nonNull_native();
            v183 = a1;
            v184 = v182;
            v257 = v183[14];
            v185 = v257;
            v183[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v188 = v185[2];
            v189 = (v187 & 1) == 0;
            v48 = __OFADD__(v188, v189);
            v190 = v188 + v189;
            if (v48)
            {
              goto LABEL_157;
            }

            v191 = v187;
            if (v185[3] >= v190)
            {
              if ((v184 & 1) == 0)
              {
                v241 = v186;
                sub_1010050E8();
                v186 = v241;
              }
            }

            else
            {
              sub_100FE65C4(v190, v184);
              v186 = sub_100771D58(v255, v256);
              if ((v191 & 1) != (v192 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if ((v191 & 1) == 0)
            {
              v221 = v257;
              v257[(v186 >> 6) + 8] |= 1 << v186;
              v222 = (v221[6] + 16 * v186);
              v223 = v256;
              *v222 = v255;
              v222[1] = v223;
              v224 = (v221[7] + 48 * v186);
              v225 = *(v259 + 9);
              v226 = v259[0];
              *v224 = v258;
              v224[1] = v226;
              *(&v224[1]._object + 1) = v225;
              v227 = v221[2];
              v48 = __OFADD__(v227, 1);
              v228 = v227 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v229 = v186;

            v221 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v229);
          }

          else
          {
            v209 = sub_1000DFA84();
            swift_beginAccess();
            *&v258._countAndFlagsBits = v177;
            *(&v259[0] + 1) = &type metadata for Double;
            *&v259[1] = v209;
            BYTE8(v259[1]) = 3;
            v210 = a1[14];
            v211 = swift_isUniquelyReferenced_nonNull_native();
            v212 = a1;
            v213 = v211;
            v257 = v212[14];
            v214 = v257;
            v212[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v216 = v214[2];
            v217 = (v215 & 1) == 0;
            v48 = __OFADD__(v216, v217);
            v218 = v216 + v217;
            if (v48)
            {
              goto LABEL_159;
            }

            v219 = v215;
            if (v214[3] >= v218)
            {
              if ((v213 & 1) == 0)
              {
                v242 = v186;
                sub_1010050E8();
                v186 = v242;
              }
            }

            else
            {
              sub_100FE65C4(v218, v213);
              v186 = sub_100771D58(v255, v256);
              if ((v219 & 1) != (v220 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if (v219)
            {
              goto LABEL_139;
            }

            v221 = v257;
            v257[(v186 >> 6) + 8] |= 1 << v186;
            v230 = (v221[6] + 16 * v186);
            v231 = v256;
            *v230 = v255;
            v230[1] = v231;
            v232 = (v221[7] + 48 * v186);
            v233 = *(v259 + 9);
            v234 = v259[0];
            *v232 = v258;
            v232[1] = v234;
            *(&v232[1]._object + 1) = v233;
            v235 = v221[2];
            v48 = __OFADD__(v235, 1);
            v228 = v235 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            v221[2] = v228;
          }

          v236 = v253;
          a1[14] = v221;
          swift_endAccess();

          sub_101010148(v254, v236);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v203 = type metadata accessor for Logger();
        sub_1000076D4(v203, qword_10177C6D0);
        v204 = v99;
        v160 = Logger.logObject.getter();
        v205 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v160, v205))
        {

          sub_101010148(v254, v253);
LABEL_120:

          goto LABEL_143;
        }

        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *v206 = v249;
        *(v206 + 4) = v204;
        *v207 = v204;
        v208 = v204;
        _os_log_impl(&_mh_execute_header, v160, v205, "Unsupported value type: %@!", v206, 0xCu);
        sub_10000B3A8(v207, &qword_10169BB30, &unk_10138B3C0);
        a1 = v252;

        v12 = v251;

        sub_101010148(v254, v253);
LABEL_143:
        sub_10118B5A0(&v263);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v254];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v254];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
        }

        else
        {
          isa = v254;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v263 = v39;
          *&v264[8] = &type metadata for String;
          *&v264[16] = v40;
          v264[24] = 1;
          v41 = a1[14];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v260[0] = a1[14];
          v43 = v260[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v255, v256);
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
              v237 = v44;
              sub_1010050E8();
              v44 = v237;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v255, v256);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          v12 = v251;
          if (v50)
          {
            v71 = v44;

            v72 = v260[0];
            sub_10118B568(&v263, *(v260[0] + 56) + 48 * v71);
          }

          else
          {
            v72 = v260[0];
            *(v260[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v73 = (v72[6] + 16 * v44);
            v74 = v256;
            *v73 = v255;
            v73[1] = v74;
            v75 = (v72[7] + 48 * v44);
            v76 = *&v264[9];
            v77 = *v264;
            *v75 = v263;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = v72[2];
            v48 = __OFADD__(v78, 1);
            v79 = v78 + 1;
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

            v72[2] = v79;
          }

          a1[14] = v72;
          swift_endAccess();

LABEL_46:
          sub_101010148(v254, v253);
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
              v263._countAndFlagsBits = v57;
              *&v264[8] = &type metadata for Int;
              *&v264[16] = v58;
              v264[24] = 2;
              v59 = a1[14];
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v61 = a1;
              v62 = v60;
              v260[0] = v61[14];
              v63 = v260[0];
              v61[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
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
                  v239 = v64;
                  sub_1010050E8();
                  v64 = v239;
                }
              }

              else
              {
                sub_100FE65C4(v68, v62);
                v64 = sub_100771D58(v255, v256);
                if ((v69 & 1) != (v70 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v69)
              {
                goto LABEL_77;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v119 = (v118[6] + 16 * v64);
              v120 = v256;
              *v119 = v255;
              v119[1] = v120;
              v121 = (v118[7] + 48 * v64);
              v122 = *&v264[9];
              v123 = *v264;
              *v121 = v263;
              v121[1] = v123;
              *(&v121[1]._object + 1) = v122;
              v124 = v118[2];
              v48 = __OFADD__(v124, 1);
              v125 = v124 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v106 = sub_1000DFA84();
              swift_beginAccess();
              *&v263._countAndFlagsBits = v55;
              *&v264[8] = &type metadata for Double;
              *&v264[16] = v106;
              v264[24] = 3;
              v107 = a1[14];
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v109 = a1;
              v110 = v108;
              v260[0] = v109[14];
              v111 = v260[0];
              v109[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
              v113 = *(v111 + 16);
              v114 = (v112 & 1) == 0;
              v48 = __OFADD__(v113, v114);
              v115 = v113 + v114;
              if (v48)
              {
                goto LABEL_155;
              }

              v116 = v112;
              if (*(v111 + 24) >= v115)
              {
                if ((v110 & 1) == 0)
                {
                  v240 = v64;
                  sub_1010050E8();
                  v64 = v240;
                }
              }

              else
              {
                sub_100FE65C4(v115, v110);
                v64 = sub_100771D58(v255, v256);
                if ((v116 & 1) != (v117 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v116)
              {
LABEL_77:
                v126 = v64;

                v118 = v260[0];
                sub_10118B568(&v263, *(v260[0] + 56) + 48 * v126);
                goto LABEL_80;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v127 = (v118[6] + 16 * v64);
              v128 = v256;
              *v127 = v255;
              v127[1] = v128;
              v129 = (v118[7] + 48 * v64);
              v130 = *&v264[9];
              v131 = *v264;
              *v129 = v263;
              v129[1] = v131;
              *(&v129[1]._object + 1) = v130;
              v132 = v118[2];
              v48 = __OFADD__(v132, 1);
              v125 = v132 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            v118[2] = v125;
LABEL_80:
            v133 = v253;
            a1[14] = v118;
            swift_endAccess();

            sub_101010148(v254, v133);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            sub_1000076D4(v92, qword_10177C6D0);
            v93 = v36;
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *v96 = v249;
              *(v96 + 4) = v93;
              *v97 = v93;
              v98 = v93;
              _os_log_impl(&_mh_execute_header, v94, v95, "Unsupported value type: %@!", v96, 0xCu);
              sub_10000B3A8(v97, &qword_10169BB30, &unk_10138B3C0);
              a1 = v252;

              v12 = v251;

              goto LABEL_46;
            }

            sub_101010148(v254, v253);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v263._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v263._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_101151A94(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v250 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x800000010137CFD0;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v249 = v18;
    v252 = a1;
    v251 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v255 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v256 = v24;

      v254 = v26;
      sub_10090C56C(v26, v27);
      v253 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v255, v256);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v263);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
          }

          else
          {
            v32 = v254;
            sub_10090C56C(v254, 0);
            v33 = v32;
          }

          v99 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v263, &v258);
          if (BYTE8(v259[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v258);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v263);
            return;
          }

          v100 = v254;
          sub_10000A748(&v258._countAndFlagsBits, v260);
          v101 = v261;
          v102 = sub_1000035D0(v260, v261);
          v103 = *(*(v101 - 8) + 64);
          __chkstk_darwin(v102);
          (*(v105 + 16))(v243 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v252;
          v99 = [objc_allocWithZone(NSNumber) initWithDouble:*&v258._countAndFlagsBits + *&v100];
          sub_100007BAC(v260);
          goto LABEL_102;
        }

        sub_1010100EC(&v263, &v258);
        if (BYTE8(v259[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v258._countAndFlagsBits, v260);
        v81 = v261;
        v80 = v262;
        v82 = sub_1000035D0(v260, v261);
        v247 = v243;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v245 = v84;
        v85 = v243 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v248 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v258._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v246 = v80;
            v244 = v243;
            __chkstk_darwin(v87);
            v89 = v243 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v246 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v89, v81);
            v80 = v246;
            if (v91)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v244) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v244)
            {
              v246 = v80;
              if (v134 <= 64)
              {
                v244 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v243[2] = v243;
                v141 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v243[0] = v243 - v142;
                swift_getAssociatedConformanceWitness();
                v143 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v243[1] = v243;
                __chkstk_darwin(v143);
                v145 = v243 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v146 = *(*(v246 + 32) + 8);
                v147 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v248 + 8))(v145, v81);
                if (v147)
                {
                  goto LABEL_163;
                }

                v80 = v246;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v244 = v243;
              __chkstk_darwin(v134);
              v136 = v243 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v137 = *(*(v246 + 32) + 8);
              v138 = dispatch thunk of static Comparable.< infix(_:_:)();
              v139 = v136;
              v80 = v246;
              (*(v248 + 8))(v139, v81);
              if (v138)
              {
                goto LABEL_163;
              }
            }

            else if (v134 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v258._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v148 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v149 = v80;
          v150 = v148;
          v246 = v149;
          v151 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v150)
          {
            if (v151 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v151 >= 64)
          {
LABEL_93:
            v244 = v243;
            __chkstk_darwin(v151);
            v245 = v243 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v153 = v246;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v154 = *(*(v153 + 32) + 8);
            v155 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v245, v81);
            if (v155)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v156 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v248 + 8))(v85, v81);
        v48 = __OFADD__(v156, v254);
        v157 = &v254[v156];
        if (v48)
        {
          goto LABEL_154;
        }

        v99 = [objc_allocWithZone(NSNumber) initWithLongLong:v157];
        sub_100007BAC(v260);
        a1 = v252;
LABEL_102:
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = v158;
          v160 = v99;
          v161 = String.init(_:)(v159);
          v162 = a1;
          v163 = sub_1000DF96C();
          swift_beginAccess();
          v258 = v161;
          *(&v259[0] + 1) = &type metadata for String;
          *&v259[1] = v163;
          BYTE8(v259[1]) = 1;
          v164 = v162[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v257 = v162[14];
          v166 = v257;
          v162[14] = 0x8000000000000000;
          v167 = sub_100771D58(v255, v256);
          v169 = v166[2];
          v170 = (v168 & 1) == 0;
          v48 = __OFADD__(v169, v170);
          v171 = v169 + v170;
          if (v48)
          {
            goto LABEL_151;
          }

          v172 = v168;
          if (v166[3] >= v171)
          {
            v12 = v251;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v238 = v167;
              sub_1010050E8();
              v167 = v238;
            }
          }

          else
          {
            sub_100FE65C4(v171, isUniquelyReferenced_nonNull_native);
            v167 = sub_100771D58(v255, v256);
            v12 = v251;
            if ((v172 & 1) != (v173 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          if (v172)
          {
            v193 = v167;

            v194 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v193);
          }

          else
          {
            v194 = v257;
            v257[(v167 >> 6) + 8] |= 1 << v167;
            v195 = (v194[6] + 16 * v167);
            v196 = v256;
            *v195 = v255;
            v195[1] = v196;
            v197 = (v194[7] + 48 * v167);
            v198 = *(v259 + 9);
            v199 = v259[0];
            *v197 = v258;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = v194[2];
            v48 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            v194[2] = v201;
          }

          v202 = v253;
          a1[14] = v194;
          swift_endAccess();
          sub_101010148(v254, v202);

          goto LABEL_120;
        }

        objc_opt_self();
        v174 = swift_dynamicCastObjCClass();
        if (v174)
        {
          v175 = v174;
          [v174 doubleValue];
          v177 = v176;
          v178 = [v175 integerValue];
          if (v177 == v178)
          {
            v179 = v178;
            v180 = sub_1000DFAD8();
            swift_beginAccess();
            v258._countAndFlagsBits = v179;
            *(&v259[0] + 1) = &type metadata for Int;
            *&v259[1] = v180;
            BYTE8(v259[1]) = 2;
            v181 = a1[14];
            v182 = swift_isUniquelyReferenced_nonNull_native();
            v183 = a1;
            v184 = v182;
            v257 = v183[14];
            v185 = v257;
            v183[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v188 = v185[2];
            v189 = (v187 & 1) == 0;
            v48 = __OFADD__(v188, v189);
            v190 = v188 + v189;
            if (v48)
            {
              goto LABEL_157;
            }

            v191 = v187;
            if (v185[3] >= v190)
            {
              if ((v184 & 1) == 0)
              {
                v241 = v186;
                sub_1010050E8();
                v186 = v241;
              }
            }

            else
            {
              sub_100FE65C4(v190, v184);
              v186 = sub_100771D58(v255, v256);
              if ((v191 & 1) != (v192 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if ((v191 & 1) == 0)
            {
              v221 = v257;
              v257[(v186 >> 6) + 8] |= 1 << v186;
              v222 = (v221[6] + 16 * v186);
              v223 = v256;
              *v222 = v255;
              v222[1] = v223;
              v224 = (v221[7] + 48 * v186);
              v225 = *(v259 + 9);
              v226 = v259[0];
              *v224 = v258;
              v224[1] = v226;
              *(&v224[1]._object + 1) = v225;
              v227 = v221[2];
              v48 = __OFADD__(v227, 1);
              v228 = v227 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v229 = v186;

            v221 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v229);
          }

          else
          {
            v209 = sub_1000DFA84();
            swift_beginAccess();
            *&v258._countAndFlagsBits = v177;
            *(&v259[0] + 1) = &type metadata for Double;
            *&v259[1] = v209;
            BYTE8(v259[1]) = 3;
            v210 = a1[14];
            v211 = swift_isUniquelyReferenced_nonNull_native();
            v212 = a1;
            v213 = v211;
            v257 = v212[14];
            v214 = v257;
            v212[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v216 = v214[2];
            v217 = (v215 & 1) == 0;
            v48 = __OFADD__(v216, v217);
            v218 = v216 + v217;
            if (v48)
            {
              goto LABEL_159;
            }

            v219 = v215;
            if (v214[3] >= v218)
            {
              if ((v213 & 1) == 0)
              {
                v242 = v186;
                sub_1010050E8();
                v186 = v242;
              }
            }

            else
            {
              sub_100FE65C4(v218, v213);
              v186 = sub_100771D58(v255, v256);
              if ((v219 & 1) != (v220 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if (v219)
            {
              goto LABEL_139;
            }

            v221 = v257;
            v257[(v186 >> 6) + 8] |= 1 << v186;
            v230 = (v221[6] + 16 * v186);
            v231 = v256;
            *v230 = v255;
            v230[1] = v231;
            v232 = (v221[7] + 48 * v186);
            v233 = *(v259 + 9);
            v234 = v259[0];
            *v232 = v258;
            v232[1] = v234;
            *(&v232[1]._object + 1) = v233;
            v235 = v221[2];
            v48 = __OFADD__(v235, 1);
            v228 = v235 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            v221[2] = v228;
          }

          v236 = v253;
          a1[14] = v221;
          swift_endAccess();

          sub_101010148(v254, v236);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v203 = type metadata accessor for Logger();
        sub_1000076D4(v203, qword_10177C6D0);
        v204 = v99;
        v160 = Logger.logObject.getter();
        v205 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v160, v205))
        {

          sub_101010148(v254, v253);
LABEL_120:

          goto LABEL_143;
        }

        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *v206 = v249;
        *(v206 + 4) = v204;
        *v207 = v204;
        v208 = v204;
        _os_log_impl(&_mh_execute_header, v160, v205, "Unsupported value type: %@!", v206, 0xCu);
        sub_10000B3A8(v207, &qword_10169BB30, &unk_10138B3C0);
        a1 = v252;

        v12 = v251;

        sub_101010148(v254, v253);
LABEL_143:
        sub_10118B5A0(&v263);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v254];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v254];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
        }

        else
        {
          isa = v254;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v263 = v39;
          *&v264[8] = &type metadata for String;
          *&v264[16] = v40;
          v264[24] = 1;
          v41 = a1[14];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v260[0] = a1[14];
          v43 = v260[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v255, v256);
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
              v237 = v44;
              sub_1010050E8();
              v44 = v237;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v255, v256);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          v12 = v251;
          if (v50)
          {
            v71 = v44;

            v72 = v260[0];
            sub_10118B568(&v263, *(v260[0] + 56) + 48 * v71);
          }

          else
          {
            v72 = v260[0];
            *(v260[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v73 = (v72[6] + 16 * v44);
            v74 = v256;
            *v73 = v255;
            v73[1] = v74;
            v75 = (v72[7] + 48 * v44);
            v76 = *&v264[9];
            v77 = *v264;
            *v75 = v263;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = v72[2];
            v48 = __OFADD__(v78, 1);
            v79 = v78 + 1;
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

            v72[2] = v79;
          }

          a1[14] = v72;
          swift_endAccess();

LABEL_46:
          sub_101010148(v254, v253);
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
              v263._countAndFlagsBits = v57;
              *&v264[8] = &type metadata for Int;
              *&v264[16] = v58;
              v264[24] = 2;
              v59 = a1[14];
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v61 = a1;
              v62 = v60;
              v260[0] = v61[14];
              v63 = v260[0];
              v61[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
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
                  v239 = v64;
                  sub_1010050E8();
                  v64 = v239;
                }
              }

              else
              {
                sub_100FE65C4(v68, v62);
                v64 = sub_100771D58(v255, v256);
                if ((v69 & 1) != (v70 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v69)
              {
                goto LABEL_77;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v119 = (v118[6] + 16 * v64);
              v120 = v256;
              *v119 = v255;
              v119[1] = v120;
              v121 = (v118[7] + 48 * v64);
              v122 = *&v264[9];
              v123 = *v264;
              *v121 = v263;
              v121[1] = v123;
              *(&v121[1]._object + 1) = v122;
              v124 = v118[2];
              v48 = __OFADD__(v124, 1);
              v125 = v124 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v106 = sub_1000DFA84();
              swift_beginAccess();
              *&v263._countAndFlagsBits = v55;
              *&v264[8] = &type metadata for Double;
              *&v264[16] = v106;
              v264[24] = 3;
              v107 = a1[14];
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v109 = a1;
              v110 = v108;
              v260[0] = v109[14];
              v111 = v260[0];
              v109[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
              v113 = *(v111 + 16);
              v114 = (v112 & 1) == 0;
              v48 = __OFADD__(v113, v114);
              v115 = v113 + v114;
              if (v48)
              {
                goto LABEL_155;
              }

              v116 = v112;
              if (*(v111 + 24) >= v115)
              {
                if ((v110 & 1) == 0)
                {
                  v240 = v64;
                  sub_1010050E8();
                  v64 = v240;
                }
              }

              else
              {
                sub_100FE65C4(v115, v110);
                v64 = sub_100771D58(v255, v256);
                if ((v116 & 1) != (v117 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v116)
              {
LABEL_77:
                v126 = v64;

                v118 = v260[0];
                sub_10118B568(&v263, *(v260[0] + 56) + 48 * v126);
                goto LABEL_80;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v127 = (v118[6] + 16 * v64);
              v128 = v256;
              *v127 = v255;
              v127[1] = v128;
              v129 = (v118[7] + 48 * v64);
              v130 = *&v264[9];
              v131 = *v264;
              *v129 = v263;
              v129[1] = v131;
              *(&v129[1]._object + 1) = v130;
              v132 = v118[2];
              v48 = __OFADD__(v132, 1);
              v125 = v132 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            v118[2] = v125;
LABEL_80:
            v133 = v253;
            a1[14] = v118;
            swift_endAccess();

            sub_101010148(v254, v133);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            sub_1000076D4(v92, qword_10177C6D0);
            v93 = v36;
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *v96 = v249;
              *(v96 + 4) = v93;
              *v97 = v93;
              v98 = v93;
              _os_log_impl(&_mh_execute_header, v94, v95, "Unsupported value type: %@!", v96, 0xCu);
              sub_10000B3A8(v97, &qword_10169BB30, &unk_10138B3C0);
              a1 = v252;

              v12 = v251;

              goto LABEL_46;
            }

            sub_101010148(v254, v253);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v263._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v263._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_1011535E8(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v250 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 40) = 0x800000010137CFB0;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v249 = v18;
    v252 = a1;
    v251 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v255 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v256 = v24;

      v254 = v26;
      sub_10090C56C(v26, v27);
      v253 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v255, v256);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v263);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
          }

          else
          {
            v32 = v254;
            sub_10090C56C(v254, 0);
            v33 = v32;
          }

          v99 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v263, &v258);
          if (BYTE8(v259[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v258);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v263);
            return;
          }

          v100 = v254;
          sub_10000A748(&v258._countAndFlagsBits, v260);
          v101 = v261;
          v102 = sub_1000035D0(v260, v261);
          v103 = *(*(v101 - 8) + 64);
          __chkstk_darwin(v102);
          (*(v105 + 16))(v243 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v252;
          v99 = [objc_allocWithZone(NSNumber) initWithDouble:*&v258._countAndFlagsBits + *&v100];
          sub_100007BAC(v260);
          goto LABEL_102;
        }

        sub_1010100EC(&v263, &v258);
        if (BYTE8(v259[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v258._countAndFlagsBits, v260);
        v81 = v261;
        v80 = v262;
        v82 = sub_1000035D0(v260, v261);
        v247 = v243;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v245 = v84;
        v85 = v243 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v248 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v258._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v246 = v80;
            v244 = v243;
            __chkstk_darwin(v87);
            v89 = v243 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v246 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v89, v81);
            v80 = v246;
            if (v91)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v244) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v244)
            {
              v246 = v80;
              if (v134 <= 64)
              {
                v244 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v243[2] = v243;
                v141 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v243[0] = v243 - v142;
                swift_getAssociatedConformanceWitness();
                v143 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v243[1] = v243;
                __chkstk_darwin(v143);
                v145 = v243 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v146 = *(*(v246 + 32) + 8);
                v147 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v248 + 8))(v145, v81);
                if (v147)
                {
                  goto LABEL_163;
                }

                v80 = v246;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v244 = v243;
              __chkstk_darwin(v134);
              v136 = v243 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v137 = *(*(v246 + 32) + 8);
              v138 = dispatch thunk of static Comparable.< infix(_:_:)();
              v139 = v136;
              v80 = v246;
              (*(v248 + 8))(v139, v81);
              if (v138)
              {
                goto LABEL_163;
              }
            }

            else if (v134 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v258._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v148 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v149 = v80;
          v150 = v148;
          v246 = v149;
          v151 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v150)
          {
            if (v151 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v151 >= 64)
          {
LABEL_93:
            v244 = v243;
            __chkstk_darwin(v151);
            v245 = v243 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v153 = v246;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v154 = *(*(v153 + 32) + 8);
            v155 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v245, v81);
            if (v155)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v156 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v248 + 8))(v85, v81);
        v48 = __OFADD__(v156, v254);
        v157 = &v254[v156];
        if (v48)
        {
          goto LABEL_154;
        }

        v99 = [objc_allocWithZone(NSNumber) initWithLongLong:v157];
        sub_100007BAC(v260);
        a1 = v252;
LABEL_102:
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = v158;
          v160 = v99;
          v161 = String.init(_:)(v159);
          v162 = a1;
          v163 = sub_1000DF96C();
          swift_beginAccess();
          v258 = v161;
          *(&v259[0] + 1) = &type metadata for String;
          *&v259[1] = v163;
          BYTE8(v259[1]) = 1;
          v164 = v162[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v257 = v162[14];
          v166 = v257;
          v162[14] = 0x8000000000000000;
          v167 = sub_100771D58(v255, v256);
          v169 = v166[2];
          v170 = (v168 & 1) == 0;
          v48 = __OFADD__(v169, v170);
          v171 = v169 + v170;
          if (v48)
          {
            goto LABEL_151;
          }

          v172 = v168;
          if (v166[3] >= v171)
          {
            v12 = v251;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v238 = v167;
              sub_1010050E8();
              v167 = v238;
            }
          }

          else
          {
            sub_100FE65C4(v171, isUniquelyReferenced_nonNull_native);
            v167 = sub_100771D58(v255, v256);
            v12 = v251;
            if ((v172 & 1) != (v173 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          if (v172)
          {
            v193 = v167;

            v194 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v193);
          }

          else
          {
            v194 = v257;
            v257[(v167 >> 6) + 8] |= 1 << v167;
            v195 = (v194[6] + 16 * v167);
            v196 = v256;
            *v195 = v255;
            v195[1] = v196;
            v197 = (v194[7] + 48 * v167);
            v198 = *(v259 + 9);
            v199 = v259[0];
            *v197 = v258;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = v194[2];
            v48 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            v194[2] = v201;
          }

          v202 = v253;
          a1[14] = v194;
          swift_endAccess();
          sub_101010148(v254, v202);

          goto LABEL_120;
        }

        objc_opt_self();
        v174 = swift_dynamicCastObjCClass();
        if (v174)
        {
          v175 = v174;
          [v174 doubleValue];
          v177 = v176;
          v178 = [v175 integerValue];
          if (v177 == v178)
          {
            v179 = v178;
            v180 = sub_1000DFAD8();
            swift_beginAccess();
            v258._countAndFlagsBits = v179;
            *(&v259[0] + 1) = &type metadata for Int;
            *&v259[1] = v180;
            BYTE8(v259[1]) = 2;
            v181 = a1[14];
            v182 = swift_isUniquelyReferenced_nonNull_native();
            v183 = a1;
            v184 = v182;
            v257 = v183[14];
            v185 = v257;
            v183[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v188 = v185[2];
            v189 = (v187 & 1) == 0;
            v48 = __OFADD__(v188, v189);
            v190 = v188 + v189;
            if (v48)
            {
              goto LABEL_157;
            }

            v191 = v187;
            if (v185[3] >= v190)
            {
              if ((v184 & 1) == 0)
              {
                v241 = v186;
                sub_1010050E8();
                v186 = v241;
              }
            }

            else
            {
              sub_100FE65C4(v190, v184);
              v186 = sub_100771D58(v255, v256);
              if ((v191 & 1) != (v192 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if ((v191 & 1) == 0)
            {
              v221 = v257;
              v257[(v186 >> 6) + 8] |= 1 << v186;
              v222 = (v221[6] + 16 * v186);
              v223 = v256;
              *v222 = v255;
              v222[1] = v223;
              v224 = (v221[7] + 48 * v186);
              v225 = *(v259 + 9);
              v226 = v259[0];
              *v224 = v258;
              v224[1] = v226;
              *(&v224[1]._object + 1) = v225;
              v227 = v221[2];
              v48 = __OFADD__(v227, 1);
              v228 = v227 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v229 = v186;

            v221 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v229);
          }

          else
          {
            v209 = sub_1000DFA84();
            swift_beginAccess();
            *&v258._countAndFlagsBits = v177;
            *(&v259[0] + 1) = &type metadata for Double;
            *&v259[1] = v209;
            BYTE8(v259[1]) = 3;
            v210 = a1[14];
            v211 = swift_isUniquelyReferenced_nonNull_native();
            v212 = a1;
            v213 = v211;
            v257 = v212[14];
            v214 = v257;
            v212[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v216 = v214[2];
            v217 = (v215 & 1) == 0;
            v48 = __OFADD__(v216, v217);
            v218 = v216 + v217;
            if (v48)
            {
              goto LABEL_159;
            }

            v219 = v215;
            if (v214[3] >= v218)
            {
              if ((v213 & 1) == 0)
              {
                v242 = v186;
                sub_1010050E8();
                v186 = v242;
              }
            }

            else
            {
              sub_100FE65C4(v218, v213);
              v186 = sub_100771D58(v255, v256);
              if ((v219 & 1) != (v220 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if (v219)
            {
              goto LABEL_139;
            }

            v221 = v257;
            v257[(v186 >> 6) + 8] |= 1 << v186;
            v230 = (v221[6] + 16 * v186);
            v231 = v256;
            *v230 = v255;
            v230[1] = v231;
            v232 = (v221[7] + 48 * v186);
            v233 = *(v259 + 9);
            v234 = v259[0];
            *v232 = v258;
            v232[1] = v234;
            *(&v232[1]._object + 1) = v233;
            v235 = v221[2];
            v48 = __OFADD__(v235, 1);
            v228 = v235 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            v221[2] = v228;
          }

          v236 = v253;
          a1[14] = v221;
          swift_endAccess();

          sub_101010148(v254, v236);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v203 = type metadata accessor for Logger();
        sub_1000076D4(v203, qword_10177C6D0);
        v204 = v99;
        v160 = Logger.logObject.getter();
        v205 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v160, v205))
        {

          sub_101010148(v254, v253);
LABEL_120:

          goto LABEL_143;
        }

        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *v206 = v249;
        *(v206 + 4) = v204;
        *v207 = v204;
        v208 = v204;
        _os_log_impl(&_mh_execute_header, v160, v205, "Unsupported value type: %@!", v206, 0xCu);
        sub_10000B3A8(v207, &qword_10169BB30, &unk_10138B3C0);
        a1 = v252;

        v12 = v251;

        sub_101010148(v254, v253);
LABEL_143:
        sub_10118B5A0(&v263);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v254];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v254];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
        }

        else
        {
          isa = v254;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v263 = v39;
          *&v264[8] = &type metadata for String;
          *&v264[16] = v40;
          v264[24] = 1;
          v41 = a1[14];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v260[0] = a1[14];
          v43 = v260[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v255, v256);
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
              v237 = v44;
              sub_1010050E8();
              v44 = v237;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v255, v256);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          v12 = v251;
          if (v50)
          {
            v71 = v44;

            v72 = v260[0];
            sub_10118B568(&v263, *(v260[0] + 56) + 48 * v71);
          }

          else
          {
            v72 = v260[0];
            *(v260[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v73 = (v72[6] + 16 * v44);
            v74 = v256;
            *v73 = v255;
            v73[1] = v74;
            v75 = (v72[7] + 48 * v44);
            v76 = *&v264[9];
            v77 = *v264;
            *v75 = v263;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = v72[2];
            v48 = __OFADD__(v78, 1);
            v79 = v78 + 1;
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

            v72[2] = v79;
          }

          a1[14] = v72;
          swift_endAccess();

LABEL_46:
          sub_101010148(v254, v253);
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
              v263._countAndFlagsBits = v57;
              *&v264[8] = &type metadata for Int;
              *&v264[16] = v58;
              v264[24] = 2;
              v59 = a1[14];
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v61 = a1;
              v62 = v60;
              v260[0] = v61[14];
              v63 = v260[0];
              v61[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
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
                  v239 = v64;
                  sub_1010050E8();
                  v64 = v239;
                }
              }

              else
              {
                sub_100FE65C4(v68, v62);
                v64 = sub_100771D58(v255, v256);
                if ((v69 & 1) != (v70 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v69)
              {
                goto LABEL_77;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v119 = (v118[6] + 16 * v64);
              v120 = v256;
              *v119 = v255;
              v119[1] = v120;
              v121 = (v118[7] + 48 * v64);
              v122 = *&v264[9];
              v123 = *v264;
              *v121 = v263;
              v121[1] = v123;
              *(&v121[1]._object + 1) = v122;
              v124 = v118[2];
              v48 = __OFADD__(v124, 1);
              v125 = v124 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v106 = sub_1000DFA84();
              swift_beginAccess();
              *&v263._countAndFlagsBits = v55;
              *&v264[8] = &type metadata for Double;
              *&v264[16] = v106;
              v264[24] = 3;
              v107 = a1[14];
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v109 = a1;
              v110 = v108;
              v260[0] = v109[14];
              v111 = v260[0];
              v109[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
              v113 = *(v111 + 16);
              v114 = (v112 & 1) == 0;
              v48 = __OFADD__(v113, v114);
              v115 = v113 + v114;
              if (v48)
              {
                goto LABEL_155;
              }

              v116 = v112;
              if (*(v111 + 24) >= v115)
              {
                if ((v110 & 1) == 0)
                {
                  v240 = v64;
                  sub_1010050E8();
                  v64 = v240;
                }
              }

              else
              {
                sub_100FE65C4(v115, v110);
                v64 = sub_100771D58(v255, v256);
                if ((v116 & 1) != (v117 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v116)
              {
LABEL_77:
                v126 = v64;

                v118 = v260[0];
                sub_10118B568(&v263, *(v260[0] + 56) + 48 * v126);
                goto LABEL_80;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v127 = (v118[6] + 16 * v64);
              v128 = v256;
              *v127 = v255;
              v127[1] = v128;
              v129 = (v118[7] + 48 * v64);
              v130 = *&v264[9];
              v131 = *v264;
              *v129 = v263;
              v129[1] = v131;
              *(&v129[1]._object + 1) = v130;
              v132 = v118[2];
              v48 = __OFADD__(v132, 1);
              v125 = v132 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            v118[2] = v125;
LABEL_80:
            v133 = v253;
            a1[14] = v118;
            swift_endAccess();

            sub_101010148(v254, v133);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            sub_1000076D4(v92, qword_10177C6D0);
            v93 = v36;
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *v96 = v249;
              *(v96 + 4) = v93;
              *v97 = v93;
              v98 = v93;
              _os_log_impl(&_mh_execute_header, v94, v95, "Unsupported value type: %@!", v96, 0xCu);
              sub_10000B3A8(v97, &qword_10169BB30, &unk_10138B3C0);
              a1 = v252;

              v12 = v251;

              goto LABEL_46;
            }

            sub_101010148(v254, v253);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v263._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v263._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_10115513C(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v250 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000010137CF90;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v249 = v18;
    v252 = a1;
    v251 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v255 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v256 = v24;

      v254 = v26;
      sub_10090C56C(v26, v27);
      v253 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v255, v256);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v263);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
          }

          else
          {
            v32 = v254;
            sub_10090C56C(v254, 0);
            v33 = v32;
          }

          v99 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v263, &v258);
          if (BYTE8(v259[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v258);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v263);
            return;
          }

          v100 = v254;
          sub_10000A748(&v258._countAndFlagsBits, v260);
          v101 = v261;
          v102 = sub_1000035D0(v260, v261);
          v103 = *(*(v101 - 8) + 64);
          __chkstk_darwin(v102);
          (*(v105 + 16))(v243 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v252;
          v99 = [objc_allocWithZone(NSNumber) initWithDouble:*&v258._countAndFlagsBits + *&v100];
          sub_100007BAC(v260);
          goto LABEL_102;
        }

        sub_1010100EC(&v263, &v258);
        if (BYTE8(v259[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v258._countAndFlagsBits, v260);
        v81 = v261;
        v80 = v262;
        v82 = sub_1000035D0(v260, v261);
        v247 = v243;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v245 = v84;
        v85 = v243 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v248 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v258._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v246 = v80;
            v244 = v243;
            __chkstk_darwin(v87);
            v89 = v243 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v246 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v89, v81);
            v80 = v246;
            if (v91)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v244) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v244)
            {
              v246 = v80;
              if (v134 <= 64)
              {
                v244 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v243[2] = v243;
                v141 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v243[0] = v243 - v142;
                swift_getAssociatedConformanceWitness();
                v143 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v243[1] = v243;
                __chkstk_darwin(v143);
                v145 = v243 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v146 = *(*(v246 + 32) + 8);
                v147 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v248 + 8))(v145, v81);
                if (v147)
                {
                  goto LABEL_163;
                }

                v80 = v246;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v244 = v243;
              __chkstk_darwin(v134);
              v136 = v243 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v137 = *(*(v246 + 32) + 8);
              v138 = dispatch thunk of static Comparable.< infix(_:_:)();
              v139 = v136;
              v80 = v246;
              (*(v248 + 8))(v139, v81);
              if (v138)
              {
                goto LABEL_163;
              }
            }

            else if (v134 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v258._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v148 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v149 = v80;
          v150 = v148;
          v246 = v149;
          v151 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v150)
          {
            if (v151 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v151 >= 64)
          {
LABEL_93:
            v244 = v243;
            __chkstk_darwin(v151);
            v245 = v243 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v153 = v246;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v154 = *(*(v153 + 32) + 8);
            v155 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v245, v81);
            if (v155)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v156 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v248 + 8))(v85, v81);
        v48 = __OFADD__(v156, v254);
        v157 = &v254[v156];
        if (v48)
        {
          goto LABEL_154;
        }

        v99 = [objc_allocWithZone(NSNumber) initWithLongLong:v157];
        sub_100007BAC(v260);
        a1 = v252;
LABEL_102:
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = v158;
          v160 = v99;
          v161 = String.init(_:)(v159);
          v162 = a1;
          v163 = sub_1000DF96C();
          swift_beginAccess();
          v258 = v161;
          *(&v259[0] + 1) = &type metadata for String;
          *&v259[1] = v163;
          BYTE8(v259[1]) = 1;
          v164 = v162[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v257 = v162[14];
          v166 = v257;
          v162[14] = 0x8000000000000000;
          v167 = sub_100771D58(v255, v256);
          v169 = v166[2];
          v170 = (v168 & 1) == 0;
          v48 = __OFADD__(v169, v170);
          v171 = v169 + v170;
          if (v48)
          {
            goto LABEL_151;
          }

          v172 = v168;
          if (v166[3] >= v171)
          {
            v12 = v251;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v238 = v167;
              sub_1010050E8();
              v167 = v238;
            }
          }

          else
          {
            sub_100FE65C4(v171, isUniquelyReferenced_nonNull_native);
            v167 = sub_100771D58(v255, v256);
            v12 = v251;
            if ((v172 & 1) != (v173 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          if (v172)
          {
            v193 = v167;

            v194 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v193);
          }

          else
          {
            v194 = v257;
            v257[(v167 >> 6) + 8] |= 1 << v167;
            v195 = (v194[6] + 16 * v167);
            v196 = v256;
            *v195 = v255;
            v195[1] = v196;
            v197 = (v194[7] + 48 * v167);
            v198 = *(v259 + 9);
            v199 = v259[0];
            *v197 = v258;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = v194[2];
            v48 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            v194[2] = v201;
          }

          v202 = v253;
          a1[14] = v194;
          swift_endAccess();
          sub_101010148(v254, v202);

          goto LABEL_120;
        }

        objc_opt_self();
        v174 = swift_dynamicCastObjCClass();
        if (v174)
        {
          v175 = v174;
          [v174 doubleValue];
          v177 = v176;
          v178 = [v175 integerValue];
          if (v177 == v178)
          {
            v179 = v178;
            v180 = sub_1000DFAD8();
            swift_beginAccess();
            v258._countAndFlagsBits = v179;
            *(&v259[0] + 1) = &type metadata for Int;
            *&v259[1] = v180;
            BYTE8(v259[1]) = 2;
            v181 = a1[14];
            v182 = swift_isUniquelyReferenced_nonNull_native();
            v183 = a1;
            v184 = v182;
            v257 = v183[14];
            v185 = v257;
            v183[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v188 = v185[2];
            v189 = (v187 & 1) == 0;
            v48 = __OFADD__(v188, v189);
            v190 = v188 + v189;
            if (v48)
            {
              goto LABEL_157;
            }

            v191 = v187;
            if (v185[3] >= v190)
            {
              if ((v184 & 1) == 0)
              {
                v241 = v186;
                sub_1010050E8();
                v186 = v241;
              }
            }

            else
            {
              sub_100FE65C4(v190, v184);
              v186 = sub_100771D58(v255, v256);
              if ((v191 & 1) != (v192 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if ((v191 & 1) == 0)
            {
              v221 = v257;
              v257[(v186 >> 6) + 8] |= 1 << v186;
              v222 = (v221[6] + 16 * v186);
              v223 = v256;
              *v222 = v255;
              v222[1] = v223;
              v224 = (v221[7] + 48 * v186);
              v225 = *(v259 + 9);
              v226 = v259[0];
              *v224 = v258;
              v224[1] = v226;
              *(&v224[1]._object + 1) = v225;
              v227 = v221[2];
              v48 = __OFADD__(v227, 1);
              v228 = v227 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v229 = v186;

            v221 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v229);
          }

          else
          {
            v209 = sub_1000DFA84();
            swift_beginAccess();
            *&v258._countAndFlagsBits = v177;
            *(&v259[0] + 1) = &type metadata for Double;
            *&v259[1] = v209;
            BYTE8(v259[1]) = 3;
            v210 = a1[14];
            v211 = swift_isUniquelyReferenced_nonNull_native();
            v212 = a1;
            v213 = v211;
            v257 = v212[14];
            v214 = v257;
            v212[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v216 = v214[2];
            v217 = (v215 & 1) == 0;
            v48 = __OFADD__(v216, v217);
            v218 = v216 + v217;
            if (v48)
            {
              goto LABEL_159;
            }

            v219 = v215;
            if (v214[3] >= v218)
            {
              if ((v213 & 1) == 0)
              {
                v242 = v186;
                sub_1010050E8();
                v186 = v242;
              }
            }

            else
            {
              sub_100FE65C4(v218, v213);
              v186 = sub_100771D58(v255, v256);
              if ((v219 & 1) != (v220 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if (v219)
            {
              goto LABEL_139;
            }

            v221 = v257;
            v257[(v186 >> 6) + 8] |= 1 << v186;
            v230 = (v221[6] + 16 * v186);
            v231 = v256;
            *v230 = v255;
            v230[1] = v231;
            v232 = (v221[7] + 48 * v186);
            v233 = *(v259 + 9);
            v234 = v259[0];
            *v232 = v258;
            v232[1] = v234;
            *(&v232[1]._object + 1) = v233;
            v235 = v221[2];
            v48 = __OFADD__(v235, 1);
            v228 = v235 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            v221[2] = v228;
          }

          v236 = v253;
          a1[14] = v221;
          swift_endAccess();

          sub_101010148(v254, v236);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v203 = type metadata accessor for Logger();
        sub_1000076D4(v203, qword_10177C6D0);
        v204 = v99;
        v160 = Logger.logObject.getter();
        v205 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v160, v205))
        {

          sub_101010148(v254, v253);
LABEL_120:

          goto LABEL_143;
        }

        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *v206 = v249;
        *(v206 + 4) = v204;
        *v207 = v204;
        v208 = v204;
        _os_log_impl(&_mh_execute_header, v160, v205, "Unsupported value type: %@!", v206, 0xCu);
        sub_10000B3A8(v207, &qword_10169BB30, &unk_10138B3C0);
        a1 = v252;

        v12 = v251;

        sub_101010148(v254, v253);
LABEL_143:
        sub_10118B5A0(&v263);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v254];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v254];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
        }

        else
        {
          isa = v254;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v263 = v39;
          *&v264[8] = &type metadata for String;
          *&v264[16] = v40;
          v264[24] = 1;
          v41 = a1[14];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v260[0] = a1[14];
          v43 = v260[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v255, v256);
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
              v237 = v44;
              sub_1010050E8();
              v44 = v237;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v255, v256);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          v12 = v251;
          if (v50)
          {
            v71 = v44;

            v72 = v260[0];
            sub_10118B568(&v263, *(v260[0] + 56) + 48 * v71);
          }

          else
          {
            v72 = v260[0];
            *(v260[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v73 = (v72[6] + 16 * v44);
            v74 = v256;
            *v73 = v255;
            v73[1] = v74;
            v75 = (v72[7] + 48 * v44);
            v76 = *&v264[9];
            v77 = *v264;
            *v75 = v263;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = v72[2];
            v48 = __OFADD__(v78, 1);
            v79 = v78 + 1;
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

            v72[2] = v79;
          }

          a1[14] = v72;
          swift_endAccess();

LABEL_46:
          sub_101010148(v254, v253);
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
              v263._countAndFlagsBits = v57;
              *&v264[8] = &type metadata for Int;
              *&v264[16] = v58;
              v264[24] = 2;
              v59 = a1[14];
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v61 = a1;
              v62 = v60;
              v260[0] = v61[14];
              v63 = v260[0];
              v61[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
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
                  v239 = v64;
                  sub_1010050E8();
                  v64 = v239;
                }
              }

              else
              {
                sub_100FE65C4(v68, v62);
                v64 = sub_100771D58(v255, v256);
                if ((v69 & 1) != (v70 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v69)
              {
                goto LABEL_77;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v119 = (v118[6] + 16 * v64);
              v120 = v256;
              *v119 = v255;
              v119[1] = v120;
              v121 = (v118[7] + 48 * v64);
              v122 = *&v264[9];
              v123 = *v264;
              *v121 = v263;
              v121[1] = v123;
              *(&v121[1]._object + 1) = v122;
              v124 = v118[2];
              v48 = __OFADD__(v124, 1);
              v125 = v124 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v106 = sub_1000DFA84();
              swift_beginAccess();
              *&v263._countAndFlagsBits = v55;
              *&v264[8] = &type metadata for Double;
              *&v264[16] = v106;
              v264[24] = 3;
              v107 = a1[14];
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v109 = a1;
              v110 = v108;
              v260[0] = v109[14];
              v111 = v260[0];
              v109[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
              v113 = *(v111 + 16);
              v114 = (v112 & 1) == 0;
              v48 = __OFADD__(v113, v114);
              v115 = v113 + v114;
              if (v48)
              {
                goto LABEL_155;
              }

              v116 = v112;
              if (*(v111 + 24) >= v115)
              {
                if ((v110 & 1) == 0)
                {
                  v240 = v64;
                  sub_1010050E8();
                  v64 = v240;
                }
              }

              else
              {
                sub_100FE65C4(v115, v110);
                v64 = sub_100771D58(v255, v256);
                if ((v116 & 1) != (v117 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v116)
              {
LABEL_77:
                v126 = v64;

                v118 = v260[0];
                sub_10118B568(&v263, *(v260[0] + 56) + 48 * v126);
                goto LABEL_80;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v127 = (v118[6] + 16 * v64);
              v128 = v256;
              *v127 = v255;
              v127[1] = v128;
              v129 = (v118[7] + 48 * v64);
              v130 = *&v264[9];
              v131 = *v264;
              *v129 = v263;
              v129[1] = v131;
              *(&v129[1]._object + 1) = v130;
              v132 = v118[2];
              v48 = __OFADD__(v132, 1);
              v125 = v132 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            v118[2] = v125;
LABEL_80:
            v133 = v253;
            a1[14] = v118;
            swift_endAccess();

            sub_101010148(v254, v133);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            sub_1000076D4(v92, qword_10177C6D0);
            v93 = v36;
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *v96 = v249;
              *(v96 + 4) = v93;
              *v97 = v93;
              v98 = v93;
              _os_log_impl(&_mh_execute_header, v94, v95, "Unsupported value type: %@!", v96, 0xCu);
              sub_10000B3A8(v97, &qword_10169BB30, &unk_10138B3C0);
              a1 = v252;

              v12 = v251;

              goto LABEL_46;
            }

            sub_101010148(v254, v253);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v263._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v263._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_101156C90(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v250 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000010137CE40;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v249 = v18;
    v252 = a1;
    v251 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v255 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v256 = v24;

      v254 = v26;
      sub_10090C56C(v26, v27);
      v253 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v255, v256);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v263);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
          }

          else
          {
            v32 = v254;
            sub_10090C56C(v254, 0);
            v33 = v32;
          }

          v99 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v263, &v258);
          if (BYTE8(v259[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v258);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v263);
            return;
          }

          v100 = v254;
          sub_10000A748(&v258._countAndFlagsBits, v260);
          v101 = v261;
          v102 = sub_1000035D0(v260, v261);
          v103 = *(*(v101 - 8) + 64);
          __chkstk_darwin(v102);
          (*(v105 + 16))(v243 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v252;
          v99 = [objc_allocWithZone(NSNumber) initWithDouble:*&v258._countAndFlagsBits + *&v100];
          sub_100007BAC(v260);
          goto LABEL_102;
        }

        sub_1010100EC(&v263, &v258);
        if (BYTE8(v259[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v258._countAndFlagsBits, v260);
        v81 = v261;
        v80 = v262;
        v82 = sub_1000035D0(v260, v261);
        v247 = v243;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v245 = v84;
        v85 = v243 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v248 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v258._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v246 = v80;
            v244 = v243;
            __chkstk_darwin(v87);
            v89 = v243 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v246 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v89, v81);
            v80 = v246;
            if (v91)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v244) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v244)
            {
              v246 = v80;
              if (v134 <= 64)
              {
                v244 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v243[2] = v243;
                v141 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v243[0] = v243 - v142;
                swift_getAssociatedConformanceWitness();
                v143 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v243[1] = v243;
                __chkstk_darwin(v143);
                v145 = v243 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v146 = *(*(v246 + 32) + 8);
                v147 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v248 + 8))(v145, v81);
                if (v147)
                {
                  goto LABEL_163;
                }

                v80 = v246;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v244 = v243;
              __chkstk_darwin(v134);
              v136 = v243 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v137 = *(*(v246 + 32) + 8);
              v138 = dispatch thunk of static Comparable.< infix(_:_:)();
              v139 = v136;
              v80 = v246;
              (*(v248 + 8))(v139, v81);
              if (v138)
              {
                goto LABEL_163;
              }
            }

            else if (v134 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v258._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v148 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v149 = v80;
          v150 = v148;
          v246 = v149;
          v151 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v150)
          {
            if (v151 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v151 >= 64)
          {
LABEL_93:
            v244 = v243;
            __chkstk_darwin(v151);
            v245 = v243 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v153 = v246;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v154 = *(*(v153 + 32) + 8);
            v155 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v245, v81);
            if (v155)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v156 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v248 + 8))(v85, v81);
        v48 = __OFADD__(v156, v254);
        v157 = &v254[v156];
        if (v48)
        {
          goto LABEL_154;
        }

        v99 = [objc_allocWithZone(NSNumber) initWithLongLong:v157];
        sub_100007BAC(v260);
        a1 = v252;
LABEL_102:
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = v158;
          v160 = v99;
          v161 = String.init(_:)(v159);
          v162 = a1;
          v163 = sub_1000DF96C();
          swift_beginAccess();
          v258 = v161;
          *(&v259[0] + 1) = &type metadata for String;
          *&v259[1] = v163;
          BYTE8(v259[1]) = 1;
          v164 = v162[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v257 = v162[14];
          v166 = v257;
          v162[14] = 0x8000000000000000;
          v167 = sub_100771D58(v255, v256);
          v169 = v166[2];
          v170 = (v168 & 1) == 0;
          v48 = __OFADD__(v169, v170);
          v171 = v169 + v170;
          if (v48)
          {
            goto LABEL_151;
          }

          v172 = v168;
          if (v166[3] >= v171)
          {
            v12 = v251;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v238 = v167;
              sub_1010050E8();
              v167 = v238;
            }
          }

          else
          {
            sub_100FE65C4(v171, isUniquelyReferenced_nonNull_native);
            v167 = sub_100771D58(v255, v256);
            v12 = v251;
            if ((v172 & 1) != (v173 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          if (v172)
          {
            v193 = v167;

            v194 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v193);
          }

          else
          {
            v194 = v257;
            v257[(v167 >> 6) + 8] |= 1 << v167;
            v195 = (v194[6] + 16 * v167);
            v196 = v256;
            *v195 = v255;
            v195[1] = v196;
            v197 = (v194[7] + 48 * v167);
            v198 = *(v259 + 9);
            v199 = v259[0];
            *v197 = v258;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = v194[2];
            v48 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            v194[2] = v201;
          }

          v202 = v253;
          a1[14] = v194;
          swift_endAccess();
          sub_101010148(v254, v202);

          goto LABEL_120;
        }

        objc_opt_self();
        v174 = swift_dynamicCastObjCClass();
        if (v174)
        {
          v175 = v174;
          [v174 doubleValue];
          v177 = v176;
          v178 = [v175 integerValue];
          if (v177 == v178)
          {
            v179 = v178;
            v180 = sub_1000DFAD8();
            swift_beginAccess();
            v258._countAndFlagsBits = v179;
            *(&v259[0] + 1) = &type metadata for Int;
            *&v259[1] = v180;
            BYTE8(v259[1]) = 2;
            v181 = a1[14];
            v182 = swift_isUniquelyReferenced_nonNull_native();
            v183 = a1;
            v184 = v182;
            v257 = v183[14];
            v185 = v257;
            v183[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v188 = v185[2];
            v189 = (v187 & 1) == 0;
            v48 = __OFADD__(v188, v189);
            v190 = v188 + v189;
            if (v48)
            {
              goto LABEL_157;
            }

            v191 = v187;
            if (v185[3] >= v190)
            {
              if ((v184 & 1) == 0)
              {
                v241 = v186;
                sub_1010050E8();
                v186 = v241;
              }
            }

            else
            {
              sub_100FE65C4(v190, v184);
              v186 = sub_100771D58(v255, v256);
              if ((v191 & 1) != (v192 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if ((v191 & 1) == 0)
            {
              v221 = v257;
              v257[(v186 >> 6) + 8] |= 1 << v186;
              v222 = (v221[6] + 16 * v186);
              v223 = v256;
              *v222 = v255;
              v222[1] = v223;
              v224 = (v221[7] + 48 * v186);
              v225 = *(v259 + 9);
              v226 = v259[0];
              *v224 = v258;
              v224[1] = v226;
              *(&v224[1]._object + 1) = v225;
              v227 = v221[2];
              v48 = __OFADD__(v227, 1);
              v228 = v227 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v229 = v186;

            v221 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v229);
          }

          else
          {
            v209 = sub_1000DFA84();
            swift_beginAccess();
            *&v258._countAndFlagsBits = v177;
            *(&v259[0] + 1) = &type metadata for Double;
            *&v259[1] = v209;
            BYTE8(v259[1]) = 3;
            v210 = a1[14];
            v211 = swift_isUniquelyReferenced_nonNull_native();
            v212 = a1;
            v213 = v211;
            v257 = v212[14];
            v214 = v257;
            v212[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v216 = v214[2];
            v217 = (v215 & 1) == 0;
            v48 = __OFADD__(v216, v217);
            v218 = v216 + v217;
            if (v48)
            {
              goto LABEL_159;
            }

            v219 = v215;
            if (v214[3] >= v218)
            {
              if ((v213 & 1) == 0)
              {
                v242 = v186;
                sub_1010050E8();
                v186 = v242;
              }
            }

            else
            {
              sub_100FE65C4(v218, v213);
              v186 = sub_100771D58(v255, v256);
              if ((v219 & 1) != (v220 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if (v219)
            {
              goto LABEL_139;
            }

            v221 = v257;
            v257[(v186 >> 6) + 8] |= 1 << v186;
            v230 = (v221[6] + 16 * v186);
            v231 = v256;
            *v230 = v255;
            v230[1] = v231;
            v232 = (v221[7] + 48 * v186);
            v233 = *(v259 + 9);
            v234 = v259[0];
            *v232 = v258;
            v232[1] = v234;
            *(&v232[1]._object + 1) = v233;
            v235 = v221[2];
            v48 = __OFADD__(v235, 1);
            v228 = v235 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            v221[2] = v228;
          }

          v236 = v253;
          a1[14] = v221;
          swift_endAccess();

          sub_101010148(v254, v236);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v203 = type metadata accessor for Logger();
        sub_1000076D4(v203, qword_10177C6D0);
        v204 = v99;
        v160 = Logger.logObject.getter();
        v205 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v160, v205))
        {

          sub_101010148(v254, v253);
LABEL_120:

          goto LABEL_143;
        }

        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *v206 = v249;
        *(v206 + 4) = v204;
        *v207 = v204;
        v208 = v204;
        _os_log_impl(&_mh_execute_header, v160, v205, "Unsupported value type: %@!", v206, 0xCu);
        sub_10000B3A8(v207, &qword_10169BB30, &unk_10138B3C0);
        a1 = v252;

        v12 = v251;

        sub_101010148(v254, v253);
LABEL_143:
        sub_10118B5A0(&v263);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v254];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v254];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
        }

        else
        {
          isa = v254;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v263 = v39;
          *&v264[8] = &type metadata for String;
          *&v264[16] = v40;
          v264[24] = 1;
          v41 = a1[14];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v260[0] = a1[14];
          v43 = v260[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v255, v256);
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
              v237 = v44;
              sub_1010050E8();
              v44 = v237;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v255, v256);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          v12 = v251;
          if (v50)
          {
            v71 = v44;

            v72 = v260[0];
            sub_10118B568(&v263, *(v260[0] + 56) + 48 * v71);
          }

          else
          {
            v72 = v260[0];
            *(v260[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v73 = (v72[6] + 16 * v44);
            v74 = v256;
            *v73 = v255;
            v73[1] = v74;
            v75 = (v72[7] + 48 * v44);
            v76 = *&v264[9];
            v77 = *v264;
            *v75 = v263;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = v72[2];
            v48 = __OFADD__(v78, 1);
            v79 = v78 + 1;
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

            v72[2] = v79;
          }

          a1[14] = v72;
          swift_endAccess();

LABEL_46:
          sub_101010148(v254, v253);
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
              v263._countAndFlagsBits = v57;
              *&v264[8] = &type metadata for Int;
              *&v264[16] = v58;
              v264[24] = 2;
              v59 = a1[14];
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v61 = a1;
              v62 = v60;
              v260[0] = v61[14];
              v63 = v260[0];
              v61[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
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
                  v239 = v64;
                  sub_1010050E8();
                  v64 = v239;
                }
              }

              else
              {
                sub_100FE65C4(v68, v62);
                v64 = sub_100771D58(v255, v256);
                if ((v69 & 1) != (v70 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v69)
              {
                goto LABEL_77;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v119 = (v118[6] + 16 * v64);
              v120 = v256;
              *v119 = v255;
              v119[1] = v120;
              v121 = (v118[7] + 48 * v64);
              v122 = *&v264[9];
              v123 = *v264;
              *v121 = v263;
              v121[1] = v123;
              *(&v121[1]._object + 1) = v122;
              v124 = v118[2];
              v48 = __OFADD__(v124, 1);
              v125 = v124 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v106 = sub_1000DFA84();
              swift_beginAccess();
              *&v263._countAndFlagsBits = v55;
              *&v264[8] = &type metadata for Double;
              *&v264[16] = v106;
              v264[24] = 3;
              v107 = a1[14];
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v109 = a1;
              v110 = v108;
              v260[0] = v109[14];
              v111 = v260[0];
              v109[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
              v113 = *(v111 + 16);
              v114 = (v112 & 1) == 0;
              v48 = __OFADD__(v113, v114);
              v115 = v113 + v114;
              if (v48)
              {
                goto LABEL_155;
              }

              v116 = v112;
              if (*(v111 + 24) >= v115)
              {
                if ((v110 & 1) == 0)
                {
                  v240 = v64;
                  sub_1010050E8();
                  v64 = v240;
                }
              }

              else
              {
                sub_100FE65C4(v115, v110);
                v64 = sub_100771D58(v255, v256);
                if ((v116 & 1) != (v117 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v116)
              {
LABEL_77:
                v126 = v64;

                v118 = v260[0];
                sub_10118B568(&v263, *(v260[0] + 56) + 48 * v126);
                goto LABEL_80;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v127 = (v118[6] + 16 * v64);
              v128 = v256;
              *v127 = v255;
              v127[1] = v128;
              v129 = (v118[7] + 48 * v64);
              v130 = *&v264[9];
              v131 = *v264;
              *v129 = v263;
              v129[1] = v131;
              *(&v129[1]._object + 1) = v130;
              v132 = v118[2];
              v48 = __OFADD__(v132, 1);
              v125 = v132 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            v118[2] = v125;
LABEL_80:
            v133 = v253;
            a1[14] = v118;
            swift_endAccess();

            sub_101010148(v254, v133);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            sub_1000076D4(v92, qword_10177C6D0);
            v93 = v36;
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *v96 = v249;
              *(v96 + 4) = v93;
              *v97 = v93;
              v98 = v93;
              _os_log_impl(&_mh_execute_header, v94, v95, "Unsupported value type: %@!", v96, 0xCu);
              sub_10000B3A8(v97, &qword_10169BB30, &unk_10138B3C0);
              a1 = v252;

              v12 = v251;

              goto LABEL_46;
            }

            sub_101010148(v254, v253);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v263._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v263._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_1011587E4(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  LOBYTE(v8) = a6;
  LOBYTE(v12) = a2;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v14 = a1[15];
    v15 = a1[16];
    v16 = sub_10111EACC(v14, v15, qword_10177C6E8);
    v250 = a1;
    if (v16)
    {
      break;
    }

    v245 = v7;
    v22 = sub_10116748C(v12 & 1, a3, a4, a5, v8 & 1);
    a3 = v22 + 64;
    v23 = *(v22 + 64);
    v249 = v22;
    v24 = 1 << *(v22 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v15 = v25 & v23;
    swift_beginAccess();
    v12 = 0;
    v7 = (v24 + 63) >> 6;
    *&v26 = 138412290;
    v244 = v26;
    v247 = v7;
    v248 = a3;
    while (v15)
    {
LABEL_15:
      v28 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v29 = (v12 << 10) | (16 * v28);
      v30 = *(v249 + 56);
      v31 = (*(v249 + 48) + v29);
      v32 = v31[1];
      v251 = *v31;
      v33 = v30 + v29;
      v8 = *v33;
      a4 = *(v33 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v252 = v32;

      sub_10090C56C(v8, a4);
      if (v35)
      {

        v36 = sub_100771D58(v251, v252);
        if ((v37 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v34 + 56) + 48 * v36, &v259);

        if (a4 <= 1)
        {
          if (a4)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v38 = NSNumber.init(BOOLeanLiteral:)(v8 & 1).super.super.isa;
          }

          else
          {
            sub_10090C56C(v8, 0);
            v38 = v8;
          }

          v101 = v38;
          goto LABEL_104;
        }

        if (a4 != 2)
        {
          sub_1010100EC(&v259, &v254);
          if (v255[24] != 3)
          {
LABEL_147:

            sub_10118B5A0(&v254);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v259);
            return;
          }

          sub_10000A748(&v254._countAndFlagsBits, v256);
          v102 = v257;
          v103 = sub_1000035D0(v256, v257);
          v104 = *(*(v102 - 8) + 64);
          __chkstk_darwin(v103);
          (*(v106 + 16))(v238 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          a1 = v250;
          BinaryFloatingPoint.init<A>(_:)();
          v101 = [objc_allocWithZone(NSNumber) initWithDouble:*&v254._countAndFlagsBits + *&v8];
          sub_100007BAC(v256);
          goto LABEL_104;
        }

        sub_1010100EC(&v259, &v254);
        if (v255[24] != 2)
        {
          goto LABEL_147;
        }

        v246 = v8;
        sub_10000A748(&v254._countAndFlagsBits, v256);
        v84 = v257;
        v83 = v258;
        v85 = sub_1000035D0(v256, v257);
        v86 = *(*(v84 - 8) + 64);
        __chkstk_darwin(v85);
        v242 = v87;
        v88 = v238 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
        v243 = v89;
        (*(v89 + 16))(v88);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v254._countAndFlagsBits = 0x8000000000000000;
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
                v238[1] = v238 - v139;
                swift_getAssociatedConformanceWitness();
                v140 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v238[2] = v238;
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
          v254._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
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
        v8 = v246;
        v52 = __OFADD__(v157, v246);
        v158 = &v246[v157];
        if (v52)
        {
          goto LABEL_156;
        }

        v101 = [objc_allocWithZone(NSNumber) initWithLongLong:v158];
        sub_100007BAC(v256);
        a1 = v250;
LABEL_104:
        objc_opt_self();
        v159 = swift_dynamicCastObjCClass();
        if (v159)
        {
          v160 = v159;
          v161 = v8;
          v162 = v101;
          v163 = String.init(_:)(v160);
          v164 = sub_1000DF96C();
          swift_beginAccess();
          v254 = v163;
          *&v255[8] = &type metadata for String;
          *&v255[16] = v164;
          v255[24] = 1;
          v165 = a1[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v253 = a1[14];
          v167 = v253;
          a1[14] = 0x8000000000000000;
          v168 = sub_100771D58(v251, v252);
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
            v168 = sub_100771D58(v251, v252);
            if ((v173 & 1) != (v174 & 1))
            {
              goto LABEL_166;
            }
          }

          v7 = v247;
          v8 = v161;
          a3 = v248;
          if (v173)
          {
            v194 = v168;

            a5 = v253;
            sub_10118B568(&v254, v253[7] + 48 * v194);
          }

          else
          {
            a5 = v253;
            v253[(v168 >> 6) + 8] |= 1 << v168;
            v195 = (a5[6] + 16 * v168);
            v196 = v252;
            *v195 = v251;
            v195[1] = v196;
            v197 = (a5[7] + 48 * v168);
            v198 = *&v255[9];
            v199 = *v255;
            *v197 = v254;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = a5[2];
            v52 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v52)
            {
              goto LABEL_155;
            }

            a5[2] = v201;
          }

          a1 = v250;
          v250[14] = a5;
          swift_endAccess();
          sub_101010148(v8, a4);
        }

        else
        {

          objc_opt_self();
          v175 = swift_dynamicCastObjCClass();
          if (v175)
          {
            v246 = v8;
            v176 = v175;
            [v175 doubleValue];
            v178 = v177;
            v179 = [v176 integerValue];
            a3 = v248;
            if (v178 == v179)
            {
              v180 = v179;
              v181 = a4;
              v182 = a1;
              v183 = sub_1000DFAD8();
              swift_beginAccess();
              v254._countAndFlagsBits = v180;
              *&v255[8] = &type metadata for Int;
              *&v255[16] = v183;
              v255[24] = 2;
              v184 = v182[14];
              v185 = swift_isUniquelyReferenced_nonNull_native();
              v253 = v182[14];
              v186 = v253;
              v182[14] = 0x8000000000000000;
              v187 = sub_100771D58(v251, v252);
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
                v7 = v247;
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
                v187 = sub_100771D58(v251, v252);
                v7 = v247;
                if ((v192 & 1) != (v193 & 1))
                {
                  goto LABEL_166;
                }
              }

              v8 = v246;
              if ((v192 & 1) == 0)
              {
                a5 = v253;
                v253[(v187 >> 6) + 8] |= 1 << v187;
                v218 = (a5[6] + 16 * v187);
                v219 = v252;
                *v218 = v251;
                v218[1] = v219;
                v220 = (a5[7] + 48 * v187);
                v221 = *&v255[9];
                v222 = *v255;
                *v220 = v254;
                v220[1] = v222;
                *(&v220[1]._object + 1) = v221;
                v223 = a5[2];
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

              a5 = v253;
              sub_10118B568(&v254, v253[7] + 48 * v225);
            }

            else
            {
              v208 = sub_1000DFA84();
              swift_beginAccess();
              *&v254._countAndFlagsBits = v178;
              *&v255[8] = &type metadata for Double;
              *&v255[16] = v208;
              v255[24] = 3;
              v209 = a1[14];
              v210 = swift_isUniquelyReferenced_nonNull_native();
              v253 = a1[14];
              v211 = v253;
              a1[14] = 0x8000000000000000;
              v187 = sub_100771D58(v251, v252);
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
                v187 = sub_100771D58(v251, v252);
                if ((v216 & 1) != (v217 & 1))
                {
                  goto LABEL_166;
                }
              }

              v8 = v246;
              if (v216)
              {
                goto LABEL_141;
              }

              a5 = v253;
              v253[(v187 >> 6) + 8] |= 1 << v187;
              v226 = (a5[6] + 16 * v187);
              v227 = v252;
              *v226 = v251;
              v226[1] = v227;
              v228 = (a5[7] + 48 * v187);
              v229 = *&v255[9];
              v230 = *v255;
              *v228 = v254;
              v228[1] = v230;
              *(&v228[1]._object + 1) = v229;
              v231 = a5[2];
              v52 = __OFADD__(v231, 1);
              v224 = v231 + 1;
              if (v52)
              {
                goto LABEL_164;
              }

LABEL_143:
              a5[2] = v224;
            }

            a1 = v250;
            v250[14] = a5;
            swift_endAccess();

            sub_101010148(v8, a4);
            goto LABEL_145;
          }

          a3 = v248;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v202 = type metadata accessor for Logger();
          sub_1000076D4(v202, qword_10177C6D0);
          v203 = v101;
          v204 = Logger.logObject.getter();
          a5 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v204, a5))
          {
            v205 = swift_slowAlloc();
            LODWORD(v252) = a4;
            a4 = v205;
            v206 = COERCE_DOUBLE(swift_slowAlloc());
            v246 = v8;
            *&v8 = v206;
            *a4 = v244;
            *(a4 + 4) = v203;
            **&v206 = v203;
            v207 = v203;
            _os_log_impl(&_mh_execute_header, v204, a5, "Unsupported value type: %@!", a4, 0xCu);
            sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v246, v252);
          }

          else
          {

            sub_101010148(v8, a4);
          }

          a1 = v250;
        }

LABEL_145:
        sub_10118B5A0(&v259);
      }

      else
      {
LABEL_21:
        if (a4 > 1)
        {
          if (a4 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:v8];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v8];
          }
        }

        else if (a4)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v8 & 1).super.super.isa;
        }

        else
        {
          isa = v8;
        }

        v14 = isa;
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = v40;
          v42 = v8;
          v14 = v14;
          v43 = String.init(_:)(v41);
          v44 = sub_1000DF96C();
          swift_beginAccess();
          v259 = v43;
          *&v260[8] = &type metadata for String;
          *&v260[16] = v44;
          v260[24] = 1;
          v45 = a1[14];
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v256[0] = a1[14];
          v47 = v256[0];
          a1[14] = 0x8000000000000000;
          v48 = sub_100771D58(v251, v252);
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
            v48 = sub_100771D58(v251, v252);
            if ((v54 & 1) != (v55 & 1))
            {
              goto LABEL_166;
            }
          }

          v7 = v247;
          v8 = v42;
          a3 = v248;
          if (v54)
          {
            v75 = v48;

            a5 = v256[0];
            sub_10118B568(&v259, *(v256[0] + 56) + 48 * v75);
          }

          else
          {
            a5 = v256[0];
            *(v256[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
            v76 = (a5[6] + 16 * v48);
            v77 = v252;
            *v76 = v251;
            v76[1] = v77;
            v78 = (a5[7] + 48 * v48);
            v79 = *&v260[9];
            v80 = *v260;
            *v78 = v259;
            v78[1] = v80;
            *(&v78[1]._object + 1) = v79;
            v81 = a5[2];
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

            a5[2] = v82;
          }

          a1 = v250;
          v250[14] = a5;
          swift_endAccess();

LABEL_81:
          sub_101010148(v8, a4);
        }

        else
        {
          objc_opt_self();
          v56 = swift_dynamicCastObjCClass();
          if (v56)
          {
            v246 = v8;
            v57 = v56;
            [v56 doubleValue];
            v59 = v58;
            v60 = [v57 integerValue];
            a3 = v248;
            if (v59 == v60)
            {
              v61 = v60;
              v62 = a4;
              v63 = a1;
              v64 = sub_1000DFAD8();
              swift_beginAccess();
              v259._countAndFlagsBits = v61;
              *&v260[8] = &type metadata for Int;
              *&v260[16] = v64;
              v260[24] = 2;
              v65 = v63[14];
              v66 = swift_isUniquelyReferenced_nonNull_native();
              v256[0] = v63[14];
              v67 = v256[0];
              v63[14] = 0x8000000000000000;
              v68 = sub_100771D58(v251, v252);
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
                v7 = v247;
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
                v68 = sub_100771D58(v251, v252);
                v7 = v247;
                if ((v73 & 1) != (v74 & 1))
                {
                  goto LABEL_166;
                }
              }

              v8 = v246;
              if ((v73 & 1) == 0)
              {
                a5 = v256[0];
                *(v256[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
                v117 = (a5[6] + 16 * v68);
                v118 = v252;
                *v117 = v251;
                v117[1] = v118;
                v119 = (a5[7] + 48 * v68);
                v120 = *&v260[9];
                v121 = *v260;
                *v119 = v259;
                v119[1] = v121;
                *(&v119[1]._object + 1) = v120;
                v122 = a5[2];
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

              a5 = v256[0];
              sub_10118B568(&v259, *(v256[0] + 56) + 48 * v124);
            }

            else
            {
              v107 = sub_1000DFA84();
              swift_beginAccess();
              *&v259._countAndFlagsBits = v59;
              *&v260[8] = &type metadata for Double;
              *&v260[16] = v107;
              v260[24] = 3;
              v108 = a1[14];
              v109 = swift_isUniquelyReferenced_nonNull_native();
              v256[0] = a1[14];
              v110 = v256[0];
              a1[14] = 0x8000000000000000;
              v68 = sub_100771D58(v251, v252);
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
                v7 = v247;
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
                v68 = sub_100771D58(v251, v252);
                v7 = v247;
                if ((v115 & 1) != (v116 & 1))
                {
                  goto LABEL_166;
                }
              }

              v8 = v246;
              if (v115)
              {
                goto LABEL_77;
              }

              a5 = v256[0];
              *(v256[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
              v125 = (a5[6] + 16 * v68);
              v126 = v252;
              *v125 = v251;
              v125[1] = v126;
              v127 = (a5[7] + 48 * v68);
              v128 = *&v260[9];
              v129 = *v260;
              *v127 = v259;
              v127[1] = v129;
              *(&v127[1]._object + 1) = v128;
              v130 = a5[2];
              v52 = __OFADD__(v130, 1);
              v123 = v130 + 1;
              if (v52)
              {
                goto LABEL_160;
              }

LABEL_79:
              a5[2] = v123;
            }

            a1 = v250;
            v250[14] = a5;
            swift_endAccess();
            goto LABEL_81;
          }

          v7 = v247;
          a3 = v248;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v95 = type metadata accessor for Logger();
          sub_1000076D4(v95, qword_10177C6D0);
          v96 = v14;
          v97 = Logger.logObject.getter();
          a5 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v97, a5))
          {
            v98 = swift_slowAlloc();
            LODWORD(v252) = a4;
            a4 = v98;
            v99 = COERCE_DOUBLE(swift_slowAlloc());
            v246 = v8;
            *&v8 = v99;
            *a4 = v244;
            *(a4 + 4) = v96;
            **&v99 = v96;
            v100 = v96;
            _os_log_impl(&_mh_execute_header, v97, a5, "Unsupported value type: %@!", a4, 0xCu);
            sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v246, v252);
          }

          else
          {

            sub_101010148(v8, a4);
          }

          a1 = v250;
        }
      }
    }

    while (1)
    {
      v27 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v27 >= v7)
      {

        return;
      }

      v15 = *(a3 + 8 * v27);
      ++v12;
      if (v15)
      {
        v12 = v27;
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
    v259._countAndFlagsBits = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(v14, v15, &v259._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v18, v19, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v20, 0xCu);
    sub_100007BAC(v21);
  }
}

void sub_10115A320(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v250 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    strcpy((inited + 32), "totalKeysBuilt");
    *(inited + 47) = -18;
    *(inited + 48) = Int._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v249 = v18;
    v252 = a1;
    v251 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v255 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v256 = v24;

      v254 = v26;
      sub_10090C56C(v26, v27);
      v253 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v255, v256);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v263);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
          }

          else
          {
            v32 = v254;
            sub_10090C56C(v254, 0);
            v33 = v32;
          }

          v99 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v263, &v258);
          if (BYTE8(v259[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v258);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v263);
            return;
          }

          v100 = v254;
          sub_10000A748(&v258._countAndFlagsBits, v260);
          v101 = v261;
          v102 = sub_1000035D0(v260, v261);
          v103 = *(*(v101 - 8) + 64);
          __chkstk_darwin(v102);
          (*(v105 + 16))(v243 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v252;
          v99 = [objc_allocWithZone(NSNumber) initWithDouble:*&v258._countAndFlagsBits + *&v100];
          sub_100007BAC(v260);
          goto LABEL_102;
        }

        sub_1010100EC(&v263, &v258);
        if (BYTE8(v259[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v258._countAndFlagsBits, v260);
        v81 = v261;
        v80 = v262;
        v82 = sub_1000035D0(v260, v261);
        v247 = v243;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v245 = v84;
        v85 = v243 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v248 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v258._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v246 = v80;
            v244 = v243;
            __chkstk_darwin(v87);
            v89 = v243 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v246 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v89, v81);
            v80 = v246;
            if (v91)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v244) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v244)
            {
              v246 = v80;
              if (v134 <= 64)
              {
                v244 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v243[2] = v243;
                v141 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v243[0] = v243 - v142;
                swift_getAssociatedConformanceWitness();
                v143 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v243[1] = v243;
                __chkstk_darwin(v143);
                v145 = v243 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v146 = *(*(v246 + 32) + 8);
                v147 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v248 + 8))(v145, v81);
                if (v147)
                {
                  goto LABEL_163;
                }

                v80 = v246;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v244 = v243;
              __chkstk_darwin(v134);
              v136 = v243 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v137 = *(*(v246 + 32) + 8);
              v138 = dispatch thunk of static Comparable.< infix(_:_:)();
              v139 = v136;
              v80 = v246;
              (*(v248 + 8))(v139, v81);
              if (v138)
              {
                goto LABEL_163;
              }
            }

            else if (v134 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v258._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v148 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v149 = v80;
          v150 = v148;
          v246 = v149;
          v151 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v150)
          {
            if (v151 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v151 >= 64)
          {
LABEL_93:
            v244 = v243;
            __chkstk_darwin(v151);
            v245 = v243 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v153 = v246;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v154 = *(*(v153 + 32) + 8);
            v155 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v248 + 8))(v245, v81);
            if (v155)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v156 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v248 + 8))(v85, v81);
        v48 = __OFADD__(v156, v254);
        v157 = &v254[v156];
        if (v48)
        {
          goto LABEL_154;
        }

        v99 = [objc_allocWithZone(NSNumber) initWithLongLong:v157];
        sub_100007BAC(v260);
        a1 = v252;
LABEL_102:
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = v158;
          v160 = v99;
          v161 = String.init(_:)(v159);
          v162 = a1;
          v163 = sub_1000DF96C();
          swift_beginAccess();
          v258 = v161;
          *(&v259[0] + 1) = &type metadata for String;
          *&v259[1] = v163;
          BYTE8(v259[1]) = 1;
          v164 = v162[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v257 = v162[14];
          v166 = v257;
          v162[14] = 0x8000000000000000;
          v167 = sub_100771D58(v255, v256);
          v169 = v166[2];
          v170 = (v168 & 1) == 0;
          v48 = __OFADD__(v169, v170);
          v171 = v169 + v170;
          if (v48)
          {
            goto LABEL_151;
          }

          v172 = v168;
          if (v166[3] >= v171)
          {
            v12 = v251;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v238 = v167;
              sub_1010050E8();
              v167 = v238;
            }
          }

          else
          {
            sub_100FE65C4(v171, isUniquelyReferenced_nonNull_native);
            v167 = sub_100771D58(v255, v256);
            v12 = v251;
            if ((v172 & 1) != (v173 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          if (v172)
          {
            v193 = v167;

            v194 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v193);
          }

          else
          {
            v194 = v257;
            v257[(v167 >> 6) + 8] |= 1 << v167;
            v195 = (v194[6] + 16 * v167);
            v196 = v256;
            *v195 = v255;
            v195[1] = v196;
            v197 = (v194[7] + 48 * v167);
            v198 = *(v259 + 9);
            v199 = v259[0];
            *v197 = v258;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = v194[2];
            v48 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            v194[2] = v201;
          }

          v202 = v253;
          a1[14] = v194;
          swift_endAccess();
          sub_101010148(v254, v202);

          goto LABEL_120;
        }

        objc_opt_self();
        v174 = swift_dynamicCastObjCClass();
        if (v174)
        {
          v175 = v174;
          [v174 doubleValue];
          v177 = v176;
          v178 = [v175 integerValue];
          if (v177 == v178)
          {
            v179 = v178;
            v180 = sub_1000DFAD8();
            swift_beginAccess();
            v258._countAndFlagsBits = v179;
            *(&v259[0] + 1) = &type metadata for Int;
            *&v259[1] = v180;
            BYTE8(v259[1]) = 2;
            v181 = a1[14];
            v182 = swift_isUniquelyReferenced_nonNull_native();
            v183 = a1;
            v184 = v182;
            v257 = v183[14];
            v185 = v257;
            v183[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v188 = v185[2];
            v189 = (v187 & 1) == 0;
            v48 = __OFADD__(v188, v189);
            v190 = v188 + v189;
            if (v48)
            {
              goto LABEL_157;
            }

            v191 = v187;
            if (v185[3] >= v190)
            {
              if ((v184 & 1) == 0)
              {
                v241 = v186;
                sub_1010050E8();
                v186 = v241;
              }
            }

            else
            {
              sub_100FE65C4(v190, v184);
              v186 = sub_100771D58(v255, v256);
              if ((v191 & 1) != (v192 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if ((v191 & 1) == 0)
            {
              v221 = v257;
              v257[(v186 >> 6) + 8] |= 1 << v186;
              v222 = (v221[6] + 16 * v186);
              v223 = v256;
              *v222 = v255;
              v222[1] = v223;
              v224 = (v221[7] + 48 * v186);
              v225 = *(v259 + 9);
              v226 = v259[0];
              *v224 = v258;
              v224[1] = v226;
              *(&v224[1]._object + 1) = v225;
              v227 = v221[2];
              v48 = __OFADD__(v227, 1);
              v228 = v227 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v229 = v186;

            v221 = v257;
            sub_10118B568(&v258, v257[7] + 48 * v229);
          }

          else
          {
            v209 = sub_1000DFA84();
            swift_beginAccess();
            *&v258._countAndFlagsBits = v177;
            *(&v259[0] + 1) = &type metadata for Double;
            *&v259[1] = v209;
            BYTE8(v259[1]) = 3;
            v210 = a1[14];
            v211 = swift_isUniquelyReferenced_nonNull_native();
            v212 = a1;
            v213 = v211;
            v257 = v212[14];
            v214 = v257;
            v212[14] = 0x8000000000000000;
            v186 = sub_100771D58(v255, v256);
            v216 = v214[2];
            v217 = (v215 & 1) == 0;
            v48 = __OFADD__(v216, v217);
            v218 = v216 + v217;
            if (v48)
            {
              goto LABEL_159;
            }

            v219 = v215;
            if (v214[3] >= v218)
            {
              if ((v213 & 1) == 0)
              {
                v242 = v186;
                sub_1010050E8();
                v186 = v242;
              }
            }

            else
            {
              sub_100FE65C4(v218, v213);
              v186 = sub_100771D58(v255, v256);
              if ((v219 & 1) != (v220 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v252;
            if (v219)
            {
              goto LABEL_139;
            }

            v221 = v257;
            v257[(v186 >> 6) + 8] |= 1 << v186;
            v230 = (v221[6] + 16 * v186);
            v231 = v256;
            *v230 = v255;
            v230[1] = v231;
            v232 = (v221[7] + 48 * v186);
            v233 = *(v259 + 9);
            v234 = v259[0];
            *v232 = v258;
            v232[1] = v234;
            *(&v232[1]._object + 1) = v233;
            v235 = v221[2];
            v48 = __OFADD__(v235, 1);
            v228 = v235 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            v221[2] = v228;
          }

          v236 = v253;
          a1[14] = v221;
          swift_endAccess();

          sub_101010148(v254, v236);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v203 = type metadata accessor for Logger();
        sub_1000076D4(v203, qword_10177C6D0);
        v204 = v99;
        v160 = Logger.logObject.getter();
        v205 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v160, v205))
        {

          sub_101010148(v254, v253);
LABEL_120:

          goto LABEL_143;
        }

        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *v206 = v249;
        *(v206 + 4) = v204;
        *v207 = v204;
        v208 = v204;
        _os_log_impl(&_mh_execute_header, v160, v205, "Unsupported value type: %@!", v206, 0xCu);
        sub_10000B3A8(v207, &qword_10169BB30, &unk_10138B3C0);
        a1 = v252;

        v12 = v251;

        sub_101010148(v254, v253);
LABEL_143:
        sub_10118B5A0(&v263);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v254];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v254];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v254 & 1).super.super.isa;
        }

        else
        {
          isa = v254;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v263 = v39;
          *&v264[8] = &type metadata for String;
          *&v264[16] = v40;
          v264[24] = 1;
          v41 = a1[14];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v260[0] = a1[14];
          v43 = v260[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v255, v256);
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
              v237 = v44;
              sub_1010050E8();
              v44 = v237;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v255, v256);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v252;
          v12 = v251;
          if (v50)
          {
            v71 = v44;

            v72 = v260[0];
            sub_10118B568(&v263, *(v260[0] + 56) + 48 * v71);
          }

          else
          {
            v72 = v260[0];
            *(v260[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v73 = (v72[6] + 16 * v44);
            v74 = v256;
            *v73 = v255;
            v73[1] = v74;
            v75 = (v72[7] + 48 * v44);
            v76 = *&v264[9];
            v77 = *v264;
            *v75 = v263;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = v72[2];
            v48 = __OFADD__(v78, 1);
            v79 = v78 + 1;
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

            v72[2] = v79;
          }

          a1[14] = v72;
          swift_endAccess();

LABEL_46:
          sub_101010148(v254, v253);
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
              v263._countAndFlagsBits = v57;
              *&v264[8] = &type metadata for Int;
              *&v264[16] = v58;
              v264[24] = 2;
              v59 = a1[14];
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v61 = a1;
              v62 = v60;
              v260[0] = v61[14];
              v63 = v260[0];
              v61[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
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
                  v239 = v64;
                  sub_1010050E8();
                  v64 = v239;
                }
              }

              else
              {
                sub_100FE65C4(v68, v62);
                v64 = sub_100771D58(v255, v256);
                if ((v69 & 1) != (v70 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v69)
              {
                goto LABEL_77;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v119 = (v118[6] + 16 * v64);
              v120 = v256;
              *v119 = v255;
              v119[1] = v120;
              v121 = (v118[7] + 48 * v64);
              v122 = *&v264[9];
              v123 = *v264;
              *v121 = v263;
              v121[1] = v123;
              *(&v121[1]._object + 1) = v122;
              v124 = v118[2];
              v48 = __OFADD__(v124, 1);
              v125 = v124 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v106 = sub_1000DFA84();
              swift_beginAccess();
              *&v263._countAndFlagsBits = v55;
              *&v264[8] = &type metadata for Double;
              *&v264[16] = v106;
              v264[24] = 3;
              v107 = a1[14];
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v109 = a1;
              v110 = v108;
              v260[0] = v109[14];
              v111 = v260[0];
              v109[14] = 0x8000000000000000;
              v64 = sub_100771D58(v255, v256);
              v113 = *(v111 + 16);
              v114 = (v112 & 1) == 0;
              v48 = __OFADD__(v113, v114);
              v115 = v113 + v114;
              if (v48)
              {
                goto LABEL_155;
              }

              v116 = v112;
              if (*(v111 + 24) >= v115)
              {
                if ((v110 & 1) == 0)
                {
                  v240 = v64;
                  sub_1010050E8();
                  v64 = v240;
                }
              }

              else
              {
                sub_100FE65C4(v115, v110);
                v64 = sub_100771D58(v255, v256);
                if ((v116 & 1) != (v117 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v252;
              if (v116)
              {
LABEL_77:
                v126 = v64;

                v118 = v260[0];
                sub_10118B568(&v263, *(v260[0] + 56) + 48 * v126);
                goto LABEL_80;
              }

              v118 = v260[0];
              *(v260[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v127 = (v118[6] + 16 * v64);
              v128 = v256;
              *v127 = v255;
              v127[1] = v128;
              v129 = (v118[7] + 48 * v64);
              v130 = *&v264[9];
              v131 = *v264;
              *v129 = v263;
              v129[1] = v131;
              *(&v129[1]._object + 1) = v130;
              v132 = v118[2];
              v48 = __OFADD__(v132, 1);
              v125 = v132 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            v118[2] = v125;
LABEL_80:
            v133 = v253;
            a1[14] = v118;
            swift_endAccess();

            sub_101010148(v254, v133);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            sub_1000076D4(v92, qword_10177C6D0);
            v93 = v36;
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *v96 = v249;
              *(v96 + 4) = v93;
              *v97 = v93;
              v98 = v93;
              _os_log_impl(&_mh_execute_header, v94, v95, "Unsupported value type: %@!", v96, 0xCu);
              sub_10000B3A8(v97, &qword_10169BB30, &unk_10138B3C0);
              a1 = v252;

              v12 = v251;

              goto LABEL_46;
            }

            sub_101010148(v254, v253);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v263._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v263._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_10115BE7C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v6 = v4[15];
    object = v4[16];
    if (sub_10111EACC(v6, object, qword_10177C6E8))
    {
      break;
    }

    v254 = v3;
    a1 = (a1)();
    v3 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v253 = v18;
    v256 = v4;
    v255 = a1;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(a1 + 56);
      v23 = (*(a1 + 48) + v21);
      v24 = v23[1];
      v259 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = v4[14];
      v29 = *(v28 + 16);
      v260 = v24;

      v258 = v26;
      sub_10090C56C(v26, v27);
      v257 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v259, v260);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v267);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v258 & 1).super.super.isa;
          }

          else
          {
            v32 = v258;
            sub_10090C56C(v258, 0);
            v33 = v32;
          }

          v96 = v33;
          goto LABEL_103;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v267, &v262);
          if (v263[24] != 3)
          {
LABEL_146:

            sub_10118B5A0(&v262);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v267);
            return;
          }

          v97 = v258;
          sub_10000A748(&v262._countAndFlagsBits, v264);
          v98 = v265;
          v99 = sub_1000035D0(v264, v265);
          v100 = *(*(v98 - 8) + 64);
          __chkstk_darwin(v99);
          (*(v102 + 16))(v246 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          v4 = v256;
          v96 = [objc_allocWithZone(NSNumber) initWithDouble:*&v262._countAndFlagsBits + *&v97];
          sub_100007BAC(v264);
          goto LABEL_103;
        }

        sub_1010100EC(&v267, &v262);
        if (v263[24] != 2)
        {
          goto LABEL_146;
        }

        sub_10000A748(&v262._countAndFlagsBits, v264);
        v82 = v265;
        v81 = v266;
        v83 = sub_1000035D0(v264, v265);
        v251 = v246;
        v84 = *(*(v82 - 8) + 64);
        __chkstk_darwin(v83);
        v249 = v85;
        v86 = v246 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
        v252 = v87;
        (*(v87 + 16))(v86);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v262._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v88 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v88 < 64)
            {
              goto LABEL_90;
            }

            v248 = v246;
            __chkstk_darwin(v88);
            v250 = v81;
            v140 = v246 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v141 = *(*(v250 + 32) + 8);
            v137 = dispatch thunk of static Comparable.< infix(_:_:)();
            v142 = v140;
            v81 = v250;
            (*(v252 + 8))(v142, v82);
            v138 = &v268[24];
LABEL_84:
            v143 = *(v138 - 32);
            if (v137)
            {
              goto LABEL_164;
            }

            goto LABEL_91;
          }

          v131 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v132 = v81;
          v133 = v131;
          v250 = v132;
          v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v133)
          {
            if (v134 <= 64)
            {
              v248 = *(*(v250 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v247 = v246;
              v145 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              __chkstk_darwin(AssociatedTypeWitness);
              v246[0] = v246 - v146;
              swift_getAssociatedConformanceWitness();
              v147 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              v246[1] = v246;
              __chkstk_darwin(v147);
              v149 = v246 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v150 = *(*(v250 + 32) + 8);
              v151 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v252 + 8))(v149, v82);
              if (v151)
              {
                goto LABEL_164;
              }

LABEL_89:
              v81 = v250;
LABEL_90:
              dispatch thunk of BinaryInteger._lowWord.getter();
              goto LABEL_91;
            }

            v247 = v246;
            __chkstk_darwin(v134);
            v248 = v246 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v81 = v250;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v136 = *(*(v81 + 32) + 8);
            v137 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v252 + 8))(v248, v82);
            v138 = &v268[16];
            goto LABEL_84;
          }

          if (v134 < 64)
          {
            goto LABEL_89;
          }

          v81 = v250;
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v262._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v152 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v153 = v81;
          v154 = v152;
          v250 = v153;
          v155 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v154)
          {
            if (v155 >= 65)
            {
              goto LABEL_94;
            }
          }

          else if (v155 >= 64)
          {
LABEL_94:
            v248 = v246;
            __chkstk_darwin(v155);
            v249 = v246 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v157 = v250;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v158 = *(*(v157 + 32) + 8);
            v159 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v252 + 8))(v249, v82);
            if (v159)
            {
              goto LABEL_161;
            }

            goto LABEL_101;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_101:
        v160 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v252 + 8))(v86, v82);
        v49 = __OFADD__(v160, v258);
        v161 = &v258[v160];
        if (v49)
        {
          goto LABEL_155;
        }

        v96 = [objc_allocWithZone(NSNumber) initWithLongLong:v161];
        sub_100007BAC(v264);
        v4 = v256;
LABEL_103:
        objc_opt_self();
        v162 = swift_dynamicCastObjCClass();
        if (v162)
        {
          v163 = v162;
          v164 = v96;
          v165 = String.init(_:)(v163);
          v166 = sub_1000DF96C();
          swift_beginAccess();
          v262 = v165;
          *&v263[8] = &type metadata for String;
          *&v263[16] = v166;
          v263[24] = 1;
          v167 = v4[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v261 = v4[14];
          v169 = v261;
          v4[14] = 0x8000000000000000;
          v170 = sub_100771D58(v259, v260);
          v172 = v169[2];
          v173 = (v171 & 1) == 0;
          v49 = __OFADD__(v172, v173);
          v174 = v172 + v173;
          if (v49)
          {
            goto LABEL_152;
          }

          v175 = v171;
          if (v169[3] >= v174)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v241 = v170;
              sub_1010050E8();
              v170 = v241;
            }
          }

          else
          {
            sub_100FE65C4(v174, isUniquelyReferenced_nonNull_native);
            v170 = sub_100771D58(v259, v260);
            if ((v175 & 1) != (v176 & 1))
            {
              goto LABEL_165;
            }
          }

          v4 = v256;
          a1 = v255;
          if (v175)
          {
            v196 = v170;

            v197 = v261;
            sub_10118B568(&v262, v261[7] + 48 * v196);
          }

          else
          {
            v197 = v261;
            v261[(v170 >> 6) + 8] |= 1 << v170;
            v198 = (v197[6] + 16 * v170);
            v199 = v260;
            *v198 = v259;
            v198[1] = v199;
            v200 = (v197[7] + 48 * v170);
            v201 = *&v263[9];
            v202 = *v263;
            *v200 = v262;
            v200[1] = v202;
            *(&v200[1]._object + 1) = v201;
            v203 = v197[2];
            v49 = __OFADD__(v203, 1);
            v204 = v203 + 1;
            if (v49)
            {
              goto LABEL_154;
            }

            v197[2] = v204;
          }

          v205 = v257;
          v4[14] = v197;
          swift_endAccess();
          sub_101010148(v258, v205);

          goto LABEL_121;
        }

        objc_opt_self();
        v177 = swift_dynamicCastObjCClass();
        if (v177)
        {
          v178 = v177;
          [v177 doubleValue];
          v180 = v179;
          v181 = [v178 integerValue];
          if (v180 == v181)
          {
            v182 = v181;
            v183 = sub_1000DFAD8();
            swift_beginAccess();
            v262._countAndFlagsBits = v182;
            *&v263[8] = &type metadata for Int;
            *&v263[16] = v183;
            v263[24] = 2;
            v184 = v4[14];
            v185 = swift_isUniquelyReferenced_nonNull_native();
            v186 = v4;
            v187 = v185;
            v261 = v186[14];
            v188 = v261;
            v186[14] = 0x8000000000000000;
            v189 = sub_100771D58(v259, v260);
            v191 = v188[2];
            v192 = (v190 & 1) == 0;
            v49 = __OFADD__(v191, v192);
            v193 = v191 + v192;
            if (v49)
            {
              goto LABEL_158;
            }

            v194 = v190;
            if (v188[3] >= v193)
            {
              if ((v187 & 1) == 0)
              {
                v244 = v189;
                sub_1010050E8();
                v189 = v244;
              }
            }

            else
            {
              sub_100FE65C4(v193, v187);
              v189 = sub_100771D58(v259, v260);
              if ((v194 & 1) != (v195 & 1))
              {
                goto LABEL_165;
              }
            }

            v4 = v256;
            if ((v194 & 1) == 0)
            {
              v224 = v261;
              v261[(v189 >> 6) + 8] |= 1 << v189;
              v225 = (v224[6] + 16 * v189);
              v226 = v260;
              *v225 = v259;
              v225[1] = v226;
              v227 = (v224[7] + 48 * v189);
              v228 = *&v263[9];
              v229 = *v263;
              *v227 = v262;
              v227[1] = v229;
              *(&v227[1]._object + 1) = v228;
              v230 = v224[2];
              v49 = __OFADD__(v230, 1);
              v231 = v230 + 1;
              if (v49)
              {
                goto LABEL_162;
              }

              goto LABEL_142;
            }

LABEL_140:
            v232 = v189;

            v224 = v261;
            sub_10118B568(&v262, v261[7] + 48 * v232);
          }

          else
          {
            v212 = sub_1000DFA84();
            swift_beginAccess();
            *&v262._countAndFlagsBits = v180;
            *&v263[8] = &type metadata for Double;
            *&v263[16] = v212;
            v263[24] = 3;
            v213 = v4[14];
            v214 = swift_isUniquelyReferenced_nonNull_native();
            v215 = v4;
            v216 = v214;
            v261 = v215[14];
            v217 = v261;
            v215[14] = 0x8000000000000000;
            v189 = sub_100771D58(v259, v260);
            v219 = v217[2];
            v220 = (v218 & 1) == 0;
            v49 = __OFADD__(v219, v220);
            v221 = v219 + v220;
            if (v49)
            {
              goto LABEL_160;
            }

            v222 = v218;
            if (v217[3] >= v221)
            {
              if ((v216 & 1) == 0)
              {
                v245 = v189;
                sub_1010050E8();
                v189 = v245;
              }
            }

            else
            {
              sub_100FE65C4(v221, v216);
              v189 = sub_100771D58(v259, v260);
              if ((v222 & 1) != (v223 & 1))
              {
                goto LABEL_165;
              }
            }

            v4 = v256;
            if (v222)
            {
              goto LABEL_140;
            }

            v224 = v261;
            v261[(v189 >> 6) + 8] |= 1 << v189;
            v233 = (v224[6] + 16 * v189);
            v234 = v260;
            *v233 = v259;
            v233[1] = v234;
            v235 = (v224[7] + 48 * v189);
            v236 = *&v263[9];
            v237 = *v263;
            *v235 = v262;
            v235[1] = v237;
            *(&v235[1]._object + 1) = v236;
            v238 = v224[2];
            v49 = __OFADD__(v238, 1);
            v231 = v238 + 1;
            if (v49)
            {
              goto LABEL_163;
            }

LABEL_142:
            v224[2] = v231;
          }

          v239 = v257;
          v4[14] = v224;
          swift_endAccess();

          sub_101010148(v258, v239);
          goto LABEL_144;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v206 = type metadata accessor for Logger();
        sub_1000076D4(v206, qword_10177C6D0);
        v207 = v96;
        v164 = Logger.logObject.getter();
        v208 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v164, v208))
        {

          sub_101010148(v258, v257);
LABEL_121:

          goto LABEL_144;
        }

        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        *v209 = v253;
        *(v209 + 4) = v207;
        *v210 = v207;
        v211 = v207;
        _os_log_impl(&_mh_execute_header, v164, v208, "Unsupported value type: %@!", v209, 0xCu);
        sub_10000B3A8(v210, &qword_10169BB30, &unk_10138B3C0);
        v4 = v256;

        a1 = v255;

        sub_101010148(v258, v257);
LABEL_144:
        sub_10118B5A0(&v267);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v258];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v258];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v258 & 1).super.super.isa;
        }

        else
        {
          isa = v258;
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
          v40 = v4;
          v41 = sub_1000DF96C();
          swift_beginAccess();
          v267 = v39;
          *&v268[8] = &type metadata for String;
          *&v268[16] = v41;
          v268[24] = 1;
          v42 = v40[14];
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v264[0] = v40[14];
          v44 = v264[0];
          v40[14] = 0x8000000000000000;
          v45 = sub_100771D58(v259, v260);
          v47 = *(v44 + 16);
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            __break(1u);
            goto LABEL_150;
          }

          v51 = v46;
          if (*(v44 + 24) >= v50)
          {
            a1 = v255;
            if ((v43 & 1) == 0)
            {
              v240 = v45;
              sub_1010050E8();
              v45 = v240;
            }
          }

          else
          {
            sub_100FE65C4(v50, v43);
            v45 = sub_100771D58(v259, v260);
            a1 = v255;
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_165;
            }
          }

          v4 = v256;
          if (v51)
          {
            v72 = v45;

            v73 = v264[0];
            sub_10118B568(&v267, *(v264[0] + 56) + 48 * v72);
          }

          else
          {
            v73 = v264[0];
            *(v264[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v74 = (v73[6] + 16 * v45);
            v75 = v260;
            *v74 = v259;
            v74[1] = v75;
            v76 = (v73[7] + 48 * v45);
            v77 = *&v268[9];
            v78 = *v268;
            *v76 = v267;
            v76[1] = v78;
            *(&v76[1]._object + 1) = v77;
            v79 = v73[2];
            v49 = __OFADD__(v79, 1);
            v80 = v79 + 1;
            if (v49)
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

            v73[2] = v80;
          }

          v4[14] = v73;
          swift_endAccess();

LABEL_46:
          sub_101010148(v258, v257);
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
              v267._countAndFlagsBits = v58;
              *&v268[8] = &type metadata for Int;
              *&v268[16] = v59;
              v268[24] = 2;
              v60 = v4[14];
              v61 = swift_isUniquelyReferenced_nonNull_native();
              v62 = v4;
              v63 = v61;
              v264[0] = v62[14];
              v64 = v264[0];
              v62[14] = 0x8000000000000000;
              v65 = sub_100771D58(v259, v260);
              v67 = *(v64 + 16);
              v68 = (v66 & 1) == 0;
              v49 = __OFADD__(v67, v68);
              v69 = v67 + v68;
              if (v49)
              {
                goto LABEL_153;
              }

              v70 = v66;
              if (*(v64 + 24) >= v69)
              {
                if ((v63 & 1) == 0)
                {
                  v242 = v65;
                  sub_1010050E8();
                  v65 = v242;
                }
              }

              else
              {
                sub_100FE65C4(v69, v63);
                v65 = sub_100771D58(v259, v260);
                if ((v70 & 1) != (v71 & 1))
                {
                  goto LABEL_165;
                }
              }

              v4 = v256;
              if (v70)
              {
                goto LABEL_76;
              }

              v115 = v264[0];
              *(v264[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v116 = (v115[6] + 16 * v65);
              v117 = v260;
              *v116 = v259;
              v116[1] = v117;
              v118 = (v115[7] + 48 * v65);
              v119 = *&v268[9];
              v120 = *v268;
              *v118 = v267;
              v118[1] = v120;
              *(&v118[1]._object + 1) = v119;
              v121 = v115[2];
              v49 = __OFADD__(v121, 1);
              v122 = v121 + 1;
              if (v49)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v103 = sub_1000DFA84();
              swift_beginAccess();
              *&v267._countAndFlagsBits = v56;
              *&v268[8] = &type metadata for Double;
              *&v268[16] = v103;
              v268[24] = 3;
              v104 = v4[14];
              v105 = swift_isUniquelyReferenced_nonNull_native();
              v106 = v4;
              v107 = v105;
              v264[0] = v106[14];
              v108 = v264[0];
              v106[14] = 0x8000000000000000;
              v65 = sub_100771D58(v259, v260);
              v110 = *(v108 + 16);
              v111 = (v109 & 1) == 0;
              v49 = __OFADD__(v110, v111);
              v112 = v110 + v111;
              if (v49)
              {
                goto LABEL_156;
              }

              v113 = v109;
              if (*(v108 + 24) >= v112)
              {
                if ((v107 & 1) == 0)
                {
                  v243 = v65;
                  sub_1010050E8();
                  v65 = v243;
                }
              }

              else
              {
                sub_100FE65C4(v112, v107);
                v65 = sub_100771D58(v259, v260);
                if ((v113 & 1) != (v114 & 1))
                {
                  goto LABEL_165;
                }
              }

              v4 = v256;
              if (v113)
              {
LABEL_76:
                v123 = v65;

                v115 = v264[0];
                sub_10118B568(&v267, *(v264[0] + 56) + 48 * v123);
                goto LABEL_79;
              }

              v115 = v264[0];
              *(v264[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v124 = (v115[6] + 16 * v65);
              v125 = v260;
              *v124 = v259;
              v124[1] = v125;
              v126 = (v115[7] + 48 * v65);
              v127 = *&v268[9];
              v128 = *v268;
              *v126 = v267;
              v126[1] = v128;
              *(&v126[1]._object + 1) = v127;
              v129 = v115[2];
              v49 = __OFADD__(v129, 1);
              v122 = v129 + 1;
              if (v49)
              {
                goto LABEL_159;
              }
            }

            v115[2] = v122;
LABEL_79:
            v130 = v257;
            v4[14] = v115;
            swift_endAccess();

            sub_101010148(v258, v130);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v89 = type metadata accessor for Logger();
            sub_1000076D4(v89, qword_10177C6D0);
            v90 = v36;
            v91 = Logger.logObject.getter();
            v92 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              *v93 = v253;
              *(v93 + 4) = v90;
              *v94 = v90;
              v95 = v90;
              _os_log_impl(&_mh_execute_header, v91, v92, "Unsupported value type: %@!", v93, 0xCu);
              sub_10000B3A8(v94, &qword_10169BB30, &unk_10138B3C0);
              v4 = v256;

              a1 = v255;

              goto LABEL_46;
            }

            sub_101010148(v258, v257);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v3 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C6D0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v267._countAndFlagsBits = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000136BC(v6, object, &v267._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v9, v10, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }
}
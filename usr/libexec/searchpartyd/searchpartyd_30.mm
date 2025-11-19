uint64_t sub_100315FE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t (*a8)(char *))
{
  v278 = a8;
  v261 = a7;
  v269 = a6;
  v272 = a5;
  v275 = a4;
  LODWORD(v288) = a3;
  v274 = a1;
  v9 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v286 = &v255 - v15;
  v16 = __chkstk_darwin(v14);
  v300 = (&v255 - v17);
  __chkstk_darwin(v16);
  v290 = &v255 - v18;
  v19 = sub_1000BC4D4(&qword_10169DB08, &qword_10139CBE8);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v284 = &v255 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v293 = &v255 - v23;
  v24 = type metadata accessor for OwnerSharingCircle();
  v280 = *(v24 - 8);
  v25 = *(v280 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v255 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v255 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v255 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v255 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v255 - v39;
  v41 = __chkstk_darwin(v38);
  v260 = &v255 - v42;
  v43 = __chkstk_darwin(v41);
  v268 = &v255 - v44;
  v45 = __chkstk_darwin(v43);
  v277 = &v255 - v46;
  v47 = __chkstk_darwin(v45);
  v262 = &v255 - v48;
  v49 = __chkstk_darwin(v47);
  v263 = (&v255 - v50);
  v51 = __chkstk_darwin(v49);
  v276 = (&v255 - v52);
  v53 = __chkstk_darwin(v51);
  v298 = (&v255 - v54);
  v55 = __chkstk_darwin(v53);
  *&v271 = &v255 - v56;
  __chkstk_darwin(v55);
  v297 = &v255 - v57;
  v58 = a2;
  v59 = type metadata accessor for UUID();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  v62 = __chkstk_darwin(v59);
  v63 = __chkstk_darwin(v62);
  v291 = &v255 - v64;
  v65 = __chkstk_darwin(v63);
  v66 = __chkstk_darwin(v65);
  v299 = &v255 - v67;
  v68 = __chkstk_darwin(v66);
  v292 = &v255 - v69;
  v70 = __chkstk_darwin(v68);
  v294 = &v255 - v71;
  __chkstk_darwin(v70);
  v289 = &v255 - v74;
  if (!*(v58 + 16))
  {
    type metadata accessor for BeaconSharingCircleTransformer.Error();
    sub_100315A3C(&qword_101697608, type metadata accessor for BeaconSharingCircleTransformer.Error);
    swift_allocError();
    (*(v60 + 56))(v108, 1, 1, v59);
    swift_willThrow();
    return v24;
  }

  v259 = v73;
  v265 = v40;
  v257 = v72;
  v285 = v13;
  v301 = v59;
  v279 = v24;
  v255 = v34;
  v258 = v37;
  v256 = v31;
  v264 = v28;
  v75 = v58 + 56;
  v76 = 1 << *(v58 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & *(v58 + 56);
  v79 = (v76 + 63) >> 6;
  v295 = v60;
  v296 = (v60 + 16);
  v287 = (v60 + 8);

  v80 = 0;
  v273 = _swiftEmptyDictionarySingleton;
  v282 = v58 + 56;
  v283 = v58;
  while (1)
  {
    v82 = v269;
    v83 = v277;
    if (!v78)
    {
      while (1)
      {
        v84 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (v84 >= v79)
        {
          break;
        }

        v78 = *(v75 + 8 * v84);
        ++v80;
        if (v78)
        {
          goto LABEL_12;
        }
      }

      v75 = &v255;
      __chkstk_darwin(v97);
      *(&v255 - 2) = v274;
      v98 = v275;

      v99 = v281;
      v100 = sub_10013CF58(v278, (&v255 - 4), v98);
      v267 = v99;
      v101 = *(v100 + 16);
      v275 = v100;
      v278 = v101;
      if (v101)
      {
        v28 = v100;
        v75 = 0;
        v281 = _swiftEmptyArrayStorage;
        v24 = v301;
        v79 = v293;
        while (1)
        {
          v80 = *(v28 + 16);
          if (v75 >= v80)
          {
            break;
          }

          v102 = (*(v280 + 80) + 32) & ~*(v280 + 80);
          v34 = *(v280 + 72);
          v78 = v297;
          sub_1003158CC(v28 + v102 + v34 * v75, v297);
          if (*(v78 + v279[7]) == v82)
          {
            sub_10031598C(v78, v298);
            v103 = v281;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v303[0] = v103;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101123FE4(0, *(v103 + 2) + 1, 1);
              v28 = v275;
              v103 = v303[0];
            }

            v106 = *(v103 + 2);
            v105 = *(v103 + 3);
            v107 = v103;
            if (v106 >= v105 >> 1)
            {
              sub_101123FE4(v105 > 1, v106 + 1, 1);
              v28 = v275;
              v107 = v303[0];
            }

            *(v107 + 2) = v106 + 1;
            v281 = v107;
            sub_10031598C(v298, &v107[v102 + v106 * v34]);
            v83 = v277;
            v24 = v301;
          }

          else
          {
            sub_100315930(v78);
          }

          if (v278 == ++v75)
          {
            goto LABEL_35;
          }
        }

LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v281 = _swiftEmptyArrayStorage;
      v24 = v301;
      v79 = v293;
LABEL_35:
      v110 = *(v281 + 2);
      v28 = v273;

      v266 = v110;
      if (!v110)
      {
LABEL_70:
        v297 = v28;
        if (!v278)
        {
          goto LABEL_87;
        }

        v82 = 0;
        v34 = _swiftEmptyArrayStorage;
        v75 = v272;
        v78 = v279;
        while (1)
        {
          v80 = *(v275 + 16);
          if (v82 >= v80)
          {
            goto LABEL_157;
          }

          v79 = (*(v280 + 80) + 32) & ~*(v280 + 80);
          v159 = *(v280 + 72);
          v160 = v276;
          sub_1003158CC(v275 + v79 + v159 * v82, v276);
          v161 = v160;
          if (*(v160 + *(v78 + 28)) != v75)
          {
            goto LABEL_72;
          }

          v300 = v159;
          v83 = *(v160 + *(v78 + 32));
          v28 = *(v83 + 16);
          if (v28)
          {
            v75 = sub_1003A85FC(*(v83 + 16), 0);
            v162 = sub_1003CC2CC(v303, v75 + ((*(v295 + 80) + 32) & ~*(v295 + 80)), v28, v83);
            v24 = v303[2];
            v78 = v303[3];
            v298 = v303[4];
            v299 = v162;

            sub_1000128F8();
            v80 = v299;
            if (v299 != v28)
            {
              goto LABEL_161;
            }

            v78 = v279;
            v24 = v301;
          }

          else
          {
            v75 = _swiftEmptyArrayStorage;
          }

          v163 = sub_10000954C(v75);

          v164 = v297;

          v166 = sub_10111E628(v165);
          v167 = sub_100314BE4(v166, v163);
          v28 = v164;

          v75 = v272;
          v161 = v276;
          v168 = v300;
          if (v167)
          {
LABEL_72:
            sub_100315930(v161);
          }

          else
          {
            sub_10031598C(v276, v268);
            v169 = swift_isUniquelyReferenced_nonNull_native();
            v304 = v34;
            if ((v169 & 1) == 0)
            {
              sub_101123FE4(0, *(v34 + 16) + 1, 1);
              v28 = v297;
              v34 = v304;
            }

            v171 = *(v34 + 16);
            v170 = *(v34 + 24);
            if (v171 >= v170 >> 1)
            {
              sub_101123FE4(v170 > 1, v171 + 1, 1);
              v28 = v297;
              v34 = v304;
            }

            *(v34 + 16) = v171 + 1;
            sub_10031598C(v268, v34 + v79 + v171 * v168);
            v75 = v272;
          }

          ++v82;
          v83 = v277;
          if (v278 == v82)
          {
            goto LABEL_88;
          }
        }
      }

      v111 = 0;
      v298 = (v295 + 32);
      v28 = v273;
LABEL_38:
      v80 = *(v281 + 2);
      if (v111 >= v80)
      {
        goto LABEL_159;
      }

      v112 = v271;
      sub_1003158CC(&v281[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v111], v271);
      v270 = v111 + 1;
      v113 = *(v112 + v279[8]);

      v114 = swift_isUniquelyReferenced_nonNull_native();
      v303[0] = v28;
      v115 = *(v113 + 64);
      v283 = v113 + 64;
      v116 = 1 << *(v113 + 32);
      if (v116 < 64)
      {
        v117 = ~(-1 << v116);
      }

      else
      {
        v117 = -1;
      }

      v78 = v117 & v115;
      v282 = (v116 + 63) >> 6;
      v288 = v113;

      v118 = 0;
      v119 = &unk_10139CBF0;
      while (1)
      {
        while (1)
        {
          v297 = v28;
          LODWORD(v294) = v114;
          if (!v78)
          {
            if (v282 <= (v118 + 1))
            {
              v123 = v118 + 1;
            }

            else
            {
              v123 = v282;
            }

            v82 = v123 - 1;
            while (1)
            {
              v83 = v118 + 1;
              if (__OFADD__(v118, 1))
              {
                break;
              }

              if (v83 >= v282)
              {
                v34 = &qword_1016BBEE0;
                v158 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
                v137 = v290;
                (*(*(v158 - 8) + 56))(v290, 1, 1, v158);
                v78 = 0;
                goto LABEL_54;
              }

              v78 = *(v283 + 8 * v83);
              ++v118;
              if (v78)
              {
                goto LABEL_53;
              }
            }

            __break(1u);
LABEL_87:
            v34 = _swiftEmptyArrayStorage;
            v78 = v279;
LABEL_88:
            v172 = v263;
            v173 = v263 + *(v78 + 20);
            UUID.init()();
            v174 = v172 + *(v78 + 24);
            v79 = v24;
            v298 = *v296;
            v298(v174, v274, v24);
            v271 = xmmword_10138C660;
            *v172 = xmmword_10138C660;
            v82 = v269;
            *(v172 + *(v78 + 28)) = v269;
            *(v172 + *(v78 + 32)) = v28;
            *(v172 + *(v78 + 36)) = v261;
            sub_1003158CC(v172, v262);

            v24 = sub_100A5BC94(0, 1, 1, _swiftEmptyArrayStorage);
            v28 = *(v24 + 16);
            v80 = *(v24 + 24);
            v75 = v28 + 1;
            if (v28 < v80 >> 1)
            {
              goto LABEL_89;
            }

            goto LABEL_165;
          }

          v83 = v118;
LABEL_53:
          v124 = __clz(__rbit64(v78));
          v78 &= v78 - 1;
          v125 = v124 | (v83 << 6);
          v126 = v288;
          v127 = v295;
          v128 = v292;
          (*(v295 + 16))(v292, *(v288 + 48) + *(v295 + 72) * v125, v24);
          v129 = *(*(v126 + 56) + v125);
          v119 = &unk_10139CBF0;
          v130 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
          v131 = v24;
          v132 = *(v130 + 48);
          v133 = *(v127 + 32);
          v134 = v290;
          v133(v290, v128, v131);
          v134[v132] = v129;
          v34 = &qword_1016BBEE0;
          v135 = *(*(v130 - 8) + 56);
          v136 = v130;
          v137 = v134;
          v135(v134, 0, 1, v136);
          v82 = v83;
          v79 = v293;
LABEL_54:
          v138 = v300;
          sub_1000D2AD8(v137, v300, &unk_1016BC360, &qword_10139CBE0);
          v139 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
          if ((*(*(v139 - 8) + 48))(v138, 1, v139) == 1)
          {
            v140 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
            (*(*(v140 - 8) + 56))(v79, 1, 1, v140);
            v24 = v301;
          }

          else
          {
            v141 = *(v139 + 48);
            v289 = v82;
            v142 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
            v143 = *(v142 + 48);
            v24 = v301;
            LOBYTE(v141) = *(v300 + v141);
            (*v296)(v79, v300, v301);
            *(v79 + v143) = v141;
            v119 = &unk_10139CBF0;
            sub_10000B3A8(v300, &qword_1016BBEE0, &unk_10139CBF0);
            v82 = v289;
            (*(*(v142 - 8) + 56))(v79, 0, 1, v142);
          }

          v144 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
          if ((*(*(v144 - 8) + 48))(v79, 1, v144) == 1)
          {
            v75 = v288;

            sub_100315930(v271);
            v111 = v270;
            v28 = v297;
            v83 = v277;
            if (v270 == v266)
            {
              goto LABEL_70;
            }

            goto LABEL_38;
          }

          v145 = *(v144 + 48);
          v34 = v299;
          v146 = *v298;
          (*v298)(v299, v79, v24);
          v79 = *(v79 + v145);
          v147 = v297;
          v149 = sub_1000210EC(v34);
          v150 = *(v147 + 16);
          v151 = (v148 & 1) == 0;
          v152 = v150 + v151;
          if (__OFADD__(v150, v151))
          {
            __break(1u);
LABEL_136:
            v230 = v297;

            v231 = sub_100315DFC(v300, v230);

            swift_bridgeObjectRelease_n();
            if (*(v231 + 16))
            {
              v267 = v119;
              v82 = v279;
              v232 = v258;
              v233 = v258 + v279[5];
              UUID.init()();
              v234 = v274;
              v235 = v298;
              v298(v232 + *(v82 + 24), v274, v34);
              *v232 = v271;
              v236 = v272;
              *(v232 + *(v82 + 28)) = v272;
              *(v232 + *(v82 + 32)) = v231;
              *(v232 + *(v82 + 36)) = v261;
              v237 = v255;
              sub_1003158CC(v232, v255);
              v238 = v257;
              v235(v257, v234, v34);
              v239 = Logger.logObject.getter();
              v79 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v239, v79))
              {
                v240 = swift_slowAlloc();
                v300 = swift_slowAlloc();
                v304 = v300;
                *v240 = 134350083;
                *(v240 + 4) = v236;
                *(v240 + 12) = 2160;
                *(v240 + 14) = 1752392040;
                *(v240 + 22) = 2081;
                v241 = *(v82 + 20);
                sub_100315A3C(&qword_101696930, &type metadata accessor for UUID);
                v242 = dispatch thunk of CustomStringConvertible.description.getter();
                v244 = v243;
                sub_100315930(v237);
                v245 = sub_1000136BC(v242, v244, &v304);
                v78 = v264;

                *(v240 + 24) = v245;
                *(v240 + 32) = 2160;
                *(v240 + 34) = 1752392040;
                *(v240 + 42) = 2081;
                v246 = v257;
                v247 = dispatch thunk of CustomStringConvertible.description.getter();
                v249 = v248;
                (v290)(v246, v34);
                v250 = sub_1000136BC(v247, v249, &v304);

                *(v240 + 44) = v250;
                _os_log_impl(&_mh_execute_header, v239, v79, "Create a new type: %{public}ld\ncircle: %{private,mask.hash}s,\nfor beacon:%{private,mask.hash}s.", v240, 0x34u);
                swift_arrayDestroy();
              }

              else
              {

                (v290)(v238, v34);
                sub_100315930(v237);
              }

              v251 = v256;
              sub_1003158CC(v258, v256);
              v24 = v276;
              v253 = v276[2];
              v252 = v276[3];
              v119 = v267;
              v34 = v278;
              if (v253 >= v252 >> 1)
              {
                v24 = sub_100A5BC94(v252 > 1, v253 + 1, 1, v276);
              }

              sub_100315930(v258);
              *(v24 + 16) = v253 + 1;
              sub_10031598C(v251, &v277[v24 + v253 * v283]);
            }

            else
            {
LABEL_141:

              v34 = v278;
              v24 = v276;
            }

            sub_100397FA8(v254);
            v75 = 0;
            v28 = v280;
            v83 = v281;
            while (1)
            {
              v80 = *(v34 + 16);
              if (v75 >= v80)
              {
                goto LABEL_164;
              }

              sub_1003158CC(v83, v78);
              sub_100314FA4(v78, v272, v274);
              if (v119)
              {
                goto LABEL_167;
              }

              ++v75;
              sub_100315930(v78);
              v83 += v283;
              if (v28 == v75)
              {

                goto LABEL_151;
              }
            }
          }

          v153 = v148;
          if (*(v147 + 24) < v152)
          {
            break;
          }

          if (v294)
          {
            v28 = v303[0];
            if ((v148 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
            sub_1010062B8();
            v28 = v303[0];
            if ((v153 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

LABEL_43:
          v120 = v28;
          v121 = *(*(v28 + 56) + v149);
          v122 = v301;
          (*v287)(v299, v301);
          *(*(v120 + 56) + v149) = v121;
          v24 = v122;
          v28 = v120;
          v114 = 1;
          v118 = v82;
          v79 = v293;
        }

        sub_100FE88DC(v152, v294 & 1);
        v154 = sub_1000210EC(v299);
        if ((v153 & 1) != (v155 & 1))
        {
          goto LABEL_166;
        }

        v149 = v154;
        v28 = v303[0];
        if (v153)
        {
          goto LABEL_43;
        }

LABEL_65:
        *(v28 + 8 * (v149 >> 6) + 64) |= 1 << v149;
        v146(*(v28 + 48) + *(v295 + 72) * v149, v299, v301);
        *(*(v28 + 56) + v149) = v79;
        v156 = *(v28 + 16);
        v90 = __OFADD__(v156, 1);
        v157 = v156 + 1;
        if (v90)
        {
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        *(v28 + 16) = v157;
        v114 = 1;
        v118 = v82;
        v24 = v301;
        v79 = v293;
      }
    }

    v84 = v80;
LABEL_12:
    v82 = *(v295 + 72);
    v83 = *(v295 + 16);
    v75 = v289;
    v85 = v301;
    (v83)(v289, *(v58 + 48) + v82 * (__clz(__rbit64(v78)) | (v84 << 6)), v301);
    v24 = v294;
    (v83)(v294, v75, v85);
    v28 = v273;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v303[0] = v28;
    v86 = sub_1000210EC(v24);
    v88 = *(v28 + 16);
    v89 = (v87 & 1) == 0;
    v90 = __OFADD__(v88, v89);
    v80 = v88 + v89;
    if (v90)
    {
      goto LABEL_160;
    }

    v24 = v87;
    if (*(v28 + 24) >= v80)
    {
      if ((v34 & 1) == 0)
      {
        v96 = v86;
        sub_1010062B8();
        v86 = v96;
      }
    }

    else
    {
      sub_100FE88DC(v80, v34);
      v86 = sub_1000210EC(v294);
      if ((v24 & 1) != (v91 & 1))
      {
LABEL_166:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_167:

        result = sub_100315930(v78);
        __break(1u);
        return result;
      }
    }

    v78 &= v78 - 1;
    v92 = v303[0];
    v273 = v303[0];
    if (v24)
    {
      *(*(v303[0] + 56) + v86) = v288;
      v34 = v287;
      v28 = *v287;
      v81 = v301;
      (*v287)(v294, v301);
      (v28)(v289, v81);
      goto LABEL_6;
    }

    v24 = v303[0];
    *(v303[0] + 8 * (v86 >> 6) + 64) |= 1 << v86;
    v93 = v86;
    v94 = *(v92 + 48) + v86 * v82;
    v82 = v294;
    v34 = v301;
    (v83)(v94, v294, v301);
    *(*(v24 + 56) + v93) = v288;
    v83 = v287;
    v28 = *v287;
    (*v287)(v82, v34);
    (v28)(v289, v34);
    v95 = *(v24 + 16);
    v90 = __OFADD__(v95, 1);
    v80 = v95 + 1;
    if (v90)
    {
      break;
    }

    *(v24 + 16) = v80;
LABEL_6:
    v80 = v84;
    v58 = v283;
    v75 = v282;
  }

  while (1)
  {
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v24 = sub_100A5BC94(v80 > 1, v75, 1, v24);
LABEL_89:
    *(v24 + 16) = v75;
    v277 = ((*(v280 + 80) + 32) & ~*(v280 + 80));
    v283 = *(v280 + 72);
    sub_10031598C(v262, &v277[v24 + v283 * v28]);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    v176 = sub_1000076D4(v175, qword_10177A560);
    sub_1003158CC(v263, v83);
    v177 = v259;
    v298(v259, v274, v79);
    v270 = v176;
    v75 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v178 = os_log_type_enabled(v75, v28);
    v278 = v34;
    v276 = v24;
    if (v178)
    {
      v179 = v83;
      v180 = swift_slowAlloc();
      v304 = swift_slowAlloc();
      *v180 = 134350083;
      *(v180 + 4) = v82;
      *(v180 + 12) = 2160;
      *(v180 + 14) = 1752392040;
      *(v180 + 22) = 2081;
      LODWORD(v300) = v28;
      v181 = *(v78 + 20);
      sub_100315A3C(&qword_101696930, &type metadata accessor for UUID);
      v182 = dispatch thunk of CustomStringConvertible.description.getter();
      v184 = v183;
      sub_100315930(v179);
      v185 = sub_1000136BC(v182, v184, &v304);

      *(v180 + 24) = v185;
      *(v180 + 32) = 2160;
      *(v180 + 34) = 1752392040;
      v186 = v301;
      *(v180 + 42) = 2081;
      v82 = v269;
      v187 = dispatch thunk of CustomStringConvertible.description.getter();
      v189 = v188;
      v290 = *v287;
      (v290)(v177, v186);
      v28 = sub_1000136BC(v187, v189, &v304);

      *(v180 + 44) = v28;
      _os_log_impl(&_mh_execute_header, v75, v300, "Create a new type: %{public}ld\ncircle: %{private,mask.hash}s,\nfor beacon:%{private,mask.hash}s.", v180, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      v290 = *v287;
      (v290)(v177, v79);
      sub_100315930(v83);
    }

    v83 = v284;
    v34 = v295;
    v78 = v260;
    v79 = v266;
    v303[0] = v281;

    v119 = v267;
    v24 = v265;
    if (!v79)
    {
      break;
    }

    v28 = 0;
    v75 = &v277[v190];
    while (1)
    {
      v80 = *(v281 + 2);
      if (v28 >= v80)
      {
        break;
      }

      sub_1003158CC(v75, v78);
      sub_100314FA4(v78, v82, v274);
      if (v119)
      {
        goto LABEL_167;
      }

      ++v28;
      sub_100315930(v78);
      v75 += v283;
      if (v79 == v28)
      {
        goto LABEL_99;
      }
    }

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
  }

LABEL_99:

  if (*(v278 + 16))
  {
    v280 = *(v278 + 16);
    v191 = 0;
    v281 = &v277[v278];
    v79 = v34 + 32;
    v300 = _swiftEmptyDictionarySingleton;
    v294 = v34 + 32;
    while (1)
    {
      v80 = *(v278 + 16);
      if (v191 >= v80)
      {
        goto LABEL_162;
      }

      v267 = v119;
      v192 = v191;
      sub_1003158CC(&v281[v191 * v283], v24);
      v282 = v192 + 1;
      v28 = *(v24 + v279[8]);

      v193 = v300;
      v194 = swift_isUniquelyReferenced_nonNull_native();
      v304 = v193;
      v195 = *(v28 + 64);
      v289 = (v28 + 64);
      v196 = 1 << *(v28 + 32);
      if (v196 < 64)
      {
        v197 = ~(-1 << v196);
      }

      else
      {
        v197 = -1;
      }

      v78 = v197 & v195;
      v288 = (v196 + 63) >> 6;
      v293 = v28;

      for (i = 0; ; i = v119)
      {
        LODWORD(v299) = v194;
        if (!v78)
        {
          if (v288 <= (i + 1))
          {
            v200 = (i + 1);
          }

          else
          {
            v200 = v288;
          }

          v119 = (v200 - 1);
          while (1)
          {
            v199 = (i + 1);
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v199 >= v288)
            {
              v228 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
              v229 = v286;
              (*(*(v228 - 8) + 56))(v286, 1, 1, v228);
              v211 = v229;
              v78 = 0;
              goto LABEL_119;
            }

            v78 = *&v289[8 * v199];
            ++i;
            if (v78)
            {
              goto LABEL_118;
            }
          }

          __break(1u);
          goto LABEL_134;
        }

        v199 = i;
LABEL_118:
        v201 = __clz(__rbit64(v78));
        v78 &= v78 - 1;
        v202 = v201 | (v199 << 6);
        v203 = v292;
        v28 = v293;
        v204 = v295;
        v205 = v301;
        v298(v292, *(v293 + 6) + *(v295 + 72) * v202, v301);
        LOBYTE(v202) = *(*(v28 + 56) + v202);
        v206 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v207 = *(v206 + 48);
        v208 = *(v204 + 32);
        v209 = v286;
        v210 = v203;
        v79 = v294;
        v208(v286, v210, v205);
        v209[v207] = v202;
        (*(*(v206 - 8) + 56))(v209, 0, 1, v206);
        v119 = v199;
        v211 = v209;
        v83 = v284;
LABEL_119:
        v82 = v285;
        sub_1000D2AD8(v211, v285, &unk_1016BC360, &qword_10139CBE0);
        v212 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        if ((*(*(v212 - 8) + 48))(v82, 1, v212) == 1)
        {
          v213 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
          (*(*(v213 - 8) + 56))(v83, 1, 1, v213);
        }

        else
        {
          v214 = *(v212 + 48);
          v28 = v119;
          v215 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
          v216 = *(v215 + 48);
          LOBYTE(v214) = *(v82 + v214);
          v298(v83, v82, v301);
          *(v83 + v216) = v214;
          v79 = v294;
          sub_10000B3A8(v82, &qword_1016BBEE0, &unk_10139CBF0);
          (*(*(v215 - 8) + 56))(v83, 0, 1, v215);
        }

        v217 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
        if ((*(*(v217 - 8) + 48))(v83, 1, v217) == 1)
        {
          break;
        }

        v218 = *(v217 + 48);
        v75 = *v79;
        v219 = v291;
        (*v79)(v291, v83, v301);
        v82 = *(v83 + v218);
        v28 = v300;
        v24 = sub_1000210EC(v219);
        v221 = *(v28 + 16);
        v222 = (v220 & 1) == 0;
        v223 = v221 + v222;
        if (__OFADD__(v221, v222))
        {
          goto LABEL_140;
        }

        v34 = v220;
        if (v300[3] >= v223)
        {
          if ((v299 & 1) == 0)
          {
            v28 = &v304;
            sub_1010062B8();
          }
        }

        else
        {
          sub_100FE88DC(v223, v299 & 1);
          v28 = v304;
          v224 = sub_1000210EC(v291);
          if ((v34 & 1) != (v225 & 1))
          {
            goto LABEL_166;
          }

          v24 = v224;
        }

        v300 = v304;
        if (v34)
        {
          (v290)(v291, v301);
          *(v300[7] + v24) = v82;
        }

        else
        {
          v28 = v300;
          v226 = v301;
          v300[(v24 >> 6) + 8] |= 1 << v24;
          (v75)(*(v28 + 48) + *(v295 + 72) * v24, v291, v226);
          *(*(v28 + 56) + v24) = v82;
          v227 = *(v28 + 16);
          v90 = __OFADD__(v227, 1);
          v80 = v227 + 1;
          if (v90)
          {
            goto LABEL_155;
          }

          v300[2] = v80;
        }

        v194 = 1;
      }

      v75 = v293;

      v24 = v265;
      sub_100315930(v265);
      v191 = v282;
      v78 = v264;
      v34 = v301;
      v119 = v267;
      if (v282 == v280)
      {
        goto LABEL_136;
      }
    }
  }

LABEL_134:

  v24 = v276;
LABEL_151:
  if (!sub_100315470(v24))
  {

    type metadata accessor for SPBeaconSharingError(0);
    v302 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100315A3C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  sub_100315930(v263);
  return v24;
}

uint64_t sub_1003182FC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for OwnerSharingCircle() + 24);
  return static UUID.== infix(_:_:)() & 1;
}

void *sub_10031834C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
  v12 = *(v5 + 72);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  sub_1003158CC(a2, v14 + v13);
  if (*(*(a2 + v4[8]) + 16) < 2uLL)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = *(a2 + v4[8]);

  sub_1007A9FEC(a1);
  v15 = &v11[v4[5]];
  UUID.init()();
  v16 = v4[6];
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 16))(&v11[v16], a2 + v16, v17);
  v18 = v4[7];
  v19 = *(a2 + v18);
  v20 = v26;
  *v11 = xmmword_10138C660;
  v11[v18] = v19;
  *&v11[v4[8]] = v20;
  v11[v4[9]] = 1;
  sub_1003158CC(v11, v9);
  v21 = sub_100A5BC94(0, 1, 1, _swiftEmptyArrayStorage);
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_100A5BC94(v22 > 1, v23 + 1, 1, v21);
  }

  sub_100315930(v11);
  v21[2] = v23 + 1;
  sub_10031598C(v9, v21 + v13 + v23 * v12);
  return v21;
}

uint64_t sub_1003185B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  v46 = type metadata accessor for UUID();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v46);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_10169DB08, &qword_10139CBE8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v43 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v47 = a1;
  v48 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v49 = v18;
  v50 = 0;
  v51 = v21 & v19;
  v52 = a2;
  v53 = a3;
  v22 = (v9 + 32);
  v44 = (v9 + 8);
  v45 = v9;

  v43 = a3;

  while (1)
  {
    sub_10061D55C(v16);
    v23 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
    if ((*(*(v23 - 8) + 48))(v16, 1, v23) == 1)
    {
      sub_1000128F8();
    }

    v24 = *(v23 + 48);
    v25 = *v22;
    (*v22)(v12, v16, v46);
    v26 = v16[v24];
    v27 = *v54;
    v29 = sub_1000210EC(v12);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_1010062B8();
      }
    }

    else
    {
      v34 = v54;
      sub_100FE88DC(v32, a4 & 1);
      v35 = *v34;
      v36 = sub_1000210EC(v12);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_19;
      }

      v29 = v36;
    }

    v38 = *v54;
    if (v33)
    {
      (*v44)(v12, v46);
      *(v38[7] + v29) = v26;
      a4 = 1;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v25((v38[6] + *(v45 + 72) * v29), v12, v46);
      *(v38[7] + v29) = v26;
      v39 = v38[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v38[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1003188F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for OwnerSharingCircle();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v47 - v19;
  __chkstk_darwin(v18);
  v54 = &v47 - v21;
  v23 = sub_10031834C(a1, a2);
  if (*(a2 + v9[7]))
  {
    v49 = v20;
    v50 = a2;
    v51 = v22;
    v52 = v14;
    sub_1000BC4D4(&qword_10169DB28, &unk_10139CC18);
    v24 = v10;
    v25 = (sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510) - 8);
    v26 = *(*v25 + 72);
    v27 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    v29 = v28 + v27;
    v30 = v25[14];
    v31 = type metadata accessor for UUID();
    v32 = *(v31 - 8);
    v33 = *(v32 + 16);
    v47 = v32 + 16;
    v48 = v33;
    v33(v29, a1, v31);
    *(v29 + v30) = 1;
    v34 = v24;
    v35 = sub_100908D20(v28);
    swift_setDeallocating();
    sub_10000B3A8(v29, &qword_10169DB10, &qword_1013B3510);
    swift_deallocClassInstance();
    sub_1000D2A70(v53, v8, &unk_1016AFA00, &qword_10138C4D0);
    if ((*(v24 + 48))(v8, 1, v9) == 1)
    {
      sub_10000B3A8(v8, &unk_1016AFA00, &qword_10138C4D0);
      v36 = v52;
    }

    else
    {
      v37 = v54;
      sub_10031598C(v8, v54);
      v38 = *(v37 + v9[8]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v35;
      sub_1003185B8(v38, sub_1003153D0, 0, isUniquelyReferenced_nonNull_native, &v55);

      v35 = v55;
      sub_1003158CC(v37, v49);
      v40 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_100A5BC94(0, v40[2] + 1, 1, v40);
      }

      v36 = v52;
      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v40 = sub_100A5BC94(v41 > 1, v42 + 1, 1, v40);
      }

      sub_100315930(v54);
      v40[2] = v42 + 1;
      sub_10031598C(v49, v40 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v42);
    }

    v43 = &v17[v9[5]];
    UUID.init()();
    v48(&v17[v9[6]], v50 + v9[6], v31);
    *v17 = xmmword_10138C660;
    v17[v9[7]] = 0;
    *&v17[v9[8]] = v35;
    v17[v9[9]] = 1;
    sub_1003158CC(v17, v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_100A5BC94(0, v23[2] + 1, 1, v23);
    }

    v45 = v23[2];
    v44 = v23[3];
    if (v45 >= v44 >> 1)
    {
      v23 = sub_100A5BC94(v44 > 1, v45 + 1, 1, v23);
    }

    sub_100315930(v17);
    v23[2] = v45 + 1;
    sub_10031598C(v36, v23 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v45);
  }

  return v23;
}

uint64_t sub_100318E20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v106 = a2;
  v112 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v111 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169DB18, &unk_10139CC00);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v105 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v104 = &v90 - v12;
  v13 = type metadata accessor for OwnerSharingCircle();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v91 = &v90 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v90 - v22;
  v24 = __chkstk_darwin(v21);
  v93 = &v90 - v25;
  v26 = __chkstk_darwin(v24);
  v98 = &v90 - v27;
  v28 = __chkstk_darwin(v26);
  v94 = (&v90 - v29);
  v30 = __chkstk_darwin(v28);
  v96 = (&v90 - v31);
  v32 = __chkstk_darwin(v30);
  v95 = &v90 - v33;
  __chkstk_darwin(v32);
  v35 = &v90 - v34;
  v36 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v108 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v109 = &_swiftEmptySetSingleton;
  v114 = &_swiftEmptySetSingleton;
  v103 = a3;
  v107 = &v90 - v40;
  sub_1000D2A70(a3, &v90 - v40, &unk_1016AFA00, &qword_10138C4D0);
  v110 = v35;
  result = sub_1003158CC(v112, v35);
  v42 = 0;
  v43 = *(v106 + 16);
  v101 = (v14 + 48);
  v102 = (v5 + 32);
  v99 = (v5 + 8);
  v90 = (v14 + 56);
  v100 = v4;
  v92 = v43;
  v44 = v43 == 0;
  if (v43)
  {
    goto LABEL_3;
  }

LABEL_2:
  v45 = sub_1000BC4D4(&qword_10169DB20, &qword_10139CC10);
  v46 = v105;
  (*(*(v45 - 8) + 56))(v105, 1, 1, v45);
  v97 = v43;
  v47 = v111;
  v48 = v109;
  while (1)
  {
    v52 = v46;
    v53 = v104;
    sub_1000D2AD8(v52, v104, &qword_10169DB18, &unk_10139CC00);
    v54 = sub_1000BC4D4(&qword_10169DB20, &qword_10139CC10);
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
      goto LABEL_33;
    }

    v55 = *(v53 + *(v54 + 48));
    (*v102)(v47, v53, v4);
    if (v55 == 1)
    {
      v56 = sub_1003188F4(v47, v110, v107);
    }

    else
    {
      v56 = sub_10031834C(v47, v110);
    }

    v58 = v56;
    v59 = v57;
    v60 = v108;
    swift_bridgeObjectRetain_n();

    v61 = sub_1003ADF48(v58, v48);

    v48 = sub_100612D48(v59, v61);
    LOBYTE(v61) = sub_1005C8B7C(v112, v59);

    if (v61)
    {
      v62 = v96;
      sub_1003158CC(v112, v96);
      v63 = v18;
      v64 = v48;
      v65 = v95;
      v66 = v62;
      v60 = v108;
      sub_100DEC12C(v95, v66);
      v67 = v65;
      v48 = v64;
      v18 = v63;
      sub_100315930(v67);
    }

    sub_1000D2A70(v103, v60, &unk_1016AFA00, &qword_10138C4D0);
    if ((*v101)(v60, 1, v13) != 1)
    {
      v69 = v94;
      sub_10031598C(v60, v94);
      v70 = sub_1005C8B7C(v69, v59);

      if (v70)
      {
        v71 = v96;
        sub_1003158CC(v69, v96);
        v72 = v95;
        sub_100DEC12C(v95, v71);
        sub_100315930(v72);
      }

      result = sub_100315930(v69);
      v68 = *(v58 + 16);
      if (v68)
      {
        goto LABEL_18;
      }

LABEL_32:
      (*v99)(v111, v100);
      swift_bridgeObjectRelease_n();
LABEL_33:
      v83 = v48[2];
      if (v83)
      {
        v84 = sub_1003A8660(v48[2], 0);
        v85 = sub_1003A9FFC(&v113, v84 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v83, v48);
        sub_1000128F8();
        if (v85 == v83)
        {
          goto LABEL_37;
        }

        __break(1u);
      }

      v84 = _swiftEmptyArrayStorage;
LABEL_37:
      v86 = v114;
      v87 = v114[2];
      if (v87)
      {
        v88 = sub_1003A8660(v114[2], 0);
        v89 = sub_1003A9FFC(&v113, v88 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v87, v86);
        sub_1000128F8();
        if (v89 == v87)
        {
LABEL_41:
          sub_100315930(v110);
          sub_10000B3A8(v107, &unk_1016AFA00, &qword_10138C4D0);
          return v84;
        }

        __break(1u);
      }

      goto LABEL_41;
    }

    result = sub_10000B3A8(v60, &unk_1016AFA00, &qword_10138C4D0);
    v68 = *(v58 + 16);
    if (!v68)
    {
      goto LABEL_32;
    }

LABEL_18:
    v73 = 0;
    while (1)
    {
      if (v73 >= *(v58 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v74 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v75 = *(v14 + 72);
      sub_1003158CC(v58 + v74 + v75 * v73, v23);
      if (v23[*(v13 + 28)] == 2)
      {
        break;
      }

      ++v73;
      result = sub_100315930(v23);
      if (v68 == v73)
      {
        goto LABEL_32;
      }
    }

    v109 = v48;

    v76 = v93;
    sub_10031598C(v23, v93);
    result = sub_10031598C(v76, v98);
    v77 = *(v58 + 16);
    if (v77)
    {
      v78 = 0;
      v79 = v58 + v74;
      while (v78 < *(v58 + 16))
      {
        sub_1003158CC(v79, v18);
        if (!v18[*(v13 + 28)])
        {

          v4 = v100;
          (*v99)(v111, v100);
          v80 = v110;
          sub_100315930(v110);
          v81 = v107;
          sub_10000B3A8(v107, &unk_1016AFA00, &qword_10138C4D0);
          v82 = v91;
          sub_10031598C(v18, v91);
          sub_10031598C(v82, v81);
          (*v90)(v81, 0, 1, v13);
          goto LABEL_30;
        }

        ++v78;
        result = sub_100315930(v18);
        v79 += v75;
        if (v77 == v78)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_43;
    }

LABEL_28:

    v4 = v100;
    (*v99)(v111, v100);
    v80 = v110;
    sub_100315930(v110);
LABEL_30:
    result = sub_10031598C(v98, v80);
    v43 = v92;
    v42 = v97;
    v44 = v97 >= v92;
    if (v97 == v92)
    {
      goto LABEL_2;
    }

LABEL_3:
    v46 = v105;
    if (v44)
    {
      break;
    }

    v49 = sub_1000BC4D4(&qword_10169DB20, &qword_10139CC10);
    v50 = *(v49 - 8);
    result = sub_1000D2A70(v106 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v42, v46, &qword_10169DB20, &qword_10139CC10);
    v51 = __OFADD__(v42, 1);
    v97 = v42 + 1;
    v48 = v109;
    if (v51)
    {
      goto LABEL_45;
    }

    (*(v50 + 56))(v46, 0, 1, v49);
    v47 = v111;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1003198A0()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void *sub_100319914(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, char a4)
{
  if (!a4)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a4 != 1)
  {
    v23 = *(a1 + 16);

    if (v23)
    {
      v24 = a1 + 32;
      v22 = _swiftEmptyArrayStorage;
      do
      {
        sub_10001F280(v24, &v58);
        v25 = v59;
        v26 = v60;
        sub_1000035D0(&v58, v59);
        if ((*(v26 + 112))(v25, v26))
        {
          sub_100031694(&v58, v55);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100025B1C(0, v22[2] + 1, 1);
            v22 = v61;
          }

          v29 = v22[2];
          v28 = v22[3];
          if (v29 >= v28 >> 1)
          {
            sub_100025B1C((v28 > 1), v29 + 1, 1);
          }

          v30 = v56;
          v31 = v57;
          v32 = sub_10015049C(v55, v56);
          v33 = *(*(v30 - 8) + 64);
          __chkstk_darwin(v32);
          v35 = &v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v36 + 16))(v35);
          sub_1006252D4(v29, v35, &v61, v30, v31);
          sub_100007BAC(v55);
          v22 = v61;
        }

        else
        {
          sub_100007BAC(&v58);
        }

        v24 += 40;
        --v23;
      }

      while (v23);
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
    }

    return v22;
  }

  v54 = swift_allocObject();
  *(v54 + 16) = &off_101608A18;
  v7 = *(a1 + 16);

  if (v7)
  {
    v8 = a1 + 32;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001F280(v8, &v58);
      v10 = v59;
      v11 = v60;
      sub_1000035D0(&v58, v59);
      if ((*(v11 + 112))(v10, v11))
      {
        sub_100031694(&v58, v55);
        v12 = swift_isUniquelyReferenced_nonNull_native();
        v61 = v9;
        if ((v12 & 1) == 0)
        {
          sub_100025B1C(0, v9[2] + 1, 1);
          v9 = v61;
        }

        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_100025B1C((v13 > 1), v14 + 1, 1);
        }

        v15 = v56;
        v16 = v57;
        v17 = sub_10015049C(v55, v56);
        v18 = *(*(v15 - 8) + 64);
        __chkstk_darwin(v17);
        v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v21 + 16))(v20);
        sub_1006252D4(v14, v20, &v61, v15, v16);
        sub_100007BAC(v55);
        v9 = v61;
      }

      else
      {
        sub_100007BAC(&v58);
      }

      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v37 = v9[2];

  v38 = v54;

  if (!v37)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_37:

    return v22;
  }

  v40 = 0;
  v41 = (v9 + 4);
  v22 = _swiftEmptyArrayStorage;
  v53 = a2;
  while (v40 < v9[2])
  {
    sub_10001F280(v41, &v58);
    if (sub_100319F48(&v58, a3, a2, sub_100319F00, v38))
    {
      sub_100031694(&v58, v55);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v61 = v22;
      if ((v42 & 1) == 0)
      {
        sub_100025B1C(0, v22[2] + 1, 1);
        v22 = v61;
      }

      v44 = v22[2];
      v43 = v22[3];
      if (v44 >= v43 >> 1)
      {
        sub_100025B1C((v43 > 1), v44 + 1, 1);
      }

      v45 = v56;
      v46 = v57;
      v47 = sub_10015049C(v55, v56);
      v48 = *(*(v45 - 8) + 64);
      __chkstk_darwin(v47);
      v50 = &v52 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v50);
      sub_1006252D4(v44, v50, &v61, v45, v46);
      result = sub_100007BAC(v55);
      v22 = v61;
      a2 = v53;
      v38 = v54;
    }

    else
    {
      result = sub_100007BAC(&v58);
    }

    ++v40;
    v41 += 40;
    if (v37 == v40)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_100319F00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + *(type metadata accessor for BeaconObservation() + 24));

  return sub_1005C8B3C(v3, v2);
}

BOOL sub_100319F48(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t (*a4)(char *), uint64_t a5)
{
  v81 = a2;
  v82 = a5;
  v80 = a4;
  v74 = a3;
  v6 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v83 = &v67 - v8;
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v84 = &v67 - v11;
  v12 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v69 = &v67 - v14;
  v85 = type metadata accessor for UUID();
  v15 = *(v85 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v85);
  v75 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v67 - v19;
  v21 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v67 - v23;
  v73 = type metadata accessor for BeaconStatus(0);
  v25 = *(v73 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v73);
  v68 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v79 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v78 = &v67 - v34;
  v35 = __chkstk_darwin(v33);
  v77 = &v67 - v36;
  __chkstk_darwin(v35);
  v76 = &v67 - v37;
  v39 = a1[3];
  v38 = a1[4];
  v40 = sub_1000035D0(a1, v39);
  v41 = *(*(v38 + 8) + 8);
  v42 = *(v41 + 32);
  v71 = v40;
  v72 = v39;
  v70 = v42;
  v42(v39, v41);
  v43 = v69;
  sub_100AC6DA0(v20, v69);
  v74 = *(v15 + 8);
  v74(v20, v85);
  v44 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
  {
    sub_10000B3A8(v43, &qword_10169DBD0, &unk_1013D6790);
    v45 = 1;
  }

  else
  {
    sub_10031A7A4(v43, v24);
    v45 = 0;
  }

  v46 = v73;
  (*(v25 + 56))(v24, v45, 1, v73);
  v47 = v46;
  v48 = (*(v25 + 48))(v24, 1, v46);
  v50 = v76;
  v49 = v77;
  if (v48 == 1)
  {
    sub_10000B3A8(v24, &qword_10169DBD8, &qword_1013BF910);
LABEL_8:
    static Date.distantPast.getter();
    goto LABEL_10;
  }

  v51 = v24;
  v52 = v68;
  sub_10031A7A4(v51, v68);
  if (*(v52 + *(v47 + 32)))
  {
    sub_10031A808(v52, type metadata accessor for BeaconStatus);
    goto LABEL_8;
  }

  (*(v29 + 16))(v50, v52 + *(v47 + 24), v28);
  sub_10031A808(v52, type metadata accessor for BeaconStatus);
LABEL_10:
  v53 = v75;
  v70(v72, v41);
  v54 = sub_100035730(v53, v80, v82);
  v74(v53, v85);
  v55 = v83;
  sub_1012BB138(v54, v83);

  v56 = type metadata accessor for BeaconObservation();
  if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
  {
    sub_10000B3A8(v55, &qword_1016A42E0, &qword_1013B0010);
    v57 = v84;
    (*(v29 + 56))(v84, 1, 1, v28);
    static Date.distantPast.getter();
    if ((*(v29 + 48))(v57, 1, v28) != 1)
    {
      sub_10000B3A8(v57, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v58 = v55 + *(v56 + 20);
    v59 = v84;
    (*(v29 + 16))(v84, v58, v28);
    sub_10031A808(v55, type metadata accessor for BeaconObservation);
    (*(v29 + 56))(v59, 0, 1, v28);
    (*(v29 + 32))(v49, v59, v28);
  }

  sub_10031A74C();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v60 = v49;
  }

  else
  {
    v60 = v50;
  }

  v61 = v78;
  (*(v29 + 16))(v78, v60, v28);
  v62 = v79;
  static Date.trustedNow.getter(v79);
  Date.timeIntervalSince(_:)();
  v64 = v63;
  v65 = *(v29 + 8);
  v65(v62, v28);
  v65(v61, v28);
  v65(v49, v28);
  v65(v50, v28);
  return fabs(v64) <= 1800.0;
}

unint64_t sub_10031A74C()
{
  result = qword_1016C9070;
  if (!qword_1016C9070)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9070);
  }

  return result;
}

uint64_t sub_10031A7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031A808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10031A868(uint64_t a1)
{
  *(a1 + 8) = sub_10031A898();
  result = sub_10031A8EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10031A898()
{
  result = qword_10169DBE8;
  if (!qword_10169DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DBE8);
  }

  return result;
}

unint64_t sub_10031A8EC()
{
  result = qword_10169DBF0;
  if (!qword_10169DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DBF0);
  }

  return result;
}

uint64_t sub_10031A940(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v14 = *v1;
  v8 = *v1;
  sub_10015049C(v9, v10);
  sub_1001022C4(&v14, v7);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v8, *(&v8 + 1));
  if (!v2)
  {
    v13 = v1[1];
    v8 = v1[1];
    sub_10015049C(v9, v10);
    sub_1001022C4(&v13, v7);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v8, *(&v8 + 1));
    v12 = v1[3];
    v8 = v1[3];
    sub_10015049C(v9, v10);
    sub_1001022C4(&v12, v7);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v8, *(&v8 + 1));
    v11 = v1[2];
    v8 = v1[2];
    sub_10015049C(v9, v10);
    sub_1001022C4(&v11, v7);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v8, *(&v8 + 1));
    v5 = *(v1 + 9);
    if (v5 >> 60 != 15)
    {
      *&v8 = *(v1 + 8);
      *(&v8 + 1) = v5;
      sub_10015049C(v9, v10);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    }

    v6 = *(v1 + 11);
    if (v6 >> 60 != 15)
    {
      *&v8 = *(v1 + 10);
      *(&v8 + 1) = v6;
      sub_10015049C(v9, v10);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    }
  }

  return sub_100007BAC(v9);
}

double sub_10031ABD8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10031AC3C(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_10031AC3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v49, v50);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v49);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v49, v50);
  v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v51 = v11;
  sub_10015049C(v49, v50);
  v47 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v48 = v12;
  sub_10015049C(v49, v50);
  v44 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v45 = v13;
  sub_10015049C(v49, v50);
  v42 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v43 = v14;
  sub_10015049C(v49, v50);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v17 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v9);
LABEL_14:
      v20 = v51;
      v22 = v47;
      v21 = v48;
      v23 = v44;
      v24 = v45;
      goto LABEL_15;
    }

LABEL_12:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
      goto LABEL_48;
    }

    v18 = HIDWORD(v8) - v8;
    goto LABEL_14;
  }

  v19 = v17 == 2;
  v20 = v51;
  v22 = v47;
  v21 = v48;
  v23 = v44;
  v24 = v45;
  if (!v19)
  {
    goto LABEL_51;
  }

  v26 = *(v8 + 16);
  v25 = *(v8 + 24);
  v27 = __OFSUB__(v25, v26);
  v18 = v25 - v26;
  if (v27)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  if (v18 != 89)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v28 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(v20);
      goto LABEL_25;
    }

LABEL_23:
    LODWORD(v29) = HIDWORD(v10) - v10;
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      v29 = v29;
      goto LABEL_25;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v28 != 2)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v31 = *(v10 + 16);
  v30 = *(v10 + 24);
  v27 = __OFSUB__(v30, v31);
  v29 = v30 - v31;
  if (v27)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  if (v29 != 32)
  {
    goto LABEL_52;
  }

  v32 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v32)
    {
      v33 = BYTE6(v21);
      goto LABEL_35;
    }

LABEL_33:
    LODWORD(v33) = HIDWORD(v22) - v22;
    if (!__OFSUB__(HIDWORD(v22), v22))
    {
      v33 = v33;
      goto LABEL_35;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v32 != 2)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v35 = *(v22 + 16);
  v34 = *(v22 + 24);
  v27 = __OFSUB__(v34, v35);
  v33 = v34 - v35;
  if (v27)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  if (v33 != 100)
  {
    goto LABEL_53;
  }

  v36 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = BYTE6(v24);
      goto LABEL_45;
    }

LABEL_43:
    LODWORD(v37) = HIDWORD(v23) - v23;
    if (!__OFSUB__(HIDWORD(v23), v23))
    {
      v37 = v37;
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  if (v36 != 2)
  {
    goto LABEL_54;
  }

  v39 = *(v23 + 16);
  v38 = *(v23 + 24);
  v27 = __OFSUB__(v38, v39);
  v37 = v38 - v39;
  if (v27)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_45:
  if (v37 == 60)
  {
    v40 = v23;
    v51 = result;
    v41 = v20;
    v46 = v16;
    sub_100007BAC(v49);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v41;
    a2[4] = v40;
    a2[5] = v24;
    a2[6] = v47;
    a2[7] = v48;
    a2[8] = v42;
    a2[9] = v43;
    a2[10] = v51;
    a2[11] = v46;
    return result;
  }

LABEL_54:
  __break(1u);
  return result;
}

__n128 sub_10031AFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10031AFEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
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

uint64_t sub_10031B040(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10031B0B8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169DBF8);
  v1 = sub_1000076D4(v0, qword_10169DBF8);
  if (qword_101694678 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AC00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10031B180()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177A930);
  sub_1000076D4(v0, qword_10177A930);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B240()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177A948);
  sub_1000076D4(v0, qword_10177A948);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B300()
{
  v0 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_100044B3C(v0, qword_10177A960);
  sub_1000076D4(v0, qword_10177A960);
  sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B3B0()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177A978);
  sub_1000076D4(v0, qword_10177A978);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B464()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177A990);
  sub_1000076D4(v0, qword_10177A990);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B524()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177A9A8);
  sub_1000076D4(v0, qword_10177A9A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B5E4()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177A9C0);
  sub_1000076D4(v0, qword_10177A9C0);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B6A4()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177A9D8);
  sub_1000076D4(v0, qword_10177A9D8);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B750()
{
  v0 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_100044B3C(v0, qword_10177A9F0);
  sub_1000076D4(v0, qword_10177A9F0);
  sub_1000041A4(&qword_10169DE18, &qword_101699E88, &unk_10139D170);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B810()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177AA08);
  sub_1000076D4(v0, qword_10177AA08);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B8C0()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177AA20);
  sub_1000076D4(v0, qword_10177AA20);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B980()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177AA38);
  sub_1000076D4(v0, qword_10177AA38);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BA3C()
{
  v0 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  sub_100044B3C(v0, qword_10177AA50);
  sub_1000076D4(v0, qword_10177AA50);
  sub_1000041A4(&qword_10169DE10, &qword_101699EA8, &unk_101393170);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BAFC()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177AA68);
  sub_1000076D4(v0, qword_10177AA68);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BBBC()
{
  v0 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
  sub_100044B3C(v0, qword_10177AA80);
  sub_1000076D4(v0, qword_10177AA80);
  sub_1000041A4(&qword_10169DDC0, &qword_10169DDB8, &unk_10139D130);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BC78()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177AA98);
  sub_1000076D4(v0, qword_10177AA98);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BD38()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177AAB0);
  sub_1000076D4(v0, qword_10177AAB0);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BDF0()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177AAC8);
  sub_1000076D4(v0, qword_10177AAC8);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BEB0()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177AAE0);
  sub_1000076D4(v0, qword_10177AAE0);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BF70()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177AAF8);
  sub_1000076D4(v0, qword_10177AAF8);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C030()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177AB10);
  sub_1000076D4(v0, qword_10177AB10);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C0F0()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177AB28);
  sub_1000076D4(v0, qword_10177AB28);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C1A0()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177AB40);
  sub_1000076D4(v0, qword_10177AB40);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C258()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177AB58);
  sub_1000076D4(v0, qword_10177AB58);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C310()
{
  v0 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_100044B3C(v0, qword_10177AB70);
  sub_1000076D4(v0, qword_10177AB70);
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C3D0()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177AB88);
  sub_1000076D4(v0, qword_10177AB88);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C490()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177ABA0);
  sub_1000076D4(v0, qword_10177ABA0);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C54C()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177ABB8);
  sub_1000076D4(v0, qword_10177ABB8);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C5FC()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177ABD0);
  sub_1000076D4(v0, qword_10177ABD0);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C6AC()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177ABE8);
  sub_1000076D4(v0, qword_10177ABE8);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C764(char a1)
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0;
  sub_1000BC4D4(&qword_10169DDF0, &qword_1013BF4F0);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  *(v1 + 32) = v4;
  v5 = sub_1000BC4D4(&qword_10169DDF8, &unk_10139D150);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v1 + 40) = AsyncStreamProvider.init()();
  *(v1 + 48) = 13;
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  *(v1 + 52) = a1;
  if (a1)
  {
    *(v1 + 53) = 0;
    if (qword_101694580 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v9 = sub_1000076D4(v8, qword_10169DBF8);
    sub_100C63640(v9);
  }

  else
  {
    *(v1 + 53) = 1;
  }

  return v1;
}

uint64_t sub_10031CA38(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v49 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  result = *(a1 + 24);
  if (result)
  {
    *(a1 + 24) = 0;

    if ((*(a1 + 52) & 1) == 0)
    {
      v53 = v11;
      v54 = v1;
      v52 = v14;
      sub_10031CF3C();
      v51 = [objc_opt_self() defaultManager];
      if (qword_101694580 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10169DBF8);
      (*(v4 + 16))(v8, v16, v3);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v55 = v49;
        *v21 = 136446210;
        sub_10032542C(&qword_1016B14E0, &type metadata accessor for URL);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v4;
        v25 = v24;
        v50 = *(v23 + 8);
        v50(v8, v3);
        v26 = sub_1000136BC(v22, v25, &v55);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "Purging database: %{public}s", v21, 0xCu);
        sub_100007BAC(v49);
      }

      else
      {

        v50 = *(v4 + 8);
        v50(v8, v3);
      }

      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v55 = 0;
      v30 = v51;
      v31 = [v51 removeItemAtURL:v28 error:&v55];

      v33 = v52;
      v32 = v53;
      if (v31)
      {
        v34 = v55;
      }

      else
      {
        v36 = v55;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v54 = 0;
      }

      URL._bridgeToObjectiveC()(v35);
      v38 = v37;
      v55 = 0;
      v39 = [v30 removeItemAtURL:v37 error:&v55];

      if (v39)
      {
        v40 = v55;
      }

      else
      {
        v42 = v55;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v54 = 0;
      }

      URL._bridgeToObjectiveC()(v41);
      v44 = v43;
      v55 = 0;
      v45 = [v30 removeItemAtURL:v43 error:&v55];

      if (v45)
      {
        v46 = v55;
      }

      else
      {
        v47 = v55;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v54 = 0;
      }

      v48 = v50;
      v50(v32, v3);
      v48(v33, v3);
      return (v48)(v16, v3);
    }
  }

  return result;
}

uint64_t sub_10031CF3C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  v6 = v1[2];
  v6(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v7 = v1[1];
  v7(v4, v0);
  v6(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (v7)(v4, v0);
}

uint64_t sub_10031D144(uint64_t a1, uint64_t a2)
{
  if (qword_101694580 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_1000076D4(v5, qword_10169DBF8);
  v7 = *(a1 + 52);
  v8 = sub_10032542C(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase);
  result = static Database.establishConnection(logger:temporary:)(v6, v7, a2, v8);
  if (!v2)
  {
    v10 = *(a1 + 24);
    *(a1 + 24) = result;
  }

  return result;
}

void sub_10031D230(int a1, int a2, uint64_t a3)
{
  v82 = a1;
  v83 = a2;
  v80 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v80 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v80);
  v72 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v78 = &v70 - v10;
  v11 = __chkstk_darwin(v9);
  v77 = &v70 - v12;
  v13 = __chkstk_darwin(v11);
  v76 = &v70 - v14;
  v15 = __chkstk_darwin(v13);
  v75 = &v70 - v16;
  v17 = __chkstk_darwin(v15);
  v74 = &v70 - v18;
  v19 = __chkstk_darwin(v17);
  v73 = &v70 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v70 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v70 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v70 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v70 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v70 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v70 - v37;
  v79 = v3;
  if ((*(v3 + 52) & 1) == 0)
  {
    v71 = a3;
    if (qword_101694580 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10169DBF8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v70 = v5;
      *v42 = 67109376;
      *(v42 + 4) = v82;
      *(v42 + 8) = 1024;
      *(v42 + 10) = v83;
      _os_log_impl(&_mh_execute_header, v40, v41, "Migrate schema %d -> %d", v42, 0xEu);
      v5 = v70;
    }

    a3 = v71;
  }

  v43 = v83;
  switch(v83)
  {
    case 1:
      v44._countAndFlagsBits = 0xD00000000000001FLL;
      v44._object = 0x80000001013513F0;
      Connection.execute(_:)(v44);
      if (!v45)
      {
        v46._object = 0x8000000101351410;
        v46._countAndFlagsBits = 0xD000000000000018;
        Connection.execute(_:)(v46);
        if (!v48)
        {
          __chkstk_darwin(v47);
          v49 = v79;
          v50 = v80;
          *(&v70 - 2) = a3;
          *(&v70 - 1) = v49;
          v29 = v72;
          (*(v5 + 104))(v72, enum case for Connection.TransactionMode.deferred(_:), v50);
          goto LABEL_25;
        }
      }

      return;
    case 2:
      __chkstk_darwin(v36);
      v29 = v78;
      v61 = v79;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v61;
      v50 = v80;
      (*(v5 + 104))(v29, enum case for Connection.TransactionMode.deferred(_:), v80);
      goto LABEL_25;
    case 3:
      __chkstk_darwin(v36);
      v57 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v57;
      v29 = v77;
      (*(v5 + 104))(v77, enum case for Connection.TransactionMode.deferred(_:), v50);
      goto LABEL_25;
    case 4:
      __chkstk_darwin(v36);
      v58 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v58;
      v29 = v76;
      (*(v5 + 104))(v76, enum case for Connection.TransactionMode.deferred(_:), v50);
      goto LABEL_25;
    case 5:
      __chkstk_darwin(v36);
      v53 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v53;
      v29 = v75;
      (*(v5 + 104))(v75, enum case for Connection.TransactionMode.deferred(_:), v50);
      goto LABEL_25;
    case 6:
      __chkstk_darwin(v36);
      v62 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v62;
      v29 = v74;
      (*(v5 + 104))(v74, enum case for Connection.TransactionMode.deferred(_:), v50);
      goto LABEL_25;
    case 7:
      __chkstk_darwin(v36);
      v64 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v64;
      v29 = v73;
      (*(v5 + 104))(v73, enum case for Connection.TransactionMode.deferred(_:), v50);
      goto LABEL_25;
    case 8:
      __chkstk_darwin(v36);
      v59 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v59;
      (*(v5 + 104))(v23, enum case for Connection.TransactionMode.deferred(_:), v50);
      v60 = v81;
      Connection.transaction(_:block:)();
      if (v60)
      {
        (*(v5 + 8))(v23, v50);
        return;
      }

      v29 = v23;
      goto LABEL_26;
    case 9:
      __chkstk_darwin(v36);
      v67 = v79;
      v68 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v67;
      (*(v5 + 104))(v26, enum case for Connection.TransactionMode.deferred(_:), v68);
      v69 = v81;
      Connection.transaction(_:block:)();
      if (v69)
      {
        (*(v5 + 8))(v26, v68);
        return;
      }

      v29 = v26;
      v50 = v68;
      goto LABEL_26;
    case 10:
      __chkstk_darwin(v36);
      v56 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v56;
      (*(v5 + 104))(v29, enum case for Connection.TransactionMode.deferred(_:), v50);
LABEL_25:
      Connection.transaction(_:block:)();
      goto LABEL_26;
    case 11:
      __chkstk_darwin(v36);
      v65 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v65;
      (*(v5 + 104))(v32, enum case for Connection.TransactionMode.deferred(_:), v50);
      v66 = v81;
      Connection.transaction(_:block:)();
      if (v66)
      {
        (*(v5 + 8))(v32, v50);
        return;
      }

      v29 = v32;
      goto LABEL_26;
    case 12:
      __chkstk_darwin(v36);
      v51 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v51;
      (*(v5 + 104))(v35, enum case for Connection.TransactionMode.deferred(_:), v50);
      v52 = v81;
      Connection.transaction(_:block:)();
      if (v52)
      {
        (*(v5 + 8))(v35, v50);
        return;
      }

      v29 = v35;
      goto LABEL_26;
    case 13:
      __chkstk_darwin(v36);
      v54 = v79;
      v50 = v80;
      *(&v70 - 2) = a3;
      *(&v70 - 1) = v54;
      (*(v5 + 104))(v38, enum case for Connection.TransactionMode.deferred(_:), v50);
      v55 = v81;
      Connection.transaction(_:block:)();
      if (v55)
      {
        (*(v5 + 8))(v38, v50);
      }

      else
      {
        v29 = v38;
LABEL_26:
        (*(v5 + 8))(v29, v50);
      }

      return;
    default:
      sub_10020223C();
      swift_allocError();
      *v63 = v43;
      *(v63 + 4) = 0;
      swift_willThrow();
      return;
  }
}

uint64_t sub_10031DCFC()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138B360;
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177AB88);
  *(v1 + 56) = v2;
  v4 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v1 + 64) = v4;
  v5 = sub_1000280DC((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(v5, v3, v2);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v8 = sub_1000280DC((v1 + 72));
  v6(v8, v7, v2);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 136) = v2;
  *(v1 + 144) = v4;
  v10 = sub_1000280DC((v1 + 112));
  v6(v10, v9, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_10031DFF0()
{
  v0 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v21 - v2;
  v4 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v21 - v6;
  v8 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v21 - v10;
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v12, qword_10177AB88);
  v13 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v14 = (*(v13 - 8) + 56);
  v21[0] = *v14;
  v21[1] = v14;
  (v21[0])(v11, 1, 1, v13);
  v15 = *(*(v12 - 8) + 56);
  v15(v7, 1, 1, v12);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v12, qword_10177A948);
  (v21[0])(v11, 1, 1, v13);
  v15(v7, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v12, qword_10177A930);
  (v21[0])(v11, 1, 1, v13);
  v15(v7, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v16, qword_10177AA38);
  v17 = v21[0];
  (v21[0])(v11, 1, 1, v13);
  v18 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v19 = *(*(v18 - 8) + 56);
  v19(v3, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694658 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177ABA0);
  v17(v11, 1, 1, v13);
  v19(v3, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694660 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177ABB8);
  v17(v11, 1, 1, v13);
  v19(v3, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694668 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177ABD0);
  v17(v11, 1, 1, v13);
  v19(v3, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694670 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177ABE8);
  v17(v11, 1, 1, v13);
  v19(v3, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE20, &unk_10139D180);
  return sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_10031E868()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101391790;
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177AB88);
  *(v1 + 56) = v2;
  v4 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v1 + 64) = v4;
  v5 = sub_1000280DC((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(v5, v3, v2);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v8 = sub_1000280DC((v1 + 72));
  v6(v8, v7, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v10 = sub_1000076D4(v9, qword_10177A978);
  *(v1 + 136) = v9;
  *(v1 + 144) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
  v11 = sub_1000280DC((v1 + 112));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v13 = sub_1000076D4(v12, qword_10177A960);
  *(v1 + 176) = v12;
  *(v1 + 184) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120);
  v14 = sub_1000280DC((v1 + 152));
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_10031EC8C(uint64_t a1)
{
  v47 = a1;
  v45 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v43 = *(v45 - 8);
  v1 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = v38 - v2;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v44 = v38 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v41 = v38 - v9;
  v10 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v40 = v38 - v12;
  v13 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v39 = v38 - v15;
  v16 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v38 - v18;
  v20 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v38 - v22;
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v24, qword_10177AB88);
  v46 = v4;
  v25 = *(v4 + 56);
  v25(v23, 1, 1, v3);
  v26 = *(*(v24 - 8) + 56);
  v26(v19, 1, 1, v24);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v24, qword_10177A930);
  v25(v23, 1, 1, v3);
  v26(v19, 1, 1, v24);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v24, qword_10177A948);
  v25(v23, 1, 1, v3);
  v26(v19, 1, 1, v24);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v28 = sub_1000076D4(v27, qword_10177A978);
  v25(v23, 1, 1, v3);
  v29 = v39;
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  v38[1] = sub_100028088();
  v38[2] = v28;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v29, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v30, qword_10177A960);
  v25(v23, 1, 1, v3);
  v31 = v40;
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_101694630 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v32, qword_10177AB28);
  v25(v23, 1, 1, v3);
  v33 = v41;
  (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v33, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v34 = v42;
  ExpressionType<>.length.getter();
  v49 = 6;
  v35 = v44;
  == infix<A>(_:_:)();
  (*(v43 + 8))(v34, v45);
  TableBuilder.check(_:)();
  v36 = *(v46 + 8);
  v36(v35, v3);
  v48 = 256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v36)(v35, v3);
}

uint64_t sub_10031F644()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v4 = sub_1000280DC((v1 + 32));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_10031F858()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v12, qword_10177A948);
  v13 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v11, 1, 1, v13);
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694618 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v17, qword_10177AAE0);
  v15(v11, 1, 1, v13);
  v18 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v19 = *(v18 - 8);
  v23 = v15;
  v20 = *(v19 + 56);
  v22 = v16;
  v20(v3, 1, 1, v18);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694620 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177AAF8);
  v23(v11, 1, 1, v13);
  v20(v3, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694628 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177AB10);
  v23(v11, 1, 1, v13);
  v20(v3, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE58, &unk_10139D1B0);
  return sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_10031FD84()
{
  v1 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  if (qword_101694610 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_1000076D4(v5, qword_10177AAC8);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v8 = 0;
  Table.addColumn<A>(_:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_10169DE30, &unk_10139D190);
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_10031FF3C()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_10031FFE0()
{
  v0 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v26 - v2;
  v4 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v26 - v6;
  v8 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v26 - v10;
  v12 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v26 - v14;
  if (qword_101694638 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v16, qword_10177AB40);
  v17 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(v15, 1, 1, v17);
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v11, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101694640 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v21, qword_10177AB58);
  v19(v15, 1, 1, v17);
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101694648 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v22, qword_10177AB70);
  v19(v15, 1, 1, v17);
  v23 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v24 = *(*(v23 - 8) + 56);
  v26[1] = v20;
  v24(v3, 1, 1, v23);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v23, qword_10177AB88);
  v19(v15, 1, 1, v17);
  v24(v3, 1, 1, v23);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE28, &unk_1013BF4E0);
  return sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_100320580()
{
  v1 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  if (qword_101694608 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v5, qword_10177AAB0);
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v8 = xmmword_10138BBF0;
  Table.addColumn<A>(_:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_10169DE30, &unk_10139D190);
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_10032074C()
{
  v1 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8[-v3];
  if (qword_1016945E8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  sub_1000076D4(v5, qword_10177AA50);
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v8[15] = 0;
  Table.addColumn<A>(_:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_10169DE30, &unk_10139D190);
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_100320910()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177AA68);
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v4 = sub_1000280DC((v1 + 32));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100320B24()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_1000BC4D4(&qword_10169DE60, &unk_10139D1C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v16, qword_10177AA68);
  v17 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v11, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945F8 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
  sub_1000076D4(v19, qword_10177AA80);
  v18(v15, 1, 1, v17);
  v20 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE60, &unk_10139D1C0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101694600 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v21, qword_10177AA98);
  v18(v15, 1, 1, v17);
  v22 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE58, &unk_10139D1B0);
  return sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_100320FF4()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101391790;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 56) = v2;
  v4 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v1 + 64) = v4;
  v5 = sub_1000280DC((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(v5, v3, v2);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v8 = sub_1000280DC((v1 + 72));
  v6(v8, v7, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v10 = sub_1000076D4(v9, qword_10177A978);
  *(v1 + 136) = v9;
  *(v1 + 144) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
  v11 = sub_1000280DC((v1 + 112));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v13 = sub_1000076D4(v12, qword_10177A960);
  *(v1 + 176) = v12;
  *(v1 + 184) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120);
  v14 = sub_1000280DC((v1 + 152));
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100321440()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138BBE0;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 56) = v2;
  v4 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v1 + 64) = v4;
  v5 = sub_1000280DC((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(v5, v3, v2);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v8 = sub_1000280DC((v1 + 72));
  v6(v8, v7, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1003216D0()
{
  v0 = sub_1000BC4D4(&qword_10169DE60, &unk_10139D1C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v32 = v30 - v2;
  v3 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v30 - v5;
  v7 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v30 - v9;
  v11 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v30 - v13;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v15, qword_10177A930);
  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v33 = v17 + 56;
  v34 = v18;
  v18(v14, 1, 1, v16);
  v19 = *(*(v15 - 8) + 56);
  v19(v10, 1, 1, v15);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v10, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v15, qword_10177A948);
  v34(v14, 1, 1, v16);
  v19(v10, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v10, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945C0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v20, qword_10177A9D8);
  v21 = v34;
  v34(v14, 1, 1, v16);
  v22 = *(v20 - 8);
  v23 = *(v22 + 56);
  v30[1] = v22 + 56;
  v31 = v23;
  v23(v6, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945C8 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v24, qword_10177A9F0);
  v21(v14, 1, 1, v16);
  v25 = v32;
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v25, &qword_10169DE60, &unk_10139D1C0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945D0 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v32, qword_10177AA08);
  v21(v14, 1, 1, v16);
  v26 = v16;
  v27 = v21;
  v28 = v31;
  v31(v6, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177AA20);
  v27(v14, 1, 1, v26);
  v28(v6, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v32, qword_10177AA38);
  v27(v14, 1, 1, v26);
  v28(v6, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  return sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_100321F00()
{
  type metadata accessor for Table();
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {
  }

  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101391790;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 56) = v2;
  v26 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v1 + 64) = v26;
  v4 = sub_1000280DC((v1 + 32));
  v5 = *(*(v2 - 8) + 16);
  v24 = v3;
  v5(v4, v3, v2);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 96) = v2;
  *(v1 + 104) = v26;
  v7 = sub_1000280DC((v1 + 72));
  v22 = v6;
  v25 = v2;
  v23 = v5;
  v5(v7, v6, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v9 = sub_1000076D4(v8, qword_10177A978);
  *(v1 + 136) = v8;
  *(v1 + 144) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
  v10 = sub_1000280DC((v1 + 112));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v12 = sub_1000076D4(v11, qword_10177A960);
  *(v1 + 176) = v11;
  v20 = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120);
  *(v1 + 184) = v20;
  v13 = sub_1000280DC((v1 + 152));
  v14 = (*(v11 - 8) + 16);
  v21 = *v14;
  (*v14)(v13, v12, v11);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138B360;
  *(v15 + 56) = v25;
  *(v15 + 64) = v26;
  v16 = sub_1000280DC((v15 + 32));
  v23(v16, v24, v25);
  *(v15 + 96) = v25;
  *(v15 + 104) = v26;
  v17 = sub_1000280DC((v15 + 72));
  v23(v17, v22, v25);
  *(v15 + 136) = v11;
  *(v15 + 144) = v20;
  v18 = sub_1000280DC((v15 + 112));
  v21(v18, v12, v11);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100322568(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44[1] = a5;
  v52 = a4;
  v49 = a2;
  v50 = a3;
  v57 = a1;
  v55 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  __chkstk_darwin(v55);
  v51 = v44 - v6;
  v7 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v54 = v44 - v10;
  v11 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v48 = v44 - v13;
  v14 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v47 = v44 - v16;
  v17 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v45 = v44 - v19;
  v20 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v44 - v22;
  v24 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v44 - v26;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v28, qword_10177A930);
  v56 = v8;
  v29 = *(v8 + 56);
  v29(v27, 1, 1, v7);
  v30 = *(*(v28 - 8) + 56);
  v30(v23, 1, 1, v28);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v23, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177A948);
  v29(v27, 1, 1, v7);
  v30(v23, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v23, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v32 = sub_1000076D4(v31, qword_10177A978);
  v29(v27, 1, 1, v7);
  v33 = v45;
  (*(*(v31 - 8) + 56))(v45, 1, 1, v31);
  v34 = sub_100028088();
  v46 = v32;
  v44[2] = v34;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v33, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  v35 = v7;
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v36, qword_10177A960);
  v29(v27, 1, 1, v7);
  v37 = v47;
  (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v37, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (*v49 != -1)
  {
    swift_once();
  }

  v38 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v38, v50);
  v29(v27, 1, 1, v35);
  v39 = v48;
  (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v40 = v51;
  ExpressionType<>.length.getter();
  v59 = v52;
  v41 = v54;
  == infix<A>(_:_:)();
  (*(v53 + 8))(v40, v55);
  TableBuilder.check(_:)();
  v42 = *(v56 + 8);
  v42(v41, v35);
  v58 = 512;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v42)(v41, v35);
}

uint64_t sub_100322E58(uint64_t a1)
{
  v40 = a1;
  v1 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  __chkstk_darwin(v1);
  v37 = &v32 - v3;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v35 = &v32 - v7;
  v8 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v34 = &v32 - v10;
  v11 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v33 = &v32 - v13;
  v14 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v32 - v16;
  v18 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v32 - v20;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v22, qword_10177A930);
  v36 = v5;
  v23 = *(v5 + 56);
  v23(v21, 1, 1, v4);
  v24 = *(*(v22 - 8) + 56);
  v24(v17, 1, 1, v22);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177A948);
  v23(v21, 1, 1, v4);
  v24(v17, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v25, qword_10177A960);
  v23(v21, 1, 1, v4);
  v26 = v33;
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945B8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v27, qword_10177A9C0);
  v23(v21, 1, 1, v4);
  v28 = v34;
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v28, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v29 = v37;
  ExpressionType<>.length.getter();
  v41 = 32;
  v30 = v35;
  == infix<A>(_:_:)();
  (*(v38 + 8))(v29, v39);
  TableBuilder.check(_:)();
  return (*(v36 + 8))(v30, v4);
}

uint64_t sub_100323594()
{
  type metadata accessor for Table();
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138B360;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v4 = sub_1000280DC((v1 + 32));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v6 = sub_1000076D4(v5, qword_10177A978);
  *(v1 + 96) = v5;
  *(v1 + 104) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
  v7 = sub_1000280DC((v1 + 72));
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v9 = sub_1000076D4(v8, qword_10177A960);
  *(v1 + 136) = v8;
  *(v1 + 144) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120);
  v10 = sub_1000280DC((v1 + 112));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100323994()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138B360;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 56) = v2;
  v18 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v1 + 64) = v18;
  v4 = sub_1000280DC((v1 + 32));
  v19 = v3;
  v20 = v2;
  v17 = *(*(v2 - 8) + 16);
  v17(v4, v3, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v6 = sub_1000076D4(v5, qword_10177A978);
  *(v1 + 96) = v5;
  *(v1 + 104) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
  v7 = sub_1000280DC((v1 + 72));
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v9 = sub_1000076D4(v8, qword_10177A960);
  *(v1 + 136) = v8;
  v10 = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120);
  *(v1 + 144) = v10;
  v11 = sub_1000280DC((v1 + 112));
  v16 = *(*(v8 - 8) + 16);
  v16(v11, v9, v8);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  *(v12 + 56) = v20;
  *(v12 + 64) = v18;
  v13 = sub_1000280DC((v12 + 32));
  v17(v13, v19, v20);
  *(v12 + 96) = v8;
  *(v12 + 104) = v10;
  v14 = sub_1000280DC((v12 + 72));
  v16(v14, v9, v8);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100323EA0(uint64_t a1, int a2)
{
  v46 = a2;
  v44 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v42 = *(v44 - 8);
  v2 = *(v42 + 64);
  __chkstk_darwin(v44);
  v41 = v39 - v3;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v43 = v39 - v7;
  v8 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v40 = v39 - v10;
  v11 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v39 - v13;
  v15 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v39 - v17;
  v19 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v39 - v21;
  v23 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v39 - v25;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v27, qword_10177A948);
  v45 = v5;
  v28 = *(v5 + 56);
  v28(v26, 1, 1, v4);
  (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v30 = sub_1000076D4(v29, qword_10177A978);
  v28(v26, 1, 1, v4);
  (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
  v39[0] = sub_100028088();
  v39[1] = v30;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v18, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  v31 = v4;
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v32, qword_10177A960);
  v28(v26, 1, 1, v31);
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v14, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945A8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v33, qword_10177A990);
  v28(v26, 1, 1, v31);
  v34 = v40;
  (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v35 = v41;
  ExpressionType<>.length.getter();
  v49 = 6;
  v36 = v43;
  == infix<A>(_:_:)();
  (*(v42 + 8))(v35, v44);
  TableBuilder.check(_:)();
  v37 = *(v45 + 8);
  v37(v36, v31);
  v47 = v46;
  v48 = 2;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v37)(v36, v31);
}

uint64_t sub_1003246B4()
{
  v0 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  __chkstk_darwin(v0);
  v34 = &v30 - v2;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v32 = &v30 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v31 = &v30 - v9;
  v10 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v30 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v30 - v16;
  v18 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v30 - v20;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v22, qword_10177A948);
  v33 = v4;
  v23 = *(v4 + 56);
  v23(v21, 1, 1, v3);
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v24, qword_10177A960);
  v23(v21, 1, 1, v3);
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945B8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v25, qword_10177A9C0);
  v23(v21, 1, 1, v3);
  v26 = v31;
  (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v27 = v34;
  ExpressionType<>.length.getter();
  v37 = 32;
  v28 = v32;
  == infix<A>(_:_:)();
  (*(v35 + 8))(v27, v36);
  TableBuilder.check(_:)();
  return (*(v33 + 8))(v28, v3);
}

char *sub_100324D08()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys;
  v6 = type metadata accessor for Table();
  v7 = *(*(v6 - 8) + 8);
  v7(&v0[v5], v6);
  v7(&v0[OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_nearOwnerKeys], v6);
  v7(&v0[OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_connectionKeys], v6);
  v7(&v0[OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes], v6);
  v7(&v0[OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret], v6);
  v7(&v0[OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata], v6);
  v7(&v0[OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates], v6);
  v7(&v0[OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix], v6);
  v7(&v0[OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes], v6);
  return v0;
}

uint64_t sub_100324E7C()
{
  sub_100324D08();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemSharingKeyDatabase()
{
  result = qword_10169DC38;
  if (!qword_10169DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100324F28()
{
  result = type metadata accessor for Table();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100324FFC()
{
  v1 = *(v0 + 16);
  sub_1000BC4D4(&qword_10169DD98, &unk_1013BF4A0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v3;
}

uint64_t sub_10032507C()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t sub_1003250B4()
{
  v1 = *(v0 + 40);
  sub_1000BC4D4(&qword_10169DD90, &unk_10139D100);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v3 = *(v0 + 32);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *(v2 + 32) = v4;
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_100325210()
{
  v1 = v0[2];
  v3 = *v0;
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100325274()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  v2 = *(v0 + 40);
  return AsyncStreamProvider.yield(value:transaction:)();
}

uint64_t sub_1003252D0(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return Database.description.getter(a1, WitnessTable);
}

uint64_t sub_10032531C(uint64_t a1)
{
  result = sub_10032542C(&qword_10169DD88, type metadata accessor for ItemSharingKeyDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100325390()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AC00);
  sub_1000076D4(v0, qword_10177AC00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10032542C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100325474()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v7 >> 60 == 15)
  {
    v8 = static Data.random(bytes:)();
    v10 = v9;
    v12[0] = v8;
    v12[1] = v9;
    (*(v2 + 104))(v5, enum case for Keychain.DataProtectionClass.c(_:), v1);
    v13 = v8;
    sub_100017D5C(v8, v10);
    sub_1000E0A3C();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v5, v1);
    v11 = v13;
    sub_100016590(v13, v10);
    return v11;
  }

  return result;
}

uint64_t sub_1003258C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100323994();
}

uint64_t sub_1003258E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100323594();
}

uint64_t sub_100325900()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100321F00();
}

uint64_t sub_10032591C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100321440();
}

uint64_t sub_100325938()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100320FF4();
}

uint64_t sub_100325954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100320910();
}

uint64_t sub_100325970()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10032074C();
}

uint64_t sub_10032598C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100320580();
}

uint64_t sub_1003259A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10031FF3C();
}

uint64_t sub_1003259C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10031FD84();
}

uint64_t sub_1003259E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10031F644();
}

uint64_t sub_1003259FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10031E868();
}

uint64_t sub_100325A18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10031DCFC();
}

uint64_t type metadata accessor for ShareInstruction()
{
  result = qword_10169DEC0;
  if (!qword_10169DEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100325AA8()
{
  type metadata accessor for OwnedBeaconRecord();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_100157BAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100325B64()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  Hasher._combine(_:)(*v0);
  v11 = *(v0 + 1);
  v12 = *(v0 + 2);
  String.hash(into:)();
  v13 = type metadata accessor for ShareInstruction();
  v14 = &v0[v13[6]];
  sub_100D6178C();
  v15 = &v1[v13[7]];
  v16 = *(v15 + 1);
  v17 = *(v15 + 2);
  Hasher._combine(_:)(*v15);
  String.hash(into:)();
  v18 = v13[8];
  type metadata accessor for UUID();
  sub_100326740(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D3410(&v1[v13[9]], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    sub_100326740(&unk_101698070, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }
}

Swift::Int sub_100325DF8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v11 = *(v0 + 1);
  v12 = *(v0 + 2);
  String.hash(into:)();
  v13 = type metadata accessor for ShareInstruction();
  v14 = &v0[v13[6]];
  sub_100D6178C();
  v15 = &v1[v13[7]];
  v16 = *(v15 + 1);
  v17 = *(v15 + 2);
  Hasher._combine(_:)(*v15);
  String.hash(into:)();
  v18 = v13[8];
  type metadata accessor for UUID();
  sub_100326740(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D3410(&v1[v13[9]], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    sub_100326740(&unk_101698070, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1003260A8(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v2);
  v14 = *(v2 + 1);
  v15 = *(v2 + 2);
  String.hash(into:)();
  v16 = &v2[a2[6]];
  sub_100D6178C();
  v17 = &v4[a2[7]];
  v18 = *(v17 + 1);
  v19 = *(v17 + 2);
  Hasher._combine(_:)(*v17);
  String.hash(into:)();
  v20 = a2[8];
  type metadata accessor for UUID();
  sub_100326740(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D3410(&v4[a2[9]], v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    Hasher._combine(_:)(1u);
    sub_100326740(&unk_101698070, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v9, v5);
  }

  return Hasher._finalize()();
}

BOOL sub_100326398(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v31 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v15;
  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for ShareInstruction();
  if ((sub_100D65130(&a1[v19[6]], &a2[v19[6]]) & 1) == 0)
  {
    return 0;
  }

  v20 = v19[7];
  v21 = &a1[v20];
  v22 = a1[v20];
  v23 = &a2[v20];
  if (v22 != *v23)
  {
    return 0;
  }

  if ((*(v21 + 1) != *(v23 + 1) || *(v21 + 2) != *(v23 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v24 = v19[8];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v25 = v19[9];
  v26 = *(v18 + 48);
  sub_1000D3410(&a1[v25], v17);
  sub_1000D3410(&a2[v25], &v17[v26]);
  v27 = *(v5 + 48);
  if (v27(v17, 1, v4) == 1)
  {
    if (v27(&v17[v26], 1, v4) == 1)
    {
      sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
      return 1;
    }

    goto LABEL_16;
  }

  sub_1000D3410(v17, v12);
  if (v27(&v17[v26], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_16:
    sub_10000B3A8(v17, &unk_1016B1660, &unk_10138CE10);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v26], v4);
  sub_100326740(&qword_101698290, &type metadata accessor for Date);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v5 + 8);
  v30(v8, v4);
  v30(v12, v4);
  sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
  return (v29 & 1) != 0;
}

uint64_t sub_100326740(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003267B0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100326850();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100326850()
{
  if (!qword_10169DF78[0])
  {
    type metadata accessor for UUID();
    sub_10000972C(&qword_1016967B0, &type metadata accessor for UUID);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, qword_10169DF78);
    }
  }
}

void sub_1003268EC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v90 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v93 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v85 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v85 - v11;
  __chkstk_darwin(v10);
  v14 = v85 - v13;
  v95 = type metadata accessor for UUID();
  v15 = *(v95 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v95);
  v92 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v85 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v85 - v23;
  __chkstk_darwin(v22);
  v94 = v85 - v25;
  if (CKRecord.recordType.getter() == 0xD000000000000013 && 0x800000010139D230 == v26)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      sub_100328668();
      swift_allocError();
      *v41 = 0;
      goto LABEL_13;
    }
  }

  v88 = v21;
  v89 = v24;
  v28 = [a1 recordID];
  v29 = [v28 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v30 = v15[6];
  v31 = v95;
  if (v30(v14, 1, v95) != 1)
  {
    v87 = v15;
    v33 = v15[4];
    v85[1] = v15 + 4;
    v86 = v33;
    v33(v94, v14, v31);
    v34 = a1;
    v35 = [a1 encryptedValues];
    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 objectForKeyedSubscript:v36];

    if (!v37)
    {
      goto LABEL_11;
    }

    v98 = v37;
    v38 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    UUID.init(uuidString:)();

    v39 = v95;
    if (v30(v12, 1, v95) == 1)
    {
      sub_1002EA198(v12);
LABEL_11:
      sub_100328668();
      swift_allocError();
      *v40 = 2;
      swift_willThrow();
      swift_unknownObjectRelease();

      (v87[1])(v94, v95);
      return;
    }

    v85[0] = v38;
    v86(v89, v12, v39);
    v42 = String._bridgeToObjectiveC()();
    v43 = [v35 objectForKeyedSubscript:v42];

    if (!v43)
    {
      goto LABEL_19;
    }

    v98 = v43;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    UUID.init(uuidString:)();

    v44 = v95;
    if (v30(v9, 1, v95) == 1)
    {
      sub_1002EA198(v9);
LABEL_19:
      sub_100328668();
      swift_allocError();
      *v45 = 3;
      swift_willThrow();
      swift_unknownObjectRelease();

      v46 = v87[1];
      v47 = v89;
      v48 = v95;
LABEL_20:
      v46(v47, v48);
      v46(v94, v48);
      return;
    }

    v86(v88, v9, v44);
    v49 = String._bridgeToObjectiveC()();
    v50 = [v35 objectForKeyedSubscript:v49];

    if (v50)
    {
      v98 = v50;
      if (swift_dynamicCast())
      {
        v51 = v93;
        UUID.init(uuidString:)();

        v52 = v95;
        if (v30(v51, 1, v95) != 1)
        {
          v55 = v92;
          v86(v92, v51, v52);
          v56 = String._bridgeToObjectiveC()();
          v93 = v35;
          v57 = [v35 objectForKeyedSubscript:v56];

          v59 = v87;
          v58 = v88;
          v60 = v34;
          if (v57 && (v98 = v57, (swift_dynamicCast() & 1) != 0))
          {
            v62 = v96;
            v61 = v97;
            v63 = type metadata accessor for PropertyListDecoder();
            v64 = *(v63 + 48);
            v65 = *(v63 + 52);
            swift_allocObject();
            PropertyListDecoder.init()();
            sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
            sub_1003286BC();
            v66 = v91;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            if (v66)
            {

              sub_100016590(v62, v61);
              swift_unknownObjectRelease();

              v46 = v59[1];
              v67 = v55;
            }

            else
            {
              v91 = v62;
              v69 = v61;

              v70 = v96;
              v71 = String._bridgeToObjectiveC()();
              v72 = [v93 objectForKeyedSubscript:v71];

              if (v72)
              {
                v96 = v72;
                if (swift_dynamicCast())
                {
                  LODWORD(v85[0]) = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(v98);
                  if (LOBYTE(v85[0]) != 6)
                  {
                    v75 = objc_autoreleasePoolPush();
                    v76 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
                    [v34 encodeSystemFieldsWithCoder:v76];
                    [v76 finishEncoding];
                    v77 = [v76 encodedData];
                    v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v87 = v79;

                    objc_autoreleasePoolPop(v75);
                    sub_100016590(v91, v69);
                    swift_unknownObjectRelease();

                    v80 = v90;
                    v81 = v87;
                    *v90 = v78;
                    v80[1] = v81;
                    v82 = type metadata accessor for MemberSharingCircle();
                    v83 = v95;
                    v84 = v86;
                    v86(v80 + v82[5], v94, v95);
                    v84(v80 + v82[6], v89, v83);
                    v84(v80 + v82[7], v88, v83);
                    v84(v80 + v82[8], v92, v83);
                    *(v80 + v82[9]) = v70;
                    *(v80 + v82[10]) = v85[0];
                    return;
                  }

                  v59 = v87;
                  v60 = v34;
                }

                else
                {

                  v59 = v87;
                }
              }

              else
              {
              }

              v73 = v91;
              sub_100328668();
              swift_allocError();
              *v74 = 6;
              swift_willThrow();
              sub_100016590(v73, v61);
              swift_unknownObjectRelease();

              v46 = v59[1];
              v67 = v92;
            }

            v48 = v95;
            v46(v67, v95);
            v54 = v88;
          }

          else
          {
            sub_100328668();
            swift_allocError();
            *v68 = 5;
            swift_willThrow();
            swift_unknownObjectRelease();

            v46 = v59[1];
            v48 = v95;
            v46(v55, v95);
            v54 = v58;
          }

          goto LABEL_26;
        }

        sub_1002EA198(v51);
      }
    }

    sub_100328668();
    swift_allocError();
    *v53 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    v54 = v88;
    v46 = v87[1];
    v48 = v95;
LABEL_26:
    v46(v54, v48);
    v47 = v89;
    goto LABEL_20;
  }

  sub_1002EA198(v14);
  sub_100328668();
  swift_allocError();
  *v32 = 1;
LABEL_13:
  swift_willThrow();
}

unint64_t sub_10032740C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x737265626D656DLL;
  if (v1 != 5)
  {
    v3 = 0x6E61747065636361;
  }

  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x72656E776FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100327504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100328D30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10032752C(uint64_t a1)
{
  v2 = sub_1003289F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100327568(uint64_t a1)
{
  v2 = sub_1003289F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1003275A8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177AC60);
  sub_1000076D4(v0, qword_10177AC60);
  v6 = objc_autoreleasePoolPush();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v7, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v1 + 8))(v5, v0);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_10032771C(id *a1)
{
  v2 = v1;
  v3 = *a1;
  [*a1 encryptedValues];
  static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = v3;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  v10 = type metadata accessor for PropertyListEncoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v13 = type metadata accessor for MemberSharingCircle();
  v21 = *(v1 + v13[9]);

  sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
  sub_100328898();
  v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v16 = v15;
  swift_getObjectType();

  v17 = v1 + v13[6];
  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  v18 = v2 + v13[7];
  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  v19 = v2 + v13[8];
  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(v14, v16);
  CKRecordKeyValueSetting.subscript.setter();
  v22 = *(v2 + v13[10]);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  return sub_100016590(v14, v16);
}

uint64_t sub_100327B40(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_10169E050, &qword_10139D338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1003289F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v18 = *v3;
  v19 = v11;
  v20 = 0;
  sub_100017D5C(v18, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v18, v19);
  }

  else
  {
    sub_100016590(v18, v19);
    v12 = type metadata accessor for MemberSharingCircle();
    v13 = v12[5];
    LOBYTE(v18) = 1;
    type metadata accessor for UUID();
    sub_10000972C(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v12[7];
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v12[8];
    LOBYTE(v18) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v3 + v12[9]);
    v20 = 5;
    sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
    sub_100328898();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = *(v3 + v12[10]);
    v20 = 6;
    sub_100328B5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100327E70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v46 = &v41 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v41 - v11;
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = sub_1000BC4D4(&qword_10169E030, &qword_10139D330);
  v49 = *(v15 - 8);
  v50 = v15;
  v16 = *(v49 + 64);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  v19 = type metadata accessor for MemberSharingCircle();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v23 = a1[4];
  v52 = a1;
  sub_1000035D0(a1, v24);
  sub_1003289F4();
  v25 = v18;
  v26 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    return sub_100007BAC(v52);
  }

  v27 = v12;
  v28 = v49;
  v43 = v19;
  v51 = v22;
  v55 = 0;
  sub_1000E307C();
  v29 = v50;
  v30 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v51;
  *v51 = v53;
  LOBYTE(v53) = 1;
  sub_10000972C(&qword_101698300, &type metadata accessor for UUID);
  v32 = v14;
  v33 = v47;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v31 + v43[5];
  v42 = *(v48 + 32);
  v42(v34, v32, v33);
  LOBYTE(v53) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v42;
  v42(v51 + v43[6], v27, v33);
  LOBYTE(v53) = 3;
  v36 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v54 = 1;
  v35(v51 + v43[7], v36, v33);
  LOBYTE(v53) = 4;
  v37 = v45;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35(v51 + v43[8], v37, v33);
  sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
  v55 = 5;
  sub_1003286BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = v51;
  *(v51 + v43[9]) = v53;
  v55 = 6;
  sub_100328A48();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v30, v29);
  v39 = v44;
  *(v38 + v43[10]) = v53;
  sub_100328A9C(v38, v39);
  sub_100007BAC(v52);
  return sub_100328B00(v38);
}

uint64_t sub_10032858C(uint64_t a1)
{
  *(a1 + 8) = sub_10000972C(&qword_10169DFC8, type metadata accessor for MemberSharingCircle);
  result = sub_10000972C(&qword_10169DFD0, type metadata accessor for MemberSharingCircle);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100328610(uint64_t a1)
{
  result = sub_10000972C(&unk_1016B1620, type metadata accessor for MemberSharingCircle);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100328668()
{
  result = qword_10169DFD8;
  if (!qword_10169DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DFD8);
  }

  return result;
}

unint64_t sub_1003286BC()
{
  result = qword_10169DFF0;
  if (!qword_10169DFF0)
  {
    sub_1000BC580(&qword_10169DFE8, &unk_10139D320);
    sub_10000972C(&qword_101698300, &type metadata accessor for UUID);
    sub_100328778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DFF0);
  }

  return result;
}

unint64_t sub_100328778()
{
  result = qword_10169E000;
  if (!qword_10169E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E000);
  }

  return result;
}

BOOL sub_1003287CC(uint64_t a1, uint64_t a2)
{
  if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) != 0 && (v4 = type metadata accessor for MemberSharingCircle(), v5 = v4[5], (static UUID.== infix(_:_:)()) && (v6 = v4[6], (static UUID.== infix(_:_:)()) && (v7 = v4[7], (static UUID.== infix(_:_:)()) && (v8 = v4[8], (static UUID.== infix(_:_:)()) && (sub_100DE7C90(*(a1 + v4[9]), *(a2 + v4[9])))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100328898()
{
  result = qword_10169E008;
  if (!qword_10169E008)
  {
    sub_1000BC580(&qword_10169DFE8, &unk_10139D320);
    sub_10000972C(&qword_101698330, &type metadata accessor for UUID);
    sub_100328954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E008);
  }

  return result;
}

unint64_t sub_100328954()
{
  result = qword_10169E018;
  if (!qword_10169E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E018);
  }

  return result;
}

unint64_t sub_1003289A8()
{
  result = qword_10169E020;
  if (!qword_10169E020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10169E020);
  }

  return result;
}

unint64_t sub_1003289F4()
{
  result = qword_10169E038;
  if (!qword_10169E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E038);
  }

  return result;
}

unint64_t sub_100328A48()
{
  result = qword_10169E048;
  if (!qword_10169E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E048);
  }

  return result;
}

uint64_t sub_100328A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberSharingCircle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100328B00(uint64_t a1)
{
  v2 = type metadata accessor for MemberSharingCircle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100328B5C()
{
  result = qword_10169E060;
  if (!qword_10169E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E060);
  }

  return result;
}

unint64_t sub_100328BD4()
{
  result = qword_10169E068;
  if (!qword_10169E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E068);
  }

  return result;
}

unint64_t sub_100328C2C()
{
  result = qword_10169E070;
  if (!qword_10169E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E070);
  }

  return result;
}

unint64_t sub_100328C84()
{
  result = qword_10169E078;
  if (!qword_10169E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E078);
  }

  return result;
}

unint64_t sub_100328CDC()
{
  result = qword_10169E080;
  if (!qword_10169E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E080);
  }

  return result;
}

uint64_t sub_100328D30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001013512F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E61747065636361 && a2 == 0xEF65746174536563)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t type metadata accessor for SubmitEndpoint()
{
  result = qword_10169E0E8;
  if (!qword_10169E0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100329008()
{
  result = type metadata accessor for AnonymousCrowdSourceNetworkURLComponents();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMNAccountType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10032908C()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0x74696D6275732FLL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  return v2(&v5, 0);
}

uint64_t sub_100329194()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AC78);
  sub_1000076D4(v0, qword_10177AC78);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100329218(uint64_t a1)
{
  v1[10] = a1;
  v2 = type metadata accessor for XPCActivity.Criteria.Options();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for XPCActivity.Priority();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100329334, 0, 0);
}

uint64_t sub_100329334()
{
  (*(v0[15] + 104))(v0[16], enum case for XPCActivity.Priority.utility(_:), v0[14]);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  v0[17] = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_100329458;

  return unsafeBlocking<A>(_:)(v0 + 6, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100329458()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100329570, 0, 0);
}

uint64_t sub_100329570()
{
  v1 = sub_101073FE4(*(v0 + 48));

  v6 = (v1 * 60) >> 64;
  *(v0 + 16) = 60 * v1;
  *(v0 + 24) = v6 != (60 * v1) >> 63;
  if (v6 == (60 * v1) >> 63)
  {
    v7 = *(v0 + 136);
    v8 = async function pointer to unsafeBlocking<A>(_:)[1];

    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = sub_100329674;
    v4 = *(v0 + 136);
    v5 = &type metadata for Configuration;
    v3 = sub_1000DFF78;
    v2 = v0 + 56;
  }

  else
  {
    __break(1u);
  }

  return unsafeBlocking<A>(_:)(v2, v3, v4, v5);
}

uint64_t sub_100329674()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_10032978C, 0, 0);
}

uint64_t sub_10032978C()
{
  v1 = sub_10107401C(*(v0 + 56));

  v6 = (v1 * 60) >> 64;
  *(v0 + 32) = 60 * v1;
  *(v0 + 40) = v6 != (60 * v1) >> 63;
  if (v6 == (60 * v1) >> 63)
  {
    v7 = *(v0 + 136);
    v8 = async function pointer to unsafeBlocking<A>(_:)[1];

    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v9[1] = sub_100329890;
    v4 = *(v0 + 136);
    v5 = &type metadata for Configuration;
    v3 = sub_1000DFF78;
    v2 = v0 + 64;
  }

  else
  {
    __break(1u);
  }

  return unsafeBlocking<A>(_:)(v2, v3, v4, v5);
}

uint64_t sub_100329890()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_1003299A8, 0, 0);
}

uint64_t sub_1003299A8()
{
  v1 = sub_101073FE4(v0[8]);

  if ((v1 * 60) >> 64 == (60 * v1) >> 63)
  {
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v12 = v0[10];
    v13 = v0[4];
    v11 = v0[2] / 10;
    sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
    v7 = *(v5 + 72);
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10138C0D0;
    static XPCActivity.Criteria.Options.wakeDevice.getter();
    static XPCActivity.Criteria.Options.powerNap.getter();
    static XPCActivity.Criteria.Options.allowBattery.getter();
    static XPCActivity.Criteria.Options.requiresNetwork.getter();
    static XPCActivity.Criteria.Options.requiresClassC.getter();
    v0[9] = v9;
    sub_10003A260(&qword_101696CE0, 255, &type metadata accessor for XPCActivity.Criteria.Options);
    sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
    sub_100359D10();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();

    v10 = v0[1];

    return v10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100329BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100329C74;

  return sub_100338580();
}

uint64_t sub_100329C74()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_100329E9C;
  }

  else
  {
    v4 = sub_100329D9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100329D9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_10025F0D4(0, 0, v2, &unk_10139D730, v4);

  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100329E9C()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AC78);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to checkin xpc activity: %{public}@.", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[3];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10032A048(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[15] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v3[17] = v6;
  v7 = *(v6 - 8);
  v3[18] = v7;
  v8 = *(v7 + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[20] = v9;
  v10 = *(v9 - 8);
  v3[21] = v10;
  v3[22] = *(v10 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v3[25] = v12;
  *v12 = v3;
  v12[1] = sub_10032A1E8;

  return daemon.getter();
}

uint64_t sub_10032A1E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v12 = *v1;
  v3[26] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[27] = v6;
  v7 = type metadata accessor for Daemon();
  v3[28] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[29] = v8;
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[30] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  v3[31] = v10;
  *v6 = v12;
  v6[1] = sub_10032A3E4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10032A3E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = v4[14];
    v8 = sub_10032A93C;
  }

  else
  {
    v9 = v4[26];

    v4[33] = a1;
    v8 = sub_10032A520;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10032A520()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  v5 = *(v0 + 104);
  v6 = *(v3 + 16);
  *(v0 + 272) = v6;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 408) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 296) = v10;
  *(v0 + 304) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 312) = v12;
  v13 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v12 = v0;
  v12[1] = sub_10032A6BC;

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v9, v13);
}

uint64_t sub_10032A6BC()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 112);
  v6 = *v0;

  return _swift_task_switch(sub_10032A80C, v4, 0);
}

uint64_t sub_10032A80C()
{
  if (*(v0 + 80))
  {
    sub_10000A748((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_10032A9D0;
    v2 = *(v0 + 112);
    v3 = *(v0 + 96);

    return sub_10032F2D8(v3, v0 + 16);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    *(v0 + 336) = v6;
    *v6 = v0;
    v6[1] = sub_10032AB90;

    return daemon.getter();
  }
}

uint64_t sub_10032A93C()
{
  v1 = v0[26];

  v2 = v0[32];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[19];
  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10032A9D0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_10032B6DC;
  }

  else
  {
    v6 = sub_10032AAFC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032AAFC()
{
  sub_100007BAC(v0 + 2);
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10032AB90(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 336);
  v5 = *v1;
  v3[43] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[44] = v7;
  *v7 = v5;
  v7[1] = sub_10032AD1C;
  v8 = v3[31];
  v9 = v3[30];
  v10 = v3[29];
  v11 = v3[28];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_10032AD1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = v4[14];
    v8 = sub_10032B474;
  }

  else
  {
    v9 = v4[43];

    v4[46] = a1;
    v8 = sub_10032AE58;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10032AE58()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 280);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = (*(v0 + 408) + 24) & ~*(v0 + 408);
  (*(v0 + 272))(v5, *(v0 + 104), v7);
  v9 = swift_allocObject();
  *(v0 + 376) = v9;
  *(v9 + 16) = v1;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 384) = v11;
  *v11 = v0;
  v11[1] = sub_10032AFA8;
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100359F3C, v9, v13);
}

uint64_t sub_10032AFA8()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v4 = *(*v0 + 112);
  v6 = *v0;

  return _swift_task_switch(sub_10032B0F8, v4, 0);
}

uint64_t sub_10032B0F8()
{
  v32 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[23];
    v5 = v0[20];
    v6 = v0[13];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC78);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[23];
    v12 = v0[20];
    v13 = v0[21];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v31);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Beacon/group does not exist for given UUID %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    sub_100358F3C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v27 = v0[23];
    v26 = v0[24];
    v28 = v0[19];
    v29 = v0[16];

    v30 = v0[1];

    return v30();
  }

  else
  {
    sub_100359DA8(v1, v0[19], type metadata accessor for OwnedBeaconGroup);
    v20 = swift_task_alloc();
    v0[49] = v20;
    *v20 = v0;
    v20[1] = sub_10032B508;
    v21 = v0[19];
    v22 = v0[14];
    v23 = v0[12];

    return sub_10032B818(v23, v21);
  }
}

uint64_t sub_10032B474()
{
  v1 = v0[43];

  v2 = v0[45];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[19];
  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10032B508()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_10032B770;
  }

  else
  {
    v6 = sub_10032B634;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032B634()
{
  sub_100359E10(v0[19], type metadata accessor for OwnedBeaconGroup);
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10032B6DC()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[41];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[19];
  v5 = v0[16];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10032B770()
{
  sub_100359E10(v0[19], type metadata accessor for OwnedBeaconGroup);
  v1 = v0[50];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[19];
  v5 = v0[16];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10032B818(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(type metadata accessor for NotifyWhenFoundRecord() - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for OwnedBeaconRecord();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v13 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v3[21] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v3[23] = v15;
  v16 = *(v15 - 8);
  v3[24] = v16;
  v3[25] = *(v16 + 64);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_10032BAC4, v2, 0);
}

uint64_t sub_10032BAC4()
{
  v109 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 64);
  v5 = *(type metadata accessor for OwnedBeaconGroup(0) + 24);
  v6 = *(v3 + 16);
  *(v0 + 280) = v6;
  *(v0 + 288) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  v10 = *(v0 + 184);
  v11 = *(v0 + 56);
  v12 = type metadata accessor for Logger();
  *(v0 + 296) = sub_1000076D4(v12, qword_10177AC78);
  v6(v7, v8, v10);
  v6(v9, v11, v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 256);
  v16 = *(v0 + 264);
  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  if (v15)
  {
    v105 = v14;
    v20 = swift_slowAlloc();
    v108[0] = swift_slowAlloc();
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    log = v13;
    v26 = *(v18 + 8);
    v25 = v18 + 8;
    v24 = v26;
    v26(v16, v19);
    v27 = sub_1000136BC(v21, v23, v108);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v26(v17, v19);
    v31 = sub_1000136BC(v28, v30, v108);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v105, "enableNotifyWhenFound for group %{private,mask.hash}s, commandId %{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v32 = *(v18 + 8);
    v25 = v18 + 8;
    v24 = v32;
    v32(v17, v19);
    v32(v16, v19);
  }

  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  v33 = *(v0 + 64);
  v34 = sub_100519FB0();
  *(v0 + 320) = v34;
  v35 = *(v34 + 32);
  *(v0 + 644) = v35;
  v36 = -1;
  v37 = -1 << v35;
  v38 = *(v34 + 56);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  *(v0 + 328) = _swiftEmptyArrayStorage;
  v39 = v36 & v38;
  if (v39)
  {
    v40 = 0;
LABEL_13:
    *(v0 + 336) = v39;
    *(v0 + 344) = v40;
    v43 = *(v0 + 288);
    v44 = *(v0 + 240);
    v45 = *(v0 + 248);
    v46 = *(v0 + 184);
    v47 = *(v0 + 192);
    (*(v0 + 280))(v45, *(v34 + 48) + *(v47 + 72) * (__clz(__rbit64(v39)) | (v40 << 6)), v46);
    v48 = *(v47 + 32);
    *(v0 + 352) = v48;
    *(v0 + 360) = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v48(v44, v45, v46);
    v49 = async function pointer to daemon.getter[1];
    v50 = swift_task_alloc();
    *(v0 + 368) = v50;
    *v50 = v0;
    v50[1] = sub_10032C2CC;

    return daemon.getter();
  }

  v41 = 0;
  v42 = ((63 - v37) >> 6) - 1;
  while (v42 != v41)
  {
    v40 = v41 + 1;
    v39 = *(v34 + 8 * v41++ + 64);
    if (v39)
    {
      goto LABEL_13;
    }
  }

  v51 = _swiftEmptyArrayStorage[2];
  *(v0 + 432) = v51;
  if (v51)
  {
    v52 = *(v0 + 128);
    *(v0 + 528) = 0;
    *(v0 + 520) = _swiftEmptyArrayStorage;
    v53 = *(v0 + 328);
    if (!*(v53 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v54 = *(v0 + 224);
    v55 = *(v0 + 144);
    v56 = *(*(v0 + 136) + 80);
    sub_100034E04(v53 + ((v56 + 32) & ~v56), v55, type metadata accessor for OwnedBeaconRecord);
    UUID.init()();
    v57 = *(v52 + 20);
    v58 = swift_task_alloc();
    *(v0 + 536) = v58;
    *v58 = v0;
    v58[1] = sub_10032DDE8;
    v59 = *(v0 + 224);
    v60 = *(v0 + 104);
    v61 = *(v0 + 72);

    return sub_10033064C(v60, v59, v55 + v57);
  }

  else
  {
    v63 = *(v0 + 328);
    v65 = *(v0 + 288);
    v64 = *(v0 + 296);
    v66 = *(v0 + 272);
    v67 = *(v0 + 280);
    v68 = *(v0 + 208);
    v69 = *(v0 + 184);

    v67(v68, v66, v69);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = os_log_type_enabled(v70, v71);
    v74 = *(v0 + 304);
    v73 = *(v0 + 312);
    v75 = *(v0 + 208);
    v76 = *(v0 + 184);
    if (v72)
    {
      v107 = *(v0 + 312);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v108[0] = v78;
      *v77 = 141558275;
      *(v77 + 4) = 1752392040;
      *(v77 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v107(v75, v76);
      v82 = sub_1000136BC(v79, v81, v108);

      *(v77 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v70, v71, "No eligible member beacon to enable notify when found for group %{private,mask.hash}s", v77, 0x16u);
      sub_100007BAC(v78);
    }

    else
    {

      v73(v75, v76);
    }

    v84 = *(v0 + 304);
    v83 = *(v0 + 312);
    v85 = *(v0 + 272);
    v86 = *(v0 + 184);
    sub_100358F3C();
    swift_allocError();
    *v87 = 0;
    swift_willThrow();
    v83(v85, v86);
    v89 = *(v0 + 264);
    v88 = *(v0 + 272);
    v91 = *(v0 + 248);
    v90 = *(v0 + 256);
    v93 = *(v0 + 232);
    v92 = *(v0 + 240);
    v94 = *(v0 + 216);
    v95 = *(v0 + 224);
    v96 = *(v0 + 208);
    v97 = *(v0 + 176);
    v99 = *(v0 + 160);
    v100 = *(v0 + 152);
    v101 = *(v0 + 144);
    v102 = *(v0 + 120);
    loga = *(v0 + 104);
    v106 = *(v0 + 96);

    v98 = *(v0 + 8);

    return v98();
  }
}

uint64_t sub_10032C2CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v12 = *v1;
  v3[47] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[48] = v6;
  v7 = type metadata accessor for Daemon();
  v3[49] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[50] = v8;
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[51] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  v3[52] = v10;
  *v6 = v12;
  v6[1] = sub_10032C4C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10032C4C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = sub_10032CEBC;
  }

  else
  {
    v9 = v4[47];

    v4[55] = a1;
    v8 = sub_10032C604;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10032C604()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 288);
  v5 = *(v0 + 232);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 184);
  (*(v0 + 280))(v5, *(v0 + 240), v8);
  v9 = *(v7 + 80);
  *(v0 + 640) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = v10 + v6;
  v12 = swift_allocObject();
  *(v0 + 448) = v12;
  *(v12 + 16) = v1;
  v3(v12 + v10, v5, v8);
  *(v12 + v11) = 1;
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 456) = v14;
  *v14 = v0;
  v14[1] = sub_10032C764;
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_100259A6C, v12, v16);
}

uint64_t sub_10032C764()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 440);
  v5 = *v0;

  return _swift_task_switch(sub_10032C890, v3, 0);
}

uint64_t sub_10032C890()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 72);

  *(v0 + 645) = *v2;
  sub_10000B3A8(&v2[*(v3 + 48)], &unk_101696900, &unk_10138B1E0);

  return _swift_task_switch(sub_10032C92C, v4, 0);
}

uint64_t sub_10032C92C()
{
  v74 = v0;
  if ((*(v0 + 645) & 1) == 0)
  {
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    *(v0 + 464) = v6;
    *v6 = v0;
    v7 = sub_10032D044;
    goto LABEL_10;
  }

  v1 = *(v0 + 304);
  (*(v0 + 312))(*(v0 + 240), *(v0 + 184));
  v2 = *(v0 + 344);
  v3 = (*(v0 + 336) - 1) & *(v0 + 336);
  if (v3)
  {
    v4 = *(v0 + 320);
LABEL_9:
    *(v0 + 336) = v3;
    *(v0 + 344) = v2;
    v9 = *(v0 + 288);
    v10 = *(v0 + 240);
    v11 = *(v0 + 248);
    v12 = *(v0 + 184);
    v13 = *(v0 + 192);
    (*(v0 + 280))(v11, *(v4 + 48) + *(v13 + 72) * (__clz(__rbit64(v3)) | (v2 << 6)), v12);
    v14 = *(v13 + 32);
    *(v0 + 352) = v14;
    *(v0 + 360) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v10, v11, v12);
    v15 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    *(v0 + 368) = v6;
    *v6 = v0;
    v7 = sub_10032C2CC;
LABEL_10:
    v6[1] = v7;

    return daemon.getter();
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v8 >= (((1 << *(v0 + 644)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v0 + 320);
    v3 = *(v4 + 8 * v8 + 56);
    ++v2;
    if (v3)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  v16 = *(v0 + 320);
  v17 = *(v0 + 328);

  v18 = *(v17 + 16);
  *(v0 + 432) = v18;
  if (v18)
  {
    v19 = *(v0 + 128);
    *(v0 + 528) = 0;
    *(v0 + 520) = _swiftEmptyArrayStorage;
    v20 = *(v0 + 328);
    if (*(v20 + 16))
    {
      v21 = *(v0 + 224);
      v22 = *(v0 + 144);
      v23 = *(*(v0 + 136) + 80);
      sub_100034E04(v20 + ((v23 + 32) & ~v23), v22, type metadata accessor for OwnedBeaconRecord);
      UUID.init()();
      v24 = *(v19 + 20);
      v25 = swift_task_alloc();
      *(v0 + 536) = v25;
      *v25 = v0;
      v25[1] = sub_10032DDE8;
      v26 = *(v0 + 224);
      v27 = *(v0 + 104);
      v28 = *(v0 + 72);

      return sub_10033064C(v27, v26, v22 + v24);
    }

LABEL_25:
    __break(1u);
    return daemon.getter();
  }

  v30 = *(v0 + 328);
  v32 = *(v0 + 288);
  v31 = *(v0 + 296);
  v33 = *(v0 + 272);
  v34 = *(v0 + 280);
  v35 = *(v0 + 208);
  v36 = *(v0 + 184);

  v34(v35, v33, v36);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v39 = os_log_type_enabled(v37, v38);
  v41 = *(v0 + 304);
  v40 = *(v0 + 312);
  v42 = *(v0 + 208);
  v43 = *(v0 + 184);
  if (v39)
  {
    v72 = *(v0 + 312);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v73 = v45;
    *v44 = 141558275;
    *(v44 + 4) = 1752392040;
    *(v44 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v72(v42, v43);
    v49 = sub_1000136BC(v46, v48, &v73);

    *(v44 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v37, v38, "No eligible member beacon to enable notify when found for group %{private,mask.hash}s", v44, 0x16u);
    sub_100007BAC(v45);
  }

  else
  {

    v40(v42, v43);
  }

  v51 = *(v0 + 304);
  v50 = *(v0 + 312);
  v52 = *(v0 + 272);
  v53 = *(v0 + 184);
  sub_100358F3C();
  swift_allocError();
  *v54 = 0;
  swift_willThrow();
  v50(v52, v53);
  v56 = *(v0 + 264);
  v55 = *(v0 + 272);
  v58 = *(v0 + 248);
  v57 = *(v0 + 256);
  v60 = *(v0 + 232);
  v59 = *(v0 + 240);
  v61 = *(v0 + 216);
  v62 = *(v0 + 224);
  v63 = *(v0 + 208);
  v64 = *(v0 + 176);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 120);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10032CEBC()
{
  v1 = v0[47];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[34];
  v7 = v0[30];
  v8 = v0[23];

  v4(v7, v8);
  v4(v6, v8);
  v27 = v0[53];
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[27];
  v16 = v0[28];
  v17 = v0[26];
  v18 = v0[22];
  v21 = v0[20];
  v22 = v0[19];
  v23 = v0[18];
  v24 = v0[15];
  v25 = v0[13];
  v26 = v0[12];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10032D044(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 464);
  v5 = *v1;
  v3[59] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[60] = v7;
  *v7 = v5;
  v7[1] = sub_10032D1D0;
  v8 = v3[52];
  v9 = v3[51];
  v10 = v3[50];
  v11 = v3[49];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_10032D1D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = sub_10032DC60;
  }

  else
  {
    v9 = v4[59];

    v4[62] = a1;
    v8 = sub_10032D30C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10032D30C()
{
  v1 = *(v0 + 496);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 288);
  v5 = *(v0 + 232);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = (*(v0 + 640) + 24) & ~*(v0 + 640);
  (*(v0 + 280))(v5, *(v0 + 240), v7);
  v9 = swift_allocObject();
  *(v0 + 504) = v9;
  *(v9 + 16) = v1;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 512) = v11;
  *v11 = v0;
  v11[1] = sub_10032D458;
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100359F38, v9, v13);
}

uint64_t sub_10032D458()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 496);
  v4 = *(*v0 + 72);
  v6 = *v0;

  return _swift_task_switch(sub_10032D5A8, v4, 0);
}

uint64_t sub_10032D5A8()
{
  v85 = v0;
  v1 = *(v0 + 120);
  if ((*(*(v0 + 136) + 48))(v1, 1, *(v0 + 128)) != 1)
  {
    v6 = *(v0 + 328);
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    sub_100359DA8(v1, v7, type metadata accessor for OwnedBeaconRecord);
    sub_100034E04(v7, v8, type metadata accessor for OwnedBeaconRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 328);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

  v2 = *(v0 + 304);
  (*(v0 + 312))(*(v0 + 240), *(v0 + 184));
  sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
  v3 = *(v0 + 344);
  v4 = (*(v0 + 336) - 1) & *(v0 + 336);
  if (v4)
  {
LABEL_3:
    v5 = *(v0 + 320);
LABEL_12:
    *(v0 + 336) = v4;
    *(v0 + 344) = v3;
    v19 = *(v0 + 288);
    v20 = *(v0 + 240);
    v21 = *(v0 + 248);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    (*(v0 + 280))(v21, *(v5 + 48) + *(v23 + 72) * (__clz(__rbit64(v4)) | (v3 << 6)), v22);
    v24 = *(v23 + 32);
    *(v0 + 352) = v24;
    *(v0 + 360) = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v20, v21, v22);
    v25 = async function pointer to daemon.getter[1];
    v26 = swift_task_alloc();
    *(v0 + 368) = v26;
    *v26 = v0;
    v26[1] = sub_10032C2CC;

    return daemon.getter();
  }

  while (1)
  {
    while (1)
    {
      v18 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        break;
      }

      __break(1u);
LABEL_27:
      v1 = sub_100A5C050(0, v1[2] + 1, 1, v1);
LABEL_5:
      v11 = v1[2];
      v10 = v1[3];
      if (v11 >= v10 >> 1)
      {
        v1 = sub_100A5C050(v10 > 1, v11 + 1, 1, v1);
      }

      v13 = *(v0 + 304);
      v12 = *(v0 + 312);
      v14 = *(v0 + 240);
      v15 = *(v0 + 184);
      v16 = *(v0 + 152);
      v17 = *(v0 + 136);
      sub_100359E10(*(v0 + 160), type metadata accessor for OwnedBeaconRecord);
      v12(v14, v15);
      v1[2] = v11 + 1;
      sub_100359DA8(v16, v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v11, type metadata accessor for OwnedBeaconRecord);
      v3 = *(v0 + 344);
      v4 = (*(v0 + 336) - 1) & *(v0 + 336);
      *(v0 + 328) = v1;
      if (v4)
      {
        goto LABEL_3;
      }
    }

    if (v18 >= (((1 << *(v0 + 644)) + 63) >> 6))
    {
      break;
    }

    v5 = *(v0 + 320);
    v4 = *(v5 + 8 * v18 + 56);
    ++v3;
    if (v4)
    {
      v3 = v18;
      goto LABEL_12;
    }
  }

  v27 = *(v0 + 320);
  v28 = *(v0 + 328);

  v29 = *(v28 + 16);
  *(v0 + 432) = v29;
  if (v29)
  {
    v30 = *(v0 + 128);
    *(v0 + 528) = 0;
    *(v0 + 520) = _swiftEmptyArrayStorage;
    v31 = *(v0 + 328);
    if (!*(v31 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v32 = *(v0 + 224);
    v33 = *(v0 + 144);
    v34 = *(*(v0 + 136) + 80);
    sub_100034E04(v31 + ((v34 + 32) & ~v34), v33, type metadata accessor for OwnedBeaconRecord);
    UUID.init()();
    v35 = *(v30 + 20);
    v36 = swift_task_alloc();
    *(v0 + 536) = v36;
    *v36 = v0;
    v36[1] = sub_10032DDE8;
    v37 = *(v0 + 224);
    v38 = *(v0 + 104);
    v39 = *(v0 + 72);

    return sub_10033064C(v38, v37, v33 + v35);
  }

  else
  {
    v41 = *(v0 + 328);
    v43 = *(v0 + 288);
    v42 = *(v0 + 296);
    v44 = *(v0 + 272);
    v45 = *(v0 + 280);
    v46 = *(v0 + 208);
    v47 = *(v0 + 184);

    v45(v46, v44, v47);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = os_log_type_enabled(v48, v49);
    v52 = *(v0 + 304);
    v51 = *(v0 + 312);
    v53 = *(v0 + 208);
    v54 = *(v0 + 184);
    if (v50)
    {
      v83 = *(v0 + 312);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v84 = v56;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v83(v53, v54);
      v60 = sub_1000136BC(v57, v59, &v84);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v48, v49, "No eligible member beacon to enable notify when found for group %{private,mask.hash}s", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {

      v51(v53, v54);
    }

    v62 = *(v0 + 304);
    v61 = *(v0 + 312);
    v63 = *(v0 + 272);
    v64 = *(v0 + 184);
    sub_100358F3C();
    swift_allocError();
    *v65 = 0;
    swift_willThrow();
    v61(v63, v64);
    v67 = *(v0 + 264);
    v66 = *(v0 + 272);
    v69 = *(v0 + 248);
    v68 = *(v0 + 256);
    v71 = *(v0 + 232);
    v70 = *(v0 + 240);
    v72 = *(v0 + 216);
    v73 = *(v0 + 224);
    v74 = *(v0 + 208);
    v75 = *(v0 + 176);
    v77 = *(v0 + 160);
    v78 = *(v0 + 152);
    v79 = *(v0 + 144);
    v80 = *(v0 + 120);
    v81 = *(v0 + 104);
    v82 = *(v0 + 96);

    v76 = *(v0 + 8);

    return v76();
  }
}

uint64_t sub_10032DC60()
{
  v1 = v0[59];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[34];
  v7 = v0[30];
  v8 = v0[23];

  v4(v7, v8);
  v4(v6, v8);
  v27 = v0[61];
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[27];
  v16 = v0[28];
  v17 = v0[26];
  v18 = v0[22];
  v21 = v0[20];
  v22 = v0[19];
  v23 = v0[18];
  v24 = v0[15];
  v25 = v0[13];
  v26 = v0[12];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10032DDE8()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v15 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = v2[65];
    v5 = v2[41];
    v6 = v2[39];
    v7 = v2[28];
    v8 = v2[23];
    v9 = v2[9];
    v2[79] = v2[38] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v7, v8);

    v10 = sub_10032EF30;
    v11 = v9;
  }

  else
  {
    v12 = v2[38];
    v13 = v2[9];
    (v2[39])(v2[28], v2[23]);
    v10 = sub_10032DF68;
    v11 = v13;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_10032DF68()
{
  v1 = v0[65];
  v2 = v0[18];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v0[5] = v0[16];
  v0[6] = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord);
  v6 = sub_1000280DC(v0 + 2);
  sub_100034E04(v2, v6, type metadata accessor for OwnedBeaconRecord);
  v7 = *(v5 + 48);
  sub_10000A748(v0 + 1, v4);
  sub_100034E04(v3, v4 + v7, type metadata accessor for NotifyWhenFoundRecord);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v0[65];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100A5CAC0(0, v9[2] + 1, 1, v0[65]);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100A5CAC0(v10 > 1, v11 + 1, 1, v9);
  }

  v0[69] = v9;
  v12 = v0[54];
  v13 = v0[18];
  v14 = v0[12];
  v15 = v0[11];
  v16 = v0[66] + 1;
  sub_100359E10(v0[13], type metadata accessor for NotifyWhenFoundRecord);
  sub_100359E10(v13, type metadata accessor for OwnedBeaconRecord);
  v9[2] = v11 + 1;
  result = sub_1000D2AD8(v14, v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11, &qword_10169E348, &unk_10139D7A0);
  if (v16 == v12)
  {
    v18 = v0[41];

    v19 = swift_task_alloc();
    v0[70] = v19;
    *v19 = v0;
    v19[1] = sub_10032E2A8;
    v20 = v0[9];

    return sub_10034AE3C(v9);
  }

  else
  {
    v21 = v0[66] + 1;
    v0[66] = v21;
    v0[65] = v9;
    v22 = v0[41];
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
    }

    else
    {
      v23 = v0[28];
      v24 = v0[18];
      v25 = v0[16];
      sub_100034E04(v22 + ((*(v0[17] + 80) + 32) & ~*(v0[17] + 80)) + *(v0[17] + 72) * v21, v24, type metadata accessor for OwnedBeaconRecord);
      UUID.init()();
      v26 = *(v25 + 20);
      v27 = swift_task_alloc();
      v0[67] = v27;
      *v27 = v0;
      v27[1] = sub_10032DDE8;
      v28 = v0[28];
      v29 = v0[13];
      v30 = v0[9];

      return sub_10033064C(v29, v28, v24 + v26);
    }
  }

  return result;
}

uint64_t sub_10032E2A8()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v9 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_10032F09C;
  }

  else
  {
    v6 = *(v2 + 552);
    v7 = *(v2 + 72);

    v5 = sub_10032E3D0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10032E3D0()
{
  v21 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  (*(v0 + 280))(*(v0 + 216), *(v0 + 272), *(v0 + 184));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  if (v5)
  {
    v19 = *(v0 + 312);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v19(v8, v9);
    v15 = sub_1000136BC(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Enabled notify when found for group %s.", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    v6(v8, v9);
  }

  v16 = async function pointer to daemon.getter[1];
  v17 = swift_task_alloc();
  *(v0 + 576) = v17;
  *v17 = v0;
  v17[1] = sub_10032E5E4;

  return daemon.getter();
}

uint64_t sub_10032E5E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 576);
  v12 = *v1;
  *(v3 + 584) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 592) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10032E7C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10032E7C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 592);
  v6 = *v2;
  *(*v2 + 600) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = sub_10032ECF4;
  }

  else
  {
    v9 = v4[73];

    v4[76] = a1;
    v8 = sub_10032E904;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10032E904()
{
  v1 = v0[76];
  v2 = swift_allocObject();
  v0[77] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 15;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[78] = v4;
  *v4 = v0;
  v4[1] = sub_10032EA10;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000010, 0x800000010134A8C0, sub_100359F44, v2, &type metadata for () + 8);
}

uint64_t sub_10032EA10()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v5 = *v0;

  return _swift_task_switch(sub_10032EB3C, v3, 0);
}

uint64_t sub_10032EB3C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_10032EBA8, v2, 0);
}

uint64_t sub_10032EBA8()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = *(v0 + 152);
  v16 = *(v0 + 144);
  v9 = *(v0 + 120);
  v17 = *(v0 + 104);
  v18 = *(v0 + 96);
  v10 = *(v0 + 304) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 312))(*(v0 + 272), *(v0 + 184));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10032ECF4()
{
  v1 = v0[73];

  v2 = v0[75];
  v3 = v0[37];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error publishing notifyWhenFound keys: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[34];
  v12 = v0[23];

  swift_willThrow();
  v9(v11, v12);
  v14 = v0[33];
  v13 = v0[34];
  v16 = v0[31];
  v15 = v0[32];
  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[27];
  v20 = v0[28];
  v21 = v0[26];
  v22 = v0[22];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[13];
  v30 = v0[12];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10032EF30()
{
  v1 = v0[79];
  v2 = v0[39];
  v3 = v0[34];
  v4 = v0[23];
  sub_100359E10(v0[18], type metadata accessor for OwnedBeaconRecord);
  v2(v3, v4);
  v23 = v0[68];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[26];
  v14 = v0[22];
  v17 = v0[20];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[15];
  v21 = v0[13];
  v22 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10032F09C()
{
  v1 = v0[69];

  v2 = v0[71];
  v3 = v0[37];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error publishing notifyWhenFound keys: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[34];
  v12 = v0[23];

  swift_willThrow();
  v9(v11, v12);
  v14 = v0[33];
  v13 = v0[34];
  v16 = v0[31];
  v15 = v0[32];
  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[27];
  v20 = v0[28];
  v21 = v0[26];
  v22 = v0[22];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[13];
  v30 = v0[12];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10032F2D8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(type metadata accessor for NotifyWhenFoundRecord() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10032F3E0, v2, 0);
}

uint64_t sub_10032F3E0()
{
  v41 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v6, qword_10177AC78);
  sub_10001F280(v4, (v0 + 2));
  (*(v3 + 16))(v1, v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  if (v9)
  {
    v11 = v0[14];
    v13 = v0[11];
    v12 = v0[12];
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v39 = v8;
    v16 = v0[5];
    v15 = v0[6];
    sub_1000035D0(v0 + 2, v16);
    (*(*(*(v15 + 8) + 8) + 32))(v16);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    log = v7;
    v20 = *(v12 + 8);
    v20(v11, v13);
    sub_100007BAC(v0 + 2);
    v21 = sub_1000136BC(v17, v19, &v40);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2082;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v10, v13);
    v25 = sub_1000136BC(v22, v24, &v40);

    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, log, v39, "enableNotifyWhenFound for %{private,mask.hash}s, commandId %{public}s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[11];
    v27 = v0[12];

    v20 = *(v27 + 8);
    v20(v10, v26);
    sub_100007BAC(v0 + 2);
  }

  v0[17] = v20;
  v28 = v0[13];
  v29 = v0[8];
  v30 = v29[3];
  v31 = v29[4];
  sub_1000035D0(v29, v30);
  (*(*(*(v31 + 8) + 8) + 32))(v30);
  v32 = swift_task_alloc();
  v0[18] = v32;
  *v32 = v0;
  v32[1] = sub_10032F78C;
  v33 = v0[13];
  v35 = v0[9];
  v34 = v0[10];
  v36 = v0[7];

  return sub_10033064C(v34, v36, v33);
}

uint64_t sub_10032F78C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = v2[17];
  v6 = v2[13];
  v7 = v2[12];
  v8 = v2[11];
  v9 = v2[9];
  v5(v6, v8);
  if (v0)
  {
    v10 = sub_100330420;
  }

  else
  {
    v10 = sub_10032F91C;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10032F91C()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_1000BC4D4(&qword_10169E3A0, &unk_10139D850);
  v3 = (sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  v0[20] = v6;
  *(v6 + 16) = xmmword_101385D80;
  v7 = v6 + v5;
  v8 = v3[14];
  sub_10001F280(v2, v7);
  sub_100034E04(v1, v7 + v8, type metadata accessor for NotifyWhenFoundRecord);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_10032FA9C;
  v10 = v0[9];

  return sub_10034AE3C(v6);
}

uint64_t sub_10032FA9C()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[9];

    return _swift_task_switch(sub_1003304AC, v4, 0);
  }

  else
  {
    v5 = v3[20];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v3[23] = v7;
    *v7 = v3;
    v7[1] = sub_10032FC10;

    return daemon.getter();
  }
}

uint64_t sub_10032FC10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v12 = *v1;
  *(v3 + 192) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 200) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10032FDF4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10032FDF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = sub_100330280;
  }

  else
  {
    v9 = v4[24];

    v4[27] = a1;
    v8 = sub_10032FF30;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10032FF30()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[28] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 15;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_10033003C;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000010, 0x800000010134A8C0, sub_100359F44, v2, &type metadata for () + 8);
}

uint64_t sub_10033003C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v5 = *v0;

  return _swift_task_switch(sub_100330168, v3, 0);
}

uint64_t sub_100330168()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1003301D4, v2, 0);
}

uint64_t sub_1003301D4()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_100359E10(v0[10], type metadata accessor for NotifyWhenFoundRecord);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100330280()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[16];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error publishing notifyWhenFound keys: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[10];

  swift_willThrow();
  sub_100359E10(v9, type metadata accessor for NotifyWhenFoundRecord);
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100330420()
{
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003304AC()
{
  v1 = v0[20];

  v2 = v0[22];
  v3 = v0[16];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error publishing notifyWhenFound keys: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[10];

  swift_willThrow();
  sub_100359E10(v9, type metadata accessor for NotifyWhenFoundRecord);
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10033064C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v4[10] = *(v8 + 64);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v4[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord();
  v4[15] = found;
  v12 = *(found - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v14 = async function pointer to daemon.getter[1];
  v15 = swift_task_alloc();
  v4[21] = v15;
  *v15 = v4;
  v15[1] = sub_100330880;

  return daemon.getter();
}

uint64_t sub_100330880(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  v3[22] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[23] = v6;
  v7 = type metadata accessor for Daemon();
  v3[24] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[25] = v8;
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[26] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  v3[27] = v10;
  *v6 = v12;
  v6[1] = sub_100330A7C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100330A7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = sub_100331404;
  }

  else
  {
    v9 = v4[22];

    v4[29] = a1;
    v8 = sub_100330BB8;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100330BB8()
{
  v1 = v0[29];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[8];
  v5 = v0[4];
  v6 = *(v3 + 16);
  v0[30] = v6;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[32] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = sub_100330D28;
  v12 = v0[13];
  v11 = v0[14];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100359F34, v8, v12);
}

uint64_t sub_100330D28()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 40);
  v6 = *v0;

  return _swift_task_switch(sub_100330E78, v4, 0);
}

uint64_t sub_100330E78()
{
  v55 = v0;
  v1 = v0[14];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v3 = v0[30];
    v2 = v0[31];
    v4 = v0[11];
    v5 = v0[8];
    v6 = v0[4];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC78);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[9];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v54 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v54);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Creating new NWF record for %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    v36 = v0[30];
    v35 = v0[31];
    v37 = v0[17];
    v38 = v0[15];
    v39 = v0[8];
    v40 = v0[4];
    v36(&v37[*(v38 + 20)], v0[3], v39);
    v36(&v37[*(v38 + 24)], v40, v39);
    *v37 = xmmword_10138C660;
    v41 = async function pointer to daemon.getter[1];
    v42 = swift_task_alloc();
    v0[34] = v42;
    *v42 = v0;
    v42[1] = sub_1003314E0;

    return daemon.getter();
  }

  else
  {
    sub_100359DA8(v1, v0[20], type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v20 = v0[19];
    v21 = v0[20];
    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177AC78);
    sub_100034E04(v21, v20, type metadata accessor for NotifyWhenFoundRecord);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[19];
    if (v25)
    {
      v27 = v0[18];
      v28 = v0[15];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v54 = v30;
      *v29 = 136315138;
      sub_100034E04(v26, v27, type metadata accessor for NotifyWhenFoundRecord);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      sub_100359E10(v26, type metadata accessor for NotifyWhenFoundRecord);
      v34 = sub_1000136BC(v31, v33, &v54);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Found existing NWF record %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {

      sub_100359E10(v26, type metadata accessor for NotifyWhenFoundRecord);
    }

    sub_100359DA8(v0[20], v0[2], type metadata accessor for NotifyWhenFoundRecord);
    v44 = v0[19];
    v43 = v0[20];
    v46 = v0[17];
    v45 = v0[18];
    v47 = v0[14];
    v49 = v0[11];
    v48 = v0[12];
    v51 = v0[6];
    v50 = v0[7];

    v52 = v0[1];

    return v52();
  }
}

uint64_t sub_100331404()
{
  v1 = v0[22];

  v2 = v0[28];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[6];
  v10 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003314E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 272);
  v5 = *v1;
  v3[35] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[36] = v7;
  *v7 = v5;
  v7[1] = sub_10033166C;
  v8 = v3[27];
  v9 = v3[26];
  v10 = v3[25];
  v11 = v3[24];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_10033166C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v10 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_10033192C;
  }

  else
  {
    v7 = v3[35];
    v8 = v3[5];

    v6 = sub_100331794;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100331794()
{
  v1 = v0[38];
  v2 = v0[17];
  v3 = v0[7];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_100359E70, v3);
  v4 = v0[37];
  if (v1)
  {
    v5 = v0[17];
    v6 = v0[37];

    sub_100359E10(v5, type metadata accessor for NotifyWhenFoundRecord);
    v8 = v0[19];
    v7 = v0[20];
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[14];
    v13 = v0[11];
    v12 = v0[12];
    v15 = v0[6];
    v14 = v0[7];

    v16 = v0[1];

    return v16();
  }

  else
  {

    return _swift_task_switch(sub_100331A28, v4, 0);
  }
}

uint64_t sub_10033192C()
{
  v1 = v0[35];
  v2 = v0[17];

  sub_100359E10(v2, type metadata accessor for NotifyWhenFoundRecord);
  v3 = v0[38];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[6];
  v11 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100331A50()
{
  v1 = v0[39];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[40] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_100331B48;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_100331B48()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_100331E78;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_100331C64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100331C64()
{
  v1 = v0[37];
  v2 = v0[7];
  v3 = v0[5];

  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100331CEC, v3, 0);
}

uint64_t sub_100331CEC()
{
  v1 = v0[17];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  sub_10025F0D4(0, 0, v2, &unk_10139D848, v6);

  sub_100359DA8(v1, v4, type metadata accessor for NotifyWhenFoundRecord);
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[14];
  v13 = v0[11];
  v12 = v0[12];
  v15 = v0[6];
  v14 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100331E78()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);

  return _swift_task_switch(sub_100331EE4, v2, 0);
}

uint64_t sub_100331EE4()
{
  v1 = v0[37];
  v2 = v0[7];
  v3 = v0[5];

  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100331F6C, v3, 0);
}

uint64_t sub_100331F6C()
{
  sub_100359E10(v0[17], type metadata accessor for NotifyWhenFoundRecord);
  v1 = v0[42];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[6];
  v9 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10033205C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[15] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v3[17] = v6;
  v7 = *(v6 - 8);
  v3[18] = v7;
  v8 = *(v7 + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[20] = v9;
  v10 = *(v9 - 8);
  v3[21] = v10;
  v3[22] = *(v10 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v3[25] = v12;
  *v12 = v3;
  v12[1] = sub_1003321FC;

  return daemon.getter();
}

uint64_t sub_1003321FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v12 = *v1;
  v3[26] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[27] = v6;
  v7 = type metadata accessor for Daemon();
  v3[28] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[29] = v8;
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[30] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  v3[31] = v10;
  *v6 = v12;
  v6[1] = sub_1003323F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003323F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = v4[14];
    v8 = sub_100359F40;
  }

  else
  {
    v9 = v4[26];

    v4[33] = a1;
    v8 = sub_100332534;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100332534()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  v5 = *(v0 + 104);
  v6 = *(v3 + 16);
  *(v0 + 272) = v6;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 408) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 296) = v10;
  *(v0 + 304) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 312) = v12;
  v13 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v12 = v0;
  v12[1] = sub_1003326D0;

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v9, v13);
}

uint64_t sub_1003326D0()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 112);
  v6 = *v0;

  return _swift_task_switch(sub_100332820, v4, 0);
}

uint64_t sub_100332820()
{
  if (*(v0 + 80))
  {
    sub_10000A748((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_100332950;
    v2 = *(v0 + 112);
    v3 = *(v0 + 96);

    return sub_100335FE8(v3, v0 + 16);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    *(v0 + 336) = v6;
    *v6 = v0;
    v6[1] = sub_100332A7C;

    return daemon.getter();
  }
}

uint64_t sub_100332950()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_100359F0C;
  }

  else
  {
    v6 = sub_100359F2C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100332A7C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 336);
  v5 = *v1;
  v3[43] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[44] = v7;
  *v7 = v5;
  v7[1] = sub_100332C08;
  v8 = v3[31];
  v9 = v3[30];
  v10 = v3[29];
  v11 = v3[28];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_100332C08(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = v4[14];
    v8 = sub_100359F30;
  }

  else
  {
    v9 = v4[43];

    v4[46] = a1;
    v8 = sub_100332D44;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100332D44()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 280);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = (*(v0 + 408) + 24) & ~*(v0 + 408);
  (*(v0 + 272))(v5, *(v0 + 104), v7);
  v9 = swift_allocObject();
  *(v0 + 376) = v9;
  *(v9 + 16) = v1;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 384) = v11;
  *v11 = v0;
  v11[1] = sub_100332E94;
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100359F3C, v9, v13);
}

uint64_t sub_100332E94()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v4 = *(*v0 + 112);
  v6 = *v0;

  return _swift_task_switch(sub_100332FE4, v4, 0);
}

uint64_t sub_100332FE4()
{
  v32 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[23];
    v5 = v0[20];
    v6 = v0[13];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC78);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[23];
    v12 = v0[20];
    v13 = v0[21];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v31);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Beacon/group does not exist for given UUID %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    sub_100358F3C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v27 = v0[23];
    v26 = v0[24];
    v28 = v0[19];
    v29 = v0[16];

    v30 = v0[1];

    return v30();
  }

  else
  {
    sub_100359DA8(v1, v0[19], type metadata accessor for OwnedBeaconGroup);
    v20 = swift_task_alloc();
    v0[49] = v20;
    *v20 = v0;
    v20[1] = sub_100333360;
    v21 = v0[19];
    v22 = v0[14];
    v23 = v0[12];

    return sub_10033348C(v23, v21);
  }
}

uint64_t sub_100333360()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_100359F28;
  }

  else
  {
    v6 = sub_100359F04;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10033348C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconRecord();
  v3[12] = v6;
  v7 = *(v6 - 8);
  v3[13] = v7;
  v8 = *(v7 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v3[20] = *(v10 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_100333668, v2, 0);
}

uint64_t sub_100333668()
{
  v106 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 64);
  v5 = *(type metadata accessor for OwnedBeaconGroup(0) + 24);
  v6 = *(v3 + 16);
  *(v0 + 232) = v6;
  *(v0 + 240) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 208);
  v10 = *(v0 + 144);
  v11 = *(v0 + 56);
  v12 = type metadata accessor for Logger();
  *(v0 + 248) = sub_1000076D4(v12, qword_10177AC78);
  v6(v7, v8, v10);
  v6(v9, v11, v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  if (v15)
  {
    v102 = v14;
    v20 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    log = v13;
    v26 = *(v18 + 8);
    v25 = v18 + 8;
    v24 = v26;
    v26(v16, v19);
    v27 = sub_1000136BC(v21, v23, v105);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v26(v17, v19);
    v31 = sub_1000136BC(v28, v30, v105);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v102, "disableNotifyWhenFound for %{private,mask.hash}s, commandId %{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v32 = *(v18 + 8);
    v25 = v18 + 8;
    v24 = v32;
    v32(v17, v19);
    v32(v16, v19);
  }

  *(v0 + 256) = v25;
  *(v0 + 264) = v24;
  v33 = *(v0 + 64);
  v34 = sub_100519FB0();
  *(v0 + 272) = v34;
  v35 = *(v34 + 32);
  *(v0 + 492) = v35;
  v36 = -1;
  v37 = -1 << v35;
  v38 = *(v34 + 56);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  *(v0 + 280) = _swiftEmptyArrayStorage;
  v39 = v36 & v38;
  if (v39)
  {
    v40 = 0;
LABEL_13:
    *(v0 + 288) = v39;
    *(v0 + 296) = v40;
    v43 = *(v0 + 240);
    v44 = *(v0 + 192);
    v45 = *(v0 + 200);
    v46 = *(v0 + 144);
    v47 = *(v0 + 152);
    (*(v0 + 232))(v45, *(v34 + 48) + *(v47 + 72) * (__clz(__rbit64(v39)) | (v40 << 6)), v46);
    v48 = *(v47 + 32);
    *(v0 + 304) = v48;
    *(v0 + 312) = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v48(v44, v45, v46);
    v49 = async function pointer to daemon.getter[1];
    v50 = swift_task_alloc();
    *(v0 + 320) = v50;
    *v50 = v0;
    v50[1] = sub_100333E90;

    return daemon.getter();
  }

  else
  {
    v41 = 0;
    v42 = ((63 - v37) >> 6) - 1;
    while (v42 != v41)
    {
      v40 = v41 + 1;
      v39 = *(v34 + 8 * v41++ + 64);
      if (v39)
      {
        goto LABEL_13;
      }
    }

    v51 = _swiftEmptyArrayStorage[2];
    *(v0 + 352) = v51;
    if (v51)
    {
      v52 = *(v0 + 280);
      v54 = *(v0 + 96);
      v53 = *(v0 + 104);
      v55 = *(v53 + 80);
      *(v0 + 488) = v55;
      v56 = *(v53 + 72);
      *(v0 + 392) = 0;
      *(v0 + 400) = 0;
      *(v0 + 384) = v56;
      v57 = *(v0 + 120);
      sub_100034E04(v52 + ((v55 + 32) & ~v55), v57, type metadata accessor for OwnedBeaconRecord);
      *(v0 + 40) = v54;
      *(v0 + 48) = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord);
      v58 = sub_1000280DC((v0 + 16));
      sub_100034E04(v57, v58, type metadata accessor for OwnedBeaconRecord);
      v59 = swift_task_alloc();
      *(v0 + 408) = v59;
      *v59 = v0;
      v59[1] = sub_100334C78;
      v60 = *(v0 + 72);
      v61 = *(v0 + 56);

      return sub_100335FE8(v61, v0 + 16);
    }

    else
    {
      v62 = *(v0 + 280);
      v64 = *(v0 + 240);
      v63 = *(v0 + 248);
      v65 = *(v0 + 224);
      v66 = *(v0 + 232);
      v67 = *(v0 + 168);
      v68 = *(v0 + 144);

      v66(v67, v65, v68);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      v71 = os_log_type_enabled(v69, v70);
      v73 = *(v0 + 256);
      v72 = *(v0 + 264);
      v74 = *(v0 + 168);
      v75 = *(v0 + 144);
      if (v71)
      {
        v104 = *(v0 + 264);
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v105[0] = v77;
        *v76 = 141558275;
        *(v76 + 4) = 1752392040;
        *(v76 + 12) = 2081;
        sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v79;
        v104(v74, v75);
        v81 = sub_1000136BC(v78, v80, v105);

        *(v76 + 14) = v81;
        _os_log_impl(&_mh_execute_header, v69, v70, "No eligible member beacon to disable notify when found for group %{private,mask.hash}s", v76, 0x16u);
        sub_100007BAC(v77);
      }

      else
      {

        v72(v74, v75);
      }

      v83 = *(v0 + 256);
      v82 = *(v0 + 264);
      v84 = *(v0 + 224);
      v85 = *(v0 + 144);
      sub_100358F3C();
      swift_allocError();
      *v86 = 0;
      swift_willThrow();
      v82(v84, v85);
      v88 = *(v0 + 216);
      v87 = *(v0 + 224);
      v90 = *(v0 + 200);
      v89 = *(v0 + 208);
      v92 = *(v0 + 184);
      v91 = *(v0 + 192);
      v94 = *(v0 + 168);
      v93 = *(v0 + 176);
      v95 = *(v0 + 128);
      v96 = *(v0 + 136);
      v99 = *(v0 + 120);
      loga = *(v0 + 112);
      v103 = *(v0 + 88);

      v97 = *(v0 + 8);

      return v97();
    }
  }
}
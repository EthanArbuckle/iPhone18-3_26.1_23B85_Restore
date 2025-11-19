void sub_101194B08(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AccessoryMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v240 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Endianness();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v269 = &v240 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v271 = *(*a1 + 16);
  if (!v271)
  {
    v267 = 0;
    v115 = 0xF000000000000000;
LABEL_208:
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v144 = type metadata accessor for Logger();
    sub_1000076D4(v144, qword_10177C730);
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&_mh_execute_header, v145, v146, "Missing characteristic values!", v147, 2u);
    }

    sub_100101B58();
    swift_allocError();
    *v148 = 0u;
    *(v148 + 16) = 0u;
    *(v148 + 32) = 0;
    *(v148 + 40) = 11;
    swift_willThrow();
    sub_100006654(v267, v115);
    return;
  }

  v241 = a2;
  v242 = v7;
  v243 = a3;
  v244 = v10;
  v245 = v3;
  v246 = 0;
  v252 = 0;
  v247 = 0;
  v248 = 0;
  v263 = 0;
  v264 = 0;
  v267 = 0;
  v15 = 0;
  v16 = (v14 + 56);
  v265 = 0xF000000000000000;
  v249 = 5;
  v250 = 4;
  v253 = 1;
  v254 = 1;
  v255 = 1;
  v251 = 1;
  v270 = v14;
  while (1)
  {
    if (v15 >= *(v270 + 16))
    {
      __break(1u);
LABEL_245:
      v208 = v16;
      v209 = v246;
      v210 = BYTE3(v246);
      v211 = WORD1(v246);
      v212 = [*(v241 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
      v213 = v243;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v214 = v242;
      v215 = v242[9];
      v216 = type metadata accessor for AirTagVersionNumber();
      (*(*(v216 - 8) + 56))(v213 + v215, 1, 1, v216);
      v217 = sub_1010D99D0(SHIDWORD(v251));
      v218 = (v213 + v214[5]);
      v219 = v265;
      *v218 = v267;
      v218[1] = v219;
      v220 = (v213 + v214[6]);
      v221 = v248;
      *v220 = v247;
      v220[1] = v208;
      v222 = (v213 + v214[7]);
      *v222 = v221;
      v222[1] = v15;
      v223 = v213 + v214[8];
      *v223 = v209;
      *(v223 + 2) = v211;
      *(v223 + 3) = v210;
      v224 = v213 + v214[10];
      *v224 = HIDWORD(v246);
      *(v224 + 4) = 0;
      v225 = v213 + v214[11];
      *v225 = 0;
      *(v225 + 8) = 0;
      *(v225 + 16) = 1;
      v226 = v213 + v214[12];
      *v226 = v252;
      *(v226 + 8) = 0;
      v227 = v213 + v214[13];
      *v227 = v217;
      *(v227 + 4) = 0;
      LOBYTE(v221) = v249;
      *(v213 + v214[14]) = v250;
      *(v213 + v214[15]) = v221;
      v228 = (v213 + v214[16]);
      *v228 = 0;
      v228[1] = 0xE000000000000000;
      v229 = v213 + v214[17];
      *v229 = 0;
      *(v229 + 4) = 1;
      if (qword_101695288 != -1)
      {
        swift_once();
      }

      v230 = type metadata accessor for Logger();
      sub_1000076D4(v230, qword_10177C730);
      v231 = v244;
      sub_101197190(v213, v244, type metadata accessor for AccessoryMetadata);
      v232 = Logger.logObject.getter();
      v233 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        v272 = v235;
        *v234 = 136446210;
        v236 = sub_100230E34();
        v238 = v237;
        sub_1008AFD40(v231);
        v239 = sub_1000136BC(v236, v238, &v272);

        *(v234 + 4) = v239;
        _os_log_impl(&_mh_execute_header, v232, v233, "Metadata: %{public}s", v234, 0xCu);
        sub_100007BAC(v235);
      }

      else
      {

        sub_1008AFD40(v231);
      }

      return;
    }

    v17 = *(v16 - 2);
    v18 = *(v16 - 1);
    v19 = *v16;
    v20 = *(v16 - 24);
    if (v20 > 3)
    {
      break;
    }

    if (*(v16 - 24) <= 1u)
    {
      if (*(v16 - 24))
      {
        v34 = *(v16 - 2);

        sub_100017D5C(v18, v19);

        v272 = v18;
        v273 = v19;
        sub_1000E0A3C();
        v35 = DataProtocol.nullTerminatedUTF8String.getter();
        v263 = v36;
        if (!v36)
        {

          if (qword_101695288 != -1)
          {
            swift_once();
          }

          v179 = type metadata accessor for Logger();
          sub_1000076D4(v179, qword_10177C730);
          sub_100017D5C(v18, v19);
          v118 = Logger.logObject.getter();
          v180 = static os_log_type_t.error.getter();
          sub_100016590(v18, v19);
          v181 = os_log_type_enabled(v118, v180);
          v256 = v19;
          if (v181)
          {
            v182 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v272 = v183;
            *v182 = 136315138;
            v184 = Data.hexString.getter();
            v186 = v17;
            v187 = v18;
            v188 = sub_1000136BC(v184, v185, &v272);

            *(v182 + 4) = v188;
            v18 = v187;
            v17 = v186;
            _os_log_impl(&_mh_execute_header, v118, v180, "Could not convert manufacturerName data to UTF8 [%s]", v182, 0xCu);
            sub_100007BAC(v183);
          }

          goto LABEL_232;
        }

        v247 = v35;
        goto LABEL_32;
      }

      v25 = *(v16 - 2);
      v17 = *(v16 - 1);
      v18 = *v16;
      v19 >>= 62;
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          goto LABEL_201;
        }

        v44 = *(v17 + 16);
        v43 = *(v17 + 24);
        v26 = v43 - v44;
        if (__OFSUB__(v43, v44))
        {
          goto LABEL_254;
        }

        v45 = *(v16 - 1);
      }

      else
      {
        if (!v19)
        {
          v26 = BYTE6(v18);
LABEL_64:
          if (v26 != 8)
          {
LABEL_201:

            sub_100017D5C(v17, v18);

            sub_100016590(v17, v18);
            if (qword_101695288 != -1)
            {
              swift_once();
            }

            v138 = type metadata accessor for Logger();
            sub_1000076D4(v138, qword_10177C730);
            sub_100017D5C(v17, v18);
            v139 = Logger.logObject.getter();
            v140 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v139, v140))
            {
              v141 = swift_slowAlloc();
              *v141 = 134217984;
              if (v19 > 1)
              {
                v142 = v265;
                if (v19 == 2)
                {
                  v198 = *(v17 + 16);
                  v197 = *(v17 + 24);
                  v199 = __OFSUB__(v197, v198);
                  v143 = v197 - v198;
                  if (v199)
                  {
                    __break(1u);
                    goto LABEL_239;
                  }
                }

                else
                {
                  v143 = 0;
                }
              }

              else
              {
                v142 = v265;
                if (!v19)
                {
                  v143 = BYTE6(v18);
                  goto LABEL_242;
                }

LABEL_239:
                LODWORD(v143) = HIDWORD(v17) - v17;
                if (__OFSUB__(HIDWORD(v17), v17))
                {
                  __break(1u);
                }

                v143 = v143;
              }

LABEL_242:
              v265 = v142;
              *(v141 + 4) = v143;
              v200 = v141;
              sub_100016590(v17, v18);
              _os_log_impl(&_mh_execute_header, v139, v140, "Invalid length for productData: [%ld]", v200, 0xCu);
            }

            else
            {
              sub_100016590(v17, v18);
            }

            sub_100101B58();
            v245 = swift_allocError();
            v202 = v201;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v203 = swift_allocObject();
            *(v203 + 32) = 1635017060;
            *(v203 + 16) = xmmword_101385D80;
            *(v203 + 72) = &type metadata for Data;
            *(v203 + 40) = 0xE400000000000000;
            *(v203 + 48) = v17;
            *(v203 + 56) = v18;
            sub_100017D5C(v17, v18);
            v204 = NSCocoaErrorDomain;
            sub_10090403C(v203);
            swift_setDeallocating();
            sub_10000B3A8(v203 + 32, &unk_101695C20, &unk_101386D90);
            swift_deallocClassInstance();
            v205 = objc_allocWithZone(NSError);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v207 = [v205 initWithDomain:v204 code:2048 userInfo:isa];

            *v202 = v25;
            *(v202 + 8) = v207;
            *(v202 + 40) = 8;
            swift_willThrow();

            sub_100006654(v267, v265);
            sub_100016590(v17, v18);
            goto LABEL_233;
          }

          sub_100017D5C(v17, v18);
          sub_100016590(v17, v18);

          sub_100006654(v267, v265);
          v267 = v17;
          v265 = v18;
          goto LABEL_4;
        }

        v45 = *(v16 - 1);
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_253;
        }

        v26 = HIDWORD(v17) - v17;
      }

      sub_100017D5C(v45, v18);
      goto LABEL_64;
    }

    v27 = *(v16 - 2);
    if (v20 == 2)
    {

      sub_100017D5C(v18, v19);

      v272 = v18;
      v273 = v19;
      sub_1000E0A3C();
      v28 = DataProtocol.nullTerminatedUTF8String.getter();
      v264 = v29;
      if (!v29)
      {

        if (qword_101695288 != -1)
        {
          swift_once();
        }

        v169 = type metadata accessor for Logger();
        sub_1000076D4(v169, qword_10177C730);
        sub_100017D5C(v18, v19);
        v118 = Logger.logObject.getter();
        v170 = static os_log_type_t.error.getter();
        sub_100016590(v18, v19);
        v171 = os_log_type_enabled(v118, v170);
        v256 = v19;
        if (v171)
        {
          v172 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          v272 = v173;
          *v172 = 136315138;
          v174 = Data.hexString.getter();
          v176 = v17;
          v177 = v18;
          v178 = sub_1000136BC(v174, v175, &v272);

          *(v172 + 4) = v178;
          v18 = v177;
          v17 = v176;
          _os_log_impl(&_mh_execute_header, v118, v170, "Could not convert modelName data to UTF8 [%s]", v172, 0xCu);
          sub_100007BAC(v173);
        }

        goto LABEL_232;
      }

      v248 = v28;
LABEL_32:

      sub_100016590(v18, v19);
      goto LABEL_4;
    }

    sub_100017D5C(v18, v19);
    static Endianness.current.getter();
    sub_100235658();
    FixedWidthInteger.init(data:ofEndianness:)();

    v252 = v272;
    v255 = v273;
LABEL_4:
    ++v15;
    v16 += 4;
    if (v271 == v15)
    {
      v115 = v265;
      if (v265 >> 60 == 15)
      {

        goto LABEL_208;
      }

      v16 = v263;
      v15 = v264;
      if (!v263 || !v264)
      {

        v115 = v265;
        goto LABEL_208;
      }

      if ((v254 & 1) != 0 || (v251 & 1) != 0 || (v255 & 1) != 0 || (v253 & 1) != 0 || v250 == 4 || v249 == 5)
      {
        v116 = v267;
        v115 = v265;
        sub_10002E98C(v267, v265);

        sub_100006654(v116, v115);
        goto LABEL_208;
      }

      goto LABEL_245;
    }
  }

  if (*(v16 - 24) <= 5u)
  {
    if (v20 == 4)
    {
      v30 = *(v16 - 2);

      sub_100017D5C(v18, v19);
      static Endianness.current.getter();
      sub_100101824();
      FixedWidthInteger.init(data:ofEndianness:)();

      v253 = 0;
      v31 = v272;
      if (BYTE4(v272))
      {
        v31 = 0;
      }

      HIDWORD(v251) = v31;
      goto LABEL_4;
    }

    v39 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v39 != 2)
      {
        goto LABEL_192;
      }

      v47 = *(v18 + 16);
      v46 = *(v18 + 24);
      v40 = v46 - v47;
      if (__OFSUB__(v46, v47))
      {
        goto LABEL_252;
      }
    }

    else
    {
      if (!v39)
      {
        v40 = BYTE6(v19);
        goto LABEL_69;
      }

      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_251;
      }

      v40 = HIDWORD(v18) - v18;
    }

    sub_100017D5C(*(v16 - 1), *v16);
LABEL_69:
    if (v40 != 4)
    {
LABEL_192:

      sub_100017D5C(v18, v19);

      sub_100016590(v18, v19);
      if (qword_101695288 == -1)
      {
        goto LABEL_193;
      }

      goto LABEL_304;
    }

    sub_100017D5C(v18, v19);
    sub_100016590(v18, v19);
    v56 = Data.subdata(in:)();
    v260 = v57;
    v262 = Data.subdata(in:)();
    v268 = v58;
    v59 = Data.subdata(in:)();
    v266 = v60;
    v61 = v60 >> 62;
    v261 = v56;
    v259 = v59;
    if ((v60 >> 62) > 1)
    {
      if (v61 != 2)
      {
        goto LABEL_307;
      }

      if (*(v59 + 16) > 1)
      {
        goto LABEL_258;
      }

      if (*(v59 + 24) < 2)
      {
        goto LABEL_262;
      }

      v68 = v17;
      v17 = v18;
      v69 = __DataStorage._bytes.getter();
      if (!v69)
      {
        goto LABEL_310;
      }

      v18 = v69;
      v70 = __DataStorage._offset.getter();
      if (__OFSUB__(1, v70))
      {
        goto LABEL_268;
      }

      if (*(v259 + 16) > 0)
      {
        goto LABEL_272;
      }

      if (*(v259 + 24) < 1)
      {
        goto LABEL_276;
      }

      v258 = *(v18 + 1 - v70);
      v71 = __DataStorage._bytes.getter();
      if (!v71)
      {
        goto LABEL_319;
      }

      v18 = v71;
      v72 = __DataStorage._offset.getter();
      if (__OFSUB__(0, v72))
      {
        goto LABEL_284;
      }

      v257 = *(v18 - v72);
      v18 = v17;
      v17 = v68;
    }

    else
    {
      if (!v61)
      {
        v62 = v260;
        if ((v266 & 0xFE000000000000) == 0)
        {
          goto LABEL_257;
        }

        if ((v266 & 0xFF000000000000) == 0)
        {
          goto LABEL_265;
        }

        v257 = v259;
        v258 = v259 >> 8;
LABEL_117:
        v87 = v268 >> 62;
        if ((v268 >> 62) > 1)
        {
          if (v87 != 2)
          {
            goto LABEL_314;
          }

          if (*(v262 + 16) > 0)
          {
            goto LABEL_277;
          }

          if (*(v262 + 24) < 1)
          {
            goto LABEL_285;
          }

          v93 = v17;
          v17 = v18;
          v94 = __DataStorage._bytes.getter();
          if (!v94)
          {
            goto LABEL_321;
          }

          v18 = v94;
          v95 = __DataStorage._offset.getter();
          v96 = -v95;
          if (__OFSUB__(0, v95))
          {
            goto LABEL_294;
          }
        }

        else
        {
          if (!v87)
          {
            if ((v268 & 0xFF000000000000) == 0)
            {
              goto LABEL_278;
            }

            v88 = v262;
LABEL_149:
            v102 = v62 >> 62;
            if ((v62 >> 62) > 1)
            {
              if (v102 != 2)
              {
                goto LABEL_320;
              }

              if (*(v56 + 16) > 0)
              {
                goto LABEL_291;
              }

              if (*(v56 + 24) < 1)
              {
                goto LABEL_300;
              }

              v103 = v88;
              v260 = v17;
              v17 = v18;
              v108 = __DataStorage._bytes.getter();
              if (!v108)
              {
                goto LABEL_326;
              }

              v18 = v108;
              v109 = __DataStorage._offset.getter();
              v110 = -v109;
              if (__OFSUB__(0, v109))
              {
                goto LABEL_303;
              }
            }

            else
            {
              if (!v102)
              {
                v103 = v88;
                sub_100016590(v56, v62);
                sub_100016590(v262, v268);
                sub_100016590(v259, v266);
                sub_100016590(v18, v19);

                if ((v62 & 0xFF000000000000) == 0)
                {
                  goto LABEL_293;
                }

                LODWORD(v56) = v56;
                goto LABEL_178;
              }

              if (v56 < &_mh_execute_header || v56 > 0)
              {
                goto LABEL_296;
              }

              v103 = v88;
              v260 = v17;
              v17 = v18;
              v113 = __DataStorage._bytes.getter();
              if (!v113)
              {
                goto LABEL_327;
              }

              v18 = v113;
              v114 = __DataStorage._offset.getter();
              v110 = -v114;
              if (__OFSUB__(0, v114))
              {
                goto LABEL_299;
              }
            }

            LODWORD(v56) = *(v18 + v110);
            sub_100016590(v261, v62);
            sub_100016590(v262, v268);
            sub_100016590(v259, v266);
            sub_100016590(v17, v19);

LABEL_178:
            v254 = 0;
            LODWORD(v246) = (v258 << 8) & 0xFF00 | v257 | (v103 << 16) | (v56 << 24);
            goto LABEL_4;
          }

          if (v262 < &_mh_execute_header || v262 > 0)
          {
            goto LABEL_283;
          }

          v93 = v17;
          v17 = v18;
          v100 = __DataStorage._bytes.getter();
          if (!v100)
          {
            goto LABEL_323;
          }

          v18 = v100;
          v101 = __DataStorage._offset.getter();
          v96 = -v101;
          if (__OFSUB__(0, v101))
          {
            goto LABEL_288;
          }
        }

        v88 = *(v18 + v96);
        v18 = v17;
        v17 = v93;
        v62 = v260;
        v56 = v261;
        goto LABEL_149;
      }

      v256 = v19;
      if (v59 < 0x200000000)
      {
        goto LABEL_261;
      }

      v81 = v59;
      if (v59 > 1)
      {
        goto LABEL_261;
      }

      v19 = v17;
      v82 = v18;
      v17 = v266;
      v83 = __DataStorage._bytes.getter();
      if (!v83)
      {
        goto LABEL_308;
      }

      v18 = v83;
      v84 = __DataStorage._offset.getter();
      if (__OFSUB__(1, v84))
      {
        goto LABEL_266;
      }

      if (v81 > 0)
      {
        goto LABEL_270;
      }

      v17 = *(v18 + 1 - v84);
      v85 = __DataStorage._bytes.getter();
      if (!v85)
      {
        goto LABEL_313;
      }

      v18 = v85;
      v86 = __DataStorage._offset.getter();
      if (__OFSUB__(0, v86))
      {
        goto LABEL_275;
      }

      v258 = v17;
      v257 = *(v18 - v86);
      v17 = v19;
      v19 = v256;
      v18 = v82;
    }

    v62 = v260;
    v56 = v261;
    goto LABEL_117;
  }

  if (v20 != 6)
  {
    v21 = *(v16 - 1);
    v22 = *v16;
    if (v20 == 7)
    {
      sub_100017D5C(v21, v22);

      sub_100017D5C(v18, v19);
      static Endianness.current.getter();
      sub_1000198E8();
      FixedWidthInteger.init(data:ofEndianness:)();
      if ((v272 & 0x100) == 0)
      {
        v23 = v272;
        sub_100016590(v18, v19);

        if (v23 >= 3)
        {
          v24 = 3;
        }

        else
        {
          v24 = v23;
        }

        v250 = v24;
        goto LABEL_4;
      }

      if (qword_101695288 != -1)
      {
        swift_once();
      }

      v159 = type metadata accessor for Logger();
      sub_1000076D4(v159, qword_10177C730);
      sub_100017D5C(v18, v19);
      v118 = Logger.logObject.getter();
      v160 = static os_log_type_t.error.getter();
      sub_100016590(v18, v19);
      v161 = os_log_type_enabled(v118, v160);
      v256 = v19;
      if (v161)
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v272 = v163;
        *v162 = 136315138;
        v164 = Data.hexString.getter();
        v166 = v17;
        v167 = v18;
        v168 = sub_1000136BC(v164, v165, &v272);

        *(v162 + 4) = v168;
        v18 = v167;
        v17 = v166;
        _os_log_impl(&_mh_execute_header, v118, v160, "Could not convert batteryType data to UInt8 [%s]", v162, 0xCu);
        sub_100007BAC(v163);
      }
    }

    else
    {
      sub_100017D5C(v21, v22);

      sub_100017D5C(v18, v19);
      static Endianness.current.getter();
      sub_1000198E8();
      FixedWidthInteger.init(data:ofEndianness:)();
      if ((v272 & 0x100) == 0)
      {
        v37 = v272;
        sub_100016590(v18, v19);

        if (v37 >= 4)
        {
          v38 = 4;
        }

        else
        {
          v38 = v37;
        }

        v249 = v38;
        goto LABEL_4;
      }

      if (qword_101695288 != -1)
      {
        swift_once();
      }

      v149 = type metadata accessor for Logger();
      sub_1000076D4(v149, qword_10177C730);
      sub_100017D5C(v18, v19);
      v118 = Logger.logObject.getter();
      v150 = static os_log_type_t.error.getter();
      sub_100016590(v18, v19);
      v151 = os_log_type_enabled(v118, v150);
      v256 = v19;
      if (v151)
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v272 = v153;
        *v152 = 136315138;
        v154 = Data.hexString.getter();
        v156 = v17;
        v157 = v18;
        v158 = sub_1000136BC(v154, v155, &v272);

        *(v152 + 4) = v158;
        v18 = v157;
        v17 = v156;
        _os_log_impl(&_mh_execute_header, v118, v150, "Could not convert batteryState data to UInt8 [%s]", v152, 0xCu);
        sub_100007BAC(v153);
      }
    }

    goto LABEL_232;
  }

  v32 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_196;
    }

    v42 = *(v18 + 16);
    v41 = *(v18 + 24);
    v33 = v41 - v42;
    if (__OFSUB__(v41, v42))
    {
      goto LABEL_255;
    }

    goto LABEL_54;
  }

  if (!v32)
  {
    v33 = BYTE6(v19);
    goto LABEL_55;
  }

  if (__OFSUB__(HIDWORD(v18), v18))
  {
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    swift_once();
LABEL_193:
    v117 = type metadata accessor for Logger();
    sub_1000076D4(v117, qword_10177C730);
    sub_100017D5C(v18, v19);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    sub_100016590(v18, v19);
    v120 = os_log_type_enabled(v118, v119);
    v256 = v19;
    if (v120)
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v272 = v122;
      *v121 = 136315138;
      v123 = Data.hexString.getter();
      v125 = v17;
      v126 = v18;
      v127 = sub_1000136BC(v123, v124, &v272);

      *(v121 + 4) = v127;
      v18 = v126;
      v17 = v125;
      _os_log_impl(&_mh_execute_header, v118, v119, "Could not convert firmwareVersion data to VersionNumber [%s]", v121, 0xCu);
      sub_100007BAC(v122);
    }

LABEL_232:

    sub_100101B58();
    v245 = swift_allocError();
    v190 = v189;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 32) = 1635017060;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 72) = &type metadata for Data;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v18;
    v192 = v256;
    *(inited + 56) = v256;
    sub_100017D5C(v18, v192);
    v193 = NSCocoaErrorDomain;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    v194 = objc_allocWithZone(NSError);
    v195 = Dictionary._bridgeToObjectiveC()().super.isa;

    v196 = [v194 initWithDomain:v193 code:2048 userInfo:v195];

    *v190 = v17;
    *(v190 + 8) = v196;
    *(v190 + 40) = 8;
    swift_willThrow();

    sub_100006654(v267, v265);
    sub_100016590(v18, v192);
LABEL_233:

    return;
  }

  v33 = HIDWORD(v18) - v18;
LABEL_54:
  sub_100017D5C(*(v16 - 1), *v16);
LABEL_55:
  if (v33 != 4)
  {
LABEL_196:

    sub_100017D5C(v18, v19);

    sub_100016590(v18, v19);
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v128 = type metadata accessor for Logger();
    sub_1000076D4(v128, qword_10177C730);
    sub_100017D5C(v18, v19);
    v118 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    sub_100016590(v18, v19);
    v130 = os_log_type_enabled(v118, v129);
    v256 = v19;
    if (v130)
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v272 = v132;
      *v131 = 136315138;
      v133 = Data.hexString.getter();
      v135 = v17;
      v136 = v18;
      v137 = sub_1000136BC(v133, v134, &v272);

      *(v131 + 4) = v137;
      v18 = v136;
      v17 = v135;
      _os_log_impl(&_mh_execute_header, v118, v129, "Could not convert protocolVersion data to VersionNumber [%s]", v131, 0xCu);
      sub_100007BAC(v132);
    }

    goto LABEL_232;
  }

  sub_100017D5C(v18, v19);
  sub_100016590(v18, v19);
  v48 = Data.subdata(in:)();
  v262 = v49;
  v50 = Data.subdata(in:)();
  v268 = v51;
  v52 = Data.subdata(in:)();
  v266 = v53;
  v54 = v53 >> 62;
  v260 = v50;
  v261 = v48;
  v259 = v52;
  if ((v53 >> 62) <= 1)
  {
    if (!v54)
    {
      v55 = v262;
      if ((v266 & 0xFE000000000000) == 0)
      {
        goto LABEL_259;
      }

      if ((v266 & 0xFF000000000000) == 0)
      {
        goto LABEL_264;
      }

      v257 = v259;
      v258 = v259 >> 8;
LABEL_104:
      v79 = v268 >> 62;
      if ((v268 >> 62) > 1)
      {
        if (v79 != 2)
        {
          goto LABEL_315;
        }

        if (*(v50 + 16) > 0)
        {
          goto LABEL_281;
        }

        if (*(v50 + 24) < 1)
        {
          goto LABEL_286;
        }

        v89 = v17;
        v17 = v18;
        v90 = __DataStorage._bytes.getter();
        if (!v90)
        {
          goto LABEL_316;
        }

        v18 = v90;
        v91 = __DataStorage._offset.getter();
        v92 = -v91;
        if (__OFSUB__(0, v91))
        {
          goto LABEL_290;
        }
      }

      else
      {
        if (!v79)
        {
          if ((v268 & 0xFF000000000000) == 0)
          {
            goto LABEL_280;
          }

          v80 = v50;
LABEL_140:
          v99 = v55 >> 62;
          if ((v55 >> 62) > 1)
          {
            if (v99 != 2)
            {
              goto LABEL_318;
            }

            if (*(v48 + 16) > 0)
            {
              goto LABEL_295;
            }

            if (*(v48 + 24) < 1)
            {
              goto LABEL_298;
            }

            LODWORD(v251) = v80;
            v17 = v18;
            v104 = v55;
            v105 = __DataStorage._bytes.getter();
            if (!v105)
            {
              goto LABEL_325;
            }

            v18 = v105;
            v106 = __DataStorage._offset.getter();
            v107 = -v106;
            if (__OFSUB__(0, v106))
            {
              goto LABEL_302;
            }
          }

          else
          {
            if (!v99)
            {
              sub_100016590(v48, v55);
              sub_100016590(v50, v268);
              sub_100016590(v259, v266);
              sub_100016590(v18, v19);

              if ((v262 & 0xFF000000000000) == 0)
              {
                goto LABEL_292;
              }

              LODWORD(v48) = v48;
              goto LABEL_172;
            }

            if (v48 < &_mh_execute_header || v48 > 0)
            {
              goto LABEL_297;
            }

            LODWORD(v251) = v80;
            v17 = v18;
            v104 = v55;
            v111 = __DataStorage._bytes.getter();
            if (!v111)
            {
              goto LABEL_324;
            }

            v18 = v111;
            v112 = __DataStorage._offset.getter();
            v107 = -v112;
            if (__OFSUB__(0, v112))
            {
              goto LABEL_301;
            }
          }

          LODWORD(v48) = *(v18 + v107);
          sub_100016590(v261, v104);
          sub_100016590(v260, v268);
          sub_100016590(v259, v266);
          sub_100016590(v17, v19);

          v80 = v251;
LABEL_172:
          LODWORD(v251) = 0;
          HIDWORD(v246) = (v258 << 8) & 0xFF00 | v257 | (v80 << 16) | (v48 << 24);
          goto LABEL_4;
        }

        if (v50 < &_mh_execute_header || v50 > 0)
        {
          goto LABEL_282;
        }

        v89 = v17;
        v17 = v18;
        v97 = __DataStorage._bytes.getter();
        if (!v97)
        {
          goto LABEL_322;
        }

        v18 = v97;
        v98 = __DataStorage._offset.getter();
        v92 = -v98;
        if (__OFSUB__(0, v98))
        {
          goto LABEL_289;
        }
      }

      v80 = *(v18 + v92);
      v18 = v17;
      v17 = v89;
      v48 = v261;
      v55 = v262;
      v50 = v260;
      goto LABEL_140;
    }

    v256 = v19;
    if (v52 < 0x200000000)
    {
      goto LABEL_260;
    }

    v73 = v52;
    if (v52 > 1)
    {
      goto LABEL_260;
    }

    v19 = v17;
    v74 = v18;
    v17 = v266;
    v75 = __DataStorage._bytes.getter();
    if (!v75)
    {
      goto LABEL_309;
    }

    v18 = v75;
    v76 = __DataStorage._offset.getter();
    if (__OFSUB__(1, v76))
    {
      goto LABEL_267;
    }

    if (v73 > 0)
    {
      goto LABEL_269;
    }

    v17 = *(v18 + 1 - v76);
    v77 = __DataStorage._bytes.getter();
    if (!v77)
    {
      goto LABEL_312;
    }

    v18 = v77;
    v78 = __DataStorage._offset.getter();
    if (__OFSUB__(0, v78))
    {
      goto LABEL_274;
    }

    v258 = v17;
    v257 = *(v18 - v78);
    v17 = v19;
    v19 = v256;
    v18 = v74;
LABEL_103:
    v48 = v261;
    v55 = v262;
    v50 = v260;
    goto LABEL_104;
  }

  if (v54 == 2)
  {
    if (*(v52 + 16) > 1)
    {
      goto LABEL_256;
    }

    if (*(v52 + 24) < 2)
    {
      goto LABEL_263;
    }

    v63 = v17;
    v17 = v18;
    v64 = __DataStorage._bytes.getter();
    if (!v64)
    {
      goto LABEL_311;
    }

    v18 = v64;
    v65 = __DataStorage._offset.getter();
    if (__OFSUB__(1, v65))
    {
      goto LABEL_271;
    }

    if (*(v259 + 16) > 0)
    {
      goto LABEL_273;
    }

    if (*(v259 + 24) < 1)
    {
      goto LABEL_279;
    }

    v258 = *(v18 + 1 - v65);
    v66 = __DataStorage._bytes.getter();
    if (!v66)
    {
      goto LABEL_317;
    }

    v18 = v66;
    v67 = __DataStorage._offset.getter();
    if (__OFSUB__(0, v67))
    {
      goto LABEL_287;
    }

    v257 = *(v18 - v67);
    v18 = v17;
    v17 = v63;
    goto LABEL_103;
  }

  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
}

uint64_t sub_101196CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_101197190(a1, a2, type metadata accessor for AccessoryMetadata);
  sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_101196D0C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_100101AA8(a1, &v6 - v4);
  swift_storeEnumTagMultiPayload();
  return Just.init(_:)();
}

uint64_t sub_101196DBC(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v18[-1] - v13);
  sub_1000D2A70(a1, &v18[-1] - v13, &qword_1016C99A8, &qword_101409E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v14[1];
    v17 = *v14;
    v18[0] = v15;
    *(v18 + 9) = *(v14 + 25);
    sub_100101AA8(&v17, v12);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_10000B3A8(v12, &qword_1016C99A8, &qword_101409E80);
    return sub_100101B04(&v17);
  }

  else
  {
    sub_100D5DD08(v14, v7);
    sub_101197190(v7, v12, type metadata accessor for AccessoryMetadata);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_10000B3A8(v12, &qword_1016C99A8, &qword_101409E80);
    return sub_1008AFD40(v7);
  }
}

uint64_t sub_101196FBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return v0;
}

uint64_t sub_10119700C()
{
  sub_101196FBC();

  return swift_deallocClassInstance();
}

unint64_t sub_101197078()
{
  result = qword_1016C98D0;
  if (!qword_1016C98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C98D0);
  }

  return result;
}

uint64_t sub_1011970CC()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

uint64_t type metadata accessor for BluetoothCommunicationCoordinator.Error()
{
  result = qword_1016C9AB8;
  if (!qword_1016C9AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101197190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011972A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_101197378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharedBeaconRecord(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_101197470(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  type metadata accessor for SharedBeaconRecord(319);
  if (v7 <= 0x3F)
  {
    sub_100289B54(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10119750C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C9C10, &qword_10140A058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101198230();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for SharedBeaconRecord(0);
  sub_101198470(&qword_1016A4918, type metadata accessor for SharedBeaconRecord);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for LegacyShareEnvelope(0) + 20));
    v12[15] = 1;
    sub_1000BC4D4(&qword_10169C438, &qword_10140A060);
    sub_1011982D8(&qword_10169C440, &qword_10169C448);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_101197728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C9C30, &qword_10140A078);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for LegacyShareEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101198230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  sub_101198470(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord);
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100591C20(v24, v17);
  sub_1000BC4D4(&qword_10169C438, &qword_10140A060);
  v26 = 1;
  sub_1011982D8(&qword_10169C480, &qword_10169C488);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_1011984B8(v17, v21, type metadata accessor for LegacyShareEnvelope);
  sub_100007BAC(a1);
  return sub_101198374(v17, type metadata accessor for LegacyShareEnvelope);
}

uint64_t sub_101197A84(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C9C20, &unk_10140A068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101198284();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for SharedBeaconRecord(0);
  sub_101198470(&qword_1016A4918, type metadata accessor for SharedBeaconRecord);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for FamilyShareEnvelopeV1(0) + 20));
    v12[15] = 1;
    sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
    sub_1011983D4(&qword_10169C468, &qword_10169C470);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_101197CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C9C38, &qword_10140A080);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for FamilyShareEnvelopeV1(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101198284();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  sub_101198470(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord);
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100591C20(v24, v17);
  sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
  v26 = 1;
  sub_1011983D4(&qword_10169C498, &qword_10169C4A0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_1011984B8(v17, v21, type metadata accessor for FamilyShareEnvelopeV1);
  sub_100007BAC(a1);
  return sub_101198374(v17, type metadata accessor for FamilyShareEnvelopeV1);
}

uint64_t sub_101197FFC(uint64_t a1)
{
  v2 = sub_101198230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101198038(uint64_t a1)
{
  v2 = sub_101198230();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011980A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6542646572616873 && a2 == 0xEC0000006E6F6361;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B6C616974696E69 && a2 == 0xEB00000000737965)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_101198188(uint64_t a1)
{
  v2 = sub_101198284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011981C4(uint64_t a1)
{
  v2 = sub_101198284();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_101198230()
{
  result = qword_1016C9C18;
  if (!qword_1016C9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C18);
  }

  return result;
}

unint64_t sub_101198284()
{
  result = qword_1016C9C28;
  if (!qword_1016C9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C28);
  }

  return result;
}

uint64_t sub_1011982D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C438, &qword_10140A060);
    sub_101198470(a2, type metadata accessor for CryptoKeys);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101198374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011983D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C460, &qword_1013B1CA0);
    sub_101198470(a2, type metadata accessor for FamilyCryptoKeysV1);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101198470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1011984B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_101198544()
{
  result = qword_1016C9C40;
  if (!qword_1016C9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C40);
  }

  return result;
}

unint64_t sub_10119859C()
{
  result = qword_1016C9C48;
  if (!qword_1016C9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C48);
  }

  return result;
}

unint64_t sub_1011985F4()
{
  result = qword_1016C9C50;
  if (!qword_1016C9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C50);
  }

  return result;
}

unint64_t sub_10119864C()
{
  result = qword_1016C9C58;
  if (!qword_1016C9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C58);
  }

  return result;
}

unint64_t sub_1011986A4()
{
  result = qword_1016C9C60;
  if (!qword_1016C9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C60);
  }

  return result;
}

unint64_t sub_1011986FC()
{
  result = qword_1016C9C68;
  if (!qword_1016C9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C68);
  }

  return result;
}

uint64_t sub_101198758(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      v7 = *(a3 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_mapHandle);
      v6 = sp_key_index_map_contains_key();

      return v6 & 1;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v6 = sub_101198BFC(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

  return v6 & 1;
}

uint64_t sub_1011988BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_mapHandle);
  sp_key_index_map_destroy();
  sub_100429ACC(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_beaconIdentifier);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeaconKeyIndexMap()
{
  result = qword_1016C9CA0;
  if (!qword_1016C9CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101198984()
{
  result = type metadata accessor for BeaconIdentifier();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_101198A2C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_mapHandle);
  record_length = sp_key_index_map_get_record_length();
  if (record_length == 32)
  {
    sub_100017D5C(a1, a2);

    if (sub_101198758(a1, a2, v2))
    {
      sub_100016590(a1, a2);
      LOBYTE(a1) = 0;
      LODWORD(v9) = 0;
      return v9 | (a1 << 32);
    }

LABEL_8:
    sub_100035310(6, a1, a2, &v13);
    v10 = v13;
    v9 = v14;
    v11 = sub_1000355E4(v13, v14);
    a1 = HIDWORD(v11) & 1;
    sub_100016590(v10, v9);
    LODWORD(v9) = v11;
    return v9 | (a1 << 32);
  }

  if (record_length != 10)
  {
    LODWORD(v9) = 0;
    LOBYTE(a1) = 1;
    return v9 | (a1 << 32);
  }

  sub_100017D5C(a1, a2);
  sub_100017D5C(a1, a2);
  sub_10002EA98(6, a1, a2, &v13);
  v7 = v13;
  v8 = v14;
  v9 = sub_1000355E4(v13, v14);
  sub_100016590(v7, v8);
  if ((v9 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  sub_100016590(a1, a2);
  LOBYTE(a1) = 0;
  return v9 | (a1 << 32);
}

uint64_t sub_101198BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      v8 = *(a4 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_mapHandle);
      return sp_key_index_map_contains_key();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AccessoryProductInfo()
{
  result = qword_1016C9DB0;
  if (!qword_1016C9DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101198D08()
{
  type metadata accessor for ServerStatusCode();
  if (v0 <= 0x3F)
  {
    sub_101199020(319, &qword_10169D5F0, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_101199020(319, &qword_1016A8838, &type metadata for Int, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_101199020(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100838A34(319, &qword_1016A8128, &type metadata accessor for URL);
          if (v4 <= 0x3F)
          {
            sub_100838A34(319, &qword_1016A86B0, type metadata accessor for AccessoryInfoResponseContent.Configuration);
            if (v5 <= 0x3F)
            {
              sub_100838A88();
              if (v6 <= 0x3F)
              {
                sub_101199020(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for URL();
                  if (v8 <= 0x3F)
                  {
                    sub_101199020(319, &qword_101699980, &type metadata for String, &type metadata accessor for Array);
                    if (v9 <= 0x3F)
                    {
                      sub_101199020(319, &unk_1016A8848, &type metadata for Coordinates, &type metadata accessor for Optional);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_101199020(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_101199070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v158 - v11;
  v13 = __chkstk_darwin(v10);
  v186 = &v158 - v14;
  v15 = __chkstk_darwin(v13);
  v185 = &v158 - v16;
  v17 = __chkstk_darwin(v15);
  v184 = &v158 - v18;
  __chkstk_darwin(v17);
  v183 = &v158 - v19;
  v20 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v192 = &v158 - v22;
  v23 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v191 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v190 = &v158 - v27;
  v28 = type metadata accessor for ServerStatusCode();
  v188 = *(v28 - 8);
  v189 = v28;
  v29 = *(v188 + 64);
  __chkstk_darwin(v28);
  v187 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [v2 beaconGroupVersion];
  if (v31)
  {
    v177 = [v2 beaconGroupVersion];
  }

  else
  {
    v177 = 0;
  }

  (*(v188 + 104))(v187, enum case for ServerStatusCode.success(_:), v189);
  v176 = [v2 eligibleForPairing];
  v175 = [v2 hidden];
  v32 = [v2 findmyProductId];
  v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v173 = v33;

  v172 = [v2 isHELEAccessory];
  v171 = [v2 isManagedAccessory];
  v170 = [v2 supportBeaconGroupInfo];
  v34 = [v2 modelName];
  v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v168 = v35;

  v36 = [v2 manufacturerName];
  v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v166 = v37;

  v193 = v2;
  v38 = [v2 defaultRole];
  v39 = v38;
  if (v38)
  {
    v165 = [v38 roleId];
  }

  else
  {
    v165 = 0;
  }

  v40 = [v193 appBundleIdentifier];
  if (v40)
  {
    v41 = v40;
    v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v163 = v42;
  }

  else
  {
    v164 = 0;
    v163 = 0;
  }

  v43 = [v193 lowBatteryInfoURL];
  if (v43)
  {
    v44 = v190;
    v45 = v43;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v44;
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v190;
  }

  v178 = v5;
  v48 = *(v5 + 56);
  v48(v46, v47, 1, v4);
  v48(v191, 1, 1, v4);
  v49 = v193;
  v50 = [v193 version];
  v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v161 = v51;

  [v49 txPower];
  v53 = v52;
  v54 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  (*(*(v54 - 8) + 56))(v192, 1, 1, v54);
  v160 = sub_1010D8CF8([v49 capabilities]);
  v55 = [v49 layoutTemplate];
  v180 = a1;
  v179 = v4;
  v182 = v9;
  v181 = v12;
  v159 = v31;
  if (!v55)
  {
    v61 = 0;
    goto LABEL_32;
  }

  v56 = v55;
  sub_10083C300();
  v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v57 >> 62)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
    if (v58)
    {
      goto LABEL_16;
    }

LABEL_31:

    v61 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v58)
  {
    goto LABEL_31;
  }

LABEL_16:
  v200 = _swiftEmptyArrayStorage;
  result = sub_101124538(0, v58 & ~(v58 >> 63), 0);
  if (v58 < 0)
  {
    __break(1u);
    return result;
  }

  v60 = 0;
  v61 = v200;
  v194 = v58 - 1;
  v195 = v57 & 0xC000000000000001;
  v196 = v57;
  if ((v57 & 0xC000000000000001) == 0)
  {
    goto LABEL_19;
  }

LABEL_18:
  for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v57 + 8 * v60 + 32))
  {
    v63 = i;
    LODWORD(v198) = [i partIdentifier];
    v64 = [v63 partType];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v197 = v66;

    v67 = [v63 partName];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71 = [v63 partSymbol];
    if (v71)
    {
      v72 = v71;
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v76 = [v63 isPrimary];

    v77 = v61;
    v200 = v61;
    v79 = v61[2];
    v78 = v61[3];
    if (v79 >= v78 >> 1)
    {
      sub_101124538((v78 > 1), v79 + 1, 1);
      v77 = v200;
    }

    v77[2] = v79 + 1;
    v61 = v77;
    v80 = &v77[8 * v79];
    *(v80 + 32) = v198;
    v81 = *&v199[3];
    *(v80 + 33) = *v199;
    *(v80 + 9) = v81;
    v82 = v197;
    v80[5] = v65;
    v80[6] = v82;
    v80[7] = v68;
    v80[8] = v70;
    v80[9] = v73;
    v80[10] = v75;
    *(v80 + 88) = v76;
    if (v194 == v60)
    {
      break;
    }

    ++v60;
    v57 = v196;
    if (v195)
    {
      goto LABEL_18;
    }

LABEL_19:
    ;
  }

  v49 = v193;
LABEL_32:
  v83 = [v49 defaultHeroIcon];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v84 = [v49 defaultListIcon];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = [v49 defaultHeroIcon2x];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v86 = [v49 defaultListIcon2x];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v87 = [v49 defaultHeroIcon3x];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v88 = [v49 defaultListIcon3x];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v89 = [v49 learnModeMetadata];
  v90 = [v89 title];

  if (v90)
  {
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v197 = v92;
    v198 = v91;
  }

  else
  {
    v197 = 0;
    v198 = 0;
  }

  v93 = v193;
  v94 = [v193 learnModeMetadata];
  v95 = [v94 moreDescription];

  v196 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = [v93 disableMetadata];
  v97 = [v96 title];

  if (v97)
  {
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v194 = v99;
    v195 = v98;
  }

  else
  {
    v194 = 0;
    v195 = 0;
  }

  LODWORD(v158) = v158 == 0;
  v100 = v159 == 0;
  v101 = v193;
  v102 = [v193 disableMetadata];
  v103 = [v102 moreDescription];

  v159 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = [v101 learnModeMetadata];
  [v104 percentageX];
  v106 = v105;

  v107 = [v101 learnModeMetadata];
  [v107 percentageY];
  v109 = v108;

  v110 = [v101 disableMetadata];
  [v110 percentageX];
  v112 = v111;

  v113 = [v101 disableMetadata];
  [v113 percentageY];
  v115 = v114;

  v116 = [v101 learnModeMetadata];
  v117 = [v116 image];

  v118 = type metadata accessor for AccessoryProductInfo();
  v119 = v180;
  v120 = v180 + v118[38];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v121 = [v101 disableMetadata];
  v122 = [v121 image];

  v123 = v119 + v118[39];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v124 = [v101 learnModeMetadata];
  v125 = [v124 image2x];

  v126 = v119 + v118[40];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v127 = [v101 disableMetadata];
  v128 = [v127 image2x];

  v129 = v119 + v118[41];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v130 = [v101 learnModeMetadata];
  v131 = [v130 image3x];

  v132 = v119 + v118[42];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v133 = [v101 disableMetadata];
  v134 = [v133 image3x];

  v135 = v119 + v118[43];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  *v119 = v177;
  *(v119 + 8) = v100;
  (*(v188 + 32))(v119 + v118[5], v187, v189);
  *(v119 + v118[6]) = v176;
  *(v119 + v118[7]) = v175;
  *(v119 + v118[8]) = 2;
  v136 = (v119 + v118[9]);
  v137 = v173;
  *v136 = v174;
  v136[1] = v137;
  *(v119 + v118[10]) = v172;
  *(v119 + v118[11]) = v171;
  *(v119 + v118[12]) = v170;
  v138 = (v119 + v118[13]);
  v139 = v168;
  *v138 = v169;
  v138[1] = v139;
  v140 = (v119 + v118[14]);
  v141 = v166;
  *v140 = v167;
  v140[1] = v141;
  v142 = v119 + v118[15];
  *v142 = v165;
  *(v142 + 8) = v158;
  v143 = (v119 + v118[16]);
  v144 = v163;
  *v143 = v164;
  v143[1] = v144;
  sub_1000D2AD8(v190, v119 + v118[17], &unk_101696AC0, &qword_101390A60);
  sub_1000D2AD8(v191, v119 + v118[18], &unk_101696AC0, &qword_101390A60);
  v145 = (v119 + v118[19]);
  v146 = v161;
  *v145 = v162;
  v145[1] = v146;
  *(v119 + v118[20]) = v53;
  sub_1000D2AD8(v192, v119 + v118[21], &qword_1016A62E8, &qword_1013B3CB0);
  *(v119 + v118[22]) = v160;
  *(v119 + v118[23]) = v61;
  *(v119 + v118[24]) = xmmword_10138BBF0;
  *(v119 + v118[25]) = xmmword_10138BBF0;
  v147 = *(v178 + 32);
  v148 = v179;
  v147(v119 + v118[26], v183, v179);
  v147(v119 + v118[27], v184, v148);
  v147(v119 + v118[28], v185, v148);
  v147(v119 + v118[29], v186, v148);
  v147(v119 + v118[30], v181, v148);
  result = (v147)(v119 + v118[31], v182, v148);
  v149 = (v119 + v118[32]);
  v150 = v197;
  *v149 = v198;
  v149[1] = v150;
  v151 = v195;
  *(v119 + v118[33]) = v196;
  v152 = (v119 + v118[34]);
  v153 = v194;
  *v152 = v151;
  v152[1] = v153;
  *(v119 + v118[35]) = v159;
  v154 = v119 + v118[36];
  *v154 = v106;
  *(v154 + 8) = v109;
  *(v154 + 16) = 0;
  v155 = v119 + v118[37];
  *v155 = v112;
  *(v155 + 8) = v115;
  *(v155 + 16) = 0;
  *(v119 + v118[44]) = 2;
  *(v119 + v118[45]) = 2;
  *(v119 + v118[46]) = 2;
  v156 = (v119 + v118[47]);
  *v156 = 0;
  v156[1] = 0;
  v157 = (v119 + v118[48]);
  *v157 = 0;
  v157[1] = 0;
  return result;
}

uint64_t sub_10119A0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a1;
  v171 = a2;
  v175 = type metadata accessor for AccessoryInfoResponseContent(0);
  v2 = *(*(v175 - 1) + 64);
  v3 = __chkstk_darwin(v175);
  v163 = (&v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v161 = &v149 - v5;
  v6 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v158 = &v149 - v8;
  v159 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v157 = *(v159 - 8);
  v9 = *(v157 + 64);
  __chkstk_darwin(v159);
  v156 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v162 = &v149 - v13;
  v172 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v176 = *(v172 - 8);
  v14 = *(v176 + 64);
  __chkstk_darwin(v172);
  v160 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ServerStatusCode();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v149 - v22;
  v24 = type metadata accessor for AccessoryProductInfo();
  v170 = *(v24 - 1);
  v25 = *(v170 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 68);
  v30 = type metadata accessor for URL();
  v154 = *(v30 - 8);
  v31 = *(v154 + 56);
  v168 = v29;
  v32 = v29 + v28;
  v33 = v172;
  v31(v32, 1, 1, v30);
  v167 = v24[18];
  v155 = v30;
  v31(&v28[v167], 1, 1, v30);
  v34 = *(v176 + 56);
  v169 = v24[21];
  v152 = v176 + 56;
  v153 = v34;
  v34(&v28[v169], 1, 1, v33);
  v35 = &v28[v24[24]];
  *v35 = xmmword_10138BBF0;
  v173 = v28;
  v174 = v24;
  v36 = &v28[v24[25]];
  v164 = v35;
  v165 = v36;
  *v36 = xmmword_10138BBF0;
  v37 = v175;
  v38 = *(v17 + 16);
  v39 = v166;
  v151 = v175[10];
  v150 = v38;
  v38(v23, v166 + v151, v16);
  (*(v17 + 104))(v21, enum case for ServerStatusCode.notModified(_:), v16);
  sub_1011A1B80(&qword_1016C9EA0, &type metadata accessor for ServerStatusCode);
  LOBYTE(v28) = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v17 + 8);
  v40(v21, v16);
  v40(v23, v16);
  if (v28)
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177C578);
    v42 = v39;
    v43 = v39;
    v44 = v163;
    sub_1011A08BC(v43, v163, type metadata accessor for AccessoryInfoResponseContent);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v177[0] = v48;
      *v47 = 136446210;
      v49 = *(v44 + 16);
      v50 = *(v44 + 24);

      sub_1011A0924(v44, type metadata accessor for AccessoryInfoResponseContent);
      v51 = sub_1000136BC(v49, v50, v177);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s product info has NOT changed. Skipping", v47, 0xCu);
      sub_100007BAC(v48);

LABEL_15:

LABEL_17:
      sub_1011A0924(v42, type metadata accessor for AccessoryInfoResponseContent);
      v64 = v173;
      sub_10000B3A8(v168 + v173, &unk_101696AC0, &qword_101390A60);
      sub_10000B3A8(v64 + v167, &unk_101696AC0, &qword_101390A60);
      sub_10000B3A8(v64 + v169, &qword_1016A62E8, &qword_1013B3CB0);
      sub_100006654(*v164, *(v164 + 1));
      sub_100006654(*v165, *(v165 + 1));
      return (*(v170 + 56))(v171, 1, 1, v174);
    }

    goto LABEL_16;
  }

  v52 = v162;
  sub_1000D2A70(v39 + v37[6], v162, &qword_1016A62E8, &qword_1013B3CB0);
  v42 = v39;
  if ((*(v176 + 48))(v52, 1, v33) == 1)
  {
    v53 = &qword_1016A62E8;
    v54 = &qword_1013B3CB0;
LABEL_10:
    sub_10000B3A8(v52, v53, v54);
    goto LABEL_11;
  }

  v55 = v160;
  sub_1011A07E4(v52, v160, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v52 = v158;
  sub_1000D2A70(v39 + v37[7], v158, &qword_1016A62E0, &unk_1013B8C30);
  if ((*(v157 + 48))(v52, 1, v159) == 1)
  {
    sub_1011A0924(v55, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    v53 = &qword_1016A62E0;
    v54 = &unk_1013B8C30;
    goto LABEL_10;
  }

  v66 = v52;
  v67 = v156;
  sub_1011A07E4(v66, v156, type metadata accessor for AccessoryInfoResponseContent.Assets);
  v68 = *(v39 + 80);
  if (v68 == 2)
  {
    sub_1011A0924(v67, type metadata accessor for AccessoryInfoResponseContent.Assets);
    sub_1011A0924(v55, type metadata accessor for AccessoryInfoResponseContent.Configuration);
LABEL_11:
    v44 = v161;
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000076D4(v56, qword_10177C578);
    sub_1011A08BC(v42, v44, type metadata accessor for AccessoryInfoResponseContent);
    v45 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v177[0] = v59;
      *v58 = 136446210;
      v60 = sub_100753C94();
      v62 = v61;
      sub_1011A0924(v44, type metadata accessor for AccessoryInfoResponseContent);
      v63 = sub_1000136BC(v60, v62, v177);

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v45, v57, "Invalid response: %{public}s", v58, 0xCu);
      sub_100007BAC(v59);

      goto LABEL_15;
    }

LABEL_16:

    sub_1011A0924(v44, type metadata accessor for AccessoryInfoResponseContent);
    goto LABEL_17;
  }

  v69 = *(v39 + 8);
  if (v69)
  {
    v70 = 0;
  }

  else
  {
    v70 = *v39;
  }

  v71 = *(v39 + 88) | (*(v39 + 92) << 32);
  v73 = v173;
  v72 = v174;
  *v173 = v70;
  *(v73 + 8) = v69;
  v150(v73 + v72[5], v42 + v151, v16);
  *(v73 + v72[6]) = *(v42 + 32) & 1;
  *(v73 + v72[7]) = *(v42 + 36) & 1;
  v74 = v72[16];
  v75 = v73 + v72[15];
  *(v73 + v72[8]) = *(v42 + 37) & 1;
  v76 = *(v42 + 24);
  v77 = (v73 + v72[9]);
  *v77 = *(v42 + 16);
  v77[1] = v76;
  *(v73 + v72[10]) = *(v42 + 33);
  v78 = (v73 + v74);
  *(v73 + v72[11]) = *(v42 + 34);
  *(v73 + v72[12]) = *(v42 + 35);
  v79 = *(v55 + 40);
  v80 = (v73 + v72[13]);
  *v80 = *(v55 + 32);
  v80[1] = v79;
  v81 = *(v55 + 24);
  v82 = (v73 + v72[14]);
  *v82 = *(v55 + 16);
  v82[1] = v81;
  LOBYTE(v82) = *(v55 + 88);
  *v75 = *(v55 + 80);
  v75[8] = v82;
  v83 = *(v55 + 8);
  *v78 = *v55;
  v78[1] = v83;
  v84 = v172;
  v85 = *(v172 + 44);

  sub_1011A084C(v55 + v85, v168 + v73);
  sub_1011A084C(v55 + v84[12], v73 + v167);
  v86 = (v42 + v175[8]);
  v87 = v86[1];
  if (v87)
  {
    v88 = *v86;
    v89 = v87;
  }

  else
  {
    v88 = 0;
    v89 = 0xE000000000000000;
  }

  v90 = v173;
  v91 = v174;
  v92 = (v173 + v174[19]);
  *v92 = v88;
  v92[1] = v89;
  v93 = v160;
  v94 = v160 + v84[13];
  v95 = *v94;
  if (*(v94 + 8))
  {
    v95 = 0.0;
  }

  v168 = v91[23];
  *&v90[v91[20]] = v95;

  v96 = v169;
  sub_10000B3A8(&v90[v169], &qword_1016A62E8, &qword_1013B3CB0);
  sub_1011A08BC(v93, &v90[v96], type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v153(&v90[v96], 0, 1, v84);
  v97 = sub_10074BC38(v68 & 0xFFFFFFFF01010101, v71 & 0xFFFFFFFFFFLL);
  *&v90[v91[22]] = sub_1010D8CF8(v97);
  v98 = *(v154 + 16);
  v99 = v156;
  v100 = v155;
  v98(&v90[v91[26]], v156, v155);
  v101 = v159;
  v98(&v90[v91[27]], v99 + *(v159 + 20), v100);
  v98(&v90[v91[28]], v99 + v101[6], v100);
  v98(&v90[v91[29]], v99 + v101[7], v100);
  v98(&v90[v91[30]], v99 + v101[8], v100);
  v98(&v90[v91[31]], v99 + v101[9], v100);
  v176 = *(v42 + v175[11]);
  *(v168 + v90) = v176;
  v102 = (v93 + v84[15]);
  v103 = *v102;
  v104 = v102[1];
  v105 = &v90[v91[32]];
  *v105 = v103;
  *(v105 + 1) = v104;
  v169 = v104;
  v107 = _swiftEmptyArrayStorage;
  v168 = *(v93 + v84[16]);
  v106 = v168;
  if (!v168)
  {
    v106 = _swiftEmptyArrayStorage;
  }

  *&v90[v91[33]] = v106;
  v108 = (v93 + v84[17]);
  v109 = *v108;
  v110 = v108[1];
  v111 = &v90[v91[34]];
  *v111 = v109;
  *(v111 + 1) = v110;
  v167 = v110;
  v163 = *(v93 + v84[18]);
  if (v163)
  {
    v107 = v163;
  }

  *&v90[v91[35]] = v107;
  v112 = v93 + v84[19];
  v113 = *v112;
  v114 = *(v112 + 8);
  v120 = *(v112 + 16) == 0;
  v115 = 0xBFF0000000000000;
  if (!v120)
  {
    v113 = 0xBFF0000000000000;
    v114 = 0xBFF0000000000000;
  }

  v116 = &v90[v91[36]];
  *v116 = v113;
  *(v116 + 1) = v114;
  v116[16] = 0;
  v117 = v93 + v84[20];
  v118 = *v117;
  v119 = *(v117 + 8);
  LODWORD(v117) = *(v117 + 16);
  v120 = v117 == 0;
  if (v117)
  {
    v121 = 0xBFF0000000000000;
  }

  else
  {
    v121 = v118;
  }

  if (v120)
  {
    v115 = v119;
  }

  v122 = &v90[v91[37]];
  *v122 = v121;
  *(v122 + 1) = v115;
  v122[16] = 0;
  v98(&v90[v91[38]], v99 + v101[10], v100);
  v98(&v90[v91[39]], v99 + v101[11], v100);
  v98(&v90[v91[40]], v99 + v101[12], v100);
  v98(&v90[v91[41]], v99 + v101[13], v100);
  v98(&v90[v91[42]], v99 + v101[14], v100);
  v98(&v90[v91[43]], v99 + v101[15], v100);
  v123 = (v42 + v175[9]);
  v124 = v123[1];
  if (!v124)
  {

    v133 = v99;
LABEL_52:
    sub_1011A0924(v133, type metadata accessor for AccessoryInfoResponseContent.Assets);
    sub_1011A0924(v93, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    goto LABEL_53;
  }

  v125 = *v123;
  v126 = v123[4];
  v127 = v123[5];
  v128 = HIBYTE(v124) & 0xF;
  if ((v124 & 0x2000000000000000) == 0)
  {
    v128 = v125 & 0xFFFFFFFFFFFFLL;
  }

  if (v128)
  {

    v129 = Data.init(base64Encoded:options:)();
    v131 = v130;
    v132 = v164;
    sub_100006654(*v164, *(v164 + 1));
    *v132 = v129;
    v132[1] = v131;
  }

  else
  {
  }

  v93 = v160;
  v134 = HIBYTE(v127) & 0xF;
  if ((v127 & 0x2000000000000000) == 0)
  {
    v134 = v126 & 0xFFFFFFFFFFFFLL;
  }

  if (!v134)
  {
    v133 = v156;
    goto LABEL_52;
  }

  v135 = Data.init(base64Encoded:options:)();
  v137 = v136;
  sub_1011A0924(v156, type metadata accessor for AccessoryInfoResponseContent.Assets);
  sub_1011A0924(v93, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v138 = v165;
  sub_100006654(*v165, *(v165 + 1));
  *v138 = v135;
  v138[1] = v137;
LABEL_53:
  v140 = v173;
  v139 = v174;
  v141 = v174[45];
  v142 = v174[46];
  v143 = (v173 + v174[47]);
  v144 = (v173 + v174[48]);
  *(v173 + v174[44]) = *(v42 + 38);
  *(v140 + v141) = *(v42 + 39);
  v145 = *(v42 + 56);
  *v143 = *(v42 + 48);
  v143[1] = v145;
  *(v140 + v142) = *(v42 + 40);
  v147 = *(v42 + 64);
  v146 = *(v42 + 72);

  sub_1011A0924(v42, type metadata accessor for AccessoryInfoResponseContent);
  *v144 = v147;
  v144[1] = v146;
  v148 = v171;
  sub_1011A08BC(v140, v171, type metadata accessor for AccessoryProductInfo);
  (*(v170 + 56))(v148, 0, 1, v139);
  return sub_1011A0924(v140, type metadata accessor for AccessoryProductInfo);
}

id sub_10119B27C()
{
  v1 = v0;
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v168 - v9;
  v11 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v168 - v16;
  v18 = [objc_allocWithZone(SPDiscoveredAccessoryProductInformation) init];
  v19 = v18;
  v20 = 0;
  if ((v1[1] & 1) == 0)
  {
    v20 = *v1;
  }

  [v18 setBeaconGroupVersion:v20];
  v21 = type metadata accessor for AccessoryProductInfo();
  [v19 setHidden:*(v1 + v21[7])];
  [v19 setSupportBeaconGroupInfo:*(v1 + v21[12]) & 1];
  [v19 setIsHELEAccessory:*(v1 + v21[10]) & 1];
  [v19 setIsManagedAccessory:*(v1 + v21[11]) & 1];
  [v19 setEligibleForPairing:*(v1 + v21[6])];
  v22 = (v1 + v21[9]);
  v23 = *v22;
  v24 = v22[1];
  v25 = String._bridgeToObjectiveC()();
  [v19 setFindmyProductId:v25];

  v26 = (v1 + v21[14]);
  v27 = *v26;
  v28 = v26[1];
  v29 = String._bridgeToObjectiveC()();
  [v19 setManufacturerName:v29];

  v30 = (v1 + v21[13]);
  v31 = *v30;
  v32 = v30[1];
  v33 = String._bridgeToObjectiveC()();
  [v19 setModelName:v33];

  v170 = v2;
  v171 = v21;
  v34 = (v1 + v21[16]);
  v35 = v34[1];
  v168 = v6;
  v169 = v3;
  if (v35)
  {
    v36 = *v34;
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  [v19 setAppBundleIdentifier:{v37, v168, v169, v170}];

  sub_1000D2A70(v1 + v171[17], v17, &unk_101696AC0, &qword_101390A60);
  v38 = type metadata accessor for URL();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  v42 = 0;
  if (v40(v17, 1, v38) != 1)
  {
    URL._bridgeToObjectiveC()(v41);
    v42 = v43;
    (*(v39 + 8))(v17, v38);
  }

  [v19 setLowBatteryInfoURL:v42];

  sub_1000D2A70(v1 + v171[18], v15, &unk_101696AC0, &qword_101390A60);
  if (v40(v15, 1, v38) == 1)
  {
    v45 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v44);
    v45 = v46;
    (*(v39 + 8))(v15, v38);
  }

  [v19 setDisableURL:v45];

  v47 = v171;
  v48 = (v1 + v171[19]);
  v49 = *v48;
  v50 = v48[1];
  v51 = String._bridgeToObjectiveC()();
  [v19 setVersion:v51];

  [v19 setTxPower:*(v1 + v47[20])];
  sub_1000D2A70(v1 + v47[21], v10, &qword_1016A62E8, &qword_1013B3CB0);
  v52 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if ((*(*(v52 - 8) + 48))(v10, 1, v52) == 1)
  {
    sub_10000B3A8(v10, &qword_1016A62E8, &qword_1013B3CB0);
    v53 = 20.0;
  }

  else
  {
    v54 = &v10[*(v52 + 56)];
    v55 = *v54;
    v56 = v54[8];
    sub_1011A0924(v10, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    v53 = 20.0;
    if (!v56)
    {
      v53 = v55;
    }
  }

  [v19 setRangeDistanceInMeters:v53];
  v57 = v171;
  [v19 setIsAirTag:*(v1 + v171[44]) & 1];
  [v19 setIsAppleAudioAccessory:*(v1 + v57[45]) & 1];
  [v19 setCapabilities:sub_1010D73CC(*(v1 + v57[22]))];
  URL._bridgeToObjectiveC()(v57[26]);
  v59 = v58;
  [v19 setDefaultHeroIcon:v58];

  URL._bridgeToObjectiveC()(v57[27]);
  v61 = v60;
  [v19 setDefaultListIcon:v60];

  URL._bridgeToObjectiveC()(v57[28]);
  v63 = v62;
  [v19 setDefaultHeroIcon2x:v62];

  URL._bridgeToObjectiveC()(v57[29]);
  v65 = v64;
  [v19 setDefaultListIcon2x:v64];

  URL._bridgeToObjectiveC()(v57[30]);
  v67 = v66;
  [v19 setDefaultHeroIcon3x:v66];

  URL._bridgeToObjectiveC()(v57[31]);
  v69 = v68;
  [v19 setDefaultListIcon3x:v68];

  v70 = (v1 + v57[32]);
  v71 = v70[1];
  v172 = v19;
  if (v71)
  {
    v72 = *v70;
  }

  v73 = v171;
  v74 = *(v1 + v171[33]);
  v75 = v1 + v171[36];
  v76 = *v75;
  v77 = *(v75 + 8);
  v78 = *(v75 + 16);
  if (v78)
  {
    v79 = -1.0;
  }

  else
  {
    v79 = v77;
  }

  if (v78)
  {
    v80 = -1.0;
  }

  else
  {
    v80 = v76;
  }

  v81 = v171[38];
  v82 = v171[40];
  v173 = v1;
  v83 = v171[42];
  v84 = objc_allocWithZone(SPUnknownProductMetadata);

  v85 = String._bridgeToObjectiveC()();

  isa = Array._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v173);
  v88 = v87;
  URL._bridgeToObjectiveC()(v173);
  v90 = v89;
  v91 = v173;
  URL._bridgeToObjectiveC()(v173);
  v93 = v92;
  v94 = [v84 initWithTitle:v85 description:isa percentageX:v88 percentageY:v90 image:v92 image2x:v80 image3x:v79];

  [v172 setLearnModeMetadata:v94];
  v95 = (v91 + v73[34]);
  if (v95[1])
  {
    v96 = *v95;
    v97 = v95[1];
  }

  v98 = v171;
  v99 = *(&v91->super.isa + v171[35]);
  v100 = (v91 + v171[37]);
  v101 = *v100;
  v102 = v100[1];
  v103 = *(v100 + 16);
  if (v103)
  {
    v104 = -1.0;
  }

  else
  {
    v104 = v102;
  }

  if (v103)
  {
    v105 = -1.0;
  }

  else
  {
    v105 = v101;
  }

  v106 = v171[39];
  v107 = v171[41];
  v108 = v171[43];
  v109 = objc_allocWithZone(SPUnknownProductMetadata);

  v110 = String._bridgeToObjectiveC()();

  v111 = Array._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v173);
  v113 = v112;
  URL._bridgeToObjectiveC()(v173);
  v115 = v114;
  v116 = v173;
  URL._bridgeToObjectiveC()(v173);
  v118 = v117;
  v119 = [v109 initWithTitle:v110 description:v111 percentageX:v113 percentageY:v115 image:v117 image2x:v105 image3x:v104];

  v120 = v172;
  [v172 setDisableMetadata:v119];

  v121 = *(&v116->super.isa + v98[23]);
  if (v121)
  {
    v122 = *(v121 + 16);
    if (v122)
    {
      v176 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v123 = (v121 + 48);
      do
      {
        v126 = *(v123 - 16);
        v128 = *(v123 - 1);
        v127 = *v123;
        v129 = v123[1];
        v130 = v123[2];
        v131 = v123[4];
        v174 = v123[3];
        v175 = *(v123 + 40);
        v132 = objc_allocWithZone(SPAccessoryLayoutTemplate);

        v133 = [v132 init];
        [v133 setPartIdentifier:v126];
        v134 = String._bridgeToObjectiveC()();
        [v133 setPartType:v134];

        v135 = String._bridgeToObjectiveC()();
        [v133 setPartName:v135];

        if (v131)
        {

          v124 = String._bridgeToObjectiveC()();
        }

        else
        {
          v124 = 0;
        }

        v123 += 8;
        [v133 setPartSymbol:v124];

        [v133 setIsPrimary:v175 & 1];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v125 = v176[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v122;
      }

      while (v122);
      v120 = v172;
      v116 = v173;
    }

    sub_10083C300();
    v136 = Array._bridgeToObjectiveC()().super.isa;

    [v120 setLayoutTemplate:v136];
  }

  v137 = v116 + v171[15];
  if ((v137[8] & 1) == 0)
  {
    v149 = *v137;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v150 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v151 = sub_101073D24(v176);

    v152 = *(v151 + 16);
    if (!v152)
    {

      return v120;
    }

    v153 = 0;
    while (v153 < *(v151 + 16))
    {
      v161 = *(v151 + 32 + 32 * v153++ + 24);
      v163 = *(v161 + 16);
      v162 = v161 + 16;
      v164 = v163 + 1;
      while (--v164)
      {
        v165 = (v162 + 40);
        v166 = *(v162 + 16);
        v162 += 40;
        if (v166 == v149)
        {
          v154 = *(v165 - 2);
          v155 = *(v165 - 1);
          v156 = *v165;
          v157 = v165[1];
          v158 = objc_allocWithZone(SPBeaconRole);

          v159 = String._bridgeToObjectiveC()();
          v120 = String._bridgeToObjectiveC()();
          v160 = [v158 initWithRoleId:v149 role:v159 roleEmoji:v120];

          [v172 setDefaultRole:v160];
          break;
        }
      }

      if (v153 == v152)
      {

        return v172;
      }
    }

    __break(1u);
    goto LABEL_59;
  }

  if (qword_1016951D8 != -1)
  {
LABEL_59:
    swift_once();
  }

  v138 = type metadata accessor for Logger();
  sub_1000076D4(v138, qword_10177C578);
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    _os_log_impl(&_mh_execute_header, v139, v140, "No defaultRole provided. Fallback to custom role.", v141, 2u);
  }

  v143 = v168;
  v142 = v169;
  v144 = v170;
  (*(v169 + 104))(v168, enum case for LocalizationUtility.Table.default(_:), v170);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v142 + 8))(v143, v144);
  v145 = objc_allocWithZone(SPBeaconRole);
  v146 = String._bridgeToObjectiveC()();

  v147 = String._bridgeToObjectiveC()();
  v148 = [v145 initWithRoleId:999 role:v146 roleEmoji:v147];

  [v120 setDefaultRole:v148];
  return v120;
}

unint64_t sub_10119C0D8(char a1)
{
  result = 0x7453726576726573;
  switch(a1)
  {
    case 1:
      return result;
    case 3:
      result = 0x6E6564646968;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0x7250796D646E6966;
      break;
    case 6:
      result = 0x6341454C45487369;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 10:
    case 30:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x52746C7561666564;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x55656C6261736964;
      break;
    case 15:
      result = 0x6E6F6973726576;
      break;
    case 16:
      result = 0x7265776F507874;
      break;
    case 17:
      result = 0x72756769666E6F63;
      break;
    case 18:
      result = 0x696C696261706163;
      break;
    case 19:
      result = 0x655474756F79616CLL;
      break;
    case 20:
      result = 0x6974707972636E65;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x48746C7561666564;
      break;
    case 23:
      result = 0x4C746C7561666564;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 29:
    case 34:
    case 36:
    case 38:
      result = 0x726F4D6E7261656CLL;
      break;
    case 31:
      result = 0xD00000000000001ALL;
      break;
    case 32:
      result = 0xD000000000000018;
      break;
    case 33:
      result = 0xD000000000000024;
      break;
    case 35:
      result = 0xD000000000000019;
      break;
    case 37:
    case 39:
      result = 0xD00000000000001BLL;
      break;
    case 40:
      result = 0x6761547269417369;
      break;
    case 41:
      result = 0xD000000000000015;
      break;
    case 42:
      result = 0x5565636166727573;
      break;
    case 43:
      result = 0x496B726F7774656ELL;
      break;
    case 44:
      result = 0x70756B6F6F4C6E73;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10119C5CC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C9EB8, &qword_10140A3F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v78 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011A0984();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 8);
  *&v80 = *v3;
  BYTE8(v80) = v11;
  v82 = 0;
  sub_1005243D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for AccessoryProductInfo();
    v13 = v12[5];
    LOBYTE(v80) = 1;
    type metadata accessor for ServerStatusCode();
    sub_1011A1B80(&qword_1016A89B0, &type metadata accessor for ServerStatusCode);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + v12[6]);
    LOBYTE(v80) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + v12[7]);
    LOBYTE(v80) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + v12[8]);
    LOBYTE(v80) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = (v3 + v12[9]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v80) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + v12[10]);
    LOBYTE(v80) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + v12[11]);
    LOBYTE(v80) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + v12[12]);
    LOBYTE(v80) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = (v3 + v12[13]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v80) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = (v3 + v12[14]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v80) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = (v3 + v12[15]);
    v30 = *v29;
    v31 = *(v29 + 8);
    LOBYTE(v80) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = (v3 + v12[16]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v80) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = v12[17];
    LOBYTE(v80) = 13;
    type metadata accessor for URL();
    sub_1011A1B80(&qword_1016A8188, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v36 = v12[18];
    LOBYTE(v80) = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = (v3 + v12[19]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v80) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v40 = *(v3 + v12[20]);
    LOBYTE(v80) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    v79 = v12[21];
    LOBYTE(v80) = 17;
    type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    sub_1011A1B80(&qword_1016A8998, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LODWORD(v80) = *(v3 + v12[22]);
    v82 = 18;
    sub_100235498();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v80 = *(v3 + v12[23]);
    v82 = 19;
    sub_1000BC4D4(&unk_1016A86D0, "֫\n");
    sub_100757AC0(&qword_1016A89B8, sub_100757B38);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v41 = (v3 + v12[24]);
    v42 = v41[1];
    *&v80 = *v41;
    *(&v80 + 1) = v42;
    v82 = 20;
    sub_10002E98C(v80, v42);
    v79 = sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v80, *(&v80 + 1));
    v43 = (v3 + v12[25]);
    v44 = v43[1];
    *&v80 = *v43;
    *(&v80 + 1) = v44;
    v82 = 21;
    sub_10002E98C(v80, v44);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v80, *(&v80 + 1));
    v46 = v12[26];
    LOBYTE(v80) = 22;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v47 = v12[27];
    LOBYTE(v80) = 23;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v48 = v12[28];
    LOBYTE(v80) = 24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v49 = v12[29];
    LOBYTE(v80) = 25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v50 = v12[30];
    LOBYTE(v80) = 26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v51 = v12[31];
    LOBYTE(v80) = 27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v52 = (v3 + v12[32]);
    v53 = *v52;
    v54 = v52[1];
    LOBYTE(v80) = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v80 = *(v3 + v12[33]);
    v82 = 29;
    v55 = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    v78 = sub_100758BE4(&qword_1016B2860);
    v79 = v55;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v56 = (v3 + v12[34]);
    v57 = *v56;
    v58 = v56[1];
    LOBYTE(v80) = 30;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v80 = *(v3 + v12[35]);
    v82 = 31;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v59 = (v3 + v12[36]);
    v60 = *(v59 + 16);
    v80 = *v59;
    v81 = v60;
    v82 = 32;
    v79 = sub_100758C50();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v61 = (v3 + v12[37]);
    v62 = *(v61 + 16);
    v80 = *v61;
    v81 = v62;
    v82 = 33;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v63 = v12[38];
    LOBYTE(v80) = 34;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v64 = v12[39];
    LOBYTE(v80) = 35;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v65 = v12[40];
    LOBYTE(v80) = 36;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v66 = v12[41];
    LOBYTE(v80) = 37;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v67 = v12[42];
    LOBYTE(v80) = 38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v68 = v12[43];
    LOBYTE(v80) = 39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v69 = *(v3 + v12[44]);
    LOBYTE(v80) = 40;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v70 = *(v3 + v12[45]);
    LOBYTE(v80) = 41;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v71 = *(v3 + v12[46]);
    LOBYTE(v80) = 42;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v72 = (v3 + v12[47]);
    v73 = *v72;
    v74 = v72[1];
    LOBYTE(v80) = 43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v75 = (v3 + v12[48]);
    v76 = *v75;
    v77 = v75[1];
    LOBYTE(v80) = 44;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10119D1BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v111 = *(v4 - 8);
  v112 = v4;
  v5 = *(v111 + 64);
  __chkstk_darwin(v4);
  v109 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v108 - v9;
  v11 = type metadata accessor for URL();
  v113 = *(v11 - 8);
  v12 = *(v113 + 64);
  __chkstk_darwin(v11);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v108 - v20;
  v22 = 0;
  if ((*(v1 + 8) & 1) == 0)
  {
    v22 = *v1;
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v22);
  v23 = type metadata accessor for AccessoryProductInfo();
  v24 = v23[5];
  type metadata accessor for ServerStatusCode();
  sub_1011A1B80(&qword_1016A89C8, &type metadata accessor for ServerStatusCode);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + v23[6]));
  Hasher._combine(_:)(*(v2 + v23[7]));
  v25 = *(v2 + v23[8]);
  if (v25 == 2)
  {
    v26 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v26 = v25 & 1;
  }

  Hasher._combine(_:)(v26);
  v27 = (v2 + v23[9]);
  v28 = *v27;
  v29 = v27[1];
  String.hash(into:)();
  v30 = *(v2 + v23[10]);
  if (v30 == 2)
  {
    v31 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v31 = v30 & 1;
  }

  Hasher._combine(_:)(v31);
  v32 = *(v2 + v23[11]);
  if (v32 == 2)
  {
    v33 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v33 = v32 & 1;
  }

  Hasher._combine(_:)(v33);
  v34 = *(v2 + v23[12]);
  if (v34 == 2)
  {
    v35 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v35 = v34 & 1;
  }

  Hasher._combine(_:)(v35);
  v36 = (v2 + v23[13]);
  v37 = *v36;
  v38 = v36[1];
  String.hash(into:)();
  v39 = (v2 + v23[14]);
  v40 = *v39;
  v41 = v39[1];
  String.hash(into:)();
  v42 = v2 + v23[15];
  if (*(v42 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v43 = *v42;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v43);
  }

  v110 = v10;
  v44 = (v2 + v23[16]);
  if (v44[1])
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000D2A70(v2 + v23[17], v21, &unk_101696AC0, &qword_101390A60);
  v46 = v113;
  v47 = *(v113 + 48);
  if (v47(v21, 1, v11) == 1)
  {
    Hasher._combine(_:)(0);
    v48 = v113;
  }

  else
  {
    (*(v46 + 32))(v14, v21, v11);
    Hasher._combine(_:)(1u);
    sub_1011A1B80(&qword_1016A8908, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    v48 = v113;
    (*(v113 + 8))(v14, v11);
  }

  v49 = v111;
  sub_1000D2A70(v2 + v23[18], v19, &unk_101696AC0, &qword_101390A60);
  if (v47(v19, 1, v11) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v48 + 32))(v14, v19, v11);
    Hasher._combine(_:)(1u);
    sub_1011A1B80(&qword_1016A8908, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v48 + 8))(v14, v11);
  }

  v50 = v112;
  v51 = v110;
  v52 = (v2 + v23[19]);
  v53 = *v52;
  v54 = v52[1];
  String.hash(into:)();
  v55 = *(v2 + v23[20]);
  if (v55 == 0.0)
  {
    v55 = 0.0;
  }

  Hasher._combine(_:)(*&v55);
  sub_1000D2A70(v2 + v23[21], v51, &qword_1016A62E8, &qword_1013B3CB0);
  if ((*(v49 + 48))(v51, 1, v50) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = v109;
    sub_1011A07E4(v51, v109, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    Hasher._combine(_:)(1u);
    sub_10074F1C0();
    sub_1011A0924(v56, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  }

  Hasher._combine(_:)(*(v2 + v23[22]));
  v57 = *(v2 + v23[23]);
  if (v57)
  {
    Hasher._combine(_:)(1u);
    sub_10083C3DC(a1, v57);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v58 = (v2 + v23[24]);
  if (v58[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v59 = *v58;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v60 = (v2 + v23[25]);
  if (v60[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v61 = *v60;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v62 = v23[26];
  sub_1011A1B80(&qword_1016A8908, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v63 = v2 + v23[27];
  dispatch thunk of Hashable.hash(into:)();
  v64 = v2 + v23[28];
  dispatch thunk of Hashable.hash(into:)();
  v65 = v2 + v23[29];
  dispatch thunk of Hashable.hash(into:)();
  v66 = v2 + v23[30];
  dispatch thunk of Hashable.hash(into:)();
  v67 = v2 + v23[31];
  dispatch thunk of Hashable.hash(into:)();
  v68 = (v2 + v23[32]);
  if (v68[1])
  {
    v69 = *v68;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v70 = *(v2 + v23[33]);
  Hasher._combine(_:)(*(v70 + 16));
  v71 = *(v70 + 16);
  if (v71)
  {
    v72 = (v70 + 40);
    do
    {
      v73 = *(v72 - 1);
      v74 = *v72;

      String.hash(into:)();

      v72 += 2;
      --v71;
    }

    while (v71);
  }

  v75 = (v2 + v23[34]);
  if (v75[1])
  {
    v76 = *v75;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v77 = *(v2 + v23[35]);
  Hasher._combine(_:)(*(v77 + 16));
  v78 = *(v77 + 16);
  if (v78)
  {
    v79 = (v77 + 40);
    do
    {
      v80 = *(v79 - 1);
      v81 = *v79;

      String.hash(into:)();

      v79 += 2;
      --v78;
    }

    while (v78);
  }

  v82 = v2 + v23[36];
  if (*(v82 + 16))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v84 = *v82;
    v83 = *(v82 + 8);
    Hasher._combine(_:)(1u);
    if ((v84 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v85 = v84;
    }

    else
    {
      v85 = 0;
    }

    Hasher._combine(_:)(v85);
    if ((v83 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v86 = v83;
    }

    else
    {
      v86 = 0;
    }

    Hasher._combine(_:)(v86);
  }

  v87 = v2 + v23[37];
  if (*(v87 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v89 = *v87;
    v88 = *(v87 + 8);
    Hasher._combine(_:)(1u);
    if ((v89 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    Hasher._combine(_:)(v90);
    if ((v88 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v91 = v88;
    }

    else
    {
      v91 = 0;
    }

    Hasher._combine(_:)(v91);
  }

  v92 = v2 + v23[38];
  dispatch thunk of Hashable.hash(into:)();
  v93 = v2 + v23[39];
  dispatch thunk of Hashable.hash(into:)();
  v94 = v2 + v23[40];
  dispatch thunk of Hashable.hash(into:)();
  v95 = v2 + v23[41];
  dispatch thunk of Hashable.hash(into:)();
  v96 = v2 + v23[42];
  dispatch thunk of Hashable.hash(into:)();
  v97 = v2 + v23[43];
  dispatch thunk of Hashable.hash(into:)();
  v98 = *(v2 + v23[44]);
  if (v98 == 2)
  {
    v99 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v99 = v98 & 1;
  }

  Hasher._combine(_:)(v99);
  v100 = *(v2 + v23[45]);
  if (v100 == 2)
  {
    v101 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v101 = v100 & 1;
  }

  Hasher._combine(_:)(v101);
  v102 = *(v2 + v23[46]);
  if (v102 == 2)
  {
    v103 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v103 = v102 & 1;
  }

  Hasher._combine(_:)(v103);
  v104 = (v2 + v23[47]);
  if (v104[1])
  {
    v105 = *v104;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v106 = (v2 + v23[48]);
  if (v106[1])
  {
    v107 = *v106;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_10119DD88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v187 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v186 = &v172 - v9;
  v10 = __chkstk_darwin(v8);
  v185 = &v172 - v11;
  v12 = __chkstk_darwin(v10);
  v184 = &v172 - v13;
  v14 = __chkstk_darwin(v12);
  v183 = &v172 - v15;
  v16 = __chkstk_darwin(v14);
  v182 = &v172 - v17;
  v18 = __chkstk_darwin(v16);
  v181 = &v172 - v19;
  v20 = __chkstk_darwin(v18);
  v180 = &v172 - v21;
  v22 = __chkstk_darwin(v20);
  v179 = &v172 - v23;
  v24 = __chkstk_darwin(v22);
  v177 = &v172 - v25;
  v26 = __chkstk_darwin(v24);
  v176 = &v172 - v27;
  __chkstk_darwin(v26);
  v175 = &v172 - v28;
  v29 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v174 = &v172 - v31;
  v32 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v189 = &v172 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v192 = &v172 - v36;
  v37 = type metadata accessor for ServerStatusCode();
  v178 = *(v37 - 8);
  v38 = *(v178 + 64);
  __chkstk_darwin(v37);
  v40 = &v172 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000BC4D4(&qword_1016C9EA8, &unk_10140A3E8);
  v190 = *(v41 - 8);
  v191 = v41;
  v42 = *(v190 + 64);
  __chkstk_darwin(v41);
  v44 = &v172 - v43;
  v45 = type metadata accessor for AccessoryProductInfo();
  v46 = *(*(v45 - 1) + 64);
  v47 = __chkstk_darwin(v45);
  v49 = &v172 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v47 + 68);
  v198 = v4;
  v199 = v50;
  v51 = *(v4 + 56);
  v51(&v49[v50], 1, 1, v3);
  v193 = v45[18];
  v200 = v3;
  v51(&v49[v193], 1, 1, v3);
  v52 = v45[21];
  v53 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v54 = *(*(v53 - 8) + 56);
  v197 = v52;
  v54(&v49[v52], 1, 1, v53);
  v55 = &v49[v45[24]];
  *v55 = xmmword_10138BBF0;
  v201 = v45;
  v202 = v49;
  v56 = &v49[v45[25]];
  v195 = v55;
  v196 = v56;
  *v56 = xmmword_10138BBF0;
  v58 = a1[3];
  v57 = a1[4];
  v194 = a1;
  sub_1000035D0(a1, v58);
  sub_1011A0984();
  v59 = v203;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v59)
  {
    v203 = v59;
    v62 = v202;
    sub_100007BAC(v194);
    v192 = 0;
    LODWORD(v179) = 0;
    LODWORD(v181) = 0;
    LODWORD(v183) = 0;
    LODWORD(v185) = 0;
    LODWORD(v187) = 0;
    LODWORD(v189) = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    LODWORD(v180) = 0;
    LODWORD(v182) = 0;
    LODWORD(v184) = 0;
    LODWORD(v186) = 0;
    LODWORD(v188) = 0;
    LODWORD(v190) = 0;
    LODWORD(v191) = 0;
    v66 = 0;
    v67 = v201;
    goto LABEL_4;
  }

  v60 = v40;
  v61 = v192;
  v173 = v37;
  v207 = 0;
  sub_100524258();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v76 = BYTE8(v204);
  v77 = v202;
  *v202 = v204;
  *(v77 + 8) = v76;
  LOBYTE(v204) = 1;
  sub_1011A1B80(&qword_10169A810, &type metadata accessor for ServerStatusCode);
  v78 = v173;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v79 = v44;
  v80 = v201;
  (*(v178 + 32))(v77 + v201[5], v60, v78);
  LOBYTE(v204) = 2;
  v81 = v79;
  *(v77 + v80[6]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v204) = 3;
  *(v77 + v80[7]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v204) = 4;
  *(v77 + v80[8]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v204) = 5;
  v82 = KeyedDecodingContainer.decode(_:forKey:)();
  v86 = (v77 + v80[9]);
  *v86 = v82;
  v86[1] = v87;
  LOBYTE(v204) = 6;
  *(v77 + v80[10]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v204) = 7;
  *(v77 + v80[11]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v204) = 8;
  v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = 0;
  *(v77 + v80[12]) = v88;
  LOBYTE(v204) = 9;
  v89 = v203;
  v90 = KeyedDecodingContainer.decode(_:forKey:)();
  v203 = v89;
  if (v89)
  {
    (*(v190 + 8))(v79, v191);
    v92 = 0;
    v93 = 0;
    v66 = 0;
    LODWORD(v191) = 0;
    LODWORD(v190) = 0;
    LODWORD(v188) = 0;
    LODWORD(v186) = 0;
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    v192 = 0;
    v172 = 0;
    v94 = &v206;
LABEL_51:
    *(v94 - 64) = 1;
LABEL_58:
    v67 = v201;
    v62 = v202;
    sub_100007BAC(v194);
    goto LABEL_41;
  }

  v95 = &v202[v201[13]];
  *v95 = v90;
  v95[1] = v91;
  LOBYTE(v204) = 10;
  v96 = v203;
  v97 = KeyedDecodingContainer.decode(_:forKey:)();
  v203 = v96;
  if (v96)
  {
    (*(v190 + 8))(v79, v191);
    v93 = 0;
    v66 = 0;
    LODWORD(v191) = 0;
    LODWORD(v190) = 0;
    LODWORD(v188) = 0;
    LODWORD(v186) = 0;
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    v192 = 0;
    v172 = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    goto LABEL_58;
  }

  v99 = &v202[v201[14]];
  *v99 = v97;
  v99[1] = v98;
  LOBYTE(v204) = 11;
  v100 = v203;
  v101 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = v100;
  if (v100)
  {
    goto LABEL_56;
  }

  v103 = &v202[v201[15]];
  *v103 = v101;
  v103[8] = v102 & 1;
  LOBYTE(v204) = 12;
  v104 = v203;
  v105 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v172 = v106;
  v203 = v104;
  if (v104)
  {
LABEL_56:
    (*(v190 + 8))(v79, v191);
    v66 = 0;
    LODWORD(v191) = 0;
    LODWORD(v190) = 0;
    LODWORD(v188) = 0;
    LODWORD(v186) = 0;
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    v192 = 0;
    v172 = 0;
LABEL_57:
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    goto LABEL_58;
  }

  v107 = &v202[v201[16]];
  v108 = v172;
  *v107 = v105;
  v107[1] = v108;
  LOBYTE(v204) = 13;
  sub_1011A1B80(&qword_1016A8178, &type metadata accessor for URL);
  v109 = v203;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v203 = v109;
  if (v109)
  {
    goto LABEL_62;
  }

  sub_10002311C(v61, &v202[v199], &unk_101696AC0, &qword_101390A60);
  LOBYTE(v204) = 14;
  v110 = v203;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v203 = v110;
  if (v110 || (sub_10002311C(v189, &v202[v193], &unk_101696AC0, &qword_101390A60), LOBYTE(v204) = 15, v111 = v203, v112 = KeyedDecodingContainer.decode(_:forKey:)(), (v203 = v111) != 0))
  {
LABEL_62:
    (*(v190 + 8))(v79, v191);
    v66 = 0;
    LODWORD(v191) = 0;
    LODWORD(v190) = 0;
    LODWORD(v188) = 0;
    LODWORD(v186) = 0;
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    v192 = 0;
    goto LABEL_57;
  }

  v114 = &v202[v201[19]];
  *v114 = v112;
  v114[1] = v113;
  LOBYTE(v204) = 16;
  v115 = v203;
  KeyedDecodingContainer.decode(_:forKey:)();
  v203 = v115;
  if (v115)
  {
    goto LABEL_67;
  }

  *&v202[v201[20]] = v116;
  LOBYTE(v204) = 17;
  sub_1011A1B80(&qword_1016A8958, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v117 = v203;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v203 = v117;
  if (v117)
  {
    goto LABEL_67;
  }

  sub_10002311C(v174, &v202[v197], &qword_1016A62E8, &qword_1013B3CB0);
  v207 = 18;
  sub_100235240();
  v118 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v118;
  if (v118 || (*&v202[v201[22]] = v204, sub_1000BC4D4(&unk_1016A86D0, "֫\n"), v207 = 19, sub_100757AC0(&qword_1016A8970, sub_100757938), v119 = v203, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v203 = v119) != 0))
  {
LABEL_67:
    (*(v190 + 8))(v79, v191);
    LODWORD(v191) = 0;
    LODWORD(v190) = 0;
    LODWORD(v188) = 0;
    LODWORD(v186) = 0;
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    v192 = 0;
LABEL_68:
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    goto LABEL_58;
  }

  v120 = v201[23];
  v192 = v204;
  *&v202[v120] = v204;
  v207 = 20;
  sub_1000E307C();
  v121 = v203;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v203 = v121;
  if (v121)
  {
    goto LABEL_72;
  }

  v122 = v204;
  v123 = v195;
  sub_100006654(*v195, *(v195 + 1));
  *v123 = v122;
  v207 = 21;
  v124 = v203;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v203 = v124;
  if (v124)
  {
    goto LABEL_72;
  }

  v125 = v204;
  v126 = v196;
  sub_100006654(*v196, *(v196 + 1));
  *v126 = v125;
  LOBYTE(v204) = 22;
  v127 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v127;
  if (v127)
  {
LABEL_72:
    (*(v190 + 8))(v79, v191);
    LODWORD(v191) = 0;
    LODWORD(v190) = 0;
    LODWORD(v188) = 0;
    LODWORD(v186) = 0;
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    goto LABEL_68;
  }

  v128 = *(v198 + 32);
  v128(&v202[v201[26]], v175, v200);
  LOBYTE(v204) = 23;
  v129 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v129;
  if (v129)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v190) = 0;
    LODWORD(v188) = 0;
    LODWORD(v186) = 0;
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    goto LABEL_58;
  }

  v128(&v202[v201[27]], v176, v200);
  LOBYTE(v204) = 24;
  v130 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v130;
  if (v130)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v188) = 0;
    LODWORD(v186) = 0;
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    goto LABEL_58;
  }

  v128(&v202[v201[28]], v177, v200);
  LOBYTE(v204) = 25;
  v131 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v131;
  if (v131)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v186) = 0;
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    goto LABEL_58;
  }

  v128(&v202[v201[29]], v179, v200);
  LOBYTE(v204) = 26;
  v132 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v132;
  if (v132)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v184) = 0;
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    goto LABEL_58;
  }

  v128(&v202[v201[30]], v180, v200);
  LOBYTE(v204) = 27;
  v133 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v133;
  if (v133)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v182) = 0;
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    v94 = &v213;
    goto LABEL_51;
  }

  v128(&v202[v201[31]], v181, v200);
  LOBYTE(v204) = 28;
  v134 = v203;
  v135 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = v134;
  if (v134)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v180) = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    v94 = &v211;
    goto LABEL_51;
  }

  v137 = &v202[v201[32]];
  *v137 = v135;
  v137[1] = v136;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  v207 = 29;
  sub_100758BE4(&qword_1016A8A58);
  v138 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v138;
  if (v138)
  {
    (*(v190 + 8))(v79, v191);
    v65 = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    LODWORD(v182) = 1;
    v94 = &v209;
    goto LABEL_51;
  }

  *&v202[v201[33]] = v204;
  LOBYTE(v204) = 30;
  v139 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = 0;
  v140 = &v202[v201[34]];
  *v140 = v139;
  v140[1] = v141;
  v207 = 31;
  v142 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v142;
  if (v142)
  {
    (*(v190 + 8))(v79, v191);
    v63 = 0;
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    LODWORD(v182) = 1;
    LODWORD(v180) = 1;
    v65 = 1;
    v64 = 1;
    goto LABEL_58;
  }

  *&v202[v201[35]] = v204;
  v207 = 32;
  sub_100758B90();
  v143 = v203;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v203 = v143;
  if (v143)
  {
    goto LABEL_92;
  }

  v144 = v205;
  v145 = &v202[v201[36]];
  *v145 = v204;
  v145[16] = v144;
  v207 = 33;
  v146 = v203;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v203 = v146;
  if (v146)
  {
    goto LABEL_92;
  }

  v147 = v205;
  v148 = &v202[v201[37]];
  *v148 = v204;
  v148[16] = v147;
  LOBYTE(v204) = 34;
  v149 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v149;
  if (v149)
  {
LABEL_92:
    (*(v190 + 8))(v79, v191);
    LODWORD(v189) = 0;
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    LODWORD(v182) = 1;
    LODWORD(v180) = 1;
    v65 = 1;
    v64 = 1;
    v63 = 1;
    goto LABEL_58;
  }

  v128(&v202[v201[38]], v182, v200);
  LOBYTE(v204) = 35;
  v150 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v150;
  if (v150)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v187) = 0;
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    LODWORD(v182) = 1;
    LODWORD(v180) = 1;
    v65 = 1;
    v64 = 1;
    v63 = 1;
    LODWORD(v189) = 1;
    goto LABEL_58;
  }

  v128(&v202[v201[39]], v183, v200);
  LOBYTE(v204) = 36;
  v151 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v151;
  if (v151)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v185) = 0;
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    LODWORD(v182) = 1;
    LODWORD(v180) = 1;
    v65 = 1;
    v64 = 1;
    v63 = 1;
    LODWORD(v189) = 1;
    LODWORD(v187) = 1;
    goto LABEL_58;
  }

  v128(&v202[v201[40]], v184, v200);
  LOBYTE(v204) = 37;
  v152 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v152;
  if (v152)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v183) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    LODWORD(v182) = 1;
    LODWORD(v180) = 1;
    v65 = 1;
    v64 = 1;
    v63 = 1;
    LODWORD(v189) = 1;
    LODWORD(v187) = 1;
    v94 = &v214;
    goto LABEL_51;
  }

  v128(&v202[v201[41]], v185, v200);
  LOBYTE(v204) = 38;
  v153 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v153;
  if (v153)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    LODWORD(v182) = 1;
    LODWORD(v180) = 1;
    v65 = 1;
    v64 = 1;
    v63 = 1;
    LODWORD(v189) = 1;
    LODWORD(v187) = 1;
    LODWORD(v185) = 1;
    v94 = &v212;
    goto LABEL_51;
  }

  v128(&v202[v201[42]], v186, v200);
  LOBYTE(v204) = 39;
  v154 = v203;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v203 = v154;
  if (v154)
  {
    (*(v190 + 8))(v79, v191);
    LODWORD(v179) = 0;
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    LODWORD(v182) = 1;
    LODWORD(v180) = 1;
    v65 = 1;
    v64 = 1;
    v63 = 1;
    LODWORD(v189) = 1;
    LODWORD(v187) = 1;
    LODWORD(v185) = 1;
    LODWORD(v183) = 1;
    v94 = &v210;
    goto LABEL_51;
  }

  v128(&v202[v201[43]], v187, v200);
  LOBYTE(v204) = 40;
  v155 = v203;
  v156 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = v155;
  if (v155)
  {
    goto LABEL_107;
  }

  v202[v201[44]] = v156;
  LOBYTE(v204) = 41;
  v157 = v203;
  v158 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = v157;
  if (v157)
  {
    goto LABEL_107;
  }

  v202[v201[45]] = v158;
  LOBYTE(v204) = 42;
  v159 = v203;
  v160 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = v159;
  if (v159 || (v202[v201[46]] = v160, LOBYTE(v204) = 43, v161 = v203, v162 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v203 = v161) != 0))
  {
LABEL_107:
    (*(v190 + 8))(v79, v191);
    LODWORD(v177) = 1;
    v92 = 1;
    v93 = 1;
    v66 = 1;
    LODWORD(v191) = 1;
    LODWORD(v190) = 1;
    LODWORD(v188) = 1;
    LODWORD(v186) = 1;
    LODWORD(v184) = 1;
    LODWORD(v182) = 1;
    LODWORD(v180) = 1;
    v65 = 1;
    v64 = 1;
    v63 = 1;
    LODWORD(v189) = 1;
    LODWORD(v187) = 1;
    LODWORD(v185) = 1;
    LODWORD(v183) = 1;
    LODWORD(v181) = 1;
    v94 = &v208;
    goto LABEL_51;
  }

  v164 = &v202[v201[47]];
  *v164 = v162;
  v164[1] = v163;
  LOBYTE(v204) = 44;
  v165 = v203;
  v166 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = v165;
  if (!v165)
  {
    v168 = v166;
    v169 = v167;
    v170 = v202;
    v171 = &v202[v201[48]];
    (*(v190 + 8))(v81, v191);
    *v171 = v168;
    v171[1] = v169;
    sub_1011A08BC(v170, v188, type metadata accessor for AccessoryProductInfo);
    sub_100007BAC(v194);
    return sub_1011A0924(v170, type metadata accessor for AccessoryProductInfo);
  }

  (*(v190 + 8))(v79, v191);
  sub_100007BAC(v194);
  LODWORD(v177) = 1;
  v92 = 1;
  v93 = 1;
  v66 = 1;
  LODWORD(v191) = 1;
  LODWORD(v190) = 1;
  LODWORD(v188) = 1;
  LODWORD(v186) = 1;
  LODWORD(v184) = 1;
  LODWORD(v182) = 1;
  LODWORD(v180) = 1;
  v65 = 1;
  v64 = 1;
  v63 = 1;
  LODWORD(v189) = 1;
  LODWORD(v187) = 1;
  LODWORD(v185) = 1;
  LODWORD(v183) = 1;
  LODWORD(v181) = 1;
  LODWORD(v179) = 1;
  v67 = v201;
  v62 = v202;
LABEL_41:
  (*(v178 + 8))(&v62[v67[5]], v173);
  if (v177)
  {
    v83 = *&v62[v67[9] + 8];

    if ((v92 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (!v92)
  {
LABEL_43:
    if (!v93)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  v85 = *&v62[v67[13] + 8];

  if (v93)
  {
LABEL_44:
    v84 = *&v62[v67[14] + 8];
  }

LABEL_4:

  sub_10000B3A8(&v62[v199], &unk_101696AC0, &qword_101390A60);
  sub_10000B3A8(&v62[v193], &unk_101696AC0, &qword_101390A60);
  if (v66)
  {
    v68 = *&v62[v67[19] + 8];
  }

  sub_10000B3A8(&v62[v197], &qword_1016A62E8, &qword_1013B3CB0);

  sub_100006654(*v195, *(v195 + 1));
  sub_100006654(*v196, *(v196 + 1));
  v69 = v200;
  v70 = v198;
  if (v191)
  {
    (*(v198 + 8))(&v62[v67[26]], v200);
    if (!v190)
    {
LABEL_8:
      if (!v188)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  else if (!v190)
  {
    goto LABEL_8;
  }

  (*(v70 + 8))(&v62[v67[27]], v69);
  if (!v188)
  {
LABEL_9:
    if (!v186)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_33:
  (*(v70 + 8))(&v62[v67[28]], v69);
  if (v186)
  {
LABEL_10:
    (*(v70 + 8))(&v62[v67[29]], v69);
  }

LABEL_11:
  if (v184)
  {
    (*(v70 + 8))(&v62[v67[30]], v69);
  }

  if (v182)
  {
    (*(v70 + 8))(&v62[v67[31]], v69);
  }

  if (v180)
  {
    v72 = *&v62[v67[32] + 8];

    if (!v65)
    {
LABEL_17:
      if (!v64)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }
  }

  else if (!v65)
  {
    goto LABEL_17;
  }

  v73 = *&v62[v67[33]];

  if (!v64)
  {
LABEL_18:
    if (!v63)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v74 = *&v62[v67[34] + 8];

  if (!v63)
  {
LABEL_19:
    if (!v189)
    {
      goto LABEL_20;
    }

LABEL_39:
    (*(v70 + 8))(&v62[v67[38]], v69);
    if (!v187)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_38:
  v75 = *&v62[v67[35]];

  if (v189)
  {
    goto LABEL_39;
  }

LABEL_20:
  if (v187)
  {
LABEL_21:
    (*(v70 + 8))(&v62[v67[39]], v69);
  }

LABEL_22:
  if (v185)
  {
    (*(v70 + 8))(&v62[v67[40]], v69);
  }

  if (v183)
  {
    (*(v70 + 8))(&v62[v67[41]], v69);
  }

  if (v181)
  {
    (*(v70 + 8))(&v62[v67[42]], v69);
  }

  if (v179)
  {
    (*(v70 + 8))(&v62[v67[43]], v69);
  }
}

uint64_t sub_1011A0480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1011A1E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1011A04B4(uint64_t a1)
{
  v2 = sub_1011A0984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011A04F0(uint64_t a1)
{
  v2 = sub_1011A0984();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1011A055C()
{
  Hasher.init(_seed:)();
  sub_10119D1BC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1011A05A0()
{
  Hasher.init(_seed:)();
  sub_10119D1BC(v1);
  return Hasher._finalize()();
}

uint64_t sub_1011A07E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011A084C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011A08BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011A0924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1011A0984()
{
  result = qword_1016C9EB0;
  if (!qword_1016C9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9EB0);
  }

  return result;
}

BOOL sub_1011A09D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v203 = *(v4 - 8);
  v5 = *(v203 + 64);
  __chkstk_darwin(v4);
  v7 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v194 - v10;
  v202 = sub_1000BC4D4(&qword_1016A89D8, &unk_10140A400);
  v12 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  v14 = &v194 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v205 = v15;
  v206 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v204 = &v194 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v194 - v24;
  v26 = sub_1000BC4D4(&qword_1016A8910, &qword_1013BE3A0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  __chkstk_darwin(v28);
  v31 = &v194 - v30;
  v32 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v200 = v14;
  v201 = v29;
  v198 = v11;
  v199 = v4;
  v197 = v7;
  v33 = type metadata accessor for AccessoryProductInfo();
  v207 = a2;
  v34 = v33[5];
  type metadata accessor for ServerStatusCode();
  sub_1011A1B80(&qword_1016A89E0, &type metadata accessor for ServerStatusCode);
  v35 = a1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v36 = v207;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v209 != v208 || *(a1 + v33[6]) != *(v36 + v33[6]) || *(a1 + v33[7]) != *(v36 + v33[7]))
  {
    return 0;
  }

  v38 = v33[8];
  v39 = *(a1 + v38);
  v40 = *(v36 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v40 == 2 || ((v40 ^ v39) & 1) != 0)
    {
      return result;
    }
  }

  v41 = v33[9];
  v42 = *(a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (v36 + v41);
  if ((v42 != *v44 || v43 != v44[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v45 = v33[10];
  v46 = *(a1 + v45);
  v47 = *(v36 + v45);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v47 == 2 || ((v47 ^ v46) & 1) != 0)
    {
      return result;
    }
  }

  v48 = v33[11];
  v49 = *(a1 + v48);
  v50 = *(v36 + v48);
  if (v49 == 2)
  {
    if (v50 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v50 == 2 || ((v50 ^ v49) & 1) != 0)
    {
      return result;
    }
  }

  v51 = v33[12];
  v52 = *(a1 + v51);
  v53 = *(v36 + v51);
  if (v52 == 2)
  {
    if (v53 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v53 == 2 || ((v53 ^ v52) & 1) != 0)
    {
      return result;
    }
  }

  v54 = v33[13];
  v55 = *(a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (v36 + v54);
  if ((v55 != *v57 || v56 != v57[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v58 = v33[14];
  v59 = *(a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (v36 + v58);
  if ((v59 != *v61 || v60 != v61[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v62 = v33[15];
  v63 = (a1 + v62);
  v64 = *(a1 + v62 + 8);
  v65 = (v36 + v62);
  v66 = *(v36 + v62 + 8);
  if (v64)
  {
    if (!v66)
    {
      return 0;
    }
  }

  else
  {
    if (*v63 != *v65)
    {
      LOBYTE(v66) = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  v67 = v33[16];
  v68 = (a1 + v67);
  v69 = *(a1 + v67 + 8);
  v70 = (v36 + v67);
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (*v68 != *v70 || v69 != v71) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v195 = v33;
  v196 = a1;
  v72 = v33[17];
  v73 = *(v26 + 48);
  sub_1000D2A70(v35 + v72, v31, &unk_101696AC0, &qword_101390A60);
  v74 = v207 + v72;
  v75 = v207;
  sub_1000D2A70(v74, &v31[v73], &unk_101696AC0, &qword_101390A60);
  v76 = v205;
  v77 = *(v206 + 48);
  if (v77(v31, 1, v205) == 1)
  {
    if (v77(&v31[v73], 1, v76) == 1)
    {
      sub_10000B3A8(v31, &unk_101696AC0, &qword_101390A60);
      goto LABEL_61;
    }

LABEL_59:
    v78 = &qword_1016A8910;
    v79 = &qword_1013BE3A0;
    v80 = v31;
LABEL_67:
    sub_10000B3A8(v80, v78, v79);
    return 0;
  }

  sub_1000D2A70(v31, v25, &unk_101696AC0, &qword_101390A60);
  v194 = v77;
  if (v77(&v31[v73], 1, v76) == 1)
  {
    (*(v206 + 8))(v25, v76);
    goto LABEL_59;
  }

  v81 = v206;
  v82 = v204;
  (*(v206 + 32))(v204, &v31[v73], v76);
  sub_1011A1B80(&qword_1016A8918, &type metadata accessor for URL);
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();
  v84 = *(v81 + 8);
  v84(v82, v76);
  v84(v25, v76);
  sub_10000B3A8(v31, &unk_101696AC0, &qword_101390A60);
  v75 = v207;
  v77 = v194;
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  v85 = v195[18];
  v86 = *(v26 + 48);
  v87 = v201;
  sub_1000D2A70(v196 + v85, v201, &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(v75 + v85, v87 + v86, &unk_101696AC0, &qword_101390A60);
  v88 = v205;
  if (v77(v87, 1, v205) == 1)
  {
    if (v77((v87 + v86), 1, v88) == 1)
    {
      sub_10000B3A8(v201, &unk_101696AC0, &qword_101390A60);
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  sub_1000D2A70(v87, v23, &unk_101696AC0, &qword_101390A60);
  if (v77((v87 + v86), 1, v88) == 1)
  {
    (*(v206 + 8))(v23, v88);
LABEL_66:
    v78 = &qword_1016A8910;
    v79 = &qword_1013BE3A0;
    v80 = v201;
    goto LABEL_67;
  }

  v89 = v206;
  v90 = v201;
  v91 = v204;
  (*(v206 + 32))(v204, v201 + v86, v88);
  sub_1011A1B80(&qword_1016A8918, &type metadata accessor for URL);
  v92 = v88;
  v93 = dispatch thunk of static Equatable.== infix(_:_:)();
  v94 = *(v89 + 8);
  v94(v91, v92);
  v94(v23, v92);
  sub_10000B3A8(v90, &unk_101696AC0, &qword_101390A60);
  if ((v93 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v95 = v195[19];
  v96 = (v196 + v95);
  v97 = *(v196 + v95);
  v98 = *(v196 + v95 + 8);
  v99 = (v207 + v95);
  if ((*v96 != *v99 || v98 != v99[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v196 + v195[20]) != *(v207 + v195[20]))
  {
    return 0;
  }

  v100 = v195[21];
  v101 = *(v202 + 48);
  v102 = v200;
  sub_1000D2A70(v196 + v100, v200, &qword_1016A62E8, &qword_1013B3CB0);
  sub_1000D2A70(v207 + v100, v102 + v101, &qword_1016A62E8, &qword_1013B3CB0);
  v103 = *(v203 + 48);
  if (v103(v102, 1, v199) == 1)
  {
    if (v103(&v200[v101], 1, v199) == 1)
    {
      sub_10000B3A8(v200, &qword_1016A62E8, &qword_1013B3CB0);
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  v104 = v200;
  sub_1000D2A70(v200, v198, &qword_1016A62E8, &qword_1013B3CB0);
  if (v103((v104 + v101), 1, v199) == 1)
  {
    sub_1011A0924(v198, type metadata accessor for AccessoryInfoResponseContent.Configuration);
LABEL_78:
    v78 = &qword_1016A89D8;
    v79 = &unk_10140A400;
    v80 = v200;
    goto LABEL_67;
  }

  v105 = v200;
  v106 = &v200[v101];
  v107 = v197;
  sub_1011A07E4(v106, v197, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v108 = v198;
  v109 = sub_100755284(v198, v107);
  sub_1011A0924(v107, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  sub_1011A0924(v108, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  sub_10000B3A8(v105, &qword_1016A62E8, &qword_1013B3CB0);
  if (!v109)
  {
    return 0;
  }

LABEL_80:
  if (*(v196 + v195[22]) != *(v207 + v195[22]))
  {
    return 0;
  }

  v110 = v195[23];
  v111 = *(v196 + v110);
  v112 = *(v207 + v110);
  if (v111)
  {
    if (!v112 || (sub_10038F298(v111, v112) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v112)
  {
    return 0;
  }

  v113 = v195[24];
  v114 = v196 + v113;
  v116 = *(v196 + v113);
  v115 = *(v196 + v113 + 8);
  v117 = (v207 + v113);
  v119 = *v117;
  v118 = v117[1];
  if (v115 >> 60 == 15)
  {
    if (v118 >> 60 != 15)
    {
      goto LABEL_95;
    }

    sub_10002E98C(*v114, *(v114 + 8));
    sub_10002E98C(v119, v118);
    sub_100006654(v116, v115);
  }

  else
  {
    if (v118 >> 60 == 15)
    {
      goto LABEL_95;
    }

    sub_10002E98C(*v114, *(v114 + 8));
    sub_10002E98C(v119, v118);
    v120 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v116, v115, v119, v118);
    sub_100006654(v119, v118);
    sub_100006654(v116, v115);
    if ((v120 & 1) == 0)
    {
      return 0;
    }
  }

  v121 = v195[25];
  v122 = v196 + v121;
  v116 = *(v196 + v121);
  v115 = *(v196 + v121 + 8);
  v123 = (v207 + v121);
  v119 = *v123;
  v118 = v123[1];
  if (v115 >> 60 == 15)
  {
    if (v118 >> 60 == 15)
    {
      sub_10002E98C(*v122, *(v122 + 8));
      sub_10002E98C(v119, v118);
      sub_100006654(v116, v115);
      goto LABEL_97;
    }

LABEL_95:
    sub_10002E98C(v116, v115);
    sub_10002E98C(v119, v118);
    sub_100006654(v116, v115);
    sub_100006654(v119, v118);
    return 0;
  }

  if (v118 >> 60 == 15)
  {
    goto LABEL_95;
  }

  sub_10002E98C(*v122, *(v122 + 8));
  sub_10002E98C(v119, v118);
  v124 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v116, v115, v119, v118);
  sub_100006654(v119, v118);
  sub_100006654(v116, v115);
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_97:
  v125 = v195[26];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v126 = v195[27];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v127 = v195[28];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v128 = v195[29];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v129 = v195[30];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v130 = v195[31];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v131 = v195[32];
  v132 = (v196 + v131);
  v133 = *(v196 + v131 + 8);
  v134 = (v207 + v131);
  v135 = v134[1];
  if (v133)
  {
    if (!v135 || (*v132 != *v134 || v133 != v135) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v135)
  {
    return 0;
  }

  if ((sub_10038ED80(*(v196 + v195[33]), *(v207 + v195[33])) & 1) == 0)
  {
    return 0;
  }

  v136 = v195[34];
  v137 = (v196 + v136);
  v138 = *(v196 + v136 + 8);
  v139 = (v207 + v136);
  v140 = v139[1];
  if (v138)
  {
    if (!v140 || (*v137 != *v139 || v138 != v140) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v140)
  {
    return 0;
  }

  if ((sub_10038ED80(*(v196 + v195[35]), *(v207 + v195[35])) & 1) == 0)
  {
    return 0;
  }

  v141 = v195[36];
  v142 = (v196 + v141);
  v143 = *(v196 + v141 + 16);
  v144 = v207 + v141;
  v145 = *(v144 + 16);
  if (v143)
  {
    v146 = v207;
    v148 = v195;
    v147 = v196;
    if ((v145 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v144 + 16))
    {
      return 0;
    }

    result = 0;
    if (*v142 != *v144)
    {
      return result;
    }

    v149 = v142[1];
    v150 = *(v144 + 8);
    v146 = v207;
    v148 = v195;
    v147 = v196;
    if (v149 != v150)
    {
      return result;
    }
  }

  v151 = v148[37];
  v152 = v147 + v151;
  v153 = v146 + v151;
  v154 = *(v153 + 16);
  if (*(v152 + 16))
  {
    v155 = v195;
    if ((*(v153 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v153 + 16))
    {
      return 0;
    }

    result = 0;
    if (*v152 != *v153)
    {
      return result;
    }

    v156 = *(v152 + 8);
    v155 = v195;
    if (v156 != *(v153 + 8))
    {
      return result;
    }
  }

  v157 = v155[38];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v158 = v195[39];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v159 = v195[40];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v160 = v195[41];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v161 = v195[42];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v162 = v195[43];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v163 = v195[44];
  v164 = *(v196 + v163);
  v165 = *(v207 + v163);
  if (v164 == 2)
  {
    v166 = v207;
    v168 = v195;
    v167 = v196;
    if (v165 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v165 == 2)
    {
      return result;
    }

    v169 = v165 ^ v164;
    v166 = v207;
    v168 = v195;
    v167 = v196;
    if (v169)
    {
      return result;
    }
  }

  v170 = v168[45];
  v171 = *(v167 + v170);
  v172 = *(v166 + v170);
  if (v171 == 2)
  {
    v173 = v207;
    v175 = v195;
    v174 = v196;
    if (v172 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v172 == 2)
    {
      return result;
    }

    v176 = v172 ^ v171;
    v173 = v207;
    v175 = v195;
    v174 = v196;
    if (v176)
    {
      return result;
    }
  }

  v177 = v175[46];
  v178 = *(v174 + v177);
  v179 = *(v173 + v177);
  if (v178 == 2)
  {
    v180 = v207;
    v181 = v195;
    v182 = v196;
    if (v179 != 2)
    {
      return 0;
    }

    goto LABEL_152;
  }

  result = 0;
  if (v179 != 2)
  {
    v183 = v179 ^ v178;
    v180 = v207;
    v181 = v195;
    v182 = v196;
    if ((v183 & 1) == 0)
    {
LABEL_152:
      v184 = v181[47];
      v185 = (v182 + v184);
      v186 = *(v182 + v184 + 8);
      v187 = (v180 + v184);
      v188 = v187[1];
      if (v186)
      {
        if (!v188 || (*v185 != *v187 || v186 != v188) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v188)
      {
        return 0;
      }

      v189 = v195[48];
      v190 = (v196 + v189);
      v191 = *(v196 + v189 + 8);
      v192 = (v207 + v189);
      v193 = v192[1];
      if (v191)
      {
        return v193 && (*v190 == *v192 && v191 == v193 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
      }

      return !v193;
    }
  }

  return result;
}

uint64_t sub_1011A1B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AccessoryProductInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryProductInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1011A1D1C()
{
  result = qword_1016C9EC0;
  if (!qword_1016C9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9EC0);
  }

  return result;
}

unint64_t sub_1011A1D74()
{
  result = qword_1016C9EC8;
  if (!qword_1016C9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9EC8);
  }

  return result;
}

unint64_t sub_1011A1DCC()
{
  result = qword_1016C9ED0;
  if (!qword_1016C9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9ED0);
  }

  return result;
}

uint64_t sub_1011A1E20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000010135E680 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7453726576726573 && a2 == 0xEC00000073757461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010135E700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7250796D646E6966 && a2 == 0xEF6449746375646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6341454C45487369 && a2 == 0xEF79726F73736563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010135E6E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x52746C7561666564 && a2 == 0xEB00000000656C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010135E820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x55656C6261736964 && a2 == 0xEA00000000004C52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7265776F507874 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x655474756F79616CLL && a2 == 0xEE006574616C706DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6974707972636E65 && a2 == 0xEF314579654B6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010137D410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x4C746C7561666564 && a2 == 0xEF6E6F6349747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E7A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E2F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEE00736D65744965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010135E310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101347AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E8E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000024 && 0x800000010135E900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xED00006E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010135E7C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEF78326E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010135E7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEF78336E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010135E800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x6761547269417369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x5565636166727573 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x70756B6F6F4C6E73 && a2 == 0xEB000000006C7255)
  {

    return 44;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 44;
    }

    else
    {
      return 45;
    }
  }
}

uint64_t sub_1011A2BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_fileManager + 8);
  OS_dispatch_queue.sync<A>(execute:)();
  return a2(0);
}

uint64_t sub_1011A2D94()
{
  sub_100007BAC((v0 + 16));
  sub_1011A3084(v0 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_fileManager);
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_fileManagerCacheSubscription);

  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_schedulePublishSubscription);

  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_wildBeaconPayloadSubject);

  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_wildBeaconPayloadPublisher);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_nearOwnerBeaconPayloadSubject);

  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_nearOwnerBeaconPayloadPublisher);

  v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_savedBeaconPayloadPublisher);

  return v0;
}

uint64_t sub_1011A2E34()
{
  sub_1011A2D94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeaconPayloadCache()
{
  result = qword_1016C9F28;
  if (!qword_1016C9F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1011A2EE0()
{
  result = type metadata accessor for BeaconPayloadFileManager();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1011A2F9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  v6 = *(v4 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_fileManager + 8);
  sub_1000BC4D4(&qword_1016CA070, &qword_10140A5A8);
  OS_dispatch_queue.sync<A>(execute:)();
  a4(v8, 0);
}

uint64_t sub_1011A3084(uint64_t a1)
{
  v2 = type metadata accessor for BeaconPayloadFileManager();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1011A30E0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for BeaconObservation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100035730(a1, sub_1011A3678, 0);
  sub_1012BB138(v11, v5);

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_100B3DB48(v5, v10);
    v14 = v10[*(v6 + 24)];
    if (v14 <= 0x10)
    {
      if (v14 == 15)
      {
        v15 = &SPTagSeparationStateConnected;
        goto LABEL_17;
      }

      if (v14 == 16)
      {
        v15 = &SPTagSeparationStateLeashConnected;
        goto LABEL_17;
      }
    }

    else
    {
      switch(v14)
      {
        case 0x11u:
          v15 = &SPTagSeparationStateLeashInterrupted;
          goto LABEL_17;
        case 0x12u:
          v15 = &SPTagSeparationStateLeashDropped;
          goto LABEL_17;
        case 0x13u:
          v15 = &SPTagSeparationStateLeashFailed;
LABEL_17:
          v16 = *v15;
          sub_10073B5F0(v10);
          return v16;
      }
    }

    v15 = &SPTagSeparationStateNone;
    goto LABEL_17;
  }

  sub_1011A3BD4(v5);
  v12 = SPTagSeparationStateNone;

  return v12;
}

uint64_t sub_1011A3450(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for BeaconObservation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v11 = qword_10177B2E8;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 16))(v10, a1, v12);
  v13 = &v10[*(v6 + 20)];
  Date.init()();
  v10[*(v6 + 24)] = a2;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v14 = *(v7 + 72);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10073B64C(v10, v16 + v15);
  v17 = type metadata accessor for Transaction();
  __chkstk_darwin(v17);
  *&v20[-32] = v11;
  *&v20[-24] = v16;
  *&v20[-16] = 0;
  *&v20[-8] = 0;
  static Transaction.named<A>(_:with:)();

  sub_10073B5F0(v10);
  v18 = *(v3 + 280);
  sub_100A8306C(11);
  return 1;
}

uint64_t sub_1011A3678(uint64_t a1)
{
  sub_100525F50();
  v6 = Set.init(minimumCapacity:)();
  sub_100DEEF64(&v5, 14);
  sub_100DEEF64(&v5, 15);
  sub_100DEEF64(&v5, 16);
  sub_100DEEF64(&v5, 17);
  sub_100DEEF64(&v5, 18);
  sub_100DEEF64(&v5, 19);
  v2 = v6;
  v3 = type metadata accessor for BeaconObservation();
  LOBYTE(a1) = sub_101120594(*(a1 + *(v3 + 24)), v2);

  return a1 & 1;
}

void sub_1011A3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    v13 = 14;
LABEL_8:

    goto LABEL_9;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    v13 = 14;
    goto LABEL_9;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
    v13 = 15;
    goto LABEL_8;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    v13 = 15;
    goto LABEL_9;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    v13 = 16;
    goto LABEL_8;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    v13 = 16;
    goto LABEL_9;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {
    v13 = 17;
    goto LABEL_8;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    v13 = 17;
    goto LABEL_9;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
  {
    v13 = 18;
    goto LABEL_8;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    v13 = 18;
    goto LABEL_9;
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {
    v13 = 19;
    goto LABEL_8;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v41 & 1) == 0)
  {
    static os_log_type_t.error.getter();
    sub_10039722C();
    v42 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPTagSeparationError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1011A3B7C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, v43);

    return;
  }

  v13 = 19;
LABEL_9:
  v14 = *sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_1011A3450(a2, v13);
  v15 = *(a4 + 16);

  v15(a4, 0);
}

unint64_t sub_1011A3B7C()
{
  result = qword_1016962F8;
  if (!qword_1016962F8)
  {
    type metadata accessor for SPTagSeparationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016962F8);
  }

  return result;
}

uint64_t sub_1011A3BD4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1011A3C5C()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1011A3C80, v1, 0);
}

uint64_t sub_1011A3C80()
{
  v1 = v0[8];
  v0[9] = type metadata accessor for LocalStorageDatabase();
  v0[10] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase);
  Database.startup()();
  v0[11] = v2;
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[8];

    return _swift_task_switch(sub_1011A3D84, v5, 0);
  }
}

uint64_t sub_1011A3D84()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v0[12] = Database.readConnection.getter();

  return _swift_task_switch(sub_1011A3DF4, 0, 0);
}

uint64_t sub_1011A3DF4()
{
  if (!v0[12])
  {
    sub_10020223C();
    swift_allocError();
    *v5 = 2;
    *(v5 + 4) = 1;
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Table();
  v3 = sub_1000076D4(v2, qword_10177BAB8);
  v0[5] = v2;
  v0[6] = &protocol witness table for Table;
  v4 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  sub_1011A7160();
  if (v1)
  {

    sub_100007BAC(v0 + 2);
LABEL_7:
    v6 = v0[1];

    return v6();
  }

  sub_100007BAC(v0 + 2);
  v8 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1011A3FBC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1011A411C, v1, 0);
}

uint64_t sub_1011A411C()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1011A4140, v1, 0);
}

uint64_t sub_1011A4140()
{
  v1 = v0[16];
  v0[17] = type metadata accessor for LocalStorageDatabase();
  v0[18] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase);
  Database.startup()();
  v0[19] = v2;
  if (v2)
  {
    v3 = v0[15];
    v4 = v0[12];
    v5 = v0[9];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];

    return _swift_task_switch(sub_1011A4264, v8, 0);
  }
}

uint64_t sub_1011A4264()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v0[20] = Database.readConnection.getter();

  return _swift_task_switch(sub_1011A42D4, 0, 0);
}

uint64_t sub_1011A42D4()
{
  if (!v0[20])
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[13], qword_10177BAB8);
  if (qword_101694C70 != -1)
  {
    swift_once();
  }

  v26 = v0[19];
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v24 = v0[15];
  v25 = v0[10];
  v5 = v0[9];
  v6 = v0[7];
  v7 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v7, qword_10177BAE8);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, v6, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  == infix<A>(_:_:)();
  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
  QueryType.filter(_:)();
  (*(v4 + 8))(v3, v25);
  v0[5] = v2;
  v0[6] = &protocol witness table for Table;
  v10 = sub_1000280DC(v0 + 2);
  (*(v1 + 16))(v10, v24, v2);
  sub_1011A7160();
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[13];
  if (v26)
  {
    (*(v11 + 8))(v0[15], v0[13]);

    sub_100007BAC(v0 + 2);
LABEL_9:
    v15 = v0[15];
    v16 = v0[12];
    v17 = v0[9];

    v18 = v0[1];

    return v18();
  }

  v20 = v0[12];
  v21 = v0[9];
  sub_100007BAC(v0 + 2);
  v22 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  (*(v11 + 8))(v12, v13);

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_1011A4668(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1011A4790, v1, 0);
}

uint64_t sub_1011A4790()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_1011A47B4, v1, 0);
}

uint64_t sub_1011A47B4()
{
  v1 = v0[17];
  v0[18] = type metadata accessor for LocalStorageDatabase();
  v0[19] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase);
  Database.startup()();
  v0[20] = v2;
  if (v2)
  {
    v3 = v0[16];
    v4 = v0[13];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[17];

    return _swift_task_switch(sub_1011A48CC, v7, 0);
  }
}

uint64_t sub_1011A48CC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v0[21] = Database.readConnection.getter();

  return _swift_task_switch(sub_1011A493C, 0, 0);
}

uint64_t sub_1011A493C()
{
  if (!v0[21])
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[14], qword_10177BAB8);
  if (qword_101694CB8 != -1)
  {
    swift_once();
  }

  v22 = v0[20];
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v8, qword_10177BBC0);
  v0[7] = MACAddress.dataRepresentation.getter();
  v0[8] = v9;
  sub_1011A70B4(&qword_101699DC8, &type metadata accessor for Blob);
  == infix<A>(_:_:)();
  sub_100006654(v0[7], v0[8]);
  QueryType.filter(_:)();
  (*(v5 + 8))(v4, v6);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v10 = sub_1000280DC(v0 + 2);
  (*(v2 + 16))(v10, v1, v3);
  sub_1011A7160();
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  if (v22)
  {
    (*(v12 + 8))(v0[16], v0[14]);

    sub_100007BAC(v0 + 2);
LABEL_9:
    v15 = v0[16];
    v16 = v0[13];

    v17 = v0[1];

    return v17();
  }

  v19 = v0[13];
  sub_100007BAC(v0 + 2);
  v20 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  (*(v12 + 8))(v11, v13);

  v21 = v0[1];

  return v21(v20);
}

uint64_t sub_1011A4C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_101699D68, &unk_1013B6450) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for Row();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  v12 = type metadata accessor for Table();
  v4[21] = v12;
  v13 = *(v12 - 8);
  v4[22] = v13;
  v14 = *(v13 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1011A4E44, v3, 0);
}

uint64_t sub_1011A4E44()
{
  v1 = *(*(v0 + 96) + 112);
  *(v0 + 208) = v1;
  return _swift_task_switch(sub_1011A4E68, v1, 0);
}

uint64_t sub_1011A4E68()
{
  v1 = v0[26];
  v0[27] = type metadata accessor for LocalStorageDatabase();
  v0[28] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase);
  Database.startup()();
  v0[29] = v2;
  if (v2)
  {
    v4 = v0[24];
    v3 = v0[25];
    v5 = v0[23];
    v6 = v0[20];
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[13];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[26];

    return _swift_task_switch(sub_1011A4FCC, v12, 0);
  }
}

uint64_t sub_1011A4FCC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v0[30] = Database.readConnection.getter();

  return _swift_task_switch(sub_1011A503C, 0, 0);
}

uint64_t sub_1011A503C()
{
  if (v0[30])
  {
    if (qword_101694C60 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[21], qword_10177BAB8);
    if (qword_101694CB0 != -1)
    {
      swift_once();
    }

    v1 = v0[23];
    v2 = v0[20];
    v3 = v0[21];
    v5 = v0[18];
    v4 = v0[19];
    v7 = v0[10];
    v6 = v0[11];
    v8 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v8, qword_10177BBA8);
    v0[7] = v7;
    v0[8] = v6;
    sub_100017D5C(v7, v6);
    sub_1011A70B4(&qword_101699DC8, &type metadata accessor for Blob);
    == infix<A>(_:_:)();
    sub_100016590(v0[7], v0[8]);
    QueryType.filter(_:)();
    (*(v4 + 8))(v2, v5);
    sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101694CC0 != -1)
    {
      swift_once();
    }

    v9 = v0[29];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[22];
    v13 = v0[23];
    v14 = v0[21];
    v15 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v15, qword_10177BBD8);
    sub_1011A70FC();
    ExpressionType.desc.getter();
    QueryType.order(_:)();

    v16 = v13;
    v17 = *(v12 + 8);
    v17(v16, v14);
    QueryType.limit(_:)();
    v17(v11, v14);
    v0[5] = v14;
    v0[6] = &protocol witness table for Table;
    v18 = sub_1000280DC(v0 + 2);
    (*(v12 + 16))(v18, v10, v14);
    Connection.prepare(_:)();
    if (!v9)
    {
      v30 = v0[14];
      v29 = v0[15];
      v31 = v0[13];
      sub_100007BAC(v0 + 2);
      dispatch thunk of _AnySequenceBox._makeIterator()();

      dispatch thunk of _AnyIteratorBoxBase.next()();

      if ((*(v29 + 48))(v31, 1, v30) == 1)
      {
        v32 = v0[13];
        v17(v0[25], v0[21]);

        sub_10000B3A8(v32, &qword_101699D68, &unk_1013B6450);
        v33 = 1;
      }

      else
      {
        v35 = v0[16];
        v34 = v0[17];
        v37 = v0[14];
        v36 = v0[15];
        v38 = v0[9];
        (*(v36 + 32))(v34, v0[13], v37);
        (*(v36 + 16))(v35, v34, v37);
        sub_10111D480(v35, v38);
        v39 = v0[25];
        v40 = v0[21];
        v41 = v0[17];
        v43 = v0[14];
        v42 = v0[15];

        (*(v42 + 8))(v41, v43);
        v17(v39, v40);
        v33 = 0;
      }

      v45 = v0[24];
      v44 = v0[25];
      v46 = v0[23];
      v47 = v0[20];
      v49 = v0[16];
      v48 = v0[17];
      v50 = v0[13];
      v51 = v0[9];
      v52 = type metadata accessor for AccessoryPairingAnalytics();
      (*(*(v52 - 8) + 56))(v51, v33, 1, v52);

      v27 = v0[1];
      goto LABEL_12;
    }

    v17(v0[25], v0[21]);

    sub_100007BAC(v0 + 2);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
  }

  v21 = v0[24];
  v20 = v0[25];
  v22 = v0[23];
  v23 = v0[20];
  v25 = v0[16];
  v24 = v0[17];
  v26 = v0[13];

  v27 = v0[1];
LABEL_12:

  return v27();
}

uint64_t sub_1011A55FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = type metadata accessor for Delete();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1011A57B8, v1, 0);
}

uint64_t sub_1011A57B8()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_1011A57DC, v1, 0);
}

uint64_t sub_1011A57DC()
{
  v1 = v0[14];
  v0[15] = type metadata accessor for LocalStorageDatabase();
  v0[16] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase);
  Database.startup()();
  v0[17] = v2;
  if (v2)
  {
    v3 = v0[13];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[4];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[14];

    return _swift_task_switch(sub_1011A5918, v9, 0);
  }
}

uint64_t sub_1011A5918()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v0[18] = Database.writeConnection.getter();

  return _swift_task_switch(sub_1011A5988, 0, 0);
}

uint64_t sub_1011A5988()
{
  if (v0[18])
  {
    v27 = v0[18];
    if (qword_101694C60 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[8], qword_10177BAB8);
    if (qword_101694C70 != -1)
    {
      swift_once();
    }

    v24 = v0[17];
    v25 = v0[12];
    v1 = v0[10];
    v26 = v0[11];
    v2 = v0[8];
    v22 = v0[13];
    v23 = v0[9];
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[4];
    v21 = v0[5];
    v6 = v0[2];
    v7 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
    sub_1000076D4(v7, qword_10177BAE8);
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, v6, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    == infix<A>(_:_:)();
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
    QueryType.filter(_:)();
    (*(v3 + 8))(v4, v21);
    QueryType.delete()();
    (*(v23 + 8))(v1, v2);
    Connection.run(_:)();
    (*(v25 + 8))(v22, v26);

    if (!v24)
    {
      v10 = v0[13];
      v11 = v0[10];
      v12 = v0[7];
      v13 = v0[4];

      v14 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v15 = 2;
    *(v15 + 4) = 1;
    swift_willThrow();
  }

  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];
  v19 = v0[4];

  v14 = v0[1];
LABEL_10:

  return v14();
}

uint64_t sub_1011A5CC8(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for OnConflict();
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v2[22] = v10;
  v11 = *(v10 - 8);
  v2[23] = v11;
  v12 = *(v11 + 64) + 15;
  v2[24] = swift_task_alloc();
  v13 = type metadata accessor for Insert();
  v2[25] = v13;
  v14 = *(v13 - 8);
  v2[26] = v14;
  v15 = *(v14 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1011A5EE0, v1, 0);
}

uint64_t sub_1011A5EE0()
{
  v1 = *(*(v0 + 112) + 112);
  *(v0 + 224) = v1;
  return _swift_task_switch(sub_1011A5F04, v1, 0);
}

uint64_t sub_1011A5F04()
{
  v1 = v0[28];
  v0[29] = type metadata accessor for LocalStorageDatabase();
  v0[30] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase);
  Database.startup()();
  v0[31] = v2;
  if (v2)
  {
    v3 = v0[27];
    v4 = v0[24];
    v5 = v0[21];
    v6 = v0[18];
    v7 = v0[15];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[28];

    return _swift_task_switch(sub_1011A604C, v10, 0);
  }
}

uint64_t sub_1011A604C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v0[32] = Database.writeConnection.getter();

  return _swift_task_switch(sub_1011A60BC, 0, 0);
}

unint64_t sub_1011A60BC()
{
  if (!*(v0 + 256))
  {
    sub_10020223C();
    swift_allocError();
    *v39 = 2;
    *(v39 + 4) = 1;
    swift_willThrow();
    goto LABEL_49;
  }

  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = sub_1000076D4(v3, qword_10177BAB8);
  (*(v1 + 16))(v2, v7, v3);
  (*(v6 + 104))(v4, enum case for OnConflict.replace(_:), v5);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v8 = *(type metadata accessor for Setter() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1013E2E80;
  if (qword_101694C68 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 104);
  v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v12, qword_10177BAD0);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694C70 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 104);
  v14 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v14, qword_10177BAE8);
  v15 = type metadata accessor for AccessoryPairingAnalytics();
  v16 = v15[5];
  <- infix<A>(_:_:)();
  if (qword_101694C80 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 104);
  v18 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v18, qword_10177BB18);
  *(v0 + 272) = *(v17 + v15[6]);
  sub_100028088();
  <- infix<A>(_:_:)();
  if (qword_101694CB0 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 104);
  v20 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v20, qword_10177BBA8);
  v21 = (v19 + v15[7]);
  v22 = *v21;
  v23 = v21[1];
  *(v0 + 16) = *v21;
  *(v0 + 24) = v23;
  sub_100017D5C(v22, v23);
  <- infix<A>(_:_:)();
  sub_100016590(*(v0 + 16), *(v0 + 24));
  if (qword_101694C78 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 104);
  v86 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v86, qword_10177BB00);
  v25 = (v24 + v15[8]);
  v26 = v25[1];
  *(v0 + 32) = *v25;
  *(v0 + 40) = v26;

  <- infix<A>(_:_:)();

  if (qword_101694CB8 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 136);
  v28 = *(v0 + 144);
  v30 = *(v0 + 120);
  v29 = *(v0 + 128);
  v31 = *(v0 + 104);
  v32 = sub_1000076D4(v29, qword_10177BBC0);
  (*(v27 + 16))(v28, v32, v29);
  v88 = v15;
  sub_1011A7044(v31 + v15[12], v30);
  v33 = type metadata accessor for MACAddress();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v30, 1, v33);
  v36 = *(v0 + 120);
  if (v35 == 1)
  {
    sub_10000B3A8(*(v0 + 120), &qword_1016A40D0, &unk_10138BE70);
    v37 = 0;
    v38 = 0xF000000000000000;
  }

  else
  {
    v40 = *(v0 + 120);
    v37 = MACAddress.dataRepresentation.getter();
    v38 = v41;
    (*(v34 + 8))(v36, v33);
  }

  v42 = *(v0 + 136);
  v43 = *(v0 + 144);
  v44 = *(v0 + 128);
  *(v0 + 48) = v37;
  *(v0 + 56) = v38;
  <- infix<A>(_:_:)();
  sub_100006654(*(v0 + 48), *(v0 + 56));
  (*(v42 + 8))(v43, v44);
  if (qword_101694C90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 104);
  v46 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v46, qword_10177BB48);
  v47 = v45 + v88[9];
  v48 = *v47;
  v49 = *(v47 + 8);
  if ((sub_100313A28(*v47, v49) & 0x8000000000000000) == 0 && sub_100313A28(v48, v49) < &_mh_execute_header)
  {
    result = sub_100313A28(v48, v49);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(result))
    {
      goto LABEL_27;
    }

    __break(1u);
    return result;
  }

  LODWORD(result) = 0;
LABEL_27:
  *(v0 + 264) = result;
  sub_10022A60C();
  <- infix<A>(_:_:)();
  if (qword_101694C88 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v46, qword_10177BB30);
  *(v0 + 268) = sub_100313BD8(*v47, *(v47 + 8));
  <- infix<A>(_:_:)();
  if (qword_101694C98 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 104);
  sub_1000076D4(v86, qword_10177BB60);
  v52 = 0xE700000000000000;
  v53 = 0x6E776F6E6B6E75;
  v54 = 0xE800000000000000;
  v55 = 0x6465726961706E75;
  if (*(v51 + v88[10]) != 2)
  {
    v55 = 0x64656B636F6CLL;
    v54 = 0xE600000000000000;
  }

  if (*(v51 + v88[10]))
  {
    v53 = 0x646572696170;
    v52 = 0xE600000000000000;
  }

  if (*(v51 + v88[10]) <= 1u)
  {
    v56 = v53;
  }

  else
  {
    v56 = v55;
  }

  if (*(v51 + v88[10]) <= 1u)
  {
    v57 = v52;
  }

  else
  {
    v57 = v54;
  }

  *(v0 + 64) = v56;
  *(v0 + 72) = v57;
  <- infix<A>(_:_:)();

  if (qword_101694CA0 != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 104);
  v59 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v59, qword_10177BB78);
  *(v0 + 96) = *(v58 + v88[11]) - 1;
  <- infix<A>(_:_:)();
  if (qword_101694CA8 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 104);
  v61 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v61, qword_10177BB90);
  v62 = (v60 + v88[13]);
  v63 = v62[1];
  *(v0 + 80) = *v62;
  *(v0 + 88) = v63;

  <- infix<A>(_:_:)();

  if (qword_101694CC0 != -1)
  {
    swift_once();
  }

  v87 = *(v0 + 248);
  v64 = *(v0 + 216);
  v66 = *(v0 + 184);
  v65 = *(v0 + 192);
  v67 = *(v0 + 168);
  v68 = *(v0 + 176);
  v69 = *(v0 + 160);
  v85 = *(v0 + 152);
  v70 = *(v0 + 104);
  v71 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v71, qword_10177BBD8);
  v72 = v88[14];
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  QueryType.insert(or:_:)();

  (*(v69 + 8))(v67, v85);
  (*(v66 + 8))(v65, v68);
  Connection.run(_:)();
  v73 = *(v0 + 208);
  if (!v87)
  {
    v80 = *(v0 + 192);
    v81 = *(v0 + 168);
    v82 = *(v0 + 144);
    v83 = *(v0 + 120);
    v84 = *(v0 + 216);
    (*(v73 + 8))();

    v79 = *(v0 + 8);
    goto LABEL_51;
  }

  (*(v73 + 8))(*(v0 + 216), *(v0 + 200));

LABEL_49:
  v74 = *(v0 + 216);
  v75 = *(v0 + 192);
  v76 = *(v0 + 168);
  v77 = *(v0 + 144);
  v78 = *(v0 + 120);

  v79 = *(v0 + 8);
LABEL_51:

  return v79();
}

uint64_t sub_1011A6C24()
{
  v1[2] = v0;
  v2 = type metadata accessor for Delete();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1011A6CE4, v0, 0);
}

uint64_t sub_1011A6CE4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_1011A6D08, v1, 0);
}

uint64_t sub_1011A6D08()
{
  v1 = v0[6];
  v0[7] = type metadata accessor for LocalStorageDatabase();
  v0[8] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase);
  Database.startup()();
  v0[9] = v2;
  if (v2)
  {
    v3 = v0[5];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[6];

    return _swift_task_switch(sub_1011A6E14, v6, 0);
  }
}

uint64_t sub_1011A6E14()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v0[10] = Database.writeConnection.getter();

  return _swift_task_switch(sub_1011A6E84, 0, 0);
}

uint64_t sub_1011A6E84()
{
  if (v0[10])
  {
    if (qword_101694C60 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0[3];
    v5 = type metadata accessor for Table();
    sub_1000076D4(v5, qword_10177BAB8);
    QueryType.delete()();
    Connection.run(_:)();
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v6 = 2;
    *(v6 + 4) = 1;
    swift_willThrow();
  }

  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1011A6FE0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1011A7044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011A70B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1011A70FC()
{
  result = qword_101699D88;
  if (!qword_101699D88)
  {
    sub_1000BC580(&qword_101699D78, &unk_1013BF4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699D88);
  }

  return result;
}

uint64_t sub_1011A7160()
{
  v0 = type metadata accessor for AccessoryPairingAnalytics();
  v52 = *(v0 - 8);
  v1 = *(v52 + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v41 - v6;
  __chkstk_darwin(v5);
  v9 = &v41 - v8;
  v10 = type metadata accessor for Row();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v41 - v19;
  v21 = v53;
  result = Connection.prepare(_:)();
  if (!v21)
  {
    v53 = 0;
    v49 = v9;
    v50 = v14;
    v51 = v7;

    dispatch thunk of _AnySequenceBox._makeIterator()();
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v23 = v46;
    v47 = *(v46 + 48);
    v48 = v46 + 48;
    if (v47(v20, 1, v10) == 1)
    {
      v24 = _swiftEmptyArrayStorage;
LABEL_4:

      sub_1000BC4D4(&qword_1016CA128, &qword_10140A638);
      result = swift_allocObject();
      *(result + 16) = v24;
    }

    else
    {
      v25 = v10;
      v26 = v23 + 32;
      v27 = *(v23 + 32);
      v45 = (v23 + 16);
      v46 = v27;
      v44 = (v23 + 8);
      v24 = _swiftEmptyArrayStorage;
      v42 = v25;
      v43 = v4;
      while (1)
      {
        v28 = v20;
        v29 = v26;
        (v46)(v16, v20, v25);
        v30 = v50;
        (*v45)(v50, v16, v25);
        v31 = v25;
        v32 = v51;
        v33 = v53;
        v34 = sub_10111D480(v30, v51);
        v53 = v33;
        if (v33)
        {
          break;
        }

        (*v44)(v16, v31, v34);
        v35 = v32;
        v36 = v49;
        sub_1011A75C0(v35, v49);
        sub_1011A75C0(v36, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_100A5EABC(0, v24[2] + 1, 1, v24);
        }

        v20 = v28;
        v38 = v24[2];
        v37 = v24[3];
        if (v38 >= v37 >> 1)
        {
          v24 = sub_100A5EABC(v37 > 1, v38 + 1, 1, v24);
        }

        v24[2] = v38 + 1;
        v39 = v24 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v38;
        v4 = v43;
        sub_1011A75C0(v43, v39);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v25 = v42;
        v40 = v47(v28, 1, v42);
        v26 = v29;
        if (v40 == 1)
        {
          goto LABEL_4;
        }
      }

      (*v44)(v16, v31);
    }
  }

  return result;
}

uint64_t sub_1011A75C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryPairingAnalytics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011A7624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016CA2A8, &unk_10140A700);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *a2 = PassthroughSubject.init()();
  v33 = sub_1000BC488();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_1000249C8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  a2[1] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for BeaconPayloadFileManager();
  v16 = v15[6];
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 32))(a2 + v16, v34, v17);
  v18 = v15[7];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v19 = qword_10177B348;
  v20 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v21 = v35;
  v22 = sub_101073524(v35);
  v23 = sub_101073C48(v21);

  *(a2 + v18) = v22 * 60.0 / v23;
  v24 = v15[8];
  v25 = *(v19 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v26 = sub_101073C48(v35);

  *(a2 + v24) = v26;
  v27 = v15[9];
  v28 = *(v19 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C64(v35);
  v30 = v29;

  *(a2 + v27) = v30;
  v31 = v15[10];
  type metadata accessor for BeaconPayloadCountEstimate();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(a2 + v31) = result;
  return result;
}

uint64_t sub_1011A7A60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v23 = *(v10 - 8);
  v24 = v10;
  v11 = *(v23 + 64);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BeaconPayloadFileManager();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v22[1] = *(v3 + 8);
  sub_1011AC80C(v3, v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconPayloadFileManager);
  v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v18 = swift_allocObject();
  sub_1011AC874(v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for BeaconPayloadFileManager);
  v19 = (v18 + ((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a1;
  v19[1] = a2;
  aBlock[4] = sub_1011AC8DC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101669878;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000249C8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v25 + 8))(v9, v6);
  (*(v23 + 8))(v13, v24);
}

uint64_t sub_1011A7DE8(uint64_t (*a1)(char *), uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v41 = type metadata accessor for URLResourceValues();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v41);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v45 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectorySequence();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for BeaconPayloadFileManager() + 24);
  sub_1000BC4D4(&qword_10169F480, &qword_1013A0A50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  *(v18 + 32) = NSURLIsDirectoryKey;
  v19 = objc_opt_self();
  v20 = NSURLIsDirectoryKey;
  v21 = [v19 defaultManager];
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

  v44 = v16;
  DirectorySequence.next()();
  v22 = *(v10 + 48);
  v43 = (v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
LABEL_2:

    (*(v35 + 8))(v44, v36);
    return sub_10000B3A8(v8, &unk_101696AC0, &qword_101390A60);
  }

  v24 = v42;
  v25 = (v2 + 8);
  v26 = (v43 - 5);
  v39 = *(v43 - 2);
  v40 = v43 - 2;
  while (1)
  {
    v27 = v8;
    v28 = v8;
    v29 = v9;
    v39(v45, v28, v9);
    v30 = objc_autoreleasePoolPush();

    sub_10112A718(v31);

    URL.resourceValues(forKeys:)();

    v32 = URLResourceValues.isDirectory.getter();
    if (v32 != 2 && (v32 & 1) != 0)
    {
      break;
    }

    (*v25)(v24, v41);
    objc_autoreleasePoolPop(v30);
    v9 = v29;
    (*v26)(v45, v29);
LABEL_5:
    v8 = v27;
    DirectorySequence.next()();
    if ((*v43)(v27, 1, v9) == 1)
    {
      goto LABEL_2;
    }
  }

  v33 = v45;
  v34 = v37(v45);
  (*v25)(v24, v41);
  objc_autoreleasePoolPop(v30);
  v9 = v29;
  (*v26)(v33, v29);
  if (v34)
  {
    goto LABEL_5;
  }

  return (*(v35 + 8))(v44, v36);
}

void sub_1011A82B0(uint64_t a1)
{
  v3 = v2;
  dispatch_assert_queue_V2(*(v1 + 8));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(type metadata accessor for URL() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      sub_1011AA3E8(v7, v1, &v10);
      if (v3)
      {
        break;
      }

      v3 = 0;
      objc_autoreleasePoolPop(v9);
      v7 += v8;
      if (!--v5)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v9);
  }
}

uint64_t sub_1011A8398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v49 = type metadata accessor for URLResourceValues();
  v51 = *(v49 - 8);
  v4 = *(v51 + 64);
  __chkstk_darwin(v49);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for URL();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DirectorySequence();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  __chkstk_darwin(v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(a1 + 8);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if (v26)
  {
    v52 = v6;
    v42 = type metadata accessor for BeaconPayloadFileManager();
    v27 = *(v42 + 24);
    v28 = [objc_opt_self() defaultManager];
    v53 = a1;
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

    v29 = (v43 + 48);
    v48 = (v51 + 8);
    v50 = (v43 + 32);
    v51 = v43 + 8;
    v30 = v18;
    while (1)
    {
      DirectorySequence.next()();
      if ((*v29)(v10, 1, v11) == 1)
      {
        break;
      }

      v31 = v10;
      (*v50)(v14, v10, v11);
      v32 = objc_autoreleasePoolPush();
      sub_10112A718(_swiftEmptyArrayStorage);
      v33 = v11;
      v34 = v52;
      URL.resourceValues(forKeys:)();

      v35 = sub_1011A8F44(v14);
      (*v48)(v34, v49);
      objc_autoreleasePoolPop(v32);
      (*v51)(v14, v33);
      v11 = v33;
      v10 = v31;
      if ((v35 & 1) == 0)
      {
        (*(v44 + 8))(v30, v45);
        goto LABEL_7;
      }
    }

    (*(v44 + 8))(v30, v45);
    sub_10000B3A8(v10, &unk_101696AC0, &qword_101390A60);
LABEL_7:
    v36 = *(v53 + *(v42 + 40));
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    return sub_1011A899C(0, v46, v47);
  }

  else
  {
    __break(1u);
    swift_once();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_101385D80;
    v54 = v26;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_100008C00();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    sub_1011A899C(v26, v46, v47);
  }
}

uint64_t sub_1011A899C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v19 = swift_allocObject();
  v19[2] = v23;
  v19[3] = a3;
  v19[4] = a1;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016698C8;
  v20 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000249C8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v8, v5);
  (*(v24 + 8))(v12, v25);
}

void sub_1011A8D3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v24 = 0;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a1 & 1;
  v22 = 0;
  v23 = 0;
  v21 = _swiftEmptyArrayStorage;
  v15[2] = a4;
  v15[3] = &v23;
  v15[4] = sub_1011AAD7C;
  v15[5] = v12;
  v15[6] = sub_1011AAD70;
  v15[7] = v11;
  v15[8] = a3;
  v16 = 0;
  v17 = &v22;
  v18 = &v21;
  v19 = &v24;

  sub_1011A7DE8(sub_1011AADC0, v15);
  v13 = objc_autoreleasePoolPush();
  sub_1011A9F0C(sub_1011AAD70, v11, &v21, &v20);
  objc_autoreleasePoolPop(v13);
  if (v5)
  {
    __break(1u);
  }

  else
  {

    v14 = v20;

    *a5 = v14;
  }
}

uint64_t sub_1011A8F44(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016B3A48, &qword_1013D47E8);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  (*(v3 + 16))(v6 + v5, a1, v2);
  sub_1011A82B0(v6);
  swift_setDeallocating();
  (*(v3 + 8))(v6 + v5, v2);
  swift_deallocClassInstance();
  return 1;
}

uint64_t sub_1011A9174(void (**a1)(char *, char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10, size_t *a11, void *a12)
{
  v104 = a8;
  v119 = a7;
  v135 = a1;
  v136 = a3;
  v107 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v106 = *(v107 - 8);
  v15 = *(v106 + 64);
  v16 = __chkstk_darwin(v107);
  v99 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v98 = &v98 - v19;
  __chkstk_darwin(v18);
  v114 = &v98 - v20;
  v116 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v132 = *(v116 - 8);
  v21 = *(v132 + 8);
  v22 = __chkstk_darwin(v116);
  v113 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v102 = &v98 - v24;
  v25 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v130 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v120 = &v98 - v30;
  __chkstk_darwin(v29);
  v32 = &v98 - v31;
  v33 = type metadata accessor for URLResourceValues();
  v125 = *(v33 - 8);
  v126 = v33;
  v34 = v125[8];
  __chkstk_darwin(v33);
  v36 = &v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v98 - v39;
  v41 = type metadata accessor for URL();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v41);
  v127 = &v98 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v137 = &v98 - v46;
  v101 = type metadata accessor for DirectorySequence();
  v100 = *(v101 - 8);
  v47 = *(v100 + 64);
  __chkstk_darwin(v101);
  v133 = &v98 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = objc_opt_self();
  v108 = a5;
  sub_100012908(a4);
  v50 = v41;
  sub_100012908(a6);
  v51 = [v49 defaultManager];
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

  DirectorySequence.next()();
  v52 = *(v42 + 48);
  v129 = a4;
  v117 = a6;
  v53 = a4 | a6;
  v54 = v32;
  v55 = v116;
  v56 = v53 == 0;
  v131 = (v42 + 48);
  if (v52(v40, 1, v50) == 1)
  {
LABEL_2:
    (*(v100 + 8))(v133, v101);
    sub_10000B3A8(v40, &unk_101696AC0, &qword_101390A60);
    sub_1000BB27C(v117);
    sub_1000BB27C(v129);
    return 1;
  }

  v112 = a12;
  v57 = a10;
  v118 = a11;
  v135 = (v131 - 4);
  v111 = a9;
  v115 = v56 | a9;
  v103 = (v132 + 56);
  v128 = (v131 - 5);
  v121 = (v132 + 48);
  v122 = (v125 + 1);
  v124 = *(v131 - 2);
  v125 = v131 - 2;
  v109 = v32;
  v110 = v36;
  v105 = a10;
  v134 = v50;
  v123 = v40;
  while (1)
  {
    v124(v137, v40, v50);
    v58 = objc_autoreleasePoolPush();
    sub_10112A718(_swiftEmptyArrayStorage);
    URL.resourceValues(forKeys:)();

    if (__OFADD__(*v136, 1))
    {
      break;
    }

    v60 = v137;
    ++*v136;
    v61 = v50;
    v62 = *v135;
    v63 = v127;
    (*v135)(v127, v60, v61);
    v64 = type metadata accessor for BeaconPayloadFile(0);
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    if (!sub_10047815C(v63))
    {
      v50 = v134;
      goto LABEL_38;
    }

    v132 = v58;
    if (v115)
    {
      result = (*v103)(v54, 1, 1, v55);
    }

    else
    {
      result = sub_1004784B0(v54);
    }

    if (v129)
    {
      v67 = v120;
      sub_1000D2A70(v54, v120, &qword_10169BA58, &unk_101395640);
      if ((*v121)(v67, 1, v55) == 1)
      {
        result = sub_10000B3A8(v120, &qword_10169BA58, &unk_101395640);
      }

      else
      {
        v68 = v102;
        sub_1011AC874(v120, v102, type metadata accessor for BeaconPayloadFile.MetaData);

        v69 = v129;
        v70 = v129(v68);
        v36 = v110;
        v55 = v116;
        sub_1000BB27C(v69);
        v71 = v68;
        v57 = v105;
        v54 = v109;
        result = sub_1004796F8(v71);
        if ((v70 & 1) == 0)
        {
          sub_10000B3A8(v54, &qword_10169BA58, &unk_101395640);

          v50 = v134;
          goto LABEL_37;
        }
      }
    }

    if (__OFADD__(*v57, 1))
    {
      goto LABEL_45;
    }

    ++*v57;
    v72 = v130;
    sub_1000D2A70(v54, v130, &qword_10169BA58, &unk_101395640);
    if ((*v121)(v72, 1, v55) == 1)
    {
      sub_10000B3A8(v130, &qword_10169BA58, &unk_101395640);
      v73 = v57;
    }

    else
    {
      v74 = v113;
      sub_1011AC874(v130, v113, type metadata accessor for BeaconPayloadFile.MetaData);
      v75 = *(v107 + 48);
      v76 = v114;
      v62(v114, v137, v134);
      sub_1011AC80C(v74, v76 + v75, type metadata accessor for BeaconPayloadFile.MetaData);
      v77 = v118;
      v78 = *v118;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v77 = v78;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = sub_100A5F10C(0, v78[2] + 1, 1, v78);
        *v77 = v78;
      }

      v81 = v78[2];
      v80 = v78[3];
      v54 = v109;
      v36 = v110;
      if (v81 >= v80 >> 1)
      {
        v97 = sub_100A5F10C(v80 > 1, v81 + 1, 1, v78);
        *v118 = v97;
      }

      sub_1004796F8(v113);
      v82 = v118;
      v83 = *v118;
      *(v83 + 16) = v81 + 1;
      sub_1011AAE0C(v114, v83 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v81);
      v73 = (*v82 + 16);
      v55 = v116;
    }

    *v112 = *v73;
    v50 = v134;
    if (v111)
    {
      sub_10000B3A8(v54, &qword_10169BA58, &unk_101395640);

      goto LABEL_37;
    }

    if (v117)
    {
      v84 = v118;
      v85 = *(*v118 + 16);

      if (v85 < v104 || (result = sub_1011AC6E4(v84, v117, v119, sub_100607464), v86 = *v84, v87 = *(*v84 + 16), v87 <= v104))
      {
        sub_10000B3A8(v54, &qword_10169BA58, &unk_101395640);

        sub_1000BB27C(v117);
      }

      else
      {
        if (!v87)
        {
          goto LABEL_46;
        }

        v88 = *v84;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v89 = v86[2];
          if (!v89)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v86 = sub_100607464(v86);
          v89 = v86[2];
          if (!v89)
          {
LABEL_42:
            __break(1u);

            objc_autoreleasePoolPop(&unk_101395640);
            (*(v100 + 8))(v133, v101);
            (*v128)(v137, v50);
            sub_1000BB27C(v117);
            sub_1000BB27C(v129);

            return 1;
          }
        }

        v90 = v89 - 1;
        v91 = v99;
        sub_1011AAE0C(v86 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * (v89 - 1), v99);
        v86[2] = v90;
        v55 = v116;
        v92 = v118;
        *v118 = v86;

        sub_1000BB27C(v117);
        sub_10000B3A8(v54, &qword_10169BA58, &unk_101395640);
        v93 = v91;
        v36 = v110;
        v94 = v98;
        sub_1011AAE0C(v93, v98);
        sub_1004796F8(v94 + *(v107 + 48));
        (*v128)(v94, v50);
        *v112 = *(*v92 + 16);
      }

      v57 = v105;
LABEL_37:
      v58 = v132;
LABEL_38:
      (*v122)(v36, v126);
      objc_autoreleasePoolPop(v58);
      (*v128)(v137, v50);
      v40 = v123;
      goto LABEL_39;
    }

    sub_10000B3A8(v54, &qword_10169BA58, &unk_101395640);

    if (v129)
    {
      goto LABEL_37;
    }

    v95 = *v57;
    (*v122)(v36, v126);
    objc_autoreleasePoolPop(v132);
    (*v128)(v137, v50);
    v96 = v95 < v104;
    v40 = v123;
    if (!v96)
    {
      (*(v100 + 8))(v133, v101);
      sub_1000BB27C(v117);
      sub_1000BB27C(v129);
      return 0;
    }

LABEL_39:
    DirectorySequence.next()();
    if ((*v131)(v40, 1, v50) == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1011A9F0C@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v57 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v57);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v49 - v13;
  v14 = type metadata accessor for URL();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v16);
  if (!a1)
  {
    v36 = *a3;
    v37 = *(*a3 + 16);
    v24 = _swiftEmptyArrayStorage;
    if (v37)
    {
      v38 = &v49 - v20;
      v52 = a4;
      v53 = v4;
      v59 = _swiftEmptyArrayStorage;

      sub_1011257E8(0, v37, 0);
      v24 = v59;
      v39 = *(v9 + 80);
      v51 = v36;
      v40 = v36 + ((v39 + 32) & ~v39);
      v54 = *(v9 + 72);
      v41 = (v58 + 32);
      do
      {
        v42 = v56;
        sub_1000D2A70(v40, v56, &qword_1016A5A10, &unk_10140A6F0);
        v43 = v55;
        sub_1011AAE0C(v42, v55);
        v44 = *(v57 + 48);
        v45 = *v41;
        (*v41)(v38, v43, v14);
        sub_1004796F8(v43 + v44);
        v59 = v24;
        v46 = v38;
        v48 = v24[2];
        v47 = v24[3];
        if (v48 >= v47 >> 1)
        {
          sub_1011257E8(v47 > 1, v48 + 1, 1);
          v24 = v59;
        }

        v24[2] = v48 + 1;
        v45(v24 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v48, v46, v14);
        v40 += v54;
        --v37;
        v38 = v46;
      }

      while (v37);

      a4 = v52;
    }

    goto LABEL_16;
  }

  v59 = *a3;
  swift_bridgeObjectRetain_n();
  sub_100012908(a1);
  sub_1011AC6E4(&v59, a1, a2, sub_100B32250);
  if (!v4)
  {

    v21 = v59;
    v22 = v59[2];
    if (v22)
    {
      v50 = a1;
      v51 = a2;
      v52 = a4;
      v53 = 0;
      v59 = _swiftEmptyArrayStorage;
      v23 = v21;
      sub_1011257E8(0, v22, 0);
      v24 = v59;
      v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v26 = v9;
      v49 = v23;
      v27 = v23 + v25;
      v54 = *(v26 + 72);
      v28 = (v58 + 32);
      v29 = v14;
      do
      {
        v30 = v56;
        sub_1000D2A70(v27, v56, &qword_1016A5A10, &unk_10140A6F0);
        v31 = v55;
        sub_1011AAE0C(v30, v55);
        v32 = *(v57 + 48);
        v33 = *v28;
        (*v28)(v18, v31, v29);
        sub_1004796F8(v31 + v32);
        v59 = v24;
        v35 = v24[2];
        v34 = v24[3];
        if (v35 >= v34 >> 1)
        {
          sub_1011257E8(v34 > 1, v35 + 1, 1);
          v24 = v59;
        }

        v24[2] = v35 + 1;
        v33(v24 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v35, v18, v29);
        v27 += v54;
        --v22;
      }

      while (v22);
      sub_1000BB27C(v50);

      a4 = v52;
    }

    else
    {

      result = sub_1000BB27C(a1);
      v24 = _swiftEmptyArrayStorage;
    }

LABEL_16:
    *a4 = v24;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1011AA3E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v69 = a2;
  v70 = type metadata accessor for URLResourceValues();
  v67 = *(v70 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v70);
  v71 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for DirectorySequence();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for URL();
  v63 = *(v73 - 8);
  v16 = *(v63 + 64);
  v17 = __chkstk_darwin(v73);
  v72 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v58 - v19;
  v62 = objc_opt_self();
  v21 = [v62 defaultManager];
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v74 = 0;
  v25 = [v21 removeItemAtURL:v23 error:&v74];

  v26 = v74;
  if (v25)
  {
    v27 = *(v69 + *(type metadata accessor for BeaconPayloadFileManager() + 40));
    v28 = v73;
    if ((*(v27 + 24) & 1) == 0)
    {
      v29 = *(v27 + 16);
      v30 = __OFSUB__(v29, 1);
      v31 = v29 - 1;
      if (v30)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      *(v27 + 16) = v31;
      *(v27 + 24) = 0;
    }

    v32 = v26;
    URL.deletingLastPathComponent()();
    v33 = [v62 defaultManager];
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

    DirectorySequence.next()();
    v34 = v63;
    v68 = *(v63 + 48);
    v69 = v63 + 48;
    if (v68(v11, 1, v28) != 1)
    {
      v58 = v20;
      v59 = a3;
      v20 = 0;
      v48 = (v67 + 8);
      v66 = *(v34 + 32);
      v67 = v34 + 32;
      v64 = v48;
      v65 = (v34 + 8);
      v49 = v72;
      do
      {
        v50 = v15;
        v51 = v11;
        v66(v49, v11, v28);
        v52 = objc_autoreleasePoolPush();
        sub_10112A718(_swiftEmptyArrayStorage);
        v53 = v71;
        URL.resourceValues(forKeys:)();
        if (v3)
        {

          objc_autoreleasePoolPop(v52);
          v56 = *v65;
          v57 = v73;
          (*v65)(v72, v73);
          (*(v60 + 8))(v50, v61);
          result = (v56)(v58, v57);
          a3 = v59;
          goto LABEL_19;
        }

        (*v64)(v53, v70);

        v54 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        objc_autoreleasePoolPop(v52);
        v49 = v72;
        v28 = v73;
        (*v65)(v72, v73);
        v11 = v51;
        v15 = v50;
        DirectorySequence.next()();
        ++v20;
      }

      while (v68(v11, 1, v28) != 1);
      (*(v60 + 8))(v50, v61);
      sub_10000B3A8(v11, &unk_101696AC0, &qword_101390A60);
      v20 = v58;
      a3 = v59;
      if (!v54)
      {
        goto LABEL_7;
      }

      return (*(v63 + 8))(v20, v28);
    }

    (*(v60 + 8))(v15, v61);
    sub_10000B3A8(v11, &unk_101696AC0, &qword_101390A60);
LABEL_7:
    v35 = [v62 defaultManager];
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    v74 = 0;
    v39 = [v35 removeItemAtURL:v37 error:&v74];

    if (v39)
    {
      v40 = v74;
      static os_log_type_t.default.getter();
      if (qword_101695018 == -1)
      {
LABEL_9:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_101385D80;
        sub_1000249C8(&qword_1016B14E0, &type metadata accessor for URL);
        v42 = v73;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        *(v41 + 56) = &type metadata for String;
        *(v41 + 64) = sub_100008C00();
        *(v41 + 32) = v43;
        *(v41 + 40) = v45;
        os_log(_:dso:log:_:_:)();
        v28 = v42;

        return (*(v63 + 8))(v20, v28);
      }

LABEL_22:
      swift_once();
      goto LABEL_9;
    }

    v55 = v74;
    v5 = _convertNSErrorToError(_:)();

    swift_willThrow();
    result = (*(v63 + 8))(v20, v28);
  }

  else
  {
    v46 = v74;
    v5 = _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

LABEL_19:
  *a3 = v5;
  return result;
}

uint64_t type metadata accessor for BeaconPayloadFileManager()
{
  result = qword_1016CA248;
  if (!qword_1016CA248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1011AABCC()
{
  sub_1011AAC94();
  if (v0 <= 0x3F)
  {
    sub_1000BC488();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        type metadata accessor for BeaconPayloadCountEstimate();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1011AAC94()
{
  if (!qword_1016CA258)
  {
    sub_1000BC580(&unk_1016CA260, qword_10140A6B0);
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &qword_1016CA258);
    }
  }
}

uint64_t sub_1011AAD08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  type metadata accessor for BeaconPayloadCountEstimate();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a2 = result;
  return result;
}
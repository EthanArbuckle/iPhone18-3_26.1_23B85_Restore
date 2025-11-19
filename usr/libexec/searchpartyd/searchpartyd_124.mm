uint64_t sub_100D0563C(uint64_t a1)
{
  v4 = *(*v2 + 496);
  v5 = *v2;
  v5[63] = v1;

  if (v1)
  {
    v6 = v5[60];

    v7 = v5[58];
    v9 = v5[54];
    v8 = v5[55];
    v10 = v5[52];
    v11 = v5[53];
    v12 = v5[49];
    v14 = v5[45];
    v13 = v5[46];
    v19 = v5[44];
    v20 = v5[43];
    v21 = v5[42];
    v22 = v5[41];
    v23 = v5[40];
    v24 = v5[39];
    v25 = v5[38];
    v26 = v5[37];
    v27 = v5[36];
    v28 = v5[35];
    v29 = v5[34];
    v30 = v5[33];
    v31 = v5[32];
    v32 = v5[31];
    v33 = v5[30];
    v34 = v5[28];
    v35 = v5[27];
    v36 = v5[26];
    v37 = v5[25];
    v15 = v5[23];
    v38 = v5[24];

    v16 = v5[1];

    return v16();
  }

  else
  {
    v18 = v5[20];
    v5[64] = a1;

    return _swift_task_switch(sub_100D05900, v18, 0);
  }
}

uint64_t sub_100D05900()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[60];
  v4 = *(v3 + 16);
  v239 = v2;
  if (!v4)
  {
    v327 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v237 = v0 + 7;
  v5 = v0[51];
  v266 = v0[50];
  v6 = v0[48];
  sub_101123DD0(0, v4, 0);
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v261 = v5;
  v9 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v247 = enum case for HashAlgorithm.sha256(_:);
  v241 = (v6 + 8);
  v244 = (v6 + 104);
  v282 = v9;
  v251 = v4;
  v256 = v3;
  while (1)
  {
    if (v7 >= *(v3 + 16))
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v326 = v8;
    v10 = v0[54];
    v11 = *(v261 + 72);
    sub_100D11DC8(v9 + v11 * v7, v10, type metadata accessor for TimeBasedKey);
    v12 = *v10;
    v13 = sub_100A7A194(*(v10 + *(v266 + 24) + 16), *(v10 + *(v266 + 24) + 24));
    if (v1)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
LABEL_35:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_101385D80;
        v0[11] = v1;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v65 = String.init<A>(describing:)();
        v67 = v66;
        *(v64 + 56) = &type metadata for String;
        *(v64 + 64) = sub_100008C00();
        *(v64 + 32) = v65;
        *(v64 + 40) = v67;
        os_log(_:dso:log:_:_:)();

        sub_1001BAF88();
        v68 = swift_allocError();
        *v69 = 0;
        swift_willThrow();

        goto LABEL_96;
      }

LABEL_144:
      swift_once();
      goto LABEL_35;
    }

    v14 = v13;
    v15 = sub_100A7829C(v13, 0);
    v17 = v16;
    CCECCryptorRelease();
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        v117 = 0;
        goto LABEL_95;
      }

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (v21)
      {
        goto LABEL_141;
      }

      if (v22 != 28)
      {
        goto LABEL_62;
      }

      goto LABEL_15;
    }

    if (v18)
    {
      break;
    }

    if (BYTE6(v17) != 28)
    {
      goto LABEL_62;
    }

LABEL_15:
    v322 = v12;
    v277 = v11;
    v23 = v0[49];
    v25 = v0[46];
    v24 = v0[47];
    v26 = v0[45];
    (*v244)(v23, v247, v24);
    v27 = Data.hash(algorithm:)();
    v311 = v28;
    v317 = v27;
    sub_100016590(v15, v17);
    (*v241)(v23, v24);
    v29 = type metadata accessor for EncryptedData();
    v30 = *(v29 - 8);
    v271 = *(v30 + 56);
    v271(v25, 1, 1, v29);
    sub_1000D2A70(v25, v26, &qword_1016B9AE8, &unk_1013E35D0);
    v31 = *(v30 + 48);
    v332 = v29;
    v32 = v31(v26, 1, v29);
    v33 = v0[45];
    if (v32 == 1)
    {
      sub_10000B3A8(v0[45], &qword_1016B9AE8, &unk_1013E35D0);
      v306 = 0;
      v300 = 0xF000000000000000;
    }

    else
    {
      v306 = EncryptedData.cipherText.getter();
      v300 = v34;
      (*(v30 + 8))(v33, v332);
    }

    v35 = v0[44];
    sub_1000D2A70(v0[46], v35, &qword_1016B9AE8, &unk_1013E35D0);
    v36 = v31(v35, 1, v332);
    v37 = v0[44];
    if (v36 == 1)
    {
      sub_10000B3A8(v0[44], &qword_1016B9AE8, &unk_1013E35D0);
      v38 = 0;
      v294 = 0xF000000000000000;
    }

    else
    {
      v38 = EncryptedData.initializationVector.getter();
      v294 = v39;
      (*(v30 + 8))(v37, v332);
    }

    v40 = v0[43];
    sub_1000D2A70(v0[46], v40, &qword_1016B9AE8, &unk_1013E35D0);
    v41 = v31(v40, 1, v332);
    v42 = v0[46];
    v43 = v0[43];
    v286 = v31;
    if (v41 == 1)
    {
      sub_10000B3A8(v42, &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v43, &qword_1016B9AE8, &unk_1013E35D0);
      v44 = 0;
      v45 = 0xF000000000000000;
    }

    else
    {
      v44 = EncryptedData.tag.getter();
      v45 = v46;
      sub_10000B3A8(v42, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v30 + 8))(v43, v332);
    }

    sub_100018D00(v330[54], type metadata accessor for TimeBasedKey);
    v8 = v326;
    v48 = v326[2];
    v47 = v326[3];
    if (v48 >= v47 >> 1)
    {
      sub_101123DD0((v47 > 1), v48 + 1, 1);
      v8 = v326;
    }

    v1 = 0;
    ++v7;
    v8[2] = v48 + 1;
    v49 = &v8[9 * v48];
    v49[4] = v322;
    v49[5] = v317;
    v49[6] = v311;
    v49[7] = v306;
    v49[8] = v300;
    v49[9] = v38;
    v49[10] = v294;
    v49[11] = v44;
    v49[12] = v45;
    v3 = v256;
    v0 = v330;
    v9 = v282;
    if (v251 == v7)
    {
      v118 = *(v256 + 16);
      if (v118)
      {
        v327 = v8;
        v119 = v330[55] + *(v266 + 24);
        v50 = _swiftEmptyArrayStorage;
        v264 = v119;
        v269 = (v30 + 8);
        v120 = v277;
        do
        {
          sub_100D11DC8(v9, v0[55], type metadata accessor for TimeBasedKey);
          v121 = *(v119 + 40);
          v122 = v0[55];
          if (v121 >> 60 == 15)
          {
            sub_100018D00(v122, type metadata accessor for TimeBasedKey);
          }

          else
          {
            v297 = v118;
            v123 = *(v119 + 32);
            v125 = v0[41];
            v124 = v0[42];
            v314 = *v122;
            v271(v124, 1, 1, v332);
            sub_1000D2A70(v124, v125, &qword_1016B9AE8, &unk_1013E35D0);
            LODWORD(v125) = v286(v125, 1, v332);
            sub_100017D5C(v123, v121);
            v126 = v0[41];
            if (v125 == 1)
            {
              sub_10000B3A8(v0[41], &qword_1016B9AE8, &unk_1013E35D0);
              v309 = 0;
              v303 = 0xF000000000000000;
            }

            else
            {
              v309 = EncryptedData.cipherText.getter();
              v303 = v127;
              (*v269)(v126, v332);
            }

            v128 = v0[40];
            sub_1000D2A70(v0[42], v128, &qword_1016B9AE8, &unk_1013E35D0);
            v129 = v286(v128, 1, v332);
            v130 = v0[40];
            v284 = v9;
            if (v129 == 1)
            {
              sub_10000B3A8(v130, &qword_1016B9AE8, &unk_1013E35D0);
              v131 = 0;
              v132 = 0xF000000000000000;
            }

            else
            {
              v131 = EncryptedData.initializationVector.getter();
              v132 = v133;
              (*v269)(v130, v332);
            }

            v134 = v330[39];
            sub_1000D2A70(v330[42], v134, &qword_1016B9AE8, &unk_1013E35D0);
            v135 = v286(v134, 1, v332);
            v136 = v330[42];
            v137 = v330[39];
            if (v135 == 1)
            {
              sub_10000B3A8(v330[42], &qword_1016B9AE8, &unk_1013E35D0);
              sub_10000B3A8(v137, &qword_1016B9AE8, &unk_1013E35D0);
              v138 = 0;
              v139 = 0xF000000000000000;
            }

            else
            {
              v140 = v330[39];
              v138 = EncryptedData.tag.getter();
              v139 = v141;
              sub_10000B3A8(v136, &qword_1016B9AE8, &unk_1013E35D0);
              (*v269)(v137, v332);
            }

            sub_100018D00(v330[55], type metadata accessor for TimeBasedKey);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_100A5BE68(0, *(v50 + 2) + 1, 1, v50);
            }

            v143 = *(v50 + 2);
            v142 = *(v50 + 3);
            if (v143 >= v142 >> 1)
            {
              v50 = sub_100A5BE68((v142 > 1), v143 + 1, 1, v50);
            }

            *(v50 + 2) = v143 + 1;
            v144 = &v50[72 * v143];
            *(v144 + 4) = v314;
            *(v144 + 5) = v123;
            *(v144 + 6) = v121;
            *(v144 + 7) = v309;
            v118 = v297;
            *(v144 + 8) = v303;
            *(v144 + 9) = v131;
            *(v144 + 10) = v132;
            *(v144 + 11) = v138;
            *(v144 + 12) = v139;
            v0 = v330;
            v120 = v277;
            v9 = v284;
            v119 = v264;
          }

          v9 += v120;
          --v118;
        }

        while (v118);
        v145 = v0[60];

        v1 = 0;
        v2 = v239;
LABEL_30:
        v51 = sub_100D11764(v50, v0[18], v0[19]);
        if (v1)
        {

          v52 = v0[58];
          v54 = v0[54];
          v53 = v0[55];
          v55 = v0[52];
          v56 = v0[53];
          v57 = v0[49];
          v58 = v0[45];
          v59 = v0[46];
          v61 = v0[43];
          v60 = v0[44];
          v248 = v0[42];
          v252 = v0[41];
          v257 = v0[40];
          v262 = v0[39];
          v267 = v0[38];
          v272 = v0[37];
          v274 = v0[36];
          v278 = v0[35];
          v283 = v0[34];
          v287 = v0[33];
          v290 = v0[32];
          v295 = v0[31];
          v301 = v0[30];
          v307 = v0[28];
          v312 = v0[27];
          v318 = v0[26];
          v323 = v0[25];
          v328 = v0[24];
          v331 = v0[23];

          v62 = v0[1];

          return v62();
        }

        v70 = v51;

        v71 = *(v2 + 16);
        if (!v71)
        {
          v322 = _swiftEmptyArrayStorage;
LABEL_87:

          v146 = _swiftEmptyArrayStorage;
          goto LABEL_88;
        }

        v232 = v70;
        v237 = v0 + 9;
        v1 = v0[51];
        v258 = v0[50];
        v72 = v0[48];
        sub_101123DD0(0, v71, 0);
        v73 = 0;
        v74 = _swiftEmptyArrayStorage;
        v253 = v1;
        v75 = v2 + ((v1[80] + 32) & ~v1[80]);
        v245 = enum case for HashAlgorithm.sha256(_:);
        v242 = (v72 + 104);
        v235 = (v72 + 8);
        v279 = v75;
        v249 = v71;
        while (1)
        {
          if (v73 >= *(v2 + 16))
          {
            goto LABEL_143;
          }

          v324 = v74;
          v76 = v0[52];
          v77 = *(v253 + 9);
          sub_100D11DC8(v75 + v77 * v73, v76, type metadata accessor for TimeBasedKey);
          v78 = *v76;
          v79 = sub_100A7A194(*(v76 + *(v258 + 24) + 16), *(v76 + *(v258 + 24) + 24));
          v80 = sub_100A7829C(v79, 0);
          v82 = v81;
          result = CCECCryptorRelease();
          v83 = v82 >> 62;
          if ((v82 >> 62) > 1)
          {
            if (v83 != 2)
            {
              v197 = 0;
              goto LABEL_138;
            }

            v86 = *(v80 + 16);
            v85 = *(v80 + 24);
            v21 = __OFSUB__(v85, v86);
            v84 = v85 - v86;
            if (v21)
            {
              __break(1u);
LABEL_145:
              __break(1u);
              swift_once();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v148 = swift_allocObject();
              *(v148 + 16) = xmmword_101385D80;
              v0[13] = 0;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v149 = String.init<A>(describing:)();
              v151 = v150;
              *(v148 + 56) = &type metadata for String;
              *(v148 + 64) = sub_100008C00();
              *(v148 + 32) = v149;
              *(v148 + 40) = v151;
              os_log(_:dso:log:_:_:)();

              sub_1001BAF88();
              v227 = swift_allocError();
              *v152 = 0;
              swift_willThrow();

LABEL_139:
              _StringGuts.grow(_:)(35);
              v0[10] = 0xE000000000000000;
              v157 = v0 + 10;
              v0[9] = 0;
              v229._object = 0x800000010134CB30;
              v229._countAndFlagsBits = 0xD000000000000021;
              v159 = v237;
              String.append(_:)(v229);
              v0[14] = v227;
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              goto LABEL_97;
            }
          }

          else if (v83)
          {
            LODWORD(v84) = HIDWORD(v80) - v80;
            if (__OFSUB__(HIDWORD(v80), v80))
            {
              goto LABEL_145;
            }

            v84 = v84;
          }

          else
          {
            v84 = BYTE6(v82);
          }

          if (v84 != 28)
          {
            break;
          }

          v319 = v78;
          v87 = v0[49];
          v88 = v0[47];
          v89 = v0[37];
          v90 = v0[38];
          (*v242)(v87, v245, v88);
          v91 = Data.hash(algorithm:)();
          v308 = v92;
          v313 = v91;
          sub_100016590(v80, v82);
          (*v235)(v87, v88);
          v93 = type metadata accessor for EncryptedData();
          v94 = *(v93 - 8);
          v268 = *(v94 + 56);
          v268(v90, 1, 1, v93);
          v1 = &unk_1013E35D0;
          sub_1000D2A70(v90, v89, &qword_1016B9AE8, &unk_1013E35D0);
          v95 = v89;
          v96 = v93;
          v333 = *(v94 + 48);
          v97 = v333(v95, 1, v93);
          v98 = v0[37];
          if (v97 == 1)
          {
            sub_10000B3A8(v0[37], &qword_1016B9AE8, &unk_1013E35D0);
            v296 = 0xF000000000000000;
            v302 = 0;
          }

          else
          {
            v99 = EncryptedData.cipherText.getter();
            v296 = v100;
            v302 = v99;
            (*(v94 + 8))(v98, v96);
          }

          v101 = v0[36];
          sub_1000D2A70(v0[38], v101, &qword_1016B9AE8, &unk_1013E35D0);
          v102 = v333(v101, 1, v96);
          v103 = v0[36];
          if (v102 == 1)
          {
            sub_10000B3A8(v0[36], &qword_1016B9AE8, &unk_1013E35D0);
            v288 = 0xF000000000000000;
            v291 = 0;
          }

          else
          {
            v104 = EncryptedData.initializationVector.getter();
            v288 = v105;
            v291 = v104;
            (*(v94 + 8))(v103, v96);
          }

          v275 = v77;
          v106 = v330[35];
          sub_1000D2A70(v330[38], v106, &qword_1016B9AE8, &unk_1013E35D0);
          v107 = v333(v106, 1, v96);
          v108 = v330[38];
          v109 = v330[35];
          v263 = v96;
          if (v107 == 1)
          {
            sub_10000B3A8(v108, &qword_1016B9AE8, &unk_1013E35D0);
            sub_10000B3A8(v109, &qword_1016B9AE8, &unk_1013E35D0);
            v110 = 0;
            v111 = 0xF000000000000000;
          }

          else
          {
            v110 = EncryptedData.tag.getter();
            v111 = v112;
            sub_10000B3A8(v108, &qword_1016B9AE8, &unk_1013E35D0);
            (*(v94 + 8))(v109, v96);
          }

          sub_100018D00(v330[52], type metadata accessor for TimeBasedKey);
          v74 = v324;
          v114 = v324[2];
          v113 = v324[3];
          if (v114 >= v113 >> 1)
          {
            sub_101123DD0((v113 > 1), v114 + 1, 1);
            v74 = v324;
          }

          ++v73;
          v74[2] = v114 + 1;
          v115 = &v74[9 * v114];
          v115[4] = v319;
          v115[5] = v313;
          v115[6] = v308;
          v115[7] = v302;
          v115[8] = v296;
          v115[9] = v291;
          v115[10] = v288;
          v115[11] = v110;
          v115[12] = v111;
          v0 = v330;
          v2 = v239;
          v75 = v279;
          if (v249 == v73)
          {
            v198 = *(v239 + 16);
            if (!v198)
            {
              v322 = v74;
              v70 = v232;
              goto LABEL_87;
            }

            v322 = v74;
            v199 = v330[53] + *(v258 + 24);
            v146 = _swiftEmptyArrayStorage;
            v255 = v199;
            v260 = (v94 + 8);
            v200 = v275;
            do
            {
              sub_100D11DC8(v75, v0[53], type metadata accessor for TimeBasedKey);
              v201 = *(v199 + 40);
              v202 = v0[53];
              if (v201 >> 60 == 15)
              {
                sub_100018D00(v202, type metadata accessor for TimeBasedKey);
              }

              else
              {
                v316 = v146;
                v203 = *(v199 + 32);
                v205 = v0[33];
                v204 = v0[34];
                v310 = *v202;
                v268(v204, 1, 1, v263);
                sub_1000D2A70(v204, v205, &qword_1016B9AE8, &unk_1013E35D0);
                LODWORD(v205) = v333(v205, 1, v263);
                v321 = v203;
                sub_100017D5C(v203, v201);
                v206 = v0[33];
                if (v205 == 1)
                {
                  sub_10000B3A8(v0[33], &qword_1016B9AE8, &unk_1013E35D0);
                  v299 = 0xF000000000000000;
                  v305 = 0;
                }

                else
                {
                  v207 = EncryptedData.cipherText.getter();
                  v299 = v208;
                  v305 = v207;
                  (*v260)(v206, v263);
                }

                v209 = v0[32];
                sub_1000D2A70(v0[34], v209, &qword_1016B9AE8, &unk_1013E35D0);
                v210 = v333(v209, 1, v263);
                v211 = v0[32];
                v146 = v316;
                v281 = v75;
                if (v210 == 1)
                {
                  sub_10000B3A8(v211, &qword_1016B9AE8, &unk_1013E35D0);
                  v289 = 0xF000000000000000;
                  v293 = 0;
                }

                else
                {
                  v212 = EncryptedData.initializationVector.getter();
                  v289 = v213;
                  v293 = v212;
                  (*v260)(v211, v263);
                }

                v214 = v0[31];
                sub_1000D2A70(v0[34], v214, &qword_1016B9AE8, &unk_1013E35D0);
                v215 = v333(v214, 1, v263);
                v216 = v0[34];
                v217 = v0[31];
                if (v215 == 1)
                {
                  sub_10000B3A8(v0[34], &qword_1016B9AE8, &unk_1013E35D0);
                  sub_10000B3A8(v217, &qword_1016B9AE8, &unk_1013E35D0);
                  v218 = 0;
                  v219 = 0xF000000000000000;
                }

                else
                {
                  v220 = v0[31];
                  v218 = EncryptedData.tag.getter();
                  v219 = v221;
                  sub_10000B3A8(v216, &qword_1016B9AE8, &unk_1013E35D0);
                  (*v260)(v217, v263);
                }

                v199 = v255;
                sub_100018D00(v330[53], type metadata accessor for TimeBasedKey);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v146 = sub_100A5BE68(0, *(v316 + 2) + 1, 1, v316);
                }

                v223 = *(v146 + 2);
                v222 = *(v146 + 3);
                if (v223 >= v222 >> 1)
                {
                  v146 = sub_100A5BE68((v222 > 1), v223 + 1, 1, v146);
                }

                *(v146 + 2) = v223 + 1;
                v224 = &v146[72 * v223];
                *(v224 + 4) = v310;
                *(v224 + 5) = v321;
                *(v224 + 6) = v201;
                *(v224 + 7) = v305;
                *(v224 + 8) = v299;
                *(v224 + 9) = v293;
                *(v224 + 10) = v289;
                *(v224 + 11) = v218;
                *(v224 + 12) = v219;
                v0 = v330;
                v200 = v275;
                v75 = v281;
              }

              v75 += v200;
              --v198;
            }

            while (v198);

            v70 = v232;
LABEL_88:
            v147 = sub_100D11764(v146, v0[18], v0[19]);
            v163 = v0[29];
            v162 = v0[30];
            v164 = v0[27];
            v165 = v0[28];
            v334 = v0[26];
            v3 = v0[21];
            v233 = v70;
            v167 = v0[15];
            v166 = v0[16];
            v168 = v147;

            v169 = v167[3];
            v170 = v167[4];
            sub_1000035D0(v167, v169);
            (*(v170 + 192))(v169, v170);
            v171 = *v166;
            v15 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
            v172 = *(v163 + 24);
            v173 = type metadata accessor for Date();
            (*(*(v173 - 8) + 16))(v162 + v172, &v166[v15], v173);
            *(v162 + *(v163 + 20)) = v171;
            sub_100D11DC8(v162, &v165[*(v3 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v165 = 2;
            *&v165[*(v3 + 24)] = v233;
            sub_100D11DC8(v162, &v164[*(v3 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v164 = 3;
            *&v164[*(v3 + 24)] = v168;
            sub_100D11DC8(v162, &v334[*(v3 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v334 = 0;
            *&v334[*(v3 + 24)] = v327;
            LOBYTE(v15) = 1;
            v174 = sub_100A5BE40(0, 1, 1, _swiftEmptyArrayStorage);
            v17 = v174;
            v7 = *(v174 + 16);
            v116 = *(v174 + 24);
            v14 = v7 + 1;
            if (v7 < v116 >> 1)
            {
LABEL_99:
              v175 = v330[30];
              v177 = v330[25];
              v176 = v330[26];
              v178 = v330[22];
              *(v17 + 16) = v14;
              v179 = (*(v178 + 80) + 32) & ~*(v178 + 80);
              v180 = *(v178 + 72);
              sub_100D12974(v176, v17 + v179 + v180 * v7, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v175, &v177[*(v3 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
              *v177 = v15;
              *&v177[*(v3 + 24)] = v322;
              v181 = *(v17 + 24);
              v182 = v7 + 2;
              if ((v7 + 2) > (v181 >> 1))
              {
                v17 = sub_100A5BE40(v181 > 1, v7 + 2, 1, v17);
              }

              v183 = v330[28];
              v185 = v330[24];
              v184 = v330[25];
              *(v17 + 16) = v182;
              sub_100D12974(v184, v17 + v179 + v180 * v14, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v183, v185, type metadata accessor for KeyDropInterface.KeyPackage);
              v186 = *(v17 + 24);
              v187 = v7 + 3;
              if ((v7 + 3) > (v186 >> 1))
              {
                v17 = sub_100A5BE40(v186 > 1, v7 + 3, 1, v17);
              }

              v188 = v330[27];
              v190 = v330[23];
              v189 = v330[24];
              *(v17 + 16) = v187;
              sub_100D12974(v189, v17 + v179 + v180 * v182, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v188, v190, type metadata accessor for KeyDropInterface.KeyPackage);
              v191 = *(v17 + 24);
              v320 = v179;
              if ((v7 + 4) > (v191 >> 1))
              {
                v17 = sub_100A5BE40(v191 > 1, v7 + 4, 1, v17);
              }

              v192 = v330[58];
              v230 = v330[55];
              v231 = v330[54];
              v234 = v330[53];
              v236 = v330[52];
              v238 = v330[49];
              v240 = v330[46];
              v243 = v330[45];
              v246 = v330[44];
              v250 = v330[43];
              v254 = v330[42];
              v259 = v330[41];
              v265 = v330[40];
              v270 = v330[39];
              v273 = v330[38];
              v276 = v330[37];
              v280 = v330[36];
              v285 = v330[35];
              v292 = v330[34];
              v298 = v330[33];
              v304 = v330[32];
              v315 = v330[31];
              v193 = v330[30];
              v194 = v330[28];
              v325 = v330[26];
              v329 = v330[25];
              v195 = v330[23];
              v335 = v330[24];
              sub_100018D00(v330[27], type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v194, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v193, type metadata accessor for KeyDropInterface.KeyAlignment);
              *(v17 + 16) = v7 + 4;
              sub_100D12974(v195, v17 + v320 + v180 * v187, type metadata accessor for KeyDropInterface.KeyPackage);

              v196 = v330[1];

              return v196(v17);
            }

LABEL_147:
            v17 = sub_100A5BE40(v116 > 1, v14, 1, v17);
            goto LABEL_99;
          }
        }

        if (v83 == 2)
        {
          v226 = *(v80 + 16);
          v225 = *(v80 + 24);
          v197 = v225 - v226;
          if (!__OFSUB__(v225, v226))
          {
            goto LABEL_138;
          }

          __break(1u);
        }

        else if (v83 == 1)
        {
          if (__OFSUB__(HIDWORD(v80), v80))
          {
            __break(1u);
            return result;
          }

          v197 = HIDWORD(v80) - v80;
          goto LABEL_138;
        }

        v197 = BYTE6(v82);
LABEL_138:
        sub_100018350();
        v227 = swift_allocError();
        *v228 = 28;
        *(v228 + 8) = v197;
        *(v228 + 16) = 0;
        swift_willThrow();
        sub_100016590(v80, v82);
        goto LABEL_139;
      }

      v327 = v8;
      v1 = 0;
      v153 = v330[60];
      v2 = v239;
LABEL_29:

      v50 = _swiftEmptyArrayStorage;
      goto LABEL_30;
    }
  }

  if (__OFSUB__(HIDWORD(v15), v15))
  {
    goto LABEL_142;
  }

  if (HIDWORD(v15) - v15 == 28)
  {
    goto LABEL_15;
  }

LABEL_62:
  if (v18 == 2)
  {
    v155 = *(v15 + 16);
    v154 = *(v15 + 24);
    v117 = v154 - v155;
    if (!__OFSUB__(v154, v155))
    {
      goto LABEL_95;
    }

    __break(1u);
LABEL_94:
    v117 = BYTE6(v17);
    goto LABEL_95;
  }

  if (v18 != 1)
  {
    goto LABEL_94;
  }

  v116 = (HIDWORD(v15) - v15);
  if (__OFSUB__(HIDWORD(v15), v15))
  {
    __break(1u);
    goto LABEL_147;
  }

  v117 = v116;
LABEL_95:
  sub_100018350();
  v68 = swift_allocError();
  *v156 = 28;
  *(v156 + 8) = v117;
  *(v156 + 16) = 0;
  swift_willThrow();
  sub_100016590(v15, v17);
LABEL_96:
  _StringGuts.grow(_:)(35);
  v0[8] = 0xE000000000000000;
  v157 = v0 + 8;
  v0[7] = 0;
  v158._object = 0x800000010134CB30;
  v158._countAndFlagsBits = 0xD000000000000021;
  v159 = v237;
  String.append(_:)(v158);
  v0[12] = v68;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
LABEL_97:
  _print_unlocked<A, B>(_:_:)();
  v160 = *v159;
  v161 = *v157;
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100D075D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 88) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  return _swift_task_switch(sub_100D07600, 0, 0);
}

void sub_100D07600()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v0 + 48) = v3;
  *(v0 + 56) = _swiftEmptyArrayStorage;
  if (v3 <= v2)
  {
    v4 = v2 - v3;
    if ((v2 - v3) >= 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  if ((v3 - v2) < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v2 - v3;
LABEL_5:
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100D076E8;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  sub_100D07A78(v7, v1 & 1, v3, 0);
}

uint64_t sub_100D076E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v6 = *(v3 + 56);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_100D07838, 0, 0);
  }
}

uint64_t sub_100D07838()
{
  v1 = *(v0 + 80);
  result = *(v0 + 56);
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 56);
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v3;
  }

  else
  {
    v16 = v4;
  }

  v7 = sub_100A5BDF0(isUniquelyReferenced_nonNull_native, v16, 1, *(v0 + 56));
  if (!*(v1 + 16))
  {
LABEL_13:
    v17 = *(v0 + 80);

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_5:
  v8 = (*(v7 + 24) >> 1) - *(v7 + 16);
  result = type metadata accessor for TimeBasedKey();
  v9 = *(result - 8);
  if (v8 < v3)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = *(v0 + 80);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = *(v9 + 72);
  swift_arrayInitWithCopy();

  if (v3)
  {
    v13 = *(v7 + 16);
    v14 = __OFADD__(v13, v3);
    v15 = v13 + v3;
    if (v14)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    *(v7 + 16) = v15;
  }

LABEL_14:
  if (*(v0 + 64))
  {
    v18 = *(v0 + 48);
    v19 = v18 + 1;
    if (v18 != -1)
    {
      *(v0 + 48) = v19;
      *(v0 + 56) = v7;
      v20 = *(v0 + 32);
      if (v19 <= v20)
      {
        v21 = v20 - v19;
        if ((v20 - v19) >= 0)
        {
          goto LABEL_23;
        }

LABEL_32:
        __break(1u);
        return result;
      }

      if ((v19 - v20) >= 0)
      {
        v21 = v20 - v19;
LABEL_23:
        *(v0 + 64) = v21;
        v23 = *(v0 + 88);
        v24 = swift_task_alloc();
        *(v0 + 72) = v24;
        *v24 = v0;
        v24[1] = sub_100D076E8;
        v25 = *(v0 + 40);
        v26 = *(v0 + 16);

        return sub_100D07A78(v26, v23 & 1, v19, 0);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v22 = *(v0 + 8);

  return v22(v7);
}

uint64_t sub_100D07A78(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 177) = a4;
  *(v5 + 176) = a2;
  *(v5 + 64) = a1;
  v6 = type metadata accessor for UUID();
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100D07B44, 0, 0);
}

uint64_t sub_100D07B44()
{
  v1 = *(*(v0 + 80) + 120);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_100D07B68, v1, 0);
}

uint64_t sub_100D07B68()
{
  v1 = *(v0 + 112);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100D07C48;
  v5 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_100D07C48()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100D07D60, v2, 0);
}

void sub_100D07D84()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 72);
    goto LABEL_11;
  }

  if (!v2)
  {
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  if (!is_mul_ok(v2, 0x60uLL))
  {
    __break(1u);
    return;
  }

  v4 = 96 * v2;
  v2 = 96 * v2 - 1;
  v5 = v4 - 96;
  if (v5 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v5;
  }

  if (v2 < v3)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_100D07E8C;
  v7 = *(v0 + 128);
  v8 = *(v0 + 177);
  v9 = *(v0 + 64);

  sub_100731BF4(v9, v3, v2, v1 & 1, v8, 0);
}

uint64_t sub_100D07E8C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 136);
  v8 = *v4;
  *(v6 + 144) = a1;
  *(v6 + 152) = a2;
  *(v6 + 160) = v3;

  if (v3)
  {
    v9 = sub_100D083B4;
  }

  else
  {
    *(v6 + 178) = a3;
    v9 = sub_100D07FB8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100D07FB8()
{
  v34 = v0;
  v1 = *(v0 + 178);
  v2 = *(v0 + 128);

  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v4 = *(v0 + 144);
      v3 = *(v0 + 152);
      sub_1001BAEE0();
      swift_allocError();
      *v5 = 1;
      swift_willThrow();
      sub_100359088(v4, v3, 2u);
LABEL_8:
      v7 = *(v0 + 104);

      v8 = *(v0 + 8);

      return v8();
    }
  }

  else
  {
    if (v1)
    {
      v10 = *(v0 + 144);
      v11 = *(v0 + 104);

      v12 = *(v0 + 8);

      return v12(v10);
    }

    sub_100359088(*(v0 + 144), *(v0 + 152), 0);
  }

  if (*(v0 + 177))
  {
    sub_1001BAEE0();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();
    goto LABEL_8;
  }

  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 64);
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BF08);
  sub_10001F280(v13, v0 + 16);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 88);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v23);
    (*(*(*(v22 + 8) + 8) + 32))(v23);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v18 + 8))(v17, v19);
    sub_100007BAC((v0 + 16));
    v27 = sub_1000136BC(v24, v26, &v33);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Retrying key fetch with forceGenerate: %{private,mask.hash}s.", v20, 0x16u);
    sub_100007BAC(v21);
  }

  else
  {

    sub_100007BAC((v0 + 16));
  }

  v28 = *(v0 + 176);
  v29 = swift_task_alloc();
  *(v0 + 168) = v29;
  *v29 = v0;
  v29[1] = sub_100D08420;
  v30 = *(v0 + 72);
  v31 = *(v0 + 80);
  v32 = *(v0 + 64);

  return sub_100D07A78(v32, v28 & 1, v30, 1);
}

uint64_t sub_100D083B4()
{
  v1 = v0[16];

  v2 = v0[20];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D08420(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;

  v7 = *(v4 + 104);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_100D0854C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177BF08);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a3;
    _os_log_impl(&_mh_execute_header, v12, v13, "Derive sharing root key: %llu.", v14, 0xCu);
  }

  v19 = a1;
  v20 = a2;
  sub_100017D5C(a1, a2);
  SymmetricKey.init<A>(data:)();
  v19 = a3;
  dispatch thunk of CustomStringConvertible.description.getter();
  v15 = String.utf8Data.getter();
  v17 = v16;

  v19 = v15;
  v20 = v17;
  type metadata accessor for SHA256();
  sub_100D13BF8(&qword_1016B9AE0, &type metadata accessor for SHA256);
  sub_1000E0A3C();
  static HKDF.deriveKey<A>(inputKeyMaterial:info:outputByteCount:)();
  sub_100016590(v19, v20);
  return (*(v7 + 8))(v10, v6);
}

BOOL sub_100D087F0(unint64_t *a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
LABEL_6:
    v6 = *a1;
    v8 = *(a3 + *(type metadata accessor for KeyDropInterface.KeyAlignment(0) + 20));
    return v6 >= v8;
  }

  v6 = *a1;
  v7 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v8 = *(a3 + *(v7 + 20));
  if (v8)
  {
    v9 = *(a3 + *(v7 + 20));
    v8 = v8 / 0x60 + 1;
  }

  return v6 >= v8;
}

void sub_100D088CC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v12 + 16) == *(v12 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v14)
  {
    if (v12 == v12 >> 32)
    {
LABEL_13:
      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
      goto LABEL_14;
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v15 = objc_autoreleasePoolPush();
  sub_101122FBC(v12, v13, &v21);
  if (v2)
  {
    objc_autoreleasePoolPop(v15);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v15);
  v16 = v21;
  if (!v21)
  {
    goto LABEL_13;
  }

  v17 = [v21 modificationDate];

  if (v17)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  }

  else
  {
    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  }

  sub_1000D2AD8(v9, v11, &unk_101696900, &unk_10138B1E0);
  type metadata accessor for Date();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) != 1)
  {
    (*(v19 + 32))(a2, v11, v18);
    return;
  }

LABEL_14:
  Date.init()();
  type metadata accessor for Date();
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) != 1)
  {
    sub_10000B3A8(v11, &unk_101696900, &unk_10138B1E0);
  }
}

Swift::Int sub_100D08BF0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for OwnerSharingCircle();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for OwnerSharingCircle() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100D09FB0(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100D08D1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100D08D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v108 = &v99 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v113 = &v99 - v18;
  v125 = type metadata accessor for Date();
  v19 = *(v125 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v125);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v124 = &v99 - v24;
  v117 = type metadata accessor for OwnerSharingCircle();
  v25 = *(*(v117 - 8) + 64);
  v26 = __chkstk_darwin(v117);
  v116 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v127 = (&v99 - v29);
  result = __chkstk_darwin(v28);
  v33 = (&v99 - v32);
  v101 = a2;
  if (a3 != a2)
  {
    v107 = v12;
    v123 = (v19 + 56);
    v126 = (v19 + 48);
    v34 = *a4;
    v106 = (v19 + 32);
    v119 = (v19 + 8);
    v35 = *(v31 + 72);
    v36 = v34 + v35 * (a3 - 1);
    v114 = -v35;
    v115 = v34;
    v37 = a1 - a3;
    v100 = v35;
    v38 = v34 + v35 * a3;
    v109 = xmmword_101385D80;
    v112 = v17;
    v39 = v113;
    v118 = v23;
    v120 = (&v99 - v32);
    do
    {
      v105 = a3;
      v102 = v38;
      v40 = v38;
      v103 = v37;
      v41 = v37;
      v104 = v36;
      while (1)
      {
        v122 = v41;
        sub_100D11DC8(v40, v33, type metadata accessor for OwnerSharingCircle);
        sub_100D11DC8(v36, v127, type metadata accessor for OwnerSharingCircle);
        v42 = objc_autoreleasePoolPush();
        v43 = *v33;
        v44 = v33[1];
        v45 = v44 >> 62;
        v121 = v40;
        if ((v44 >> 62) > 1)
        {
          if (v45 != 2 || *(v43 + 16) == *(v43 + 24))
          {
LABEL_18:
            v54 = v125;
LABEL_22:
            v64 = *v123;
            (*v123)(v39, 1, 1, v54);
            goto LABEL_23;
          }
        }

        else if (v45)
        {
          if (v43 == v43 >> 32)
          {
            goto LABEL_18;
          }
        }

        else if ((v44 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

        v46 = objc_autoreleasePoolPush();
        v47 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v43, v44);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v128 = 0;
        v49 = [v47 initForReadingFromData:isa error:&v128];

        if (!v49)
        {
          v57 = v128;
          v58 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v43, v44);
          static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v59 = swift_allocObject();
          *(v59 + 16) = v109;
          v128 = v58;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v60 = String.init<A>(describing:)();
          v62 = v61;
          *(v59 + 56) = &type metadata for String;
          *(v59 + 64) = sub_100008C00();
          *(v59 + 32) = v60;
          *(v59 + 40) = v62;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v49 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v110 = 0;
LABEL_21:
          v39 = v113;
          v54 = v125;

          objc_autoreleasePoolPop(v46);
          v17 = v112;
          goto LABEL_22;
        }

        v50 = v128;
        sub_100016590(v43, v44);
        [v49 _enableStrictSecureDecodingMode];
        v51 = [objc_allocWithZone(CKRecord) initWithCoder:v49];
        if (!v51)
        {
          static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v63 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          goto LABEL_21;
        }

        v52 = v51;

        objc_autoreleasePoolPop(v46);
        v53 = [v52 modificationDate];

        v39 = v113;
        v54 = v125;
        if (v53)
        {
          v55 = v108;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = 0;
        }

        else
        {
          v56 = 1;
          v55 = v108;
        }

        v17 = v112;
        v64 = *v123;
        (*v123)(v55, v56, 1, v54);
        sub_1000D2AD8(v55, v39, &unk_101696900, &unk_10138B1E0);
        v65 = *v126;
        if ((*v126)(v39, 1, v54) != 1)
        {
          (*v106)(v124, v39, v54);
          goto LABEL_25;
        }

LABEL_23:
        Date.init()();
        v65 = *v126;
        if ((*v126)(v39, 1, v54) != 1)
        {
          sub_10000B3A8(v39, &unk_101696900, &unk_10138B1E0);
        }

LABEL_25:
        objc_autoreleasePoolPop(v42);
        v66 = objc_autoreleasePoolPush();
        v67 = v66;
        v68 = *v127;
        v69 = v127[1];
        v70 = v69 >> 62;
        if ((v69 >> 62) > 1)
        {
          if (v70 != 2 || *(v68 + 16) == *(v68 + 24))
          {
LABEL_36:
            v79 = v125;
LABEL_40:
            v64(v17, 1, 1, v79);
            v89 = v118;
            goto LABEL_41;
          }
        }

        else if (v70)
        {
          if (v68 == v68 >> 32)
          {
            goto LABEL_36;
          }
        }

        else if ((v69 & 0xFF000000000000) == 0)
        {
          goto LABEL_36;
        }

        v111 = v66;
        v71 = objc_autoreleasePoolPush();
        v72 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v68, v69);
        v73 = Data._bridgeToObjectiveC()().super.isa;
        v128 = 0;
        v74 = [v72 initForReadingFromData:v73 error:&v128];

        if (!v74)
        {
          v82 = v128;
          v83 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v68, v69);
          static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v84 = swift_allocObject();
          *(v84 + 16) = v109;
          v128 = v83;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v85 = String.init<A>(describing:)();
          v87 = v86;
          *(v84 + 56) = &type metadata for String;
          *(v84 + 64) = sub_100008C00();
          *(v84 + 32) = v85;
          *(v84 + 40) = v87;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v74 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v110 = 0;
LABEL_39:
          v39 = v113;
          v79 = v125;

          objc_autoreleasePoolPop(v71);
          v67 = v111;
          v17 = v112;
          goto LABEL_40;
        }

        v75 = v128;
        sub_100016590(v68, v69);
        [v74 _enableStrictSecureDecodingMode];
        v76 = [objc_allocWithZone(CKRecord) initWithCoder:v74];
        if (!v76)
        {
          static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v88 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          goto LABEL_39;
        }

        v77 = v76;

        objc_autoreleasePoolPop(v71);
        v78 = [v77 modificationDate];

        v39 = v113;
        v79 = v125;
        if (v78)
        {
          v80 = v107;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v81 = 0;
        }

        else
        {
          v81 = 1;
          v80 = v107;
        }

        v17 = v112;
        v64(v80, v81, 1, v79);
        sub_1000D2AD8(v80, v17, &unk_101696900, &unk_10138B1E0);
        if (v65(v17, 1, v79) != 1)
        {
          v90 = v39;
          v89 = v118;
          v91 = v17;
          (*v106)(v118, v17, v79);
          v67 = v111;
          goto LABEL_43;
        }

        v89 = v118;
        v67 = v111;
LABEL_41:
        v90 = v39;
        Date.init()();
        v91 = v17;
        if (v65(v17, 1, v79) != 1)
        {
          sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
        }

LABEL_43:
        objc_autoreleasePoolPop(v67);
        v92 = v124;
        v93 = static Date.> infix(_:_:)();
        v94 = *v119;
        (*v119)(v89, v79);
        v94(v92, v79);
        sub_100018D00(v127, type metadata accessor for OwnerSharingCircle);
        v33 = v120;
        result = sub_100018D00(v120, type metadata accessor for OwnerSharingCircle);
        if ((v93 & 1) == 0)
        {
          break;
        }

        v95 = v122;
        if (!v115)
        {
          __break(1u);
        }

        v96 = v121;
        v97 = v116;
        sub_100D12974(v121, v116, type metadata accessor for OwnerSharingCircle);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100D12974(v97, v36, type metadata accessor for OwnerSharingCircle);
        v36 += v114;
        v40 = v96 + v114;
        v98 = __CFADD__(v95, 1);
        v41 = v95 + 1;
        v17 = v91;
        v39 = v90;
        if (v98)
        {
          goto LABEL_5;
        }
      }

      v17 = v91;
      v39 = v90;
LABEL_5:
      a3 = v105 + 1;
      v36 = v104 + v100;
      v37 = v103 - 1;
      v38 = v102 + v100;
    }

    while (v105 + 1 != v101);
  }

  return result;
}

uint64_t sub_100D099E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100B31E68(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_100D0C41C((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_100A5B430((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_100D0C41C((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

void sub_100D09FB0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v253 = a1;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v246 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v246 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v246 - v20;
  v22 = __chkstk_darwin(v19);
  v255 = &v246 - v23;
  v24 = __chkstk_darwin(v22);
  v254 = &v246 - v25;
  v26 = __chkstk_darwin(v24);
  v266 = &v246 - v27;
  __chkstk_darwin(v26);
  v265 = &v246 - v28;
  v284 = type metadata accessor for Date();
  v29 = *(v284 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v284);
  v283 = &v246 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v290 = &v246 - v34;
  v35 = __chkstk_darwin(v33);
  v264 = &v246 - v36;
  v37 = __chkstk_darwin(v35);
  v272 = &v246 - v38;
  v39 = __chkstk_darwin(v37);
  v249 = &v246 - v40;
  __chkstk_darwin(v39);
  v251 = &v246 - v41;
  v282 = type metadata accessor for OwnerSharingCircle();
  v267 = *(v282 - 8);
  v42 = *(v267 + 64);
  v43 = __chkstk_darwin(v282);
  v259 = &v246 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v281 = &v246 - v46;
  v47 = __chkstk_darwin(v45);
  v293 = (&v246 - v48);
  v49 = __chkstk_darwin(v47);
  v289 = (&v246 - v50);
  v51 = __chkstk_darwin(v49);
  v276 = (&v246 - v52);
  v53 = __chkstk_darwin(v51);
  v271 = (&v246 - v54);
  v55 = __chkstk_darwin(v53);
  v248 = (&v246 - v56);
  __chkstk_darwin(v55);
  v250 = (&v246 - v57);
  v58 = a3[1];
  if (v58 >= 1)
  {
    v286 = v18;
    v59 = 0;
    v285 = (v29 + 8);
    v291 = (v29 + 56);
    v292 = (v29 + 48);
    v60 = _swiftEmptyArrayStorage;
    v270 = (v29 + 32);
    v274 = xmmword_101385D80;
    v247 = a3;
    v252 = a4;
    v269 = v12;
    v268 = v15;
    v278 = v21;
    v61 = v284;
LABEL_4:
    v260 = v60;
    v258 = v59;
    if (v59 + 1 >= v58)
    {
      v78 = v59 + 1;
      goto LABEL_68;
    }

    v273 = v58;
    v62 = *a3;
    v63 = *(v267 + 72);
    v64 = v5;
    v65 = *a3 + v63 * (v59 + 1);
    v66 = v250;
    sub_100D11DC8(v65, v250, type metadata accessor for OwnerSharingCircle);
    v287 = v63;
    v67 = v62 + v63 * v59;
    v68 = v248;
    sub_100D11DC8(v67, v248, type metadata accessor for OwnerSharingCircle);
    a4 = objc_autoreleasePoolPush();
    sub_100D088CC(v66, v251);
    if (v64)
    {
      goto LABEL_226;
    }

    objc_autoreleasePoolPop(a4);
    v69 = objc_autoreleasePoolPush();
    v70 = v249;
    sub_100D088CC(v68, v249);
    v275 = 0;
    objc_autoreleasePoolPop(v69);
    v71 = v251;
    LODWORD(v280) = static Date.> infix(_:_:)();
    v72 = v284;
    v73 = *v285;
    (*v285)(v70, v284);
    v279 = v73;
    v73(v71, v72);
    v29 = type metadata accessor for OwnerSharingCircle;
    sub_100018D00(v68, type metadata accessor for OwnerSharingCircle);
    sub_100018D00(v250, type metadata accessor for OwnerSharingCircle);
    v74 = v258 + 2;
    v75 = v62 + v287 * (v258 + 2);
    v61 = v72;
    v21 = v278;
    while (1)
    {
      v78 = v273;
      if (v273 == v74)
      {
LABEL_54:
        a3 = v247;
        a4 = v252;
        v5 = v275;
        if (v280)
        {
          if (v78 < v258)
          {
            goto LABEL_216;
          }

          if (v258 < v78)
          {
            v129 = v287 * (v78 - 1);
            v130 = v78 * v287;
            v131 = v78;
            v132 = v258;
            v133 = v258 * v287;
            do
            {
              if (v132 != --v131)
              {
                v134 = *a3;
                if (!*a3)
                {
                  goto LABEL_222;
                }

                v135 = v78;
                v29 = v134 + v133;
                sub_100D12974(v134 + v133, v259, type metadata accessor for OwnerSharingCircle);
                if (v133 < v129 || v29 >= v134 + v130)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v133 != v129)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_100D12974(v259, v134 + v129, type metadata accessor for OwnerSharingCircle);
                v21 = v278;
                v78 = v135;
              }

              ++v132;
              v129 -= v287;
              v130 -= v287;
              v133 += v287;
            }

            while (v132 < v131);
            a4 = v252;
            v61 = v284;
            v5 = v275;
          }
        }

LABEL_68:
        v136 = a3[1];
        if (v78 >= v136)
        {
          goto LABEL_78;
        }

        if (__OFSUB__(v78, v258))
        {
          goto LABEL_215;
        }

        if (v78 - v258 >= a4)
        {
LABEL_78:
          v59 = v78;
          goto LABEL_79;
        }

        v137 = v258;
        if (__OFADD__(v258, a4))
        {
          goto LABEL_217;
        }

        if ((v258 + a4) >= v136)
        {
          v138 = a3[1];
        }

        else
        {
          v138 = v258 + a4;
        }

        if (v138 >= v258)
        {
          if (v78 == v138)
          {
            v59 = v78;
            goto LABEL_80;
          }

          v275 = v5;
          v183 = *a3;
          v184 = *(v267 + 72);
          v185 = (*a3 + v184 * (v78 - 1));
          v279 = -v184;
          v280 = v183;
          v186 = v258 - v78;
          v256 = v184;
          v187 = v183 + v78 * v184;
          v257 = v138;
LABEL_133:
          v273 = v78;
          v261 = v187;
          v262 = v186;
          v188 = v186;
          v263 = v185;
          while (2)
          {
            v287 = v188;
            v189 = v289;
            sub_100D11DC8(v187, v289, type metadata accessor for OwnerSharingCircle);
            sub_100D11DC8(v185, v293, type metadata accessor for OwnerSharingCircle);
            v288 = objc_autoreleasePoolPush();
            v190 = *v189;
            v191 = v189[1];
            v192 = v191 >> 62;
            if ((v191 >> 62) > 1)
            {
              v193 = v286;
              if (v192 == 2 && *(v190 + 16) != *(v190 + 24))
              {
                goto LABEL_142;
              }

LABEL_149:
              v211 = *v291;
              (*v291)(v21, 1, 1, v61);
              goto LABEL_150;
            }

            v193 = v286;
            if (v192)
            {
              if (v190 == v190 >> 32)
              {
                goto LABEL_149;
              }
            }

            else if ((v191 & 0xFF000000000000) == 0)
            {
              goto LABEL_149;
            }

LABEL_142:
            v194 = objc_autoreleasePoolPush();
            v195 = objc_allocWithZone(NSKeyedUnarchiver);
            sub_100017D5C(v190, v191);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v294 = 0;
            v197 = [v195 initForReadingFromData:isa error:&v294];

            if (v197)
            {
              v198 = v294;
              sub_100016590(v190, v191);
              [v197 _enableStrictSecureDecodingMode];
              v199 = [objc_allocWithZone(CKRecord) initWithCoder:v197];
              if (v199)
              {
                v200 = v199;

                objc_autoreleasePoolPop(v194);
                v201 = [v200 modificationDate];

                v21 = v278;
                if (v201)
                {
                  v202 = v268;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v203 = 0;
                }

                else
                {
                  v203 = 1;
                  v202 = v268;
                }

                v61 = v284;
                v211 = *v291;
                (*v291)(v202, v203, 1, v284);
                sub_1000D2AD8(v202, v21, &unk_101696900, &unk_10138B1E0);
                v212 = *v292;
                if ((*v292)(v21, 1, v61) != 1)
                {
                  (*v270)(v290, v21, v61);
                  goto LABEL_152;
                }

LABEL_150:
                Date.init()();
                v212 = *v292;
                if ((*v292)(v21, 1, v61) != 1)
                {
                  sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
                }

LABEL_152:
                objc_autoreleasePoolPop(v288);
                v288 = objc_autoreleasePoolPush();
                v213 = *v293;
                v214 = v293[1];
                v215 = v214 >> 62;
                if ((v214 >> 62) > 1)
                {
                  if (v215 == 2 && *(v213 + 16) != *(v213 + 24))
                  {
                    goto LABEL_158;
                  }

LABEL_163:
                  v226 = v283;
                }

                else
                {
                  if (v215)
                  {
                    if (v213 == v213 >> 32)
                    {
                      goto LABEL_163;
                    }
                  }

                  else if ((v214 & 0xFF000000000000) == 0)
                  {
                    goto LABEL_163;
                  }

LABEL_158:
                  v277 = v211;
                  v216 = objc_autoreleasePoolPush();
                  v217 = objc_allocWithZone(NSKeyedUnarchiver);
                  sub_100017D5C(v213, v214);
                  v218 = Data._bridgeToObjectiveC()().super.isa;
                  v294 = 0;
                  v219 = [v217 initForReadingFromData:v218 error:&v294];

                  if (v219)
                  {
                    v220 = v294;
                    sub_100016590(v213, v214);
                    [v219 _enableStrictSecureDecodingMode];
                    v221 = [objc_allocWithZone(CKRecord) initWithCoder:v219];
                    if (v221)
                    {
                      v222 = v221;

                      objc_autoreleasePoolPop(v216);
                      v223 = [v222 modificationDate];

                      v193 = v286;
                      v21 = v278;
                      if (v223)
                      {
                        v224 = v269;
                        static Date._unconditionallyBridgeFromObjectiveC(_:)();

                        v225 = 0;
                      }

                      else
                      {
                        v225 = 1;
                        v224 = v269;
                      }

                      v226 = v283;
                      v61 = v284;
                      v277(v224, v225, 1, v284);
                      sub_1000D2AD8(v224, v193, &unk_101696900, &unk_10138B1E0);
                      if (v212(v193, 1, v61) != 1)
                      {
                        v240 = v193;
                        v234 = v21;
                        (*v270)(v226, v240, v61);
                        goto LABEL_171;
                      }

LABEL_168:
                      Date.init()();
                      if (v212(v193, 1, v61) == 1)
                      {
                        v234 = v21;
                      }

                      else
                      {
                        v235 = v193;
                        v234 = v21;
                        sub_10000B3A8(v235, &unk_101696900, &unk_10138B1E0);
                      }

LABEL_171:
                      objc_autoreleasePoolPop(v288);
                      v236 = v290;
                      v29 = static Date.> infix(_:_:)();
                      v237 = *v285;
                      (*v285)(v226, v61);
                      v237(v236, v61);
                      a4 = type metadata accessor for OwnerSharingCircle;
                      sub_100018D00(v293, type metadata accessor for OwnerSharingCircle);
                      sub_100018D00(v289, type metadata accessor for OwnerSharingCircle);
                      if (v29)
                      {
                        v238 = v287;
                        if (!v280)
                        {
                          __break(1u);
LABEL_221:
                          __break(1u);
LABEL_222:
                          __break(1u);
LABEL_223:
                          __break(1u);
LABEL_224:
                          __break(1u);
                        }

                        v29 = type metadata accessor for OwnerSharingCircle;
                        a4 = v281;
                        sub_100D12974(v187, v281, type metadata accessor for OwnerSharingCircle);
                        swift_arrayInitWithTakeFrontToBack();
                        sub_100D12974(a4, v185, type metadata accessor for OwnerSharingCircle);
                        v185 = v279 + v185;
                        v187 += v279;
                        v239 = __CFADD__(v238, 1);
                        v188 = v238 + 1;
                        v21 = v234;
                        if (v239)
                        {
                          goto LABEL_132;
                        }

                        continue;
                      }

                      v21 = v234;
LABEL_132:
                      v78 = v273 + 1;
                      v185 = &v263[v256];
                      v186 = v262 - 1;
                      v187 = v261 + v256;
                      v59 = v257;
                      if (v273 + 1 != v257)
                      {
                        goto LABEL_133;
                      }

                      a3 = v247;
                      v5 = v275;
LABEL_79:
                      v137 = v258;
LABEL_80:
                      if (v59 < v137)
                      {
                        goto LABEL_214;
                      }

                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v60 = v260;
                      }

                      else
                      {
                        v60 = sub_100A5B430(0, *(v260 + 2) + 1, 1, v260);
                      }

                      v29 = *(v60 + 2);
                      v139 = *(v60 + 3);
                      a4 = v29 + 1;
                      v140 = v5;
                      if (v29 >= v139 >> 1)
                      {
                        v60 = sub_100A5B430((v139 > 1), v29 + 1, 1, v60);
                      }

                      *(v60 + 2) = a4;
                      v141 = &v60[16 * v29];
                      *(v141 + 4) = v258;
                      *(v141 + 5) = v59;
                      v5 = *v253;
                      if (!*v253)
                      {
                        goto LABEL_224;
                      }

                      if (v29)
                      {
                        while (2)
                        {
                          v29 = a4 - 1;
                          if (a4 >= 4)
                          {
                            v146 = &v60[16 * a4 + 32];
                            v147 = *(v146 - 64);
                            v148 = *(v146 - 56);
                            v152 = __OFSUB__(v148, v147);
                            v149 = v148 - v147;
                            if (v152)
                            {
                              goto LABEL_201;
                            }

                            v151 = *(v146 - 48);
                            v150 = *(v146 - 40);
                            v152 = __OFSUB__(v150, v151);
                            v144 = v150 - v151;
                            v145 = v152;
                            if (v152)
                            {
                              goto LABEL_202;
                            }

                            v153 = &v60[16 * a4];
                            v155 = *v153;
                            v154 = *(v153 + 1);
                            v152 = __OFSUB__(v154, v155);
                            v156 = v154 - v155;
                            if (v152)
                            {
                              goto LABEL_204;
                            }

                            v152 = __OFADD__(v144, v156);
                            v157 = v144 + v156;
                            if (v152)
                            {
                              goto LABEL_207;
                            }

                            if (v157 >= v149)
                            {
                              v175 = &v60[16 * v29 + 32];
                              v177 = *v175;
                              v176 = *(v175 + 1);
                              v152 = __OFSUB__(v176, v177);
                              v178 = v176 - v177;
                              if (v152)
                              {
                                goto LABEL_211;
                              }

                              if (v144 < v178)
                              {
                                v29 = a4 - 2;
                              }
                            }

                            else
                            {
LABEL_100:
                              if (v145)
                              {
                                goto LABEL_203;
                              }

                              v158 = &v60[16 * a4];
                              v160 = *v158;
                              v159 = *(v158 + 1);
                              v161 = __OFSUB__(v159, v160);
                              v162 = v159 - v160;
                              v163 = v161;
                              if (v161)
                              {
                                goto LABEL_206;
                              }

                              v164 = &v60[16 * v29 + 32];
                              v166 = *v164;
                              v165 = *(v164 + 1);
                              v152 = __OFSUB__(v165, v166);
                              v167 = v165 - v166;
                              if (v152)
                              {
                                goto LABEL_209;
                              }

                              if (__OFADD__(v162, v167))
                              {
                                goto LABEL_210;
                              }

                              if (v162 + v167 < v144)
                              {
                                goto LABEL_114;
                              }

                              if (v144 < v167)
                              {
                                v29 = a4 - 2;
                              }
                            }
                          }

                          else
                          {
                            if (a4 == 3)
                            {
                              v142 = *(v60 + 4);
                              v143 = *(v60 + 5);
                              v152 = __OFSUB__(v143, v142);
                              v144 = v143 - v142;
                              v145 = v152;
                              goto LABEL_100;
                            }

                            v168 = &v60[16 * a4];
                            v170 = *v168;
                            v169 = *(v168 + 1);
                            v152 = __OFSUB__(v169, v170);
                            v162 = v169 - v170;
                            v163 = v152;
LABEL_114:
                            if (v163)
                            {
                              goto LABEL_205;
                            }

                            v171 = &v60[16 * v29];
                            v173 = *(v171 + 4);
                            v172 = *(v171 + 5);
                            v152 = __OFSUB__(v172, v173);
                            v174 = v172 - v173;
                            if (v152)
                            {
                              goto LABEL_208;
                            }

                            if (v174 < v162)
                            {
                              break;
                            }
                          }

                          v179 = v29 - 1;
                          if (v29 - 1 >= a4)
                          {
                            __break(1u);
LABEL_199:
                            __break(1u);
LABEL_200:
                            __break(1u);
LABEL_201:
                            __break(1u);
LABEL_202:
                            __break(1u);
LABEL_203:
                            __break(1u);
LABEL_204:
                            __break(1u);
LABEL_205:
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
                            __break(1u);
LABEL_211:
                            __break(1u);
LABEL_212:
                            __break(1u);
LABEL_213:
                            __break(1u);
LABEL_214:
                            __break(1u);
LABEL_215:
                            __break(1u);
LABEL_216:
                            __break(1u);
LABEL_217:
                            __break(1u);
                            goto LABEL_218;
                          }

                          if (!*a3)
                          {
                            goto LABEL_221;
                          }

                          v180 = v60;
                          a4 = *&v60[16 * v179 + 32];
                          v181 = *&v60[16 * v29 + 40];
                          sub_100D0C658(*a3 + *(v267 + 72) * a4, *a3 + *(v267 + 72) * *&v60[16 * v29 + 32], *a3 + *(v267 + 72) * v181, v5);
                          if (v140)
                          {
                            goto LABEL_197;
                          }

                          if (v181 < a4)
                          {
                            goto LABEL_199;
                          }

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v180 = sub_100B31E68(v180);
                          }

                          if (v179 >= *(v180 + 2))
                          {
                            goto LABEL_200;
                          }

                          v182 = &v180[16 * v179];
                          *(v182 + 4) = a4;
                          *(v182 + 5) = v181;
                          v295 = v180;
                          sub_100B31DDC(v29);
                          v60 = v295;
                          a4 = *(v295 + 2);
                          v61 = v284;
                          if (a4 <= 1)
                          {
                            break;
                          }

                          continue;
                        }
                      }

                      v58 = a3[1];
                      a4 = v252;
                      v5 = v140;
                      v21 = v278;
                      if (v59 >= v58)
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_4;
                    }

                    static os_log_type_t.error.getter();
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v233 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();
                  }

                  else
                  {
                    v227 = v294;
                    v228 = _convertNSErrorToError(_:)();

                    swift_willThrow();
                    sub_100016590(v213, v214);
                    static os_log_type_t.error.getter();
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v229 = swift_allocObject();
                    *(v229 + 16) = v274;
                    v294 = v228;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v230 = String.init<A>(describing:)();
                    v232 = v231;
                    *(v229 + 56) = &type metadata for String;
                    *(v229 + 64) = sub_100008C00();
                    *(v229 + 32) = v230;
                    *(v229 + 40) = v232;
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v219 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();

                    v275 = 0;
                  }

                  v193 = v286;
                  v21 = v278;

                  objc_autoreleasePoolPop(v216);
                  v226 = v283;
                  v61 = v284;
                  v211 = v277;
                }

                v211(v193, 1, 1, v61);
                goto LABEL_168;
              }

              static os_log_type_t.error.getter();
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v210 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();
            }

            else
            {
              v204 = v294;
              v205 = _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_100016590(v190, v191);
              static os_log_type_t.error.getter();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v206 = swift_allocObject();
              *(v206 + 16) = v274;
              v294 = v205;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v207 = String.init<A>(describing:)();
              v209 = v208;
              *(v206 + 56) = &type metadata for String;
              *(v206 + 64) = sub_100008C00();
              *(v206 + 32) = v207;
              *(v206 + 40) = v209;
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v197 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();

              v193 = v286;

              v275 = 0;
            }

            break;
          }

          v21 = v278;

          objc_autoreleasePoolPop(v194);
          v61 = v284;
          goto LABEL_149;
        }

LABEL_218:
        __break(1u);
LABEL_219:
        v241 = sub_100B31E68(a4);
        goto LABEL_189;
      }

      v79 = v271;
      sub_100D11DC8(v75, v271, type metadata accessor for OwnerSharingCircle);
      sub_100D11DC8(v65, v276, type metadata accessor for OwnerSharingCircle);
      v80 = objc_autoreleasePoolPush();
      v81 = *v79;
      v82 = v79[1];
      v83 = v82 >> 62;
      v288 = v80;
      if ((v82 >> 62) > 1)
      {
        if (v83 != 2 || *(v81 + 16) == *(v81 + 24))
        {
          goto LABEL_25;
        }
      }

      else if (v83)
      {
        if (v81 == v81 >> 32)
        {
          goto LABEL_25;
        }
      }

      else if ((v82 & 0xFF000000000000) == 0)
      {
        goto LABEL_25;
      }

      v84 = objc_autoreleasePoolPush();
      v85 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v81, v82);
      v86 = Data._bridgeToObjectiveC()().super.isa;
      v294 = 0;
      v87 = [v85 initForReadingFromData:v86 error:&v294];

      if (!v87)
      {
        break;
      }

      v88 = v294;
      sub_100016590(v81, v82);
      [v87 _enableStrictSecureDecodingMode];
      v89 = [objc_allocWithZone(CKRecord) initWithCoder:v87];
      if (!v89)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v100 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_24;
      }

      v90 = v89;

      objc_autoreleasePoolPop(v84);
      v91 = [v90 modificationDate];

      v21 = v278;
      v61 = v284;
      if (v91)
      {
        v92 = v254;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v93 = 0;
      }

      else
      {
        v93 = 1;
        v92 = v254;
      }

      v102 = *v291;
      (*v291)(v92, v93, 1, v61);
      v127 = v92;
      v101 = v265;
      sub_1000D2AD8(v127, v265, &unk_101696900, &unk_10138B1E0);
      v103 = *v292;
      if ((*v292)(v101, 1, v61) != 1)
      {
        (*v270)(v272, v101, v61);
        goto LABEL_28;
      }

LABEL_26:
      Date.init()();
      v103 = *v292;
      if ((*v292)(v101, 1, v61) != 1)
      {
        sub_10000B3A8(v101, &unk_101696900, &unk_10138B1E0);
      }

LABEL_28:
      objc_autoreleasePoolPop(v288);
      v104 = objc_autoreleasePoolPush();
      v106 = *v276;
      v105 = v276[1];
      v107 = v105 >> 62;
      v288 = v104;
      if ((v105 >> 62) > 1)
      {
        if (v107 != 2 || *(v106 + 16) == *(v106 + 24))
        {
LABEL_39:
          v118 = v266;
LABEL_43:
          v126 = v264;
          v102(v118, 1, 1, v61);
LABEL_44:
          Date.init()();
          if (v103(v118, 1, v61) != 1)
          {
            sub_10000B3A8(v118, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_8;
        }
      }

      else if (v107)
      {
        if (v106 == v106 >> 32)
        {
          goto LABEL_39;
        }
      }

      else if ((v105 & 0xFF000000000000) == 0)
      {
        goto LABEL_39;
      }

      v277 = v102;
      v263 = objc_autoreleasePoolPush();
      v108 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v106, v105);
      v109 = Data._bridgeToObjectiveC()().super.isa;
      v294 = 0;
      v110 = [v108 initForReadingFromData:v109 error:&v294];

      if (!v110)
      {
        v119 = v294;
        v120 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v106, v105);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v121 = swift_allocObject();
        *(v121 + 16) = v274;
        v294 = v120;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v122 = String.init<A>(describing:)();
        v124 = v123;
        *(v121 + 56) = &type metadata for String;
        *(v121 + 64) = sub_100008C00();
        *(v121 + 32) = v122;
        *(v121 + 40) = v124;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v110 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v21 = v278;

        v275 = 0;
LABEL_42:
        v102 = v277;

        objc_autoreleasePoolPop(v263);
        v118 = v266;
        v61 = v284;
        goto LABEL_43;
      }

      v111 = v294;
      sub_100016590(v106, v105);
      [v110 _enableStrictSecureDecodingMode];
      v112 = [objc_allocWithZone(CKRecord) initWithCoder:v110];
      if (!v112)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v125 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_42;
      }

      v113 = v112;

      objc_autoreleasePoolPop(v263);
      v114 = [v113 modificationDate];

      v115 = v277;
      if (v114)
      {
        v116 = v255;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v117 = 0;
      }

      else
      {
        v117 = 1;
        v116 = v255;
      }

      v61 = v284;
      v126 = v264;
      v115(v116, v117, 1, v284);
      v128 = v116;
      v118 = v266;
      sub_1000D2AD8(v128, v266, &unk_101696900, &unk_10138B1E0);
      if (v103(v118, 1, v61) == 1)
      {
        goto LABEL_44;
      }

      (*v270)(v126, v118, v61);
LABEL_8:
      objc_autoreleasePoolPop(v288);
      v76 = v272;
      v29 = static Date.> infix(_:_:)();
      v77 = v279;
      v279(v126, v61);
      v77(v76, v61);
      sub_100018D00(v276, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v271, type metadata accessor for OwnerSharingCircle);
      ++v74;
      v75 += v287;
      v65 += v287;
      if ((v280 ^ v29))
      {
        v78 = v74 - 1;
        goto LABEL_54;
      }
    }

    v94 = v294;
    v95 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v81, v82);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v96 = swift_allocObject();
    *(v96 + 16) = v274;
    v294 = v95;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v97 = String.init<A>(describing:)();
    v99 = v98;
    *(v96 + 56) = &type metadata for String;
    *(v96 + 64) = sub_100008C00();
    *(v96 + 32) = v97;
    *(v96 + 40) = v99;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v87 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v275 = 0;
LABEL_24:
    v21 = v278;
    v61 = v284;

    objc_autoreleasePoolPop(v84);
LABEL_25:
    v101 = v265;
    v102 = *v291;
    (*v291)(v265, 1, 1, v61);
    goto LABEL_26;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_186:
  v29 = *v253;
  if (*v253)
  {
    a4 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_219;
    }

    v241 = a4;
LABEL_189:
    v295 = v241;
    a4 = *(v241 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v242 = *&v241[16 * a4];
        v243 = v241;
        v244 = *&v241[16 * a4 + 24];
        sub_100D0C658(*a3 + *(v267 + 72) * v242, *a3 + *(v267 + 72) * *&v241[16 * a4 + 16], *a3 + *(v267 + 72) * v244, v29);
        if (v5)
        {
          goto LABEL_197;
        }

        if (v244 < v242)
        {
          goto LABEL_212;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v243 = sub_100B31E68(v243);
        }

        if (a4 - 2 >= *(v243 + 2))
        {
          goto LABEL_213;
        }

        v245 = &v243[16 * a4];
        *v245 = v242;
        *(v245 + 1) = v244;
        v295 = v243;
        sub_100B31DDC(a4 - 1);
        v241 = v295;
        a4 = *(v295 + 2);
        if (a4 <= 1)
        {
          goto LABEL_197;
        }
      }

      goto LABEL_223;
    }

LABEL_197:
  }

  else
  {
    __break(1u);
LABEL_226:
    objc_autoreleasePoolPop(a4);
    __break(1u);
  }
}

uint64_t sub_100D0BEE0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100B31E68(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_100D0DF44((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100A5B430((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_100D0DF44((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100B31E68(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_100B31DDC(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100D0C41C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_100D0C658(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v190 = &v187 - v14;
  v15 = __chkstk_darwin(v13);
  *&v195 = &v187 - v16;
  v17 = __chkstk_darwin(v15);
  v194 = (&v187 - v18);
  v19 = __chkstk_darwin(v17);
  v193 = &v187 - v20;
  v21 = __chkstk_darwin(v19);
  v192 = &v187 - v22;
  v23 = __chkstk_darwin(v21);
  v201 = &v187 - v24;
  __chkstk_darwin(v23);
  v200 = &v187 - v25;
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v209 = &v187 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v205 = &v187 - v32;
  v33 = __chkstk_darwin(v31);
  v208 = &v187 - v34;
  __chkstk_darwin(v33);
  v207 = &v187 - v35;
  v204 = type metadata accessor for OwnerSharingCircle();
  v36 = *(*(v204 - 8) + 64);
  v37 = __chkstk_darwin(v204);
  v197 = (&v187 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __chkstk_darwin(v37);
  v202 = &v187 - v40;
  v41 = __chkstk_darwin(v39);
  v213 = (&v187 - v42);
  __chkstk_darwin(v41);
  v206 = &v187 - v43;
  v45 = *(v44 + 72);
  if (!v45)
  {
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v212 = a1;
  if (a2 - a1 == 0x8000000000000000 && v45 == -1)
  {
    goto LABEL_144;
  }

  v46 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v45 == -1)
  {
LABEL_145:
    __break(1u);
  }

  v47 = (a2 - a1) / v45;
  v216 = a4;
  v217 = v212;
  v210 = v26;
  if (v47 >= v46 / v45)
  {
    v189 = v12;
    v49 = v46 / v45 * v45;
    if (a4 < a2 || a2 + v49 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v113 = (a4 + v49);
    if (v49 < 1)
    {
LABEL_141:
      v217 = a2;
      v215 = v113;
      goto LABEL_142;
    }

    v114 = -v45;
    v208 = (v27 + 56);
    v213 = (v27 + 48);
    v188 = (v27 + 32);
    v193 = (v27 + 8);
    v191 = xmmword_101385D80;
    v115 = a4 + v49;
    v211 = a4;
    v116 = v197;
    v199 = v114;
    v117 = v212;
LABEL_81:
    v187 = v113;
    v118 = a2;
    v119 = a2 + v114;
    v203 = a2 + v114;
    v198 = a2;
    while (1)
    {
      if (v118 <= v117)
      {
        v217 = v118;
        v215 = v187;
        goto LABEL_142;
      }

      v200 = a3;
      v192 = v113;
      v201 = v115;
      v207 = (v115 + v114);
      v122 = v202;
      sub_100D11DC8(v115 + v114, v202, type metadata accessor for OwnerSharingCircle);
      sub_100D11DC8(v119, v116, type metadata accessor for OwnerSharingCircle);
      v123 = objc_autoreleasePoolPush();
      v124 = *v122;
      v125 = v122[1];
      v126 = v125 >> 62;
      if ((v125 >> 62) > 1)
      {
        if (v126 != 2 || *(v124 + 16) == *(v124 + 24))
        {
          goto LABEL_101;
        }
      }

      else if (v126)
      {
        if (v124 == v124 >> 32)
        {
          goto LABEL_101;
        }
      }

      else if ((v125 & 0xFF000000000000) == 0)
      {
        goto LABEL_101;
      }

      v127 = objc_autoreleasePoolPush();
      v128 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v124, v125);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v215 = 0;
      v130 = [v128 initForReadingFromData:isa error:&v215];

      if (!v130)
      {
        break;
      }

      v131 = v215;
      sub_100016590(v124, v125);
      [v130 _enableStrictSecureDecodingMode];
      v132 = [objc_allocWithZone(CKRecord) initWithCoder:v130];
      if (!v132)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v143 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_100;
      }

      v133 = v132;

      objc_autoreleasePoolPop(v127);
      v134 = [v133 modificationDate];

      v114 = v199;
      if (v134)
      {
        v135 = v190;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v136 = 0;
      }

      else
      {
        v136 = 1;
        v135 = v190;
      }

      v145 = *v208;
      v181 = v135;
      v182 = v135;
      v146 = v210;
      (*v208)(v181, v136, 1, v210);
      v183 = v182;
      v144 = v194;
      sub_1000D2AD8(v183, v194, &unk_101696900, &unk_10138B1E0);
      v147 = *v213;
      if ((*v213)(v144, 1, v146) != 1)
      {
        (*v188)(v205, v144, v146);
        goto LABEL_104;
      }

LABEL_102:
      Date.init()();
      v147 = *v213;
      if ((*v213)(v144, 1, v146) != 1)
      {
        sub_10000B3A8(v144, &unk_101696900, &unk_10138B1E0);
      }

LABEL_104:
      objc_autoreleasePoolPop(v123);
      v206 = objc_autoreleasePoolPush();
      v148 = *v116;
      v149 = v116[1];
      v150 = v149 >> 62;
      if ((v149 >> 62) > 1)
      {
        v151 = v210;
        if (v150 != 2 || *(v148 + 16) == *(v148 + 24))
        {
LABEL_115:
          v162 = v207;
          v163 = v195;
LABEL_119:
          v171 = v206;
          v145(v163, 1, 1, v151);
          goto LABEL_120;
        }
      }

      else
      {
        v151 = v210;
        if (v150)
        {
          if (v148 == v148 >> 32)
          {
            goto LABEL_115;
          }
        }

        else if ((v149 & 0xFF000000000000) == 0)
        {
          goto LABEL_115;
        }
      }

      v152 = objc_autoreleasePoolPush();
      v153 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v148, v149);
      v154 = Data._bridgeToObjectiveC()().super.isa;
      v215 = 0;
      v155 = [v153 initForReadingFromData:v154 error:&v215];

      if (!v155)
      {
        v164 = v215;
        v165 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v148, v149);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v166 = swift_allocObject();
        *(v166 + 16) = v191;
        v215 = v165;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v167 = String.init<A>(describing:)();
        v169 = v168;
        *(v166 + 56) = &type metadata for String;
        *(v166 + 64) = sub_100008C00();
        *(v166 + 32) = v167;
        *(v166 + 40) = v169;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v155 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v151 = v210;

        v196 = 0;
LABEL_118:
        v163 = v195;
        v114 = v199;

        objc_autoreleasePoolPop(v152);
        v162 = v207;
        goto LABEL_119;
      }

      v156 = v215;
      sub_100016590(v148, v149);
      [v155 _enableStrictSecureDecodingMode];
      v157 = [objc_allocWithZone(CKRecord) initWithCoder:v155];
      if (!v157)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v170 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_118;
      }

      v158 = v157;

      objc_autoreleasePoolPop(v152);
      v159 = [v158 modificationDate];

      v114 = v199;
      if (v159)
      {
        v160 = v189;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v161 = 0;
      }

      else
      {
        v161 = 1;
        v160 = v189;
      }

      v171 = v206;
      v162 = v207;
      v145(v160, v161, 1, v151);
      v184 = v160;
      v163 = v195;
      sub_1000D2AD8(v184, v195, &unk_101696900, &unk_10138B1E0);
      if (v147(v163, 1, v151) != 1)
      {
        v172 = v162;
        (*v188)(v209, v163, v151);
        goto LABEL_122;
      }

LABEL_120:
      v172 = v162;
      Date.init()();
      if (v147(v163, 1, v151) != 1)
      {
        sub_10000B3A8(v163, &unk_101696900, &unk_10138B1E0);
      }

LABEL_122:
      v173 = v200;
      v174 = v200 + v114;
      objc_autoreleasePoolPop(v171);
      v175 = v205;
      v176 = v209;
      v177 = static Date.> infix(_:_:)();
      v178 = *v193;
      (*v193)(v176, v151);
      v178(v175, v151);
      v116 = v197;
      sub_100018D00(v197, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v202, type metadata accessor for OwnerSharingCircle);
      if (v177)
      {
        v185 = v211;
        v117 = v212;
        if (v173 < v198 || v174 >= v198)
        {
          a3 = v174;
          a2 = v203;
          swift_arrayInitWithTakeFrontToBack();
          v113 = v192;
          v114 = v199;
        }

        else
        {
          v180 = v173 == v198;
          v113 = v192;
          v114 = v199;
          a2 = v203;
          a3 = v174;
          if (!v180)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v115 = v201;
        if (v201 <= v185)
        {
          goto LABEL_141;
        }

        goto LABEL_81;
      }

      v179 = v172;
      v113 = v172;
      v117 = v212;
      if (v173 < v201 || v174 >= v201)
      {
        a3 = v174;
        swift_arrayInitWithTakeFrontToBack();
        v114 = v199;
        v120 = v211;
      }

      else
      {
        v180 = v173 == v201;
        v114 = v199;
        v120 = v211;
        a3 = v174;
        if (!v180)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v115 = v113;
      v121 = v179 > v120;
      v118 = v198;
      v119 = v203;
      if (!v121)
      {
        a2 = v198;
        goto LABEL_141;
      }
    }

    v137 = v215;
    v138 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v124, v125);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v139 = swift_allocObject();
    *(v139 + 16) = v191;
    v215 = v138;
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

    v196 = 0;
LABEL_100:
    v114 = v199;

    objc_autoreleasePoolPop(v127);
LABEL_101:
    v144 = v194;
    v145 = *v208;
    v146 = v210;
    (*v208)(v194, 1, 1, v210);
    goto LABEL_102;
  }

  v48 = v47 * v45;
  if (a4 < v212 || v212 + v48 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != v212)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v202 = a4 + v48;
  v215 = (a4 + v48);
  if (v48 >= 1 && a2 < a3)
  {
    v205 = (v27 + 56);
    v209 = (v27 + 48);
    v194 = (v27 + 32);
    v197 = (v27 + 8);
    v195 = xmmword_101385D80;
    v198 = v45;
    v199 = a3;
    while (1)
    {
      v51 = v206;
      sub_100D11DC8(a2, v206, type metadata accessor for OwnerSharingCircle);
      v211 = a4;
      sub_100D11DC8(a4, v213, type metadata accessor for OwnerSharingCircle);
      v52 = objc_autoreleasePoolPush();
      v53 = *v51;
      v54 = v51[1];
      v55 = v54 >> 62;
      if ((v54 >> 62) > 1)
      {
        if (v55 != 2 || *(v53 + 16) == *(v53 + 24))
        {
          goto LABEL_36;
        }
      }

      else if (v55)
      {
        if (v53 == v53 >> 32)
        {
          goto LABEL_36;
        }
      }

      else if ((v54 & 0xFF000000000000) == 0)
      {
        goto LABEL_36;
      }

      v56 = a2;
      v57 = objc_autoreleasePoolPush();
      v58 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v53, v54);
      v59 = Data._bridgeToObjectiveC()().super.isa;
      v214 = 0;
      v60 = [v58 initForReadingFromData:v59 error:&v214];

      if (!v60)
      {
        break;
      }

      v61 = v214;
      sub_100016590(v53, v54);
      [v60 _enableStrictSecureDecodingMode];
      v62 = [objc_allocWithZone(CKRecord) initWithCoder:v60];
      if (!v62)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v73 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_35;
      }

      v63 = v62;

      objc_autoreleasePoolPop(v57);
      v64 = [v63 modificationDate];

      a2 = v56;
      if (v64)
      {
        v65 = v192;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v66 = 0;
        v26 = v210;
      }

      else
      {
        v66 = 1;
        v26 = v210;
        v65 = v192;
      }

      v75 = *v205;
      (*v205)(v65, v66, 1, v26);
      v111 = v65;
      v74 = v200;
      sub_1000D2AD8(v111, v200, &unk_101696900, &unk_10138B1E0);
      v76 = *v209;
      if ((*v209)(v74, 1, v26) != 1)
      {
        (*v194)(v207, v74, v26);
        goto LABEL_39;
      }

LABEL_37:
      Date.init()();
      v76 = *v209;
      if ((*v209)(v74, 1, v26) != 1)
      {
        sub_10000B3A8(v74, &unk_101696900, &unk_10138B1E0);
      }

LABEL_39:
      objc_autoreleasePoolPop(v52);
      v77 = objc_autoreleasePoolPush();
      v78 = *v213;
      v79 = v213[1];
      v80 = v79 >> 62;
      if ((v79 >> 62) > 1)
      {
        if (v80 != 2 || *(v78 + 16) == *(v78 + 24))
        {
LABEL_50:
          v91 = v211;
LABEL_54:
          v99 = v201;
          v75(v201, 1, 1, v26);
LABEL_55:
          Date.init()();
          v100 = a2;
          if (v76(v99, 1, v26) != 1)
          {
            sub_10000B3A8(v99, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_57;
        }
      }

      else if (v80)
      {
        if (v78 == v78 >> 32)
        {
          goto LABEL_50;
        }
      }

      else if ((v79 & 0xFF000000000000) == 0)
      {
        goto LABEL_50;
      }

      v203 = a2;
      v81 = objc_autoreleasePoolPush();
      v82 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v78, v79);
      v83 = Data._bridgeToObjectiveC()().super.isa;
      v214 = 0;
      v84 = [v82 initForReadingFromData:v83 error:&v214];

      if (!v84)
      {
        v92 = v214;
        v93 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v78, v79);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v94 = swift_allocObject();
        *(v94 + 16) = v195;
        v214 = v93;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v95 = String.init<A>(describing:)();
        v97 = v96;
        *(v94 + 56) = &type metadata for String;
        *(v94 + 64) = sub_100008C00();
        *(v94 + 32) = v95;
        *(v94 + 40) = v97;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v84 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v196 = 0;
LABEL_53:
        a2 = v203;

        objc_autoreleasePoolPop(v81);
        v26 = v210;
        v91 = v211;
        goto LABEL_54;
      }

      v85 = v214;
      sub_100016590(v78, v79);
      [v84 _enableStrictSecureDecodingMode];
      v86 = [objc_allocWithZone(CKRecord) initWithCoder:v84];
      if (!v86)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v98 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_53;
      }

      v87 = v86;

      objc_autoreleasePoolPop(v81);
      v88 = [v87 modificationDate];

      a2 = v203;
      if (v88)
      {
        v89 = v193;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v90 = 0;
        v26 = v210;
        v91 = v211;
      }

      else
      {
        v90 = 1;
        v26 = v210;
        v91 = v211;
        v89 = v193;
      }

      v75(v89, v90, 1, v26);
      v112 = v89;
      v99 = v201;
      sub_1000D2AD8(v112, v201, &unk_101696900, &unk_10138B1E0);
      if (v76(v99, 1, v26) == 1)
      {
        goto LABEL_55;
      }

      v100 = a2;
      (*v194)(v208, v99, v26);
LABEL_57:
      v101 = v199;
      objc_autoreleasePoolPop(v77);
      v103 = v207;
      v102 = v208;
      v104 = static Date.> infix(_:_:)();
      v105 = *v197;
      (*v197)(v102, v26);
      v105(v103, v26);
      sub_100018D00(v213, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v206, type metadata accessor for OwnerSharingCircle);
      if (v104)
      {
        v106 = v198;
        v107 = v100;
        a2 = v100 + v198;
        v108 = v212;
        if (v212 < v100 || v212 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v91;
        }

        else
        {
          a4 = v91;
          if (v212 != v107)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v106 = v198;
        v109 = v91 + v198;
        v108 = v212;
        a2 = v100;
        if (v212 < v91 || v212 >= v109)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v212 != v91)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v216 = v109;
        a4 = v91 + v106;
      }

      v110 = v108 + v106;
      v217 = v110;
      if (a4 < v202)
      {
        v212 = v110;
        if (a2 < v101)
        {
          continue;
        }
      }

      goto LABEL_142;
    }

    v67 = v214;
    v68 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v53, v54);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v69 = swift_allocObject();
    *(v69 + 16) = v195;
    v214 = v68;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v70 = String.init<A>(describing:)();
    v72 = v71;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = sub_100008C00();
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v60 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v196 = 0;
LABEL_35:
    a2 = v56;

    objc_autoreleasePoolPop(v57);
    v26 = v210;
LABEL_36:
    v74 = v200;
    v75 = *v205;
    (*v205)(v200, 1, 1, v26);
    goto LABEL_37;
  }

LABEL_142:
  sub_10060AA84(&v217, &v216, &v215);
  return 1;
}

uint64_t sub_100D0DF44(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_100D0E130@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1000BC4D4(&qword_1016A5AA8, &qword_1013B35D0) + 48);
  v5 = sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0);
  v6 = *a1;
  result = sub_100D11DC8(&a1[v4], &a2[*(v5 + 48)], type metadata accessor for BookmarkMetaData);
  *a2 = v6;
  return result;
}

uint64_t sub_100D0E1B4(_OWORD *a1)
{
  v2 = type metadata accessor for AES.GCM.SealedBox();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AES.GCM.Nonce();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SymmetricKey256();
  sub_100D13BF8(&qword_1016982E8, &type metadata accessor for SymmetricKey256);
  *&v35 = KeyRepresenting.rawValue.getter();
  *(&v35 + 1) = v17;
  SymmetricKey.init<A>(data:)();
  v38 = a1[3];
  v35 = a1[3];
  sub_1001022C4(&v38, &v34);
  sub_1000E0A3C();
  v18 = v39;
  AES.GCM.Nonce.init<A>(data:)();
  if (!v18)
  {
    v39 = v12;
    v28 = v2;
    v20 = v30;
    v19 = v31;
    (*(v30 + 16))(v9, v11, v31);
    v21 = a1[1];
    v36 = a1[2];
    v37 = v21;
    v22 = a1[1];
    v34 = a1[2];
    v35 = v22;
    sub_1001022C4(&v37, v33);
    sub_1001022C4(&v36, v33);
    AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
    v24 = v20;
    v25 = v19;
    v26 = static AES.GCM.open(_:using:)();
    v12 = v39;
    v2 = v26;
    (*(v29 + 8))(v32, v28);
    (*(v24 + 8))(v11, v25);
  }

  (*(v13 + 8))(v16, v12);
  return v2;
}

uint64_t sub_100D0E5C0@<X0>(unint64_t a1@<X0>, unint64_t isUniquelyReferenced_nonNull_native@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for KeyDropJoinToken(0);
  v76 = *(v6 - 8);
  v7 = *(v76 + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v82 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v75 - v10;
  v11 = type metadata accessor for SharingCircleSecretValue();
  v87 = *(v11 - 8);
  v12 = *(v87 + 64);
  __chkstk_darwin(v11);
  v14 = (&v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694DF8 != -1)
  {
LABEL_53:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BF08);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v86 = v11;
  if (!v18)
  {

    v20 = *(a1 + 16);
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_46:

    v73 = 0;
    v71 = 0;
    v69 = 0;
    v23 = &_swiftEmptyDictionarySingleton;
    v68 = _swiftEmptyArrayStorage;
    v74 = 0xF000000000000000;
    v72 = 0xF000000000000000;
    v70 = 0xF000000000000000;
LABEL_47:
    *isUniquelyReferenced_nonNull_native = v69;
    *(isUniquelyReferenced_nonNull_native + 8) = v70;
    *(isUniquelyReferenced_nonNull_native + 16) = v71;
    *(isUniquelyReferenced_nonNull_native + 24) = v72;
    *(isUniquelyReferenced_nonNull_native + 32) = v68;
    *(isUniquelyReferenced_nonNull_native + 40) = v73;
    *(isUniquelyReferenced_nonNull_native + 48) = v74;
    *(isUniquelyReferenced_nonNull_native + 56) = v23;
    return result;
  }

  v19 = swift_slowAlloc();
  *v19 = 134217984;
  *(v19 + 4) = *(a1 + 16);

  _os_log_impl(&_mh_execute_header, v16, v17, "Initializing SharingCircleKeychain with %ld secretValues.", v19, 0xCu);
  v11 = v86;

  v20 = *(a1 + 16);
  if (!v20)
  {
    goto LABEL_46;
  }

LABEL_4:
  v75 = isUniquelyReferenced_nonNull_native;
  v84 = 0;
  v91 = 0;
  v93 = 0;
  v21 = 0;
  isUniquelyReferenced_nonNull_native = v87;
  v22 = a1 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  v96 = _swiftEmptyArrayStorage;
  v83 = 0xF000000000000000;
  v23 = &_swiftEmptyDictionarySingleton;
  v89 = v22;
  v90 = 0xF000000000000000;
  v92 = 0xF000000000000000;
  v85 = a1;
  v88 = v20;
  while (1)
  {
    if (v21 >= *(a1 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_100D11DC8(v22 + *(isUniquelyReferenced_nonNull_native + 72) * v21, v14, type metadata accessor for SharingCircleSecretValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      break;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100006654(v93, v92);
        v25 = *v14;
        v92 = v14[1];
        v93 = v25;
        goto LABEL_6;
      }

      v45 = *v14;
      v11 = v14[1];
      sub_100017D5C(*v14, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v23;
      v46 = sub_100771F0C(8);
      v48 = v23[2];
      v49 = (v47 & 1) == 0;
      v43 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v43)
      {
        goto LABEL_50;
      }

      a1 = v47;
      if (v23[3] >= v50)
      {
        v22 = v89;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = v46;
          sub_101005AF8();
          v22 = v89;
          v46 = v66;
        }

        isUniquelyReferenced_nonNull_native = v87;
        v23 = v94;
        if ((a1 & 1) == 0)
        {
LABEL_25:
          v23[(v46 >> 6) + 8] |= 1 << v46;
          *(v23[6] + v46) = 8;
          v52 = (v23[7] + 16 * v46);
          *v52 = v45;
          v52[1] = v11;
          sub_100006654(v91, v90);
          v53 = v23[2];
          v43 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v43)
          {
            goto LABEL_52;
          }

          v23[2] = v54;
          goto LABEL_36;
        }
      }

      else
      {
        sub_100FE7570(v50, isUniquelyReferenced_nonNull_native);
        v46 = sub_100771F0C(8);
        if ((a1 & 1) != (v51 & 1))
        {
          goto LABEL_55;
        }

        isUniquelyReferenced_nonNull_native = v87;
        v22 = v89;
        v23 = v94;
        if ((a1 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v60 = (v23[7] + 16 * v46);
      v61 = *v60;
      v62 = v60[1];
      *v60 = v45;
      v60[1] = v11;
      sub_100016590(v61, v62);
      sub_100006654(v91, v90);
LABEL_36:
      v90 = v11;
      v91 = v45;
      a1 = v85;
      v11 = v86;
      goto LABEL_42;
    }

LABEL_5:
    sub_100018D00(v14, type metadata accessor for SharingCircleSecretValue);
LABEL_6:
    if (v20 == ++v21)
    {

      isUniquelyReferenced_nonNull_native = v75;
      v68 = v96;
      v70 = v92;
      v69 = v93;
      v72 = v90;
      v71 = v91;
      v74 = v83;
      v73 = v84;
      goto LABEL_47;
    }
  }

  if ((EnumCaseMultiPayload - 5) < 2)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v55 = v81;
    sub_100D12974(v14, v81, type metadata accessor for KeyDropJoinToken);
    sub_100D11DC8(v55, v82, type metadata accessor for KeyDropJoinToken);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v56 = v96;
    }

    else
    {
      v56 = sub_100A5B698(0, v96[2] + 1, 1, v96);
    }

    v58 = v56[2];
    v57 = v56[3];
    v96 = v56;
    if (v58 >= v57 >> 1)
    {
      v96 = sub_100A5B698(v57 > 1, v58 + 1, 1, v96);
    }

    sub_100018D00(v81, type metadata accessor for KeyDropJoinToken);
    v59 = v96;
    v96[2] = v58 + 1;
    sub_100D12974(v82, v59 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v58, type metadata accessor for KeyDropJoinToken);
    v20 = v88;
    v22 = v89;
    goto LABEL_6;
  }

  v27 = *v14;
  v26 = v14[1];
  v28 = type metadata accessor for PropertyListEncoder();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = PropertyListEncoder.init()();
  v94 = v27;
  v95 = v26;
  sub_10049DF20();
  v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v80 = v3;
  if (v3)
  {

    sub_100006654(v93, v92);
    sub_100006654(v91, v90);
    sub_100006654(v84, v83);

    return sub_100016590(v27, v26);
  }

  v3 = v32;
  a1 = v33;
  v78 = v26;
  v79 = v31;
  v77 = v27;
  sub_100017D5C(v32, v33);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v23;
  isUniquelyReferenced_nonNull_native = sub_100771F0C(10);
  v35 = v23[2];
  v36 = (v34 & 1) == 0;
  v37 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    goto LABEL_51;
  }

  v38 = v34;
  if (v23[3] >= v37)
  {
    v22 = v89;
    if ((v11 & 1) == 0)
    {
      sub_101005AF8();
      v22 = v89;
    }

    v11 = v86;
    v23 = v94;
    if ((v38 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_40:
    v63 = (v23[7] + 16 * isUniquelyReferenced_nonNull_native);
    v64 = *v63;
    v65 = v63[1];
    *v63 = v3;
    v63[1] = a1;
    sub_100016590(v64, v65);
    sub_100006654(v84, v83);

    sub_100016590(v3, a1);
LABEL_41:
    v83 = v78;
    v84 = v77;
    v3 = v80;
    a1 = v85;
    isUniquelyReferenced_nonNull_native = v87;
LABEL_42:
    v20 = v88;
    goto LABEL_6;
  }

  sub_100FE7570(v37, v11);
  v39 = sub_100771F0C(10);
  if ((v38 & 1) != (v40 & 1))
  {
    goto LABEL_55;
  }

  isUniquelyReferenced_nonNull_native = v39;
  v11 = v86;
  v22 = v89;
  v23 = v94;
  if (v38)
  {
    goto LABEL_40;
  }

LABEL_19:
  v23[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
  *(v23[6] + isUniquelyReferenced_nonNull_native) = 10;
  v41 = (v23[7] + 16 * isUniquelyReferenced_nonNull_native);
  *v41 = v3;
  v41[1] = a1;
  sub_100006654(v84, v83);

  sub_100016590(v3, a1);
  v42 = v23[2];
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (!v43)
  {
    v23[2] = v44;
    goto LABEL_41;
  }

  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100D0EDD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for BookmarkMetaData();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016B9B70, &unk_1013E36F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v41 - v17;
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v41[1] = a1;
  v41[2] = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v41[3] = v20;
  v41[4] = 0;
  v41[5] = v23 & v21;
  v41[6] = a2;
  v41[7] = a3;

  v41[0] = a3;

  while (1)
  {
    sub_10061D19C(v18);
    v24 = sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0);
    if ((*(*(v24 - 8) + 48))(v18, 1, v24) == 1)
    {
      sub_1000128F8();
    }

    v25 = *v18;
    sub_100D12974(&v18[*(v24 + 48)], v14, type metadata accessor for BookmarkMetaData);
    v26 = *a5;
    v28 = sub_100771F0C(v25);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_101005B0C();
        v36 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_100729120(v14, v36[7] + *(v11 + 72) * v28);
      a4 = 1;
    }

    else
    {
      sub_100FE7AB0(v31, a4 & 1);
      v33 = *a5;
      v34 = sub_100771F0C(v25);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v28 = v34;
      v36 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      *(v36[6] + v28) = v25;
      sub_100D12974(v14, v36[7] + *(v11 + 72) * v28, type metadata accessor for BookmarkMetaData);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100D0F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v37 = type metadata accessor for EncryptedData();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v37);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v30 = a1;
    v39 = _swiftEmptyArrayStorage;
    sub_101123D90(0, v10, 0);
    v11 = v39;
    v32 = (v6 + 8);
    v33 = type metadata accessor for PropertyListDecoder();
    v12 = (a2 + 48);
    v31 = v9;
    while (1)
    {
      v14 = *(v12 - 2);
      v13 = *(v12 - 1);
      v15 = *v12;
      v16 = *(v33 + 48);
      v17 = *(v33 + 52);
      swift_allocObject();
      sub_100017D5C(v13, v15);
      v18 = PropertyListDecoder.init()();
      sub_100D13BF8(&qword_10169C990, &type metadata accessor for EncryptedData);
      v19 = v38;
      a1 = v18;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v19)
      {
        break;
      }

      v36 = v10;
      v20 = v9;
      v21 = EncryptedData.decrypt(key:)();
      v38 = 0;
      v22 = v21;
      v24 = v23;

      (*v32)(v20, v37);
      sub_100016590(v13, v15);
      v39 = v11;
      v26 = v11[2];
      v25 = v11[3];
      if (v26 >= v25 >> 1)
      {
        sub_101123D90((v25 > 1), v26 + 1, 1);
        v11 = v39;
      }

      v12 += 3;
      v11[2] = v26 + 1;
      v27 = &v11[3 * v26];
      v27[4] = v14;
      v27[5] = v22;
      v27[6] = v24;
      v10 = v36 - 1;
      v9 = v31;
      if (v36 == 1)
      {
        return v30;
      }
    }

    v38 = v19;

    sub_100016590(v13, v15);
  }

  return a1;
}

unint64_t sub_100D0F3AC(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for KeyDropInterface.KeyPackage(0) + 24));
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_23:
    v19 = sub_100D0F62C(_swiftEmptyArrayStorage, sub_100B31FBC, &qword_1016B9BC0, &qword_1013E3730, sub_101123DF0);
    v21 = v20;
    v23 = v22;

    return sub_1013131C0(v19, v21, v23);
  }

  v27 = v1;
  v28 = *(v1 + 16);
  result = sub_101123E28(0, v2, 0);
  v4 = v27;
  v5 = v28;
  v6 = 0;
  v7 = (v27 + 48);
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;
    v11 = *v7 >> 62;
    if (v11 > 1)
    {
      break;
    }

    if (v11)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_32;
      }

      v14 = HIDWORD(v8) - v8;
      goto LABEL_14;
    }

    if (BYTE6(v10) != 6)
    {
      goto LABEL_19;
    }

LABEL_15:
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_101123E28((v15 > 1), v16 + 1, 1);
      v4 = v27;
      v5 = v28;
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[3 * v16];
    v17[4] = v9;
    v17[5] = v8;
    v17[6] = v10;
    v7 += 9;
    if (v5 == v6)
    {
      goto LABEL_23;
    }
  }

  if (v11 != 2)
  {
    v18 = 0;
    goto LABEL_29;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    goto LABEL_31;
  }

LABEL_14:
  result = sub_100017D5C(*(v7 - 1), *v7);
  v4 = v27;
  v5 = v28;
  if (v14 == 6)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (v11 == 2)
  {
    v25 = *(v8 + 16);
    v24 = *(v8 + 24);
    v18 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_28:
    v18 = BYTE6(v10);
    goto LABEL_29;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v18 = HIDWORD(v8) - v8;
LABEL_29:
    sub_100018350();
    swift_allocError();
    *v26 = 6;
    *(v26 + 8) = v18;
    *(v26 + 16) = 0;
    swift_willThrow();
    sub_100016590(v8, v10);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_100D0F62C(void *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4, void (*a5)(BOOL, int64_t, uint64_t))
{
  v71 = a1;

  sub_100C712F8(&v71, a2, a3, a4);
  v10 = v71;
  v11 = v71[2];
  if (!v11)
  {
LABEL_23:

    return 0;
  }

  v12 = &v71[3 * v11];
  v13 = v12[1];
  v14 = v13 + 1;
  if (v13 == -1)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = v12[2];
  v15 = v12[3];
  swift_retain_n();
  v69 = v16;
  v70 = v15;
  sub_100017D5C(v16, v15);
  v17 = &v10[3 * v11 + 6];
  do
  {
    v18 = v11;
    v19 = v17;
    if (!v11)
    {
      break;
    }

    if (v11 > v10[2])
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v21 = *(v17 - 40);
    v20 = *(v17 - 32);
    v22 = *(v17 - 24);
    sub_100017D5C(v20, v22);
    sub_100016590(v20, v22);
    if (v21 == -1)
    {
      goto LABEL_44;
    }

    v17 = (v19 - 3);
    v11 = v18 - 1;
    v23 = v21 + 1 == v14;
    v14 = v21;
  }

  while (v23);

  v14 = a1[2];
  v24 = v14 - v18;
  if (v14 <= v18)
  {
    goto LABEL_47;
  }

  v25 = v10[2];

  if (v25 < v18 || v25 < v14)
  {
    goto LABEL_48;
  }

  v71 = _swiftEmptyArrayStorage;
  sub_101123BF8(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    goto LABEL_49;
  }

  v65 = a5;
  v27 = v71;
  v28 = v19;
  v67 = v14 - v18;
  v29 = v14 - v18;
  do
  {
    v31 = *(v28 - 2);
    v30 = *(v28 - 1);
    v32 = *v28;
    sub_100017D5C(v30, *v28);
    sub_100016590(v30, v32);
    v71 = v27;
    v34 = v27[2];
    v33 = v27[3];
    if (v34 >= v33 >> 1)
    {
      sub_101123BF8((v33 > 1), v34 + 1, 1);
      v27 = v71;
    }

    v28 += 3;
    v27[2] = v34 + 1;
    v27[v34 + 4] = v31;
    --v29;
  }

  while (v29);
  v68 = sub_10030BAAC(v27);
  v36 = v35;

  if (v36)
  {
    goto LABEL_22;
  }

  v37 = _swiftEmptyArrayStorage;
  v38 = v14 - v18;
  if (v14 != v18)
  {
    v71 = _swiftEmptyArrayStorage;
    sub_101123BF8(0, v67, 0);
    v37 = v71;
    v43 = v19;
    do
    {
      v45 = *(v43 - 2);
      v44 = *(v43 - 1);
      v46 = *v43;
      sub_100017D5C(v44, *v43);
      sub_100016590(v44, v46);
      v71 = v37;
      v48 = v37[2];
      v47 = v37[3];
      if (v48 >= v47 >> 1)
      {
        sub_101123BF8((v47 > 1), v48 + 1, 1);
        v37 = v71;
      }

      v43 += 3;
      v37[2] = v48 + 1;
      v37[v48 + 4] = v45;
      --v38;
    }

    while (v38);
  }

  v39 = sub_1012BAA64(v37);
  v41 = v40;

  if (v41)
  {
LABEL_22:
    sub_100016590(v69, v70);
    goto LABEL_23;
  }

  v64 = v39;
  if (v39 < v68)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_32;
  }

  if (v14 != v18)
  {
    v71 = _swiftEmptyArrayStorage;
    v65(0, v67, 0);
    v58 = v71;
    while (v18 < v14)
    {
      v60 = *(v19 - 1);
      v59 = *v19;
      sub_100017D5C(v60, *v19);
      sub_100017D5C(v60, v59);
      sub_100016590(v60, v59);
      v71 = v58;
      v62 = v58[2];
      v61 = v58[3];
      if (v62 >= v61 >> 1)
      {
        v65(v61 > 1, v62 + 1, 1);
        v58 = v71;
      }

      v58[2] = v62 + 1;
      v63 = &v58[2 * v62];
      v63[4] = v60;
      v63[5] = v59;
      ++v18;
      v19 += 3;
      if (v14 == v18)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_45;
  }

LABEL_31:
  if (qword_101694DF8 != -1)
  {
    goto LABEL_51;
  }

LABEL_32:
  v49 = type metadata accessor for Logger();
  sub_1000076D4(v49, qword_10177BF08);
  swift_bridgeObjectRetain_n();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v52 = 136315906;
    v74 = v68;
    v75 = v66;
    v71 = 0;
    v72 = 0xE000000000000000;
    v73 = v64;
    _print_unlocked<A, B>(_:_:)();
    v53._countAndFlagsBits = 3026478;
    v53._object = 0xE300000000000000;
    String.append(_:)(v53);
    _print_unlocked<A, B>(_:_:)();
    v54 = sub_1000136BC(v71, v72, &v75);

    *(v52 + 4) = v54;
    *(v52 + 12) = 2048;

    *(v52 + 14) = v14;

    *(v52 + 22) = 2048;
    v55 = v64 - v68;
    if ((v64 - v68) < 0)
    {
      __break(1u);
    }

    else
    {
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (!v56)
      {
        *(v52 + 24) = v57;
        *(v52 + 32) = 2048;

        *(v52 + 34) = v14;

        _os_log_impl(&_mh_execute_header, v50, v51, "Retaining range: %s out of possible %ld. %ld / %ld.", v52, 0x2Au);
        sub_100007BAC(v66);

        sub_100016590(v69, v70);

        return v68;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    sub_100016590(v69, v70);

    swift_bridgeObjectRelease_n();

    return v68;
  }

  return result;
}

unint64_t sub_100D0FC60(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for KeyDropInterface.KeyPackage(0) + 24));
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_23:
    v19 = sub_100D0F62C(_swiftEmptyArrayStorage, sub_100B31FD0, &qword_1016B9BC8, &unk_1013E3738, sub_101123E68);
    v21 = v20;
    v23 = v22;

    return sub_1013131C0(v19, v21, v23);
  }

  v27 = v1;
  v28 = *(v1 + 16);
  result = sub_101123EA0(0, v2, 0);
  v4 = v27;
  v5 = v28;
  v6 = 0;
  v7 = (v27 + 48);
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;
    v11 = *v7 >> 62;
    if (v11 > 1)
    {
      break;
    }

    if (v11)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_32;
      }

      v14 = HIDWORD(v8) - v8;
      goto LABEL_14;
    }

    if (BYTE6(v10) != 32)
    {
      goto LABEL_19;
    }

LABEL_15:
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_101123EA0((v15 > 1), v16 + 1, 1);
      v4 = v27;
      v5 = v28;
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[3 * v16];
    v17[4] = v9;
    v17[5] = v8;
    v17[6] = v10;
    v7 += 9;
    if (v5 == v6)
    {
      goto LABEL_23;
    }
  }

  if (v11 != 2)
  {
    v18 = 0;
    goto LABEL_29;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    goto LABEL_31;
  }

LABEL_14:
  result = sub_100017D5C(*(v7 - 1), *v7);
  v4 = v27;
  v5 = v28;
  if (v14 == 32)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (v11 == 2)
  {
    v25 = *(v8 + 16);
    v24 = *(v8 + 24);
    v18 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_28:
    v18 = BYTE6(v10);
    goto LABEL_29;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v18 = HIDWORD(v8) - v8;
LABEL_29:
    sub_100018350();
    swift_allocError();
    *v26 = 32;
    *(v26 + 8) = v18;
    *(v26 + 16) = 0;
    swift_willThrow();
    sub_100016590(v8, v10);
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_100D0FEE0(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for KeyDropInterface.KeyPackage(0) + 24));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v22 = v1;
  v23 = *(v1 + 16);
  result = sub_101123EE0(0, v2, 0);
  v4 = v22;
  v5 = v23;
  v6 = 0;
  for (i = (v22 + 48); ; i += 9)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    v11 = *i >> 62;
    if (v11 > 1)
    {
      break;
    }

    if (v11)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_32;
      }

      v14 = HIDWORD(v8) - v8;
      goto LABEL_14;
    }

    if (BYTE6(v10) != 28)
    {
      goto LABEL_19;
    }

LABEL_15:
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_101123EE0((v15 > 1), v16 + 1, 1);
      v4 = v22;
      v5 = v23;
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[3 * v16];
    v17[4] = v9;
    v17[5] = v8;
    v17[6] = v10;
    if (v5 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  if (v11 != 2)
  {
    v18 = 0;
    goto LABEL_28;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    goto LABEL_31;
  }

LABEL_14:
  result = sub_100017D5C(*(i - 1), *i);
  v4 = v22;
  v5 = v23;
  if (v14 == 28)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (v11 == 2)
  {
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    v18 = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v11 != 1)
  {
LABEL_27:
    v18 = BYTE6(v10);
    goto LABEL_28;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v18 = HIDWORD(v8) - v8;
LABEL_28:
    sub_100018350();
    swift_allocError();
    *v21 = 28;
    *(v21 + 8) = v18;
    *(v21 + 16) = 0;
    swift_willThrow();
    sub_100016590(v8, v10);

    return _swiftEmptyArrayStorage;
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_100D100F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v141 = a4;
  v120 = a3;
  v119 = a2;
  v115 = type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member(0);
  v114 = *(v115 - 8);
  v5 = *(v114 + 64);
  __chkstk_darwin(v115);
  v116 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for EncryptedData();
  v144 = *(v133 - 8);
  v7 = *(v144 + 64);
  __chkstk_darwin(v133);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for KeyDropDownloadResponse.Member(0);
  v139 = *(v10 - 8);
  v11 = *(v139 + 64);
  v12 = __chkstk_darwin(v10);
  v142 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v113 - v15;
  v17 = __chkstk_darwin(v14);
  v136 = &v113 - v18;
  v19 = __chkstk_darwin(v17);
  v127 = &v113 - v20;
  __chkstk_darwin(v19);
  v129 = &v113 - v21;
  v130 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v22 = *(*(v130 - 8) + 64);
  v23 = __chkstk_darwin(v130);
  v143 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v113 - v26;
  __chkstk_darwin(v25);
  v29 = &v113 - v28;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v132 = v10;
  v30 = type metadata accessor for Logger();
  v31 = sub_1000076D4(v30, qword_10177BF08);
  sub_100D11DC8(v141, v29, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_bridgeObjectRetain_n();
  v137 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v131 = v9;
  v128 = v16;
  v140 = v27;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v145[0] = swift_slowAlloc();
    *v35 = 141558787;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    v36 = *(v130 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
    v40 = sub_1000136BC(v37, v39, v145);
    v27 = v140;

    *(v35 + 14) = v40;
    *(v35 + 22) = 2080;
    v41 = Array.description.getter();
    v43 = sub_1000136BC(v41, v42, v145);

    *(v35 + 24) = v43;
    *(v35 + 32) = 2048;
    v44 = *(a1 + 16);

    *(v35 + 34) = v44;

    _os_log_impl(&_mh_execute_header, v32, v33, "Processing shareId: %{private,mask.hash}s,\nmembers: %s, count: %ld.", v35, 0x2Au);
    swift_arrayDestroy();

    v9 = v131;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v46 = *(a1 + 16);
  v47 = v136;
  if (!v46)
  {
    return _swiftEmptyArrayStorage;
  }

  v138 = 0;
  v48 = a1 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
  v118 = (v144 + 8);
  v117 = _swiftEmptyArrayStorage;
  v139 = *(v139 + 72);
  *&v45 = 141558787;
  v122 = v45;
  *&v45 = 141559555;
  v121 = v45;
  v49 = v132;
  v51 = v142;
  v50 = v143;
  v52 = v129;
  do
  {
    v144 = v46;
    sub_100D11DC8(v48, v52, type metadata accessor for KeyDropDownloadResponse.Member);
    v54 = (v52 + *(v49 + 24));
    v55 = v54[1];
    if (v55 >> 60 == 15)
    {
      sub_100D11DC8(v141, v50, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v52, v51, type metadata accessor for KeyDropDownloadResponse.Member);
      v56 = Logger.logObject.getter();
      v57 = v52;
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v58))
      {
        v59 = swift_slowAlloc();
        v145[0] = swift_slowAlloc();
        *v59 = v122;
        *(v59 + 4) = 1752392040;
        *(v59 + 12) = 2081;
        v60 = *(v130 + 20);
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        sub_100018D00(v143, type metadata accessor for SharingCircleKeyManager.Instruction);
        v64 = sub_1000136BC(v61, v63, v145);
        v49 = v132;

        *(v59 + 14) = v64;
        *(v59 + 22) = 2160;
        *(v59 + 24) = 1752392040;
        *(v59 + 32) = 2081;
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v66;
        sub_100018D00(v142, type metadata accessor for KeyDropDownloadResponse.Member);
        v68 = sub_1000136BC(v65, v67, v145);
        v47 = v136;

        *(v59 + 34) = v68;
        _os_log_impl(&_mh_execute_header, v56, v58, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s not yet accepted.", v59, 0x2Au);
        swift_arrayDestroy();
        v51 = v142;

        v50 = v143;

        v53 = v57;
        v9 = v131;
      }

      else
      {

        sub_100018D00(v51, type metadata accessor for KeyDropDownloadResponse.Member);
        sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
        v53 = v57;
      }

      sub_100018D00(v53, type metadata accessor for KeyDropDownloadResponse.Member);
      v52 = v57;
      v27 = v140;
    }

    else
    {
      v69 = *v54;
      v70 = type metadata accessor for PropertyListDecoder();
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      sub_100017D5C(v69, v55);
      PropertyListDecoder.init()();
      sub_100D13BF8(&qword_10169C990, &type metadata accessor for EncryptedData);
      v134 = v69;
      v135 = v55;
      v73 = v138;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v73)
      {

        v138 = 0;
        sub_100D11DC8(v141, v27, type metadata accessor for SharingCircleKeyManager.Instruction);
        v77 = v52;
        v78 = v52;
        v79 = v127;
        sub_100D11DC8(v77, v127, type metadata accessor for KeyDropDownloadResponse.Member);
        sub_100D11DC8(v78, v47, type metadata accessor for KeyDropDownloadResponse.Member);
        v80 = v128;
        sub_100D11DC8(v78, v128, type metadata accessor for KeyDropDownloadResponse.Member);
        swift_errorRetain();
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v145[0] = v126;
          *v83 = v121;
          *(v83 + 4) = 1752392040;
          *(v83 + 12) = 2081;
          v124 = v82;
          v84 = *(v130 + 20);
          type metadata accessor for UUID();
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
          v123 = v81;
          v85 = dispatch thunk of CustomStringConvertible.description.getter();
          v87 = v86;
          sub_100018D00(v140, type metadata accessor for SharingCircleKeyManager.Instruction);
          v88 = sub_1000136BC(v85, v87, v145);

          *(v83 + 14) = v88;
          *(v83 + 22) = 2160;
          *(v83 + 24) = 1752392040;
          *(v83 + 32) = 2081;
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v90;
          sub_100018D00(v79, type metadata accessor for KeyDropDownloadResponse.Member);
          v92 = sub_1000136BC(v89, v91, v145);

          *(v83 + 34) = v92;
          *(v83 + 42) = 2080;
          v93 = v136;
          v49 = v132;
          v94 = dispatch thunk of CustomStringConvertible.description.getter();
          v96 = v95;
          v97 = v93;
          sub_100018D00(v93, type metadata accessor for KeyDropDownloadResponse.Member);
          v98 = sub_1000136BC(v94, v96, v145);

          *(v83 + 44) = v98;
          *(v83 + 52) = 1024;
          LODWORD(v98) = *(v80 + *(v49 + 20));
          sub_100018D00(v80, type metadata accessor for KeyDropDownloadResponse.Member);
          *(v83 + 54) = v98;
          *(v83 + 58) = 2112;
          swift_errorRetain();
          v99 = _swift_stdlib_bridgeErrorToNSError();
          *(v83 + 60) = v99;
          v100 = v125;
          *v125 = v99;
          v101 = v123;
          _os_log_impl(&_mh_execute_header, v123, v124, "Failed to process members in share-id: %{private,mask.hash}s,\nmember trust memberId: %{private,mask.hash}s,\nmember: %s, owner: %{BOOL}d. %@.", v83, 0x44u);
          sub_10000B3A8(v100, &qword_10169BB30, &unk_10138B3C0);

          swift_arrayDestroy();

          v9 = v131;

          sub_100006654(v134, v135);

          v52 = v129;
          v27 = v140;
          sub_100018D00(v129, type metadata accessor for KeyDropDownloadResponse.Member);
          v47 = v97;
          v51 = v142;
        }

        else
        {
          sub_100018D00(v80, type metadata accessor for KeyDropDownloadResponse.Member);
          sub_100006654(v134, v135);

          v47 = v136;
          sub_100018D00(v136, type metadata accessor for KeyDropDownloadResponse.Member);
          sub_100018D00(v79, type metadata accessor for KeyDropDownloadResponse.Member);
          sub_100018D00(v27, type metadata accessor for SharingCircleKeyManager.Instruction);
          v52 = v129;
          sub_100018D00(v129, type metadata accessor for KeyDropDownloadResponse.Member);
        }

        v50 = v143;
      }

      else
      {
        v74 = EncryptedData.decrypt(key:)();
        v76 = v75;
        sub_100D137EC();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v138 = 0;
        (*v118)(v9, v133);
        sub_100016590(v74, v76);

        v102 = v145[0];
        v103 = v145[1];
        v104 = *(v52 + *(v49 + 20));
        v105 = type metadata accessor for UUID();
        v106 = v116;
        (*(*(v105 - 8) + 16))(v116, v52, v105);
        v107 = v115;
        *(v106 + *(v115 + 20)) = v104;
        v108 = (v106 + *(v107 + 24));
        *v108 = v102;
        v108[1] = v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_100A5B9AC(0, v117[2] + 1, 1, v117);
        }

        v51 = v142;
        v50 = v143;
        v47 = v136;
        v110 = v117[2];
        v109 = v117[3];
        if (v110 >= v109 >> 1)
        {
          v117 = sub_100A5B9AC(v109 > 1, v110 + 1, 1, v117);
        }

        sub_100006654(v134, v135);
        sub_100018D00(v52, type metadata accessor for KeyDropDownloadResponse.Member);
        v111 = v117;
        v117[2] = v110 + 1;
        sub_100D12974(v116, v111 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v110, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      }
    }

    v48 += v139;
    v46 = v144 - 1;
  }

  while (v144 != 1);
  return v117;
}

Swift::Int sub_100D110E8(uint64_t a1, char a2)
{
  v3 = *(a1 + *(type metadata accessor for OwnerSharingCircle() + 28));
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v4 = &off_101607968;
      goto LABEL_11;
    }

    v5 = &off_101607940;
    v6 = &off_101607910;
  }

  else
  {
    if (!v3)
    {
      v4 = &off_101607898;
      goto LABEL_11;
    }

    v5 = &off_1016078E8;
    v6 = &off_1016078C0;
  }

  if (a2)
  {
    v4 = v6;
  }

  else
  {
    v4 = v5;
  }

LABEL_11:

  return sub_100B04978(v4);
}

void sub_100D11184()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177AE28);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching AuthKit account", v3, 2u);
  }

  v4 = [objc_allocWithZone(ACAccountStore) init];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [v5 aa_altDSID];

    if (!v6 || (v7 = [objc_opt_self() sharedInstance], v8 = objc_msgSend(v7, "authKitAccountWithAltDSID:", v6), v7, v6, !v8))
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "AuthKit account not found", v11, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100D11380(uint64_t a1@<X8>)
{
  sub_100D11184();
  if (!v2)
  {
    v6 = 0;
    v8 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
LABEL_25:
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    return;
  }

  v3 = v2;
  v4 = [v2 aa_formattedUsername];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = objc_opt_self();
    v10 = [v9 sharedInstance];
    v11 = [v10 phoneAsAppleIDForAccount:v3];

    if (v11)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177AE28);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Account is MAKO", v15, 2u);
      }

      v16 = 0;
      v17 = 0;
      v18 = 1;
      goto LABEL_25;
    }

    v19 = [v9 sharedInstance];
    v20 = [v19 additionalInfoForAccount:v3];

    if (v20)
    {
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v21 + 16))
      {
        goto LABEL_19;
      }

      v22 = sub_100771D58(0x6D754E656E6F6870, 0xEC00000073726562);
      if ((v23 & 1) == 0)
      {
        goto LABEL_19;
      }

      sub_100013894(*(v21 + 56) + 32 * v22, v33);

      sub_1000BC4D4(&qword_1016A3EE8, &unk_1013E3660);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_20;
      }

      if (!*(v31 + 16) || (v24 = *(v31 + 32), , , !*(v24 + 16)) || (v25 = sub_100771D58(0x6D754E656E6F6870, 0xEB00000000726562), (v26 & 1) == 0))
      {
LABEL_19:

        goto LABEL_20;
      }

      sub_100013894(*(v24 + 56) + 32 * v25, v33);

      if (swift_dynamicCast())
      {

        v16 = v31;
        v17 = v32;
        v18 = 2;
        goto LABEL_25;
      }
    }

LABEL_20:
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177AE28);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Account has no phone number associated", v30, 2u);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_25;
  }

  __break(1u);
}

void *sub_100D11764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v67 = a2;
  v6 = sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v64 = v59 - v12;
  v13 = __chkstk_darwin(v11);
  v65 = v59 - v14;
  __chkstk_darwin(v13);
  v66 = v59 - v15;
  v16 = type metadata accessor for EncryptedData();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v21)
  {
    v84 = _swiftEmptyArrayStorage;
    v62 = v10;
    sub_101123DD0(0, v21, 0);
    v23 = a1 + 32;
    v61 = (v17 + 56);
    v80 = v84;
    v24 = (v17 + 48);
    v63 = (v17 + 8);
    v25 = v21 - 1;
    v60 = (v17 + 48);
    v79 = v20;
    while (1)
    {
      v26 = *(v23 + 16);
      v82[0] = *v23;
      v82[1] = v26;
      v27 = *(v23 + 48);
      v82[2] = *(v23 + 32);
      v82[3] = v27;
      v83 = *(v23 + 64);
      sub_1003914F8(v82, v81);
      Data.spEncrypt(key:ivLength:)();
      v28 = v66;
      if (v4)
      {
        break;
      }

      v78 = v25;
      v29 = type metadata accessor for PropertyListEncoder();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = PropertyListEncoder.init()();
      sub_100D13BF8(&qword_1016B9AF0, &type metadata accessor for EncryptedData);
      v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v74 = v34;
      v75 = v33;
      v76 = 0;
      v77 = v23;
      v73 = *&v82[0];
      (*v61)(v28, 1, 1, v16);
      v35 = v65;
      sub_1000D2A70(v28, v65, &qword_1016B9AE8, &unk_1013E35D0);
      v36 = *v24;
      v37 = (*v24)(v35, 1, v16);
      v38 = v63;
      if (v37 == 1)
      {
        sub_10000B3A8(v35, &qword_1016B9AE8, &unk_1013E35D0);
        v72 = 0;
        v71 = 0xF000000000000000;
      }

      else
      {
        v72 = EncryptedData.cipherText.getter();
        v71 = v39;
        (*v38)(v35, v16);
      }

      v40 = v64;
      sub_1000D2A70(v28, v64, &qword_1016B9AE8, &unk_1013E35D0);
      if (v36(v40, 1, v16) == 1)
      {
        sub_10000B3A8(v40, &qword_1016B9AE8, &unk_1013E35D0);
        v70 = 0;
        v69 = 0xF000000000000000;
      }

      else
      {
        v70 = EncryptedData.initializationVector.getter();
        v69 = v41;
        (*v38)(v40, v16);
      }

      v42 = v62;
      sub_1000D2A70(v28, v62, &qword_1016B9AE8, &unk_1013E35D0);
      if (v36(v42, 1, v16) == 1)
      {
        sub_10000B3A8(v28, &qword_1016B9AE8, &unk_1013E35D0);
        sub_10000B3A8(v42, &qword_1016B9AE8, &unk_1013E35D0);

        v43 = 0;
        v44 = *v38;
        v45 = 0xF000000000000000;
      }

      else
      {
        v46 = EncryptedData.tag.getter();
        v59[1] = v32;
        v47 = v46;
        v48 = v42;
        v49 = v28;
        v45 = v50;
        sub_10000B3A8(v49, &qword_1016B9AE8, &unk_1013E35D0);
        v44 = *v38;
        v51 = v48;
        v43 = v47;
        (*v38)(v51, v16);
      }

      v44(v79, v16);
      sub_100391554(v82);
      result = v80;
      v84 = v80;
      v53 = v80[2];
      v52 = v80[3];
      v54 = v77;
      if (v53 >= v52 >> 1)
      {
        sub_101123DD0((v52 > 1), v53 + 1, 1);
        result = v84;
      }

      result[2] = v53 + 1;
      v55 = &result[9 * v53];
      v56 = v75;
      v55[4] = v73;
      v55[5] = v56;
      v57 = v72;
      v55[6] = v74;
      v55[7] = v57;
      v58 = v70;
      v55[8] = v71;
      v55[9] = v58;
      v55[10] = v69;
      v55[11] = v43;
      v55[12] = v45;
      if (!v78)
      {
        return result;
      }

      v80 = result;
      v25 = v78 - 1;
      v23 = v54 + 72;
      v24 = v60;
      v4 = v76;
    }

    sub_100391554(v82);
  }

  return result;
}

uint64_t sub_100D11DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D11E30(uint64_t a1, void (*a2)(char *, void), unint64_t *a3)
{
  v75 = a2;
  v79 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v70 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v72 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v74 = &v70 - v18;
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  v21 = type metadata accessor for OwnedBeaconRecord();
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D11DC8(v79, v25, type metadata accessor for OwnedBeaconRecord);
  v26 = *(v22 + 28);
  v77 = v13;
  v27 = *(v13 + 16);
  v80 = v12;
  v76 = v27;
  v27(v20, &v25[v26], v12);
  v28 = v5;
  v30 = *(v5 + 16);
  v29 = v5 + 16;
  v31 = &v25[*(v22 + 40)];
  v79 = v4;
  v30(v11, v31, v4);
  v32 = v25;
  v33 = v20;
  sub_100018D00(v32, type metadata accessor for OwnedBeaconRecord);
  v34 = *a3;
  v35 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
  if (v34)
  {
    v36 = ~(v34 / 0x60);
  }

  else
  {
    v36 = 0;
  }

  v78 = v11;
  v37 = sub_10088756C(v20, v11, a3 + v35, 1uLL);
  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v38 = v37 + v36;
  DateInterval.start.getter();
  v39 = v78;
  v29 = sub_10088756C(v20, v78, v9, 1uLL);
  v40 = *(v28 + 8);
  v41 = v79;
  v40(v9, v79);
  DateInterval.end.getter();
  v42 = sub_10088756C(v20, v39, v9, 1uLL);
  v73 = v28 + 8;
  v75 = v40;
  result = (v40)(v9, v41);
  v11 = v38;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if ((v38 & 0x8000000000000000) == 0 && v38 >= v29)
  {
    v70 = v42;
    v4 = v80;
    if (qword_101694A18 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177B538);
      v46 = v72;
      v76(v72, v33, v4);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = v46;
        v71 = v33;
        v51 = v49;
        v52 = swift_slowAlloc();
        v81 = v52;
        *v51 = 141558787;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2081;
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v11;
        v56 = v55;
        (*(v77 + 8))(v50, v80);
        v57 = sub_1000136BC(v53, v56, &v81);
        v11 = v54;
        v4 = v80;

        *(v51 + 14) = v57;
        *(v51 + 22) = 2048;
        *(v51 + 24) = v29;
        *(v51 + 32) = 2048;
        *(v51 + 34) = v11;
        _os_log_impl(&_mh_execute_header, v47, v48, "        Buckets clamped for beacon %{private,mask.hash}s,starting secondary index %llu <= factor %lld -- clamping to 1.", v51, 0x2Au);
        sub_100007BAC(v52);

        v33 = v71;
      }

      else
      {

        (*(v77 + 8))(v46, v4);
      }

      v42 = v70;
      v28 = 1;
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      if (v11)
      {
LABEL_17:
        if (v42 < v11)
        {
          if (v28 <= v42)
          {
            v58 = v42;
          }

          else
          {
            v58 = v28;
          }

          goto LABEL_26;
        }
      }

LABEL_21:
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v58 = v42 - v11;
      if (__OFSUB__(v42, v11))
      {
        goto LABEL_36;
      }

      if ((v58 & 0x8000000000000000) == 0)
      {
        if (v28 > v58)
        {
          v58 = v28;
        }

LABEL_26:
        v72 = v58;
        a3 = v74;
        if (p_weak_ivar_lyt[323] != -1)
        {
LABEL_33:
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_1000076D4(v59, qword_10177B538);
        v76(a3, v33, v4);
        v60 = Logger.logObject.getter();
        v61 = v33;
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v33))
        {
          v29 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v81 = v62;
          *v29 = 141559043;
          *(v29 + 4) = 1752392040;
          *(v29 + 12) = 2081;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v71 = v61;
          v64 = v11;
          v11 = v65;
          v66 = v4;
          v4 = *(v77 + 8);
          (v4)(a3, v66);
          v67 = sub_1000136BC(v63, v11, &v81);

          *(v29 + 14) = v67;
          *(v29 + 22) = 2048;
          *(v29 + 24) = v28;
          *(v29 + 32) = 2048;
          v68 = v72;
          *(v29 + 34) = v72;
          *(v29 + 42) = 2048;
          *(v29 + 44) = v64;
          _os_log_impl(&_mh_execute_header, v60, v33, "        Buckets for beacon %{private,mask.hash}s,secondary index %llu - %llu (factor %lld).", v29, 0x34u);
          sub_100007BAC(v62);

          v75(v78, v79);
          (v4)(v71, v80);
        }

        else
        {

          v69 = *(v77 + 8);
          v69(a3, v4);
          v75(v78, v79);
          v69(v61, v4);
          v68 = v72;
        }

        if (v68 >= v28)
        {
          return v28;
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }

  v4 = v80;
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v28 = v29 - v38;
  if (__OFSUB__(v29, v38))
  {
    __break(1u);
  }

  else if ((v28 & 0x8000000000000000) == 0)
  {
    if (v38 < 1)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100D12680(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = type metadata accessor for EncryptedData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[1];
  if (v14 >> 60 == 15)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v15 = 9;
    swift_willThrow();
  }

  else
  {
    v29 = v11;
    v16 = *a3;
    v17 = type metadata accessor for PropertyListEncoder();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_100017D5C(v16, v14);
    PropertyListEncoder.init()();
    v27 = a1;
    v28 = a2;
    sub_100D12DB0();
    v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v3)
    {
      v22 = v20;
      v23 = v21;
      sub_100017D5C(v16, v14);
      Data.spEncrypt(key:ivLength:)();
      v26 = v9;
      sub_100006654(v16, v14);
      sub_100D13BF8(&qword_1016B9AF0, &type metadata accessor for EncryptedData);
      v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      (*(v26 + 8))(v13, v29);
      sub_100016590(v22, v23);
    }

    sub_100006654(v16, v14);
  }

  return v4;
}

uint64_t sub_100D12974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D129DC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100D0108C(a1, a2, v2);
}

unint64_t sub_100D12AA0()
{
  result = qword_1016B9B08;
  if (!qword_1016B9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B08);
  }

  return result;
}

unint64_t sub_100D12B68()
{
  result = qword_1016B9B48;
  if (!qword_1016B9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B48);
  }

  return result;
}

BOOL sub_100D12BE0(unint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return v3 >= *(v2 + *(type metadata accessor for KeyDropInterface.KeyAlignment(0) + 20));
}

uint64_t sub_100D12C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100D12C9C()
{
  result = qword_1016B9B50;
  if (!qword_1016B9B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B50);
  }

  return result;
}

unint64_t sub_100D12CF0()
{
  result = qword_1016B9B58;
  if (!qword_1016B9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B58);
  }

  return result;
}

unint64_t sub_100D12D5C()
{
  result = qword_1016B9B78;
  if (!qword_1016B9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B78);
  }

  return result;
}

unint64_t sub_100D12DB0()
{
  result = qword_1016B9B80;
  if (!qword_1016B9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B80);
  }

  return result;
}

unint64_t sub_100D12E04()
{
  result = qword_1016B9B88;
  if (!qword_1016B9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B88);
  }

  return result;
}

unint64_t sub_100D12E70()
{
  result = qword_1016B9B90;
  if (!qword_1016B9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B90);
  }

  return result;
}

unint64_t sub_100D12EC4()
{
  result = qword_1016B9B98;
  if (!qword_1016B9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B98);
  }

  return result;
}

unint64_t sub_100D12F40()
{
  result = qword_1016B9BB0;
  if (!qword_1016B9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9BB0);
  }

  return result;
}

uint64_t sub_100D12F94()
{
  v2 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v6 = (v4 + *(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100C9B8F8(v7, v0 + v3, v9, v10, v11, v0 + v6);
}

uint64_t sub_100D130FC()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v30 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v27 = *(*(v2 - 1) + 80);
  v31 = *(*(v2 - 1) + 64);
  v3 = *(v0 + 16);

  v32 = v0;
  v29 = (v30 + 24) & ~v30;
  v4 = v0 + v29;
  sub_100016590(*(v0 + v29), *(v0 + v29 + 8));
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
  v26 = *(*(v14 - 8) + 8);
  v26(v4 + v13, v14);
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

  v20 = (v28 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + v27 + 24) & ~v27;
  v22 = *(v32 + v20 + 16);

  v8(v32 + v21, v6);
  v8(v32 + v21 + v2[5], v6);
  v8(v32 + v21 + v2[6], v6);
  v8(v32 + v21 + v2[7], v6);
  v23 = *(v32 + v21 + v2[8]);

  v24 = *(v32 + v21 + v2[11]);

  v26(v32 + v21 + v2[12], v14);

  return _swift_deallocObject(v32, v21 + v31);
}

uint64_t sub_100D134AC()
{
  v2 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v6 = (v4 + *(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014650;

  return sub_100C9B348(v7, v0 + v3, v9, v10, v11, v0 + v6);
}

uint64_t sub_100D13614()
{
  v2 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v6 = (v4 + *(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100C9AD9C(v7, v0 + v3, v9, v10, v11, v0 + v6);
}

uint64_t sub_100D1377C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) + 28);
  return static UUID.== infix(_:_:)() & 1;
}

unint64_t sub_100D137EC()
{
  result = qword_1016B9BD0;
  if (!qword_1016B9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9BD0);
  }

  return result;
}

uint64_t sub_100D13840(uint64_t a1)
{
  v4 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100C84D88(a1, v6, v7, v1 + v5);
}

uint64_t sub_100D139A4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100D13A48(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100C7A0A8(a1, a2, v2);
}

uint64_t sub_100D13AF4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for OwnerPeerTrust() + 20);
  return static UUID.== infix(_:_:)() & 1;
}

unint64_t sub_100D13B44()
{
  result = qword_1016B9BE0;
  if (!qword_1016B9BE0)
  {
    sub_1000BC580(&qword_10169CDB0, &qword_10139A080);
    sub_100D13BF8(&qword_1016B9BE8, type metadata accessor for KeyDropInterface.KeyPackage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9BE0);
  }

  return result;
}

uint64_t sub_100D13BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D13C40(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_100C76EF8(a1, a2, v2);
}

uint64_t sub_100D13D0C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100C76BD8(a1, a2, v2);
}

uint64_t sub_100D13DD8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100D13E88()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100D13F48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100D13F90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_100D14018()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100D140E8();
    if (v1 <= 0x3F)
    {
      sub_100D14198();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100D140E8()
{
  if (!qword_1016B9D00)
  {
    sub_100D14144();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B9D00);
    }
  }
}

unint64_t sub_100D14144()
{
  result = qword_1016B9D08;
  if (!qword_1016B9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9D08);
  }

  return result;
}

void sub_100D14198()
{
  if (!qword_1016B9D10)
  {
    type metadata accessor for BookmarkMetaData();
    sub_100D14144();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B9D10);
    }
  }
}

void sub_100D1422C()
{
  sub_100D14328(319, &qword_1016B9DC8, type metadata accessor for KeyDropJoinToken, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100D14328(319, &unk_1016B9DD0, &type metadata accessor for SymmetricKey256, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100D1438C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100D14328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100D1438C()
{
  if (!qword_1016B64C8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B64C8);
    }
  }
}

uint64_t sub_100D143DC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100D14404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100D1444C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingCircleKeyManager.SharingCircleKeyManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingCircleKeyManager.SharingCircleKeyManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100D14644()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100D146C4()
{
  result = qword_1016B9E98;
  if (!qword_1016B9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9E98);
  }

  return result;
}

unint64_t sub_100D1471C()
{
  result = qword_1016B9EA0;
  if (!qword_1016B9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9EA0);
  }

  return result;
}

unint64_t sub_100D14770()
{
  result = qword_1016B9EB0;
  if (!qword_1016B9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9EB0);
  }

  return result;
}

unint64_t sub_100D147D8()
{
  result = qword_1016B9EC0;
  if (!qword_1016B9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9EC0);
  }

  return result;
}

unint64_t sub_100D14830()
{
  result = qword_1016B9EC8;
  if (!qword_1016B9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9EC8);
  }

  return result;
}

unint64_t sub_100D14888()
{
  result = qword_1016B9ED0;
  if (!qword_1016B9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9ED0);
  }

  return result;
}

uint64_t type metadata accessor for RawSearchResult()
{
  result = qword_1016B9F30;
  if (!qword_1016B9F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D149C0()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100D14AF0(319, &qword_1016BA040, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      sub_100D14AF0(319, &unk_1016B9F40, type metadata accessor for BeaconKeyManager.IndexInformation);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          sub_100D14B44();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100D14AF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100D14B44()
{
  if (!qword_10169C548)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169C548);
    }
  }
}

uint64_t sub_100D14BB8()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_10177BF20);
  sub_1000076D4(v0, qword_10177BF20);
  return UUID.init()();
}

unint64_t sub_100D14C04(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x696669746E656469;
    if (a1 != 8)
    {
      v6 = 1953393000;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656372756F73;
    if (a1 != 5)
    {
      v7 = 0x657461446E616373;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x737574617473;
    v2 = 0x656475746974616CLL;
    v3 = 0x64757469676E6F6CLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6D617473656D6974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100D14D44(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B9FB0, &qword_1013E3F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D16314();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v24[31] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for RawSearchResult();
    v13 = v12[5];
    v24[30] = 1;
    type metadata accessor for Date();
    sub_100D1642C(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *&v3[v12[6]];
    v24[29] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *&v3[v12[7]];
    v24[28] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *&v3[v12[8]];
    v24[27] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24[26] = v3[v12[9]];
    v24[25] = 5;
    sub_1004797F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v12[10];
    v24[24] = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v12[11];
    v24[15] = 7;
    type metadata accessor for BeaconKeyManager.IndexInformation(0);
    sub_100D1642C(&qword_1016B9FB8, type metadata accessor for BeaconKeyManager.IndexInformation);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v12[12];
    v24[14] = 8;
    type metadata accessor for UUID();
    sub_100D1642C(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = &v3[v12[13]];
    v21 = *v20;
    v22 = v20[1];
    v24[13] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100D15128()
{
  v1 = v0;
  v2 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v34 - v16;
  Hasher._combine(_:)(*v0);
  v18 = type metadata accessor for RawSearchResult();
  v19 = v18[5];
  sub_100D1642C(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v20 = *&v1[v18[6]];
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  Hasher._combine(_:)(*&v20);
  v21 = *&v1[v18[7]];
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  Hasher._combine(_:)(*&v21);
  v22 = *&v1[v18[8]];
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  Hasher._combine(_:)(*&v22);
  Hasher._combine(_:)(v1[v18[9]]);
  sub_1000D2A70(&v1[v18[10]], v17, &unk_101696900, &unk_10138B1E0);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v10 + 8))(v13, v9);
  }

  sub_1000D2A70(&v1[v18[11]], v8, &unk_1016C1120, &qword_1013C49D0);
  v23 = v36;
  if ((*(v35 + 48))(v8, 1, v36) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = v8;
    v25 = v34;
    sub_100D162B0(v24, v34);
    Hasher._combine(_:)(1u);
    type metadata accessor for UUID();
    sub_100D1642C(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v26 = (v25 + *(v23 + 20));
    v27 = v26[4];
    sub_1000035D0(v26, v26[3]);
    v28 = *(v27 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    Hasher._combine(_:)(v37);
    v29 = v26[3];
    v30 = v26[4];
    sub_1000035D0(v26, v29);
    sub_10002BD40(v29, v30);
    String.hash(into:)();

    sub_100D163CC(v25, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v31 = v18[12];
  type metadata accessor for UUID();
  sub_100D1642C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v32 = &v1[v18[13]];
  if (v32[1])
  {
    v33 = 0;
  }

  else
  {
    v33 = *v32;
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v33);
}

uint64_t sub_100D15688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for UUID();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v46 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v47 = v42 - v8;
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v48 = v42 - v11;
  v12 = type metadata accessor for Date();
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  __chkstk_darwin(v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016B9F98, &qword_1013E3F28);
  v52 = *(v16 - 8);
  v53 = v16;
  v17 = *(v52 + 64);
  __chkstk_darwin(v16);
  v19 = v42 - v18;
  v20 = type metadata accessor for RawSearchResult();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D16314();
  v54 = v19;
  v25 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_100007BAC(a1);
  }

  v26 = v52;
  v43 = v20;
  v44 = v12;
  v55 = v23;
  v66 = 0;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v55;
  *v55 = v27;
  v65 = 1;
  v29 = sub_100D1642C(&qword_101697F40, &type metadata accessor for Date);
  v30 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42[1] = v29;
  v31 = v43;
  (*(v51 + 32))(&v28[v43[5]], v15, v30);
  v64 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v28[v31[6]] = v32;
  v63 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v42[0] = a1;
  *&v28[v31[7]] = v33;
  v62 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v28[v31[8]] = v34;
  v60 = 5;
  sub_100479640();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28[v31[9]] = v61;
  v59 = 6;
  v35 = v48;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v35, &v28[v31[10]], &unk_101696900, &unk_10138B1E0);
  type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v58 = 7;
  sub_100D1642C(&qword_1016B9FA8, type metadata accessor for BeaconKeyManager.IndexInformation);
  v36 = v47;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v36, &v55[v43[11]], &unk_1016C1120, &qword_1013C49D0);
  v57 = 8;
  sub_100D1642C(&qword_101698300, &type metadata accessor for UUID);
  v37 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v49 + 32))(&v55[v43[12]], v37, v50);
  v56 = 9;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v26 + 8))(v54, v53);
  v39 = v55;
  v40 = &v55[v43[13]];
  *v40 = v38;
  v40[1] = HIBYTE(v38) & 1;
  sub_100D16368(v39, v45);
  sub_100007BAC(a1);
  return sub_100D163CC(v39, type metadata accessor for RawSearchResult);
}

uint64_t sub_100D15EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100D16654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100D15EF0(uint64_t a1)
{
  v2 = sub_100D16314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D15F2C(uint64_t a1)
{
  v2 = sub_100D16314();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100D15F98()
{
  Hasher.init(_seed:)();
  sub_100D15128();
  return Hasher._finalize()();
}

Swift::Int sub_100D15FDC()
{
  Hasher.init(_seed:)();
  sub_100D15128();
  return Hasher._finalize()();
}

void sub_100D1601C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = type metadata accessor for RawSearchResult();
  v5 = *(a1 + v4[6]);
  *(v3 + 56) = &type metadata for Double;
  *(v3 + 64) = &protocol witness table for Double;
  *(v3 + 32) = v5;
  v6 = String.init(format:_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v10 = *(a1 + v4[7]);
  *(v9 + 56) = &type metadata for Double;
  *(v9 + 64) = &protocol witness table for Double;
  *(v9 + 32) = v10;
  v11 = String.init(format:_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = *(a1 + v4[8]);
  *(v14 + 56) = &type metadata for Double;
  *(v14 + 64) = &protocol witness table for Double;
  *(v14 + 32) = v15;
  v16 = String.init(format:_:)();
  v18 = v17;
  v19 = v4[5];
  type metadata accessor for Date();
  sub_100D1642C(&qword_1016969A0, &type metadata accessor for Date);
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v20;
  v21._countAndFlagsBits = 8250;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v6;
  v22._object = v8;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 47;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v11;
  v24._object = v13;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 10272;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = v16;
  v26._object = v18;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  *a2 = v29;
  a2[1] = v30;
}

uint64_t sub_100D16260()
{
  v1 = objc_autoreleasePoolPush();
  sub_100D1601C(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_100D162B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100D16314()
{
  result = qword_1016B9FA0;
  if (!qword_1016B9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9FA0);
  }

  return result;
}

uint64_t sub_100D16368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawSearchResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D163CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D1642C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D16474(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for RawSearchResult();
  v5 = v4[5];
  if ((static Date.== infix(_:_:)() & 1) == 0 || *&a1[v4[6]] != *&a2[v4[6]] || *&a1[v4[7]] != *&a2[v4[7]] || *&a1[v4[8]] != *&a2[v4[8]])
  {
    return 0;
  }

  v6 = v4[12];

  return static UUID.== infix(_:_:)();
}

unint64_t sub_100D16550()
{
  result = qword_1016B9FC0;
  if (!qword_1016B9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9FC0);
  }

  return result;
}

unint64_t sub_100D165A8()
{
  result = qword_1016B9FC8;
  if (!qword_1016B9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9FC8);
  }

  return result;
}

unint64_t sub_100D16600()
{
  result = qword_1016B9FD0;
  if (!qword_1016B9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9FD0);
  }

  return result;
}

uint64_t sub_100D16654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

  else if (a1 == 0x657461446E616373 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010136FFA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1953393000 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t type metadata accessor for BeaconEstimatedLocation()
{
  result = qword_1016BA030;
  if (!qword_1016BA030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D16A0C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100157BAC();
      if (v2 <= 0x3F)
      {
        sub_100D16AEC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100D16AEC()
{
  if (!qword_1016BA048)
  {
    sub_1000BC580(&unk_1016BA050, &qword_1013D4810);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BA048);
    }
  }
}

uint64_t sub_100D16B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_100D16BD0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v89 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v88 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v83 - v7;
  v9 = type metadata accessor for Date();
  v93 = *(v9 - 8);
  v10 = *(v93 + 64);
  __chkstk_darwin(v9);
  v92 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v90 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v83 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v91 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = v83 - v23;
  if (CKRecord.recordType.getter() == 0xD000000000000017 && 0x80000001013E4030 == v24)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      sub_100D19968();
      swift_allocError();
      *v57 = 0;
      goto LABEL_21;
    }
  }

  v86 = v9;
  v26 = [a1 recordID];
  v27 = [v26 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v18;

  UUID.init(uuidString:)();
  v28 = v95;

  v29 = v19[6];
  if (v29(v17, 1, v28) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    sub_100D19968();
    swift_allocError();
    *v30 = 1;
LABEL_21:
    swift_willThrow();

    return;
  }

  v85 = v19;
  v31 = v19[4];
  v32 = v94;
  v84 = v31;
  v31(v94, v17, v28);
  v33 = [a1 encryptedValues];
  v34 = String._bridgeToObjectiveC()();
  v87 = v33;
  v35 = [v33 objectForKeyedSubscript:v34];

  if (!v35)
  {
    goto LABEL_24;
  }

  v96 = v35;
  v36 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v83[2] = v36;
  v37 = v97;
  v38 = String._bridgeToObjectiveC()();
  v39 = [v87 objectForKeyedSubscript:v38];

  if (!v39)
  {
    goto LABEL_24;
  }

  v96 = v39;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v40 = v97;
  v41 = String._bridgeToObjectiveC()();
  v42 = [v87 objectForKeyedSubscript:v41];

  if (!v42)
  {
    goto LABEL_24;
  }

  v96 = v42;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v43 = v97;
  v44 = String._bridgeToObjectiveC()();
  v45 = [v87 objectForKeyedSubscript:v44];

  if (!v45)
  {
    (*(v93 + 56))(v8, 1, 1, v86);
    goto LABEL_23;
  }

  v96 = v45;
  v46 = v86;
  v47 = swift_dynamicCast();
  v48 = v93;
  v83[0] = *(v93 + 56);
  v83[1] = v93 + 56;
  (v83[0])(v8, v47 ^ 1u, 1, v46);
  if ((*(v48 + 48))(v8, 1, v46) == 1)
  {
LABEL_23:
    sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
LABEL_24:
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_101385D80;
    *(v58 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v58 + 64) = sub_10013A2D8();
    *(v58 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v59 = a1;
    v60 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100D19968();
    swift_allocError();
    *v61 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  (*(v48 + 32))(v92, v8, v46);
  v49 = String._bridgeToObjectiveC()();
  v50 = [v87 objectForKeyedSubscript:v49];

  if (!v50)
  {
    goto LABEL_19;
  }

  v97 = v50;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v51 = v90;
  UUID.init(uuidString:)();

  v52 = v95;
  if (v29(v51, 1, v95) == 1)
  {
    sub_10000B3A8(v51, &qword_1016980D0, &unk_10138F3B0);
LABEL_19:
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_101385D80;
    *(v53 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v53 + 64) = sub_10013A2D8();
    *(v53 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v54 = a1;
    v55 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100D19968();
    swift_allocError();
    *v56 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v93 + 8))(v92, v86);
LABEL_25:
    (v85[1])(v32, v95);
    return;
  }

  v62 = v91;
  v84(v91, v51, v52);
  v63 = objc_autoreleasePoolPush();
  v64 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v64];
  [v64 finishEncoding];
  v65 = [v64 encodedData];
  v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  objc_autoreleasePoolPop(v63);
  v69 = v89;
  *v89 = v66;
  v69[1] = v68;
  v70 = type metadata accessor for BeaconEstimatedLocation();
  v71 = v85;
  v72 = v85[2];
  v73 = v95;
  v72(v69 + v70[5], v94, v95);
  v72(v69 + v70[6], v62, v73);
  *(v69 + v70[7]) = v37;
  *(v69 + v70[8]) = v40;
  *(v69 + v70[9]) = v43;
  v74 = v86;
  (*(v93 + 16))(v69 + v70[10], v92, v86);
  *(v69 + v70[11]) = 7;
  v75 = String._bridgeToObjectiveC()();
  v76 = [v87 objectForKeyedSubscript:v75];

  v77 = v73;
  if (v76)
  {
    v96 = v76;
    v78 = v88;
    v79 = swift_dynamicCast() ^ 1;
    v80 = v78;
  }

  else
  {
    v78 = v88;
    v80 = v88;
    v79 = 1;
  }

  (v83[0])(v80, v79, 1, v74);
  v81 = v70[13];
  sub_1001578A0(v78, v69 + v70[12]);

  swift_unknownObjectRelease();
  v82 = v71[1];
  v82(v91, v77);
  (*(v93 + 8))(v92, v74);
  v82(v94, v77);
  *(v69 + v81) = _swiftEmptyArrayStorage;
}

void sub_100D177C4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177BF38);
  sub_1000076D4(v0, qword_10177BF38);
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

void sub_100D17938(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = *v1;
  v14 = v1[1];
  Data.hash(into:)();
  v15 = type metadata accessor for BeaconEstimatedLocation();
  v16 = v15[5];
  type metadata accessor for UUID();
  sub_100D198C8(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v17 = v2 + v15[6];
  dispatch thunk of Hashable.hash(into:)();
  v18 = *(v2 + v15[7]);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  Hasher._combine(_:)(*&v18);
  v19 = *(v2 + v15[8]);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  Hasher._combine(_:)(*&v19);
  v20 = *(v2 + v15[9]);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  Hasher._combine(_:)(*&v20);
  v21 = v15[10];
  sub_100D198C8(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + v15[11]));
  sub_1000D3410(v2 + v15[12], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  v22 = *(v2 + v15[13]);
  if (v22)
  {
    Hasher._combine(_:)(1u);
    sub_10083C728(a1, v22);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}
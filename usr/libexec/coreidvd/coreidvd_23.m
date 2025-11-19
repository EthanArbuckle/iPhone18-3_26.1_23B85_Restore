uint64_t sub_10024969C()
{
  v2 = *v1;
  v3 = *(*v1 + 1864);
  v9 = *v1;
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v4 = sub_10024C4E8;
  }

  else
  {
    v5 = v2[224];
    v6 = v2[212];
    v7 = v2[211];

    v4 = sub_1002497D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1002497D0()
{
  v1 = *(v0 + 1712);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1424);

  sub_10000BD94(v2, v1);
  sub_100267A1C(v3, type metadata accessor for ActionRequest);
  v4 = *(v0 + 1568) + 1;
  if (v4 == *(v0 + 1528))
  {
LABEL_2:
    v5 = *(v0 + 1520);

    v6 = *(v0 + 1536);
    v7 = *(v0 + 1520);
    v8 = *(v0 + 1496);
    v9 = *(v0 + 1448);
    v10 = *(v0 + 1360);
    v11 = *(v0 + 1352);

    sub_10000BBC4(v8, v9, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v10 + 48))(v9, 1, v11) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      v12 = *(v0 + 1496);
      v13 = *(v0 + 1488);
      v14 = *(v0 + 1480);
      v15 = *(v0 + 1472);
      v16 = *(v0 + 1464);
      v17 = *(v0 + 1456);
      v18 = *(v0 + 1440);
      v19 = *(v0 + 1432);
      v359 = *(v0 + 1424);
      v361 = *(v0 + 1416);
      v363 = *(v0 + 1408);
      v365 = *(v0 + 1400);
      v367 = *(v0 + 1392);
      v369 = *(v0 + 1384);
      v371 = *(v0 + 1376);
      v373 = *(v0 + 1344);
      v375 = *(v0 + 1336);
      v377 = *(v0 + 1328);
      v379 = *(v0 + 1320);
      v381 = *(v0 + 1312);
      v383 = *(v0 + 1304);
      v385 = *(v0 + 1296);
      v387 = *(v0 + 1288);
      v389 = *(v0 + 1280);
      v391 = *(v0 + 1272);
      v393 = *(v0 + 1264);
      v395 = *(v0 + 1256);
      v397 = *(v0 + 1248);
      v399 = *(v0 + 1240);
      v401 = *(v0 + 1232);
      v403 = *(v0 + 1224);
      v405 = *(v0 + 1216);
      v407 = *(v0 + 1192);
      v409 = *(v0 + 1184);
      v411 = *(v0 + 1176);
      v413 = *(v0 + 1168);
      v415 = *(v0 + 1160);
      v417 = *(v0 + 1152);
      v419 = *(v0 + 1144);
      v421 = *(v0 + 1136);
      v424 = *(v0 + 1128);
      v426 = *(v0 + 1120);
      v430 = *(v0 + 1112);
      v435 = *(v0 + 1104);
      v438 = *(v0 + 1096);
      v441 = *(v0 + 1088);
      v444 = *(v0 + 1080);
      v447 = *(v0 + 1072);
      v449 = *(v0 + 1048);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v20 = *(v0 + 8);
LABEL_4:

      v20();
    }

    else
    {
      v193 = *(v0 + 1512);
      v194 = *(v0 + 1504);
      v195 = *(v0 + 1440);
      v196 = *(v0 + 1376);
      v197 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v196, type metadata accessor for ActionRequest);
      sub_100269FE8(v196, v195, type metadata accessor for ActionRequest);
      v194(v195, 0, 1, v197);
      v198 = swift_task_alloc();
      *(v0 + 1880) = v198;
      *v198 = v0;
      v198[1] = sub_10024F280;
      v199 = *(v0 + 1440);
      v200 = *(v0 + 1024);
      v201 = *(v0 + 1008);
      v202 = *(v0 + 1000);

      sub_1002550B8(v199, v202, v201);
    }

    return;
  }

  v422 = (v0 + 984);
  v21 = *(v0 + 1908);
  v450 = *(v0 + 1872);
  v442 = "redential list provided";
  v22 = &unk_1006BF9D0;
  while (1)
  {
    *(v0 + 1568) = v4;
    *(v0 + 1908) = v21;
    *(v0 + 1560) = v450;
    v31 = *(v0 + 1520);
    if (v4 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_149;
    }

    v32 = *(v0 + 1424);
    v33 = *(v0 + 1016);
    v34 = *(v0 + 1008);
    v35 = *(v0 + 1000);
    v36 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v31 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v36 * v4, v32, type metadata accessor for ActionRequest);
    sub_10025DCD8(v32, v35, v34, v33);
    v37 = *v32;
    v38 = v32[1];

    v456._countAndFlagsBits = v37;
    v456._object = v38;
    v39 = sub_10025DC8C(v456);
    if (v39 > 4)
    {
      if (v39 <= 7)
      {
        if (v39 != 6)
        {
          if (v39 == 7)
          {
            v40 = *(v0 + 1264);
            defaultLogger()();
            v41 = Logger.logObject.getter();
            v42 = static os_log_type_t.debug.getter();
            v43 = os_log_type_enabled(v41, v42);
            v44 = *(v0 + 1424);
            v45 = *(v0 + 1264);
            v46 = *(v0 + 1208);
            v47 = *(v0 + 1200);
            if (v43)
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              v49 = v42;
              v50 = v41;
              v51 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_42:
              _os_log_impl(&_mh_execute_header, v50, v49, v51, v48, 2u);
              v22 = &unk_1006BF9D0;

              goto LABEL_43;
            }

            goto LABEL_43;
          }

          v203 = *(v0 + 1424);
          v204 = *(v0 + 1400);
          v205 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v203, v204, type metadata accessor for ActionRequest);
          v206 = Logger.logObject.getter();
          v207 = static os_log_type_t.debug.getter();
          v208 = os_log_type_enabled(v206, v207);
          v209 = *(v0 + 1400);
          LOBYTE(v446) = v21;
          if (!v208)
          {
            v240 = *(v0 + 1296);
            v241 = *(v0 + 1208);
            v242 = *(v0 + 1200);

            sub_100267A1C(v209, type metadata accessor for ActionRequest);
            v243 = *(v241 + 8);
            v243(v240, v242);
LABEL_115:
            v453 = v243;
            *(v0 + 1608) = v243;
            v269 = *(*(v0 + 1520) + 16);
            if (v269)
            {
              v270 = 0;
              v271 = 0;
              while (1)
              {
                v272 = *(v0 + 1520);
                if (v271 >= *(v272 + 16))
                {
                  break;
                }

                v273 = *(v0 + 1392);
                sub_100269FE8(v272 + v270 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v273, type metadata accessor for ActionRequest);
                v274 = *v273 == 0x5F4F545F444E4553 && v273[1] == 0xED0000454D4F4942;
                if (v274 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v275 = 0;
                  goto LABEL_126;
                }

                ++v271;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v270 += v36;
                if (v269 == v271)
                {
                  goto LABEL_124;
                }
              }

LABEL_163:
              __break(1u);
              goto LABEL_164;
            }

LABEL_124:
            v275 = 1;
LABEL_126:
            v276 = *(v0 + 1512);
            v277 = *(v0 + 1488);
            v278 = *(v0 + 1480);
            v279 = *(v0 + 1288);
            (*(v0 + 1504))(v277, v275, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v277, v278, &qword_10083E3E8, &unk_1006DBD00);
            v280 = Logger.logObject.getter();
            v281 = static os_log_type_t.debug.getter();
            v282 = os_log_type_enabled(v280, v281);
            v283 = *(v0 + 1480);
            if (v282)
            {
              v284 = *(v0 + 1360);
              v285 = *(v0 + 1352);
              v286 = swift_slowAlloc();
              *v286 = 67109120;
              LODWORD(v285) = (*(v284 + 48))(v283, 1, v285) != 1;
              sub_10000BE18(v283, &qword_10083E3E8, &unk_1006DBD00);
              *(v286 + 4) = v285;
              _os_log_impl(&_mh_execute_header, v280, v281, "Biome data exists to be donated? -> %{BOOL}d", v286, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v287 = v280;
            v288 = *(v0 + 1544);
            v289 = *(v0 + 1488);
            v290 = *(v0 + 1472);
            v291 = *(v0 + 1360);
            v292 = *(v0 + 1352);
            v293 = *(v0 + 1288);
            v294 = *(v0 + 1208);
            v295 = *(v0 + 1200);
            v296 = *(v0 + 1024);

            *(v0 + 1616) = (v294 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v453(v293, v295);
            v297 = *(v296 + v288);
            sub_10000BBC4(v289, v290, &qword_10083E3E8, &unk_1006DBD00);
            v298 = *(v291 + 48);
            v299 = (v298)(v290, 1, v292);
            v300 = *(v0 + 1472);
            if (v299 == 1)
            {
              v301 = *(v0 + 1160);

              sub_10000BE18(v300, &qword_10083E3E8, &unk_1006DBD00);
              v302 = type metadata accessor for PendingActionContext(0);
              (*(*(v302 - 8) + 56))(v301, 1, 1, v302);
            }

            else
            {
              sub_10000BBC4(v300 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v300, type metadata accessor for ActionRequest);
            }

            v303 = *(v0 + 1160);
            v304 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v303);

            sub_10000BE18(v303, &unk_100840960, &qword_1006DBCB0);
            v442 = v298;
            if (*(v304 + 152) == 1)
            {
LABEL_150:
              v327 = *(v0 + 1424);
              v328 = *(v0 + 1152);
              v329 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v329;
              sub_10000BBC4(v327 + v329, v328, &unk_100840960, &qword_1006DBCB0);
              v330 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v330;
              v331 = *(v330 - 8);
              v332 = *(v331 + 48);
              *(v0 + 1632) = v332;
              *(v0 + 1640) = (v331 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v454 = v332;
              v333 = v332(v328, 1, v330);
              v334 = *(v0 + 1152);
              v429 = v329;
              v434 = v327;
              if (v333 == 1)
              {
                sub_10000BE18(v334, &unk_100840960, &qword_1006DBCB0);
                v440 = 0;
                v335 = 0;
              }

              else
              {
                v335 = *(v334 + 72);
                v440 = *(v334 + 64);
                v336 = *(v0 + 1152);

                sub_100267A1C(v336, type metadata accessor for PendingActionContext);
              }

              v437 = v335;
              *(v0 + 1648) = v335;
              v337 = *(v0 + 1488);
              v338 = *(v0 + 1456);
              v339 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v337, v338, &qword_10083E3E8, &unk_1006DBD00);
              v340 = (v442)(v338, 1, v339);
              v341 = *(v0 + 1456);
              if (v340 == 1)
              {
                v342 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v331 + 56))(v342, 1, 1, v330);
                v343 = v446;
                v345 = v429;
                v344 = v434;
              }

              else
              {
                v346 = *(v0 + 1144);
                sub_10000BBC4(v341 + *(*(v0 + 1352) + 20), v346, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v341, type metadata accessor for ActionRequest);
                v343 = v446;
                v345 = v429;
                v344 = v434;
                v454(v346, 1, v330);
              }

              v347 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v344 + v345, v347, &unk_100840960, &qword_1006DBCB0);
              v348 = v454(v347, 1, v330);
              v349 = *(v0 + 1136);
              if (v348 == 1)
              {
                sub_10000BE18(v349, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v350 = *(v349 + *(v330 + 124));
                sub_100267A1C(v349, type metadata accessor for PendingActionContext);
              }

              v351 = swift_task_alloc();
              *(v0 + 1656) = v351;
              *v351 = v0;
              v351[1] = sub_100239F30;
              v352 = *(v0 + 1536);
              v353 = *(v0 + 1464);
              v354 = *(v0 + 1024);
              v355 = *(v0 + 1016);
              v356 = *(v0 + 1008);
              v357 = *(v0 + 1000);

              sub_10025744C(v440, v437, v352, v357, v356, v355, v343, v353);
              return;
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_150;
            }

LABEL_149:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_150;
          }

          v210 = *(v0 + 1352);
          v211 = *(v0 + 1168);
          v212 = swift_slowAlloc();
          v213 = swift_slowAlloc();
          *(v0 + 968) = v213;
          *v212 = 136315138;
          sub_10000BBC4(v209 + *(v210 + 20), v211, &unk_100840960, &qword_1006DBCB0);
          v214 = type metadata accessor for PendingActionContext(0);
          v215 = (*(*(v214 - 8) + 48))(v211, 1, v214);
          v216 = *(v0 + 1168);
          if (v215 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v261 = *(v216 + 64);
            v262 = *(v216 + 72);

            sub_100267A1C(v216, type metadata accessor for PendingActionContext);
            if (v262)
            {
              v263 = String.debugDescription.getter();
              v265 = v264;

LABEL_114:
              v452 = *(v0 + 1296);
              v266 = *(v0 + 1208);
              v267 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v268 = sub_100141FE4(v263, v265, (v0 + 968));

              *(v212 + 4) = v268;
              _os_log_impl(&_mh_execute_header, v206, v207, "server requested an action to set state:%s", v212, 0xCu);
              sub_10000BB78(v213);

              v243 = *(v266 + 8);
              v243(v452, v267);
              goto LABEL_115;
            }
          }

          v263 = 0;
          v265 = 0xE000000000000000;
          goto LABEL_114;
        }

        v446 = v21;
        v103 = *(v0 + 1344);
        defaultLogger()();
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&_mh_execute_header, v104, v105, "display notification received", v106, 2u);
        }

        v23 = *(v0 + 1512);
        v24 = *(v0 + 1504);
        v25 = *(v0 + 1496);
        v26 = *(v0 + 1424);
        v27 = *(v0 + 1352);
        v28 = *(v0 + 1344);
        v29 = *(v0 + 1208);
        v30 = *(v0 + 1200);

        (*(v29 + 8))(v28, v30);
        sub_10000BE18(v25, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v26, v25, type metadata accessor for ActionRequest);
        v24(v25, 0, 1, v27);
        goto LABEL_9;
      }

      if (v39 != 8)
      {
        if (v39 != 10)
        {
          v225 = *(v0 + 1248);
          defaultLogger()();
          v226 = Logger.logObject.getter();
          v227 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v226, v227))
          {
            v228 = swift_slowAlloc();
            *v228 = 0;
            _os_log_impl(&_mh_execute_header, v226, v227, "server requested an action to store token", v228, 2u);
          }

          v229 = *(v0 + 1424);
          v230 = *(v0 + 1352);
          v231 = *(v0 + 1248);
          v232 = *(v0 + 1208);
          v233 = *(v0 + 1200);
          v234 = *(v0 + 1104);

          v235 = *(v232 + 8);
          *(v0 + 1672) = v235;
          v235(v231, v233);
          sub_10000BBC4(v229 + *(v230 + 20), v234, &unk_100840960, &qword_1006DBCB0);
          v236 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v236 - 8) + 48))(v234, 1, v236) == 1)
          {
            v237 = *(v0 + 1536);
            v238 = *(v0 + 1520);
            v239 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v239, &unk_100840960, &qword_1006DBCB0);
LABEL_143:
            v314 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v314, type metadata accessor for ActionRequest);
            v315 = *(v0 + 1488);
            v316 = *(v0 + 1480);
            v317 = *(v0 + 1472);
            v318 = *(v0 + 1464);
            v319 = *(v0 + 1456);
            v320 = *(v0 + 1448);
            v321 = *(v0 + 1440);
            v322 = *(v0 + 1432);
            v358 = *(v0 + 1424);
            v360 = *(v0 + 1416);
            v362 = *(v0 + 1408);
            v364 = *(v0 + 1400);
            v366 = *(v0 + 1392);
            v368 = *(v0 + 1384);
            v370 = *(v0 + 1376);
            v372 = *(v0 + 1344);
            v374 = *(v0 + 1336);
            v376 = *(v0 + 1328);
            v378 = *(v0 + 1320);
            v380 = *(v0 + 1312);
            v382 = *(v0 + 1304);
            v384 = *(v0 + 1296);
            v386 = *(v0 + 1288);
            v388 = *(v0 + 1280);
            v390 = *(v0 + 1272);
            v392 = *(v0 + 1264);
            v394 = *(v0 + 1256);
            v396 = *(v0 + 1248);
            v398 = *(v0 + 1240);
            v400 = *(v0 + 1232);
            v402 = *(v0 + 1224);
            v404 = *(v0 + 1216);
            v406 = *(v0 + 1192);
            v408 = *(v0 + 1184);
            v410 = *(v0 + 1176);
            v412 = *(v0 + 1168);
            v414 = *(v0 + 1160);
            v416 = *(v0 + 1152);
            v418 = *(v0 + 1144);
            v420 = *(v0 + 1136);
            v423 = *(v0 + 1128);
            v425 = *(v0 + 1120);
            v428 = *(v0 + 1112);
            v433 = *(v0 + 1104);
            v436 = *(v0 + 1096);
            v439 = *(v0 + 1088);
            v443 = *(v0 + 1080);
            v445 = *(v0 + 1072);
            v448 = *(v0 + 1048);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v20 = *(v0 + 8);
            goto LABEL_4;
          }

          v244 = *(v0 + 1104);
          v245 = (v244 + *(v236 + 128));
          v246 = *v245;
          *(v0 + 1680) = *v245;
          v247 = v245[1];
          *(v0 + 1688) = v247;
          v248 = v245[2];
          *(v0 + 1696) = v245[3];
          sub_1000AB7D8(v246, v247);
          sub_100267A1C(v244, type metadata accessor for PendingActionContext);
          if (!v247)
          {
            v312 = *(v0 + 1536);
            v313 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_143;
          }

          v249 = *(v0 + 1072);
          v250 = *(v0 + 1064);
          v251 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v252 = String.data(using:allowLossyConversion:)();
          v254 = v253;
          *(v0 + 1704) = v252;
          *(v0 + 1712) = v253;
          (*(v250 + 8))(v249, v251);
          if (v254 >> 60 == 15)
          {
            v255 = *(v0 + 1536);
            v256 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_143;
          }

          if (qword_100832C20 == -1)
          {
LABEL_145:
            v323 = *(qword_100882228 + 16);
            *(v0 + 1720) = v323;
            v324 = v323;
            v325 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v325;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v326 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v326;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v324 retrievePIITokenFromSyncableKeyStoreForIdentifier:v325 completion:v0 + 608];

            _swift_continuation_await(v0 + 16);
            return;
          }

LABEL_164:
          swift_once();
          goto LABEL_145;
        }

        v68 = *(v0 + 1232);
        defaultLogger()();
        v41 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        v70 = os_log_type_enabled(v41, v69);
        v44 = *(v0 + 1424);
        v45 = *(v0 + 1232);
        v46 = *(v0 + 1208);
        v47 = *(v0 + 1200);
        if (!v70)
        {
          goto LABEL_43;
        }

        v48 = swift_slowAlloc();
        *v48 = 0;
        v49 = v69;
        v50 = v41;
        v51 = "INVALID ACTION REQUEST";
        goto LABEL_42;
      }

      v107 = *(v0 + 1424);
      v108 = *(v0 + 1384);
      v109 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v107, v108, type metadata accessor for ActionRequest);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.info.getter();
      v112 = os_log_type_enabled(v110, v111);
      v113 = *(v0 + 1384);
      v446 = v21;
      if (!v112)
      {
        v135 = *(v0 + 1256);
        v136 = *(v0 + 1208);
        v137 = *(v0 + 1200);

        sub_100267A1C(v113, type metadata accessor for ActionRequest);
        (*(v136 + 8))(v135, v137);
LABEL_74:
        v173 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v173, &unk_100840960, &qword_1006DBCB0);
        v174 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v174 - 8) + 48))(v173, 1, v174) == 1)
        {
          v175 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v175, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_11;
        }

        v176 = *(v0 + 1112);
        v177 = (v176 + *(v174 + 112));
        v179 = *v177;
        v178 = v177[1];

        sub_100267A1C(v176, type metadata accessor for PendingActionContext);
        if (!v178)
        {
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          v21 = v446;
          goto LABEL_11;
        }

        v180 = *(v0 + 1088);
        v181 = *(v0 + 1080);
        v182 = v22;
        v183 = *(v0 + 1024);
        v184 = type metadata accessor for TaskPriority();
        v185 = *(v184 - 8);
        (*(v185 + 56))(v180, 1, 1, v184);
        v186 = swift_allocObject();
        v186[2] = 0;
        v186[3] = 0;
        v186[4] = v183;
        v186[5] = v179;
        v186[6] = v178;
        sub_10000BBC4(v180, v181, &unk_100845860, v182);
        LODWORD(v180) = (*(v185 + 48))(v181, 1, v184);

        v187 = *(v0 + 1080);
        if (v180 == 1)
        {
          sub_10000BE18(*(v0 + 1080), &unk_100845860, v182);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v185 + 8))(v187, v184);
        }

        v22 = v182;
        v189 = v186[2];
        v188 = v186[3];
        swift_unknownObjectRetain();

        v21 = v446;
        if (v189)
        {
          swift_getObjectType();
          v190 = dispatch thunk of Actor.unownedExecutor.getter();
          v192 = v191;
          swift_unknownObjectRelease();
        }

        else
        {
          v190 = 0;
          v192 = 0;
        }

        sub_10000BE18(*(v0 + 1088), &unk_100845860, v182);
        if (v192 | v190)
        {
          *(v0 + 848) = 0;
          *(v0 + 856) = 0;
          *(v0 + 864) = v190;
          *(v0 + 872) = v192;
        }

        v44 = *(v0 + 1424);
        swift_task_create();

        goto LABEL_44;
      }

      v114 = *(v0 + 1352);
      v115 = *(v0 + 1120);
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *(v0 + 960) = v117;
      *v116 = 136315138;
      sub_10000BBC4(v113 + *(v114 + 20), v115, &unk_100840960, &qword_1006DBCB0);
      v118 = type metadata accessor for PendingActionContext(0);
      v119 = (*(*(v118 - 8) + 48))(v115, 1, v118);
      v120 = *(v0 + 1120);
      if (v119 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v166 = (v120 + *(v118 + 112));
        v167 = *v166;
        v168 = v166[1];

        sub_100267A1C(v120, type metadata accessor for PendingActionContext);
        if (v168)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_73:
          v169 = *(v0 + 1256);
          v170 = *(v0 + 1208);
          v171 = *(v0 + 1200);
          v172 = sub_100141FE4(v167, v168, (v0 + 960));

          *(v116 + 4) = v172;
          _os_log_impl(&_mh_execute_header, v110, v111, "server requested to delete the Account Key Signing Key with identifier %s", v116, 0xCu);
          sub_10000BB78(v117);

          (*(v170 + 8))(v169, v171);
          v21 = v446;
          v22 = &unk_1006BF9D0;
          goto LABEL_74;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v168 = 0xE300000000000000;
      v167 = 4999502;
      goto LABEL_73;
    }

    if (v39 <= 2)
    {
      break;
    }

    if (v39 == 3)
    {
      v71 = *(v0 + 1424);
      v72 = *(v0 + 1408);
      v73 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v71, v72, type metadata accessor for ActionRequest);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = *(v0 + 1408);
        v77 = *(v0 + 1352);
        v78 = *(v0 + 1176);
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *(v0 + 976) = v80;
        *v79 = 136315138;
        sub_10000BBC4(v76 + *(v77 + 20), v78, &unk_100840960, &qword_1006DBCB0);
        v81 = type metadata accessor for PendingActionContext(0);
        v82 = (*(*(v81 - 8) + 48))(v78, 1, v81);
        v83 = *(v0 + 1176);
        v446 = v21;
        if (v82 == 1)
        {
          sub_10000BE18(v83, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_68;
        }

        v157 = *(v83 + 48);
        v158 = *(v83 + 56);
        v159 = *(v0 + 1176);

        sub_100267A1C(v159, type metadata accessor for PendingActionContext);
        if (v158)
        {
          v160 = String.debugDescription.getter();
          v162 = v161;
        }

        else
        {
LABEL_68:
          v160 = 0;
          v162 = 0xE000000000000000;
        }

        v427 = *(v0 + 1304);
        v432 = *(v0 + 1424);
        v163 = *(v0 + 1208);
        v164 = *(v0 + 1200);
        sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
        v165 = sub_100141FE4(v160, v162, (v0 + 976));

        *(v79 + 4) = v165;
        _os_log_impl(&_mh_execute_header, v74, v75, "server requested an action to self heal: %s", v79, 0xCu);
        sub_10000BB78(v80);

        (*(v163 + 8))(v427, v164);
        sub_100267A1C(v432, type metadata accessor for ActionRequest);
LABEL_9:
        v21 = v446;
      }

      else
      {
        v130 = *(v0 + 1424);
        v131 = *(v0 + 1408);
        v132 = *(v0 + 1304);
        v133 = *(v0 + 1208);
        v134 = *(v0 + 1200);

        sub_100267A1C(v131, type metadata accessor for ActionRequest);
        (*(v133 + 8))(v132, v134);
        sub_100267A1C(v130, type metadata accessor for ActionRequest);
      }

      v22 = &unk_1006BF9D0;
      goto LABEL_11;
    }

    v446 = v21;
    v84 = *(v0 + 1336);
    defaultLogger()();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "display message received", v87, 2u);
    }

    v88 = *(v0 + 1424);
    v89 = *(v0 + 1352);
    v90 = *(v0 + 1336);
    v91 = *(v0 + 1208);
    v92 = *(v0 + 1200);
    v93 = *(v0 + 1024);
    v94 = *(v0 + 1008);
    v95 = *(v0 + 1000);

    v96 = *(v91 + 8);
    v96(v90, v92);
    sub_1002556F0(v88 + *(v89 + 20), v95, v94);
    type metadata accessor for IdentityProofingDataContext();
    v97 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v98 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v98 + 54);
    sub_100031B5C(&v98[4], v0 + 408);
    os_unfair_lock_unlock(v98 + 54);
    if (v450)
    {
      return;
    }

    v99 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v138 = sub_10054C274();
    v431 = v96;
    v139 = *(v0 + 1896);
    v140 = *(v0 + 1424);
    v141 = *(v0 + 1416);
    v142 = *(v0 + 1368);
    v451 = *(v0 + 1016);
    v143 = *(v0 + 1008);
    v144 = *(v0 + 1000);

    v145 = [v138 newBackgroundContext];
    *(v97 + 16) = v145;
    [v145 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v140, v141, type metadata accessor for ActionRequest);
    v146 = swift_allocObject();
    v146[2] = v97;
    v146[3] = v144;
    v146[4] = v143;
    v146[5] = v451;
    sub_100269F80(v141, v146 + ((v139 + 48) & ~v139), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v147 = *(v97 + 16);
    v148 = swift_allocObject();
    v148[2] = sub_100267BF8;
    v148[3] = v146;
    v148[4] = v422;
    v149 = swift_allocObject();
    *(v149 + 16) = sub_100267C5C;
    *(v149 + 24) = v148;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v149;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v150 = _Block_copy((v0 + 800));
    v151 = *(v0 + 840);

    [v147 performBlockAndWait:v150];
    _Block_release(v150);
    LOBYTE(v150) = swift_isEscapingClosureAtFileLocation();

    if (v150)
    {
      __break(1u);
      goto LABEL_163;
    }

    if (*v422)
    {
      v152 = *v422;
      swift_willThrow();

      v21 = v446;
      v22 = &unk_1006BF9D0;
      v153 = *(v0 + 1328);
      v154 = *(v0 + 1200);
      v155 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v431(v153, v154);
    }

    else
    {

      v21 = v446;
      v22 = &unk_1006BF9D0;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v450 = 0;
LABEL_11:
    v4 = *(v0 + 1568) + 1;
    if (v4 == *(v0 + 1528))
    {
      goto LABEL_2;
    }
  }

  if (!v39)
  {
    v100 = *(v0 + 1272);
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    v102 = os_log_type_enabled(v41, v101);
    v44 = *(v0 + 1424);
    v45 = *(v0 + 1272);
    v46 = *(v0 + 1208);
    v47 = *(v0 + 1200);
    if (v102)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = v101;
      v50 = v41;
      v51 = "server requested an action to wait for update";
      goto LABEL_42;
    }

LABEL_43:

    (*(v46 + 8))(v45, v47);
LABEL_44:
    sub_100267A1C(v44, type metadata accessor for ActionRequest);
    goto LABEL_11;
  }

  if (v39 != 2)
  {
    v217 = *(v0 + 1312);
    defaultLogger()();
    v218 = Logger.logObject.getter();
    v219 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      *v220 = 0;
      _os_log_impl(&_mh_execute_header, v218, v219, "Starting Provisioning flow", v220, 2u);
    }

    v221 = *(v0 + 1312);
    v222 = *(v0 + 1208);
    v223 = *(v0 + 1200);
    v224 = *(v0 + 992);

    (*(v222 + 8))(v221, v223);
    if (*(v224 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v305 = *(v0 + 1424);
    v306 = *(*(v0 + 1352) + 20);
    v307 = swift_task_alloc();
    *(v0 + 1592) = v307;
    *v307 = v0;
    v307[1] = sub_10023710C;
    v308 = *(v0 + 1024);
    v309 = *(v0 + 1016);
    v310 = *(v0 + 1008);
    v311 = *(v0 + 1000);

    sub_100229698(v305 + v306, v311, v310, v309, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  v52 = *(v0 + 1320);
  defaultLogger()();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "server requested an action to execute new workflow", v55, 2u);
  }

  v56 = *(v0 + 1424);
  v57 = *(v0 + 1352);
  v58 = *(v0 + 1320);
  v59 = *(v0 + 1208);
  v60 = *(v0 + 1200);
  v61 = *(v0 + 1192);

  (*(v59 + 8))(v58, v60);
  v62 = *(v57 + 20);
  sub_10000BBC4(v56 + v62, v61, &unk_100840960, &qword_1006DBCB0);
  v63 = type metadata accessor for PendingActionContext(0);
  v64 = *(*(v63 - 8) + 48);
  v65 = v64(v61, 1, v63);
  v66 = *(v0 + 1192);
  if (v65 == 1)
  {
    sub_10000BE18(v66, &unk_100840960, &qword_1006DBCB0);
    v67 = 3;
  }

  else
  {
    v67 = *(v66 + *(v63 + 76));
    sub_100267A1C(v66, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v67;
  v121 = *(v0 + 1184);
  sub_10000BBC4(v56 + v62, v121, &unk_100840960, &qword_1006DBCB0);
  v122 = v64(v121, 1, v63);
  v123 = *(v0 + 1184);
  v124 = *(v0 + 1096);
  if (v122 == 1)
  {
    sub_10000BE18(v123, &unk_100840960, &qword_1006DBCB0);
    v125 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v125 - 8) + 56))(v124, 1, 1, v125);
  }

  else
  {
    v126 = *(v63 + 72);
    v127 = *(v0 + 1184);
    sub_10000BBC4(v123 + v126, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v127, type metadata accessor for PendingActionContext);
  }

  v128 = *(v0 + 1096);
  v129 = *(v0 + 1024);
  sub_1002593E4(v128);
  sub_10000BE18(v128, &qword_100835968, &qword_1006DBC90);
  if (v67 <= 1)
  {
    v22 = &unk_1006BF9D0;
    v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v156)
    {
      goto LABEL_108;
    }

    goto LABEL_65;
  }

  v22 = &unk_1006BF9D0;
  if (v67 == 3)
  {
LABEL_65:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v21 = *(v0 + 1909);
    goto LABEL_11;
  }

LABEL_108:
  v257 = swift_task_alloc();
  *(v0 + 1576) = v257;
  *v257 = v0;
  v257[1] = sub_1002342A8;
  v258 = *(v0 + 1024);
  v259 = *(v0 + 1008);
  v260 = *(v0 + 1000);

  sub_100259898(v56 + v62, v260, v259);
}

uint64_t sub_10024C4E8()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1240);

  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1872);
  v9 = *(v0 + 1720);
  v459 = *(v0 + 1712);
  v10 = *(v0 + 1704);
  v465 = *(v0 + 1672);
  v11 = *(v0 + 1424);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1208);
  v14 = *(v0 + 1200);
  if (v7)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to store pii token in keychain", v15, 2u);
  }

  sub_10000BD94(v10, v459);
  v465(v12, v14);
  sub_100267A1C(v11, type metadata accessor for ActionRequest);
  v16 = *(v0 + 1568) + 1;
  if (v16 == *(v0 + 1528))
  {
LABEL_4:
    v17 = *(v0 + 1520);

    v18 = *(v0 + 1536);
    v19 = *(v0 + 1520);
    v20 = *(v0 + 1496);
    v21 = *(v0 + 1448);
    v22 = *(v0 + 1360);
    v23 = *(v0 + 1352);

    sub_10000BBC4(v20, v21, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v22 + 48))(v21, 1, v23) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      v24 = *(v0 + 1496);
      v25 = *(v0 + 1488);
      v26 = *(v0 + 1480);
      v27 = *(v0 + 1472);
      v28 = *(v0 + 1464);
      v29 = *(v0 + 1456);
      v30 = *(v0 + 1440);
      v31 = *(v0 + 1432);
      v371 = *(v0 + 1424);
      v373 = *(v0 + 1416);
      v375 = *(v0 + 1408);
      v377 = *(v0 + 1400);
      v379 = *(v0 + 1392);
      v381 = *(v0 + 1384);
      v383 = *(v0 + 1376);
      v385 = *(v0 + 1344);
      v387 = *(v0 + 1336);
      v389 = *(v0 + 1328);
      v391 = *(v0 + 1320);
      v393 = *(v0 + 1312);
      v395 = *(v0 + 1304);
      v397 = *(v0 + 1296);
      v399 = *(v0 + 1288);
      v401 = *(v0 + 1280);
      v403 = *(v0 + 1272);
      v405 = *(v0 + 1264);
      v407 = *(v0 + 1256);
      v409 = *(v0 + 1248);
      v411 = *(v0 + 1240);
      v413 = *(v0 + 1232);
      v415 = *(v0 + 1224);
      v417 = *(v0 + 1216);
      v419 = *(v0 + 1192);
      v421 = *(v0 + 1184);
      v423 = *(v0 + 1176);
      v425 = *(v0 + 1168);
      v427 = *(v0 + 1160);
      v429 = *(v0 + 1152);
      v431 = *(v0 + 1144);
      v433 = *(v0 + 1136);
      v435 = *(v0 + 1128);
      v438 = *(v0 + 1120);
      v441 = *(v0 + 1112);
      v446 = *(v0 + 1104);
      v451 = *(v0 + 1096);
      v455 = *(v0 + 1088);
      v457 = *(v0 + 1080);
      v460 = *(v0 + 1072);
      v466 = *(v0 + 1048);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v32 = *(v0 + 8);
LABEL_6:

      return v32();
    }

    else
    {
      v205 = *(v0 + 1512);
      v206 = *(v0 + 1504);
      v207 = *(v0 + 1440);
      v208 = *(v0 + 1376);
      v209 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v208, type metadata accessor for ActionRequest);
      sub_100269FE8(v208, v207, type metadata accessor for ActionRequest);
      v206(v207, 0, 1, v209);
      v210 = swift_task_alloc();
      *(v0 + 1880) = v210;
      *v210 = v0;
      v210[1] = sub_10024F280;
      v211 = *(v0 + 1440);
      v212 = *(v0 + 1024);
      v213 = *(v0 + 1008);
      v214 = *(v0 + 1000);

      return sub_1002550B8(v211, v214, v213);
    }
  }

  v436 = (v0 + 984);
  v34 = *(v0 + 1908);
  while (1)
  {
    *(v0 + 1568) = v16;
    *(v0 + 1908) = v34;
    *(v0 + 1560) = 0;
    v43 = *(v0 + 1520);
    if (v16 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_148;
    }

    v44 = *(v0 + 1424);
    v45 = *(v0 + 1016);
    v46 = *(v0 + 1008);
    v47 = *(v0 + 1000);
    v48 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v43 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v48 * v16, v44, type metadata accessor for ActionRequest);
    sub_10025DCD8(v44, v47, v46, v45);
    v49 = *v44;
    v50 = v44[1];

    v468._countAndFlagsBits = v49;
    v468._object = v50;
    v51 = sub_10025DC8C(v468);
    if (v51 > 4)
    {
      if (v51 <= 7)
      {
        if (v51 != 6)
        {
          if (v51 == 7)
          {
            v52 = *(v0 + 1264);
            defaultLogger()();
            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.debug.getter();
            v55 = os_log_type_enabled(v53, v54);
            v56 = *(v0 + 1424);
            v57 = *(v0 + 1264);
            v58 = *(v0 + 1208);
            v59 = *(v0 + 1200);
            if (v55)
            {
              v60 = swift_slowAlloc();
              *v60 = 0;
              v61 = v54;
              v62 = v53;
              v63 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_42;
            }

            goto LABEL_43;
          }

          v215 = *(v0 + 1424);
          v216 = *(v0 + 1400);
          v217 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v215, v216, type metadata accessor for ActionRequest);
          v218 = Logger.logObject.getter();
          v219 = static os_log_type_t.debug.getter();
          v220 = os_log_type_enabled(v218, v219);
          v221 = *(v0 + 1400);
          LOBYTE(v465) = v34;
          if (!v220)
          {
            v252 = *(v0 + 1296);
            v253 = *(v0 + 1208);
            v254 = *(v0 + 1200);

            sub_100267A1C(v221, type metadata accessor for ActionRequest);
            v255 = *(v253 + 8);
            v255(v252, v254);
LABEL_114:
            v462 = v255;
            *(v0 + 1608) = v255;
            v281 = *(*(v0 + 1520) + 16);
            if (v281)
            {
              v282 = 0;
              v283 = 0;
              while (1)
              {
                v284 = *(v0 + 1520);
                if (v283 >= *(v284 + 16))
                {
                  break;
                }

                v285 = *(v0 + 1392);
                sub_100269FE8(v284 + v282 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v285, type metadata accessor for ActionRequest);
                v286 = *v285 == 0x5F4F545F444E4553 && v285[1] == 0xED0000454D4F4942;
                if (v286 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v287 = 0;
                  goto LABEL_125;
                }

                ++v283;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v282 += v48;
                if (v281 == v283)
                {
                  goto LABEL_123;
                }
              }

LABEL_162:
              __break(1u);
              goto LABEL_163;
            }

LABEL_123:
            v287 = 1;
LABEL_125:
            v288 = *(v0 + 1512);
            v289 = *(v0 + 1488);
            v290 = *(v0 + 1480);
            v291 = *(v0 + 1288);
            (*(v0 + 1504))(v289, v287, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v289, v290, &qword_10083E3E8, &unk_1006DBD00);
            v292 = Logger.logObject.getter();
            v293 = static os_log_type_t.debug.getter();
            v294 = os_log_type_enabled(v292, v293);
            v295 = *(v0 + 1480);
            if (v294)
            {
              v296 = *(v0 + 1360);
              v297 = *(v0 + 1352);
              v298 = swift_slowAlloc();
              *v298 = 67109120;
              LODWORD(v297) = (*(v296 + 48))(v295, 1, v297) != 1;
              sub_10000BE18(v295, &qword_10083E3E8, &unk_1006DBD00);
              *(v298 + 4) = v297;
              _os_log_impl(&_mh_execute_header, v292, v293, "Biome data exists to be donated? -> %{BOOL}d", v298, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v299 = v292;
            v300 = *(v0 + 1544);
            v301 = *(v0 + 1488);
            v302 = *(v0 + 1472);
            v303 = *(v0 + 1360);
            v304 = *(v0 + 1352);
            v305 = *(v0 + 1288);
            v306 = *(v0 + 1208);
            v307 = *(v0 + 1200);
            v308 = *(v0 + 1024);

            *(v0 + 1616) = (v306 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v462(v305, v307);
            v309 = *(v308 + v300);
            sub_10000BBC4(v301, v302, &qword_10083E3E8, &unk_1006DBD00);
            v310 = *(v303 + 48);
            v311 = v310(v302, 1, v304);
            v312 = *(v0 + 1472);
            if (v311 == 1)
            {
              v313 = *(v0 + 1160);

              sub_10000BE18(v312, &qword_10083E3E8, &unk_1006DBD00);
              v314 = type metadata accessor for PendingActionContext(0);
              (*(*(v314 - 8) + 56))(v313, 1, 1, v314);
            }

            else
            {
              sub_10000BBC4(v312 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v312, type metadata accessor for ActionRequest);
            }

            v315 = *(v0 + 1160);
            v316 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v315);

            sub_10000BE18(v315, &unk_100840960, &qword_1006DBCB0);
            v454 = v310;
            if (*(v316 + 152) == 1)
            {
LABEL_149:
              v339 = *(v0 + 1424);
              v340 = *(v0 + 1152);
              v341 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v341;
              sub_10000BBC4(v339 + v341, v340, &unk_100840960, &qword_1006DBCB0);
              v342 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v342;
              v343 = *(v342 - 8);
              v344 = *(v343 + 48);
              *(v0 + 1632) = v344;
              *(v0 + 1640) = (v343 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v464 = v344;
              v345 = v344(v340, 1, v342);
              v346 = *(v0 + 1152);
              v440 = v341;
              v445 = v339;
              if (v345 == 1)
              {
                sub_10000BE18(v346, &unk_100840960, &qword_1006DBCB0);
                v453 = 0;
                v347 = 0;
              }

              else
              {
                v347 = *(v346 + 72);
                v453 = *(v346 + 64);
                v348 = *(v0 + 1152);

                sub_100267A1C(v348, type metadata accessor for PendingActionContext);
              }

              v450 = v347;
              *(v0 + 1648) = v347;
              v349 = *(v0 + 1488);
              v350 = *(v0 + 1456);
              v351 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v349, v350, &qword_10083E3E8, &unk_1006DBD00);
              v352 = v454(v350, 1, v351);
              v353 = *(v0 + 1456);
              if (v352 == 1)
              {
                v354 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v343 + 56))(v354, 1, 1, v342);
                v355 = v465;
                v357 = v440;
                v356 = v445;
              }

              else
              {
                v358 = *(v0 + 1144);
                sub_10000BBC4(v353 + *(*(v0 + 1352) + 20), v358, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v353, type metadata accessor for ActionRequest);
                v355 = v465;
                v357 = v440;
                v356 = v445;
                v464(v358, 1, v342);
              }

              v359 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v356 + v357, v359, &unk_100840960, &qword_1006DBCB0);
              v360 = v464(v359, 1, v342);
              v361 = *(v0 + 1136);
              if (v360 == 1)
              {
                sub_10000BE18(v361, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v362 = *(v361 + *(v342 + 124));
                sub_100267A1C(v361, type metadata accessor for PendingActionContext);
              }

              v363 = swift_task_alloc();
              *(v0 + 1656) = v363;
              *v363 = v0;
              v363[1] = sub_100239F30;
              v364 = *(v0 + 1536);
              v365 = *(v0 + 1464);
              v366 = *(v0 + 1024);
              v367 = *(v0 + 1016);
              v368 = *(v0 + 1008);
              v369 = *(v0 + 1000);

              return sub_10025744C(v453, v450, v364, v369, v368, v367, v355, v365);
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_149;
            }

LABEL_148:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_149;
          }

          v222 = *(v0 + 1352);
          v223 = *(v0 + 1168);
          v224 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          *(v0 + 968) = v225;
          *v224 = 136315138;
          sub_10000BBC4(v221 + *(v222 + 20), v223, &unk_100840960, &qword_1006DBCB0);
          v226 = type metadata accessor for PendingActionContext(0);
          v227 = (*(*(v226 - 8) + 48))(v223, 1, v226);
          v228 = *(v0 + 1168);
          if (v227 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v273 = *(v228 + 64);
            v274 = *(v228 + 72);

            sub_100267A1C(v228, type metadata accessor for PendingActionContext);
            if (v274)
            {
              v275 = String.debugDescription.getter();
              v277 = v276;

LABEL_113:
              v461 = *(v0 + 1296);
              v278 = *(v0 + 1208);
              v279 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v280 = sub_100141FE4(v275, v277, (v0 + 968));

              *(v224 + 4) = v280;
              _os_log_impl(&_mh_execute_header, v218, v219, "server requested an action to set state:%s", v224, 0xCu);
              sub_10000BB78(v225);

              v255 = *(v278 + 8);
              v255(v461, v279);
              goto LABEL_114;
            }
          }

          v275 = 0;
          v277 = 0xE000000000000000;
          goto LABEL_113;
        }

        LODWORD(v465) = v34;
        v115 = *(v0 + 1344);
        defaultLogger()();
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&_mh_execute_header, v116, v117, "display notification received", v118, 2u);
        }

        v35 = *(v0 + 1512);
        v36 = *(v0 + 1504);
        v37 = *(v0 + 1496);
        v38 = *(v0 + 1424);
        v39 = *(v0 + 1352);
        v40 = *(v0 + 1344);
        v41 = *(v0 + 1208);
        v42 = *(v0 + 1200);

        (*(v41 + 8))(v40, v42);
        sub_10000BE18(v37, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v38, v37, type metadata accessor for ActionRequest);
        v36(v37, 0, 1, v39);
        goto LABEL_11;
      }

      if (v51 != 8)
      {
        if (v51 != 10)
        {
          v237 = *(v0 + 1248);
          defaultLogger()();
          v238 = Logger.logObject.getter();
          v239 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            *v240 = 0;
            _os_log_impl(&_mh_execute_header, v238, v239, "server requested an action to store token", v240, 2u);
          }

          v241 = *(v0 + 1424);
          v242 = *(v0 + 1352);
          v243 = *(v0 + 1248);
          v244 = *(v0 + 1208);
          v245 = *(v0 + 1200);
          v246 = *(v0 + 1104);

          v247 = *(v244 + 8);
          *(v0 + 1672) = v247;
          v247(v243, v245);
          sub_10000BBC4(v241 + *(v242 + 20), v246, &unk_100840960, &qword_1006DBCB0);
          v248 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v248 - 8) + 48))(v246, 1, v248) == 1)
          {
            v249 = *(v0 + 1536);
            v250 = *(v0 + 1520);
            v251 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v251, &unk_100840960, &qword_1006DBCB0);
LABEL_142:
            v326 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v326, type metadata accessor for ActionRequest);
            v327 = *(v0 + 1488);
            v328 = *(v0 + 1480);
            v329 = *(v0 + 1472);
            v330 = *(v0 + 1464);
            v331 = *(v0 + 1456);
            v332 = *(v0 + 1448);
            v333 = *(v0 + 1440);
            v334 = *(v0 + 1432);
            v370 = *(v0 + 1424);
            v372 = *(v0 + 1416);
            v374 = *(v0 + 1408);
            v376 = *(v0 + 1400);
            v378 = *(v0 + 1392);
            v380 = *(v0 + 1384);
            v382 = *(v0 + 1376);
            v384 = *(v0 + 1344);
            v386 = *(v0 + 1336);
            v388 = *(v0 + 1328);
            v390 = *(v0 + 1320);
            v392 = *(v0 + 1312);
            v394 = *(v0 + 1304);
            v396 = *(v0 + 1296);
            v398 = *(v0 + 1288);
            v400 = *(v0 + 1280);
            v402 = *(v0 + 1272);
            v404 = *(v0 + 1264);
            v406 = *(v0 + 1256);
            v408 = *(v0 + 1248);
            v410 = *(v0 + 1240);
            v412 = *(v0 + 1232);
            v414 = *(v0 + 1224);
            v416 = *(v0 + 1216);
            v418 = *(v0 + 1192);
            v420 = *(v0 + 1184);
            v422 = *(v0 + 1176);
            v424 = *(v0 + 1168);
            v426 = *(v0 + 1160);
            v428 = *(v0 + 1152);
            v430 = *(v0 + 1144);
            v432 = *(v0 + 1136);
            v434 = *(v0 + 1128);
            v437 = *(v0 + 1120);
            v439 = *(v0 + 1112);
            v444 = *(v0 + 1104);
            v449 = *(v0 + 1096);
            v452 = *(v0 + 1088);
            v456 = *(v0 + 1080);
            v458 = *(v0 + 1072);
            v463 = *(v0 + 1048);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v32 = *(v0 + 8);
            goto LABEL_6;
          }

          v256 = *(v0 + 1104);
          v257 = (v256 + *(v248 + 128));
          v258 = *v257;
          *(v0 + 1680) = *v257;
          v259 = v257[1];
          *(v0 + 1688) = v259;
          v260 = v257[2];
          *(v0 + 1696) = v257[3];
          sub_1000AB7D8(v258, v259);
          sub_100267A1C(v256, type metadata accessor for PendingActionContext);
          if (!v259)
          {
            v324 = *(v0 + 1536);
            v325 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_142;
          }

          v261 = *(v0 + 1072);
          v262 = *(v0 + 1064);
          v263 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v264 = String.data(using:allowLossyConversion:)();
          v266 = v265;
          *(v0 + 1704) = v264;
          *(v0 + 1712) = v265;
          (*(v262 + 8))(v261, v263);
          if (v266 >> 60 == 15)
          {
            v267 = *(v0 + 1536);
            v268 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_142;
          }

          if (qword_100832C20 == -1)
          {
LABEL_144:
            v335 = *(qword_100882228 + 16);
            *(v0 + 1720) = v335;
            v336 = v335;
            v337 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v337;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v338 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v338;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v336 retrievePIITokenFromSyncableKeyStoreForIdentifier:v337 completion:v0 + 608];

            return _swift_continuation_await(v0 + 16);
          }

LABEL_163:
          swift_once();
          goto LABEL_144;
        }

        v80 = *(v0 + 1232);
        defaultLogger()();
        v53 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        v82 = os_log_type_enabled(v53, v81);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1232);
        v58 = *(v0 + 1208);
        v59 = *(v0 + 1200);
        if (v82)
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = v81;
          v62 = v53;
          v63 = "INVALID ACTION REQUEST";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v119 = *(v0 + 1424);
      v120 = *(v0 + 1384);
      v121 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v119, v120, type metadata accessor for ActionRequest);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.info.getter();
      v124 = os_log_type_enabled(v122, v123);
      v125 = *(v0 + 1384);
      LODWORD(v465) = v34;
      if (!v124)
      {
        v147 = *(v0 + 1256);
        v148 = *(v0 + 1208);
        v149 = *(v0 + 1200);

        sub_100267A1C(v125, type metadata accessor for ActionRequest);
        (*(v148 + 8))(v147, v149);
LABEL_74:
        v186 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v186, &unk_100840960, &qword_1006DBCB0);
        v187 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v187 - 8) + 48))(v186, 1, v187) == 1)
        {
          v188 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v188, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_12;
        }

        v189 = *(v0 + 1112);
        v190 = (v189 + *(v187 + 112));
        v192 = *v190;
        v191 = v190[1];

        sub_100267A1C(v189, type metadata accessor for PendingActionContext);
        if (v191)
        {
          v193 = *(v0 + 1088);
          v194 = *(v0 + 1080);
          v195 = *(v0 + 1024);
          v196 = type metadata accessor for TaskPriority();
          v197 = *(v196 - 8);
          (*(v197 + 56))(v193, 1, 1, v196);
          v198 = swift_allocObject();
          v198[2] = 0;
          v198[3] = 0;
          v198[4] = v195;
          v198[5] = v192;
          v198[6] = v191;
          sub_10000BBC4(v193, v194, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v193) = (*(v197 + 48))(v194, 1, v196);

          v199 = *(v0 + 1080);
          if (v193 == 1)
          {
            sub_10000BE18(*(v0 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v197 + 8))(v199, v196);
          }

          v200 = v198[2];
          v201 = v198[3];
          swift_unknownObjectRetain();

          v34 = v465;
          if (v200)
          {
            swift_getObjectType();
            v202 = dispatch thunk of Actor.unownedExecutor.getter();
            v204 = v203;
            swift_unknownObjectRelease();
          }

          else
          {
            v202 = 0;
            v204 = 0;
          }

          sub_10000BE18(*(v0 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v204 | v202)
          {
            *(v0 + 848) = 0;
            *(v0 + 856) = 0;
            *(v0 + 864) = v202;
            *(v0 + 872) = v204;
          }

          v56 = *(v0 + 1424);
          swift_task_create();

          goto LABEL_44;
        }

        sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
        goto LABEL_11;
      }

      v126 = *(v0 + 1352);
      v127 = *(v0 + 1120);
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *(v0 + 960) = v129;
      *v128 = 136315138;
      sub_10000BBC4(v125 + *(v126 + 20), v127, &unk_100840960, &qword_1006DBCB0);
      v130 = type metadata accessor for PendingActionContext(0);
      v131 = (*(*(v130 - 8) + 48))(v127, 1, v130);
      v132 = *(v0 + 1120);
      if (v131 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v179 = (v132 + *(v130 + 112));
        v180 = *v179;
        v181 = v179[1];

        sub_100267A1C(v132, type metadata accessor for PendingActionContext);
        if (v181)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_73:
          v182 = *(v0 + 1256);
          v183 = *(v0 + 1208);
          v184 = *(v0 + 1200);
          v185 = sub_100141FE4(v180, v181, (v0 + 960));

          *(v128 + 4) = v185;
          _os_log_impl(&_mh_execute_header, v122, v123, "server requested to delete the Account Key Signing Key with identifier %s", v128, 0xCu);
          sub_10000BB78(v129);

          (*(v183 + 8))(v182, v184);
          v34 = v465;
          goto LABEL_74;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v181 = 0xE300000000000000;
      v180 = 4999502;
      goto LABEL_73;
    }

    if (v51 <= 2)
    {
      break;
    }

    if (v51 == 3)
    {
      v83 = *(v0 + 1424);
      v84 = *(v0 + 1408);
      v85 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v83, v84, type metadata accessor for ActionRequest);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v86, v87))
      {
        v142 = *(v0 + 1424);
        v143 = *(v0 + 1408);
        v144 = *(v0 + 1304);
        v145 = *(v0 + 1208);
        v146 = *(v0 + 1200);

        sub_100267A1C(v143, type metadata accessor for ActionRequest);
        (*(v145 + 8))(v144, v146);
        sub_100267A1C(v142, type metadata accessor for ActionRequest);
        goto LABEL_12;
      }

      v88 = *(v0 + 1408);
      v89 = *(v0 + 1352);
      v90 = *(v0 + 1176);
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *(v0 + 976) = v92;
      *v91 = 136315138;
      sub_10000BBC4(v88 + *(v89 + 20), v90, &unk_100840960, &qword_1006DBCB0);
      v93 = type metadata accessor for PendingActionContext(0);
      v94 = (*(*(v93 - 8) + 48))(v90, 1, v93);
      v95 = *(v0 + 1176);
      LODWORD(v465) = v34;
      if (v94 == 1)
      {
        sub_10000BE18(v95, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_68;
      }

      v170 = *(v95 + 48);
      v171 = *(v95 + 56);
      v172 = *(v0 + 1176);

      sub_100267A1C(v172, type metadata accessor for PendingActionContext);
      if (v171)
      {
        v173 = String.debugDescription.getter();
        v175 = v174;
      }

      else
      {
LABEL_68:
        v173 = 0;
        v175 = 0xE000000000000000;
      }

      v443 = *(v0 + 1304);
      v448 = *(v0 + 1424);
      v176 = *(v0 + 1208);
      v177 = *(v0 + 1200);
      sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
      v178 = sub_100141FE4(v173, v175, (v0 + 976));

      *(v91 + 4) = v178;
      _os_log_impl(&_mh_execute_header, v86, v87, "server requested an action to self heal: %s", v91, 0xCu);
      sub_10000BB78(v92);

      (*(v176 + 8))(v443, v177);
      sub_100267A1C(v448, type metadata accessor for ActionRequest);
LABEL_11:
      v34 = v465;
      goto LABEL_12;
    }

    LODWORD(v465) = v34;
    v96 = *(v0 + 1336);
    defaultLogger()();
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "display message received", v99, 2u);
    }

    v100 = *(v0 + 1424);
    v101 = *(v0 + 1352);
    v102 = *(v0 + 1336);
    v103 = *(v0 + 1208);
    v104 = *(v0 + 1200);
    v105 = *(v0 + 1024);
    v106 = *(v0 + 1008);
    v107 = *(v0 + 1000);

    v108 = *(v103 + 8);
    v108(v102, v104);
    sub_1002556F0(v100 + *(v101 + 20), v107, v106);
    type metadata accessor for IdentityProofingDataContext();
    v109 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v110 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v110 + 54);
    sub_100031B5C(&v110[4], v0 + 408);
    os_unfair_lock_unlock(v110 + 54);
    v111 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v454 = 0;
    v150 = sub_10054C274();
    v151 = *(v0 + 1896);
    v152 = *(v0 + 1424);
    v153 = *(v0 + 1416);
    v154 = *(v0 + 1368);
    v442 = v108;
    v447 = *(v0 + 1016);
    v155 = *(v0 + 1008);
    v156 = *(v0 + 1000);

    v157 = [v150 newBackgroundContext];
    *(v109 + 16) = v157;
    [v157 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v152, v153, type metadata accessor for ActionRequest);
    v158 = swift_allocObject();
    v158[2] = v109;
    v158[3] = v156;
    v158[4] = v155;
    v158[5] = v447;
    sub_100269F80(v153, v158 + ((v151 + 48) & ~v151), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v159 = *(v109 + 16);
    v160 = swift_allocObject();
    v160[2] = sub_100267BF8;
    v160[3] = v158;
    v160[4] = v436;
    v161 = swift_allocObject();
    *(v161 + 16) = sub_100267C5C;
    *(v161 + 24) = v160;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v161;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v162 = _Block_copy((v0 + 800));
    v163 = *(v0 + 840);

    [v159 performBlockAndWait:v162];
    _Block_release(v162);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_162;
    }

    v165 = *v436;
    if (*v436)
    {
      swift_willThrow();
      v454 = v165;

      v34 = v465;
      v166 = *(v0 + 1328);
      v167 = *(v0 + 1200);
      v168 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v442(v166, v167);
    }

    else
    {

      v34 = v465;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
LABEL_12:
    v16 = *(v0 + 1568) + 1;
    if (v16 == *(v0 + 1528))
    {
      goto LABEL_4;
    }
  }

  if (!v51)
  {
    v112 = *(v0 + 1272);
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    v114 = os_log_type_enabled(v53, v113);
    v56 = *(v0 + 1424);
    v57 = *(v0 + 1272);
    v58 = *(v0 + 1208);
    v59 = *(v0 + 1200);
    if (v114)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = v113;
      v62 = v53;
      v63 = "server requested an action to wait for update";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v62, v61, v63, v60, 2u);
    }

LABEL_43:

    (*(v58 + 8))(v57, v59);
LABEL_44:
    sub_100267A1C(v56, type metadata accessor for ActionRequest);
    goto LABEL_12;
  }

  if (v51 != 2)
  {
    v229 = *(v0 + 1312);
    defaultLogger()();
    v230 = Logger.logObject.getter();
    v231 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      *v232 = 0;
      _os_log_impl(&_mh_execute_header, v230, v231, "Starting Provisioning flow", v232, 2u);
    }

    v233 = *(v0 + 1312);
    v234 = *(v0 + 1208);
    v235 = *(v0 + 1200);
    v236 = *(v0 + 992);

    (*(v234 + 8))(v233, v235);
    if (*(v236 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v317 = *(v0 + 1424);
    v318 = *(*(v0 + 1352) + 20);
    v319 = swift_task_alloc();
    *(v0 + 1592) = v319;
    *v319 = v0;
    v319[1] = sub_10023710C;
    v320 = *(v0 + 1024);
    v321 = *(v0 + 1016);
    v322 = *(v0 + 1008);
    v323 = *(v0 + 1000);

    return sub_100229698(v317 + v318, v323, v322, v321, 0x61746E6567616DLL, 0xE700000000000000);
  }

  v64 = *(v0 + 1320);
  defaultLogger()();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "server requested an action to execute new workflow", v67, 2u);
  }

  v68 = *(v0 + 1424);
  v69 = *(v0 + 1352);
  v70 = *(v0 + 1320);
  v71 = *(v0 + 1208);
  v72 = *(v0 + 1200);
  v73 = *(v0 + 1192);

  (*(v71 + 8))(v70, v72);
  v74 = *(v69 + 20);
  sub_10000BBC4(v68 + v74, v73, &unk_100840960, &qword_1006DBCB0);
  v75 = type metadata accessor for PendingActionContext(0);
  v76 = *(*(v75 - 8) + 48);
  v77 = v76(v73, 1, v75);
  v78 = *(v0 + 1192);
  if (v77 == 1)
  {
    sub_10000BE18(v78, &unk_100840960, &qword_1006DBCB0);
    v79 = 3;
  }

  else
  {
    v79 = *(v78 + *(v75 + 76));
    sub_100267A1C(v78, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v79;
  v133 = *(v0 + 1184);
  sub_10000BBC4(v68 + v74, v133, &unk_100840960, &qword_1006DBCB0);
  v134 = v76(v133, 1, v75);
  v135 = *(v0 + 1184);
  v136 = *(v0 + 1096);
  if (v134 == 1)
  {
    sub_10000BE18(v135, &unk_100840960, &qword_1006DBCB0);
    v137 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
  }

  else
  {
    v138 = *(v75 + 72);
    v139 = *(v0 + 1184);
    sub_10000BBC4(v135 + v138, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v139, type metadata accessor for PendingActionContext);
  }

  v140 = *(v0 + 1096);
  v141 = *(v0 + 1024);
  sub_1002593E4(v140);
  sub_10000BE18(v140, &qword_100835968, &qword_1006DBC90);
  if (v79 <= 1)
  {
    v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v169)
    {
      goto LABEL_107;
    }

    goto LABEL_65;
  }

  if (v79 == 3)
  {
LABEL_65:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v34 = *(v0 + 1909);
    goto LABEL_12;
  }

LABEL_107:
  v269 = swift_task_alloc();
  *(v0 + 1576) = v269;
  *v269 = v0;
  v269[1] = sub_1002342A8;
  v270 = *(v0 + 1024);
  v271 = *(v0 + 1008);
  v272 = *(v0 + 1000);

  return sub_100259898(v68 + v74, v272, v271);
}

uint64_t sub_10024F280()
{
  v2 = *v1;
  v3 = *(*v1 + 1880);
  v4 = *v1;
  *(*v1 + 1888) = v0;

  sub_10000BE18(*(v2 + 1440), &qword_10083E3E8, &unk_1006DBD00);
  if (v0)
  {
    v5 = sub_1002537D0;
  }

  else
  {
    v5 = sub_10024F3C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10024F3C4()
{
  sub_100267A1C(v0[172], type metadata accessor for ActionRequest);
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[183];
  v5 = v0[182];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[179];
  v11 = v0[178];
  v12 = v0[177];
  v13 = v0[176];
  v14 = v0[175];
  v15 = v0[174];
  v16 = v0[173];
  v17 = v0[172];
  v18 = v0[168];
  v19 = v0[167];
  v20 = v0[166];
  v21 = v0[165];
  v22 = v0[164];
  v23 = v0[163];
  v24 = v0[162];
  v25 = v0[161];
  v26 = v0[160];
  v27 = v0[159];
  v28 = v0[158];
  v29 = v0[157];
  v30 = v0[156];
  v31 = v0[155];
  v32 = v0[154];
  v33 = v0[153];
  v34 = v0[152];
  v35 = v0[149];
  v36 = v0[148];
  v37 = v0[147];
  v38 = v0[146];
  v39 = v0[145];
  v40 = v0[144];
  v41 = v0[143];
  v42 = v0[142];
  v43 = v0[141];
  v44 = v0[140];
  v45 = v0[139];
  v46 = v0[138];
  v47 = v0[137];
  v48 = v0[136];
  v49 = v0[135];
  v50 = v0[134];
  v51 = v0[131];
  sub_10000BE18(v0[187], &qword_10083E3E8, &unk_1006DBD00);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024F720()
{
  sub_100267A1C(v0[178], type metadata accessor for ActionRequest);
  v52 = v0[198];
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[183];
  v5 = v0[182];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[179];
  v11 = v0[178];
  v12 = v0[177];
  v13 = v0[176];
  v14 = v0[175];
  v15 = v0[174];
  v16 = v0[173];
  v17 = v0[172];
  v18 = v0[168];
  v19 = v0[167];
  v20 = v0[166];
  v21 = v0[165];
  v22 = v0[164];
  v23 = v0[163];
  v24 = v0[162];
  v25 = v0[161];
  v26 = v0[160];
  v27 = v0[159];
  v28 = v0[158];
  v29 = v0[157];
  v30 = v0[156];
  v31 = v0[155];
  v32 = v0[154];
  v33 = v0[153];
  v34 = v0[152];
  v35 = v0[149];
  v36 = v0[148];
  v37 = v0[147];
  v38 = v0[146];
  v39 = v0[145];
  v40 = v0[144];
  v41 = v0[143];
  v42 = v0[142];
  v43 = v0[141];
  v44 = v0[140];
  v45 = v0[139];
  v46 = v0[138];
  v47 = v0[137];
  v48 = v0[136];
  v49 = v0[135];
  v50 = v0[134];
  v51 = v0[131];
  sub_10000BE18(v0[187], &qword_10083E3E8, &unk_1006DBD00);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024FA84()
{
  sub_100267A1C(v0[178], type metadata accessor for ActionRequest);
  v52 = v0[200];
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[183];
  v5 = v0[182];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[179];
  v11 = v0[178];
  v12 = v0[177];
  v13 = v0[176];
  v14 = v0[175];
  v15 = v0[174];
  v16 = v0[173];
  v17 = v0[172];
  v18 = v0[168];
  v19 = v0[167];
  v20 = v0[166];
  v21 = v0[165];
  v22 = v0[164];
  v23 = v0[163];
  v24 = v0[162];
  v25 = v0[161];
  v26 = v0[160];
  v27 = v0[159];
  v28 = v0[158];
  v29 = v0[157];
  v30 = v0[156];
  v31 = v0[155];
  v32 = v0[154];
  v33 = v0[153];
  v34 = v0[152];
  v35 = v0[149];
  v36 = v0[148];
  v37 = v0[147];
  v38 = v0[146];
  v39 = v0[145];
  v40 = v0[144];
  v41 = v0[143];
  v42 = v0[142];
  v43 = v0[141];
  v44 = v0[140];
  v45 = v0[139];
  v46 = v0[138];
  v47 = v0[137];
  v48 = v0[136];
  v49 = v0[135];
  v50 = v0[134];
  v51 = v0[131];
  sub_10000BE18(v0[187], &qword_10083E3E8, &unk_1006DBD00);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024FDE8()
{
  v1 = v0[178];
  sub_10000BE18(v0[186], &qword_10083E3E8, &unk_1006DBD00);
  sub_100267A1C(v1, type metadata accessor for ActionRequest);
  v53 = v0[208];
  v2 = v0[186];
  v3 = v0[185];
  v4 = v0[184];
  v5 = v0[183];
  v6 = v0[182];
  v7 = v0[181];
  v8 = v0[180];
  v9 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  v14 = v0[176];
  v15 = v0[175];
  v16 = v0[174];
  v17 = v0[173];
  v18 = v0[172];
  v19 = v0[168];
  v20 = v0[167];
  v21 = v0[166];
  v22 = v0[165];
  v23 = v0[164];
  v24 = v0[163];
  v25 = v0[162];
  v26 = v0[161];
  v27 = v0[160];
  v28 = v0[159];
  v29 = v0[158];
  v30 = v0[157];
  v31 = v0[156];
  v32 = v0[155];
  v33 = v0[154];
  v34 = v0[153];
  v35 = v0[152];
  v36 = v0[149];
  v37 = v0[148];
  v38 = v0[147];
  v39 = v0[146];
  v40 = v0[145];
  v41 = v0[144];
  v42 = v0[143];
  v43 = v0[142];
  v44 = v0[141];
  v45 = v0[140];
  v46 = v0[139];
  v47 = v0[138];
  v48 = v0[137];
  v49 = v0[136];
  v50 = v0[135];
  v51 = v0[134];
  v52 = v0[131];
  sub_10000BE18(v0[187], &qword_10083E3E8, &unk_1006DBD00);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100250168()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1216);
  swift_willThrow();

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1736);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Retrieve Data from syncable key store failed: %@ This is not a fatal error.", v8, 0xCu);
    sub_10000BE18(v9, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
    v11 = *(v0 + 1736);
  }

  v12 = *(v0 + 1208) + 8;
  (*(v0 + 1672))(*(v0 + 1216), *(v0 + 1200));
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v13 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v13 + 54);
  sub_100031B5C(&v13[4], v0 + 208);
  v14 = *(v0 + 1016);
  v15 = *(v0 + 1008);
  v16 = *(v0 + 1000);
  os_unfair_lock_unlock(v13 + 54);
  v17 = *(v0 + 264);
  *(v0 + 1744) = v17;

  sub_100031918(v0 + 208);
  v18 = swift_allocObject();
  *(v0 + 1752) = v18;
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v14;
  v19 = *(v17 + 16);
  v20 = swift_allocObject();
  *(v0 + 1760) = v20;
  *(v20 + 16) = sub_100267AA8;
  *(v20 + 24) = v18;
  v21 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v22 = swift_task_alloc();
  *(v0 + 1768) = v22;
  v23 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v22 = v0;
  v22[1] = sub_10023D3CC;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 896, sub_100267AC8, v20, v23);
}

uint64_t sub_100250498()
{
  v1 = v0[228];
  v2 = v0[227];
  v3 = v0[226];
  v4 = v0[225];
  v5 = v0[192];
  v6 = v0[190];
  swift_willThrow();

  swift_bridgeObjectRelease_n();

  v7 = v0[228];
  v61 = v0[215];
  v63 = v0[213];
  v65 = v0[214];
  v67 = v0[178];
  v8 = v0[131];
  v9 = v0[130];
  v10 = v0[129];
  _StringGuts.grow(_:)(29);
  v0[114] = 0;
  v0[115] = 0xE000000000000000;
  v11._object = 0x8000000100707AF0;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v11);
  v0[119] = v7;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v12 = v0[114];
  v13 = v0[115];
  (*(v9 + 104))(v8, enum case for DIPError.Code.failedToStorePIIToken(_:), v10);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BD94(v63, v65);

  sub_100267A1C(v67, type metadata accessor for ActionRequest);
  v14 = v0[186];
  v15 = v0[185];
  v16 = v0[184];
  v17 = v0[183];
  v18 = v0[182];
  v19 = v0[181];
  v20 = v0[180];
  v21 = v0[179];
  v24 = v0[178];
  v25 = v0[177];
  v26 = v0[176];
  v27 = v0[175];
  v28 = v0[174];
  v29 = v0[173];
  v30 = v0[172];
  v31 = v0[168];
  v32 = v0[167];
  v33 = v0[166];
  v34 = v0[165];
  v35 = v0[164];
  v36 = v0[163];
  v37 = v0[162];
  v38 = v0[161];
  v39 = v0[160];
  v40 = v0[159];
  v41 = v0[158];
  v42 = v0[157];
  v43 = v0[156];
  v44 = v0[155];
  v45 = v0[154];
  v46 = v0[153];
  v47 = v0[152];
  v48 = v0[149];
  v49 = v0[148];
  v50 = v0[147];
  v51 = v0[146];
  v52 = v0[145];
  v53 = v0[144];
  v54 = v0[143];
  v55 = v0[142];
  v56 = v0[141];
  v57 = v0[140];
  v58 = v0[139];
  v59 = v0[138];
  v60 = v0[137];
  v62 = v0[136];
  v64 = v0[135];
  v66 = v0[134];
  v68 = v0[131];
  sub_10000BE18(v0[187], &qword_10083E3E8, &unk_1006DBD00);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002509E4()
{
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1832);
  swift_willThrow();

  v5 = *(v0 + 1856);
  v6 = *(v0 + 1224);
  defaultLogger()();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update PII Token: %@", v9, 0xCu);
    sub_10000BE18(v10, &unk_100833B50, &unk_1006D8FB0);
  }

  v12 = *(v0 + 1712);
  v13 = *(v0 + 1704);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1224);
  v17 = *(v0 + 1208);
  v18 = *(v0 + 1200);

  sub_10000BD94(v13, v12);

  v14(v16, v18);
  sub_100267A1C(v15, type metadata accessor for ActionRequest);
  v19 = *(v0 + 1568) + 1;
  if (v19 == *(v0 + 1528))
  {
LABEL_4:
    v20 = *(v0 + 1520);

    v21 = *(v0 + 1536);
    v22 = *(v0 + 1520);
    v23 = *(v0 + 1496);
    v24 = *(v0 + 1448);
    v25 = *(v0 + 1360);
    v26 = *(v0 + 1352);

    sub_10000BBC4(v23, v24, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v25 + 48))(v24, 1, v26) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      v27 = *(v0 + 1496);
      v28 = *(v0 + 1488);
      v29 = *(v0 + 1480);
      v30 = *(v0 + 1472);
      v31 = *(v0 + 1464);
      v32 = *(v0 + 1456);
      v33 = *(v0 + 1440);
      v34 = *(v0 + 1432);
      v373 = *(v0 + 1424);
      v375 = *(v0 + 1416);
      v377 = *(v0 + 1408);
      v379 = *(v0 + 1400);
      v381 = *(v0 + 1392);
      v383 = *(v0 + 1384);
      v385 = *(v0 + 1376);
      v387 = *(v0 + 1344);
      v389 = *(v0 + 1336);
      v391 = *(v0 + 1328);
      v393 = *(v0 + 1320);
      v395 = *(v0 + 1312);
      v397 = *(v0 + 1304);
      v399 = *(v0 + 1296);
      v401 = *(v0 + 1288);
      v403 = *(v0 + 1280);
      v405 = *(v0 + 1272);
      v407 = *(v0 + 1264);
      v409 = *(v0 + 1256);
      v411 = *(v0 + 1248);
      v413 = *(v0 + 1240);
      v415 = *(v0 + 1232);
      v417 = *(v0 + 1224);
      v419 = *(v0 + 1216);
      v421 = *(v0 + 1192);
      v423 = *(v0 + 1184);
      v425 = *(v0 + 1176);
      v427 = *(v0 + 1168);
      v429 = *(v0 + 1160);
      v431 = *(v0 + 1152);
      v433 = *(v0 + 1144);
      v435 = *(v0 + 1136);
      v437 = *(v0 + 1128);
      v440 = *(v0 + 1120);
      v443 = *(v0 + 1112);
      v448 = *(v0 + 1104);
      v453 = *(v0 + 1096);
      v456 = *(v0 + 1088);
      v459 = *(v0 + 1080);
      v461 = *(v0 + 1072);
      v467 = *(v0 + 1048);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v35 = *(v0 + 8);
LABEL_6:

      return v35();
    }

    else
    {
      v207 = *(v0 + 1512);
      v208 = *(v0 + 1504);
      v209 = *(v0 + 1440);
      v210 = *(v0 + 1376);
      v211 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v210, type metadata accessor for ActionRequest);
      sub_100269FE8(v210, v209, type metadata accessor for ActionRequest);
      v208(v209, 0, 1, v211);
      v212 = swift_task_alloc();
      *(v0 + 1880) = v212;
      *v212 = v0;
      v212[1] = sub_10024F280;
      v213 = *(v0 + 1440);
      v214 = *(v0 + 1024);
      v215 = *(v0 + 1008);
      v216 = *(v0 + 1000);

      return sub_1002550B8(v213, v216, v215);
    }
  }

  v438 = (v0 + 984);
  v37 = *(v0 + 1908);
  v457 = "redential list provided";
  while (1)
  {
    *(v0 + 1568) = v19;
    *(v0 + 1908) = v37;
    *(v0 + 1560) = 0;
    v46 = *(v0 + 1520);
    if (v19 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_148;
    }

    v47 = *(v0 + 1424);
    v48 = *(v0 + 1016);
    v49 = *(v0 + 1008);
    v50 = *(v0 + 1000);
    v51 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v46 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v51 * v19, v47, type metadata accessor for ActionRequest);
    sub_10025DCD8(v47, v50, v49, v48);
    v52 = *v47;
    v53 = v47[1];

    v469._countAndFlagsBits = v52;
    v469._object = v53;
    v54 = sub_10025DC8C(v469);
    if (v54 > 4)
    {
      if (v54 <= 7)
      {
        if (v54 != 6)
        {
          if (v54 == 7)
          {
            v55 = *(v0 + 1264);
            defaultLogger()();
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.debug.getter();
            v58 = os_log_type_enabled(v56, v57);
            v59 = *(v0 + 1424);
            v60 = *(v0 + 1264);
            v61 = *(v0 + 1208);
            v62 = *(v0 + 1200);
            if (v58)
            {
              v63 = swift_slowAlloc();
              *v63 = 0;
              v64 = v57;
              v65 = v56;
              v66 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_42;
            }

            goto LABEL_43;
          }

          v217 = *(v0 + 1424);
          v218 = *(v0 + 1400);
          v219 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v217, v218, type metadata accessor for ActionRequest);
          v220 = Logger.logObject.getter();
          v221 = static os_log_type_t.debug.getter();
          v222 = os_log_type_enabled(v220, v221);
          v223 = *(v0 + 1400);
          LOBYTE(v466) = v37;
          if (!v222)
          {
            v254 = *(v0 + 1296);
            v255 = *(v0 + 1208);
            v256 = *(v0 + 1200);

            sub_100267A1C(v223, type metadata accessor for ActionRequest);
            v257 = *(v255 + 8);
            v257(v254, v256);
LABEL_114:
            v463 = v257;
            *(v0 + 1608) = v257;
            v283 = *(*(v0 + 1520) + 16);
            if (v283)
            {
              v284 = 0;
              v285 = 0;
              while (1)
              {
                v286 = *(v0 + 1520);
                if (v285 >= *(v286 + 16))
                {
                  break;
                }

                v287 = *(v0 + 1392);
                sub_100269FE8(v286 + v284 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v287, type metadata accessor for ActionRequest);
                v288 = *v287 == 0x5F4F545F444E4553 && v287[1] == 0xED0000454D4F4942;
                if (v288 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v289 = 0;
                  goto LABEL_125;
                }

                ++v285;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v284 += v51;
                if (v283 == v285)
                {
                  goto LABEL_123;
                }
              }

LABEL_162:
              __break(1u);
              goto LABEL_163;
            }

LABEL_123:
            v289 = 1;
LABEL_125:
            v290 = *(v0 + 1512);
            v291 = *(v0 + 1488);
            v292 = *(v0 + 1480);
            v293 = *(v0 + 1288);
            (*(v0 + 1504))(v291, v289, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v291, v292, &qword_10083E3E8, &unk_1006DBD00);
            v294 = Logger.logObject.getter();
            v295 = static os_log_type_t.debug.getter();
            v296 = os_log_type_enabled(v294, v295);
            v297 = *(v0 + 1480);
            if (v296)
            {
              v298 = *(v0 + 1360);
              v299 = *(v0 + 1352);
              v300 = swift_slowAlloc();
              *v300 = 67109120;
              LODWORD(v299) = (*(v298 + 48))(v297, 1, v299) != 1;
              sub_10000BE18(v297, &qword_10083E3E8, &unk_1006DBD00);
              *(v300 + 4) = v299;
              _os_log_impl(&_mh_execute_header, v294, v295, "Biome data exists to be donated? -> %{BOOL}d", v300, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v301 = v294;
            v302 = *(v0 + 1544);
            v303 = *(v0 + 1488);
            v304 = *(v0 + 1472);
            v305 = *(v0 + 1360);
            v306 = *(v0 + 1352);
            v307 = *(v0 + 1288);
            v308 = *(v0 + 1208);
            v309 = *(v0 + 1200);
            v310 = *(v0 + 1024);

            *(v0 + 1616) = (v308 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v463(v307, v309);
            v311 = *(v310 + v302);
            sub_10000BBC4(v303, v304, &qword_10083E3E8, &unk_1006DBD00);
            v312 = *(v305 + 48);
            v313 = (v312)(v304, 1, v306);
            v314 = *(v0 + 1472);
            if (v313 == 1)
            {
              v315 = *(v0 + 1160);

              sub_10000BE18(v314, &qword_10083E3E8, &unk_1006DBD00);
              v316 = type metadata accessor for PendingActionContext(0);
              (*(*(v316 - 8) + 56))(v315, 1, 1, v316);
            }

            else
            {
              sub_10000BBC4(v314 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v314, type metadata accessor for ActionRequest);
            }

            v317 = *(v0 + 1160);
            v318 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v317);

            sub_10000BE18(v317, &unk_100840960, &qword_1006DBCB0);
            v457 = v312;
            if (*(v318 + 152) == 1)
            {
LABEL_149:
              v341 = *(v0 + 1424);
              v342 = *(v0 + 1152);
              v343 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v343;
              sub_10000BBC4(v341 + v343, v342, &unk_100840960, &qword_1006DBCB0);
              v344 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v344;
              v345 = *(v344 - 8);
              v346 = *(v345 + 48);
              *(v0 + 1632) = v346;
              *(v0 + 1640) = (v345 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v465 = v346;
              v347 = v346(v342, 1, v344);
              v348 = *(v0 + 1152);
              v442 = v343;
              v447 = v341;
              if (v347 == 1)
              {
                sub_10000BE18(v348, &unk_100840960, &qword_1006DBCB0);
                v455 = 0;
                v349 = 0;
              }

              else
              {
                v349 = *(v348 + 72);
                v455 = *(v348 + 64);
                v350 = *(v0 + 1152);

                sub_100267A1C(v350, type metadata accessor for PendingActionContext);
              }

              v452 = v349;
              *(v0 + 1648) = v349;
              v351 = *(v0 + 1488);
              v352 = *(v0 + 1456);
              v353 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v351, v352, &qword_10083E3E8, &unk_1006DBD00);
              v354 = (v457)(v352, 1, v353);
              v355 = *(v0 + 1456);
              if (v354 == 1)
              {
                v356 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v345 + 56))(v356, 1, 1, v344);
                v357 = v466;
                v359 = v442;
                v358 = v447;
              }

              else
              {
                v360 = *(v0 + 1144);
                sub_10000BBC4(v355 + *(*(v0 + 1352) + 20), v360, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v355, type metadata accessor for ActionRequest);
                v357 = v466;
                v359 = v442;
                v358 = v447;
                v465(v360, 1, v344);
              }

              v361 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v358 + v359, v361, &unk_100840960, &qword_1006DBCB0);
              v362 = v465(v361, 1, v344);
              v363 = *(v0 + 1136);
              if (v362 == 1)
              {
                sub_10000BE18(v363, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v364 = *(v363 + *(v344 + 124));
                sub_100267A1C(v363, type metadata accessor for PendingActionContext);
              }

              v365 = swift_task_alloc();
              *(v0 + 1656) = v365;
              *v365 = v0;
              v365[1] = sub_100239F30;
              v366 = *(v0 + 1536);
              v367 = *(v0 + 1464);
              v368 = *(v0 + 1024);
              v369 = *(v0 + 1016);
              v370 = *(v0 + 1008);
              v371 = *(v0 + 1000);

              return sub_10025744C(v455, v452, v366, v371, v370, v369, v357, v367);
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_149;
            }

LABEL_148:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_149;
          }

          v224 = *(v0 + 1352);
          v225 = *(v0 + 1168);
          v226 = swift_slowAlloc();
          v227 = swift_slowAlloc();
          *(v0 + 968) = v227;
          *v226 = 136315138;
          sub_10000BBC4(v223 + *(v224 + 20), v225, &unk_100840960, &qword_1006DBCB0);
          v228 = type metadata accessor for PendingActionContext(0);
          v229 = (*(*(v228 - 8) + 48))(v225, 1, v228);
          v230 = *(v0 + 1168);
          if (v229 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v275 = *(v230 + 64);
            v276 = *(v230 + 72);

            sub_100267A1C(v230, type metadata accessor for PendingActionContext);
            if (v276)
            {
              v277 = String.debugDescription.getter();
              v279 = v278;

LABEL_113:
              v462 = *(v0 + 1296);
              v280 = *(v0 + 1208);
              v281 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v282 = sub_100141FE4(v277, v279, (v0 + 968));

              *(v226 + 4) = v282;
              _os_log_impl(&_mh_execute_header, v220, v221, "server requested an action to set state:%s", v226, 0xCu);
              sub_10000BB78(v227);

              v257 = *(v280 + 8);
              v257(v462, v281);
              goto LABEL_114;
            }
          }

          v277 = 0;
          v279 = 0xE000000000000000;
          goto LABEL_113;
        }

        v466 = v37;
        v118 = *(v0 + 1344);
        defaultLogger()();
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 0;
          _os_log_impl(&_mh_execute_header, v119, v120, "display notification received", v121, 2u);
        }

        v38 = *(v0 + 1512);
        v39 = *(v0 + 1504);
        v40 = *(v0 + 1496);
        v41 = *(v0 + 1424);
        v42 = *(v0 + 1352);
        v43 = *(v0 + 1344);
        v44 = *(v0 + 1208);
        v45 = *(v0 + 1200);

        (*(v44 + 8))(v43, v45);
        sub_10000BE18(v40, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v41, v40, type metadata accessor for ActionRequest);
        v39(v40, 0, 1, v42);
        goto LABEL_11;
      }

      if (v54 != 8)
      {
        if (v54 != 10)
        {
          v239 = *(v0 + 1248);
          defaultLogger()();
          v240 = Logger.logObject.getter();
          v241 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v240, v241))
          {
            v242 = swift_slowAlloc();
            *v242 = 0;
            _os_log_impl(&_mh_execute_header, v240, v241, "server requested an action to store token", v242, 2u);
          }

          v243 = *(v0 + 1424);
          v244 = *(v0 + 1352);
          v245 = *(v0 + 1248);
          v246 = *(v0 + 1208);
          v247 = *(v0 + 1200);
          v248 = *(v0 + 1104);

          v249 = *(v246 + 8);
          *(v0 + 1672) = v249;
          v249(v245, v247);
          sub_10000BBC4(v243 + *(v244 + 20), v248, &unk_100840960, &qword_1006DBCB0);
          v250 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v250 - 8) + 48))(v248, 1, v250) == 1)
          {
            v251 = *(v0 + 1536);
            v252 = *(v0 + 1520);
            v253 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v253, &unk_100840960, &qword_1006DBCB0);
LABEL_142:
            v328 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v328, type metadata accessor for ActionRequest);
            v329 = *(v0 + 1488);
            v330 = *(v0 + 1480);
            v331 = *(v0 + 1472);
            v332 = *(v0 + 1464);
            v333 = *(v0 + 1456);
            v334 = *(v0 + 1448);
            v335 = *(v0 + 1440);
            v336 = *(v0 + 1432);
            v372 = *(v0 + 1424);
            v374 = *(v0 + 1416);
            v376 = *(v0 + 1408);
            v378 = *(v0 + 1400);
            v380 = *(v0 + 1392);
            v382 = *(v0 + 1384);
            v384 = *(v0 + 1376);
            v386 = *(v0 + 1344);
            v388 = *(v0 + 1336);
            v390 = *(v0 + 1328);
            v392 = *(v0 + 1320);
            v394 = *(v0 + 1312);
            v396 = *(v0 + 1304);
            v398 = *(v0 + 1296);
            v400 = *(v0 + 1288);
            v402 = *(v0 + 1280);
            v404 = *(v0 + 1272);
            v406 = *(v0 + 1264);
            v408 = *(v0 + 1256);
            v410 = *(v0 + 1248);
            v412 = *(v0 + 1240);
            v414 = *(v0 + 1232);
            v416 = *(v0 + 1224);
            v418 = *(v0 + 1216);
            v420 = *(v0 + 1192);
            v422 = *(v0 + 1184);
            v424 = *(v0 + 1176);
            v426 = *(v0 + 1168);
            v428 = *(v0 + 1160);
            v430 = *(v0 + 1152);
            v432 = *(v0 + 1144);
            v434 = *(v0 + 1136);
            v436 = *(v0 + 1128);
            v439 = *(v0 + 1120);
            v441 = *(v0 + 1112);
            v446 = *(v0 + 1104);
            v451 = *(v0 + 1096);
            v454 = *(v0 + 1088);
            v458 = *(v0 + 1080);
            v460 = *(v0 + 1072);
            v464 = *(v0 + 1048);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v35 = *(v0 + 8);
            goto LABEL_6;
          }

          v258 = *(v0 + 1104);
          v259 = (v258 + *(v250 + 128));
          v260 = *v259;
          *(v0 + 1680) = *v259;
          v261 = v259[1];
          *(v0 + 1688) = v261;
          v262 = v259[2];
          *(v0 + 1696) = v259[3];
          sub_1000AB7D8(v260, v261);
          sub_100267A1C(v258, type metadata accessor for PendingActionContext);
          if (!v261)
          {
            v326 = *(v0 + 1536);
            v327 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_142;
          }

          v263 = *(v0 + 1072);
          v264 = *(v0 + 1064);
          v265 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v266 = String.data(using:allowLossyConversion:)();
          v268 = v267;
          *(v0 + 1704) = v266;
          *(v0 + 1712) = v267;
          (*(v264 + 8))(v263, v265);
          if (v268 >> 60 == 15)
          {
            v269 = *(v0 + 1536);
            v270 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_142;
          }

          if (qword_100832C20 == -1)
          {
LABEL_144:
            v337 = *(qword_100882228 + 16);
            *(v0 + 1720) = v337;
            v338 = v337;
            v339 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v339;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v340 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v340;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v338 retrievePIITokenFromSyncableKeyStoreForIdentifier:v339 completion:v0 + 608];

            return _swift_continuation_await(v0 + 16);
          }

LABEL_163:
          swift_once();
          goto LABEL_144;
        }

        v83 = *(v0 + 1232);
        defaultLogger()();
        v56 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();
        v85 = os_log_type_enabled(v56, v84);
        v59 = *(v0 + 1424);
        v60 = *(v0 + 1232);
        v61 = *(v0 + 1208);
        v62 = *(v0 + 1200);
        if (v85)
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          v64 = v84;
          v65 = v56;
          v66 = "INVALID ACTION REQUEST";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v122 = *(v0 + 1424);
      v123 = *(v0 + 1384);
      v124 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v122, v123, type metadata accessor for ActionRequest);
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.info.getter();
      v127 = os_log_type_enabled(v125, v126);
      v128 = *(v0 + 1384);
      v466 = v37;
      if (!v127)
      {
        v150 = *(v0 + 1256);
        v151 = *(v0 + 1208);
        v152 = *(v0 + 1200);

        sub_100267A1C(v128, type metadata accessor for ActionRequest);
        (*(v151 + 8))(v150, v152);
LABEL_74:
        v188 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v188, &unk_100840960, &qword_1006DBCB0);
        v189 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v189 - 8) + 48))(v188, 1, v189) == 1)
        {
          v190 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v190, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_12;
        }

        v191 = *(v0 + 1112);
        v192 = (v191 + *(v189 + 112));
        v194 = *v192;
        v193 = v192[1];

        sub_100267A1C(v191, type metadata accessor for PendingActionContext);
        if (v193)
        {
          v195 = *(v0 + 1088);
          v196 = *(v0 + 1080);
          v197 = *(v0 + 1024);
          v198 = type metadata accessor for TaskPriority();
          v199 = *(v198 - 8);
          (*(v199 + 56))(v195, 1, 1, v198);
          v200 = swift_allocObject();
          v200[2] = 0;
          v200[3] = 0;
          v200[4] = v197;
          v200[5] = v194;
          v200[6] = v193;
          sub_10000BBC4(v195, v196, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v195) = (*(v199 + 48))(v196, 1, v198);

          v201 = *(v0 + 1080);
          if (v195 == 1)
          {
            sub_10000BE18(*(v0 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v199 + 8))(v201, v198);
          }

          v202 = v200[2];
          v203 = v200[3];
          swift_unknownObjectRetain();

          v37 = v466;
          if (v202)
          {
            swift_getObjectType();
            v204 = dispatch thunk of Actor.unownedExecutor.getter();
            v206 = v205;
            swift_unknownObjectRelease();
          }

          else
          {
            v204 = 0;
            v206 = 0;
          }

          sub_10000BE18(*(v0 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v206 | v204)
          {
            *(v0 + 848) = 0;
            *(v0 + 856) = 0;
            *(v0 + 864) = v204;
            *(v0 + 872) = v206;
          }

          v59 = *(v0 + 1424);
          swift_task_create();

          goto LABEL_44;
        }

        sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
        goto LABEL_11;
      }

      v129 = *(v0 + 1352);
      v130 = *(v0 + 1120);
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *(v0 + 960) = v132;
      *v131 = 136315138;
      sub_10000BBC4(v128 + *(v129 + 20), v130, &unk_100840960, &qword_1006DBCB0);
      v133 = type metadata accessor for PendingActionContext(0);
      v134 = (*(*(v133 - 8) + 48))(v130, 1, v133);
      v135 = *(v0 + 1120);
      if (v134 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v181 = (v135 + *(v133 + 112));
        v182 = *v181;
        v183 = v181[1];

        sub_100267A1C(v135, type metadata accessor for PendingActionContext);
        if (v183)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_73:
          v184 = *(v0 + 1256);
          v185 = *(v0 + 1208);
          v186 = *(v0 + 1200);
          v187 = sub_100141FE4(v182, v183, (v0 + 960));

          *(v131 + 4) = v187;
          _os_log_impl(&_mh_execute_header, v125, v126, "server requested to delete the Account Key Signing Key with identifier %s", v131, 0xCu);
          sub_10000BB78(v132);

          (*(v185 + 8))(v184, v186);
          v37 = v466;
          goto LABEL_74;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v183 = 0xE300000000000000;
      v182 = 4999502;
      goto LABEL_73;
    }

    if (v54 <= 2)
    {
      break;
    }

    if (v54 == 3)
    {
      v86 = *(v0 + 1424);
      v87 = *(v0 + 1408);
      v88 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v86, v87, type metadata accessor for ActionRequest);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v89, v90))
      {
        v145 = *(v0 + 1424);
        v146 = *(v0 + 1408);
        v147 = *(v0 + 1304);
        v148 = *(v0 + 1208);
        v149 = *(v0 + 1200);

        sub_100267A1C(v146, type metadata accessor for ActionRequest);
        (*(v148 + 8))(v147, v149);
        sub_100267A1C(v145, type metadata accessor for ActionRequest);
        goto LABEL_12;
      }

      v91 = *(v0 + 1408);
      v92 = *(v0 + 1352);
      v93 = *(v0 + 1176);
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *(v0 + 976) = v95;
      *v94 = 136315138;
      sub_10000BBC4(v91 + *(v92 + 20), v93, &unk_100840960, &qword_1006DBCB0);
      v96 = type metadata accessor for PendingActionContext(0);
      v97 = (*(*(v96 - 8) + 48))(v93, 1, v96);
      v98 = *(v0 + 1176);
      v466 = v37;
      if (v97 == 1)
      {
        sub_10000BE18(v98, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_68;
      }

      v172 = *(v98 + 48);
      v173 = *(v98 + 56);
      v174 = *(v0 + 1176);

      sub_100267A1C(v174, type metadata accessor for PendingActionContext);
      if (v173)
      {
        v175 = String.debugDescription.getter();
        v177 = v176;
      }

      else
      {
LABEL_68:
        v175 = 0;
        v177 = 0xE000000000000000;
      }

      v445 = *(v0 + 1304);
      v450 = *(v0 + 1424);
      v178 = *(v0 + 1208);
      v179 = *(v0 + 1200);
      sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
      v180 = sub_100141FE4(v175, v177, (v0 + 976));

      *(v94 + 4) = v180;
      _os_log_impl(&_mh_execute_header, v89, v90, "server requested an action to self heal: %s", v94, 0xCu);
      sub_10000BB78(v95);

      (*(v178 + 8))(v445, v179);
      sub_100267A1C(v450, type metadata accessor for ActionRequest);
LABEL_11:
      v37 = v466;
      goto LABEL_12;
    }

    v466 = v37;
    v99 = *(v0 + 1336);
    defaultLogger()();
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "display message received", v102, 2u);
    }

    v103 = *(v0 + 1424);
    v104 = *(v0 + 1352);
    v105 = *(v0 + 1336);
    v106 = *(v0 + 1208);
    v107 = *(v0 + 1200);
    v108 = *(v0 + 1024);
    v109 = *(v0 + 1008);
    v110 = *(v0 + 1000);

    v111 = *(v106 + 8);
    v111(v105, v107);
    sub_1002556F0(v103 + *(v104 + 20), v110, v109);
    type metadata accessor for IdentityProofingDataContext();
    v112 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v113 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v113 + 54);
    sub_100031B5C(&v113[4], v0 + 408);
    os_unfair_lock_unlock(v113 + 54);
    v114 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v153 = sub_10054C274();
    v154 = *(v0 + 1896);
    v155 = *(v0 + 1424);
    v156 = *(v0 + 1416);
    v157 = *(v0 + 1368);
    v444 = v111;
    v449 = *(v0 + 1016);
    v158 = *(v0 + 1008);
    v159 = *(v0 + 1000);

    v160 = [v153 newBackgroundContext];
    *(v112 + 16) = v160;
    [v160 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v155, v156, type metadata accessor for ActionRequest);
    v161 = swift_allocObject();
    v161[2] = v112;
    v161[3] = v159;
    v161[4] = v158;
    v161[5] = v449;
    sub_100269F80(v156, v161 + ((v154 + 48) & ~v154), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v162 = *(v112 + 16);
    v163 = swift_allocObject();
    v163[2] = sub_100267BF8;
    v163[3] = v161;
    v163[4] = v438;
    v164 = swift_allocObject();
    *(v164 + 16) = sub_100267C5C;
    *(v164 + 24) = v163;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v164;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v165 = _Block_copy((v0 + 800));
    v166 = *(v0 + 840);

    [v162 performBlockAndWait:v165];
    _Block_release(v165);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_162;
    }

    if (*v438)
    {
      swift_willThrow();

      v37 = v466;
      v168 = *(v0 + 1328);
      v169 = *(v0 + 1200);
      v170 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v444(v168, v169);
    }

    else
    {

      v37 = v466;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
LABEL_12:
    v19 = *(v0 + 1568) + 1;
    if (v19 == *(v0 + 1528))
    {
      goto LABEL_4;
    }
  }

  if (!v54)
  {
    v115 = *(v0 + 1272);
    defaultLogger()();
    v56 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();
    v117 = os_log_type_enabled(v56, v116);
    v59 = *(v0 + 1424);
    v60 = *(v0 + 1272);
    v61 = *(v0 + 1208);
    v62 = *(v0 + 1200);
    if (v117)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = v116;
      v65 = v56;
      v66 = "server requested an action to wait for update";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v65, v64, v66, v63, 2u);
    }

LABEL_43:

    (*(v61 + 8))(v60, v62);
LABEL_44:
    sub_100267A1C(v59, type metadata accessor for ActionRequest);
    goto LABEL_12;
  }

  if (v54 != 2)
  {
    v231 = *(v0 + 1312);
    defaultLogger()();
    v232 = Logger.logObject.getter();
    v233 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      *v234 = 0;
      _os_log_impl(&_mh_execute_header, v232, v233, "Starting Provisioning flow", v234, 2u);
    }

    v235 = *(v0 + 1312);
    v236 = *(v0 + 1208);
    v237 = *(v0 + 1200);
    v238 = *(v0 + 992);

    (*(v236 + 8))(v235, v237);
    if (*(v238 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v319 = *(v0 + 1424);
    v320 = *(*(v0 + 1352) + 20);
    v321 = swift_task_alloc();
    *(v0 + 1592) = v321;
    *v321 = v0;
    v321[1] = sub_10023710C;
    v322 = *(v0 + 1024);
    v323 = *(v0 + 1016);
    v324 = *(v0 + 1008);
    v325 = *(v0 + 1000);

    return sub_100229698(v319 + v320, v325, v324, v323, 0x61746E6567616DLL, 0xE700000000000000);
  }

  v67 = *(v0 + 1320);
  defaultLogger()();
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "server requested an action to execute new workflow", v70, 2u);
  }

  v71 = *(v0 + 1424);
  v72 = *(v0 + 1352);
  v73 = *(v0 + 1320);
  v74 = *(v0 + 1208);
  v75 = *(v0 + 1200);
  v76 = *(v0 + 1192);

  (*(v74 + 8))(v73, v75);
  v77 = *(v72 + 20);
  sub_10000BBC4(v71 + v77, v76, &unk_100840960, &qword_1006DBCB0);
  v78 = type metadata accessor for PendingActionContext(0);
  v79 = *(*(v78 - 8) + 48);
  v80 = v79(v76, 1, v78);
  v81 = *(v0 + 1192);
  if (v80 == 1)
  {
    sub_10000BE18(v81, &unk_100840960, &qword_1006DBCB0);
    v82 = 3;
  }

  else
  {
    v82 = *(v81 + *(v78 + 76));
    sub_100267A1C(v81, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v82;
  v136 = *(v0 + 1184);
  sub_10000BBC4(v71 + v77, v136, &unk_100840960, &qword_1006DBCB0);
  v137 = v79(v136, 1, v78);
  v138 = *(v0 + 1184);
  v139 = *(v0 + 1096);
  if (v137 == 1)
  {
    sub_10000BE18(v138, &unk_100840960, &qword_1006DBCB0);
    v140 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v140 - 8) + 56))(v139, 1, 1, v140);
  }

  else
  {
    v141 = *(v78 + 72);
    v142 = *(v0 + 1184);
    sub_10000BBC4(v138 + v141, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v142, type metadata accessor for PendingActionContext);
  }

  v143 = *(v0 + 1096);
  v144 = *(v0 + 1024);
  sub_1002593E4(v143);
  sub_10000BE18(v143, &qword_100835968, &qword_1006DBC90);
  if (v82 <= 1)
  {
    v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v171)
    {
      goto LABEL_107;
    }

    goto LABEL_65;
  }

  if (v82 == 3)
  {
LABEL_65:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v37 = *(v0 + 1909);
    goto LABEL_12;
  }

LABEL_107:
  v271 = swift_task_alloc();
  *(v0 + 1576) = v271;
  *v271 = v0;
  v271[1] = sub_1002342A8;
  v272 = *(v0 + 1024);
  v273 = *(v0 + 1008);
  v274 = *(v0 + 1000);

  return sub_100259898(v71 + v77, v274, v273);
}

uint64_t sub_1002537D0()
{
  sub_100267A1C(v0[172], type metadata accessor for ActionRequest);
  v52 = v0[236];
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[183];
  v5 = v0[182];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[179];
  v11 = v0[178];
  v12 = v0[177];
  v13 = v0[176];
  v14 = v0[175];
  v15 = v0[174];
  v16 = v0[173];
  v17 = v0[172];
  v18 = v0[168];
  v19 = v0[167];
  v20 = v0[166];
  v21 = v0[165];
  v22 = v0[164];
  v23 = v0[163];
  v24 = v0[162];
  v25 = v0[161];
  v26 = v0[160];
  v27 = v0[159];
  v28 = v0[158];
  v29 = v0[157];
  v30 = v0[156];
  v31 = v0[155];
  v32 = v0[154];
  v33 = v0[153];
  v34 = v0[152];
  v35 = v0[149];
  v36 = v0[148];
  v37 = v0[147];
  v38 = v0[146];
  v39 = v0[145];
  v40 = v0[144];
  v41 = v0[143];
  v42 = v0[142];
  v43 = v0[141];
  v44 = v0[140];
  v45 = v0[139];
  v46 = v0[138];
  v47 = v0[137];
  v48 = v0[136];
  v49 = v0[135];
  v50 = v0[134];
  v51 = v0[131];
  sub_10000BE18(v0[187], &qword_10083E3E8, &unk_1006DBD00);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100253B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = a6;
  return _swift_task_switch(sub_100253B54, 0, 0);
}

uint64_t sub_100253B54()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100882228 + 16);
  *(v0 + 160) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100253BFC, 0, 0);
}

uint64_t sub_100253BFC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = String._bridgeToObjectiveC()();
  v0[21] = v4;
  v0[2] = v0;
  v0[3] = sub_100253D2C;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080B280;
  v0[14] = v5;
  [v2 deleteAccountKeySigningKeyForAccountKeyIdentifier:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100253D2C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  if (*(v1 + 48))
  {
    v5 = *(v1 + 48);
    swift_willThrow();
  }

  v6 = *(v2 + 8);

  return v6();
}

void sub_100253E6C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_1005792EC(a1, a2);
  if (!v3)
  {
    if (v5)
    {
      v6 = v5;
      v7 = [v5 credentialIdentifier];

      if (v7)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      *a3 = v8;
      a3[1] = v10;
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }
}

void sub_100253F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v50 = type metadata accessor for Logger();
  v49 = *(v50 - 8);
  v9 = *(v49 + 64);
  __chkstk_darwin(v50);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v44 - v14;
  v16 = type metadata accessor for DIPError.Code();
  v48 = *(v16 - 8);
  v17 = *(v48 + 8);
  __chkstk_darwin(v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = v58;
  sub_10057BE48(a2, a3);
  if (!v21)
  {
    v45 = a3;
    v46 = a4;
    v58 = v16;
    v23 = v49;
    v24 = v50;
    v44[1] = a1;
    if (!v22)
    {
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v29._countAndFlagsBits = 0xD000000000000023;
      v29._object = 0x8000000100707BA0;
      String.append(_:)(v29);
      v30._countAndFlagsBits = v20;
      v30._object = v45;
      String.append(_:)(v30);
      v31._countAndFlagsBits = 0x72617420646E6120;
      v31._object = 0xEC00000020746567;
      String.append(_:)(v31);
      v32._countAndFlagsBits = IdentityTarget.debugDescription.getter();
      String.append(_:)(v32);

      (*(v48 + 13))(v19, enum case for DIPError.Code.internalError(_:), v58);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v25 = v15;
    v26 = v22;
    v27 = type metadata accessor for ActionRequest(0);
    sub_10000BBC4(v47 + *(v27 + 20), v25, &unk_100840960, &qword_1006DBCB0);
    v28 = type metadata accessor for PendingActionContext(0);
    if ((*(*(v28 - 8) + 48))(v25, 1, v28) == 1)
    {
      sub_10000BE18(v25, &unk_100840960, &qword_1006DBCB0);
LABEL_11:
      (*(v48 + 13))(v19, enum case for DIPError.Code.extendedReviewProofingError(_:), v58);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v33 = v25[10];
    v54 = v25[9];
    v55 = v33;
    v34 = v25[12];
    v56 = v25[11];
    v57 = v34;
    v35 = v25[8];
    v52 = v25[7];
    v53 = v35;
    sub_10000BBC4(&v52, v51, &qword_100837410, &qword_1006C9788);
    sub_100267A1C(v25, type metadata accessor for PendingActionContext);
    v36 = *(&v52 + 1);
    if (*(&v52 + 1) == 2)
    {
      goto LABEL_11;
    }

    v37 = v53;
    sub_1002679D4(v52, *(&v52 + 1));
    sub_10000BE18(&v52, &qword_100837410, &qword_1006C9788);
    if (v36 == 1)
    {
      goto LABEL_11;
    }

    if (!*(&v37 + 1))
    {
      goto LABEL_11;
    }

    v58 = v37;
    defaultLogger()();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v48 = v11;
      v41 = v40;
      v42 = swift_slowAlloc();
      v51[0] = v42;
      *v41 = 136315138;
      LODWORD(v47) = v39;
      v43 = v58;
      *(v41 + 4) = sub_100141FE4(v58, *(&v37 + 1), v51);
      _os_log_impl(&_mh_execute_header, v38, v47, "The extended review URL string is %s", v41, 0xCu);
      sub_10000BB78(v42);

      (*(v23 + 8))(v48, v24);
    }

    else
    {

      (*(v23 + 8))(v11, v24);
      v43 = v58;
    }

    sub_10057F944(v43, *(&v37 + 1));

    sub_10057BA64();
  }
}

void sub_100254670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v83) = a8;
  v78 = a6;
  v79 = a7;
  v84 = a5;
  v82 = type metadata accessor for URL();
  v85 = *(v82 - 8);
  v11 = *(v85 + 64);
  __chkstk_darwin(v82);
  v77 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v71 - v18;
  v20 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v71 - v25;
  v27 = v86;
  v28 = sub_1005792EC(a2, a3);
  if (!v27)
  {
    v72 = a2;
    v73 = v19;
    v29 = v17;
    v30 = v83;
    v74 = v24;
    v75 = v26;
    v31 = v85;
    v86 = a1;
    v76 = 0;
    if (v28)
    {
      v32 = v28;
      type metadata accessor for StoredProofingDisplayMessage();
      v33 = *(v86 + 16);
      v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v33];
      v35 = IdentityProofingDisplayMessage.title.getter();
      sub_10057FAD4(v35, v36, v78, v79);

      v37 = v34;
      v79 = v32;
      sub_10057FC7C(v34);

      if (v30)
      {
        type metadata accessor for StoredProofingDisplayMessageAction();
        v38 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v33];
        v39 = static LocalizedProofingString.tryAgain.getter();
        v41 = v40;
        v42 = v75;
        (*(v31 + 56))(v75, 1, 1, v82);
        sub_10057FE04(v39, v41, 0, v42);

        sub_10000BE18(v42, &unk_100844540, &unk_1006BFBC0);
        [v37 addActionsObject:v38];
      }

      v78 = v33;
      v83 = v37;
      v43 = IdentityProofingDisplayMessage.learnMoreTitle.getter();
      v45 = v44;
      IdentityProofingDisplayMessage.learnMoreURL.getter();
      v47 = v46;
      v48 = [objc_opt_self() standardUserDefaults];
      v49._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideLearnMoreURLBridge.getter();
      v50 = NSUserDefaults.internalString(forKey:)(v49);

      if (v50.value._object)
      {

        v51 = v73;
        defaultLogger()();

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v87 = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_100141FE4(v50.value._countAndFlagsBits, v50.value._object, &v87);
          _os_log_impl(&_mh_execute_header, v52, v53, "IdentityProofingPendingActionsFlow: override proofing error message learn more URL from internal setting: %s", v54, 0xCu);
          sub_10000BB78(v55);
        }

        (*(v80 + 8))(v51, v81);
        v56 = v77;
        v57 = v74;
        v58 = v75;
        v43 = static LocalizedProofingString.learnMore.getter();
        v45 = v59;
      }

      else
      {
        if (!v45)
        {

          v62 = v79;
          v63 = v83;
          goto LABEL_20;
        }

        if (!v47)
        {

          v57 = v74;
          (*(v85 + 56))(v74, 1, 1, v82);
          goto LABEL_11;
        }

        v56 = v77;
        v57 = v74;
        v58 = v75;
      }

      URL.init(string:)();
      swift_bridgeObjectRelease_n();
      v60 = v85;
      v61 = v82;
      if ((*(v85 + 48))(v57, 1, v82) != 1)
      {
        (*(v60 + 32))(v56, v57, v61);
        type metadata accessor for StoredProofingDisplayMessageAction();
        v69 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v70 = [v69 initWithContext:v78];
        (*(v60 + 16))(v58, v56, v61);
        (*(v60 + 56))(v58, 0, 1, v61);
        sub_10057FE04(v43, v45, 1, v58);

        sub_10000BE18(v58, &unk_100844540, &unk_1006BFBC0);
        v63 = v83;
        [v83 addActionsObject:v70];

        (*(v60 + 8))(v56, v61);
        v62 = v79;
        goto LABEL_20;
      }

LABEL_11:
      v62 = v79;
      v63 = v83;
      sub_10000BE18(v57, &unk_100844540, &unk_1006BFBC0);
LABEL_20:
      sub_1005783D4();

      return;
    }

    defaultLogger()();
    v64 = a3;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v87 = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_100141FE4(v72, v64, &v87);
      _os_log_impl(&_mh_execute_header, v65, v66, "PendingActionsFlow no proofing session exists for: %s", v67, 0xCu);
      sub_10000BB78(v68);
    }

    (*(v80 + 8))(v29, v81);
  }
}

void sub_100254E1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057BE48(a2, a3);
  if (!v5)
  {
    if (v14)
    {
      v15 = v14;
      v16 = type metadata accessor for ActionRequest(0);
      sub_100580054(*(a5 + *(v16 + 24)), *(a5 + *(v16 + 24) + 8));
      sub_10057BA64();
    }

    else
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v17._object = 0x8000000100707D30;
      v17._countAndFlagsBits = 0xD000000000000027;
      String.append(_:)(v17);
      v18._countAndFlagsBits = a2;
      v18._object = a3;
      String.append(_:)(v18);
      v19._countAndFlagsBits = 0x74276E73656F6420;
      v19._object = 0xEE00747369786520;
      String.append(_:)(v19);
      (*(v10 + 104))(v13, enum case for DIPError.Code.internalError(_:), v9);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002550B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100007224(&qword_10083E3E8, &unk_1006DBD00) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = *(*(sub_100007224(&unk_100840960, &qword_1006DBCB0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002551A8, 0, 0);
}

uint64_t sub_1002551A8()
{
  v1 = v0[7];
  v2 = v0[2];
  v0[10] = *(v0[5] + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_userNotificationProvider);
  sub_10000BBC4(v2, v1, &qword_10083E3E8, &unk_1006DBD00);
  v3 = type metadata accessor for ActionRequest(0);
  v4 = *(*(v3 - 8) + 48);
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[7];

    v6 = &qword_10083E3E8;
    v7 = &unk_1006DBD00;
    v8 = v5;
LABEL_5:
    sub_10000BE18(v8, v6, v7);
    v14 = 0;
    v15 = 0;
    goto LABEL_7;
  }

  v9 = v0[9];
  v10 = v0[7];
  sub_10000BBC4(v10 + *(v3 + 20), v9, &unk_100840960, &qword_1006DBCB0);

  sub_100267A1C(v10, type metadata accessor for ActionRequest);
  v11 = type metadata accessor for PendingActionContext(0);
  v12 = (*(*(v11 - 8) + 48))(v9, 1, v11);
  v13 = v0[9];
  if (v12 == 1)
  {
    v6 = &unk_100840960;
    v7 = &qword_1006DBCB0;
    v8 = v0[9];
    goto LABEL_5;
  }

  v14 = *(v13 + 240);
  v15 = *(v13 + 248);

  sub_100267A1C(v13, type metadata accessor for PendingActionContext);
LABEL_7:
  v0[11] = v15;
  v16 = v0[6];
  sub_10000BBC4(v0[2], v16, &qword_10083E3E8, &unk_1006DBD00);
  if (v4(v16, 1, v3) == 1)
  {
    v17 = v0[6];
    v18 = &qword_10083E3E8;
    v19 = &unk_1006DBD00;
LABEL_11:
    sub_10000BE18(v17, v18, v19);
    v25 = 0;
    v26 = 0;
    goto LABEL_13;
  }

  v20 = v0[8];
  v21 = v0[6];
  sub_10000BBC4(v21 + *(v3 + 20), v20, &unk_100840960, &qword_1006DBCB0);
  sub_100267A1C(v21, type metadata accessor for ActionRequest);
  v22 = type metadata accessor for PendingActionContext(0);
  v23 = (*(*(v22 - 8) + 48))(v20, 1, v22);
  v24 = v0[8];
  if (v23 == 1)
  {
    v18 = &unk_100840960;
    v19 = &qword_1006DBCB0;
    v17 = v0[8];
    goto LABEL_11;
  }

  v25 = *(v24 + 256);
  v26 = *(v24 + 264);

  sub_100267A1C(v24, type metadata accessor for PendingActionContext);
LABEL_13:
  v0[12] = v26;
  v27 = swift_task_alloc();
  v0[13] = v27;
  *v27 = v0;
  v27[1] = sub_10025551C;
  v28 = v0[3];
  v29 = v0[4];

  return sub_1002CD7D4(v14, v15, v25, v26, v28, v29, 0);
}

uint64_t sub_10025551C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v7 = *(*v0 + 56);
  v8 = *(*v0 + 48);
  v11 = *v0;

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1002556F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v219 = a3;
  v224 = a2;
  v228 = type metadata accessor for DIPError.Code();
  v227 = *(v228 - 8);
  v4 = *(v227 + 8);
  __chkstk_darwin(v228);
  v229 = &v197 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError();
  v230 = *(v6 - 8);
  v7 = *(v230 + 64);
  __chkstk_darwin(v6);
  v9 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_10083BD28, &qword_1006DA240);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v218 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v221 = &v197 - v14;
  v232 = type metadata accessor for Logger();
  v231 = *(v232 - 1);
  v15 = v231[8];
  v16 = __chkstk_darwin(v232);
  v18 = &v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v217 = &v197 - v20;
  v21 = __chkstk_darwin(v19);
  v216 = &v197 - v22;
  v23 = __chkstk_darwin(v21);
  v215 = &v197 - v24;
  v25 = __chkstk_darwin(v23);
  v213 = &v197 - v26;
  v27 = __chkstk_darwin(v25);
  v212 = &v197 - v28;
  v29 = __chkstk_darwin(v27);
  v211 = &v197 - v30;
  v31 = __chkstk_darwin(v29);
  v210 = &v197 - v32;
  v33 = __chkstk_darwin(v31);
  v209 = &v197 - v34;
  __chkstk_darwin(v33);
  v208 = &v197 - v35;
  v223 = type metadata accessor for IdentityProofingDisplayMessage();
  v222 = *(v223 - 8);
  v36 = v222[8];
  v37 = __chkstk_darwin(v223);
  v202 = &v197 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v214 = &v197 - v40;
  __chkstk_darwin(v39);
  v225 = &v197 - v41;
  v42 = sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v207 = (&v197 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __chkstk_darwin(v44);
  v206 = &v197 - v47;
  v48 = __chkstk_darwin(v46);
  v205 = &v197 - v49;
  v50 = __chkstk_darwin(v48);
  v204 = &v197 - v51;
  v52 = __chkstk_darwin(v50);
  v203 = &v197 - v53;
  v54 = __chkstk_darwin(v52);
  v56 = &v197 - v55;
  v57 = __chkstk_darwin(v54);
  v59 = &v197 - v58;
  __chkstk_darwin(v57);
  v61 = &v197 - v60;
  sub_10000BBC4(a1, &v197 - v60, &unk_100840960, &qword_1006DBCB0);
  v62 = type metadata accessor for PendingActionContext(0);
  v226 = *(*(v62 - 8) + 48);
  if (v226(v61, 1, v62) == 1)
  {
    v63 = v61;
LABEL_6:
    sub_10000BE18(v63, &unk_100840960, &qword_1006DBCB0);
    goto LABEL_7;
  }

  v64 = *(v61 + 12);
  v201 = *(v61 + 11);

  v65 = v61;
  v66 = v64;
  sub_100267A1C(v65, type metadata accessor for PendingActionContext);
  if (!v64)
  {
LABEL_7:
    (*(v227 + 13))(v229, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v228);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v69 = v230;
    (*(v230 + 16))(v70, v9, v6);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (v231[1])(v18, v232);
    (*(v69 + 8))(v9, v6);
  }

  v67 = a1;
  sub_10000BBC4(a1, v59, &unk_100840960, &qword_1006DBCB0);
  v68 = v226;
  if (v226(v59, 1, v62) == 1)
  {

    v63 = v59;
    goto LABEL_6;
  }

  v200 = v66;
  v72 = *(v59 + 13);

  sub_100267A1C(v59, type metadata accessor for PendingActionContext);
  v199 = v72;
  if (!v72)
  {

    goto LABEL_7;
  }

  sub_10000BBC4(a1, v56, &unk_100840960, &qword_1006DBCB0);
  if (v68(v56, 1, v62) == 1)
  {
    sub_10000BE18(v56, &unk_100840960, &qword_1006DBCB0);
    v198 = 0;
    v73 = 0;
    v74 = v232;
    v75 = v205;
    v76 = v204;
LABEL_14:
    v80 = v203;
    goto LABEL_19;
  }

  v77 = *(v56 + 10);
  v236 = *(v56 + 9);
  v237 = v77;
  v78 = *(v56 + 12);
  v238 = *(v56 + 11);
  v239 = v78;
  v79 = *(v56 + 8);
  v234 = *(v56 + 7);
  v235 = v79;
  sub_10000BBC4(&v234, &v233, &qword_100837410, &qword_1006C9788);
  sub_100267A1C(v56, type metadata accessor for PendingActionContext);
  v73 = *(&v234 + 1);
  v74 = v232;
  v75 = v205;
  v76 = v204;
  if (*(&v234 + 1) == 2)
  {
    v198 = 0;
    v73 = 0;
    goto LABEL_14;
  }

  v198 = v234;
  sub_1002679D4(v234, *(&v234 + 1));
  sub_10000BE18(&v234, &qword_100837410, &qword_1006C9788);
  v80 = v203;
  if (v73 == 1)
  {
    v198 = 0;
    v73 = 0;
  }

  else
  {
  }

  v68 = v226;
LABEL_19:
  sub_10000BBC4(v67, v80, &unk_100840960, &qword_1006DBCB0);
  if (v68(v80, 1, v62) == 1)
  {
    sub_10000BE18(v80, &unk_100840960, &qword_1006DBCB0);
LABEL_22:
    v205 = 0;
    v84 = 0;
    goto LABEL_27;
  }

  v81 = *(v80 + 10);
  v236 = *(v80 + 9);
  v237 = v81;
  v82 = *(v80 + 12);
  v238 = *(v80 + 11);
  v239 = v82;
  v83 = *(v80 + 8);
  v234 = *(v80 + 7);
  v235 = v83;
  sub_10000BBC4(&v234, &v233, &qword_100837410, &qword_1006C9788);
  sub_100267A1C(v80, type metadata accessor for PendingActionContext);
  if (*(&v234 + 1) == 2)
  {
    goto LABEL_22;
  }

  v84 = *(&v236 + 1);
  v205 = v236;
  sub_1002679D4(v236, *(&v236 + 1));
  sub_10000BE18(&v234, &qword_100837410, &qword_1006C9788);
  if (v84 == 1)
  {
    v205 = 0;
    v84 = 0;
  }

  else
  {
  }

  v68 = v226;
LABEL_27:
  sub_10000BBC4(v67, v76, &unk_100840960, &qword_1006DBCB0);
  if (v68(v76, 1, v62) == 1)
  {
    sub_10000BE18(v76, &unk_100840960, &qword_1006DBCB0);
LABEL_30:
    v227 = 0;
    v88 = 0;
    goto LABEL_35;
  }

  v85 = *(v76 + 10);
  v236 = *(v76 + 9);
  v237 = v85;
  v86 = *(v76 + 12);
  v238 = *(v76 + 11);
  v239 = v86;
  v87 = *(v76 + 8);
  v234 = *(v76 + 7);
  v235 = v87;
  sub_10000BBC4(&v234, &v233, &qword_100837410, &qword_1006C9788);
  sub_100267A1C(v76, type metadata accessor for PendingActionContext);
  if (*(&v234 + 1) == 2)
  {
    goto LABEL_30;
  }

  v88 = *(&v238 + 1);
  v227 = v238;
  sub_1002679D4(v238, *(&v238 + 1));
  sub_10000BE18(&v234, &qword_100837410, &qword_1006C9788);
  if (v88 == 1)
  {
    v227 = 0;
    v88 = 0;
  }

  else
  {
  }

  v68 = v226;
LABEL_35:
  sub_10000BBC4(v67, v75, &unk_100840960, &qword_1006DBCB0);
  v89 = v68(v75, 1, v62);
  v230 = v73;
  v229 = v84;
  if (v89 == 1)
  {
    sub_10000BE18(v75, &unk_100840960, &qword_1006DBCB0);
    v90 = v206;
  }

  else
  {
    v91 = *(v75 + 10);
    v236 = *(v75 + 9);
    v237 = v91;
    v92 = *(v75 + 12);
    v238 = *(v75 + 11);
    v239 = v92;
    v93 = *(v75 + 8);
    v234 = *(v75 + 7);
    v235 = v93;
    sub_10000BBC4(&v234, &v233, &qword_100837410, &qword_1006C9788);
    sub_100267A1C(v75, type metadata accessor for PendingActionContext);
    v90 = v206;
    if (*(&v234 + 1) != 2)
    {
      v94 = *(&v239 + 1);
      v95 = *(&v238 + 1);
      v228 = v239;
      sub_1002679D4(v238, *(&v238 + 1));
      sub_10000BE18(&v234, &qword_100837410, &qword_1006C9788);
      if (v95 == 1)
      {
        v68 = v226;
      }

      else
      {

        v68 = v226;
        if (v94)
        {
          goto LABEL_45;
        }
      }
    }
  }

  sub_10000BBC4(v67, v90, &unk_100840960, &qword_1006DBCB0);
  if (v68(v90, 1, v62) == 1)
  {
    sub_10000BE18(v90, &unk_100840960, &qword_1006DBCB0);
    v228 = 0;
    v94 = 0;
  }

  else
  {
    v94 = *(v90 + 312);
    v228 = *(v90 + 304);

    sub_100267A1C(v90, type metadata accessor for PendingActionContext);
  }

LABEL_45:
  v96 = v67;
  v97 = v68;
  v98 = v207;
  sub_10000BBC4(v96, v207, &unk_100840960, &qword_1006DBCB0);
  if (v97(v98, 1, v62) == 1)
  {
    v99 = v74;
    sub_10000BE18(v98, &unk_100840960, &qword_1006DBCB0);
    v100 = v209;
  }

  else
  {
    v101 = *(v98 + 10);
    v236 = *(v98 + 9);
    v237 = v101;
    v102 = *(v98 + 12);
    v238 = *(v98 + 11);
    v239 = v102;
    v103 = *(v98 + 8);
    v234 = *(v98 + 7);
    v235 = v103;
    sub_10000BBC4(&v234, &v233, &qword_100837410, &qword_1006C9788);
    sub_100267A1C(v98, type metadata accessor for PendingActionContext);
    v104 = *(&v234 + 1);
    v100 = v209;
    if (*(&v234 + 1) == 2 || (sub_1002679D4(v234, *(&v234 + 1)), sub_10000BE18(&v234, &qword_100837410, &qword_1006C9788), v104 == 1))
    {
      v99 = v74;
    }

    else
    {
      v99 = v74;
    }
  }

  v209 = v88;
  IdentityProofingDisplayMessage.init(title:messages:primaryButtonTitle:secondaryButtonTitle:learnMoreTitle:url:learnMoreURL:)();
  v105 = v208;
  defaultLogger()();
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v106, v107, "----BEGIN LOGGING DISPLAY MESSAGE DATA-----", v108, 2u);
  }

  v109 = v213;

  v110 = v231[1];
  (v110)(v105, v99);
  defaultLogger()();
  v111 = v200;

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.debug.getter();

  v114 = os_log_type_enabled(v112, v113);
  v231 = v110;
  v226 = v94;
  if (v114)
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v234 = v116;
    *v115 = 136315138;
    v117 = sub_100141FE4(v201, v111, &v234);

    *(v115 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v112, v113, "title: %s", v115, 0xCu);
    sub_10000BB78(v116);

    v110 = v231;
  }

  else
  {
  }

  (v110)(v100, v99);
  v118 = v210;
  defaultLogger()();

  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *&v234 = v122;
    *v121 = 136315138;
    v123 = Array.description.getter();
    v125 = v124;

    v126 = sub_100141FE4(v123, v125, &v234);

    *(v121 + 4) = v126;
    _os_log_impl(&_mh_execute_header, v119, v120, "messages: %s", v121, 0xCu);
    sub_10000BB78(v122);

    v110 = v231;
  }

  else
  {
  }

  (v110)(v118, v99);
  v127 = v211;
  v128 = v230;
  defaultLogger()();

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.debug.getter();

  v131 = v109;
  if (os_log_type_enabled(v129, v130))
  {
    v132 = swift_slowAlloc();
    v133 = v127;
    v134 = swift_slowAlloc();
    *&v234 = v134;
    *v132 = 136315138;
    if (v128)
    {
      v135 = v198;
    }

    else
    {
      v135 = 0x3E6C696E3CLL;
    }

    if (!v128)
    {
      v128 = 0xE500000000000000;
    }

    v136 = sub_100141FE4(v135, v128, &v234);

    *(v132 + 4) = v136;
    _os_log_impl(&_mh_execute_header, v129, v130, "primaryButtonTitle: %s", v132, 0xCu);
    sub_10000BB78(v134);

    v110 = v231;

    v137 = v133;
  }

  else
  {

    v137 = v127;
  }

  (v110)(v137, v99);
  v138 = v212;
  defaultLogger()();
  v139 = v229;

  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v234 = v143;
    *v142 = 136315138;
    if (v139)
    {
      v144 = v205;
    }

    else
    {
      v144 = 0x3E6C696E3CLL;
    }

    if (!v139)
    {
      v139 = 0xE500000000000000;
    }

    v145 = sub_100141FE4(v144, v139, &v234);

    *(v142 + 4) = v145;
    _os_log_impl(&_mh_execute_header, v140, v141, "secondaryButtonTitle: %s", v142, 0xCu);
    sub_10000BB78(v143);

    v110 = v231;
  }

  else
  {
  }

  (v110)(v138, v99);
  defaultLogger()();
  v146 = v209;

  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    *&v234 = v150;
    *v149 = 136315138;
    if (v146)
    {
      v151 = v227;
    }

    else
    {
      v151 = 0x3E6C696E3CLL;
    }

    if (!v146)
    {
      v146 = 0xE500000000000000;
    }

    v152 = sub_100141FE4(v151, v146, &v234);

    *(v149 + 4) = v152;
    _os_log_impl(&_mh_execute_header, v147, v148, "learnMoreTitle: %s", v149, 0xCu);
    sub_10000BB78(v150);

    v110 = v231;
  }

  else
  {
  }

  (v110)(v131, v99);
  v153 = v214;
  v154 = v215;
  defaultLogger()();
  v155 = v222;
  v156 = v222[2];
  v157 = v223;
  v229 = (v222 + 2);
  v227 = v156;
  v156(v153, v225, v223);
  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *&v234 = v161;
    *v160 = 136315138;
    v162 = IdentityProofingDisplayMessage.url.getter();
    if (v163)
    {
      v164 = v162;
    }

    else
    {
      v164 = 0x3E6C696E3CLL;
    }

    v165 = v153;
    if (v163)
    {
      v166 = v163;
    }

    else
    {
      v166 = 0xE500000000000000;
    }

    v230 = v155[1];
    (v230)(v165, v157);
    v167 = sub_100141FE4(v164, v166, &v234);

    *(v160 + 4) = v167;
    _os_log_impl(&_mh_execute_header, v158, v159, "url: %s", v160, 0xCu);
    sub_10000BB78(v161);

    v110 = v231;
  }

  else
  {

    v230 = v155[1];
    (v230)(v153, v157);
  }

  (v110)(v154, v232);
  v168 = v226;
  v169 = v216;
  defaultLogger()();

  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    *&v234 = v173;
    *v172 = 136315138;
    if (v168)
    {
      v174 = v228;
    }

    else
    {
      v174 = 0x3E6C696E3CLL;
    }

    if (!v168)
    {
      v168 = 0xE500000000000000;
    }

    v175 = sub_100141FE4(v174, v168, &v234);

    *(v172 + 4) = v175;
    _os_log_impl(&_mh_execute_header, v170, v171, "learnMoreURL: %s", v172, 0xCu);
    sub_10000BB78(v173);

    v110 = v231;
  }

  else
  {
  }

  (v110)(v169, v232);
  v176 = v217;
  defaultLogger()();
  v177 = Logger.logObject.getter();
  v178 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 0;
    _os_log_impl(&_mh_execute_header, v177, v178, "----END LOGGING DISPLAY MESSAGE DATA-----", v179, 2u);
    v110 = v231;
  }

  (v110)(v176, v232);
  v180 = v221;
  v181 = v225;
  v182 = v223;
  v183 = v227;
  v227(v221, v225, v223);
  v184 = v222;
  v232 = v222[7];
  (v232)(v180, 0, 1, v182);
  v185 = v220;
  swift_beginAccess();
  v186 = v219;

  sub_10014BDF0(v180, v224, v186);
  swift_endAccess();
  v187 = *(v185 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_actionsRepository);
  v188 = v218;
  v183(v218, v181, v182);
  (v232)(v188, 0, 1, v182);
  v189 = *(v187 + 24);

  os_unfair_lock_lock((v189 + 24));
  v190 = *(v189 + 16);

  os_unfair_lock_unlock((v189 + 24));
  *&v234 = v190;
  if ((v184[6])(v188, 1, v182) == 1)
  {
    sub_10000BE18(v188, &qword_10083BD28, &qword_1006DA240);
    v191 = v221;
    sub_10014F3EC(v224, v186, v221);
    v192 = sub_10000BE18(v191, &qword_10083BD28, &qword_1006DA240);
  }

  else
  {
    v193 = v202;
    (v184[4])(v202, v188, v182);
    v194 = v234;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v233 = v194;
    v192 = sub_10016CD90(v193, v224, v186, isUniquelyReferenced_nonNull_native);
    *&v234 = v233;
  }

  v196 = *(v187 + 24);
  __chkstk_darwin(v192);
  os_unfair_lock_lock((v196 + 24));
  sub_1002679B8((v196 + 16));
  os_unfair_lock_unlock((v196 + 24));

  (v230)(v225, v182);
}

uint64_t sub_10025744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 80) = v25;
  *(v9 + 88) = v8;
  *(v9 + 259) = v23;
  *(v9 + 258) = v22;
  *(v9 + 64) = a8;
  *(v9 + 72) = v24;
  *(v9 + 257) = a7;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 96) = v10;
  v11 = *(v10 - 8);
  *(v9 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_10083BD28, &qword_1006DA240) - 8) + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  v14 = type metadata accessor for IdentityProofingDisplayMessage();
  *(v9 + 128) = v14;
  v15 = *(v14 - 8);
  *(v9 + 136) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v9 + 152) = v17;
  v18 = *(v17 - 8);
  *(v9 + 160) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_10025764C, 0, 0);
}

uint64_t sub_10025764C()
{
  v123 = v0;
  v1 = *(v0 + 24);
  if (!v1)
  {
    v5 = 0xE300000000000000;
    goto LABEL_22;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v125._countAndFlagsBits = v2;
  v125._object = v1;
  v4 = sub_100265C7C(v125);
  *(v0 + 260) = v4;
  v5 = v1;
  if (v4 == 6)
  {
LABEL_22:
    v30 = *(v0 + 168);
    defaultLogger()();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v36 = *(v0 + 152);
    if (v33)
    {
      v37 = *(v0 + 16);
      v120 = *(v0 + 168);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v122[0] = v39;
      *v38 = 136315138;
      if (!v1)
      {
        v37 = 7104878;
      }

      v40 = sub_100141FE4(v37, v5, v122);

      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "Server sent an unknown pending status code: %s", v38, 0xCu);
      sub_10000BB78(v39);

      (*(v34 + 8))(v120, v36);
    }

    else
    {

      (*(v34 + 8))(v35, v36);
    }

    (*(*(v0 + 104) + 104))(*(v0 + 112), enum case for DIPError.Code.invalidPendingActionsProofingStatusCode(_:), *(v0 + 96));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v112 = *(v0 + 192);
    v113 = *(v0 + 184);
    v114 = *(v0 + 176);
    v115 = *(v0 + 168);
    v117 = *(v0 + 144);
    v41 = *(v0 + 112);
    v121 = *(v0 + 120);
    v42 = *(v0 + 104);
    v111 = *(v0 + 96);
    v43 = *(v0 + 72);
    v44 = *(v0 + 80);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v45 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v46 = *(*v45 + 72);
    v47 = (*(*v45 + 80) + 32) & ~*(*v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1006BF520;
    v49 = v48 + v47;
    v50 = (v49 + v45[14]);
    v51 = enum case for DIPError.PropertyKey.inoProviderID(_:);
    v52 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v52 - 8) + 104))(v49, v51, v52);
    v50[3] = &type metadata for String;
    v50[4] = &protocol witness table for String;
    *v50 = v43;
    v50[1] = v44;
    swift_errorRetain();

    sub_10003C9C0(v48);
    swift_setDeallocating();
    sub_10000BE18(v49, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v42 + 104))(v41, enum case for DIPError.Code.internalError(_:), v111);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v53 = *(v0 + 8);

    return v53();
  }

  v6 = v4;
  v7 = *(v0 + 192);
  v8 = *(v0 + 48);
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 40);
    v14 = swift_slowAlloc();
    v122[0] = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100141FE4(v13, v12, v122);
    *(v14 + 12) = 2080;
    v15 = IdentityTarget.debugDescription.getter();
    v17 = sub_100141FE4(v15, v16, v122);

    *(v14 + 14) = v17;
    *(v14 + 22) = 2080;
    v18 = 0xE700000000000000;
    v19 = 0x80000001006F8A70;
    v20 = 0xD000000000000018;
    v21 = 0x80000001006F8A90;
    if (v6 != 4)
    {
      v21 = 0x80000001006F8AB0;
    }

    if (v6 != 3)
    {
      v20 = 0xD000000000000010;
      v19 = v21;
    }

    v22 = 0xE700000000000000;
    v23 = 0x45525F4D49414C43;
    if (v6 == 1)
    {
      v22 = 0xEB00000000594441;
    }

    else
    {
      v23 = 0x474E49444E4550;
    }

    if (v6)
    {
      v18 = v22;
    }

    else
    {
      v23 = 0x44455249505845;
    }

    if (v6 <= 2u)
    {
      v24 = v23;
    }

    else
    {
      v24 = v20;
    }

    if (v6 <= 2u)
    {
      v25 = v18;
    }

    else
    {
      v25 = v19;
    }

    v119 = *(v0 + 192);
    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v28 = sub_100141FE4(v24, v25, v122);

    *(v14 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v9, v10, "updateProofingStatus called for proofingSessionID: %s and target: %s with status: %s", v14, 0x20u);
    swift_arrayDestroy();

    v29 = *(v26 + 8);
    v29(v119, v27);
  }

  else
  {
    v55 = *(v0 + 192);
    v56 = *(v0 + 152);
    v57 = *(v0 + 160);

    v29 = *(v57 + 8);
    v29(v55, v56);
  }

  if (v6 == 2)
  {
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (sub_1006933A0(0, *(v0 + 32)))
  {
    if (sub_1006933A0(4u, *(v0 + 32)))
    {
      v59 = 1;
    }

    else
    {
      v59 = 3;
    }

    goto LABEL_40;
  }

LABEL_39:
  v59 = 3;
LABEL_40:
  if (v6 >= 4u && (v6 != 4 ? (v60 = "PENDING_WORKFLOW") : (v60 = "ERROR_PROCESSING_REQUEST"), 0x80000001006F8A90 == (v60 | 0x8000000000000000)))
  {
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v61 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v62 = *(v0 + 184);
  defaultLogger()();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 184);
  v67 = *(v0 + 152);
  v68 = *(v0 + 160);
  if (v65)
  {
    v118 = *(v0 + 184);
    v69 = *(v0 + 257);
    v70 = swift_slowAlloc();
    v116 = v67;
    v71 = swift_slowAlloc();
    v122[0] = v71;
    *v70 = 136315138;
    *(v0 + 256) = v69;
    sub_100007224(&qword_10083E3D8, &qword_1006DBCD8);
    v72 = Optional.debugDescription.getter();
    v74 = v29;
    v75 = sub_100141FE4(v72, v73, v122);

    *(v70 + 4) = v75;
    v29 = v74;
    _os_log_impl(&_mh_execute_header, v63, v64, "the workflow type is %s", v70, 0xCu);
    sub_10000BB78(v71);

    v74(v118, v116);
  }

  else
  {

    v29(v66, v67);
  }

  v59 = *(v0 + 257);
  if (*(v0 + 257) > 1u)
  {
    if (v59 == 2)
    {
      v59 = 12;
    }
  }

  else if (*(v0 + 257))
  {
    v59 = 10;
  }

  else
  {
    v59 = 4;
  }

LABEL_57:
  if (v6 == 2)
  {
  }

  else
  {
    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v76 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if ((sub_1006933A0(4u, *(v0 + 32)) & 1) != 0 && (sub_1006933A0(0, *(v0 + 32)) & 1) == 0)
  {
    v59 = 0;
  }

LABEL_64:
  if (v6 == 3)
  {
  }

  else
  {
    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v77 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  v59 = 6;
LABEL_68:
  if (v6 == 1)
  {

LABEL_71:
    v59 = 2;
    goto LABEL_72;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v78)
  {
    goto LABEL_71;
  }

LABEL_72:
  *(v0 + 200) = v59;
  if (!v6)
  {

LABEL_75:
    *(v0 + 208) = *(*(v0 + 88) + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_expirationActionProvider);

    v80 = swift_task_alloc();
    *(v0 + 216) = v80;
    *v80 = v0;
    v80[1] = sub_10025882C;
    v81 = *(v0 + 56);
    v82 = *(v0 + 64);
    v84 = *(v0 + 40);
    v83 = *(v0 + 48);

    return sub_1002AD91C(v84, v83, v81, v82);
  }

  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v79)
  {
    goto LABEL_75;
  }

  if (v6 == 3)
  {
  }

  else
  {
    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v85 & 1) == 0)
    {
LABEL_83:
      v90 = swift_task_alloc();
      *(v0 + 240) = v90;
      *v90 = v0;
      v90[1] = sub_100258B88;
      v91 = *(v0 + 200);
      v92 = *(v0 + 88);
      v94 = *(v0 + 40);
      v93 = *(v0 + 48);

      return sub_1002667A8(v94, v93, v91);
    }
  }

  v86 = *(v0 + 128);
  v87 = *(v0 + 136);
  v88 = *(v0 + 120);
  v89 = *(v0 + 88);
  sub_10025CDEC(*(v0 + 40), *(v0 + 48), v88);
  if ((*(v87 + 48))(v88, 1, v86) == 1)
  {
    sub_10000BE18(*(v0 + 120), &qword_10083BD28, &qword_1006DA240);
    goto LABEL_83;
  }

  v95 = *(v0 + 259);
  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v96 = [objc_opt_self() standardUserDefaults];
  v97._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRetryableProofingErrorMessage.getter();
  v98 = NSUserDefaults.internalBool(forKey:)(v97);

  if (v98)
  {
    v99 = *(v0 + 176);
    defaultLogger()();
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "IdentityProofingPendingActionsFlow: forcing proofing error message to be retryable due to internal setting", v102, 2u);
    }

    v103 = *(v0 + 176);
    v104 = *(v0 + 152);
    v105 = *(v0 + 160);

    v29(v103, v104);
    v95 = 1;
  }

  v106 = swift_task_alloc();
  *(v0 + 232) = v106;
  *v106 = v0;
  v106[1] = sub_1002589D8;
  v107 = *(v0 + 144);
  v108 = *(v0 + 48);
  v109 = *(v0 + 56);
  v110 = *(v0 + 40);

  return sub_100265CC8(v107, v110, v108, v109, v95 & 1);
}

uint64_t sub_10025882C()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002590BC, 0, 0);
  }

  else
  {
    v4 = v3[26];
    v6 = v3[23];
    v5 = v3[24];
    v8 = v3[21];
    v7 = v3[22];
    v9 = v3[18];
    v10 = v3[14];
    v11 = v3[15];

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_1002589D8()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_100258AD4, 0, 0);
}

uint64_t sub_100258AD4()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_100258B88;
  v2 = v0[25];
  v3 = v0[11];
  v5 = v0[5];
  v4 = v0[6];

  return sub_1002667A8(v5, v4, v2);
}

uint64_t sub_100258B88()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100258D9C;
  }

  else
  {
    v3 = sub_100258C9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100258C9C()
{
  v1 = *(v0 + 258);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(*(v0 + 88) + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_biomeManager);
  v5 = *(v0 + 260);

  sub_1002FCFB4(v3, v2, v5, v1);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 144);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100258D9C()
{
  v1 = v0[31];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[21];
  v2 = v0[14];
  v21 = v0[18];
  v22 = v0[15];
  v3 = v0[13];
  v16 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v6 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  v10 = v9 + v8;
  v11 = (v10 + v6[14]);
  v12 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v13 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  v11[3] = &type metadata for String;
  v11[4] = &protocol witness table for String;
  *v11 = v5;
  v11[1] = v4;
  swift_errorRetain();

  sub_10003C9C0(v9);
  swift_setDeallocating();
  sub_10000BE18(v10, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v16);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002590BC()
{
  v1 = v0[26];

  v2 = v0[28];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v3 = v0[14];
  v22 = v0[18];
  v23 = v0[15];
  v4 = v0[13];
  v17 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v7 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  v11 = v10 + v9;
  v12 = (v11 + v7[14]);
  v13 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v14 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v14 - 8) + 104))(v11, v13, v14);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v6;
  v12[1] = v5;
  swift_errorRetain();

  sub_10003C9C0(v10);
  swift_setDeallocating();
  sub_10000BE18(v11, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v17);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002593E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_100007224(&qword_100835968, &qword_1006DBC90);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v36 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  swift_beginAccess();
  v18 = a1;
  sub_100267578(a1, v2 + v17, &qword_100835968, &qword_1006DBC90);
  swift_endAccess();
  sub_10000BBC4(v2 + v17, v16, &qword_100835968, &qword_1006DBC90);
  v19 = type metadata accessor for WorkflowRecommendationResponse();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v34 = v20 + 48;
  v35 = v21;
  LODWORD(a1) = v21(v16, 1, v19);
  sub_10000BE18(v16, &qword_100835968, &qword_1006DBC90);
  if (a1 == 1)
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "IdentityProofingPendingActionsFlow: updateProofingWorkflowStatus workflowRecommendationResponse is nil", v24, 2u);
    }

    return (*(v37 + 8))(v10, v38);
  }

  else
  {
    swift_beginAccess();
    sub_100267578(v18, v2 + v17, &qword_100835968, &qword_1006DBC90);
    swift_endAccess();
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Storing the workflow in the in-memory repository", v28, 2u);
    }

    (*(v37 + 8))(v8, v38);
    v29 = *(v2 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_actionsRepository);
    v30 = v36;
    sub_10000BBC4(v18, v36, &qword_100835968, &qword_1006DBC90);
    if (v35(v30, 1, v19) == 1)
    {

      v31 = sub_10000BE18(v30, &qword_100835968, &qword_1006DBC90);
      v39 = 0u;
      v40 = 0u;
      v41 = 0;
    }

    else
    {
      *(&v40 + 1) = type metadata accessor for Workflow();
      v41 = &off_100808FE8;
      v32 = sub_100032DBC(&v39);
      sub_100269FE8(v30, v32, type metadata accessor for Workflow);

      v31 = sub_100267A1C(v30, type metadata accessor for WorkflowRecommendationResponse);
    }

    v33 = *(v29 + 16);
    __chkstk_darwin(v31);
    *(&v34 - 2) = &v39;
    os_unfair_lock_lock(v33 + 14);
    sub_1002675E0(&v33[4]);
    os_unfair_lock_unlock(v33 + 14);

    return sub_10000BE18(&v39, &qword_10083D0A0, &qword_1006DAFC0);
  }
}

uint64_t sub_100259898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8572] = v3;
  v4[8571] = a3;
  v4[8570] = a2;
  v4[8569] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v4[8573] = v5;
  v6 = *(v5 - 8);
  v4[8574] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8575] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[8576] = v8;
  v9 = *(v8 - 8);
  v4[8577] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8578] = swift_task_alloc();
  v11 = *(*(sub_100007224(&qword_100835968, &qword_1006DBC90) - 8) + 64) + 15;
  v4[8579] = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_10083E3D0, &qword_1006DBCA8) - 8) + 64) + 15;
  v4[8580] = swift_task_alloc();
  v13 = *(*(sub_100007224(&unk_100840960, &qword_1006DBCB0) - 8) + 64) + 15;
  v4[8581] = swift_task_alloc();
  v4[8582] = swift_task_alloc();
  v4[8583] = swift_task_alloc();
  v14 = *(*(sub_100007224(&qword_100835970, &unk_1006C1EA0) - 8) + 64) + 15;
  v4[8584] = swift_task_alloc();
  v15 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v4[8585] = v15;
  v16 = *(v15 - 8);
  v4[8586] = v16;
  v17 = *(v16 + 64) + 15;
  v4[8587] = swift_task_alloc();

  return _swift_task_switch(sub_100259B24, 0, 0);
}

uint64_t sub_100259B24()
{
  v1 = (v0 + 68552);
  v2 = *(v0 + 68664);
  sub_10000BBC4(*(v0 + 68552), v2, &unk_100840960, &qword_1006DBCB0);
  v3 = type metadata accessor for PendingActionContext(0);
  v4 = *(*(v3 - 1) + 48);
  v5 = v4(v2, 1, v3);
  v6 = *(v0 + 68680);
  v7 = *(v0 + 68688);
  v9 = *(v0 + 68664);
  v8 = *(v0 + 68672);
  if (v5 == 1)
  {
    sub_10000BE18(*(v0 + 68664), &unk_100840960, &qword_1006DBCB0);
    (*(v7 + 56))(v8, 1, 1, v6);
LABEL_4:
    v11 = *(v0 + 68592);
    v10 = *(v0 + 68600);
    v12 = *(v0 + 68584);
    sub_10000BE18(*(v0 + 68672), &qword_100835970, &unk_1006C1EA0);
    (*(v11 + 104))(v10, enum case for DIPError.Code.missingLivenessStepUpConfig(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = *(v0 + 68696);
    v15 = *(v0 + 68664);
    v14 = *(v0 + 68672);
    v17 = *(v0 + 68648);
    v16 = *(v0 + 68656);
    v19 = *(v0 + 68632);
    v18 = *(v0 + 68640);
    v20 = *(v0 + 68624);
    v21 = *(v0 + 68600);

    v22 = *(v0 + 8);

    return v22();
  }

  sub_10000BBC4(v9 + v3[29], *(v0 + 68672), &qword_100835970, &unk_1006C1EA0);
  sub_100267A1C(v9, type metadata accessor for PendingActionContext);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  v24 = *(v0 + 68576);
  (*(*(v0 + 68688) + 32))(*(v0 + 68696), *(v0 + 68672), *(v0 + 68680));
  if (*(v24 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider))
  {
    v25 = *(v0 + 68696);
    v27 = *(v0 + 68560);
    v26 = *(v0 + 68568);

    v28 = sub_1002BDE0C(v25, v27, v26);
  }

  else
  {
    v28 = 0;
  }

  *(v0 + 68704) = 0;
  v29 = *(v0 + 68656);
  v30 = *(v0 + 68576);
  v31 = *v1;
  v32 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig;
  *(v0 + 68712) = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig;
  v33 = *(v30 + v32);
  *(v30 + v32) = v28;

  sub_10000BBC4(v31, v29, &unk_100840960, &qword_1006DBCB0);
  v34 = v4(v29, 1, v3);
  v35 = *(v0 + 68656);
  if (v34 == 1)
  {
    sub_10000BE18(*(v0 + 68656), &unk_100840960, &qword_1006DBCB0);
  }

  else
  {
    memcpy((v0 + 42936), (v35 + v3[30]), 0x2181uLL);
    sub_10000BBC4(v0 + 42936, v0 + 51520, &qword_100839990, &unk_1006C19E0);
    sub_100267A1C(v35, type metadata accessor for PendingActionContext);
    memcpy((v0 + 34352), (v0 + 42936), 0x2181uLL);
    if (sub_1001B6DC0(v0 + 34352) != 1)
    {
      v73 = *(v0 + 42920);
      v72 = *(v0 + 42928);
      v71 = *(v0 + 42904);
      v70 = *(v0 + 42912);
      v68 = *(v0 + 41840);
      v69 = *(v0 + 41836);
      v67 = *(v0 + 41824);
      v66 = *(v0 + 41832);
      v65 = *(v0 + 41808);
      v64 = *(v0 + 41816);
      v63 = *(v0 + 41792);
      v62 = *(v0 + 41800);
      v61 = *(v0 + 41776);
      v60 = *(v0 + 41784);
      v57 = *(v0 + 41772);
      v58 = *(v0 + 41768);
      v46 = *(v0 + 41760);
      memcpy((v0 + 67496), (v0 + 34368), 0x41BuLL);
      memcpy((v0 + 66440), (v0 + 35424), 0x41BuLL);
      memcpy((v0 + 65384), (v0 + 36480), 0x41BuLL);
      memcpy((v0 + 64328), (v0 + 37536), 0x41BuLL);
      memcpy((v0 + 63272), (v0 + 38592), 0x41BuLL);
      memcpy((v0 + 62216), (v0 + 39648), 0x41BuLL);
      memcpy((v0 + 61160), (v0 + 40704), 0x41BuLL);
      memcpy((v0 + 60104), (v0 + 41848), 0x41BuLL);
      v59 = *(v0 + 68712);
      v74 = *(v0 + 68704);
      v47 = *(v0 + 68576);
      *(v0 + 25768) = *(v0 + 34352);
      memcpy((v0 + 25784), (v0 + 67496), 0x41BuLL);
      memcpy((v0 + 26840), (v0 + 66440), 0x41BuLL);
      memcpy((v0 + 27896), (v0 + 65384), 0x41BuLL);
      memcpy((v0 + 28952), (v0 + 64328), 0x41BuLL);
      memcpy((v0 + 30008), (v0 + 63272), 0x41BuLL);
      memcpy((v0 + 31064), (v0 + 62216), 0x41BuLL);
      memcpy((v0 + 32120), (v0 + 61160), 0x41BuLL);
      *(v0 + 33176) = v46;
      *(v0 + 33184) = v58;
      *(v0 + 33188) = v57;
      *(v0 + 33192) = v61;
      *(v0 + 33200) = v60;
      *(v0 + 33208) = v63;
      *(v0 + 33216) = v62;
      *(v0 + 33224) = v65;
      *(v0 + 33232) = v64;
      *(v0 + 33240) = v67;
      *(v0 + 33248) = v66;
      *(v0 + 33252) = v69;
      *(v0 + 33256) = v68;
      memcpy((v0 + 33264), (v0 + 60104), 0x41BuLL);
      *(v0 + 34320) = v71;
      *(v0 + 34328) = v70;
      *(v0 + 34336) = v73;
      *(v0 + 34344) = v72;
      memcpy((v0 + 16), (v0 + 25768), 0x2181uLL);
      type metadata accessor for IdentityProofingImageQualitySettingsProvider();
      v48 = swift_allocObject();
      *(v48 + 16) = vdupq_n_s64(5uLL);
      *(v48 + 32) = 5;
      *(v48 + 40) = 1036831949;
      v49 = type metadata accessor for JSONEncoder();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      *(v48 + 48) = JSONEncoder.init()();
      *(v48 + 56) = xmmword_1006DAFF0;
      sub_1002B2220(v0 + 16);
    }
  }

  v36 = *(v0 + 68648);
  sub_10000BBC4(*v1, v36, &unk_100840960, &qword_1006DBCB0);
  v37 = v4(v36, 1, v3);
  v38 = *(v0 + 68648);
  if (v37 == 1)
  {
    v39 = &unk_100840960;
    v40 = &qword_1006DBCB0;
  }

  else
  {
    v41 = *(v0 + 68632);
    v42 = v3[18];
    v43 = *(v0 + 68648);
    sub_10000BBC4(v38 + v42, v41, &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v43, type metadata accessor for PendingActionContext);
    v44 = type metadata accessor for WorkflowRecommendationResponse();
    if ((*(*(v44 - 8) + 48))(v41, 1, v44) != 1)
    {
      v52 = *(v0 + 68632);
      sub_100269FE8(v52, *(v0 + 68640), type metadata accessor for Workflow);
      sub_100267A1C(v52, type metadata accessor for WorkflowRecommendationResponse);
      v45 = 0;
      goto LABEL_20;
    }

    v38 = *(v0 + 68632);
    v39 = &qword_100835968;
    v40 = &qword_1006DBC90;
  }

  sub_10000BE18(v38, v39, v40);
  v45 = 1;
LABEL_20:
  v53 = *(v0 + 68640);
  v54 = type metadata accessor for Workflow();
  (*(*(v54 - 8) + 56))(v53, v45, 1, v54);
  v55 = swift_task_alloc();
  *(v0 + 68720) = v55;
  *v55 = v0;
  v55[1] = sub_10025A6B8;
  v56 = *(v0 + 68640);

  return sub_10025E1F4(v0 + 17184, v56);
}

uint64_t sub_10025A6B8()
{
  v1 = *(*v0 + 68720);
  v2 = *(*v0 + 68640);
  v4 = *v0;

  sub_10000BE18(v2, &qword_10083E3D0, &qword_1006DBCA8);

  return _swift_task_switch(sub_10025A7F0, 0, 0);
}

uint64_t sub_10025A7F0()
{
  memcpy((v0 + 8600), (v0 + 17184), 0x2181uLL);
  if (sub_1001B6DC0(v0 + 8600) != 1)
  {
    v12 = *(v0 + 8600);
    v13 = *(v0 + 8608);
    memcpy((v0 + 67496), (v0 + 8616), 0x41BuLL);
    v32 = *(v0 + 16008);
    v30 = *(v0 + 16020);
    v31 = *(v0 + 16016);
    v34 = *(v0 + 16024);
    v33 = *(v0 + 16032);
    v36 = *(v0 + 16040);
    v35 = *(v0 + 16048);
    v38 = *(v0 + 16056);
    v37 = *(v0 + 16064);
    v40 = *(v0 + 16072);
    v39 = *(v0 + 16080);
    v41 = *(v0 + 16088);
    v42 = *(v0 + 16084);
    v45 = *(v0 + 17152);
    v46 = *(v0 + 17168);
    v43 = *(v0 + 17176);
    v44 = *(v0 + 17160);
    memcpy((v0 + 60104), (v0 + 16096), 0x41BuLL);
    memcpy((v0 + 61160), (v0 + 14952), 0x41BuLL);
    memcpy((v0 + 62216), (v0 + 13896), 0x41BuLL);
    memcpy((v0 + 63272), (v0 + 12840), 0x41BuLL);
    memcpy((v0 + 64328), (v0 + 11784), 0x41BuLL);
    memcpy((v0 + 65384), (v0 + 10728), 0x41BuLL);
    memcpy((v0 + 66440), (v0 + 9672), 0x41BuLL);
    v47 = *(v0 + 68712);
    v48 = *(v0 + 68704);
    v14 = *(v0 + 68576);
    *(v0 + 25768) = v12;
    *(v0 + 25776) = v13;
    memcpy((v0 + 25784), (v0 + 8616), 0x41BuLL);
    memcpy((v0 + 26840), (v0 + 9672), 0x41BuLL);
    memcpy((v0 + 27896), (v0 + 10728), 0x41BuLL);
    memcpy((v0 + 28952), (v0 + 11784), 0x41BuLL);
    memcpy((v0 + 30008), (v0 + 12840), 0x41BuLL);
    memcpy((v0 + 31064), (v0 + 13896), 0x41BuLL);
    memcpy((v0 + 32120), (v0 + 14952), 0x41BuLL);
    *(v0 + 33176) = v32;
    *(v0 + 33184) = v31;
    *(v0 + 33188) = v30 & 1;
    *(v0 + 33192) = v34;
    *(v0 + 33200) = v33 & 1;
    *(v0 + 33208) = v36;
    *(v0 + 33216) = v35 & 1;
    *(v0 + 33224) = v38;
    *(v0 + 33232) = v37 & 1;
    *(v0 + 33240) = v40;
    *(v0 + 33248) = v39 & 1;
    *(v0 + 33252) = v42;
    *(v0 + 33256) = v41 & 1;
    memcpy((v0 + 33264), (v0 + 16096), 0x41BuLL);
    *(v0 + 34320) = v45;
    *(v0 + 34328) = v44 & 1;
    *(v0 + 34336) = v46;
    *(v0 + 34344) = v43 & 1;
    memcpy((v0 + 16), (v0 + 25768), 0x2181uLL);
    type metadata accessor for IdentityProofingImageQualitySettingsProvider();
    v15 = swift_allocObject();
    *(v15 + 16) = vdupq_n_s64(5uLL);
    *(v15 + 32) = 5;
    *(v15 + 40) = 1036831949;
    v16 = type metadata accessor for JSONEncoder();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    *(v15 + 48) = JSONEncoder.init()();
    *(v15 + 56) = xmmword_1006DAFF0;
    sub_1002B2220(v0 + 16);
  }

  v1 = *(v0 + 68624);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 68688);
  v5 = *(v0 + 68696);
  v7 = *(v0 + 68680);
  v8 = *(v0 + 68616);
  v9 = *(v0 + 68624);
  v10 = *(v0 + 68608);
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch new IQ Model for Liveness Step Up.", v11, 2u);
  }

  (*(v8 + 8))(v9, v10);
  (*(v6 + 8))(v5, v7);
  v19 = *(v0 + 68696);
  v20 = *(v0 + 68664);
  v21 = *(v0 + 68672);
  v23 = *(v0 + 68648);
  v22 = *(v0 + 68656);
  v25 = *(v0 + 68632);
  v24 = *(v0 + 68640);
  v26 = *(v0 + 68624);
  v27 = *(v0 + 68600);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10025AE6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 784) = a4;
  *(v5 + 496) = a3;
  *(v5 + 504) = v4;
  *(v5 + 480) = a1;
  *(v5 + 488) = a2;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 512) = v6;
  v7 = *(v6 - 8);
  *(v5 + 520) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 528) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 536) = v9;
  v10 = *(v9 - 8);
  *(v5 + 544) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  v12 = type metadata accessor for ProofingSession();
  *(v5 + 568) = v12;
  v13 = *(v12 - 8);
  *(v5 + 576) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 584) = swift_task_alloc();
  v15 = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  *(v5 + 592) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v5 + 600) = swift_task_alloc();
  *(v5 + 608) = swift_task_alloc();
  v17 = *(*(sub_100007224(&qword_100835968, &qword_1006DBC90) - 8) + 64) + 15;
  *(v5 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_10025B078, 0, 0);
}

uint64_t sub_10025B078()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 504);
  v3 = type metadata accessor for WorkflowRecommendationResponse();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  swift_beginAccess();
  sub_1000B2764(v1, v2 + v4, &qword_100835968, &qword_1006DBC90);
  swift_endAccess();
  v5 = sub_10003D358(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v6 = *(v2 + 24);
  *(v2 + 24) = v5;

  if (*(v2 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_trigger) == 2)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_1002FA15C();
LABEL_5:
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_1000318FC(&v8[4], v0 + 16);
  os_unfair_lock_unlock(v8 + 54);
  v9 = *(v0 + 784);
  v10 = *(v0 + 488);
  v11 = *(v0 + 496);
  v12 = *(v0 + 480);
  v13 = *(v0 + 72);
  *(v0 + 624) = v13;

  sub_100031918(v0 + 16);
  v14 = swift_allocObject();
  *(v0 + 632) = v14;
  *(v14 + 16) = v11;
  *(v14 + 24) = v9 & 1;
  *(v14 + 32) = v12;
  *(v14 + 40) = v10;
  v15 = *(v13 + 16);
  v16 = swift_allocObject();
  *(v0 + 640) = v16;
  *(v16 + 16) = sub_1002674D4;
  *(v16 + 24) = v14;
  v17 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v18 = swift_task_alloc();
  *(v0 + 648) = v18;
  *v18 = v0;
  v18[1] = sub_10025B3D8;
  v19 = *(v0 + 608);
  v20 = *(v0 + 592);

  return AsyncCoreDataContainer.performRead<A>(_:)(v19, sub_10017F710, v16, v20);
}

uint64_t sub_10025B3D8()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v9 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v4 = sub_10025BB1C;
  }

  else
  {
    v5 = v2[80];
    v6 = v2[79];
    v7 = v2[78];

    v4 = sub_10025B50C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10025B50C()
{
  v1 = v0[75];
  v2 = v0[72];
  v3 = v0[71];
  sub_10000BBC4(v0[76], v1, &qword_10083DC18, &unk_1006DB720);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[75];
    sub_10000BE18(v0[76], &qword_10083DC18, &unk_1006DB720);
LABEL_22:
    sub_10000BE18(v4, &qword_10083DC18, &unk_1006DB720);
    v45 = v0[77];
    v46 = v0[76];
    v47 = v0[75];
    v48 = v0[73];
    v49 = v0[70];
    v50 = v0[69];
    v51 = v0[66];

    v52 = v0[1];

    return v52(0);
  }

  (*(v0[72] + 32))(v0[73], v0[75], v0[71]);
  v5 = ProofingSession.proofingSessionID.getter();
  v0[83] = v5;
  v0[84] = v6;
  if (!v6)
  {
    v4 = v0[76];
    (*(v0[72] + 8))(v0[73], v0[71]);
    goto LABEL_22;
  }

  v7 = v6;
  v8 = v5;
  v9 = v0[73];
  v10 = ProofingSession.workflowID.getter();
  v0[85] = v10;
  v0[86] = v11;
  if (!v11)
  {
    v4 = v0[76];
    v42 = v0[73];
    v43 = v0[72];
    v44 = v0[71];

    (*(v43 + 8))(v42, v44);
    goto LABEL_22;
  }

  v12 = v11;
  v13 = v10;
  v14 = v0[73];
  ProofingSession.target.getter();
  v0[87] = IdentityTarget.init(rawValue:)();
  if ((v15 & 1) != 0 || (v16 = v0[73], v0[88] = ProofingSession.credentialIdentifier.getter(), (v0[89] = v17) == 0))
  {
    v4 = v0[76];
    v39 = v0[73];
    v40 = v0[72];
    v41 = v0[71];

    (*(v40 + 8))(v39, v41);
    goto LABEL_22;
  }

  v18 = v0[73];
  ProofingSession.documentType.getter();
  if (v19)
  {
    v20 = v0[73];
    v21 = v0[70];
    v0[90] = IdentityDocumentType.init(documentTypeString:)();
    v22 = ProofingSession.country.getter();
    v24 = v23;
    v0[91] = v23;
    v69 = ProofingSession.lastExecutedActionIdentifier.getter();
    v0[92] = v25;
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Preparing pending actions request", v28, 2u);
    }

    if (v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    if (v24)
    {
      v30 = v22;
    }

    else
    {
      v30 = 0;
    }

    v67 = v30;
    v68 = v29;
    v31 = v0[70];
    v32 = v0[68];
    v33 = v0[67];
    v34 = v0[63];

    v35 = *(v32 + 8);
    v0[93] = v35;
    v35(v31, v33);
    v36 = *sub_10000BA08((v34 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService), *(v34 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService + 24));
    v37 = swift_task_alloc();
    v0[94] = v37;
    *v37 = v0;
    v37[1] = sub_10025BC00;

    return sub_10026CC1C((v0 + 27), v67, v68, v13, v12, v8, v7, v69);
  }

  else
  {
    v70 = v0[76];
    v53 = v0[73];
    v54 = v0[72];
    v55 = v0[71];
    v56 = v0[66];
    v57 = v0[65];
    v58 = v0[64];

    (*(v57 + 104))(v56, enum case for DIPError.Code.unexpectedIDType(_:), v58);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v54 + 8))(v53, v55);
    sub_10000BE18(v70, &qword_10083DC18, &unk_1006DB720);
    v59 = v0[77];
    v60 = v0[76];
    v61 = v0[75];
    v62 = v0[73];
    v63 = v0[70];
    v64 = v0[69];
    v65 = v0[66];

    v66 = v0[1];

    return v66();
  }
}

uint64_t sub_10025BB1C()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];

  v4 = v0[82];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[73];
  v9 = v0[70];
  v10 = v0[69];
  v11 = v0[66];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10025BC00()
{
  v2 = *(*v1 + 752);
  v5 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_10025BE98;
  }

  else
  {
    v3 = sub_10025BD14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10025BD14()
{
  v1 = v0[95];
  sub_10025D7E8((v0 + 27), v0[83], v0[84], v0[87]);
  if (v1)
  {
    v2 = v0[69];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to store the document sub type", v5, 2u);
    }

    v6 = v0[93];
    v7 = v0[69];
    v8 = v0[68];
    v9 = v0[67];

    v6(v7, v9);
  }

  v10 = v0[84];
  v11 = swift_task_alloc();
  v0[96] = v11;
  *v11 = v0;
  v11[1] = sub_10025C2D4;
  v12 = v0[87];
  v13 = v0[83];
  v14 = v0[63];

  return sub_100230F44((v0 + 27), v13, v10, v12);
}

uint64_t sub_10025BE98()
{
  v28 = v0[95];
  v34 = v0[92];
  v1 = v0[90];
  v23 = v0[85];
  v24 = v0[86];
  v29 = v0[89];
  v30 = v0[84];
  v35 = v0[76];
  v33 = v0[73];
  v31 = v0[72];
  v32 = v0[71];
  v26 = v0[65];
  v27 = v0[66];
  v0[91];
  v25 = v0[64];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF740;
  v6 = v5 + v4;
  v7 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = 0x61746E6567616DLL;
  if (v1 == 3)
  {
    v10 = 0x6E6F736D697263;
  }

  v11 = *(v2 + 48);
  v12 = (v6 + v11);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v10;
  v12[1] = 0xE700000000000000;
  v13 = (v6 + v3 + v11);
  v9();
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = v23;
  v13[1] = v24;

  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v26 + 104))(v27, enum case for DIPError.Code.internalError(_:), v25);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v31 + 8))(v33, v32);
  sub_10000BE18(v35, &qword_10083DC18, &unk_1006DB720);
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[73];
  v18 = v0[70];
  v19 = v0[69];
  v20 = v0[66];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10025C2D4()
{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v6 = *v1;
  *(v2 + 776) = v0;

  sub_1000B1D80(v2 + 216);
  if (v0)
  {
    v4 = sub_10025C694;
  }

  else
  {
    v4 = sub_10025C3F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10025C3F0()
{
  v1 = v0[92];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[84];
  v6 = v0[83];
  v28 = v0[73];
  v29 = v0[76];
  v7 = v0[72];
  v26 = v0[89];
  v27 = v0[71];
  v0[91];

  _StringGuts.grow(_:)(61);
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x8000000100707730;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v6;
  v9._object = v5;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x72617420726F6620;
  v10._object = 0xED0000203A746567;
  String.append(_:)(v10);
  v11._countAndFlagsBits = IdentityTarget.debugDescription.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0;
  v13._countAndFlagsBits = 0x3964373763333437;
  v13._object = 0xE800000000000000;
  v12._object = 0xE000000000000000;
  logMilestone(tag:description:)(v13, v12);

  sub_100007224(&qword_10083E3C0, &qword_1006DBC98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100707760;
  type metadata accessor for IdentityProofingMetadata();
  v15 = swift_allocObject();
  v15[2] = v6;
  v15[3] = v5;
  v15[4] = v3;
  v15[5] = v2;
  v15[6] = v26;
  *(inited + 48) = v15;
  v16 = sub_10003DF7C(inited);
  swift_setDeallocating();
  sub_10000BE18(inited + 32, &qword_10083E3C8, &qword_1006DBCA0);
  (*(v7 + 8))(v28, v27);
  sub_10000BE18(v29, &qword_10083DC18, &unk_1006DB720);
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[73];
  v21 = v0[70];
  v22 = v0[69];
  v23 = v0[66];

  v24 = v0[1];

  return v24(v16);
}

uint64_t sub_10025C694()
{
  v28 = v0[97];
  v34 = v0[92];
  v1 = v0[90];
  v23 = v0[85];
  v24 = v0[86];
  v29 = v0[89];
  v30 = v0[84];
  v35 = v0[76];
  v33 = v0[73];
  v31 = v0[72];
  v32 = v0[71];
  v26 = v0[65];
  v27 = v0[66];
  v0[91];
  v25 = v0[64];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF740;
  v6 = v5 + v4;
  v7 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = 0x61746E6567616DLL;
  if (v1 == 3)
  {
    v10 = 0x6E6F736D697263;
  }

  v11 = *(v2 + 48);
  v12 = (v6 + v11);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v10;
  v12[1] = 0xE700000000000000;
  v13 = (v6 + v3 + v11);
  v9();
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = v23;
  v13[1] = v24;

  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v26 + 104))(v27, enum case for DIPError.Code.internalError(_:), v25);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v31 + 8))(v33, v32);
  sub_10000BE18(v35, &qword_10083DC18, &unk_1006DB720);
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[73];
  v18 = v0[70];
  v19 = v0[69];
  v20 = v0[66];

  v21 = v0[1];

  return v21();
}

unint64_t sub_10025CAD0@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    if (a4)
    {
      result = sub_1005792EC(a3, a4);
      if (v5)
      {
        return result;
      }

      if (result)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_18;
  }

  if (!a4)
  {
LABEL_18:
    v27 = type metadata accessor for ProofingSession();
    return (*(*(v27 - 8) + 56))(a5, 1, 1, v27);
  }

  v30 = a1;
  v31 = v14;
  defaultLogger()();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = a5;
    v21 = v20;
    v32 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100141FE4(a3, a4, &v32);
    _os_log_impl(&_mh_execute_header, v17, v18, "Requesting pending actions with proofingSessionID: %s", v19, 0xCu);
    sub_10000BB78(v21);
    a5 = v29;
  }

  (*(v12 + 8))(v16, v31);
  result = sub_1005791C8(a3, a4);
  if (v5)
  {
    return result;
  }

  if (result >> 62)
  {
    v25 = result;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    result = v25;
    if (v26)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_8:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(result + 32);
LABEL_11:

LABEL_15:
    ProofingSession.init(_:)();
    v24 = type metadata accessor for ProofingSession();
    return (*(*(v24 - 8) + 56))(a5, 0, 1, v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_10025CDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() standardUserDefaults];
  v14._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRemoveDisplayMessageAction.getter();
  v15 = NSUserDefaults.internalBool(forKey:)(v14);

  if (v15)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Internal setting for forceRemoveDisplayMessageAction has been enabled", v18, 2u);
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    swift_beginAccess();
    v19 = *(v4 + 24);
    if (*(v19 + 16))
    {
      v20 = *(v4 + 24);

      v21 = sub_10003ADCC(a1, a2);
      if (v22)
      {
        v23 = v21;
        v24 = *(v19 + 56);
        v25 = type metadata accessor for IdentityProofingDisplayMessage();
        v26 = *(v25 - 8);
        (*(v26 + 16))(a3, v24 + *(v26 + 72) * v23, v25);

        return (*(v26 + 56))(a3, 0, 1, v25);
      }
    }
  }

  v28 = type metadata accessor for IdentityProofingDisplayMessage();
  return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
}

char *sub_10025D0C4()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpIQSettings);
    if (v7)
    {
      v5 = v6;
      v8 = v7;
    }

    else
    {
      (*(v3 + 104))(v5, enum case for DIPError.Code.invalidImageQualitySettings(_:));
      v9 = v6;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v3 + 104))(v5, enum case for DIPError.Code.missingLivenessStepUpConfig(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10025D3BC()
{
  v1 = *(v0 + 24);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse, &qword_100835968, &qword_1006DBC90);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_paymentService, &unk_100833B60, &qword_1006BF9E0);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService));
  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_userNotificationProvider);

  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_expirationActionProvider);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_staticWorkflow, &qword_10083D4B0, &qword_1006DC940);
  v5 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_cleanupProvider);

  v6 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_biomeManager);

  v7 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_credentialProvider);

  v8 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_identityWatchProvisioningManagerFactory);

  v9 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_actionsRepository);

  return v0;
}

uint64_t sub_10025D514()
{
  sub_10025D3BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingPendingActionsFlow()
{
  result = qword_10083E010;
  if (!qword_10083E010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10025D5C0()
{
  sub_10025D72C(319, &qword_100835A00, type metadata accessor for WorkflowRecommendationResponse);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10025D72C(319, &qword_10083D100, type metadata accessor for IdentityProofingStaticWorkflow);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10025D72C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_10025D794()
{
  result = qword_10083E3B8;
  if (!qword_10083E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083E3B8);
  }

  return result;
}

void sub_10025D7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v35 = a4;
  v36 = a1;
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v13;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Attempting to save the ID Type sent from the server", v18, 2u);
    v13 = v32;
  }

  v19 = *(v9 + 8);
  v19(v15, v8);
  if (*(v36 + 152) == 1 || (v20 = *(v36 + 136), v20 == 3))
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "ID TYPE not sent from the server", v30, 2u);
    }

    v19(v13, v8);
  }

  else
  {
    v21 = qword_1006DBE80[v20];
    type metadata accessor for IdentityProofingDataContext();
    swift_allocObject();
    v22 = v37;
    sub_10057E28C();
    if (!v22)
    {
      v24 = v23;
      v25 = swift_allocObject();
      v27 = v34;
      v26 = v35;
      v25[2] = v24;
      v25[3] = v27;
      v25[4] = a3;
      v25[5] = v26;
      v25[6] = v21;

      sub_10057C18C(sub_100267538, v25);
    }
  }
}

unint64_t sub_10025DC8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F86A0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10025DCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v21 = a2;
  v5 = type metadata accessor for Logger();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  v7 = __chkstk_darwin(v5);
  v26 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for ActionRequest(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v15 = v14;
  sub_100269FE8(a1, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionRequest);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v19 = v21;
  v18 = v22;
  v17[2] = v15;
  v17[3] = v19;
  v17[4] = v23;
  v17[5] = v18;
  sub_100269F80(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ActionRequest);

  sub_10057C18C(sub_100269E0C, v17);
}

uint64_t sub_10025E1F4(uint64_t a1, uint64_t a2)
{
  v2[3261] = a2;
  v2[3260] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[3262] = v3;
  v4 = *(v3 - 8);
  v2[3263] = v4;
  v5 = *(v4 + 64) + 15;
  v2[3264] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[3265] = v6;
  v7 = *(v6 - 8);
  v2[3266] = v7;
  v8 = *(v7 + 64) + 15;
  v2[3267] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[3268] = v9;
  v10 = *(v9 - 8);
  v2[3269] = v10;
  v11 = *(v10 + 64) + 15;
  v2[3270] = swift_task_alloc();
  v2[3271] = swift_task_alloc();
  v2[3272] = swift_task_alloc();
  v2[3273] = swift_task_alloc();
  v12 = type metadata accessor for Locale.Language();
  v2[3274] = v12;
  v13 = *(v12 - 8);
  v2[3275] = v13;
  v14 = *(v13 + 64) + 15;
  v2[3276] = swift_task_alloc();
  v15 = *(*(sub_100007224(&qword_10083DC48, &unk_1006DB7B0) - 8) + 64) + 15;
  v2[3277] = swift_task_alloc();
  v16 = type metadata accessor for Locale();
  v2[3278] = v16;
  v17 = *(v16 - 8);
  v2[3279] = v17;
  v18 = *(v17 + 64) + 15;
  v2[3280] = swift_task_alloc();
  v2[3281] = swift_task_alloc();
  v19 = *(*(sub_100007224(&unk_100849BA0, &qword_1006D95F0) - 8) + 64) + 15;
  v2[3282] = swift_task_alloc();
  v20 = *(*(sub_100007224(&qword_10083E3D0, &qword_1006DBCA8) - 8) + 64) + 15;
  v2[3283] = swift_task_alloc();

  return _swift_task_switch(sub_10025E500, 0, 0);
}

uint64_t sub_10025E500()
{
  v108 = v0;
  v1 = *(v0 + 26264);
  sub_10000BBC4(*(v0 + 26088), v1, &qword_10083E3D0, &qword_1006DBCA8);
  v2 = type metadata accessor for Workflow();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 26160);
    v4 = *(v0 + 26152);
    v5 = *(v0 + 26144);
    v6 = *(v0 + 26112);
    v7 = *(v0 + 26104);
    v8 = *(v0 + 26096);
    sub_10000BE18(*(v0 + 26264), &qword_10083E3D0, &qword_1006DBCA8);
    (*(v7 + 104))(v6, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v4 + 8))(v3, v5);

    sub_1000F09E4((v0 + 16));
    v9 = *(v0 + 26264);
    v10 = *(v0 + 26256);
    v11 = *(v0 + 26248);
    v12 = *(v0 + 26240);
    v13 = *(v0 + 26216);
    v14 = *(v0 + 26208);
    v15 = *(v0 + 26184);
    v16 = *(v0 + 26176);
    v17 = *(v0 + 26168);
    v18 = *(v0 + 26160);
    v101 = *(v0 + 26136);
    v103 = *(v0 + 26112);
    v105 = *(v0 + 26080);

    memcpy(v105, (v0 + 16), 0x2181uLL);
    v19 = *(v0 + 8);

    return v19();
  }

  v21 = *(v0 + 26264);
  v104 = *v21;
  v106 = v21[1];

  sub_100267A1C(v21, type metadata accessor for Workflow);
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 infoDictionary];

  if (!v23 || (v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v23, !v24))
  {
    v28 = 0xE700000000000000;
    v100 = 0x6E776F6E6B6E75;
    v102 = 0xE700000000000000;
    v98 = 0x6E776F6E6B6E75;
LABEL_13:
    v99 = v28;
    goto LABEL_21;
  }

  if (*(v24 + 16))
  {

    v25 = sub_10003ADCC(0xD000000000000011, 0x8000000100706F10);
    if (v26)
    {
      sub_10001F2EC(*(v24 + 56) + 32 * v25, v0 + 25984);

      if (swift_dynamicCast())
      {
        v27 = *(v0 + 26064);
        v100 = v27;
        v102 = *(v0 + 26072);
        if (!*(v24 + 16))
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v100 = 0x6E776F6E6B6E75;
  v102 = 0xE700000000000000;
  if (!*(v24 + 16))
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_16:
  v29 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556);
  if ((v30 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_10001F2EC(*(v24 + 56) + 32 * v29, v0 + 26016);

  if (swift_dynamicCast())
  {
    v98 = *(v0 + 26048);
    v28 = *(v0 + 26056);
    goto LABEL_13;
  }

LABEL_20:
  v98 = 0x6E776F6E6B6E75;
  v99 = 0xE700000000000000;
LABEL_21:
  v31 = *(v0 + 26256);
  v32 = *(v0 + 26248);
  v33 = *(v0 + 26232);
  v34 = *(v0 + 26224);
  static Locale.current.getter();
  Locale.region.getter();
  v35 = *(v33 + 8);
  v35(v32, v34);
  v36 = type metadata accessor for Locale.Region();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v31, 1, v36);
  v39 = *(v0 + 26256);
  if (v38 == 1)
  {
    sub_10000BE18(*(v0 + 26256), &unk_100849BA0, &qword_1006D95F0);
    v96 = 0x6E776F6E6B6E75;
    v97 = 0xE700000000000000;
  }

  else
  {
    v96 = Locale.Region.identifier.getter();
    v97 = v40;
    (*(v37 + 8))(v39, v36);
  }

  v41 = *(v0 + 26240);
  v42 = *(v0 + 26224);
  v43 = *(v0 + 26216);
  v44 = *(v0 + 26208);
  v45 = *(v0 + 26200);
  v46 = *(v0 + 26192);
  static Locale.current.getter();
  Locale.language.getter();
  v35(v41, v42);
  Locale.Language.languageCode.getter();
  (*(v45 + 8))(v44, v46);
  v47 = type metadata accessor for Locale.LanguageCode();
  v48 = *(v47 - 8);
  v49 = (*(v48 + 48))(v43, 1, v47);
  v50 = *(v0 + 26216);
  if (v49 == 1)
  {
    sub_10000BE18(*(v0 + 26216), &qword_10083DC48, &unk_1006DB7B0);
    v95 = 0xE700000000000000;
    v51 = 0x6E776F6E6B6E75;
  }

  else
  {
    v51 = Locale.LanguageCode.identifier.getter();
    v95 = v52;
    (*(v48 + 8))(v50, v47);
  }

  v53 = [objc_opt_self() standardUserDefaults];
  v54._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceIMQModelBucket.getter();
  v55 = NSUserDefaults.internalString(forKey:)(v54);

  if (!v55.value._object)
  {
LABEL_30:
    if (isInternalBuild()())
    {
      v57 = *(v0 + 26176);
      defaultLogger()();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 26176);
      v62 = *(v0 + 26152);
      v63 = *(v0 + 26144);
      if (v60)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Using internal build imq bucket", v64, 2u);
      }

      (*(v62 + 8))(v61, v63);
      v65 = 3;
    }

    else
    {
      v66 = *(v0 + 26168);
      defaultLogger()();
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();
      v69 = os_log_type_enabled(v67, v68);
      v70 = *(v0 + 26168);
      v71 = *(v0 + 26152);
      v72 = *(v0 + 26144);
      if (v69)
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Using production imq bucket", v73, 2u);
      }

      (*(v71 + 8))(v70, v72);
      v65 = 1;
    }

    goto LABEL_40;
  }

  v56 = sub_100082140(v55.value);
  if (v56 == 4)
  {

    goto LABEL_30;
  }

  v65 = v56;
  v74 = *(v0 + 26184);
  defaultLogger()();

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();

  v77 = os_log_type_enabled(v75, v76);
  v78 = *(v0 + 26184);
  v79 = *(v0 + 26152);
  v94 = *(v0 + 26144);
  if (v77)
  {
    v93 = v51;
    v80 = swift_slowAlloc();
    v92 = v78;
    v81 = swift_slowAlloc();
    v107 = v81;
    *v80 = 136315138;
    v82 = sub_100141FE4(v55.value._countAndFlagsBits, v55.value._object, &v107);

    *(v80 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v75, v76, "Forcing imq profile bucket %s from internal settings", v80, 0xCu);
    sub_10000BB78(v81);

    v51 = v93;

    (*(v79 + 8))(v92, v94);
  }

  else
  {

    (*(v79 + 8))(v78, v94);
  }

LABEL_40:
  v83 = *(v0 + 26136);
  v84 = *(v0 + 26128);
  v85 = *(v0 + 26120);
  *(v0 + 25856) = v104;
  *(v0 + 25864) = v106;
  *(v0 + 25872) = v100;
  *(v0 + 25880) = v102;
  *(v0 + 25888) = v98;
  *(v0 + 25896) = v99;
  *(v0 + 25904) = v96;
  *(v0 + 25912) = v97;
  *(v0 + 25920) = v51;
  *(v0 + 25936) = v65;
  *(v0 + 25928) = v95;
  v86 = *(v0 + 25872);
  *(v0 + 25768) = *(v0 + 25856);
  *(v0 + 25784) = v86;
  v87 = *(v0 + 25888);
  v88 = *(v0 + 25904);
  v89 = *(v0 + 25920);
  *(v0 + 25848) = v65;
  *(v0 + 25816) = v88;
  *(v0 + 25832) = v89;
  *(v0 + 25800) = v87;
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 26272) = v90;
  (*(v84 + 8))(v83, v85);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v91 = swift_task_alloc();
  *(v0 + 26280) = v91;
  *v91 = v0;
  v91[1] = sub_10025F024;

  return (sub_1005FB45C)(v0 + 25944, 0, 0, 0, 0);
}

uint64_t sub_10025F024(uint64_t a1)
{
  v3 = *v1;
  v4 = (*v1)[3285];
  v5 = (*v1)[3284];
  v8 = *v1;
  v3[3286] = a1;

  sub_10000BB78(v3 + 3243);
  v6 = swift_task_alloc();
  v3[3287] = v6;
  *v6 = v8;
  v6[1] = sub_10025F1A0;

  return sub_1005ECD74((v3 + 1075), (v3 + 3221));
}

uint64_t sub_10025F1A0()
{
  v2 = *(*v1 + 26296);
  v3 = *v1;
  *(v3 + 26304) = v0;

  if (v0)
  {

    sub_1000AFF90(v3 + 25856);

    return _swift_task_switch(sub_10025F400, 0, 0);
  }

  else
  {
    v4 = *(v3 + 26288);
    sub_1000AFF90(v3 + 25856);

    memcpy((v3 + 17184), (v3 + 8600), 0x2181uLL);
    nullsub_7(v3 + 17184);
    memcpy((v3 + 16), (v3 + 17184), 0x2181uLL);
    v5 = *(v3 + 26264);
    v6 = *(v3 + 26256);
    v7 = *(v3 + 26248);
    v8 = *(v3 + 26240);
    v9 = *(v3 + 26216);
    v10 = *(v3 + 26208);
    v11 = *(v3 + 26184);
    v12 = *(v3 + 26176);
    v13 = *(v3 + 26168);
    v16 = *(v3 + 26160);
    v17 = *(v3 + 26136);
    v18 = *(v3 + 26112);
    __dst = *(v3 + 26080);

    memcpy(__dst, (v3 + 16), 0x2181uLL);
    v14 = *(v3 + 8);

    return v14();
  }
}

uint64_t sub_10025F400()
{
  v1 = *(v0 + 26304);
  v2 = *(v0 + 26160);
  v3 = *(v0 + 26152);
  __dst = *(v0 + 26144);
  (*(*(v0 + 26104) + 104))(*(v0 + 26112), enum case for DIPError.Code.internalError(_:), *(v0 + 26096));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, __dst);

  sub_1000F09E4((v0 + 16));
  v4 = *(v0 + 26264);
  v5 = *(v0 + 26256);
  v6 = *(v0 + 26248);
  v7 = *(v0 + 26240);
  v8 = *(v0 + 26216);
  v9 = *(v0 + 26208);
  v10 = *(v0 + 26184);
  v11 = *(v0 + 26176);
  v12 = *(v0 + 26168);
  v13 = *(v0 + 26160);
  v16 = *(v0 + 26136);
  v17 = *(v0 + 26112);
  __dsta = *(v0 + 26080);

  memcpy(__dsta, (v0 + 16), 0x2181uLL);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10025F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[73] = a4;
  v4[72] = a3;
  v4[71] = a2;
  v4[70] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v4[74] = v5;
  v6 = *(v5 - 8);
  v4[75] = v6;
  v7 = *(v6 + 64) + 15;
  v4[76] = swift_task_alloc();
  v8 = type metadata accessor for String.Encoding();
  v4[77] = v8;
  v9 = *(v8 - 8);
  v4[78] = v9;
  v10 = *(v9 + 64) + 15;
  v4[79] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[80] = v11;
  v12 = *(v11 - 8);
  v4[81] = v12;
  v13 = *(v12 + 64) + 15;
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();

  return _swift_task_switch(sub_10025F810, 0, 0);
}

uint64_t sub_10025F810()
{
  v27 = v0;
  v1 = v0[83];
  v2 = v0[71];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[83];
  v7 = v0[81];
  v8 = v0[80];
  if (v5)
  {
    v9 = v0[71];
    v10 = v0[70];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v26);
    _os_log_impl(&_mh_execute_header, v3, v4, "Storing PII hash in keychain with identifier: %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v7 + 8);
  v13(v6, v8);
  v0[84] = v13;
  if (v0[73])
  {
    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v14 = v0[72];
    v15 = *(qword_100882228 + 16);
    v0[85] = v15;
    v16 = v15;

    v17 = String._bridgeToObjectiveC()();
    v0[86] = v17;

    v0[2] = v0;
    v0[7] = v0 + 66;
    v0[3] = sub_10025FC38;
    v18 = swift_continuation_init();
    v19 = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
    v0[87] = v19;
    v0[41] = v19;
    v0[34] = _NSConcreteStackBlock;
    v0[35] = 1107296256;
    v0[36] = sub_100672A4C;
    v0[37] = &unk_10080B2A8;
    v0[38] = v18;
    [v16 retrievePIIHashFromSyncableKeyStoreForIdentifier:v17 keystoreType:0 completion:v0 + 34];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    (*(v0[75] + 104))(v0[76], enum case for DIPError.Code.failedTOStorePIIHashInKeychainCredentialIDIsNil(_:), v0[74]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v20 = v0[83];
    v21 = v0[82];
    v22 = v0[79];
    v23 = v0[76];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_10025FC38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 704) = v2;
  if (v2)
  {
    v3 = sub_100260754;
  }

  else
  {
    v3 = sub_10025FD48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10025FD48()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 528);
  v5 = *(v0 + 536);

  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;

  *(v0 + 712) = v6;
  *(v0 + 720) = v8;
  (*(v2 + 8))(v1, v3);
  if (v8 >> 60 == 15)
  {
    v9 = *(v0 + 680);
    (*(*(v0 + 600) + 104))(*(v0 + 608), enum case for DIPError.Code.failedToStoreHashIsNil(_:), *(v0 + 592));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10 = *(v0 + 664);
    v11 = *(v0 + 656);
    v12 = *(v0 + 632);
    v13 = *(v0 + 608);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 696);
    v17 = *(v0 + 680);
    v21 = *(v0 + 560);
    v22 = *(v0 + 568);

    v18._countAndFlagsBits = 0x7361682D6969702DLL;
    v18._object = 0xE900000000000068;
    String.append(_:)(v18);
    *(v0 + 728) = v21;
    *(v0 + 736) = v22;
    v19 = String._bridgeToObjectiveC()();
    *(v0 + 744) = v19;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 544;
    *(v0 + 88) = sub_100260098;
    v20 = swift_continuation_init();
    *(v0 + 392) = v16;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_100672A4C;
    *(v0 + 360) = &unk_10080B2D0;
    *(v0 + 368) = v20;
    [v17 retrievePIIHashFromSyncableKeyStoreForIdentifier:v19 keystoreType:1 completion:v0 + 336];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_100260098()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 752) = v2;
  if (v2)
  {
    v3 = sub_100260804;
  }

  else
  {
    v3 = sub_1002601A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002601A8()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[85];
  v5 = v0[69];

  v6 = String._bridgeToObjectiveC()();
  v0[95] = v6;
  v0[26] = v0;
  v0[27] = sub_1002602F8;
  v7 = swift_continuation_init();
  v0[65] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[58] = _NSConcreteStackBlock;
  v0[59] = 1107296256;
  v0[60] = sub_100429100;
  v0[61] = &unk_10080B320;
  v0[62] = v7;
  [v4 deletePIIHashFromSyncableKeyStoreForIdentifier:v6 keystoreType:1 completion:v0 + 58];

  return _swift_continuation_await(v0 + 26);
}

uint64_t sub_1002602F8()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 768) = v2;
  if (v2)
  {
    v3 = sub_100260A30;
  }

  else
  {
    v3 = sub_100260408;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100260408()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 680);
  v6 = String._bridgeToObjectiveC()();
  *(v0 + 776) = v6;

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 784) = isa;
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_10026057C;
  v8 = swift_continuation_init();
  *(v0 + 456) = sub_100007224(&unk_100843590, &qword_1006D8B10);
  *(v0 + 400) = _NSConcreteStackBlock;
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_100429100;
  *(v0 + 424) = &unk_10080B2F8;
  *(v0 + 432) = v8;
  [v5 storePIIHashInSyncableKeyStoreForIdentifier:v6 data:isa keystoreType:1 completion:v0 + 400];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_10026057C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 792) = v2;
  if (v2)
  {
    v3 = sub_100260C5C;
  }

  else
  {
    v3 = sub_10026068C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026068C()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[85];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[79];
  v7 = v0[76];
  sub_10000BD94(v0[89], v0[90]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100260754()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = v0[85];
  swift_willThrow();

  v4 = v0[88];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[79];
  v8 = v0[76];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100260804()
{
  v1 = v0[94];
  v2 = v0[93];
  swift_willThrow();

  v3 = v0[94];
  v4 = v0[82];
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[84];
  v9 = v0[82];
  v10 = v0[81];
  v11 = v0[80];
  if (v7)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "No existing hash - will proceed to store new hash ", v12, 2u);
  }

  v8(v9, v11);
  v13 = v0[92];
  v14 = v0[91];
  v15 = v0[90];
  v16 = v0[89];
  v17 = v0[85];
  v18 = String._bridgeToObjectiveC()();
  v0[97] = v18;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[98] = isa;
  v0[18] = v0;
  v0[19] = sub_10026057C;
  v20 = swift_continuation_init();
  v0[57] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[50] = _NSConcreteStackBlock;
  v0[51] = 1107296256;
  v0[52] = sub_100429100;
  v0[53] = &unk_10080B2F8;
  v0[54] = v20;
  [v17 storePIIHashInSyncableKeyStoreForIdentifier:v18 data:isa keystoreType:1 completion:v0 + 50];

  return _swift_continuation_await(v0 + 18);
}

uint64_t sub_100260A30()
{
  v1 = v0[96];
  v2 = v0[95];
  swift_willThrow();

  v3 = v0[96];
  v4 = v0[82];
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[84];
  v9 = v0[82];
  v10 = v0[81];
  v11 = v0[80];
  if (v7)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "No existing hash - will proceed to store new hash ", v12, 2u);
  }

  v8(v9, v11);
  v13 = v0[92];
  v14 = v0[91];
  v15 = v0[90];
  v16 = v0[89];
  v17 = v0[85];
  v18 = String._bridgeToObjectiveC()();
  v0[97] = v18;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[98] = isa;
  v0[18] = v0;
  v0[19] = sub_10026057C;
  v20 = swift_continuation_init();
  v0[57] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[50] = _NSConcreteStackBlock;
  v0[51] = 1107296256;
  v0[52] = sub_100429100;
  v0[53] = &unk_10080B2F8;
  v0[54] = v20;
  [v17 storePIIHashInSyncableKeyStoreForIdentifier:v18 data:isa keystoreType:1 completion:v0 + 50];

  return _swift_continuation_await(v0 + 18);
}

uint64_t sub_100260C5C()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[85];
  swift_willThrow();
  sub_10000BD94(v5, v4);

  v7 = v0[99];
  v8 = v0[83];
  v9 = v0[82];
  v10 = v0[79];
  v11 = v0[76];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100260D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[122] = a6;
  v6[121] = a5;
  v6[120] = a4;
  v6[119] = a3;
  v6[118] = a2;
  v6[117] = a1;
  v7 = type metadata accessor for DIPError.Code();
  v6[123] = v7;
  v8 = *(v7 - 8);
  v6[124] = v8;
  v9 = *(v8 + 64) + 15;
  v6[125] = swift_task_alloc();
  v10 = type metadata accessor for String.Encoding();
  v6[126] = v10;
  v11 = *(v10 - 8);
  v6[127] = v11;
  v12 = *(v11 + 64) + 15;
  v6[128] = swift_task_alloc();
  v13 = *(*(sub_100007224(&unk_100840960, &qword_1006DBCB0) - 8) + 64) + 15;
  v6[129] = swift_task_alloc();
  v14 = type metadata accessor for PendingActionContext(0);
  v6[130] = v14;
  v15 = *(v14 - 8);
  v6[131] = v15;
  v6[132] = *(v15 + 64);
  v6[133] = swift_task_alloc();
  v6[134] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[135] = v16;
  v17 = *(v16 - 8);
  v6[136] = v17;
  v18 = *(v17 + 64) + 15;
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v6[145] = swift_task_alloc();
  v6[146] = swift_task_alloc();

  return _swift_task_switch(sub_100260FD0, 0, 0);
}

uint64_t sub_100260FD0()
{
  v118 = v0;
  v1 = v0[146];
  v2 = v0[118];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[146];
  v7 = v0[136];
  v8 = v0[135];
  if (v5)
  {
    v9 = v0[118];
    v10 = v0[117];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v117 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v117);
    _os_log_impl(&_mh_execute_header, v3, v4, "SEID is %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v7 + 8);
  v13(v6, v8);
  v0[147] = v13;
  v14 = v0[131];
  v15 = v0[130];
  v16 = v0[129];
  sub_10000BBC4(v0[119], v16, &unk_100840960, &qword_1006DBCB0);
  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    v17 = v0[139];
    sub_10000BE18(v0[129], &unk_100840960, &qword_1006DBCB0);
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[139];
    v22 = v0[136];
    v23 = v0[135];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to fetch pendingActionsContext, will not be able to save watch provisioning data", v24, 2u);
    }

    v13(v21, v23);
    goto LABEL_24;
  }

  v25 = v0[134];
  v26 = v0[130];
  sub_100269F80(v0[129], v25, type metadata accessor for PendingActionContext);
  v27 = *(v25 + *(v26 + 80));
  if (!v27 || !*(v27 + 16) || (v28 = sub_10003ADCC(v0[117], v0[118]), (v29 & 1) == 0))
  {
    v49 = v0[140];
    defaultLogger()();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to fetch provisioningContext from pendingActionsContext, will not be able to save watch provisioning data", v52, 2u);
    }

    v53 = v0[140];
    v54 = v0[136];
    v55 = v0[135];
    v56 = v0[134];

    v13(v53, v55);
    v57 = v56;
    goto LABEL_23;
  }

  v30 = v0[134];
  v31 = (*(v27 + 56) + 24 * v28);
  v0[148] = *v31;
  v32 = v31[1];
  v0[149] = v32;
  v33 = v31[2];
  v0[150] = v33;
  v0[151] = *v30;
  v34 = v30[1];
  v0[152] = v34;
  if (!v34)
  {
    v69 = v0[141];
    sub_10000B8B8(v32, v33);
    sub_10000B8B8(v32, v33);
    defaultLogger()();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "provisioningCredentialIdentifier unavailable, will not be able to save watch provisioning data", v72, 2u);

      sub_10000B90C(v32, v33);
    }

    else
    {
      sub_10000B90C(v32, v33);
    }

    v73 = v0[141];
    goto LABEL_43;
  }

  v0[153] = v30[2];
  v35 = v30[3];
  v0[154] = v35;
  if (!v35)
  {
    v74 = v0[142];
    sub_10000B8B8(v32, v33);
    sub_10000B8B8(v32, v33);
    defaultLogger()();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "targetInstanceIdentifier unavailable, will not be able to save watch provisioning data", v77, 2u);

      sub_10000B90C(v32, v33);
    }

    else
    {
      sub_10000B90C(v32, v33);
    }

    v73 = v0[142];
    goto LABEL_43;
  }

  v0[155] = v30[4];
  v36 = v30[5];
  v0[156] = v36;
  if (!v36)
  {
    v78 = v0[143];
    sub_10000B8B8(v32, v33);
    sub_10000B8B8(v32, v33);
    defaultLogger()();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "partnerSchemeIdentifier unavailable, will not be able to save watch provisioning data", v81, 2u);

      sub_10000B90C(v32, v33);
    }

    else
    {
      sub_10000B90C(v32, v33);
    }

    v73 = v0[143];
LABEL_43:
    v83 = v0[136];
    v84 = v0[135];
    v85 = v0[134];
    sub_10000B90C(v32, v33);
    v13(v73, v84);
    v57 = v85;
LABEL_23:
    sub_100267A1C(v57, type metadata accessor for PendingActionContext);
LABEL_24:
    v58 = v0[146];
    v59 = v0[145];
    v60 = v0[144];
    v61 = v0[143];
    v62 = v0[142];
    v63 = v0[141];
    v64 = v0[140];
    v65 = v0[139];
    v66 = v0[138];
    v67 = v0[137];
    v105 = v0[134];
    v107 = v0[133];
    v109 = v0[129];
    v112 = v0[128];
    v115 = v0[125];

    v68 = v0[1];

    return v68();
  }

  v37 = (v30 + *(v0[130] + 128));
  v0[157] = *v37;
  v38 = v37[1];
  v0[158] = v38;
  if (v38)
  {
    v39 = v0[128];
    v40 = v0[127];
    v41 = v37[2];
    v111 = v37[3];
    v114 = v0[126];
    sub_10000B8B8(v32, v33);
    sub_10000B8B8(v32, v33);

    static String.Encoding.utf8.getter();
    v42 = String.data(using:allowLossyConversion:)();
    v44 = v43;
    v0[159] = v42;
    v0[160] = v43;
    (*(v40 + 8))(v39, v114);
    if (v44 >> 60 != 15)
    {
      if (qword_100832C20 != -1)
      {
        swift_once();
      }

      v45 = *(qword_100882228 + 16);
      v0[161] = v45;
      v46 = v45;
      v47 = String._bridgeToObjectiveC()();
      v0[162] = v47;
      v0[2] = v0;
      v0[7] = v0 + 110;
      v0[3] = sub_100261BA0;
      v48 = swift_continuation_init();
      v0[93] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
      v0[90] = v48;
      v0[86] = _NSConcreteStackBlock;
      v0[87] = 1107296256;
      v0[88] = sub_100672A4C;
      v0[89] = &unk_10080B550;
      [v46 retrievePIITokenFromSyncableKeyStoreForIdentifier:v47 completion:v0 + 86];

      return _swift_continuation_await(v0 + 2);
    }
  }

  else
  {
    sub_10000B8B8(v32, v33);
    sub_10000B8B8(v32, v33);
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v82 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v82 + 54);
  sub_100031B5C(&v82[4], (v0 + 26));
  os_unfair_lock_unlock(v82 + 54);
  v113 = v0[155];
  v116 = v0[156];
  v103 = v0[152];
  v104 = v0[153];
  v102 = v0[151];
  v108 = v0[150];
  v110 = v0[154];
  v86 = v0[149];
  v106 = v0[148];
  v87 = v0[134];
  v88 = v0[133];
  v89 = v0[132];
  v90 = v0[131];
  v91 = v0[122];
  v92 = v0[121];
  v93 = v0[120];
  v94 = v0[33];
  v0[181] = v94;

  sub_100031918((v0 + 26));
  sub_100269FE8(v87, v88, type metadata accessor for PendingActionContext);
  v95 = (*(v90 + 80) + 112) & ~*(v90 + 80);
  v96 = swift_allocObject();
  v0[182] = v96;
  v96[2] = v92;
  v96[3] = v91;
  v96[4] = v93;
  v96[5] = v102;
  v96[6] = v103;
  v96[7] = v104;
  v96[8] = v110;
  v96[9] = v113;
  v96[10] = v116;
  v96[11] = v86;
  v96[12] = v108;
  v96[13] = v106;
  sub_100269F80(v88, v96 + v95, type metadata accessor for PendingActionContext);
  sub_10000B8B8(v86, v108);
  v97 = *(v94 + 16);
  v98 = swift_allocObject();
  v0[183] = v98;
  *(v98 + 16) = sub_10026C154;
  *(v98 + 24) = v96;
  v99 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v100 = swift_task_alloc();
  v0[184] = v100;
  *v100 = v0;
  v100[1] = sub_100264330;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_100261BA0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1304) = v2;
  if (v2)
  {
    v3 = sub_1002647C8;
  }

  else
  {
    v3 = sub_100261CB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100261CB0()
{
  v1 = v0[162];
  v2 = v0[111];

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v3 + 54);
  sub_100031B5C(&v3[4], (v0 + 51));
  os_unfair_lock_unlock(v3 + 54);
  v4 = v0[122];
  v5 = v0[121];
  v6 = v0[120];
  v7 = v0[58];
  v0[164] = v7;

  sub_100031918((v0 + 51));
  v8 = swift_allocObject();
  v0[165] = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v6;
  v9 = *(v7 + 16);
  v10 = swift_allocObject();
  v0[166] = v10;
  *(v10 + 16) = sub_10026CBC0;
  *(v10 + 24) = v8;
  v11 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v12 = swift_task_alloc();
  v0[167] = v12;
  v13 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v12 = v0;
  v12[1] = sub_100261EA0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 112, sub_10026CC04, v10, v13);
}

uint64_t sub_100261EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 1336);
  v9 = *v1;
  *(*v1 + 1344) = v0;

  if (v0)
  {
    v4 = sub_100262AF4;
  }

  else
  {
    v5 = *(v2 + 1328);
    v6 = *(v2 + 1320);
    v7 = *(v2 + 1312);

    *(v2 + 1352) = *(v2 + 896);
    v4 = sub_100261FE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100261FE8()
{
  if (*(v0 + 1360))
  {
    if (*(v0 + 1304))
    {
      v1 = v0 + 80;
      v2 = *(v0 + 1352);
      v3 = *(v0 + 1288);
      v4 = *(v0 + 1280);
      v5 = *(v0 + 1272);
      v6 = *(v0 + 1264);
      v7 = *(v0 + 1256);
      v8 = String._bridgeToObjectiveC()();
      *(v0 + 1368) = v8;
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 1376) = isa;
      v10 = String._bridgeToObjectiveC()();
      *(v0 + 1384) = v10;
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_10026322C;
      v11 = swift_continuation_init();
      *(v0 + 808) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 784) = v11;
      *(v0 + 752) = _NSConcreteStackBlock;
      *(v0 + 760) = 1107296256;
      *(v0 + 768) = sub_100429100;
      *(v0 + 776) = &unk_10080B5C8;
      [v3 storePIITokenInSyncableKeyStoreForIdentifier:v8 data:isa credentialIdentifier:v10 completion:v0 + 752];
    }

    else
    {
      v1 = v0 + 144;
      v25 = *(v0 + 1352);
      v89 = *(v0 + 1288);
      v26 = *(v0 + 1280);
      v27 = *(v0 + 1272);
      v28 = *(v0 + 1264);
      v29 = *(v0 + 1256);
      sub_100007224(&qword_100834440, &qword_1006BFEC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1006BF520;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for Data;
      *(inited + 40) = v31;
      *(inited + 48) = v27;
      *(inited + 56) = v26;
      sub_1000363B4(v27, v26);
      sub_10003D8DC(inited);
      swift_setDeallocating();
      sub_10000BE18(inited + 32, &qword_100834450, &unk_1006BFED0);
      v32 = String._bridgeToObjectiveC()();
      *(v0 + 1400) = v32;
      v33 = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v0 + 1408) = v33;

      v34 = String._bridgeToObjectiveC()();
      *(v0 + 1416) = v34;
      *(v0 + 144) = v0;
      *(v0 + 152) = sub_1002636E4;
      v35 = swift_continuation_init();
      *(v0 + 872) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 848) = v35;
      *(v0 + 816) = _NSConcreteStackBlock;
      *(v0 + 824) = 1107296256;
      *(v0 + 832) = sub_100429100;
      *(v0 + 840) = &unk_10080B5F0;
      [v89 updatePIITokenInSyncableKeyStoreForIdentifier:v32 attributesToUpdate:v33 credentialIdentifier:v34 completion:v0 + 816];
    }

    return _swift_continuation_await(v1);
  }

  else
  {
    (*(*(v0 + 992) + 104))(*(v0 + 1000), enum case for DIPError.Code.failedToStorePIITokenCredentialIdentifierNil(_:), *(v0 + 984));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    v12 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v13 = v12;
    swift_willThrow();
    if (*(v0 + 1304))
    {
      v14 = *(v0 + 1248);
      v15 = *(v0 + 1232);
      v16 = *(v0 + 1216);

      v63 = *(v0 + 1272);
      v64 = *(v0 + 1280);
      v66 = *(v0 + 1288);
      v67 = *(v0 + 1200);
      v65 = *(v0 + 1192);
      v69 = *(v0 + 1168);
      v70 = *(v0 + 1160);
      v71 = *(v0 + 1152);
      v72 = *(v0 + 1144);
      v73 = *(v0 + 1136);
      v74 = *(v0 + 1128);
      v75 = *(v0 + 1120);
      v77 = *(v0 + 1112);
      v79 = *(v0 + 1104);
      v81 = *(v0 + 1096);
      v68 = *(v0 + 1072);
      v83 = *(v0 + 1064);
      v85 = *(v0 + 1032);
      v87 = *(v0 + 1024);
      v17 = *(v0 + 1000);
      v18 = *(v0 + 992);
      v19 = *(v0 + 984);
      _StringGuts.grow(_:)(29);
      *(v0 + 912) = 0;
      *(v0 + 920) = 0xE000000000000000;
      v20._countAndFlagsBits = 0xD00000000000001BLL;
      v20._object = 0x8000000100707AF0;
      String.append(_:)(v20);
      *(v0 + 928) = v13;
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      _print_unlocked<A, B>(_:_:)();
      v21 = *(v0 + 912);
      v22 = *(v0 + 920);
      (*(v18 + 104))(v17, enum case for DIPError.Code.failedToStorePIIToken(_:), v19);
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000BD94(v63, v64);

      sub_10000B90C(v65, v67);

      sub_10000B90C(v65, v67);
      sub_100267A1C(v68, type metadata accessor for PendingActionContext);

      v23 = *(v0 + 8);

      return v23();
    }

    else
    {
      v36 = *(v0 + 1104);
      defaultLogger()();
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 1288);
      v41 = *(v0 + 1280);
      v42 = *(v0 + 1272);
      if (v39)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        swift_errorRetain();
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v45;
        *v44 = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to update PII Token: %@", v43, 0xCu);
        sub_10000BE18(v44, &unk_100833B50, &unk_1006D8FB0);

        sub_10000BD94(v42, v41);
      }

      else
      {
        sub_10000BD94(*(v0 + 1272), *(v0 + 1280));
      }

      v46 = *(v0 + 1088) + 8;
      (*(v0 + 1176))(*(v0 + 1104), *(v0 + 1080));
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v47 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v47 + 54);
      sub_100031B5C(&v47[4], v0 + 208);
      os_unfair_lock_unlock(v47 + 54);
      v88 = *(v0 + 1240);
      v90 = *(v0 + 1248);
      v86 = *(v0 + 1232);
      v78 = *(v0 + 1216);
      v80 = *(v0 + 1224);
      v76 = *(v0 + 1208);
      v48 = *(v0 + 1192);
      v82 = *(v0 + 1184);
      v84 = *(v0 + 1200);
      v49 = *(v0 + 1072);
      v50 = *(v0 + 1064);
      v51 = *(v0 + 1056);
      v52 = *(v0 + 1048);
      v53 = *(v0 + 976);
      v54 = *(v0 + 968);
      v55 = *(v0 + 960);
      v56 = *(v0 + 264);
      *(v0 + 1448) = v56;

      sub_100031918(v0 + 208);
      sub_100269FE8(v49, v50, type metadata accessor for PendingActionContext);
      v57 = (*(v52 + 80) + 112) & ~*(v52 + 80);
      v58 = swift_allocObject();
      *(v0 + 1456) = v58;
      v58[2] = v54;
      v58[3] = v53;
      v58[4] = v55;
      v58[5] = v76;
      v58[6] = v78;
      v58[7] = v80;
      v58[8] = v86;
      v58[9] = v88;
      v58[10] = v90;
      v58[11] = v48;
      v58[12] = v84;
      v58[13] = v82;
      sub_100269F80(v50, v58 + v57, type metadata accessor for PendingActionContext);
      sub_10000B8B8(v48, v84);
      v59 = *(v56 + 16);
      v60 = swift_allocObject();
      *(v0 + 1464) = v60;
      *(v60 + 16) = sub_10026C154;
      *(v60 + 24) = v58;
      v61 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

      v62 = swift_task_alloc();
      *(v0 + 1472) = v62;
      *v62 = v0;
      v62[1] = sub_100264330;

      return AsyncCoreDataContainer.performWrite<A>(_:)();
    }
  }
}

uint64_t sub_100262AF4()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1312);

  v4 = *(v0 + 1344);
  if (*(v0 + 1304))
  {
    v5 = *(v0 + 1248);
    v6 = *(v0 + 1232);
    v7 = *(v0 + 1216);

    v45 = *(v0 + 1280);
    v46 = *(v0 + 1288);
    v44 = *(v0 + 1272);
    v47 = *(v0 + 1200);
    v8 = *(v0 + 1192);
    v49 = *(v0 + 1168);
    v50 = *(v0 + 1160);
    v51 = *(v0 + 1152);
    v52 = *(v0 + 1144);
    v53 = *(v0 + 1136);
    v54 = *(v0 + 1128);
    v56 = *(v0 + 1120);
    v58 = *(v0 + 1112);
    v60 = *(v0 + 1104);
    v62 = *(v0 + 1096);
    v48 = *(v0 + 1072);
    v64 = *(v0 + 1064);
    v66 = *(v0 + 1032);
    v68 = *(v0 + 1024);
    v9 = *(v0 + 1000);
    v10 = *(v0 + 992);
    v11 = *(v0 + 984);
    _StringGuts.grow(_:)(29);
    *(v0 + 912) = 0;
    *(v0 + 920) = 0xE000000000000000;
    v12._object = 0x8000000100707AF0;
    v12._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v12);
    *(v0 + 928) = v4;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v13 = *(v0 + 912);
    v14 = *(v0 + 920);
    (*(v10 + 104))(v9, enum case for DIPError.Code.failedToStorePIIToken(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v44, v45);

    sub_10000B90C(v8, v47);

    sub_10000B90C(v8, v47);
    sub_100267A1C(v48, type metadata accessor for PendingActionContext);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 1104);
    defaultLogger()();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 1288);
    v22 = *(v0 + 1280);
    v23 = *(v0 + 1272);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to update PII Token: %@", v24, 0xCu);
      sub_10000BE18(v25, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BD94(v23, v22);
    }

    else
    {
      sub_10000BD94(*(v0 + 1272), *(v0 + 1280));
    }

    v27 = *(v0 + 1088) + 8;
    (*(v0 + 1176))(*(v0 + 1104), *(v0 + 1080));
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v28 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v28 + 54);
    sub_100031B5C(&v28[4], v0 + 208);
    os_unfair_lock_unlock(v28 + 54);
    v67 = *(v0 + 1240);
    v69 = *(v0 + 1248);
    v65 = *(v0 + 1232);
    v57 = *(v0 + 1216);
    v59 = *(v0 + 1224);
    v55 = *(v0 + 1208);
    v29 = *(v0 + 1192);
    v61 = *(v0 + 1184);
    v63 = *(v0 + 1200);
    v30 = *(v0 + 1072);
    v31 = *(v0 + 1064);
    v32 = *(v0 + 1056);
    v33 = *(v0 + 1048);
    v34 = *(v0 + 976);
    v35 = *(v0 + 968);
    v36 = *(v0 + 960);
    v37 = *(v0 + 264);
    *(v0 + 1448) = v37;

    sub_100031918(v0 + 208);
    sub_100269FE8(v30, v31, type metadata accessor for PendingActionContext);
    v38 = (*(v33 + 80) + 112) & ~*(v33 + 80);
    v39 = swift_allocObject();
    *(v0 + 1456) = v39;
    v39[2] = v35;
    v39[3] = v34;
    v39[4] = v36;
    v39[5] = v55;
    v39[6] = v57;
    v39[7] = v59;
    v39[8] = v65;
    v39[9] = v67;
    v39[10] = v69;
    v39[11] = v29;
    v39[12] = v63;
    v39[13] = v61;
    sub_100269F80(v31, v39 + v38, type metadata accessor for PendingActionContext);
    sub_10000B8B8(v29, v63);
    v40 = *(v37 + 16);
    v41 = swift_allocObject();
    *(v0 + 1464) = v41;
    *(v41 + 16) = sub_10026C154;
    *(v41 + 24) = v39;
    v42 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v43 = swift_task_alloc();
    *(v0 + 1472) = v43;
    *v43 = v0;
    v43[1] = sub_100264330;

    return AsyncCoreDataContainer.performWrite<A>(_:)();
  }
}

uint64_t sub_10026322C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1392) = v3;
  if (v3)
  {
    v4 = *(v1 + 1360);

    v5 = sub_100264A7C;
  }

  else
  {
    v5 = sub_100263344;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100263344()
{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 960);

  v4 = IdentityTarget.rawValue.getter();
  if (v4 == IdentityTarget.rawValue.getter())
  {
    v5 = *(v0 + 1264);
    v6 = swift_task_alloc();
    *(v0 + 1432) = v6;
    *v6 = v0;
    v6[1] = sub_100263B9C;
    v7 = *(v0 + 1360);
    v8 = *(v0 + 1352);
    v9 = *(v0 + 1256);

    sub_10025F680(v9, v5, v8, v7);
  }

  else
  {
    v10 = *(v0 + 1360);
    v11 = *(v0 + 1288);
    sub_10000BD94(*(v0 + 1272), *(v0 + 1280));

    v12 = *(v0 + 1344);
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v13 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v13 + 54);
    sub_100031B5C(&v13[4], v0 + 208);
    os_unfair_lock_unlock(v13 + 54);
    if (!v12)
    {
      v35 = *(v0 + 1240);
      v36 = *(v0 + 1248);
      v30 = *(v0 + 1216);
      v31 = *(v0 + 1224);
      v29 = *(v0 + 1208);
      v33 = *(v0 + 1200);
      v34 = *(v0 + 1232);
      v14 = *(v0 + 1192);
      v32 = *(v0 + 1184);
      v15 = *(v0 + 1072);
      v16 = *(v0 + 1064);
      v17 = *(v0 + 1056);
      v18 = *(v0 + 1048);
      v19 = *(v0 + 976);
      v20 = *(v0 + 968);
      v21 = *(v0 + 960);
      v22 = *(v0 + 264);
      *(v0 + 1448) = v22;

      sub_100031918(v0 + 208);
      sub_100269FE8(v15, v16, type metadata accessor for PendingActionContext);
      v23 = (*(v18 + 80) + 112) & ~*(v18 + 80);
      v24 = swift_allocObject();
      *(v0 + 1456) = v24;
      v24[2] = v20;
      v24[3] = v19;
      v24[4] = v21;
      v24[5] = v29;
      v24[6] = v30;
      v24[7] = v31;
      v24[8] = v34;
      v24[9] = v35;
      v24[10] = v36;
      v24[11] = v14;
      v24[12] = v33;
      v24[13] = v32;
      sub_100269F80(v16, v24 + v23, type metadata accessor for PendingActionContext);
      sub_10000B8B8(v14, v33);
      v25 = *(v22 + 16);
      v26 = swift_allocObject();
      *(v0 + 1464) = v26;
      *(v26 + 16) = sub_10026C154;
      *(v26 + 24) = v24;
      v27 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

      v28 = swift_task_alloc();
      *(v0 + 1472) = v28;
      *v28 = v0;
      v28[1] = sub_100264330;

      AsyncCoreDataContainer.performWrite<A>(_:)();
    }
  }
}

uint64_t sub_1002636E4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 1424) = v3;
  if (v3)
  {
    v4 = *(v1 + 1360);

    v5 = sub_100264E00;
  }

  else
  {
    v5 = sub_1002637FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1002637FC()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 960);

  v4 = IdentityTarget.rawValue.getter();
  if (v4 == IdentityTarget.rawValue.getter())
  {
    v5 = *(v0 + 1264);
    v6 = swift_task_alloc();
    *(v0 + 1432) = v6;
    *v6 = v0;
    v6[1] = sub_100263B9C;
    v7 = *(v0 + 1360);
    v8 = *(v0 + 1352);
    v9 = *(v0 + 1256);

    sub_10025F680(v9, v5, v8, v7);
  }

  else
  {
    v10 = *(v0 + 1360);
    v11 = *(v0 + 1288);
    sub_10000BD94(*(v0 + 1272), *(v0 + 1280));

    v12 = *(v0 + 1344);
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v13 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v13 + 54);
    sub_100031B5C(&v13[4], v0 + 208);
    os_unfair_lock_unlock(v13 + 54);
    if (!v12)
    {
      v35 = *(v0 + 1240);
      v36 = *(v0 + 1248);
      v30 = *(v0 + 1216);
      v31 = *(v0 + 1224);
      v29 = *(v0 + 1208);
      v33 = *(v0 + 1200);
      v34 = *(v0 + 1232);
      v14 = *(v0 + 1192);
      v32 = *(v0 + 1184);
      v15 = *(v0 + 1072);
      v16 = *(v0 + 1064);
      v17 = *(v0 + 1056);
      v18 = *(v0 + 1048);
      v19 = *(v0 + 976);
      v20 = *(v0 + 968);
      v21 = *(v0 + 960);
      v22 = *(v0 + 264);
      *(v0 + 1448) = v22;

      sub_100031918(v0 + 208);
      sub_100269FE8(v15, v16, type metadata accessor for PendingActionContext);
      v23 = (*(v18 + 80) + 112) & ~*(v18 + 80);
      v24 = swift_allocObject();
      *(v0 + 1456) = v24;
      v24[2] = v20;
      v24[3] = v19;
      v24[4] = v21;
      v24[5] = v29;
      v24[6] = v30;
      v24[7] = v31;
      v24[8] = v34;
      v24[9] = v35;
      v24[10] = v36;
      v24[11] = v14;
      v24[12] = v33;
      v24[13] = v32;
      sub_100269F80(v16, v24 + v23, type metadata accessor for PendingActionContext);
      sub_10000B8B8(v14, v33);
      v25 = *(v22 + 16);
      v26 = swift_allocObject();
      *(v0 + 1464) = v26;
      *(v26 + 16) = sub_10026C154;
      *(v26 + 24) = v24;
      v27 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

      v28 = swift_task_alloc();
      *(v0 + 1472) = v28;
      *v28 = v0;
      v28[1] = sub_100264330;

      AsyncCoreDataContainer.performWrite<A>(_:)();
    }
  }
}

uint64_t sub_100263B9C()
{
  v2 = *v1;
  v3 = *(*v1 + 1432);
  v7 = *v1;
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v4 = sub_100263F74;
  }

  else
  {
    v5 = *(v2 + 1360);

    v4 = sub_100263CB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100263CB8()
{
  v1 = v0[161];
  sub_10000BD94(v0[159], v0[160]);

  v2 = v0[180];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v3 + 54);
  sub_100031B5C(&v3[4], (v0 + 26));
  os_unfair_lock_unlock(v3 + 54);
  if (!v2)
  {
    v25 = v0[155];
    v26 = v0[156];
    v20 = v0[152];
    v21 = v0[153];
    v19 = v0[151];
    v23 = v0[150];
    v24 = v0[154];
    v4 = v0[149];
    v22 = v0[148];
    v5 = v0[134];
    v6 = v0[133];
    v7 = v0[132];
    v8 = v0[131];
    v9 = v0[122];
    v10 = v0[121];
    v11 = v0[120];
    v12 = v0[33];
    v0[181] = v12;

    sub_100031918((v0 + 26));
    sub_100269FE8(v5, v6, type metadata accessor for PendingActionContext);
    v13 = (*(v8 + 80) + 112) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v0[182] = v14;
    v14[2] = v10;
    v14[3] = v9;
    v14[4] = v11;
    v14[5] = v19;
    v14[6] = v20;
    v14[7] = v21;
    v14[8] = v24;
    v14[9] = v25;
    v14[10] = v26;
    v14[11] = v4;
    v14[12] = v23;
    v14[13] = v22;
    sub_100269F80(v6, v14 + v13, type metadata accessor for PendingActionContext);
    sub_10000B8B8(v4, v23);
    v15 = *(v12 + 16);
    v16 = swift_allocObject();
    v0[183] = v16;
    *(v16 + 16) = sub_10026C154;
    *(v16 + 24) = v14;
    v17 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v18 = swift_task_alloc();
    v0[184] = v18;
    *v18 = v0;
    v18[1] = sub_100264330;

    AsyncCoreDataContainer.performWrite<A>(_:)();
  }
}

uint64_t sub_100263F74()
{
  v1 = v0[170];
  v2 = v0[145];

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v38 = v0[180];
  v6 = v0[161];
  v7 = v0[160];
  v8 = v0[159];
  v9 = v0[147];
  v10 = v0[145];
  v11 = v0[136];
  v12 = v0[135];
  if (v5)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to store pii hash in keychain", v13, 2u);

    sub_10000BD94(v8, v7);
  }

  else
  {
    sub_10000BD94(v0[159], v0[160]);
  }

  v9(v10, v12);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v14 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v14 + 54);
  sub_100031B5C(&v14[4], (v0 + 26));
  os_unfair_lock_unlock(v14 + 54);
  v37 = v0[155];
  v39 = v0[156];
  v32 = v0[152];
  v33 = v0[153];
  v31 = v0[151];
  v35 = v0[150];
  v36 = v0[154];
  v15 = v0[149];
  v34 = v0[148];
  v16 = v0[134];
  v17 = v0[133];
  v18 = v0[132];
  v19 = v0[131];
  v20 = v0[122];
  v21 = v0[121];
  v22 = v0[120];
  v23 = v0[33];
  v0[181] = v23;

  sub_100031918((v0 + 26));
  sub_100269FE8(v16, v17, type metadata accessor for PendingActionContext);
  v24 = (*(v19 + 80) + 112) & ~*(v19 + 80);
  v25 = swift_allocObject();
  v0[182] = v25;
  v25[2] = v21;
  v25[3] = v20;
  v25[4] = v22;
  v25[5] = v31;
  v25[6] = v32;
  v25[7] = v33;
  v25[8] = v36;
  v25[9] = v37;
  v25[10] = v39;
  v25[11] = v15;
  v25[12] = v35;
  v25[13] = v34;
  sub_100269F80(v17, v25 + v24, type metadata accessor for PendingActionContext);
  sub_10000B8B8(v15, v35);
  v26 = *(v23 + 16);
  v27 = swift_allocObject();
  v0[183] = v27;
  *(v27 + 16) = sub_10026C154;
  *(v27 + 24) = v25;
  v28 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v29 = swift_task_alloc();
  v0[184] = v29;
  *v29 = v0;
  v29[1] = sub_100264330;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_100264330()
{
  v2 = *v1;
  v3 = *(*v1 + 1472);
  v9 = *v1;
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v4 = sub_1002645DC;
  }

  else
  {
    v5 = v2[183];
    v6 = v2[182];
    v7 = v2[181];

    v4 = sub_100264464;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100264464()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[134];
  sub_10000B90C(v2, v1);
  sub_10000B90C(v2, v1);
  sub_100267A1C(v3, type metadata accessor for PendingActionContext);
  v4 = v0[146];
  v5 = v0[145];
  v6 = v0[144];
  v7 = v0[143];
  v8 = v0[142];
  v9 = v0[141];
  v10 = v0[140];
  v11 = v0[139];
  v12 = v0[138];
  v13 = v0[137];
  v16 = v0[134];
  v17 = v0[133];
  v18 = v0[129];
  v19 = v0[128];
  v20 = v0[125];

  v14 = v0[1];

  return v14();
}
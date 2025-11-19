void sub_100CE96E0()
{
  v444 = v0;
  v440 = (v0 + 232);
  v437 = (v0 + 808);
  sub_100018D00(*(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 1920);
  v4 = *(v0 + 1912);
  v5 = *(v0 + 1120);
  sub_100D11DC8(v5, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v432 = v7;
    v8 = *(v0 + 1928);
    v422 = v6;
    v9 = *(v0 + 1920);
    v425 = *(v0 + 1912);
    v10 = *(v0 + 1904);
    v419 = *(v0 + 1816);
    v11 = *(v0 + 2509);
    v12 = swift_slowAlloc();
    v443[0] = swift_slowAlloc();
    *v12 = 136447747;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v443);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = sub_10125403C(v11);
    v19 = sub_1000136BC(v17, v18, v443);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v20 = *(v10 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v443);

    *(v12 + 34) = v24;
    *(v12 + 42) = 2160;
    *(v12 + 44) = 1752392040;
    *(v12 + 52) = 2081;
    v25 = v425 + *(v10 + 24);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v425, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, v443);

    *(v12 + 54) = v29;
    *(v12 + 62) = 2082;
    swift_getErrorValue();
    v30 = *(v0 + 968);
    v31 = *(v0 + 976);
    v32 = *(v0 + 984);
    v33 = Error.localizedDescription.getter();
    v35 = sub_1000136BC(v33, v34, v443);

    *(v12 + 64) = v35;
    v36 = v422;
    _os_log_impl(&_mh_execute_header, v422, v432, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v12, 0x48u);
    swift_arrayDestroy();

    goto LABEL_4;
  }

  v37 = *(v0 + 1928);
  v38 = *(v0 + 1920);
  v39 = *(v0 + 1912);

  sub_100018D00(v39, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
  while (1)
  {
    v40 = *(v0 + 2208);
LABEL_6:
    v41 = *(v0 + 2200) + 1;
    if (v41 == *(v0 + 2184))
    {
      v280 = *(v0 + 2176);

      v281 = *(v0 + 2160);
      v282 = *(v0 + 2072);
      v283 = *(v0 + 2064);
      v284 = *(v0 + 2056);
      v285 = *(v0 + 2048);
      v286 = *(v0 + 2040);
      v338 = *(v0 + 2032);
      v339 = *(v0 + 2024);
      v340 = *(v0 + 2016);
      v341 = *(v0 + 2008);
      v342 = *(v0 + 2000);
      v343 = *(v0 + 1992);
      v344 = *(v0 + 1984);
      v345 = *(v0 + 1976);
      v346 = *(v0 + 1968);
      v347 = *(v0 + 1960);
      v348 = *(v0 + 1952);
      v349 = *(v0 + 1944);
      v350 = *(v0 + 1936);
      v351 = *(v0 + 1928);
      v352 = *(v0 + 1920);
      v353 = *(v0 + 1912);
      v287 = *(v0 + 1896);
      v354 = *(v0 + 1888);
      v355 = *(v0 + 1864);
      v356 = *(v0 + 1848);
      v357 = *(v0 + 1840);
      v288 = *(v0 + 1808);
      v358 = *(v0 + 1800);
      v359 = *(v0 + 1792);
      v360 = *(v0 + 1784);
      v361 = *(v0 + 1776);
      v362 = *(v0 + 1752);
      v363 = *(v0 + 1744);
      v364 = *(v0 + 1736);
      v365 = *(v0 + 1728);
      v366 = *(v0 + 1704);
      v367 = *(v0 + 1696);
      v368 = *(v0 + 1680);
      v369 = *(v0 + 1672);
      v370 = *(v0 + 1664);
      v371 = *(v0 + 1656);
      v372 = *(v0 + 1648);
      v373 = *(v0 + 1640);
      v374 = *(v0 + 1632);
      v375 = *(v0 + 1624);
      v376 = *(v0 + 1616);
      v377 = *(v0 + 1608);
      v378 = *(v0 + 1600);
      v379 = *(v0 + 1592);
      v380 = *(v0 + 1584);
      v381 = *(v0 + 1576);
      v382 = *(v0 + 1568);
      v383 = *(v0 + 1560);
      v384 = *(v0 + 1552);
      v385 = *(v0 + 1544);
      v386 = *(v0 + 1536);
      v387 = *(v0 + 1528);
      v388 = *(v0 + 1520);
      v389 = *(v0 + 1512);
      v390 = *(v0 + 1504);
      v391 = *(v0 + 1496);
      v392 = *(v0 + 1488);
      v393 = *(v0 + 1480);
      v394 = *(v0 + 1472);
      v395 = *(v0 + 1464);
      v396 = *(v0 + 1456);
      v397 = *(v0 + 1448);
      v398 = *(v0 + 1440);
      v399 = *(v0 + 1432);
      v400 = *(v0 + 1408);
      v401 = *(v0 + 1400);
      v402 = *(v0 + 1392);
      v403 = *(v0 + 1384);
      v404 = *(v0 + 1376);
      v405 = *(v0 + 1368);
      v406 = *(v0 + 1360);
      v407 = *(v0 + 1352);
      v408 = *(v0 + 1344);
      v409 = *(v0 + 1336);
      v410 = *(v0 + 1328);
      v411 = *(v0 + 1320);
      v412 = *(v0 + 1312);
      v413 = *(v0 + 1296);
      v414 = *(v0 + 1288);
      v416 = *(v0 + 1280);
      v417 = *(v0 + 1272);
      v418 = *(v0 + 1264);
      v421 = *(v0 + 1256);
      v424 = *(v0 + 1232);
      v428 = *(v0 + 1224);
      v431 = *(v0 + 1216);
      v435 = *(v0 + 1208);
      v436 = *(v0 + 1200);
      v438 = *(v0 + 1176);
      v439 = *(v0 + 1168);
      v441 = *(v0 + 1160);
      v442 = *(v0 + 1144);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v288, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v287, type metadata accessor for OwnedBeaconRecord);

      v289 = *(v0 + 8);

      v289(v40);
      return;
    }

    *(v0 + 2208) = v40;
    *(v0 + 2200) = v41;
    *(v0 + 2192) = 0;
    v42 = *(v0 + 2176);
    if (v41 >= *(v42 + 16))
    {
      __break(1u);
      return;
    }

    v43 = *(v0 + 2080);
    v44 = *(v0 + 2048);
    v45 = *(v0 + 1120);
    v46 = *(v42 + v41 + 32);
    *(v0 + 2509) = v46;
    sub_100D11DC8(v45, v44, type metadata accessor for SharingCircleKeyManager.Instruction);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 2048);
    if (v49)
    {
      v51 = swift_slowAlloc();
      v443[0] = swift_slowAlloc();
      *v51 = 136446466;
      v52 = sub_100C71778();
      v54 = v53;
      sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
      v55 = sub_1000136BC(v52, v54, v443);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      v56 = sub_10125403C(v46);
      v58 = sub_1000136BC(v56, v57, v443);

      *(v51 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v47, v48, "Keys to upload: %{public}s. Creating package for %{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v46)
    {
      case 1:
        v295 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v295 + 16) && (v296 = sub_100771F0C(1), (v297 & 1) != 0))
        {
          v298 = *(v0 + 1752);
          sub_100D11DC8(*(v295 + 56) + *(*(v0 + 1720) + 72) * v296, v298, type metadata accessor for BookmarkMetaData);
          v299 = *(v298 + 8);
          sub_100018D00(v298, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v299 = 0;
        }

        *(v0 + 2216) = v299;
        v333 = *(v0 + 2504);
        v334 = *(v0 + 1120);
        v335 = swift_task_alloc();
        *(v0 + 2224) = v335;
        *v335 = v0;
        v335[1] = sub_100CBBD44;
        v336 = *(v0 + 1704);
        v337 = *(v0 + 1128);

        sub_100CFC71C(v336, v334 + v333);
        return;
      case 4:
        v300 = swift_task_alloc();
        *(v0 + 2328) = v300;
        *v300 = v0;
        v300[1] = sub_100CC4E24;
        v301 = *(v0 + 1896);
        v302 = *(v0 + 1408);
        v303 = *(v0 + 1128);
        v304 = *(v0 + 1120);

        sub_100CF172C(v302, v304, v301, v0 + 880);
        return;
      case 5:
        v249 = *(v0 + 1768);
        v250 = *(v0 + 1760);
        v251 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v251, &qword_1016B0478, &unk_1013CDC10);
        v252 = *(v249 + 48);
        *(v0 + 2344) = v252;
        *(v0 + 2352) = (v249 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v250) = v252(v251, 1, v250);
        sub_10000B3A8(v251, &qword_1016B0478, &unk_1013CDC10);
        if (v250 == 1)
        {
          v309 = swift_task_alloc();
          *(v0 + 2360) = v309;
          *v309 = v0;
          v310 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v253 = *(v0 + 2352);
        v254 = *(v0 + 2344);
        v255 = *(v0 + 1760);
        v256 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v256, &qword_1016B0478, &unk_1013CDC10);
        v257 = v254(v256, 1, v255);
        v258 = *(v0 + 1368);
        if (v257 == 1)
        {
          v259 = *(v0 + 2080);
          v260 = *(v0 + 2000);
          v261 = *(v0 + 1120);
          sub_10000B3A8(v258, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v261, v260, type metadata accessor for SharingCircleKeyManager.Instruction);
          v36 = Logger.logObject.getter();
          v234 = static os_log_type_t.error.getter();
          v262 = os_log_type_enabled(v36, v234);
          v236 = *(v0 + 2000);
          if (v262)
          {
            v267 = swift_slowAlloc();
            v443[0] = swift_slowAlloc();
            *v267 = 136446466;
            v273 = sub_100C71778();
            v275 = v274;
            sub_100018D00(v236, type metadata accessor for SharingCircleKeyManager.Instruction);
            v276 = sub_1000136BC(v273, v275, v443);

            *(v267 + 4) = v276;
            *(v267 + 12) = 2082;
            v272 = 5;
LABEL_64:
            v277 = sub_10125403C(v272);
            v279 = sub_1000136BC(v277, v278, v443);

            *(v267 + 14) = v279;
            _os_log_impl(&_mh_execute_header, v36, v234, "No key alignment available for %{public}s. No package created for %{public}s", v267, 0x16u);
            swift_arrayDestroy();

LABEL_4:

            continue;
          }

          goto LABEL_62;
        }

        sub_100D12974(v258, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v323 = swift_task_alloc();
        *(v0 + 2376) = v323;
        *v323 = v0;
        v323[1] = sub_100CCA6E8;
        v315 = *(v0 + 2152);
        v316 = *(v0 + 2144);
        v317 = *(v0 + 1896);
        v318 = *(v0 + 1792);
        v319 = *(v0 + 1400);
        v324 = *(v0 + 1128);
        v321 = *(v0 + 1120);
        v322 = 0;
LABEL_88:

        sub_100CF2904(v319, v321, v317, v318, v322, v316, v315);
        return;
      case 6:
        v237 = *(v0 + 1768);
        v238 = *(v0 + 1760);
        v239 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v239, &qword_1016B0478, &unk_1013CDC10);
        v240 = *(v237 + 48);
        *(v0 + 2392) = v240;
        *(v0 + 2400) = (v237 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v238) = v240(v239, 1, v238);
        sub_10000B3A8(v239, &qword_1016B0478, &unk_1013CDC10);
        if (v238 == 1)
        {
          v309 = swift_task_alloc();
          *(v0 + 2408) = v309;
          *v309 = v0;
          v310 = sub_100CCD5CC;
          goto LABEL_83;
        }

        v241 = *(v0 + 2400);
        v242 = *(v0 + 2392);
        v243 = *(v0 + 1760);
        v244 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v244, &qword_1016B0478, &unk_1013CDC10);
        if (v242(v244, 1, v243) != 1)
        {
          sub_100D12974(*(v0 + 1352), *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
          v314 = swift_task_alloc();
          *(v0 + 2424) = v314;
          *v314 = v0;
          v314[1] = sub_100CD0008;
          v315 = *(v0 + 2152);
          v316 = *(v0 + 2144);
          v317 = *(v0 + 1896);
          v318 = *(v0 + 1784);
          v319 = *(v0 + 1392);
          v320 = *(v0 + 1128);
          v321 = *(v0 + 1120);
          v322 = 1;
          goto LABEL_88;
        }

        v245 = *(v0 + 2080);
        v246 = *(v0 + 1984);
        v247 = *(v0 + 1120);
        sub_10000B3A8(*(v0 + 1352), &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v247, v246, type metadata accessor for SharingCircleKeyManager.Instruction);
        v36 = Logger.logObject.getter();
        v234 = static os_log_type_t.error.getter();
        v248 = os_log_type_enabled(v36, v234);
        v236 = *(v0 + 1984);
        if (v248)
        {
          v267 = swift_slowAlloc();
          v443[0] = swift_slowAlloc();
          *v267 = 136446466;
          v263 = sub_100C71778();
          v265 = v264;
          sub_100018D00(v236, type metadata accessor for SharingCircleKeyManager.Instruction);
          v266 = sub_1000136BC(v263, v265, v443);

          *(v267 + 4) = v266;
          *(v267 + 12) = 2082;
          v272 = 6;
          goto LABEL_64;
        }

        goto LABEL_62;
      case 8:
      case 10:
        v59 = *(v0 + 936);
        if (*(v59 + 16))
        {
          v60 = sub_100771F0C(v46);
          if (v61)
          {
            v62 = *(v0 + 2152);
            v63 = *(v0 + 2144);
            v64 = *(v0 + 1680);
            v65 = (*(v59 + 56) + 16 * v60);
            v67 = *v65;
            v66 = v65[1];
            v68 = type metadata accessor for EncryptedData();
            (*(*(v68 - 8) + 56))(v64, 1, 1, v68);
            sub_100017D5C(v67, v66);
            sub_100017D5C(v67, v66);
            sub_10125A120(1, v67, v66, v64, v440);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v69 = swift_allocObject();
            v70 = *(v0 + 264);
            v71 = *(v0 + 280);
            v72 = *v440;
            *(v69 + 48) = *(v0 + 248);
            *(v69 + 64) = v70;
            *(v69 + 80) = v71;
            *(v69 + 96) = *(v0 + 296);
            *(v69 + 16) = xmmword_101385D80;
            *(v69 + 32) = v72;
            sub_10002E98C(v63, v62);
            sub_1003914F8(v440, v0 + 736);
            v73 = sub_100D11764(v69, v63, v62);
            v433 = v67;
            v74 = *(v0 + 1808);
            v75 = *(v0 + 1520);
            v76 = *(v0 + 1512);
            v77 = *(v0 + 1416);
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v69 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v74, &v75[*(v77 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v75 = v46;
            *&v75[*(v77 + 24)] = v73;
            sub_100D11DC8(v75, v76, type metadata accessor for KeyDropInterface.KeyPackage);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_100A5BE40(0, v40[2] + 1, 1, v40);
            }

            v79 = v40[2];
            v78 = v40[3];
            if (v79 >= v78 >> 1)
            {
              v40 = sub_100A5BE40(v78 > 1, v79 + 1, 1, v40);
            }

            v80 = *(v0 + 2080);
            v81 = *(v0 + 1960);
            v82 = *(v0 + 1520);
            v83 = *(v0 + 1512);
            v84 = *(v0 + 1504);
            v85 = *(v0 + 1424);
            v86 = *(v0 + 1120);
            v40[2] = v79 + 1;
            sub_100D12974(v83, v40 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v79, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v86, v81, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v82, v84, type metadata accessor for KeyDropInterface.KeyPackage);
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.default.getter();
            v89 = os_log_type_enabled(v87, v88);
            v90 = *(v0 + 1960);
            v91 = *(v0 + 1520);
            v92 = *(v0 + 1504);
            if (v89)
            {
              v93 = swift_slowAlloc();
              v443[0] = swift_slowAlloc();
              *v93 = 136446466;
              v426 = v66;
              v429 = v91;
              v94 = sub_100C71778();
              v96 = v95;
              sub_100018D00(v90, type metadata accessor for SharingCircleKeyManager.Instruction);
              v97 = sub_1000136BC(v94, v96, v443);

              *(v93 + 4) = v97;
              *(v93 + 12) = 2082;
              v98 = sub_101255410();
              v100 = v99;
              sub_100018D00(v92, type metadata accessor for KeyDropInterface.KeyPackage);
              v101 = sub_1000136BC(v98, v100, v443);

              *(v93 + 14) = v101;
              _os_log_impl(&_mh_execute_header, v87, v88, "Keys to upload: %{public}s,\nadded: %{public}s.", v93, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v440);
              sub_100016590(v433, v426);
              sub_100018D00(v429, type metadata accessor for KeyDropInterface.KeyPackage);
            }

            else
            {

              sub_100391554(v440);
              sub_100016590(v433, v66);
              sub_100018D00(v92, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v90, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v91, type metadata accessor for KeyDropInterface.KeyPackage);
            }
          }
        }

        goto LABEL_6;
      case 9:
        v221 = *(v0 + 1768);
        v222 = *(v0 + 1760);
        v223 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v223, &qword_1016B0478, &unk_1013CDC10);
        v224 = *(v221 + 48);
        *(v0 + 2440) = v224;
        *(v0 + 2448) = (v221 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v222) = v224(v223, 1, v222);
        sub_10000B3A8(v223, &qword_1016B0478, &unk_1013CDC10);
        if (v222 == 1)
        {
          v309 = swift_task_alloc();
          *(v0 + 2456) = v309;
          *v309 = v0;
          v310 = sub_100CD2EEC;
LABEL_83:
          v309[1] = v310;
          v311 = *(v0 + 2160);
          v312 = *(v0 + 1896);
          v313 = *(v0 + 1128);

          sub_100CF0FB4(v312, v311, v313);
          return;
        }

        v225 = *(v0 + 2448);
        v226 = *(v0 + 2440);
        v227 = *(v0 + 1760);
        v228 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v228, &qword_1016B0478, &unk_1013CDC10);
        v229 = v226(v228, 1, v227);
        v230 = *(v0 + 1336);
        if (v229 != 1)
        {
          sub_100D12974(v230, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v325 = swift_task_alloc();
          *(v0 + 2472) = v325;
          *v325 = v0;
          v325[1] = sub_100CD5928;
          v326 = *(v0 + 2152);
          v327 = *(v0 + 2144);
          v328 = *(v0 + 1896);
          v329 = *(v0 + 1776);
          v330 = *(v0 + 1384);
          v331 = *(v0 + 1128);
          v332 = *(v0 + 1120);

          sub_100CF3F94(v330, v332, v328, v329, v327, v326);
          return;
        }

        v231 = *(v0 + 2080);
        v232 = *(v0 + 1968);
        v233 = *(v0 + 1120);
        sub_10000B3A8(v230, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v233, v232, type metadata accessor for SharingCircleKeyManager.Instruction);
        v36 = Logger.logObject.getter();
        v234 = static os_log_type_t.error.getter();
        v235 = os_log_type_enabled(v36, v234);
        v236 = *(v0 + 1968);
        if (v235)
        {
          v267 = swift_slowAlloc();
          v443[0] = swift_slowAlloc();
          *v267 = 136446466;
          v268 = sub_100C71778();
          v270 = v269;
          sub_100018D00(v236, type metadata accessor for SharingCircleKeyManager.Instruction);
          v271 = sub_1000136BC(v268, v270, v443);

          *(v267 + 4) = v271;
          *(v267 + 12) = 2082;
          v272 = 9;
          goto LABEL_64;
        }

LABEL_62:

        sub_100018D00(v236, type metadata accessor for SharingCircleKeyManager.Instruction);
        break;
      case 12:
        v102 = *(v0 + 1824);
        v103 = *(v0 + 1816);
        v104 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v104, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v102 + 48))(v104, 1, v103) == 1)
        {
          v105 = *(v0 + 1192);
          v106 = *(v0 + 1184);
          v107 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v105 + 56))(v107, 1, 1, v106);
          goto LABEL_32;
        }

        v108 = *(v0 + 2112);
        v109 = *(v0 + 1896);
        v110 = *(v0 + 1872);
        v111 = *(v0 + 1160);
        v112 = *(v0 + 1152);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v109 + *(v110 + 24), v111, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_29:
            v137 = *(v0 + 1192);
            v138 = *(v0 + 1184);
            v139 = *(v0 + 1176);
            v140 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v140, type metadata accessor for StableIdentifier);
            (*(v137 + 56))(v139, 1, 1, v138);
            goto LABEL_32;
          }

          v130 = *(v0 + 1824);
          v131 = *(v0 + 1816);
          v132 = *(v0 + 1160);
          v133 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v134 = *(v132 + 8 + v133[12]);

          v135 = *(v132 + 8 + v133[16]);

          v136 = *(v132 + 8 + v133[20]);

          v122 = *(v132 + v133[24]);
          (*(v130 + 8))(v132, v131);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_29;
          }

          v114 = *(v0 + 1824);
          v115 = *(v0 + 1160);
          v116 = v115 + 8;
          v117 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v118 = *(v115 + 8 + v117[12]);

          v119 = *(v115 + 8 + v117[16]);

          v120 = *(v115 + 8 + v117[20]);

          v121 = (v115 + v117[24]);
          v122 = *v121;
          LOBYTE(v115) = v121[1];
          v123 = *(v116 + v117[28]);

          v124 = *(v114 + 8);
          if (v115)
          {
            v125 = *(v0 + 1816);
            v126 = *(v0 + 1192);
            v127 = *(v0 + 1184);
            v128 = *(v0 + 1176);
            v129 = *(v0 + 1160);
            v124(*(v0 + 1840), v125);
            (*(v126 + 56))(v128, 1, 1, v127);
            v124(v129, v125);
            goto LABEL_32;
          }

          v124(*(v0 + 1160), *(v0 + 1816));
        }

        v141 = *(v0 + 2112);
        v142 = *(v0 + 1192);
        v143 = *(v0 + 1184);
        v144 = *(v0 + 1176);
        (*(v0 + 2104))(v144, *(v0 + 1840), *(v0 + 1816));
        *(v144 + *(v143 + 20)) = v122;
        (*(v142 + 56))(v144, 0, 1, v143);
LABEL_32:
        v145 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v145, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v145, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_6;
        }

        v146 = *(v0 + 1904);
        v147 = *(v0 + 1120);
        sub_100D12974(v145, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v148 = *(v147 + *(v146 + 44));
        if (!*(v148 + 16))
        {
          goto LABEL_38;
        }

        v149 = sub_100771F0C(12);
        if ((v150 & 1) == 0)
        {
          goto LABEL_38;
        }

        v151 = *(v0 + 1768);
        v152 = *(v0 + 1760);
        v153 = *(v0 + 1736);
        v154 = *(v0 + 1712);
        v155 = *(v0 + 1320);
        sub_100D11DC8(*(v148 + 56) + *(*(v0 + 1720) + 72) * v149, v153, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v153 + *(v154 + 20), v155, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v153, type metadata accessor for BookmarkMetaData);
        if ((*(v151 + 48))(v155, 1, v152) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_38:
          v156 = *(v0 + 1280);
          v157 = *(v0 + 1248);
          v158 = *(v0 + 1240);
          v159 = *(v0 + 1216);
          (*(v157 + 56))(v159, 1, 1, v158);
          static Date.distantPast.getter();
          if ((*(v157 + 48))(v159, 1, v158) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v160 = *(v0 + 1320);
          v161 = *(v0 + 1280);
          v162 = *(v0 + 1248);
          v163 = *(v0 + 1240);
          v164 = *(v0 + 1216);
          (*(v162 + 16))(v164, v160 + *(*(v0 + 1760) + 24), v163);
          sub_100018D00(v160, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v162 + 56))(v164, 0, 1, v163);
          (*(v162 + 32))(v161, v164, v163);
        }

        v165 = *(v0 + 1896);
        v166 = *(v0 + 1272);
        v167 = objc_autoreleasePoolPush();
        sub_100D088CC(v165, v166);
        v168 = *(v0 + 1280);
        v169 = *(v0 + 1272);
        v170 = *(v0 + 1248);
        v171 = *(v0 + 1240);
        objc_autoreleasePoolPop(v167);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
        LOBYTE(v167) = dispatch thunk of static Comparable.< infix(_:_:)();
        v172 = *(v170 + 8);
        v172(v169, v171);
        if (v167)
        {
          v173 = *(v0 + 1200);
          v172(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v173, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        else
        {
          v174 = *(v0 + 1200);
          v175 = *(v0 + 1184);
          v176 = type metadata accessor for PropertyListEncoder();
          v177 = *(v176 + 48);
          v178 = *(v176 + 52);
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
          v179 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v181 = v180;
          v434 = v172;
          v182 = *(v0 + 2152);
          v183 = *(v0 + 2144);
          v184 = *(v0 + 1680);
          v185 = v179;

          v186 = type metadata accessor for EncryptedData();
          (*(*(v186 - 8) + 56))(v184, 1, 1, v186);
          sub_100017D5C(v185, v181);
          v427 = v185;
          v430 = v181;
          sub_10125A120(1, v185, v181, v184, v437);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v187 = swift_allocObject();
          v188 = *(v0 + 840);
          v189 = *(v0 + 856);
          v190 = *v437;
          *(v187 + 48) = *(v0 + 824);
          *(v187 + 64) = v188;
          *(v187 + 80) = v189;
          *(v187 + 96) = *(v0 + 872);
          *(v187 + 16) = xmmword_101385D80;
          *(v187 + 32) = v190;
          sub_10002E98C(v183, v182);
          sub_1003914F8(v437, v0 + 448);
          v191 = sub_100D11764(v187, v183, v182);
          v192 = *(v0 + 1808);
          v193 = *(v0 + 1472);
          v194 = *(v0 + 1464);
          v195 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v187 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v192, &v193[*(v195 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v193 = 12;
          *&v193[*(v195 + 24)] = v191;
          sub_100D11DC8(v193, v194, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_100A5BE40(0, v40[2] + 1, 1, v40);
          }

          v197 = v40[2];
          v196 = v40[3];
          if (v197 >= v196 >> 1)
          {
            v40 = sub_100A5BE40(v196 > 1, v197 + 1, 1, v40);
          }

          v198 = *(v0 + 2080);
          v199 = *(v0 + 1944);
          v200 = *(v0 + 1472);
          v201 = *(v0 + 1464);
          v202 = *(v0 + 1456);
          v203 = *(v0 + 1424);
          v204 = *(v0 + 1120);
          v40[2] = v197 + 1;
          sub_100D12974(v201, v40 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v197, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v204, v199, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v200, v202, type metadata accessor for KeyDropInterface.KeyPackage);
          v205 = Logger.logObject.getter();
          v206 = static os_log_type_t.default.getter();
          v207 = os_log_type_enabled(v205, v206);
          v208 = *(v0 + 1944);
          v209 = *(v0 + 1456);
          v210 = *(v0 + 1280);
          v420 = *(v0 + 1472);
          v423 = *(v0 + 1240);
          v211 = *(v0 + 1200);
          if (v207)
          {
            v212 = swift_slowAlloc();
            v443[0] = swift_slowAlloc();
            *v212 = 136446466;
            v415 = v210;
            v213 = sub_100C71778();
            v215 = v214;
            sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
            v216 = sub_1000136BC(v213, v215, v443);

            *(v212 + 4) = v216;
            *(v212 + 12) = 2082;
            v217 = sub_101255410();
            v219 = v218;
            sub_100018D00(v209, type metadata accessor for KeyDropInterface.KeyPackage);
            v220 = sub_1000136BC(v217, v219, v443);

            *(v212 + 14) = v220;
            _os_log_impl(&_mh_execute_header, v205, v206, "Keys to upload: %{public}s,\nadded: %{public}s.", v212, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v437);
            sub_100016590(v427, v430);
            sub_100018D00(v420, type metadata accessor for KeyDropInterface.KeyPackage);
            v434(v415, v423);
          }

          else
          {

            sub_100391554(v437);
            sub_100016590(v427, v430);
            sub_100018D00(v209, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v420, type metadata accessor for KeyDropInterface.KeyPackage);
            v434(v210, v423);
          }

          sub_100018D00(v211, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        goto LABEL_6;
      case 13:
        v305 = swift_task_alloc();
        *(v0 + 2488) = v305;
        *v305 = v0;
        v305[1] = sub_100CD880C;
        v306 = *(v0 + 1896);
        v307 = *(v0 + 1232);
        v308 = *(v0 + 1128);

        sub_100CF5FBC(v307, v306);
        return;
      case 16:
        v290 = swift_task_alloc();
        *(v0 + 2496) = v290;
        *v290 = v0;
        v290[1] = sub_100CDBC44;
        v291 = *(v0 + 1896);
        v292 = *(v0 + 1264);
        v293 = *(v0 + 1144);
        v294 = *(v0 + 1128);

        sub_100CF6C9C(v292, v293, v291);
        return;
      default:
        goto LABEL_6;
    }
  }
}

void sub_100CEBF30()
{
  v446 = v0;
  v442 = (v0 + 232);
  v439 = (v0 + 808);
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 1920);
  v4 = *(v0 + 1912);
  v5 = *(v0 + 1120);
  sub_100D11DC8(v5, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v434 = v7;
    v8 = *(v0 + 1928);
    v424 = v6;
    v9 = *(v0 + 1920);
    v427 = *(v0 + 1912);
    v10 = *(v0 + 1904);
    v421 = *(v0 + 1816);
    v11 = *(v0 + 2509);
    v12 = swift_slowAlloc();
    v445[0] = swift_slowAlloc();
    *v12 = 136447747;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v445);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = sub_10125403C(v11);
    v19 = sub_1000136BC(v17, v18, v445);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v20 = *(v10 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v445);

    *(v12 + 34) = v24;
    *(v12 + 42) = 2160;
    *(v12 + 44) = 1752392040;
    *(v12 + 52) = 2081;
    v25 = v427 + *(v10 + 24);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v427, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, v445);

    *(v12 + 54) = v29;
    *(v12 + 62) = 2082;
    swift_getErrorValue();
    v30 = *(v0 + 968);
    v31 = *(v0 + 976);
    v32 = *(v0 + 984);
    v33 = Error.localizedDescription.getter();
    v35 = sub_1000136BC(v33, v34, v445);

    *(v12 + 64) = v35;
    v36 = v424;
    _os_log_impl(&_mh_execute_header, v424, v434, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v12, 0x48u);
    swift_arrayDestroy();

    goto LABEL_4;
  }

  v37 = *(v0 + 1928);
  v38 = *(v0 + 1920);
  v39 = *(v0 + 1912);

  sub_100018D00(v39, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
  while (1)
  {
    v40 = *(v0 + 2208);
LABEL_6:
    v41 = *(v0 + 2200) + 1;
    if (v41 == *(v0 + 2184))
    {
      v282 = *(v0 + 2176);

      v283 = *(v0 + 2160);
      v284 = *(v0 + 2072);
      v285 = *(v0 + 2064);
      v286 = *(v0 + 2056);
      v287 = *(v0 + 2048);
      v288 = *(v0 + 2040);
      v340 = *(v0 + 2032);
      v341 = *(v0 + 2024);
      v342 = *(v0 + 2016);
      v343 = *(v0 + 2008);
      v344 = *(v0 + 2000);
      v345 = *(v0 + 1992);
      v346 = *(v0 + 1984);
      v347 = *(v0 + 1976);
      v348 = *(v0 + 1968);
      v349 = *(v0 + 1960);
      v350 = *(v0 + 1952);
      v351 = *(v0 + 1944);
      v352 = *(v0 + 1936);
      v353 = *(v0 + 1928);
      v354 = *(v0 + 1920);
      v355 = *(v0 + 1912);
      v289 = *(v0 + 1896);
      v356 = *(v0 + 1888);
      v357 = *(v0 + 1864);
      v358 = *(v0 + 1848);
      v359 = *(v0 + 1840);
      v290 = *(v0 + 1808);
      v360 = *(v0 + 1800);
      v361 = *(v0 + 1792);
      v362 = *(v0 + 1784);
      v363 = *(v0 + 1776);
      v364 = *(v0 + 1752);
      v365 = *(v0 + 1744);
      v366 = *(v0 + 1736);
      v367 = *(v0 + 1728);
      v368 = *(v0 + 1704);
      v369 = *(v0 + 1696);
      v370 = *(v0 + 1680);
      v371 = *(v0 + 1672);
      v372 = *(v0 + 1664);
      v373 = *(v0 + 1656);
      v374 = *(v0 + 1648);
      v375 = *(v0 + 1640);
      v376 = *(v0 + 1632);
      v377 = *(v0 + 1624);
      v378 = *(v0 + 1616);
      v379 = *(v0 + 1608);
      v380 = *(v0 + 1600);
      v381 = *(v0 + 1592);
      v382 = *(v0 + 1584);
      v383 = *(v0 + 1576);
      v384 = *(v0 + 1568);
      v385 = *(v0 + 1560);
      v386 = *(v0 + 1552);
      v387 = *(v0 + 1544);
      v388 = *(v0 + 1536);
      v389 = *(v0 + 1528);
      v390 = *(v0 + 1520);
      v391 = *(v0 + 1512);
      v392 = *(v0 + 1504);
      v393 = *(v0 + 1496);
      v394 = *(v0 + 1488);
      v395 = *(v0 + 1480);
      v396 = *(v0 + 1472);
      v397 = *(v0 + 1464);
      v398 = *(v0 + 1456);
      v399 = *(v0 + 1448);
      v400 = *(v0 + 1440);
      v401 = *(v0 + 1432);
      v402 = *(v0 + 1408);
      v403 = *(v0 + 1400);
      v404 = *(v0 + 1392);
      v405 = *(v0 + 1384);
      v406 = *(v0 + 1376);
      v407 = *(v0 + 1368);
      v408 = *(v0 + 1360);
      v409 = *(v0 + 1352);
      v410 = *(v0 + 1344);
      v411 = *(v0 + 1336);
      v412 = *(v0 + 1328);
      v413 = *(v0 + 1320);
      v414 = *(v0 + 1312);
      v415 = *(v0 + 1296);
      v416 = *(v0 + 1288);
      v418 = *(v0 + 1280);
      v419 = *(v0 + 1272);
      v420 = *(v0 + 1264);
      v423 = *(v0 + 1256);
      v426 = *(v0 + 1232);
      v430 = *(v0 + 1224);
      v433 = *(v0 + 1216);
      v437 = *(v0 + 1208);
      v438 = *(v0 + 1200);
      v440 = *(v0 + 1176);
      v441 = *(v0 + 1168);
      v443 = *(v0 + 1160);
      v444 = *(v0 + 1144);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v290, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v289, type metadata accessor for OwnedBeaconRecord);

      v291 = *(v0 + 8);

      v291(v40);
      return;
    }

    *(v0 + 2208) = v40;
    *(v0 + 2200) = v41;
    *(v0 + 2192) = 0;
    v42 = *(v0 + 2176);
    if (v41 >= *(v42 + 16))
    {
      __break(1u);
      return;
    }

    v43 = *(v0 + 2080);
    v44 = *(v0 + 2048);
    v45 = *(v0 + 1120);
    v46 = *(v42 + v41 + 32);
    *(v0 + 2509) = v46;
    sub_100D11DC8(v45, v44, type metadata accessor for SharingCircleKeyManager.Instruction);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 2048);
    if (v49)
    {
      v51 = swift_slowAlloc();
      v445[0] = swift_slowAlloc();
      *v51 = 136446466;
      v52 = sub_100C71778();
      v54 = v53;
      sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
      v55 = sub_1000136BC(v52, v54, v445);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      v56 = sub_10125403C(v46);
      v58 = sub_1000136BC(v56, v57, v445);

      *(v51 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v47, v48, "Keys to upload: %{public}s. Creating package for %{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v46)
    {
      case 1:
        v297 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v297 + 16) && (v298 = sub_100771F0C(1), (v299 & 1) != 0))
        {
          v300 = *(v0 + 1752);
          sub_100D11DC8(*(v297 + 56) + *(*(v0 + 1720) + 72) * v298, v300, type metadata accessor for BookmarkMetaData);
          v301 = *(v300 + 8);
          sub_100018D00(v300, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v301 = 0;
        }

        *(v0 + 2216) = v301;
        v335 = *(v0 + 2504);
        v336 = *(v0 + 1120);
        v337 = swift_task_alloc();
        *(v0 + 2224) = v337;
        *v337 = v0;
        v337[1] = sub_100CBBD44;
        v338 = *(v0 + 1704);
        v339 = *(v0 + 1128);

        sub_100CFC71C(v338, v336 + v335);
        return;
      case 4:
        v302 = swift_task_alloc();
        *(v0 + 2328) = v302;
        *v302 = v0;
        v302[1] = sub_100CC4E24;
        v303 = *(v0 + 1896);
        v304 = *(v0 + 1408);
        v305 = *(v0 + 1128);
        v306 = *(v0 + 1120);

        sub_100CF172C(v304, v306, v303, v0 + 880);
        return;
      case 5:
        v251 = *(v0 + 1768);
        v252 = *(v0 + 1760);
        v253 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v253, &qword_1016B0478, &unk_1013CDC10);
        v254 = *(v251 + 48);
        *(v0 + 2344) = v254;
        *(v0 + 2352) = (v251 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v252) = v254(v253, 1, v252);
        sub_10000B3A8(v253, &qword_1016B0478, &unk_1013CDC10);
        if (v252 == 1)
        {
          v311 = swift_task_alloc();
          *(v0 + 2360) = v311;
          *v311 = v0;
          v312 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v255 = *(v0 + 2352);
        v256 = *(v0 + 2344);
        v257 = *(v0 + 1760);
        v258 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v258, &qword_1016B0478, &unk_1013CDC10);
        v259 = v256(v258, 1, v257);
        v260 = *(v0 + 1368);
        if (v259 == 1)
        {
          v261 = *(v0 + 2080);
          v262 = *(v0 + 2000);
          v263 = *(v0 + 1120);
          sub_10000B3A8(v260, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v263, v262, type metadata accessor for SharingCircleKeyManager.Instruction);
          v36 = Logger.logObject.getter();
          v234 = static os_log_type_t.error.getter();
          v264 = os_log_type_enabled(v36, v234);
          v236 = *(v0 + 2000);
          if (v264)
          {
            v269 = swift_slowAlloc();
            v445[0] = swift_slowAlloc();
            *v269 = 136446466;
            v275 = sub_100C71778();
            v277 = v276;
            sub_100018D00(v236, type metadata accessor for SharingCircleKeyManager.Instruction);
            v278 = sub_1000136BC(v275, v277, v445);

            *(v269 + 4) = v278;
            *(v269 + 12) = 2082;
            v274 = 5;
LABEL_64:
            v279 = sub_10125403C(v274);
            v281 = sub_1000136BC(v279, v280, v445);

            *(v269 + 14) = v281;
            _os_log_impl(&_mh_execute_header, v36, v234, "No key alignment available for %{public}s. No package created for %{public}s", v269, 0x16u);
            swift_arrayDestroy();

LABEL_4:

            continue;
          }

          goto LABEL_62;
        }

        sub_100D12974(v260, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v325 = swift_task_alloc();
        *(v0 + 2376) = v325;
        *v325 = v0;
        v325[1] = sub_100CCA6E8;
        v317 = *(v0 + 2152);
        v318 = *(v0 + 2144);
        v319 = *(v0 + 1896);
        v320 = *(v0 + 1792);
        v321 = *(v0 + 1400);
        v326 = *(v0 + 1128);
        v323 = *(v0 + 1120);
        v324 = 0;
LABEL_88:

        sub_100CF2904(v321, v323, v319, v320, v324, v318, v317);
        return;
      case 6:
        v237 = *(v0 + 1768);
        v238 = *(v0 + 1760);
        v239 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v239, &qword_1016B0478, &unk_1013CDC10);
        v240 = *(v237 + 48);
        *(v0 + 2392) = v240;
        *(v0 + 2400) = (v237 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v238) = v240(v239, 1, v238);
        sub_10000B3A8(v239, &qword_1016B0478, &unk_1013CDC10);
        if (v238 == 1)
        {
          v311 = swift_task_alloc();
          *(v0 + 2408) = v311;
          *v311 = v0;
          v312 = sub_100CCD5CC;
          goto LABEL_83;
        }

        v241 = *(v0 + 2400);
        v242 = *(v0 + 2392);
        v243 = *(v0 + 1760);
        v244 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v244, &qword_1016B0478, &unk_1013CDC10);
        v245 = v242(v244, 1, v243);
        v246 = *(v0 + 1352);
        if (v245 != 1)
        {
          sub_100D12974(v246, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
          v316 = swift_task_alloc();
          *(v0 + 2424) = v316;
          *v316 = v0;
          v316[1] = sub_100CD0008;
          v317 = *(v0 + 2152);
          v318 = *(v0 + 2144);
          v319 = *(v0 + 1896);
          v320 = *(v0 + 1784);
          v321 = *(v0 + 1392);
          v322 = *(v0 + 1128);
          v323 = *(v0 + 1120);
          v324 = 1;
          goto LABEL_88;
        }

        v247 = *(v0 + 2080);
        v248 = *(v0 + 1984);
        v249 = *(v0 + 1120);
        sub_10000B3A8(v246, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v249, v248, type metadata accessor for SharingCircleKeyManager.Instruction);
        v36 = Logger.logObject.getter();
        v234 = static os_log_type_t.error.getter();
        v250 = os_log_type_enabled(v36, v234);
        v236 = *(v0 + 1984);
        if (v250)
        {
          v269 = swift_slowAlloc();
          v445[0] = swift_slowAlloc();
          *v269 = 136446466;
          v265 = sub_100C71778();
          v267 = v266;
          sub_100018D00(v236, type metadata accessor for SharingCircleKeyManager.Instruction);
          v268 = sub_1000136BC(v265, v267, v445);

          *(v269 + 4) = v268;
          *(v269 + 12) = 2082;
          v274 = 6;
          goto LABEL_64;
        }

        goto LABEL_62;
      case 8:
      case 10:
        v59 = *(v0 + 936);
        if (*(v59 + 16))
        {
          v60 = sub_100771F0C(v46);
          if (v61)
          {
            v62 = *(v0 + 2152);
            v63 = *(v0 + 2144);
            v64 = *(v0 + 1680);
            v65 = (*(v59 + 56) + 16 * v60);
            v67 = *v65;
            v66 = v65[1];
            v68 = type metadata accessor for EncryptedData();
            (*(*(v68 - 8) + 56))(v64, 1, 1, v68);
            sub_100017D5C(v67, v66);
            sub_100017D5C(v67, v66);
            sub_10125A120(1, v67, v66, v64, v442);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v69 = swift_allocObject();
            v70 = *(v0 + 264);
            v71 = *(v0 + 280);
            v72 = *v442;
            *(v69 + 48) = *(v0 + 248);
            *(v69 + 64) = v70;
            *(v69 + 80) = v71;
            *(v69 + 96) = *(v0 + 296);
            *(v69 + 16) = xmmword_101385D80;
            *(v69 + 32) = v72;
            sub_10002E98C(v63, v62);
            sub_1003914F8(v442, v0 + 736);
            v73 = sub_100D11764(v69, v63, v62);
            v435 = v67;
            v74 = *(v0 + 1808);
            v75 = *(v0 + 1520);
            v76 = *(v0 + 1512);
            v77 = *(v0 + 1416);
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v69 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v74, &v75[*(v77 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v75 = v46;
            *&v75[*(v77 + 24)] = v73;
            sub_100D11DC8(v75, v76, type metadata accessor for KeyDropInterface.KeyPackage);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_100A5BE40(0, v40[2] + 1, 1, v40);
            }

            v79 = v40[2];
            v78 = v40[3];
            if (v79 >= v78 >> 1)
            {
              v40 = sub_100A5BE40(v78 > 1, v79 + 1, 1, v40);
            }

            v80 = *(v0 + 2080);
            v81 = *(v0 + 1960);
            v82 = *(v0 + 1520);
            v83 = *(v0 + 1512);
            v84 = *(v0 + 1504);
            v85 = *(v0 + 1424);
            v86 = *(v0 + 1120);
            v40[2] = v79 + 1;
            sub_100D12974(v83, v40 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v79, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v86, v81, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v82, v84, type metadata accessor for KeyDropInterface.KeyPackage);
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.default.getter();
            v89 = os_log_type_enabled(v87, v88);
            v90 = *(v0 + 1960);
            v91 = *(v0 + 1520);
            v92 = *(v0 + 1504);
            if (v89)
            {
              v93 = swift_slowAlloc();
              v445[0] = swift_slowAlloc();
              *v93 = 136446466;
              v428 = v66;
              v431 = v91;
              v94 = sub_100C71778();
              v96 = v95;
              sub_100018D00(v90, type metadata accessor for SharingCircleKeyManager.Instruction);
              v97 = sub_1000136BC(v94, v96, v445);

              *(v93 + 4) = v97;
              *(v93 + 12) = 2082;
              v98 = sub_101255410();
              v100 = v99;
              sub_100018D00(v92, type metadata accessor for KeyDropInterface.KeyPackage);
              v101 = sub_1000136BC(v98, v100, v445);

              *(v93 + 14) = v101;
              _os_log_impl(&_mh_execute_header, v87, v88, "Keys to upload: %{public}s,\nadded: %{public}s.", v93, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v442);
              sub_100016590(v435, v428);
              sub_100018D00(v431, type metadata accessor for KeyDropInterface.KeyPackage);
            }

            else
            {

              sub_100391554(v442);
              sub_100016590(v435, v66);
              sub_100018D00(v92, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v90, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v91, type metadata accessor for KeyDropInterface.KeyPackage);
            }
          }
        }

        goto LABEL_6;
      case 9:
        v221 = *(v0 + 1768);
        v222 = *(v0 + 1760);
        v223 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v223, &qword_1016B0478, &unk_1013CDC10);
        v224 = *(v221 + 48);
        *(v0 + 2440) = v224;
        *(v0 + 2448) = (v221 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v222) = v224(v223, 1, v222);
        sub_10000B3A8(v223, &qword_1016B0478, &unk_1013CDC10);
        if (v222 == 1)
        {
          v311 = swift_task_alloc();
          *(v0 + 2456) = v311;
          *v311 = v0;
          v312 = sub_100CD2EEC;
LABEL_83:
          v311[1] = v312;
          v313 = *(v0 + 2160);
          v314 = *(v0 + 1896);
          v315 = *(v0 + 1128);

          sub_100CF0FB4(v314, v313, v315);
          return;
        }

        v225 = *(v0 + 2448);
        v226 = *(v0 + 2440);
        v227 = *(v0 + 1760);
        v228 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v228, &qword_1016B0478, &unk_1013CDC10);
        v229 = v226(v228, 1, v227);
        v230 = *(v0 + 1336);
        if (v229 != 1)
        {
          sub_100D12974(v230, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v327 = swift_task_alloc();
          *(v0 + 2472) = v327;
          *v327 = v0;
          v327[1] = sub_100CD5928;
          v328 = *(v0 + 2152);
          v329 = *(v0 + 2144);
          v330 = *(v0 + 1896);
          v331 = *(v0 + 1776);
          v332 = *(v0 + 1384);
          v333 = *(v0 + 1128);
          v334 = *(v0 + 1120);

          sub_100CF3F94(v332, v334, v330, v331, v329, v328);
          return;
        }

        v231 = *(v0 + 2080);
        v232 = *(v0 + 1968);
        v233 = *(v0 + 1120);
        sub_10000B3A8(v230, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v233, v232, type metadata accessor for SharingCircleKeyManager.Instruction);
        v36 = Logger.logObject.getter();
        v234 = static os_log_type_t.error.getter();
        v235 = os_log_type_enabled(v36, v234);
        v236 = *(v0 + 1968);
        if (v235)
        {
          v269 = swift_slowAlloc();
          v445[0] = swift_slowAlloc();
          *v269 = 136446466;
          v270 = sub_100C71778();
          v272 = v271;
          sub_100018D00(v236, type metadata accessor for SharingCircleKeyManager.Instruction);
          v273 = sub_1000136BC(v270, v272, v445);

          *(v269 + 4) = v273;
          *(v269 + 12) = 2082;
          v274 = 9;
          goto LABEL_64;
        }

LABEL_62:

        sub_100018D00(v236, type metadata accessor for SharingCircleKeyManager.Instruction);
        break;
      case 12:
        v102 = *(v0 + 1824);
        v103 = *(v0 + 1816);
        v104 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v104, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v102 + 48))(v104, 1, v103) == 1)
        {
          v105 = *(v0 + 1192);
          v106 = *(v0 + 1184);
          v107 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v105 + 56))(v107, 1, 1, v106);
          goto LABEL_32;
        }

        v108 = *(v0 + 2112);
        v109 = *(v0 + 1896);
        v110 = *(v0 + 1872);
        v111 = *(v0 + 1160);
        v112 = *(v0 + 1152);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v109 + *(v110 + 24), v111, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_29:
            v137 = *(v0 + 1192);
            v138 = *(v0 + 1184);
            v139 = *(v0 + 1176);
            v140 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v140, type metadata accessor for StableIdentifier);
            (*(v137 + 56))(v139, 1, 1, v138);
            goto LABEL_32;
          }

          v130 = *(v0 + 1824);
          v131 = *(v0 + 1816);
          v132 = *(v0 + 1160);
          v133 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v134 = *(v132 + 8 + v133[12]);

          v135 = *(v132 + 8 + v133[16]);

          v136 = *(v132 + 8 + v133[20]);

          v122 = *(v132 + v133[24]);
          (*(v130 + 8))(v132, v131);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_29;
          }

          v114 = *(v0 + 1824);
          v115 = *(v0 + 1160);
          v116 = v115 + 8;
          v117 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v118 = *(v115 + 8 + v117[12]);

          v119 = *(v115 + 8 + v117[16]);

          v120 = *(v115 + 8 + v117[20]);

          v121 = (v115 + v117[24]);
          v122 = *v121;
          LOBYTE(v115) = v121[1];
          v123 = *(v116 + v117[28]);

          v124 = *(v114 + 8);
          if (v115)
          {
            v125 = *(v0 + 1816);
            v126 = *(v0 + 1192);
            v127 = *(v0 + 1184);
            v128 = *(v0 + 1176);
            v129 = *(v0 + 1160);
            v124(*(v0 + 1840), v125);
            (*(v126 + 56))(v128, 1, 1, v127);
            v124(v129, v125);
            goto LABEL_32;
          }

          v124(*(v0 + 1160), *(v0 + 1816));
        }

        v141 = *(v0 + 2112);
        v142 = *(v0 + 1192);
        v143 = *(v0 + 1184);
        v144 = *(v0 + 1176);
        (*(v0 + 2104))(v144, *(v0 + 1840), *(v0 + 1816));
        *(v144 + *(v143 + 20)) = v122;
        (*(v142 + 56))(v144, 0, 1, v143);
LABEL_32:
        v145 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v145, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v145, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_6;
        }

        v146 = *(v0 + 1904);
        v147 = *(v0 + 1120);
        sub_100D12974(v145, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v148 = *(v147 + *(v146 + 44));
        if (!*(v148 + 16))
        {
          goto LABEL_38;
        }

        v149 = sub_100771F0C(12);
        if ((v150 & 1) == 0)
        {
          goto LABEL_38;
        }

        v151 = *(v0 + 1768);
        v152 = *(v0 + 1760);
        v153 = *(v0 + 1736);
        v154 = *(v0 + 1712);
        v155 = *(v0 + 1320);
        sub_100D11DC8(*(v148 + 56) + *(*(v0 + 1720) + 72) * v149, v153, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v153 + *(v154 + 20), v155, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v153, type metadata accessor for BookmarkMetaData);
        if ((*(v151 + 48))(v155, 1, v152) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_38:
          v156 = *(v0 + 1280);
          v157 = *(v0 + 1248);
          v158 = *(v0 + 1240);
          v159 = *(v0 + 1216);
          (*(v157 + 56))(v159, 1, 1, v158);
          static Date.distantPast.getter();
          if ((*(v157 + 48))(v159, 1, v158) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v160 = *(v0 + 1320);
          v161 = *(v0 + 1280);
          v162 = *(v0 + 1248);
          v163 = *(v0 + 1240);
          v164 = *(v0 + 1216);
          (*(v162 + 16))(v164, v160 + *(*(v0 + 1760) + 24), v163);
          sub_100018D00(v160, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v162 + 56))(v164, 0, 1, v163);
          (*(v162 + 32))(v161, v164, v163);
        }

        v165 = *(v0 + 1896);
        v166 = *(v0 + 1272);
        v167 = objc_autoreleasePoolPush();
        sub_100D088CC(v165, v166);
        v168 = *(v0 + 1280);
        v169 = *(v0 + 1272);
        v170 = *(v0 + 1248);
        v171 = *(v0 + 1240);
        objc_autoreleasePoolPop(v167);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
        LOBYTE(v167) = dispatch thunk of static Comparable.< infix(_:_:)();
        v172 = *(v170 + 8);
        v172(v169, v171);
        if (v167)
        {
          v173 = *(v0 + 1200);
          v172(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v173, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        else
        {
          v174 = *(v0 + 1200);
          v175 = *(v0 + 1184);
          v176 = type metadata accessor for PropertyListEncoder();
          v177 = *(v176 + 48);
          v178 = *(v176 + 52);
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
          v179 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v181 = v180;
          v436 = v172;
          v182 = *(v0 + 2152);
          v183 = *(v0 + 2144);
          v184 = *(v0 + 1680);
          v185 = v179;

          v186 = type metadata accessor for EncryptedData();
          (*(*(v186 - 8) + 56))(v184, 1, 1, v186);
          sub_100017D5C(v185, v181);
          v429 = v185;
          v432 = v181;
          sub_10125A120(1, v185, v181, v184, v439);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v187 = swift_allocObject();
          v188 = *(v0 + 840);
          v189 = *(v0 + 856);
          v190 = *v439;
          *(v187 + 48) = *(v0 + 824);
          *(v187 + 64) = v188;
          *(v187 + 80) = v189;
          *(v187 + 96) = *(v0 + 872);
          *(v187 + 16) = xmmword_101385D80;
          *(v187 + 32) = v190;
          sub_10002E98C(v183, v182);
          sub_1003914F8(v439, v0 + 448);
          v191 = sub_100D11764(v187, v183, v182);
          v192 = *(v0 + 1808);
          v193 = *(v0 + 1472);
          v194 = *(v0 + 1464);
          v195 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v187 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v192, &v193[*(v195 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v193 = 12;
          *&v193[*(v195 + 24)] = v191;
          sub_100D11DC8(v193, v194, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_100A5BE40(0, v40[2] + 1, 1, v40);
          }

          v197 = v40[2];
          v196 = v40[3];
          if (v197 >= v196 >> 1)
          {
            v40 = sub_100A5BE40(v196 > 1, v197 + 1, 1, v40);
          }

          v198 = *(v0 + 2080);
          v199 = *(v0 + 1944);
          v200 = *(v0 + 1472);
          v201 = *(v0 + 1464);
          v202 = *(v0 + 1456);
          v203 = *(v0 + 1424);
          v204 = *(v0 + 1120);
          v40[2] = v197 + 1;
          sub_100D12974(v201, v40 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v197, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v204, v199, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v200, v202, type metadata accessor for KeyDropInterface.KeyPackage);
          v205 = Logger.logObject.getter();
          v206 = static os_log_type_t.default.getter();
          v207 = os_log_type_enabled(v205, v206);
          v208 = *(v0 + 1944);
          v209 = *(v0 + 1456);
          v210 = *(v0 + 1280);
          v422 = *(v0 + 1472);
          v425 = *(v0 + 1240);
          v211 = *(v0 + 1200);
          if (v207)
          {
            v212 = swift_slowAlloc();
            v445[0] = swift_slowAlloc();
            *v212 = 136446466;
            v417 = v210;
            v213 = sub_100C71778();
            v215 = v214;
            sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
            v216 = sub_1000136BC(v213, v215, v445);

            *(v212 + 4) = v216;
            *(v212 + 12) = 2082;
            v217 = sub_101255410();
            v219 = v218;
            sub_100018D00(v209, type metadata accessor for KeyDropInterface.KeyPackage);
            v220 = sub_1000136BC(v217, v219, v445);

            *(v212 + 14) = v220;
            _os_log_impl(&_mh_execute_header, v205, v206, "Keys to upload: %{public}s,\nadded: %{public}s.", v212, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v439);
            sub_100016590(v429, v432);
            sub_100018D00(v422, type metadata accessor for KeyDropInterface.KeyPackage);
            v436(v417, v425);
          }

          else
          {

            sub_100391554(v439);
            sub_100016590(v429, v432);
            sub_100018D00(v209, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v422, type metadata accessor for KeyDropInterface.KeyPackage);
            v436(v210, v425);
          }

          sub_100018D00(v211, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        goto LABEL_6;
      case 13:
        v307 = swift_task_alloc();
        *(v0 + 2488) = v307;
        *v307 = v0;
        v307[1] = sub_100CD880C;
        v308 = *(v0 + 1896);
        v309 = *(v0 + 1232);
        v310 = *(v0 + 1128);

        sub_100CF5FBC(v309, v308);
        return;
      case 16:
        v292 = swift_task_alloc();
        *(v0 + 2496) = v292;
        *v292 = v0;
        v292[1] = sub_100CDBC44;
        v293 = *(v0 + 1896);
        v294 = *(v0 + 1264);
        v295 = *(v0 + 1144);
        v296 = *(v0 + 1128);

        sub_100CF6C9C(v294, v295, v293);
        return;
      default:
        goto LABEL_6;
    }
  }
}

void sub_100CEE764()
{
  v444 = v0;
  v440 = (v0 + 232);
  v437 = (v0 + 808);
  sub_100018D00(*(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
  v1 = *(v0 + 2480);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 1920);
  v4 = *(v0 + 1912);
  v5 = *(v0 + 1120);
  sub_100D11DC8(v5, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v432 = v7;
    v8 = *(v0 + 1928);
    v422 = v6;
    v9 = *(v0 + 1920);
    v425 = *(v0 + 1912);
    v10 = *(v0 + 1904);
    v419 = *(v0 + 1816);
    v11 = *(v0 + 2509);
    v12 = swift_slowAlloc();
    v443[0] = swift_slowAlloc();
    *v12 = 136447747;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v443);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = sub_10125403C(v11);
    v19 = sub_1000136BC(v17, v18, v443);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v20 = *(v10 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v443);

    *(v12 + 34) = v24;
    *(v12 + 42) = 2160;
    *(v12 + 44) = 1752392040;
    *(v12 + 52) = 2081;
    v25 = v425 + *(v10 + 24);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v425, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, v443);

    *(v12 + 54) = v29;
    *(v12 + 62) = 2082;
    swift_getErrorValue();
    v30 = *(v0 + 968);
    v31 = *(v0 + 976);
    v32 = *(v0 + 984);
    v33 = Error.localizedDescription.getter();
    v35 = sub_1000136BC(v33, v34, v443);

    *(v12 + 64) = v35;
    v36 = v422;
    _os_log_impl(&_mh_execute_header, v422, v432, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v12, 0x48u);
    swift_arrayDestroy();

    goto LABEL_4;
  }

  v37 = *(v0 + 1928);
  v38 = *(v0 + 1920);
  v39 = *(v0 + 1912);

  sub_100018D00(v39, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
  while (1)
  {
    v40 = *(v0 + 2208);
LABEL_6:
    v41 = *(v0 + 2200) + 1;
    if (v41 == *(v0 + 2184))
    {
      v280 = *(v0 + 2176);

      v281 = *(v0 + 2160);
      v282 = *(v0 + 2072);
      v283 = *(v0 + 2064);
      v284 = *(v0 + 2056);
      v285 = *(v0 + 2048);
      v286 = *(v0 + 2040);
      v338 = *(v0 + 2032);
      v339 = *(v0 + 2024);
      v340 = *(v0 + 2016);
      v341 = *(v0 + 2008);
      v342 = *(v0 + 2000);
      v343 = *(v0 + 1992);
      v344 = *(v0 + 1984);
      v345 = *(v0 + 1976);
      v346 = *(v0 + 1968);
      v347 = *(v0 + 1960);
      v348 = *(v0 + 1952);
      v349 = *(v0 + 1944);
      v350 = *(v0 + 1936);
      v351 = *(v0 + 1928);
      v352 = *(v0 + 1920);
      v353 = *(v0 + 1912);
      v287 = *(v0 + 1896);
      v354 = *(v0 + 1888);
      v355 = *(v0 + 1864);
      v356 = *(v0 + 1848);
      v357 = *(v0 + 1840);
      v288 = *(v0 + 1808);
      v358 = *(v0 + 1800);
      v359 = *(v0 + 1792);
      v360 = *(v0 + 1784);
      v361 = *(v0 + 1776);
      v362 = *(v0 + 1752);
      v363 = *(v0 + 1744);
      v364 = *(v0 + 1736);
      v365 = *(v0 + 1728);
      v366 = *(v0 + 1704);
      v367 = *(v0 + 1696);
      v368 = *(v0 + 1680);
      v369 = *(v0 + 1672);
      v370 = *(v0 + 1664);
      v371 = *(v0 + 1656);
      v372 = *(v0 + 1648);
      v373 = *(v0 + 1640);
      v374 = *(v0 + 1632);
      v375 = *(v0 + 1624);
      v376 = *(v0 + 1616);
      v377 = *(v0 + 1608);
      v378 = *(v0 + 1600);
      v379 = *(v0 + 1592);
      v380 = *(v0 + 1584);
      v381 = *(v0 + 1576);
      v382 = *(v0 + 1568);
      v383 = *(v0 + 1560);
      v384 = *(v0 + 1552);
      v385 = *(v0 + 1544);
      v386 = *(v0 + 1536);
      v387 = *(v0 + 1528);
      v388 = *(v0 + 1520);
      v389 = *(v0 + 1512);
      v390 = *(v0 + 1504);
      v391 = *(v0 + 1496);
      v392 = *(v0 + 1488);
      v393 = *(v0 + 1480);
      v394 = *(v0 + 1472);
      v395 = *(v0 + 1464);
      v396 = *(v0 + 1456);
      v397 = *(v0 + 1448);
      v398 = *(v0 + 1440);
      v399 = *(v0 + 1432);
      v400 = *(v0 + 1408);
      v401 = *(v0 + 1400);
      v402 = *(v0 + 1392);
      v403 = *(v0 + 1384);
      v404 = *(v0 + 1376);
      v405 = *(v0 + 1368);
      v406 = *(v0 + 1360);
      v407 = *(v0 + 1352);
      v408 = *(v0 + 1344);
      v409 = *(v0 + 1336);
      v410 = *(v0 + 1328);
      v411 = *(v0 + 1320);
      v412 = *(v0 + 1312);
      v413 = *(v0 + 1296);
      v414 = *(v0 + 1288);
      v416 = *(v0 + 1280);
      v417 = *(v0 + 1272);
      v418 = *(v0 + 1264);
      v421 = *(v0 + 1256);
      v424 = *(v0 + 1232);
      v428 = *(v0 + 1224);
      v431 = *(v0 + 1216);
      v435 = *(v0 + 1208);
      v436 = *(v0 + 1200);
      v438 = *(v0 + 1176);
      v439 = *(v0 + 1168);
      v441 = *(v0 + 1160);
      v442 = *(v0 + 1144);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v288, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v287, type metadata accessor for OwnedBeaconRecord);

      v289 = *(v0 + 8);

      v289(v40);
      return;
    }

    *(v0 + 2208) = v40;
    *(v0 + 2200) = v41;
    *(v0 + 2192) = 0;
    v42 = *(v0 + 2176);
    if (v41 >= *(v42 + 16))
    {
      __break(1u);
      return;
    }

    v43 = *(v0 + 2080);
    v44 = *(v0 + 2048);
    v45 = *(v0 + 1120);
    v46 = *(v42 + v41 + 32);
    *(v0 + 2509) = v46;
    sub_100D11DC8(v45, v44, type metadata accessor for SharingCircleKeyManager.Instruction);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 2048);
    if (v49)
    {
      v51 = swift_slowAlloc();
      v443[0] = swift_slowAlloc();
      *v51 = 136446466;
      v52 = sub_100C71778();
      v54 = v53;
      sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
      v55 = sub_1000136BC(v52, v54, v443);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      v56 = sub_10125403C(v46);
      v58 = sub_1000136BC(v56, v57, v443);

      *(v51 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v47, v48, "Keys to upload: %{public}s. Creating package for %{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v46)
    {
      case 1:
        v295 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v295 + 16) && (v296 = sub_100771F0C(1), (v297 & 1) != 0))
        {
          v298 = *(v0 + 1752);
          sub_100D11DC8(*(v295 + 56) + *(*(v0 + 1720) + 72) * v296, v298, type metadata accessor for BookmarkMetaData);
          v299 = *(v298 + 8);
          sub_100018D00(v298, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v299 = 0;
        }

        *(v0 + 2216) = v299;
        v333 = *(v0 + 2504);
        v334 = *(v0 + 1120);
        v335 = swift_task_alloc();
        *(v0 + 2224) = v335;
        *v335 = v0;
        v335[1] = sub_100CBBD44;
        v336 = *(v0 + 1704);
        v337 = *(v0 + 1128);

        sub_100CFC71C(v336, v334 + v333);
        return;
      case 4:
        v300 = swift_task_alloc();
        *(v0 + 2328) = v300;
        *v300 = v0;
        v300[1] = sub_100CC4E24;
        v301 = *(v0 + 1896);
        v302 = *(v0 + 1408);
        v303 = *(v0 + 1128);
        v304 = *(v0 + 1120);

        sub_100CF172C(v302, v304, v301, v0 + 880);
        return;
      case 5:
        v249 = *(v0 + 1768);
        v250 = *(v0 + 1760);
        v251 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v251, &qword_1016B0478, &unk_1013CDC10);
        v252 = *(v249 + 48);
        *(v0 + 2344) = v252;
        *(v0 + 2352) = (v249 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v250) = v252(v251, 1, v250);
        sub_10000B3A8(v251, &qword_1016B0478, &unk_1013CDC10);
        if (v250 == 1)
        {
          v309 = swift_task_alloc();
          *(v0 + 2360) = v309;
          *v309 = v0;
          v310 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v253 = *(v0 + 2352);
        v254 = *(v0 + 2344);
        v255 = *(v0 + 1760);
        v256 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v256, &qword_1016B0478, &unk_1013CDC10);
        v257 = v254(v256, 1, v255);
        v258 = *(v0 + 1368);
        if (v257 == 1)
        {
          v259 = *(v0 + 2080);
          v260 = *(v0 + 2000);
          v261 = *(v0 + 1120);
          sub_10000B3A8(v258, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v261, v260, type metadata accessor for SharingCircleKeyManager.Instruction);
          v36 = Logger.logObject.getter();
          v232 = static os_log_type_t.error.getter();
          v262 = os_log_type_enabled(v36, v232);
          v234 = *(v0 + 2000);
          if (v262)
          {
            v267 = swift_slowAlloc();
            v443[0] = swift_slowAlloc();
            *v267 = 136446466;
            v273 = sub_100C71778();
            v275 = v274;
            sub_100018D00(v234, type metadata accessor for SharingCircleKeyManager.Instruction);
            v276 = sub_1000136BC(v273, v275, v443);

            *(v267 + 4) = v276;
            *(v267 + 12) = 2082;
            v272 = 5;
LABEL_64:
            v277 = sub_10125403C(v272);
            v279 = sub_1000136BC(v277, v278, v443);

            *(v267 + 14) = v279;
            _os_log_impl(&_mh_execute_header, v36, v232, "No key alignment available for %{public}s. No package created for %{public}s", v267, 0x16u);
            swift_arrayDestroy();

LABEL_4:

            continue;
          }

          goto LABEL_62;
        }

        sub_100D12974(v258, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v323 = swift_task_alloc();
        *(v0 + 2376) = v323;
        *v323 = v0;
        v323[1] = sub_100CCA6E8;
        v315 = *(v0 + 2152);
        v316 = *(v0 + 2144);
        v317 = *(v0 + 1896);
        v318 = *(v0 + 1792);
        v319 = *(v0 + 1400);
        v324 = *(v0 + 1128);
        v321 = *(v0 + 1120);
        v322 = 0;
LABEL_88:

        sub_100CF2904(v319, v321, v317, v318, v322, v316, v315);
        return;
      case 6:
        v235 = *(v0 + 1768);
        v236 = *(v0 + 1760);
        v237 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v237, &qword_1016B0478, &unk_1013CDC10);
        v238 = *(v235 + 48);
        *(v0 + 2392) = v238;
        *(v0 + 2400) = (v235 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v236) = v238(v237, 1, v236);
        sub_10000B3A8(v237, &qword_1016B0478, &unk_1013CDC10);
        if (v236 == 1)
        {
          v309 = swift_task_alloc();
          *(v0 + 2408) = v309;
          *v309 = v0;
          v310 = sub_100CCD5CC;
          goto LABEL_83;
        }

        v239 = *(v0 + 2400);
        v240 = *(v0 + 2392);
        v241 = *(v0 + 1760);
        v242 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v242, &qword_1016B0478, &unk_1013CDC10);
        v243 = v240(v242, 1, v241);
        v244 = *(v0 + 1352);
        if (v243 != 1)
        {
          sub_100D12974(v244, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
          v314 = swift_task_alloc();
          *(v0 + 2424) = v314;
          *v314 = v0;
          v314[1] = sub_100CD0008;
          v315 = *(v0 + 2152);
          v316 = *(v0 + 2144);
          v317 = *(v0 + 1896);
          v318 = *(v0 + 1784);
          v319 = *(v0 + 1392);
          v320 = *(v0 + 1128);
          v321 = *(v0 + 1120);
          v322 = 1;
          goto LABEL_88;
        }

        v245 = *(v0 + 2080);
        v246 = *(v0 + 1984);
        v247 = *(v0 + 1120);
        sub_10000B3A8(v244, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v247, v246, type metadata accessor for SharingCircleKeyManager.Instruction);
        v36 = Logger.logObject.getter();
        v232 = static os_log_type_t.error.getter();
        v248 = os_log_type_enabled(v36, v232);
        v234 = *(v0 + 1984);
        if (v248)
        {
          v267 = swift_slowAlloc();
          v443[0] = swift_slowAlloc();
          *v267 = 136446466;
          v263 = sub_100C71778();
          v265 = v264;
          sub_100018D00(v234, type metadata accessor for SharingCircleKeyManager.Instruction);
          v266 = sub_1000136BC(v263, v265, v443);

          *(v267 + 4) = v266;
          *(v267 + 12) = 2082;
          v272 = 6;
          goto LABEL_64;
        }

        goto LABEL_62;
      case 8:
      case 10:
        v59 = *(v0 + 936);
        if (*(v59 + 16))
        {
          v60 = sub_100771F0C(v46);
          if (v61)
          {
            v62 = *(v0 + 2152);
            v63 = *(v0 + 2144);
            v64 = *(v0 + 1680);
            v65 = (*(v59 + 56) + 16 * v60);
            v67 = *v65;
            v66 = v65[1];
            v68 = type metadata accessor for EncryptedData();
            (*(*(v68 - 8) + 56))(v64, 1, 1, v68);
            sub_100017D5C(v67, v66);
            sub_100017D5C(v67, v66);
            sub_10125A120(1, v67, v66, v64, v440);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v69 = swift_allocObject();
            v70 = *(v0 + 264);
            v71 = *(v0 + 280);
            v72 = *v440;
            *(v69 + 48) = *(v0 + 248);
            *(v69 + 64) = v70;
            *(v69 + 80) = v71;
            *(v69 + 96) = *(v0 + 296);
            *(v69 + 16) = xmmword_101385D80;
            *(v69 + 32) = v72;
            sub_10002E98C(v63, v62);
            sub_1003914F8(v440, v0 + 736);
            v73 = sub_100D11764(v69, v63, v62);
            v433 = v67;
            v74 = *(v0 + 1808);
            v75 = *(v0 + 1520);
            v76 = *(v0 + 1512);
            v77 = *(v0 + 1416);
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v69 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v74, &v75[*(v77 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v75 = v46;
            *&v75[*(v77 + 24)] = v73;
            sub_100D11DC8(v75, v76, type metadata accessor for KeyDropInterface.KeyPackage);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_100A5BE40(0, v40[2] + 1, 1, v40);
            }

            v79 = v40[2];
            v78 = v40[3];
            if (v79 >= v78 >> 1)
            {
              v40 = sub_100A5BE40(v78 > 1, v79 + 1, 1, v40);
            }

            v80 = *(v0 + 2080);
            v81 = *(v0 + 1960);
            v82 = *(v0 + 1520);
            v83 = *(v0 + 1512);
            v84 = *(v0 + 1504);
            v85 = *(v0 + 1424);
            v86 = *(v0 + 1120);
            v40[2] = v79 + 1;
            sub_100D12974(v83, v40 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v79, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v86, v81, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v82, v84, type metadata accessor for KeyDropInterface.KeyPackage);
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.default.getter();
            v89 = os_log_type_enabled(v87, v88);
            v90 = *(v0 + 1960);
            v91 = *(v0 + 1520);
            v92 = *(v0 + 1504);
            if (v89)
            {
              v93 = swift_slowAlloc();
              v443[0] = swift_slowAlloc();
              *v93 = 136446466;
              v426 = v66;
              v429 = v91;
              v94 = sub_100C71778();
              v96 = v95;
              sub_100018D00(v90, type metadata accessor for SharingCircleKeyManager.Instruction);
              v97 = sub_1000136BC(v94, v96, v443);

              *(v93 + 4) = v97;
              *(v93 + 12) = 2082;
              v98 = sub_101255410();
              v100 = v99;
              sub_100018D00(v92, type metadata accessor for KeyDropInterface.KeyPackage);
              v101 = sub_1000136BC(v98, v100, v443);

              *(v93 + 14) = v101;
              _os_log_impl(&_mh_execute_header, v87, v88, "Keys to upload: %{public}s,\nadded: %{public}s.", v93, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v440);
              sub_100016590(v433, v426);
              sub_100018D00(v429, type metadata accessor for KeyDropInterface.KeyPackage);
            }

            else
            {

              sub_100391554(v440);
              sub_100016590(v433, v66);
              sub_100018D00(v92, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v90, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v91, type metadata accessor for KeyDropInterface.KeyPackage);
            }
          }
        }

        goto LABEL_6;
      case 9:
        v221 = *(v0 + 1768);
        v222 = *(v0 + 1760);
        v223 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v223, &qword_1016B0478, &unk_1013CDC10);
        v224 = *(v221 + 48);
        *(v0 + 2440) = v224;
        *(v0 + 2448) = (v221 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v222) = v224(v223, 1, v222);
        sub_10000B3A8(v223, &qword_1016B0478, &unk_1013CDC10);
        if (v222 == 1)
        {
          v309 = swift_task_alloc();
          *(v0 + 2456) = v309;
          *v309 = v0;
          v310 = sub_100CD2EEC;
LABEL_83:
          v309[1] = v310;
          v311 = *(v0 + 2160);
          v312 = *(v0 + 1896);
          v313 = *(v0 + 1128);

          sub_100CF0FB4(v312, v311, v313);
          return;
        }

        v225 = *(v0 + 2448);
        v226 = *(v0 + 2440);
        v227 = *(v0 + 1760);
        v228 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v228, &qword_1016B0478, &unk_1013CDC10);
        if (v226(v228, 1, v227) != 1)
        {
          sub_100D12974(*(v0 + 1336), *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v325 = swift_task_alloc();
          *(v0 + 2472) = v325;
          *v325 = v0;
          v325[1] = sub_100CD5928;
          v326 = *(v0 + 2152);
          v327 = *(v0 + 2144);
          v328 = *(v0 + 1896);
          v329 = *(v0 + 1776);
          v330 = *(v0 + 1384);
          v331 = *(v0 + 1128);
          v332 = *(v0 + 1120);

          sub_100CF3F94(v330, v332, v328, v329, v327, v326);
          return;
        }

        v229 = *(v0 + 2080);
        v230 = *(v0 + 1968);
        v231 = *(v0 + 1120);
        sub_10000B3A8(*(v0 + 1336), &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v231, v230, type metadata accessor for SharingCircleKeyManager.Instruction);
        v36 = Logger.logObject.getter();
        v232 = static os_log_type_t.error.getter();
        v233 = os_log_type_enabled(v36, v232);
        v234 = *(v0 + 1968);
        if (v233)
        {
          v267 = swift_slowAlloc();
          v443[0] = swift_slowAlloc();
          *v267 = 136446466;
          v268 = sub_100C71778();
          v270 = v269;
          sub_100018D00(v234, type metadata accessor for SharingCircleKeyManager.Instruction);
          v271 = sub_1000136BC(v268, v270, v443);

          *(v267 + 4) = v271;
          *(v267 + 12) = 2082;
          v272 = 9;
          goto LABEL_64;
        }

LABEL_62:

        sub_100018D00(v234, type metadata accessor for SharingCircleKeyManager.Instruction);
        break;
      case 12:
        v102 = *(v0 + 1824);
        v103 = *(v0 + 1816);
        v104 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v104, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v102 + 48))(v104, 1, v103) == 1)
        {
          v105 = *(v0 + 1192);
          v106 = *(v0 + 1184);
          v107 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v105 + 56))(v107, 1, 1, v106);
          goto LABEL_32;
        }

        v108 = *(v0 + 2112);
        v109 = *(v0 + 1896);
        v110 = *(v0 + 1872);
        v111 = *(v0 + 1160);
        v112 = *(v0 + 1152);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v109 + *(v110 + 24), v111, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_29:
            v137 = *(v0 + 1192);
            v138 = *(v0 + 1184);
            v139 = *(v0 + 1176);
            v140 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v140, type metadata accessor for StableIdentifier);
            (*(v137 + 56))(v139, 1, 1, v138);
            goto LABEL_32;
          }

          v130 = *(v0 + 1824);
          v131 = *(v0 + 1816);
          v132 = *(v0 + 1160);
          v133 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v134 = *(v132 + 8 + v133[12]);

          v135 = *(v132 + 8 + v133[16]);

          v136 = *(v132 + 8 + v133[20]);

          v122 = *(v132 + v133[24]);
          (*(v130 + 8))(v132, v131);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_29;
          }

          v114 = *(v0 + 1824);
          v115 = *(v0 + 1160);
          v116 = v115 + 8;
          v117 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v118 = *(v115 + 8 + v117[12]);

          v119 = *(v115 + 8 + v117[16]);

          v120 = *(v115 + 8 + v117[20]);

          v121 = (v115 + v117[24]);
          v122 = *v121;
          LOBYTE(v115) = v121[1];
          v123 = *(v116 + v117[28]);

          v124 = *(v114 + 8);
          if (v115)
          {
            v125 = *(v0 + 1816);
            v126 = *(v0 + 1192);
            v127 = *(v0 + 1184);
            v128 = *(v0 + 1176);
            v129 = *(v0 + 1160);
            v124(*(v0 + 1840), v125);
            (*(v126 + 56))(v128, 1, 1, v127);
            v124(v129, v125);
            goto LABEL_32;
          }

          v124(*(v0 + 1160), *(v0 + 1816));
        }

        v141 = *(v0 + 2112);
        v142 = *(v0 + 1192);
        v143 = *(v0 + 1184);
        v144 = *(v0 + 1176);
        (*(v0 + 2104))(v144, *(v0 + 1840), *(v0 + 1816));
        *(v144 + *(v143 + 20)) = v122;
        (*(v142 + 56))(v144, 0, 1, v143);
LABEL_32:
        v145 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v145, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v145, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_6;
        }

        v146 = *(v0 + 1904);
        v147 = *(v0 + 1120);
        sub_100D12974(v145, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v148 = *(v147 + *(v146 + 44));
        if (!*(v148 + 16))
        {
          goto LABEL_38;
        }

        v149 = sub_100771F0C(12);
        if ((v150 & 1) == 0)
        {
          goto LABEL_38;
        }

        v151 = *(v0 + 1768);
        v152 = *(v0 + 1760);
        v153 = *(v0 + 1736);
        v154 = *(v0 + 1712);
        v155 = *(v0 + 1320);
        sub_100D11DC8(*(v148 + 56) + *(*(v0 + 1720) + 72) * v149, v153, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v153 + *(v154 + 20), v155, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v153, type metadata accessor for BookmarkMetaData);
        if ((*(v151 + 48))(v155, 1, v152) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_38:
          v156 = *(v0 + 1280);
          v157 = *(v0 + 1248);
          v158 = *(v0 + 1240);
          v159 = *(v0 + 1216);
          (*(v157 + 56))(v159, 1, 1, v158);
          static Date.distantPast.getter();
          if ((*(v157 + 48))(v159, 1, v158) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v160 = *(v0 + 1320);
          v161 = *(v0 + 1280);
          v162 = *(v0 + 1248);
          v163 = *(v0 + 1240);
          v164 = *(v0 + 1216);
          (*(v162 + 16))(v164, v160 + *(*(v0 + 1760) + 24), v163);
          sub_100018D00(v160, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v162 + 56))(v164, 0, 1, v163);
          (*(v162 + 32))(v161, v164, v163);
        }

        v165 = *(v0 + 1896);
        v166 = *(v0 + 1272);
        v167 = objc_autoreleasePoolPush();
        sub_100D088CC(v165, v166);
        v168 = *(v0 + 1280);
        v169 = *(v0 + 1272);
        v170 = *(v0 + 1248);
        v171 = *(v0 + 1240);
        objc_autoreleasePoolPop(v167);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
        LOBYTE(v167) = dispatch thunk of static Comparable.< infix(_:_:)();
        v172 = *(v170 + 8);
        v172(v169, v171);
        if (v167)
        {
          v173 = *(v0 + 1200);
          v172(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v173, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        else
        {
          v174 = *(v0 + 1200);
          v175 = *(v0 + 1184);
          v176 = type metadata accessor for PropertyListEncoder();
          v177 = *(v176 + 48);
          v178 = *(v176 + 52);
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
          v179 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v181 = v180;
          v434 = v172;
          v182 = *(v0 + 2152);
          v183 = *(v0 + 2144);
          v184 = *(v0 + 1680);
          v185 = v179;

          v186 = type metadata accessor for EncryptedData();
          (*(*(v186 - 8) + 56))(v184, 1, 1, v186);
          sub_100017D5C(v185, v181);
          v427 = v185;
          v430 = v181;
          sub_10125A120(1, v185, v181, v184, v437);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v187 = swift_allocObject();
          v188 = *(v0 + 840);
          v189 = *(v0 + 856);
          v190 = *v437;
          *(v187 + 48) = *(v0 + 824);
          *(v187 + 64) = v188;
          *(v187 + 80) = v189;
          *(v187 + 96) = *(v0 + 872);
          *(v187 + 16) = xmmword_101385D80;
          *(v187 + 32) = v190;
          sub_10002E98C(v183, v182);
          sub_1003914F8(v437, v0 + 448);
          v191 = sub_100D11764(v187, v183, v182);
          v192 = *(v0 + 1808);
          v193 = *(v0 + 1472);
          v194 = *(v0 + 1464);
          v195 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v187 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v192, &v193[*(v195 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v193 = 12;
          *&v193[*(v195 + 24)] = v191;
          sub_100D11DC8(v193, v194, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_100A5BE40(0, v40[2] + 1, 1, v40);
          }

          v197 = v40[2];
          v196 = v40[3];
          if (v197 >= v196 >> 1)
          {
            v40 = sub_100A5BE40(v196 > 1, v197 + 1, 1, v40);
          }

          v198 = *(v0 + 2080);
          v199 = *(v0 + 1944);
          v200 = *(v0 + 1472);
          v201 = *(v0 + 1464);
          v202 = *(v0 + 1456);
          v203 = *(v0 + 1424);
          v204 = *(v0 + 1120);
          v40[2] = v197 + 1;
          sub_100D12974(v201, v40 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v197, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v204, v199, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v200, v202, type metadata accessor for KeyDropInterface.KeyPackage);
          v205 = Logger.logObject.getter();
          v206 = static os_log_type_t.default.getter();
          v207 = os_log_type_enabled(v205, v206);
          v208 = *(v0 + 1944);
          v209 = *(v0 + 1456);
          v210 = *(v0 + 1280);
          v420 = *(v0 + 1472);
          v423 = *(v0 + 1240);
          v211 = *(v0 + 1200);
          if (v207)
          {
            v212 = swift_slowAlloc();
            v443[0] = swift_slowAlloc();
            *v212 = 136446466;
            v415 = v210;
            v213 = sub_100C71778();
            v215 = v214;
            sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
            v216 = sub_1000136BC(v213, v215, v443);

            *(v212 + 4) = v216;
            *(v212 + 12) = 2082;
            v217 = sub_101255410();
            v219 = v218;
            sub_100018D00(v209, type metadata accessor for KeyDropInterface.KeyPackage);
            v220 = sub_1000136BC(v217, v219, v443);

            *(v212 + 14) = v220;
            _os_log_impl(&_mh_execute_header, v205, v206, "Keys to upload: %{public}s,\nadded: %{public}s.", v212, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v437);
            sub_100016590(v427, v430);
            sub_100018D00(v420, type metadata accessor for KeyDropInterface.KeyPackage);
            v434(v415, v423);
          }

          else
          {

            sub_100391554(v437);
            sub_100016590(v427, v430);
            sub_100018D00(v209, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v420, type metadata accessor for KeyDropInterface.KeyPackage);
            v434(v210, v423);
          }

          sub_100018D00(v211, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        goto LABEL_6;
      case 13:
        v305 = swift_task_alloc();
        *(v0 + 2488) = v305;
        *v305 = v0;
        v305[1] = sub_100CD880C;
        v306 = *(v0 + 1896);
        v307 = *(v0 + 1232);
        v308 = *(v0 + 1128);

        sub_100CF5FBC(v307, v306);
        return;
      case 16:
        v290 = swift_task_alloc();
        *(v0 + 2496) = v290;
        *v290 = v0;
        v290[1] = sub_100CDBC44;
        v291 = *(v0 + 1896);
        v292 = *(v0 + 1264);
        v293 = *(v0 + 1144);
        v294 = *(v0 + 1128);

        sub_100CF6C9C(v292, v293, v291);
        return;
      default:
        goto LABEL_6;
    }
  }
}

uint64_t sub_100CF0FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a3;
  v5 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v3[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v11 = type metadata accessor for StableIdentifier();
  v3[21] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_projectBox();

  return _swift_task_switch(sub_100CF112C, a3, 0);
}

uint64_t sub_100CF112C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[13];
  v4 = type metadata accessor for OwnedBeaconRecord();
  v0[24] = v4;
  sub_100D11DC8(v3 + v4[6], v1, type metadata accessor for StableIdentifier);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  sub_100018D00(v1, type metadata accessor for StableIdentifier);
  if (v2)
  {
    v5 = v0[13];
    v0[5] = v4;
    v0[6] = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
    v6 = sub_1000280DC(v0 + 2);
    sub_100D11DC8(v5, v6, type metadata accessor for OwnedBeaconRecord);
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_100CF1400;
    v8 = v0[16];
    v9 = v0[14];

    return sub_100C9FBF0(v8, (v0 + 2));
  }

  else
  {
    v12 = v0[19];
    v11 = v0[20];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[13];
    static Date.trustedNow.getter(v11);
    v16 = v4[8];
    v17 = sub_10088756C(v15 + v4[5], v15 + v16, v11, 0);
    (*(v12 + 16))(v14, v15 + v16, v13);
    v18 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
    *(v14 + *(v18 + 20)) = v17;
    (*(v12 + 32))(v14 + *(v18 + 24), v11, v13);
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    v19 = v0[22];
    v20 = v0[23];
    v21 = v0[20];
    v23 = v0[16];
    v22 = v0[17];
    swift_beginAccess();
    sub_100D12C2C(v22, v20);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100CF1400()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v8 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = sub_100CF1694;
  }

  else
  {
    v6 = *(v2 + 112);
    sub_100007BAC((v2 + 16));
    v5 = sub_100CF1528;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100CF1528()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  (*(v2 + 16))(v3, v0[13] + *(v0[24] + 32), v1);
  v6 = *v4;
  v7 = *(v5 + 36);
  v8 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  (*(v2 + 32))(v3 + *(v8 + 24), &v4[v7], v1);
  *(v3 + *(v8 + 20)) = v6;
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[20];
  v13 = v0[16];
  v12 = v0[17];
  swift_beginAccess();
  sub_100D12C2C(v12, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100CF1694()
{
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  sub_100007BAC(v0 + 2);

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_100CF172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v5[20] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v8 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v5[22] = v8;
  v9 = *(v8 - 8);
  v5[23] = v9;
  v10 = *(v9 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v11 = *(type metadata accessor for BookmarkMetaData() - 8);
  v5[26] = v11;
  v12 = *(v11 + 64) + 15;
  v5[27] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016B9B30, &unk_1013E3698) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100CF18D8, v4, 0);
}

uint64_t sub_100CF18D8()
{
  v1 = v0[30];
  v2 = v0[22];
  v3 = v0[23];
  v4 = *(v3 + 56);
  v0[31] = v4;
  v0[32] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_100CF19A0;
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];

  return sub_100CF9A0C(v8, 4, v7);
}

uint64_t sub_100CF19A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 264);
  v7 = *v3;
  v5[34] = a1;
  v5[35] = a2;
  v5[36] = v2;

  v8 = v4[19];
  if (v2)
  {
    v9 = sub_100CF2728;
  }

  else
  {
    v9 = sub_100CF1AD8;
  }

  return _swift_task_switch(v9, v8, 0);
}

void sub_100CF1AD8()
{
  v57 = v0;
  v1 = *(*(v0 + 128) + *(*(v0 + 160) + 44));
  if (*(v1 + 16))
  {
    v2 = sub_100771F0C(4);
    if (v3)
    {
      v4 = *(v0 + 280);
      v5 = *(v0 + 216);
      sub_100D11DC8(*(v1 + 56) + *(*(v0 + 208) + 72) * v2, v5, type metadata accessor for BookmarkMetaData);
      v6 = *(v5 + 8);
      sub_100018D00(v5, type metadata accessor for BookmarkMetaData);
      if (v6 < v4)
      {
        v7 = *(v0 + 280);
        goto LABEL_6;
      }

LABEL_9:
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 168);
      v13 = *(v0 + 128);
      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177BF08);
      sub_100D11DC8(v13, v12, type metadata accessor for SharingCircleKeyManager.Instruction);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 240);
      v19 = *(v0 + 168);
      if (v17)
      {
        v20 = *(v0 + 160);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v56 = v22;
        *v21 = 141558275;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        v23 = *(v20 + 20);
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
        v27 = sub_1000136BC(v24, v26, &v56);

        *(v21 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v15, v16, "Wild bundle reached highWater mark. Not uploading wild bundle for %{private,mask.hash}s.", v21, 0x16u);
        sub_100007BAC(v22);
      }

      else
      {

        sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      sub_10000B3A8(v18, &qword_1016B9B30, &unk_1013E3698);
      v42 = *(v0 + 256);
      (*(v0 + 248))(*(v0 + 120), 1, 1, *(v0 + 176));
      v44 = *(v0 + 232);
      v43 = *(v0 + 240);
      v46 = *(v0 + 216);
      v45 = *(v0 + 224);
      v48 = *(v0 + 192);
      v47 = *(v0 + 200);
      v49 = *(v0 + 168);

      v41 = *(v0 + 8);
      goto LABEL_21;
    }
  }

  v7 = *(v0 + 280);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  v8 = *(v0 + 144);
  *(v0 + 56) = v8[1];
  v9 = *(v0 + 272);
  *(v0 + 296) = v9;
  v10 = v7 - v9;
  if (v7 < v9)
  {
    v11 = v9 - v7;
    if (v11 >= 0)
    {
      v10 = -v11;
      goto LABEL_14;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if ((v7 - v9) < 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  *(v0 + 304) = v10;
  v28 = *(v0 + 64);
  if (v28 >> 60 == 15)
  {
    v29 = 8;
LABEL_18:
    v32 = *(v0 + 240);
    sub_1001BAEE0();
    swift_allocError();
    *v33 = v29;
    swift_willThrow();
    sub_10000B3A8(v32, &qword_1016B9B30, &unk_1013E3698);
    v35 = *(v0 + 232);
    v34 = *(v0 + 240);
    v37 = *(v0 + 216);
    v36 = *(v0 + 224);
    v39 = *(v0 + 192);
    v38 = *(v0 + 200);
    v40 = *(v0 + 168);

    v41 = *(v0 + 8);
LABEL_21:

    v41();
    return;
  }

  v30 = *(v0 + 56);
  *(v0 + 72) = *v8;
  v31 = *(v0 + 80);
  if (v31 >> 60 == 15)
  {
    v29 = 9;
    goto LABEL_18;
  }

  v50 = *(v0 + 136);
  v51 = *(v0 + 72);
  *(v0 + 40) = type metadata accessor for OwnedBeaconRecord();
  *(v0 + 48) = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v52 = sub_1000280DC((v0 + 16));
  sub_100D11DC8(v50, v52, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(v0 + 56, v0 + 88, &qword_1016977A8, &qword_1013D6820);
  sub_1000D2A70(v0 + 72, v0 + 104, &qword_1016977A8, &qword_1013D6820);
  v53 = swift_task_alloc();
  *(v0 + 312) = v53;
  *v53 = v0;
  v53[1] = sub_100CF2098;
  v54 = *(v0 + 200);
  v55 = *(v0 + 152);

  sub_100D01E78(v54, v0 + 16, v9, v30, v28, v51, v31);
}

uint64_t sub_100CF2098()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_100CF27F8;
  }

  else
  {
    v6 = *(v2 + 152);
    sub_100007BAC((v2 + 16));
    v5 = sub_100CF21C0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100CF21C0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_1000D2A70(*(v0 + 240), v1, &qword_1016B9B30, &unk_1013E3698);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  if (v4 == 1)
  {
    v9 = *(v0 + 200);
    v49 = *(v0 + 176);
    sub_10000B3A8(v7, &qword_1016B9B30, &unk_1013E3698);
    sub_10000B3A8(v0 + 72, &qword_1016977A8, &qword_1013D6820);
    sub_10000B3A8(v0 + 56, &qword_1016977A8, &qword_1013D6820);
    sub_10000B3A8(v8, &qword_1016B9B30, &unk_1013E3698);
    sub_100D12974(v9, v7, type metadata accessor for KeyDropInterface.KeyPackage);
    result = v6(v7, 0, 1, v49);
    if (*(v0 + 304))
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1000D2AD8(*(v0 + 240), *(v0 + 120), &qword_1016B9B30, &unk_1013E3698);
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 168);

    v29 = *(v0 + 8);
LABEL_15:

    return v29();
  }

  v15 = *(v0 + 224);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v18 = *(v0 + 176);
  sub_100D12974(*(v0 + 232), v17, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100D11DC8(v17 + *(v18 + 20), &v15[*(v18 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
  v19 = *(v18 + 24);
  v20 = *(v17 + v19);
  v50 = *(v16 + v19);

  sub_100397FD4(v21);
  sub_10000B3A8(v0 + 72, &qword_1016977A8, &qword_1013D6820);
  sub_10000B3A8(v0 + 56, &qword_1016977A8, &qword_1013D6820);
  sub_100018D00(v17, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100018D00(v16, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_10000B3A8(v7, &qword_1016B9B30, &unk_1013E3698);
  *v15 = 4;
  *&v15[*(v18 + 24)] = v50;
  v6(v15, 0, 1, v18);
  result = sub_1000D2AD8(v15, v7, &qword_1016B9B30, &unk_1013E3698);
  if (!*(v0 + 304))
  {
    goto LABEL_8;
  }

LABEL_3:
  v11 = *(v0 + 296);
  v12 = v11 + 1;
  if (v11 == -1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v0 + 296) = v12;
  v13 = *(v0 + 280);
  v14 = v13 - v12;
  if (v13 < v12)
  {
    if ((v12 - v13) >= 0)
    {
      v14 = v13 - v12;
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  if ((v13 - v12) < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_10:
  *(v0 + 304) = v14;
  v30 = *(v0 + 64);
  if (v30 >> 60 == 15)
  {
    v31 = 8;
LABEL_14:
    v34 = *(v0 + 240);
    sub_1001BAEE0();
    swift_allocError();
    *v35 = v31;
    swift_willThrow();
    sub_10000B3A8(v34, &qword_1016B9B30, &unk_1013E3698);
    v37 = *(v0 + 232);
    v36 = *(v0 + 240);
    v39 = *(v0 + 216);
    v38 = *(v0 + 224);
    v41 = *(v0 + 192);
    v40 = *(v0 + 200);
    v42 = *(v0 + 168);

    v29 = *(v0 + 8);
    goto LABEL_15;
  }

  v32 = *(v0 + 56);
  *(v0 + 72) = **(v0 + 144);
  v33 = *(v0 + 80);
  if (v33 >> 60 == 15)
  {
    v31 = 9;
    goto LABEL_14;
  }

  v43 = *(v0 + 136);
  v44 = *(v0 + 72);
  *(v0 + 40) = type metadata accessor for OwnedBeaconRecord();
  *(v0 + 48) = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v45 = sub_1000280DC((v0 + 16));
  sub_100D11DC8(v43, v45, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(v0 + 56, v0 + 88, &qword_1016977A8, &qword_1013D6820);
  sub_1000D2A70(v0 + 72, v0 + 104, &qword_1016977A8, &qword_1013D6820);
  v46 = swift_task_alloc();
  *(v0 + 312) = v46;
  *v46 = v0;
  v46[1] = sub_100CF2098;
  v47 = *(v0 + 200);
  v48 = *(v0 + 152);

  return sub_100D01E78(v47, v0 + 16, v12, v32, v30, v44, v33);
}

uint64_t sub_100CF2728()
{
  sub_10000B3A8(v0[30], &qword_1016B9B30, &unk_1013E3698);
  v1 = v0[36];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[21];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100CF27F8()
{
  v1 = v0[30];
  sub_10000B3A8((v0 + 9), &qword_1016977A8, &qword_1013D6820);
  sub_10000B3A8((v0 + 7), &qword_1016977A8, &qword_1013D6820);
  sub_10000B3A8(v1, &qword_1016B9B30, &unk_1013E3698);
  sub_100007BAC(v0 + 2);
  v2 = v0[40];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100CF2904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = v7;
  *(v8 + 144) = a4;
  *(v8 + 152) = a6;
  *(v8 + 320) = a5;
  *(v8 + 128) = a2;
  *(v8 + 136) = a3;
  *(v8 + 120) = a1;
  v12 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v8 + 176) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v15 = type metadata accessor for TimeBasedKey();
  *(v8 + 232) = v15;
  v16 = *(v15 - 8);
  *(v8 + 240) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v18 = *(type metadata accessor for BookmarkMetaData() - 8);
  *(v8 + 256) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v20 = swift_task_alloc();
  *(v8 + 272) = v20;
  *v20 = v8;
  v20[1] = sub_100CF2B20;
  if (a5)
  {
    v21 = 6;
  }

  else
  {
    v21 = 5;
  }

  return sub_100CF9A0C(a2, v21, a3);
}

uint64_t sub_100CF2B20(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 272);
  v5 = *v3;
  v5[35] = a1;
  v5[36] = a2;

  if (v2)
  {
    v6 = v5[33];
    v7 = v5[31];
    v9 = v5[27];
    v8 = v5[28];
    v11 = v5[25];
    v10 = v5[26];
    v12 = v5[23];
    v13 = v5[24];

    v14 = v5[1];

    return v14();
  }

  else
  {
    v16 = v5[21];

    return _swift_task_switch(sub_100CF2CC8, v16, 0);
  }
}

void sub_100CF2CC8()
{
  v44 = v0;
  v1 = *(v0 + 288);
  if ((*(v0 + 320) & 1) != 0 || !v1)
  {
    goto LABEL_7;
  }

  if (!is_mul_ok(v1, 0x60uLL))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v2 = 96 * v1;
  v1 = 96 * v1 - 1;
  v3 = v2 - 96;
  if (v3 <= 1)
  {
    v3 = 1;
  }

  if (v1 < v3)
  {
    goto LABEL_26;
  }

LABEL_7:
  v4 = *(*(v0 + 128) + *(*(v0 + 176) + 44));
  if (*(v4 + 16) && ((*(v0 + 320) & 1) == 0 ? (v5 = 5) : (v5 = 6), v6 = sub_100771F0C(v5), (v7 & 1) != 0))
  {
    v8 = *(v0 + 264);
    sub_100D11DC8(*(v4 + 56) + *(*(v0 + 256) + 72) * v6, v8, type metadata accessor for BookmarkMetaData);
    v9 = *(v8 + 8);
    sub_100018D00(v8, type metadata accessor for BookmarkMetaData);
    if (v9 >= v1)
    {
LABEL_13:
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 184);
      v11 = *(v0 + 128);
      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177BF08);
      sub_100D11DC8(v11, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 184);
      if (v15)
      {
        v17 = *(v0 + 176);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v43 = v19;
        *v18 = 134218755;
        *(v18 + 4) = v1;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v9;
        *(v18 + 22) = 2160;
        *(v18 + 24) = 1752392040;
        *(v18 + 32) = 2081;
        v20 = *(v17 + 20);
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
        v24 = sub_1000136BC(v21, v23, &v43);

        *(v18 + 34) = v24;
        _os_log_impl(&_mh_execute_header, v13, v14, "Address key package reached highWater mark (%llu > %llu). Not uploading address keys for %{private,mask.hash}s.", v18, 0x2Au);
        sub_100007BAC(v19);
      }

      else
      {

        sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      v32 = *(v0 + 120);
      v33 = type metadata accessor for KeyDropInterface.KeyPackage(0);
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      v34 = *(v0 + 264);
      v35 = *(v0 + 248);
      v37 = *(v0 + 216);
      v36 = *(v0 + 224);
      v39 = *(v0 + 200);
      v38 = *(v0 + 208);
      v41 = *(v0 + 184);
      v40 = *(v0 + 192);

      v42 = *(v0 + 8);

      v42();
      return;
    }
  }

  else
  {
    v9 = 0;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  v25 = *(v0 + 320);
  v26 = *(v0 + 136);
  *(v0 + 40) = type metadata accessor for OwnedBeaconRecord();
  *(v0 + 48) = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v27 = sub_1000280DC((v0 + 16));
  sub_100D11DC8(v26, v27, type metadata accessor for OwnedBeaconRecord);
  v28 = swift_task_alloc();
  *(v0 + 296) = v28;
  *v28 = v0;
  v28[1] = sub_100CF31AC;
  v29 = *(v0 + 280);
  v30 = *(v0 + 288);
  v31 = *(v0 + 168);

  sub_100D075D8(v0 + 16, v25 & 1, v29, v30);
}

uint64_t sub_100CF31AC(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[37];
  v6 = *v2;
  (*v2)[38] = v1;

  if (v1)
  {
    v7 = v4[21];

    v8 = sub_100CF3BE0;
    v9 = v7;
  }

  else
  {
    v10 = v4[21];
    v4[39] = a1;
    sub_100007BAC(v4 + 2);
    v8 = sub_100CF32F8;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100CF32F8()
{
  v99 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 144);
  v4 = *(v0 + 320) & 1;
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = sub_10013CFC0(sub_100D12BBC, v5, v1);

  v7 = *(v6 + 16);
  if (!v7)
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_35:
    v54 = sub_100D11764(v10, *(v0 + 152), *(v0 + 160));
    if (v2)
    {

      v55 = *(v0 + 264);
      v56 = *(v0 + 248);
      v58 = *(v0 + 216);
      v57 = *(v0 + 224);
      v60 = *(v0 + 200);
      v59 = *(v0 + 208);
      v62 = *(v0 + 184);
      v61 = *(v0 + 192);

      v63 = *(v0 + 8);
    }

    else
    {
      v64 = v54;
      v65 = *(v0 + 320);
      v66 = *(v0 + 144);
      v67 = *(v0 + 120);

      if (v65)
      {
        v68 = 6;
      }

      else
      {
        v68 = 5;
      }

      v69 = type metadata accessor for KeyDropInterface.KeyPackage(0);
      sub_100D11DC8(v66, &v67[*(v69 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v67 = v68;
      *&v67[*(v69 + 24)] = v64;
      (*(*(v69 - 8) + 56))(v67, 0, 1, v69);
      v70 = *(v0 + 264);
      v71 = *(v0 + 248);
      v73 = *(v0 + 216);
      v72 = *(v0 + 224);
      v75 = *(v0 + 200);
      v74 = *(v0 + 208);
      v77 = *(v0 + 184);
      v76 = *(v0 + 192);

      v63 = *(v0 + 8);
    }

    return v63();
  }

  v8 = *(v0 + 240);
  v88 = *(v0 + 232);
  sub_101123DD0(0, v7, 0);
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v89 = v8;
  v86 = v6;
  v87 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v85 = v7;
  while (1)
  {
    if (v9 >= *(v6 + 16))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v96 = v10;
    v11 = *(v0 + 248);
    sub_100D11DC8(v87 + *(v89 + 72) * v9, v11, type metadata accessor for TimeBasedKey);
    v12 = sub_100A7A194(*(v11 + *(v88 + 24) + 16), *(v11 + *(v88 + 24) + 24));
    if (v2)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
LABEL_30:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_101385D80;
        *(v0 + 104) = v2;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v48 = String.init<A>(describing:)();
        v50 = v49;
        *(v47 + 56) = &type metadata for String;
        *(v47 + 64) = sub_100008C00();
        *(v47 + 32) = v48;
        *(v47 + 40) = v50;
        os_log(_:dso:log:_:_:)();

        sub_1001BAF88();
        v51 = swift_allocError();
        *v52 = 0;
        swift_willThrow();

LABEL_50:
        v97 = 0;
        v98 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        v81 = v98;
        *(v0 + 72) = v97;
        *(v0 + 80) = v81;
        v82._object = 0x800000010134CB30;
        v82._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v82);
        *(v0 + 112) = v51;
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        _print_unlocked<A, B>(_:_:)();
        v83 = *(v0 + 72);
        v84 = *(v0 + 80);
        return _assertionFailure(_:_:file:line:flags:)();
      }

LABEL_54:
      swift_once();
      goto LABEL_30;
    }

    v13 = sub_100A7829C(v12, 0);
    v15 = v14;
    result = CCECCryptorRelease();
    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        v20 = __OFSUB__(v18, v19);
        v21 = v18 - v19;
        if (v20)
        {
          goto LABEL_52;
        }

        if (v21 != 28)
        {
          break;
        }

        goto LABEL_15;
      }

      v53 = 0;
      goto LABEL_49;
    }

    if (!v17)
    {
      if (BYTE6(v15) != 28)
      {
        break;
      }

      goto LABEL_15;
    }

    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_53;
    }

    if (HIDWORD(v13) - v13 != 28)
    {
      break;
    }

LABEL_15:
    v22 = *(v0 + 248);
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    sub_10002EA98(6, v13, v15, &v97);
    v94 = v98;
    v95 = v97;
    v93 = *v22;
    v25 = type metadata accessor for EncryptedData();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v23, 1, 1, v25);
    sub_1000D2A70(v23, v24, &qword_1016B9AE8, &unk_1013E35D0);
    v27 = *(v26 + 48);
    v28 = v27(v24, 1, v25);
    v29 = *(v0 + 216);
    if (v28 == 1)
    {
      sub_10000B3A8(*(v0 + 216), &qword_1016B9AE8, &unk_1013E35D0);
      v91 = 0xF000000000000000;
      v92 = 0;
    }

    else
    {
      v30 = EncryptedData.cipherText.getter();
      v91 = v31;
      v92 = v30;
      (*(v26 + 8))(v29, v25);
    }

    v32 = *(v0 + 208);
    sub_1000D2A70(*(v0 + 224), v32, &qword_1016B9AE8, &unk_1013E35D0);
    v33 = v27(v32, 1, v25);
    v34 = *(v0 + 208);
    if (v33 == 1)
    {
      sub_10000B3A8(*(v0 + 208), &qword_1016B9AE8, &unk_1013E35D0);
      v90 = 0;
      v35 = 0xF000000000000000;
    }

    else
    {
      v90 = EncryptedData.initializationVector.getter();
      v35 = v36;
      (*(v26 + 8))(v34, v25);
    }

    v37 = *(v0 + 200);
    sub_1000D2A70(*(v0 + 224), v37, &qword_1016B9AE8, &unk_1013E35D0);
    v38 = v27(v37, 1, v25);
    v39 = *(v0 + 224);
    v40 = *(v0 + 200);
    if (v38 == 1)
    {
      sub_10000B3A8(*(v0 + 224), &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v40, &qword_1016B9AE8, &unk_1013E35D0);
      v41 = 0;
      v42 = 0xF000000000000000;
    }

    else
    {
      v41 = EncryptedData.tag.getter();
      v42 = v43;
      sub_10000B3A8(v39, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v26 + 8))(v40, v25);
    }

    sub_100018D00(*(v0 + 248), type metadata accessor for TimeBasedKey);
    v10 = v96;
    v45 = v96[2];
    v44 = v96[3];
    if (v45 >= v44 >> 1)
    {
      sub_101123DD0((v44 > 1), v45 + 1, 1);
      v10 = v96;
    }

    v2 = 0;
    ++v9;
    v10[2] = v45 + 1;
    v46 = &v10[9 * v45];
    v46[4] = v93;
    v46[5] = v95;
    v46[6] = v94;
    v46[7] = v92;
    v46[8] = v91;
    v46[9] = v90;
    v46[10] = v35;
    v46[11] = v41;
    v46[12] = v42;
    v6 = v86;
    if (v85 == v9)
    {

      v2 = 0;
      goto LABEL_35;
    }
  }

  if (v17 == 2)
  {
    v79 = *(v13 + 16);
    v78 = *(v13 + 24);
    v53 = v78 - v79;
    if (!__OFSUB__(v78, v79))
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_48:
    v53 = BYTE6(v15);
LABEL_49:
    sub_100018350();
    v51 = swift_allocError();
    *v80 = 28;
    *(v80 + 8) = v53;
    *(v80 + 16) = 0;
    swift_willThrow();
    sub_100016590(v13, v15);
    goto LABEL_50;
  }

  if (v17 != 1)
  {
    goto LABEL_48;
  }

  if (!__OFSUB__(HIDWORD(v13), v13))
  {
    v53 = HIDWORD(v13) - v13;
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

uint64_t sub_100CF3BE0()
{
  v32 = v0;
  sub_100007BAC(v0 + 2);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[35];
    v6 = v0[36];
    v8 = v0[24];
    v30 = v0[22];
    v9 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v9 = 136315651;
    v0[11] = v7;
    v0[12] = v6;
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    String.append(_:)(v10);
    _print_unlocked<A, B>(_:_:)();
    v11 = sub_1000136BC(v0[7], v0[8], &v31);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v12 = *(v30 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, &v31);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "No local keys for range %s. Not uploading address keys for %{private,mask.hash}s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v17 = v0[24];

    sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v18 = v0[15];
  v19 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = v0[33];
  v21 = v0[31];
  v23 = v0[27];
  v22 = v0[28];
  v25 = v0[25];
  v24 = v0[26];
  v27 = v0[23];
  v26 = v0[24];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100CF3F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[25] = a6;
  v7[26] = v6;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  v10 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v7[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0) - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40) - 8) + 64) + 15;
  v7[34] = swift_task_alloc();
  v14 = type metadata accessor for TimeBasedKey();
  v7[35] = v14;
  v15 = *(v14 - 8);
  v7[36] = v15;
  v16 = *(v15 + 64) + 15;
  v7[37] = swift_task_alloc();
  v17 = *(type metadata accessor for BookmarkMetaData() - 8);
  v7[38] = v17;
  v18 = *(v17 + 64) + 15;
  v7[39] = swift_task_alloc();
  v19 = swift_task_alloc();
  v7[40] = v19;
  *v19 = v7;
  v19[1] = sub_100CF4204;

  return sub_100CF9A0C(a2, 9, a3);
}

uint64_t sub_100CF4204(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 320);
  v5 = *v3;
  v5[41] = a1;
  v5[42] = a2;

  if (v2)
  {
    v6 = v5[39];
    v7 = v5[37];
    v9 = v5[33];
    v8 = v5[34];
    v11 = v5[31];
    v10 = v5[32];
    v13 = v5[29];
    v12 = v5[30];
    v14 = v5[28];

    v15 = v5[1];

    return v15();
  }

  else
  {
    v17 = v5[26];

    return _swift_task_switch(sub_100CF4408, v17, 0);
  }
}

uint64_t sub_100CF4408()
{
  v51 = v0;
  v3 = v0[42];
  if (!v3)
  {
    goto LABEL_7;
  }

  if (!is_mul_ok(v3, 0x60uLL))
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = 96 * v3;
  v2 = v4 - 1;
  v5 = v4 - 96;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  if (v2 < v5)
  {
    __break(1u);
LABEL_7:
    v2 = 0;
  }

  v6 = *(v0[21] + *(v0[27] + 44));
  if (*(v6 + 16) && (v7 = sub_100771F0C(9), (v8 & 1) != 0))
  {
    v9 = v0[39];
    sub_100D11DC8(*(v6 + 56) + *(v0[38] + 72) * v7, v9, type metadata accessor for BookmarkMetaData);
    v1 = *(v9 + 8);
    sub_100018D00(v9, type metadata accessor for BookmarkMetaData);
    if (v1 >= v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0;
    if (!v2)
    {
LABEL_11:
      if (qword_101694DF8 == -1)
      {
LABEL_12:
        v10 = v0[28];
        v11 = v0[21];
        v12 = type metadata accessor for Logger();
        sub_1000076D4(v12, qword_10177BF08);
        sub_100D11DC8(v11, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        v15 = os_log_type_enabled(v13, v14);
        v16 = v0[28];
        if (v15)
        {
          v48 = v0[27];
          v17 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v17 = 136315907;
          v50 = v49;
          v0[11] = v2;
          v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v18);

          v19._countAndFlagsBits = 41;
          v19._object = 0xE100000000000000;
          String.append(_:)(v19);
          v20 = sub_1000136BC(0x7972616D6972702ELL, 0xEA0000000000282FLL, &v50);

          *(v17 + 4) = v20;
          *(v17 + 12) = 2080;
          v0[12] = v1;
          v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v21);

          v22._countAndFlagsBits = 41;
          v22._object = 0xE100000000000000;
          String.append(_:)(v22);
          v23 = sub_1000136BC(0x7972616D6972702ELL, 0xEA0000000000282FLL, &v50);

          *(v17 + 14) = v23;
          *(v17 + 22) = 2160;
          *(v17 + 24) = 1752392040;
          *(v17 + 32) = 2081;
          v24 = *(v48 + 20);
          type metadata accessor for UUID();
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
          v25 = dispatch thunk of CustomStringConvertible.description.getter();
          v27 = v26;
          sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
          v28 = sub_1000136BC(v25, v27, &v50);

          *(v17 + 34) = v28;
          _os_log_impl(&_mh_execute_header, v13, v14, "Connection key package reached highWater mark (%s > %s).\nNot uploading connection keys for %{private,mask.hash}s.", v17, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v36 = v0[20];
        v37 = type metadata accessor for KeyDropInterface.KeyPackage(0);
        (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
        v38 = v0[39];
        v39 = v0[37];
        v41 = v0[33];
        v40 = v0[34];
        v43 = v0[31];
        v42 = v0[32];
        v45 = v0[29];
        v44 = v0[30];
        v46 = v0[28];

        v47 = v0[1];

        return v47();
      }

LABEL_23:
      swift_once();
      goto LABEL_12;
    }
  }

  v29 = v0[22];
  v0[5] = type metadata accessor for OwnedBeaconRecord();
  v0[6] = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v30 = sub_1000280DC(v0 + 2);
  sub_100D11DC8(v29, v30, type metadata accessor for OwnedBeaconRecord);
  v31 = swift_task_alloc();
  v0[43] = v31;
  *v31 = v0;
  v31[1] = sub_100CF4A3C;
  v32 = v0[41];
  v33 = v0[42];
  v34 = v0[26];

  return sub_100D075D8((v0 + 2), 0, v32, v33);
}

uint64_t sub_100CF4A3C(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[43];
  v11 = *v2;
  (*v2)[44] = v1;

  if (v1)
  {
    v6 = v4[26];

    v7 = sub_100CF5BD0;
    v8 = v6;
  }

  else
  {
    v9 = v4[26];
    v4[45] = a1;
    sub_100007BAC(v4 + 2);
    v7 = sub_100CF4BC4;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100CF4BC4()
{
  v149 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[23];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = sub_10013CFC0(sub_100D12BE0, v4, v1);
  v139 = v2;

  v6 = *(v5 + 16);
  if (!v6)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_85:
    v85 = v0[24];
    v86 = v0[25];

    v87 = sub_100D11764(v11, v85, v86);
    if (v139)
    {

      v88 = v0[39];
      v89 = v0[37];
      v91 = v0[33];
      v90 = v0[34];
      v93 = v0[31];
      v92 = v0[32];
      v95 = v0[29];
      v94 = v0[30];
      v96 = v0[28];
    }

    else
    {
      v98 = v87;
      v99 = v0[23];
      v100 = v0[20];

      v101 = type metadata accessor for KeyDropInterface.KeyPackage(0);
      sub_100D11DC8(v99, &v100[*(v101 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v100 = 9;
      *&v100[*(v101 + 24)] = v98;
      (*(*(v101 - 8) + 56))(v100, 0, 1, v101);
      v102 = v0[39];
      v103 = v0[37];
      v105 = v0[33];
      v104 = v0[34];
      v107 = v0[31];
      v106 = v0[32];
      v109 = v0[29];
      v108 = v0[30];
      v110 = v0[28];
    }

    v97 = v0[1];

    return v97();
  }

  v7 = 0;
  v131 = (v0 + 410);
  v132 = (v0 + 382);
  v133 = (v0 + 438);
  v8 = v0[36];
  v9 = (v0[37] + *(v0[35] + 24));
  v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v11 = _swiftEmptyArrayStorage;
  v146 = v0;
  v137 = *(v5 + 16);
  v138 = v5;
  v135 = v9;
  v136 = v8;
  v134 = v10;
  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
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
      goto LABEL_120;
    }

    sub_100D11DC8(v10 + *(v8 + 72) * v7, v0[37], type metadata accessor for TimeBasedKey);
    v12 = v9[1];
    if (v12 >> 60 == 15)
    {
      sub_100018D00(v0[37], type metadata accessor for TimeBasedKey);
      goto LABEL_4;
    }

    v13 = *v9;
    v5 = String.utf8Data.getter();
    v8 = v14;
    v15 = type metadata accessor for __DataStorage();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    LODWORD(v6) = swift_allocObject();
    v18 = __DataStorage.init(length:)();
    v147 = 0x2000000000;
    v148 = v18 | 0x4000000000000000;
    v19 = v8 >> 62;
    v145 = v11;
    if ((v8 >> 62) <= 1)
    {
      break;
    }

    if (v19 == 2)
    {
      v21 = *(v5 + 16);
      v22 = __DataStorage._bytes.getter();
      if (!v22)
      {
        goto LABEL_99;
      }

      v23 = v22;
      LODWORD(v6) = v8;
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v24))
      {
        goto LABEL_116;
      }

      v25 = v21 - v24 + v23;
      LODWORD(v6) = v8;
      __DataStorage._length.getter();
      if (!v25)
      {
        goto LABEL_100;
      }

      v0[16] = 0;
      if (__OFSUB__(*(v5 + 24), *(v5 + 16)))
      {
        goto LABEL_118;
      }

      if (CCKDFParametersCreateAnsiX963())
      {
        goto LABEL_30;
      }

      v26 = v12 >> 62;
      if ((v12 >> 62) <= 1)
      {
        if (!v26)
        {
          v0[46] = v13;
          *(v0 + 188) = v12;
          *(v0 + 378) = BYTE2(v12);
          *(v0 + 379) = BYTE3(v12);
          *(v0 + 380) = BYTE4(v12);
          *(v0 + 381) = BYTE5(v12);
          sub_10002E98C(v13, v12);
          v27 = v0 + 16;
          v28 = v0 + 46;
LABEL_57:
          v34 = v139;
          v35 = sub_100A7E758(&v147, v27, v28, v13, v12, 32);
          goto LABEL_58;
        }

        if (v13 > v13 >> 32)
        {
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
          goto LABEL_127;
        }

        v46 = __DataStorage._bytes.getter();
        if (!v46)
        {
          goto LABEL_99;
        }

        v38 = v46;
        v47 = __DataStorage._offset.getter();
        v40 = v13 - v47;
        if (__OFSUB__(v13, v47))
        {
          goto LABEL_125;
        }

LABEL_46:
        v48 = v40 + v38;
        __DataStorage._length.getter();
        if (!v48)
        {
          goto LABEL_100;
        }

        sub_10002E98C(v13, v12);
        v27 = v0 + 16;
LABEL_54:
        v28 = v48;
        goto LABEL_57;
      }

      if (v26 == 2)
      {
        v36 = *(v13 + 16);
        v37 = __DataStorage._bytes.getter();
        if (!v37)
        {
          goto LABEL_99;
        }

        v38 = v37;
        v39 = __DataStorage._offset.getter();
        v40 = v36 - v39;
        if (__OFSUB__(v36, v39))
        {
          goto LABEL_123;
        }

        goto LABEL_46;
      }

      v49 = v132;
      *(v132 + 6) = 0;
      *v132 = 0;
      sub_10002E98C(v13, v12);
      v27 = v0 + 16;
LABEL_56:
      v28 = v49;
      goto LABEL_57;
    }

    *(v133 + 6) = 0;
    *v133 = 0;
    v0[19] = 0;
    if (CCKDFParametersCreateAnsiX963())
    {
      goto LABEL_30;
    }

    sub_10002E98C(v13, v12);
    v20 = (v0 + 19);
LABEL_32:
    v34 = v139;
    v35 = sub_100A7ED3C(v13, v12, &v147, v20, v13, v12, 32);
LABEL_58:
    LODWORD(v6) = v35;
    v52 = v34;
    sub_100006654(v13, v12);
    if (v34)
    {
      goto LABEL_103;
    }

    v139 = 0;
    if (v6)
    {
      goto LABEL_91;
    }

    v53 = v147;
    v54 = v148;
    sub_100017D5C(v147, v148);
    sub_100016590(v53, v54);
    v55 = v54 >> 62;
    if ((v54 >> 62) > 1)
    {
      if (v55 != 2)
      {
        v121 = 0;
        goto LABEL_109;
      }

      v57 = *(v53 + 16);
      v56 = *(v53 + 24);
      v58 = __OFSUB__(v56, v57);
      v59 = v56 - v57;
      if (v58)
      {
        goto LABEL_113;
      }

      if (v59 != 32)
      {
        goto LABEL_95;
      }
    }

    else if (v55)
    {
      if (__OFSUB__(HIDWORD(v53), v53))
      {
        goto LABEL_114;
      }

      if (HIDWORD(v53) - v53 != 32)
      {
LABEL_95:
        if (v55 == 2)
        {
          v125 = *(v53 + 16);
          v124 = *(v53 + 24);
          v121 = v124 - v125;
          if (__OFSUB__(v124, v125))
          {
            __break(1u);
            goto LABEL_108;
          }
        }

        else
        {
          if (v55 == 1)
          {
            if (!__OFSUB__(HIDWORD(v53), v53))
            {
              v121 = HIDWORD(v53) - v53;
              goto LABEL_109;
            }

LABEL_127:
            __break(1u);
          }

LABEL_108:
          v121 = BYTE6(v54);
        }

LABEL_109:
        sub_100018350();
        v52 = swift_allocError();
        *v126 = 32;
        *(v126 + 8) = v121;
        *(v126 + 16) = 0;
        swift_willThrow();
        sub_100016590(v53, v54);
        sub_100016590(v5, v8);
        v0 = v146;
        goto LABEL_110;
      }
    }

    else if (BYTE6(v54) != 32)
    {
      goto LABEL_95;
    }

    v144 = v54;
    v60 = v146[37];
    v62 = v146[32];
    v61 = v146[33];
    sub_100016590(v5, v8);
    v143 = *v60;
    v63 = type metadata accessor for EncryptedData();
    v64 = *(v63 - 8);
    (*(v64 + 56))(v61, 1, 1, v63);
    sub_1000D2A70(v61, v62, &qword_1016B9AE8, &unk_1013E35D0);
    v65 = *(v64 + 48);
    v66 = v65(v62, 1, v63);
    v67 = v146[32];
    if (v66 == 1)
    {
      sub_10000B3A8(v146[32], &qword_1016B9AE8, &unk_1013E35D0);
      v141 = 0xF000000000000000;
      v142 = 0;
    }

    else
    {
      v68 = EncryptedData.cipherText.getter();
      v141 = v69;
      v142 = v68;
      (*(v64 + 8))(v67, v63);
    }

    v70 = v146[31];
    sub_1000D2A70(v146[33], v70, &qword_1016B9AE8, &unk_1013E35D0);
    v71 = v65(v70, 1, v63);
    v72 = v146[31];
    if (v71 == 1)
    {
      sub_10000B3A8(v146[31], &qword_1016B9AE8, &unk_1013E35D0);
      v73 = 0;
      v140 = 0xF000000000000000;
    }

    else
    {
      v73 = EncryptedData.initializationVector.getter();
      v140 = v74;
      (*(v64 + 8))(v72, v63);
    }

    v75 = v146[30];
    sub_1000D2A70(v146[33], v75, &qword_1016B9AE8, &unk_1013E35D0);
    v76 = v65(v75, 1, v63);
    v77 = v146[33];
    v78 = v146[30];
    if (v76 == 1)
    {
      sub_10000B3A8(v146[33], &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v78, &qword_1016B9AE8, &unk_1013E35D0);
      v79 = 0;
      v80 = 0xF000000000000000;
    }

    else
    {
      v79 = EncryptedData.tag.getter();
      v80 = v81;
      sub_10000B3A8(v77, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v64 + 8))(v78, v63);
    }

    sub_100018D00(v146[37], type metadata accessor for TimeBasedKey);
    v11 = v145;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100A5BE68(0, *(v145 + 2) + 1, 1, v145);
    }

    v83 = *(v11 + 2);
    v82 = *(v11 + 3);
    if (v83 >= v82 >> 1)
    {
      v11 = sub_100A5BE68((v82 > 1), v83 + 1, 1, v11);
    }

    *(v11 + 2) = v83 + 1;
    v84 = &v11[72 * v83];
    *(v84 + 4) = v143;
    *(v84 + 5) = v53;
    *(v84 + 6) = v144;
    *(v84 + 7) = v142;
    *(v84 + 8) = v141;
    *(v84 + 9) = v73;
    *(v84 + 10) = v140;
    *(v84 + 11) = v79;
    *(v84 + 12) = v80;
    v6 = v137;
    v5 = v138;
    v9 = v135;
    v8 = v136;
    v10 = v134;
    v0 = v146;
LABEL_4:
    if (v6 == ++v7)
    {
      goto LABEL_85;
    }
  }

  if (!v19)
  {
    v0[53] = v5;
    *(v0 + 216) = v8;
    *(v0 + 434) = BYTE2(v8);
    *(v0 + 435) = BYTE3(v8);
    *(v0 + 436) = BYTE4(v8);
    *(v0 + 437) = BYTE5(v8);
    v0[18] = 0;
    if (CCKDFParametersCreateAnsiX963())
    {
      goto LABEL_30;
    }

    sub_10002E98C(v13, v12);
    v20 = (v0 + 18);
    goto LABEL_32;
  }

  if (v5 > v5 >> 32)
  {
    goto LABEL_115;
  }

  v29 = __DataStorage._bytes.getter();
  if (!v29)
  {
    goto LABEL_99;
  }

  v30 = v29;
  LODWORD(v6) = v8;
  v31 = __DataStorage._offset.getter();
  if (__OFSUB__(v5, v31))
  {
    goto LABEL_117;
  }

  v32 = v5 - v31 + v30;
  LODWORD(v6) = v8;
  __DataStorage._length.getter();
  if (!v32)
  {
    goto LABEL_100;
  }

  v0[17] = 0;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_119;
  }

  if (CCKDFParametersCreateAnsiX963())
  {
LABEL_30:
    LODWORD(v6) = -4300;
LABEL_91:
    static os_log_type_t.error.getter();
    if (qword_101694BE0 == -1)
    {
LABEL_92:
      v0 = v146;
      v112 = v146[34];
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_101385D80;
      *(v113 + 56) = &type metadata for Int32;
      *(v113 + 64) = &protocol witness table for Int32;
      *(v113 + 32) = v6;
      os_log(_:dso:log:_:_:)();

      CryptoError.init(rawValue:)();
      v114 = type metadata accessor for CryptoError();
      sub_100D13BF8(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v52 = swift_allocError();
      v116 = v115;
      v117 = *(v114 - 8);
      v118 = *(v117 + 48);
      v119 = v118(v112, 1, v114);
      v120 = v146[34];
      if (v119 == 1)
      {
        (*(v117 + 104))(v116, enum case for CryptoError.unspecifiedError(_:), v114);
        if (v118(v120, 1, v114) != 1)
        {
          sub_10000B3A8(v146[34], &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v117 + 32))(v116, v146[34], v114);
      }

      goto LABEL_102;
    }

LABEL_120:
    swift_once();
    goto LABEL_92;
  }

  v33 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v33 != 2)
    {
      v49 = v131;
      *(v131 + 6) = 0;
      *v131 = 0;
      sub_10002E98C(v13, v12);
      v27 = v0 + 17;
      goto LABEL_56;
    }

    v41 = *(v13 + 16);
    v42 = __DataStorage._bytes.getter();
    if (!v42)
    {
      goto LABEL_99;
    }

    v43 = v42;
    v44 = __DataStorage._offset.getter();
    v45 = v41 - v44;
    if (__OFSUB__(v41, v44))
    {
      goto LABEL_124;
    }

LABEL_52:
    v48 = v45 + v43;
    __DataStorage._length.getter();
    if (!v48)
    {
      goto LABEL_100;
    }

    sub_10002E98C(v13, v12);
    v27 = v0 + 17;
    goto LABEL_54;
  }

  if (!v33)
  {
    *(v0 + 396) = v13;
    *(v0 + 202) = v12;
    *(v0 + 406) = BYTE2(v12);
    *(v0 + 407) = BYTE3(v12);
    *(v0 + 408) = BYTE4(v12);
    *(v0 + 409) = BYTE5(v12);
    sub_10002E98C(v13, v12);
    v27 = v0 + 17;
    v28 = (v0 + 396);
    goto LABEL_57;
  }

  if (v13 > v13 >> 32)
  {
    goto LABEL_122;
  }

  v50 = __DataStorage._bytes.getter();
  if (v50)
  {
    v43 = v50;
    v51 = __DataStorage._offset.getter();
    v45 = v13 - v51;
    if (__OFSUB__(v13, v51))
    {
      goto LABEL_126;
    }

    goto LABEL_52;
  }

LABEL_99:
  __DataStorage._length.getter();
LABEL_100:
  v122 = type metadata accessor for CryptoError();
  sub_100D13BF8(&qword_10169C9B8, &type metadata accessor for CryptoError);
  v52 = swift_allocError();
  (*(*(v122 - 8) + 104))(v123, enum case for CryptoError.memoryFailure(_:), v122);
LABEL_102:
  swift_willThrow();
LABEL_103:
  sub_100016590(v5, v8);
  sub_100016590(v147, v148);
LABEL_110:
  v147 = 0;
  v148 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v127 = v148;
  v0[9] = v147;
  v0[10] = v127;
  v128._object = 0x8000000101354990;
  v128._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v128);
  v0[15] = v52;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v129 = v0[9];
  v130 = v0[10];
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100CF5BD0()
{
  v33 = v0;
  sub_100007BAC(v0 + 2);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[21];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[41];
    v6 = v0[42];
    v8 = v0[29];
    v31 = v0[27];
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v9 = 136315651;
    v0[13] = v7;
    v0[14] = v6;
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    String.append(_:)(v10);
    _print_unlocked<A, B>(_:_:)();
    v11 = sub_1000136BC(v0[7], v0[8], &v32);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v12 = *(v31 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, &v32);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "No local keys for range %s. Not uploading connection keys for %{private,mask.hash}s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v17 = v0[29];

    sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v18 = v0[20];
  v19 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = v0[39];
  v21 = v0[37];
  v23 = v0[33];
  v22 = v0[34];
  v25 = v0[31];
  v24 = v0[32];
  v27 = v0[29];
  v26 = v0[30];
  v28 = v0[28];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100CF5FBC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for OwnedBeaconRecord();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v3[15] = *(v7 + 64);
  v3[16] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v3[17] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v10 = type metadata accessor for BeaconNamingRecord();
  v3[19] = v10;
  v11 = *(v10 - 8);
  v3[20] = v11;
  v12 = *(v11 + 64) + 15;
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_100CF6190, v2, 0);
}

uint64_t sub_100CF6190()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + 120);
  *(v0 + 176) = v2;
  *(v0 + 232) = *(v1 + 20);
  return _swift_task_switch(sub_100CF61BC, v2, 0);
}

uint64_t sub_100CF61BC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  (*(v4 + 16))(v2, *(v0 + 48) + *(v0 + 232), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 184) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_100CF6324;
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D12B38, v6, v10);
}

uint64_t sub_100CF6324()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_100CF6450, v3, 0);
}

uint64_t sub_100CF6450()
{
  v29 = v0;
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v2 = v0[11];
    v3 = v0[6];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177BF08);
    sub_100D11DC8(v3, v2, type metadata accessor for OwnedBeaconRecord);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[13];
      v8 = v0[11];
      v9 = v0[8];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v12 = *(v9 + 20);
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_100018D00(v8, type metadata accessor for OwnedBeaconRecord);
      v16 = sub_1000136BC(v13, v15, &v28);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "No name record for beacon %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {
      v18 = v0[11];

      sub_100018D00(v18, type metadata accessor for OwnedBeaconRecord);
    }

    v19 = v0[5];
    v20 = sub_1000BC4D4(&qword_1016B9B18, &unk_1013E3670);
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = v0[21];
    v22 = v0[18];
    v23 = v0[16];
    v25 = v0[11];
    v24 = v0[12];

    v26 = v0[1];

    return v26();
  }

  else
  {
    v17 = v0[22];
    sub_100D12974(v1, v0[21], type metadata accessor for BeaconNamingRecord);

    return _swift_task_switch(sub_100CF67D0, v17, 0);
  }
}

uint64_t sub_100CF67D0()
{
  v1 = v0[22];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  sub_100D11DC8(v0[6], v2, type metadata accessor for OwnedBeaconRecord);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[25] = v6;
  *(v6 + 16) = v1;
  sub_100D12974(v2, v6 + v5, type metadata accessor for OwnedBeaconRecord);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[26] = v8;
  v9 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  *v8 = v0;
  v8[1] = sub_100CF693C;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_100986664, v6, v9);
}

uint64_t sub_100CF693C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return _swift_task_switch(sub_100CF6A68, v3, 0);
}

uint64_t sub_100CF6A68()
{
  v1 = *(v0 + 56);
  *(v0 + 216) = *(v0 + 16);
  return _swift_task_switch(sub_100CF6A8C, v1, 0);
}

uint64_t sub_100CF6A8C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[5];
  v4 = (v1 + v2[8]);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v1 + v2[7]);
  v8 = (v1 + v2[9]);
  v10 = *v8;
  v9 = v8[1];
  v11 = (v0[6] + *(v0[8] + 60));
  v12 = v11[1];
  v30 = *v11;

  v13 = objc_autoreleasePoolPush();
  sub_100D088CC(v1, v3);
  v28 = v0[27];
  v29 = v0[28];
  v27 = v0[21];
  v14 = v0[5];
  v26 = v10;
  v15 = v6;
  v16 = sub_1000BC4D4(&qword_1016B9B18, &unk_1013E3670);
  v17 = v7;
  v18 = (v14 + *(v16 + 48));
  objc_autoreleasePoolPop(v13);
  sub_100018D00(v27, type metadata accessor for BeaconNamingRecord);
  *v18 = v15;
  v18[1] = v5;
  v18[2] = v17;
  v18[3] = v26;
  v18[4] = v9;
  v18[5] = v30;
  v18[6] = v12;
  v18[7] = v28;
  v18[8] = v29;
  (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[16];
  v23 = v0[11];
  v22 = v0[12];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100CF6C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v4[13] = *(v8 + 64);
  v4[14] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v4[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = type metadata accessor for LostModeRecord();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = type metadata accessor for OwnerSharingCircle();
  v4[20] = v14;
  v15 = *(v14 - 8);
  v4[21] = v15;
  v16 = *(v15 + 64) + 15;
  v4[22] = swift_task_alloc();
  v17 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v4[23] = v17;
  v4[24] = *(v17 + 64);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v19 = type metadata accessor for Date();
  v4[29] = v19;
  v20 = *(v19 - 8);
  v4[30] = v20;
  v21 = *(v20 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v22 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4[37] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return _swift_task_switch(sub_100CF7064, v3, 0);
}

uint64_t sub_100CF7064()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(*(v0 + 64) + 120);
  *(v0 + 360) = v6;
  v7 = *(v4 + 20);
  *(v0 + 432) = v7;
  v8 = *(v3 + 16);
  *(v0 + 368) = v8;
  *(v0 + 376) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v5 + v7, v2);
  (*(v3 + 56))(v1, 0, 1, v2);

  return _swift_task_switch(sub_100CF7138, v6, 0);
}

uint64_t sub_100CF7138()
{
  v1 = v0[45];
  v2 = v0[25];
  v4 = v0[23];
  v3 = v0[24];
  sub_1000D2A70(v0[26], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[48] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 0;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[49] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_100CF72B0;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2D0C, v7, v10);
}

uint64_t sub_100CF72B0()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 360);
  v5 = *v0;

  return _swift_task_switch(sub_100CF73DC, v3, 0);
}

uint64_t sub_100CF73DC()
{
  v1 = v0[8];
  sub_10000B3A8(v0[26], &qword_1016980D0, &unk_10138F3B0);
  v0[50] = v0[2];

  return _swift_task_switch(sub_100CF7460, v1, 0);
}

uint64_t sub_100CF7460()
{
  v23 = v0;
  v22 = v0[50];

  sub_100C71470(&v22);
  v1 = v0[50];

  if (v22[2])
  {
    v2 = *(v0[21] + 80);
    sub_100D11DC8(v22 + ((v2 + 32) & ~v2), v0[28], type metadata accessor for OwnerSharingCircle);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[20];
  v7 = v0[21];

  (*(v7 + 56))(v4, v3, 1, v6);
  sub_1000D2A70(v4, v5, &unk_1016AFA00, &qword_10138C4D0);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = v0[36];
  v10 = v0[27];
  if (v8 == 1)
  {
    sub_10000B3A8(v10, &unk_1016AFA00, &qword_10138C4D0);
    static Date.distantPast.getter();
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  v16 = v0[22];
  sub_100D12974(v10, v16, type metadata accessor for OwnerSharingCircle);
  v17 = objc_autoreleasePoolPush();
  sub_100D088CC(v16, v9);
  objc_autoreleasePoolPop(v17);
  v18 = v0[22];
  if (*(v18 + *(v0[20] + 36)) != 1)
  {
    sub_100018D00(v0[22], type metadata accessor for OwnerSharingCircle);
    goto LABEL_6;
  }

  v19 = v0[44];
  v20 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v18, v19);
  objc_autoreleasePoolPop(v20);
  sub_100018D00(v0[22], type metadata accessor for OwnerSharingCircle);
  v11 = 0;
LABEL_7:
  v12 = v0[44];
  v13 = v0[45];
  v14 = v0[29];
  v15 = *(v0[30] + 56);
  v0[51] = v15;
  v15(v12, v11, 1, v14);

  return _swift_task_switch(sub_100CF76F8, v13, 0);
}

uint64_t sub_100CF76F8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  (*(v0 + 368))(v3, *(v0 + 56) + *(v0 + 432), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 416) = v7;
  *(v7 + 16) = v2;
  (*(v5 + 32))(v7 + v6, v3, v4);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 424) = v9;
  *v9 = v0;
  v9[1] = sub_100CF784C;
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D12B20, v7, v11);
}

uint64_t sub_100CF784C()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_100CF7978, v3, 0);
}

uint64_t sub_100CF7978()
{
  v125 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    v2 = v0[51];
    v3 = v0[43];
    v4 = v0[29];
    v5 = v0[30];
    sub_10000B3A8(v1, &unk_1016A99E0, &qword_1013A07B0);
    v2(v3, 1, 1, v4);
  }

  else
  {
    sub_100D12974(v1, v0[19], type metadata accessor for LostModeRecord);
    v6 = sub_100E78AA8();
    v7 = [v6 timestamp];

    if (v7)
    {
      v8 = v0[42];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = v0[51];
    v12 = v0[42];
    v11 = v0[43];
    v13 = v0[29];
    v14 = v0[30];
    sub_100018D00(v0[19], type metadata accessor for LostModeRecord);
    v10(v12, v9, 1, v13);
    sub_1000D2AD8(v12, v11, &unk_101696900, &unk_10138B1E0);
  }

  v15 = v0[43];
  v16 = v0[41];
  v17 = v0[29];
  v18 = v0[30];
  v117 = *(v18 + 16);
  v117(v0[34], v0[36], v17);
  sub_1000D2A70(v15, v16, &unk_101696900, &unk_10138B1E0);
  v19 = *(v18 + 48);
  v20 = v19(v16, 1, v17);
  v21 = v0[41];
  if (v20 == 1)
  {
    v22 = v0[29];
    v23 = v0[33];
    static Date.distantPast.getter();
    if (v19(v21, 1, v22) != 1)
    {
      sub_10000B3A8(v0[41], &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v0[30] + 32))(v0[33], v0[41], v0[29]);
  }

  v24 = v0[43];
  v25 = v0[44];
  v27 = v0[34];
  v26 = v0[35];
  v28 = v0[33];
  v29 = v0[29];
  v30 = v0[30];
  v31 = v0[6];
  sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
  v32 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v33 = (v32 & 1) == 0;
  if (v32)
  {
    v34 = v27;
  }

  else
  {
    v34 = v28;
  }

  if (!v33)
  {
    v27 = v28;
  }

  v121 = *(v30 + 8);
  v121(v34, v29);
  v123 = *(v30 + 32);
  v123(v26, v27, v29);
  sub_1000D2A70(v25, v31, &unk_101696900, &unk_10138B1E0);
  v35 = type metadata accessor for KeyDropLostItemDates(0);
  sub_1000D2A70(v24, v31 + *(v35 + 20), &unk_101696900, &unk_10138B1E0);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v36 = v0[43];
  v37 = v0[44];
  v39 = v0[39];
  v38 = v0[40];
  v113 = v0[35];
  v40 = v0[32];
  v107 = v0[36];
  v110 = v0[31];
  v41 = v0[29];
  v42 = v0[10];
  v43 = v0[7];
  v44 = type metadata accessor for Logger();
  sub_1000076D4(v44, qword_10177AE28);
  sub_100D11DC8(v43, v42, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(v37, v38, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v36, v39, &unk_101696900, &unk_10138B1E0);
  v117(v40, v107, v41);
  v117(v110, v113, v41);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v118 = v0[43];
  v119 = v0[44];
  v49 = v0[39];
  v48 = v0[40];
  if (v47)
  {
    v108 = v46;
    v51 = v0[37];
    v50 = v0[38];
    v102 = v0[31];
    v98 = v0[32];
    v100 = v0[30];
    v96 = v0[29];
    v111 = v0[28];
    v114 = v0[36];
    v52 = v0[10];
    v53 = v0[11];
    log = v45;
    v54 = v0[9];
    v55 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *v55 = 141559299;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2081;
    v56 = *(v54 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    sub_100018D00(v52, type metadata accessor for OwnedBeaconRecord);
    v60 = sub_1000136BC(v57, v59, &v124);

    *(v55 + 14) = v60;
    *(v55 + 22) = 2082;
    sub_1000D2A70(v48, v50, &unk_101696900, &unk_10138B1E0);
    v61 = String.init<A>(describing:)();
    v63 = v62;
    sub_10000B3A8(v48, &unk_101696900, &unk_10138B1E0);
    v64 = sub_1000136BC(v61, v63, &v124);

    *(v55 + 24) = v64;
    *(v55 + 32) = 2082;
    sub_1000D2A70(v49, v50, &unk_101696900, &unk_10138B1E0);
    v65 = String.init<A>(describing:)();
    v67 = v66;
    sub_10000B3A8(v49, &unk_101696900, &unk_10138B1E0);
    v68 = sub_1000136BC(v65, v67, &v124);

    *(v55 + 34) = v68;
    *(v55 + 42) = 2082;
    sub_100D13BF8(&qword_1016969A0, &type metadata accessor for Date);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v121(v98, v96);
    v72 = sub_1000136BC(v69, v71, &v124);

    *(v55 + 44) = v72;
    *(v55 + 52) = 2082;
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    v121(v102, v96);
    v76 = sub_1000136BC(v73, v75, &v124);

    *(v55 + 54) = v76;
    _os_log_impl(&_mh_execute_header, log, v108, "Lost item dates for beacon %{private,mask.hash}s delegationStartDate: %{public}s, lostModeEnabledDate: %{public}s, delegationModifiedDate: %{public}s, modifiedDate: %{public}s.", v55, 0x3Eu);
    swift_arrayDestroy();

    sub_10000B3A8(v111, &unk_1016AFA00, &qword_10138C4D0);
    v121(v114, v96);
    sub_10000B3A8(v118, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v115 = v0[36];
    v78 = v0[31];
    v77 = v0[32];
    v80 = v0[29];
    v79 = v0[30];
    v81 = v0[28];
    v82 = v0[10];

    v121(v78, v80);
    v121(v77, v80);
    sub_10000B3A8(v49, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v48, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v82, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v81, &unk_1016AFA00, &qword_10138C4D0);
    v121(v115, v80);
    sub_10000B3A8(v118, &unk_101696900, &unk_10138B1E0);
  }

  sub_10000B3A8(v119, &unk_101696900, &unk_10138B1E0);
  v84 = v0[43];
  v83 = v0[44];
  v86 = v0[41];
  v85 = v0[42];
  v87 = v0[39];
  v88 = v0[40];
  v89 = v0[38];
  v90 = v0[36];
  v95 = v0[34];
  v97 = v0[33];
  v99 = v0[32];
  v101 = v0[31];
  v103 = v0[28];
  v104 = v0[27];
  loga = v0[26];
  v109 = v0[25];
  v112 = v0[22];
  v116 = v0[19];
  v91 = v0[16];
  v120 = v0[14];
  v122 = v0[10];
  v92 = v0[30] + 32;
  v123(v0[5], v0[35], v0[29]);

  v93 = v0[1];

  return v93();
}

uint64_t sub_100CF83A4(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for OwnedBeaconRecord();
  v3[18] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_100CF8454, 0, 0);
}

uint64_t sub_100CF8454()
{
  v48 = v0;
  v1 = v0[16];
  v0[22] = sub_100D5F668();
  v0[23] = v2;
  if (v2 >> 60 == 15)
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v3 = v0[19];
    v4 = v0[16];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177AE28);
    sub_100D11DC8(v4, v3, type metadata accessor for OwnedBeaconRecord);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[19];
    if (v8)
    {
      v10 = v0[18];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v47[0] = v12;
      *v11 = 136315138;
      v13 = *(v10 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_100018D00(v9, type metadata accessor for OwnedBeaconRecord);
      v17 = sub_1000136BC(v14, v16, v47);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "product data is missing for the beacon id %s, privacy: .private(mask: .hash)", v11, 0xCu);
      sub_100007BAC(v12);
    }

    else
    {

      sub_100018D00(v9, type metadata accessor for OwnedBeaconRecord);
    }

    sub_1001BAEE0();
    swift_allocError();
    *v37 = 27;
    swift_willThrow();
    v39 = v0[20];
    v38 = v0[21];
    v40 = v0[19];

    v41 = v0[1];

    return v41();
  }

  else
  {
    v18 = Data.hexString.getter();
    v20 = v19;
    v0[24] = v18;
    v0[25] = v19;
    v21 = qword_101694778;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = v0[21];
    v23 = v0[16];
    v24 = type metadata accessor for Logger();
    v0[26] = sub_1000076D4(v24, qword_10177AE28);
    sub_100D11DC8(v23, v22, type metadata accessor for OwnedBeaconRecord);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[21];
    if (v27)
    {
      v29 = v0[18];
      v30 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v30 = 141558787;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v31 = *(v29 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100018D00(v28, type metadata accessor for OwnedBeaconRecord);
      v35 = sub_1000136BC(v32, v34, v47);

      *(v30 + 14) = v35;
      *(v30 + 22) = 2160;
      *(v30 + 24) = 1752392040;
      *(v30 + 32) = 2081;
      v36 = sub_1000136BC(v18, v20, v47);

      *(v30 + 34) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "beacon id %{private,mask.hash}s, product data %{private,mask.hash}s", v30, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v28, type metadata accessor for OwnedBeaconRecord);
    }

    v43 = v0[18];
    v44 = v0[16];
    v45 = *(v0[17] + 120);
    v0[27] = v45;
    v0[5] = v43;
    v0[6] = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
    v46 = sub_1000280DC(v0 + 2);
    sub_100D11DC8(v44, v46, type metadata accessor for OwnedBeaconRecord);

    return _swift_task_switch(sub_100CF8A30, v45, 0);
  }
}

uint64_t sub_100CF8A30()
{
  v1 = *(v0 + 216);
  sub_10001F280(v0 + 16, v0 + 56);
  v2 = swift_allocObject();
  *(v0 + 224) = v2;
  *(v2 + 16) = v1;
  sub_100031694((v0 + 56), v2 + 24);
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  v5 = sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  *v4 = v0;
  v4[1] = sub_100CF8B64;

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_100D12B14, v2, v5);
}

uint64_t sub_100CF8B64()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v5 = *v0;

  return _swift_task_switch(sub_100CF8C90, v3, 0);
}

uint64_t sub_100CF8C90()
{
  v0[30] = v0[14];
  sub_100007BAC(v0 + 2);

  return _swift_task_switch(sub_100CF8D00, 0, 0);
}

uint64_t sub_100CF8D00()
{
  v34 = v0;
  v1 = [*(v0 + 240) serialNumber];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    *(v0 + 96) = v3;
    *(v0 + 104) = v4;

    *(v0 + 248) = v5;
    v6 = swift_task_alloc();
    *(v0 + 256) = v6;
    *v6 = v0;
    v6[1] = sub_100CF9028;
    v7 = *(v0 + 136);

    return sub_100CF92FC();
  }

  else
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v11 = *(v0 + 160);
    v12 = *(v0 + 128);

    sub_100D11DC8(v12, v11, type metadata accessor for OwnedBeaconRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 160);
    if (v15)
    {
      v17 = *(v0 + 144);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 141558275;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      v20 = *(v17 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_100018D00(v16, type metadata accessor for OwnedBeaconRecord);
      v24 = sub_1000136BC(v21, v23, &v33);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not obtain serial number for beaconIdentifier: %{private,mask.hash}s while creating delegated attributes", v18, 0x16u);
      sub_100007BAC(v19);
    }

    else
    {

      sub_100018D00(v16, type metadata accessor for OwnedBeaconRecord);
    }

    v25 = *(v0 + 240);
    v26 = *(v0 + 176);
    v27 = *(v0 + 184);
    sub_1001BAEE0();
    swift_allocError();
    *v28 = 25;
    swift_willThrow();

    sub_100006654(v26, v27);
    v30 = *(v0 + 160);
    v29 = *(v0 + 168);
    v31 = *(v0 + 152);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100CF9028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 256);
  v12 = *v5;
  *(*v5 + 264) = v4;

  if (v4)
  {
    v13 = v10[31];
    v14 = v10[25];

    v15 = sub_100CF9264;
  }

  else
  {
    v16 = v10[12];
    v10[34] = a4;
    v10[35] = a3;
    v10[36] = a2;
    v10[37] = a1;
    v10[38] = v16;
    v15 = sub_100CF918C;
  }

  return _swift_task_switch(v15, 0, 0);
}

uint64_t sub_100CF918C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v12 = *(v0 + 288);
  v13 = *(v0 + 272);
  sub_100006654(*(v0 + 176), *(v0 + 184));

  v9->i64[0] = v1;
  v9->i64[1] = v2;
  v9[1].i64[0] = v5;
  v9[1].i64[1] = v4;
  v9[2] = vextq_s8(v12, v12, 8uLL);
  v9[3] = vextq_s8(v13, v13, 8uLL);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100CF9264()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  sub_100006654(v1, v2);
  v3 = *(v0 + 264);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100CF931C()
{
  v1 = [objc_allocWithZone(ACAccountStore) init];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_100CF9454;
  v2 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100C70FE4;
  v0[13] = &unk_10164E610;
  v0[14] = v2;
  [v1 aa_primaryAppleAccountWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100CF9454()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_100CF999C;
  }

  else
  {
    v3 = sub_100CF9564;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100CF9564()
{
  v1 = v0[25];
  v2 = v0[23];
  v0[27] = v2;

  if (v2)
  {
    v3 = v0[24];

    return _swift_task_switch(sub_100CF96F8, v3, 0);
  }

  else
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177AE28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Could not obtain aa_primaryAppleAccount while creating delegated attributes !", v7, 2u);
    }

    sub_1001BAEE0();
    swift_allocError();
    *v8 = 24;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100CF96F8()
{
  sub_100D11380(v0 + 144);

  return _swift_task_switch(sub_100CF9760, 0, 0);
}

uint64_t sub_100CF9760()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 176);
  if (v2 == 255)
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AE28);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "email/phone not found for web metadata", v6, 2u);
    }

    v7 = *(v0 + 216);

    sub_1001BAEE0();
    swift_allocError();
    *v8 = 26;
    swift_willThrow();

    sub_10000B3A8(v0 + 144, &qword_1016B9B10, &qword_1013E3658);
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);

    if (v2)
    {
      if (v2 == 1)
      {
        v12 = v1;
        v13 = v11;
        v1 = 0;
        v11 = 0;
      }

      else
      {

        sub_10000B3A8(v0 + 144, &qword_1016B9B10, &qword_1013E3658);
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v14 = *(v0 + 8);

    return v14(v1, v11, v12, v13);
  }
}

uint64_t sub_100CF999C()
{
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[26];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100CF9A0C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 248) = a3;
  *(v4 + 256) = v3;
  *(v4 + 640) = a2;
  *(v4 + 240) = a1;
  v5 = type metadata accessor for OwnedBeaconRecord();
  *(v4 + 264) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v7 = *(type metadata accessor for BookmarkMetaData() - 8);
  *(v4 + 296) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v4 + 312) = v9;
  v10 = *(v9 - 8);
  *(v4 + 320) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v12 = type metadata accessor for DateInterval();
  *(v4 + 360) = v12;
  v13 = *(v12 - 8);
  *(v4 + 368) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v15 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  *(v4 + 408) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();

  return _swift_task_switch(sub_100CF9C60, v3, 0);
}

uint64_t sub_100CF9C60()
{
  v1 = v0[31];
  v0[5] = v0[33];
  v2 = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v0[54] = v2;
  v0[6] = v2;
  v3 = sub_1000280DC(v0 + 2);
  sub_100D11DC8(v1, v3, type metadata accessor for OwnedBeaconRecord);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_100CF9D6C;
  v5 = v0[53];
  v6 = v0[32];

  return sub_100C9FBF0(v5, (v0 + 2));
}

uint64_t sub_100CF9D6C()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v8 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);
    v5 = sub_100CFC4B0;
  }

  else
  {
    v6 = *(v2 + 256);
    sub_100007BAC((v2 + 16));
    v5 = sub_100CF9E94;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100CF9E94()
{
  v1 = v0[31];
  if (sub_1000322C8())
  {
    v2 = swift_task_alloc();
    v0[57] = v2;
    *v2 = v0;
    v2[1] = sub_100CF9F88;
    v3 = v0[50];
  }

  else
  {
    v0[58] = 0;
    v4 = swift_task_alloc();
    v0[59] = v4;
    *v4 = v0;
    v4[1] = sub_100CFA1CC;
    v3 = v0[48];
  }

  v5 = v0[30];

  return sub_100C724A0(v3);
}

uint64_t sub_100CF9F88()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_100CFA098, v2, 0);
}

uint64_t sub_100CFA098()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  v6 = *(v0 + 352);
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  DateInterval.end.getter();
  (*(v5 + 8))(v2, v4);
  v9 = *(v3 + 36);
  Date.timeIntervalSince(_:)();
  v11 = v10;
  (*(v8 + 8))(v6, v7);
  v12 = 0.0;
  if (v11 > 0.0)
  {
    v12 = v11;
  }

  *(v0 + 464) = v12 * 0.0002;
  v13 = swift_task_alloc();
  *(v0 + 472) = v13;
  *v13 = v0;
  v13[1] = sub_100CFA1CC;
  v14 = *(v0 + 384);
  v15 = *(v0 + 240);

  return sub_100C724A0(v14);
}

uint64_t sub_100CFA1CC()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_100CFA2DC, v2, 0);
}

uint64_t sub_100CFA2DC()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[43];
  DateInterval.start.getter();
  v5 = *(v3 + 8);
  v0[60] = v5;
  v0[61] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_100CFA3B0;
  v7 = v0[47];
  v8 = v0[30];

  return sub_100C724A0(v7);
}

uint64_t sub_100CFA3B0()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_100CFA4C0, v2, 0);
}

uint64_t sub_100CFA4C0()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[58];
  v4 = v0[47];
  v5 = v0[45];
  v6 = v0[42];
  v16 = v0[43];
  v17 = v0[49];
  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[39];
  v10 = v0[33];
  v18 = v0[31];
  v19 = v0[54];
  DateInterval.end.getter();
  v1(v4, v5);
  Date.addingTimeInterval(_:)();
  (*(v7 + 8))(v8, v9);
  DateInterval.init(start:end:)();
  v0[10] = v10;
  v0[11] = v19;
  v11 = sub_1000280DC(v0 + 7);
  sub_100D11DC8(v18, v11, type metadata accessor for OwnedBeaconRecord);
  v12 = swift_task_alloc();
  v0[63] = v12;
  *v12 = v0;
  v12[1] = sub_100CFA630;
  v13 = v0[52];
  v14 = v0[32];

  return sub_100CA0680(v13, (v0 + 7));
}

uint64_t sub_100CFA630()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v8 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);
    v5 = sub_100CFC5D0;
  }

  else
  {
    v6 = *(v2 + 256);
    sub_100007BAC((v2 + 56));
    v5 = sub_100CFA758;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100CFA758()
{
  v1 = *(*(v0 + 256) + 120);
  *(v0 + 520) = v1;
  return _swift_task_switch(sub_100CFA77C, v1, 0);
}

uint64_t sub_100CFA77C()
{
  v1 = *(v0 + 520);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 528) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100CFA85C;
  v5 = *(v0 + 520);

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100CFA85C()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 520);
  v4 = *v0;

  return _swift_task_switch(sub_100CFA974, v2, 0);
}

uint64_t sub_100CFA974()
{
  v1 = v0[32];
  v0[67] = v0[12];
  return _swift_task_switch(sub_100CFA998, v1, 0);
}

uint64_t sub_100CFA998()
{
  v1 = sub_100D11E30(*(v0 + 248), *(v0 + 392), *(v0 + 416));
  *(v0 + 544) = v1;
  *(v0 + 552) = v2;
  if (sub_1000322C8())
  {
    v3 = **(v0 + 424);
    if (v3)
    {
      v1 = v3 / 0x60 + 1;
    }

    else
    {
      v1 = 0;
    }
  }

  v4 = *(v0 + 240);
  result = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6 = *(v4 + *(result + 44));
  if (*(v6 + 16) && (result = sub_100771F0C(*(v0 + 640)), (v7 & 1) != 0))
  {
    v8 = *(v0 + 304);
    sub_100D11DC8(*(v6 + 56) + *(*(v0 + 296) + 72) * result, v8, type metadata accessor for BookmarkMetaData);
    v9 = *(v8 + 8);
    result = sub_100018D00(v8, type metadata accessor for BookmarkMetaData);
  }

  else
  {
    v9 = 0;
  }

  if (((1 << *(v0 + 640)) & 0x7FDDA) == 0)
  {
    if (v9)
    {
      v9 = v9 / 0x60 + 1;
    }

    else
    {
      v9 = 0;
    }
  }

  *(v0 + 560) = v9;
  v10 = v9 + 1;
  if (v9 == -1)
  {
    __break(1u);
  }

  else
  {
    if (v10 <= v1)
    {
      v10 = v1;
    }

    *(v0 + 568) = v10;
    v11 = swift_task_alloc();
    *(v0 + 576) = v11;
    *v11 = v0;
    v11[1] = sub_100CFAB44;
    v12 = *(v0 + 240);

    return sub_100C71F10();
  }

  return result;
}

uint64_t sub_100CFAB44(uint64_t a1)
{
  v2 = *(*v1 + 576);
  v3 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 584) = a1;

  return _swift_task_switch(sub_100CFAC5C, v3, 0);
}

void sub_100CFAC5C()
{
  v2 = v0[73];
  v3 = v2 != 0;
  v4 = v2 - 1;
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v0[71];
  v3 = __CFADD__(v5, v4);
  v6 = v5 + v4;
  if (v3)
  {
    goto LABEL_9;
  }

  if (v0[69] < v6)
  {
    v6 = v0[69];
  }

  v0[74] = v6;
  v7 = swift_task_alloc();
  v0[75] = v7;
  *v7 = v0;
  v7[1] = sub_100CFAD24;
  v8 = v0[48];
  v9 = v0[30];

  sub_100C724A0(v8);
}

uint64_t sub_100CFAD24()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_100CFAE34, v2, 0);
}

uint64_t sub_100CFAE34()
{
  v83 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 568);
  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 384);
  v6 = *(v0 + 360);
  DateInterval.duration.getter();
  v8 = v7;
  *(v0 + 608) = v7;
  v4(v5, v6);
  if (v1 >= v2)
  {

    return _swift_task_switch(sub_100CFB538, 0, 0);
  }

  else
  {
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 272);
    v10 = *(v0 + 248);
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177BF08);
    sub_100D11DC8(v10, v9, type metadata accessor for OwnedBeaconRecord);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v64 = *(v0 + 568);
      v65 = *(v0 + 592);
      v14 = *(v0 + 552);
      v63 = *(v0 + 560);
      v15 = *(v0 + 544);
      v16 = *(v0 + 464);
      v77 = *(v0 + 424);
      v79 = *(v0 + 488);
      v69 = *(v0 + 536);
      v70 = *(v0 + 416);
      v73 = *(v0 + 392);
      v75 = *(v0 + 480);
      v71 = *(v0 + 360);
      v66 = *(v0 + 264);
      v67 = *(v0 + 272);
      v68 = v13;
      v17 = *(v0 + 640);
      v18 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v18 = 136448771;
      v19 = sub_10125403C(v17);
      v21 = sub_1000136BC(v19, v20, &v81);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      strcpy(v82, ".secondary/(");
      BYTE5(v82[1]) = 0;
      HIWORD(v82[1]) = -5120;
      *(v0 + 200) = v15;
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 41;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24 = sub_1000136BC(v82[0], v82[1], &v81);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2080;
      strcpy(v82, ".secondary/(");
      BYTE5(v82[1]) = 0;
      HIWORD(v82[1]) = -5120;
      *(v0 + 208) = v14;
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 41;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27 = sub_1000136BC(v82[0], v82[1], &v81);

      *(v18 + 24) = v27;
      *(v18 + 32) = 2048;
      *(v18 + 34) = v63;
      *(v18 + 42) = 2080;
      strcpy(v82, ".secondary/(");
      BYTE5(v82[1]) = 0;
      HIWORD(v82[1]) = -5120;
      *(v0 + 216) = v64;
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      v29._countAndFlagsBits = 41;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v30 = sub_1000136BC(v82[0], v82[1], &v81);

      *(v18 + 44) = v30;
      *(v18 + 52) = 2080;
      strcpy(v82, ".secondary/(");
      BYTE5(v82[1]) = 0;
      HIWORD(v82[1]) = -5120;
      *(v0 + 224) = v65;
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33 = sub_1000136BC(v82[0], v82[1], &v81);

      *(v18 + 54) = v33;
      *(v18 + 62) = 2080;
      strcpy(v82, ".secondary/(");
      BYTE5(v82[1]) = 0;
      HIWORD(v82[1]) = -5120;
      *(v0 + 232) = v14;
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35._countAndFlagsBits = 41;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);
      v36 = sub_1000136BC(v82[0], v82[1], &v81);

      *(v18 + 64) = v36;
      *(v18 + 72) = 2048;
      *(v18 + 74) = v8;
      *(v18 + 82) = 2048;
      *(v18 + 84) = v16;
      *(v18 + 92) = 2160;
      *(v18 + 94) = 1752392040;
      *(v18 + 102) = 2081;
      v37 = *(v66 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_100018D00(v67, type metadata accessor for OwnedBeaconRecord);
      v41 = sub_1000136BC(v38, v40, &v81);

      *(v18 + 104) = v41;
      _os_log_impl(&_mh_execute_header, v12, v68, "Satisfied high water for secondary Index Range type: %{public}s - start: %s, end: %s, bookmarkValue: %llu,\nadjusted start: %s, end: %s, highWaterIndex: %s,\nduration: %f, maxDrift: %f,\nbeaconIdentifier: %{private,mask.hash}s.", v18, 0x70u);
      swift_arrayDestroy();

      sub_10000B3A8(v70, &unk_1016C8FC0, &unk_10139D7D0);
      v75(v73, v71);
      v42 = v77;
    }

    else
    {
      v43 = *(v0 + 536);
      v45 = *(v0 + 480);
      v44 = *(v0 + 488);
      v47 = *(v0 + 416);
      v46 = *(v0 + 424);
      v48 = *(v0 + 392);
      v49 = *(v0 + 360);
      v50 = *(v0 + 272);

      sub_100018D00(v50, type metadata accessor for OwnedBeaconRecord);
      sub_10000B3A8(v47, &unk_1016C8FC0, &unk_10139D7D0);
      v45(v48, v49);
      v42 = v46;
    }

    sub_10000B3A8(v42, &unk_1016C8FC0, &unk_10139D7D0);
    v52 = *(v0 + 416);
    v51 = *(v0 + 424);
    v54 = *(v0 + 392);
    v53 = *(v0 + 400);
    v56 = *(v0 + 376);
    v55 = *(v0 + 384);
    v58 = *(v0 + 344);
    v57 = *(v0 + 352);
    v59 = *(v0 + 328);
    v60 = *(v0 + 336);
    v72 = *(v0 + 304);
    v74 = *(v0 + 288);
    v76 = *(v0 + 280);
    v78 = *(v0 + 272);
    v80 = *(v0 + 552);

    v61 = *(v0 + 8);

    return v61(v80, v80);
  }
}

uint64_t sub_100CFB538()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 616) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 624) = v3;
  *v3 = v0;
  v3[1] = sub_100CFB638;

  return unsafeBlocking<A>(_:)(v0 + 104, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_100CFB638()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v4 = *v0;

  return _swift_task_switch(sub_100CFB750, 0, 0);
}

uint64_t sub_100CFB750()
{
  v1 = v0[32];
  v0[79] = sub_101074B38(v0[13]);

  return _swift_task_switch(sub_100CFB7CC, v1, 0);
}

uint64_t sub_100CFB7CC()
{
  v143 = v0;
  v1 = *(v0 + 512);
  v2 = *(*(v0 + 616) + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v3 = sub_101073C10(*(v0 + 112));

  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = *(v0 + 560);
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = *(v0 + 552);
  v6 = *(v0 + 632) * 86400.0 / (v3 * 60.0);
  v7 = v5 - v4;
  v9 = v6 < v7 && v4 < v5;
  if (!v4 || v9)
  {
    if (qword_101694DF8 == -1)
    {
LABEL_16:
      v45 = *(v0 + 288);
      v46 = *(v0 + 248);
      v47 = type metadata accessor for Logger();
      sub_1000076D4(v47, qword_10177BF08);
      sub_100D11DC8(v46, v45, type metadata accessor for OwnedBeaconRecord);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 608);
        v112 = *(v0 + 568);
        v114 = *(v0 + 592);
        v51 = *(v0 + 552);
        v110 = *(v0 + 560);
        v52 = *(v0 + 544);
        v53 = *(v0 + 464);
        v136 = *(v0 + 424);
        v139 = *(v0 + 488);
        v122 = *(v0 + 536);
        v124 = *(v0 + 416);
        v130 = *(v0 + 392);
        v133 = *(v0 + 480);
        v127 = *(v0 + 360);
        v116 = *(v0 + 264);
        v118 = *(v0 + 288);
        v120 = v49;
        v54 = *(v0 + 640);
        v55 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *v55 = 136448771;
        v56 = sub_10125403C(v54);
        v58 = sub_1000136BC(v56, v57, &v141);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2080;
        strcpy(v142, ".secondary/(");
        BYTE5(v142[1]) = 0;
        HIWORD(v142[1]) = -5120;
        *(v0 + 160) = v52;
        v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v59);

        v60._countAndFlagsBits = 41;
        v60._object = 0xE100000000000000;
        String.append(_:)(v60);
        v61 = sub_1000136BC(v142[0], v142[1], &v141);

        *(v55 + 14) = v61;
        *(v55 + 22) = 2080;
        strcpy(v142, ".secondary/(");
        BYTE5(v142[1]) = 0;
        HIWORD(v142[1]) = -5120;
        *(v0 + 168) = v51;
        v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v62);

        v63._countAndFlagsBits = 41;
        v63._object = 0xE100000000000000;
        String.append(_:)(v63);
        v64 = sub_1000136BC(v142[0], v142[1], &v141);

        *(v55 + 24) = v64;
        *(v55 + 32) = 2048;
        *(v55 + 34) = v110;
        *(v55 + 42) = 2080;
        strcpy(v142, ".secondary/(");
        BYTE5(v142[1]) = 0;
        HIWORD(v142[1]) = -5120;
        *(v0 + 176) = v112;
        v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v65);

        v66._countAndFlagsBits = 41;
        v66._object = 0xE100000000000000;
        String.append(_:)(v66);
        v67 = sub_1000136BC(v142[0], v142[1], &v141);

        *(v55 + 44) = v67;
        *(v55 + 52) = 2080;
        strcpy(v142, ".secondary/(");
        BYTE5(v142[1]) = 0;
        HIWORD(v142[1]) = -5120;
        *(v0 + 184) = v114;
        v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v68);

        v69._countAndFlagsBits = 41;
        v69._object = 0xE100000000000000;
        String.append(_:)(v69);
        v70 = sub_1000136BC(v142[0], v142[1], &v141);

        *(v55 + 54) = v70;
        *(v55 + 62) = 2080;
        strcpy(v142, ".secondary/(");
        BYTE5(v142[1]) = 0;
        HIWORD(v142[1]) = -5120;
        *(v0 + 192) = v51;
        v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v71);

        v72._countAndFlagsBits = 41;
        v72._object = 0xE100000000000000;
        String.append(_:)(v72);
        v73 = sub_1000136BC(v142[0], v142[1], &v141);

        *(v55 + 64) = v73;
        *(v55 + 72) = 2048;
        *(v55 + 74) = v50;
        *(v55 + 82) = 2048;
        *(v55 + 84) = v53;
        *(v55 + 92) = 2160;
        *(v55 + 94) = 1752392040;
        *(v55 + 102) = 2081;
        v74 = *(v116 + 20);
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        sub_100018D00(v118, type metadata accessor for OwnedBeaconRecord);
        v78 = sub_1000136BC(v75, v77, &v141);

        *(v55 + 104) = v78;
        _os_log_impl(&_mh_execute_header, v48, v120, "Secondary Index Range type: %{public}s - start: %s, end: %s, bookmarkValue: %llu,\nadjusted start: %s, end: %s, highWaterIndex: %s,\nduration: %f, maxDrift: %f,\nbeaconIdentifier: %{private,mask.hash}s.", v55, 0x70u);
        swift_arrayDestroy();

        sub_10000B3A8(v124, &unk_1016C8FC0, &unk_10139D7D0);
        v133(v130, v127);
        v79 = v136;
      }

      else
      {
        v80 = *(v0 + 536);
        v82 = *(v0 + 480);
        v81 = *(v0 + 488);
        v84 = *(v0 + 416);
        v83 = *(v0 + 424);
        v85 = *(v0 + 392);
        v86 = *(v0 + 360);
        v87 = *(v0 + 288);

        sub_100018D00(v87, type metadata accessor for OwnedBeaconRecord);
        sub_10000B3A8(v84, &unk_1016C8FC0, &unk_10139D7D0);
        v82(v85, v86);
        v79 = v83;
      }

      sub_10000B3A8(v79, &unk_1016C8FC0, &unk_10139D7D0);
      v88 = *(v0 + 592);
      v137 = v88;
      v140 = *(v0 + 568);
      goto LABEL_22;
    }

LABEL_27:
    swift_once();
    goto LABEL_16;
  }

  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 248);
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177BF08);
  sub_100D11DC8(v11, v10, type metadata accessor for OwnedBeaconRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 608);
    v111 = *(v0 + 568);
    v113 = *(v0 + 592);
    v16 = *(v0 + 552);
    v109 = *(v0 + 560);
    v17 = *(v0 + 544);
    v18 = *(v0 + 464);
    v135 = *(v0 + 424);
    v138 = *(v0 + 488);
    v121 = *(v0 + 536);
    v123 = *(v0 + 416);
    v129 = *(v0 + 392);
    v132 = *(v0 + 480);
    v126 = *(v0 + 360);
    v115 = *(v0 + 264);
    v117 = *(v0 + 280);
    v119 = v14;
    v19 = *(v0 + 640);
    v20 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *v20 = 136449283;
    v21 = sub_10125403C(v19);
    v23 = sub_1000136BC(v21, v22, &v141);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    strcpy(v142, ".secondary/(");
    BYTE5(v142[1]) = 0;
    HIWORD(v142[1]) = -5120;
    *(v0 + 120) = v17;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = sub_1000136BC(v142[0], v142[1], &v141);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    strcpy(v142, ".secondary/(");
    BYTE5(v142[1]) = 0;
    HIWORD(v142[1]) = -5120;
    *(v0 + 128) = v16;
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 41;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = sub_1000136BC(v142[0], v142[1], &v141);

    *(v20 + 24) = v29;
    *(v20 + 32) = 2048;
    *(v20 + 34) = v109;
    *(v20 + 42) = 2080;
    strcpy(v142, ".secondary/(");
    BYTE5(v142[1]) = 0;
    HIWORD(v142[1]) = -5120;
    *(v0 + 136) = v111;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v32 = sub_1000136BC(v142[0], v142[1], &v141);

    *(v20 + 44) = v32;
    *(v20 + 52) = 2080;
    strcpy(v142, ".secondary/(");
    BYTE5(v142[1]) = 0;
    HIWORD(v142[1]) = -5120;
    *(v0 + 144) = v113;
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35 = sub_1000136BC(v142[0], v142[1], &v141);

    *(v20 + 54) = v35;
    *(v20 + 62) = 2080;
    strcpy(v142, ".secondary/(");
    BYTE5(v142[1]) = 0;
    HIWORD(v142[1]) = -5120;
    *(v0 + 152) = v16;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 41;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38 = sub_1000136BC(v142[0], v142[1], &v141);

    *(v20 + 64) = v38;
    *(v20 + 72) = 2048;
    *(v20 + 74) = v15;
    *(v20 + 82) = 2048;
    *(v20 + 84) = v18;
    *(v20 + 92) = 2048;
    *(v20 + 94) = v7;
    *(v20 + 102) = 2048;
    *(v20 + 104) = v6;
    *(v20 + 112) = 2160;
    *(v20 + 114) = 1752392040;
    *(v20 + 122) = 2081;
    v39 = *(v115 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    sub_100018D00(v117, type metadata accessor for OwnedBeaconRecord);
    v43 = sub_1000136BC(v40, v42, &v141);

    *(v20 + 124) = v43;
    _os_log_impl(&_mh_execute_header, v13, v119, "Satisfied low water for secondary Index Range type: %{public}s - start: %s, end: %s, bookmarkValue: %llu,\nadjusted start: %s, end: %s, highWaterIndex: %s,\nduration: %f, maxDrift: %f, remainingKeysToReachHighWater: %f < %f,\nbeaconIdentifier: %{private,mask.hash}s.", v20, 0x84u);
    swift_arrayDestroy();

    sub_10000B3A8(v123, &unk_1016C8FC0, &unk_10139D7D0);
    v132(v129, v126);
    v44 = v135;
  }

  else
  {
    v89 = *(v0 + 536);
    v91 = *(v0 + 480);
    v90 = *(v0 + 488);
    v93 = *(v0 + 416);
    v92 = *(v0 + 424);
    v94 = *(v0 + 392);
    v95 = *(v0 + 360);
    v96 = *(v0 + 280);

    sub_100018D00(v96, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v93, &unk_1016C8FC0, &unk_10139D7D0);
    v91(v94, v95);
    v44 = v92;
  }

  sub_10000B3A8(v44, &unk_1016C8FC0, &unk_10139D7D0);
  v137 = *(v0 + 560);
  v140 = v137;
LABEL_22:
  v98 = *(v0 + 416);
  v97 = *(v0 + 424);
  v100 = *(v0 + 392);
  v99 = *(v0 + 400);
  v102 = *(v0 + 376);
  v101 = *(v0 + 384);
  v104 = *(v0 + 344);
  v103 = *(v0 + 352);
  v106 = *(v0 + 328);
  v105 = *(v0 + 336);
  v125 = *(v0 + 304);
  v128 = *(v0 + 288);
  v131 = *(v0 + 280);
  v134 = *(v0 + 272);

  v107 = *(v0 + 8);

  return v107(v140, v137);
}

uint64_t sub_100CFC4B0()
{
  sub_100007BAC(v0 + 2);
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[41];
  v10 = v0[42];
  v13 = v0[38];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[56];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100CFC5D0()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 424);
  (*(v0 + 480))(*(v0 + 392), *(v0 + 360));
  sub_10000B3A8(v2, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100007BAC((v0 + 56));
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  v10 = *(v0 + 344);
  v9 = *(v0 + 352);
  v11 = *(v0 + 328);
  v12 = *(v0 + 336);
  v15 = *(v0 + 304);
  v16 = *(v0 + 288);
  v17 = *(v0 + 280);
  v18 = *(v0 + 272);
  v19 = *(v0 + 512);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100CFC71C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_10169BA30, &unk_101395620) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v3[18] = v6;
  v7 = *(v6 - 8);
  v3[19] = v7;
  v8 = *(v7 + 64) + 15;
  v3[20] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v3[23] = *(v10 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_100CFC8D8, v2, 0);
}

uint64_t sub_100CFC8D8()
{
  v1 = *(*(v0 + 120) + 120);
  *(v0 + 216) = v1;
  return _swift_task_switch(sub_100CFC8FC, v1, 0);
}

uint64_t sub_100CFC8FC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[22];
  v4 = v0[21];
  v5 = v0[14];
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[30] = v8;
  *(v8 + 16) = v2;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[31] = v10;
  v11 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v10 = v0;
  v10[1] = sub_100CFCA80;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v8, v11);
}

uint64_t sub_100CFCA80()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_100CFCBAC, v3, 0);
}

uint64_t sub_100CFCBAC()
{
  if (*(v0 + 80))
  {
    sub_100031694((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 256) = v1;
    *v1 = v0;
    v1[1] = sub_100CFCD3C;
    v2 = *(v0 + 136);
    v3 = *(v0 + 120);

    return sub_100CA0680(v2, v0 + 16);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    v5 = *(v0 + 104);
    v6 = type metadata accessor for TimeBasedKey();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = *(v0 + 160);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100CFCD3C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;

  v5 = *(v2 + 120);
  if (v0)
  {

    v6 = sub_100CFCE74;
  }

  else
  {
    v6 = sub_100CFCFA4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100CFCE74()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_100007BAC(v0 + 2);
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_10000B3A8(v3, &unk_1016AF8A0, &unk_10139D7C0);
  v4 = v0[13];
  v5 = type metadata accessor for TimeBasedKey();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v0[20];
  v11 = v0[16];
  v10 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100CFCFA4()
{
  v1 = v0[20];
  v2 = v0[17];
  (*(v0[19] + 56))(v2, 0, 1, v0[18]);
  sub_1000D2AD8(v2, v1, &unk_1016C8FC0, &unk_10139D7D0);
  if (*v1)
  {
    v3 = *v1 / 0x60uLL + 1;
  }

  else
  {
    v3 = 0;
  }

  v0[33] = v3;
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_100CFD0A8;
  v5 = v0[15];

  return sub_100D075D8((v0 + 2), 1, v3, v3);
}

uint64_t sub_100CFD0A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  v7 = *(v3 + 120);
  if (v1)
  {
    v8 = sub_100CFD640;
  }

  else
  {
    v8 = sub_100CFD1DC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100CFD1DC()
{
  v44 = v0;
  v1 = v0[35];
  v2 = v0[16];
  if (*(v1 + 16))
  {
    v3 = type metadata accessor for TimeBasedKey();
    v4 = *(v3 - 8);
    sub_100D11DC8(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for TimeBasedKey);

    (*(v4 + 56))(v2, 0, 1, v3);
  }

  else
  {
    v5 = v0[35];

    v6 = type metadata accessor for TimeBasedKey();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  }

  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[25];
  v10 = v0[21];
  v11 = v0[14];
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177BF08);
  v8(v9, v11, v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[33];
    v16 = v0[25];
    v18 = v0[21];
    v17 = v0[22];
    v41 = v0[20];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 136315651;
    v42 = v20;
    strcpy(v43, ".secondary/(");
    BYTE5(v43[1]) = 0;
    HIWORD(v43[1]) = -5120;
    v0[12] = v15;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = sub_1000136BC(v43[0], v43[1], &v42);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v17 + 8))(v16, v18);
    v27 = sub_1000136BC(v24, v26, &v42);

    *(v19 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "Found SML Off - secondary key %s for %{private,mask.hash}s.", v19, 0x20u);
    swift_arrayDestroy();

    v28 = v41;
  }

  else
  {
    v29 = v0[25];
    v30 = v0[21];
    v31 = v0[22];
    v32 = v0[20];

    (*(v31 + 8))(v29, v30);
    v28 = v32;
  }

  sub_10000B3A8(v28, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100007BAC(v0 + 2);
  sub_1000D2AD8(v0[16], v0[13], &qword_10169BA30, &unk_101395620);
  v34 = v0[25];
  v33 = v0[26];
  v35 = v0[24];
  v36 = v0[20];
  v38 = v0[16];
  v37 = v0[17];

  v39 = v0[1];

  return v39();
}

uint64_t sub_100CFD640()
{
  v37 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[14];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177BF08);
  v3(v4, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[36];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[20];
  if (v10)
  {
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v34 = v15;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_1000136BC(v17, v19, &v36);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v33 = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "Could not find SML Off - secondary key for %{private,mask.hash}s,error: %{public}@.", v16, 0x20u);
    sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v35);

    v22 = v34;
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v22 = v15;
  }

  sub_10000B3A8(v22, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100007BAC(v0 + 2);
  v23 = v0[13];
  v24 = type metadata accessor for TimeBasedKey();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v26 = v0[25];
  v25 = v0[26];
  v27 = v0[24];
  v28 = v0[20];
  v30 = v0[16];
  v29 = v0[17];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100CFD9C0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v5 = *(type metadata accessor for KeyDropJoinToken(0) - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  v7 = *(*(type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v3[6] = v8;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_100CFDAF0;

  return sub_100C7B39C(v8, a2);
}

uint64_t sub_100CFDAF0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100CFDE3C;
  }

  else
  {
    v4 = sub_100CFDC18;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CFDC18()
{
  v1 = v0[6];
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[4];
    while (v4 < *(v2 + 16))
    {
      sub_100D11DC8(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v0[5], type metadata accessor for KeyDropJoinToken);
      if (qword_101694560 != -1)
      {
        swift_once();
      }

      v6 = v0[5];
      v7 = type metadata accessor for UUID();
      sub_1000076D4(v7, qword_10177A900);
      if (static UUID.== infix(_:_:)())
      {
        v8 = v0[6];
        sub_100D12974(v0[5], v0[2], type metadata accessor for KeyDropJoinToken);
        sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

        v9 = v0[1];
        goto LABEL_11;
      }

      ++v4;
      sub_100018D00(v0[5], type metadata accessor for KeyDropJoinToken);
      if (v3 == v4)
      {
        v1 = v0[6];
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1001BAEE0();
    swift_allocError();
    *v10 = 13;
    swift_willThrow();
    sub_100018D00(v1, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v12 = v0[5];
    v11 = v0[6];

    v9 = v0[1];
LABEL_11:

    v9();
  }
}

uint64_t sub_100CFDE3C()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100CFDEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[54] = a3;
  v4[55] = v3;
  v4[52] = a1;
  v4[53] = a2;
  v5 = type metadata accessor for P256.Signing.ECDSASignature();
  v4[56] = v5;
  v6 = *(v5 - 8);
  v4[57] = v6;
  v7 = *(v6 + 64) + 15;
  v4[58] = swift_task_alloc();
  v8 = type metadata accessor for P256.Signing.PrivateKey();
  v4[59] = v8;
  v9 = *(v8 - 8);
  v4[60] = v9;
  v10 = *(v9 + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v11 = type metadata accessor for P256PrivateKey();
  v4[63] = v11;
  v12 = *(v11 - 8);
  v4[64] = v12;
  v13 = *(v12 + 64) + 15;
  v4[65] = swift_task_alloc();
  v14 = type metadata accessor for AES.GCM.Nonce();
  v4[66] = v14;
  v15 = *(v14 - 8);
  v4[67] = v15;
  v16 = *(v15 + 64) + 15;
  v4[68] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_1016AF958, &qword_1013CADF8) - 8) + 64) + 15;
  v4[69] = swift_task_alloc();
  v18 = type metadata accessor for SymmetricKey();
  v4[70] = v18;
  v19 = *(v18 - 8);
  v4[71] = v19;
  v20 = *(v19 + 64) + 15;
  v4[72] = swift_task_alloc();
  v21 = type metadata accessor for AES.GCM.SealedBox();
  v4[73] = v21;
  v22 = *(v21 - 8);
  v4[74] = v22;
  v23 = *(v22 + 64) + 15;
  v4[75] = swift_task_alloc();
  v24 = type metadata accessor for KeyDropJoinToken(0);
  v4[76] = v24;
  v25 = *(v24 - 8);
  v4[77] = v25;
  v26 = *(v25 + 64) + 15;
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v27 = *(*(sub_1000BC4D4(&qword_101698360, &qword_1013E35F0) - 8) + 64) + 15;
  v4[81] = swift_task_alloc();
  v28 = type metadata accessor for SymmetricKey256();
  v4[82] = v28;
  v29 = *(v28 - 8);
  v4[83] = v29;
  v30 = *(v29 + 64) + 15;
  v4[84] = swift_task_alloc();
  v31 = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v4[85] = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  v4[86] = swift_task_alloc();
  v33 = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v4[87] = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  v4[88] = swift_task_alloc();

  return _swift_task_switch(sub_100CFE2E4, v3, 0);
}

uint64_t sub_100CFE2E4()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 432);
  v4 = type metadata accessor for BeaconEstimatedLocation();
  v5 = *(v3 + v4[7]);
  v6 = *(v3 + v4[8]);
  v7 = v4[10];
  v8 = *(v3 + v4[9]);
  *(v0 + 776) = v7;
  v9 = *(v2 + 28);
  v10 = type metadata accessor for Date();
  *(v0 + 712) = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  *(v0 + 720) = v12;
  *(v0 + 728) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(&v1[v9], v3 + v7, v10);
  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 2) = v8;
  v13 = type metadata accessor for JSONEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 736) = JSONEncoder.init()();
  sub_100D13BF8(&qword_1016A3D48, type metadata accessor for DeviceEventFormat.LocationFormat);
  *(v0 + 744) = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 752) = v16;
  v17 = swift_task_alloc();
  *(v0 + 760) = v17;
  *v17 = v0;
  v17[1] = sub_100CFE5D8;
  v18 = *(v0 + 688);
  v19 = *(v0 + 440);
  v20 = *(v0 + 424);

  return sub_100C7B39C(v18, v20);
}

uint64_t sub_100CFE5D8()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = v0;

  v5 = *(v2 + 440);
  if (v0)
  {
    v6 = sub_100CFF9C8;
  }

  else
  {
    v6 = sub_100CFE704;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100CFE704()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = (v1 + *(v2 + 24));
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v5 = *v3;
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  sub_1000D2A70(v1 + *(v2 + 20), v8, &qword_101698360, &qword_1013E35F0);
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    sub_10000B3A8(v0[81], &qword_101698360, &qword_1013E35F0);
LABEL_12:
    v17 = v0[94];
    v18 = v0[93];
    v19 = v0[92];
    v20 = v0[88];
    v21 = v0[86];
    sub_1001BAEE0();
    swift_allocError();
    *v22 = 21;
    swift_willThrow();
    sub_100016590(v18, v17);

    sub_100018D00(v20, type metadata accessor for DeviceEventFormat.LocationFormat);
    sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
LABEL_13:
    v23 = v0[88];
    v24 = v0[86];
    v25 = v0[84];
    v26 = v0[81];
    v27 = v0[80];
    v28 = v0[79];
    v29 = v0[78];
    v30 = v0[75];
    v31 = v0[72];
    v32 = v0[69];
    v172 = v0[68];
    v177 = v0[65];
    v182 = v0[62];
    v187 = v0[61];
    v189 = v0[58];

    v33 = v0[1];
    goto LABEL_14;
  }

  v9 = v0[86];
  (*(v0[83] + 32))(v0[84], v0[81], v0[82]);
  v10 = *v9;
  v11 = *(*v9 + 16);
  v188 = v5;
  sub_100017D5C(v5, v4);
  if (!v11)
  {
LABEL_11:
    (*(v0[83] + 8))(v0[84], v0[82]);
    sub_100006654(v188, v4);
    goto LABEL_12;
  }

  v12 = 0;
  v13 = v0[77];
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  v15 = &qword_101694560;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_100D11DC8(v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12, v0[78], type metadata accessor for KeyDropJoinToken);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    v5 = v0[78];
    v16 = type metadata accessor for UUID();
    sub_1000076D4(v16, qword_10177A900);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v12;
    sub_100018D00(v0[78], type metadata accessor for KeyDropJoinToken);
    if (v11 == v12)
    {
      goto LABEL_11;
    }
  }

  v186 = v4;
  v190 = v0[96];
  v35 = v0[94];
  v36 = v0[93];
  v37 = v0[82];
  v38 = v0[80];
  v39 = v0[79];
  v183 = v0[75];
  v40 = v0[72];
  v41 = v0[69];
  v42 = v0[67];
  v173 = v0[84];
  v178 = v0[66];
  sub_100D12974(v0[78], v39, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v39, v38, type metadata accessor for KeyDropJoinToken);
  v0[38] = v36;
  v0[39] = v35;
  sub_100D13BF8(&qword_1016982E8, &type metadata accessor for SymmetricKey256);
  v0[40] = KeyRepresenting.rawValue.getter();
  v0[41] = v43;
  SymmetricKey.init<A>(data:)();
  (*(v42 + 56))(v41, 1, 1, v178);
  sub_1000E0A3C();
  static AES.GCM.seal<A>(_:using:nonce:)();
  if (v190)
  {
    v179 = v0[93];
    v184 = v0[94];
    v44 = v0[92];
    v169 = v0[88];
    v174 = v0[86];
    v45 = v0[84];
    v46 = v0[83];
    v47 = v0[82];
    v48 = v0[80];
    v49 = v0[72];
    v50 = v0[71];
    v51 = v0[70];
    v52 = v0[69];

    sub_100006654(v188, v186);
    sub_10000B3A8(v52, &qword_1016AF958, &qword_1013CADF8);
    (*(v50 + 8))(v49, v51);
    sub_100018D00(v48, type metadata accessor for KeyDropJoinToken);
    (*(v46 + 8))(v45, v47);
    sub_100018D00(v169, type metadata accessor for DeviceEventFormat.LocationFormat);
    sub_100018D00(v174, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    sub_100016590(v179, v184);
    goto LABEL_13;
  }

  v180 = v0[76];
  v185 = v0[80];
  v53 = v0[75];
  v54 = v0[72];
  v55 = v0[71];
  v56 = v0[70];
  v57 = v0[68];
  v58 = v0[67];
  v59 = v0[66];
  v191 = v0[62];
  sub_10000B3A8(v0[69], &qword_1016AF958, &qword_1013CADF8);
  (*(v55 + 8))(v54, v56);
  AES.GCM.SealedBox.nonce.getter();
  v0[21] = v59;
  v60 = sub_100D13BF8(&qword_1016B9B00, &type metadata accessor for AES.GCM.Nonce);
  v0[22] = v60;
  v61 = sub_1000280DC(v0 + 18);
  v162 = *(v58 + 16);
  v162(v61, v57, v59);
  sub_1000035D0(v0 + 18, v0[21]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v159 = *(v58 + 8);
  v159(v57, v59);
  v62 = v0[42];
  v63 = v0[43];
  sub_100007BAC(v0 + 18);
  v64 = AES.GCM.SealedBox.ciphertext.getter();
  v66 = v65;
  v0[26] = &type metadata for Data;
  v0[27] = &protocol witness table for Data;
  v0[23] = v64;
  v0[24] = v65;
  v67 = sub_1000035D0(v0 + 23, &type metadata for Data);
  v69 = *v67;
  v68 = v67[1];
  sub_100017D5C(v62, v63);
  sub_100017D5C(v64, v66);
  sub_100017DB0(v69, v68);
  sub_100016590(v64, v66);
  sub_100016590(v62, v63);
  sub_100007BAC(v0 + 23);
  v70 = AES.GCM.SealedBox.tag.getter();
  v72 = v71;
  v0[31] = &type metadata for Data;
  v0[32] = &protocol witness table for Data;
  v0[28] = v70;
  v0[29] = v71;
  v73 = sub_1000035D0(v0 + 28, &type metadata for Data);
  v74 = *v73;
  v75 = v73[1];
  sub_100017D5C(v62, v63);
  sub_100017D5C(v70, v72);
  sub_100017DB0(v74, v75);
  sub_100016590(v70, v72);
  sub_100016590(v62, v63);
  sub_100007BAC(v0 + 28);
  v76 = (v185 + *(v180 + 20));
  v77 = *v76;
  v78 = v76[1];
  v0[44] = *v76;
  v0[45] = v78;
  sub_100017D5C(v77, v78);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  p_weak_ivar_lyt = v60;
  v181 = v62;
  v158 = v63;
  v79 = v0[65];
  v80 = v0[62];
  v5 = v0;
  v81 = v0[59];
  v82 = v0[60];
  P256.Signing.PrivateKey.rawRepresentation.getter();
  v83 = *(v82 + 8);
  v83(v80, v81);
  v15 = 0;
  P256PrivateKey.init(data:)();
  v84 = v0[65];
  v85 = v0[63];
  v86 = *(v5 + 488);
  sub_100D13BF8(&qword_1016982E0, &type metadata accessor for P256PrivateKey);
  *(v5 + 368) = KeyRepresenting.rawValue.getter();
  *(v5 + 376) = v87;
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v176 = v83;
  v88 = *(v5 + 488);
  v89 = *(v5 + 464);
  *(v5 + 384) = v181;
  *(v5 + 392) = v158;
  P256.Signing.PrivateKey.signature<A>(for:)();
LABEL_21:
  v192 = *(v5 + 736);
  v90 = *(v5 + 600);
  v91 = *(v5 + 544);
  v92 = *(v5 + 528);
  v93 = *(v5 + 456);
  v94 = *(v5 + 464);
  v95 = *(v5 + 448);
  v170 = P256.Signing.ECDSASignature.rawRepresentation.getter();
  v155 = v96;
  (*(v93 + 8))(v94, v95);
  v97 = AES.GCM.SealedBox.ciphertext.getter();
  v149 = v98;
  v152 = v97;
  v99 = AES.GCM.SealedBox.tag.getter();
  v101 = v100;
  AES.GCM.SealedBox.nonce.getter();
  *(v5 + 288) = v92;
  *(v5 + 296) = p_weak_ivar_lyt;
  v102 = sub_1000280DC((v5 + 264));
  v162(v102, v91, v92);
  sub_1000035D0((v5 + 264), *(v5 + 288));
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v159(v91, v92);
  v103 = *(v5 + 400);
  v104 = *(v5 + 408);
  sub_100007BAC((v5 + 264));
  *(v5 + 16) = v170;
  *(v5 + 24) = v155;
  *(v5 + 32) = v152;
  *(v5 + 40) = v149;
  *(v5 + 48) = v99;
  *(v5 + 56) = v101;
  *(v5 + 64) = v103;
  *(v5 + 72) = v104;
  v105 = *(v5 + 32);
  *(v5 + 80) = *(v5 + 16);
  *(v5 + 96) = v105;
  v106 = *(v5 + 64);
  *(v5 + 112) = *(v5 + 48);
  *(v5 + 128) = v106;
  sub_100D12AA0();
  v107 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v171 = *(v5 + 744);
  v175 = *(v5 + 752);
  v109 = *(v5 + 736);
  if (v15)
  {
    v165 = *(v5 + 704);
    v167 = *(v5 + 688);
    v110 = *(v5 + 664);
    v160 = *(v5 + 656);
    v163 = *(v5 + 672);
    v153 = *(v5 + 600);
    v156 = *(v5 + 640);
    v111 = *(v5 + 592);
    v147 = *(v5 + 520);
    v150 = *(v5 + 584);
    v112 = *(v5 + 504);
    v113 = *(v5 + 512);
    v114 = *(v5 + 488);
    v115 = *(v5 + 472);
    sub_100016590(v181, v158);
    sub_100016590(v171, v175);

    sub_100006654(v188, v186);
    v176(v114, v115);
    (*(v113 + 8))(v147, v112);
    (*(v111 + 8))(v153, v150);
    sub_100018D00(v156, type metadata accessor for KeyDropJoinToken);
    (*(v110 + 8))(v163, v160);
    sub_100018D00(v165, type metadata accessor for DeviceEventFormat.LocationFormat);
    sub_100018D00(v167, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    sub_1000D2840(v5 + 16);
    v0 = v5;
    goto LABEL_13;
  }

  v116 = v108;
  v130 = *(v5 + 720);
  v132 = *(v5 + 728);
  v128 = *(v5 + 776);
  v129 = *(v5 + 712);
  v144 = *(v5 + 704);
  v145 = *(v5 + 688);
  v142 = *(v5 + 656);
  v143 = *(v5 + 672);
  v140 = *(v5 + 640);
  v141 = *(v5 + 664);
  v146 = *(v5 + 648);
  v148 = *(v5 + 632);
  v137 = *(v5 + 592);
  v138 = *(v5 + 584);
  v139 = *(v5 + 600);
  v151 = *(v5 + 624);
  v154 = *(v5 + 576);
  v157 = *(v5 + 552);
  v161 = *(v5 + 544);
  v168 = *(v5 + 520);
  v135 = *(v5 + 512);
  v136 = *(v5 + 504);
  v164 = *(v5 + 496);
  v193 = *(v5 + 488);
  v134 = *(v5 + 472);
  v166 = *(v5 + 464);
  v117 = *(v5 + 432);
  v127 = *(v5 + 424);
  v118 = *(v5 + 416);
  v119 = v107;
  sub_1000BC4D4(&qword_1016AB880, &unk_1013E3620);
  v120 = (type metadata accessor for OwnSubmitLocationInfo() - 8);
  v121 = *(*v120 + 72);
  v122 = (*(*v120 + 80) + 32) & ~*(*v120 + 80);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_101385D80;
  v124 = (v123 + v122);
  v130(v124 + v120[7], v117 + v128, v129);
  *v124 = v119;
  v124[1] = v116;
  sub_10002E98C(v188, v186);
  sub_100017D5C(v119, v116);
  v125 = UUID.uuidString.getter();
  v131 = v126;
  v133 = v125;
  sub_100016590(v181, v158);
  sub_100016590(v171, v175);

  sub_1000D2840(v5 + 16);
  sub_100006654(v188, v186);
  sub_100016590(v119, v116);
  v176(v193, v134);
  (*(v135 + 8))(v168, v136);
  (*(v137 + 8))(v139, v138);
  sub_100018D00(v140, type metadata accessor for KeyDropJoinToken);
  (*(v141 + 8))(v143, v142);
  sub_100018D00(v144, type metadata accessor for DeviceEventFormat.LocationFormat);
  sub_100018D00(v145, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
  *v118 = v188;
  *(v118 + 8) = v186;
  *(v118 + 16) = 2;
  *(v118 + 24) = v133;
  *(v118 + 32) = v131;
  *(v118 + 40) = 516;
  *(v118 + 48) = v123;

  v33 = *(v5 + 8);
LABEL_14:

  return v33();
}

uint64_t sub_100CFF9C8()
{
  v1 = v0[92];
  v2 = v0[88];
  sub_100016590(v0[93], v0[94]);

  sub_100018D00(v2, type metadata accessor for DeviceEventFormat.LocationFormat);
  v3 = v0[88];
  v4 = v0[86];
  v5 = v0[84];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[75];
  v11 = v0[72];
  v12 = v0[69];
  v15 = v0[68];
  v16 = v0[65];
  v17 = v0[62];
  v18 = v0[61];
  v19 = v0[58];
  v20 = v0[96];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100CFFB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v7 = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v5[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101698360, &qword_1013E35F0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = type metadata accessor for SymmetricKey256();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v14 = type metadata accessor for PeerCommunicationIdentifier();
  v5[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v16 = type metadata accessor for OwnerPeerTrust();
  v5[17] = v16;
  v17 = *(v16 - 8);
  v5[18] = v17;
  v18 = *(v17 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v5[22] = v19;
  v20 = *(v19 - 8);
  v5[23] = v20;
  v5[24] = *(v20 + 64);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v21 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v5[27] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v23 = type metadata accessor for OwnerSharingCircle();
  v5[29] = v23;
  v24 = *(v23 - 8);
  v5[30] = v24;
  v25 = *(v24 + 64) + 15;
  v5[31] = swift_task_alloc();
  v26 = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v5[32] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v28 = swift_task_alloc();
  v5[33] = v28;
  v29 = swift_task_alloc();
  v5[34] = v29;
  *v29 = v5;
  v29[1] = sub_100CFFEC4;

  return sub_100C7B39C(v28, a4);
}

uint64_t sub_100CFFEC4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_100D00F7C;
  }

  else
  {
    v6 = sub_100CFFFF0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100CFFFF0()
{
  v1 = *(*(v0 + 56) + 120);
  *(v0 + 288) = v1;
  return _swift_task_switch(sub_100D00014, v1, 0);
}

uint64_t sub_100D00014()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  v5 = *(v0 + 48);
  v6 = *(v3 + 16);
  *(v0 + 296) = v6;
  *(v0 + 304) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 360) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 312) = v9;
  *(v9 + 16) = v1;
  (*(v3 + 32))(v9 + v8, v2, v4);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 320) = v11;
  *v11 = v0;
  v11[1] = sub_100D0018C;
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100D1295C, v9, v13);
}

uint64_t sub_100D0018C()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_100D002B8, v3, 0);
}

uint64_t sub_100D002B8()
{
  v33 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  if ((*(*(v0 + 240) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 264);
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    sub_1001BAEE0();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    sub_100018D00(v3, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v5 = *(v0 + 264);
    v6 = *(v0 + 248);
    v7 = *(v0 + 224);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = *(v0 + 152);
    v13 = *(v0 + 128);
    v14 = *(v0 + 112);
    v29 = *(v0 + 104);
    v30 = *(v0 + 80);
    v31 = *(v0 + 72);

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(v0 + 248);
  sub_100D12974(v2, v17, type metadata accessor for OwnerSharingCircle);
  v18 = *(v17 + *(v1 + 32));
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = *(v0 + 360);
  v21 = sub_1003A85FC(*(v18 + 16), 0);
  v22 = sub_1003CC2CC(&v32, v21 + ((v20 + 32) & ~v20), v19, v18);

  sub_1000128F8();
  if (v22 != v19)
  {
    __break(1u);
LABEL_8:
    v21 = _swiftEmptyArrayStorage;
  }

  *(v0 + 328) = v21;
  *(v0 + 16) = v21;
  v23 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v24 = swift_task_alloc();
  *(v0 + 336) = v24;
  v25 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v26 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0);
  *v24 = v0;
  v24[1] = sub_100D005F4;
  v27 = *(v0 + 136);
  v28 = *(v0 + 56);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E3610, v28, v25, v27, v26);
}

uint64_t sub_100D005F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v5 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[41];
    v8 = v3[7];

    return _swift_task_switch(sub_100D00738, v8, 0);
  }
}

void sub_100D00738()
{
  v1 = v0[43];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[17];
    v4 = v0[18];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = v0[19];
      v8 = v0[15];
      v7 = v0[16];
      sub_100D11DC8(v0[43] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v6, type metadata accessor for OwnerPeerTrust);
      v9 = *(v5 + 28);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v6) = sub_10098BFC0(v6 + v9, v7);
      sub_100018D00(v7, type metadata accessor for PeerCommunicationIdentifier);
      if (v6)
      {
        break;
      }

      ++v3;
      sub_100018D00(v0[19], type metadata accessor for OwnerPeerTrust);
      if (v2 == v3)
      {
        v10 = v0[43];
        goto LABEL_7;
      }
    }

    v14 = v0[43];
    v15 = v0[37];
    v84 = v0[38];
    v87 = v0[44];
    v81 = v0[33];
    v16 = v0[25];
    v18 = v0[21];
    v17 = v0[22];
    v20 = v0[19];
    v19 = v0[20];
    v21 = v0[17];
    v22 = v0[14];

    sub_100D12974(v20, v19, type metadata accessor for OwnerPeerTrust);
    sub_100D12974(v19, v18, type metadata accessor for OwnerPeerTrust);
    v15(v16, v18 + *(v21 + 20), v17);
    v23 = *v81;
    *(swift_task_alloc() + 16) = v16;
    sub_1012BB600(sub_1002DB664, v23, v22);

    v24 = type metadata accessor for KeyDropJoinToken(0);
    LODWORD(v16) = (*(*(v24 - 8) + 48))(v22, 1, v24);
    sub_10000B3A8(v22, &qword_1016B9AF8, &unk_1013E35F8);
    if (v16 == 1)
    {
LABEL_11:
      v28 = v0[33];
      v29 = v0[31];
      v30 = v0[25];
      v32 = v0[22];
      v31 = v0[23];
      v33 = v0[21];
      sub_1001BAEE0();
      swift_allocError();
      *v34 = 21;
      swift_willThrow();
      sub_100018D00(v33, type metadata accessor for OwnerPeerTrust);
      sub_100018D00(v29, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v28, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
      (*(v31 + 8))(v30, v32);
      goto LABEL_12;
    }

    v25 = v0[11];
    v26 = v0[12];
    v27 = v0[10];
    sub_1000D2A70(v0[33] + *(v0[32] + 20), v27, &qword_101698360, &qword_1013E35F0);
    if ((*(v26 + 48))(v27, 1, v25) == 1)
    {
      sub_10000B3A8(v0[10], &qword_101698360, &qword_1013E35F0);
      goto LABEL_11;
    }

    v46 = v0[5];
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    v47 = sub_100D0E1B4(v46);
    if (v87)
    {
      v49 = v0[33];
      v50 = v0[31];
      v51 = v0[25];
      v53 = v0[22];
      v52 = v0[23];
      v54 = v0[21];
      (*(v0[12] + 8))(v0[13], v0[11]);
      sub_100018D00(v54, type metadata accessor for OwnerPeerTrust);
      sub_100018D00(v50, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v49, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
      (*(v52 + 8))(v51, v53);
      goto LABEL_12;
    }

    v55 = v47;
    v56 = v48;
    v58 = v0[8];
    v57 = v0[9];
    v59 = type metadata accessor for JSONDecoder();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100D13BF8(&qword_1016A3DA8, type metadata accessor for DeviceEventFormat.LocationFormat);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v74 = v0[37];
    v75 = v0[38];
    v62 = v0[31];
    v71 = v0[29];
    v77 = v0[28];
    v78 = v0[26];
    v76 = v0[25];
    v63 = v0[23];
    v69 = v0[33];
    v70 = v0[22];
    v64 = v0[21];
    v79 = v0[20];
    v80 = v0[19];
    v83 = v0[16];
    v65 = v0[13];
    v66 = v0[11];
    v67 = v0[12];
    v86 = v0[14];
    v89 = v0[10];
    v72 = v0[9];
    v73 = v0[4];
    v68 = v0[3];

    sub_100016590(v55, v56);
    (*(v67 + 8))(v65, v66);
    sub_100018D00(v64, type metadata accessor for OwnerPeerTrust);
    sub_100018D00(v69, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v74(v68, v62 + *(v71 + 24), v70);
    sub_100018D00(v62, type metadata accessor for OwnerSharingCircle);
    sub_100D12974(v72, v73, type metadata accessor for DeviceEventFormat.LocationFormat);
    (*(v63 + 8))(v76, v70);

    v45 = v0[1];
  }

  else
  {
LABEL_7:
    v11 = v0[33];
    v12 = v0[31];

    sub_1001BAEE0();
    swift_allocError();
    *v13 = 14;
    swift_willThrow();
    sub_100018D00(v12, type metadata accessor for OwnerSharingCircle);
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
LABEL_12:
    v35 = v0[33];
    v36 = v0[31];
    v37 = v0[28];
    v39 = v0[25];
    v38 = v0[26];
    v41 = v0[20];
    v40 = v0[21];
    v42 = v0[19];
    v43 = v0[16];
    v44 = v0[14];
    v82 = v0[13];
    v85 = v0[10];
    v88 = v0[9];

    v45 = v0[1];
  }

  v45();
}

uint64_t sub_100D00F7C()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[14];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[9];
  v16 = v0[35];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D0108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100D01158, 0, 0);
}

uint64_t sub_100D01158()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100D0117C, v1, 0);
}

uint64_t sub_100D0117C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_100D148FC;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D12A88, v6, v9);
}

uint64_t sub_100D012F4(_OWORD *a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v25 - v9;
  v11 = type metadata accessor for SymmetricKey256();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017D5C(a2, a3);
  sub_100D13BF8(&qword_1016982E8, &type metadata accessor for SymmetricKey256);
  KeyRepresenting.init(rawValue:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &qword_101698360, &qword_1013E35F0);
    sub_1001BAEE0();
    swift_allocError();
    *v16 = 30;
    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v18 = sub_100D0E1B4(a1);
    if (v3)
    {
      return (*(v12 + 8))(v15, v11);
    }

    else
    {
      v20 = v18;
      v21 = v19;
      v22 = type metadata accessor for JSONDecoder();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      type metadata accessor for DeviceEventFormat.LocationFormat(0);
      sub_100D13BF8(&qword_1016A3DA8, type metadata accessor for DeviceEventFormat.LocationFormat);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      (*(v12 + 8))(v15, v11);

      return sub_100016590(v20, v21);
    }
  }
}

uint64_t sub_100D015EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = type metadata accessor for SymmetricKey();
  v5[22] = v6;
  v7 = *(v6 - 8);
  v5[23] = v7;
  v8 = *(v7 + 64) + 15;
  v5[24] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[25] = v9;
  v10 = *(v9 - 8);
  v5[26] = v10;
  v5[27] = *(v10 + 64);
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_100D01718, v4, 0);
}

uint64_t sub_100D01718()
{
  v1 = *(*(v0 + 168) + 120);
  *(v0 + 232) = v1;
  return _swift_task_switch(sub_100D0173C, v1, 0);
}

uint64_t sub_100D0173C()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[25];
  (*(v3 + 16))(v1, v0[18], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[30] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[31] = v8;
  v9 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v8 = v0;
  v8[1] = sub_100D018B4;

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v6, v9);
}

uint64_t sub_100D018B4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 168);
  v5 = *v0;

  return _swift_task_switch(sub_100D019E0, v3, 0);
}

uint64_t sub_100D019E0()
{
  v1 = v0[13];
  sub_10000B3A8((v0 + 10), &qword_101696920, &unk_10138B200);
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[32] = v2;
    *v2 = v0;
    v2[1] = sub_100D01B18;
    v3 = v0[21];
    v4 = v0[19];

    return sub_100C7BA0C((v0 + 2), v4);
  }

  else
  {
    sub_1001BAEE0();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[28];
    v8 = v0[24];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100D01B18()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v5 = v2[28];
    v6 = v2[24];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = v2[21];

    return _swift_task_switch(sub_100D01C74, v9, 0);
  }
}

uint64_t sub_100D01C74()
{
  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    v6 = v0[4];
    v7 = v0[20];
    if (v7)
    {
      v8 = v0[20];
      v9 = v7 / 0x60 + 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = v0[24];
    sub_100017D5C(v0[4], v0[5]);
    result = sub_100D0854C(v6, v1, v9);
    if (v9)
    {
      if (is_mul_ok(v9, 0x60uLL))
      {
        v12 = 96 * v9 - 96;
        if (v12 <= 1)
        {
          v12 = 1;
        }

        if (96 * v9 - 1 >= v12)
        {
          v21 = v12;
          v22 = 96 * v9 - 1;
LABEL_13:
          v13 = v0[33];
          v14 = v0[28];
          v16 = v0[23];
          v15 = v0[24];
          v17 = v0[22];
          v18 = v0[17];
          SymmetricKey.withUnsafeBytes<A>(_:)();
          sub_100006654(v6, v1);
          sub_1001BAF34((v0 + 2));
          (*(v16 + 8))(v15, v17);
          v19 = v0[15];
          v20 = v0[16];

          *v18 = v9;
          v18[1] = v21;
          v18[2] = v22;
          v18[3] = v19;
          v18[4] = v20;
          v5 = v0[1];
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v21 = 0;
    v22 = 0;
    goto LABEL_13;
  }

  sub_1001BAEE0();
  swift_allocError();
  *v2 = 8;
  swift_willThrow();
  sub_1001BAF34((v0 + 2));
  v3 = v0[28];
  v4 = v0[24];

  v5 = v0[1];
LABEL_14:

  return v5();
}

uint64_t sub_100D01E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[27] = a7;
  v8[28] = v7;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  v9 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v8[29] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0) - 8) + 64) + 15;
  v8[31] = swift_task_alloc();
  v12 = type metadata accessor for EncryptedData();
  v8[32] = v12;
  v13 = *(v12 - 8);
  v8[33] = v13;
  v14 = *(v13 + 64) + 15;
  v8[34] = swift_task_alloc();
  v15 = type metadata accessor for SymmetricKey();
  v8[35] = v15;
  v16 = *(v15 - 8);
  v8[36] = v16;
  v17 = *(v16 + 64) + 15;
  v8[37] = swift_task_alloc();
  v18 = type metadata accessor for Date();
  v8[38] = v18;
  v19 = *(v18 - 8);
  v8[39] = v19;
  v20 = *(v19 + 64) + 15;
  v8[40] = swift_task_alloc();
  v21 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v8[41] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v23 = type metadata accessor for UUID();
  v8[45] = v23;
  v24 = *(v23 - 8);
  v8[46] = v24;
  v25 = *(v24 + 64) + 15;
  v8[47] = swift_task_alloc();

  return _swift_task_switch(sub_100D02114, v7, 0);
}

uint64_t sub_100D02114()
{
  v47 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = type metadata accessor for Logger();
  v0[48] = sub_1000076D4(v2, qword_10177BF08);
  sub_10001F280(v1, (v0 + 11));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[46];
    v5 = v0[47];
    v7 = v0[45];
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 134349571;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v12 = v0[14];
    v11 = v0[15];
    sub_1000035D0(v0 + 11, v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC(v0 + 11);
    v16 = sub_1000136BC(v13, v15, &v46);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Wild bundle secondaryIndex: %{public}llu,\nbeacon-id: %{private,mask.hash}s.", v9, 0x20u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v0 + 11);
  }

  v17 = v0[22];
  v18 = v17[3];
  v19 = v17[4];
  sub_1000035D0(v17, v18);
  if ((*(v19 + 88))(v18, v19))
  {
    v20 = v0[47];
    v21 = v0[44];
    v44 = v0[46];
    v45 = v0[45];
    v22 = v0[40];
    v23 = v0[39];
    v43 = v0[38];
    v24 = v0[22];
    v25 = *(v0[41] + 36);
    static Date.trustedNow.getter(v21 + v25);
    v27 = v17[3];
    v26 = v17[4];
    sub_1000035D0(v24, v27);
    (*(*(*(v26 + 8) + 8) + 32))(v27);
    v29 = v17[3];
    v28 = v17[4];
    sub_1000035D0(v24, v29);
    (*(v28 + 192))(v29, v28);
    v30 = sub_10088756C(v20, v22, v21 + v25, 0);
    (*(v23 + 8))(v22, v43);
    (*(v44 + 8))(v20, v45);
    *v21 = v30;
    v31 = swift_task_alloc();
    v0[51] = v31;
    *v31 = v0;
    v31[1] = sub_100D02754;
    v32 = v0[44];
    v33 = v0[27];
    v34 = v0[28];
    v35 = v0[26];
    v37 = v0[22];
    v36 = v0[23];

    return sub_100D02FD8(v37, v32, v36, v35, v33);
  }

  else
  {
    v39 = swift_task_alloc();
    v0[49] = v39;
    *v39 = v0;
    v39[1] = sub_100D02570;
    v40 = v0[43];
    v41 = v0[28];
    v42 = v0[22];

    return sub_100CA0680(v40, v42);
  }
}

uint64_t sub_100D02570()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_100D02E08;
  }

  else
  {
    v6 = sub_100D0269C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D0269C()
{
  sub_1000D2AD8(v0[43], v0[44], &unk_1016C8FC0, &unk_10139D7D0);
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_100D02754;
  v2 = v0[44];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];

  return sub_100D02FD8(v7, v2, v6, v5, v3);
}

uint64_t sub_100D02754(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v7 = *(v3 + 224);
  if (v1)
  {
    v8 = sub_100D02EE4;
  }

  else
  {
    v8 = sub_100D02888;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D02888()
{
  v68 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 296);
  v3 = *(v0 + 176);
  sub_100D0854C(*(v0 + 192), *(v0 + 200), *(v0 + 184));
  sub_10001F280(v3, v0 + 128);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 368);
    v6 = *(v0 + 376);
    v8 = *(v0 + 360);
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v67 = v11;
    *v10 = 134218755;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2050;
    *(v10 + 14) = v9;
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    sub_1000035D0((v0 + 128), v13);
    (*(*(*(v12 + 8) + 8) + 32))(v13);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v7 + 8))(v6, v8);
    sub_100007BAC((v0 + 128));
    v17 = sub_1000136BC(v14, v16, &v67);

    *(v10 + 34) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Wild bundle index: %llu,\nsecondaryIndex: %{public}llu,\nbeacon-id: %{private,mask.hash}s.", v10, 0x2Au);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100007BAC((v0 + 128));
  }

  v18 = *(v0 + 416);
  v19 = *(v0 + 424);
  v20 = *(v0 + 296);
  v21 = *(v0 + 272);
  sub_100CA09AC();
  v22 = *(v0 + 416);
  if (v19)
  {
    v23 = *(v0 + 352);
    v25 = *(v0 + 288);
    v24 = *(v0 + 296);
    v26 = *(v0 + 280);

    (*(v25 + 8))(v24, v26);
    sub_10000B3A8(v23, &unk_1016C8FC0, &unk_10139D7D0);
    v27 = *(v0 + 376);
    v28 = *(v0 + 344);
    v29 = *(v0 + 352);
    v30 = *(v0 + 336);
    v31 = *(v0 + 320);
    v32 = *(v0 + 296);
    v33 = *(v0 + 272);
    v35 = *(v0 + 240);
    v34 = *(v0 + 248);
  }

  else
  {
    v64 = *(v0 + 376);
    v65 = *(v0 + 344);
    v55 = *(v0 + 352);
    v56 = *(v0 + 336);
    v57 = *(v0 + 328);
    v37 = *(v0 + 312);
    v66 = *(v0 + 320);
    v62 = *(v0 + 280);
    v63 = *(v0 + 296);
    v39 = *(v0 + 264);
    v38 = *(v0 + 272);
    v60 = v38;
    v61 = *(v0 + 288);
    v40 = *(v0 + 248);
    v41 = *(v0 + 256);
    v43 = *(v0 + 232);
    v42 = *(v0 + 240);
    v45 = *(v0 + 176);
    v44 = *(v0 + 184);
    v58 = *(v0 + 304);
    v59 = *(v0 + 168);

    (*(v39 + 16))(v40, v38, v41);
    (*(v39 + 56))(v40, 0, 1, v41);
    sub_10125A120(v44, 0, 0xC000000000000000, v40, (v0 + 16));
    v46 = v45[3];
    v47 = v45[4];
    sub_1000035D0(v45, v46);
    (*(v47 + 192))(v46, v47);
    v48 = *v55;
    sub_1000D2A70(v55, v56, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v37 + 32))(v42 + *(v43 + 24), v56 + *(v57 + 36), v58);
    *(v42 + *(v43 + 20)) = v48;
    v49 = type metadata accessor for KeyDropInterface.KeyPackage(0);
    sub_100D11DC8(v42, &v59[*(v49 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
    sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
    v50 = swift_allocObject();
    v51 = *(v0 + 48);
    v52 = *(v0 + 64);
    v53 = *(v0 + 16);
    *(v50 + 48) = *(v0 + 32);
    *(v50 + 64) = v51;
    *(v50 + 80) = v52;
    *(v50 + 96) = *(v0 + 80);
    *(v50 + 16) = xmmword_101385D80;
    *(v50 + 32) = v53;
    sub_100018D00(v42, type metadata accessor for KeyDropInterface.KeyAlignment);
    (*(v39 + 8))(v60, v41);
    (*(v61 + 8))(v63, v62);
    sub_10000B3A8(v55, &unk_1016C8FC0, &unk_10139D7D0);
    *v59 = 4;
    *&v59[*(v49 + 24)] = v50;
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100D02E08()
{
  v1 = v0[50];
  v2 = v0[47];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[34];
  v10 = v0[30];
  v9 = v0[31];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D02EE4()
{
  sub_10000B3A8(v0[44], &unk_1016C8FC0, &unk_10139D7D0);
  v1 = v0[53];
  v2 = v0[47];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[34];
  v10 = v0[30];
  v9 = v0[31];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D02FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v10 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v6[29] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v13 = type metadata accessor for HashAlgorithm();
  v6[47] = v13;
  v14 = *(v13 - 8);
  v6[48] = v14;
  v15 = *(v14 + 64) + 15;
  v6[49] = swift_task_alloc();
  v16 = type metadata accessor for TimeBasedKey();
  v6[50] = v16;
  v17 = *(v16 - 8);
  v6[51] = v17;
  v18 = *(v17 + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v6[56] = v19;
  v20 = *(v19 - 8);
  v6[57] = v20;
  v21 = *(v20 + 64) + 15;
  v6[58] = swift_task_alloc();

  return _swift_task_switch(sub_100D03330, v5, 0);
}

uint64_t sub_100D03330()
{
  v23 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BF08);
  sub_10001F280(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[57];
    v5 = v0[58];
    v7 = v0[56];
    v8 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 134349571;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v12 = v0[5];
    v11 = v0[6];
    sub_1000035D0(v0 + 2, v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC(v0 + 2);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Key bundle for secondaryIndex: %{public}llu,\nbeacon-id: %{private,mask.hash}s.", v9, 0x20u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v0 + 2);
  }

  v17 = swift_task_alloc();
  v0[59] = v17;
  *v17 = v0;
  v17[1] = sub_100D035F0;
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[15];

  return sub_100D07A78(v20, 0, v19, 0);
}

uint64_t sub_100D035F0(uint64_t a1)
{
  v3 = *(*v2 + 472);
  v4 = *v2;
  v4[60] = a1;
  v4[61] = v1;

  if (v1)
  {
    v5 = v4[58];
    v7 = v4[54];
    v6 = v4[55];
    v8 = v4[52];
    v9 = v4[53];
    v10 = v4[49];
    v12 = v4[45];
    v11 = v4[46];
    v17 = v4[44];
    v18 = v4[43];
    v19 = v4[42];
    v20 = v4[41];
    v21 = v4[40];
    v22 = v4[39];
    v23 = v4[38];
    v24 = v4[37];
    v25 = v4[36];
    v26 = v4[35];
    v27 = v4[34];
    v28 = v4[33];
    v29 = v4[32];
    v30 = v4[31];
    v31 = v4[30];
    v32 = v4[28];
    v33 = v4[27];
    v34 = v4[26];
    v35 = v4[25];
    v13 = v4[23];
    v36 = v4[24];

    v14 = v4[1];

    return v14();
  }

  else
  {
    v16 = v4[20];

    return _swift_task_switch(sub_100D038A4, v16, 0);
  }
}

uint64_t sub_100D038A4()
{
  v1 = v0[15];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if ((*(v3 + 112))(v2, v3))
  {
    v4 = swift_task_alloc();
    v0[62] = v4;
    *v4 = v0;
    v4[1] = sub_100D0563C;
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[15];

    return sub_100D07A78(v7, 1, v6, 0);
  }

  v10 = v0[60];
  v9 = v0[61];
  v11 = *(v10 + 16);
  v12 = _swiftEmptyArrayStorage;
  v336 = v0;
  if (!v11)
  {
    v333 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v243 = v0 + 7;
  v13 = v0[51];
  v266 = v0[50];
  v14 = v0[48];
  sub_101123DD0(0, v11, 0);
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v261 = v13;
  v17 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v251 = enum case for HashAlgorithm.sha256(_:);
  v245 = (v14 + 8);
  v248 = (v14 + 104);
  v281 = v17;
  v254 = v11;
  v258 = v10;
  while (1)
  {
    if (v15 >= *(v10 + 16))
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v332 = v16;
    v18 = v0[54];
    v19 = *(v261 + 72);
    sub_100D11DC8(v17 + v19 * v15, v18, type metadata accessor for TimeBasedKey);
    v20 = *v18;
    v21 = sub_100A7A194(*(v18 + *(v266 + 24) + 16), *(v18 + *(v266 + 24) + 24));
    if (v9)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
LABEL_39:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_101385D80;
        v0[11] = v9;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v72 = String.init<A>(describing:)();
        v74 = v73;
        *(v71 + 56) = &type metadata for String;
        *(v71 + 64) = sub_100008C00();
        *(v71 + 32) = v72;
        *(v71 + 40) = v74;
        os_log(_:dso:log:_:_:)();

        sub_1001BAF88();
        v75 = swift_allocError();
        *v76 = 0;
        swift_willThrow();

        goto LABEL_99;
      }

LABEL_146:
      swift_once();
      goto LABEL_39;
    }

    v22 = v21;
    v23 = sub_100A7829C(v21, 0);
    v25 = v24;
    CCECCryptorRelease();
    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v26 != 2)
      {
        v122 = 0;
        goto LABEL_98;
      }

      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      v29 = __OFSUB__(v27, v28);
      v30 = v27 - v28;
      if (v29)
      {
        goto LABEL_143;
      }

      if (v30 != 28)
      {
        goto LABEL_66;
      }

      goto LABEL_19;
    }

    if (v26)
    {
      break;
    }

    if (BYTE6(v25) != 28)
    {
      goto LABEL_66;
    }

LABEL_19:
    v327 = v20;
    v31 = v0[49];
    v33 = v0[46];
    v32 = v0[47];
    v34 = v0[45];
    (*v248)(v31, v251, v32);
    v35 = Data.hash(algorithm:)();
    v316 = v36;
    v322 = v35;
    sub_100016590(v23, v25);
    (*v245)(v31, v32);
    v37 = type metadata accessor for EncryptedData();
    v38 = *(v37 - 8);
    v272 = *(v38 + 56);
    v272(v33, 1, 1, v37);
    sub_1000D2A70(v33, v34, &qword_1016B9AE8, &unk_1013E35D0);
    v39 = *(v38 + 48);
    v338 = v37;
    v40 = v39(v34, 1, v37);
    v41 = v0[45];
    if (v40 == 1)
    {
      sub_10000B3A8(v0[45], &qword_1016B9AE8, &unk_1013E35D0);
      v311 = 0;
      v305 = 0xF000000000000000;
    }

    else
    {
      v311 = EncryptedData.cipherText.getter();
      v305 = v42;
      (*(v38 + 8))(v41, v338);
    }

    v43 = v0[44];
    sub_1000D2A70(v0[46], v43, &qword_1016B9AE8, &unk_1013E35D0);
    v44 = v39(v43, 1, v338);
    v45 = v0[44];
    if (v44 == 1)
    {
      sub_10000B3A8(v0[44], &qword_1016B9AE8, &unk_1013E35D0);
      v293 = 0xF000000000000000;
      v299 = 0;
    }

    else
    {
      v46 = EncryptedData.initializationVector.getter();
      v293 = v47;
      v299 = v46;
      (*(v38 + 8))(v45, v338);
    }

    v48 = v0[43];
    sub_1000D2A70(v0[46], v48, &qword_1016B9AE8, &unk_1013E35D0);
    v286 = v39;
    v49 = v39(v48, 1, v338);
    v50 = v0[46];
    v51 = v0[43];
    if (v49 == 1)
    {
      sub_10000B3A8(v50, &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v51, &qword_1016B9AE8, &unk_1013E35D0);
      v52 = 0;
      v53 = 0xF000000000000000;
    }

    else
    {
      v52 = EncryptedData.tag.getter();
      v53 = v54;
      sub_10000B3A8(v50, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v38 + 8))(v51, v338);
    }

    sub_100018D00(v0[54], type metadata accessor for TimeBasedKey);
    v16 = v332;
    v56 = v332[2];
    v55 = v332[3];
    if (v56 >= v55 >> 1)
    {
      sub_101123DD0((v55 > 1), v56 + 1, 1);
      v16 = v332;
    }

    v9 = 0;
    ++v15;
    v16[2] = v56 + 1;
    v57 = &v16[9 * v56];
    v57[4] = v327;
    v57[5] = v322;
    v57[6] = v316;
    v57[7] = v311;
    v57[8] = v305;
    v57[9] = v299;
    v57[10] = v293;
    v57[11] = v52;
    v57[12] = v53;
    v10 = v258;
    v0 = v336;
    v17 = v281;
    if (v254 == v15)
    {
      v123 = *(v258 + 16);
      if (v123)
      {
        v333 = v16;
        v124 = v336[55] + *(v266 + 24);
        v58 = _swiftEmptyArrayStorage;
        v296 = (v38 + 8);
        v125 = v19;
        v269 = v124;
        do
        {
          sub_100D11DC8(v17, v0[55], type metadata accessor for TimeBasedKey);
          v126 = *(v124 + 40);
          v127 = v0[55];
          if (v126 >> 60 == 15)
          {
            sub_100018D00(v127, type metadata accessor for TimeBasedKey);
          }

          else
          {
            v325 = v58;
            v128 = *(v124 + 32);
            v130 = v0[41];
            v129 = v0[42];
            v319 = *v127;
            v272(v129, 1, 1, v338);
            sub_1000D2A70(v129, v130, &qword_1016B9AE8, &unk_1013E35D0);
            LODWORD(v130) = v286(v130, 1, v338);
            v330 = v128;
            sub_100017D5C(v128, v126);
            v131 = v0[41];
            if (v130 == 1)
            {
              sub_10000B3A8(v0[41], &qword_1016B9AE8, &unk_1013E35D0);
              v314 = 0;
              v308 = 0xF000000000000000;
            }

            else
            {
              v314 = EncryptedData.cipherText.getter();
              v308 = v132;
              (*v296)(v131, v338);
            }

            v133 = v0[40];
            sub_1000D2A70(v0[42], v133, &qword_1016B9AE8, &unk_1013E35D0);
            v134 = v286(v133, 1, v338);
            v135 = v0[40];
            v58 = v325;
            v284 = v17;
            if (v134 == 1)
            {
              sub_10000B3A8(v135, &qword_1016B9AE8, &unk_1013E35D0);
              v302 = 0;
              v136 = 0xF000000000000000;
            }

            else
            {
              v302 = EncryptedData.initializationVector.getter();
              v136 = v137;
              (*v296)(v135, v338);
            }

            v138 = v336[39];
            sub_1000D2A70(v336[42], v138, &qword_1016B9AE8, &unk_1013E35D0);
            v139 = v286(v138, 1, v338);
            v140 = v336[42];
            v141 = v336[39];
            if (v139 == 1)
            {
              sub_10000B3A8(v336[42], &qword_1016B9AE8, &unk_1013E35D0);
              sub_10000B3A8(v141, &qword_1016B9AE8, &unk_1013E35D0);
              v142 = 0;
              v143 = 0xF000000000000000;
            }

            else
            {
              v144 = v336[39];
              v142 = EncryptedData.tag.getter();
              v143 = v145;
              sub_10000B3A8(v140, &qword_1016B9AE8, &unk_1013E35D0);
              (*v296)(v141, v338);
            }

            sub_100018D00(v336[55], type metadata accessor for TimeBasedKey);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_100A5BE68(0, *(v325 + 2) + 1, 1, v325);
            }

            v147 = *(v58 + 2);
            v146 = *(v58 + 3);
            if (v147 >= v146 >> 1)
            {
              v58 = sub_100A5BE68((v146 > 1), v147 + 1, 1, v58);
            }

            *(v58 + 2) = v147 + 1;
            v148 = &v58[72 * v147];
            *(v148 + 4) = v319;
            *(v148 + 5) = v330;
            *(v148 + 6) = v126;
            *(v148 + 7) = v314;
            *(v148 + 8) = v308;
            *(v148 + 9) = v302;
            *(v148 + 10) = v136;
            *(v148 + 11) = v142;
            *(v148 + 12) = v143;
            v0 = v336;
            v125 = v19;
            v17 = v284;
            v124 = v269;
          }

          v17 += v125;
          --v123;
        }

        while (v123);
        v149 = v0[60];

        v9 = 0;
        v12 = _swiftEmptyArrayStorage;
LABEL_34:
        v59 = sub_100D11764(v58, v0[18], v0[19]);
        if (v9)
        {

          v60 = v0[58];
          v62 = v0[54];
          v61 = v0[55];
          v64 = v0[52];
          v63 = v0[53];
          v65 = v0[49];
          v66 = v0[45];
          v67 = v0[46];
          v69 = v0[43];
          v68 = v0[44];
          v255 = v0[42];
          v259 = v0[41];
          v262 = v0[40];
          v267 = v0[39];
          v273 = v0[38];
          v276 = v0[37];
          v279 = v0[36];
          v282 = v0[35];
          v287 = v0[34];
          v291 = v0[33];
          v294 = v0[32];
          v300 = v0[31];
          v306 = v0[30];
          v312 = v0[28];
          v317 = v0[27];
          v323 = v0[26];
          v328 = v0[25];
          v334 = v0[24];
          v337 = v0[23];

          v70 = v0[1];

          return v70();
        }

        v246 = v59;

        v77 = _swiftEmptyArrayStorage[2];
        if (!v77)
        {
          v327 = _swiftEmptyArrayStorage;
          goto LABEL_91;
        }

        v243 = v0 + 9;
        v9 = v0[51];
        v268 = v0[50];
        v78 = v0[48];
        sub_101123DD0(0, v77, 0);
        v79 = 0;
        v80 = _swiftEmptyArrayStorage;
        v263 = v9;
        v81 = _swiftEmptyArrayStorage + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v256 = enum case for HashAlgorithm.sha256(_:);
        v249 = (v78 + 8);
        v252 = (v78 + 104);
        v288 = v81;
        while (1)
        {
          if (v79 >= _swiftEmptyArrayStorage[2])
          {
            goto LABEL_145;
          }

          v329 = v80;
          v82 = v0[52];
          v83 = *(v263 + 72);
          sub_100D11DC8(&v81[v83 * v79], v82, type metadata accessor for TimeBasedKey);
          v84 = *v82;
          v85 = sub_100A7A194(*(v82 + *(v268 + 24) + 16), *(v82 + *(v268 + 24) + 24));
          v324 = v84;
          v86 = sub_100A7829C(v85, 0);
          v88 = v87;
          result = CCECCryptorRelease();
          v89 = v88 >> 62;
          if ((v88 >> 62) > 1)
          {
            if (v89 != 2)
            {
              v202 = 0;
              goto LABEL_140;
            }

            v92 = *(v86 + 16);
            v91 = *(v86 + 24);
            v29 = __OFSUB__(v91, v92);
            v90 = v91 - v92;
            if (v29)
            {
              __break(1u);
LABEL_147:
              __break(1u);
              swift_once();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v151 = swift_allocObject();
              *(v151 + 16) = xmmword_101385D80;
              v0[13] = 0;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v152 = String.init<A>(describing:)();
              v154 = v153;
              *(v151 + 56) = &type metadata for String;
              *(v151 + 64) = sub_100008C00();
              *(v151 + 32) = v152;
              *(v151 + 40) = v154;
              os_log(_:dso:log:_:_:)();

              sub_1001BAF88();
              v236 = swift_allocError();
              *v155 = 0;
              swift_willThrow();

LABEL_141:
              _StringGuts.grow(_:)(35);
              v0[10] = 0xE000000000000000;
              v160 = v0 + 10;
              v0[9] = 0;
              v238._object = 0x800000010134CB30;
              v238._countAndFlagsBits = 0xD000000000000021;
              v162 = v243;
              String.append(_:)(v238);
              v0[14] = v236;
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              goto LABEL_100;
            }
          }

          else if (v89)
          {
            LODWORD(v90) = HIDWORD(v86) - v86;
            if (__OFSUB__(HIDWORD(v86), v86))
            {
              goto LABEL_147;
            }

            v90 = v90;
          }

          else
          {
            v90 = BYTE6(v88);
          }

          if (v90 != 28)
          {
            break;
          }

          v283 = v83;
          v93 = v0[49];
          v94 = v0[47];
          v95 = v0[37];
          v96 = v0[38];
          (*v252)(v93, v256, v94);
          v97 = Data.hash(algorithm:)();
          v313 = v98;
          v318 = v97;
          sub_100016590(v86, v88);
          (*v249)(v93, v94);
          v99 = type metadata accessor for EncryptedData();
          v100 = *(v99 - 8);
          v277 = *(v100 + 56);
          v277(v96, 1, 1, v99);
          sub_1000D2A70(v96, v95, &qword_1016B9AE8, &unk_1013E35D0);
          v101 = *(v100 + 48);
          v102 = v101(v95, 1, v99);
          v103 = v0[37];
          v339 = v100;
          if (v102 == 1)
          {
            sub_10000B3A8(v103, &qword_1016B9AE8, &unk_1013E35D0);
            v301 = 0xF000000000000000;
            v307 = 0;
          }

          else
          {
            v104 = EncryptedData.cipherText.getter();
            v301 = v105;
            v307 = v104;
            (*(v100 + 8))(v103, v99);
          }

          v106 = v0[36];
          sub_1000D2A70(v0[38], v106, &qword_1016B9AE8, &unk_1013E35D0);
          v107 = v101(v106, 1, v99);
          v108 = v0[36];
          if (v107 == 1)
          {
            sub_10000B3A8(v0[36], &qword_1016B9AE8, &unk_1013E35D0);
            v295 = 0;
            v9 = 0xF000000000000000;
          }

          else
          {
            v295 = EncryptedData.initializationVector.getter();
            v9 = v109;
            (*(v100 + 8))(v108, v99);
          }

          v110 = v336[35];
          sub_1000D2A70(v336[38], v110, &qword_1016B9AE8, &unk_1013E35D0);
          v292 = v101;
          v111 = v101(v110, 1, v99);
          v112 = v336[38];
          v113 = v336[35];
          v274 = v99;
          if (v111 == 1)
          {
            sub_10000B3A8(v112, &qword_1016B9AE8, &unk_1013E35D0);
            sub_10000B3A8(v113, &qword_1016B9AE8, &unk_1013E35D0);
            v114 = 0;
            v115 = 0xF000000000000000;
          }

          else
          {
            v114 = EncryptedData.tag.getter();
            v115 = v116;
            sub_10000B3A8(v112, &qword_1016B9AE8, &unk_1013E35D0);
            (*(v339 + 8))(v113, v99);
          }

          sub_100018D00(v336[52], type metadata accessor for TimeBasedKey);
          v80 = v329;
          v118 = v329[2];
          v117 = v329[3];
          v119 = v339;
          if (v118 >= v117 >> 1)
          {
            sub_101123DD0((v117 > 1), v118 + 1, 1);
            v119 = v339;
            v80 = v329;
          }

          ++v79;
          v80[2] = v118 + 1;
          v120 = &v80[9 * v118];
          v120[4] = v324;
          v120[5] = v318;
          v120[6] = v313;
          v120[7] = v307;
          v120[8] = v301;
          v120[9] = v295;
          v120[10] = v9;
          v120[11] = v114;
          v120[12] = v115;
          v0 = v336;
          v12 = _swiftEmptyArrayStorage;
          v81 = v288;
          if (v77 == v79)
          {
            v203 = _swiftEmptyArrayStorage[2];
            if (v203)
            {
              v327 = v80;
              v204 = v336[53] + *(v268 + 24);
              v265 = v204;
              v271 = (v119 + 8);
              v205 = v283;
              do
              {
                sub_100D11DC8(v81, v0[53], type metadata accessor for TimeBasedKey);
                v206 = *(v204 + 40);
                v207 = v0[53];
                if (v206 >> 60 == 15)
                {
                  sub_100018D00(v207, type metadata accessor for TimeBasedKey);
                }

                else
                {
                  v342 = v12;
                  v208 = *(v204 + 32);
                  v210 = v0[33];
                  v209 = v0[34];
                  v315 = *v207;
                  v277(v209, 1, 1, v274);
                  sub_1000D2A70(v209, v210, &qword_1016B9AE8, &unk_1013E35D0);
                  LODWORD(v210) = v292(v210, 1, v274);
                  v321 = v208;
                  v211 = v208;
                  v212 = v206;
                  sub_100017D5C(v211, v206);
                  v213 = v0[33];
                  if (v210 == 1)
                  {
                    sub_10000B3A8(v0[33], &qword_1016B9AE8, &unk_1013E35D0);
                    v304 = 0xF000000000000000;
                    v310 = 0;
                  }

                  else
                  {
                    v214 = EncryptedData.cipherText.getter();
                    v304 = v215;
                    v310 = v214;
                    (*v271)(v213, v274);
                  }

                  v216 = v0[32];
                  sub_1000D2A70(v0[34], v216, &qword_1016B9AE8, &unk_1013E35D0);
                  v217 = v292(v216, 1, v274);
                  v218 = v0[32];
                  v290 = v81;
                  if (v217 == 1)
                  {
                    sub_10000B3A8(v218, &qword_1016B9AE8, &unk_1013E35D0);
                    v298 = 0;
                    v219 = 0xF000000000000000;
                  }

                  else
                  {
                    v298 = EncryptedData.initializationVector.getter();
                    v219 = v220;
                    (*v271)(v218, v274);
                  }

                  v221 = v0[31];
                  sub_1000D2A70(v0[34], v221, &qword_1016B9AE8, &unk_1013E35D0);
                  v222 = v292(v221, 1, v274);
                  v223 = v0[34];
                  v224 = v0[31];
                  if (v222 == 1)
                  {
                    sub_10000B3A8(v0[34], &qword_1016B9AE8, &unk_1013E35D0);
                    sub_10000B3A8(v224, &qword_1016B9AE8, &unk_1013E35D0);
                    v225 = 0;
                    v226 = 0xF000000000000000;
                  }

                  else
                  {
                    v227 = v0[31];
                    v225 = EncryptedData.tag.getter();
                    v226 = v228;
                    sub_10000B3A8(v223, &qword_1016B9AE8, &unk_1013E35D0);
                    (*v271)(v224, v274);
                  }

                  sub_100018D00(v336[53], type metadata accessor for TimeBasedKey);
                  v229 = v342;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v229 = sub_100A5BE68(0, *(v342 + 2) + 1, 1, v342);
                  }

                  v231 = *(v229 + 2);
                  v230 = *(v229 + 3);
                  v232 = v229;
                  if (v231 >= v230 >> 1)
                  {
                    v232 = sub_100A5BE68((v230 > 1), v231 + 1, 1, v229);
                  }

                  *(v232 + 2) = v231 + 1;
                  v233 = &v232[72 * v231];
                  v12 = v232;
                  *(v233 + 4) = v315;
                  *(v233 + 5) = v321;
                  *(v233 + 6) = v212;
                  *(v233 + 7) = v310;
                  *(v233 + 8) = v304;
                  *(v233 + 9) = v298;
                  *(v233 + 10) = v219;
                  *(v233 + 11) = v225;
                  *(v233 + 12) = v226;
                  v0 = v336;
                  v205 = v283;
                  v81 = v290;
                  v204 = v265;
                }

                v81 += v205;
                --v203;
              }

              while (v203);
            }

            else
            {
              v327 = v80;
            }

LABEL_91:

            v150 = sub_100D11764(v12, v0[18], v0[19]);
            v166 = v0[29];
            v165 = v0[30];
            v167 = v0;
            v168 = v0[27];
            v169 = v0[28];
            v170 = v0[26];
            v20 = v167[21];
            v172 = v167[15];
            v171 = v167[16];
            v340 = v150;

            v173 = v172[3];
            v174 = v172[4];
            sub_1000035D0(v172, v173);
            (*(v174 + 192))(v173, v174);
            v175 = *v171;
            v176 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
            v177 = *(v166 + 24);
            v178 = type metadata accessor for Date();
            (*(*(v178 - 8) + 16))(v165 + v177, &v171[v176], v178);
            *(v165 + *(v166 + 20)) = v175;
            sub_100D11DC8(v165, &v169[*(v20 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v169 = 2;
            *&v169[*(v20 + 24)] = v246;
            sub_100D11DC8(v165, &v168[*(v20 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v168 = 3;
            *&v168[*(v20 + 24)] = v340;
            sub_100D11DC8(v165, &v170[*(v20 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v170 = 0;
            *&v170[*(v20 + 24)] = v333;
            v22 = 1;
            v179 = sub_100A5BE40(0, 1, 1, _swiftEmptyArrayStorage);
            v25 = v179;
            v15 = *(v179 + 16);
            v121 = *(v179 + 24);
            v23 = v15 + 1;
            if (v15 < v121 >> 1)
            {
LABEL_102:
              v180 = v336[30];
              v182 = v336[25];
              v181 = v336[26];
              v183 = v336[22];
              *(v25 + 16) = v23;
              v184 = (*(v183 + 80) + 32) & ~*(v183 + 80);
              v185 = *(v183 + 72);
              sub_100D12974(v181, v25 + v184 + v185 * v15, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v180, &v182[*(v20 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
              *v182 = v22;
              *&v182[*(v20 + 24)] = v327;
              v186 = *(v25 + 24);
              v187 = v15 + 2;
              if ((v15 + 2) > (v186 >> 1))
              {
                v25 = sub_100A5BE40(v186 > 1, v15 + 2, 1, v25);
              }

              v188 = v336[28];
              v190 = v336[24];
              v189 = v336[25];
              *(v25 + 16) = v187;
              sub_100D12974(v189, v25 + v184 + v185 * v23, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v188, v190, type metadata accessor for KeyDropInterface.KeyPackage);
              v191 = *(v25 + 24);
              v192 = v15 + 3;
              if ((v15 + 3) > (v191 >> 1))
              {
                v25 = sub_100A5BE40(v191 > 1, v15 + 3, 1, v25);
              }

              v193 = v336[27];
              v195 = v336[23];
              v194 = v336[24];
              *(v25 + 16) = v192;
              sub_100D12974(v194, v25 + v184 + v185 * v187, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v193, v195, type metadata accessor for KeyDropInterface.KeyPackage);
              v196 = *(v25 + 24);
              v326 = v184;
              if ((v15 + 4) > (v196 >> 1))
              {
                v25 = sub_100A5BE40(v196 > 1, v15 + 4, 1, v25);
              }

              v197 = v336[58];
              v239 = v336[55];
              v240 = v336[54];
              v241 = v336[53];
              v242 = v336[52];
              v244 = v336[49];
              v247 = v336[46];
              v250 = v336[45];
              v253 = v336[44];
              v257 = v336[43];
              v260 = v336[42];
              v264 = v336[41];
              v270 = v336[40];
              v275 = v336[39];
              v278 = v336[38];
              v280 = v336[37];
              v285 = v336[36];
              v289 = v336[35];
              v297 = v336[34];
              v303 = v336[33];
              v309 = v336[32];
              v320 = v336[31];
              v198 = v336[30];
              v199 = v336[28];
              v331 = v336[26];
              v335 = v336[25];
              v200 = v336[23];
              v341 = v336[24];
              sub_100018D00(v336[27], type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v199, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v198, type metadata accessor for KeyDropInterface.KeyAlignment);
              *(v25 + 16) = v15 + 4;
              sub_100D12974(v200, v25 + v326 + v185 * v192, type metadata accessor for KeyDropInterface.KeyPackage);

              v201 = v336[1];

              return v201(v25);
            }

LABEL_149:
            v25 = sub_100A5BE40(v121 > 1, v23, 1, v25);
            goto LABEL_102;
          }
        }

        if (v89 == 2)
        {
          v235 = *(v86 + 16);
          v234 = *(v86 + 24);
          v202 = v234 - v235;
          if (!__OFSUB__(v234, v235))
          {
            goto LABEL_140;
          }

          __break(1u);
        }

        else if (v89 == 1)
        {
          if (__OFSUB__(HIDWORD(v86), v86))
          {
            __break(1u);
            return result;
          }

          v202 = HIDWORD(v86) - v86;
          goto LABEL_140;
        }

        v202 = BYTE6(v88);
LABEL_140:
        sub_100018350();
        v236 = swift_allocError();
        *v237 = 28;
        *(v237 + 8) = v202;
        *(v237 + 16) = 0;
        swift_willThrow();
        sub_100016590(v86, v88);
        goto LABEL_141;
      }

      v333 = v16;
      v9 = 0;
      v156 = v336[60];
      v12 = _swiftEmptyArrayStorage;
LABEL_33:

      v58 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }
  }

  if (__OFSUB__(HIDWORD(v23), v23))
  {
    goto LABEL_144;
  }

  if (HIDWORD(v23) - v23 == 28)
  {
    goto LABEL_19;
  }

LABEL_66:
  if (v26 == 2)
  {
    v158 = *(v23 + 16);
    v157 = *(v23 + 24);
    v122 = v157 - v158;
    if (!__OFSUB__(v157, v158))
    {
      goto LABEL_98;
    }

    __break(1u);
LABEL_97:
    v122 = BYTE6(v25);
    goto LABEL_98;
  }

  if (v26 != 1)
  {
    goto LABEL_97;
  }

  v121 = (HIDWORD(v23) - v23);
  if (__OFSUB__(HIDWORD(v23), v23))
  {
    __break(1u);
    goto LABEL_149;
  }

  v122 = v121;
LABEL_98:
  sub_100018350();
  v75 = swift_allocError();
  *v159 = 28;
  *(v159 + 8) = v122;
  *(v159 + 16) = 0;
  swift_willThrow();
  sub_100016590(v23, v25);
LABEL_99:
  _StringGuts.grow(_:)(35);
  v0[8] = 0xE000000000000000;
  v160 = v0 + 8;
  v0[7] = 0;
  v161._object = 0x800000010134CB30;
  v161._countAndFlagsBits = 0xD000000000000021;
  v162 = v243;
  String.append(_:)(v161);
  v0[12] = v75;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
LABEL_100:
  _print_unlocked<A, B>(_:_:)();
  v163 = *v162;
  v164 = *v160;
  return _assertionFailure(_:_:file:line:flags:)();
}
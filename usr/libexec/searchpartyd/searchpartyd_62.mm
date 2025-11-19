uint64_t sub_1006739AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v471 = a3;
  v462 = sub_1000BC4D4(&qword_1016C3210, &qword_101392040);
  isa = v462[-1].isa;
  v5 = *(isa + 8);
  __chkstk_darwin(v462);
  v444 = &v426 - v6;
  v7 = sub_1000BC4D4(&qword_1016998F0, &qword_1013B60E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v464 = &v426 - v9;
  v446 = type metadata accessor for DispatchWorkItemFlags();
  v447 = *(v446 - 8);
  v10 = *(v447 + 64);
  __chkstk_darwin(v446);
  v445 = &v426 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = type metadata accessor for DispatchQoS();
  v450 = *(v449 - 8);
  v12 = *(v450 + 64);
  __chkstk_darwin(v449);
  v448 = &v426 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryCommand();
  v434 = *(v14 - 8);
  v15 = *(v434 + 64);
  v16 = __chkstk_darwin(v14);
  v443 = &v426 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v455 = &v426 - v19;
  v435 = v20;
  __chkstk_darwin(v18);
  v436 = &v426 - v21;
  v22 = type metadata accessor for DispatchQoS.QoSClass();
  v465 = *(v22 - 8);
  v23 = *(v465 + 64);
  __chkstk_darwin(v22);
  v25 = &v426 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v30 = &v426 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v467 = &v426 - v32;
  v33 = __chkstk_darwin(v31);
  v466 = &v426 - v34;
  v35 = __chkstk_darwin(v33);
  v460 = &v426 - v36;
  v37 = __chkstk_darwin(v35);
  v459 = &v426 - v38;
  v39 = __chkstk_darwin(v37);
  v442 = &v426 - v40;
  v41 = __chkstk_darwin(v39);
  v469 = (&v426 - v42);
  v43 = __chkstk_darwin(v41);
  v454 = &v426 - v44;
  v45 = __chkstk_darwin(v43);
  v453 = &v426 - v46;
  v47 = __chkstk_darwin(v45);
  v452 = &v426 - v48;
  v49 = __chkstk_darwin(v47);
  v441 = &v426 - v50;
  v51 = __chkstk_darwin(v49);
  v439 = &v426 - v52;
  v53 = __chkstk_darwin(v51);
  v433 = &v426 - v54;
  v55 = __chkstk_darwin(v53);
  v437 = &v426 - v56;
  v57 = __chkstk_darwin(v55);
  v432 = &v426 - v58;
  v59 = __chkstk_darwin(v57);
  v457 = &v426 - v60;
  v61 = __chkstk_darwin(v59);
  v440 = &v426 - v62;
  v63 = __chkstk_darwin(v61);
  v438 = &v426 - v64;
  v65 = __chkstk_darwin(v63);
  v67 = &v426 - v66;
  __chkstk_darwin(v65);
  v69 = &v426 - v68;
  v456 = v14;
  v70 = *(v14 + 20);
  v473 = v27;
  v72 = *(v27 + 16);
  v71 = v27 + 16;
  v476 = v69;
  v72();
  v475 = v67;
  v458 = a2;
  v474 = v26;
  v472 = v72;
  (v72)(v67, a2, v26);
  v73 = a1;
  sub_1001011C0(a1, &v481);
  v468 = sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_1000076D4(v80, qword_10177B048);
    sub_1001011C0(a1, &v481);
    v81 = v476;
    v82 = v474;
    v472(v30, v476, v474);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v477 = swift_slowAlloc();
      *v85 = 136315651;
      sub_1001011C0(&v481, &aBlock);
      v86 = String.init<A>(describing:)();
      v88 = v87;
      sub_100007BAC(&v481);
      v89 = sub_1000136BC(v86, v88, &v477);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2160;
      *(v85 + 14) = 1752392040;
      *(v85 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v93 = *(v473 + 8);
      v93(v30, v82);
      v94 = sub_1000136BC(v90, v92, &v477);

      *(v85 + 24) = v94;
      _os_log_impl(&_mh_execute_header, v83, v84, "Invalid command from payload %s for %{private,mask.hash}s", v85, 0x20u);
      swift_arrayDestroy();

      v93(v475, v82);
      result = (v93)(v476, v82);
    }

    else
    {

      v96 = *(v473 + 8);
      v96(v30, v82);
      sub_100007BAC(&v481);
      v96(v475, v82);
      result = (v96)(v81, v82);
    }

    v97 = v471;
    v98 = 14;
    goto LABEL_10;
  }

  v451 = v71;
  v74 = *(&aBlock + 1);
  v463 = aBlock;
  v76 = *(&v479 + 1);
  v75 = v479;
  v429 = *(&v480 + 1);
  v77 = v480;
  v78 = v470;
  v79 = *(v470 + 64);
  v430 = v479;
  if (v79)
  {
    v431 = v79;
  }

  else
  {
    v428 = *(&v479 + 1);
    v100 = v480;
    sub_1000BC488();
    v101 = v465;
    (*(v465 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v22);
    v431 = static OS_dispatch_queue.global(qos:)();
    (*(v101 + 8))(v25, v22);
    v77 = v100;
    v76 = v428;
    v75 = v430;
  }

  v102 = v474;
  v103 = v469;
  v104 = (v77 >> 58) & 0xC | (v74 >> 60) & 3;
  if (v104 != 1)
  {
    if (v104 == 3)
    {
      v163 = v78;
      v164 = qword_101694828;
      v165 = v79;
      v166 = v476;
      if (v164 != -1)
      {
        swift_once();
      }

      v167 = type metadata accessor for Logger();
      sub_1000076D4(v167, qword_10177B048);
      v168 = v459;
      v169 = v472;
      v472(v459, v166, v102);
      v170 = v460;
      v171 = v475;
      v169(v460, v475, v102);
      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        v472 = swift_slowAlloc();
        *&v481 = v472;
        *v174 = 16778243;
        *(v174 + 4) = v463;
        *(v174 + 5) = 2160;
        *(v174 + 7) = 1752392040;
        *(v174 + 15) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
        v175 = v170;
        v176 = dispatch thunk of CustomStringConvertible.description.getter();
        v178 = v177;
        v179 = v168;
        v180 = *(v473 + 8);
        v180(v179, v474);
        v181 = sub_1000136BC(v176, v178, &v481);
        v166 = v476;

        *(v174 + 17) = v181;
        *(v174 + 25) = 2082;
        v182 = dispatch thunk of CustomStringConvertible.description.getter();
        v184 = v183;
        v180(v175, v474);
        v102 = v474;
        v185 = sub_1000136BC(v182, v184, &v481);

        *(v174 + 27) = v185;
        _os_log_impl(&_mh_execute_header, v172, v173, "Received TX Power: %hhd for %{private,mask.hash}s Command %{public}s!", v174, 0x23u);
        swift_arrayDestroy();
        v171 = v475;
      }

      else
      {

        v211 = v168;
        v180 = *(v473 + 8);
        v180(v170, v102);
        v180(v211, v102);
      }

      v97 = v471;
      v212 = v462;
      swift_beginAccess();
      v213 = *(v163 + 120);
      if (*(v213 + 16))
      {
        v214 = *(v163 + 120);

        v215 = sub_1000210EC(v166);
        v216 = isa;
        if (v217)
        {
          (*(isa + 2))(v464, *(v213 + 56) + *(isa + 9) * v215, v212);
          v218 = 0;
        }

        else
        {
          v218 = 1;
        }
      }

      else
      {
        v218 = 1;
        v216 = isa;
      }

      v242 = v464;
      (*(v216 + 7))(v464, v218, 1, v212);
      if ((*(v216 + 6))(v242, 1, v212))
      {

        v180(v171, v102);
        v180(v166, v102);
        result = sub_10000B3A8(v242, &qword_1016998F0, &qword_1013B60E0);
      }

      else
      {
        v243 = v242;
        v244 = v444;
        (*(v216 + 2))(v444, v243, v212);
        sub_10000B3A8(v243, &qword_1016998F0, &qword_1013B60E0);
        *&aBlock = v463;
        CheckedContinuation.resume(returning:)();

        (*(v216 + 1))(v244, v212);
        v180(v171, v102);
        result = (v180)(v166, v102);
      }

      goto LABEL_96;
    }

    v105 = v476;
    if (v104 == 10 && !v429 && v77 == 0x2000000000000000 && v463 == 3 && v74 == 0x2000000000000000 && !(v76 | v75))
    {
      v106 = qword_101694828;
      v107 = v79;
      if (v106 != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      v109 = sub_1000076D4(v108, qword_10177B048);
      v110 = v458;
      v111 = v455;
      sub_10067B9CC(v458, v455, type metadata accessor for AccessoryCommand);
      v112 = v454;
      v113 = v472;
      v472(v454, v105, v102);
      v113(v103, v475, v102);
      v468 = v109;
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v467 = swift_slowAlloc();
        *&aBlock = v467;
        *v116 = 136446979;
        LODWORD(v466) = v115;
        v117 = v111;
        v118 = v456;
        v119 = (v117 + *(v456 + 24));
        v120 = v119[2];
        v482 = v119[1];
        v483 = v120;
        v481 = *v119;
        v121 = sub_1010C02C0();
        v123 = v122;
        sub_10067BA34(v117, type metadata accessor for AccessoryCommand);
        v124 = sub_1000136BC(v121, v123, &aBlock);

        *(v116 + 4) = v124;
        *(v116 + 12) = 2160;
        *(v116 + 14) = 1752392040;
        *(v116 + 22) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
        v125 = dispatch thunk of CustomStringConvertible.description.getter();
        v127 = v126;
        v128 = *(v473 + 8);
        v128(v112, v474);
        v129 = sub_1000136BC(v125, v127, &aBlock);
        v102 = v474;

        *(v116 + 24) = v129;
        *(v116 + 32) = 2082;
        v130 = v469;
        v131 = dispatch thunk of CustomStringConvertible.description.getter();
        v133 = v132;
        v469 = v128;
        v128(v130, v102);
        v134 = sub_1000136BC(v131, v133, &aBlock);
        v105 = v476;

        *(v116 + 34) = v134;
        _os_log_impl(&_mh_execute_header, v114, v466, "%{public}s completed for %{private,mask.hash}s Command %{public}s!", v116, 0x2Au);
        swift_arrayDestroy();

        v110 = v458;

        v135 = v473;
      }

      else
      {

        v135 = v473;
        v245 = *(v473 + 8);
        v245(v469, v102);
        v469 = v245;
        v245(v112, v102);
        sub_10067BA34(v111, type metadata accessor for AccessoryCommand);
        v118 = v456;
      }

      v246 = v110 + *(v118 + 24);
      v247 = *(v246 + 8);
      v248 = *(v246 + 32);
      v249 = (v248 >> 59) & 6 | ((v247 & 0x2000000000000000) != 0);
      if (v249 == 1)
      {
        v304 = v457;
        v305 = v470;
        v306 = v472;
        v472(v457, v105, v102);
        v307 = v442;
        v306(v442, v475, v102);
        v308 = *(v135 + 80);
        v309 = (v308 + 24) & ~v308;
        v310 = v135;
        v311 = (v28 + v308 + v309) & ~v308;
        v312 = swift_allocObject();
        *(v312 + 16) = v305;
        v313 = *(v310 + 32);
        v313(v312 + v309, v304, v102);
        v313(v312 + v311, v307, v102);
        *&v480 = sub_100680F40;
        *(&v480 + 1) = v312;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v260 = &unk_10162CF00;
      }

      else
      {
        if (v249 != 5 || *(v246 + 40) || v248 != 0x2000000000000000 || *(v246 + 16) != 0 || v247 != 0x2000000000000000 || *v246 != 1)
        {
          v290 = v443;
          sub_10067B9CC(v110, v443, type metadata accessor for AccessoryCommand);
          v291 = Logger.logObject.getter();
          v292 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v291, v292))
          {
            v293 = swift_slowAlloc();
            v294 = swift_slowAlloc();
            v295 = v118;
            v296 = v294;
            v477 = v294;
            *v293 = 136446210;
            v297 = (v290 + *(v295 + 24));
            v298 = v297[2];
            v479 = v297[1];
            v480 = v298;
            aBlock = *v297;
            v299 = sub_1010C02C0();
            v301 = v300;
            sub_10067BA34(v290, type metadata accessor for AccessoryCommand);
            v302 = sub_1000136BC(v299, v301, &v477);

            *(v293 + 4) = v302;
            _os_log_impl(&_mh_execute_header, v291, v292, "Invalid command %{public}s for .soundComplete!", v293, 0xCu);
            sub_100007BAC(v296);

            v303 = v469;
            (v469)(v475, v102);
            result = v303(v105, v102);
          }

          else
          {

            v342 = v469;
            (v469)(v475, v102);
            v342(v105, v102);
            result = sub_10067BA34(v290, type metadata accessor for AccessoryCommand);
          }

          goto LABEL_95;
        }

        v250 = v457;
        v251 = v470;
        v252 = v472;
        v472(v457, v105, v102);
        v253 = v442;
        v252(v442, v475, v102);
        v254 = *(v135 + 80);
        v255 = (v254 + 24) & ~v254;
        v256 = v135;
        v257 = (v28 + v254 + v255) & ~v254;
        v258 = swift_allocObject();
        *(v258 + 16) = v251;
        v259 = *(v256 + 32);
        v259(v258 + v255, v250, v102);
        v259(v258 + v257, v253, v102);
        *&v480 = sub_10067F698;
        *(&v480 + 1) = v258;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v260 = &unk_10162CEB0;
      }

      *&v479 = sub_100006684;
      *(&v479 + 1) = v260;
      v314 = _Block_copy(&aBlock);

      v315 = v448;
      static DispatchQoS.unspecified.getter();
      v477 = _swiftEmptyArrayStorage;
      sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v316 = v445;
      v317 = v446;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v318 = v431;
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v314);
      (*(v447 + 8))(v316, v317);
      (*(v450 + 8))(v315, v449);
      v319 = v469;
      (v469)(v475, v102);
      v319(v105, v102);

LABEL_95:
      v97 = v471;
LABEL_96:
      v99 = 0;
      v343 = xmmword_10138BC00;
LABEL_97:
      *v97 = v343;
      *(v97 + 2) = 0;
      *(v97 + 3) = 0;
      v97[2] = xmmword_1013B5E90;
      *(v97 + 48) = 1;
      goto LABEL_98;
    }

    v427 = v74;
    v469 = v77;
    v136 = qword_101694828;
    v137 = v79;
    if (v136 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    sub_1000076D4(v138, qword_10177B048);
    sub_1001011C0(v73, &v481);
    v139 = v466;
    v140 = v472;
    v472(v466, v105, v102);
    v141 = v467;
    v142 = v102;
    v143 = v475;
    v140(v467, v475, v142);
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v428 = v76;
      v474 = v147;
      v477 = v147;
      *v146 = 136446979;
      sub_1001011C0(&v481, &aBlock);
      v148 = String.init<A>(describing:)();
      v149 = v141;
      v151 = v150;
      sub_100007BAC(&v481);
      v152 = sub_1000136BC(v148, v151, &v477);

      *(v146 + 4) = v152;
      *(v146 + 12) = 2160;
      *(v146 + 14) = 1752392040;
      *(v146 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v153 = dispatch thunk of CustomStringConvertible.description.getter();
      v154 = v139;
      v156 = v155;
      v157 = *(v473 + 8);
      v157(v154, v142);
      v158 = sub_1000136BC(v153, v156, &v477);

      *(v146 + 24) = v158;
      *(v146 + 32) = 2082;
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = v160;
      v157(v149, v142);
      v162 = sub_1000136BC(v159, v161, &v477);

      *(v146 + 34) = v162;
      _os_log_impl(&_mh_execute_header, v144, v145, "Invalid command %{public}s beacon %{private,mask.hash}s Command %{public}s", v146, 0x2Au);
      swift_arrayDestroy();

      sub_10067F4FC(v463, v427, v430, v428, v469, v429, sub_100016590);
      v157(v475, v142);
      result = (v157)(v476, v142);
    }

    else
    {

      sub_10067F4FC(v463, v427, v430, v76, v469, v429, sub_100016590);
      v209 = *(v473 + 8);
      v209(v141, v142);
      v209(v139, v142);
      sub_100007BAC(&v481);
      v209(v143, v142);
      result = (v209)(v105, v142);
    }

    goto LABEL_38;
  }

  v469 = v77;
  v186 = v79;
  v187 = v463;
  sub_100017D5C(v463, v74 & 0xCFFFFFFFFFFFFFFFLL);
  sub_100017D5C(v75, v76);
  v188 = sub_10041C094(v187, v74 & 0xCFFFFFFFFFFFFFFFLL, v75, v76);
  v427 = v74;
  if ((v188 & 0xFF0000) != 0x60000)
  {
    v219 = v188;
    v220 = sub_10030F9A4(v188);
    if (v220 == 23)
    {
      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v221 = type metadata accessor for Logger();
      sub_1000076D4(v221, qword_10177B048);
      v222 = v439;
      v223 = v476;
      v224 = v472;
      v472(v439, v476, v102);
      v225 = v441;
      v226 = v102;
      v227 = v475;
      v224(v441, v475, v226);
      v228 = Logger.logObject.getter();
      v229 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v228, v229))
      {
        v230 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        v428 = v76;
        v474 = v231;
        *&v481 = v231;
        *v230 = 33686531;
        *(v230 + 4) = v219;
        *(v230 + 6) = 2160;
        *(v230 + 8) = 1752392040;
        *(v230 + 16) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
        LODWORD(v472) = v229;
        v232 = dispatch thunk of CustomStringConvertible.description.getter();
        v233 = v225;
        v235 = v234;
        v236 = *(v473 + 8);
        v236(v222, v226);
        v237 = sub_1000136BC(v232, v235, &v481);

        *(v230 + 18) = v237;
        *(v230 + 26) = 2082;
        v238 = dispatch thunk of CustomStringConvertible.description.getter();
        v240 = v239;
        v236(v233, v226);
        v241 = sub_1000136BC(v238, v240, &v481);

        *(v230 + 28) = v241;
        _os_log_impl(&_mh_execute_header, v228, v472, "Invalid opcode: %{public}hu. Beacon %{private,mask.hash}s Command %{public}s.", v230, 0x24u);
        swift_arrayDestroy();

        sub_10067F4FC(v463, v427, v430, v428, v469, v429, sub_100016590);
        v236(v475, v226);
        result = (v236)(v476, v226);
      }

      else
      {

        sub_10067F4FC(v463, v427, v430, v76, v469, v429, sub_100016590);
        v320 = *(v473 + 8);
        v320(v225, v226);
        v320(v222, v226);
        v320(v227, v226);
        result = (v320)(v223, v226);
      }

      goto LABEL_38;
    }

    LODWORD(v468) = v220;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v262 = type metadata accessor for Logger();
    v263 = sub_1000076D4(v262, qword_10177B048);
    v264 = v438;
    v265 = v472;
    v472(v438, v476, v102);
    v266 = v440;
    v265(v440, v475, v102);
    v466 = v263;
    v267 = Logger.logObject.getter();
    v268 = static os_log_type_t.default.getter();
    v269 = HIWORD(v219);
    if (os_log_type_enabled(v267, v268))
    {
      v270 = swift_slowAlloc();
      v465 = swift_slowAlloc();
      *&v481 = v465;
      *v270 = 136316163;
      v271 = sub_10030E868(v468);
      LODWORD(v464) = v268;
      v273 = sub_1000136BC(v271, v272, &v481);

      *(v270 + 4) = v273;
      *(v270 + 12) = 2082;
      if (v269)
      {
        v274 = v269;
      }

      else
      {
        v274 = 6;
      }

      v275 = sub_10041B9C8(v274);
      v277 = sub_1000136BC(v275, v276, &v481);

      *(v270 + 14) = v277;
      *(v270 + 22) = 2160;
      *(v270 + 24) = 1752392040;
      *(v270 + 32) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
      v278 = dispatch thunk of CustomStringConvertible.description.getter();
      v280 = v279;
      v462 = v267;
      v281 = v264;
      v282 = v266;
      v283 = *(v473 + 8);
      v283(v281, v474);
      v284 = sub_1000136BC(v278, v280, &v481);
      v102 = v474;

      *(v270 + 34) = v284;
      *(v270 + 42) = 2082;
      v285 = dispatch thunk of CustomStringConvertible.description.getter();
      v287 = v286;
      v467 = v283;
      v283(v282, v102);
      v288 = sub_1000136BC(v285, v287, &v481);

      *(v270 + 44) = v288;
      v289 = v462;
      _os_log_impl(&_mh_execute_header, v462, v464, "Opcode: %s. Status %{public}s. Beacon %{private,mask.hash}s Command %{public}s.", v270, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      v321 = *(v473 + 8);
      v321(v266, v102);
      v467 = v321;
      v321(v264, v102);
    }

    if (v269)
    {
      v322 = v269;
    }

    else
    {
      v322 = 6;
    }

    if (v468 > 6u)
    {
      v324 = v457;
      if (v468 == 7)
      {
        if (*(v470 + 176) == 1)
        {
          *(v470 + 176) = 0;
          v344 = v432;
          v345 = v476;
          v472(v432, v476, v102);
          v346 = Logger.logObject.getter();
          v347 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v346, v347))
          {
            v348 = swift_slowAlloc();
            v349 = swift_slowAlloc();
            *&v481 = v349;
            *v348 = 141558275;
            *(v348 + 4) = 1752392040;
            *(v348 + 12) = 2081;
            sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
            v350 = dispatch thunk of CustomStringConvertible.description.getter();
            v352 = v351;
            v353 = v344;
            v354 = v467;
            (v467)(v353, v102);
            v355 = sub_1000136BC(v350, v352, &v481);

            *(v348 + 14) = v355;
            _os_log_impl(&_mh_execute_header, v346, v347, "Sending unpair command for beacon %{private,mask.hash}s.", v348, 0x16u);
            sub_100007BAC(v349);

            sub_10067F4FC(v463, v427, v430, v76, v469, v429, sub_100016590);
            v354(v475, v102);
            result = (v354)(v476, v102);
          }

          else
          {

            sub_10067F4FC(v463, v427, v430, v76, v469, v429, sub_100016590);
            v425 = v467;
            (v467)(v344, v102);
            v425(v475, v102);
            result = (v425)(v345, v102);
          }

          v97 = v471;
          v99 = 0;
          *v471 = xmmword_1013AAD90;
          *(v97 + 2) = 0;
          *(v97 + 3) = 0;
          v210 = xmmword_10139BF70;
          goto LABEL_40;
        }

        v402 = Logger.logObject.getter();
        v403 = static os_log_type_t.default.getter();
        v404 = os_log_type_enabled(v402, v403);
        v97 = v471;
        v406 = v475;
        v405 = v476;
        if (v404)
        {
          v407 = swift_slowAlloc();
          *v407 = 0;
          _os_log_impl(&_mh_execute_header, v402, v403, "Ignoring .setMaxConnections response.", v407, 2u);
        }

        sub_10067F4FC(v463, v427, v430, v76, v469, v429, sub_100016590);
        v408 = v467;
        (v467)(v406, v102);
        result = v408(v405, v102);
LABEL_39:
        v99 = 0;
        *v97 = xmmword_10138BC00;
        *(v97 + 2) = 0;
        *(v97 + 3) = 0;
        v210 = xmmword_1013B5E90;
LABEL_40:
        v97[2] = v210;
        *(v97 + 48) = 0;
        goto LABEL_98;
      }

      if (v468 == 12)
      {
        v428 = v76;
        v395 = v436;
        sub_10067B9CC(v458, v436, type metadata accessor for AccessoryCommand);
        v396 = v324;
        v472(v324, v475, v102);
        v397 = (*(v434 + 80) + 24) & ~*(v434 + 80);
        v398 = v473;
        v399 = (v435 + *(v473 + 80) + v397) & ~*(v473 + 80);
        if (v322 == 6)
        {
          v400 = swift_allocObject();
          *(v400 + 16) = v470;
          sub_10067B810(v395, v400 + v397, type metadata accessor for AccessoryCommand);
          (*(v398 + 32))(v400 + v399, v396, v102);
          *&v483 = sub_10067F91C;
          *(&v483 + 1) = v400;
          *&v481 = _NSConcreteStackBlock;
          *(&v481 + 1) = 1107296256;
          *&v482 = sub_100006684;
          *(&v482 + 1) = &unk_10162D0E0;
        }

        else
        {
          v422 = swift_allocObject();
          *(v422 + 16) = v470;
          sub_10067B810(v395, v422 + v397, type metadata accessor for AccessoryCommand);
          (*(v398 + 32))(v422 + v399, v396, v102);
          *(v422 + v399 + v28) = v322;
          *&v483 = sub_10067F800;
          *(&v483 + 1) = v422;
          *&v481 = _NSConcreteStackBlock;
          *(&v481 + 1) = 1107296256;
          *&v482 = sub_100006684;
          *(&v482 + 1) = &unk_10162D090;
        }

        v401 = _Block_copy(&v481);

        v338 = v448;
        static DispatchQoS.unspecified.getter();
        *&aBlock = _swiftEmptyArrayStorage;
        sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v339 = v445;
        v340 = v446;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v423 = v431;
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v401);
        goto LABEL_120;
      }

      v325 = v437;
      if (v468 != 18)
      {
LABEL_102:
        v356 = v476;
        v357 = v472;
        v472(v325, v476, v102);
        v358 = v433;
        v357(v433, v475, v102);
        v359 = Logger.logObject.getter();
        v360 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          v474 = swift_slowAlloc();
          *&v481 = v474;
          *v361 = 136316163;
          v362 = sub_10030E868(v468);
          v364 = sub_1000136BC(v362, v363, &v481);

          *(v361 + 4) = v364;
          *(v361 + 12) = 2080;
          v365 = sub_10041B9C8(v322);
          v367 = sub_1000136BC(v365, v366, &v481);

          *(v361 + 14) = v367;
          *(v361 + 22) = 2160;
          *(v361 + 24) = 1752392040;
          *(v361 + 32) = 2081;
          sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
          v368 = dispatch thunk of CustomStringConvertible.description.getter();
          v370 = v369;
          v428 = v76;
          v371 = v467;
          (v467)(v325, v102);
          v372 = sub_1000136BC(v368, v370, &v481);

          *(v361 + 34) = v372;
          *(v361 + 42) = 2082;
          v373 = v433;
          v374 = dispatch thunk of CustomStringConvertible.description.getter();
          v376 = v375;
          v371(v373, v102);
          v377 = sub_1000136BC(v374, v376, &v481);

          *(v361 + 44) = v377;
          _os_log_impl(&_mh_execute_header, v359, v360, "Unsupported %s. Status %s. Beacon %{private,mask.hash}s Command %{public}s.", v361, 0x34u);
          swift_arrayDestroy();

          sub_10067F4FC(v463, v427, v430, v428, v469, v429, sub_100016590);
          v371(v475, v102);
          result = (v371)(v476, v102);
        }

        else
        {

          sub_10067F4FC(v463, v427, v430, v76, v469, v429, sub_100016590);
          v409 = v467;
          (v467)(v358, v102);
          v409(v325, v102);
          v409(v475, v102);
          result = (v409)(v356, v102);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v323 = v470;
      v324 = v457;
      v325 = v437;
      if (v468)
      {
        if (v468 == 1)
        {
          v428 = v76;
          v388 = v436;
          sub_10067B9CC(v458, v436, type metadata accessor for AccessoryCommand);
          v389 = v324;
          v472(v324, v475, v102);
          v390 = (*(v434 + 80) + 24) & ~*(v434 + 80);
          v391 = v473;
          v392 = (v435 + *(v473 + 80) + v390) & ~*(v473 + 80);
          if (v322 == 6)
          {
            v393 = swift_allocObject();
            *(v393 + 16) = v470;
            sub_10067B810(v388, v393 + v390, type metadata accessor for AccessoryCommand);
            (*(v391 + 32))(v393 + v392, v389, v102);
            *&v483 = sub_100680F3C;
            *(&v483 + 1) = v393;
            *&v481 = _NSConcreteStackBlock;
            *(&v481 + 1) = 1107296256;
            *&v482 = sub_100006684;
            *(&v482 + 1) = &unk_10162D040;
          }

          else
          {
            v416 = swift_allocObject();
            *(v416 + 16) = v470;
            sub_10067B810(v388, v416 + v390, type metadata accessor for AccessoryCommand);
            (*(v391 + 32))(v416 + v392, v389, v102);
            *(v416 + v392 + v28) = v322;
            *&v483 = sub_10067F7E0;
            *(&v483 + 1) = v416;
            *&v481 = _NSConcreteStackBlock;
            *(&v481 + 1) = 1107296256;
            *&v482 = sub_100006684;
            *(&v482 + 1) = &unk_10162CFF0;
          }

          v394 = _Block_copy(&v481);

          v417 = v448;
          static DispatchQoS.unspecified.getter();
          *&aBlock = _swiftEmptyArrayStorage;
          sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v418 = v445;
          v419 = v446;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v420 = v431;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v394);
          sub_10067F4FC(v463, v427, v430, v428, v469, v429, sub_100016590);
          (*(v447 + 8))(v418, v419);
          (*(v450 + 8))(v417, v449);
          goto LABEL_117;
        }

        if (v468 == 4)
        {
          v326 = v436;
          sub_10067B9CC(v458, v436, type metadata accessor for AccessoryCommand);
          v327 = (*(v434 + 80) + 24) & ~*(v434 + 80);
          v328 = v327 + v435;
          if (v322 == 6)
          {
            v329 = swift_allocObject();
            *(v329 + 16) = v323;
            sub_10067B810(v326, v329 + v327, type metadata accessor for AccessoryCommand);
            *&v483 = sub_100680F38;
            *(&v483 + 1) = v329;
            *&v481 = _NSConcreteStackBlock;
            *(&v481 + 1) = 1107296256;
            v330 = &unk_10162CFA0;
          }

          else
          {
            v410 = swift_allocObject();
            *(v410 + 16) = v323;
            sub_10067B810(v326, v410 + v327, type metadata accessor for AccessoryCommand);
            *(v410 + v328) = v322;
            *&v483 = sub_10067F75C;
            *(&v483 + 1) = v410;
            *&v481 = _NSConcreteStackBlock;
            *(&v481 + 1) = 1107296256;
            v330 = &unk_10162CF50;
          }

          *&v482 = sub_100006684;
          *(&v482 + 1) = v330;
          v411 = _Block_copy(&v481);

          v412 = v448;
          static DispatchQoS.unspecified.getter();
          *&aBlock = _swiftEmptyArrayStorage;
          sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v413 = v445;
          v414 = v446;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v415 = v431;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v411);
          sub_10067F4FC(v463, v427, v430, v76, v469, v429, sub_100016590);
          (*(v447 + 8))(v413, v414);
          (*(v450 + 8))(v412, v449);
LABEL_117:
          v421 = v467;
          (v467)(v475, v102);
          v421(v476, v102);

          v99 = 0;
          v343 = xmmword_10138BC00;
          v97 = v471;
          goto LABEL_97;
        }

        goto LABEL_102;
      }
    }

    v428 = v76;
    if (v322 != 6)
    {
      v378 = v436;
      sub_10067B9CC(v458, v436, type metadata accessor for AccessoryCommand);
      v472(v324, v475, v102);
      v379 = (*(v434 + 80) + 24) & ~*(v434 + 80);
      v380 = v473;
      v381 = (v435 + *(v473 + 80) + v379) & ~*(v473 + 80);
      v382 = swift_allocObject();
      *(v382 + 16) = v470;
      sub_10067B810(v378, v382 + v379, type metadata accessor for AccessoryCommand);
      (*(v380 + 32))(v382 + v381, v457, v102);
      *(v382 + v381 + v28) = v322;
      *&v483 = sub_10067FB98;
      *(&v483 + 1) = v382;
      *&v481 = _NSConcreteStackBlock;
      *(&v481 + 1) = 1107296256;
      *&v482 = sub_100006684;
      *(&v482 + 1) = &unk_10162D130;
      v383 = _Block_copy(&v481);

      v384 = v448;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v385 = v445;
      v386 = v446;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v387 = v431;
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v383);
      sub_10067F4FC(v463, v427, v430, v428, v469, v429, sub_100016590);
      (*(v447 + 8))(v385, v386);
      (*(v450 + 8))(v384, v449);
LABEL_121:
      v424 = v467;
      (v467)(v475, v102);
      v424(v476, v102);

LABEL_38:
      v97 = v471;
      goto LABEL_39;
    }

    v331 = v436;
    sub_10067B9CC(v458, v436, type metadata accessor for AccessoryCommand);
    v332 = v324;
    v472(v324, v475, v102);
    v333 = (*(v434 + 80) + 24) & ~*(v434 + 80);
    v334 = v473;
    v335 = (v435 + *(v473 + 80) + v333) & ~*(v473 + 80);
    v336 = swift_allocObject();
    *(v336 + 16) = v470;
    sub_10067B810(v331, v336 + v333, type metadata accessor for AccessoryCommand);
    (*(v334 + 32))(v336 + v335, v332, v102);
    *&v483 = sub_10067FBB8;
    *(&v483 + 1) = v336;
    *&v481 = _NSConcreteStackBlock;
    *(&v481 + 1) = 1107296256;
    *&v482 = sub_100006684;
    *(&v482 + 1) = &unk_10162D180;
    v337 = _Block_copy(&v481);

    v338 = v448;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v339 = v445;
    v340 = v446;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v341 = v431;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v337);

LABEL_120:
    sub_10067F4FC(v463, v427, v430, v428, v469, v429, sub_100016590);
    (*(v447 + 8))(v339, v340);
    (*(v450 + 8))(v338, v449);
    goto LABEL_121;
  }

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v189 = type metadata accessor for Logger();
  sub_1000076D4(v189, qword_10177B048);
  v190 = v452;
  v191 = v476;
  v192 = v472;
  v472(v452, v476, v102);
  v193 = v453;
  v194 = v102;
  v195 = v475;
  v192(v453, v475, v194);
  v196 = Logger.logObject.getter();
  v197 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v474 = swift_slowAlloc();
    *&v481 = v474;
    *v198 = 141558531;
    *(v198 + 4) = 1752392040;
    *(v198 + 12) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    LODWORD(v472) = v197;
    v428 = v76;
    v199 = dispatch thunk of CustomStringConvertible.description.getter();
    v201 = v200;
    v202 = *(v473 + 8);
    v202(v190, v194);
    v203 = v202;
    v204 = sub_1000136BC(v199, v201, &v481);

    *(v198 + 14) = v204;
    *(v198 + 22) = 2082;
    v205 = dispatch thunk of CustomStringConvertible.description.getter();
    v207 = v206;
    v203(v193, v194);
    v208 = sub_1000136BC(v205, v207, &v481);

    *(v198 + 24) = v208;
    _os_log_impl(&_mh_execute_header, v196, v472, "Invalid commandResponse for %{private,mask.hash}s Command %{public}s.", v198, 0x20u);
    swift_arrayDestroy();

    sub_10067F4FC(v463, v427, v430, v428, v469, v429, sub_100016590);
    v203(v475, v194);
    result = (v203)(v476, v194);
  }

  else
  {

    sub_10067F4FC(v463, v427, v75, v76, v469, v429, sub_100016590);
    v261 = *(v473 + 8);
    v261(v193, v194);
    v261(v190, v194);
    v261(v195, v194);
    result = (v261)(v191, v194);
  }

  v97 = v471;
  v98 = 10;
LABEL_10:
  *v97 = v98;
  *(v97 + 8) = 0u;
  *(v97 + 24) = 0u;
  *(v97 + 40) = 11;
  v99 = 1;
LABEL_98:
  *(v97 + 49) = v99;
  return result;
}

uint64_t sub_100677AB8(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    type metadata accessor for OwnerCommandManager.Error();
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    swift_allocError();
    *v5 = a3;
    swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100677B80(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for AccessoryCommand();
    sub_10067BD08(a2 + *(v11 + 20), a3, 0, v10, a4, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100677C1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, const char *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(type metadata accessor for AccessoryCommand() + 20);
    type metadata accessor for OwnerCommandManager.Error();
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    v14 = swift_allocError();
    *v15 = a4;
    swift_storeEnumTagMultiPayload();
    sub_10067BD08(a2 + v13, a3, v14, v12, a5, a6);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100677D48(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10067BD08(a2, a3, 0, result, a4, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100677DD8(uint64_t a1, unint64_t a2)
{
  v6 = v2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v6 + 72);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v18(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v50, &qword_1016A72E0, &qword_1013B60C8);
  if (v53)
  {
    v54 = v50;
    *v55 = *v51;
    *&v55[9] = *&v51[9];
    sub_100101AA8(&v54, &v48);
    v19 = swift_allocObject();
    v20 = v49[0];
    v19[1] = v48;
    v19[2] = v20;
    *(v19 + 41) = *(v49 + 9);
    v21 = sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = Future.init(_:)();
    sub_100101B04(&v54);
    return v24;
  }

  v46 = a2;
  v17 = *(&v50 + 1);
  v16 = v50;
  v3 = *&v51[8];
  a2 = *v51;
  v4 = *&v51[16];
  v5 = *&v51[24];
  v45 = v52;
  sub_10067F4BC(v50, *(&v50 + 1), *v51, *&v51[8], *&v51[16], *&v51[24]);
  if (qword_101694828 != -1)
  {
    goto LABEL_14;
  }

LABEL_5:
  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177B048);
  sub_10067F4BC(v16, v17, a2, v3, v4, v5);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  sub_10067F5FC(v16, v17, a2, v3, v4, v5);
  v28 = os_log_type_enabled(v26, v27);
  v47 = v16;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v43 = v29;
    v44 = swift_slowAlloc();
    *&v48 = v44;
    *v29 = 136315138;
    *&v54 = v16;
    *(&v54 + 1) = v17;
    *v55 = a2;
    *&v55[8] = v3;
    *&v55[16] = v4;
    *&v55[24] = v5;
    sub_10067F4BC(v16, v17, a2, v3, v4, v5);
    sub_1000BC4D4(&qword_1016A72E8, &unk_1013B60D0);
    v30 = String.init<A>(describing:)();
    v42 = v26;
    v32 = sub_1000136BC(v30, v31, &v48);

    v33 = v43;
    *(v43 + 1) = v32;
    v34 = v42;
    _os_log_impl(&_mh_execute_header, v42, v27, "Sending: %s", v33, 0xCu);
    sub_100007BAC(v44);
  }

  else
  {
  }

  if ((~(v17 & v4) & 0x3000000000000000) != 0)
  {
    v39 = v47;
    *&v54 = v47;
    *(&v54 + 1) = v17;
    *v55 = a2;
    *&v55[8] = v3;
    *&v55[16] = v4;
    *&v55[24] = v5;
    sub_10067F4BC(v47, v17, a2, v3, v4, v5);
    v24 = sub_10067836C(&v54, v46);
    sub_10067F5FC(v39, v17, a2, v3, v4, v5);
    sub_10067F5FC(v39, v17, a2, v3, v4, v5);
    v38 = v39;
  }

  else
  {
    *(swift_allocObject() + 16) = v45;
    v35 = sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v24 = Future.init(_:)();
    v38 = v47;
  }

  sub_10067F5FC(v38, v17, a2, v3, v4, v5);
  return v24;
}

uint64_t sub_1006782DC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  sub_100101B58();
  v5 = swift_allocError();
  sub_100101AA8(a3, v6);
  v8[0] = v5;
  v9 = 256;
  a1(v8);
  return sub_10000B3A8(v8, &qword_1016A72B0, &qword_1013B60A8);
}

uint64_t sub_10067836C(_OWORD *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + 72);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = a1[1];
    *(v14 + 24) = *a1;
    *(v14 + 40) = v15;
    *(v14 + 56) = a1[2];
    *(v14 + 72) = a2;
    v16 = sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_10067C2E0(a1, v19);

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100678538(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v9 = type metadata accessor for BinaryEncoder();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + 128);
    v16 = *(Strong + 136);
    *(Strong + 128) = a1;
    *(Strong + 136) = a2;

    sub_1000BB27C(v15);
    BinaryEncoder.init()();
    v17 = a4[1];
    v25 = *a4;
    v26 = v17;
    v27 = a4[2];
    sub_10067C1D4();
    v18 = BinaryEncoder.encode<A>(_:)();
    v20 = v19;
    v21 = Data.chunked(into:)();
    v22 = sub_1001D97CC(v21);

    swift_beginAccess();
    sub_100398324(v22);
    swift_endAccess();
    sub_100679A0C(a5);
    sub_100016590(v18, v20);

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    *&v27 = 0;
    v25 = 0u;
    v26 = 0u;
    WORD4(v27) = 267;
    a1(&v25);
    return sub_10000B3A8(&v25, &qword_1016A72B0, &qword_1013B60A8);
  }
}

uint64_t sub_100678910(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + 72);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_101694828 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177B048);
  sub_100017D5C(a1, a2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v16, v17))
  {
    sub_100016590(a1, a2);
LABEL_16:

    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = a3 & 1;
    *(v30 + 32) = a1;
    *(v30 + 40) = a2;
    v31 = sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    return Future.init(_:)();
  }

  v18 = swift_slowAlloc();
  result = swift_slowAlloc();
  v20 = result;
  v35 = result;
  *v18 = 134218242;
  v21 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_15;
    }

    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = BYTE6(a2);
LABEL_15:
    *(v18 + 4) = v22;
    sub_100016590(a1, a2);
    *(v18 + 12) = 2082;
    v26 = Data.hexString.getter();
    v28 = sub_1000136BC(v26, v27, &v35);

    *(v18 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "didNotify data length [%ld] %{public}s", v18, 0x16u);
    sub_100007BAC(v20);

    goto LABEL_16;
  }

  LODWORD(v22) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v22 = v22;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_100678C64(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v102 = a6;
  v103 = a5;
  v9 = type metadata accessor for BinaryDecodingError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Bit();
  v99 = *(v100 - 8);
  v14 = *(v99 + 64);
  v15 = __chkstk_darwin(v100);
  v98 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v101 = &v90 - v17;
  v18 = type metadata accessor for BinaryDecoder();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    LOBYTE(v111) = 11;
    v112 = 1;
    a1(&v108);
    sub_10000B3A8(&v108, &qword_101699380, &unk_1013918F0);
    return;
  }

  v24 = Strong;
  v95 = a2;
  v96 = a1;
  BinaryDecoder.init()();
  if (a4)
  {
    v25 = v19;
    *(&v109 + 1) = &type metadata for AirTagCommand;
    v110 = sub_10067C228();
    v111 = sub_10067C27C();
    BinaryDecoder.decode<A>(_:from:)();
    v97 = v22;
    sub_1000BB3F0(&v108, v107);
LABEL_18:
    v63 = *(v24 + 152);
    v64 = *(v24 + 160);
    *(v24 + 152) = xmmword_10138BBF0;
    sub_100006654(v63, v64);
    sub_1001011C0(v107, &v108);
    v112 = 0;
    v96(&v108);

    sub_10000B3A8(&v108, &qword_101699380, &unk_1013918F0);
    sub_100007BAC(v107);
    (*(v25 + 8))(v97, v18);
    return;
  }

  v97 = v22;
  v92 = v13;
  v93 = v10;
  v26 = *(v24 + 152);
  v27 = *(v24 + 160);
  if (v27 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v24 + 152);
  }

  v29 = 0xC000000000000000;
  if (v27 >> 60 != 15)
  {
    v29 = *(v24 + 160);
  }

  v105 = v28;
  v106 = v29;
  sub_10002E98C(v26, v27);
  v30 = v103;
  v31 = v102;
  sub_100017D5C(v103, v102);
  sub_100ED428C(1, v30, v31, &v108);
  v32 = v108;
  Data.append(_:)();
  sub_100016590(v32, *(&v32 + 1));
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v94 = v18;
  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177B048);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v36 = os_log_type_enabled(v34, v35);
  v91 = v19;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v108 = v38;
    *v37 = 136315138;
    swift_beginAccess();
    v39 = v9;
    v41 = v105;
    v40 = v106;
    sub_100017D5C(v105, v106);
    v42 = Data.description.getter();
    v90 = v24;
    v44 = v43;
    v45 = v41;
    v9 = v39;
    sub_100016590(v45, v40);
    v46 = sub_1000136BC(v42, v44, &v108);
    v24 = v90;

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "localReadBuffer %s", v37, 0xCu);
    sub_100007BAC(v38);
  }

  v47 = v93;
  v48 = v92;
  v49 = v100;
  swift_beginAccess();
  v50 = v105;
  v51 = v106;
  v52 = *(v24 + 152);
  v53 = *(v24 + 160);
  *(v24 + 152) = v105;
  *(v24 + 160) = v51;
  sub_100017D5C(v50, v51);
  sub_100006654(v52, v53);
  v54 = sub_100017C08(v103, v102);
  v55 = v94;
  v56 = v101;
  if ((v54 & 0x100) != 0)
  {
    goto LABEL_20;
  }

  LOBYTE(v108) = v54;
  sub_1000198E8();
  v57 = FixedWidthInteger.bits()();
  if (!*(v57 + 16))
  {

LABEL_20:
    type metadata accessor for OwnerCommandManager.Error();
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    v65 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v91 + 8))(v97, v55);
    goto LABEL_21;
  }

  v100 = v9;
  v58 = v99;
  (*(v99 + 16))(v56, v57 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v49);

  v59 = v98;
  (*(v58 + 104))(v98, enum case for Bit.one(_:), v49);
  sub_100003E44(&qword_101698660, &type metadata accessor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v60 = *(v58 + 8);
  v60(v59, v49);
  if (v108 == v104)
  {
    v99 = v58 + 8;
    v61 = v105;
    v62 = v106;
    *(&v109 + 1) = &type metadata for AccessoryConfigCommand;
    v110 = sub_10067C180();
    v111 = sub_10067C1D4();
    *&v108 = swift_allocObject();
    sub_100017D5C(v61, v62);
    BinaryDecoder.decode<A>(_:from:)();
    v60(v101, v49);
    sub_100016590(v61, v62);
    sub_1000BB3F0(&v108, v107);
    sub_100016590(v105, v106);
    v18 = v94;
    v25 = v91;
    goto LABEL_18;
  }

  sub_100003E44(&qword_101696E30, &type metadata accessor for BinaryDecodingError);
  v88 = v100;
  v65 = swift_allocError();
  (*(v47 + 104))(v89, enum case for BinaryDecodingError.insufficientData(_:), v88);
  swift_willThrow();
  v60(v101, v49);
  v9 = v88;
  (*(v91 + 8))(v97, v94);
LABEL_21:
  sub_100016590(v105, v106);
  *&v108 = v65;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v47 + 88))(v48, v9) == enum case for BinaryDecodingError.insufficientData(_:))
    {

      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_1000076D4(v66, qword_10177B048);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "insufficientData. Keep reading...", v69, 2u);
      }

      goto LABEL_35;
    }

    (*(v47 + 8))(v48, v9);
  }

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_1000076D4(v70, qword_10177B048);
  v71 = v103;
  v72 = v102;
  sub_100017D5C(v103, v102);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  sub_100016590(v71, v72);
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v108 = v76;
    *v75 = 136446210;
    v77 = Data.hexString.getter();
    v79 = sub_1000136BC(v77, v78, &v108);

    *(v75 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v73, v74, "Failed to decode data %{public}s", v75, 0xCu);
    sub_100007BAC(v76);
  }

  v80 = *(v24 + 152);
  v81 = *(v24 + 160);
  *(v24 + 152) = xmmword_10138BBF0;
  sub_100006654(v80, v81);
  swift_errorRetain();
  v67 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v108 = v84;
    *v83 = 136446210;
    *&v107[0] = v65;
    swift_errorRetain();
    v85 = String.init<A>(describing:)();
    v87 = sub_1000136BC(v85, v86, &v108);

    *(v83 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v67, v82, "Ignoring unhandled commands for now. Error: %{public}s", v83, 0xCu);
    sub_100007BAC(v84);

    return;
  }

LABEL_35:
}

uint64_t sub_100679A0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v54 - v6;
  v8 = sub_1000BC4D4(&qword_1016993E8, &unk_1013D4DF0);
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v58 = &v54 - v10;
  v11 = sub_1000BC4D4(&qword_1016A7280, &unk_1013B6080);
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  __chkstk_darwin(v11);
  v61 = &v54 - v13;
  v14 = sub_1000BC4D4(&qword_1016A7288, &qword_1013D4E00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v64 = &v54 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v2[9];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
LABEL_4:
    v57 = v14;
    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177B048);
    sub_100017D5C(v25, v15);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      sub_100016590(v25, v15);

LABEL_19:
      v55 = sub_100A59B98(v25, v15);
      v65[0] = v55;
      v67 = v24;
      v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v43 - 8) + 56))(v7, 1, 1, v43);
      v44 = v24;
      sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
      sub_1000BC488();
      sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090);
      sub_100003E44(&qword_1016AF9C0, sub_1000BC488);
      v54 = v25;
      v45 = a1;
      v46 = v58;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v7, &unk_1016B0FE0, &unk_101391980);

      sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
      sub_1000041A4(&qword_101699410, &qword_1016993E8, &unk_1013D4DF0);
      v47 = v60;
      v48 = v61;
      Publisher.map<A>(_:)();
      (*(v59 + 8))(v46, v47);
      sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
      sub_1000041A4(&qword_1016A7298, &qword_1016A7280, &unk_1013B6080);
      sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0);
      v49 = v63;
      v50 = v64;
      Publisher.catch<A>(_:)();
      (*(v62 + 8))(v48, v49);
      v51 = swift_allocObject();
      swift_weakInit();
      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      *(v52 + 24) = v45;
      sub_1000041A4(&qword_1016A72A8, &qword_1016A7288, &qword_1013D4E00);

      v53 = v57;
      Publisher<>.sink(receiveValue:)();

      (*(v56 + 8))(v50, v53);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return sub_100016590(v54, v15);
    }

    v55 = a1;
    v31 = swift_slowAlloc();
    result = swift_slowAlloc();
    v32 = result;
    v65[0] = result;
    *v31 = 134218242;
    v33 = v15 >> 62;
    v54 = v24;
    if ((v15 >> 62) > 1)
    {
      if (v33 != 2)
      {
        v34 = 0;
        goto LABEL_18;
      }

      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      v39 = __OFSUB__(v37, v38);
      v34 = v37 - v38;
      if (!v39)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v33)
    {
      v34 = BYTE6(v15);
LABEL_18:
      *(v31 + 4) = v34;
      sub_100016590(v25, v15);
      *(v31 + 12) = 2080;
      v40 = Data.hexString.getter();
      v42 = sub_1000136BC(v40, v41, v65);

      *(v31 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "processQueuedUpdates: writing [%ld] %s)", v31, 0x16u);
      sub_100007BAC(v32);

      v24 = v54;
      a1 = v55;
      goto LABEL_19;
    }

    LODWORD(v34) = HIDWORD(v25) - v25;
    if (__OFSUB__(HIDWORD(v25), v25))
    {
      __break(1u);
      return result;
    }

    v34 = v34;
    goto LABEL_18;
  }

  result = swift_beginAccess();
  v27 = v2[18];
  if (v27[2])
  {
    v56 = v15;
    v25 = v27[4];
    v15 = v27[5];
    sub_100017D5C(v25, v15);
    if (qword_101694828 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  v35 = v2[16];
  if (v35)
  {
    v36 = v2[17];
    LOBYTE(v65[0]) = 1;
    v66 = 0;

    v35(v65);
    sub_1000BB27C(v35);
    return sub_10000B3A8(v65, &qword_1016A72B0, &qword_1013B60A8);
  }

  return result;
}

uint64_t sub_10067A2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1000D2A70(a1, &v32, &qword_1016B1CA0, &qword_1013918C0);
    if (v34)
    {
      v30 = v32;
      v31[0] = *v33;
      *(v31 + 9) = *&v33[9];
      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000076D4(v7, qword_10177B048);
      sub_100101AA8(&v30, v28);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v27 = v11;
        *v10 = 136446210;
        v12 = sub_1013181BC();
        v14 = v13;
        sub_100101B04(v28);
        v15 = sub_1000136BC(v12, v14, &v27);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "writeFuture error: %{public}s", v10, 0xCu);
        sub_100007BAC(v11);

        v16 = v6[16];
        if (v16)
        {
LABEL_7:
          v17 = v6[17];
          sub_100101B58();
          v18 = swift_allocError();
          sub_100101AA8(&v30, v19);
          v28[0] = v18;
          v29 = 256;

          v16(v28);
          sub_1000BB27C(v16);

          sub_10000B3A8(v28, &qword_1016A72B0, &qword_1013B60A8);
          return sub_100101B04(&v30);
        }
      }

      else
      {

        sub_100101B04(v28);
        v16 = v6[16];
        if (v16)
        {
          goto LABEL_7;
        }
      }

      return sub_100101B04(&v30);
    }

    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177B048);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "writeFuture success", v23, 2u);
    }

    swift_beginAccess();
    v24 = v6[18];
    if (v24[2])
    {
      swift_beginAccess();
      v25 = v24[4];
      v26 = v24[5];
      sub_100017D5C(v25, v26);
      sub_100A077EC(0, 1);
      swift_endAccess();
      sub_100016590(v25, v26);
    }

    sub_100679A0C(a3);
  }

  return result;
}

uint64_t sub_10067A690()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_100477574(v0 + 40);
  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);

  v10 = *(v0 + 136);
  sub_1000BB27C(*(v0 + 128));
  v11 = *(v0 + 144);

  sub_100006654(*(v0 + 152), *(v0 + 160));
  v12 = *(v0 + 168);

  v13 = *(v0 + 184);

  return v0;
}

uint64_t sub_10067A730()
{
  sub_10067A690();

  return swift_deallocClassInstance();
}

uint64_t sub_10067A788(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_1000D2A70(a1, &v12 - v6, &qword_1016A7258, &qword_1013B6050);
  v8 = type metadata accessor for OwnerCommandManager.Error();
  v9 = 0;
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    v9 = swift_allocError();
    sub_10067B810(v7, v10, type metadata accessor for OwnerCommandManager.Error);
  }

  a2(v9);
}

uint64_t sub_10067A8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a3;
  v61 = a4;
  v53 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v51 - v12;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = type metadata accessor for AccessoryCommand();
  v57 = *(v20 - 1);
  v21 = *(v57 + 64);
  v22 = __chkstk_darwin(v20);
  v58 = v23;
  v59 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v51 - v24;
  v26 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v51 - v28;
  v30 = *(v4 + 184);
  v62 = v5;
  v54 = a1;
  if (v30)
  {

    sub_100AA33AC(a1, v29);

    v31 = type metadata accessor for OwnedBeaconRecord();
    if ((*(*(v31 - 8) + 48))(v29, 1, v31) != 1)
    {
      v51 = sub_100D60CD0();
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
      if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
      {
        v52 = 1;
      }

      else
      {
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10067BA34(v29, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_12;
    }

    sub_10000B3A8(v29, &unk_1016A9A20, &qword_10138B280);
  }

  v52 = 0;
LABEL_12:
  v37 = v56;
  v38 = *(v8 + 16);
  v38(v19, v53, v7);
  (*(v8 + 56))(v19, 0, 1, v7);
  v39 = v55;
  v38(v55, v54, v7);
  sub_1000D2A70(v19, v17, &qword_1016980D0, &unk_10138F3B0);
  v40 = *(v8 + 48);
  if (v40(v17, 1, v7) == 1)
  {
    UUID.init()();
    sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
    if (v40(v17, 1, v7) != 1)
    {
      sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
    (*(v8 + 32))(v37, v17, v7);
  }

  v41 = *(v8 + 32);
  v41(v25, v37, v7);
  v41(&v25[v20[5]], v39, v7);
  v42 = &v25[v20[6]];
  *v42 = xmmword_1013B5EA0;
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 2) = xmmword_10139BF70;
  v25[v20[7]] = v52 & 1;
  v25[v20[8]] = 1;
  v43 = swift_allocObject();
  v44 = v61;
  *(v43 + 16) = v60;
  *(v43 + 24) = v44;
  type metadata accessor for Transaction();
  v45 = v59;
  sub_10067B9CC(v25, v59, type metadata accessor for AccessoryCommand);
  v46 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v47 = (v58 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_10067B810(v45, v48 + v46, type metadata accessor for AccessoryCommand);
  *(v48 + v47) = v62;
  v49 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v49 = sub_100680F90;
  v49[1] = v43;

  static Transaction.asyncTask(name:block:)();

  return sub_10067BA34(v25, type metadata accessor for AccessoryCommand);
}

uint64_t sub_10067AF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a3;
  v61 = a4;
  v53 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v51 - v12;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = type metadata accessor for AccessoryCommand();
  v57 = *(v20 - 1);
  v21 = *(v57 + 64);
  v22 = __chkstk_darwin(v20);
  v58 = v23;
  v59 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v51 - v24;
  v26 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v51 - v28;
  v30 = *(v4 + 184);
  v62 = v5;
  v54 = a1;
  if (v30)
  {

    sub_100AA33AC(a1, v29);

    v31 = type metadata accessor for OwnedBeaconRecord();
    if ((*(*(v31 - 8) + 48))(v29, 1, v31) != 1)
    {
      v51 = sub_100D60CD0();
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
      if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
      {
        v52 = 1;
      }

      else
      {
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10067BA34(v29, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_12;
    }

    sub_10000B3A8(v29, &unk_1016A9A20, &qword_10138B280);
  }

  v52 = 0;
LABEL_12:
  v37 = v56;
  v38 = *(v8 + 16);
  v38(v19, v53, v7);
  (*(v8 + 56))(v19, 0, 1, v7);
  v39 = v55;
  v38(v55, v54, v7);
  sub_1000D2A70(v19, v17, &qword_1016980D0, &unk_10138F3B0);
  v40 = *(v8 + 48);
  if (v40(v17, 1, v7) == 1)
  {
    UUID.init()();
    sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
    if (v40(v17, 1, v7) != 1)
    {
      sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
    (*(v8 + 32))(v37, v17, v7);
  }

  v41 = *(v8 + 32);
  v41(v25, v37, v7);
  v41(&v25[v20[5]], v39, v7);
  v42 = &v25[v20[6]];
  *v42 = xmmword_1013B5EB0;
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 2) = xmmword_10139BF70;
  v25[v20[7]] = v52 & 1;
  v25[v20[8]] = 1;
  v43 = swift_allocObject();
  v44 = v61;
  *(v43 + 16) = v60;
  *(v43 + 24) = v44;
  type metadata accessor for Transaction();
  v45 = v59;
  sub_10067B9CC(v25, v59, type metadata accessor for AccessoryCommand);
  v46 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v47 = (v58 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_10067B810(v45, v48 + v46, type metadata accessor for AccessoryCommand);
  *(v48 + v47) = v62;
  v49 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v49 = sub_10067B5A4;
  v49[1] = v43;

  static Transaction.asyncTask(name:block:)();

  return sub_10067BA34(v25, type metadata accessor for AccessoryCommand);
}

uint64_t sub_10067B5AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (((a5 >> 59) & 6 | ((a2 & 0x2000000000000000) != 0)) == 3)
  {
    sub_100016590(result, a2 & 0xDFFFFFFFFFFFFFFFLL);

    return sub_100016590(a4, a5 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_10067B60C()
{
  v2 = *(type metadata accessor for AccessoryCommand() - 8);
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

  return sub_100661D40(v0 + v3, v5, v7, v8);
}

uint64_t sub_10067B730()
{
  v1 = *(type metadata accessor for AccessoryCommand() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = (v0 + v2);
  v6 = *(v0 + 16);
  return sub_100664DCC(v3, v5, *v4, *(v4 + 8));
}

uint64_t type metadata accessor for OwnerCommandManager.Error()
{
  result = qword_1016A7550;
  if (!qword_1016A7550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10067B810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10067B878()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 32) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1006634C0(v6, v7, v0 + v4, v0 + v5, v9, v10);
}

uint64_t sub_10067B91C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_100663F1C(a1, v1 + v5, v1 + v7, v9, v10);
}

uint64_t sub_10067B9CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10067BA34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10067BA94()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  v8 = (v5 + v1[8]);
  v9 = v8[5];
  sub_10067B5AC(*v8, v8[1], v8[2], v8[3], v8[4]);
  v10 = *(v0 + v3);

  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10067BBDC()
{
  v2 = *(type metadata accessor for AccessoryCommand() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014650;

  return sub_100661D40(v0 + v3, v5, v7, v8);
}

uint64_t sub_10067BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v45 = a4;
  v46 = a6;
  v43 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177B380);
  v18 = v10[2];
  v47 = a1;
  v18(v16, a1, v9);
  v18(v14, a2, v9);
  swift_errorRetain();
  v19 = a3;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v44 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49[0] = v42;
    *v23 = 141558787;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v40 = sub_100003E44(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v41 = v21;
    v27 = v10[1];
    v27(v16, v9);
    v28 = sub_1000136BC(v24, v26, v49);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2082;
    v48 = v19;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v29 = String.init<A>(describing:)();
    v31 = sub_1000136BC(v29, v30, v49);

    *(v23 + 24) = v31;
    *(v23 + 32) = 2082;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v27(v14, v9);
    v35 = sub_1000136BC(v32, v34, v49);

    *(v23 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v20, v41, v43, v23, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v36 = v10[1];
    v36(v14, v9);
    v36(v16, v9);
  }

  My = type metadata accessor for Feature.FindMy();
  v49[3] = My;
  v49[4] = sub_100003E44(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v38 = sub_1000280DC(v49);
  (*(*(My - 8) + 104))(v38, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v49);
  result = v47;
  if (My)
  {
    return v46(v47, v44);
  }

  return result;
}

unint64_t sub_10067C180()
{
  result = qword_1016A72B8;
  if (!qword_1016A72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A72B8);
  }

  return result;
}

unint64_t sub_10067C1D4()
{
  result = qword_1016A72C0;
  if (!qword_1016A72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A72C0);
  }

  return result;
}

unint64_t sub_10067C228()
{
  result = qword_1016A72C8;
  if (!qword_1016A72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A72C8);
  }

  return result;
}

unint64_t sub_10067C27C()
{
  result = qword_1016A72D0;
  if (!qword_1016A72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A72D0);
  }

  return result;
}

void *sub_10067C33C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0xD000000000000013;
  *(v3 + 24) = 0x80000001013B5F90;
  type metadata accessor for OwnerCommandManagerAccessController();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v14 + 112) = 0;
  *(v3 + 32) = v14;
  *(v3 + 48) = 0;
  swift_unknownObjectWeakInit();
  v24[1] = sub_1000BC488();
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v3 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 80) = &_swiftEmptySetSingleton;
  *(v3 + 88) = _swiftEmptyDictionarySingleton;
  *(v3 + 96) = 0;
  *(v3 + 104) = _swiftEmptyDictionarySingleton;
  *(v3 + 112) = _swiftEmptyDictionarySingleton;
  *(v3 + 120) = _swiftEmptyDictionarySingleton;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = _swiftEmptyArrayStorage;
  *(v3 + 152) = xmmword_10138BBF0;
  *(v3 + 168) = _swiftEmptyArrayStorage;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177B048);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "init", v18, 2u);
  }

  v19 = v4[23];
  v4[23] = v25;

  v20 = v27;
  v4[7] = v26;
  v4[8] = v20;
  v21 = qword_101694FA8;

  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v28 = 0x7365547265646E75;
  v29 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  return v4;
}

uint64_t sub_10067C7A0(uint64_t a1)
{
  v1[6] = a1;
  v2 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v14 = type metadata accessor for CentralManager.State();
  v1[20] = v14;
  v15 = *(v14 - 8);
  v1[21] = v15;
  v16 = *(v15 + 64) + 15;
  v1[22] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10067CA78, 0, 0);
}

uint64_t sub_10067CA78()
{
  v1 = v0[23];
  v0[24] = type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v2 = type metadata accessor for CentralManager.Options();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  static CentralManager.Options.allowDuplicates.getter();
  static CentralManager.Options.enableFindMy.getter();
  v0[4] = v6;
  sub_100003E44(&unk_1016C1210, &type metadata accessor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 56))(v1, 0, 1, v2);
  v7 = async function pointer to CentralManager.__allocating_init(options:)[1];
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_10067CCB4;
  v9 = v0[23];

  return CentralManager.__allocating_init(options:)(v9);
}

uint64_t sub_10067CCB4(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_10067CDB4, 0, 0);
}

uint64_t sub_10067CDB4()
{
  (*(v0[21] + 104))(v0[22], enum case for CentralManager.State.poweredOn(_:), v0[20]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[27] = v2;
  v3 = sub_100003E44(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_10067CEB0;
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[22];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_10067CEB0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {
    v5 = sub_10067EC80;
  }

  else
  {
    v5 = sub_10067D018;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10067D018()
{
  v1 = v0[6];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v0[29] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[30] = v6;
  *(v6 + 16) = xmmword_101385D80;
  v7 = *(v3 + 16);
  v0[31] = v7;
  v0[32] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v6 + v5, v1, v2);
  v8 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:) + 1);
  v12 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:));
  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_10067D198;
  v10 = v0[26];

  return v12(v6);
}

uint64_t sub_10067D198(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v8 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = sub_10067ED60;
  }

  else
  {
    v6 = v3[30];

    v5 = sub_10067D2B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10067D2B4()
{
  v1 = v0[34];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v14 = v0[34];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v36 = v0[34];
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v37 = v0[34];
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[34] + 32);

LABEL_6:
      v0[36] = v2;
      v4 = v0[18];
      v3 = v0[19];

      v5 = enum case for ConnectUseCase.findMyAction(_:);
      v6 = type metadata accessor for ConnectUseCase();
      v7 = *(v6 - 8);
      (*(v7 + 104))(v3, v5, v6);
      (*(v7 + 56))(v3, 0, 1, v6);
      v8 = type metadata accessor for Peripheral.Options();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      v9 = *(&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + 1);
      v38 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
      v10 = swift_task_alloc();
      v0[37] = v10;
      *v10 = v0;
      v10[1] = sub_10067D6AC;
      v11 = v0[18];
      v12 = v0[19];

      return v38(v12, v11);
    }

    __break(1u);
    goto LABEL_20;
  }

  v15 = v0[34];

  if (qword_101694828 != -1)
  {
LABEL_20:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B048);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Missing peripheral to read TX power!", v19, 2u);
  }

  v21 = v0[31];
  v20 = v0[32];
  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[6];

  type metadata accessor for OwnerCommandManager.Error();
  sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
  swift_allocError();
  v21(v25, v24, v22);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v27 = v0[22];
  v26 = v0[23];
  v29 = v0[18];
  v28 = v0[19];
  v31 = v0[16];
  v30 = v0[17];
  v32 = v0[13];
  v33 = v0[10];
  v34 = v0[7];

  v35 = v0[1];

  return v35();
}

uint64_t sub_10067D6AC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 152);
  sub_10000B3A8(*(v2 + 144), &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v6 = sub_10067EE4C;
  }

  else
  {
    v6 = sub_10067D81C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10067D81C()
{
  v19 = v0;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v2, qword_10177B048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[36];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[5] = v5;
    type metadata accessor for Peripheral();
    sub_100003E44(&qword_1016972D0, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connected to peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = v0[17];
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v12 = *(&async function pointer to dispatch thunk of Peripheral.subscript.getter + 1);
  v17 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
  v13 = swift_task_alloc();
  v0[40] = v13;
  *v13 = v0;
  v13[1] = sub_10067DA7C;
  v14 = v0[36];
  v15 = v0[17];

  return v17(v15);
}

uint64_t sub_10067DA7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_10067EF38;
  }

  else
  {
    v5 = sub_10067DB90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10067DB90()
{
  v25 = v0;
  v1 = v0[39];
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v8 = 136315138;
    sub_1000041A4(&qword_1016A74D8, &qword_101697248, &qword_1013DC4D0);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v12 = *(v6 + 8);
    v12(v5, v7);
    v13 = sub_1000136BC(v9, v11, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered TX Power service: %s", v8, 0xCu);
    sub_100007BAC(v22);
  }

  else
  {

    v12 = *(v6 + 8);
    v12(v5, v7);
  }

  v0[43] = v12;
  v14 = v0[9];
  sub_1000BC4D4(&qword_1016A74C8, &unk_1013B6248);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v0[44] = v17;
  *(v17 + 16) = xmmword_101385D80;
  v0[45] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v18 = *(&async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:) + 1);
  v23 = (&async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:) + async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:));
  v19 = swift_task_alloc();
  v0[46] = v19;
  *v19 = v0;
  v19[1] = sub_10067DE2C;
  v20 = v0[41];

  return v23(v17);
}

uint64_t sub_10067DE2C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 352);

  if (v0)
  {
    v6 = sub_10067F044;
  }

  else
  {

    v6 = sub_10067DF78;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10067DF78()
{
  v1 = v0[39];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered TX Power characteristic", v4, 2u);
  }

  v5 = v0[45];
  v6 = v0[10];

  Identifier.init(stringLiteral:)();
  v7 = *(&async function pointer to dispatch thunk of Service.subscript.getter + 1);
  v12 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_10067E0C0;
  v9 = v0[41];
  v10 = v0[10];

  return v12(v10);
}

uint64_t sub_10067E0C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[8];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);

    return _swift_task_switch(sub_10067F160, 0, 0);
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v10 = *(&async function pointer to dispatch thunk of Characteristic.read() + 1);
    v14 = (&async function pointer to dispatch thunk of Characteristic.read() + async function pointer to dispatch thunk of Characteristic.read());
    v11 = swift_task_alloc();
    v4[51] = v11;
    *v11 = v6;
    v11[1] = sub_10067E2BC;
    v12 = v4[13];

    return v14(v12);
  }
}

uint64_t sub_10067E2BC()
{
  v2 = *(*v1 + 408);
  v3 = *v1;
  v3[52] = v0;

  if (v0)
  {
    v4 = v3[49];

    return _swift_task_switch(sub_10067F27C, 0, 0);
  }

  else
  {
    v5 = v3[49];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[53] = v7;
    v8 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v7 = v3;
    v7[1] = sub_10067E488;
    v9 = v3[13];
    v10 = v3[11];

    return AsyncSequence.first()(v3 + 2, v10, v8);
  }
}

uint64_t sub_10067E488()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v5 = sub_10067F398;
  }

  else
  {
    v5 = sub_10067E5F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10067E5F0()
{
  v73 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 312);
  if (v1 >> 60 == 15)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to read TX Power characteristic", v5, 2u);
    }

    v6 = *(v0 + 344);
    v7 = *(v0 + 328);
    v8 = *(v0 + 288);
    v9 = *(v0 + 208);
    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);

    type metadata accessor for OwnerCommandManager.Error();
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v6(v10, v11);
LABEL_11:
    v36 = *(v0 + 176);
    v35 = *(v0 + 184);
    v38 = *(v0 + 144);
    v37 = *(v0 + 152);
    v40 = *(v0 + 128);
    v39 = *(v0 + 136);
    v41 = *(v0 + 104);
    v42 = *(v0 + 80);
    v43 = *(v0 + 56);

    v44 = *(v0 + 8);

    return v44();
  }

  v13 = *(v0 + 16);
  sub_100017D5C(v13, *(v0 + 24));
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_100006654(v13, v1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v72[0] = v17;
    *v16 = 136315138;
    v18 = Data.hexString.getter();
    v20 = sub_1000136BC(v18, v19, v72);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Read raw TX Power %s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  v21 = *(v0 + 56);
  sub_100017D5C(v13, v1);
  static Endianness.current.getter();
  sub_100680B90();
  FixedWidthInteger.init(data:ofEndianness:)();
  v22 = *(v0 + 312);
  if (*(v0 + 441))
  {
    sub_100017D5C(v13, v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_100006654(v13, v1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v72[0] = v26;
      *v25 = 136315138;
      v27 = Data.hexString.getter();
      v29 = sub_1000136BC(v27, v28, v72);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Invalid TX Power: %s!", v25, 0xCu);
      sub_100007BAC(v26);
    }

    v30 = *(v0 + 328);
    v31 = *(v0 + 288);
    v32 = *(v0 + 208);
    v68 = *(v0 + 136);
    v70 = *(v0 + 344);
    v34 = *(v0 + 112);
    v33 = *(v0 + 120);
    type metadata accessor for OwnerCommandManager.Error();
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100006654(v13, v1);

    v70(v68, v34);
    goto LABEL_11;
  }

  v46 = *(v0 + 440);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 208);
  v71 = v46;
  if (v49)
  {
    v51 = *(v0 + 328);
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "Read TX Power %ld", v52, 0xCu);

    sub_100006654(v13, v1);
    v53 = 288;
  }

  else
  {
    v54 = *(v0 + 288);

    sub_100006654(v13, v1);

    v53 = 328;
  }

  v55 = *(v0 + v53);
  v56 = *(v0 + 344);
  v57 = *(v0 + 176);
  v58 = *(v0 + 184);
  v60 = *(v0 + 144);
  v59 = *(v0 + 152);
  v62 = *(v0 + 128);
  v61 = *(v0 + 136);
  v63 = *(v0 + 112);
  v64 = *(v0 + 120);
  v66 = *(v0 + 104);
  v67 = *(v0 + 80);
  v69 = *(v0 + 56);

  v56(v61, v63);

  v65 = *(v0 + 8);

  return v65(v71);
}

uint64_t sub_10067EC80()
{
  v1 = v0[26];

  v2 = v0[28];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10067ED60()
{
  v1 = v0[30];
  v2 = v0[26];

  v3 = v0[35];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10067EE4C()
{
  v1 = v0[36];
  v2 = v0[26];

  v3 = v0[38];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10067EF38()
{
  v1 = v0[36];
  v2 = v0[26];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];

  (*(v5 + 8))(v3, v4);
  v6 = v0[42];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[18];
  v9 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10067F044()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[36];
  v4 = v0[26];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  v1(v5, v6);
  v8 = v0[47];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[18];
  v11 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10067F160()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[36];
  v4 = v0[26];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  v1(v5, v6);
  v8 = v0[50];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[18];
  v11 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10067F27C()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[36];
  v4 = v0[26];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  v1(v5, v6);
  v8 = v0[52];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[18];
  v11 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10067F398()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[36];
  v4 = v0[26];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  v1(v5, v6);
  v8 = v0[54];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[18];
  v11 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10067F4BC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((~(a2 & a5) & 0x3000000000000000) != 0)
  {
    return sub_10067F4FC(result, a2, a3, a4, a5, a6, sub_100017D5C);
  }

  return result;
}

uint64_t sub_10067F4FC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(unint64_t, unint64_t))
{
  v7 = (a5 >> 58) & 0xC | (a2 >> 60) & 3;
  if (v7 <= 5)
  {
    if (v7 == 1)
    {
      v15 = a7;
      a7(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v12 = a3;
      v11 = a4;
    }

    else
    {
      if (v7 != 5)
      {
        return result;
      }

      v15 = a7;
      a7(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v11 = a5 & 0xCFFFFFFFFFFFFFFFLL;
      v12 = a4;
    }

    return v15(v12, v11);
  }

  else if (v7 == 6 || v7 == 7 || v7 == 9)
  {
    v8 = a2 & 0xCFFFFFFFFFFFFFFFLL;

    return a7(result, v8);
  }

  return result;
}

uint64_t sub_10067F5FC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((~(a2 & a5) & 0x3000000000000000) != 0)
  {
    return sub_10067F4FC(result, a2, a3, a4, a5, a6, sub_100016590);
  }

  return result;
}

uint64_t sub_10067F63C(void (*a1)(_BYTE *))
{
  v3[0] = *(v1 + 16);
  v3[41] = 0;
  a1(v3);
  return sub_10000B3A8(v3, &qword_1016A72B0, &qword_1013B60A8);
}

uint64_t sub_10067F6B8(const char *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  return sub_100677D48(*(v2 + 16), v2 + ((v6 + 24) & ~v6), v2 + ((*(v5 + 64) + v6 + ((v6 + 24) & ~v6)) & ~v6), a1, a2);
}

uint64_t sub_10067F75C()
{
  v1 = *(type metadata accessor for AccessoryCommand() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_100677AB8(v2, v3, v4);
}

uint64_t sub_10067F820(const char *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for AccessoryCommand() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  return sub_100677C1C(*(v2 + 16), v2 + v6, v2 + v9, *(v2 + v9 + *(v8 + 64)), a1, a2);
}

uint64_t sub_10067F93C(const char *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for AccessoryCommand() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  return sub_100677B80(*(v2 + 16), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a1, a2);
}

uint64_t sub_10067FA18()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64) + v6;
  v8 = *(v0 + 16);

  v9 = v0 + v2;
  v10 = *(v5 + 8);
  v10(v9, v4);
  v10(v9 + v1[7], v4);
  v11 = (v9 + v1[8]);
  v12 = v11[5];
  sub_10067B5AC(*v11, v11[1], v11[2], v11[3], v11[4]);
  v10(v0 + v6, v4);

  return _swift_deallocObject(v0, v7 + 1);
}

uint64_t sub_10067FBD8(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_10067FBEC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_10067FC04()
{
  type metadata accessor for AccessoryCommand();
  v1 = *(v0 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10067FC48()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);

  v9 = v0 + v2;
  v10 = *(v5 + 8);
  v10(v9, v4);
  v10(v9 + v1[7], v4);
  v11 = (v9 + v1[8]);
  v12 = v11[5];
  sub_10067B5AC(*v11, v11[1], v11[2], v11[3], v11[4]);
  v10(v0 + v6, v4);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_10067FDE4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_10067FF18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100678910(*a1, *(a1 + 8), 0);
  *a2 = result;
  return result;
}

uint64_t sub_10067FF4C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryCommand() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1006713D4(a1, v6, v7, a2);
}

uint64_t sub_10067FFD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_100677DD8(a1, v4);
  *a2 = result;
  return result;
}

uint64_t sub_100680000(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(type metadata accessor for AccessoryCommand() - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100671504(a1, *(v1 + 16), *(v1 + 24), v1 + v5, v1 + v7, v1 + v9, *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100680174@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100678910(*a1, *(a1 + 8), 1);
  *a2 = result;
  return result;
}

uint64_t sub_1006801A8()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v6(v0 + v2 + v1[7], v5);
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[5];
  sub_10067B5AC(*v7, v7[1], v7[2], v7[3], v7[4]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1006802D0@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryCommand() - 8);
  v6 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));
  v7 = *(v2 + 16);
  return sub_100671EB4(a1, v6, a2);
}

uint64_t sub_10068034C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(type metadata accessor for AccessoryCommand() - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10066F264(a1, v11, v12, v1 + v5, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_100680474(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_10067FBEC(a1, a2);
  }

  return a1;
}

uint64_t sub_1006804BC(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryCommand() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_10066D7E0(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100680584(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryCommand() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_10066B8E4(a1, v5, v6, v10, v1 + v4, v8, v9);
}

uint64_t sub_10068062C()
{
  v1 = *(type metadata accessor for AccessoryCommand() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10066C474(v2, v4, v3, v5);
}

uint64_t sub_1006806D4(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryCommand() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  return sub_10066958C(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), v1 + v8, v1 + ((*(v6 + 64) + v7 + v8) & ~v7), *(v1 + ((*(v6 + 64) + ((*(v6 + 64) + v7 + v8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10068084C(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryCommand() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1 + ((*(v6 + 64) + v7 + v8) & ~v7);

  return sub_1006670BC(a1, v9, v10, v11, v12, v1 + v4, v1 + v8, v13);
}

uint64_t sub_100680954(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1006809A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100661C14(a1, v5, v4);
}

uint64_t sub_100680A50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10065CC10();
}

uint64_t sub_100680A98(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryCommand() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_10065C0F4(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100680B90()
{
  result = qword_1016A74D0;
  if (!qword_1016A74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A74D0);
  }

  return result;
}

uint64_t sub_100680BE4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_10065A980();
}

uint64_t sub_100680C14()
{
  v1 = sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_100680DB8()
{
  sub_100680E78(319, &qword_1016A7560, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_100680E78(319, &qword_10169E968, sub_10038C384);
    if (v1 <= 0x3F)
    {
      sub_100680EC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100680E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_100680EC4()
{
  result = qword_1016A7568;
  if (!qword_1016A7568)
  {
    result = &type metadata for AccessoryCommandResponse.RawResponseStatus;
    atomic_store(&type metadata for AccessoryCommandResponse.RawResponseStatus, &qword_1016A7568);
  }

  return result;
}

uint64_t sub_100680F98(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v10 = v9;
  v52 = a6;
  v53 = a7;
  v51 = a5;
  v55 = a4;
  v38 = a2;
  v50 = a9;
  v14 = type metadata accessor for OnConflict();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Insert();
  v19 = *(*(v40 - 8) + 64);
  result = __chkstk_darwin(v40);
  v46 = a8 & 1;
  v45 = a3 + 32;
  v54 = *(a3 + 16);
  v43 = (v15 + 8);
  v44 = (v15 + 104);
  v39 = (v22 + 8);
  v42 = enum case for OnConflict.replace(_:);
  v41 = xmmword_10138C0D0;
  v48 = v18;
  v49 = v14;
  v47 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v23 = a1 - v55;
    if (a1 < v55)
    {
      break;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v23 >= v54)
    {
      goto LABEL_24;
    }

    v58 = v10;
    v24 = (v45 + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    (*v44)(v18, v42, v14);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v27 = *(type metadata accessor for Setter() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    *(swift_allocObject() + 16) = v41;
    sub_100017D5C(v26, v25);
    if (qword_101694588 != -1)
    {
      swift_once();
    }

    v30 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v30, qword_10177A930);
    type metadata accessor for UUID();
    <- infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v30, qword_10177A948);
    <- infix<A>(_:_:)();
    if (qword_1016945A0 != -1)
    {
      swift_once();
    }

    v31 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    sub_1000076D4(v31, qword_10177A978);
    LOBYTE(v56) = v46;
    sub_100028088();
    <- infix<A>(_:_:)();
    v18 = v48;
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v32 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v32, qword_10177A960);
    v56 = a1;
    sub_100029580();
    <- infix<A>(_:_:)();
    if (qword_1016945A8 != -1)
    {
      swift_once();
    }

    v33 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v33, qword_10177A990);
    v56 = v26;
    v57 = v25;
    sub_100017D5C(v26, v25);
    <- infix<A>(_:_:)();
    sub_100016590(v56, v57);
    type metadata accessor for Table();
    v34 = v47;
    QueryType.insert(or:_:)();

    v14 = v49;
    (*v43)(v18, v49);
    v35 = v58;
    Connection.run(_:)();
    v10 = v35;
    if (v35)
    {
      (*v39)(v34, v40);
      return sub_100016590(v26, v25);
    }

    (*v39)(v34, v40);
    result = sub_100016590(v26, v25);
    if (v38 == a1)
    {
      return result;
    }

    if (__CFADD__(a1++, 1))
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100681580(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v39 = a8;
  v31 = a6;
  v32 = a7;
  v30 = a4;
  v29 = a3;
  v35 = a1;
  v9 = type metadata accessor for OnConflict();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Insert();
  v36 = *(v38 - 8);
  v14 = *(v36 + 64);
  __chkstk_darwin(v38);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v13;
  v34 = v10;
  v17 = *(v10 + 104);
  v37 = v9;
  v17(v13, enum case for OnConflict.replace(_:), v9);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v18 = *(type metadata accessor for Setter() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_10138C0D0;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v21, qword_10177A930);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177A948);
  <- infix<A>(_:_:)();
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v22, qword_10177A978);
  LOBYTE(v40) = v30 & 1;
  sub_100028088();
  <- infix<A>(_:_:)();
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v23, qword_10177A960);
  v24 = a5[4];
  sub_1000035D0(a5, a5[3]);
  v25 = *(v24 + 56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v42 = v40;
  sub_100029580();
  <- infix<A>(_:_:)();
  if (qword_1016945B0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v26, qword_10177A9A8);
  v40 = v31;
  v41 = v32;
  sub_100017D5C(v31, v32);
  <- infix<A>(_:_:)();
  sub_100016590(v40, v41);
  type metadata accessor for Table();
  v27 = v33;
  QueryType.insert(or:_:)();

  (*(v34 + 8))(v27, v37);
  Connection.run(_:)();
  return (*(v36 + 8))(v16, v38);
}

uint64_t sub_100681AA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v35 = a8;
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v26 = a4;
  v25[1] = a3;
  v31 = a1;
  v8 = type metadata accessor for OnConflict();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Insert();
  v32 = *(v34 - 8);
  v13 = *(v32 + 64);
  __chkstk_darwin(v34);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v9;
  v16 = *(v9 + 104);
  v33 = v8;
  v16(v12, enum case for OnConflict.replace(_:), v8);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v17 = *(type metadata accessor for Setter() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_10138C0D0;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v20, qword_10177A930);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177A948);
  <- infix<A>(_:_:)();
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v21, qword_10177A978);
  LOBYTE(v36) = v26 & 1;
  sub_100028088();
  <- infix<A>(_:_:)();
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v22, qword_10177A960);
  v36 = v27;
  sub_100029580();
  <- infix<A>(_:_:)();
  if (qword_1016945B0 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v23, qword_10177A9A8);
  v36 = v28;
  v37 = v29;
  sub_100017D5C(v28, v29);
  <- infix<A>(_:_:)();
  sub_100016590(v36, v37);
  type metadata accessor for Table();
  QueryType.insert(or:_:)();

  (*(v30 + 8))(v12, v33);
  Connection.run(_:)();
  return (*(v32 + 8))(v15, v34);
}

uint64_t sub_100681FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Connection.TransactionMode();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_1006820C4, v5, 0);
}

uint64_t sub_1006820C4()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = *(v0 + 80);
      v24 = *(v0 + 88);
      v9 = *(v0 + 72);
      v10 = *(v0 + 40);
      v22 = *(v0 + 48);
      v23 = *(v0 + 64);
      v11 = *(v0 + 32);
      v21 = *(v0 + 16);
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_connectionKeys);
      v12 = swift_task_alloc();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v11;
      *(v12 + 48) = v6;
      *(v12 + 56) = v21;
      *(v12 + 72) = v5;
      (*(v9 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v23);
      Connection.transaction(_:block:)();
      (*(v9 + 8))(v8, v23);

      (*(v7 + 8))(v6, v24);
      v13 = *(v0 + 104);
      v14 = *(v0 + 80);

      v15 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    swift_willThrow();
  }

  v18 = *(v0 + 104);
  v19 = *(v0 + 80);

  v15 = *(v0 + 8);
LABEL_7:

  return v15();
}

uint64_t sub_10068232C(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v51 = a4;
  v35 = a2;
  v12 = type metadata accessor for OnConflict();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Insert();
  v17 = *(*(v37 - 8) + 64);
  result = __chkstk_darwin(v37);
  v41 = (v13 + 104);
  v42 = a3 + 32;
  v40 = (v13 + 8);
  v50 = *(a3 + 16);
  v36 = (v20 + 8);
  v39 = enum case for OnConflict.replace(_:);
  v38 = xmmword_101391790;
  v44 = v16;
  v45 = v12;
  v43 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v21 = a1 - v51;
    if (a1 < v51)
    {
      break;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    if (v21 >= v50)
    {
      goto LABEL_22;
    }

    v54 = v9;
    v22 = (v42 + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    (*v41)(v16, v39, v12);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v25 = *(type metadata accessor for Setter() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    *(swift_allocObject() + 16) = v38;
    sub_100017D5C(v24, v23);
    if (qword_101694588 != -1)
    {
      swift_once();
    }

    v28 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v28, qword_10177A930);
    type metadata accessor for UUID();
    <- infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v28, qword_10177A948);
    <- infix<A>(_:_:)();
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v29 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v29, qword_10177A960);
    v52 = a1;
    sub_100029580();
    <- infix<A>(_:_:)();
    v16 = v44;
    if (qword_1016945B8 != -1)
    {
      swift_once();
    }

    v30 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v30, qword_10177A9C0);
    v52 = v24;
    v53 = v23;
    sub_100017D5C(v24, v23);
    <- infix<A>(_:_:)();
    sub_100016590(v52, v53);
    type metadata accessor for Table();
    v31 = v43;
    QueryType.insert(or:_:)();

    v12 = v45;
    (*v40)(v16, v45);
    v32 = v54;
    Connection.run(_:)();
    v9 = v32;
    if (v32)
    {
      (*v36)(v31, v37);
      return sub_100016590(v24, v23);
    }

    (*v36)(v31, v37);
    result = sub_100016590(v24, v23);
    if (v35 == a1)
    {
      return result;
    }

    if (__CFADD__(a1++, 1))
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100682874(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100682A2C, v2, 0);
}

uint64_t sub_100682A2C()
{
  v1 = v0[4];
  if (!*(v1 + 112))
  {
    sub_10020223C();
    swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
LABEL_10:
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[15];
    v29 = v0[11];
    v28 = v0[12];
    v30 = v0[10];
    v31 = v0[7];

    v22 = v0[1];
    goto LABEL_11;
  }

  v2 = *(v1 + 112);

  v3 = sub_1002072CC();
  if (!v3)
  {
    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v37 = v3;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v5 = v0[2];
  v6 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v6, qword_10177A930);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v43 = v0[17];
  v40 = v0[15];
  v41 = v0[16];
  v7 = v0[12];
  v42 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  v35 = v0[7];
  v36 = v0[14];
  v33 = v0[6];
  v34 = v0[5];
  v38 = v0[2];
  v39 = v0[3];
  sub_1000076D4(v6, qword_10177A948);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v12 = *(v10 + 8);
  v12(v8, v11);
  v12(v9, v11);
  QueryType.filter(_:)();
  v12(v7, v11);
  == infix<A>(_:_:)();
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v12(v8, v11);
  v12(v9, v11);
  QueryType.filter(_:)();
  v12(v7, v11);
  == infix<A>(_:_:)();
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v12(v8, v11);
  v12(v9, v11);
  QueryType.filter(_:)();
  v12(v7, v11);
  v13 = swift_task_alloc();
  v13[2] = v37;
  v13[3] = v43;
  v13[4] = v41;
  v13[5] = v40;
  (*(v33 + 104))(v35, enum case for Connection.TransactionMode.deferred(_:), v34);
  Connection.transaction(_:block:)();
  (*(v33 + 8))(v35, v34);

  v14 = *(v36 + 8);
  v14(v40, v42);
  v14(v41, v42);
  v14(v43, v42);
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[10];
  v21 = v0[7];

  v22 = v0[1];
LABEL_11:

  return v22();
}

uint64_t sub_100683018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a4;
  v19[3] = a3;
  v5 = type metadata accessor for Delete();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v19 - v12;
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  type metadata accessor for Table();
  QueryType.delete()();
  Connection.run(_:)();
  if (v4)
  {
    return (*(v6 + 8))(v15, v5);
  }

  v17 = v15;
  v18 = *(v6 + 8);
  v18(v17, v5);
  QueryType.delete()();
  Connection.run(_:)();
  v18(v13, v5);
  QueryType.delete()();
  Connection.run(_:)();
  return (v18)(v10, v5);
}

uint64_t sub_10068321C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000BC4D4(&qword_101697700, &unk_10139FB90);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[13] = v9;
  *v9 = v2;
  v9[1] = sub_100683394;

  return sub_100684378();
}

uint64_t sub_100683394(uint64_t a1)
{
  v3 = *(*v2 + 104);
  v4 = *v2;
  v4[14] = a1;

  if (v1)
  {
    v6 = v4[11];
    v5 = v4[12];
    v8 = v4[7];
    v7 = v4[8];
    v9 = v4[6];

    v10 = v4[1];

    return v10();
  }

  else
  {
    v12 = v4[3];

    return _swift_task_switch(sub_100683510, v12, 0);
  }
}

uint64_t sub_100683510()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v1 + 32);
  *(v0 + 256) = v3;
  v4 = -1;
  v5 = -1 << v3;
  v6 = *(v1 + 56);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  *(v0 + 120) = _swiftEmptyArrayStorage;
  *(v0 + 128) = _swiftEmptyArrayStorage;
  v7 = v4 & v6;
  if (v7)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 136) = v7;
    *(v0 + 144) = v8;
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    v13 = *(v0 + 72);
    v14 = *(v1 + 48) + *(v2 + 72) * (__clz(__rbit64(v7)) | (v8 << 6));
    v15 = *(v2 + 16);
    *(v0 + 152) = v15;
    *(v0 + 160) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v12, v14, v13);
    (*(v2 + 32))(v11, v12, v13);
    v16 = swift_task_alloc();
    *(v0 + 168) = v16;
    *v16 = v0;
    v16[1] = sub_10068371C;
    v17 = *(v0 + 88);
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    return sub_100685140(v18, v17, 0);
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v1 + 8 * v9++ + 64);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v21 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 56);
    v23 = *(v0 + 64);
    v25 = *(v0 + 48);

    v26 = *(v0 + 8);

    return v26(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10068371C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 168);
  v8 = *v4;
  *(v6 + 176) = a1;
  *(v6 + 184) = a2;

  if (v3)
  {

    *(v6 + 192) = *(v6 + 120);
    v9 = swift_task_alloc();
    *(v6 + 200) = v9;
    *v9 = v8;
    v9[1] = sub_100683A24;
    v10 = *(v6 + 88);
    v11 = *(v6 + 24);
    v12 = *(v6 + 16);

    return sub_100685140(v12, v10, 1);
  }

  else
  {
    v14 = *(v6 + 24);
    *(v6 + 257) = a3;

    return _swift_task_switch(sub_1006838BC, v14, 0);
  }
}

uint64_t sub_1006838BC()
{
  if (*(v0 + 257))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = *(v0 + 120);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = (*(v0 + 64) + *(*(v0 + 32) + 48));
    (*(v0 + 152))();
    *v8 = v3;
    v8[1] = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 120);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_100A5C008(0, v1[2] + 1, 1, *(v0 + 120));
    }

    v11 = v1[2];
    v10 = v1[3];
    if (v11 >= v10 >> 1)
    {
      v1 = sub_100A5C008(v10 > 1, v11 + 1, 1, v1);
    }

    v12 = *(v0 + 64);
    v13 = *(v0 + 40);
    v1[2] = v11 + 1;
    sub_100694CEC(v12, v1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11);
  }

  *(v0 + 192) = v1;
  v14 = swift_task_alloc();
  *(v0 + 200) = v14;
  *v14 = v0;
  v14[1] = sub_100683A24;
  v15 = *(v0 + 88);
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);

  return sub_100685140(v16, v15, 1);
}

uint64_t sub_100683A24(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 200);
  v8 = *v4;
  *(v6 + 208) = a1;
  *(v6 + 216) = a2;

  if (v3)
  {

    *(v6 + 224) = *(v6 + 192);
    v9 = swift_task_alloc();
    *(v6 + 232) = v9;
    *v9 = v8;
    v9[1] = sub_100683D28;
    v10 = *(v6 + 88);
    v11 = *(v6 + 24);
    v12 = *(v6 + 16);

    return sub_100687010(v12, v10);
  }

  else
  {
    v14 = *(v6 + 24);
    *(v6 + 258) = a3;

    return _swift_task_switch(sub_100683BC0, v14, 0);
  }
}

uint64_t sub_100683BC0()
{
  if (*(v0 + 258))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    v4 = *(v0 + 192);
    v5 = *(v0 + 160);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = (*(v0 + 56) + *(*(v0 + 32) + 48));
    (*(v0 + 152))();
    *v8 = v3;
    v8[1] = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 192);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_100A5C008(0, v1[2] + 1, 1, *(v0 + 192));
    }

    v11 = v1[2];
    v10 = v1[3];
    if (v11 >= v10 >> 1)
    {
      v1 = sub_100A5C008(v10 > 1, v11 + 1, 1, v1);
    }

    v12 = *(v0 + 56);
    v13 = *(v0 + 40);
    v1[2] = v11 + 1;
    sub_100694CEC(v12, v1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11);
  }

  *(v0 + 224) = v1;
  v14 = swift_task_alloc();
  *(v0 + 232) = v14;
  *v14 = v0;
  v14[1] = sub_100683D28;
  v15 = *(v0 + 88);
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);

  return sub_100687010(v16, v15);
}

uint64_t sub_100683D28(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 232);
  v9 = *v4;
  *(v7 + 240) = a1;
  *(v7 + 248) = a2;

  v10 = *(v6 + 24);
  if (v3)
  {

    v11 = sub_100684164;
  }

  else
  {
    *(v7 + 259) = a3;
    v11 = sub_100683E78;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100683E78()
{
  if (*(v0 + 259))
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v1 = *(v0 + 128);
  }

  else
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = *(v0 + 160);
    v5 = *(v0 + 128);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = (*(v0 + 48) + *(*(v0 + 32) + 48));
    (*(v0 + 152))();
    *v8 = v3;
    v8[1] = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 128);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_20:
      v1 = sub_100A5C008(0, v1[2] + 1, 1, v1);
    }

    v11 = v1[2];
    v10 = v1[3];
    if (v11 >= v10 >> 1)
    {
      v1 = sub_100A5C008(v10 > 1, v11 + 1, 1, v1);
    }

    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v1[2] = v11 + 1;
    sub_100694CEC(v12, v1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11);
  }

  v14 = *(v0 + 224);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  *(v0 + 120) = v14;
  *(v0 + 128) = v1;
  v17 = (v16 - 1) & v16;
  if (v17)
  {
    v18 = *(v0 + 112);
LABEL_13:
    *(v0 + 136) = v17;
    *(v0 + 144) = v15;
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    v22 = *(v0 + 72);
    v23 = *(v0 + 80);
    v24 = *(v18 + 48) + *(v23 + 72) * (__clz(__rbit64(v17)) | (v15 << 6));
    v25 = *(v23 + 16);
    *(v0 + 152) = v25;
    *(v0 + 160) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v21, v24, v22);
    (*(v23 + 32))(v20, v21, v22);
    v26 = swift_task_alloc();
    *(v0 + 168) = v26;
    *v26 = v0;
    v26[1] = sub_10068371C;
    v27 = *(v0 + 88);
    v28 = *(v0 + 16);
    v29 = *(v0 + 24);

    return sub_100685140(v28, v27, 0);
  }

  else
  {
    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v18 = *(v0 + 112);
      if (v19 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        break;
      }

      v17 = *(v18 + 8 * v19 + 56);
      ++v15;
      if (v17)
      {
        v15 = v19;
        goto LABEL_13;
      }
    }

    v32 = *(v0 + 88);
    v31 = *(v0 + 96);
    v34 = *(v0 + 56);
    v33 = *(v0 + 64);
    v35 = *(v0 + 48);

    v36 = *(v0 + 8);

    return v36(v14, v1);
  }
}

uint64_t sub_100684164()
{
  result = (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v2 = *(v0 + 224);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  *(v0 + 120) = v2;
  v6 = (v4 - 1) & v4;
  if (v6)
  {
    result = *(v0 + 112);
LABEL_7:
    *(v0 + 136) = v6;
    *(v0 + 144) = v3;
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(result + 48) + *(v11 + 72) * (__clz(__rbit64(v6)) | (v3 << 6));
    v13 = *(v11 + 16);
    *(v0 + 152) = v13;
    *(v0 + 160) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v10);
    (*(v11 + 32))(v8, v9, v10);
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_10068371C;
    v15 = *(v0 + 88);
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);

    return sub_100685140(v16, v15, 0);
  }

  else
  {
    while (1)
    {
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 112);
      if (v7 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        break;
      }

      v6 = *(result + 8 * v7 + 56);
      ++v3;
      if (v6)
      {
        v3 = v7;
        goto LABEL_7;
      }
    }

    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 48);

    v23 = *(v0 + 8);

    return v23(v2, v5);
  }
}

uint64_t sub_100684378()
{
  v1[13] = v0;
  v2 = type metadata accessor for Connection.TransactionMode();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1006844AC, v0, 0);
}

uint64_t sub_1006844AC()
{
  v1 = v0[13];
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);

    v3 = sub_100218230();
    if (v3)
    {
      v37 = v3;
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v4 = v0[20];
      v38 = v0[21];
      v33 = v0[19];
      v40 = v0[18];
      v5 = v0[17];
      v34 = v0[15];
      v35 = v0[16];
      v36 = v0[14];
      v6 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      v7 = sub_1000076D4(v6, qword_10177A948);
      v0[5] = v6;
      v8 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
      v0[6] = v8;
      v9 = v8;
      v10 = sub_1000280DC(v0 + 2);
      v11 = *(*(v6 - 8) + 16);
      v11(v10, v7, v6);
      SchemaType.select(_:_:)();
      sub_100007BAC(v0 + 2);
      sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_101385D80;
      *(v12 + 56) = v6;
      *(v12 + 64) = v9;
      v13 = sub_1000280DC((v12 + 32));
      v11(v13, v7, v6);
      v14 = v4;
      QueryType.group(_:)();

      v15 = *(v40 + 8);
      v15(v14, v5);
      v0[10] = v6;
      v0[11] = v9;
      v16 = sub_1000280DC(v0 + 7);
      v11(v16, v7, v6);
      SchemaType.select(_:_:)();
      sub_100007BAC(v0 + 7);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_101385D80;
      *(v17 + 56) = v6;
      *(v17 + 64) = v9;
      v18 = sub_1000280DC((v17 + 32));
      v11(v18, v7, v6);
      QueryType.group(_:)();

      v15(v14, v5);
      v0[12] = &_swiftEmptySetSingleton;
      v19 = swift_task_alloc();
      v19[2] = v37;
      v19[3] = v38;
      v19[4] = v0 + 12;
      v19[5] = v33;
      (*(v34 + 104))(v35, enum case for Connection.TransactionMode.deferred(_:), v36);
      Connection.transaction(_:block:)();
      v20 = v0[21];
      v29 = v0[19];
      v39 = v0[20];
      v30 = v0[17];
      (*(v0[15] + 8))(v0[16], v0[14]);

      v31 = v0[12];
      v15(v29, v30);
      v15(v20, v30);

      v32 = v0[1];

      return v32(v31);
    }

    sub_10020223C();
    swift_allocError();
    *v22 = 2;
    *(v22 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();
  }

  v24 = v0[20];
  v23 = v0[21];
  v25 = v0[19];
  v26 = v0[16];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100684A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v65 = a4;
  v6 = type metadata accessor for UUID();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  v8 = __chkstk_darwin(v6);
  v68 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v78 = v60 - v11;
  v12 = __chkstk_darwin(v10);
  v77 = v60 - v13;
  __chkstk_darwin(v12);
  v15 = v60 - v14;
  v82 = type metadata accessor for Row();
  v67 = *(v82 - 8);
  v16 = v67[8];
  v17 = __chkstk_darwin(v82);
  v63 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v60 - v19;
  v21 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v69 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v60 - v25;
  v27 = type metadata accessor for Table();
  v80 = v27;
  v81 = &protocol witness table for Table;
  v28 = sub_1000280DC(v79);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v31 = v29 + 16;
  v30(v28, a2, v27);
  v66 = a1;
  v32 = v75;
  Connection.prepare(_:)();
  result = sub_100007BAC(v79);
  if (!v32)
  {
    v60[1] = v31;
    v61 = v30;
    v62 = v27;
    v34 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v75 = v34;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v35 = v67;
    v36 = v82;
    v73 = v67[6];
    v74 = v67 + 6;
    if (v73(v26, 1, v82) != 1)
    {
      v53 = v35 + 4;
      v70 = v35[4];
      v71 = (v35 + 4);
      v54 = (v64 + 16);
      v55 = (v64 + 8);
      v72 = (v53 - 3);
      do
      {
        v70(v20, v26, v36);
        if (qword_101694590 != -1)
        {
          swift_once();
        }

        v56 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
        sub_1000076D4(v56, qword_10177A948);
        Row.get<A>(_:)();
        v58 = v77;
        v57 = v78;
        (*v54)(v78, v15, v6);
        sub_100DE8BCC(v58, v57);
        v59 = *v55;
        (*v55)(v58, v6);
        v59(v15, v6);
        v36 = v82;
        (*v72)(v20, v82);
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (v73(v26, 1, v36) != 1);
    }

    v37 = v62;
    v80 = v62;
    v81 = &protocol witness table for Table;
    v38 = sub_1000280DC(v79);
    v61(v38, v65, v37);
    Connection.prepare(_:)();
    sub_100007BAC(v79);
    v39 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v40 = v69;
    v75 = v39;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v41 = v82;
    if (v73(v40, 1, v82) != 1)
    {
      v42 = v67 + 4;
      v43 = v63;
      v44 = (v64 + 16);
      v45 = (v64 + 8);
      v71 = v67[4];
      v72 = (v67 + 1);
      do
      {
        v46 = v42;
        v71(v43, v40, v41);
        if (qword_101694590 != -1)
        {
          swift_once();
        }

        v47 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
        sub_1000076D4(v47, qword_10177A948);
        v48 = v68;
        Row.get<A>(_:)();
        v50 = v77;
        v49 = v78;
        (*v44)(v78, v48, v6);
        sub_100DE8BCC(v50, v49);
        v51 = *v45;
        (*v45)(v50, v6);
        v51(v48, v6);
        v41 = v82;
        (*v72)(v43, v82);
        v40 = v69;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v52 = v73(v40, 1, v41);
        v42 = v46;
      }

      while (v52 != 1);
    }
  }

  return result;
}

uint64_t sub_100685140(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 34) = a3;
  *(v4 + 40) = a1;
  v5 = type metadata accessor for Connection.TransactionMode();
  *(v4 + 64) = v5;
  v6 = *(v5 - 8);
  *(v4 + 72) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  *(v4 + 88) = v8;
  v9 = *(v8 - 8);
  *(v4 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v11 = type metadata accessor for Table();
  *(v4 + 136) = v11;
  v12 = *(v11 - 8);
  *(v4 + 144) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_1006852FC, v3, 0);
}

uint64_t sub_1006852FC()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_100218230();
    if (v4)
    {
      v5 = v4;
      (*(*(v0 + 144) + 16))(*(v0 + 160), v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_nearOwnerKeys, *(v0 + 136));
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v55 = (v0 + 16);
      v6 = *(v0 + 112);
      v7 = *(v0 + 40);
      v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v8, qword_10177A930);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v57 = v5;
      v10 = *(v0 + 112);
      v9 = *(v0 + 120);
      v11 = *(v0 + 96);
      v12 = *(v0 + 104);
      v13 = *(v0 + 88);
      v14 = *(v0 + 48);
      sub_1000076D4(v8, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v15 = *(v11 + 8);
      v15(v12, v13);
      v15(v10, v13);
      if (qword_1016945A0 != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 152);
      v16 = *(v0 + 128);
      v48 = *(v0 + 136);
      v49 = *(v0 + 160);
      v17 = *(v0 + 112);
      v18 = *(v0 + 120);
      v19 = *(v0 + 88);
      v20 = *(v0 + 72);
      v51 = *(v0 + 80);
      v53 = *(v0 + 64);
      v21 = *(v0 + 34);
      v22 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v22, qword_10177A978);
      *(v0 + 33) = v21 & 1;
      sub_100028088();
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v15(v17, v19);
      v15(v18, v19);
      QueryType.filter(_:)();
      v15(v16, v19);
      *v55 = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = 1;
      v23 = swift_task_alloc();
      v23[2] = v57;
      v23[3] = v47;
      v23[4] = v55;
      (*(v20 + 104))(v51, enum case for Connection.TransactionMode.deferred(_:), v53);
      Connection.transaction(_:block:)();
      v24 = *(v0 + 152);
      v25 = *(v0 + 160);
      v26 = *(v0 + 136);
      v27 = *(v0 + 144);
      v50 = *(v0 + 128);
      v52 = *(v0 + 120);
      v54 = *(v0 + 112);
      v56 = *(v0 + 104);
      v39 = *(v0 + 72);
      v40 = *(v0 + 80);
      v41 = *(v0 + 64);

      (*(v39 + 8))(v40, v41);
      v42 = *(v27 + 8);
      v42(v25, v26);

      v43 = *(v0 + 16);
      v44 = *(v0 + 24);
      v45 = *(v0 + 32);
      v42(v24, v26);

      v46 = *(v0 + 8);

      return v46(v43, v44, v45);
    }

    sub_10020223C();
    swift_allocError();
    *v29 = 2;
    *(v29 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v28 = 2;
    *(v28 + 4) = 1;
    swift_willThrow();
  }

  v31 = *(v0 + 152);
  v30 = *(v0 + 160);
  v33 = *(v0 + 120);
  v32 = *(v0 + 128);
  v35 = *(v0 + 104);
  v34 = *(v0 + 112);
  v36 = *(v0 + 80);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1006858D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v6[24] = v10;
  v11 = *(v10 - 8);
  v6[25] = v11;
  v12 = *(v11 + 64) + 15;
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_100685A30, v5, 0);
}

uint64_t sub_100685A30()
{
  v1 = *(v0 + 128);
  if (*(v1 + 112))
  {
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v56 = *(v1 + 112);

    v4 = sub_10002BD40(v3, v2);
    if (qword_101694588 != -1)
    {
      v49 = v4;
      swift_once();
      v4 = v49;
    }

    v5 = v4 & 1;
    v6 = *(v0 + 160);
    v7 = *(v0 + 88);
    v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v8, qword_10177A930);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    sub_1000076D4(v8, qword_10177A948);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v15 = *(v12 + 8);
    v15(v11, v13);
    v15(v10, v13);
    if (qword_1016945A0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 160);
    v19 = *(v0 + 136);
    v20 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    sub_1000076D4(v20, qword_10177A978);
    *(v0 + 216) = v5;
    sub_100028088();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v15(v18, v19);
    v15(v17, v19);
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 208);
    v52 = *(v0 + 200);
    v21 = *(v0 + 184);
    v50 = *(v0 + 192);
    v23 = *(v0 + 168);
    v22 = *(v0 + 176);
    v24 = *(v0 + 136);
    v53 = *(v0 + 128);
    v25 = *(v0 + 112);
    v26 = *(v0 + 120);
    v27 = *(v0 + 104);
    v28 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v28, qword_10177A960);
    v29 = *(v26 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    *(v0 + 80) = *(v0 + 72);
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v15(v23, v24);
    v15(v22, v24);
    QueryType.filter(_:)();
    v15(v21, v24);
    *(v0 + 40) = v50;
    *(v0 + 48) = &protocol witness table for Table;
    v30 = sub_1000280DC((v0 + 16));
    (*(v52 + 16))(v30, v51, v50);
    sub_100686ED8(v0 + 16, &qword_1016A77C0, &qword_1013B6418, sub_100693110);
    v32 = *(v0 + 200);
    v31 = *(v0 + 208);
    v33 = *(v0 + 192);
    v44 = *(v0 + 176);
    v43 = *(v0 + 184);
    v45 = *(v0 + 168);
    v54 = *(v0 + 160);
    v55 = *(v0 + 152);
    sub_100007BAC((v0 + 16));
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v32 + 8))(v31, v33);
    v46 = *(v0 + 56);
    v47 = *(v0 + 64);

    v48 = *(v0 + 8);

    return v48(v46, v47);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v34 = 2;
    *(v34 + 4) = 1;
    swift_willThrow();
    v35 = *(v0 + 208);
    v37 = *(v0 + 176);
    v36 = *(v0 + 184);
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);
    v40 = *(v0 + 152);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_100686048(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 177) = a3;
  *(v4 + 64) = a1;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  *(v4 + 88) = v5;
  v6 = *(v5 - 8);
  *(v4 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v8 = type metadata accessor for Table();
  *(v4 + 136) = v8;
  v9 = *(v8 - 8);
  *(v4 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1006861B4, v3, 0);
}

uint64_t sub_1006861B4()
{
  v1 = *(v0 + 80);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);

    if (sub_100218230())
    {
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 112);
      v4 = *(v0 + 64);
      v5 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v5, qword_10177A930);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 112);
      v6 = *(v0 + 120);
      v8 = *(v0 + 96);
      v9 = *(v0 + 104);
      v10 = *(v0 + 88);
      v11 = *(v0 + 72);
      sub_1000076D4(v5, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v12 = *(v8 + 8);
      v12(v9, v10);
      v12(v7, v10);
      if (qword_1016945A0 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 152);
      v14 = *(v0 + 128);
      v48 = *(v0 + 136);
      v16 = *(v0 + 112);
      v15 = *(v0 + 120);
      v17 = *(v0 + 88);
      v18 = *(v0 + 177);
      v19 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v19, qword_10177A978);
      *(v0 + 176) = v18 & 1;
      sub_100028088();
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v12(v16, v17);
      v12(v15, v17);
      QueryType.filter(_:)();
      v12(v14, v17);
      sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
      *(swift_allocObject() + 16) = xmmword_101385D80;
      if (qword_101694598 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 160);
      v50 = *(v0 + 168);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      v23 = *(v0 + 136);
      v24 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v24, qword_10177A960);
      sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120);
      ExpressionType.desc.getter();
      QueryType.order(_:)();

      v25 = *(v21 + 8);
      v25(v22, v23);
      QueryType.limit(_:)();
      v25(v20, v23);
      *(v0 + 40) = v23;
      *(v0 + 48) = &protocol witness table for Table;
      v26 = sub_1000280DC((v0 + 16));
      (*(v21 + 16))(v26, v50, v23);
      Connection.prepare(_:)();
      sub_100007BAC((v0 + 16));
      v38 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      if (v38[2])
      {
        v49 = v38[5];
        v51 = v38[4];
        sub_100017D5C(v51, v49);
      }

      else
      {
        v49 = 0xF000000000000000;
        v51 = 0;
      }

      v40 = *(v0 + 160);
      v39 = *(v0 + 168);
      v41 = *(v0 + 152);
      v42 = *(v0 + 128);
      v43 = *(v0 + 136);
      v44 = *(v0 + 120);
      v46 = *(v0 + 112);
      v47 = *(v0 + 104);

      v25(v39, v43);

      v45 = *(v0 + 8);

      return v45(v51, v49);
    }

    sub_10020223C();
    swift_allocError();
    *v28 = 2;
    *(v28 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v27 = 2;
    *(v27 + 4) = 1;
    swift_willThrow();
  }

  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  v33 = *(v0 + 120);
  v32 = *(v0 + 128);
  v35 = *(v0 + 104);
  v34 = *(v0 + 112);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1006868C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_100686A14, v3, 0);
}

uint64_t sub_100686A14()
{
  if (*(v0[13] + 112))
  {
    v1 = qword_101694588;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = v0[17];
    v3 = v0[10];
    v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v4, qword_10177A930);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[15];
    v8 = v0[16];
    v9 = v0[14];
    v10 = v0[11];
    sub_1000076D4(v4, qword_10177A948);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v11 = *(v7 + 8);
    v11(v8, v9);
    v11(v6, v9);
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v37 = v0[22];
    v38 = v0[21];
    v13 = v0[19];
    v12 = v0[20];
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[14];
    v39 = v0[13];
    v17 = v0[12];
    v18 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v18, qword_10177A960);
    v0[9] = v17;
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v11(v15, v16);
    v11(v14, v16);
    QueryType.filter(_:)();
    v11(v13, v16);
    v0[5] = v12;
    v0[6] = &protocol witness table for Table;
    v19 = sub_1000280DC(v0 + 2);
    (*(v38 + 16))(v19, v37, v12);
    sub_100686ED8((v0 + 2), &qword_1016A77D8, &unk_1013B6440, sub_100693134);
    v20 = v0[21];
    v21 = v0[22];
    v22 = v0[20];
    v32 = v0[18];
    v31 = v0[19];
    v33 = v0[17];
    v40 = v0[16];
    sub_100007BAC(v0 + 2);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v20 + 8))(v21, v22);
    v35 = v0[7];
    v34 = v0[8];

    v36 = v0[1];

    return v36(v35, v34);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
    v24 = v0[22];
    v26 = v0[18];
    v25 = v0[19];
    v28 = v0[16];
    v27 = v0[17];

    v29 = v0[1];

    return v29();
  }
}

void *sub_100686ED8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (*(v4 + 112))
  {
    v9 = *(v4 + 112);

    if (sub_100218230())
    {
      v10 = Connection.prepare(_:)();

      if (!v5)
      {
        sub_1000BC4D4(a2, a3);
        result = swift_allocObject();
        result[2] = v10;
        result[3] = a4;
        result[4] = 0;
      }
    }

    else
    {
      sub_10020223C();
      swift_allocError();
      *v13 = 2;
      *(v13 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100687010(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1006871BC, v2, 0);
}

uint64_t sub_1006871BC()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_100218230();
    if (v4)
    {
      v46 = (v0 + 16);
      v48 = v4;
      (*(*(v0 + 136) + 16))(*(v0 + 152), v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_connectionKeys, *(v0 + 128));
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 112);
      v6 = *(v0 + 40);
      v40 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v40, qword_10177A930);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 144);
      v7 = *(v0 + 120);
      v38 = *(v0 + 128);
      v39 = *(v0 + 152);
      v9 = *(v0 + 104);
      v8 = *(v0 + 112);
      v10 = *(v0 + 88);
      v11 = *(v0 + 96);
      v12 = *(v0 + 72);
      v42 = *(v0 + 80);
      v44 = *(v0 + 64);
      v13 = *(v0 + 48);
      sub_1000076D4(v40, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v14 = *(v11 + 8);
      v14(v9, v10);
      v14(v8, v10);
      QueryType.filter(_:)();
      v14(v7, v10);
      *v46 = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = 1;
      v15 = swift_task_alloc();
      v15[2] = v48;
      v15[3] = v37;
      v15[4] = v46;
      (*(v12 + 104))(v42, enum case for Connection.TransactionMode.deferred(_:), v44);
      Connection.transaction(_:block:)();
      v16 = *(v0 + 144);
      v47 = *(v0 + 152);
      v17 = *(v0 + 128);
      v18 = *(v0 + 136);
      v41 = *(v0 + 120);
      v43 = *(v0 + 112);
      v45 = *(v0 + 104);
      v29 = *(v0 + 72);
      v30 = *(v0 + 80);
      v31 = *(v0 + 64);

      (*(v29 + 8))(v30, v31);
      v32 = *(v18 + 8);
      v32(v47, v17);

      v33 = *(v0 + 16);
      v34 = *(v0 + 24);
      v35 = *(v0 + 32);
      v32(v16, v17);

      v36 = *(v0 + 8);

      return v36(v33, v34, v35);
    }

    sub_10020223C();
    swift_allocError();
    *v20 = 2;
    *(v20 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
  }

  v22 = *(v0 + 144);
  v21 = *(v0 + 152);
  v24 = *(v0 + 112);
  v23 = *(v0 + 120);
  v25 = *(v0 + 104);
  v26 = *(v0 + 80);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1006876B4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v37 = a1;
  v29 = a3;
  v38 = sub_1000BC4D4(&qword_1016A77C8, &qword_1013B6430);
  v41 = *(v38 - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin(v38);
  v6 = &v27 - v5;
  v7 = sub_1000BC4D4(&qword_1016A77D0, &qword_1013B6438);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v35 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v15 = sub_1000076D4(v14, qword_10177A960);
  v16 = sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120);
  sub_100029580();
  v33 = v16;
  v34 = v15;
  ExpressionType<>.min.getter();
  v32 = type metadata accessor for Table();
  SchemaType.select<A>(_:)();
  v17 = *(v41 + 8);
  v41 += 8;
  v30 = a2;
  v31 = v17;
  v17(v6, v38);
  v18 = v36;
  Connection.scalar<A>(_:)();
  v21 = *(v8 + 8);
  v19 = v8 + 8;
  v20 = v21;
  result = v21(v13, v7);
  if (!v18)
  {
    v27 = v39;
    v28 = v40;
    v36 = v19;
    ExpressionType<>.max.getter();
    v23 = v7;
    v24 = v35;
    SchemaType.select<A>(_:)();
    v31(v6, v38);
    Connection.scalar<A>(_:)();
    result = v20(v24, v23);
    if (((v28 | v40) & 1) == 0)
    {
      v25 = v39;
      if (v39 < v27)
      {
        __break(1u);
      }

      else
      {
        v26 = v29;
        *v29 = v27;
        v26[1] = v25;
        *(v26 + 16) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100687A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[35] = v8;
  v9 = *(v8 - 8);
  v4[36] = v9;
  v10 = *(v9 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_100687BC8, v3, 0);
}

uint64_t sub_100687BC8()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
LABEL_10:
    v20 = *(v0 + 304);
    v19 = *(v0 + 312);
    v21 = *(v0 + 296);
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v24 = *(v0 + 256);

    v25 = *(v0 + 8);
    goto LABEL_11;
  }

  v3 = *(v1 + 112);

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v41 = *(*(v0 + 288) + 16);
  v41(*(v0 + 312), v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes, *(v0 + 280));
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  v37 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v37, qword_10177A930);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 312);
  v39 = *(v0 + 304);
  v6 = *(v0 + 296);
  v46 = *(v0 + 288);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v13 = *(v0 + 216);
  sub_1000076D4(v37, qword_10177A948);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v14 = *(v12 + 8);
  v14(v9, v11);
  v14(v10, v11);
  QueryType.filter(_:)();
  v14(v8, v11);
  QueryType.limit(_:)();
  v15 = *(v46 + 8);
  v15(v6, v7);
  *(v0 + 184) = v7;
  *(v0 + 192) = &protocol witness table for Table;
  v16 = sub_1000280DC((v0 + 160));
  v41(v16, v39, v7);
  Connection.prepare(_:)();
  sub_100007BAC((v0 + 160));
  v27 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  if (*(v27 + 16))
  {
    *(v0 + 16) = *(v27 + 32);
    v28 = *(v27 + 48);
    v29 = *(v27 + 64);
    v30 = *(v27 + 80);
    *(v0 + 80) = *(v27 + 96);
    *(v0 + 48) = v29;
    *(v0 + 64) = v30;
    *(v0 + 32) = v28;
    sub_1002497B8(v0 + 16, v0 + 88);

    v43 = *(v0 + 32);
    v44 = *(v0 + 16);
    v38 = *(v0 + 64);
    v40 = *(v0 + 48);
    v45 = *(v0 + 80);
  }

  else
  {

    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v38 = 0u;
    v40 = 0u;
  }

  v31 = *(v0 + 312);
  v32 = *(v0 + 296);
  v33 = *(v0 + 280);
  v34 = *(v0 + 264);
  v42 = *(v0 + 256);
  v35 = *(v0 + 208);
  v15(*(v0 + 304), v33);
  v15(v31, v33);
  *v35 = v44;
  *(v35 + 16) = v43;
  *(v35 + 32) = v40;
  *(v35 + 48) = v38;
  *(v35 + 64) = v45;

  v25 = *(v0 + 8);
LABEL_11:

  return v25();
}

uint64_t sub_10068818C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1006882C0, v1, 0);
}

uint64_t sub_1006882C0()
{
  v1 = v0[9];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    if (sub_100218230())
    {
      v29 = *(v0[14] + 16);
      v29(v0[16], v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes, v0[13]);
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v5 = v0[15];
      v4 = v0[16];
      v7 = v0[12];
      v6 = v0[13];
      v8 = v0[11];
      v28 = v0[10];
      v9 = v0[8];
      v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v10, qword_10177A930);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      (*(v8 + 8))(v7, v28);
      v0[5] = v6;
      v0[6] = &protocol witness table for Table;
      v11 = sub_1000280DC(v0 + 2);
      v29(v11, v5, v6);
      Connection.prepare(_:)();
      sub_100007BAC(v0 + 2);
      sub_1000BC4D4(&qword_101697708, &qword_10138C3C0);
      v14 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v16 = v0[15];
      v15 = v0[16];
      v18 = v0[13];
      v17 = v0[14];
      v24 = v0[12];
      v25 = v14;

      v26 = *(v17 + 8);
      v26(v16, v18);
      v26(v15, v18);

      v27 = v0[1];

      return v27(v25);
    }

    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[12];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1006886F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100688810, v3, 0);
}

uint64_t sub_100688810()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = *(v0 + 80);
      v6 = *(v0 + 88);
      v9 = *(v0 + 64);
      v8 = *(v0 + 72);
      v23 = v8;
      v10 = *(v0 + 48);
      v11 = *(v0 + 56);
      v12 = *(v0 + 16);
      v22 = *(v0 + 24);
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes);
      v13 = swift_task_alloc();
      *(v13 + 16) = v6;
      *(v13 + 24) = vextq_s8(v22, v22, 8uLL);
      *(v13 + 40) = v12;
      *(v13 + 48) = v5;
      (*(v11 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v10);
      Connection.transaction(_:block:)();
      (*(v11 + 8))(v9, v10);

      (*(v7 + 8))(v6, v23);
      v14 = *(v0 + 88);
      v15 = *(v0 + 64);

      v16 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  v19 = *(v0 + 88);
  v20 = *(v0 + 64);

  v16 = *(v0 + 8);
LABEL_7:

  return v16();
}

uint64_t sub_100688A64(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v34 = a5;
  v30 = a1;
  v6 = type metadata accessor for OnConflict();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Insert();
  v31 = *(v33 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v33);
  v27 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v10;
  v29 = v7;
  v13 = *(v7 + 104);
  v32 = v6;
  v13(v10, enum case for OnConflict.replace(_:), v6);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v14 = *(type metadata accessor for Setter() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1013B62D0;
  v26[1] = v17;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v18, qword_10177A930);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v18, qword_10177A948);
  <- infix<A>(_:_:)();
  if (qword_1016945C0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v19, qword_10177A9D8);
  v40 = *a4;
  v36 = *a4;

  <- infix<A>(_:_:)();
  sub_1002FFC04(&v40);
  if (qword_1016945C8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v20, qword_10177A9F0);
  *&v36 = *(a4 + 2);
  <- infix<A>(_:_:)();
  if (qword_1016945D0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v21, qword_10177AA08);
  v39 = *(a4 + 24);
  v36 = *(a4 + 24);
  sub_1000D2A70(&v39, v35, &qword_1016A0AC0, &unk_1013926A0);
  <- infix<A>(_:_:)();
  sub_10000B3A8(&v39, &qword_1016A0AC0, &unk_1013926A0);
  if (qword_1016945D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177AA20);
  v38 = *(a4 + 40);
  v36 = *(a4 + 40);

  <- infix<A>(_:_:)();
  sub_1002FFC04(&v38);
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177AA38);
  v36 = *(a4 + 56);
  v37 = v36;
  sub_1000D2A70(&v37, v35, &qword_1016A0AC0, &unk_1013926A0);
  <- infix<A>(_:_:)();
  sub_10000B3A8(&v37, &qword_1016A0AC0, &unk_1013926A0);
  if (qword_1016945E8 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  sub_1000076D4(v22, qword_10177AA50);
  LOBYTE(v36) = 2;
  <- infix<A>(_:_:)();
  type metadata accessor for Table();
  v24 = v27;
  v23 = v28;
  QueryType.insert(or:_:)();

  (*(v29 + 8))(v23, v32);
  Connection.run(_:)();
  return (*(v31 + 8))(v24, v33);
}

uint64_t sub_100689160(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100689280, v2, 0);
}

uint64_t sub_100689280()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = *(v0 + 72);
      v6 = *(v0 + 80);
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v22 = v8;
      v11 = *(v0 + 40);
      v10 = *(v0 + 48);
      v21 = *(v0 + 16);
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes);
      v12 = swift_task_alloc();
      *(v12 + 16) = v6;
      *(v12 + 24) = vextq_s8(v21, v21, 8uLL);
      *(v12 + 40) = v5;
      (*(v10 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v11);
      Connection.transaction(_:block:)();
      (*(v10 + 8))(v9, v11);

      (*(v7 + 8))(v6, v22);
      v13 = *(v0 + 80);
      v14 = *(v0 + 56);

      v15 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    swift_willThrow();
  }

  v18 = *(v0 + 80);
  v19 = *(v0 + 56);

  v15 = *(v0 + 8);
LABEL_7:

  return v15();
}

uint64_t sub_1006894CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v28[1] = a2;
  v28[2] = a3;
  v30 = a1;
  v35 = type metadata accessor for Connection.TransactionMode();
  v34 = *(v35 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v35);
  v32 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v28 - v13;
  __chkstk_darwin(v12);
  v16 = v28 - v15;
  v31 = type metadata accessor for Table();
  v29 = *(v31 - 8);
  v17 = *(v29 + 64);
  __chkstk_darwin(v31);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v20, qword_10177A930);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177A948);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v21 = *(v7 + 8);
  v21(v11, v6);
  v21(v14, v6);
  v22 = v31;
  QueryType.filter(_:)();
  v23 = (v21)(v16, v6);
  __chkstk_darwin(v23);
  v24 = v32;
  v28[-2] = v33;
  v28[-1] = v19;
  v25 = v34;
  v26 = v35;
  (*(v34 + 104))(v24, enum case for Connection.TransactionMode.deferred(_:), v35);
  Connection.transaction(_:block:)();
  (*(v25 + 8))(v24, v26);
  return (*(v29 + 8))(v19, v22);
}

uint64_t sub_1006898E8()
{
  v0 = type metadata accessor for Delete();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Table();
  QueryType.delete()();
  Connection.run(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1006899E4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for DelegatedBeaconLostDates(0);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_100689B90, v2, 0);
}

uint64_t sub_100689B90()
{
  v1 = v0[10];
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
LABEL_8:
    v17 = v0[21];
    v16 = v0[22];
    v18 = v0[20];
    v19 = v0[17];
    v21 = v0[13];
    v20 = v0[14];

    v22 = v0[1];
    goto LABEL_9;
  }

  v3 = *(v1 + 112);

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v44 = *(v0[19] + 16);
  v44(v0[22], v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates, v0[18]);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v4 = v0[22];
  v5 = v0[20];
  v41 = v0[19];
  v42 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v40 = v0[15];
  v9 = v0[9];
  v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v10, qword_10177A948);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v8 + 8))(v7, v40);
  QueryType.limit(_:)();
  v11 = *(v41 + 8);
  v11(v5, v6);
  v0[5] = v6;
  v0[6] = &protocol witness table for Table;
  v12 = sub_1000280DC(v0 + 2);
  v44(v12, v42, v6);
  Connection.prepare(_:)();
  v15 = v0[11];
  sub_100007BAC(v0 + 2);
  v24 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  v26 = v0[21];
  v25 = v0[22];
  v27 = v0[18];
  if (*(v24 + 16))
  {
    v29 = v0[13];
    v28 = v0[14];
    v43 = v0[8];
    v45 = v0[11];
    v30 = *(v0[12] + 80);
    sub_100694B20(v24 + ((v30 + 32) & ~v30), v29, type metadata accessor for DelegatedBeaconLostDates);

    v11(v26, v27);
    v11(v25, v27);
    sub_100694B88(v29, v28);
    sub_1000D2A70(v28, v43, &unk_101696900, &unk_10138B1E0);
    v31 = *(v45 + 24);
    started = type metadata accessor for DelegatedBeaconStartReunitedDates(0);
    sub_1000D2A70(v28 + v31, v43 + *(started + 20), &unk_101696900, &unk_10138B1E0);
    sub_100694BEC(v28, type metadata accessor for DelegatedBeaconLostDates);
    v33 = 0;
  }

  else
  {

    v11(v26, v27);
    v11(v25, v27);
    started = type metadata accessor for DelegatedBeaconStartReunitedDates(0);
    v33 = 1;
  }

  v35 = v0[21];
  v34 = v0[22];
  v36 = v0[20];
  v37 = v0[17];
  v39 = v0[13];
  v38 = v0[14];
  (*(*(started - 8) + 56))(v0[8], v33, 1, started);

  v22 = v0[1];
LABEL_9:

  return v22();
}

uint64_t sub_10068A150(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10068A294, v2, 0);
}

uint64_t sub_10068A294()
{
  v1 = v0[10];
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();
LABEL_8:
    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[16];
    v20 = v0[13];

    v21 = v0[1];
    goto LABEL_9;
  }

  v3 = *(v1 + 112);

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v15 = 2;
    *(v15 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v35 = *(v0[15] + 16);
  v35(v0[18], v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates, v0[14]);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v33 = v0[11];
  v34 = v0[17];
  v10 = v0[9];
  v11 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v11, qword_10177A948);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v9 + 8))(v8, v33);
  QueryType.limit(_:)();
  v12 = *(v5 + 8);
  v12(v6, v7);
  v0[5] = v7;
  v0[6] = &protocol witness table for Table;
  v13 = sub_1000280DC(v0 + 2);
  v35(v13, v34, v7);
  Connection.prepare(_:)();
  sub_100007BAC(v0 + 2);
  v16 = type metadata accessor for KeyDropLostItemDates(0);
  v23 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  v25 = v0[17];
  v24 = v0[18];
  v26 = v0[14];
  if (*(v23 + 16))
  {
    v27 = *(v16 - 8);
    sub_100694B20(v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v0[8], type metadata accessor for KeyDropLostItemDates);

    v12(v25, v26);
    v12(v24, v26);
    v28 = 0;
  }

  else
  {

    v12(v25, v26);
    v12(v24, v26);
    v27 = *(v16 - 8);
    v28 = 1;
  }

  v29 = v0[17];
  v30 = v0[18];
  v31 = v0[16];
  v32 = v0[13];
  (*(v27 + 56))(v0[8], v28, 1, v16);

  v21 = v0[1];
LABEL_9:

  return v21();
}

uint64_t sub_10068A7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10068A8F8, v3, 0);
}

uint64_t sub_10068A8F8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = *(v0 + 72);
      v6 = *(v0 + 80);
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v22 = v8;
      v11 = *(v0 + 40);
      v10 = *(v0 + 48);
      v21 = *(v0 + 16);
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates);
      v12 = swift_task_alloc();
      *(v12 + 16) = v6;
      *(v12 + 24) = v21;
      *(v12 + 40) = v5;
      (*(v10 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v11);
      Connection.transaction(_:block:)();
      (*(v10 + 8))(v9, v11);

      (*(v7 + 8))(v6, v22);
      v13 = *(v0 + 80);
      v14 = *(v0 + 56);

      v15 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    swift_willThrow();
  }

  v18 = *(v0 + 80);
  v19 = *(v0 + 56);

  v15 = *(v0 + 8);
LABEL_7:

  return v15();
}

uint64_t sub_10068AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v23 = a3;
  v25 = a1;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Insert();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v24 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v11 = *(type metadata accessor for Setter() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_10138BBE0;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v15 = sub_1000076D4(v14, qword_10177A948);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694628 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v16, qword_10177AB10);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, v23, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  <- infix<A>(_:_:)();
  sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  v29[3] = v14;
  v29[4] = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v19 = sub_1000280DC(v29);
  (*(*(v14 - 8) + 16))(v19, v15, v14);
  type metadata accessor for Table();
  v20 = v24;
  QueryType.upsert(_:onConflictOf:)();

  sub_100007BAC(v29);
  Connection.run(_:)();
  return (*(v26 + 8))(v20, v27);
}

uint64_t sub_10068AF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10068B05C, v3, 0);
}

uint64_t sub_10068B05C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = *(v0 + 72);
      v6 = *(v0 + 80);
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v22 = v8;
      v11 = *(v0 + 40);
      v10 = *(v0 + 48);
      v21 = *(v0 + 16);
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates);
      v12 = swift_task_alloc();
      *(v12 + 16) = v6;
      *(v12 + 24) = v21;
      *(v12 + 40) = v5;
      (*(v10 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v11);
      Connection.transaction(_:block:)();
      (*(v10 + 8))(v9, v11);

      (*(v7 + 8))(v6, v22);
      v13 = *(v0 + 80);
      v14 = *(v0 + 56);

      v15 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    swift_willThrow();
  }

  v18 = *(v0 + 80);
  v19 = *(v0 + 56);

  v15 = *(v0 + 8);
LABEL_7:

  return v15();
}

uint64_t sub_10068B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v19 = a3;
  v20 = a1;
  v24 = type metadata accessor for Insert();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v24);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v6 = *(type metadata accessor for Setter() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_10138B360;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v10 = sub_1000076D4(v9, qword_10177A948);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694618 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v11, qword_10177AAE0);
  type metadata accessor for Date();
  v12 = v19;
  <- infix<A>(_:_:)();
  if (qword_101694620 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177AAF8);
  v13 = v12 + *(type metadata accessor for KeyDropLostItemDates(0) + 20);
  <- infix<A>(_:_:)();
  v23[3] = v9;
  v23[4] = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v14 = sub_1000280DC(v23);
  (*(*(v9 - 8) + 16))(v14, v10, v9);
  type metadata accessor for Table();
  v15 = v18;
  QueryType.upsert(_:onConflictOf:)();

  sub_100007BAC(v23);
  Connection.run(_:)();
  return (*(v22 + 8))(v15, v24);
}

uint64_t sub_10068B650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  v40 = a6;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = type metadata accessor for Setter();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v35);
  v47 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Insert();
  v12 = *(*(v34 - 8) + 64);
  result = __chkstk_darwin(v34);
  v16 = *(a1 + 16);
  if (v16)
  {
    v32 = (v9 + 8);
    v30 = (v14 + 8);
    v17 = (a1 + 56);
    v31 = xmmword_10138C0D0;
    v29 = v9;
    v33 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v41 = *(v17 - 24);
      v18 = *(v17 - 1);
      v42 = *(v17 - 2);
      v43 = *v17;
      v44 = v7;
      sub_100017D5C(v18, v43);
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v19 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v19, qword_10177A948);
      type metadata accessor for UUID();
      <- infix<A>(_:_:)();
      sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
      v20 = *(v9 + 72);
      v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      *(swift_allocObject() + 16) = v31;
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v19, qword_10177AB88);
      <- infix<A>(_:_:)();
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v19, qword_10177A930);
      <- infix<A>(_:_:)();
      if (qword_1016945A0 != -1)
      {
        swift_once();
      }

      v22 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v22, qword_10177A978);
      LOBYTE(v45) = v41;
      sub_100028088();
      <- infix<A>(_:_:)();
      v23 = v43;
      if (qword_101694598 != -1)
      {
        swift_once();
      }

      v24 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v24, qword_10177A960);
      v45 = v42;
      sub_100029580();
      <- infix<A>(_:_:)();
      if (qword_101694630 != -1)
      {
        swift_once();
      }

      v25 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
      sub_1000076D4(v25, qword_10177AB28);
      v45 = v18;
      v46 = v23;
      sub_100017D5C(v18, v23);
      <- infix<A>(_:_:)();
      sub_100016590(v45, v46);
      type metadata accessor for Table();
      v26 = v33;
      v27 = v47;
      QueryType.insert(_:_:)();

      (*v32)(v27, v35);
      v28 = v44;
      Connection.run(_:)();
      v7 = v28;
      if (v28)
      {
        break;
      }

      v17 += 4;
      (*v30)(v26, v34);
      result = sub_100016590(v18, v23);
      --v16;
      v9 = v29;
      if (!v16)
      {
        return result;
      }
    }

    (*v30)(v26, v34);
    return sub_100016590(v18, v23);
  }

  return result;
}

uint64_t sub_10068BBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v4[15] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[25] = v14;
  v15 = *(v14 - 8);
  v4[26] = v15;
  v16 = *(v15 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v17 = type metadata accessor for Table();
  v4[30] = v17;
  v18 = *(v17 - 8);
  v4[31] = v18;
  v19 = *(v18 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10068BE70, v3, 0);
}

uint64_t sub_10068BE70()
{
  v1 = v0[11];
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    swift_allocError();
    *v20 = 2;
    *(v20 + 4) = 1;
    swift_willThrow();
LABEL_10:
    v23 = v0[32];
    v22 = v0[33];
    v25 = v0[28];
    v24 = v0[29];
    v26 = v0[27];
    v28 = v0[23];
    v27 = v0[24];
    v30 = v0[19];
    v29 = v0[20];
    v31 = v0[18];
    v113 = v0[17];
    v117 = v0[16];
    v123 = v0[14];

    v32 = v0[1];
    goto LABEL_11;
  }

  v3 = *(v1 + 112);

  v4 = sub_1002072CC();
  if (!v4)
  {
    sub_10020223C();
    swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v5 = v4;
  v119 = (v0[31] + 16);
  v112 = *v119;
  (*v119)(v0[33], v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix, v0[30]);
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v116 = v5;
  v6 = v0[28];
  v7 = v0[21];
  v8 = v0[8];
  v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v9, qword_10177AB88);
  == infix<A>(_:_:)();
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v108 = v0[32];
  v110 = v0[33];
  v11 = v0[29];
  v10 = v0[30];
  v122 = v0;
  v12 = v0[28];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[21];
  v17 = v0[9];
  sub_1000076D4(v9, qword_10177A930);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v18 = *(v14 + 8);
  v18(v13, v15);
  v18(v12, v15);
  QueryType.filter(_:)();
  v18(v11, v15);
  v0[5] = v10;
  v0[6] = &protocol witness table for Table;
  v19 = sub_1000280DC(v0 + 2);
  v112(v19, v108, v10);
  Connection.prepare(_:)();
  v34 = v0[21];
  sub_100007BAC(v0 + 2);
  v120 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
  v35 = v0[21];
  v36 = v0[22];
  v37 = v0[20];
  v38 = v0[10];

  sub_1000D2A70(v38, v37, &qword_1016980D0, &unk_10138F3B0);
  v39 = *(v36 + 48);
  v40 = v39(v37, 1, v35);
  if (v40 != 1)
  {
    v114 = v39;
    v43 = v0[24];
    v44 = v0[21];
    v45 = v0[22];
    v46 = v0[19];
    v107 = v45[4];
    v107(v43, v0[20], v44);
    v47 = v45[2];
    v47(v46, v43, v44);
    v48 = v45[7];
    v49 = 1;
    v48(v46, 0, 1, v44);
    if (*(v120 + 16))
    {
      v50 = *(v0[22] + 80);
      v47(v0[18], v120 + ((v50 + 32) & ~v50), v0[21]);
      v49 = 0;
    }

    v51 = v0[21];
    v53 = v0[18];
    v52 = v0[19];
    v55 = v0[15];
    v54 = v0[16];

    v48(v53, v49, 1, v51);
    v56 = *(v55 + 48);
    sub_1000D2A70(v52, v54, &qword_1016980D0, &unk_10138F3B0);
    v57 = v56;
    sub_1000D2A70(v53, v54 + v56, &qword_1016980D0, &unk_10138F3B0);
    v58 = v114(v54, 1, v51);
    v59 = v0[21];
    v60 = v0;
    if (v58 == 1)
    {
      v61 = v0[19];
      sub_10000B3A8(v0[18], &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v61, &qword_1016980D0, &unk_10138F3B0);
      v42 = v116;
      if (v114(v54 + v57, 1, v59) == 1)
      {
        sub_10000B3A8(v0[16], &qword_1016980D0, &unk_10138F3B0);
LABEL_27:
        if (qword_101694780 != -1)
        {
          swift_once();
        }

        v89 = type metadata accessor for Logger();
        sub_1000076D4(v89, qword_10177AE40);
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        v92 = os_log_type_enabled(v90, v91);
        v93 = v122[31];
        v94 = v122[32];
        v95 = v122[30];
        v96 = v122[24];
        v98 = v122[21];
        v97 = v122[22];
        if (v92)
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "Suffix keys have current imported beacon entries. Do not delete.", v99, 2u);
        }

        (*(v97 + 8))(v96, v98);
        v81 = *(v93 + 8);
        v81(v94, v95);
        v0 = v122;
        goto LABEL_32;
      }
    }

    else
    {
      sub_1000D2A70(v0[16], v0[17], &qword_1016980D0, &unk_10138F3B0);
      if (v114(v54 + v57, 1, v59) != 1)
      {
        v83 = v0[22];
        v82 = v60[23];
        v84 = v60[21];
        v86 = v60[18];
        v85 = v60[19];
        v87 = v60[17];
        v121 = v60[16];
        v107(v82, v54 + v57, v84);
        sub_1003912E0();
        v88 = dispatch thunk of static Equatable.== infix(_:_:)();
        v68 = *(v83 + 8);
        v68(v82, v84);
        sub_10000B3A8(v86, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8(v85, &qword_1016980D0, &unk_10138F3B0);
        v68(v87, v84);
        sub_10000B3A8(v121, &qword_1016980D0, &unk_10138F3B0);
        v42 = v116;
        if (v88)
        {
          goto LABEL_27;
        }

        v67 = v122;
LABEL_24:
        v68(v67[24], v67[21]);
        v0 = v67;
        goto LABEL_25;
      }

      v62 = v0[21];
      v63 = v0[22];
      v64 = v60[19];
      v65 = v60[17];
      sub_10000B3A8(v60[18], &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v64, &qword_1016980D0, &unk_10138F3B0);
      (*(v63 + 8))(v65, v62);
      v42 = v116;
    }

    v66 = v60[22];
    sub_10000B3A8(v60[16], &qword_1016AF880, &unk_10138CE20);
    v67 = v60;
    v68 = *(v66 + 8);
    goto LABEL_24;
  }

  v41 = v0[20];

  sub_10000B3A8(v41, &qword_1016980D0, &unk_10138F3B0);
  v42 = v116;
LABEL_25:
  v69 = v0[33];
  v71 = v0[13];
  v70 = v0[14];
  v72 = v0[12];
  v73 = swift_task_alloc();
  v74 = *(v0 + 4);
  *(v73 + 16) = v69;
  *(v73 + 24) = v74;
  *(v73 + 40) = v42;
  (*(v71 + 104))(v70, enum case for Connection.TransactionMode.deferred(_:), v72);
  Connection.transaction(_:block:)();
  v76 = v0[31];
  v75 = v0[32];
  v77 = v0[30];
  v79 = v0[13];
  v78 = v0[14];
  v80 = v0[12];

  (*(v79 + 8))(v78, v80);
  v81 = *(v76 + 8);
  v81(v75, v77);

LABEL_32:
  v100 = v0[32];
  v101 = v0[29];
  v103 = v0[27];
  v102 = v0[28];
  v105 = v0[23];
  v104 = v0[24];
  v109 = v0[20];
  v111 = v0[19];
  v115 = v0[18];
  v118 = v0[17];
  v106 = v0[16];
  v124 = v0[14];
  v81(v0[33], v0[30]);

  v32 = v0[1];
LABEL_11:

  return v32();
}

uint64_t sub_10068C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v33 = a4;
  v28 = a3;
  v25[1] = a2;
  v31 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v31);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - v10;
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v29 = type metadata accessor for Table();
  v26 = *(v29 - 8);
  v14 = *(v26 + 64);
  __chkstk_darwin(v29);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Delete();
  v27 = *(v30 - 8);
  v17 = *(v27 + 64);
  __chkstk_darwin(v30);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v20, qword_10177AB88);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177A930);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v21 = *(v4 + 8);
  v22 = v31;
  v21(v8, v31);
  v21(v11, v22);
  v23 = v29;
  QueryType.filter(_:)();
  v21(v13, v22);
  QueryType.delete()();
  (*(v26 + 8))(v16, v23);
  Connection.run(_:)();
  return (*(v27 + 8))(v19, v30);
}

uint64_t sub_10068CDC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 185) = a3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v9 = type metadata accessor for Table();
  *(v5 + 152) = v9;
  v10 = *(v9 - 8);
  *(v5 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10068CF34, v4, 0);
}

uint64_t sub_10068CF34()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    if (sub_100218230())
    {
      v51 = *(*(v0 + 160) + 16);
      v51(*(v0 + 176), v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix, *(v0 + 152));
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 120);
      v5 = *(v0 + 64);
      v6 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v6, qword_10177AB88);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 120);
      v7 = *(v0 + 128);
      v9 = *(v0 + 104);
      v10 = *(v0 + 112);
      v11 = *(v0 + 96);
      v12 = *(v0 + 72);
      sub_1000076D4(v6, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v13 = *(v9 + 8);
      v13(v10, v11);
      v13(v8, v11);
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 128);
      v14 = *(v0 + 136);
      v16 = *(v0 + 120);
      v17 = *(v0 + 96);
      v18 = *(v0 + 80);
      sub_1000076D4(v6, qword_10177A930);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v13(v16, v17);
      v13(v15, v17);
      if (qword_1016945A0 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 168);
      v20 = *(v0 + 144);
      v49 = *(v0 + 152);
      v50 = *(v0 + 176);
      v22 = *(v0 + 128);
      v21 = *(v0 + 136);
      v23 = *(v0 + 96);
      v24 = *(v0 + 185);
      v25 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v25, qword_10177A978);
      *(v0 + 184) = v24 & 1;
      sub_100028088();
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v13(v22, v23);
      v13(v21, v23);
      QueryType.filter(_:)();
      v13(v20, v23);
      *(v0 + 40) = v49;
      *(v0 + 48) = &protocol witness table for Table;
      v26 = sub_1000280DC((v0 + 16));
      v51(v26, v19, v49);
      Connection.prepare(_:)();
      sub_100007BAC((v0 + 16));
      v29 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v31 = *(v0 + 168);
      v30 = *(v0 + 176);
      v33 = *(v0 + 152);
      v32 = *(v0 + 160);
      v44 = *(v0 + 136);
      v43 = *(v0 + 144);
      v46 = *(v0 + 120);
      v45 = *(v0 + 128);
      v52 = *(v0 + 112);
      v53 = v29;

      v47 = *(v32 + 8);
      v47(v31, v33);
      v47(v30, v33);

      v48 = *(v0 + 8);

      return v48(v53);
    }

    sub_10020223C();
    swift_allocError();
    *v28 = 2;
    *(v28 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v27 = 2;
    *(v27 + 4) = 1;
    swift_willThrow();
  }

  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  v39 = *(v0 + 120);
  v38 = *(v0 + 128);
  v40 = *(v0 + 112);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10068D5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10068D73C, v3, 0);
}

uint64_t sub_10068D73C()
{
  v1 = v0[11];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    if (sub_100218230())
    {
      v46 = *(v0[19] + 16);
      v46(v0[22], v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes, v0[18]);
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      v4 = v0[15];
      v5 = v0[8];
      v6 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v6, qword_10177AB88);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v8 = v0[15];
      v7 = v0[16];
      v9 = v0[13];
      v10 = v0[14];
      v11 = v0[12];
      v12 = v0[9];
      sub_1000076D4(v6, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v41 = v6;
      v13 = *(v9 + 8);
      v13(v10, v11);
      v13(v8, v11);
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v43 = v0[22];
      v44 = v0[21];
      v14 = v0[19];
      v42 = v0[20];
      v16 = v0[17];
      v15 = v0[18];
      v17 = v0[15];
      v18 = v0[16];
      v19 = v0[12];
      v20 = v0[10];
      sub_1000076D4(v41, qword_10177A930);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v13(v17, v19);
      v13(v18, v19);
      QueryType.filter(_:)();
      v13(v16, v19);
      QueryType.limit(_:)();
      v21 = *(v14 + 8);
      v21(v42, v15);
      v0[5] = v15;
      v0[6] = &protocol witness table for Table;
      v22 = sub_1000280DC(v0 + 2);
      v46(v22, v44, v15);
      Connection.prepare(_:)();
      sub_100007BAC(v0 + 2);
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      v34 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v36 = v0[21];
      v35 = v0[22];
      v37 = v0[20];
      v39 = v0[17];
      v38 = v0[18];
      v45 = v0[16];
      v47 = v0[15];
      v48 = v0[14];
      v49 = v34;

      v21(v36, v38);
      v21(v35, v38);

      v40 = v0[1];

      return v40(v49);
    }

    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
  }

  v26 = v0[21];
  v25 = v0[22];
  v27 = v0[20];
  v29 = v0[16];
  v28 = v0[17];
  v31 = v0[14];
  v30 = v0[15];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10068DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v23 = a5;
  v24 = a6;
  v22[1] = a3;
  v22[2] = a4;
  v22[0] = a2;
  v25 = a1;
  v7 = type metadata accessor for OnConflict();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Insert();
  v26 = *(v28 - 8);
  v12 = *(v26 + 64);
  __chkstk_darwin(v28);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v8 + 104);
  v27 = v7;
  v15(v11, enum case for OnConflict.ignore(_:), v7);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v16 = *(type metadata accessor for Setter() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_101391790;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v19, qword_10177A948);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177AB88);
  <- infix<A>(_:_:)();
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177A930);
  <- infix<A>(_:_:)();
  if (qword_101694670 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v20, qword_10177ABE8);
  v30 = v23;
  v31 = v24;

  <- infix<A>(_:_:)();

  type metadata accessor for Table();
  QueryType.insert(or:_:)();

  (*(v8 + 8))(v11, v27);
  Connection.run(_:)();
  return (*(v26 + 8))(v14, v28);
}

uint64_t sub_10068E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v45 = a7;
  v40 = a6;
  v35[1] = a4;
  v35[0] = a3;
  v46 = a1;
  v9 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v12 = v35 - v11;
  v13 = type metadata accessor for OnConflict();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Insert();
  v42 = *(v44 - 8);
  v18 = *(v42 + 64);
  __chkstk_darwin(v44);
  v38 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v14;
  v20 = *(v14 + 104);
  v39 = v17;
  v43 = v13;
  v20(v17, enum case for OnConflict.replace(_:), v13);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v21 = *(type metadata accessor for Setter() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1013B62D0;
  v37 = v24;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v25, qword_10177A948);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v25, qword_10177AB88);
  <- infix<A>(_:_:)();
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v25, qword_10177A930);
  <- infix<A>(_:_:)();
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177AA38);
  v26 = *(a5 + 8);
  *&v49 = *a5;
  *(&v49 + 1) = v26;

  <- infix<A>(_:_:)();

  if (qword_101694658 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177ABA0);
  v51[0] = *(a5 + 16);
  v49 = *(a5 + 16);
  sub_1000D2A70(v51, v48, &qword_1016A0AC0, &unk_1013926A0);
  <- infix<A>(_:_:)();
  sub_10000B3A8(v51, &qword_1016A0AC0, &unk_1013926A0);
  if (qword_101694660 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v9, qword_10177ABB8);
  v28 = v36;
  (*(v36 + 16))(v12, v27, v9);
  countAndFlagsBits = *(a5 + 32);
  if (*(a5 + 40))
  {
    v30 = String.lowercased()();
    countAndFlagsBits = v30._countAndFlagsBits;
    object = v30._object;
  }

  else
  {
    object = 0;
  }

  *&v49 = countAndFlagsBits;
  *(&v49 + 1) = object;
  <- infix<A>(_:_:)();

  (*(v28 + 8))(v12, v9);
  if (qword_101694668 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177ABD0);
  v49 = *(a5 + 48);
  v50 = v49;
  sub_1000D2A70(&v50, v48, &qword_1016A0AC0, &unk_1013926A0);
  <- infix<A>(_:_:)();
  sub_10000B3A8(&v50, &qword_1016A0AC0, &unk_1013926A0);
  if (qword_101694670 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177ABE8);
  *&v49 = v40;
  *(&v49 + 1) = v45;

  <- infix<A>(_:_:)();

  type metadata accessor for Table();
  v33 = v38;
  v32 = v39;
  QueryType.insert(or:_:)();

  (*(v41 + 8))(v32, v43);
  Connection.run(_:)();
  return (*(v42 + 8))(v33, v44);
}

uint64_t sub_10068E930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v8 = *(v7 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v9 = type metadata accessor for Table();
  v5[35] = v9;
  v10 = *(v9 - 8);
  v5[36] = v10;
  v11 = *(v10 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();

  return _swift_task_switch(sub_10068EA9C, v4, 0);
}

uint64_t sub_10068EA9C()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    swift_willThrow();
LABEL_12:
    v27 = *(v0 + 304);
    v26 = *(v0 + 312);
    v28 = *(v0 + 296);
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v32 = *(v0 + 248);
    v31 = *(v0 + 256);

    v33 = *(v0 + 8);
    goto LABEL_13;
  }

  v3 = *(v1 + 112);

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v25 = 2;
    *(v25 + 4) = 1;
    swift_willThrow();

    goto LABEL_12;
  }

  v50 = (*(v0 + 288) + 16);
  v48 = *v50;
  (*v50)(*(v0 + 312), v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes, *(v0 + 280));
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 256);
  v5 = *(v0 + 200);
  v6 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v6, qword_10177AB88);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 240);
  v10 = *(v0 + 248);
  v11 = *(v0 + 232);
  v12 = *(v0 + 208);
  sub_1000076D4(v6, qword_10177A948);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v13 = *(v9 + 8);
  v13(v10, v11);
  v13(v8, v11);
  v14 = v6;
  if (qword_101694588 != -1)
  {
    swift_once();
    v14 = v6;
  }

  v45 = *(v0 + 312);
  v46 = *(v0 + 304);
  v15 = *(v0 + 296);
  v54 = *(v0 + 288);
  v17 = *(v0 + 272);
  v16 = *(v0 + 280);
  v18 = *(v0 + 256);
  v19 = *(v0 + 264);
  v20 = *(v0 + 232);
  v21 = *(v0 + 216);
  sub_1000076D4(v14, qword_10177A930);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v13(v18, v20);
  v13(v19, v20);
  QueryType.filter(_:)();
  v13(v17, v20);
  QueryType.limit(_:)();
  v22 = *(v54 + 8);
  v22(v15, v16);
  *(v0 + 168) = v16;
  *(v0 + 176) = &protocol witness table for Table;
  v23 = sub_1000280DC((v0 + 144));
  v48(v23, v46, v16);
  Connection.prepare(_:)();
  sub_100007BAC((v0 + 144));
  v35 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  if (*(v35 + 16))
  {
    v36 = *(v35 + 32);
    v37 = *(v35 + 48);
    v38 = *(v35 + 80);
    *(v0 + 48) = *(v35 + 64);
    *(v0 + 64) = v38;
    *(v0 + 16) = v36;
    *(v0 + 32) = v37;
    sub_1006941BC(v0 + 16, v0 + 80);

    v53 = *(v0 + 16);
    v39 = *(v0 + 48);
    v47 = *(v0 + 64);
    v49 = v39;
    v51 = *(v0 + 32);
  }

  else
  {

    v53 = 0u;
    v49 = 0u;
    v51 = 0u;
    v47 = 0u;
  }

  v40 = *(v0 + 312);
  v41 = *(v0 + 296);
  v42 = *(v0 + 280);
  v43 = *(v0 + 264);
  v52 = *(v0 + 256);
  v55 = *(v0 + 248);
  v44 = *(v0 + 192);
  v22(*(v0 + 304), v42);
  v22(v40, v42);
  *v44 = v53;
  v44[1] = v51;
  v44[2] = v49;
  v44[3] = v47;

  v33 = *(v0 + 8);
LABEL_13:

  return v33();
}

uint64_t sub_10068F110(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10068F22C, v1, 0);
}

uint64_t sub_10068F22C()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = v0[8];
      v6 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      v22 = v8;
      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[2];
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes);
      v13 = swift_task_alloc();
      v13[2] = v6;
      v13[3] = v12;
      v13[4] = v5;
      (*(v11 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v10);
      Connection.transaction(_:block:)();
      (*(v11 + 8))(v9, v10);

      (*(v7 + 8))(v6, v22);
      v14 = v0[9];
      v15 = v0[6];

      v16 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  v19 = v0[9];
  v20 = v0[6];

  v16 = v0[1];
LABEL_7:

  return v16();
}

uint64_t sub_10068F46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a3;
  v19 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v19);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Table();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Delete();
  v12 = *(v18 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v18);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v16, qword_10177AB88);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v3 + 8))(v6, v19);
  QueryType.delete()();
  (*(v8 + 8))(v11, v7);
  Connection.run(_:)();
  return (*(v12 + 8))(v15, v18);
}

uint64_t sub_10068F740(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10068F878, v2, 0);
}

uint64_t sub_10068F878()
{
  v1 = v0[10];
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
LABEL_8:
    v16 = v0[16];
    v15 = v0[17];
    v17 = v0[13];

    v18 = v0[1];
    goto LABEL_9;
  }

  v3 = *(v1 + 112);

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v33 = *(v0[15] + 16);
  v33(v0[17], v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata, v0[14]);
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v32 = v0[11];
  v9 = v0[9];
  v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v10, qword_10177AA68);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v8 + 8))(v7, v32);
  v0[5] = v6;
  v0[6] = &protocol witness table for Table;
  v11 = sub_1000280DC(v0 + 2);
  v33(v11, v5, v6);
  Connection.prepare(_:)();
  sub_100007BAC(v0 + 2);
  v14 = type metadata accessor for DelegatedBeaconMetadata(0);
  v20 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[14];
  v24 = v0[15];
  if (*(v20 + 16))
  {
    v25 = *(v14 - 8);
    sub_100694B20(v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v0[8], type metadata accessor for DelegatedBeaconMetadata);

    v26 = *(v24 + 8);
    v26(v22, v23);
    v26(v21, v23);
    v27 = 0;
  }

  else
  {

    v28 = *(v24 + 8);
    v28(v22, v23);
    v28(v21, v23);
    v25 = *(v14 - 8);
    v27 = 1;
  }

  v29 = v0[16];
  v30 = v0[17];
  v31 = v0[13];
  (*(v25 + 56))(v0[8], v27, 1, v14);

  v18 = v0[1];
LABEL_9:

  return v18();
}

uint64_t sub_10068FD8C()
{
  v1 = v0[7];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    if (sub_100218230())
    {
      v4 = OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata;
      v5 = type metadata accessor for Table();
      v0[5] = v5;
      v0[6] = &protocol witness table for Table;
      v6 = sub_1000280DC(v0 + 2);
      (*(*(v5 - 8) + 16))(v6, v2 + v4, v5);
      Connection.prepare(_:)();
      sub_100007BAC(v0 + 2);
      type metadata accessor for DelegatedBeaconMetadata(0);
      v11 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v12 = v0[1];

      return v12(v11);
    }

    sub_10020223C();
    swift_allocError();
    *v8 = 2;
    *(v8 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v7 = 2;
    *(v7 + 4) = 1;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100690004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Row();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v9, qword_10177AA68);
  type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_1016945F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
  sub_1000076D4(v10, qword_10177AA80);
  Row.subscript.getter();
  v11 = v20;
  v12 = BYTE8(v20);
  v13 = type metadata accessor for DelegatedBeaconMetadata(0);
  v14 = a2 + v13[5];
  *v14 = v11;
  *(v14 + 8) = v12;
  if (qword_101694600 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v15, qword_10177AA98);
  v16 = v13[6];
  type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_101694608 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v17, qword_10177AAB0);
  Row.subscript.getter();
  *(a2 + v13[7]) = v20;
  if (qword_101694610 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_1000076D4(v18, qword_10177AAC8);
  Row.subscript.getter();
  result = (*(v5 + 8))(v8, v4);
  *(a2 + v13[8]) = v20;
  return result;
}

uint64_t sub_100690360(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100690480, v2, 0);
}

uint64_t sub_100690480()
{
  v1 = v0[4];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = v0[9];
      v6 = v0[10];
      v8 = v0[7];
      v22 = v0[8];
      v9 = v0[5];
      v10 = v0[6];
      v11 = v0[2];
      v21 = v0[3];
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata);
      v12 = swift_task_alloc();
      v12[2] = v6;
      v12[3] = v11;
      v12[4] = v21;
      v12[5] = v5;
      (*(v10 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v9);
      Connection.transaction(_:block:)();
      (*(v10 + 8))(v8, v9);

      (*(v7 + 8))(v6, v22);
      v13 = v0[10];
      v14 = v0[7];

      v15 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    swift_willThrow();
  }

  v18 = v0[10];
  v19 = v0[7];

  v15 = v0[1];
LABEL_7:

  return v15();
}

uint64_t sub_1006906C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v24[1] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - v7;
  v9 = type metadata accessor for Table();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Update();
  v25 = *(v14 - 8);
  v26 = v14;
  v15 = *(v25 + 64);
  __chkstk_darwin(v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v18, qword_10177AA68);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v5 + 8))(v8, v4);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v19 = *(type metadata accessor for Setter() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_1016945F8 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
  sub_1000076D4(v22, qword_10177AA80);
  v29 = v27;
  v30 = 0;
  <- infix<A>(_:_:)();
  QueryType.update(_:)();

  (*(v10 + 8))(v13, v9);
  Connection.run(_:)();
  return (*(v25 + 8))(v17, v26);
}

uint64_t sub_100690AAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8)
{
  v76 = a6;
  v77 = a8;
  v81 = a7;
  v75 = a5;
  v71 = a4;
  v70 = a3;
  v65 = a2;
  v8 = type metadata accessor for Insert();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  __chkstk_darwin(v8);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v65 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v68 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Setter();
  v21 = *(v88 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v88);
  v69 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v72 = &v65 - v26;
  v27 = __chkstk_darwin(v25);
  v66 = &v65 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v65 - v30;
  __chkstk_darwin(v29);
  v33 = &v65 - v32;
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v74 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v34 = sub_1000076D4(v74, qword_10177AA68);
  type metadata accessor for UUID();
  v73 = v34;
  <- infix<A>(_:_:)();
  v35 = sub_100A5D7F4(0, 1, 1, _swiftEmptyArrayStorage);
  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_100A5D7F4(v36 > 1, v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  v39 = *(v21 + 32);
  v38 = v21 + 32;
  v82 = (*(v38 + 48) + 32) & ~*(v38 + 48);
  v83 = v39;
  v40 = *(v38 + 40);
  v39(&v35[v82 + v40 * v37], v33, v88);
  if ((v70 & 1) == 0)
  {
    if (qword_1016945F8 != -1)
    {
      swift_once();
    }

    v41 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
    sub_1000076D4(v41, qword_10177AA80);
    v84 = v65;
    LOBYTE(v85) = 0;
    <- infix<A>(_:_:)();
    v43 = *(v35 + 2);
    v42 = *(v35 + 3);
    if (v43 >= v42 >> 1)
    {
      v35 = sub_100A5D7F4(v42 > 1, v43 + 1, 1, v35);
    }

    *(v35 + 2) = v43 + 1;
    v83(&v35[v82 + v43 * v40], v31, v88);
  }

  sub_1000D2A70(v71, v16, &unk_101696900, &unk_10138B1E0);
  v44 = (*(v18 + 48))(v16, 1, v17);
  v45 = v81;
  if (v44 == 1)
  {
    sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v46 = v68;
    (*(v18 + 32))(v68, v16, v17);
    if (qword_101694600 != -1)
    {
      swift_once();
    }

    v47 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
    sub_1000076D4(v47, qword_10177AA98);
    v48 = v67;
    (*(v18 + 16))(v67, v46, v17);
    (*(v18 + 56))(v48, 0, 1, v17);
    v49 = v66;
    <- infix<A>(_:_:)();
    sub_10000B3A8(v48, &unk_101696900, &unk_10138B1E0);
    v51 = *(v35 + 2);
    v50 = *(v35 + 3);
    if (v51 >= v50 >> 1)
    {
      v35 = sub_100A5D7F4(v50 > 1, v51 + 1, 1, v35);
    }

    (*(v18 + 8))(v46, v17);
    *(v35 + 2) = v51 + 1;
    v83(&v35[v82 + v51 * v40], v49, v88);
    v45 = v81;
  }

  v53 = v75;
  v52 = v76;
  if (v76 >> 60 != 15)
  {
    sub_100017D5C(v75, v76);
    if (qword_101694608 != -1)
    {
      swift_once();
    }

    v54 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
    sub_1000076D4(v54, qword_10177AAB0);
    v84 = v53;
    v85 = v52;
    sub_100017D5C(v53, v52);
    <- infix<A>(_:_:)();
    sub_100006654(v84, v85);
    v56 = *(v35 + 2);
    v55 = *(v35 + 3);
    if (v56 >= v55 >> 1)
    {
      v35 = sub_100A5D7F4(v55 > 1, v56 + 1, 1, v35);
    }

    sub_100006654(v53, v52);
    *(v35 + 2) = v56 + 1;
    v83(&v35[v82 + v56 * v40], v72, v88);
  }

  if (v45 != 2)
  {
    if (qword_101694610 != -1)
    {
      swift_once();
    }

    v57 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
    sub_1000076D4(v57, qword_10177AAC8);
    LOBYTE(v84) = v45 & 1;
    v58 = v69;
    <- infix<A>(_:_:)();
    v60 = *(v35 + 2);
    v59 = *(v35 + 3);
    if (v60 >= v59 >> 1)
    {
      v35 = sub_100A5D7F4(v59 > 1, v60 + 1, 1, v35);
    }

    *(v35 + 2) = v60 + 1;
    v83(&v35[v82 + v60 * v40], v58, v88);
  }

  v61 = v74;
  v86 = v74;
  v87 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v62 = sub_1000280DC(&v84);
  (*(*(v61 - 8) + 16))(v62, v73, v61);
  type metadata accessor for Table();
  v63 = v78;
  QueryType.upsert(_:onConflictOf:)();

  sub_100007BAC(&v84);
  Connection.run(_:)();
  return (*(v79 + 8))(v63, v80);
}

uint64_t sub_100691410(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10069152C, v1, 0);
}

uint64_t sub_10069152C()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = v0[8];
      v6 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      v22 = v8;
      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[2];
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata);
      v13 = swift_task_alloc();
      v13[2] = v6;
      v13[3] = v12;
      v13[4] = v5;
      (*(v11 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v10);
      Connection.transaction(_:block:)();
      (*(v11 + 8))(v9, v10);

      (*(v7 + 8))(v6, v22);
      v14 = v0[9];
      v15 = v0[6];

      v16 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  v19 = v0[9];
  v20 = v0[6];

  v16 = v0[1];
LABEL_7:

  return v16();
}

uint64_t sub_10069176C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1006918A0, v1, 0);
}

uint64_t sub_1006918A0()
{
  v1 = v0[9];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    if (sub_100218230())
    {
      v29 = *(v0[14] + 16);
      v29(v0[16], v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret, v0[13]);
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      v5 = v0[15];
      v4 = v0[16];
      v7 = v0[12];
      v6 = v0[13];
      v8 = v0[11];
      v28 = v0[10];
      v9 = v0[8];
      v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v10, qword_10177AB88);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      (*(v8 + 8))(v7, v28);
      v0[5] = v6;
      v0[6] = &protocol witness table for Table;
      v11 = sub_1000280DC(v0 + 2);
      v29(v11, v5, v6);
      Connection.prepare(_:)();
      sub_100007BAC(v0 + 2);
      type metadata accessor for SharingCircleSecret();
      v19 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v21 = v0[15];
      v20 = v0[16];
      v23 = v0[13];
      v22 = v0[14];
      v24 = v0[12];
      v25 = v19;

      v26 = *(v22 + 8);
      v26(v21, v23);
      v26(v20, v23);

      v27 = v0[1];

      return v27(v25);
    }

    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[12];

  v17 = v0[1];

  return v17();
}
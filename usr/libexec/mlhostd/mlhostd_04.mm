uint64_t sub_10005E200()
{
  v2 = *v1;
  v3 = *(*v1 + 1704);
  v13 = *v1;
  *(*v1 + 1712) = v0;

  v4 = *(v2 + 1696);
  if (v0)
  {
    (*(v2 + 1688))(*(v2 + 736), *(v2 + 720));
    v5 = sub_100061064;
  }

  else
  {
    v6 = *(v2 + 1688);
    v7 = *(v2 + 736);
    v8 = *(v2 + 720);
    v9 = *(v2 + 696);
    v10 = *(v2 + 688);
    v11 = *(v2 + 680);
    v6(v7, v8);
    (*(v10 + 8))(v9, v11);
    v5 = sub_10005E368;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_10005E368()
{
  v676 = v0;
  v1 = *(v0 + 1696);
  v2 = *(v0 + 1688);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 720);
  static ContinuousClock.now.getter();
  v6 = ContinuousClock.Instant.duration(to:)();
  v8 = v7;
  v2(v4, v5);
  *(v0 + 1600) = v8;
  *(v0 + 1592) = v6;
  v9 = *(v0 + 1424);
  os_unfair_lock_lock((*(v9 + 56) + 16));
  v10 = *(v9 + 72);
  if (*(v10 + 16))
  {
    v11 = *(v0 + 672);
    v12 = *(v0 + 664);
    v13 = *(v10 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = -1 << *(v10 + 32);
    v16 = v14 & ~v15;
    if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * v16);
        v19 = *v18 == *(v0 + 664) && v18[1] == *(v0 + 672);
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v35 = *(v0 + 1424);

      os_unfair_lock_unlock((*(v35 + 56) + 16));
      goto LABEL_18;
    }

LABEL_10:
  }

  v20 = *(v0 + 1544);
  os_unfair_lock_unlock((*(*(v0 + 1424) + 56) + 16));
  if (*(v20 + 16) == 2 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    v21 = *(v0 + 768);
    v22 = *(v0 + 736);
    v23 = *(v0 + 728);
    v24 = *(v0 + 720);
    v25 = *(v0 + 696);
    v26 = *(v0 + 680);
    static Clock<>.continuous.getter();
    *(v0 + 544) = xmmword_100069320;
    *(v0 + 456) = 0;
    *(v0 + 464) = 0;
    *(v0 + 472) = 1;
    v27 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v28 = *(v23 + 8);
    *(v0 + 1688) = v28;
    *(v0 + 1696) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v21, v24);
    v29 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v30 = swift_task_alloc();
    *(v0 + 1704) = v30;
    *v30 = v0;
    v30[1] = sub_10005E200;
    v31 = *(v0 + 736);
    v32 = *(v0 + 696);
    v33 = *(v0 + 680);
    v34 = v0 + 456;
    goto LABEL_14;
  }

LABEL_18:
  v36 = *(v0 + 1424);
  v37 = *(v0 + 672);
  v38 = *(v0 + 664);
  os_unfair_lock_lock((*(v36 + 56) + 16));
  v39 = *(v36 + 72);

  LOBYTE(v37) = sub_1000292B0(v38, v37, v39);

  os_unfair_lock_unlock((*(v36 + 56) + 16));
  if ((v37 & 1) != 0 || (v40 = *(v0 + 1544), swift_beginAccess(), *(v40 + 16) != 2))
  {
    v52 = *(v0 + 1544);
    swift_beginAccess();
    v53 = *(v52 + 16);
    if (v53 == 2)
    {
      v54 = *(v0 + 1448);
      v55 = *(v0 + 1432);
      (*(v0 + 1440))(*(v0 + 1280), *(v0 + 640), *(v0 + 1136));
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v630 = *(v0 + 1592);
        v647 = *(v0 + 1600);
        v58 = *(v0 + 1424);
        v59 = *(v0 + 1280);
        v60 = *(v0 + 1144);
        v61 = *(v0 + 1136);
        v620 = *(v0 + 672);
        v603 = *(v0 + 1456);
        v611 = *(v0 + 664);
        v62 = swift_slowAlloc();
        v674 = swift_slowAlloc();
        *v62 = 136315650;
        v63 = MLHostTask.name.getter();
        v65 = v64;
        v603(v59, v61);
        v66 = sub_100008A0C(v63, v65, &v674);

        *(v62 + 4) = v66;
        *(v62 + 12) = 1024;
        os_unfair_lock_lock((*(v58 + 56) + 16));
        v67 = *(v58 + 72);

        LOBYTE(v61) = sub_1000292B0(v611, v620, v67);

        os_unfair_lock_unlock((*(v58 + 56) + 16));
        *(v62 + 14) = v61 & 1;
        *(v62 + 18) = 2080;
        v68 = Duration.description.getter();
        v70 = sub_100008A0C(v68, v69, &v674);

        *(v62 + 20) = v70;
        _os_log_impl(&_mh_execute_header, v56, v57, "Task %s skipping execution, isDeferred = %{BOOL}d, after %s.", v62, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {
        v89 = *(v0 + 1456);
        v90 = *(v0 + 1280);
        v91 = *(v0 + 1144);
        v92 = *(v0 + 1136);

        v89(v90, v92);
      }

      v649 = *(v0 + 1560);
      v663 = *(v0 + 1568);
      v93 = *(v0 + 1552);
      v94 = *(v0 + 1512);
      v95 = *(v0 + 1504);
      v96 = *(v0 + 1136);
      v97 = *(v0 + 1056);
      v98 = *(v0 + 1016);
      v99 = *(v0 + 944);
      v100 = *(v0 + 640);
      v101 = MLHostTask.name.getter();
      v103 = v102;
      v95(v97, enum case for TaskStatus.taskDeferred(_:), v98);
      sub_100019300(v101, v103, v99);
      if (v649(v99, 1, v96) == 1)
      {
        sub_100009C94(*(v0 + 944), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v117 = *(v0 + 1552);
        v118 = *(v0 + 1480);
        v119 = *(v0 + 1456);
        v120 = *(v0 + 1192);
        v121 = *(v0 + 1144);
        v122 = *(v0 + 1136);
        v123 = *(v0 + 1120);
        v124 = *(v0 + 1056);
        v125 = *(v0 + 1024);
        v126 = *(v0 + 1016);
        (*(v0 + 1472))(v120, *(v0 + 944), v122);
        (*(v125 + 16))(v123, v124, v126);
        MLHostTask.status.setter();
        sub_10001C4DC(v120);
        v119(v120, v122);
      }

      v127 = *(v0 + 1584);
      v128 = *(v0 + 1576);
      v612 = *(v0 + 1544);
      v622 = *(v0 + 1536);
      v129 = *(v0 + 1464);
      v633 = *(v0 + 1488);
      v651 = *(v0 + 1416);
      v130 = *(v0 + 1056);
      v131 = *(v0 + 1016);
      v132 = *(v0 + 912);
      v133 = *(v0 + 904);
      v665 = *(v0 + 896);
      v588 = *(v0 + 776);
      v595 = *(v0 + 1520);
      v134 = *(v0 + 728);
      v574 = *(v0 + 1528);
      v581 = *(v0 + 720);
      v135 = *(v0 + 640);

      v128(v130, v131);
      v136 = [v129 processIdentifier];
      v674 = 0;
      v675 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v674 = 0x206B736154;
      v675 = 0xE500000000000000;
      v137._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v137);

      v138._countAndFlagsBits = 0xD00000000000001ELL;
      v138._object = 0x8000000100073030;
      String.append(_:)(v138);
      sub_1000530BC(v136);

      swift_unknownObjectRelease();
      (*(v134 + 8))(v588, v581);

      [v129 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v133 + 8))(v132, v665);
      goto LABEL_40;
    }

    v71 = *(v0 + 1448);
    v72 = *(v0 + 1440);
    v73 = *(v0 + 1432);
    v74 = *(v0 + 1136);
    v75 = *(v0 + 640);
    if ((v53 & 1) == 0)
    {
      v72(*(v0 + 1264), v75, v74);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v650 = *(v0 + 1592);
        v664 = *(v0 + 1600);
        v632 = *(v0 + 1456);
        v106 = *(v0 + 1264);
        v107 = *(v0 + 1144);
        v108 = *(v0 + 1136);
        v109 = swift_slowAlloc();
        v674 = swift_slowAlloc();
        *v109 = 136315650;
        v110 = MLHostTask.name.getter();
        v112 = v111;
        v632(v106, v108);
        v113 = sub_100008A0C(v110, v112, &v674);

        *(v109 + 4) = v113;
        *(v109 + 12) = 1024;
        *(v109 + 14) = 0;
        *(v109 + 18) = 2080;
        v114 = Duration.description.getter();
        v116 = sub_100008A0C(v114, v115, &v674);

        *(v109 + 20) = v116;
        _os_log_impl(&_mh_execute_header, v104, v105, "Task %s skipping execution, shouldRun = %{BOOL}d, after %s.", v109, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {
        v219 = *(v0 + 1456);
        v220 = *(v0 + 1264);
        v221 = *(v0 + 1144);
        v222 = *(v0 + 1136);

        v219(v220, v222);
      }

      v655 = *(v0 + 1560);
      v669 = *(v0 + 1568);
      v223 = *(v0 + 1552);
      v224 = *(v0 + 1512);
      v225 = *(v0 + 1504);
      v226 = *(v0 + 1136);
      v227 = *(v0 + 1064);
      v228 = *(v0 + 1016);
      v229 = *(v0 + 952);
      v230 = *(v0 + 640);
      v231 = MLHostTask.name.getter();
      v233 = v232;
      v225(v227, enum case for TaskStatus.taskFailed(_:), v228);
      sub_100019300(v231, v233, v229);
      if (v655(v229, 1, v226) == 1)
      {
        sub_100009C94(*(v0 + 952), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v234 = *(v0 + 1552);
        v235 = *(v0 + 1480);
        v236 = *(v0 + 1456);
        v237 = *(v0 + 1200);
        v238 = *(v0 + 1144);
        v239 = *(v0 + 1136);
        v240 = *(v0 + 1120);
        v241 = *(v0 + 1064);
        v242 = *(v0 + 1024);
        v243 = *(v0 + 1016);
        (*(v0 + 1472))(v237, *(v0 + 952), v239);
        (*(v242 + 16))(v240, v241, v243);
        MLHostTask.status.setter();
        sub_10001C4DC(v237);
        v236(v237, v239);
      }

      v244 = *(v0 + 1584);
      v245 = *(v0 + 1576);
      v246 = *(v0 + 1552);
      v247 = *(v0 + 1536);
      v598 = *(v0 + 1544);
      v606 = *(v0 + 1488);
      v248 = *(v0 + 1464);
      v249 = *(v0 + 1064);
      v250 = *(v0 + 1016);
      v615 = *(v0 + 912);
      v625 = *(v0 + 904);
      v636 = *(v0 + 1416);
      v656 = *(v0 + 896);
      v670 = *(v0 + 1520);
      v590 = *(v0 + 776);
      v251 = *(v0 + 728);
      v576 = *(v0 + 1528);
      v583 = *(v0 + 720);
      v252 = *(v0 + 640);

      v245(v249, v250);
      v253 = MLHostTask.name.getter();
      sub_10001C1E4(v253, v254);

      v255 = [v248 processIdentifier];
      v674 = 0;
      v675 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v674 = 0x206B736154;
      v675 = 0xE500000000000000;
      v256._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v256);

      v257._countAndFlagsBits = 0xD000000000000014;
      v257._object = 0x8000000100073050;
      String.append(_:)(v257);
      sub_1000530BC(v255);

      swift_unknownObjectRelease();
      (*(v251 + 8))(v590, v583);
      swift_beginAccess();
      v668 = *(v247 + 16);
      v258 = v668;

      [v248 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v625 + 8))(v615, v656);
      goto LABEL_88;
    }

    v72(*(v0 + 1272), v75, v74);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v631 = *(v0 + 1592);
      v648 = *(v0 + 1600);
      v621 = *(v0 + 1456);
      v78 = *(v0 + 1272);
      v79 = *(v0 + 1144);
      v80 = *(v0 + 1136);
      v81 = swift_slowAlloc();
      v674 = swift_slowAlloc();
      *v81 = 136315650;
      v82 = MLHostTask.name.getter();
      v84 = v83;
      v621(v78, v80);
      v85 = sub_100008A0C(v82, v84, &v674);

      *(v81 + 4) = v85;
      *(v81 + 12) = 1024;
      *(v81 + 14) = 1;
      *(v81 + 18) = 2080;
      v86 = Duration.description.getter();
      v88 = sub_100008A0C(v86, v87, &v674);

      *(v81 + 20) = v88;
      _os_log_impl(&_mh_execute_header, v76, v77, "Task %s continuing execution, shouldRun = %{BOOL}d, after %s.", v81, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v181 = *(v0 + 1456);
      v182 = *(v0 + 1272);
      v183 = *(v0 + 1144);
      v184 = *(v0 + 1136);

      v181(v182, v184);
    }

    v185 = *(v0 + 1536);
    v635 = *(v0 + 1520);
    v654 = *(v0 + 1528);
    v186 = *(v0 + 1512);
    v187 = *(v0 + 1496);
    v614 = *(v0 + 1480);
    v624 = *(v0 + 1488);
    v605 = *(v0 + 1472);
    v575 = *(v0 + 1440);
    v582 = *(v0 + 1448);
    v571 = *(v0 + 1336);
    v568 = *(v0 + 1136);
    v188 = *(v0 + 1120);
    v189 = *(v0 + 1024);
    v190 = *(v0 + 1016);
    v597 = *(v0 + 648);
    v566 = *(v0 + 640);
    v191 = (*(v0 + 476) + 16) & ~*(v0 + 476);
    v589 = (*(v0 + 1152) + v191 + 7) & 0xFFFFFFFFFFFFFFF8;
    v192 = (v589 + 15) & 0xFFFFFFFFFFFFFFF8;
    (*(v0 + 1504))(v188, *(v0 + 500), v190);
    swift_beginAccess();
    (*(v189 + 40))(v187, v188, v190);
    swift_beginAccess();
    v193 = *(v185 + 16);
    *(v185 + 16) = 0;

    v575(v571, v566, v568);
    v194 = swift_allocObject();
    v605(v194 + v191, v571, v568);
    *(v194 + v589) = v185;
    *(v194 + v192) = v624;
    *(v194 + ((v192 + 15) & 0xFFFFFFFFFFFFFFF8)) = v597;
    *(v0 + 240) = sub_1000643F4;
    *(v0 + 248) = v194;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100065970;
    *(v0 + 232) = &unk_100082F50;
    v195 = _Block_copy((v0 + 208));
    v196 = *(v0 + 248);

    [v635 doWorkWithContext:v654 reply:v195];
    _Block_release(v195);
    v197 = *(v0 + 1424);
    os_unfair_lock_lock((*(v197 + 56) + 16));
    v198 = *(v197 + 72);
    if (*(v198 + 16))
    {
      v199 = *(v0 + 672);
      v200 = *(v0 + 664);
      v201 = *(v198 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v202 = Hasher._finalize()();
      v203 = -1 << *(v198 + 32);
      v204 = v202 & ~v203;
      if ((*(v198 + 56 + ((v204 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v204))
      {
        v205 = ~v203;
        while (1)
        {
          v206 = (*(v198 + 48) + 16 * v204);
          v207 = *v206 == *(v0 + 664) && v206[1] == *(v0 + 672);
          if (v207 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v204 = (v204 + 1) & v205;
          if (((*(v198 + 56 + ((v204 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v204) & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v259 = *(v0 + 1424);

        os_unfair_lock_unlock((*(v259 + 56) + 16));
LABEL_60:
        v260 = *(v0 + 1536);
        v261 = *(v0 + 776);
        v262 = *(v0 + 768);
        v263 = *(v0 + 728);
        v264 = *(v0 + 720);
        static ContinuousClock.now.getter();
        ContinuousClock.Instant.duration(to:)();
        v265 = *(v263 + 8);
        *(v0 + 1608) = v265;
        *(v0 + 1616) = (v263 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v265(v262, v264);
        v266 = *(v260 + 16);
        v267 = *(v0 + 1448);
        v268 = *(v0 + 1440);
        v269 = *(v0 + 1432);
        v270 = *(v0 + 1136);
        v271 = *(v0 + 640);
        if (v266)
        {
          v268(*(v0 + 1256), v271, v270);
          v272 = v266;
          v273 = Logger.logObject.getter();
          v274 = static os_log_type_t.info.getter();

          v275 = os_log_type_enabled(v273, v274);
          v276 = *(v0 + 1456);
          v277 = *(v0 + 1256);
          v278 = *(v0 + 1144);
          v279 = *(v0 + 1136);
          v668 = v266;
          v616 = v265;
          if (v275)
          {
            v280 = swift_slowAlloc();
            v591 = swift_slowAlloc();
            v674 = swift_slowAlloc();
            *v280 = 136315650;
            v584 = v273;
            v281 = MLHostTask.name.getter();
            v577 = v274;
            v282 = v272;
            v284 = v283;
            v276(v277, v279);
            v285 = sub_100008A0C(v281, v284, &v674);

            *(v280 + 4) = v285;
            *(v280 + 12) = 2080;
            v286 = Duration.description.getter();
            v288 = sub_100008A0C(v286, v287, &v674);

            *(v280 + 14) = v288;
            *(v280 + 22) = 2112;
            *(v280 + 24) = v282;
            *v591 = v266;
            v289 = v282;
            _os_log_impl(&_mh_execute_header, v584, v577, "Task %s completed after %s. TaskResult: %@", v280, 0x20u);
            sub_100009C94(v591, &qword_100085970, &qword_100068F48);

            swift_arrayDestroy();
          }

          else
          {

            v276(v277, v279);
          }

          v637 = *(v0 + 1568);
          v599 = *(v0 + 1560);
          v305 = *(v0 + 1552);
          v306 = *(v0 + 1496);
          v307 = *(v0 + 1136);
          v308 = *(v0 + 1088);
          v309 = *(v0 + 1024);
          v310 = *(v0 + 1016);
          v311 = *(v0 + 976);
          v312 = *(v0 + 640);
          v313 = MLHostTask.name.getter();
          v315 = v314;
          v316 = v310;
          v317 = *(v309 + 16);
          v317(v308, v306, v316);
          sub_100019300(v313, v315, v311);
          if (v599(v311, 1, v307) == 1)
          {
            sub_100009C94(*(v0 + 976), &qword_100085940, &unk_1000693D0);
          }

          else
          {
            v318 = *(v0 + 1552);
            v319 = *(v0 + 1480);
            v638 = *(v0 + 1456);
            v320 = *(v0 + 1240);
            v321 = *(v0 + 1144);
            v322 = *(v0 + 1136);
            v323 = *(v0 + 1120);
            v324 = *(v0 + 1088);
            v325 = v317;
            v326 = *(v0 + 1016);
            (*(v0 + 1472))(v320, *(v0 + 976), v322);
            v327 = v326;
            v317 = v325;
            v325(v323, v324, v327);
            MLHostTask.status.setter();
            sub_10001C4DC(v320);
            v638(v320, v322);
          }

          v328 = *(v0 + 1584);
          v329 = *(v0 + 1576);
          v330 = *(v0 + 1552);
          v331 = *(v0 + 1088);
          v332 = *(v0 + 1016);
          v333 = *(v0 + 640);

          v329(v331, v332);
          v334 = MLHostTask.name.getter();
          sub_10001C1E4(v334, v335);

          MLHostResult.status.getter();
          v336 = MLHostResultStatus.rawValue.getter();
          if (v336 == MLHostResultStatus.rawValue.getter())
          {
            v337 = *(v0 + 1544);
            v338 = *(v0 + 1536);
            v339 = *(v0 + 1528);
            v340 = *(v0 + 1520);
            v616(*(v0 + 776), *(v0 + 720));

            swift_unknownObjectRelease();
          }

          else
          {
            v585 = *(v0 + 1576);
            v592 = *(v0 + 1584);
            v341 = *(v0 + 1544);
            v342 = *(v0 + 1536);
            v343 = *(v0 + 1496);
            v344 = *(v0 + 1120);
            v345 = *(v0 + 1016);
            v639 = *(v0 + 776);
            v657 = *(v0 + 1520);
            v600 = *(v0 + 1528);
            v607 = *(v0 + 720);
            v346 = *(v0 + 640);
            v578 = [*(v0 + 1464) processIdentifier];
            v674 = 0;
            v675 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);
            v347 = v675;
            *(v0 + 608) = v674;
            *(v0 + 616) = v347;
            v348._countAndFlagsBits = 0x206B736154;
            v348._object = 0xE500000000000000;
            String.append(_:)(v348);
            v349._countAndFlagsBits = MLHostTask.name.getter();
            String.append(_:)(v349);

            v350._object = 0x8000000100073090;
            v350._countAndFlagsBits = 0xD00000000000001CLL;
            String.append(_:)(v350);
            v317(v344, v343, v345);
            _print_unlocked<A, B>(_:_:)();
            v585(v344, v345);
            v351._countAndFlagsBits = 46;
            v351._object = 0xE100000000000000;
            String.append(_:)(v351);
            v352 = *(v0 + 608);
            v353 = *(v0 + 616);
            sub_1000530BC(v578);

            swift_unknownObjectRelease();
            v616(v639, v607);
          }

          v354 = *(v0 + 1488);
          v355 = *(v0 + 1464);
          v356 = *(v0 + 1416);
          v357 = *(v0 + 912);
          v358 = *(v0 + 904);
          v359 = *(v0 + 896);

          [v355 invalidate];

          AppExtensionProcess.invalidate()();
          swift_unknownObjectRelease();
          (*(v358 + 8))(v357, v359);
          goto LABEL_88;
        }

        v268(*(v0 + 1248), v271, v270);
        v290 = Logger.logObject.getter();
        v291 = static os_log_type_t.info.getter();
        v292 = os_log_type_enabled(v290, v291);
        v293 = *(v0 + 1456);
        v294 = *(v0 + 1248);
        v295 = *(v0 + 1144);
        v296 = *(v0 + 1136);
        if (v292)
        {
          v297 = swift_slowAlloc();
          v674 = swift_slowAlloc();
          *v297 = 136315394;
          v298 = MLHostTask.name.getter();
          v300 = v299;
          v293(v294, v296);
          v301 = sub_100008A0C(v298, v300, &v674);

          *(v297 + 4) = v301;
          *(v297 + 12) = 2080;
          v302 = Duration.description.getter();
          v304 = sub_100008A0C(v302, v303, &v674);

          *(v297 + 14) = v304;
          _os_log_impl(&_mh_execute_header, v290, v291, "Task %s asked to terminate because of deferral after %s.", v297, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v293(v294, v296);
        }

        v360 = *(v0 + 1536);
        v361 = *(v0 + 1520);
        v362 = *(v0 + 760);
        static ContinuousClock.now.getter();
        [v361 doStop];
        v363 = *(v360 + 16);
        if (v363)
        {
          goto LABEL_75;
        }

        *(v0 + 1624) = 0u;
        if (static Duration.< infix(_:_:)())
        {
          v363 = *(*(v0 + 1536) + 16);
          if (!v363)
          {
            v645 = *(v0 + 1560);
            v661 = *(v0 + 1568);
            v467 = *(v0 + 1552);
            v468 = *(v0 + 1512);
            v469 = *(v0 + 1504);
            v470 = *(v0 + 1136);
            v471 = *(v0 + 1072);
            v472 = *(v0 + 1016);
            v473 = *(v0 + 960);
            v474 = *(v0 + 640);
            v475 = MLHostTask.name.getter();
            v477 = v476;
            v469(v471, enum case for TaskStatus.taskDeferred(_:), v472);
            sub_100019300(v475, v477, v473);
            if (v645(v473, 1, v470) == 1)
            {
              sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
            }

            else
            {
              v478 = *(v0 + 1552);
              v479 = *(v0 + 1480);
              v480 = *(v0 + 1456);
              v481 = *(v0 + 1224);
              v482 = *(v0 + 1144);
              v483 = *(v0 + 1136);
              v484 = *(v0 + 1120);
              v485 = *(v0 + 1072);
              v486 = *(v0 + 1024);
              v487 = *(v0 + 1016);
              (*(v0 + 1472))(v481, *(v0 + 960), v483);
              (*(v486 + 16))(v484, v485, v487);
              MLHostTask.status.setter();
              sub_10001C4DC(v481);
              v480(v481, v483);
            }

            v488 = *(v0 + 1584);
            v489 = *(v0 + 1576);
            v490 = *(v0 + 1448);
            v491 = *(v0 + 1440);
            v662 = *(v0 + 1432);
            v492 = *(v0 + 1216);
            v493 = *(v0 + 1136);
            v494 = *(v0 + 1072);
            v495 = *(v0 + 1016);
            v496 = *(v0 + 640);

            v489(v494, v495);
            v491(v492, v496, v493);
            v497 = Logger.logObject.getter();
            v498 = static os_log_type_t.error.getter();
            v499 = os_log_type_enabled(v497, v498);
            v500 = *(v0 + 1456);
            v501 = *(v0 + 1216);
            v502 = *(v0 + 1144);
            v503 = *(v0 + 1136);
            if (v499)
            {
              v673 = v498;
              v504 = swift_slowAlloc();
              v505 = swift_slowAlloc();
              v674 = v505;
              *v504 = 136315138;
              v506 = MLHostTask.name.getter();
              v508 = v507;
              v500(v501, v503);
              v509 = sub_100008A0C(v506, v508, &v674);

              *(v504 + 4) = v509;
              _os_log_impl(&_mh_execute_header, v497, v673, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v504, 0xCu);
              sub_100009914(v505);
            }

            else
            {

              v500(v501, v503);
            }

            v510 = *(v0 + 640);
            v511 = [*(v0 + 1464) processIdentifier];
            v674 = 0;
            v675 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);

            v674 = 0x206B736154;
            v675 = 0xE500000000000000;
            v512._countAndFlagsBits = MLHostTask.name.getter();
            String.append(_:)(v512);

            v513._countAndFlagsBits = 0xD00000000000001FLL;
            v513._object = 0x8000000100073070;
            String.append(_:)(v513);
            sub_1000530BC(v511);

            v610 = *(v0 + 1624);
            v619 = *(v0 + 1632);
            goto LABEL_84;
          }

          v608 = *(v0 + 1624);
          v617 = *(v0 + 1632);
LABEL_75:
          v626 = *(v0 + 1560);
          v640 = *(v0 + 1568);
          v364 = *(v0 + 1552);
          v365 = *(v0 + 1496);
          v366 = *(v0 + 1136);
          v367 = *(v0 + 1080);
          v368 = *(v0 + 1024);
          v369 = *(v0 + 1016);
          v370 = *(v0 + 968);
          v371 = *(v0 + 640);
          v671 = v363;
          v372 = MLHostTask.name.getter();
          v374 = v373;
          v375 = v369;
          v376 = *(v368 + 16);
          v376(v367, v365, v375);
          sub_100019300(v372, v374, v370);
          if (v626(v370, 1, v366) == 1)
          {
            sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
          }

          else
          {
            v377 = *(v0 + 1552);
            v378 = *(v0 + 1480);
            v641 = *(v0 + 1456);
            v379 = *(v0 + 1232);
            v380 = *(v0 + 1144);
            v381 = *(v0 + 1136);
            v382 = *(v0 + 1120);
            v383 = *(v0 + 1080);
            v384 = v376;
            v385 = *(v0 + 1016);
            (*(v0 + 1472))(v379, *(v0 + 968), v381);
            v386 = v385;
            v376 = v384;
            v384(v382, v383, v386);
            MLHostTask.status.setter();
            sub_10001C4DC(v379);
            v641(v379, v381);
          }

          v387 = *(v0 + 1584);
          v388 = *(v0 + 1576);
          v389 = *(v0 + 1552);
          v390 = *(v0 + 1080);
          v391 = *(v0 + 1016);
          v392 = *(v0 + 640);

          v388(v390, v391);
          v393 = MLHostTask.name.getter();
          sub_10001C1E4(v393, v394);

          MLHostResult.status.getter();
          v395 = MLHostResultStatus.rawValue.getter();
          if (v395 == MLHostResultStatus.rawValue.getter())
          {
          }

          else
          {
            v642 = *(v0 + 1584);
            v396 = *(v0 + 1576);
            v397 = *(v0 + 1496);
            v398 = *(v0 + 1120);
            v399 = *(v0 + 1016);
            v400 = *(v0 + 640);
            v658 = [*(v0 + 1464) processIdentifier];
            v674 = 0;
            v675 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);
            v401 = v675;
            *(v0 + 592) = v674;
            *(v0 + 600) = v401;
            v402._countAndFlagsBits = 0x206B736154;
            v402._object = 0xE500000000000000;
            String.append(_:)(v402);
            v403._countAndFlagsBits = MLHostTask.name.getter();
            String.append(_:)(v403);

            v404._object = 0x8000000100073090;
            v404._countAndFlagsBits = 0xD00000000000001CLL;
            String.append(_:)(v404);
            v376(v398, v397, v399);
            _print_unlocked<A, B>(_:_:)();
            v396(v398, v399);
            v405._countAndFlagsBits = 46;
            v405._object = 0xE100000000000000;
            String.append(_:)(v405);
            v406 = *(v0 + 592);
            v407 = *(v0 + 600);
            sub_1000530BC(v658);
          }

LABEL_84:
          v408 = *(v0 + 1536);
          v409 = *(v0 + 1448);
          v410 = *(v0 + 1432);
          (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

          v411 = Logger.logObject.getter();
          v412 = static os_log_type_t.info.getter();

          v413 = os_log_type_enabled(v411, v412);
          v659 = *(v0 + 1608);
          v672 = *(v0 + 1616);
          if (v413)
          {
            v579 = *(v0 + 1536);
            v586 = *(v0 + 1528);
            v414 = *(v0 + 1208);
            v415 = *(v0 + 1144);
            v569 = *(v0 + 1136);
            v572 = *(v0 + 1456);
            v627 = *(v0 + 1520);
            v643 = *(v0 + 776);
            v593 = *(v0 + 720);
            v601 = *(v0 + 760);
            v416 = swift_slowAlloc();
            v417 = swift_slowAlloc();
            v674 = swift_slowAlloc();
            *v416 = 136315650;
            v418 = MLHostTask.name.getter();
            v420 = v419;
            v572(v414, v569);
            v421 = sub_100008A0C(v418, v420, &v674);

            *(v416 + 4) = v421;
            *(v416 + 12) = 2080;
            v422 = Duration.description.getter();
            v424 = sub_100008A0C(v422, v423, &v674);

            *(v416 + 14) = v424;
            *(v416 + 22) = 2112;
            v425 = v579[2];
            *(v416 + 24) = v425;
            *v417 = v425;
            v426 = v425;
            _os_log_impl(&_mh_execute_header, v411, v412, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v416, 0x20u);
            sub_100009C94(v417, &qword_100085970, &qword_100068F48);

            swift_arrayDestroy();

            swift_unknownObjectRelease();
            v427 = v659;
            v659(v601, v593);
            v428 = v643;
            v429 = v593;
          }

          else
          {
            v430 = *(v0 + 1520);
            v431 = *(v0 + 1456);
            v432 = *(v0 + 1208);
            v433 = *(v0 + 1144);
            v434 = *(v0 + 1136);
            v435 = *(v0 + 776);
            v436 = *(v0 + 760);
            v437 = *(v0 + 720);

            swift_unknownObjectRelease();
            v431(v432, v434);
            v427 = v659;
            v659(v436, v437);
            v428 = v435;
            v429 = v437;
          }

          v427(v428, v429);
          v438 = *(v0 + 1544);
          v439 = *(v0 + 1488);
          v440 = *(v0 + 1464);
          v441 = *(v0 + 1416);
          v442 = *(v0 + 912);
          v443 = *(v0 + 904);
          v444 = *(v0 + 896);
          v668 = *(*(v0 + 1536) + 16);
          v445 = v668;

          [v440 invalidate];

          AppExtensionProcess.invalidate()();
          swift_unknownObjectRelease();
          (*(v443 + 8))(v442, v444);
          goto LABEL_88;
        }

        v457 = *(v0 + 1616);
        v458 = *(v0 + 1608);
        v459 = *(v0 + 768);
        v460 = *(v0 + 752);
        v461 = *(v0 + 720);
        v462 = *(v0 + 712);
        v463 = *(v0 + 680);
        static Clock<>.continuous.getter();
        *(v0 + 576) = xmmword_100069320;
        *(v0 + 504) = 0;
        *(v0 + 512) = 0;
        *(v0 + 520) = 1;
        v27 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
        dispatch thunk of Clock.now.getter();
        sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
        dispatch thunk of InstantProtocol.advanced(by:)();
        v458(v459, v461);
        v464 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
        v465 = swift_task_alloc();
        *(v0 + 1640) = v465;
        *v465 = v0;
        v465[1] = sub_100059124;
        v31 = *(v0 + 752);
        v466 = *(v0 + 712);
        v33 = *(v0 + 680);
        v34 = v0 + 504;
LABEL_14:

        return dispatch thunk of Clock.sleep(until:tolerance:)(v31, v34, v33, v27);
      }

LABEL_51:
    }

    v208 = *(v0 + 1536);
    os_unfair_lock_unlock((*(*(v0 + 1424) + 56) + 16));
    if (!*(v208 + 16))
    {
      v209 = *(v0 + 768);
      v210 = *(v0 + 744);
      v211 = *(v0 + 728);
      v212 = *(v0 + 720);
      v213 = *(v0 + 704);
      v214 = *(v0 + 680);
      static Clock<>.continuous.getter();
      *(v0 + 560) = xmmword_100069320;
      *(v0 + 480) = 0;
      *(v0 + 488) = 0;
      *(v0 + 496) = 1;
      v27 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
      dispatch thunk of Clock.now.getter();
      sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
      dispatch thunk of InstantProtocol.advanced(by:)();
      v215 = *(v211 + 8);
      *(v0 + 1656) = v215;
      *(v0 + 1664) = (v211 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v215(v209, v212);
      v216 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
      v217 = swift_task_alloc();
      *(v0 + 1672) = v217;
      *v217 = v0;
      v217[1] = sub_10005B044;
      v31 = *(v0 + 744);
      v218 = *(v0 + 704);
      v33 = *(v0 + 680);
      v34 = v0 + 480;
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  v629 = *(v0 + 1560);
  v646 = *(v0 + 1568);
  v41 = *(v0 + 1552);
  v42 = *(v0 + 1512);
  v43 = *(v0 + 1504);
  v44 = *(v0 + 1136);
  v45 = *(v0 + 1048);
  v46 = *(v0 + 1016);
  v47 = *(v0 + 936);
  v48 = *(v0 + 640);
  v49 = MLHostTask.name.getter();
  v51 = v50;
  v43(v45, enum case for TaskStatus.taskFailed(_:), v46);
  sub_100019300(v49, v51, v47);
  if (v629(v47, 1, v44) == 1)
  {
    sub_100009C94(*(v0 + 936), &qword_100085940, &unk_1000693D0);
  }

  else
  {
    v139 = *(v0 + 1552);
    v140 = *(v0 + 1480);
    v141 = *(v0 + 1456);
    v142 = *(v0 + 1184);
    v143 = *(v0 + 1144);
    v144 = *(v0 + 1136);
    v145 = *(v0 + 1120);
    v146 = *(v0 + 1048);
    v147 = *(v0 + 1024);
    v148 = *(v0 + 1016);
    (*(v0 + 1472))(v142, *(v0 + 936), v144);
    (*(v147 + 16))(v145, v146, v148);
    MLHostTask.status.setter();
    sub_10001C4DC(v142);
    v141(v142, v144);
  }

  v149 = *(v0 + 1584);
  v150 = *(v0 + 1576);
  v151 = *(v0 + 1448);
  v152 = *(v0 + 1440);
  v652 = *(v0 + 1432);
  v153 = *(v0 + 1176);
  v154 = *(v0 + 1136);
  v155 = *(v0 + 1048);
  v156 = *(v0 + 1016);
  v157 = *(v0 + 640);

  v150(v155, v156);
  v152(v153, v157, v154);
  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.error.getter();
  v160 = os_log_type_enabled(v158, v159);
  v161 = *(v0 + 1456);
  v162 = *(v0 + 1176);
  v163 = *(v0 + 1144);
  v164 = *(v0 + 1136);
  if (v160)
  {
    v666 = v159;
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v674 = v166;
    *v165 = 136315138;
    v167 = MLHostTask.name.getter();
    v169 = v168;
    v161(v162, v164);
    v170 = sub_100008A0C(v167, v169, &v674);

    *(v165 + 4) = v170;
    _os_log_impl(&_mh_execute_header, v158, v666, "Task %s has been in shouldRun for too long. Marking task as failed and terminating process.", v165, 0xCu);
    sub_100009914(v166);
  }

  else
  {

    v161(v162, v164);
  }

  v613 = *(v0 + 1544);
  v623 = *(v0 + 1536);
  v596 = *(v0 + 1528);
  v604 = *(v0 + 1520);
  v171 = *(v0 + 1464);
  v634 = *(v0 + 1488);
  v653 = *(v0 + 1416);
  v172 = *(v0 + 912);
  v173 = *(v0 + 904);
  v667 = *(v0 + 896);
  v174 = *(v0 + 776);
  v175 = *(v0 + 728);
  v176 = *(v0 + 720);
  v177 = *(v0 + 640);
  v178 = [v171 processIdentifier];
  v674 = 0;
  v675 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v674 = 0x206B736154;
  v675 = 0xE500000000000000;
  v179._countAndFlagsBits = MLHostTask.name.getter();
  String.append(_:)(v179);

  v180._countAndFlagsBits = 0xD000000000000024;
  v180._object = 0x8000000100073000;
  String.append(_:)(v180);
  sub_1000530BC(v178);

  swift_unknownObjectRelease();
  (*(v175 + 8))(v174, v176);

  [v171 invalidate];

  AppExtensionProcess.invalidate()();
  swift_unknownObjectRelease();
  (*(v173 + 8))(v172, v667);
LABEL_40:
  v668 = 0;
LABEL_88:
  v446 = *(v0 + 1408);
  v447 = *(v0 + 1400);
  v448 = *(v0 + 1392);
  v449 = *(v0 + 1384);
  v450 = *(v0 + 1376);
  v451 = *(v0 + 1368);
  v452 = *(v0 + 1360);
  v453 = *(v0 + 1352);
  v454 = *(v0 + 1344);
  v455 = *(v0 + 1336);
  v515 = *(v0 + 1328);
  v516 = *(v0 + 1320);
  v517 = *(v0 + 1312);
  v518 = *(v0 + 1304);
  v519 = *(v0 + 1296);
  v520 = *(v0 + 1288);
  v521 = *(v0 + 1280);
  v522 = *(v0 + 1272);
  v523 = *(v0 + 1264);
  v524 = *(v0 + 1256);
  v525 = *(v0 + 1248);
  v526 = *(v0 + 1240);
  v527 = *(v0 + 1232);
  v528 = *(v0 + 1224);
  v529 = *(v0 + 1216);
  v530 = *(v0 + 1208);
  v531 = *(v0 + 1200);
  v532 = *(v0 + 1192);
  v533 = *(v0 + 1184);
  v534 = *(v0 + 1176);
  v535 = *(v0 + 1168);
  v536 = *(v0 + 1160);
  v537 = *(v0 + 1128);
  v538 = *(v0 + 1120);
  v539 = *(v0 + 1112);
  v540 = *(v0 + 1104);
  v541 = *(v0 + 1096);
  v542 = *(v0 + 1088);
  v543 = *(v0 + 1080);
  v544 = *(v0 + 1072);
  v545 = *(v0 + 1064);
  v546 = *(v0 + 1056);
  v547 = *(v0 + 1048);
  v548 = *(v0 + 1040);
  v549 = *(v0 + 1032);
  v550 = *(v0 + 1008);
  v551 = *(v0 + 1000);
  v552 = *(v0 + 992);
  v553 = *(v0 + 984);
  v554 = *(v0 + 976);
  v555 = *(v0 + 968);
  v556 = *(v0 + 960);
  v557 = *(v0 + 952);
  v558 = *(v0 + 944);
  v559 = *(v0 + 936);
  v560 = *(v0 + 928);
  v561 = *(v0 + 920);
  v562 = *(v0 + 912);
  v563 = *(v0 + 888);
  v564 = *(v0 + 880);
  v565 = *(v0 + 856);
  v567 = *(v0 + 848);
  v570 = *(v0 + 824);
  v573 = *(v0 + 800);
  v580 = *(v0 + 776);
  v587 = *(v0 + 768);
  v594 = *(v0 + 760);
  v602 = *(v0 + 752);
  v609 = *(v0 + 744);
  v618 = *(v0 + 736);
  v628 = *(v0 + 712);
  v644 = *(v0 + 704);
  v660 = *(v0 + 696);

  v456 = *(v0 + 8);

  return v456(v668);
}

uint64_t sub_100061064()
{
  v651 = v0;
  v1 = *(v0 + 1432);
  (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1712);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Task.sleep interrupted, skipping waiting for extension completion.", v6, 2u);
  }

  v7 = *(v0 + 1424);
  v8 = *(v0 + 672);
  v9 = *(v0 + 664);
  os_unfair_lock_lock((*(v7 + 56) + 16));
  v10 = *(v7 + 72);

  LOBYTE(v8) = sub_1000292B0(v9, v8, v10);

  os_unfair_lock_unlock((*(v7 + 56) + 16));
  if ((v8 & 1) == 0)
  {
    v11 = *(v0 + 1544);
    swift_beginAccess();
    if (*(v11 + 16) == 2)
    {
      v604 = *(v0 + 1560);
      v621 = *(v0 + 1568);
      v12 = *(v0 + 1552);
      v13 = *(v0 + 1512);
      v14 = *(v0 + 1504);
      v15 = *(v0 + 1136);
      v16 = *(v0 + 1048);
      v17 = *(v0 + 1016);
      v18 = *(v0 + 936);
      v19 = *(v0 + 640);
      v20 = MLHostTask.name.getter();
      v22 = v21;
      v14(v16, enum case for TaskStatus.taskFailed(_:), v17);
      sub_100019300(v20, v22, v18);
      if (v604(v18, 1, v15) == 1)
      {
        sub_100009C94(*(v0 + 936), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v110 = *(v0 + 1552);
        v111 = *(v0 + 1480);
        v112 = *(v0 + 1456);
        v113 = *(v0 + 1184);
        v114 = *(v0 + 1144);
        v115 = *(v0 + 1136);
        v116 = *(v0 + 1120);
        v117 = *(v0 + 1048);
        v118 = *(v0 + 1024);
        v119 = *(v0 + 1016);
        (*(v0 + 1472))(v113, *(v0 + 936), v115);
        (*(v118 + 16))(v116, v117, v119);
        MLHostTask.status.setter();
        sub_10001C4DC(v113);
        v112(v113, v115);
      }

      v120 = *(v0 + 1584);
      v121 = *(v0 + 1576);
      v122 = *(v0 + 1448);
      v123 = *(v0 + 1440);
      v627 = *(v0 + 1432);
      v124 = *(v0 + 1176);
      v125 = *(v0 + 1136);
      v126 = *(v0 + 1048);
      v127 = *(v0 + 1016);
      v128 = *(v0 + 640);

      v121(v126, v127);
      v123(v124, v128, v125);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();
      v131 = os_log_type_enabled(v129, v130);
      v132 = *(v0 + 1456);
      v133 = *(v0 + 1176);
      v134 = *(v0 + 1144);
      v135 = *(v0 + 1136);
      if (v131)
      {
        v641 = v130;
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v649 = v137;
        *v136 = 136315138;
        v138 = MLHostTask.name.getter();
        v140 = v139;
        v132(v133, v135);
        v141 = sub_100008A0C(v138, v140, &v649);

        *(v136 + 4) = v141;
        _os_log_impl(&_mh_execute_header, v129, v641, "Task %s has been in shouldRun for too long. Marking task as failed and terminating process.", v136, 0xCu);
        sub_100009914(v137);
      }

      else
      {

        v132(v133, v135);
      }

      v588 = *(v0 + 1544);
      v598 = *(v0 + 1536);
      v571 = *(v0 + 1528);
      v579 = *(v0 + 1520);
      v142 = *(v0 + 1464);
      v609 = *(v0 + 1488);
      v628 = *(v0 + 1416);
      v143 = *(v0 + 912);
      v144 = *(v0 + 904);
      v642 = *(v0 + 896);
      v145 = *(v0 + 776);
      v146 = *(v0 + 728);
      v147 = *(v0 + 720);
      v148 = *(v0 + 640);
      v149 = [v142 processIdentifier];
      v649 = 0;
      v650 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v649 = 0x206B736154;
      v650 = 0xE500000000000000;
      v150._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v150);

      v151._countAndFlagsBits = 0xD000000000000024;
      v151._object = 0x8000000100073000;
      String.append(_:)(v151);
      sub_1000530BC(v149);

      swift_unknownObjectRelease();
      (*(v146 + 8))(v145, v147);

      [v142 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v144 + 8))(v143, v642);
LABEL_25:
      v643 = 0;
LABEL_76:
      v421 = *(v0 + 1408);
      v422 = *(v0 + 1400);
      v423 = *(v0 + 1392);
      v424 = *(v0 + 1384);
      v425 = *(v0 + 1376);
      v426 = *(v0 + 1368);
      v427 = *(v0 + 1360);
      v428 = *(v0 + 1352);
      v429 = *(v0 + 1344);
      v430 = *(v0 + 1336);
      v490 = *(v0 + 1328);
      v491 = *(v0 + 1320);
      v492 = *(v0 + 1312);
      v493 = *(v0 + 1304);
      v494 = *(v0 + 1296);
      v495 = *(v0 + 1288);
      v496 = *(v0 + 1280);
      v497 = *(v0 + 1272);
      v498 = *(v0 + 1264);
      v499 = *(v0 + 1256);
      v500 = *(v0 + 1248);
      v501 = *(v0 + 1240);
      v502 = *(v0 + 1232);
      v503 = *(v0 + 1224);
      v504 = *(v0 + 1216);
      v505 = *(v0 + 1208);
      v506 = *(v0 + 1200);
      v507 = *(v0 + 1192);
      v508 = *(v0 + 1184);
      v509 = *(v0 + 1176);
      v510 = *(v0 + 1168);
      v511 = *(v0 + 1160);
      v512 = *(v0 + 1128);
      v513 = *(v0 + 1120);
      v514 = *(v0 + 1112);
      v515 = *(v0 + 1104);
      v516 = *(v0 + 1096);
      v517 = *(v0 + 1088);
      v518 = *(v0 + 1080);
      v519 = *(v0 + 1072);
      v520 = *(v0 + 1064);
      v521 = *(v0 + 1056);
      v522 = *(v0 + 1048);
      v523 = *(v0 + 1040);
      v524 = *(v0 + 1032);
      v525 = *(v0 + 1008);
      v526 = *(v0 + 1000);
      v527 = *(v0 + 992);
      v528 = *(v0 + 984);
      v529 = *(v0 + 976);
      v530 = *(v0 + 968);
      v531 = *(v0 + 960);
      v532 = *(v0 + 952);
      v533 = *(v0 + 944);
      v534 = *(v0 + 936);
      v535 = *(v0 + 928);
      v536 = *(v0 + 920);
      v537 = *(v0 + 912);
      v538 = *(v0 + 888);
      v539 = *(v0 + 880);
      v540 = *(v0 + 856);
      v542 = *(v0 + 848);
      v545 = *(v0 + 824);
      v548 = *(v0 + 800);
      v555 = *(v0 + 776);
      v562 = *(v0 + 768);
      v569 = *(v0 + 760);
      v577 = *(v0 + 752);
      v584 = *(v0 + 744);
      v593 = *(v0 + 736);
      v603 = *(v0 + 712);
      v619 = *(v0 + 704);
      v635 = *(v0 + 696);

      v431 = *(v0 + 8);

      return v431(v643);
    }
  }

  v23 = *(v0 + 1544);
  swift_beginAccess();
  v24 = *(v23 + 16);
  if (v24 == 2)
  {
    v25 = *(v0 + 1448);
    v26 = *(v0 + 1432);
    (*(v0 + 1440))(*(v0 + 1280), *(v0 + 640), *(v0 + 1136));
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v605 = *(v0 + 1592);
      v622 = *(v0 + 1600);
      v29 = *(v0 + 1424);
      v30 = *(v0 + 1280);
      v31 = *(v0 + 1144);
      v32 = *(v0 + 1136);
      v595 = *(v0 + 672);
      v578 = *(v0 + 1456);
      v586 = *(v0 + 664);
      v33 = swift_slowAlloc();
      v649 = swift_slowAlloc();
      *v33 = 136315650;
      v34 = MLHostTask.name.getter();
      v36 = v35;
      v578(v30, v32);
      v37 = sub_100008A0C(v34, v36, &v649);

      *(v33 + 4) = v37;
      *(v33 + 12) = 1024;
      os_unfair_lock_lock((*(v29 + 56) + 16));
      v38 = *(v29 + 72);

      LOBYTE(v32) = sub_1000292B0(v586, v595, v38);

      os_unfair_lock_unlock((*(v29 + 56) + 16));
      *(v33 + 14) = v32 & 1;
      *(v33 + 18) = 2080;
      v39 = Duration.description.getter();
      v41 = sub_100008A0C(v39, v40, &v649);

      *(v33 + 20) = v41;
      _os_log_impl(&_mh_execute_header, v27, v28, "Task %s skipping execution, isDeferred = %{BOOL}d, after %s.", v33, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v60 = *(v0 + 1456);
      v61 = *(v0 + 1280);
      v62 = *(v0 + 1144);
      v63 = *(v0 + 1136);

      v60(v61, v63);
    }

    v624 = *(v0 + 1560);
    v638 = *(v0 + 1568);
    v64 = *(v0 + 1552);
    v65 = *(v0 + 1512);
    v66 = *(v0 + 1504);
    v67 = *(v0 + 1136);
    v68 = *(v0 + 1056);
    v69 = *(v0 + 1016);
    v70 = *(v0 + 944);
    v71 = *(v0 + 640);
    v72 = MLHostTask.name.getter();
    v74 = v73;
    v66(v68, enum case for TaskStatus.taskDeferred(_:), v69);
    sub_100019300(v72, v74, v70);
    if (v624(v70, 1, v67) == 1)
    {
      sub_100009C94(*(v0 + 944), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v88 = *(v0 + 1552);
      v89 = *(v0 + 1480);
      v90 = *(v0 + 1456);
      v91 = *(v0 + 1192);
      v92 = *(v0 + 1144);
      v93 = *(v0 + 1136);
      v94 = *(v0 + 1120);
      v95 = *(v0 + 1056);
      v96 = *(v0 + 1024);
      v97 = *(v0 + 1016);
      (*(v0 + 1472))(v91, *(v0 + 944), v93);
      (*(v96 + 16))(v94, v95, v97);
      MLHostTask.status.setter();
      sub_10001C4DC(v91);
      v90(v91, v93);
    }

    v98 = *(v0 + 1584);
    v99 = *(v0 + 1576);
    v587 = *(v0 + 1544);
    v597 = *(v0 + 1536);
    v100 = *(v0 + 1464);
    v608 = *(v0 + 1488);
    v626 = *(v0 + 1416);
    v101 = *(v0 + 1056);
    v102 = *(v0 + 1016);
    v103 = *(v0 + 912);
    v104 = *(v0 + 904);
    v640 = *(v0 + 896);
    v563 = *(v0 + 776);
    v570 = *(v0 + 1520);
    v105 = *(v0 + 728);
    v549 = *(v0 + 1528);
    v556 = *(v0 + 720);
    v106 = *(v0 + 640);

    v99(v101, v102);
    v107 = [v100 processIdentifier];
    v649 = 0;
    v650 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v649 = 0x206B736154;
    v650 = 0xE500000000000000;
    v108._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v108);

    v109._countAndFlagsBits = 0xD00000000000001ELL;
    v109._object = 0x8000000100073030;
    String.append(_:)(v109);
    sub_1000530BC(v107);

    swift_unknownObjectRelease();
    (*(v105 + 8))(v563, v556);

    [v100 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v104 + 8))(v103, v640);
    goto LABEL_25;
  }

  v42 = *(v0 + 1448);
  v43 = *(v0 + 1440);
  v44 = *(v0 + 1432);
  v45 = *(v0 + 1136);
  v46 = *(v0 + 640);
  if ((v24 & 1) == 0)
  {
    v43(*(v0 + 1264), v46, v45);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v625 = *(v0 + 1592);
      v639 = *(v0 + 1600);
      v607 = *(v0 + 1456);
      v77 = *(v0 + 1264);
      v78 = *(v0 + 1144);
      v79 = *(v0 + 1136);
      v80 = swift_slowAlloc();
      v649 = swift_slowAlloc();
      *v80 = 136315650;
      v81 = MLHostTask.name.getter();
      v83 = v82;
      v607(v77, v79);
      v84 = sub_100008A0C(v81, v83, &v649);

      *(v80 + 4) = v84;
      *(v80 + 12) = 1024;
      *(v80 + 14) = 0;
      *(v80 + 18) = 2080;
      v85 = Duration.description.getter();
      v87 = sub_100008A0C(v85, v86, &v649);

      *(v80 + 20) = v87;
      _os_log_impl(&_mh_execute_header, v75, v76, "Task %s skipping execution, shouldRun = %{BOOL}d, after %s.", v80, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v194 = *(v0 + 1456);
      v195 = *(v0 + 1264);
      v196 = *(v0 + 1144);
      v197 = *(v0 + 1136);

      v194(v195, v197);
    }

    v630 = *(v0 + 1560);
    v644 = *(v0 + 1568);
    v198 = *(v0 + 1552);
    v199 = *(v0 + 1512);
    v200 = *(v0 + 1504);
    v201 = *(v0 + 1136);
    v202 = *(v0 + 1064);
    v203 = *(v0 + 1016);
    v204 = *(v0 + 952);
    v205 = *(v0 + 640);
    v206 = MLHostTask.name.getter();
    v208 = v207;
    v200(v202, enum case for TaskStatus.taskFailed(_:), v203);
    sub_100019300(v206, v208, v204);
    if (v630(v204, 1, v201) == 1)
    {
      sub_100009C94(*(v0 + 952), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v209 = *(v0 + 1552);
      v210 = *(v0 + 1480);
      v211 = *(v0 + 1456);
      v212 = *(v0 + 1200);
      v213 = *(v0 + 1144);
      v214 = *(v0 + 1136);
      v215 = *(v0 + 1120);
      v216 = *(v0 + 1064);
      v217 = *(v0 + 1024);
      v218 = *(v0 + 1016);
      (*(v0 + 1472))(v212, *(v0 + 952), v214);
      (*(v217 + 16))(v215, v216, v218);
      MLHostTask.status.setter();
      sub_10001C4DC(v212);
      v211(v212, v214);
    }

    v219 = *(v0 + 1584);
    v220 = *(v0 + 1576);
    v221 = *(v0 + 1552);
    v222 = *(v0 + 1536);
    v573 = *(v0 + 1544);
    v581 = *(v0 + 1488);
    v223 = *(v0 + 1464);
    v224 = *(v0 + 1064);
    v225 = *(v0 + 1016);
    v590 = *(v0 + 912);
    v600 = *(v0 + 904);
    v611 = *(v0 + 1416);
    v631 = *(v0 + 896);
    v645 = *(v0 + 1520);
    v565 = *(v0 + 776);
    v226 = *(v0 + 728);
    v551 = *(v0 + 1528);
    v558 = *(v0 + 720);
    v227 = *(v0 + 640);

    v220(v224, v225);
    v228 = MLHostTask.name.getter();
    sub_10001C1E4(v228, v229);

    v230 = [v223 processIdentifier];
    v649 = 0;
    v650 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v649 = 0x206B736154;
    v650 = 0xE500000000000000;
    v231._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v231);

    v232._countAndFlagsBits = 0xD000000000000014;
    v232._object = 0x8000000100073050;
    String.append(_:)(v232);
    sub_1000530BC(v230);

    swift_unknownObjectRelease();
    (*(v226 + 8))(v565, v558);
    swift_beginAccess();
    v643 = *(v222 + 16);
    v233 = v643;

    [v223 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v600 + 8))(v590, v631);
    goto LABEL_76;
  }

  v43(*(v0 + 1272), v46, v45);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v606 = *(v0 + 1592);
    v623 = *(v0 + 1600);
    v596 = *(v0 + 1456);
    v49 = *(v0 + 1272);
    v50 = *(v0 + 1144);
    v51 = *(v0 + 1136);
    v52 = swift_slowAlloc();
    v649 = swift_slowAlloc();
    *v52 = 136315650;
    v53 = MLHostTask.name.getter();
    v55 = v54;
    v596(v49, v51);
    v56 = sub_100008A0C(v53, v55, &v649);

    *(v52 + 4) = v56;
    *(v52 + 12) = 1024;
    *(v52 + 14) = 1;
    *(v52 + 18) = 2080;
    v57 = Duration.description.getter();
    v59 = sub_100008A0C(v57, v58, &v649);

    *(v52 + 20) = v59;
    _os_log_impl(&_mh_execute_header, v47, v48, "Task %s continuing execution, shouldRun = %{BOOL}d, after %s.", v52, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v152 = *(v0 + 1456);
    v153 = *(v0 + 1272);
    v154 = *(v0 + 1144);
    v155 = *(v0 + 1136);

    v152(v153, v155);
  }

  v156 = *(v0 + 1536);
  v610 = *(v0 + 1520);
  v629 = *(v0 + 1528);
  v157 = *(v0 + 1512);
  v158 = *(v0 + 1496);
  v589 = *(v0 + 1480);
  v599 = *(v0 + 1488);
  v580 = *(v0 + 1472);
  v550 = *(v0 + 1440);
  v557 = *(v0 + 1448);
  v546 = *(v0 + 1336);
  v543 = *(v0 + 1136);
  v159 = *(v0 + 1120);
  v160 = *(v0 + 1024);
  v161 = *(v0 + 1016);
  v572 = *(v0 + 648);
  v541 = *(v0 + 640);
  v162 = (*(v0 + 476) + 16) & ~*(v0 + 476);
  v564 = (*(v0 + 1152) + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
  v163 = (v564 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v0 + 1504))(v159, *(v0 + 500), v161);
  swift_beginAccess();
  (*(v160 + 40))(v158, v159, v161);
  swift_beginAccess();
  v164 = *(v156 + 16);
  *(v156 + 16) = 0;

  v550(v546, v541, v543);
  v165 = swift_allocObject();
  v580(v165 + v162, v546, v543);
  *(v165 + v564) = v156;
  *(v165 + v163) = v599;
  *(v165 + ((v163 + 15) & 0xFFFFFFFFFFFFFFF8)) = v572;
  *(v0 + 240) = sub_1000643F4;
  *(v0 + 248) = v165;
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_100065970;
  *(v0 + 232) = &unk_100082F50;
  v166 = _Block_copy((v0 + 208));
  v167 = *(v0 + 248);

  [v610 doWorkWithContext:v629 reply:v166];
  _Block_release(v166);
  v168 = *(v0 + 1424);
  os_unfair_lock_lock((*(v168 + 56) + 16));
  v169 = *(v168 + 72);
  if (*(v169 + 16))
  {
    v170 = *(v0 + 672);
    v171 = *(v0 + 664);
    v172 = *(v169 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v173 = Hasher._finalize()();
    v174 = -1 << *(v169 + 32);
    v175 = v173 & ~v174;
    if ((*(v169 + 56 + ((v175 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v175))
    {
      v176 = ~v174;
      while (1)
      {
        v177 = (*(v169 + 48) + 16 * v175);
        v178 = *v177 == *(v0 + 664) && v177[1] == *(v0 + 672);
        if (v178 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v175 = (v175 + 1) & v176;
        if (((*(v169 + 56 + ((v175 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v175) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v234 = *(v0 + 1424);

      os_unfair_lock_unlock((*(v234 + 56) + 16));
      goto LABEL_48;
    }

LABEL_36:
  }

  v179 = *(v0 + 1536);
  os_unfair_lock_unlock((*(*(v0 + 1424) + 56) + 16));
  if (!*(v179 + 16))
  {
    v180 = *(v0 + 768);
    v181 = *(v0 + 744);
    v182 = *(v0 + 728);
    v183 = *(v0 + 720);
    v184 = *(v0 + 704);
    v185 = *(v0 + 680);
    static Clock<>.continuous.getter();
    *(v0 + 560) = xmmword_100069320;
    *(v0 + 480) = 0;
    *(v0 + 488) = 0;
    *(v0 + 496) = 1;
    v186 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v187 = *(v182 + 8);
    *(v0 + 1656) = v187;
    *(v0 + 1664) = (v182 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v187(v180, v183);
    v188 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v189 = swift_task_alloc();
    *(v0 + 1672) = v189;
    *v189 = v0;
    v189[1] = sub_10005B044;
    v190 = *(v0 + 744);
    v191 = *(v0 + 704);
    v192 = *(v0 + 680);
    v193 = v0 + 480;
    goto LABEL_39;
  }

LABEL_48:
  v235 = *(v0 + 1536);
  v236 = *(v0 + 776);
  v237 = *(v0 + 768);
  v238 = *(v0 + 728);
  v239 = *(v0 + 720);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v240 = *(v238 + 8);
  *(v0 + 1608) = v240;
  *(v0 + 1616) = (v238 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v240(v237, v239);
  v241 = *(v235 + 16);
  v242 = *(v0 + 1448);
  v243 = *(v0 + 1440);
  v244 = *(v0 + 1432);
  v245 = *(v0 + 1136);
  v246 = *(v0 + 640);
  if (v241)
  {
    v243(*(v0 + 1256), v246, v245);
    v247 = v241;
    v248 = Logger.logObject.getter();
    v249 = static os_log_type_t.info.getter();

    v250 = os_log_type_enabled(v248, v249);
    v251 = *(v0 + 1456);
    v252 = *(v0 + 1256);
    v253 = *(v0 + 1144);
    v254 = *(v0 + 1136);
    v643 = v241;
    v591 = v240;
    if (v250)
    {
      v255 = swift_slowAlloc();
      v566 = swift_slowAlloc();
      v649 = swift_slowAlloc();
      *v255 = 136315650;
      v559 = v248;
      v256 = MLHostTask.name.getter();
      v552 = v249;
      v257 = v247;
      v259 = v258;
      v251(v252, v254);
      v260 = sub_100008A0C(v256, v259, &v649);

      *(v255 + 4) = v260;
      *(v255 + 12) = 2080;
      v261 = Duration.description.getter();
      v263 = sub_100008A0C(v261, v262, &v649);

      *(v255 + 14) = v263;
      *(v255 + 22) = 2112;
      *(v255 + 24) = v257;
      *v566 = v241;
      v264 = v257;
      _os_log_impl(&_mh_execute_header, v559, v552, "Task %s completed after %s. TaskResult: %@", v255, 0x20u);
      sub_100009C94(v566, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();
    }

    else
    {

      v251(v252, v254);
    }

    v612 = *(v0 + 1568);
    v574 = *(v0 + 1560);
    v280 = *(v0 + 1552);
    v281 = *(v0 + 1496);
    v282 = *(v0 + 1136);
    v283 = *(v0 + 1088);
    v284 = *(v0 + 1024);
    v285 = *(v0 + 1016);
    v286 = *(v0 + 976);
    v287 = *(v0 + 640);
    v288 = MLHostTask.name.getter();
    v290 = v289;
    v291 = v285;
    v292 = *(v284 + 16);
    v292(v283, v281, v291);
    sub_100019300(v288, v290, v286);
    if (v574(v286, 1, v282) == 1)
    {
      sub_100009C94(*(v0 + 976), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v293 = *(v0 + 1552);
      v294 = *(v0 + 1480);
      v613 = *(v0 + 1456);
      v295 = *(v0 + 1240);
      v296 = *(v0 + 1144);
      v297 = *(v0 + 1136);
      v298 = *(v0 + 1120);
      v299 = *(v0 + 1088);
      v300 = v292;
      v301 = *(v0 + 1016);
      (*(v0 + 1472))(v295, *(v0 + 976), v297);
      v302 = v301;
      v292 = v300;
      v300(v298, v299, v302);
      MLHostTask.status.setter();
      sub_10001C4DC(v295);
      v613(v295, v297);
    }

    v303 = *(v0 + 1584);
    v304 = *(v0 + 1576);
    v305 = *(v0 + 1552);
    v306 = *(v0 + 1088);
    v307 = *(v0 + 1016);
    v308 = *(v0 + 640);

    v304(v306, v307);
    v309 = MLHostTask.name.getter();
    sub_10001C1E4(v309, v310);

    MLHostResult.status.getter();
    v311 = MLHostResultStatus.rawValue.getter();
    if (v311 == MLHostResultStatus.rawValue.getter())
    {
      v312 = *(v0 + 1544);
      v313 = *(v0 + 1536);
      v314 = *(v0 + 1528);
      v315 = *(v0 + 1520);
      v591(*(v0 + 776), *(v0 + 720));

      swift_unknownObjectRelease();
    }

    else
    {
      v560 = *(v0 + 1576);
      v567 = *(v0 + 1584);
      v316 = *(v0 + 1544);
      v317 = *(v0 + 1536);
      v318 = *(v0 + 1496);
      v319 = *(v0 + 1120);
      v320 = *(v0 + 1016);
      v614 = *(v0 + 776);
      v632 = *(v0 + 1520);
      v575 = *(v0 + 1528);
      v582 = *(v0 + 720);
      v321 = *(v0 + 640);
      v553 = [*(v0 + 1464) processIdentifier];
      v649 = 0;
      v650 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v322 = v650;
      *(v0 + 608) = v649;
      *(v0 + 616) = v322;
      v323._countAndFlagsBits = 0x206B736154;
      v323._object = 0xE500000000000000;
      String.append(_:)(v323);
      v324._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v324);

      v325._object = 0x8000000100073090;
      v325._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v325);
      v292(v319, v318, v320);
      _print_unlocked<A, B>(_:_:)();
      v560(v319, v320);
      v326._countAndFlagsBits = 46;
      v326._object = 0xE100000000000000;
      String.append(_:)(v326);
      v327 = *(v0 + 608);
      v328 = *(v0 + 616);
      sub_1000530BC(v553);

      swift_unknownObjectRelease();
      v591(v614, v582);
    }

    v329 = *(v0 + 1488);
    v330 = *(v0 + 1464);
    v331 = *(v0 + 1416);
    v332 = *(v0 + 912);
    v333 = *(v0 + 904);
    v334 = *(v0 + 896);

    [v330 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v333 + 8))(v332, v334);
    goto LABEL_76;
  }

  v243(*(v0 + 1248), v246, v245);
  v265 = Logger.logObject.getter();
  v266 = static os_log_type_t.info.getter();
  v267 = os_log_type_enabled(v265, v266);
  v268 = *(v0 + 1456);
  v269 = *(v0 + 1248);
  v270 = *(v0 + 1144);
  v271 = *(v0 + 1136);
  if (v267)
  {
    v272 = swift_slowAlloc();
    v649 = swift_slowAlloc();
    *v272 = 136315394;
    v273 = MLHostTask.name.getter();
    v275 = v274;
    v268(v269, v271);
    v276 = sub_100008A0C(v273, v275, &v649);

    *(v272 + 4) = v276;
    *(v272 + 12) = 2080;
    v277 = Duration.description.getter();
    v279 = sub_100008A0C(v277, v278, &v649);

    *(v272 + 14) = v279;
    _os_log_impl(&_mh_execute_header, v265, v266, "Task %s asked to terminate because of deferral after %s.", v272, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v268(v269, v271);
  }

  v335 = *(v0 + 1536);
  v336 = *(v0 + 1520);
  v337 = *(v0 + 760);
  static ContinuousClock.now.getter();
  [v336 doStop];
  v338 = *(v335 + 16);
  if (v338)
  {
    goto LABEL_63;
  }

  *(v0 + 1624) = 0u;
  if (static Duration.< infix(_:_:)())
  {
    v338 = *(*(v0 + 1536) + 16);
    if (!v338)
    {
      v620 = *(v0 + 1560);
      v636 = *(v0 + 1568);
      v442 = *(v0 + 1552);
      v443 = *(v0 + 1512);
      v444 = *(v0 + 1504);
      v445 = *(v0 + 1136);
      v446 = *(v0 + 1072);
      v447 = *(v0 + 1016);
      v448 = *(v0 + 960);
      v449 = *(v0 + 640);
      v450 = MLHostTask.name.getter();
      v452 = v451;
      v444(v446, enum case for TaskStatus.taskDeferred(_:), v447);
      sub_100019300(v450, v452, v448);
      if (v620(v448, 1, v445) == 1)
      {
        sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v453 = *(v0 + 1552);
        v454 = *(v0 + 1480);
        v455 = *(v0 + 1456);
        v456 = *(v0 + 1224);
        v457 = *(v0 + 1144);
        v458 = *(v0 + 1136);
        v459 = *(v0 + 1120);
        v460 = *(v0 + 1072);
        v461 = *(v0 + 1024);
        v462 = *(v0 + 1016);
        (*(v0 + 1472))(v456, *(v0 + 960), v458);
        (*(v461 + 16))(v459, v460, v462);
        MLHostTask.status.setter();
        sub_10001C4DC(v456);
        v455(v456, v458);
      }

      v463 = *(v0 + 1584);
      v464 = *(v0 + 1576);
      v465 = *(v0 + 1448);
      v466 = *(v0 + 1440);
      v637 = *(v0 + 1432);
      v467 = *(v0 + 1216);
      v468 = *(v0 + 1136);
      v469 = *(v0 + 1072);
      v470 = *(v0 + 1016);
      v471 = *(v0 + 640);

      v464(v469, v470);
      v466(v467, v471, v468);
      v472 = Logger.logObject.getter();
      v473 = static os_log_type_t.error.getter();
      v474 = os_log_type_enabled(v472, v473);
      v475 = *(v0 + 1456);
      v476 = *(v0 + 1216);
      v477 = *(v0 + 1144);
      v478 = *(v0 + 1136);
      if (v474)
      {
        v648 = v473;
        v479 = swift_slowAlloc();
        v480 = swift_slowAlloc();
        v649 = v480;
        *v479 = 136315138;
        v481 = MLHostTask.name.getter();
        v483 = v482;
        v475(v476, v478);
        v484 = sub_100008A0C(v481, v483, &v649);

        *(v479 + 4) = v484;
        _os_log_impl(&_mh_execute_header, v472, v648, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v479, 0xCu);
        sub_100009914(v480);
      }

      else
      {

        v475(v476, v478);
      }

      v485 = *(v0 + 640);
      v486 = [*(v0 + 1464) processIdentifier];
      v649 = 0;
      v650 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v649 = 0x206B736154;
      v650 = 0xE500000000000000;
      v487._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v487);

      v488._countAndFlagsBits = 0xD00000000000001FLL;
      v488._object = 0x8000000100073070;
      String.append(_:)(v488);
      sub_1000530BC(v486);

      v585 = *(v0 + 1624);
      v594 = *(v0 + 1632);
      goto LABEL_72;
    }

    v583 = *(v0 + 1624);
    v592 = *(v0 + 1632);
LABEL_63:
    v601 = *(v0 + 1560);
    v615 = *(v0 + 1568);
    v339 = *(v0 + 1552);
    v340 = *(v0 + 1496);
    v341 = *(v0 + 1136);
    v342 = *(v0 + 1080);
    v343 = *(v0 + 1024);
    v344 = *(v0 + 1016);
    v345 = *(v0 + 968);
    v346 = *(v0 + 640);
    v646 = v338;
    v347 = MLHostTask.name.getter();
    v349 = v348;
    v350 = v344;
    v351 = *(v343 + 16);
    v351(v342, v340, v350);
    sub_100019300(v347, v349, v345);
    if (v601(v345, 1, v341) == 1)
    {
      sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v352 = *(v0 + 1552);
      v353 = *(v0 + 1480);
      v616 = *(v0 + 1456);
      v354 = *(v0 + 1232);
      v355 = *(v0 + 1144);
      v356 = *(v0 + 1136);
      v357 = *(v0 + 1120);
      v358 = *(v0 + 1080);
      v359 = v351;
      v360 = *(v0 + 1016);
      (*(v0 + 1472))(v354, *(v0 + 968), v356);
      v361 = v360;
      v351 = v359;
      v359(v357, v358, v361);
      MLHostTask.status.setter();
      sub_10001C4DC(v354);
      v616(v354, v356);
    }

    v362 = *(v0 + 1584);
    v363 = *(v0 + 1576);
    v364 = *(v0 + 1552);
    v365 = *(v0 + 1080);
    v366 = *(v0 + 1016);
    v367 = *(v0 + 640);

    v363(v365, v366);
    v368 = MLHostTask.name.getter();
    sub_10001C1E4(v368, v369);

    MLHostResult.status.getter();
    v370 = MLHostResultStatus.rawValue.getter();
    if (v370 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v617 = *(v0 + 1584);
      v371 = *(v0 + 1576);
      v372 = *(v0 + 1496);
      v373 = *(v0 + 1120);
      v374 = *(v0 + 1016);
      v375 = *(v0 + 640);
      v633 = [*(v0 + 1464) processIdentifier];
      v649 = 0;
      v650 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v376 = v650;
      *(v0 + 592) = v649;
      *(v0 + 600) = v376;
      v377._countAndFlagsBits = 0x206B736154;
      v377._object = 0xE500000000000000;
      String.append(_:)(v377);
      v378._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v378);

      v379._object = 0x8000000100073090;
      v379._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v379);
      v351(v373, v372, v374);
      _print_unlocked<A, B>(_:_:)();
      v371(v373, v374);
      v380._countAndFlagsBits = 46;
      v380._object = 0xE100000000000000;
      String.append(_:)(v380);
      v381 = *(v0 + 592);
      v382 = *(v0 + 600);
      sub_1000530BC(v633);
    }

LABEL_72:
    v383 = *(v0 + 1536);
    v384 = *(v0 + 1448);
    v385 = *(v0 + 1432);
    (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

    v386 = Logger.logObject.getter();
    v387 = static os_log_type_t.info.getter();

    v388 = os_log_type_enabled(v386, v387);
    v634 = *(v0 + 1608);
    v647 = *(v0 + 1616);
    if (v388)
    {
      v554 = *(v0 + 1536);
      v561 = *(v0 + 1528);
      v389 = *(v0 + 1208);
      v390 = *(v0 + 1144);
      v544 = *(v0 + 1136);
      v547 = *(v0 + 1456);
      v602 = *(v0 + 1520);
      v618 = *(v0 + 776);
      v568 = *(v0 + 720);
      v576 = *(v0 + 760);
      v391 = swift_slowAlloc();
      v392 = swift_slowAlloc();
      v649 = swift_slowAlloc();
      *v391 = 136315650;
      v393 = MLHostTask.name.getter();
      v395 = v394;
      v547(v389, v544);
      v396 = sub_100008A0C(v393, v395, &v649);

      *(v391 + 4) = v396;
      *(v391 + 12) = 2080;
      v397 = Duration.description.getter();
      v399 = sub_100008A0C(v397, v398, &v649);

      *(v391 + 14) = v399;
      *(v391 + 22) = 2112;
      v400 = v554[2];
      *(v391 + 24) = v400;
      *v392 = v400;
      v401 = v400;
      _os_log_impl(&_mh_execute_header, v386, v387, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v391, 0x20u);
      sub_100009C94(v392, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();

      swift_unknownObjectRelease();
      v402 = v634;
      v634(v576, v568);
      v403 = v618;
      v404 = v568;
    }

    else
    {
      v405 = *(v0 + 1520);
      v406 = *(v0 + 1456);
      v407 = *(v0 + 1208);
      v408 = *(v0 + 1144);
      v409 = *(v0 + 1136);
      v410 = *(v0 + 776);
      v411 = *(v0 + 760);
      v412 = *(v0 + 720);

      swift_unknownObjectRelease();
      v406(v407, v409);
      v402 = v634;
      v634(v411, v412);
      v403 = v410;
      v404 = v412;
    }

    v402(v403, v404);
    v413 = *(v0 + 1544);
    v414 = *(v0 + 1488);
    v415 = *(v0 + 1464);
    v416 = *(v0 + 1416);
    v417 = *(v0 + 912);
    v418 = *(v0 + 904);
    v419 = *(v0 + 896);
    v643 = *(*(v0 + 1536) + 16);
    v420 = v643;

    [v415 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v418 + 8))(v417, v419);
    goto LABEL_76;
  }

  v432 = *(v0 + 1616);
  v433 = *(v0 + 1608);
  v434 = *(v0 + 768);
  v435 = *(v0 + 752);
  v436 = *(v0 + 720);
  v437 = *(v0 + 712);
  v438 = *(v0 + 680);
  static Clock<>.continuous.getter();
  *(v0 + 576) = xmmword_100069320;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  *(v0 + 520) = 1;
  v186 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v433(v434, v436);
  v439 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v440 = swift_task_alloc();
  *(v0 + 1640) = v440;
  *v440 = v0;
  v440[1] = sub_100059124;
  v190 = *(v0 + 752);
  v441 = *(v0 + 712);
  v192 = *(v0 + 680);
  v193 = v0 + 504;
LABEL_39:

  return dispatch thunk of Clock.sleep(until:tolerance:)(v190, v193, v192, v186);
}

unint64_t sub_100063B48()
{
  result = qword_100085C68;
  if (!qword_100085C68)
  {
    sub_100009A48(255, &qword_100085C60, BGSystemTaskResult_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C68);
  }

  return result;
}

id sub_100063BB0(uint64_t a1, unint64_t a2)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000098DC(v4, qword_100087610);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100008A0C(a1, a2, &v32);
    _os_log_impl(&_mh_execute_header, v5, v6, "Deregistering task: %s", v7, 0xCu);
    sub_100009914(v8);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100008A0C(a1, a2, &v32);
    _os_log_impl(&_mh_execute_header, v9, v10, "Cancelling task request: %s", v11, 0xCu);
    sub_100009914(v12);
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedScheduler];
  v15 = String._bridgeToObjectiveC()();
  v32 = 0;
  v16 = [v14 cancelTaskRequestWithIdentifier:v15 error:&v32];

  if (v16)
  {
    v17 = v32;
  }

  else
  {
    v18 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Task cancellation failed: %@", v21, 0xCu);
      sub_100009C94(v22, &qword_100085970, &qword_100068F48);
    }

    else
    {
    }
  }

  v24 = [v13 sharedScheduler];
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 deregisterTaskWithIdentifier:v25];

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_100008A0C(a1, a2, &v32);
    *(v29 + 12) = 1024;
    *(v29 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "Task %s deregistered wtih result: %{BOOL}d", v29, 0x12u);
    sub_100009914(v30);
  }

  return v26;
}

uint64_t sub_10006409C()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064194()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100064230(uint64_t a1)
{
  v3 = *(type metadata accessor for MLHostTask() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10002C1B4(a1, v1 + v4);
}

uint64_t sub_1000642CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064330()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10006440C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MLHostTask() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v6);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v8, v9, v10);
}

uint64_t sub_100064500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006591C;

  return sub_10004A160(a1, v4, v5, v6);
}

uint64_t sub_1000645B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000645F4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_10006466C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_1000646BC()
{
  result = qword_100085D48;
  if (!qword_100085D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085D48);
  }

  return result;
}

uint64_t sub_100064720()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000647B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064924(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1000649BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v8 = *(v2 + 16);
  return sub_10003B5D0(a1, v6, v7, a2);
}

uint64_t sub_100064B38(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100044164(a1, a2, v7, v6);
}

uint64_t sub_100064BEC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_1000438F4(a1, a2, v7, v6);
}

uint64_t sub_100064CA0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100043BC4(a1, a2, v7, v6);
}

uint64_t sub_100064D54(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100043E94(a1, a2, v7, v6);
}

uint64_t sub_100064E08(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042144(a1, a2, v7, v6);
}

uint64_t sub_100064EBC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042510(a1, a2, v7, v6);
}

uint64_t sub_100064F70(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042944(a1, a2, v7, v6);
}

uint64_t sub_100065024(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042C14(a1, a2, v7, v6);
}

uint64_t sub_1000650D8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042EE4(a1, a2, v7, v6);
}

uint64_t sub_10006518C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_1000431B4(a1, a2, v7, v6);
}

uint64_t sub_100065240(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100043484(a1, a2, v7, v6);
}

uint64_t sub_1000652F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006591C;

  return sub_100043754(a1, a2);
}

uint64_t sub_100065404(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_1000654AC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000654F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_10003A518();
}

uint64_t sub_100065530(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_1000655B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000655F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006591C;

  return sub_10003C270(a1, v4, v5, v7, v6);
}

uint64_t sub_1000656B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009AD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100065720()
{
  result = qword_1000860E8;
  if (!qword_1000860E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860E8);
  }

  return result;
}

unint64_t sub_100065778()
{
  result = qword_1000860F0;
  if (!qword_1000860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860F0);
  }

  return result;
}

unint64_t sub_1000657D0()
{
  result = qword_1000860F8;
  if (!qword_1000860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860F8);
  }

  return result;
}

unint64_t sub_100065828()
{
  result = qword_100086100;
  if (!qword_100086100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086100);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudChannelsGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudChannelsGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100065B08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7104112;
  }

  else
  {
    v4 = 0x74736F686C6DLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7104112;
  }

  else
  {
    v6 = 0x74736F686C6DLL;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100065BA4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100065C1C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100065C80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100065CF4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000827B8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100065D54(uint64_t *a1@<X8>)
{
  v2 = 7104112;
  if (!*v1)
  {
    v2 = 0x74736F686C6DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100065E4C()
{
  result = qword_100086170;
  if (!qword_100086170)
  {
    sub_100009AD8(&qword_100086178, qword_1000699C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086170);
  }

  return result;
}

unint64_t sub_100065EB4()
{
  result = qword_100086180;
  if (!qword_100086180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086180);
  }

  return result;
}

unint64_t sub_100065F08()
{
  result = qword_100086188;
  if (!qword_100086188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086188);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall RemoteProcessInfo.valueStringArray(forEntitlement:)(Swift::String forEntitlement)
{
  v1 = RemoteProcessInfo.valueStringArray(forEntitlement:)(forEntitlement._countAndFlagsBits, forEntitlement._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}
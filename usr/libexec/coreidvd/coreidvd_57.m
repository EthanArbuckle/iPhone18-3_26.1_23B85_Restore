uint64_t sub_100605F38()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v29 = *v0;

  v3 = v1[61];
  v4 = v1[60];
  v5 = v1[59];
  v6 = v1[58];
  v7 = v1[57];
  v8 = v1[56];
  v9 = v1[53];
  v10 = v1[52];
  v11 = v1[51];
  v15 = v1[50];
  v16 = v1[49];
  v17 = v1[48];
  v18 = v1[47];
  v19 = v1[44];
  v20 = v1[41];
  v21 = v1[40];
  v22 = v1[39];
  v23 = v1[38];
  v24 = v1[37];
  v25 = v1[36];
  v26 = v1[35];
  v27 = v1[34];
  v28 = v1[33];
  v12 = v1[32];

  v13 = *(v29 + 8);

  return v13();
}

uint64_t sub_100606324()
{
  v1 = *(*v0 + 512);
  v3 = *v0;

  return _swift_task_switch(sub_100606420, 0, 0);
}

uint64_t sub_100606420()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);
  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v8 = *(v0 + 448);
  v7 = *(v0 + 456);
  v9 = *(v0 + 416);
  v10 = *(v0 + 424);
  v12 = *(v0 + 400);
  v11 = *(v0 + 408);
  v15 = *(v0 + 392);
  v16 = *(v0 + 384);
  v17 = *(v0 + 376);
  v18 = *(v0 + 352);
  v19 = *(v0 + 328);
  v20 = *(v0 + 320);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  v23 = *(v0 + 296);
  v24 = *(v0 + 288);
  v25 = *(v0 + 280);
  v26 = *(v0 + 272);
  v27 = *(v0 + 264);
  v28 = *(v0 + 256);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1006065E0()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v29 = *v0;

  v3 = v1[61];
  v4 = v1[60];
  v5 = v1[59];
  v6 = v1[58];
  v7 = v1[57];
  v8 = v1[56];
  v9 = v1[53];
  v10 = v1[52];
  v11 = v1[51];
  v15 = v1[50];
  v16 = v1[49];
  v17 = v1[48];
  v18 = v1[47];
  v19 = v1[44];
  v20 = v1[41];
  v21 = v1[40];
  v22 = v1[39];
  v23 = v1[38];
  v24 = v1[37];
  v25 = v1[36];
  v26 = v1[35];
  v27 = v1[34];
  v28 = v1[33];
  v12 = v1[32];

  v13 = *(v29 + 8);

  return v13();
}

uint64_t sub_1006069CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 200) = a3;
  *(v6 + 208) = a4;
  *(v6 + 520) = a2;
  *(v6 + 192) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 232) = v7;
  v8 = *(v7 - 8);
  *(v6 + 240) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  *(v6 + 328) = v11;
  v12 = *(v11 - 8);
  *(v6 + 336) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 344) = swift_task_alloc();
  v14 = type metadata accessor for URL();
  *(v6 + 352) = v14;
  v15 = *(v14 - 8);
  *(v6 + 360) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v6 + 424) = v17;
  v18 = *(v17 - 8);
  *(v6 + 432) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100606CC8, 0, 0);
}

uint64_t sub_100606CC8()
{
  v221 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 480);
    v6 = *(v0 + 416);
    v7 = *(v0 + 352);
    v8 = *(v0 + 360);
    v9 = *(v0 + 192);
    defaultLogger()();
    (*(v8 + 16))(v6, v9, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 480);
    v15 = *(v0 + 424);
    v14 = *(v0 + 432);
    v16 = *(v0 + 416);
    v18 = *(v0 + 352);
    v17 = *(v0 + 360);
    if (v12)
    {
      v214 = *(v0 + 424);
      v19 = swift_slowAlloc();
      logb = v11;
      v20 = swift_slowAlloc();
      v220 = v20;
      *v19 = 136446210;
      sub_100607F5C();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v209 = v13;
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_100141FE4(v21, v23, &v220);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v10, logb, "Refreshing cache for %{public}s due to user defaults setting", v19, 0xCu);
      sub_10000BB78(v20);

      (*(v14 + 8))(v209, v214);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
    }

    v49 = swift_task_alloc();
    *(v0 + 488) = v49;
    *v49 = v0;
    v50 = sub_100609EE4;
    goto LABEL_10;
  }

  v25 = [v1 standardUserDefaults];
  v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v27 = NSUserDefaults.internalBool(forKey:)(v26);

  if (!v27)
  {
    v54 = *(v0 + 336);
    v53 = *(v0 + 344);
    v55 = *(v0 + 328);
    v56 = *(v0 + 216);
    v57 = *(*(v0 + 360) + 16);
    v57(*(v0 + 400), *(v0 + 192), *(v0 + 352));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v58 = sub_1005FEBE8(v53);
    *(v0 + 496) = v58;
    (*(v54 + 8))(v53, v55);
    if (!v58)
    {
      v69 = *(v0 + 352);
      v70 = *(v0 + 192);
      if ((*(v0 + 520) & 1) == 0)
      {
        v131 = *(v0 + 440);
        v132 = *(v0 + 368);
        defaultLogger()();
        v57(v132, v70, v69);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.debug.getter();
        v135 = os_log_type_enabled(v133, v134);
        v137 = *(v0 + 432);
        v136 = *(v0 + 440);
        v138 = *(v0 + 424);
        v140 = *(v0 + 360);
        v139 = *(v0 + 368);
        v141 = *(v0 + 352);
        if (v135)
        {
          v218 = *(v0 + 424);
          v142 = swift_slowAlloc();
          logd = v134;
          v143 = swift_slowAlloc();
          v220 = v143;
          *v142 = 136446210;
          sub_100607F5C();
          v144 = dispatch thunk of CustomStringConvertible.description.getter();
          v212 = v136;
          v146 = v145;
          (*(v140 + 8))(v139, v141);
          v147 = sub_100141FE4(v144, v146, &v220);

          *(v142 + 4) = v147;
          _os_log_impl(&_mh_execute_header, v133, logd, "Refreshing cache for %{public}s because no response exists in cache", v142, 0xCu);
          sub_10000BB78(v143);

          (*(v137 + 8))(v212, v218);
        }

        else
        {

          (*(v140 + 8))(v139, v141);
          (*(v137 + 8))(v136, v138);
        }

        v49 = swift_task_alloc();
        *(v0 + 512) = v49;
        *v49 = v0;
        v50 = sub_100609EE8;
        goto LABEL_10;
      }

      v71 = *(v0 + 448);
      v72 = *(v0 + 376);
      defaultLogger()();
      v57(v72, v70, v69);
      v33 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      v74 = os_log_type_enabled(v33, v73);
      v36 = *(v0 + 448);
      v38 = *(v0 + 424);
      v37 = *(v0 + 432);
      v39 = *(v0 + 376);
      v41 = *(v0 + 352);
      v40 = *(v0 + 360);
      if (v74)
      {
        v215 = *(v0 + 424);
        v42 = swift_slowAlloc();
        log = v73;
        v43 = swift_slowAlloc();
        v220 = v43;
        *v42 = 136446210;
        sub_100607F5C();
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v210 = v36;
        v77 = v76;
        (*(v40 + 8))(v39, v41);
        v78 = sub_100141FE4(v75, v77, &v220);

        *(v42 + 4) = v78;
        v48 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v36, v38);
      goto LABEL_23;
    }

    v59 = [v58 userInfo];
    v216 = v57;
    if (v59)
    {
      v60 = v59;
      v61 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v61 + 16))
      {
        v62 = sub_10003AECC(v0 + 56);
        if (v63)
        {
          sub_10001F2EC(*(v61 + 56) + 32 * v62, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v64 = *(v0 + 320);
            v65 = *(v0 + 232);
            v66 = *(v0 + 240);
            v67 = swift_dynamicCast();
            v68 = *(v66 + 56);
            v68(v64, v67 ^ 1u, 1, v65);
            goto LABEL_29;
          }

LABEL_28:
          v90 = *(v0 + 320);
          v91 = *(v0 + 232);
          v92 = *(v0 + 240);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v68 = *(v92 + 56);
          v68(v90, 1, 1, v91);
LABEL_29:
          v93 = [v58 userInfo];
          if (v93)
          {
            v94 = v93;
            v95 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v95 + 16))
            {
              v96 = sub_10003AECC(v0 + 16);
              if (v97)
              {
                sub_10001F2EC(*(v95 + 56) + 32 * v96, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v98 = *(v0 + 312);
                  v99 = *(v0 + 232);
                  v100 = *(v0 + 240);
                  v101 = swift_dynamicCast() ^ 1;
                  v102 = v98;
                  goto LABEL_37;
                }

LABEL_36:
                v103 = *(v0 + 312);
                v99 = *(v0 + 232);
                v104 = *(v0 + 240);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v102 = v103;
                v101 = 1;
LABEL_37:
                v68(v102, v101, 1, v99);
                v105 = *(v0 + 304);
                v106 = *(v0 + 232);
                v107 = *(v0 + 240);
                sub_10000BBC4(*(v0 + 320), v105, &unk_100849400, &unk_1006BFBB0);
                v108 = *(v107 + 48);
                v109 = v108(v105, 1, v106);
                v110 = *(v0 + 304);
                if (v109 == 1)
                {
                  v111 = *(v0 + 304);
                }

                else
                {
                  v112 = *(v0 + 296);
                  v113 = *(v0 + 232);
                  v114 = *(v0 + 200);
                  v115 = *(*(v0 + 240) + 32);
                  v115(*(v0 + 272), *(v0 + 304), v113);
                  sub_10000BBC4(v114, v112, &unk_100849400, &unk_1006BFBB0);
                  v116 = v108(v112, 1, v113);
                  v117 = *(v0 + 296);
                  v118 = *(v0 + 272);
                  if (v116 != 1)
                  {
                    v115(*(v0 + 264), *(v0 + 296), *(v0 + 232));
                    if (static Date.> infix(_:_:)())
                    {
                      v148 = *(v0 + 464);
                      v149 = *(v0 + 392);
                      v150 = *(v0 + 352);
                      v151 = *(v0 + 192);
                      defaultLogger()();
                      v216(v149, v151, v150);
                      v152 = Logger.logObject.getter();
                      v203 = static os_log_type_t.debug.getter();
                      loga = v152;
                      v153 = os_log_type_enabled(v152, v203);
                      v154 = *(v0 + 464);
                      v155 = *(v0 + 432);
                      v213 = *(v0 + 424);
                      v156 = *(v0 + 392);
                      v157 = *(v0 + 352);
                      v158 = *(v0 + 360);
                      v159 = *(v0 + 272);
                      v219 = *(v0 + 264);
                      v160 = *(v0 + 232);
                      v161 = *(v0 + 240);
                      if (v153)
                      {
                        v201 = *(v0 + 272);
                        v162 = swift_slowAlloc();
                        v195 = swift_slowAlloc();
                        v220 = v195;
                        *v162 = 136446210;
                        sub_100607F5C();
                        v197 = v154;
                        v199 = v160;
                        v163 = dispatch thunk of CustomStringConvertible.description.getter();
                        v165 = v164;
                        (*(v158 + 8))(v156, v157);
                        v166 = sub_100141FE4(v163, v165, &v220);

                        *(v162 + 4) = v166;
                        v167 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v203, v167, v162, 0xCu);
                        sub_10000BB78(v195);

                        (*(v155 + 8))(v197, v213);
                        v178 = *(v161 + 8);
                        v178(v219, v199);
                        v179 = v201;
                        v180 = v199;
LABEL_61:
                        v178(v179, v180);
                        v184 = *(v0 + 320);
                        sub_10000BE18(*(v0 + 312), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v184, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v158 + 8))(v156, v157);
                      (*(v155 + 8))(v154, v213);
                      v178 = *(v161 + 8);
                      v178(v219, v160);
                      v179 = v159;
                      v180 = v160;
                      goto LABEL_61;
                    }

                    v181 = *(v0 + 272);
                    v182 = *(v0 + 232);
                    v183 = *(*(v0 + 240) + 8);
                    v183(*(v0 + 264), v182);
                    v183(v181, v182);
LABEL_42:
                    v119 = *(v0 + 288);
                    v120 = *(v0 + 232);
                    sub_10000BBC4(*(v0 + 312), v119, &unk_100849400, &unk_1006BFBB0);
                    v121 = v108(v119, 1, v120);
                    v122 = *(v0 + 288);
                    if (v121 == 1)
                    {
                      v123 = *(v0 + 288);
LABEL_46:
                      sub_10000BE18(v123, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v49 = swift_task_alloc();
                      *(v0 + 504) = v49;
                      *v49 = v0;
                      v50 = sub_100607E60;
LABEL_10:
                      v49[1] = v50;
                      v51 = *(v0 + 224);

                      return sub_1005AEFEC(v51);
                    }

                    v124 = *(v0 + 280);
                    v125 = *(v0 + 232);
                    v126 = *(v0 + 208);
                    v127 = *(*(v0 + 240) + 32);
                    v127(*(v0 + 256), *(v0 + 288), v125);
                    sub_10000BBC4(v126, v124, &unk_100849400, &unk_1006BFBB0);
                    v128 = v108(v124, 1, v125);
                    v129 = *(v0 + 280);
                    v130 = *(v0 + 256);
                    if (v128 == 1)
                    {
                      (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
                      v123 = v129;
                      goto LABEL_46;
                    }

                    v127(*(v0 + 248), *(v0 + 280), *(v0 + 232));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v185 = *(v0 + 256);
                      v186 = *(v0 + 232);
                      v187 = *(*(v0 + 240) + 8);
                      v187(*(v0 + 248), v186);
                      v187(v185, v186);
                      goto LABEL_47;
                    }

                    v168 = *(v0 + 456);
                    v169 = *(v0 + 384);
                    v170 = *(v0 + 352);
                    v171 = *(v0 + 192);
                    defaultLogger()();
                    v216(v169, v171, v170);
                    v172 = Logger.logObject.getter();
                    v203 = static os_log_type_t.debug.getter();
                    loga = v172;
                    v173 = os_log_type_enabled(v172, v203);
                    v154 = *(v0 + 456);
                    v155 = *(v0 + 432);
                    v213 = *(v0 + 424);
                    v156 = *(v0 + 384);
                    v157 = *(v0 + 352);
                    v158 = *(v0 + 360);
                    v159 = *(v0 + 256);
                    v219 = *(v0 + 248);
                    v160 = *(v0 + 232);
                    v161 = *(v0 + 240);
                    if (v173)
                    {
                      v201 = *(v0 + 256);
                      v162 = swift_slowAlloc();
                      v195 = swift_slowAlloc();
                      v220 = v195;
                      *v162 = 136446210;
                      sub_100607F5C();
                      v197 = v154;
                      v199 = v160;
                      v174 = dispatch thunk of CustomStringConvertible.description.getter();
                      v176 = v175;
                      (*(v158 + 8))(v156, v157);
                      v177 = sub_100141FE4(v174, v176, &v220);

                      *(v162 + 4) = v177;
                      v167 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 240) + 8))(*(v0 + 272), *(v0 + 232));
                  v111 = v117;
                }

                sub_10000BE18(v111, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v28 = *(v0 + 472);
  v29 = *(v0 + 408);
  v30 = *(v0 + 352);
  v31 = *(v0 + 360);
  v32 = *(v0 + 192);
  defaultLogger()();
  (*(v31 + 16))(v29, v32, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 472);
  v38 = *(v0 + 424);
  v37 = *(v0 + 432);
  v39 = *(v0 + 408);
  v41 = *(v0 + 352);
  v40 = *(v0 + 360);
  if (!v35)
  {
    goto LABEL_22;
  }

  v215 = *(v0 + 424);
  v42 = swift_slowAlloc();
  log = v34;
  v43 = swift_slowAlloc();
  v220 = v43;
  *v42 = 136446210;
  sub_100607F5C();
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v210 = v36;
  v46 = v45;
  (*(v40 + 8))(v39, v41);
  v47 = sub_100141FE4(v44, v46, &v220);

  *(v42 + 4) = v47;
  v48 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v33, log, v48, v42, 0xCu);
  sub_10000BB78(v43);

  (*(v37 + 8))(v210, v215);
LABEL_23:
  v80 = *(v0 + 472);
  v79 = *(v0 + 480);
  v82 = *(v0 + 456);
  v81 = *(v0 + 464);
  v84 = *(v0 + 440);
  v83 = *(v0 + 448);
  v85 = *(v0 + 408);
  v86 = *(v0 + 416);
  v88 = *(v0 + 392);
  v87 = *(v0 + 400);
  v188 = *(v0 + 384);
  v189 = *(v0 + 376);
  v190 = *(v0 + 368);
  v191 = *(v0 + 344);
  v192 = *(v0 + 320);
  v193 = *(v0 + 312);
  v194 = *(v0 + 304);
  v196 = *(v0 + 296);
  v198 = *(v0 + 288);
  v200 = *(v0 + 280);
  v202 = *(v0 + 272);
  logc = *(v0 + 264);
  v211 = *(v0 + 256);
  v217 = *(v0 + 248);

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_100607E60()
{
  v1 = *(*v0 + 504);
  v3 = *v0;

  return _swift_task_switch(sub_100609EF0, 0, 0);
}

unint64_t sub_100607F5C()
{
  result = qword_1008418B0;
  if (!qword_1008418B0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008418B0);
  }

  return result;
}

uint64_t sub_100607FB4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 200) = a3;
  *(v6 + 208) = a4;
  *(v6 + 520) = a2;
  *(v6 + 192) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 232) = v7;
  v8 = *(v7 - 8);
  *(v6 + 240) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  *(v6 + 328) = v11;
  v12 = *(v11 - 8);
  *(v6 + 336) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 344) = swift_task_alloc();
  v14 = type metadata accessor for URL();
  *(v6 + 352) = v14;
  v15 = *(v14 - 8);
  *(v6 + 360) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v6 + 424) = v17;
  v18 = *(v17 - 8);
  *(v6 + 432) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_1006082B0, 0, 0);
}

uint64_t sub_1006082B0()
{
  v221 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 480);
    v6 = *(v0 + 416);
    v7 = *(v0 + 352);
    v8 = *(v0 + 360);
    v9 = *(v0 + 192);
    defaultLogger()();
    (*(v8 + 16))(v6, v9, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 480);
    v15 = *(v0 + 424);
    v14 = *(v0 + 432);
    v16 = *(v0 + 416);
    v18 = *(v0 + 352);
    v17 = *(v0 + 360);
    if (v12)
    {
      v214 = *(v0 + 424);
      v19 = swift_slowAlloc();
      logb = v11;
      v20 = swift_slowAlloc();
      v220 = v20;
      *v19 = 136446210;
      sub_100607F5C();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v209 = v13;
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_100141FE4(v21, v23, &v220);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v10, logb, "Refreshing cache for %{public}s due to user defaults setting", v19, 0xCu);
      sub_10000BB78(v20);

      (*(v14 + 8))(v209, v214);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
    }

    v49 = swift_task_alloc();
    *(v0 + 488) = v49;
    *v49 = v0;
    v50 = sub_100609448;
    goto LABEL_10;
  }

  v25 = [v1 standardUserDefaults];
  v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v27 = NSUserDefaults.internalBool(forKey:)(v26);

  if (!v27)
  {
    v54 = *(v0 + 336);
    v53 = *(v0 + 344);
    v55 = *(v0 + 328);
    v56 = *(v0 + 216);
    v57 = *(*(v0 + 360) + 16);
    v57(*(v0 + 400), *(v0 + 192), *(v0 + 352));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v58 = sub_1005FEBE8(v53);
    *(v0 + 496) = v58;
    (*(v54 + 8))(v53, v55);
    if (!v58)
    {
      v69 = *(v0 + 352);
      v70 = *(v0 + 192);
      if ((*(v0 + 520) & 1) == 0)
      {
        v131 = *(v0 + 440);
        v132 = *(v0 + 368);
        defaultLogger()();
        v57(v132, v70, v69);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.debug.getter();
        v135 = os_log_type_enabled(v133, v134);
        v137 = *(v0 + 432);
        v136 = *(v0 + 440);
        v138 = *(v0 + 424);
        v140 = *(v0 + 360);
        v139 = *(v0 + 368);
        v141 = *(v0 + 352);
        if (v135)
        {
          v218 = *(v0 + 424);
          v142 = swift_slowAlloc();
          logd = v134;
          v143 = swift_slowAlloc();
          v220 = v143;
          *v142 = 136446210;
          sub_100607F5C();
          v144 = dispatch thunk of CustomStringConvertible.description.getter();
          v212 = v136;
          v146 = v145;
          (*(v140 + 8))(v139, v141);
          v147 = sub_100141FE4(v144, v146, &v220);

          *(v142 + 4) = v147;
          _os_log_impl(&_mh_execute_header, v133, logd, "Refreshing cache for %{public}s because no response exists in cache", v142, 0xCu);
          sub_10000BB78(v143);

          (*(v137 + 8))(v212, v218);
        }

        else
        {

          (*(v140 + 8))(v139, v141);
          (*(v137 + 8))(v136, v138);
        }

        v49 = swift_task_alloc();
        *(v0 + 512) = v49;
        *v49 = v0;
        v50 = sub_100609AF0;
        goto LABEL_10;
      }

      v71 = *(v0 + 448);
      v72 = *(v0 + 376);
      defaultLogger()();
      v57(v72, v70, v69);
      v33 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      v74 = os_log_type_enabled(v33, v73);
      v36 = *(v0 + 448);
      v38 = *(v0 + 424);
      v37 = *(v0 + 432);
      v39 = *(v0 + 376);
      v41 = *(v0 + 352);
      v40 = *(v0 + 360);
      if (v74)
      {
        v215 = *(v0 + 424);
        v42 = swift_slowAlloc();
        log = v73;
        v43 = swift_slowAlloc();
        v220 = v43;
        *v42 = 136446210;
        sub_100607F5C();
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v210 = v36;
        v77 = v76;
        (*(v40 + 8))(v39, v41);
        v78 = sub_100141FE4(v75, v77, &v220);

        *(v42 + 4) = v78;
        v48 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v36, v38);
      goto LABEL_23;
    }

    v59 = [v58 userInfo];
    v216 = v57;
    if (v59)
    {
      v60 = v59;
      v61 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v61 + 16))
      {
        v62 = sub_10003AECC(v0 + 56);
        if (v63)
        {
          sub_10001F2EC(*(v61 + 56) + 32 * v62, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v64 = *(v0 + 320);
            v65 = *(v0 + 232);
            v66 = *(v0 + 240);
            v67 = swift_dynamicCast();
            v68 = *(v66 + 56);
            v68(v64, v67 ^ 1u, 1, v65);
            goto LABEL_29;
          }

LABEL_28:
          v90 = *(v0 + 320);
          v91 = *(v0 + 232);
          v92 = *(v0 + 240);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v68 = *(v92 + 56);
          v68(v90, 1, 1, v91);
LABEL_29:
          v93 = [v58 userInfo];
          if (v93)
          {
            v94 = v93;
            v95 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v95 + 16))
            {
              v96 = sub_10003AECC(v0 + 16);
              if (v97)
              {
                sub_10001F2EC(*(v95 + 56) + 32 * v96, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v98 = *(v0 + 312);
                  v99 = *(v0 + 232);
                  v100 = *(v0 + 240);
                  v101 = swift_dynamicCast() ^ 1;
                  v102 = v98;
                  goto LABEL_37;
                }

LABEL_36:
                v103 = *(v0 + 312);
                v99 = *(v0 + 232);
                v104 = *(v0 + 240);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v102 = v103;
                v101 = 1;
LABEL_37:
                v68(v102, v101, 1, v99);
                v105 = *(v0 + 304);
                v106 = *(v0 + 232);
                v107 = *(v0 + 240);
                sub_10000BBC4(*(v0 + 320), v105, &unk_100849400, &unk_1006BFBB0);
                v108 = *(v107 + 48);
                v109 = v108(v105, 1, v106);
                v110 = *(v0 + 304);
                if (v109 == 1)
                {
                  v111 = *(v0 + 304);
                }

                else
                {
                  v112 = *(v0 + 296);
                  v113 = *(v0 + 232);
                  v114 = *(v0 + 200);
                  v115 = *(*(v0 + 240) + 32);
                  v115(*(v0 + 272), *(v0 + 304), v113);
                  sub_10000BBC4(v114, v112, &unk_100849400, &unk_1006BFBB0);
                  v116 = v108(v112, 1, v113);
                  v117 = *(v0 + 296);
                  v118 = *(v0 + 272);
                  if (v116 != 1)
                  {
                    v115(*(v0 + 264), *(v0 + 296), *(v0 + 232));
                    if (static Date.> infix(_:_:)())
                    {
                      v148 = *(v0 + 464);
                      v149 = *(v0 + 392);
                      v150 = *(v0 + 352);
                      v151 = *(v0 + 192);
                      defaultLogger()();
                      v216(v149, v151, v150);
                      v152 = Logger.logObject.getter();
                      v203 = static os_log_type_t.debug.getter();
                      loga = v152;
                      v153 = os_log_type_enabled(v152, v203);
                      v154 = *(v0 + 464);
                      v155 = *(v0 + 432);
                      v213 = *(v0 + 424);
                      v156 = *(v0 + 392);
                      v157 = *(v0 + 352);
                      v158 = *(v0 + 360);
                      v159 = *(v0 + 272);
                      v219 = *(v0 + 264);
                      v160 = *(v0 + 232);
                      v161 = *(v0 + 240);
                      if (v153)
                      {
                        v201 = *(v0 + 272);
                        v162 = swift_slowAlloc();
                        v195 = swift_slowAlloc();
                        v220 = v195;
                        *v162 = 136446210;
                        sub_100607F5C();
                        v197 = v154;
                        v199 = v160;
                        v163 = dispatch thunk of CustomStringConvertible.description.getter();
                        v165 = v164;
                        (*(v158 + 8))(v156, v157);
                        v166 = sub_100141FE4(v163, v165, &v220);

                        *(v162 + 4) = v166;
                        v167 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v203, v167, v162, 0xCu);
                        sub_10000BB78(v195);

                        (*(v155 + 8))(v197, v213);
                        v178 = *(v161 + 8);
                        v178(v219, v199);
                        v179 = v201;
                        v180 = v199;
LABEL_61:
                        v178(v179, v180);
                        v184 = *(v0 + 320);
                        sub_10000BE18(*(v0 + 312), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v184, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v158 + 8))(v156, v157);
                      (*(v155 + 8))(v154, v213);
                      v178 = *(v161 + 8);
                      v178(v219, v160);
                      v179 = v159;
                      v180 = v160;
                      goto LABEL_61;
                    }

                    v181 = *(v0 + 272);
                    v182 = *(v0 + 232);
                    v183 = *(*(v0 + 240) + 8);
                    v183(*(v0 + 264), v182);
                    v183(v181, v182);
LABEL_42:
                    v119 = *(v0 + 288);
                    v120 = *(v0 + 232);
                    sub_10000BBC4(*(v0 + 312), v119, &unk_100849400, &unk_1006BFBB0);
                    v121 = v108(v119, 1, v120);
                    v122 = *(v0 + 288);
                    if (v121 == 1)
                    {
                      v123 = *(v0 + 288);
LABEL_46:
                      sub_10000BE18(v123, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v49 = swift_task_alloc();
                      *(v0 + 504) = v49;
                      *v49 = v0;
                      v50 = sub_100609834;
LABEL_10:
                      v49[1] = v50;
                      v51 = *(v0 + 224);

                      return sub_1005BCC9C(v51);
                    }

                    v124 = *(v0 + 280);
                    v125 = *(v0 + 232);
                    v126 = *(v0 + 208);
                    v127 = *(*(v0 + 240) + 32);
                    v127(*(v0 + 256), *(v0 + 288), v125);
                    sub_10000BBC4(v126, v124, &unk_100849400, &unk_1006BFBB0);
                    v128 = v108(v124, 1, v125);
                    v129 = *(v0 + 280);
                    v130 = *(v0 + 256);
                    if (v128 == 1)
                    {
                      (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
                      v123 = v129;
                      goto LABEL_46;
                    }

                    v127(*(v0 + 248), *(v0 + 280), *(v0 + 232));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v185 = *(v0 + 256);
                      v186 = *(v0 + 232);
                      v187 = *(*(v0 + 240) + 8);
                      v187(*(v0 + 248), v186);
                      v187(v185, v186);
                      goto LABEL_47;
                    }

                    v168 = *(v0 + 456);
                    v169 = *(v0 + 384);
                    v170 = *(v0 + 352);
                    v171 = *(v0 + 192);
                    defaultLogger()();
                    v216(v169, v171, v170);
                    v172 = Logger.logObject.getter();
                    v203 = static os_log_type_t.debug.getter();
                    loga = v172;
                    v173 = os_log_type_enabled(v172, v203);
                    v154 = *(v0 + 456);
                    v155 = *(v0 + 432);
                    v213 = *(v0 + 424);
                    v156 = *(v0 + 384);
                    v157 = *(v0 + 352);
                    v158 = *(v0 + 360);
                    v159 = *(v0 + 256);
                    v219 = *(v0 + 248);
                    v160 = *(v0 + 232);
                    v161 = *(v0 + 240);
                    if (v173)
                    {
                      v201 = *(v0 + 256);
                      v162 = swift_slowAlloc();
                      v195 = swift_slowAlloc();
                      v220 = v195;
                      *v162 = 136446210;
                      sub_100607F5C();
                      v197 = v154;
                      v199 = v160;
                      v174 = dispatch thunk of CustomStringConvertible.description.getter();
                      v176 = v175;
                      (*(v158 + 8))(v156, v157);
                      v177 = sub_100141FE4(v174, v176, &v220);

                      *(v162 + 4) = v177;
                      v167 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 240) + 8))(*(v0 + 272), *(v0 + 232));
                  v111 = v117;
                }

                sub_10000BE18(v111, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v28 = *(v0 + 472);
  v29 = *(v0 + 408);
  v30 = *(v0 + 352);
  v31 = *(v0 + 360);
  v32 = *(v0 + 192);
  defaultLogger()();
  (*(v31 + 16))(v29, v32, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 472);
  v38 = *(v0 + 424);
  v37 = *(v0 + 432);
  v39 = *(v0 + 408);
  v41 = *(v0 + 352);
  v40 = *(v0 + 360);
  if (!v35)
  {
    goto LABEL_22;
  }

  v215 = *(v0 + 424);
  v42 = swift_slowAlloc();
  log = v34;
  v43 = swift_slowAlloc();
  v220 = v43;
  *v42 = 136446210;
  sub_100607F5C();
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v210 = v36;
  v46 = v45;
  (*(v40 + 8))(v39, v41);
  v47 = sub_100141FE4(v44, v46, &v220);

  *(v42 + 4) = v47;
  v48 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v33, log, v48, v42, 0xCu);
  sub_10000BB78(v43);

  (*(v37 + 8))(v210, v215);
LABEL_23:
  v80 = *(v0 + 472);
  v79 = *(v0 + 480);
  v82 = *(v0 + 456);
  v81 = *(v0 + 464);
  v84 = *(v0 + 440);
  v83 = *(v0 + 448);
  v85 = *(v0 + 408);
  v86 = *(v0 + 416);
  v88 = *(v0 + 392);
  v87 = *(v0 + 400);
  v188 = *(v0 + 384);
  v189 = *(v0 + 376);
  v190 = *(v0 + 368);
  v191 = *(v0 + 344);
  v192 = *(v0 + 320);
  v193 = *(v0 + 312);
  v194 = *(v0 + 304);
  v196 = *(v0 + 296);
  v198 = *(v0 + 288);
  v200 = *(v0 + 280);
  v202 = *(v0 + 272);
  logc = *(v0 + 264);
  v211 = *(v0 + 256);
  v217 = *(v0 + 248);

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_100609448()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v29 = *v0;

  v3 = v1[60];
  v4 = v1[59];
  v5 = v1[58];
  v6 = v1[57];
  v7 = v1[56];
  v8 = v1[55];
  v9 = v1[52];
  v10 = v1[51];
  v11 = v1[50];
  v15 = v1[49];
  v16 = v1[48];
  v17 = v1[47];
  v18 = v1[46];
  v19 = v1[43];
  v20 = v1[40];
  v21 = v1[39];
  v22 = v1[38];
  v23 = v1[37];
  v24 = v1[36];
  v25 = v1[35];
  v26 = v1[34];
  v27 = v1[33];
  v28 = v1[32];
  v12 = v1[31];

  v13 = *(v29 + 8);

  return v13();
}

uint64_t sub_100609834()
{
  v1 = *(*v0 + 504);
  v3 = *v0;

  return _swift_task_switch(sub_100609930, 0, 0);
}

uint64_t sub_100609930()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);
  v4 = *(v0 + 472);
  v3 = *(v0 + 480);
  v6 = *(v0 + 456);
  v5 = *(v0 + 464);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 408);
  v10 = *(v0 + 416);
  v12 = *(v0 + 392);
  v11 = *(v0 + 400);
  v15 = *(v0 + 384);
  v16 = *(v0 + 376);
  v17 = *(v0 + 368);
  v18 = *(v0 + 344);
  v19 = *(v0 + 320);
  v20 = *(v0 + 312);
  v21 = *(v0 + 304);
  v22 = *(v0 + 296);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  v25 = *(v0 + 272);
  v26 = *(v0 + 264);
  v27 = *(v0 + 256);
  v28 = *(v0 + 248);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100609AF0()
{
  v1 = *v0;
  v2 = *(*v0 + 512);
  v29 = *v0;

  v3 = v1[60];
  v4 = v1[59];
  v5 = v1[58];
  v6 = v1[57];
  v7 = v1[56];
  v8 = v1[55];
  v9 = v1[52];
  v10 = v1[51];
  v11 = v1[50];
  v15 = v1[49];
  v16 = v1[48];
  v17 = v1[47];
  v18 = v1[46];
  v19 = v1[43];
  v20 = v1[40];
  v21 = v1[39];
  v22 = v1[38];
  v23 = v1[37];
  v24 = v1[36];
  v25 = v1[35];
  v26 = v1[34];
  v27 = v1[33];
  v28 = v1[32];
  v12 = v1[31];

  v13 = *(v29 + 8);

  return v13();
}

uint64_t sub_100609EF4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 41) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for URL();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  *(v4 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10060A030, 0, 0);
}

uint64_t sub_10060A444()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_10060A698;
  }

  else
  {
    v4 = sub_10060A574;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10060A574()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 112);
  v11 = *(v0 + 104) + 32;
  v12 = *(v0 + 120);
  v13 = *(v0 + 88);
  v14 = *(v0 + 48);
  (*(v0 + 152))(v14, *(v0 + 128), *(v0 + 96));
  v15 = type metadata accessor for DIPWebResponse();
  v16 = (v14 + v15[5]);
  *v16 = v6;
  v16[1] = v7;
  *(v14 + v15[6]) = v8;
  *(v14 + v15[7]) = v9;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10060A698()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];

  v9 = *(v6 + 8);
  v9(v3, v7);
  v9(v4, v7);

  v10 = v0[1];
  v11 = v0[22];

  return v10();
}

uint64_t sub_10060A770(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5, int a6)
{
  v121 = a6;
  v124 = a5;
  v134 = a3;
  v135 = a4;
  v133 = a2;
  v122 = type metadata accessor for DIPError.Code();
  v127 = *(v122 - 8);
  v7 = *(v127 + 64);
  v8 = __chkstk_darwin(v122);
  v115 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v113 - v10;
  v129 = type metadata accessor for Logger();
  v128 = *(v129 - 8);
  v11 = *(v128 + 64);
  v12 = __chkstk_darwin(v129);
  v113 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v126 = &v113 - v14;
  v15 = type metadata accessor for DIPError.PropertyKey();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v119 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v19 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v20 = *(*(v19 - 8) + 72);
  v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v132 = 2 * v20;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006BFF90;
  v23 = v22 + v21;
  v24 = (v22 + v21 + *(v19 + 48));
  v120 = v16;
  v25 = *(v16 + 104);
  (v25)(v23, enum case for DIPError.PropertyKey.conversationID(_:), v15);
  v24[3] = &type metadata for String;
  v24[4] = &protocol witness table for String;
  v123 = a1;
  *v24 = a1;
  v24[1] = v133;
  v26 = (v23 + v20 + *(v19 + 48));
  v25();
  v26[3] = &type metadata for String;
  v26[4] = &protocol witness table for String;
  v27 = v135;
  *v26 = v134;
  v26[1] = v27;
  v28 = (v23 + v132 + *(v19 + 48));
  v117 = v15;
  v118 = v25;
  v25();
  v29 = v124;
  v31 = v124[6];
  v30 = v124[7];
  v28[3] = &type metadata for String;
  v28[4] = &protocol witness table for String;
  v125 = v31;
  *v28 = v31;
  v28[1] = v30;
  v131 = v30;
  swift_bridgeObjectRetain_n();

  v132 = sub_10003C9C0(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v29[8];
  v33 = v29[9];
  v114 = v32;
  v116 = v33;
  if (v33)
  {
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v35 = v119;
      v36 = v117;
      (v118)(v119, enum case for DIPError.PropertyKey.serverSubStatusCode(_:), v117);
      v140 = &type metadata for String;
      v141 = &protocol witness table for String;
      *&v139 = v32;
      *(&v139 + 1) = v33;
      sub_10001F358(&v139, v137);

      v37 = v132;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v136 = v37;
      v39 = v138;
      v40 = sub_10001F370(v137, v138);
      v41 = *(*(v39 - 8) + 64);
      __chkstk_darwin(v40);
      v43 = (&v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v44 + 16))(v43);
      sub_100658FF4(*v43, v43[1], v35, isUniquelyReferenced_nonNull_native, &v136);
      (*(v120 + 8))(v35, v36);
      sub_10000BB78(v137);
      v132 = v136;
    }
  }

  v45 = v127;
  v46 = v126;
  defaultLogger()();
  sub_1000B1478(v29, &v139);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  sub_1000ACC70(v29);
  v49 = os_log_type_enabled(v47, v48);
  v50 = v125;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v139 = v52;
    *v51 = 136446210;
    *(v51 + 4) = sub_100141FE4(v50, v131, &v139);
    _os_log_impl(&_mh_execute_header, v47, v48, "Server returned status %{public}s", v51, 0xCu);
    sub_10000BB78(v52);
  }

  v53 = *(v128 + 8);
  result = v53(v46, v129);
  v55 = v29[1];
  if (v55)
  {
    v56 = *v29;
    if (*v29 != v123 || v55 != v133)
    {
      v57 = *v29;
      v58 = v29[1];
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {

        *&v139 = 0;
        *(&v139 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        *&v139 = 0xD00000000000001BLL;
        *(&v139 + 1) = 0x80000001007259E0;
        v75._countAndFlagsBits = v56;
        v75._object = v55;
        String.append(_:)(v75);
        v76._countAndFlagsBits = 0xD000000000000013;
        v76._object = 0x8000000100725930;
        String.append(_:)(v76);
        (*(v45 + 104))(v130, enum case for DIPError.Code.serverResponseInconsistent(_:), v122);
        type metadata accessor for DIPError();
        sub_100037214();
        v74 = swift_allocError();
        goto LABEL_90;
      }
    }
  }

  v60 = v29[2];
  v59 = v29[3];
  object = v131;
  if (v60 != v134 || v59 != v135)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {

      *&v139 = 0;
      *(&v139 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      *&v139 = 0xD000000000000016;
      *(&v139 + 1) = 0x8000000100725910;
      v72._countAndFlagsBits = v60;
      v72._object = v59;
      String.append(_:)(v72);
      v73._countAndFlagsBits = 0xD000000000000013;
      v73._object = 0x8000000100725930;
      String.append(_:)(v73);
      (*(v45 + 104))(v130, enum case for DIPError.Code.serverResponseInconsistent(_:), v122);
      type metadata accessor for DIPError();
      sub_100037214();
      v74 = swift_allocError();
      goto LABEL_90;
    }
  }

  if ((v121 & 1) == 0)
  {
    goto LABEL_26;
  }

  v62 = [objc_opt_self() standardUserDefaults];
  v63._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceIDVServerStatus.getter();
  v64 = NSUserDefaults.internalString(forKey:)(v63);
  countAndFlagsBits = v64.value._countAndFlagsBits;

  if (!v64.value._object)
  {
    goto LABEL_26;
  }

  v66 = (v64.value._object >> 56) & 0xF;
  if ((v64.value._object & 0x2000000000000000) == 0)
  {
    v66 = v64.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v66)
  {

LABEL_26:
    countAndFlagsBits = v50;
    goto LABEL_27;
  }

  v67 = v113;
  defaultLogger()();

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v139 = v71;
    *v70 = 136446210;
    *(v70 + 4) = sub_100141FE4(v64.value._countAndFlagsBits, v64.value._object, &v139);
    _os_log_impl(&_mh_execute_header, v68, v69, "Forcing response header status code to %{public}s due to user setting", v70, 0xCu);
    sub_10000BB78(v71);
  }

  result = v53(v67, v129);
  object = v64.value._object;
LABEL_27:
  v77 = HIBYTE(object) & 0xF;
  v78 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((object & 0x2000000000000000) != 0)
  {
    v79 = HIBYTE(object) & 0xF;
  }

  else
  {
    v79 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v79)
  {
    goto LABEL_89;
  }

  if ((object & 0x1000000000000000) != 0)
  {

    v81 = sub_1000FFDD8(countAndFlagsBits, object, 10);
    v100 = v99;

    if (v100)
    {
      goto LABEL_89;
    }

LABEL_93:
    v101 = *(v45 + 104);
    v102 = v130;
    v103 = object;
    v104 = v122;
    v101(v130, enum case for DIPError.Code.topekaOK(_:), v122);
    v105 = DIPError.Code.rawValue.getter();
    v106 = *(v45 + 8);
    v106(v102, v104);
    if (v81 == v105)
    {
LABEL_97:

      if (!v116)
      {
        goto LABEL_102;
      }

      v112 = HIBYTE(v116) & 0xF;
      if ((v116 & 0x2000000000000000) == 0)
      {
        v112 = v114 & 0xFFFFFFFFFFFFLL;
      }

      if (!v112)
      {
LABEL_102:

        return 0;
      }

      sub_10060B7E4(v114, v116, v130);
      type metadata accessor for DIPError();
      sub_100037214();
      v74 = swift_allocError();
LABEL_90:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return v74;
    }

    v107 = v130;
    v108 = v122;
    v101(v130, enum case for DIPError.Code.topekaOKToContinueWithErrorMin(_:), v122);
    v109 = DIPError.Code.rawValue.getter();
    v106(v107, v108);
    v110 = v115;
    v101(v115, enum case for DIPError.Code.topekaOKToContinueWithErrorMax(_:), v108);
    v111 = DIPError.Code.rawValue.getter();
    result = (v106)(v110, v108);
    if (v111 >= v109)
    {
      object = v103;
      if (v81 < v109 || v111 < v81)
      {
        goto LABEL_89;
      }

      goto LABEL_97;
    }

    __break(1u);
    goto LABEL_105;
  }

  if ((object & 0x2000000000000000) == 0)
  {
    if ((countAndFlagsBits & 0x1000000000000000) != 0)
    {
      result = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v80 = *result;
    if (v80 == 43)
    {
      if (v78 < 1)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v77 = v78 - 1;
      if (v78 == 1)
      {
        goto LABEL_87;
      }

      v81 = 0;
      if (result)
      {
        v88 = (result + 1);
        while (1)
        {
          v89 = *v88 - 48;
          if (v89 > 9)
          {
            goto LABEL_87;
          }

          v90 = 10 * v81;
          if ((v81 * 10) >> 64 != (10 * v81) >> 63)
          {
            goto LABEL_87;
          }

          v81 = v90 + v89;
          if (__OFADD__(v90, v89))
          {
            goto LABEL_87;
          }

          ++v88;
          if (!--v77)
          {
            goto LABEL_88;
          }
        }
      }
    }

    else if (v80 == 45)
    {
      if (v78 < 1)
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v77 = v78 - 1;
      if (v78 == 1)
      {
        goto LABEL_87;
      }

      v81 = 0;
      if (result)
      {
        v82 = (result + 1);
        while (1)
        {
          v83 = *v82 - 48;
          if (v83 > 9)
          {
            goto LABEL_87;
          }

          v84 = 10 * v81;
          if ((v81 * 10) >> 64 != (10 * v81) >> 63)
          {
            goto LABEL_87;
          }

          v81 = v84 - v83;
          if (__OFSUB__(v84, v83))
          {
            goto LABEL_87;
          }

          ++v82;
          if (!--v77)
          {
            goto LABEL_88;
          }
        }
      }
    }

    else
    {
      if (!v78)
      {
LABEL_87:
        v81 = 0;
        LOBYTE(v77) = 1;
LABEL_88:
        LOBYTE(v137[0]) = v77;
        if (v77)
        {
LABEL_89:
          sub_10060B7E4(countAndFlagsBits, object, v130);

          type metadata accessor for DIPError();
          sub_100037214();
          v74 = swift_allocError();
          goto LABEL_90;
        }

        goto LABEL_93;
      }

      v81 = 0;
      if (result)
      {
        do
        {
          v94 = *result - 48;
          if (v94 > 9)
          {
            goto LABEL_87;
          }

          v95 = 10 * v81;
          if ((v81 * 10) >> 64 != (10 * v81) >> 63)
          {
            goto LABEL_87;
          }

          v81 = v95 + v94;
          if (__OFADD__(v95, v94))
          {
            goto LABEL_87;
          }

          ++result;
        }

        while (--v78);
      }
    }

    LOBYTE(v77) = 0;
    goto LABEL_88;
  }

  *&v139 = countAndFlagsBits;
  *(&v139 + 1) = object & 0xFFFFFFFFFFFFFFLL;
  if (countAndFlagsBits != 43)
  {
    if (countAndFlagsBits == 45)
    {
      if (!v77)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      if (--v77)
      {
        v81 = 0;
        v85 = &v139 + 1;
        while (1)
        {
          v86 = *v85 - 48;
          if (v86 > 9)
          {
            break;
          }

          v87 = 10 * v81;
          if ((v81 * 10) >> 64 != (10 * v81) >> 63)
          {
            break;
          }

          v81 = v87 - v86;
          if (__OFSUB__(v87, v86))
          {
            break;
          }

          ++v85;
          if (!--v77)
          {
            goto LABEL_88;
          }
        }
      }
    }

    else if (v77)
    {
      v81 = 0;
      v96 = &v139;
      while (1)
      {
        v97 = *v96 - 48;
        if (v97 > 9)
        {
          break;
        }

        v98 = 10 * v81;
        if ((v81 * 10) >> 64 != (10 * v81) >> 63)
        {
          break;
        }

        v81 = v98 + v97;
        if (__OFADD__(v98, v97))
        {
          break;
        }

        v96 = (v96 + 1);
        if (!--v77)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

  if (v77)
  {
    if (--v77)
    {
      v81 = 0;
      v91 = &v139 + 1;
      while (1)
      {
        v92 = *v91 - 48;
        if (v92 > 9)
        {
          break;
        }

        v93 = 10 * v81;
        if ((v81 * 10) >> 64 != (10 * v81) >> 63)
        {
          break;
        }

        v81 = v93 + v92;
        if (__OFADD__(v93, v92))
        {
          break;
        }

        ++v91;
        if (!--v77)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_108:
  __break(1u);
  return result;
}

uint64_t sub_10060B7E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44[-1] - v8;
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 104);
  result = v15(a3, enum case for DIPError.Code.internalError(_:), v10);
  v17 = HIBYTE(a2) & 0xF;
  v18 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    sub_1000FFDD8(a1, a2, 10);
    v42 = v41;

    if (v42)
    {
      return result;
    }

    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v44[0] = a1;
    v44[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v17)
      {
LABEL_75:
        __break(1u);
        return result;
      }

      if (--v17)
      {
        result = 0;
        v32 = v44 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * result;
          if ((result * 10) >> 64 != (10 * result) >> 63)
          {
            break;
          }

          result = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v17)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (a1 == 45)
    {
      if (!v17)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (--v17)
      {
        result = 0;
        v25 = v44 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * result;
          if ((result * 10) >> 64 != (10 * result) >> 63)
          {
            break;
          }

          result = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v17)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v17)
    {
      result = 0;
      v37 = v44;
      while (1)
      {
        v38 = *v37 - 48;
        if (v38 > 9)
        {
          break;
        }

        v39 = 10 * result;
        if ((result * 10) >> 64 != (10 * result) >> 63)
        {
          break;
        }

        result = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          break;
        }

        ++v37;
        if (!--v17)
        {
          goto LABEL_62;
        }
      }
    }
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v17 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v17 = result;
    }

    v20 = *v17;
    if (v20 == 43)
    {
      if (v18 >= 1)
      {
        v28 = v18 - 1;
        if (v18 != 1)
        {
          result = 0;
          if (!v17)
          {
            goto LABEL_62;
          }

          v29 = (v17 + 1);
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * result;
            if ((result * 10) >> 64 != (10 * result) >> 63)
            {
              break;
            }

            result = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v28)
            {
LABEL_53:
              LOBYTE(v17) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_74;
    }

    if (v20 == 45)
    {
      if (v18 >= 1)
      {
        v21 = v18 - 1;
        if (v18 != 1)
        {
          result = 0;
          if (!v17)
          {
            goto LABEL_62;
          }

          v22 = (v17 + 1);
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * result;
            if ((result * 10) >> 64 != (10 * result) >> 63)
            {
              break;
            }

            result = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v21)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_73;
    }

    if (v18)
    {
      result = 0;
      if (!v17)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v35 = *v17 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * result;
        if ((result * 10) >> 64 != (10 * result) >> 63)
        {
          break;
        }

        result = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        ++v17;
        if (!--v18)
        {
          goto LABEL_53;
        }
      }
    }
  }

LABEL_61:
  result = 0;
  LOBYTE(v17) = 1;
LABEL_62:
  v45 = v17;
  if (v17)
  {
    return result;
  }

LABEL_63:
  DIPError.Code.init(rawValue:)();
  (*(v11 + 8))(a3, v10);
  v40 = *(v11 + 48);
  if (v40(v9, 1, v10) == 1)
  {
    v15(v14, enum case for DIPError.Code.serverUnavailable(_:), v10);
    if (v40(v9, 1, v10) != 1)
    {
      sub_1000451E8(v9);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  return (*(v11 + 32))(a3, v14, v10);
}

id sub_10060BCBC()
{
  v1 = *&v0[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession];
  v2 = *(v1 + 16);

  [v2 invalidateAndCancel];
  [*(v1 + 24) invalidateAndCancel];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DIPWebService();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10060BE78(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100027B9C;

  return sub_100609EF4(a1, a2, a3);
}

uint64_t type metadata accessor for DIPWebResponse()
{
  result = qword_1008497F0;
  if (!qword_1008497F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10060BF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10060C05C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URLRequest();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_10060C114()
{
  result = type metadata accessor for URLRequest();
  if (v1 <= 0x3F)
  {
    result = sub_10060C1A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10060C1A8()
{
  result = qword_100849800;
  if (!qword_100849800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100849800);
  }

  return result;
}

uint64_t sub_10060C218()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v0 + 54);
  sub_1000318FC(&v0[4], v5);
  os_unfair_lock_unlock(v0 + 54);
  v1 = v6;
  sub_10001F640(v6);
  v2 = sub_100031918(v5);
  if (v1)
  {
    v3 = v1(v2);
    sub_10001FE8C(v1);
    return v3;
  }

  else
  {
    type metadata accessor for TermsAndConditionsFetcher();
    return swift_allocObject();
  }
}

uint64_t sub_10060C2EC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost.Config();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v2[21] = v16;
  v17 = *(v16 - 8);
  v2[22] = v17;
  v18 = *(v17 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_10060C560, 0, 0);
}

uint64_t sub_10060C560()
{
  v1 = v0[24];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to get Identity Proofing Static asset meta data", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];

  v11 = *(v7 + 8);
  v0[25] = v11;
  v11(v5, v6);
  UUID.init()();
  UUID.uuidString.getter();
  v0[26] = v12;
  (*(v9 + 8))(v8, v10);
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_10060C6EC;

  return sub_1005D7070(1);
}

uint64_t sub_10060C6EC(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_10060C80C, 0, 0);
}

uint64_t sub_10060C80C()
{
  if (v0[28])
  {
    v1 = v0[17];
    v3 = v0[13];
    v2 = v0[14];
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[7];
    static DaemonSignposts.fetchIdentityStaticTCTotal.getter();
    DIPSignpost.init(_:)();

    static DaemonSignposts.fetchIdentityStaticTCRequest.getter();
    (*(v3 + 56))(v5, 0, 1, v4);
    v7 = swift_task_alloc();
    v0[29] = v7;
    *v7 = v0;
    v7[1] = sub_10060CA90;
    v8 = v0[11];
    v9 = v0[6];
    v10 = v0[7];

    return sub_1005D5A90(0xD000000000000024, 0x80000001007089E0, v9, v10, v8);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.staticWebServiceUnavailable(_:), v0[8]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[20];
    v15 = v0[17];
    v16 = v0[14];
    v18 = v0[10];
    v17 = v0[11];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10060CA90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[29];
  v7 = v4[11];
  v8 = v4[7];
  v11 = *v3;
  v5[30] = v2;

  sub_1005A4980(v7);

  if (v2)
  {
    v9 = sub_10060CD98;
  }

  else
  {
    v9 = sub_10060CBEC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10060CBEC()
{
  v1 = v0[23];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "TC downloaded successfully", v4, 2u);
  }

  v20 = v0[4];
  v21 = v0[3];
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v15 = v0[24];
  v16 = v0[20];
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  v17 = v0[14];
  v18 = v0[11];
  v19 = v0[10];

  v6(v7, v9);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  (*(v10 + 8))(v11, v12);

  v13 = v0[1];

  return v13(v21, v20);
}

uint64_t sub_10060CD98()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[16];
  v13 = v0[15];
  v14 = v0[17];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.invalidStaticTC(_:), v0[8]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v3 + 8))(v14, v13);
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10060CF68()
{
  v0 = type metadata accessor for DIPHTTPSession.Configuration(0);
  sub_100031898(v0, qword_1008498D8);
  v1 = sub_10003170C(v0, qword_1008498D8);
  v2 = v0[6];
  *&v1[v2] = 0x3FF0000000000000;
  v3 = enum case for DIPBackoffStrategy.exponential(_:);
  v4 = type metadata accessor for DIPBackoffStrategy();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 0x4024000000000000;
  *(v1 + 1) = 3;
  v1[v0[7]] = 0;
  v1[v0[8]] = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  return result;
}

uint64_t sub_10060D040(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v2[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v5 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for Milestone();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = type metadata accessor for COSE_Sign1();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v15 = type metadata accessor for URL();
  v2[22] = v15;
  v16 = *(v15 - 8);
  v2[23] = v16;
  v17 = *(v16 + 64) + 15;
  v2[24] = swift_task_alloc();
  v18 = type metadata accessor for URLRequest();
  v2[25] = v18;
  v19 = *(v18 - 8);
  v2[26] = v19;
  v20 = *(v19 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_10060D2FC, 0, 0);
}

uint64_t sub_10060D2FC()
{
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  (*(v0[23] + 16))(v0[24], v0[7] + OBJC_IVAR____TtC8coreidvd15VICALWebService_url, v0[22]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v4 = sub_1005FEBE8(v1);
  v0[28] = v4;
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[21];
    v6 = [v4 data];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_10000B8B8(v7, v9);
    COSE_Sign1.init(fromHexData:)();
    v36 = v0[7];
    sub_10000B90C(v7, v9);
    v37 = *(v36 + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator + 24);
    v38 = *(v36 + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator + 32);
    sub_10000BA08((v36 + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator), v37);
    v39 = *(v38 + 24);
    v70 = (v39 + *v39);
    v40 = v39[1];
    v41 = swift_task_alloc();
    v0[29] = v41;
    v42 = type metadata accessor for VICALDocument();
    v43 = sub_100611C90(&qword_1008418A8, &type metadata accessor for VICALDocument);
    v44 = sub_100611C90(&qword_100849930, &type metadata accessor for VICALDocument);
    *v41 = v0;
    v41[1] = sub_10060DE90;
    v45 = v0[21];
    v46 = v0[6];

    return v70(v46, v45, v42, v43, v44, v37, v38);
  }

  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  static VICALMilestone.missingDocument.getter();
  Milestone.log()();
  (*(v15 + 8))(v12, v14);
  (*(v11 + 104))(v10, enum case for DIPError.Code.vicalMissing(_:), v13);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v16 = v0[17];
  v17 = v0[11];
  v58 = v0[12];
  v61 = v0[16];
  v18 = v0[9];
  v64 = v0[8];
  swift_getErrorValue();
  v19 = v0[2];
  v20 = v0[3];
  v21 = v0[4];
  v22 = *(v20 - 8);
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  v25 = v19;
  v26 = v18;
  (*(v22 + 16))(v24, v25, v20);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v22 + 8))(v24, v20);
  v69 = *(v16 + 104);
  v69(v17, enum case for DIPError.Code.coseCannotParseResponse(_:), v61);
  (*(v16 + 56))(v17, 0, 1, v61);
  v27 = *(v64 + 48);
  sub_100044D38(v58, v18);
  sub_100044D38(v17, v18 + v27);
  v28 = *(v16 + 48);
  v29 = v28(v18, 1, v61);
  v30 = v0[16];
  if (v29 == 1)
  {
    v31 = v0[12];
    sub_10000BE18(v0[11], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v31, &qword_10083B020, &unk_1006D8ED0);
    if (v28(v26 + v27, 1, v30) == 1)
    {
      sub_10000BE18(v0[9], &qword_10083B020, &unk_1006D8ED0);

LABEL_15:
      v69(v0[18], enum case for DIPError.Code.vicalCannotParseDocument(_:), v0[16]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100611C90(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_100044D38(v0[9], v0[10]);
  if (v28(v18 + v27, 1, v30) == 1)
  {
    v32 = v0[16];
    v33 = v0[17];
    v34 = v0[12];
    v35 = v0[10];
    sub_10000BE18(v0[11], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v34, &qword_10083B020, &unk_1006D8ED0);
    (*(v33 + 8))(v35, v32);
LABEL_10:
    sub_10000BE18(v0[9], &qword_100834B60, &qword_1006C0310);

    goto LABEL_16;
  }

  v48 = v0[17];
  v49 = v0[18];
  v50 = v0[16];
  v59 = v0[11];
  v62 = v0[12];
  v51 = v0[10];
  v65 = v0[9];
  (*(v48 + 32))(v49, v18 + v27, v50);
  sub_100611C90(&qword_100834B68, &type metadata accessor for DIPError.Code);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v48 + 8);
  v53(v49, v50);
  sub_10000BE18(v59, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v62, &qword_10083B020, &unk_1006D8ED0);
  v53(v51, v50);
  sub_10000BE18(v65, &qword_10083B020, &unk_1006D8ED0);

  if (v52)
  {
    goto LABEL_15;
  }

LABEL_16:
  v54 = v0[27];
  v56 = v0[24];
  v57 = v0[21];
  v60 = v0[15];
  v63 = v0[12];
  v66 = v0[11];
  v67 = v0[10];
  v68 = v0[9];
  v69(v0[18], enum case for DIPError.Code.vicalMissing(_:), v0[16]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v55 = v0[1];

  return v55();
}

uint64_t sub_10060DE90()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10060E0A4;
  }

  else
  {
    v3 = sub_10060DFA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10060DFA4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 120);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v12 = *(v0 + 80);
  v13 = *(v0 + 72);

  (*(v4 + 8))(v3, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10060E0A4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 240);
  v5 = *(v0 + 136);
  v6 = *(v0 + 88);
  v37 = *(v0 + 96);
  v39 = *(v0 + 128);
  v7 = *(v0 + 72);
  v42 = *(v0 + 64);
  swift_getErrorValue();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v9 - 8);
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = v8;
  v15 = v7;
  (*(v11 + 16))(v13, v14, v9);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v11 + 8))(v13, v9);
  v47 = *(v5 + 104);
  v47(v6, enum case for DIPError.Code.coseCannotParseResponse(_:), v39);
  (*(v5 + 56))(v6, 0, 1, v39);
  v16 = *(v42 + 48);
  sub_100044D38(v37, v7);
  sub_100044D38(v6, v7 + v16);
  v17 = *(v5 + 48);
  v18 = v17(v7, 1, v39);
  v19 = *(v0 + 128);
  if (v18 != 1)
  {
    sub_100044D38(*(v0 + 72), *(v0 + 80));
    if (v17(v7 + v16, 1, v19) != 1)
    {
      v25 = *(v0 + 136);
      v26 = *(v0 + 144);
      v27 = *(v0 + 128);
      v28 = *(v0 + 88);
      v29 = *(v0 + 80);
      v40 = *(v0 + 96);
      v43 = *(v0 + 72);
      (*(v25 + 32))(v26, v15 + v16, v27);
      sub_100611C90(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v25 + 8);
      v31(v26, v27);
      sub_10000BE18(v28, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v40, &qword_10083B020, &unk_1006D8ED0);
      v31(v29, v27);
      sub_10000BE18(v43, &qword_10083B020, &unk_1006D8ED0);

      if ((v30 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v21 = *(v0 + 128);
    v22 = *(v0 + 136);
    v23 = *(v0 + 96);
    v24 = *(v0 + 80);
    sub_10000BE18(*(v0 + 88), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v23, &qword_10083B020, &unk_1006D8ED0);
    (*(v22 + 8))(v24, v21);
LABEL_6:
    sub_10000BE18(*(v0 + 72), &qword_100834B60, &qword_1006C0310);

    goto LABEL_9;
  }

  v20 = *(v0 + 96);
  sub_10000BE18(*(v0 + 88), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v20, &qword_10083B020, &unk_1006D8ED0);
  if (v17(v15 + v16, 1, v19) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 72), &qword_10083B020, &unk_1006D8ED0);

LABEL_8:
  v47(*(v0 + 144), enum case for DIPError.Code.vicalCannotParseDocument(_:), *(v0 + 128));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

LABEL_9:
  v32 = *(v0 + 216);
  v35 = *(v0 + 192);
  v36 = *(v0 + 168);
  v38 = *(v0 + 120);
  v41 = *(v0 + 96);
  v44 = *(v0 + 88);
  v45 = *(v0 + 80);
  v46 = *(v0 + 72);
  v47(*(v0 + 144), enum case for DIPError.Code.vicalMissing(_:), *(v0 + 128));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10060E758()
{
  v1[14] = v0;
  v2 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v1[15] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v4 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for VICALDocument();
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v8 = type metadata accessor for COSE_Sign1();
  v1[23] = v8;
  v9 = *(v8 - 8);
  v1[24] = v9;
  v10 = *(v9 + 64) + 15;
  v1[25] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v1[26] = v11;
  v12 = *(v11 - 8);
  v1[27] = v12;
  v13 = *(v12 + 64) + 15;
  v1[28] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v1[29] = v14;
  v15 = *(v14 - 8);
  v1[30] = v15;
  v16 = *(v15 + 64) + 15;
  v1[31] = swift_task_alloc();
  v17 = type metadata accessor for URLRequest();
  v1[32] = v17;
  v18 = *(v17 - 8);
  v1[33] = v18;
  v19 = *(v18 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v20 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v21 = type metadata accessor for DIPSignpost();
  v1[38] = v21;
  v22 = *(v21 - 8);
  v1[39] = v22;
  v23 = *(v22 + 64) + 15;
  v1[40] = swift_task_alloc();
  v24 = type metadata accessor for Milestone();
  v1[41] = v24;
  v25 = *(v24 - 8);
  v1[42] = v25;
  v26 = *(v25 + 64) + 15;
  v1[43] = swift_task_alloc();
  v27 = type metadata accessor for Logger();
  v1[44] = v27;
  v28 = *(v27 - 8);
  v1[45] = v28;
  v29 = *(v28 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();

  return _swift_task_switch(sub_10060EB84, 0, 0);
}

uint64_t sub_10060FA18()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 440);

  if (v0)
  {
    v6 = sub_10060FB4C;
  }

  else
  {
    v6 = sub_10060FF8C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10060FB4C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v34 = v0[57];
  v36 = v0[40];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v30 = v0[28];
  v8 = v0[27];
  v32 = v0[26];
  v9 = v0[14];

  v38 = *(v5 + 8);
  v38(v4, v6);
  _StringGuts.grow(_:)(31);

  sub_100611C90(&qword_1008418B0, &type metadata accessor for URL);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v27 = *(v8 + 104);
  v27(v30, enum case for DIPError.Code.internalError(_:), v32);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(fromCache:)(0);
  v19 = v0[48];
  v20 = v0[47];
  v21 = v0[46];
  v22 = v0[43];
  v12 = v0[39];
  v11 = v0[40];
  v13 = v0[38];
  v23 = v0[37];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[31];
  v14 = v0[28];
  v15 = v0[26];
  v28 = v0[25];
  v29 = v0[22];
  v31 = v0[19];
  v16 = v0[33] + 8;
  v33 = v0[17];
  v35 = v0[18];
  v37 = v0[16];
  v38(v0[36], v0[32]);
  (*(v12 + 8))(v11, v13);
  v27(v14, enum case for DIPError.Code.vicalCouldNotFetch(_:), v15);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_10060FF8C()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);

  v6 = *(v5 + 8);
  v6(v3, v4);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = sub_100611CD8(v8, v7);
  v13 = v12;
  if (v10 == 1)
  {
    v14 = *(v0 + 456);
    v15 = *(v0 + 344);
    static VICALMilestone.cacheReturnedDocument.getter();
  }

  else
  {
    v16 = *(v0 + 344);
    static VICALMilestone.cdnReturnedDocument.getter();
    v14 = *(v0 + 456);
  }

  *(v0 + 496) = v7;
  *(v0 + 504) = v8;
  *(v0 + 41) = v10;
  *(v0 + 480) = v11;
  *(v0 + 488) = v9;
  *(v0 + 464) = v6;
  *(v0 + 472) = v13;
  v18 = *(v0 + 400);
  v17 = *(v0 + 408);
  v19 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 200);
  Milestone.log()();
  v18(v19, v20);
  sub_10000B8B8(v11, v13);
  COSE_Sign1.init(fromHexData:)();
  if (v14)
  {
    v22 = *(v0 + 208);
    v95 = enum case for DIPError.Code.vicalCannotParseDocument(_:);
    (*(*(v0 + 216) + 104))(*(v0 + 224));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100611C90(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v11, v13);

    if (*(v0 + 41))
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 288);
      v24 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v24 removeCachedResponseForRequest:{isa, 0xD000000000000019, 0x8000000100725BD0, 185}];
    }

    v26 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v31 = *(v0 + 120);
    v30 = *(v0 + 128);
    swift_getErrorValue();
    v33 = *(v0 + 48);
    v32 = *(v0 + 56);
    v34 = *(v0 + 64);
    Error.dipErrorCode.getter();
    v97 = *(v27 + 104);
    v97(v29, enum case for DIPError.Code.coseCannotParseResponse(_:), v26);
    (*(v27 + 56))(v29, 0, 1, v26);
    v35 = *(v31 + 48);
    sub_100044D38(v28, v30);
    sub_100044D38(v29, v30 + v35);
    v36 = *(v27 + 48);
    v37 = v36(v30, 1, v26);
    v38 = *(v0 + 208);
    if (v37 == 1)
    {
      v39 = *(v0 + 152);
      sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v39, &qword_10083B020, &unk_1006D8ED0);
      if (v36(v30 + v35, 1, v38) == 1)
      {
        sub_10000BE18(*(v0 + 128), &qword_10083B020, &unk_1006D8ED0);
LABEL_20:
        v91 = *(v0 + 496);
        v93 = *(v0 + 504);
        v69 = *(v0 + 488);
        v70 = *(v0 + 41);
        v71 = *(v0 + 320);
        v97(*(v0 + 224), v95, *(v0 + 208));
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        DIPSignpost.end(fromCache:)(v70);

        sub_10000B90C(v93, v91);
        goto LABEL_21;
      }
    }

    else
    {
      sub_100044D38(*(v0 + 128), *(v0 + 136));
      if (v36(v30 + v35, 1, v38) != 1)
      {
        v61 = *(v0 + 216);
        v62 = *(v0 + 224);
        v63 = *(v0 + 208);
        v65 = *(v0 + 144);
        v64 = *(v0 + 152);
        v66 = *(v0 + 136);
        v90 = *(v0 + 128);
        (*(v61 + 32))(v62, v30 + v35, v63);
        sub_100611C90(&qword_100834B68, &type metadata accessor for DIPError.Code);
        v67 = dispatch thunk of static Equatable.== infix(_:_:)();
        v68 = *(v61 + 8);
        v68(v62, v63);
        sub_10000BE18(v65, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v64, &qword_10083B020, &unk_1006D8ED0);
        v68(v66, v63);
        sub_10000BE18(v90, &qword_10083B020, &unk_1006D8ED0);
        if (v67)
        {
          goto LABEL_20;
        }

LABEL_18:
        v56 = *(v0 + 496);
        v57 = *(v0 + 504);
        v58 = *(v0 + 488);
        v59 = *(v0 + 41);
        v60 = *(v0 + 320);
        swift_willThrow();
        DIPSignpost.end(fromCache:)(v59);

        sub_10000B90C(v57, v56);
LABEL_21:
        v79 = *(v0 + 384);
        v80 = *(v0 + 376);
        v81 = *(v0 + 368);
        v82 = *(v0 + 344);
        v73 = *(v0 + 312);
        v72 = *(v0 + 320);
        v74 = *(v0 + 304);
        v83 = *(v0 + 296);
        v84 = *(v0 + 280);
        v85 = *(v0 + 272);
        v75 = *(v0 + 224);
        v76 = *(v0 + 208);
        v86 = *(v0 + 248);
        v87 = *(v0 + 200);
        v88 = *(v0 + 176);
        v89 = *(v0 + 152);
        v92 = *(v0 + 136);
        v94 = *(v0 + 144);
        v96 = *(v0 + 128);
        v77 = (*(v0 + 264) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (*(v0 + 464))(*(v0 + 288), *(v0 + 256));
        (*(v73 + 8))(v72, v74);
        v97(v75, enum case for DIPError.Code.vicalCouldNotFetch(_:), v76);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v78 = *(v0 + 8);

        return v78();
      }

      v52 = *(v0 + 208);
      v53 = *(v0 + 216);
      v54 = *(v0 + 152);
      v55 = *(v0 + 136);
      sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v54, &qword_10083B020, &unk_1006D8ED0);
      (*(v53 + 8))(v55, v52);
    }

    sub_10000BE18(*(v0 + 128), &qword_100834B60, &qword_1006C0310);
    goto LABEL_18;
  }

  v40 = (*(v0 + 112) + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator);
  v41 = v40[3];
  v42 = v40[4];
  sub_10000BA08(v40, v41);
  v43 = *(v42 + 24);
  v98 = (v43 + *v43);
  v44 = v43[1];
  v45 = swift_task_alloc();
  *(v0 + 512) = v45;
  v46 = sub_100611C90(&qword_1008418A8, &type metadata accessor for VICALDocument);
  v47 = sub_100611C90(&qword_100849930, &type metadata accessor for VICALDocument);
  *v45 = v0;
  v45[1] = sub_100610984;
  v48 = *(v0 + 200);
  v49 = *(v0 + 176);
  v50 = *(v0 + 160);

  return v98(v49, v48, v50, v46, v47, v41, v42);
}

uint64_t sub_100610984()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v6 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = sub_100611068;
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v4 = sub_100610AB0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100610AB0()
{
  if (*(v0 + 41))
  {
    v1 = *(v0 + 368);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 472);
    v5 = *(v0 + 480);
    v7 = *(v0 + 392);
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 352);
    if (v4)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "VICALWebService found VICAL response in cache", v11, 2u);
    }

    sub_10000B90C(v5, v6);
    v7(v8, v10);
  }

  else
  {
    v13 = *(v0 + 400);
    v12 = *(v0 + 408);
    v14 = *(v0 + 344);
    v15 = *(v0 + 328);
    static VICALMilestone.storeDocument.getter();
    Milestone.log()();
    v13(v14, v15);
    v16 = [objc_opt_self() standardUserDefaults];
    v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.overrideCacheControl.getter();
    v18 = NSUserDefaults.internalString(forKey:)(v17);

    if (v18.value._object && (v19 = *(v0 + 488), v20 = sub_10059B698(0xD000000000000019, 0x80000001006F8AF0, v18.value._countAndFlagsBits, v18.value._object), , v20))
    {
      v21 = *(v0 + 376);
      defaultLogger()();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "VICALWebService cache control override found, overriding and caching.", v24, 2u);
      }

      v25 = *(v0 + 392);
      v26 = *(v0 + 376);
      v27 = *(v0 + 352);
      v28 = *(v0 + 360);

      v25(v26, v27);
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 472);
      v29 = *(v0 + 480);
      v31 = qword_100882498;
      v32 = objc_allocWithZone(NSCachedURLResponse);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v34 = [v32 initWithResponse:v20 data:isa];

      v35 = sub_100600EC4(v34, 1, 1);
      if (v35)
      {
        v36 = v35;
        v38 = *(v0 + 472);
        v37 = *(v0 + 480);
        v39 = *(v0 + 288);
        v40 = URLRequest._bridgeToObjectiveC()().super.isa;
        v41 = type metadata accessor for DIPURLCache();
        *(v0 + 88) = v31;
        *(v0 + 96) = v41;
        objc_msgSendSuper2((v0 + 88), "storeCachedResponse:forRequest:", v36, v40);

        sub_10000B90C(v37, v38);
        goto LABEL_20;
      }

      sub_10000B90C(*(v0 + 480), *(v0 + 472));
    }

    else
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v42 = *(v0 + 480);
      v43 = *(v0 + 488);
      v44 = *(v0 + 472);
      v45 = qword_100882498;
      v46 = objc_allocWithZone(NSCachedURLResponse);
      v47 = Data._bridgeToObjectiveC()().super.isa;
      v20 = [v46 initWithResponse:v43 data:v47];

      v48 = sub_100600EC4(v20, 1, 1);
      if (v48)
      {
        v49 = v48;
        v51 = *(v0 + 472);
        v50 = *(v0 + 480);
        v52 = *(v0 + 288);
        v53 = URLRequest._bridgeToObjectiveC()().super.isa;
        v54 = type metadata accessor for DIPURLCache();
        *(v0 + 72) = v45;
        *(v0 + 80) = v54;
        objc_msgSendSuper2((v0 + 72), "storeCachedResponse:forRequest:", v49, v53);

        sub_10000B90C(v50, v51);
        goto LABEL_20;
      }

      sub_10000B90C(*(v0 + 480), *(v0 + 472));
    }
  }

LABEL_20:
  v56 = *(v0 + 496);
  v55 = *(v0 + 504);
  v57 = *(v0 + 488);
  v58 = *(v0 + 41);
  v68 = *(v0 + 464);
  v69 = *(v0 + 384);
  v70 = *(v0 + 376);
  v71 = *(v0 + 368);
  v60 = *(v0 + 312);
  v59 = *(v0 + 320);
  v67 = *(v0 + 304);
  v72 = *(v0 + 344);
  v73 = *(v0 + 296);
  v61 = *(v0 + 288);
  v62 = *(v0 + 264);
  v75 = *(v0 + 280);
  v76 = *(v0 + 272);
  v63 = *(v0 + 256);
  v77 = *(v0 + 248);
  v78 = *(v0 + 224);
  v74 = *(v0 + 200);
  v64 = *(v0 + 184);
  v79 = *(v0 + 176);
  v80 = *(v0 + 152);
  v81 = *(v0 + 144);
  v82 = *(v0 + 136);
  v83 = *(v0 + 128);
  (*(*(v0 + 192) + 8))();
  DIPSignpost.end(fromCache:)(v58);

  sub_10000B90C(v55, v56);
  v68(v61, v63);
  (*(v60 + 8))(v59, v67);

  v65 = *(v0 + 8);

  return v65(v58);
}

uint64_t sub_100611068()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_10000B90C(*(v0 + 480), *(v0 + 472));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 520);
  if (*(v0 + 41))
  {
    if (qword_100832D20 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 288);
    v6 = qword_100882498;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    [v6 removeCachedResponseForRequest:isa];
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  swift_getErrorValue();
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  v16 = *(v0 + 64);
  Error.dipErrorCode.getter();
  v67 = *(v9 + 104);
  v67(v11, enum case for DIPError.Code.coseCannotParseResponse(_:), v8);
  (*(v9 + 56))(v11, 0, 1, v8);
  v17 = *(v13 + 48);
  sub_100044D38(v10, v12);
  sub_100044D38(v11, v12 + v17);
  v18 = *(v9 + 48);
  v19 = v18(v12, 1, v8);
  v20 = *(v0 + 208);
  if (v19 != 1)
  {
    sub_100044D38(*(v0 + 128), *(v0 + 136));
    if (v18(v12 + v17, 1, v20) != 1)
    {
      v32 = *(v0 + 216);
      v31 = *(v0 + 224);
      v33 = *(v0 + 208);
      v35 = *(v0 + 144);
      v34 = *(v0 + 152);
      v36 = *(v0 + 136);
      v66 = *(v0 + 128);
      (*(v32 + 32))(v31, v12 + v17, v33);
      sub_100611C90(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v32 + 8);
      v38(v31, v33);
      sub_10000BE18(v35, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v34, &qword_10083B020, &unk_1006D8ED0);
      v38(v36, v33);
      sub_10000BE18(v66, &qword_10083B020, &unk_1006D8ED0);
      if (v37)
      {
        goto LABEL_13;
      }

LABEL_11:
      v27 = *(v0 + 496);
      v26 = *(v0 + 504);
      v28 = *(v0 + 488);
      v29 = *(v0 + 41);
      v30 = *(v0 + 320);
      swift_willThrow();
      DIPSignpost.end(fromCache:)(v29);

      sub_10000B90C(v26, v27);
      goto LABEL_14;
    }

    v22 = *(v0 + 208);
    v23 = *(v0 + 216);
    v24 = *(v0 + 152);
    v25 = *(v0 + 136);
    sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v24, &qword_10083B020, &unk_1006D8ED0);
    (*(v23 + 8))(v25, v22);
LABEL_10:
    sub_10000BE18(*(v0 + 128), &qword_100834B60, &qword_1006C0310);
    goto LABEL_11;
  }

  v21 = *(v0 + 152);
  sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v21, &qword_10083B020, &unk_1006D8ED0);
  if (v18(v12 + v17, 1, v20) != 1)
  {
    goto LABEL_10;
  }

  sub_10000BE18(*(v0 + 128), &qword_10083B020, &unk_1006D8ED0);
LABEL_13:
  v62 = *(v0 + 496);
  v64 = *(v0 + 504);
  v39 = *(v0 + 488);
  v40 = *(v0 + 41);
  v41 = *(v0 + 320);
  v67(*(v0 + 224), enum case for DIPError.Code.vicalCannotParseDocument(_:), *(v0 + 208));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(fromCache:)(v40);

  sub_10000B90C(v64, v62);
LABEL_14:
  v42 = *(v0 + 384);
  v51 = *(v0 + 376);
  v52 = *(v0 + 368);
  v44 = *(v0 + 312);
  v43 = *(v0 + 320);
  v45 = *(v0 + 304);
  v53 = *(v0 + 344);
  v54 = *(v0 + 296);
  v55 = *(v0 + 280);
  v56 = *(v0 + 272);
  v46 = *(v0 + 224);
  v47 = *(v0 + 208);
  v57 = *(v0 + 248);
  v58 = *(v0 + 200);
  v59 = *(v0 + 176);
  v60 = *(v0 + 152);
  v61 = *(v0 + 136);
  v63 = *(v0 + 144);
  v65 = *(v0 + 128);
  v48 = (*(v0 + 264) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 464))(*(v0 + 288), *(v0 + 256));
  (*(v44 + 8))(v43, v45);
  v67(v46, enum case for DIPError.Code.vicalCouldNotFetch(_:), v47);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1006117AC()
{
  v20 = type metadata accessor for URL();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URLRequest();
  v22 = *(v23 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v23);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v19 = v0;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "VICALWebService removeCache", v15, 2u);
  }

  (*(v9 + 8))(v12, v8);
  (*(v1 + 16))(v4, v21 + OBJC_IVAR____TtC8coreidvd15VICALWebService_url, v20);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v16 = qword_100882498;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  [v16 removeCachedResponseForRequest:isa];

  return (*(v22 + 8))(v7, v23);
}

uint64_t sub_100611AC8()
{
  v1 = OBJC_IVAR____TtC8coreidvd15VICALWebService_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator));
}

uint64_t type metadata accessor for VICALWebService()
{
  result = qword_100849920;
  if (!qword_100849920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100611BF8()
{
  result = type metadata accessor for URL();
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

uint64_t sub_100611C90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100611CD8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v40 = &v37 - v14;
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = [objc_opt_self() standardUserDefaults];
  v18._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.overrideDocumentResponse.getter();
  v19 = NSUserDefaults.internalString(forKey:)(v18);
  countAndFlagsBits = v19.value._countAndFlagsBits;

  if (!v19.value._object)
  {
LABEL_8:
    sub_10000B8B8(a1, a2);
    return a1;
  }

  v38 = v4;
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "VICALWebService found override document string. Attempting to parse", v22, 2u);
  }

  v23 = *(v9 + 8);
  v23(v16, v8);
  static String.Encoding.utf8.getter();
  v24 = String.data(using:allowLossyConversion:)();
  v26 = v25;

  (*(v42 + 8))(v7, v38);
  if (v26 >> 60 == 15)
  {
    v27 = v39;
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "VICALWebService could not convert override string to data. Returning same data", v30, 2u);
    }

    v23(v27, v8);
    goto LABEL_8;
  }

  v31 = v23;
  v32 = v40;
  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "VICALWebService parsed override string. Using instead of returned data", v35, 2u);
  }

  v31(v32, v8);
  return v24;
}

uint64_t sub_100612114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[36] = v7;
  v8 = *(v7 - 8);
  v6[37] = v8;
  v9 = *(v8 + 64) + 15;
  v6[38] = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v11 = type metadata accessor for Workflow();
  v6[40] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v13 = type metadata accessor for DIPSignpost.Config();
  v6[45] = v13;
  v14 = *(v13 - 8);
  v6[46] = v14;
  v15 = *(v14 + 64) + 15;
  v6[47] = swift_task_alloc();
  v16 = type metadata accessor for DIPSignpost();
  v6[48] = v16;
  v17 = *(v16 - 8);
  v6[49] = v17;
  v18 = *(v17 + 64) + 15;
  v6[50] = swift_task_alloc();
  v19 = type metadata accessor for DeviceInformationProvider();
  v6[51] = v19;
  v20 = *(v19 - 8);
  v6[52] = v20;
  v21 = *(v20 + 64) + 15;
  v6[53] = swift_task_alloc();
  v22 = type metadata accessor for UUID();
  v6[54] = v22;
  v23 = *(v22 - 8);
  v6[55] = v23;
  v24 = *(v23 + 64) + 15;
  v6[56] = swift_task_alloc();
  v25 = type metadata accessor for Logger();
  v6[57] = v25;
  v26 = *(v25 - 8);
  v6[58] = v26;
  v27 = *(v26 + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_100612440, 0, 0);
}

uint64_t sub_100612440()
{
  v1 = *(v0 + 480);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Getting identity proofing workflow", v4, 2u);
  }

  v5 = *(v0 + 480);
  v6 = *(v0 + 456);
  v7 = *(v0 + 464);
  v8 = *(v0 + 256);

  (*(v7 + 8))(v5, v6);
  v9 = *(v0 + 256);
  if (*(v8 + 16) && (v10 = *(v0 + 256), v11 = sub_10003ADCC(0xD000000000000010, 0x800000010070B400), v9 = *(v0 + 256), (v12 & 1) != 0))
  {
    v13 = (*(v9 + 56) + 16 * v11);
    v58 = v13[1];
    v59 = *v13;
  }

  else
  {
    v58 = 0xE000000000000000;
    v59 = 0;
  }

  v46 = v9;
  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  v17 = *(v0 + 424);
  v16 = *(v0 + 432);
  v18 = *(v0 + 416);
  v19 = *(v0 + 272);
  v49 = *(v0 + 408);
  v51 = *(v0 + 280);
  v20 = *(v0 + 248);
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v55 = v22;
  v56 = v21;
  (*(v15 + 8))(v14, v16);
  v23 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v53 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  sub_100020260(*(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 200);
  v24 = *(v0 + 232);
  sub_10000BA08((v0 + 200), *(v0 + 224));

  v57 = v19;

  v54 = v23;

  v25 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v47 = v26;
  v48 = v25;
  sub_10000BB78((v0 + 200));
  DeviceInformationProvider.init()();
  v27 = DeviceInformationProvider.uniqueDeviceID.getter();
  v44 = v28;
  v45 = v27;
  (*(v18 + 8))(v17, v49);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  if (v51 == 3)
  {
    v29 = 0x6E6F736D697263;
  }

  else
  {
    v29 = 0x61746E6567616DLL;
  }

  if (v51 == 3)
  {
    v30 = 0x800000010070DEA0;
  }

  else
  {
    v30 = 0xE900000000000064;
  }

  if (v51 == 3)
  {
    v31 = 0xD000000000000012;
  }

  else
  {
    v31 = 0x496C617469676964;
  }

  v32 = *(v0 + 400);
  v33 = *(v0 + 368);
  v34 = *(v0 + 376);
  v50 = v30;
  v52 = *(v0 + 360);
  v35 = *(v0 + 312);
  v36 = *(v0 + 264);
  v38 = qword_100882478;
  v37 = unk_100882480;

  static DaemonSignposts.fetchIdentityDynamicWorkflowTotal.getter();
  DIPSignpost.init(_:)();
  *(v0 + 16) = v53;
  *(v0 + 24) = v54;
  *(v0 + 32) = v56;
  *(v0 + 40) = v55;
  *(v0 + 48) = v48;
  *(v0 + 56) = v47;
  *(v0 + 64) = v45;
  *(v0 + 72) = v44;
  *(v0 + 80) = v38;
  *(v0 + 88) = v37;
  *(v0 + 96) = v29;
  *(v0 + 104) = 0xE700000000000000;
  *(v0 + 112) = v36;
  *(v0 + 120) = v57;
  *(v0 + 128) = v31;
  *(v0 + 136) = v50;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  *(v0 + 152) = 0;
  *(v0 + 160) = v59;
  *(v0 + 168) = v58;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 185) = *(v0 + 504);
  *(v0 + 188) = *(v0 + 507);
  *(v0 + 192) = v46;
  static DaemonSignposts.fetchIdentityDynamicWorkflowRequest.getter();
  (*(v33 + 56))(v35, 0, 1, v52);
  v39 = swift_task_alloc();
  *(v0 + 488) = v39;
  *v39 = v0;
  v39[1] = sub_10061287C;
  v40 = *(v0 + 352);
  v41 = *(v0 + 312);
  v42 = *(v0 + 248);

  return sub_1005DA9C4(v40, v0 + 16, 1, v41, 0);
}

uint64_t sub_10061287C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(v2 + 496) = v0;

  sub_10000BE18(*(v2 + 312), &unk_10084A260, &qword_1006EA050);
  sub_1000B2068(v2 + 16);
  if (v0)
  {
    v5 = sub_100612CC4;
  }

  else
  {
    v5 = sub_1006129C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006129C8()
{
  v42 = v0;
  v1 = v0[59];
  v2 = v0[43];
  v3 = v0[42];
  sub_1006147F0(v0[44], v2);
  defaultLogger()();
  sub_1006147F0(v2, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[58];
  v8 = v0[59];
  v9 = v0[57];
  v10 = v0[42];
  if (v6)
  {
    v12 = v0[40];
    v11 = v0[41];
    v39 = v0[59];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41 = v14;
    *v13 = 136315138;
    sub_1006147F0(v10, v11);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_100614854(v10);
    v18 = sub_100141FE4(v15, v17, &v41);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Workflow request success %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v7 + 8))(v39, v9);
  }

  else
  {

    sub_100614854(v10);
    (*(v7 + 8))(v8, v9);
  }

  v19 = v0[59];
  v20 = v0[60];
  v33 = v0[56];
  v34 = v0[53];
  v22 = v0[49];
  v21 = v0[50];
  v23 = v0[48];
  v24 = v0[43];
  v25 = v0[44];
  v35 = v0[47];
  v36 = v0[42];
  v26 = v0[40];
  v37 = v0[41];
  v38 = v0[39];
  v40 = v0[38];
  v27 = v0[30];
  v28._countAndFlagsBits = 0x6261316163613630;
  v29._object = 0x8000000100725DE0;
  v28._object = 0xE800000000000000;
  v29._countAndFlagsBits = 0xD000000000000021;
  logMilestone(tag:description:)(v28, v29);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v27[3] = v26;
  v27[4] = &off_100808FE8;
  v30 = sub_100032DBC(v27);
  sub_1006148B0(v24, v30, type metadata accessor for Workflow);
  sub_100614854(v25);
  (*(v22 + 8))(v21, v23);

  v31 = v0[1];

  return v31();
}

uint64_t sub_100612CC4()
{
  v1 = v0[62];
  v7 = v0[60];
  v8 = v0[59];
  v9 = v0[56];
  v10 = v0[53];
  v2 = v0[49];
  v3 = v0[50];
  v6 = v0[48];
  v11 = v0[47];
  v12 = v0[44];
  v13 = v0[43];
  v14 = v0[42];
  v15 = v0[41];
  v16 = v0[39];
  (*(v0[37] + 104))(v0[38], enum case for DIPError.Code.internalError(_:), v0[36]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v2 + 8))(v3, v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100612ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();
  v9 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v10 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v5[28] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost.Config();
  v5[30] = v12;
  v13 = *(v12 - 8);
  v5[31] = v13;
  v14 = *(v13 + 64) + 15;
  v5[32] = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost();
  v5[33] = v15;
  v16 = *(v15 - 8);
  v5[34] = v16;
  v17 = *(v16 + 64) + 15;
  v5[35] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v5[36] = v18;
  v19 = *(v18 - 8);
  v5[37] = v19;
  v20 = *(v19 + 64) + 15;
  v5[38] = swift_task_alloc();
  v21 = type metadata accessor for Logger();
  v5[39] = v21;
  v22 = *(v21 - 8);
  v5[40] = v22;
  v23 = *(v22 + 64) + 15;
  v5[41] = swift_task_alloc();

  return _swift_task_switch(sub_100613174, 0, 0);
}

uint64_t sub_100613174()
{
  v1 = v0[41];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Getting the Identity Proofing Static workflow", v4, 2u);
  }

  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[36];
  v10 = v0[37];

  (*(v6 + 8))(v5, v7);
  UUID.init()();
  UUID.uuidString.getter();
  v0[42] = v11;
  (*(v10 + 8))(v8, v9);
  v12 = swift_task_alloc();
  v0[43] = v12;
  *v12 = v0;
  v12[1] = sub_1006132F8;

  return sub_1005D7070(0);
}

uint64_t sub_1006132F8(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_100613418, 0, 0);
}

uint64_t sub_100613418()
{
  if (v0[44])
  {
    v1 = v0[35];
    v3 = v0[31];
    v2 = v0[32];
    v4 = v0[30];
    v5 = v0[27];
    static DaemonSignposts.fetchIdentityStaticWorkflowTotal.getter();
    DIPSignpost.init(_:)();
    static DaemonSignposts.fetchIdentityStaticWorkflowRequest.getter();
    (*(v3 + 56))(v5, 0, 1, v4);
    v6 = swift_task_alloc();
    v0[45] = v6;
    *v6 = v0;
    v6[1] = sub_100613684;
    v7 = v0[29];
    v8 = v0[27];
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[20];
    v12 = v0[21];

    return sub_1005CFA28(v7, v11, v12, v9, v10, 2, v8);
  }

  else
  {
    (*(v0[25] + 104))(v0[26], enum case for DIPError.Code.staticWebServiceUnavailable(_:), v0[24]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = v0[41];
    v15 = v0[38];
    v16 = v0[35];
    v17 = v0[32];
    v18 = v0[29];
    v20 = v0[26];
    v19 = v0[27];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100613684()
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 368) = v0;

  sub_10000BE18(v3, &unk_10084A260, &qword_1006EA050);
  if (v0)
  {
    v4 = sub_100613B04;
  }

  else
  {
    v4 = sub_1006137C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006137C4()
{
  v1._countAndFlagsBits = 0x3937356263373734;
  v2._object = 0x8000000100725D40;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD000000000000018;
  logMilestone(tag:description:)(v1, v2);
  v3 = [objc_opt_self() standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectLivenessOptinConsentSheetContent.getter();
  v5 = NSUserDefaults.internalBool(forKey:)(v4);

  if (v5)
  {
    v6 = v0[29];
    v26 = v0[28];
    sub_100007224(&qword_1008499F8, &qword_1006E9910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF740;
    *(inited + 32) = 0x7373656E6576696CLL;
    *(inited + 40) = 0xE800000000000000;
    v8 = type metadata accessor for IdentityProofingConsentFlowItem();
    v9 = objc_allocWithZone(v8);
    *(inited + 48) = IdentityProofingConsentFlowItem.init(passive:inlineStepUp:legacy:pushNotificationStepUp:)();
    *(inited + 56) = 0x7374617453646566;
    *(inited + 64) = 0xE800000000000000;
    v10 = objc_allocWithZone(v8);
    *(inited + 72) = IdentityProofingConsentFlowItem.init(passive:inlineStepUp:legacy:pushNotificationStepUp:)();
    sub_10003DE44(inited);
    swift_setDeallocating();
    sub_100007224(&unk_100849A00, &qword_1006E9918);
    swift_arrayDestroy();
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1006BF520;
    *(v11 + 32) = 0x7374617453646566;
    *(v11 + 40) = 0xE800000000000000;
    v12 = objc_allocWithZone(v8);
    *(v11 + 48) = IdentityProofingConsentFlowItem.init(passive:inlineStepUp:legacy:pushNotificationStepUp:)();
    sub_10003DE44(v11);
    swift_setDeallocating();
    sub_10000BE18(v11 + 32, &unk_100849A00, &qword_1006E9918);
    v13 = objc_allocWithZone(type metadata accessor for IdentityProofingConsentFlow());
    v14 = IdentityProofingConsentFlow.init(manualReviewEnabled:manualReviewDisabled:)();
    v15 = *(v26 + 76);

    *(v6 + v15) = v14;
  }

  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[38];
  v20 = v0[34];
  v19 = v0[35];
  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[27];
  v27 = v0[26];
  sub_1006148B0(v0[29], v0[19], type metadata accessor for IdentityProofingStaticWorkflow);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  (*(v20 + 8))(v19, v21);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100613B04()
{
  v1 = v0[46];
  v17 = v0[44];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);
  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[35];
  v11 = v0[32];
  v12 = v0[29];
  v14 = v0[26];
  v13 = v0[27];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100613D18()
{
  v0 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v59 = &v51 - v2;
  v3 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v51 - v7;
  v9 = type metadata accessor for HardwareAttestationType();
  v10 = *(v9 - 8);
  v56 = *(v10 + 56);
  v56(v8, 1, 1, v9);
  v55 = sub_100007224(&qword_100839BC0, &qword_1006D49B0);
  v54 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v53 = xmmword_1006BF520;
  *(v12 + 16) = xmmword_1006BF520;
  v52 = enum case for HardwareAttestationType.SEP(_:);
  v51 = *(v10 + 104);
  v51(v12 + v11);
  v13 = type metadata accessor for LegacyWorkflow(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000033;
  *(v16 + 24) = 0x8000000100725C50;
  *(v16 + 32) = 0x31302E305F76;
  *(v16 + 40) = 0xE600000000000000;
  *(v16 + 48) = 0x206E6F7275626954;
  *(v16 + 56) = 0xEB000000004F4E49;
  *(v16 + 64) = 0x696E6F7275626974;
  *(v16 + 72) = 0xEA00000000006F6ELL;
  *(v16 + 80) = 0x206E6F7275626954;
  *(v16 + 88) = 0xEB000000004F4E49;
  *(v16 + 96) = 0x797469746E656449;
  *(v16 + 104) = 0xE800000000000000;
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0x3172656974;
  *(v16 + 144) = 0xE500000000000000;
  *(v16 + 152) = _swiftEmptyArrayStorage;
  *(v16 + 160) = 10794;
  *(v16 + 168) = 0xE200000000000000;
  *(v16 + 176) = &off_1007FBF50;
  *(v16 + 184) = 0x53552D6E65;
  *(v16 + 192) = 0xE500000000000000;
  *(v16 + 200) = 0;
  sub_10061463C(v8, v16 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType);
  *(v16 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes) = v12;
  *(v16 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields) = _swiftEmptyArrayStorage;
  v17 = (v16 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
  *v17 = 0;
  v17[1] = 0;
  *(v16 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_enableUAM) = 2;
  v18 = type metadata accessor for LegacyINOWorkflow(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_applicationACL) = &off_1007FBF80;
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_acceptedVerifiedClaims) = 0;
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_verifiedClaimFields) = _swiftEmptyArrayStorage;
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_claimDataConsistency) = 2;
  v22 = v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_claimTTL;
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_recipientCertificates) = 0;
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_pagination) = 0;
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_unorderedUI) = 0;
  v23 = v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_cloudkitRetry;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_connectToWifiReminderInDays;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_provisioningRetryTimeoutInDays;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_deleteIncompleteCredentialAfterDays;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_deleteInactiveKeysAfterDays;
  *v27 = 0;
  *(v27 + 8) = 1;
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_base64EncodeImage) = 1;
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_isBiomeFedStatsEnabled) = 2;
  *(v21 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_isLivenessConsentOptinEnabled) = 2;
  v57 = sub_1000F18E8(v16);
  v28 = v58;
  v56(v58, 1, 1, v9);
  v29 = swift_allocObject();
  *(v29 + 16) = v53;
  (v51)(v29 + v11, v52, v9);
  v30 = *(v13 + 48);
  v31 = *(v13 + 52);
  v32 = swift_allocObject();
  *(v32 + 16) = 0xD000000000000024;
  *(v32 + 24) = 0x8000000100725C90;
  *(v32 + 32) = 0x31302E305F76;
  *(v32 + 40) = 0xE600000000000000;
  *(v32 + 48) = 0x6E6F7275626954;
  *(v32 + 56) = 0xE700000000000000;
  *(v32 + 64) = 0x6E6F7275626974;
  *(v32 + 72) = 0xE700000000000000;
  *(v32 + 80) = 0x6E6F7275626954;
  *(v32 + 88) = 0xE700000000000000;
  *(v32 + 96) = 0x797469746E656449;
  *(v32 + 104) = 0xE800000000000000;
  *(v32 + 112) = 1;
  *(v32 + 120) = 0;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0x3172656974;
  *(v32 + 144) = 0xE500000000000000;
  *(v32 + 152) = _swiftEmptyArrayStorage;
  *(v32 + 160) = 10794;
  *(v32 + 168) = 0xE200000000000000;
  *(v32 + 176) = &off_1007FBFC0;
  *(v32 + 184) = 0x53552D6E65;
  *(v32 + 192) = 0xE500000000000000;
  *(v32 + 200) = 0;
  sub_10061463C(v28, v32 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType);
  *(v32 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes) = v29;
  *(v32 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields) = _swiftEmptyArrayStorage;
  v33 = (v32 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
  *v33 = 0;
  v33[1] = 0;
  *(v32 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_enableUAM) = 2;
  v34 = type metadata accessor for RecipientEncryptionCertificate();
  v35 = v59;
  (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
  v36 = type metadata accessor for LegacySPWorkflow(0);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_nonceURL) = 0;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_sharingURL) = 0;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_allowUrlOverride) = 2;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userInputFieldValidationURLs) = _swiftEmptyArrayStorage;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareableAttributes) = _swiftEmptyArrayStorage;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_pagination) = _swiftEmptyArrayStorage;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_acceptedVerifiedClaims) = _swiftEmptyArrayStorage;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_applicationACL) = &off_1007FBFF0;
  sub_100614780(v35, v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate);
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates) = 0;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareAccountAssessment) = 0;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareINOAssessment) = 0;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_consumableDSD) = 0;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_includeEncryptedTSID) = 2;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_includeFGuid) = 2;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentDeviceData) = 2;
  v40 = v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_connectivity;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 1;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_sharingFormat) = 0;
  v41 = (v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userAuthorizationBundleName);
  *v41 = 0;
  v41[1] = 0;
  v42 = v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_dsdValidityInSeconds;
  *v42 = 0;
  *(v42 + 8) = 1;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_useExternalGSToken) = 0;
  *(v39 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_assessBeforeProof) = 0;
  sub_1000F18E8(v32);
  sub_10000BE18(v35, &qword_1008399F0, &unk_1006DA210);
  type metadata accessor for LegacySynthesizedWorkflows();
  swift_allocObject();
  v43 = sub_1000E4C70(v57);

  swift_setDeallocating();
  v44 = *sub_1000D7BB4();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_deallocClassInstance();
  swift_setDeallocating();
  v47 = *sub_1000D7BB4();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_deallocClassInstance();
  return v43;
}

uint64_t sub_10061463C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006146AC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v0 + 54);
  sub_1000318FC(&v0[4], v5);
  os_unfair_lock_unlock(v0 + 54);
  v1 = v6;
  sub_10001F640(v6);
  v2 = sub_100031918(v5);
  if (v1)
  {
    v3 = v1(v2);
    sub_10001FE8C(v1);
    return v3;
  }

  else
  {
    type metadata accessor for WorkflowFetcher();
    return swift_allocObject();
  }
}

uint64_t sub_100614780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006147F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Workflow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100614854(uint64_t a1)
{
  v2 = type metadata accessor for Workflow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006148B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100614918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100614A94, 0, 0);
}

uint64_t sub_100614A94()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing the Identity Proofing Static workflow", v4, 2u);
  }

  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v10 = v0[10];

  (*(v6 + 8))(v5, v7);
  UUID.init()();
  UUID.uuidString.getter();
  v0[15] = v11;
  (*(v10 + 8))(v8, v9);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_100614C18;

  return sub_1005D7070(0);
}

uint64_t sub_100614C18(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100614D38, 0, 0);
}

uint64_t sub_100614D38()
{
  if (v0[17])
  {
    v1 = swift_task_alloc();
    v0[18] = v1;
    *v1 = v0;
    v1[1] = sub_1005A47F4;
    v2 = v0[4];
    v3 = v0[5];
    v5 = v0[2];
    v4 = v0[3];

    return sub_1005D1720(v5, v4, v2, v3);
  }

  else
  {
    v7 = v0[14];
    v8 = v0[11];
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.staticWebServiceUnavailable(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

dispatch_group_t sub_100614F30()
{
  result = dispatch_group_create();
  qword_1008824B0 = result;
  return result;
}

uint64_t sub_100614F50()
{
  v1[89] = v0;
  v2 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v1[90] = swift_task_alloc();
  v3 = *(*(sub_100007224(&qword_10083B038, &unk_1006D9160) - 8) + 64) + 15;
  v1[91] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[92] = v4;
  v5 = *(v4 - 8);
  v1[93] = v5;
  v6 = *(v5 + 64) + 15;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();

  return _swift_task_switch(sub_10061508C, 0, 0);
}

uint64_t sub_10061508C()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 744);
  v61 = *(v0 + 736);
  v3 = *(v0 + 728);
  v62 = *(v0 + 720);
  v64 = *(v0 + 760);
  v4 = *(v0 + 712);
  swift_defaultActor_initialize();
  active = type metadata accessor for ActiveTaskManager();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  *(v4 + 15) = v5;
  type metadata accessor for AccountChangeListener();
  swift_allocObject();
  *(v4 + 16) = sub_10047A054();
  *(v4 + 17) = [objc_allocWithZone(type metadata accessor for IDVServiceListener()) init];
  *(v4 + 18) = [objc_allocWithZone(type metadata accessor for IdentityManagementListener()) init];
  *(v4 + 20) = [objc_allocWithZone(type metadata accessor for IdentityProvisioningListener()) init];
  *(v4 + 21) = [objc_allocWithZone(type metadata accessor for IdentityProofingListener()) init];
  *(v4 + 22) = [objc_allocWithZone(type metadata accessor for IdentityProofingDataSharingListener()) init];
  *(v4 + 23) = [objc_allocWithZone(type metadata accessor for DIDocUploadSessionListener()) init];
  v6 = type metadata accessor for DigitalPresentmentListener();
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  v7 = objc_allocWithZone(v6);
  *(v4 + 24) = sub_10047F1A8((v0 + 368));
  *(v4 + 25) = [objc_allocWithZone(type metadata accessor for MobileDocumentReaderListener()) init];
  v8 = type metadata accessor for UserNotificationManager();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v4 + 26) = UserNotificationManager.init()();
  *(v4 + 27) = 0;
  v11 = OBJC_IVAR____TtC8coreidvd6Daemon_signpost;
  v12 = type metadata accessor for DIPSignpost();
  v13 = *(*(v12 - 8) + 56);
  v13(&v4[v11], 1, 1, v12);
  Logger.init(subsystem:category:)();
  setDefaultLogger(_:)();
  v14 = *(v2 + 8);
  *(v0 + 776) = v14;
  *(v0 + 784) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v1, v61);
  v15._countAndFlagsBits = 0x6476646965726F63;
  v15._object = 0xE800000000000000;
  setProcessName(_:)(v15);
  static DaemonSignposts.daemonStartup.getter();
  DIPSignpost.init(_:)();
  v13(v3, 0, 1, v12);
  swift_beginAccess();
  sub_1005D7AFC(v3, &v4[v11]);
  swift_endAccess();
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Entering Daemon initializer group", v18, 2u);
  }

  v19 = *(v0 + 760);
  v20 = *(v0 + 736);

  v14(v19, v20);
  if (qword_100832D30 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 712);
  v22 = qword_1008824B0;
  *(v0 + 792) = qword_1008824B0;
  dispatch_group_enter(v22);
  v23 = *(*(v4 + 18) + OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_watchSessionManager);
  *(v21 + 152) = v23;
  v24 = *(v4 + 15);
  *(v0 + 504) = active;
  *(v0 + 512) = &off_100812348;
  *(v0 + 480) = v24;
  v25 = type metadata accessor for WebPresentmentListener();
  v26 = objc_allocWithZone(v25);
  v27 = *(v0 + 504);
  v28 = sub_10001F370(v0 + 480, v27);
  v29 = *(v27 - 8);
  v30 = *(v29 + 64) + 15;
  v31 = swift_task_alloc();
  (*(v29 + 16))(v31, v28, v27);
  v32 = *v31;
  v33 = v23;

  v34 = sub_100617634(v32, v26);
  sub_10000BB78((v0 + 480));

  v35 = sub_1003C6994(0, 1, 1, _swiftEmptyArrayStorage);
  v37 = v35[2];
  v36 = v35[3];
  if (v37 >= v36 >> 1)
  {
    v35 = sub_1003C6994((v36 > 1), v37 + 1, 1, v35);
  }

  v65 = *(v0 + 712);
  *(v0 + 544) = v25;
  *(v0 + 552) = &off_1008150A8;
  *(v0 + 520) = v34;
  v35[2] = v37 + 1;
  sub_10001F358((v0 + 520), &v35[5 * v37 + 4]);
  *(v0 + 704) = v35;
  sub_100007224(&qword_100849BB0, &unk_1006DFBC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BFF90;
  v39 = type metadata accessor for MobileDocumentProviderRegistrationListener();
  v40 = [objc_allocWithZone(v39) init];
  *(inited + 56) = v39;
  *(inited + 64) = &off_1008145A8;
  *(inited + 32) = v40;
  v41 = *(v4 + 26);
  v42 = *(v4 + 15);
  *(v0 + 584) = active;
  *(v0 + 592) = &off_100812348;
  *(v0 + 560) = v42;
  v43 = type metadata accessor for RemoteDocumentProviderActorListener();
  v63 = swift_allocObject();
  v44 = sub_10001F370(v0 + 560, active);
  v45 = *(active - 8);
  v46 = *(v45 + 64) + 15;
  v47 = swift_task_alloc();
  (*(v45 + 16))(v47, v44, active);
  v48 = *v47;

  v49 = sub_100617B5C(v41, v48, v63);
  sub_10000BB78((v0 + 560));

  *(inited + 96) = v43;
  *(inited + 104) = &off_10080EF80;
  *(inited + 72) = v49;
  v50 = *(v4 + 15);
  *(v0 + 624) = active;
  *(v0 + 632) = &off_100812348;
  *(v0 + 600) = v50;
  v51 = type metadata accessor for WebPresentmentRemoteAlertListener();
  v52 = objc_allocWithZone(v51);
  v53 = *(v0 + 624);
  v54 = sub_10001F370(v0 + 600, v53);
  v55 = *(v53 - 8);
  v56 = *(v55 + 64) + 15;
  v57 = swift_task_alloc();
  (*(v55 + 16))(v57, v54, v53);
  v58 = *v57;

  v59 = sub_1006178C8(v58, v52);
  sub_10000BB78((v0 + 600));

  *(inited + 136) = v51;
  *(inited + 144) = &off_1008151F8;
  *(inited + 112) = v59;
  sub_10031D438(inited);
  *(v65 + 112) = *(v0 + 704);

  return _swift_task_switch(sub_100615848, v65, 0);
}

uint64_t sub_100615848()
{
  qword_1008824A8 = *(v0 + 712);

  sub_100617DF0();
  v1 = swift_task_alloc();
  *(v0 + 800) = v1;
  *v1 = v0;
  v1[1] = sub_1006158F8;
  v2 = *(v0 + 712);

  return sub_100616704();
}

uint64_t sub_1006158F8()
{
  v1 = *v0;
  v2 = *(*v0 + 800);
  v3 = *(*v0 + 712);
  v7 = *v0;

  *(v1 + 808) = sub_100619A78(&qword_100849BB8, type metadata accessor for Daemon);
  swift_getObjectType();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100615A68, v5, v4);
}

uint64_t sub_100615A68()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[99];
  v3 = v0[94];
  sub_100020260((v0 + 2), (v0 + 80));
  sub_100031918((v0 + 2));
  v4 = *sub_10000BA08(v0 + 80, v0[83]);
  sub_100508418();
  sub_10000BB78(v0 + 80);
  sub_100618068();
  sub_10061864C();
  v5._countAndFlagsBits = 0x3230366538633331;
  v6._object = 0x8000000100726020;
  v5._object = 0xE800000000000000;
  v6._countAndFlagsBits = 0xD000000000000012;
  logMilestone(tag:description:)(v5, v6);
  dispatch_group_leave(v2);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Leaving Daemon initializer group", v9, 2u);
  }

  v10 = v0[98];
  v11 = v0[97];
  v12 = v0[94];
  v13 = v0[92];

  v11(v12, v13);
  if (qword_100832B40 != -1)
  {
    swift_once();
  }

  v14 = swift_task_alloc();
  v0[102] = v14;
  *v14 = v0;
  v14[1] = sub_100615CC0;

  return sub_100024CD8();
}

uint64_t sub_100615CC0()
{
  v1 = *(*v0 + 816);
  v2 = *(*v0 + 808);
  v3 = *(*v0 + 712);
  v7 = *v0;

  swift_getObjectType();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100615DFC, v5, v4);
}

uint64_t sub_100615DFC()
{
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[91];
  v5 = v0[90];

  v6 = v0[1];
  v7 = v0[89];

  return v6(v7);
}

uint64_t sub_100615E9C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Deinit called from DaemonInitializer", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 112);

  v11 = *(v1 + 120);

  v12 = *(v1 + 128);

  v13 = *(v1 + 208);

  v14 = *(v1 + 216);
  swift_unknownObjectRelease();
  sub_10000BE18(v1 + OBJC_IVAR____TtC8coreidvd6Daemon_signpost, &qword_10083B038, &unk_1006D9160);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100616078()
{
  sub_100615E9C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_100849A40;
  if (!qword_100849A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006160F8()
{
  sub_100122F24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006161D8()
{
  v1[10] = v0;
  v2 = type metadata accessor for DIPSignpost();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = *(*(sub_100007224(&qword_10083B038, &unk_1006D9160) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1006162D0, v0, 0);
}

uint64_t sub_1006162D0()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC8coreidvd6Daemon_signpost;
  swift_beginAccess();
  sub_100619960(v4 + v5, v1);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[14];
  if (v6)
  {
    sub_10000BE18(v0[14], &qword_10083B038, &unk_1006D9160);
  }

  else
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    (*(v9 + 16))(v8, v0[14], v10);
    sub_10000BE18(v7, &qword_10083B038, &unk_1006D9160);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0[10] + 112);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    do
    {
      sub_100020260(v13, (v0 + 2));
      v14 = v0[5];
      v15 = v0[6];
      sub_10000BA08(v0 + 2, v14);
      (*(v15 + 8))(v14, v15);
      sub_10000BB78(v0 + 2);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  v16 = async function pointer to waitForTerminationSignal()[1];
  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_1006164B4;

  return waitForTerminationSignal()();
}

uint64_t sub_1006164B4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

void sub_1006165E0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Locale changed. stopping daemon", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  exit(0);
}

uint64_t sub_100616704()
{
  v1[30] = v0;
  v1[31] = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[35] = v5;
  v6 = *(v5 - 8);
  v1[36] = v6;
  v7 = *(v6 + 64) + 15;
  v1[37] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v1[38] = v8;
  v9 = *(v8 - 8);
  v1[39] = v9;
  v10 = *(v9 + 64) + 15;
  v1[40] = swift_task_alloc();
  v11 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v1[42] = v12;
  v13 = *(v12 - 8);
  v1[43] = v13;
  v14 = *(v13 + 64) + 15;
  v1[44] = swift_task_alloc();

  return _swift_task_switch(sub_10061692C, v0, 0);
}

uint64_t sub_10061692C()
{
  v1 = v0[44];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing daemon launch tasks", v4, 2u);
  }

  v5 = v0[43];
  v6 = v0[44];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[40];
  v35 = v0[39];
  v10 = v0[37];
  v32 = v0[38];
  v11 = v0[36];
  v34 = v0[35];
  v28 = v0[34];
  v36 = v0[33];
  v29 = v0[32];
  v33 = v0[31];

  (*(v5 + 8))(v6, v7);
  v12 = dispatch_group_create();
  v0[45] = v12;
  v13 = v12;
  sub_10017ABC8();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v11 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v0[46] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100031B74();
  v0[6] = sub_1006171AC;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100503A7C;
  v0[5] = &unk_100818210;
  v14 = _Block_copy(v0 + 2);
  v30 = v13;
  static DispatchQoS.unspecified.getter();
  v0[26] = _swiftEmptyArrayStorage;
  sub_100619A78(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  v27 = *(v36 + 8);
  v27(v28, v29);
  v31 = *(v35 + 8);
  v31(v9, v32);
  v15 = swift_allocObject();
  *(v15 + 16) = v33;
  v0[12] = sub_100617628;
  v0[13] = v15;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100503A7C;
  v0[11] = &unk_100818260;
  v16 = _Block_copy(v0 + 8);
  static DispatchQoS.unspecified.getter();
  v0[27] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  v27(v28, v29);
  v31(v9, v32);
  v17 = v0[13];

  v18 = swift_allocObject();
  *(v18 + 16) = v33;
  v0[18] = sub_10061762C;
  v0[19] = v18;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100503A7C;
  v0[17] = &unk_1008182B0;
  v19 = _Block_copy(v0 + 14);
  static DispatchQoS.unspecified.getter();
  v0[28] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  v27(v28, v29);
  v31(v9, v32);
  v20 = v0[19];

  v21 = swift_allocObject();
  *(v21 + 16) = v33;
  v0[24] = sub_100617630;
  v0[25] = v21;
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100503A7C;
  v0[23] = &unk_100818300;
  v22 = _Block_copy(v0 + 20);
  static DispatchQoS.unspecified.getter();
  v0[29] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  v27(v28, v29);
  v31(v9, v32);
  v23 = v0[25];

  v24 = async function pointer to OS_dispatch_group.wait()[1];
  v25 = swift_task_alloc();
  v0[47] = v25;
  *v25 = v0;
  v25[1] = sub_100616FF0;

  return OS_dispatch_group.wait()();
}

uint64_t sub_100616FF0()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_100617100, v2, 0);
}

uint64_t sub_100617100()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 296);
  v6 = *(v0 + 272);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1006171AC()
{
  type metadata accessor for NetworkMonitor();
  static NetworkMonitor.shared.getter();
}

uint64_t sub_1006171E8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  if (qword_100832D30 != -1)
  {
    swift_once();
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  OS_dispatch_group.wait(timeout:)();
  v13(v12, v5);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Timed out waiting for the daemon to be initialized, proceeding to enable push", v16, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  if (qword_100832C28 != -1)
  {
    swift_once();
  }

  return sub_100188010();
}

uint64_t sub_10061749C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting Managers with Delegates", v7, 2u);
  }

  result = (*(v1 + 8))(v4, v0);
  if (qword_100832CC0 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_100617600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100617634(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = type metadata accessor for ActiveTaskManager();
  v22[4] = &off_100812348;
  v22[0] = a1;
  v10 = OBJC_IVAR____TtC8coreidvd22WebPresentmentListener_listener;
  type metadata accessor for WebPresentmentSession();
  static WebPresentmentSession.machServiceName.getter();
  v11 = objc_allocWithZone(NSXPCListener);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 initWithMachServiceName:v12];

  *&a2[v10] = v13;
  sub_100020260(v22, &a2[OBJC_IVAR____TtC8coreidvd22WebPresentmentListener_activeTaskManager]);
  v21.receiver = a2;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, "init");
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100141FE4(0xD000000000000018, 0x8000000100726080, &v20);
    _os_log_impl(&_mh_execute_header, v15, v16, "WebPresentmentListener %s", v17, 0xCu);
    sub_10000BB78(v18);
  }

  (*(v6 + 8))(v9, v5);
  [*&v14[OBJC_IVAR____TtC8coreidvd22WebPresentmentListener_listener] setDelegate:v14];

  sub_10000BB78(v22);
  return v14;
}

char *sub_1006178C8(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = type metadata accessor for ActiveTaskManager();
  v22[4] = &off_100812348;
  v22[0] = a1;
  v10 = OBJC_IVAR____TtC8coreidvd33WebPresentmentRemoteAlertListener_listener;
  type metadata accessor for WebPresentmentRemoteAlertController();
  static WebPresentmentRemoteAlertController.machServiceName.getter();
  v11 = objc_allocWithZone(NSXPCListener);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 initWithMachServiceName:v12];

  *&a2[v10] = v13;
  sub_100020260(v22, &a2[OBJC_IVAR____TtC8coreidvd33WebPresentmentRemoteAlertListener_activeTaskManager]);
  v21.receiver = a2;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, "init");
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100141FE4(0xD000000000000018, 0x8000000100726080, &v20);
    _os_log_impl(&_mh_execute_header, v15, v16, "WebPresentmentRemoteAlertListener %s", v17, 0xCu);
    sub_10000BB78(v18);
  }

  (*(v6 + 8))(v9, v5);
  [*&v14[OBJC_IVAR____TtC8coreidvd33WebPresentmentRemoteAlertListener_listener] setDelegate:v14];

  sub_10000BB78(v22);
  return v14;
}

void *sub_100617B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  active = type metadata accessor for ActiveTaskManager();
  v22 = &off_100812348;
  *&v20 = a2;
  v17 = sub_10017ABC8();
  static DispatchQoS.userInitiated.getter();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  v19 = _swiftEmptyArrayStorage;
  sub_100619A78(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10001F484(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a3[10] = 0;
  v15 = v18;
  a3[2] = v14;
  a3[3] = v15;
  a3[4] = &protocol witness table for UserNotificationManager;
  sub_10001F358(&v20, (a3 + 5));
  return a3;
}

void sub_100617DF0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting up System listeners", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_100832C70 != -1)
  {
    swift_once();
  }

  sub_10048611C(qword_100882350, *algn_100882358, qword_100882360, unk_100882368);
  v8 = [objc_opt_self() defaultCenter];
  v9 = [objc_opt_self() mainQueue];
  aBlock[4] = sub_1006165E0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004A8BDC;
  aBlock[3] = &unk_100818378;
  v10 = _Block_copy(aBlock);
  v11 = [v8 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v9 usingBlock:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

uint64_t sub_100618068()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  __chkstk_darwin(v3);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Registering background activities", v18, 2u);
  }

  (*(v12 + 8))(v15, v11);
  sub_10065C630();
  type metadata accessor for BackgroundActivityManager();
  static BackgroundActivityManager.shared.getter();
  sub_10000BA08(aBlock, v37);
  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();
  sub_10000BB78(aBlock);
  static BackgroundActivityManager.shared.getter();
  sub_10000BA08(aBlock, v37);
  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();
  sub_10000BB78(aBlock);
  sub_10017ABC8();
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v6);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v10, v6);
  v38 = sub_1006171E8;
  v39 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  v37 = &unk_100818350;
  v20 = _Block_copy(aBlock);
  v21 = v29;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100619A78(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  v22 = v32;
  v23 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v33 + 8))(v22, v23);
  (*(v30 + 8))(v21, v31);
  if (qword_100832C48 != -1)
  {
    swift_once();
  }

  v24 = qword_100882308;

  static BackgroundActivityManager.shared.getter();
  sub_10000BA08(aBlock, v37);
  v25 = *(v24 + 16);
  v26 = *(v24 + 24);
  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();

  return sub_10000BB78(aBlock);
}

uint64_t sub_10061864C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v0 - 8);
  v1 = *(v18 + 64);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017ABC8();
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  aBlock[4] = sub_10061749C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_100818328;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100619A78(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v17);
}

uint64_t sub_1006189AC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v34 - v6;
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 infoDictionary];

  if (v9)
  {
    v10 = 0x6E776F6E6B6E75;
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v11 + 16) && (v12 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v13 & 1) != 0) && (sub_10001F2EC(*(v11 + 56) + 32 * v12, v40), (swift_dynamicCast() & 1) != 0))
    {
      v14 = v39;
      v37 = v38;
      if (!*(v11 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      v37 = 0x6E776F6E6B6E75;
      if (!*(v11 + 16))
      {
        goto LABEL_12;
      }
    }

    v15 = sub_10003ADCC(0x6F6674616C505444, 0xEF646C6975426D72);
    if (v16)
    {
      sub_10001F2EC(*(v11 + 56) + 32 * v15, v40);
      if (swift_dynamicCast())
      {
        v17 = v39;
        v36 = v38;
        if (!*(v11 + 16))
        {
          goto LABEL_16;
        }

LABEL_13:
        v18 = sub_10003ADCC(0x6975424B44535444, 0xEA0000000000646CLL);
        if (v19)
        {
          sub_10001F2EC(*(v11 + 56) + 32 * v18, v40);

          if (swift_dynamicCast())
          {
            v10 = v38;
            v20 = v39;
            goto LABEL_18;
          }

LABEL_17:
          v20 = 0xE700000000000000;
LABEL_18:
          defaultLogger()();

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v21, v22))
          {
            v34 = v1;
            v35 = v0;
            v23 = swift_slowAlloc();
            v40[0] = swift_slowAlloc();
            *v23 = 136446978;
            v24 = sub_100141FE4(v37, v14, v40);

            *(v23 + 4) = v24;
            *(v23 + 12) = 2082;
            v25 = sub_100141FE4(v36, v17, v40);

            *(v23 + 14) = v25;
            *(v23 + 22) = 2082;
            v26 = sub_100141FE4(v10, v20, v40);

            *(v23 + 24) = v26;
            *(v23 + 32) = 2082;
            if (qword_100832C80 != -1)
            {
              swift_once();
            }

            if (byte_100882380)
            {
              v27 = 1702195828;
            }

            else
            {
              v27 = 0x65736C6166;
            }

            if (byte_100882380)
            {
              v28 = 0xE400000000000000;
            }

            else
            {
              v28 = 0xE500000000000000;
            }

            v29 = sub_100141FE4(v27, v28, v40);

            *(v23 + 34) = v29;
            _os_log_impl(&_mh_execute_header, v21, v22, "coreidvd started. version = %{public}s, platform version = %{public}s, sdk version = %{public}s, diagnostics = %{public}s", v23, 0x2Au);
            swift_arrayDestroy();

            return (*(v34 + 8))(v7, v35);
          }

          else
          {

            return (*(v1 + 8))(v7, v0);
          }
        }

LABEL_16:

        goto LABEL_17;
      }
    }

LABEL_12:
    v17 = 0xE700000000000000;
    v36 = 0x6E776F6E6B6E75;
    if (!*(v11 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  defaultLogger()();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "coreidvd started", v33, 2u);
  }

  return (*(v1 + 8))(v5, v0);
}

void sub_100618F20()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v40 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v40 - v15;
  static Locale.current.getter();
  Locale.region.getter();
  (*(v9 + 8))(v12, v8);
  v17 = type metadata accessor for Locale.Region();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000BE18(v16, &unk_100849BA0, &qword_1006D95F0);
    return;
  }

  v19 = Locale.Region.identifier.getter();
  v21 = v20;
  (*(v18 + 8))(v16, v17);
  v22 = objc_opt_self();
  v23 = [v22 standardUserDefaults];
  static DaemonDefaultsKeys.lastSeenRegion.getter();
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 stringForKey:v24];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v19 == v26 && v21 == v28)
    {

LABEL_8:

      defaultLogger()();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Device region has not changed since last launch", v32, 2u);
      }

      (*(v1 + 8))(v7, v0);
      return;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_8;
    }
  }

  defaultLogger()();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_100141FE4(v19, v21, &v41);
    _os_log_impl(&_mh_execute_header, v33, v34, "Detected new device region; region is now %{public}s", v35, 0xCu);
    sub_10000BB78(v36);
  }

  (*(v1 + 8))(v5, v0);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  [qword_100882498 removeAllCachedResponses];
  v37 = [v22 standardUserDefaults];
  v38 = String._bridgeToObjectiveC()();

  static DaemonDefaultsKeys.lastSeenRegion.getter();
  v39 = String._bridgeToObjectiveC()();

  [v37 setObject:v38 forKey:v39];
}

void sub_100619488()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v35 - v6;
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 infoDictionary];

  if (!v9)
  {
    return;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v10 + 16) && (v11 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v12 & 1) != 0))
  {
    sub_10001F2EC(*(v10 + 56) + 32 * v11, v39);

    v13 = swift_dynamicCast();
    v14 = v37;
    if (!v13)
    {
      v14 = 0;
    }

    v36 = v14;
    if (v13)
    {
      v15 = v38;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {

    v36 = 0;
    v15 = 0;
  }

  v16 = objc_opt_self();
  v17 = [v16 standardUserDefaults];
  static DaemonDefaultsKeys.lastSeenVersion.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 stringForKey:v18];

  if (v19)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v15)
    {
      if (v22)
      {
        v23 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v23 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          if (v36 == v20 && v15 == v22)
          {

LABEL_23:

            defaultLogger()();
            v26 = Logger.logObject.getter();
            v27 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&_mh_execute_header, v26, v27, "Daemon version has not changed since last launch", v28, 2u);
            }

            (*(v1 + 8))(v7, v0);
            return;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

      goto LABEL_26;
    }
  }

  else if (v15)
  {
LABEL_26:
    v24 = 0;
    goto LABEL_27;
  }

  v24 = 1;
LABEL_27:
  defaultLogger()();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Detected version change since last launch", v31, 2u);
  }

  (*(v1 + 8))(v5, v0);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  [qword_100882498 removeAllCachedResponses];
  v32 = [v16 standardUserDefaults];
  if (v24)
  {
    v33 = 0;
  }

  else
  {
    v33 = String._bridgeToObjectiveC()();
  }

  static DaemonDefaultsKeys.lastSeenVersion.getter();
  v34 = String._bridgeToObjectiveC()();

  [v32 setObject:v33 forKey:v34];

  swift_unknownObjectRelease();
}

uint64_t sub_100619960(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B038, &unk_1006D9160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006199D0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100027B9C;

  return sub_1002F8EB4(a1, a2, v2);
}

uint64_t sub_100619A78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100619AF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return _swift_task_switch(sub_100619B18, 0, 0);
}

uint64_t sub_100619B18()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], v0 + 16);
  os_unfair_lock_unlock(v1 + 54);
  v2 = *(v0 + 56);

  sub_100031918(v0 + 16);

  v3 = type metadata accessor for Daemon();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_100619C6C;

  return sub_100614F50();
}

uint64_t sub_100619C6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = sub_100619DB8;
  }

  else
  {
    *(v4 + 248) = a1;
    v7 = sub_100619D94;
  }

  return _swift_task_switch(v7, 0, 0);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100619E44()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100619EFC;

  return sub_10061A0E8();
}

uint64_t sub_100619EFC()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10061A090;
  }

  else
  {
    v8 = sub_10061A058;
  }

  return _swift_task_switch(v8, v7, v6);
}

void sub_10061A058()
{
  v1 = *(v0 + 24);

  exit(0);
}

uint64_t sub_10061A090()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  return _swift_errorInMain(v1);
}

uint64_t sub_10061A0E8()
{
  type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[5] = v2;
  v0[6] = v1;

  return _swift_task_switch(sub_10061A17C, v2, v1);
}

uint64_t sub_10061A17C()
{
  sub_10067FE7C();
  type metadata accessor for OSTransaction();
  v1 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v4 = type metadata accessor for Daemon();
  *v2 = v0;
  v2[1] = sub_10061A2EC;

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v0 + 16, 0xD000000000000029, 0x80000001007260D0, &unk_1006E9A30, 0, v3, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_10061A2EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_10061A620;
  }

  else
  {
    v6 = sub_10061A3FC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10061A3FC()
{
  v0[8] = v0[2];
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10061A490;

  return sub_1006161D8();
}

uint64_t sub_10061A490()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_10061A5B0, v4, v3);
}

uint64_t sub_10061A5B0()
{
  v1 = v0[8];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10061A620()
{
  v1 = v0[4];

  v2 = v0[3];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10061A684(uint64_t a1, uint64_t *a2, const char *a3)
{
  v22 = a3;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
      v15 = (*(a1 + 48) + v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(a1 + 56) + v14);
      v19 = *v18;
      v20 = v18[1];
      v21[0] = v16;
      v21[1] = v17;
      v21[2] = v19;
      v21[3] = v20;

      sub_100629CF8(v21, a2, v22);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061A7DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10061A870(uint64_t a1, char **a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = __clz(__rbit64(v5)) | (v8 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v12 = v11[1];
        v26 = *v11;
        v13 = (*(a1 + 56) + 96 * v10);
        v14 = v13[1];
        v33 = *v13;
        v34 = v14;
        v16 = v13[3];
        v15 = v13[4];
        v17 = v13[2];
        *(v37 + 9) = *(v13 + 73);
        v36 = v16;
        v37[0] = v15;
        v35 = v17;
        v18 = v33;
        v19 = *a2;

        sub_10000BBC4(&v33, v27, &unk_100849FC0, &qword_1006C9540);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v19;
        v38 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1003C5110(0, *(v19 + 2) + 1, 1, v19);
          *a2 = v19;
        }

        v22 = *(v19 + 2);
        v21 = *(v19 + 3);
        if (v22 >= v21 >> 1)
        {
          v19 = sub_1003C5110((v21 > 1), v22 + 1, 1, v19);
          *a2 = v19;
        }

        v5 &= v5 - 1;
        v27[0] = v26;
        v27[1] = v12;
        v28 = v33;
        v29 = v34;
        *(v32 + 9) = *(v37 + 9);
        v31 = v36;
        v32[0] = v37[0];
        v30 = v35;
        *(v19 + 2) = v18 + 1;
        v23 = &v19[16 * v18];
        *(v23 + 4) = v38;
        *(v23 + 5) = *(&v18 + 1);
        result = sub_10000BE18(v27, &qword_1008487B8, &qword_1006E9E10);
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10061AA88(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v64 = a1;

  v8 = 0;
  v48 = v3;
  v49 = a2;
  while (v6)
  {
LABEL_11:
    v19 = __clz(__rbit64(v6)) | (v8 << 6);
    v20 = (*(v64 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v64 + 56) + 96 * v19);
    v24 = v23[4];
    v25 = *(v23 + 73);
    v56 = v23[3];
    v57[0] = v24;
    *(v57 + 9) = v25;
    v26 = v23[1];
    v27 = v23[2];
    v53 = *v23;
    v54 = v26;
    v55 = v27;
    v58[0] = v21;
    v58[1] = v22;
    v61 = v27;
    v62 = v56;
    v59 = v53;
    v60 = v26;
    v63[0] = v57[0];
    *(v63 + 9) = *(v57 + 9);
    sub_10000BBC4(v58, v51, &qword_1008487B8, &qword_1006E9E10);
    sub_10000BBC4(v58, v51, &qword_1008487B8, &qword_1006E9E10);
    v28 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *a2;
    v50 = *a2;
    *a2 = 0x8000000000000000;
    v32 = sub_10003ADCC(v21, v22);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_24;
    }

    v36 = v31;
    if (*(v30 + 24) >= v35)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v31)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1001725F4();
        if (v36)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10016B77C(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_10003ADCC(v21, v22);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_26;
      }

      v32 = v37;
      if (v36)
      {
LABEL_4:
        v9 = v50;
        v10 = (v50[7] + 96 * v32);
        v11 = v10[1];
        v51[0] = *v10;
        v51[1] = v11;
        v13 = v10[3];
        v12 = v10[4];
        v14 = v10[2];
        *&v52[9] = *(v10 + 73);
        v51[3] = v13;
        *v52 = v12;
        v51[2] = v14;
        v15 = v56;
        v16 = v57[0];
        v17 = v54;
        v10[2] = v55;
        v10[3] = v15;
        v10[4] = v16;
        *(v10 + 73) = *(v57 + 9);
        *v10 = v53;
        v10[1] = v17;
        sub_10000BE18(v51, &unk_100849FC0, &qword_1006C9540);

        goto LABEL_5;
      }
    }

    v9 = v50;
    v50[(v32 >> 6) + 8] |= 1 << v32;
    v39 = (v50[6] + 16 * v32);
    *v39 = v21;
    v39[1] = v22;
    v40 = (v50[7] + 96 * v32);
    v41 = v54;
    v42 = v55;
    *v40 = v53;
    v40[1] = v41;
    *(v40 + 73) = *(v57 + 9);
    v43 = v57[0];
    v40[3] = v56;
    v40[4] = v43;
    v40[2] = v42;
    v44 = v50[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_25;
    }

    v50[2] = v46;
LABEL_5:
    v6 &= v6 - 1;
    *v49 = v9;
    a2 = v49;
    sub_10000BE18(v58, &qword_1008487B8, &qword_1006E9E10);
    v3 = v48;
  }

  while (1)
  {
    v18 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v18 >= v7)
    {
    }

    v6 = *(v3 + 8 * v18);
    ++v8;
    if (v6)
    {
      v8 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10061ADC4(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v69 = a1;

  v8 = 0;
  v9 = &qword_1006E9E10;
  v52 = v7;
  v53 = v3;
  v54 = a2;
  while (v6)
  {
LABEL_11:
    v21 = __clz(__rbit64(v6)) | (v8 << 6);
    v22 = (*(v69 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    v25 = (*(v69 + 56) + 96 * v21);
    v26 = *v25;
    v59 = v25[1];
    v58 = v26;
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    *(v62 + 9) = *(v25 + 73);
    v61 = v28;
    v62[0] = v29;
    v60 = v27;
    v63[0] = v24;
    v63[1] = v23;
    v66 = v27;
    v67 = v28;
    v68[0] = v29;
    *(v68 + 9) = *(v62 + 9);
    v64 = v58;
    v65 = v59;
    v30 = v58;
    sub_10000BBC4(&v58, v56, &unk_100849FC0, &qword_1006C9540);

    v31 = v9;
    sub_10000BBC4(v63, v56, &qword_1008487B8, v9);
    v32 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a2;
    v55 = *a2;
    *a2 = 0x8000000000000000;
    v36 = sub_10003ADCC(v30, *(&v30 + 1));
    v37 = *(v34 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_24;
    }

    v40 = v35;
    if (*(v34 + 24) >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v31;
        if (v35)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1001725F4();
        v9 = v31;
        if (v40)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10016B77C(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_10003ADCC(v30, *(&v30 + 1));
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_26;
      }

      v36 = v41;
      v9 = v31;
      if (v40)
      {
LABEL_4:
        v10 = v55;
        v11 = (v55[7] + 96 * v36);
        v12 = v11[1];
        v56[0] = *v11;
        v56[1] = v12;
        v14 = v11[3];
        v13 = v11[4];
        v15 = v11[2];
        *&v57[9] = *(v11 + 73);
        v56[3] = v14;
        *v57 = v13;
        v56[2] = v15;
        v16 = v59;
        *v11 = v58;
        v11[1] = v16;
        v17 = v60;
        v18 = v61;
        v19 = v62[0];
        *(v11 + 73) = *(v62 + 9);
        v11[3] = v18;
        v11[4] = v19;
        v11[2] = v17;
        sub_10000BE18(v56, &unk_100849FC0, &qword_1006C9540);

        goto LABEL_5;
      }
    }

    v10 = v55;
    v55[(v36 >> 6) + 8] |= 1 << v36;
    *(v55[6] + 16 * v36) = v30;
    v43 = (v55[7] + 96 * v36);
    v44 = *(v62 + 9);
    v46 = v61;
    v45 = v62[0];
    v43[2] = v60;
    v43[3] = v46;
    v43[4] = v45;
    *(v43 + 73) = v44;
    v47 = v59;
    *v43 = v58;
    v43[1] = v47;
    v48 = v55[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_25;
    }

    v55[2] = v50;
LABEL_5:
    v6 &= v6 - 1;
    a2 = v54;
    *v54 = v10;
    sub_10000BE18(v63, &qword_1008487B8, v9);
    v7 = v52;
    v3 = v53;
  }

  while (1)
  {
    v20 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v20 >= v7)
    {
    }

    v6 = *(v3 + 8 * v20);
    ++v8;
    if (v6)
    {
      v8 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10061B12C(uint64_t a1, char **a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = __clz(__rbit64(v5)) | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        v12 = *(*(a1 + 48) + 16 * v10 + 8);
        v13 = *(v11 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_hash + 8);
        v21 = *(v11 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_hash);
        v14 = *a2;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_1003C5110(0, *(v14 + 2) + 1, 1, v14);
          *a2 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          v14 = sub_1003C5110((v16 > 1), v17 + 1, 1, v14);
          *a2 = v14;
        }

        v5 &= v5 - 1;
        *(v14 + 2) = v17 + 1;
        v18 = &v14[16 * v17];
        *(v18 + 4) = v21;
        *(v18 + 5) = v13;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10061B2DC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DIPKeyAlgorithm.ECC256(_:);
  v3 = type metadata accessor for DIPKeyAlgorithm();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_10061B350(uint64_t a1@<X0>, uint64_t a2@<X1>, __SecTrust *a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6)
{
  *(&v219 + 1) = a2;
  v216 = a3;
  v223 = a4;
  *&v219 = a1;
  v208 = a5;
  v6 = type metadata accessor for KDFParams();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v206 = v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  v202 = *(v9 - 8);
  v203 = v9;
  v10 = *(v202 + 64);
  __chkstk_darwin(v9);
  v204 = v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EncryptionParams();
  v209 = *(v12 - 8);
  v210 = v12;
  v13 = *(v209 + 64);
  v14 = __chkstk_darwin(v12);
  v205 = v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v207 = v184 - v16;
  v17 = type metadata accessor for Logger();
  object = *(v17 - 8);
  v212 = v17;
  v18 = object[8];
  __chkstk_darwin(v17);
  v213 = v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ECIESOption();
  v221 = *(v20 - 8);
  v222 = v20;
  v21 = *(v221 + 64);
  v22 = __chkstk_darwin(v20);
  v218 = v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = v184 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = v184 - v28;
  __chkstk_darwin(v27);
  v31 = v184 - v30;
  v32 = type metadata accessor for DIPError.Code();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v214 = v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = v184 - v37;
  v201 = sub_100007224(&unk_10084A070, &unk_1006E7DF0);
  v39 = Data.init(base64Encoded:options:)();
  if (v40 >> 60 == 15)
  {
    goto LABEL_18;
  }

  v217 = v38;
  v41 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    if (v41 != 2)
    {
      goto LABEL_17;
    }

    v43 = *(v39 + 16);
    v42 = *(v39 + 24);
    v44 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (!v44)
    {
      if (v45 == 65)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v41)
  {
    LODWORD(v45) = HIDWORD(v39) - v39;
    if (!__OFSUB__(HIDWORD(v39), v39))
    {
      if (v45 == 65)
      {
        goto LABEL_9;
      }

LABEL_17:
      sub_10000BD94(v39, v40);
      v38 = v217;
LABEL_18:
      (*(v33 + 104))(v38, enum case for DIPError.Code.internalError(_:), v32);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    goto LABEL_77;
  }

  if (BYTE6(v40) != 65)
  {
    goto LABEL_17;
  }

LABEL_9:
  v196 = v26;
  v199 = v32;
  v200 = v33;
  *&v229 = v39;
  *(&v229 + 1) = v40;
  v227 = &type metadata for Data;
  v228 = &protocol witness table for Data;
  v47 = *(&v219 + 1);
  v46 = v219;
  v226 = v219;
  v48 = v39;
  v49 = v40;
  v50 = sub_10000BA08(&v226, &type metadata for Data);
  v52 = *v50;
  v51 = v50[1];
  v197 = v48;
  v198 = v49;
  sub_1000363B4(v48, v49);
  sub_10000B8B8(v46, v47);
  v53 = v220;
  sub_1000C2F1C(v52, v51);
  sub_10000BB78(&v226);
  v54 = *(&v229 + 1);
  v55 = v229;
  if (!v223)
  {
LABEL_35:
    (*(v200 + 104))(v217, enum case for DIPError.Code.internalError(_:), v199);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v81 = v55;
    v82 = v54;
LABEL_36:
    sub_10000B90C(v81, v82);
    sub_10000BD94(v197, v198);
    return;
  }

  *&v219 = v53;
  v220 = v229;
  v56 = v221;
  v57 = v222;
  v58 = *(v221 + 104);
  DWORD2(v219) = enum case for ECIESOption.recipientSigningKey(_:);
  v58(v31);
  v59 = v223;
  if (!*(v223 + 16))
  {
    (*(v56 + 8))(v31, v57);
LABEL_34:
    v55 = v220;
    goto LABEL_35;
  }

  v60 = sub_10003B3AC(v31);
  if ((v61 & 1) == 0)
  {
    (*(v221 + 8))(v31, v222);
    goto LABEL_34;
  }

  v62 = v58;
  v63 = (*(v59 + 56) + 16 * v60);
  v64 = *v63;
  v65 = v63[1];
  v194 = v54;
  v195 = v64;
  sub_10000B8B8(v64, v65);
  v66 = *(v221 + 8);
  v66(v31, v222);
  v67 = v65 >> 62;
  if ((v65 >> 62) <= 1)
  {
    v68 = v196;
    if (!v67)
    {
      v69 = BYTE6(v65);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v68 = v196;
  if (v67 != 2)
  {
LABEL_33:
    sub_10000B90C(v195, v65);
    v54 = v194;
    goto LABEL_34;
  }

  v71 = *(v195 + 16);
  v70 = *(v195 + 24);
  v44 = __OFSUB__(v70, v71);
  v69 = v70 - v71;
  if (v44)
  {
    __break(1u);
LABEL_25:
    LODWORD(v69) = HIDWORD(v195) - v195;
    if (__OFSUB__(HIDWORD(v195), v195))
    {
      __break(1u);
      goto LABEL_102;
    }

    v69 = v69;
  }

LABEL_27:
  if (v69 != 65)
  {
    goto LABEL_33;
  }

  v221 = v65;
  LODWORD(v196) = enum case for ECIESOption.senderSigningKey(_:);
  v72 = v222;
  v62(v29);
  v73 = v223;
  if (!*(v223 + 16))
  {
    v83 = v29;
    v84 = v72;
LABEL_39:
    v66(v83, v84);
    v79 = v217;
LABEL_54:
    (*(v200 + 104))(v79, enum case for DIPError.Code.internalError(_:), v199);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_55:
    sub_10000B90C(v195, v221);
    v81 = v220;
    v82 = v194;
    goto LABEL_36;
  }

  v74 = sub_10003B3AC(v29);
  if ((v75 & 1) == 0)
  {
    v83 = v29;
    v84 = v222;
    goto LABEL_39;
  }

  v76 = (*(v73 + 56) + 16 * v74);
  v77 = v76[1];
  v223 = *v76;
  sub_10000B8B8(v223, v77);
  v66(v29, v222);
  v78 = v77 >> 62;
  if ((v77 >> 62) <= 1)
  {
    v79 = v217;
    if (!v78)
    {
      v80 = BYTE6(v77);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v79 = v217;
  if (v78 != 2)
  {
LABEL_53:
    sub_10000B90C(v223, v77);
    goto LABEL_54;
  }

  v86 = *(v223 + 16);
  v85 = *(v223 + 24);
  v44 = __OFSUB__(v85, v86);
  v80 = v85 - v86;
  if (v44)
  {
    __break(1u);
LABEL_44:
    LODWORD(v80) = HIDWORD(v223) - v223;
    if (__OFSUB__(HIDWORD(v223), v223))
    {
      __break(1u);
      goto LABEL_113;
    }

    v80 = v80;
  }

LABEL_46:
  if (v80 != 65)
  {
    goto LABEL_53;
  }

  v193 = v77;
  if (!a6)
  {
LABEL_59:
    (*(v200 + 104))(v79, enum case for DIPError.Code.internalError(_:), v199);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_60:
    sub_10000B90C(v223, v193);
    goto LABEL_55;
  }

  v87 = v222;
  (v62)(v68, DWORD2(v219), v222);
  if (!*(a6 + 16))
  {
    v94 = v68;
    v95 = v87;
LABEL_58:
    v66(v94, v95);
    goto LABEL_59;
  }

  v88 = sub_10003B3AC(v68);
  if ((v89 & 1) == 0)
  {
    v94 = v68;
    v95 = v222;
    goto LABEL_58;
  }

  v90 = (*(a6 + 56) + 16 * v88);
  v91 = v90[1];
  *(&v219 + 1) = *v90;
  sub_10000B8B8(*(&v219 + 1), v91);
  v66(v68, v222);
  v92 = v91 >> 62;
  if ((v91 >> 62) <= 1)
  {
    v192 = v91;
    if (!v92)
    {
      v93 = BYTE6(v91);
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (v92 != 2)
  {
    sub_10000B90C(*(&v219 + 1), v91);
    goto LABEL_59;
  }

  v192 = v91;
  v97 = *(*(&v219 + 1) + 16);
  v96 = *(*(&v219 + 1) + 24);
  v44 = __OFSUB__(v96, v97);
  v93 = v96 - v97;
  if (v44)
  {
    __break(1u);
LABEL_65:
    LODWORD(v93) = HIDWORD(v219) - DWORD2(v219);
    if (__OFSUB__(HIDWORD(v219), DWORD2(v219)))
    {
      __break(1u);
      goto LABEL_136;
    }

    v93 = v93;
  }

LABEL_67:
  if (v93 != 65)
  {
    sub_10000B90C(*(&v219 + 1), v192);
    v79 = v217;
    goto LABEL_59;
  }

  v98 = v218;
  (v62)(v218, v196, v222);
  if (!*(a6 + 16) || (v99 = sub_10003B3AC(v98), (v100 & 1) == 0))
  {
    v66(v98, v222);
LABEL_99:
    (*(v200 + 104))(v217, enum case for DIPError.Code.internalError(_:), v199);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_100:
    sub_10000B90C(*(&v219 + 1), v192);
    goto LABEL_60;
  }

  v101 = (*(a6 + 56) + 16 * v99);
  v102 = v101[1];
  v196 = *v101;
  sub_10000B8B8(v196, v102);
  v66(v98, v222);
  v222 = v102;
  v45 = v102 >> 62;
  if ((v102 >> 62) <= 1)
  {
    if (!v45)
    {
      v103 = BYTE6(v222);
      goto LABEL_84;
    }

    goto LABEL_82;
  }

LABEL_78:
  if (v45 != 2)
  {
LABEL_98:
    sub_10000B90C(v196, v222);
    goto LABEL_99;
  }

  v105 = *(v196 + 2);
  v104 = *(v196 + 3);
  v44 = __OFSUB__(v104, v105);
  v103 = v104 - v105;
  if (v44)
  {
    __break(1u);
LABEL_82:
    LODWORD(v103) = HIDWORD(v196) - v196;
    if (__OFSUB__(HIDWORD(v196), v196))
    {
      __break(1u);
      goto LABEL_151;
    }

    v103 = v103;
  }

LABEL_84:
  if (v103 != 65)
  {
    goto LABEL_98;
  }

  v106 = SecTrustCopyCertificateChain(v216);
  if (!v106)
  {
LABEL_103:
    (*(v200 + 104))(v217, enum case for DIPError.Code.secTrustGetCertificateFailure(_:), v199);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v196, v222);
    goto LABEL_100;
  }

  v65 = v106;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_102:

    goto LABEL_103;
  }

  *&v226 = 0;
  type metadata accessor for SecCertificate(0);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v218 = v226;
  if (!v226)
  {
    goto LABEL_103;
  }

  v191 = xmmword_1006DE2A0;
  v226 = xmmword_1006DE2A0;
  if (!(v218 >> 62))
  {
    v107 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v107)
    {
      goto LABEL_90;
    }

LABEL_152:
    v216 = 0;
LABEL_153:

    (*(v200 + 104))(v217, enum case for DIPError.Code.internalError(_:), v199);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v220, v194);
    sub_10000B90C(v196, v222);
    sub_10000B90C(*(&v219 + 1), v192);
    sub_10000B90C(v223, v193);
    sub_10000B90C(v195, v221);

    goto LABEL_154;
  }

LABEL_151:
  v107 = _CocoaArrayWrapper.endIndex.getter();
  if (!v107)
  {
    goto LABEL_152;
  }

LABEL_90:
  if (v107 < 1)
  {
    __break(1u);
    goto LABEL_157;
  }

  v108 = 0;
  v109 = 0;
  v110 = v218 & 0xC000000000000001;
  do
  {
    if (v110)
    {
      v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v115 = *(v218 + 8 * v109 + 32);
    }

    v116 = v115;
    if (!v108)
    {
      v117 = v115;
      v108 = v116;
    }

    ++v109;
    v111 = SecCertificateCopyData(v116);
    v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;

    Data.append(_:)();
    sub_10000B90C(v112, v114);
  }

  while (v107 != v109);
  v118 = v108;
  v189 = copyPublicKeyDataFromCertificate(_:)();
  v120 = v119;
  v216 = v118;

  v190 = v120;
  if (v120 >> 60 == 15)
  {
    goto LABEL_153;
  }

  error = 0;
  countAndFlagsBits = *(v215 + 2);
  v215 = SecKeyCopyPublicKey(countAndFlagsBits);
  if (!v215)
  {
LABEL_114:

    (*(v200 + 104))(v217, enum case for DIPError.Code.internalError(_:), v199);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v220, v194);
    sub_10000BD94(v189, v190);
    sub_10000B90C(v196, v222);
    sub_10000B90C(*(&v219 + 1), v192);
    sub_10000B90C(v223, v193);
    sub_10000B90C(v195, v221);
LABEL_154:
    sub_10000BD94(v197, v198);
    goto LABEL_155;
  }

  v121 = SecKeyCopyExternalRepresentation(v215, &error);
  if (!v121)
  {
LABEL_113:

    goto LABEL_114;
  }

  v122 = v121;
  v123 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v124;

  v229 = v191;
  Data.append(_:)();
  v186 = v123;
  v187 = v125;
  Data.append(_:)();
  Data.append(_:)();
  v224 = v191;
  Data.append(_:)();
  Data.append(_:)();
  Data.append(_:)();
  sub_100007224(&qword_10084A0A8, &qword_1006E9E48);
  inited = swift_initStackObject();
  *(inited + 32) = kSecKeyKeyExchangeParameterSharedInfo;
  *(inited + 16) = xmmword_1006BF520;
  v127 = v224;
  *(inited + 64) = &type metadata for Data;
  *(inited + 40) = v127;
  v128 = kSecKeyKeyExchangeParameterSharedInfo;
  sub_10000B8B8(v127, *(&v127 + 1));
  *&v191 = sub_10003E2C4(inited);
  swift_setDeallocating();
  sub_10000BE18(inited + 32, &qword_10084A0B0, &qword_1006E9E50);
  v129 = swift_initStackObject();
  *(v129 + 16) = xmmword_1006BFF90;
  *(v129 + 32) = v128;
  v130 = v229;
  *(v129 + 64) = &type metadata for Data;
  *(v129 + 40) = v130;
  v131 = kSecKeyEncryptionParameterRecryptCertificate;
  if (!kSecKeyEncryptionParameterRecryptCertificate)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v132 = v129;
  v133 = v226;
  *(v129 + 104) = &type metadata for Data;
  *(v129 + 72) = v131;
  *(v129 + 80) = v133;
  if (!kSecKeyEncryptionParameterRecryptParameters)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v134 = kSecKeyEncryptionParameterRecryptParameters;
  v135 = v131;
  sub_10000B8B8(v130, *(&v130 + 1));
  sub_10000B8B8(v133, *(&v133 + 1));

  v132[14] = v134;
  v132[18] = sub_100007224(&unk_10084A0B8, &qword_1006E9E58);
  v132[15] = v191;
  sub_10003E2C4(v132);
  swift_setDeallocating();
  sub_100007224(&qword_10084A0B0, &qword_1006E9E50);
  swift_arrayDestroy();
  v136 = static DIPFeatures.sharedInstance.getter();
  if (v136 && (v137 = [v136 isEnvNonQA], swift_unknownObjectRelease(), !v137))
  {
    v138 = &enum case for DIPError.Code.sepRewrapInternalError(_:);
  }

  else
  {
    v138 = &enum case for DIPError.Code.sepRewrapError(_:);
  }

  v139 = *v138;
  v185 = *(v200 + 104);
  v185(v214, v139, v199);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10001F8D4(0, &qword_100845EE0, NSString_ptr);
  sub_10066FF40();
  v141 = Dictionary._bridgeToObjectiveC()().super.isa;

  DecryptedDataWithParameters = SecKeyCreateDecryptedDataWithParameters();

  if (!DecryptedDataWithParameters)
  {
    v151 = v214;
    errorFromCFError(_:_:_:)();
    swift_willThrow();
    sub_10000B90C(v220, v194);

    sub_10000BD94(v189, v190);
    sub_10000B90C(v186, v187);
    sub_10000B90C(v196, v222);
    sub_10000B90C(*(&v219 + 1), v192);
    sub_10000B90C(v223, v193);
    sub_10000B90C(v195, v221);
    sub_10000BD94(v197, v198);
    (*(v200 + 8))(v151, v199);
    goto LABEL_148;
  }

  *&v191 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v218 = v143;

  defaultLogger()();
  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *v146 = 0;
    _os_log_impl(&_mh_execute_header, v144, v145, "rewrap with SEP key", v146, 2u);
  }

  (object[1])(v213, v212);
  v147._countAndFlagsBits = 0xD000000000000013;
  v148._countAndFlagsBits = 0x6239386161303431;
  v147._object = 0x8000000100726D30;
  v148._object = 0xE800000000000000;
  logMilestone(tag:description:)(v148, v147);
  v149 = v218 >> 62;
  if ((v218 >> 62) <= 1)
  {
    if (!v149)
    {
      v150 = BYTE6(v218);
      goto LABEL_129;
    }

LABEL_127:
    LODWORD(v150) = DWORD1(v191) - v191;
    if (!__OFSUB__(DWORD1(v191), v191))
    {
      v150 = v150;
      goto LABEL_129;
    }

LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v149 != 2)
  {
LABEL_134:
    v157 = v199;
    v156 = v200;
    (*(v200 + 16))(v217, v214, v199);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v220, v194);

    sub_10000BD94(v189, v190);
    sub_10000B90C(v186, v187);
    sub_10000B90C(v191, v218);
    sub_10000B90C(v196, v222);
    sub_10000B90C(*(&v219 + 1), v192);
    sub_10000B90C(v223, v193);
    sub_10000B90C(v195, v221);
    sub_10000BD94(v197, v198);
    (*(v156 + 8))(v214, v157);
    goto LABEL_148;
  }

  v153 = *(v191 + 16);
  v152 = *(v191 + 24);
  v44 = __OFSUB__(v152, v153);
  v150 = v152 - v153;
  if (v44)
  {
    __break(1u);
    goto LABEL_127;
  }

LABEL_129:
  if (v150 < 66)
  {
    goto LABEL_134;
  }

  v212 = Data.subdata(in:)();
  v213 = v154;
  if (v149 != 2)
  {
    if (v149 == 1)
    {
      if (!__OFSUB__(DWORD1(v191), v191))
      {
        v155 = DWORD1(v191) - v191;
        goto LABEL_140;
      }

      goto LABEL_158;
    }

    goto LABEL_139;
  }

LABEL_136:
  v159 = *(v191 + 16);
  v158 = *(v191 + 24);
  v155 = v158 - v159;
  if (__OFSUB__(v158, v159))
  {
    __break(1u);
LABEL_139:
    v155 = BYTE6(v218);
  }

LABEL_140:
  if (v155 >= 65)
  {
    v160 = Data.subdata(in:)();
    v162 = v161;
    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    sub_10000B90C(v160, v162);
    v163 = Data._bridgeToObjectiveC()().super.isa;
    v164 = DigestSha256();

    if (v164)
    {
      v165 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v167 = v166;

      v168 = Data.base64EncodedString(options:)(0);
      v184[1] = v168._countAndFlagsBits;
      object = v168._object;
      sub_10000B90C(v165, v167);
      v169 = Data._bridgeToObjectiveC()().super.isa;
      v170 = DigestSha256();

      if (v170)
      {
        v171 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v173 = v172;

        v184[0] = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
        sub_10000B90C(v171, v173);
        v174 = Data._bridgeToObjectiveC()().super.isa;
        v175 = DigestSha256();

        if (v175)
        {
          v176 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v178 = v177;

          Data.base64EncodedString(options:)(0);
          sub_10000B90C(v176, v178);
          (*(v202 + 104))(v204, enum case for EncryptionParamsAlgorithmIdentifier.EC_v3(_:), v203);
          Data.base64EncodedString(options:)(0);
          KDFParams.init(senderSigningKeyFingerprint:recipientSigningKeyFingerprint:conversationToken:sharedIdentifierNames:)();
          v179 = v207;
          EncryptionParams.init(alg:sender:recipientFingerprint:kdfParams:)();
          v181 = v209;
          v180 = v210;
          (*(v209 + 16))(v205, v179, v210);
          sub_1000AB6CC();
          sub_1000AB81C();
          EncryptedDataContainer.init(type:data:params:)();
          sub_10000B90C(v220, v194);

          sub_10000BD94(v189, v190);
          sub_10000B90C(v186, v187);
          sub_10000B90C(v212, v213);
          sub_10000B90C(v191, v218);
          sub_10000B90C(v196, v222);
          sub_10000B90C(*(&v219 + 1), v192);
          sub_10000B90C(v223, v193);
          sub_10000B90C(v195, v221);
          sub_10000BD94(v197, v198);
          (*(v181 + 8))(v179, v180);
          (*(v200 + 8))(v214, v199);
          sub_10000B90C(v224, *(&v224 + 1));
          sub_10000B90C(v229, *(&v229 + 1));
          sub_10000B90C(v226, *(&v226 + 1));
          return;
        }

        v183 = v199;
        v185(v217, enum case for DIPError.Code.senderSigningKeyFingerprintFailed(_:), v199);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_10000B90C(v220, v194);

        sub_10000BD94(v189, v190);
        sub_10000B90C(v186, v187);
        sub_10000B90C(v212, v213);
        sub_10000B90C(v191, v218);
        sub_10000B90C(v196, v222);
        sub_10000B90C(*(&v219 + 1), v192);
        sub_10000B90C(v223, v193);
        sub_10000B90C(v195, v221);
        sub_10000BD94(v197, v198);
        (*(v200 + 8))(v214, v183);
        goto LABEL_148;
      }

      v182 = v199;
      v185(v217, enum case for DIPError.Code.internalError(_:), v199);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    else
    {

      v182 = v199;
      v185(v217, enum case for DIPError.Code.internalError(_:), v199);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v220, v194);

    sub_10000BD94(v189, v190);
    sub_10000B90C(v186, v187);
    sub_10000B90C(v212, v213);
    sub_10000B90C(v191, v218);
    sub_10000B90C(v196, v222);
    sub_10000B90C(*(&v219 + 1), v192);
    sub_10000B90C(v223, v193);
    sub_10000B90C(v195, v221);
    sub_10000BD94(v197, v198);
    (*(v200 + 8))(v214, v182);
LABEL_148:
    sub_10000B90C(v224, *(&v224 + 1));
    sub_10000B90C(v229, *(&v229 + 1));
LABEL_155:
    sub_10000B90C(v226, *(&v226 + 1));
    return;
  }

LABEL_161:
  __break(1u);
}

uint64_t sub_10061D5B4(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = 0;
  v42 = a2 + 32;
  while (2)
  {
    v41 = result;
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      v6 = *(v42 + 8 * i);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      v10 = *a3;
      if (*(*a3 + 16))
      {
        break;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v41;
      }
    }

    v11 = v7;
    v12 = v6;
    v13 = sub_10003ADCC(v11, v9);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      goto LABEL_5;
    }

    v16 = (*(v10 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v19;
    v24 = sub_10003ADCC(v19, v21);
    v25 = v41[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_27;
    }

    v28 = v23;
    if (v41[3] < v27)
    {
      sub_100165FC0(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_10003ADCC(v40, v21);
      if ((v28 & 1) == (v30 & 1))
      {
        v24 = v29;
        goto LABEL_17;
      }

LABEL_29:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10016F53C();
    }

LABEL_17:
    v31 = v18;
    if ((v28 & 1) == 0)
    {
      v41[(v24 >> 6) + 8] |= 1 << v24;
      v35 = (v41[6] + 16 * v24);
      *v35 = v40;
      v35[1] = v21;
      v36 = (v41[7] + 16 * v24);
      *v36 = v18;
      v36[1] = v17;
      v37 = v41[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v32 = v41;
        v41[2] = v39;

        goto LABEL_21;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v32 = v41;
    v33 = (v41[7] + 16 * v24);
    v34 = v33[1];
    *v33 = v31;
    v33[1] = v17;

LABEL_21:
    result = v32;
    if (v4 != v3)
    {
      continue;
    }

    return result;
  }
}

unint64_t sub_10061D830@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10065C7A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10061D85C()
{
  v2 = *v0;
  sub_10065C7B0();
  return BinaryInteger.description.getter();
}

uint64_t sub_10061D8A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6)
{
  v77 = a6;
  v62 = a5;
  v61 = a4;
  v64 = a2;
  v60 = a1;
  v8 = *(a3 + 48);
  v74 = *(a3 + 32);
  v75 = v8;
  *v76 = *(a3 + 64);
  *&v76[9] = *(a3 + 73);
  v9 = *(a3 + 16);
  v72 = *a3;
  v73 = v9;
  v10 = sub_100007224(&qword_100849F48, &qword_1006E9D90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v59 = v56 - v12;
  v13 = type metadata accessor for DIPError.Code();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v63 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 96) = 0u;
  v17 = (v6 + 96);
  *(v6 + 169) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  v18 = OBJC_IVAR____TtC8coreidvd25SubmittedAttributeWrapper__encryptedValue;
  v19 = sub_100007224(&unk_100849C00, &unk_1006BFC20);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v58 = v18;
  v57 = v21;
  v56[1] = v20 + 56;
  v21((v6 + v18), 1, 1, v19);
  v22 = *(a3 + 32);
  v23 = *(a3 + 40);
  v71 = *(a3 + 72);
  v24 = *(&v71 + 1);
  if (*(&v71 + 1))
  {
    v25 = v71;
    *(v6 + 40) = v22;
    *(v6 + 48) = v23;
    v26 = v22;
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006BF520;
    *(v27 + 32) = v25;
    *(v27 + 40) = v24;
    *(v6 + 56) = v26;
    *(v6 + 64) = v23;
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    *(v6 + 72) = v27;
    v28 = *(v6 + 144);
    v68 = *(v6 + 128);
    v29 = *(v6 + 160);
    v69 = v28;
    v70[0] = v29;
    *(v70 + 9) = *(v6 + 169);
    v30 = *(v6 + 112);
    v66 = *v17;
    v67 = v30;
    v31 = v75;
    *(v6 + 128) = v74;
    *(v6 + 144) = v31;
    *(v6 + 160) = *v76;
    *(v6 + 169) = *&v76[9];
    v32 = v73;
    *v17 = v72;
    *(v6 + 112) = v32;
    swift_bridgeObjectRetain_n();
    sub_10000BBC4(&v71, v65, &qword_10084A1D0, &qword_1006DB410);
    sub_10000BE18(&v66, &unk_10084A1C0, &qword_1006E9F78);
    v33 = *(v6 + 200);
    v34 = v64;
    *(v6 + 192) = v60;
    *(v6 + 200) = v34;

    v35 = v59;
    v57(v59, 1, 1, v19);
    v36 = v58;
    swift_beginAccess();
    sub_1000B2764(v35, v6 + v36, &qword_100849F48, &qword_1006E9D90);
    swift_endAccess();
    v37 = *(v6 + 216);
    *(v6 + 208) = 0;
    *(v6 + 216) = 0;

    *(v6 + 18) = v61 & 1;
    *(v6 + 16) = 0;
    *(v6 + 19) = 0;
    *(v6 + 21) = 0;
    v38 = v77;
    *(v6 + 24) = v62;
    *(v6 + 32) = v38;
  }

  else
  {
    v39 = v22;

    v77 = "lly created node";
    (*(v14 + 104))(v63, enum case for DIPError.Code.unexpectedDaemonState(_:), v13);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v40 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v41 = *(*v40 + 72);
    v42 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1006BF520;
    v44 = v43 + v42;
    v45 = (v44 + v40[14]);
    v46 = enum case for DIPError.PropertyKey.attributeID(_:);
    v47 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v47 - 8) + 104))(v44, v46, v47);
    v45[3] = &type metadata for String;
    v45[4] = &protocol witness table for String;
    *v45 = v39;
    v45[1] = v23;

    sub_10000BE18(a3, &unk_100849FC0, &qword_1006C9540);
    sub_10003C9C0(v43);
    swift_setDeallocating();
    sub_10000BE18(v44, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v48 = *(v6 + 144);
    v68 = *(v6 + 128);
    v49 = *(v6 + 160);
    v69 = v48;
    v70[0] = v49;
    *(v70 + 9) = *(v6 + 169);
    v50 = *(v6 + 112);
    v66 = *v17;
    v67 = v50;
    sub_10000BE18(&v66, &unk_10084A1C0, &qword_1006E9F78);
    v51 = *(v6 + 200);

    v52 = *(v6 + 216);

    sub_10000BE18(v6 + OBJC_IVAR____TtC8coreidvd25SubmittedAttributeWrapper__encryptedValue, &qword_100849F48, &qword_1006E9D90);
    type metadata accessor for SubmittedAttributeWrapper(0);
    v53 = *(*v6 + 48);
    v54 = *(*v6 + 52);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

void sub_10061DF9C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v53 = a1;
  v6 = type metadata accessor for DIPError.Code();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 16) & 1) != 0 || (*(v2 + 18) & 1) != 0 || (*(v2 + 21) & 1) != 0 || *(v2 + 19) == 1)
  {
    sub_10065AB54();
    if (v3)
    {
      return;
    }

    v16 = v14;
    v17 = v15;
    v51 = a2;
    v18 = *(v2 + 88);
    *(v2 + 80) = v14;
    *(v2 + 88) = v15;
  }

  else
  {
    v51 = a2;
    v16 = 0;
    v17 = 0;
  }

  v50 = v9;
  v19 = *(v2 + 40);
  v20 = *(v2 + 48);
  v21 = *(v2 + 72);
  v22 = v21[2];
  v49 = v2;
  if (v22)
  {
    v23 = v21[4];
    v24 = v21[5];
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  *&v61 = v19;
  *(&v61 + 1) = v20;
  LOBYTE(v62) = 0;
  *(&v62 + 1) = v16;
  *&v63 = v17;
  *(&v63 + 1) = v23;
  v64 = v24;

  v25 = sub_1000C004C();
  if (v4)
  {
  }

  else if (v26 >> 60 == 15)
  {

    (*(v65 + 104))(v50, enum case for DIPError.Code.unexpectedDeviceState(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v59 = v25;
    v60 = v26;
    if (v51)
    {
      static String.Encoding.utf8.getter();
      v27 = String.data(using:allowLossyConversion:)();
      v29 = v28;
      (*(v52 + 8))(v13, v10);
      v30 = v49;
      if (v29 >> 60 != 15)
      {
        *(&v55 + 1) = &type metadata for Data;
        *&v56 = &protocol witness table for Data;
        *&v54 = v27;
        *(&v54 + 1) = v29;
        v31 = sub_10000BA08(&v54, &type metadata for Data);
        sub_1000C2F1C(*v31, v31[1]);
        sub_10000BB78(&v54);
      }
    }

    else
    {
      v30 = v49;
    }

    v32 = v59;
    v52 = v60;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v34 = DigestSha256();

    if (v34)
    {
      v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = Data.base16EncodedString()();
      sub_10000B90C(v35, v37);
      v39 = *(v30 + 200);
      *(v30 + 192) = v38;

      v40 = *(v30 + 144);
      v56 = *(v30 + 128);
      v57 = v40;
      v58[0] = *(v30 + 160);
      *(v58 + 9) = *(v30 + 169);
      v41 = *(v30 + 112);
      v54 = *(v30 + 96);
      v55 = v41;
      *(v30 + 96) = v38;
      v42 = v51;
      *(v30 + 112) = v53;
      *(v30 + 120) = v42;
      v43 = v61;
      v44 = v62;
      v45 = v63;
      *(v30 + 176) = v64;
      *(v30 + 144) = v44;
      *(v30 + 160) = v45;
      *(v30 + 128) = v43;
      *(v30 + 184) = 0;

      sub_10000BE18(&v54, &unk_10084A1C0, &qword_1006E9F78);
      v46 = v32;
      v47 = v52;
    }

    else
    {

      (*(v65 + 104))(v50, enum case for DIPError.Code.unexpectedDeviceState(_:), v6);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v46 = v59;
      v47 = v60;
    }

    sub_10000B90C(v46, v47);
  }
}

uint64_t sub_10061E604(void *a1)
{
  v82 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v93 = *(v3 - 8);
  v4 = *(v93 + 64);
  __chkstk_darwin(v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for EncryptedMessageEntity();
  v78 = *(v80 - 8);
  v7 = *(v78 + 64);
  v8 = __chkstk_darwin(v80);
  v79 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v64 - v10;
  v11 = sub_100007224(&qword_100849F48, &qword_1006E9D90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v64 - v13;
  v15 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  v81 = *(v15 - 8);
  v16 = *(v81 + 64);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007224(&unk_100849FE0, &qword_1006E9E18);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v26 = *(v1 + 200);
  if (!v26)
  {
    goto LABEL_6;
  }

  v75 = v14;
  v76 = v3;
  v27 = *(v1 + 192);
  v28 = *(v1 + 144);
  v86 = *(v1 + 128);
  v87 = v28;
  v88[0] = *(v1 + 160);
  v29 = v88[0];
  *(v88 + 9) = *(v1 + 169);
  v30 = *(v1 + 112);
  v85[0] = *(v1 + 96);
  v85[1] = v30;
  v31 = *(&v85[0] + 1);
  *(v92 + 9) = *(v88 + 9);
  v91 = v28;
  v92[0] = v29;
  v89 = v30;
  v90 = v86;
  if (!*(&v85[0] + 1))
  {
    v3 = v76;
LABEL_6:
    (*(v93 + 104))(v6, enum case for DIPError.Code.unexpectedDaemonState(_:), v3);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v72 = *&v85[0];
  v73 = v27;
  v66 = v6;
  v67 = v25;
  v74 = &v64 - v23;
  v70 = v24;
  v71 = v22;
  v68 = v1;
  v32 = type metadata accessor for DIPECIESSessionV3SecKey();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  sub_10000BBC4(v85, v84, &unk_10084A1C0, &qword_1006E9F78);
  v35 = DIPECIESSessionV3SecKey.init(_:)();
  if (v2)
  {
    sub_10000BE18(v85, &unk_10084A1C0, &qword_1006E9F78);
  }

  else
  {
    v69 = v35;
    sub_100007224(&unk_10084A2D0, &qword_1006EA0D8);
    inited = swift_initStackObject();
    v65 = 0;
    *(inited + 16) = xmmword_1006BF520;
    v38 = v72;
    *(inited + 32) = v73;
    v39 = inited + 32;
    *(inited + 40) = v26;
    *(inited + 48) = v38;
    *(inited + 56) = v31;
    v40 = v92[0];
    *(inited + 96) = v91;
    *(inited + 112) = v40;
    *(inited + 121) = *(v92 + 9);
    v41 = v90;
    *(inited + 64) = v89;
    *(inited + 80) = v41;
    v42 = sub_10003FC5C(inited);
    swift_setDeallocating();
    sub_10000BE18(v39, &qword_100834830, &qword_1006EA0E0);
    v84[3] = v32;
    v84[4] = &protocol witness table for DIPECIESSessionV3SecKey;
    v84[0] = v69;
    v43 = type metadata accessor for __DataStorage();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();

    __DataStorage.init(length:)();
    v46 = *(v43 + 48);
    v47 = *(v43 + 52);
    swift_allocObject();
    __DataStorage.init(length:)();
    v83 = v42;
    (*(v81 + 104))(v18, enum case for EncryptionParamsAlgorithmIdentifier.EC_v3(_:), v15);
    v48 = v82;
    v49 = sub_100007224(&unk_10084A070, &unk_1006E7DF0);
    sub_1000AB6CC();
    sub_1000AB81C();
    v50 = v74;
    v51 = v65;
    EncryptedDataContainer.init(alg:encryptor:remotePublicKey:senderSigningKey:recipientSigningKey:data:)();
    if (v51)
    {
    }

    else
    {
      v65 = 0;
      v82 = v49;
      v52 = *(v78 + 104);
      v53 = v80;
      v52(v77, enum case for EncryptedMessageEntity.device_see(_:), v80);
      v52(v79, enum case for EncryptedMessageEntity.sp(_:), v53);
      (*(v70 + 16))(v67, v50, v71);
      v54 = v75;
      EncryptedMessage.init(sender:recipient:message:senderSigningKey:)();
      v55 = sub_100007224(&unk_100849C00, &unk_1006BFC20);
      (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
      v56 = OBJC_IVAR____TtC8coreidvd25SubmittedAttributeWrapper__encryptedValue;
      v57 = v68;
      swift_beginAccess();
      sub_1000B2764(v54, v57 + v56, &qword_100849F48, &qword_1006E9D90);
      swift_endAccess();
      v58 = dispatch thunk of DIPECIESSessionV3SecKey.ePublicKeyData.getter();
      if (v59 >> 60 == 15)
      {
        (*(v93 + 104))(v66, enum case for DIPError.Code.unexpectedDaemonState(_:), v76);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return (*(v70 + 8))(v74, v71);
      }

      else
      {
        v60 = v58;
        v61 = v59;
        v62 = Data.base64EncodedString(options:)(0);
        sub_10000BD94(v60, v61);

        (*(v70 + 8))(v74, v71);
        object = v68[13]._object;
        v68[13] = v62;
      }
    }
  }
}

uint64_t sub_10061EF54()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 88);

  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v19 = *(v0 + 184);
  v18 = *(v0 + 176);
  v17 = *(v0 + 160);
  sub_100672900(*(v0 + 96), *(v0 + 104));
  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd25SubmittedAttributeWrapper__encryptedValue, &qword_100849F48, &qword_1006E9D90);
  v14 = *(*v0 + 48);
  v15 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10061F070()
{
  sub_10061F140();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10061F140()
{
  if (!qword_100849BF8)
  {
    sub_10000B870(&unk_100849C00, &unk_1006BFC20);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100849BF8);
    }
  }
}

id sub_10061F1B0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_topekaWebService];
  *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_topekaWebService] = 0;

  v8 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_assessmentWebService];
  *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_assessmentWebService] = 0;

  v9 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_spWebService];
  *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_spWebService] = 0;

  v10 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__context];
  *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__context] = 0;

  v11 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__workflow];
  *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__workflow] = 0;

  v12 = OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__submittedPages;
  swift_beginAccess();
  v13 = *&v1[v12];
  *&v1[v12] = _swiftEmptyArrayStorage;

  v14 = sub_10003FC34(_swiftEmptyArrayStorage);
  v15 = OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__submittedAttributes;
  swift_beginAccess();
  v16 = *&v1[v15];
  *&v1[v15] = v14;

  *&v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v17 = OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__inoKey;
  swift_beginAccess();
  sub_1000B2764(&v31, &v1[v17], &qword_100849FA0, &qword_1006BFEA0);
  swift_endAccess();
  *&v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v18 = OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__spKey;
  swift_beginAccess();
  sub_1000B2764(&v31, &v1[v18], &qword_100849FA0, &qword_1006BFEA0);
  swift_endAccess();
  v19 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__storedClaim];
  *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__storedClaim] = 0;

  v20 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__locationHelper];
  *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__locationHelper] = 0;

  v21 = &v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__collectedAccountAssessmentDeviceData];
  v22 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__collectedAccountAssessmentDeviceData + 16];
  v31 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__collectedAccountAssessmentDeviceData];
  v32 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__collectedAccountAssessmentDeviceData + 48];
  v33 = *&v1[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__collectedAccountAssessmentDeviceData + 32];
  v34 = v23;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 6) = 0;
  *(v21 + 7) = 1;
  sub_10000BE18(&v31, &qword_100849F68, &qword_1006E9DA0);
  defaultLogger()();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Destroying IDVSessionProxy", v26, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v27 = type metadata accessor for IDVSessionProxy(0);
  v30.receiver = v1;
  v30.super_class = v27;
  return objc_msgSendSuper2(&v30, "dealloc");
}

uint64_t sub_10061F894()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 63));
  os_unfair_lock_unlock(v1 + 54);
  sub_100020260((v0 + 63), (v0 + 88));
  sub_100031918((v0 + 63));
  v2 = *sub_10000BA08(v0 + 88, v0[91]);
  v3 = swift_task_alloc();
  v0[93] = v3;
  *v3 = v0;
  v3[1] = sub_10061F9C8;

  return sub_10050886C((v0 + 2));
}

uint64_t sub_10061F9C8()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v6 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v4 = sub_100672A48;
  }

  else
  {
    sub_1000F2758(v2 + 16);
    v4 = sub_100672A28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10061FB00()
{
  if (qword_100832D40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_100882578;
  v2 = unk_100882580;
  v0[5] = qword_100882578;
  v0[6] = v2;

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100595998;

  return sub_1006862E4(v1, v2);
}

uint64_t sub_10061FC90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v83 = a1;
  *(&v83 + 1) = a2;
  v4 = type metadata accessor for DIPBackoffStrategy();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  __chkstk_darwin(v4);
  v76 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPRetrier();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  __chkstk_darwin(v7);
  v79 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  __chkstk_darwin(v10);
  v73 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPSignpost.Config();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for DIPSignpost();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v85 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v70 = *(v19 - 8);
  v20 = *(v70 + 64);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DIPError.Code();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v3;
  v29 = *(v3 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_topekaWebService);
  if (!v29)
  {
    (*(v24 + 104))(v28, enum case for DIPError.Code.unexpectedDaemonState(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v64 = 0x80000001007281C0;
    v65 = 471;
    v63 = 0xD000000000000024;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v71 = v26;
  v72 = v28;
  v68 = v16;
  v69 = v15;
  v30 = qword_100832CA8;
  v31 = v29;
  v82 = v31;
  if (v30 != -1)
  {
    v31 = swift_once();
  }

  v32 = qword_1008823D8;
  *&v99 = _swiftEmptyArrayStorage;
  v33 = *(qword_1008823D8 + 16);
  __chkstk_darwin(v31);
  v65 = v32;
  v66 = &v99;
  v34 = v114;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v34)
  {

    (*(v24 + 104))(v72, enum case for DIPError.Code.internalError(_:), v71);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v64 = 0x80000001007281C0;
    v65 = 482;
    v63 = 0xD000000000000024;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v114 = 0;
  v36 = v99;
  v113 = v99;

  v112 = sub_10055DF9C(v83, *(&v83 + 1));
  v67 = v36;
  if (*(v36 + 16) != *(v112 + 16))
  {
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "We have more claims than just claims for the current requested providerId", v39, 2u);
    }

    (*(v70 + 8))(v22, v19);
  }

  static DaemonSignposts.configureFetchWorkflow.getter();
  DIPSignpost.init(_:)();
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  LODWORD(v70) = MKBGetDeviceLockState() - 1 < 2;
  v111 = v70;
  v40 = OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__context;
  v41 = *(v84 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__context);
  if (!v41)
  {
    v46 = 0;
    v44 = 0;
LABEL_21:
    v50 = 0;
    v52 = 0;
    goto LABEL_22;
  }

  v42 = [v41 tier];
  if (v42)
  {
    v43 = v42;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = *(v84 + v40);
  if (!v47)
  {
    goto LABEL_21;
  }

  v48 = [v47 regionCode];
  if (!v48)
  {
    goto LABEL_21;
  }

  v49 = v48;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

LABEL_22:
  v53 = v73;
  UUID.init()();
  v54 = UUID.uuidString.getter();
  v56 = v55;
  (*(v74 + 8))(v53, v75);
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  *&v100 = v54;
  *(&v100 + 1) = v56;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v57 = v83;
  v104 = v83;
  v105 = 0uLL;
  *&v106 = v44;
  *(&v106 + 1) = v46;
  *&v107 = v67;
  *(&v107 + 1) = 8;
  *&v108 = v50;
  *(&v108 + 1) = v52;
  *&v109 = &off_1007F8AB0;
  BYTE8(v109) = v70;
  HIDWORD(v109) = *&v98[3];
  *(&v109 + 9) = *v98;
  v110 = 0;
  (*(v77 + 104))(v76, enum case for DIPBackoffStrategy.noBackoff(_:), v78);

  v58 = v79;
  v59 = DIPRetrier.init(maxRetries:backoffStrategy:)();
  __chkstk_darwin(v59);
  v60 = v82;
  *(&v67 - 10) = v82;
  *(&v67 - 9) = &v99;
  v61 = v85;
  *(&v67 - 8) = v84;
  *(&v67 - 7) = v61;
  *(&v67 - 6) = &v112;
  *(&v67 - 5) = v57;
  v63 = *(&v57 + 1);
  v64 = &v113;
  v65 = &v111;
  v62 = v114;
  DIPRetrier.sync(_:)();
  if (v62)
  {
    v114 = &v67;
    (*(v24 + 104))(v72, enum case for DIPError.Code.internalError(_:), v71);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v64 = 0x80000001007281C0;
    v65 = 616;
    v63 = 0xD000000000000024;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v80 + 8))(v58, v81);
    v94 = v107;
    v95 = v108;
    v96 = v109;
    v97 = v110;
    v90 = v103;
    v91 = v104;
    v92 = v105;
    v93 = v106;
    v86 = v99;
    v87 = v100;
    v88 = v101;
    v89 = v102;
    sub_1000B2068(&v86);
    (*(v68 + 8))(v85, v69);
  }

  else
  {
    (*(v80 + 8))(v58, v81);

    v94 = v107;
    v95 = v108;
    v96 = v109;
    v97 = v110;
    v90 = v103;
    v91 = v104;
    v92 = v105;
    v93 = v106;
    v86 = v99;
    v87 = v100;
    v88 = v101;
    v89 = v102;
    sub_1000B2068(&v86);
    (*(v68 + 8))(v61, v69);
  }
}

void sub_10062084C(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v242 = a8;
  v249 = a7;
  v252 = a5;
  v253 = a6;
  v263 = a9;
  v13 = type metadata accessor for UUID();
  v237 = *(v13 - 8);
  v238 = v13;
  v14 = v237[8];
  __chkstk_darwin(v13);
  v236 = (v223 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v258 = v223 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v251 = v223 - v20;
  v21 = type metadata accessor for DIPError.Code();
  v260 = *(v21 - 8);
  v261 = v21;
  v22 = *(v260 + 64);
  v23 = __chkstk_darwin(v21);
  v243 = v223 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v240 = v223 - v25;
  v26 = type metadata accessor for DIPError();
  v247 = *(v26 - 8);
  v248 = v26;
  v27 = *(v247 + 64);
  v28 = __chkstk_darwin(v26);
  v244 = v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v234 = v223 - v30;
  v31 = type metadata accessor for DIPSignpost.Config();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v254 = v223 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DIPSignpost();
  v255 = *(v34 - 8);
  v256 = v34;
  v35 = *(v255 + 64);
  __chkstk_darwin(v34);
  v257 = v223 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for HardwareAttestationType();
  v229 = *(v37 - 8);
  v230 = v37;
  v38 = *(v229 + 64);
  v39 = __chkstk_darwin(v37);
  v225 = v223 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v228 = v223 - v41;
  v42 = type metadata accessor for KeystoreKeyType();
  v43 = *(v42 - 8);
  v232 = v42;
  v233 = v43;
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v226 = v223 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v231 = v223 - v47;
  v267 = type metadata accessor for Logger();
  v48 = *(v267 - 8);
  v49 = *(v48 + 64);
  v50 = __chkstk_darwin(v267);
  v239 = v223 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v241 = (v223 - v53);
  v54 = __chkstk_darwin(v52);
  v56 = v223 - v55;
  v57 = __chkstk_darwin(v54);
  v224 = v223 - v58;
  v59 = __chkstk_darwin(v57);
  v227 = v223 - v60;
  v61 = __chkstk_darwin(v59);
  v250 = v223 - v62;
  __chkstk_darwin(v61);
  v64 = v223 - v63;
  defaultLogger()();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 134349056;
    *(v67 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v65, v66, "Attempting workflow try # %{public}ld", v67, 0xCu);
  }

  v259 = v56;

  v265 = *(v48 + 8);
  v266 = v48 + 8;
  v265(v64, v267);
  v68 = &a4[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__externalGSToken];
  v69 = *&a4[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__externalGSToken];
  v70 = *&a4[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__externalGSToken + 8];
  v71 = *&a2[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
  v72 = *(a3 + 8);
  *a3 = *&a2[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *(a3 + 8) = v71;

  sub_1005D8250(v69, v70, &v274);
  v264 = v274;
  v262 = v276;
  v73 = v275;
  v74 = v277;

  v75 = *(a3 + 32);
  v76 = *(a3 + 40);
  v77 = *(a3 + 48);
  v78 = *(a3 + 56);
  v79 = *(a3 + 64);
  v80 = *(a3 + 72);
  *(a3 + 32) = v264;
  *(a3 + 48) = v73;
  *(a3 + 56) = v262;
  *(a3 + 72) = v74;
  sub_1000AB97C(v75, v76);
  *&v264 = *&a4[OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__commonDispatchGroup];
  dispatch_group_enter(v264);
  v81 = *(a3 + 144);
  v82 = *(a3 + 160);
  v83 = *(a3 + 112);
  v278[8] = *(a3 + 128);
  v278[9] = v81;
  v278[10] = v82;
  v84 = *(a3 + 80);
  v85 = *(a3 + 96);
  v86 = *(a3 + 48);
  v278[4] = *(a3 + 64);
  v278[5] = v84;
  v279 = *(a3 + 176);
  v278[6] = v85;
  v278[7] = v83;
  v87 = *(a3 + 16);
  v278[0] = *a3;
  v278[1] = v87;
  v278[2] = *(a3 + 32);
  v278[3] = v86;
  v88 = swift_allocObject();
  v89 = *(a3 + 112);
  *(v88 + 152) = *(a3 + 128);
  v90 = *(a3 + 160);
  *(v88 + 168) = *(a3 + 144);
  *(v88 + 184) = v90;
  v91 = *(a3 + 48);
  *(v88 + 88) = *(a3 + 64);
  v92 = *(a3 + 96);
  *(v88 + 104) = *(a3 + 80);
  *(v88 + 120) = v92;
  *(v88 + 136) = v89;
  v93 = *(a3 + 16);
  *(v88 + 24) = *a3;
  *(v88 + 40) = v93;
  v235 = (a3 + 32);
  *(v88 + 56) = *(a3 + 32);
  *(v88 + 16) = a2;
  v94 = *(a3 + 176);
  *(v88 + 72) = v91;
  *(v88 + 200) = v94;
  *(v88 + 208) = a4;
  sub_1000B2030(v278, v271);
  type metadata accessor for LegacySynthesizedWorkflows();
  v95 = a2;
  *&v262 = a4;
  v245 = 0x80000001007281C0;
  v246 = "error deleting stored claim";
  v96 = 0;
  runAsyncAndBlock<A>(timeout:file:function:line:_:)();
  v258 = v68;

  v97 = v269[0];
  v98 = *(v269[0] + 8632);
  v99 = v257;
  v100 = v262;
  if (!v98 || *(v98 + 16) != 8)
  {
    v101 = v250;
    defaultLogger()();

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = v104;
      *v104 = 134349312;
      v106 = v97[1079];
      if (v106)
      {
        v106 = *(v106 + 16);
      }

      *(v104 + 4) = v106;

      *(v105 + 12) = 2050;
      *(v105 + 14) = 8;
      _os_log_impl(&_mh_execute_header, v102, v103, "assessmentGUIDs count (%{public}ld) doesn't match the request number (%{public}ld)", v105, 0x16u);
    }

    else
    {
    }

    v265(v101, v267);
  }

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  if (!*(*v253 + 16))
  {
    v107 = [objc_opt_self() standardUserDefaults];
    v108._countAndFlagsBits = static DaemonInternalDefaultsKeys.performVerificationSkipKeyCleanUp.getter();
    v109 = NSUserDefaults.internalBool(forKey:)(v108);

    if (!v109)
    {
      v110 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_accountManager + 32);
      sub_10000BA08((v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_accountManager), *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_accountManager + 24));
      v111 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
      v252 = 0;
      v113 = v112;
      v253 = v111;
      sub_1000CB970();
      v114 = v252;
      sub_10065243C(v271);
      v252 = v114;
      if (v114)
      {

LABEL_22:
        v253 = 0;
        v136 = v239;
        defaultLogger()();
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          *v139 = 0;
          _os_log_impl(&_mh_execute_header, v137, v138, "ignoring Error deleting lingering keys when there are no claims", v139, 2u);
        }

        v140 = v267;
        v141 = v265;
        v265(v136, v267);
        (*(v260 + 104))(v243, enum case for DIPError.Code.deleteKeyWithoutClaimFailure(_:), v261);
        sub_1000402AC(_swiftEmptyArrayStorage);
        v142 = v244;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
        v143 = v248;
        swift_allocError();
        v144 = v247;
        (*(v247 + 16))(v145, v142, v143);
        v146 = v259;
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        v141(v146, v140);
        (*(v144 + 8))(v142, v143);

        v100 = v262;
        v96 = v253;
        v99 = v257;
        goto LABEL_25;
      }

      v115 = v113;
      v250 = v273;
      v241 = sub_10000BA08(v271, v272);
      v116 = v97[2];
      v117 = *(v116 + 64);
      v118 = *(v116 + 72);
      v119 = v232;
      v120 = v233 + 104;
      v121 = *(v233 + 104);
      v122 = v231;
      LODWORD(v238) = enum case for KeystoreKeyType.standard(_:);
      v121(v231);

      v123 = v122;
      v251 = v115;
      v124 = v252;
      v125 = dispatch thunk of DIPKeystoreProtocol.identityKeyLabel(for:userInfo:type:)();
      v252 = v124;
      if (v124)
      {
        (*(v233 + 8))(v123, v119);

LABEL_20:

LABEL_21:
        sub_10000BB78(v271);
        goto LABEL_22;
      }

      v223[0] = v121;
      v223[1] = v120;
      v127 = *(v233 + 8);
      v128 = v125;
      v129 = v126;
      v233 += 8;
      v235 = v127;
      v127(v123, v119);

      v241 = v273;
      v237 = sub_10000BA08(v271, v272);
      v130 = v228;
      v131 = v229;
      v133 = (v229 + 104);
      v132 = *(v229 + 104);
      LODWORD(v231) = enum case for HardwareAttestationType.IDV(_:);
      v134 = v230;
      v132(v228);
      v236 = v128;
      v250 = v129;
      v135 = v252;
      dispatch thunk of DIPKeystoreProtocol.retrieveIdentityKey(label:constraints:attestationType:)();
      v252 = v135;
      if (v135)
      {
        (*(v131 + 8))(v130, v134);
        goto LABEL_19;
      }

      v237 = v132;
      v241 = v133;
      v206 = *(v131 + 8);
      v206(v130, v134);
      if (v270)
      {
        sub_10000BE18(v269, &qword_100849FA0, &qword_1006BFEA0);
        v207 = v227;
        defaultLogger()();
        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          *v210 = 0;
          _os_log_impl(&_mh_execute_header, v208, v209, "detected INO key without any claims. proceeding to delete INO key", v210, 2u);
        }

        v265(v207, v267);
        sub_10000BA08(v271, v272);
        v211 = v252;
        dispatch thunk of DIPKeystoreProtocol.deleteIdentityKey(label:constraints:)();
        v252 = v211;
        if (v211)
        {
          goto LABEL_19;
        }

        v236 = v206;
      }

      else
      {
        v236 = v206;

        sub_10000BE18(v269, &qword_100849FA0, &qword_1006BFEA0);
      }

      sub_1000CBB78();
      v212 = v252;
      sub_10065243C(v269);
      v252 = v212;
      if (v212)
      {
LABEL_19:

        goto LABEL_20;
      }

      sub_10000BA08(v269, v270);
      v213 = v226;
      v214 = v232;
      (v223[0])(v226, v238, v232);
      v215 = v252;
      v216 = dispatch thunk of DIPKeystoreProtocol.identityKeyLabel(for:userInfo:type:)();
      v252 = v215;
      if (v215)
      {
        v235(v213, v214);

        sub_10000BB78(v269);
        goto LABEL_21;
      }

      v217 = v216;
      v235(v213, v214);

      sub_10000BA08(v269, v270);
      v218 = v225;
      v219 = v230;
      (v237)(v225, v231, v230);
      v253 = v217;
      v96 = v252;
      dispatch thunk of DIPKeystoreProtocol.retrieveIdentityKey(label:constraints:attestationType:)();
      if (v96)
      {
        v236(v218, v219);

        sub_10000BB78(v269);
        sub_10000BB78(v271);
        v252 = v96;
        goto LABEL_22;
      }

      v236(v218, v219);
      if (v268[3])
      {
        sub_10000BE18(v268, &qword_100849FA0, &qword_1006BFEA0);
        defaultLogger()();
        v220 = Logger.logObject.getter();
        v221 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v220, v221))
        {
          v222 = swift_slowAlloc();
          *v222 = 0;
          _os_log_impl(&_mh_execute_header, v220, v221, "detected SP key without any claims. proceeding to delete SP key", v222, 2u);
        }

        v265(v224, v267);
        sub_10000BA08(v269, v270);
        dispatch thunk of DIPKeystoreProtocol.deleteIdentityKey(label:constraints:)();
      }

      else
      {

        sub_10000BE18(v268, &qword_100849FA0, &qword_1006BFEA0);
      }

      sub_10000BB78(v269);
      sub_10000BB78(v271);
      v99 = v257;
      v100 = v262;
    }
  }

LABEL_25:
  static DaemonSignposts.configureLoadClaimsAndPrefill.getter();
  DIPSignpost.init(_:)();
  sub_1006395B4(v97);
  if (!v96)
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v150 = sub_100655180(v97);
    v151 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_spWebService);
    *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_spWebService) = v150;

    if (sub_1000CBE90())
    {
      v152 = v97[3];
      if (v152 && (v153 = *(v152 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userAuthorizationBundleName + 8)) != 0)
      {
        v154 = *(v152 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userAuthorizationBundleName);
        objc_allocWithZone(type metadata accessor for DIPLocationHelper());

        v155 = sub_100598D70(v154, v153, 0);
        v156 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__locationHelper);
        *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__locationHelper) = v155;
      }

      else
      {
        v157 = v259;
        (*(v260 + 104))(v240, enum case for DIPError.Code.missingLocationAuthorization(_:), v261);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v158 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
        v159 = *(*(v158 - 8) + 72);
        v160 = (*(*(v158 - 8) + 80) + 32) & ~*(*(v158 - 8) + 80);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_1006BF520;
        v162 = v161 + v160;
        v163 = enum case for DIPError.PropertyKey.spWorkflowID(_:);
        v164 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v164 - 8) + 104))(v162, v163, v164);
        if (v152)
        {
          v166 = *(v152 + 16);
          v165 = *(v152 + 24);
        }

        else
        {
          v167 = 0xEB00000000454C42;
          v166 = 0x414C494156414E55;
        }

        v168 = (v162 + *(v158 + 48));
        v168[3] = &type metadata for String;
        v168[4] = &protocol witness table for String;
        *v168 = v166;
        v168[1] = v167;
        sub_10003C9C0(v161);
        swift_setDeallocating();
        sub_10000BE18(v162, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        v169 = v234;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        sub_10065C868(&qword_100834130, &type metadata accessor for DIPError);
        v170 = v248;
        swift_allocError();
        v171 = v247;
        (*(v247 + 16))(v172, v169, v170);
        defaultLogger()();
        DIPRecordError(_:message:log:)();
        v265(v157, v267);
        (*(v171 + 8))(v169, v170);
      }
    }

    v173 = [objc_opt_self() standardUserDefaults];
    v174._countAndFlagsBits = static DaemonInternalDefaultsKeys.useExternalGSToken.getter();
    v175 = NSUserDefaults.internalBool(forKey:)(v174);

    if (!v175)
    {
      v189 = v97[3];
      if (!v189 || (v190 = *(v189 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_useExternalGSToken), v190 == 2) || (v190 & 1) == 0)
      {
        v191 = v258;
        v192 = *(v258 + 1);
        *v258 = 0;
        *(v191 + 1) = 0;
LABEL_49:

        v194 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__workflow);
        *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__workflow) = v97;
        swift_retain_n();

        v195 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_conversation);
        v196 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy_conversation + 8);
        v197 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__applicationIdentifier);
        v198 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__applicationIdentifier + 8);

        v199 = sub_1005AF7BC(v195, v196, v197, v198);

        v200 = sub_10054B4F4(v97, v199);

        v201 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__profileManager);
        *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__profileManager) = v200;

        *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__state) = 2;
        sub_100624DD4();
        v202._countAndFlagsBits = 0xD000000000000016;
        v203._countAndFlagsBits = 0x3837323838646361;
        v202._object = 0x8000000100728250;
        v203._object = 0xE800000000000000;
        logMilestone(tag:description:)(v203, v202);

        (*(v255 + 8))(v99, v256);
        v204 = enum case for DIPRetryResult.stop(_:);
        v205 = type metadata accessor for DIPRetryResult();
        (*(*(v205 - 8) + 104))(v263, v204, v205);
        goto LABEL_50;
      }
    }

    v176 = *(v100 + OBJC_IVAR____TtC8coreidvd15IDVSessionProxy__context);
    v177 = v258;
    if (v176)
    {
      v178 = [v176 httpHeaders];
      if (v178)
      {
        v179 = v178;
        v180 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v180 + 16))
        {
          v183 = sub_10003ADCC(v181, v182);
          v185 = v184;

          if (v185)
          {
            v186 = (*(v180 + 56) + 16 * v183);
            v188 = *v186;
            v187 = v186[1];

LABEL_48:
            v193 = *(v177 + 1);
            *v177 = v188;
            *(v177 + 1) = v187;
            goto LABEL_49;
          }
        }

        else
        {
        }
      }
    }

    v188 = 0;
    v187 = 0;
    goto LABEL_48;
  }

  (*(v255 + 8))(v99, v256);

  v147 = v263;
  *v263 = v96;
  v148 = enum case for DIPRetryResult.stopWithError(_:);
  v149 = type metadata accessor for DIPRetryResult();
  (*(*(v149 - 8) + 104))(v147, v148, v149);
LABEL_50:
  dispatch_group_leave(v264);
}
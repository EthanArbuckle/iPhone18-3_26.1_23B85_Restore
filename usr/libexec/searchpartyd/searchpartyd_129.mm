uint64_t sub_100D84104(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v12 = *v1;
  *(v3 + 440) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 448) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AccessoryConnectionService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AD620, type metadata accessor for AccessoryConnectionService);
  *v6 = v12;
  v6[1] = sub_100D842E0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D842E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  v4[57] = a1;

  v7 = v4[55];
  if (v1)
  {
    a1 = v4[14];

    v8 = sub_100D86284;
  }

  else
  {

    v8 = sub_100D84438;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_100D84438()
{
  v1 = v0[57];
  v2 = v0[14];
  sub_1008D29AC(v0[50]);

  return _swift_task_switch(sub_100D844A8, v2, 0);
}

uint64_t sub_100D844A8()
{
  v1 = v0[53];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  v5 = v0[14];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v7 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  v0[58] = v6;
  v0[59] = v7;
  v0[60] = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_peripheralStreamProvider;
  swift_beginAccess();
  v8 = v0[58];
  v9 = v0[14];
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[61] = v11;
  *v11 = v0;
  v11[1] = sub_100D845F0;
  v12 = v0[53];
  v13 = v0[51];
  v14 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v14, v9, v8, v13);
}

uint64_t sub_100D845F0()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100D84700, v2, 0);
}

uint64_t sub_100D84700()
{
  v268 = v0;
  v1 = v0[47];
  v2 = sub_1000BC4D4(&qword_1016BB910, &qword_1013E8B10);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[52] + 8))(v0[53], v0[51]);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016BB490);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[57];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "accessoryConnectionService.stream() terminated", v8, 2u);
    }

    v9 = v0[53];
    v10 = v0[50];
    v12 = v0[46];
    v11 = v0[47];
    v14 = v0[44];
    v13 = v0[45];
    v15 = v0[43];
    v17 = v0[40];
    v16 = v0[41];
    v18 = v0[39];
    v229 = v0[38];
    v230 = v0[37];
    v231 = v0[36];
    v232 = v0[35];
    v233 = v0[34];
    v234 = v0[33];
    v235 = v0[32];
    v236 = v0[31];
    v237 = v0[30];
    v238 = v0[29];
    log = v0[26];
    v241 = v0[25];
    v245 = v0[24];
    v248 = v0[23];
    v252 = v0[22];
    v256 = v0[20];
    v261 = v0[19];
    v262 = v0[16];

    v19 = v0[1];

    return v19();
  }

  v22 = v0[45];
  v21 = v0[46];
  v23 = v0[42];
  v0[62] = *v1;
  sub_100DD921C(v1 + *(v2 + 48), v21, type metadata accessor for AccessoryConnectionService.Event);
  sub_100DD9284(v21, v22, type metadata accessor for AccessoryConnectionService.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v40 = v0[45];
    v41 = v0[41];
    v42 = v0[27];
    v43 = v0[28];
    v44 = v0[26];
    v45 = sub_1000BC4D4(&qword_1016AD680, &qword_1013C4040);
    v46 = *(v40 + v45[12]);
    v47 = v45[16];
    v48 = *(v40 + v45[20]);
    (*(v43 + 32))(v41, v40, v42);
    sub_1000D2AD8(v40 + v47, v44, &qword_1016A40D0, &unk_10138BE70);
    if (((1 << v46) & 0x6BF) == 0)
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v146 = v0[46];
      v147 = v0[44];
      v148 = type metadata accessor for Logger();
      sub_1000076D4(v148, qword_1016BB490);
      sub_100DD9284(v146, v147, type metadata accessor for AccessoryConnectionService.Event);
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.default.getter();
      v151 = os_log_type_enabled(v149, v150);
      v152 = v0[44];
      if (v151)
      {
        v154 = v0[42];
        v153 = v0[43];
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v267 = v156;
        *v155 = 136315138;
        sub_100DD9284(v152, v153, type metadata accessor for AccessoryConnectionService.Event);
        v157 = String.init<A>(describing:)();
        v159 = v158;
        sub_100DD92EC(v152, type metadata accessor for AccessoryConnectionService.Event);
        v160 = sub_1000136BC(v157, v159, &v267);

        *(v155 + 4) = v160;
        _os_log_impl(&_mh_execute_header, v149, v150, "raw accessoryConnectionService event: %s", v155, 0xCu);
        sub_100007BAC(v156);
      }

      else
      {

        sub_100DD92EC(v152, type metadata accessor for AccessoryConnectionService.Event);
      }

      v219 = swift_task_alloc();
      v0[63] = v219;
      *v219 = v0;
      v219[1] = sub_100D85E1C;
      v96 = v0[26];
      v220 = v0[14];
      v98 = v0[41];
      v99 = v48;
      goto LABEL_69;
    }

    v49 = v0[46];
    v50 = v0[41];
    v52 = v0[27];
    v51 = v0[28];
    v53 = v0[26];

    sub_10000B3A8(v53, &qword_1016A40D0, &unk_10138BE70);
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v54 = v0[59];
    v55 = v0[23];
    v56 = v0[21];
    v57 = v0[14];
    v58 = *(v0[28] + 32);
    v58(v0[33], v0[45], v0[27]);
    sub_100DD9284(v57 + v54, v55, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
    v59 = swift_getEnumCaseMultiPayload();
    if (v59 <= 1)
    {
      if (!v59)
      {
        v60 = v0[46];
        v62 = v0[32];
        v61 = v0[33];
        v63 = v0[27];
        v64 = v0[28];
        v58(v62, v0[23], v63);
        v65 = static UUID.== infix(_:_:)();

        v66 = *(v64 + 8);
        v66(v62, v63);
        v66(v61, v63);
        sub_100DD92EC(v60, type metadata accessor for AccessoryConnectionService.Event);
        if (v65)
        {
          v67 = v0[59];
          v68 = v0[21];
          v69 = v0[22];
          v70 = v0[14];
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100DD6A88(v69, v70 + v67);
          swift_endAccess();
        }

        goto LABEL_44;
      }

      v264 = v0[33];
      v100 = v0[31];
      v101 = v0[27];
      v102 = v0[23];
      v103 = v0[20];
      v104 = v0[17];
      v105 = v0[18];
      v106 = *(sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60) + 48);
      v58(v100, v102, v101);
      (*(v105 + 32))(v103, v102 + v106, v104);
      if (static UUID.== infix(_:_:)())
      {
        v107 = v0[59];
        v108 = v0[21];
        v109 = v0[22];
        v110 = v0[14];
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100DD6A88(v109, v110 + v107);
        swift_endAccess();
        if (qword_101694EA0 != -1)
        {
          swift_once();
        }

        v111 = v0[33];
        v112 = v0[30];
        v114 = v0[27];
        v113 = v0[28];
        v116 = v0[19];
        v115 = v0[20];
        v117 = v0[17];
        v118 = v0[18];
        v119 = type metadata accessor for Logger();
        sub_1000076D4(v119, qword_1016BB490);
        (*(v113 + 16))(v112, v111, v114);
        v258 = *(v118 + 16);
        v258(v116, v115, v117);
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.default.getter();
        v122 = os_log_type_enabled(v120, v121);
        v123 = v0[30];
        v125 = v0[27];
        v124 = v0[28];
        v126 = v0[18];
        v127 = v0[19];
        v128 = v0[17];
        if (v122)
        {
          v242 = v121;
          v129 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          *v129 = 136315394;
          sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
          v130 = dispatch thunk of CustomStringConvertible.description.getter();
          loga = v120;
          v132 = v131;
          v253 = *(v124 + 8);
          v253(v123, v125);
          v133 = sub_1000136BC(v130, v132, &v267);

          *(v129 + 4) = v133;
          *(v129 + 12) = 2080;
          sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
          v134 = dispatch thunk of CustomStringConvertible.description.getter();
          v136 = v135;
          v249 = *(v126 + 8);
          v249(v127, v128);
          v137 = sub_1000136BC(v134, v136, &v267);

          *(v129 + 14) = v137;
          _os_log_impl(&_mh_execute_header, loga, v242, "Pencil detached: uuid: %s %s", v129, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v249 = *(v126 + 8);
          v249(v127, v128);
          v253 = *(v124 + 8);
          v253(v123, v125);
        }

        v244 = v0[33];
        v247 = v0[46];
        v222 = v0[31];
        v223 = v0[27];
        v224 = v0[20];
        v225 = v0[17];
        v226 = v0[16];
        v227 = v0[28] + 8;
        v228 = *(v0[14] + v0[60]);
        v258(v226, v224, v225);
        type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10000B3A8(v226, &qword_10169A068, &qword_1013933F0);
        v249(v224, v225);
        v253(v222, v223);
        v253(v244, v223);
        v138 = v247;
        goto LABEL_43;
      }

      v49 = v0[46];
      v211 = v0[33];
      v213 = v0[31];
      v214 = v0[27];
      v212 = v0[28];
      v215 = v0[20];
      v216 = v0[17];
      v217 = v0[18];

      (*(v217 + 8))(v215, v216);
LABEL_66:
      v218 = *(v212 + 8);
      v218(v213, v214);
      v218(v211, v214);
      goto LABEL_42;
    }

    if (v59 == 2)
    {
      v72 = v0[33];
      v58(v0[29], v0[23], v0[27]);
      if (static UUID.== infix(_:_:)())
      {
        v73 = v0[59];
        v74 = v0[21];
        v75 = v0[22];
        v76 = v0[14];
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100DD6A88(v75, v76 + v73);
        swift_endAccess();
        if (qword_101694EA0 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_1000076D4(v77, qword_1016BB490);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.default.getter();
        v80 = os_log_type_enabled(v78, v79);
        v49 = v0[46];
        v81 = v0[33];
        v82 = v0[28];
        v83 = v0[29];
        v84 = v0[27];
        if (v80)
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "Unsupported pencil detached.", v85, 2u);
        }

        v86 = *(v82 + 8);
        v86(v83, v84);
        v86(v81, v84);
        goto LABEL_42;
      }

      v49 = v0[46];
      v211 = v0[33];
      v212 = v0[28];
      v213 = v0[29];
      v214 = v0[27];

      goto LABEL_66;
    }

    v49 = v0[46];
    v50 = v0[33];
    v52 = v0[27];
    v51 = v0[28];

LABEL_41:
    (*(v51 + 8))(v50, v52);
LABEL_42:
    v138 = v49;
LABEL_43:
    sub_100DD92EC(v138, type metadata accessor for AccessoryConnectionService.Event);
    goto LABEL_44;
  }

  v25 = v0[59];
  v26 = v0[45];
  v27 = v0[40];
  v29 = v0[27];
  v28 = v0[28];
  v31 = v0[24];
  v30 = v0[25];
  v263 = v0[21];
  v32 = v0[14];
  v33 = sub_1000BC4D4(&unk_1016AD638, &qword_1013C3FD8);
  v34 = *(v33 + 48);
  v257 = *(v26 + *(v33 + 64));
  v35 = v29;
  v36 = *(v28 + 32);
  v36(v27, v26, v35);
  sub_1000D2AD8(v26 + v34, v30, &qword_1016A40D0, &unk_10138BE70);
  sub_100DD9284(v32 + v25, v31, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  v37 = swift_getEnumCaseMultiPayload();
  if (v37 > 1)
  {
    if (v37 != 2)
    {
LABEL_34:
      v95 = swift_task_alloc();
      v0[64] = v95;
      *v95 = v0;
      v95[1] = sub_100D86050;
      v96 = v0[25];
      v97 = v0[14];
      v98 = v0[40];
      v99 = v257;
LABEL_69:

      return sub_100D938F4(v98, v96, v99);
    }

    v71 = v0[40];
    v36(v0[35], v0[24], v0[27]);
    if (static UUID.== infix(_:_:)())
    {
      v39 = v0[35];
      goto LABEL_24;
    }

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v173 = v0[40];
    v174 = v0[34];
    v176 = v0[27];
    v175 = v0[28];
    v177 = type metadata accessor for Logger();
    sub_1000076D4(v177, qword_1016BB490);
    (*(v175 + 16))(v174, v173, v176);
    v166 = Logger.logObject.getter();
    v167 = static os_log_type_t.default.getter();
    v168 = os_log_type_enabled(v166, v167);
    v169 = v0[46];
    v170 = v0[40];
    v172 = v0[34];
    v171 = v0[35];
    goto LABEL_57;
  }

  if (!v37)
  {
    v38 = v0[40];
    v36(v0[39], v0[24], v0[27]);
    if (static UUID.== infix(_:_:)())
    {
      v39 = v0[39];
LABEL_24:
      (*(v0[28] + 8))(v39, v0[27]);
      goto LABEL_34;
    }

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v161 = v0[40];
    v162 = v0[38];
    v164 = v0[27];
    v163 = v0[28];
    v165 = type metadata accessor for Logger();
    sub_1000076D4(v165, qword_1016BB490);
    (*(v163 + 16))(v162, v161, v164);
    v166 = Logger.logObject.getter();
    v167 = static os_log_type_t.default.getter();
    v168 = os_log_type_enabled(v166, v167);
    v169 = v0[46];
    v171 = v0[39];
    v170 = v0[40];
    v172 = v0[38];
LABEL_57:
    v178 = v0[27];
    v179 = v0[28];
    v180 = v0[25];
    if (v168)
    {
      v265 = v169;
      v181 = swift_slowAlloc();
      v259 = v170;
      v182 = swift_slowAlloc();
      v267 = v182;
      *v181 = 136446210;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v250 = v171;
      v254 = v180;
      v183 = dispatch thunk of CustomStringConvertible.description.getter();
      v185 = v184;
      v186 = *(v179 + 8);
      v186(v172, v178);
      v187 = sub_1000136BC(v183, v185, &v267);

      *(v181 + 4) = v187;
      _os_log_impl(&_mh_execute_header, v166, v167, "Got .propertyInfoChanged event without an earlier .attach event for %{public}s", v181, 0xCu);
      sub_100007BAC(v182);

      v186(v250, v178);
      sub_10000B3A8(v254, &qword_1016A40D0, &unk_10138BE70);
      v186(v259, v178);
      v138 = v265;
    }

    else
    {

      v210 = *(v179 + 8);
      v210(v172, v178);
      v210(v171, v178);
      sub_10000B3A8(v180, &qword_1016A40D0, &unk_10138BE70);
      v210(v170, v178);
      v138 = v169;
    }

    goto LABEL_43;
  }

  v87 = v0[40];
  v88 = v36;
  v89 = v0[37];
  v90 = v0[27];
  v91 = v0[24];
  v92 = *(sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60) + 48);
  v88(v89, v91, v90);
  if (static UUID.== infix(_:_:)())
  {
    v93 = v0[17];
    v94 = v0[18];
    (*(v0[28] + 8))(v0[37], v0[27]);
    (*(v94 + 8))(v91 + v92, v93);
    goto LABEL_34;
  }

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v188 = v0[40];
  v189 = v0[36];
  v191 = v0[27];
  v190 = v0[28];
  v192 = type metadata accessor for Logger();
  sub_1000076D4(v192, qword_1016BB490);
  (*(v190 + 16))(v189, v188, v191);
  v193 = Logger.logObject.getter();
  v194 = static os_log_type_t.default.getter();
  v195 = os_log_type_enabled(v193, v194);
  v196 = v0[46];
  v197 = v0[40];
  v198 = v0[36];
  v260 = v0[37];
  v200 = v0[27];
  v199 = v0[28];
  v266 = v0[25];
  if (v195)
  {
    v251 = v0[46];
    v201 = swift_slowAlloc();
    v255 = v92;
    v243 = swift_slowAlloc();
    v267 = v243;
    *v201 = 136446210;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v246 = v197;
    v202 = dispatch thunk of CustomStringConvertible.description.getter();
    v203 = v194;
    v204 = v91;
    v206 = v205;
    v207 = *(v199 + 8);
    v207(v198, v200);
    v208 = sub_1000136BC(v202, v206, &v267);
    v91 = v204;

    *(v201 + 4) = v208;
    _os_log_impl(&_mh_execute_header, v193, v203, "Got .propertyInfoChanged event without an earlier .attach event for %{public}s", v201, 0xCu);
    sub_100007BAC(v243);
    v92 = v255;

    v207(v260, v200);
    sub_10000B3A8(v266, &qword_1016A40D0, &unk_10138BE70);
    v207(v246, v200);
    v209 = v251;
  }

  else
  {

    v221 = *(v199 + 8);
    v221(v198, v200);
    v221(v260, v200);
    sub_10000B3A8(v266, &qword_1016A40D0, &unk_10138BE70);
    v221(v197, v200);
    v209 = v196;
  }

  sub_100DD92EC(v209, type metadata accessor for AccessoryConnectionService.Event);
  (*(v0[18] + 8))(v91 + v92, v0[17]);
LABEL_44:
  v139 = v0[58];
  v140 = v0[14];
  v141 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v142 = swift_task_alloc();
  v0[61] = v142;
  *v142 = v0;
  v142[1] = sub_100D845F0;
  v143 = v0[53];
  v144 = v0[51];
  v145 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v145, v140, v139, v144);
}

uint64_t sub_100D85E1C()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100D85F2C, v2, 0);
}

uint64_t sub_100D85F2C()
{
  v1 = v0[62];
  v2 = v0[46];
  v3 = v0[41];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];

  sub_10000B3A8(v6, &qword_1016A40D0, &unk_10138BE70);
  (*(v5 + 8))(v3, v4);
  sub_100DD92EC(v2, type metadata accessor for AccessoryConnectionService.Event);
  v7 = v0[58];
  v8 = v0[14];
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[61] = v10;
  *v10 = v0;
  v10[1] = sub_100D845F0;
  v11 = v0[53];
  v12 = v0[51];
  v13 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v13, v8, v7, v12);
}

uint64_t sub_100D86050()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100D86160, v2, 0);
}

uint64_t sub_100D86160()
{
  v1 = v0[62];
  v2 = v0[46];
  v3 = v0[40];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[25];

  sub_10000B3A8(v6, &qword_1016A40D0, &unk_10138BE70);
  (*(v5 + 8))(v3, v4);
  sub_100DD92EC(v2, type metadata accessor for AccessoryConnectionService.Event);
  v7 = v0[58];
  v8 = v0[14];
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[61] = v10;
  *v10 = v0;
  v10[1] = sub_100D845F0;
  v11 = v0[53];
  v12 = v0[51];
  v13 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v13, v8, v7, v12);
}

uint64_t sub_100D86284()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing AccessoryConnectionService", v4, 2u);
  }

  v5 = v0[53];
  v6 = v0[50];
  v8 = v0[46];
  v7 = v0[47];
  v10 = v0[44];
  v9 = v0[45];
  v11 = v0[43];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[36];
  v20 = v0[35];
  v21 = v0[34];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[22];
  v32 = v0[20];
  v33 = v0[19];
  v34 = v0[16];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D864F4()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = *(*(type metadata accessor for CentralManager.ConnectedState() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(*(sub_1000BC4D4(&unk_1016C21B0, &unk_101395B20) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169BCE8, &unk_1013E8AA0);
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016C21C0, &unk_101395B30);
  v1[10] = v7;
  v8 = *(v7 - 8);
  v1[11] = v8;
  v9 = *(v8 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100D866B4, v0, 0);
}

uint64_t sub_100D866B4()
{
  v19 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v0[14] = *(v0[3] + 144);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v6 = type metadata accessor for CentralManager.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = xmmword_10138BBE0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, enum case for CentralManager.State.poweredOn(_:), v6);
  v12(v11 + v8, enum case for CentralManager.State.restricted(_:), v6);
  v13 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v14 = swift_task_alloc();
  v0[16] = v14;
  v15 = type metadata accessor for CentralManager();
  v0[17] = v15;
  v16 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v14 = v0;
  v14[1] = sub_100D869AC;

  return CentralManagerProtocol.await(states:)(v10, v15, v16);
}

uint64_t sub_100D869AC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_10026E4B8;
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 24);

    v5 = sub_100D86AD4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D86AD4()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  v3 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[19] = v6;
  *(v6 + 16) = xmmword_101385D80;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  sub_100D97688(&unk_1016C21D0, &type metadata accessor for CentralManager);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100D86C4C, v8, v7);
}

uint64_t sub_100D86C4C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[12];
  dispatch thunk of CentralManager.connectionEvents(serviceIdentifiers:)();
  v0[20] = v2;
  if (v2)
  {
    v5 = v0[3];
    v6 = sub_10026E644;
  }

  else
  {
    v7 = v0[19];
    v8 = v0[3];

    v6 = sub_100D86CF0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D86CF0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  AsyncStream.makeAsyncIterator()();
  v4 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v5 = v0[20];
  v0[21] = v4;
  v0[22] = v5;
  v6 = v0[3];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_100D86DEC;
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v10, v6, v4, v11);
}

uint64_t sub_100D86DEC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100D86EFC, v2, 0);
}

uint64_t sub_100D86EFC()
{
  v1 = v0[6];
  v2 = sub_1000BC4D4(&qword_10169BCF8, &unk_101395B40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[13];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "centralManager.connectionEvents() terminated", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_12;
  }

  v11 = v0[22];
  v12 = v0[5];
  v13 = *v1;
  v0[24] = *v1;
  sub_100DD921C(v1 + *(v2 + 48), v12, &type metadata accessor for CentralManager.ConnectedState);
  static Task<>.checkCancellation()();
  if (v11)
  {
    v15 = v0[11];
    v14 = v0[12];
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[7];
    v19 = v0[8];
    v20 = v0[5];

    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    sub_100DD92EC(v20, &type metadata accessor for CentralManager.ConnectedState);
    v21 = v0[13];
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v24, 0xCu);
      sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_12:
    v34 = v0[12];
    v35 = v0[9];
    v37 = v0[5];
    v36 = v0[6];

    v38 = v0[1];

    return v38();
  }

  v27 = v0[21];
  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[3];
  type metadata accessor for Transaction();
  v0[25] = static Transaction.$current.getter();
  v0[2] = v13;
  v31 = swift_task_alloc();
  v0[26] = v31;
  v31[2] = v28;
  v31[3] = v30;
  v31[4] = v29;
  v32 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v33 = swift_task_alloc();
  v0[27] = v33;
  *v33 = v0;
  v33[1] = sub_100D87348;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100D87348()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v13 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v5 = v2[25];
    v4 = v2[26];
    v6 = v2[24];
    v7 = v2[3];

    v8 = sub_100D87584;
  }

  else
  {
    v10 = v2[25];
    v9 = v2[26];
    v11 = v2[24];
    v7 = v2[3];

    v8 = sub_100D874A4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D874A4()
{
  v1 = v0[24];

  v2 = v0[28];
  sub_100DD92EC(v0[5], &type metadata accessor for CentralManager.ConnectedState);
  v0[22] = v2;
  v3 = v0[21];
  v4 = v0[3];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_100D86DEC;
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v8, v4, v3, v9);
}

uint64_t sub_100D87584()
{
  v1 = v0[28];
  v2 = v0[13];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  v7 = v0[24];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error processing monitorBluetoothConnections event: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v11 = v0[24];
  }

  sub_100DD92EC(v0[5], &type metadata accessor for CentralManager.ConnectedState);
  v0[22] = 0;
  v12 = v0[21];
  v13 = v0[3];
  v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_100D86DEC;
  v16 = v0[9];
  v17 = v0[6];
  v18 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v17, v13, v12, v18);
}

uint64_t sub_100D8776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for CentralManager.State();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = type metadata accessor for LocalFindableAccessoryRecord();
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[18] = v15;
  v16 = *(v15 - 8);
  v3[19] = v16;
  v17 = *(v16 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v18 = type metadata accessor for CentralManager.ConnectedState();
  v3[35] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = type metadata accessor for CentralManager();
  v20 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v21 = swift_task_alloc();
  v3[38] = v21;
  *v21 = v3;
  v21[1] = sub_100D87AF8;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100D87AF8(uint64_t a1)
{
  v3 = *(*v2 + 304);
  v4 = *v2;
  v4[39] = a1;

  if (v1)
  {
    v5 = v4[36];
    v7 = v4[33];
    v6 = v4[34];
    v8 = v4[31];
    v9 = v4[32];
    v10 = v4[29];
    v11 = v4[30];
    v13 = v4[27];
    v12 = v4[28];
    v18 = v4[26];
    v19 = v4[25];
    v20 = v4[24];
    v21 = v4[23];
    v22 = v4[22];
    v23 = v4[21];
    v24 = v4[20];
    v25 = v4[17];
    v26 = v4[16];
    v27 = v4[13];
    v28 = v4[12];
    v29 = v4[11];
    v30 = v4[10];
    v14 = v4[6];
    v31 = v4[7];

    v15 = v4[1];

    return v15();
  }

  else
  {
    v17 = v4[3];

    return _swift_task_switch(sub_100D87D74, v17, 0);
  }
}

uint64_t sub_100D87D74()
{
  v57 = v0;
  v1 = v0[35];
  v2 = v0[19];
  sub_100DD9284(v0[2], v0[36], &type metadata accessor for CentralManager.ConnectedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v2 + 32);
  v5 = v0[36];
  v6 = v0[18];
  if (EnumCaseMultiPayload == 1)
  {
    v4(v0[27], v5, v6);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v7 = v0[26];
    v8 = v0[27];
    v9 = v0[18];
    v10 = v0[19];
    v11 = type metadata accessor for Logger();
    v0[59] = sub_1000076D4(v11, qword_1016BB490);
    v12 = *(v10 + 16);
    v0[60] = v12;
    v0[61] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v7, v8, v9);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[26];
    v17 = v0[18];
    v18 = v0[19];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = v54;
      *v19 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v23 = *(v18 + 8);
      v23(v16, v17);
      v24 = sub_1000136BC(v20, v22, &v56);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Connected to %{public}s", v19, 0xCu);
      sub_100007BAC(v54);
    }

    else
    {

      v23 = *(v18 + 8);
      v23(v16, v17);
    }

    v0[62] = v23;
    (*(v0[5] + 104))(v0[6], enum case for CentralManager.State.poweredOn(_:), v0[4]);
    v43 = async function pointer to CentralManagerProtocol.await(state:)[1];
    v44 = swift_task_alloc();
    v0[63] = v44;
    v45 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
    *v44 = v0;
    v44[1] = sub_100D8A070;
    v46 = v0[39];
    v47 = v0[37];
    v48 = v0[6];

    return CentralManagerProtocol.await(state:)(v48, v47, v45);
  }

  else
  {
    v4(v0[34], v5, v6);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v25 = v0[33];
    v26 = v0[34];
    v27 = v0[18];
    v28 = v0[19];
    v29 = type metadata accessor for Logger();
    v0[40] = sub_1000076D4(v29, qword_1016BB490);
    v30 = *(v28 + 16);
    v0[41] = v30;
    v0[42] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v25, v26, v27);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[33];
    v35 = v0[18];
    v36 = v0[19];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v55;
      *v37 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = *(v36 + 8);
      v41(v34, v35);
      v42 = sub_1000136BC(v38, v40, &v56);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "Disconnected from %{public}s", v37, 0xCu);
      sub_100007BAC(v55);
    }

    else
    {

      v41 = *(v36 + 8);
      v41(v34, v35);
    }

    v0[43] = v41;
    v49 = v0[39];
    v50 = async function pointer to withTimeout<A>(_:block:)[1];

    v51 = swift_task_alloc();
    v0[44] = v51;
    *v51 = v0;
    v51[1] = sub_100D88340;
    v52 = v0[39];

    return withTimeout<A>(_:block:)(v51, 2000000000000000000, 0, &unk_1013E8AD0, v52, &type metadata for () + 8);
  }
}

uint64_t sub_100D88340()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_100D8C40C;
  }

  else
  {
    v6 = *(v2 + 312);
    v7 = *(v2 + 24);

    v5 = sub_100D88468;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D88468()
{
  v1 = v0[34];
  v2 = v0[18];
  v3 = v0[9];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[46] = v6;
  *(v6 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v7 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v11 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v8 = swift_task_alloc();
  v0[47] = v8;
  *v8 = v0;
  v8[1] = sub_100D88578;
  v9 = v0[39];

  return v11(v6);
}

uint64_t sub_100D88578(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v10 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100D8C664;
  }

  else
  {
    v7 = v3[46];
    v8 = v3[3];

    v6 = sub_100D886A0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D886A0()
{
  v60 = v0;
  v1 = v0[48];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v0[48];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v7 = v0[48];
    v9 = v0[41];
    v8 = v0[42];
    v10 = v0[40];
    v11 = v0[34];
    v12 = v0[32];
    v13 = v0[18];

    v9(v12, v11, v13);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[43];
    v18 = v0[39];
    v19 = v0[34];
    v20 = v0[32];
    v21 = v0[18];
    v22 = v0[19];
    if (v16)
    {
      v57 = v0[43];
      v23 = swift_slowAlloc();
      v54 = v19;
      v24 = swift_slowAlloc();
      v59 = v24;
      *v23 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v57(v20, v21);
      v28 = sub_1000136BC(v25, v27, &v59);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to retrieve a Peripheral for %{public}s", v23, 0xCu);
      sub_100007BAC(v24);

      v57(v54, v21);
    }

    else
    {

      v17(v20, v21);
      v17(v19, v21);
    }

    v29 = v0[36];
    v31 = v0[33];
    v30 = v0[34];
    v33 = v0[31];
    v32 = v0[32];
    v35 = v0[29];
    v34 = v0[30];
    v36 = v0[27];
    v37 = v0[28];
    v38 = v0[26];
    v42 = v0[25];
    v43 = v0[24];
    v44 = v0[23];
    v45 = v0[22];
    v46 = v0[21];
    v47 = v0[20];
    v48 = v0[17];
    v49 = v0[16];
    v50 = v0[13];
    v51 = v0[12];
    v52 = v0[11];
    v53 = v0[10];
    v55 = v0[7];
    v58 = v0[6];

    v39 = v0[1];

    return v39();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v40 = v0[48];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v41 = v0[48];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[48] + 32);
  }

  v0[50] = v3;

  v4 = *(&async function pointer to dispatch thunk of Peripheral.isPaired.getter + 1);
  v56 = (&async function pointer to dispatch thunk of Peripheral.isPaired.getter + async function pointer to dispatch thunk of Peripheral.isPaired.getter);
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_100D88AF4;

  return v56();
}

uint64_t sub_100D88AF4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(v4 + 416) = v1;

  v7 = *(v4 + 24);
  if (v1)
  {
    v8 = sub_100D8C8BC;
  }

  else
  {
    *(v4 + 672) = a1 & 1;
    v8 = sub_100D88C34;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D88C34()
{
  v26 = v0;
  if (*(v0 + 672))
  {
    v1 = swift_task_alloc();
    *(v0 + 456) = v1;
    *v1 = v0;
    v1[1] = sub_100D89858;
    v2 = *(v0 + 400);
    v3 = *(v0 + 24);

    return sub_100D94F40(v2);
  }

  else
  {
    v5 = *(v0 + 336);
    v6 = *(v0 + 320);
    (*(v0 + 328))(*(v0 + 248), *(v0 + 272), *(v0 + 144));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 344);
    v11 = *(v0 + 248);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    if (v9)
    {
      v24 = *(v0 + 344);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v24(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Checking if we have a matching record for %{public}s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {

      v10(v11, v12);
    }

    v20 = swift_task_alloc();
    *(v0 + 424) = v20;
    *v20 = v0;
    v20[1] = sub_100D88EE0;
    v21 = *(v0 + 272);
    v22 = *(v0 + 104);
    v23 = *(v0 + 24);

    return sub_100D8D800(v22, v21);
  }
}

uint64_t sub_100D88EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100D8CB14;
  }

  else
  {
    v6 = sub_100D8900C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D8900C()
{
  v65 = v0;
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v3 = v0[41];
    v2 = v0[42];
    v4 = v0[40];
    v5 = v0[34];
    v6 = v0[30];
    v7 = v0[18];
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v3(v6, v5, v7);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[50];
    v12 = v0[43];
    v13 = v0[39];
    v14 = v0[34];
    v15 = v0[30];
    v16 = v0[18];
    v17 = v0[19];
    if (v10)
    {
      v60 = v0[50];
      v62 = v0[34];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v64 = v19;
      *v18 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v9;
      v22 = v21;
      v12(v15, v16);
      v23 = sub_1000136BC(v20, v22, &v64);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v8, v57, "No LocalFindableRecord for %{public}s", v18, 0xCu);
      sub_100007BAC(v19);

      v12(v62, v16);
    }

    else
    {
      v35 = v0[50];

      v12(v15, v16);
      v12(v14, v16);
    }

    v36 = v0[36];
    v38 = v0[33];
    v37 = v0[34];
    v40 = v0[31];
    v39 = v0[32];
    v42 = v0[29];
    v41 = v0[30];
    v43 = v0[27];
    v44 = v0[28];
    v45 = v0[26];
    v47 = v0[25];
    v48 = v0[24];
    v49 = v0[23];
    v50 = v0[22];
    v51 = v0[21];
    v52 = v0[20];
    v53 = v0[17];
    v54 = v0[16];
    v55 = v0[13];
    v56 = v0[12];
    v58 = v0[11];
    v59 = v0[10];
    v61 = v0[7];
    v63 = v0[6];

    v46 = v0[1];

    return v46();
  }

  else
  {
    v24 = v0[29];
    v25 = v0[17];
    v26 = v0[11];
    v27 = v0[8];
    v28 = v0[9];
    v29 = v0[7];
    sub_100DD921C(v1, v25, type metadata accessor for LocalFindableAccessoryRecord);
    (*(v28 + 16))(v26, v25, v27);
    type metadata accessor for Peripheral();
    Identifier.init(_:)();
    (*(v28 + 56))(v29, 1, 1, v27);
    v30 = swift_task_alloc();
    v0[55] = v30;
    *v30 = v0;
    v30[1] = sub_100D894BC;
    v31 = v0[29];
    v32 = v0[7];
    v33 = v0[3];

    return sub_100D70FF8(v31, v32);
  }
}

uint64_t sub_100D894BC()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 232);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  v7 = *(*v0 + 56);
  v8 = *(*v0 + 24);
  v10 = *v0;

  sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  *(v1 + 448) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v4, v6);

  return _swift_task_switch(sub_100D89684, v8, 0);
}

uint64_t sub_100D89684()
{
  v1 = v0[56];
  v2 = v0[50];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[34];
  v7 = v0[17];
  v6 = v0[18];

  sub_100DD92EC(v7, type metadata accessor for LocalFindableAccessoryRecord);
  v3(v5, v6);
  v8 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[27];
  v16 = v0[28];
  v17 = v0[26];
  v20 = v0[25];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[16];
  v28 = v0[13];
  v29 = v0[12];
  v30 = v0[11];
  v31 = v0[10];
  v32 = v0[7];
  v33 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100D89858(char a1)
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 673) = a1;

  return _swift_task_switch(sub_100D89970, v3, 0);
}

uint64_t sub_100D89970()
{
  v54 = v0;
  if (*(v0 + 673) == 1)
  {
    (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
    v1 = swift_task_alloc();
    *(v0 + 464) = v1;
    *v1 = v0;
    v1[1] = sub_100D89D74;
    v2 = *(v0 + 272);
    v3 = *(v0 + 56);
    v4 = *(v0 + 24);

    return sub_100D70FF8(v2, v3);
  }

  else
  {
    v6 = *(v0 + 336);
    v7 = *(v0 + 320);
    (*(v0 + 328))(*(v0 + 224), *(v0 + 272), *(v0 + 144));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 400);
    v12 = *(v0 + 344);
    v13 = *(v0 + 312);
    v14 = *(v0 + 272);
    v15 = *(v0 + 224);
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    if (v10)
    {
      v49 = *(v0 + 400);
      v51 = *(v0 + 272);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v53 = v19;
      *v18 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v9;
      v22 = v21;
      v12(v15, v16);
      v23 = sub_1000136BC(v20, v22, &v53);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v8, v46, "Ignore connection event for unsupported accessory %{public}s", v18, 0xCu);
      sub_100007BAC(v19);

      v12(v51, v16);
    }

    else
    {
      v24 = *(v0 + 400);

      v12(v15, v16);
      v12(v14, v16);
    }

    v25 = *(v0 + 288);
    v27 = *(v0 + 264);
    v26 = *(v0 + 272);
    v29 = *(v0 + 248);
    v28 = *(v0 + 256);
    v31 = *(v0 + 232);
    v30 = *(v0 + 240);
    v32 = *(v0 + 216);
    v33 = *(v0 + 224);
    v34 = *(v0 + 208);
    v36 = *(v0 + 200);
    v37 = *(v0 + 192);
    v38 = *(v0 + 184);
    v39 = *(v0 + 176);
    v40 = *(v0 + 168);
    v41 = *(v0 + 160);
    v42 = *(v0 + 136);
    v43 = *(v0 + 128);
    v44 = *(v0 + 104);
    v45 = *(v0 + 96);
    v47 = *(v0 + 88);
    v48 = *(v0 + 80);
    v50 = *(v0 + 56);
    v52 = *(v0 + 48);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_100D89D74()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 24);
  v5 = *v0;

  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100D89EB0, v3, 0);
}

uint64_t sub_100D89EB0()
{
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[39];
  v4 = v0[34];
  v5 = v0[18];
  v6 = v0[19];

  v2(v4, v5);
  v7 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[31];
  v10 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[21];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[13];
  v28 = v0[12];
  v29 = v0[11];
  v30 = v0[10];
  v31 = v0[7];
  v32 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100D8A070()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 512) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_100D8CD6C;
  }

  else
  {
    v9 = sub_100D8A1F8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100D8A1F8()
{
  v1 = v0[27];
  v2 = v0[18];
  v3 = v0[9];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[65] = v6;
  *(v6 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v7 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v11 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v8 = swift_task_alloc();
  v0[66] = v8;
  *v8 = v0;
  v8[1] = sub_100D8A308;
  v9 = v0[39];

  return v11(v6);
}

uint64_t sub_100D8A308(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *(*v2 + 520);
  v7 = *v2;
  *(v4 + 536) = a1;
  *(v4 + 544) = v1;

  v8 = *(v3 + 24);
  if (v1)
  {
    v9 = sub_100D8CF28;
  }

  else
  {
    v9 = sub_100D8A45C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100D8A45C()
{
  v60 = v0;
  v1 = v0[67];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v0[67];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v7 = v0[67];
    v9 = v0[60];
    v8 = v0[61];
    v10 = v0[59];
    v11 = v0[27];
    v12 = v0[21];
    v13 = v0[18];

    v9(v12, v11, v13);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[62];
    v18 = v0[39];
    v19 = v0[27];
    v20 = v0[21];
    v21 = v0[18];
    v22 = v0[19];
    if (v16)
    {
      v57 = v0[62];
      v23 = swift_slowAlloc();
      v54 = v19;
      v24 = swift_slowAlloc();
      v59 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v57(v20, v21);
      v28 = sub_1000136BC(v25, v27, &v59);

      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to retrieve a Peripheral for %{private,mask.hash}s", v23, 0x16u);
      sub_100007BAC(v24);

      v57(v54, v21);
    }

    else
    {

      v17(v20, v21);
      v17(v19, v21);
    }

    v29 = v0[36];
    v31 = v0[33];
    v30 = v0[34];
    v33 = v0[31];
    v32 = v0[32];
    v35 = v0[29];
    v34 = v0[30];
    v36 = v0[27];
    v37 = v0[28];
    v38 = v0[26];
    v42 = v0[25];
    v43 = v0[24];
    v44 = v0[23];
    v45 = v0[22];
    v46 = v0[21];
    v47 = v0[20];
    v48 = v0[17];
    v49 = v0[16];
    v50 = v0[13];
    v51 = v0[12];
    v52 = v0[11];
    v53 = v0[10];
    v55 = v0[7];
    v58 = v0[6];

    v39 = v0[1];

    return v39();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v40 = v0[67];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v41 = v0[67];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[67] + 32);
  }

  v0[69] = v3;

  v4 = *(&async function pointer to dispatch thunk of Peripheral.isPaired.getter + 1);
  v56 = (&async function pointer to dispatch thunk of Peripheral.isPaired.getter + async function pointer to dispatch thunk of Peripheral.isPaired.getter);
  v5 = swift_task_alloc();
  v0[70] = v5;
  *v5 = v0;
  v5[1] = sub_100D8A8C4;

  return v56();
}

uint64_t sub_100D8A8C4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  *(v4 + 568) = v1;

  v7 = *(v4 + 24);
  if (v1)
  {
    v8 = sub_100D8D0E4;
  }

  else
  {
    *(v4 + 674) = a1 & 1;
    v8 = sub_100D8AA04;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D8AA04()
{
  v26 = v0;
  if (*(v0 + 674))
  {
    v1 = swift_task_alloc();
    *(v0 + 608) = v1;
    *v1 = v0;
    v1[1] = sub_100D8B62C;
    v2 = *(v0 + 552);
    v3 = *(v0 + 24);

    return sub_100D94F40(v2);
  }

  else
  {
    v5 = *(v0 + 488);
    v6 = *(v0 + 472);
    (*(v0 + 480))(*(v0 + 200), *(v0 + 216), *(v0 + 144));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 496);
    v11 = *(v0 + 200);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    if (v9)
    {
      v24 = *(v0 + 496);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v24(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Checking if we have a matching record for %{public}s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {

      v10(v11, v12);
    }

    v20 = swift_task_alloc();
    *(v0 + 576) = v20;
    *v20 = v0;
    v20[1] = sub_100D8ACB0;
    v21 = *(v0 + 216);
    v22 = *(v0 + 96);
    v23 = *(v0 + 24);

    return sub_100D8D800(v22, v21);
  }
}

uint64_t sub_100D8ACB0()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100D8D2AC;
  }

  else
  {
    v6 = sub_100D8ADDC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D8ADDC()
{
  v65 = v0;
  v1 = v0[12];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v3 = v0[60];
    v2 = v0[61];
    v4 = v0[59];
    v5 = v0[27];
    v6 = v0[24];
    v7 = v0[18];
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v3(v6, v5, v7);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[69];
    v12 = v0[62];
    v13 = v0[39];
    v14 = v0[27];
    v15 = v0[24];
    v16 = v0[18];
    v17 = v0[19];
    if (v10)
    {
      v60 = v0[69];
      v62 = v0[27];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v64 = v19;
      *v18 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v9;
      v22 = v21;
      v12(v15, v16);
      v23 = sub_1000136BC(v20, v22, &v64);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v8, v57, "No LocalFindableRecord for %{public}s", v18, 0xCu);
      sub_100007BAC(v19);

      v12(v62, v16);
    }

    else
    {
      v35 = v0[69];

      v12(v15, v16);
      v12(v14, v16);
    }

    v36 = v0[36];
    v38 = v0[33];
    v37 = v0[34];
    v40 = v0[31];
    v39 = v0[32];
    v42 = v0[29];
    v41 = v0[30];
    v43 = v0[27];
    v44 = v0[28];
    v45 = v0[26];
    v47 = v0[25];
    v48 = v0[24];
    v49 = v0[23];
    v50 = v0[22];
    v51 = v0[21];
    v52 = v0[20];
    v53 = v0[17];
    v54 = v0[16];
    v55 = v0[13];
    v56 = v0[12];
    v58 = v0[11];
    v59 = v0[10];
    v61 = v0[7];
    v63 = v0[6];

    v46 = v0[1];

    return v46();
  }

  else
  {
    v24 = v0[29];
    v25 = v0[16];
    v26 = v0[11];
    v27 = v0[8];
    v28 = v0[9];
    v29 = v0[7];
    sub_100DD921C(v1, v25, type metadata accessor for LocalFindableAccessoryRecord);
    (*(v28 + 16))(v26, v25, v27);
    type metadata accessor for Peripheral();
    Identifier.init(_:)();
    (*(v28 + 56))(v29, 1, 1, v27);
    v30 = swift_task_alloc();
    v0[74] = v30;
    *v30 = v0;
    v30[1] = sub_100D8B28C;
    v31 = v0[29];
    v32 = v0[7];
    v33 = v0[3];

    return sub_100D70938(v31, v32);
  }
}

uint64_t sub_100D8B28C()
{
  v1 = *v0;
  v2 = *(*v0 + 592);
  v3 = *(*v0 + 496);
  v4 = *(*v0 + 232);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  v7 = *(*v0 + 56);
  v8 = *(*v0 + 24);
  v10 = *v0;

  sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  *(v1 + 600) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v4, v6);

  return _swift_task_switch(sub_100D8B454, v8, 0);
}

uint64_t sub_100D8B454()
{
  v1 = v0[75];
  v2 = v0[69];
  v3 = v0[62];
  v4 = v0[39];
  v5 = v0[27];
  v6 = v0[18];
  v7 = v0[16];

  sub_100DD92EC(v7, type metadata accessor for LocalFindableAccessoryRecord);
  v3(v5, v6);
  v8 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[27];
  v16 = v0[28];
  v17 = v0[26];
  v20 = v0[25];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[16];
  v28 = v0[13];
  v29 = v0[12];
  v30 = v0[11];
  v31 = v0[10];
  v32 = v0[7];
  v33 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100D8B62C(char a1)
{
  v2 = *(*v1 + 608);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 675) = a1;

  return _swift_task_switch(sub_100D8B744, v3, 0);
}

uint64_t sub_100D8B744()
{
  v54 = v0;
  if (*(v0 + 675) == 1)
  {
    (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
    v1 = swift_task_alloc();
    *(v0 + 616) = v1;
    *v1 = v0;
    v1[1] = sub_100D8BB48;
    v2 = *(v0 + 216);
    v3 = *(v0 + 56);
    v4 = *(v0 + 24);

    return sub_100D70938(v2, v3);
  }

  else
  {
    v6 = *(v0 + 488);
    v7 = *(v0 + 472);
    (*(v0 + 480))(*(v0 + 176), *(v0 + 216), *(v0 + 144));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 552);
    v12 = *(v0 + 496);
    v13 = *(v0 + 312);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    if (v10)
    {
      v49 = *(v0 + 552);
      v51 = *(v0 + 216);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v53 = v19;
      *v18 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v9;
      v22 = v21;
      v12(v15, v16);
      v23 = sub_1000136BC(v20, v22, &v53);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v8, v46, "Ignore connection event for unsupported accessory %{public}s", v18, 0xCu);
      sub_100007BAC(v19);

      v12(v51, v16);
    }

    else
    {
      v24 = *(v0 + 552);

      v12(v15, v16);
      v12(v14, v16);
    }

    v25 = *(v0 + 288);
    v27 = *(v0 + 264);
    v26 = *(v0 + 272);
    v29 = *(v0 + 248);
    v28 = *(v0 + 256);
    v31 = *(v0 + 232);
    v30 = *(v0 + 240);
    v32 = *(v0 + 216);
    v33 = *(v0 + 224);
    v34 = *(v0 + 208);
    v36 = *(v0 + 200);
    v37 = *(v0 + 192);
    v38 = *(v0 + 184);
    v39 = *(v0 + 176);
    v40 = *(v0 + 168);
    v41 = *(v0 + 160);
    v42 = *(v0 + 136);
    v43 = *(v0 + 128);
    v44 = *(v0 + 104);
    v45 = *(v0 + 96);
    v47 = *(v0 + 88);
    v48 = *(v0 + 80);
    v50 = *(v0 + 56);
    v52 = *(v0 + 48);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_100D8BB48()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 24);
  v5 = *v0;

  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100D8BC84, v3, 0);
}

uint64_t sub_100D8BC84()
{
  v1 = v0[69];
  v2 = v0[62];
  v3 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[10];
  Peripheral.id.getter();
  Identifier.id.getter();
  v0[78] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v3, v4);
  v7 = swift_task_alloc();
  v0[79] = v7;
  *v7 = v0;
  v7[1] = sub_100D8BD7C;
  v8 = v0[10];
  v9 = v0[3];

  return sub_100D8FD14(v8);
}

uint64_t sub_100D8BD7C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 632);
  v6 = *v2;
  *(v4 + 640) = v1;

  v7 = *(v4 + 80);
  v8 = *(v4 + 72);
  v9 = *(v4 + 64);
  v10 = *(v4 + 24);
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v11 = sub_100D8D474;
  }

  else
  {
    *(v4 + 676) = a1 & 1;
    (*(v8 + 8))(v7, v9);
    v11 = sub_100D8BF1C;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100D8BF1C()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 552);
  v3 = *(v0 + 496);
  v4 = *(v0 + 312);
  v5 = *(v0 + 216);
  v6 = *(v0 + 144);
  if (*(v0 + 676) == 1)
  {
    v7 = *(v0 + 24);
    sub_100D8F834(*(v0 + 216));

    v3(v5, v6);
  }

  else
  {
    v3(*(v0 + 216), *(v0 + 144));
  }

  v8 = *(v0 + 288);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v15 = *(v0 + 216);
  v16 = *(v0 + 224);
  v17 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 136);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 96);
  v30 = *(v0 + 88);
  v31 = *(v0 + 80);
  v32 = *(v0 + 56);
  v33 = *(v0 + 48);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100D8C110()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 24);
  v5 = *v0;

  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100D8C24C, v3, 0);
}

uint64_t sub_100D8C24C()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[34];
  v6 = v0[18];

  v3(v5, v6);
  v7 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[31];
  v10 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[21];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[13];
  v28 = v0[12];
  v29 = v0[11];
  v30 = v0[10];
  v31 = v0[7];
  v32 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100D8C40C()
{
  v25 = v0;
  v1 = *(v0 + 312);

  *(v0 + 648) = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  (*(v0 + 328))(*(v0 + 160), *(v0 + 272), *(v0 + 144));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  if (v6)
  {
    v23 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = v9 + 8;
    v23(v8, v10);
    v17 = sub_1000136BC(v13, v15, &v24);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Timed out waiting for BT .poweredOn. Saving disconnect event for %{public}s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    v16 = v9 + 8;
    v7(v8, v10);
  }

  *(v0 + 656) = v16;
  (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
  v18 = swift_task_alloc();
  *(v0 + 664) = v18;
  *v18 = v0;
  v18[1] = sub_100D8C110;
  v19 = *(v0 + 272);
  v20 = *(v0 + 56);
  v21 = *(v0 + 24);

  return sub_100D70FF8(v19, v20);
}

uint64_t sub_100D8C664()
{
  v25 = v0;
  v1 = *(v0 + 368);

  *(v0 + 648) = *(v0 + 392);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  (*(v0 + 328))(*(v0 + 160), *(v0 + 272), *(v0 + 144));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  if (v6)
  {
    v23 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = v9 + 8;
    v23(v8, v10);
    v17 = sub_1000136BC(v13, v15, &v24);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Timed out waiting for BT .poweredOn. Saving disconnect event for %{public}s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    v16 = v9 + 8;
    v7(v8, v10);
  }

  *(v0 + 656) = v16;
  (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
  v18 = swift_task_alloc();
  *(v0 + 664) = v18;
  *v18 = v0;
  v18[1] = sub_100D8C110;
  v19 = *(v0 + 272);
  v20 = *(v0 + 56);
  v21 = *(v0 + 24);

  return sub_100D70FF8(v19, v20);
}

uint64_t sub_100D8C8BC()
{
  v25 = v0;
  v1 = *(v0 + 400);

  *(v0 + 648) = *(v0 + 416);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  (*(v0 + 328))(*(v0 + 160), *(v0 + 272), *(v0 + 144));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  if (v6)
  {
    v23 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = v9 + 8;
    v23(v8, v10);
    v17 = sub_1000136BC(v13, v15, &v24);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Timed out waiting for BT .poweredOn. Saving disconnect event for %{public}s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    v16 = v9 + 8;
    v7(v8, v10);
  }

  *(v0 + 656) = v16;
  (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
  v18 = swift_task_alloc();
  *(v0 + 664) = v18;
  *v18 = v0;
  v18[1] = sub_100D8C110;
  v19 = *(v0 + 272);
  v20 = *(v0 + 56);
  v21 = *(v0 + 24);

  return sub_100D70FF8(v19, v20);
}

uint64_t sub_100D8CB14()
{
  v25 = v0;
  v1 = *(v0 + 400);

  *(v0 + 648) = *(v0 + 432);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  (*(v0 + 328))(*(v0 + 160), *(v0 + 272), *(v0 + 144));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  if (v6)
  {
    v23 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = v9 + 8;
    v23(v8, v10);
    v17 = sub_1000136BC(v13, v15, &v24);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Timed out waiting for BT .poweredOn. Saving disconnect event for %{public}s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    v16 = v9 + 8;
    v7(v8, v10);
  }

  *(v0 + 656) = v16;
  (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
  v18 = swift_task_alloc();
  *(v0 + 664) = v18;
  *v18 = v0;
  v18[1] = sub_100D8C110;
  v19 = *(v0 + 272);
  v20 = *(v0 + 56);
  v21 = *(v0 + 24);

  return sub_100D70FF8(v19, v20);
}

uint64_t sub_100D8CD6C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 152);

  v29 = *(v0 + 512);
  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  v15 = *(v0 + 200);
  v16 = *(v0 + 192);
  v17 = *(v0 + 184);
  v18 = *(v0 + 176);
  v19 = *(v0 + 168);
  v20 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  v24 = *(v0 + 96);
  v25 = *(v0 + 88);
  v26 = *(v0 + 80);
  v27 = *(v0 + 56);
  v28 = *(v0 + 48);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100D8CF28()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 152);

  v29 = *(v0 + 544);
  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  v15 = *(v0 + 200);
  v16 = *(v0 + 192);
  v17 = *(v0 + 184);
  v18 = *(v0 + 176);
  v19 = *(v0 + 168);
  v20 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  v24 = *(v0 + 96);
  v25 = *(v0 + 88);
  v26 = *(v0 + 80);
  v27 = *(v0 + 56);
  v28 = *(v0 + 48);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100D8D0E4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 312);
  v3 = *(v0 + 152);

  v30 = *(v0 + 568);
  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  v16 = *(v0 + 200);
  v17 = *(v0 + 192);
  v18 = *(v0 + 184);
  v19 = *(v0 + 176);
  v20 = *(v0 + 168);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  v23 = *(v0 + 128);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);
  v26 = *(v0 + 88);
  v27 = *(v0 + 80);
  v28 = *(v0 + 56);
  v29 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100D8D2AC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 312);
  v3 = *(v0 + 152);

  v30 = *(v0 + 584);
  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  v16 = *(v0 + 200);
  v17 = *(v0 + 192);
  v18 = *(v0 + 184);
  v19 = *(v0 + 176);
  v20 = *(v0 + 168);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  v23 = *(v0 + 128);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);
  v26 = *(v0 + 88);
  v27 = *(v0 + 80);
  v28 = *(v0 + 56);
  v29 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100D8D474()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 312);

  v30 = *(v0 + 640);
  v3 = *(v0 + 624);
  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  v16 = *(v0 + 200);
  v17 = *(v0 + 192);
  v18 = *(v0 + 184);
  v19 = *(v0 + 176);
  v20 = *(v0 + 168);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  v23 = *(v0 + 128);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);
  v26 = *(v0 + 88);
  v27 = *(v0 + 80);
  v28 = *(v0 + 56);
  v29 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100D8D630(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100D8D6F0, 0, 0);
}

uint64_t sub_100D8D6F0()
{
  (*(v0[4] + 104))(v0[5], enum case for CentralManager.State.poweredOn(_:), v0[3]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = type metadata accessor for CentralManager();
  v4 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_100274D78;
  v5 = v0[5];
  v6 = v0[2];

  return CentralManagerProtocol.await(state:)(v5, v3, v4);
}

uint64_t sub_100D8D800(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = type metadata accessor for LocalFindableAccessoryRecord();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_100D8DA64, v2, 0);
}

uint64_t sub_100D8DA64()
{
  v23 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[24] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[25] = v6;
  v0[26] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[18];
  v12 = v0[19];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101371100, &v22);
    *(v13 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[27] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[28] = v20;
  *v20 = v0;
  v20[1] = sub_100D8DD1C;

  return daemon.getter();
}

uint64_t sub_100D8DD1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v12 = *v1;
  *(v3 + 232) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 240) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100D8DEF8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D8DEF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v10 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100D8F604;
  }

  else
  {
    v7 = v3[29];
    v8 = v3[4];

    v6 = sub_100D8E020;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D8E020()
{
  v1 = v0[31];
  v2 = v0[18];
  v3 = v0[11];
  v4 = v0[3];
  Identifier.id.getter();

  return _swift_task_switch(sub_100D8E094, v1, 0);
}

uint64_t sub_100D8E094()
{
  v1 = *(v0[31] + 128);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_100D8E130;
  v4 = v0[11];
  v3 = v0[12];

  return sub_100C57B00(v3, v4);
}

uint64_t sub_100D8E130()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = v2[31];
    v5 = sub_100D8E76C;
  }

  else
  {
    v6 = v2[4];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v5 = sub_100D8E268;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D8E268()
{
  v55 = v0;
  v1 = v0[12];
  v2 = (*(v0[14] + 48))(v1, 1, v0[13]);
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[18];
  if (v2 == 1)
  {
    v7 = v0[21];
    v8 = v0[3];
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v4(v7, v8, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[27];
    v13 = v0[21];
    v14 = v0[18];
    v15 = v0[19];
    if (v11)
    {
      v51 = v0[27];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v54 = v17;
      *v16 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v51(v13, v14);
      v21 = sub_1000136BC(v18, v20, &v54);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "Iterating all LocalFindableBeaconRecords to find peripheralIdentifier: %{public}s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    else
    {

      v12(v13, v14);
    }

    v37 = v0[31];

    return _swift_task_switch(sub_100D8E8E0, v37, 0);
  }

  else
  {
    v22 = v0[22];
    v23 = v0[3];
    sub_100DD921C(v1, v0[17], type metadata accessor for LocalFindableAccessoryRecord);
    v4(v22, v23, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[31];
    v28 = v0[27];
    v29 = v0[22];
    v31 = v0[18];
    v30 = v0[19];
    if (v26)
    {
      v52 = v0[31];
      v32 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v32 = 136446466;
      *(v32 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101371100, &v54);
      *(v32 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v28(v29, v31);
      v36 = sub_1000136BC(v33, v35, &v54);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Found LocalFindableAccessoryRecord matching %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v38 = v0[31];

      v28(v29, v31);
    }

    sub_100DD921C(v0[17], v0[2], type metadata accessor for LocalFindableAccessoryRecord);
    v39 = v0[22];
    v40 = v0[23];
    v42 = v0[20];
    v41 = v0[21];
    v44 = v0[16];
    v43 = v0[17];
    v45 = v0[15];
    v46 = v0[12];
    v47 = v0[11];
    v50 = v0[8];
    v53 = v0[7];
    (*(v0[14] + 56))(v0[2], 0, 1, v0[13]);

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_100D8E76C()
{
  v1 = v0[4];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return _swift_task_switch(sub_100D8E7E8, v1, 0);
}

uint64_t sub_100D8E7E8()
{
  v1 = v0[31];

  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[8];
  v14 = v0[7];
  v15 = v0[34];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100D8E8E0()
{
  v1 = *(*(v0 + 248) + 128);
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = sub_100D8E974;

  return sub_100031364();
}

uint64_t sub_100D8E974(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {
    v8 = sub_100D8ECEC;
  }

  else
  {
    v8 = sub_100D8EAA8;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_100D8EAA8()
{
  v1 = v0[36];
  v2 = v0[4];
  v3 = *(v1 + 16);
  v0[38] = v3;
  if (v3)
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[6];
    v0[39] = 0;
    if (*(v1 + 16))
    {
      v7 = v0[16];
      v8 = v0[8];
      v9 = v0[5];
      sub_100DD9284(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v7, type metadata accessor for LocalFindableAccessoryRecord);
      v10 = *(v5 + 52);
      v11 = *(v6 + 16);
      v0[40] = v11;
      v0[41] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v11(v8, v7 + v10, v9);
      v12 = *(v2 + 144);
      v13 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
      v28 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
      v14 = swift_task_alloc();
      v0[42] = v14;
      *v14 = v0;
      v14[1] = sub_100D8EDE4;
      v15 = v0[8];

      v28(v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = v0[31];

    v17 = v0[22];
    v18 = v0[23];
    v20 = v0[20];
    v19 = v0[21];
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];
    v24 = v0[12];
    v25 = v0[11];
    v27 = v0[8];
    v29 = v0[7];
    (*(v0[14] + 56))(v0[2], 1, 1, v0[13]);

    v26 = v0[1];

    v26();
  }
}

uint64_t sub_100D8ECEC()
{
  v1 = v0[31];

  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[8];
  v14 = v0[7];
  v15 = v0[37];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100D8EDE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v10 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = v3[36];
    v6 = v3[4];

    v7 = sub_100D8F6FC;
    v8 = v6;
  }

  else
  {
    v8 = v3[4];
    v7 = sub_100D8EF0C;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100D8EF0C()
{
  v81 = v0;
  if (*(v0 + 344))
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 160);
    v3 = *(v0 + 144);
    v4 = *(v0 + 24);
    v5 = *(v0 + 152) + 8;
    v6 = *(v0 + 344);
    Peripheral.id.getter();
    type metadata accessor for Peripheral();
    LOBYTE(v6) = static Identifier.== infix(_:_:)();
    v1(v2, v3);
    if (v6)
    {
      v7 = *(v0 + 288);
      v8 = *(v0 + 192);
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);

      sub_100DD9284(v9, v10, type metadata accessor for LocalFindableAccessoryRecord);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 120);
      v15 = *(v0 + 64);
      v16 = *(v0 + 40);
      v17 = *(v0 + 48);
      if (v13)
      {
        v76 = *(v0 + 64);
        v74 = *(v0 + 248);
        v18 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v18 = 136446466;
        *(v18 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101371100, &v80);
        *(v18 + 12) = 2080;
        v19 = sub_100158AA8();
        v73 = v16;
        v21 = v20;
        sub_100DD92EC(v14, type metadata accessor for LocalFindableAccessoryRecord);
        v22 = sub_1000136BC(v19, v21, &v80);

        *(v18 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s Found LocalFindableAccessoryRecord record %s", v18, 0x16u);
        swift_arrayDestroy();

        (*(v17 + 8))(v76, v73);
      }

      else
      {

        sub_100DD92EC(v14, type metadata accessor for LocalFindableAccessoryRecord);
        (*(v17 + 8))(v15, v16);
      }

      sub_100DD921C(*(v0 + 128), *(v0 + 16), type metadata accessor for LocalFindableAccessoryRecord);
      v49 = 0;
      goto LABEL_17;
    }

    v40 = *(v0 + 128);
    v41 = *(v0 + 64);
    v42 = *(v0 + 40);
    v43 = *(v0 + 48);

    (*(v43 + 8))(v41, v42);
    v39 = v40;
  }

  else
  {
    v23 = *(v0 + 328);
    v24 = *(v0 + 192);
    (*(v0 + 320))(*(v0 + 56), *(v0 + 64), *(v0 + 40));
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 128);
    v29 = *(v0 + 56);
    v30 = *(v0 + 64);
    v32 = *(v0 + 40);
    v31 = *(v0 + 48);
    if (v27)
    {
      v77 = *(v0 + 128);
      v33 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101371100, &v80);
      *(v33 + 12) = 2082;
      sub_100D97688(&qword_1016A4210, &type metadata accessor for MACAddress);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v37 = *(v31 + 8);
      v37(v29, v32);
      v38 = sub_1000136BC(v34, v36, &v80);

      *(v33 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s No peripheral for %{public}s!", v33, 0x16u);
      swift_arrayDestroy();

      v37(v30, v32);
      v39 = v77;
    }

    else
    {

      v44 = *(v31 + 8);
      v44(v29, v32);
      v44(v30, v32);
      v39 = v28;
    }
  }

  result = sub_100DD92EC(v39, type metadata accessor for LocalFindableAccessoryRecord);
  v46 = *(v0 + 312) + 1;
  if (v46 == *(v0 + 304))
  {
    v47 = *(v0 + 288);
    v48 = *(v0 + 248);

    v49 = 1;
LABEL_17:
    v63 = *(v0 + 176);
    v64 = *(v0 + 184);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);
    v68 = *(v0 + 128);
    v67 = *(v0 + 136);
    v69 = *(v0 + 120);
    v70 = *(v0 + 96);
    v71 = *(v0 + 88);
    v75 = *(v0 + 64);
    v79 = *(v0 + 56);
    (*(*(v0 + 112) + 56))(*(v0 + 16), v49, 1, *(v0 + 104));

    v72 = *(v0 + 8);

    return v72();
  }

  *(v0 + 312) = v46;
  v50 = *(v0 + 288);
  if (v46 >= *(v50 + 16))
  {
    __break(1u);
  }

  else
  {
    v51 = *(v0 + 128);
    v52 = *(v0 + 104);
    v53 = *(v0 + 64);
    v54 = *(v0 + 40);
    v55 = *(v0 + 48);
    v56 = *(v0 + 32);
    sub_100DD9284(v50 + ((*(*(v0 + 112) + 80) + 32) & ~*(*(v0 + 112) + 80)) + *(*(v0 + 112) + 72) * v46, v51, type metadata accessor for LocalFindableAccessoryRecord);
    v57 = *(v52 + 52);
    v58 = *(v55 + 16);
    *(v0 + 320) = v58;
    *(v0 + 328) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v58(v53, v51 + v57, v54);
    v59 = *(v56 + 144);
    v60 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
    v78 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
    v61 = swift_task_alloc();
    *(v0 + 336) = v61;
    *v61 = v0;
    v61[1] = sub_100D8EDE4;
    v62 = *(v0 + 64);

    return v78(v62);
  }

  return result;
}

uint64_t sub_100D8F604()
{
  v1 = v0[29];

  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[8];
  v14 = v0[7];
  v15 = v0[32];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100D8F6FC()
{
  v1 = v0[31];
  v2 = v0[16];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];

  (*(v5 + 8))(v3, v4);
  sub_100DD92EC(v2, type metadata accessor for LocalFindableAccessoryRecord);
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[8];
  v18 = v0[7];
  v19 = v0[44];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100D8F834(uint64_t a1)
{
  v43 = a1;
  v40 = *v1;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v36 - v10;
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_1016BB490);
  v41 = *(v6 + 16);
  v42 = v6 + 16;
  v41(v13, v43, v5);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v6;
    v18 = v17;
    v45 = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, &v45);
    *(v18 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v37 + 8))(v13, v5);
    v22 = sub_1000136BC(v19, v21, &v45);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s for %{public}s", v18, 0x16u);
    swift_arrayDestroy();

    v6 = v37;
  }

  else
  {

    (*(v6 + 8))(v13, v5);
  }

  v23 = v44;
  v37 = *(v44 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);
  v36 = type metadata accessor for WorkItemQueue.WorkItem();
  v24 = v43;
  v41(v11, v43, v5);
  v25 = *(v6 + 80);
  v26 = (v25 + 24) & ~v25;
  v27 = v7 + 7;
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  v29 = *(v6 + 32);
  v29(v28 + v26, v11, v5);
  v31 = v40;
  v30 = v41;
  *(v28 + ((v27 + v26) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v32 = v38;
  v30(v38, v24, v5);
  v33 = (v25 + 16) & ~v25;
  v34 = swift_allocObject();
  v29(v34 + v33, v32, v5);
  *(v34 + ((v27 + v33) & 0xFFFFFFFFFFFFFFF8)) = v31;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100D8FD14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for LocalFindablePreferences();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v2[8] = *(v5 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v2[13] = *(v7 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016BB8E8, &qword_1013E8A68) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v2[27] = v10;
  *v10 = v2;
  v10[1] = sub_100D8FF98;

  return daemon.getter();
}

uint64_t sub_100D8FF98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v12 = *v1;
  *(v3 + 224) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 232) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100D90174;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D90174(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  v4[30] = a1;
  v4[31] = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_100D9218C;
  }

  else
  {
    v9 = v4[28];

    v8 = sub_100D902AC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D902AC()
{
  v1 = *(v0[30] + 128);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_100D9034C;
  v3 = v0[26];
  v4 = v0[2];

  return sub_100C59FE4(v3, v4);
}

uint64_t sub_100D9034C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100D9108C;
  }

  else
  {
    v6 = sub_100D90478;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D90478()
{
  v151 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 208), v1, &qword_1016BB8E8, &qword_1013E8A68);
  v4 = *(v3 + 48);
  *(v0 + 272) = v4;
  *(v0 + 280) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 192);
  if (v5 == 1)
  {
    sub_10000B3A8(*(v0 + 192), &qword_1016BB8E8, &qword_1013E8A68);
    goto LABEL_4;
  }

  v7 = (v6 + *(*(v0 + 48) + 24));
  v8 = *v7;
  *(v0 + 288) = *v7;
  v9 = v7[1];
  *(v0 + 296) = v9;
  sub_10002E98C(v8, v9);
  sub_100DD92EC(v6, type metadata accessor for LocalFindablePreferences);
  if (v9 >> 60 == 15)
  {
LABEL_4:
    (*(*(v0 + 56) + 56))(*(v0 + 200), 1, 1, *(v0 + 48));
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 96);
    v145 = *(v0 + 88);
    v148 = *(v0 + 120);
    v15 = *(v0 + 16);
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_1016BB490);
    sub_1000D2A70(v11, v12, &qword_1016BB8E8, &qword_1013E8A68);
    sub_1000D2A70(v10, v13, &qword_1016BB8E8, &qword_1013E8A68);
    v17 = v145;
    v146 = *(v14 + 16);
    v146(v148, v15, v17);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v138 = v19;
      log = v18;
      v21 = *(v0 + 272);
      v20 = *(v0 + 280);
      v22 = *(v0 + 184);
      v23 = *(v0 + 168);
      v24 = *(v0 + 48);
      v25 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *v25 = 136446979;
      sub_1000D2A70(v22, v23, &qword_1016BB8E8, &qword_1013E8A68);
      v26 = v21(v23, 1, v24);
      v27 = *(v0 + 168);
      if (v26 == 1)
      {
        sub_10000B3A8(v27, &qword_1016BB8E8, &qword_1013E8A68);
        v28 = 3;
      }

      else
      {
        v28 = *(v27 + *(*(v0 + 48) + 20));
        sub_100DD92EC(v27, type metadata accessor for LocalFindablePreferences);
      }

      v130 = *(v0 + 272);
      v133 = *(v0 + 280);
      v36 = *(v0 + 176);
      v35 = *(v0 + 184);
      v37 = *(v0 + 160);
      v129 = *(v0 + 48);
      *(v0 + 328) = v28;
      sub_1000BC4D4(&qword_1016BB8F0, &unk_1013E8A90);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      sub_10000B3A8(v35, &qword_1016BB8E8, &qword_1013E8A68);
      v41 = sub_1000136BC(v38, v40, &v150);

      *(v25 + 4) = v41;
      *(v25 + 12) = 2082;
      sub_1000D2A70(v36, v37, &qword_1016BB8E8, &qword_1013E8A68);
      v42 = v130(v37, 1, v129);
      v43 = *(v0 + 160);
      if (v42 == 1)
      {
        sub_10000B3A8(v43, &qword_1016BB8E8, &qword_1013E8A68);
        v44 = 3;
      }

      else
      {
        v44 = *(v43 + *(*(v0 + 48) + 20));
        sub_100DD92EC(v43, type metadata accessor for LocalFindablePreferences);
      }

      v45 = *(v0 + 176);
      v46 = *(v0 + 120);
      v48 = *(v0 + 88);
      v47 = *(v0 + 96);
      *(v0 + 329) = v44;
      v49 = String.init<A>(describing:)();
      v51 = v50;
      sub_10000B3A8(v45, &qword_1016BB8E8, &qword_1013E8A68);
      v52 = sub_1000136BC(v49, v51, &v150);

      *(v25 + 14) = v52;
      *(v25 + 22) = 2160;
      *(v25 + 24) = 1752392040;
      *(v25 + 32) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v47 + 8))(v46, v48);
      v56 = sub_1000136BC(v53, v55, &v150);

      *(v25 + 34) = v56;
      _os_log_impl(&_mh_execute_header, log, v138, "findMyPairingState = %{public}s,\nserialNumber-based findMyPairingState = %{public}s,\nidentifier = %{private,mask.hash}s.", v25, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v29 = *(v0 + 176);
      v30 = *(v0 + 184);
      v31 = *(v0 + 120);
      v32 = *(v0 + 88);
      v33 = *(v0 + 96);

      (*(v33 + 8))(v31, v32);
      sub_10000B3A8(v29, &qword_1016BB8E8, &qword_1013E8A68);
      sub_10000B3A8(v30, &qword_1016BB8E8, &qword_1013E8A68);
    }

    v58 = *(v0 + 272);
    v57 = *(v0 + 280);
    v59 = *(v0 + 152);
    v60 = *(v0 + 48);
    sub_1000D2A70(*(v0 + 200), v59, &qword_1016BB8E8, &qword_1013E8A68);
    if (v58(v59, 1, v60) == 1)
    {
      v61 = *(v0 + 240);
      v62 = *(v0 + 152);

      sub_10000B3A8(v62, &qword_1016BB8E8, &qword_1013E8A68);
      goto LABEL_26;
    }

    v63 = *(v0 + 80);
    v64 = *(v0 + 48);
    sub_100DD921C(*(v0 + 152), v63, type metadata accessor for LocalFindablePreferences);
    if (*(v63 + *(v64 + 20)) == 1)
    {
      v66 = *(v0 + 272);
      v65 = *(v0 + 280);
      v67 = *(v0 + 144);
      v68 = *(v0 + 48);
      sub_1000D2A70(*(v0 + 208), v67, &qword_1016BB8E8, &qword_1013E8A68);
      v69 = v66(v67, 1, v68);
      v70 = *(v0 + 144);
      if (v69 == 1)
      {
        sub_10000B3A8(v70, &qword_1016BB8E8, &qword_1013E8A68);
LABEL_24:
        v73 = *(v0 + 104);
        v72 = *(v0 + 112);
        v74 = *(v0 + 88);
        v75 = *(v0 + 96);
        v76 = *(v0 + 40);
        v139 = v76;
        loga = *(v0 + 32);
        v78 = *(v0 + 16);
        v77 = *(v0 + 24);
        v79 = type metadata accessor for TaskPriority();
        (*(*(v79 - 8) + 56))(v76, 1, 1, v79);
        v146(v72, v78, v74);
        v80 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
        v81 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v82 = (v81 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
        v83 = (v81 + v73 + 23) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        *(v84 + 16) = v77;
        *(v84 + 24) = v80;
        (*(v75 + 32))(v84 + v81, v72, v74);
        v85 = v84 + v82;
        *v85 = v77;
        *(v85 + 8) = 1;
        *(v84 + v83) = loga;
        swift_retain_n();
        sub_10025EDD4(0, 0, v139, &unk_1013E8A88, v84);

        goto LABEL_25;
      }

      v71 = *(v70 + *(v64 + 20));
      sub_100DD92EC(v70, type metadata accessor for LocalFindablePreferences);
      if (v71 != 1)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v86 = *(v0 + 240);
    v87 = *(v0 + 112);
    v88 = *(v0 + 88);
    v89 = *(v0 + 96);
    v91 = *(v0 + 72);
    v90 = *(v0 + 80);
    v92 = *(v0 + 56);
    v131 = *(v0 + 64);
    v134 = *(v0 + 104);
    v93 = *(v0 + 40);
    v136 = v93;
    v140 = *(v0 + 32);
    v94 = *(v0 + 16);
    v95 = type metadata accessor for TaskPriority();
    (*(*(v95 - 8) + 56))(v93, 1, 1, v95);
    sub_100DD9284(v90, v91, type metadata accessor for LocalFindablePreferences);
    v96 = v87;
    v97 = v87;
    v98 = v88;
    v146(v97, v94, v88);
    v99 = (*(v92 + 80) + 40) & ~*(v92 + 80);
    v100 = (v131 + *(v89 + 80) + v99) & ~*(v89 + 80);
    v101 = swift_allocObject();
    *(v101 + 2) = 0;
    *(v101 + 3) = 0;
    *(v101 + 4) = v86;
    sub_100DD921C(v91, &v101[v99], type metadata accessor for LocalFindablePreferences);
    (*(v89 + 32))(&v101[v100], v96, v98);
    *&v101[(v134 + v100 + 7) & 0xFFFFFFFFFFFFFFF8] = v140;

    sub_10025EDD4(0, 0, v136, &unk_1013E8A78, v101);

    sub_100DD92EC(v90, type metadata accessor for LocalFindablePreferences);
LABEL_26:
    v103 = *(v0 + 272);
    v102 = *(v0 + 280);
    v104 = *(v0 + 136);
    v105 = *(v0 + 48);
    sub_1000D2AD8(*(v0 + 208), v104, &qword_1016BB8E8, &qword_1013E8A68);
    v106 = v103(v104, 1, v105);
    v107 = *(v0 + 136);
    if (v106 == 1)
    {
      sub_10000B3A8(v107, &qword_1016BB8E8, &qword_1013E8A68);
    }

    else
    {
      v108 = *(v107 + *(*(v0 + 48) + 20));
      sub_100DD92EC(v107, type metadata accessor for LocalFindablePreferences);
      if (v108 == 1)
      {
        sub_10000B3A8(*(v0 + 200), &qword_1016BB8E8, &qword_1013E8A68);
        v109 = 1;
        goto LABEL_33;
      }
    }

    v111 = *(v0 + 272);
    v110 = *(v0 + 280);
    v112 = *(v0 + 128);
    v113 = *(v0 + 48);
    sub_1000D2AD8(*(v0 + 200), v112, &qword_1016BB8E8, &qword_1013E8A68);
    v114 = v111(v112, 1, v113);
    v115 = *(v0 + 128);
    if (v114 == 1)
    {
      sub_10000B3A8(v115, &qword_1016BB8E8, &qword_1013E8A68);
      v149 = 0;
LABEL_34:
      v118 = *(v0 + 200);
      v117 = *(v0 + 208);
      v120 = *(v0 + 184);
      v119 = *(v0 + 192);
      v122 = *(v0 + 168);
      v121 = *(v0 + 176);
      v123 = *(v0 + 152);
      v124 = *(v0 + 160);
      v126 = *(v0 + 136);
      v125 = *(v0 + 144);
      v132 = *(v0 + 128);
      v135 = *(v0 + 120);
      v137 = *(v0 + 112);
      v141 = *(v0 + 80);
      logb = *(v0 + 72);
      v147 = *(v0 + 40);

      v127 = *(v0 + 8);

      return v127(v149);
    }

    v116 = *(v115 + *(*(v0 + 48) + 20));
    sub_100DD92EC(v115, type metadata accessor for LocalFindablePreferences);
    v109 = v116 == 1;
LABEL_33:
    v149 = v109;
    goto LABEL_34;
  }

  v34 = *(v0 + 240);

  return _swift_task_switch(sub_100D911C8, v34, 0);
}

uint64_t sub_100D9108C()
{
  v1 = v0[30];

  v20 = v0[33];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[10];
  v18 = v0[9];
  v19 = v0[5];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_100D911C8()
{
  v1 = *(v0[30] + 128);
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_100D91264;
  v4 = v0[36];
  v3 = v0[37];

  return sub_100C5A584(v4, v3);
}

uint64_t sub_100D91264(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_100D92028;
  }

  else
  {
    v8 = sub_100D91398;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D91398()
{
  v159 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016BB490);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 312);
  if (v5)
  {
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v158[0] = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v6 + 16);

    *(v8 + 12) = 2080;
    v10 = Array.description.getter();
    v12 = sub_1000136BC(v10, v11, v158);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "All SerialNumber-based preferences[%ld]: %s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {
    v13 = *(v0 + 312);
  }

  v14 = *(v0 + 312);
  v15 = *(v0 + 320);
  v17 = *(v0 + 288);
  v16 = *(v0 + 296);
  v18 = *(v0 + 200);
  v19 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v19;
  sub_1012BD6C4(sub_100DDA828, v14, v18);
  sub_100006654(v17, v16);

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);
  v24 = *(v0 + 96);
  v153 = *(v0 + 88);
  v156 = *(v0 + 120);
  v25 = *(v0 + 16);
  sub_1000076D4(v2, qword_1016BB490);
  sub_1000D2A70(v20, v22, &qword_1016BB8E8, &qword_1013E8A68);
  sub_1000D2A70(v21, v23, &qword_1016BB8E8, &qword_1013E8A68);
  v26 = v153;
  v154 = *(v24 + 16);
  v154(v156, v25, v26);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v146 = v28;
    log = v27;
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v31 = *(v0 + 184);
    v32 = *(v0 + 168);
    v33 = *(v0 + 48);
    v34 = swift_slowAlloc();
    v158[0] = swift_slowAlloc();
    *v34 = 136446979;
    sub_1000D2A70(v31, v32, &qword_1016BB8E8, &qword_1013E8A68);
    v35 = v30(v32, 1, v33);
    v36 = *(v0 + 168);
    if (v35 == 1)
    {
      sub_10000B3A8(v36, &qword_1016BB8E8, &qword_1013E8A68);
      v37 = 3;
    }

    else
    {
      v37 = *(v36 + *(*(v0 + 48) + 20));
      sub_100DD92EC(v36, type metadata accessor for LocalFindablePreferences);
    }

    v138 = *(v0 + 272);
    v141 = *(v0 + 280);
    v44 = *(v0 + 176);
    v43 = *(v0 + 184);
    v45 = *(v0 + 160);
    v137 = *(v0 + 48);
    *(v0 + 328) = v37;
    sub_1000BC4D4(&qword_1016BB8F0, &unk_1013E8A90);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    sub_10000B3A8(v43, &qword_1016BB8E8, &qword_1013E8A68);
    v49 = sub_1000136BC(v46, v48, v158);

    *(v34 + 4) = v49;
    *(v34 + 12) = 2082;
    sub_1000D2A70(v44, v45, &qword_1016BB8E8, &qword_1013E8A68);
    v50 = v138(v45, 1, v137);
    v51 = *(v0 + 160);
    if (v50 == 1)
    {
      sub_10000B3A8(v51, &qword_1016BB8E8, &qword_1013E8A68);
      v52 = 3;
    }

    else
    {
      v52 = *(v51 + *(*(v0 + 48) + 20));
      sub_100DD92EC(v51, type metadata accessor for LocalFindablePreferences);
    }

    v53 = *(v0 + 176);
    v54 = *(v0 + 120);
    v56 = *(v0 + 88);
    v55 = *(v0 + 96);
    *(v0 + 329) = v52;
    v57 = String.init<A>(describing:)();
    v59 = v58;
    sub_10000B3A8(v53, &qword_1016BB8E8, &qword_1013E8A68);
    v60 = sub_1000136BC(v57, v59, v158);

    *(v34 + 14) = v60;
    *(v34 + 22) = 2160;
    *(v34 + 24) = 1752392040;
    *(v34 + 32) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    (*(v55 + 8))(v54, v56);
    v64 = sub_1000136BC(v61, v63, v158);

    *(v34 + 34) = v64;
    _os_log_impl(&_mh_execute_header, log, v146, "findMyPairingState = %{public}s,\nserialNumber-based findMyPairingState = %{public}s,\nidentifier = %{private,mask.hash}s.", v34, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    v40 = *(v0 + 120);
    v41 = *(v0 + 88);
    v42 = *(v0 + 96);

    (*(v42 + 8))(v40, v41);
    sub_10000B3A8(v38, &qword_1016BB8E8, &qword_1013E8A68);
    sub_10000B3A8(v39, &qword_1016BB8E8, &qword_1013E8A68);
  }

  v66 = *(v0 + 272);
  v65 = *(v0 + 280);
  v67 = *(v0 + 152);
  v68 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 200), v67, &qword_1016BB8E8, &qword_1013E8A68);
  if (v66(v67, 1, v68) == 1)
  {
    v69 = *(v0 + 240);
    v70 = *(v0 + 152);

    sub_10000B3A8(v70, &qword_1016BB8E8, &qword_1013E8A68);
    goto LABEL_25;
  }

  v71 = *(v0 + 80);
  v72 = *(v0 + 48);
  sub_100DD921C(*(v0 + 152), v71, type metadata accessor for LocalFindablePreferences);
  if (*(v71 + *(v72 + 20)) == 1)
  {
    v74 = *(v0 + 272);
    v73 = *(v0 + 280);
    v75 = *(v0 + 144);
    v76 = *(v0 + 48);
    sub_1000D2A70(*(v0 + 208), v75, &qword_1016BB8E8, &qword_1013E8A68);
    v77 = v74(v75, 1, v76);
    v78 = *(v0 + 144);
    if (v77 == 1)
    {
      sub_10000B3A8(v78, &qword_1016BB8E8, &qword_1013E8A68);
LABEL_23:
      v81 = *(v0 + 104);
      v80 = *(v0 + 112);
      v82 = *(v0 + 88);
      v83 = *(v0 + 96);
      v84 = *(v0 + 40);
      v147 = v84;
      loga = *(v0 + 32);
      v86 = *(v0 + 16);
      v85 = *(v0 + 24);
      v87 = type metadata accessor for TaskPriority();
      (*(*(v87 - 8) + 56))(v84, 1, 1, v87);
      v154(v80, v86, v82);
      v88 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
      v89 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v90 = (v89 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v89 + v81 + 23) & 0xFFFFFFFFFFFFFFF8;
      v92 = swift_allocObject();
      *(v92 + 16) = v85;
      *(v92 + 24) = v88;
      (*(v83 + 32))(v92 + v89, v80, v82);
      v93 = v92 + v90;
      *v93 = v85;
      *(v93 + 8) = 1;
      *(v92 + v91) = loga;
      swift_retain_n();
      sub_10025EDD4(0, 0, v147, &unk_1013E8A88, v92);

      goto LABEL_24;
    }

    v79 = *(v78 + *(v72 + 20));
    sub_100DD92EC(v78, type metadata accessor for LocalFindablePreferences);
    if (v79 != 1)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v94 = *(v0 + 240);
  v95 = *(v0 + 112);
  v96 = *(v0 + 88);
  v97 = *(v0 + 96);
  v99 = *(v0 + 72);
  v98 = *(v0 + 80);
  v100 = *(v0 + 56);
  v139 = *(v0 + 64);
  v142 = *(v0 + 104);
  v101 = *(v0 + 40);
  v144 = v101;
  v148 = *(v0 + 32);
  v102 = *(v0 + 16);
  v103 = type metadata accessor for TaskPriority();
  (*(*(v103 - 8) + 56))(v101, 1, 1, v103);
  sub_100DD9284(v98, v99, type metadata accessor for LocalFindablePreferences);
  v104 = v95;
  v105 = v95;
  v106 = v96;
  v154(v105, v102, v96);
  v107 = (*(v100 + 80) + 40) & ~*(v100 + 80);
  v108 = (v139 + *(v97 + 80) + v107) & ~*(v97 + 80);
  v109 = swift_allocObject();
  *(v109 + 2) = 0;
  *(v109 + 3) = 0;
  *(v109 + 4) = v94;
  sub_100DD921C(v99, &v109[v107], type metadata accessor for LocalFindablePreferences);
  (*(v97 + 32))(&v109[v108], v104, v106);
  *&v109[(v142 + v108 + 7) & 0xFFFFFFFFFFFFFFF8] = v148;

  sub_10025EDD4(0, 0, v144, &unk_1013E8A78, v109);

  sub_100DD92EC(v98, type metadata accessor for LocalFindablePreferences);
LABEL_25:
  v111 = *(v0 + 272);
  v110 = *(v0 + 280);
  v112 = *(v0 + 136);
  v113 = *(v0 + 48);
  sub_1000D2AD8(*(v0 + 208), v112, &qword_1016BB8E8, &qword_1013E8A68);
  v114 = v111(v112, 1, v113);
  v115 = *(v0 + 136);
  if (v114 == 1)
  {
    sub_10000B3A8(v115, &qword_1016BB8E8, &qword_1013E8A68);
  }

  else
  {
    v116 = *(v115 + *(*(v0 + 48) + 20));
    sub_100DD92EC(v115, type metadata accessor for LocalFindablePreferences);
    if (v116 == 1)
    {
      sub_10000B3A8(*(v0 + 200), &qword_1016BB8E8, &qword_1013E8A68);
      v117 = 1;
      goto LABEL_32;
    }
  }

  v119 = *(v0 + 272);
  v118 = *(v0 + 280);
  v120 = *(v0 + 128);
  v121 = *(v0 + 48);
  sub_1000D2AD8(*(v0 + 200), v120, &qword_1016BB8E8, &qword_1013E8A68);
  v122 = v119(v120, 1, v121);
  v123 = *(v0 + 128);
  if (v122 == 1)
  {
    sub_10000B3A8(v123, &qword_1016BB8E8, &qword_1013E8A68);
    v157 = 0;
    goto LABEL_33;
  }

  v124 = *(v123 + *(*(v0 + 48) + 20));
  sub_100DD92EC(v123, type metadata accessor for LocalFindablePreferences);
  v117 = v124 == 1;
LABEL_32:
  v157 = v117;
LABEL_33:
  v126 = *(v0 + 200);
  v125 = *(v0 + 208);
  v128 = *(v0 + 184);
  v127 = *(v0 + 192);
  v130 = *(v0 + 168);
  v129 = *(v0 + 176);
  v131 = *(v0 + 152);
  v132 = *(v0 + 160);
  v134 = *(v0 + 136);
  v133 = *(v0 + 144);
  v140 = *(v0 + 128);
  v143 = *(v0 + 120);
  v145 = *(v0 + 112);
  v149 = *(v0 + 80);
  logb = *(v0 + 72);
  v155 = *(v0 + 40);

  v135 = *(v0 + 8);

  return v135(v157);
}

uint64_t sub_100D92028()
{
  v1 = v0[30];
  v2 = v0[26];
  sub_100006654(v0[36], v0[37]);

  sub_10000B3A8(v2, &qword_1016BB8E8, &qword_1013E8A68);
  v21 = v0[40];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[19];
  v10 = v0[20];
  v12 = v0[17];
  v11 = v0[18];
  v15 = v0[16];
  v16 = v0[15];
  v17 = v0[14];
  v18 = v0[10];
  v19 = v0[9];
  v20 = v0[5];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_100D9218C()
{
  v1 = v0[28];

  v20 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[10];
  v18 = v0[9];
  v19 = v0[5];

  v12 = v0[1];

  return v12(0);
}

BOOL sub_100D922C8()
{
  type metadata accessor for UUID();
  sub_100D97688(&qword_1016984A0, &type metadata accessor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100D9235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v8 = type metadata accessor for UUID();
  *(v6 + 32) = v8;
  v9 = *(v8 - 8);
  *(v6 + 40) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100D92424, a5, 0);
}

uint64_t sub_100D92424()
{
  v24 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v23);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Store previous user's choice for this accessory %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 64);
  v19 = swift_task_alloc();
  *(v0 + 56) = v19;
  *v19 = v0;
  v19[1] = sub_100D926B4;
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);

  return sub_100D927C4(v20, v18, 0x1000000000000000);
}

uint64_t sub_100D926B4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100D927C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_100D9285C;

  return daemon.getter();
}

uint64_t sub_100D9285C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100D92A38;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D92A38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v10 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_100D93130;
  }

  else
  {
    v7 = v3[7];
    v8 = v3[5];

    v6 = sub_100D92B60;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D92B60()
{
  v16 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016BB490);
  sub_100C61CD4(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100C61CE4(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = sub_1011EB8F8(v7, v6);
    v12 = sub_1000136BC(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saving accessory info %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  v13 = v0[9];

  return _swift_task_switch(sub_100D92D1C, v13, 0);
}

uint64_t sub_100D92D1C()
{
  v1 = *(v0[9] + 128);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100D92DBC;
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return sub_100C586BC(v4, v3, v5);
}

uint64_t sub_100D92DBC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100D92EE8;
  }

  else
  {
    v6 = sub_1001884B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D92EE8()
{
  v20 = v0;
  v1 = v0[9];

  v2 = v0[12];
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  sub_100C61CD4(v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  sub_100C61CE4(v4, v3);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = sub_1011EB8F8(v9, v8);
    v15 = sub_1000136BC(v13, v14, &v19);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save accessory info %{private,mask.hash}s, error %{public}@", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100D93130()
{
  v20 = v0;
  v1 = v0[7];

  v2 = v0[10];
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  sub_100C61CD4(v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  sub_100C61CE4(v4, v3);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = sub_1011EB8F8(v9, v8);
    v15 = sub_1000136BC(v13, v14, &v19);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save accessory info %{private,mask.hash}s, error %{public}@", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100D93378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for UUID();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100D93440, a4, 0);
}

uint64_t sub_100D93440()
{
  v1 = *(v0[2] + 128);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100D934E4;
  v3 = v0[3];

  return sub_100C5969C(v3, 0, 0xF000000000000000);
}

uint64_t sub_100D934E4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D93620, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100D93620()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_1016BB490);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 138543875;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v15;
    *v24 = v15;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1000136BC(v16, v18, &v26);

    *(v14 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error on accessory info deletion %{public}@, identifier %{private,mask.hash}s", v14, 0x20u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v20 = v0[9];

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100D938F4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = v3;
  *(v4 + 368) = a3;
  *(v4 + 104) = a1;
  v5 = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  *(v4 + 128) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 144) = v7;
  v8 = *(v7 - 8);
  *(v4 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016BB8D8, &unk_1013E8A50) - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  v12 = type metadata accessor for MACAddress();
  *(v4 + 200) = v12;
  v13 = *(v12 - 8);
  *(v4 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  v15 = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  *(v4 + 224) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  *(v4 + 248) = v17;
  v18 = *(v17 - 8);
  *(v4 + 256) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100D93BC8, v3, 0);
}

uint64_t sub_100D93BC8()
{
  v100 = v0;
  if (*(v0 + 368) <= 1u)
  {
    if (*(v0 + 368))
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 304);
      v39 = *(v0 + 248);
      v40 = *(v0 + 256);
      v41 = *(v0 + 104);
      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_1016BB490);
      (*(v40 + 16))(v38, v41, v39);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      v43 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 304);
      v10 = *(v0 + 248);
      v11 = *(v0 + 256);
      if (v43)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v99 = v13;
        *v12 = 136446210;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        (*(v11 + 8))(v9, v10);
        v47 = sub_1000136BC(v44, v46, &v99);

        *(v12 + 4) = v47;
        v18 = "Accessory auth failed for %{public}s";
        goto LABEL_20;
      }
    }

    else
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 312);
      v2 = *(v0 + 248);
      v3 = *(v0 + 256);
      v4 = *(v0 + 104);
      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_1016BB490);
      (*(v3 + 16))(v1, v4, v2);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 312);
      v10 = *(v0 + 248);
      v11 = *(v0 + 256);
      if (v8)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v99 = v13;
        *v12 = 136446210;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;
        (*(v11 + 8))(v9, v10);
        v17 = sub_1000136BC(v14, v16, &v99);

        *(v12 + 4) = v17;
        v18 = "Unknown auth status for %{public}s";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v6, v7, v18, v12, 0xCu);
        sub_100007BAC(v13);

LABEL_22:
        v59 = *(v0 + 304);
        v58 = *(v0 + 312);
        v61 = *(v0 + 288);
        v60 = *(v0 + 296);
        v63 = *(v0 + 272);
        v62 = *(v0 + 280);
        v64 = *(v0 + 264);
        v65 = *(v0 + 232);
        v66 = *(v0 + 240);
        v67 = *(v0 + 216);
        v92 = *(v0 + 192);
        v93 = *(v0 + 184);
        v94 = *(v0 + 176);
        v95 = *(v0 + 168);
        v97 = *(v0 + 160);
        v98 = *(v0 + 136);

        v68 = *(v0 + 8);

        return v68();
      }
    }

LABEL_21:

    (*(v11 + 8))(v9, v10);
    goto LABEL_22;
  }

  if (*(v0 + 368) != 2)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v50 = *(v0 + 248);
    v51 = *(v0 + 104);
    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_1016BB490);
    (*(v49 + 16))(v48, v51, v50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v6, v7);
    v11 = *(v0 + 256);
    v9 = *(v0 + 264);
    v10 = *(v0 + 248);
    if (v53)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v99 = v13;
      *v12 = 136446210;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v11 + 8))(v9, v10);
      v57 = sub_1000136BC(v54, v56, &v99);

      *(v12 + 4) = v57;
      v18 = "Accessory auth timed out for %{public}s";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 296);
  v21 = *(v0 + 248);
  v20 = *(v0 + 256);
  v22 = *(v0 + 104);
  v23 = type metadata accessor for Logger();
  *(v0 + 320) = sub_1000076D4(v23, qword_1016BB490);
  v24 = *(v20 + 16);
  *(v0 + 328) = v24;
  *(v0 + 336) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v19, v22, v21);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 296);
  v30 = *(v0 + 248);
  v29 = *(v0 + 256);
  if (v27)
  {
    v31 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v99 = v96;
    *v31 = 136446210;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v29 + 8);
    v35(v28, v30);
    v36 = sub_1000136BC(v32, v34, &v99);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "Accessory auth status is .passed for %{public}s", v31, 0xCu);
    sub_100007BAC(v96);

    v37 = v35;
  }

  else
  {

    v37 = *(v29 + 8);
    v37(v28, v30);
  }

  v70 = *(v0 + 240);
  v71 = *(v0 + 224);
  v72 = *(v0 + 120);
  v73 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  *(v0 + 344) = v37;
  *(v0 + 352) = v73;
  swift_beginAccess();
  sub_100DD9284(v72 + v73, v70, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v74 = *(v0 + 288);
    v76 = *(v0 + 248);
    v75 = *(v0 + 256);
    v77 = *(v0 + 240);
    v78 = *(v0 + 144);
    v79 = *(v0 + 152);
    v80 = *(v0 + 104);
    v81 = *(sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60) + 48);
    (*(v75 + 32))(v74, v77, v76);
    (*(v79 + 8))(v77 + v81, v78);
    LOBYTE(v77) = static UUID.== infix(_:_:)();
    v37(v74, v76);
    if (v77)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_100DD92EC(*(v0 + 240), type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  }

  v83 = *(v0 + 200);
  v82 = *(v0 + 208);
  v84 = *(v0 + 192);
  sub_1000D2A70(*(v0 + 112), v84, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v82 + 48))(v84, 1, v83) == 1)
  {
    sub_10000B3A8(*(v0 + 192), &qword_1016A40D0, &unk_10138BE70);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Accessory auth status is passed without a MAC address! (Bug on CoreAccessory)", v87, 2u);
    }

    goto LABEL_22;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v88 = swift_task_alloc();
  *(v0 + 360) = v88;
  *v88 = v0;
  v88[1] = sub_100D945BC;
  v89 = *(v0 + 216);
  v90 = *(v0 + 184);
  v91 = *(v0 + 120);

  return sub_100D95354(v90, v89);
}

uint64_t sub_100D945BC()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_100D946CC, v2, 0);
}

uint64_t sub_100D946CC()
{
  v107 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  sub_1000D2A70(v0[23], v1, &qword_1016BB8D8, &unk_1013E8A50);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];
  v8 = v0[31];
  if (v4 == 1)
  {
    v9 = v0[34];
    v10 = v0[13];
    sub_10000B3A8(v0[22], &qword_1016BB8D8, &unk_1013E8A50);
    v6(v9, v10, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[43];
    v15 = v0[34];
    v16 = v0[31];
    v17 = v0[32];
    if (v13)
    {
      v102 = v0[43];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v106 = v19;
      *v18 = 136446210;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v102(v15, v16);
      v23 = sub_1000136BC(v20, v22, &v106);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unsupported pencil attached: uuid: %{public}s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    else
    {

      v14(v15, v16);
    }

    v52 = v0[44];
    v53 = v0[42];
    v54 = v0[29];
    v55 = v0[26];
    v104 = v0[27];
    v56 = v0[25];
    v57 = v0[23];
    v59 = v0[16];
    v58 = v0[17];
    v60 = v0[15];
    (v0[41])(v54, v0[13], v0[31]);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100DD6A88(v54, v60 + v52);
    swift_endAccess();
    v61 = *(v60 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_peripheralStreamProvider);
    type metadata accessor for SPPairingSessionError(0);
    v0[12] = 16;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100D97688(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v58 = v0[11];
    swift_storeEnumTagMultiPayload();
    AsyncStreamProvider.yield(value:transaction:)();
    sub_10000B3A8(v58, &qword_10169A068, &qword_1013933F0);
    sub_10000B3A8(v57, &qword_1016BB8D8, &unk_1013E8A50);
    (*(v55 + 8))(v104, v56);
  }

  else
  {
    v24 = v0[35];
    v25 = v0[21];
    v103 = v0[20];
    v27 = v0[18];
    v26 = v0[19];
    v28 = v0[13];
    (*(v26 + 32))(v25, v0[22], v27);
    v6(v24, v28, v8);
    v100 = *(v26 + 16);
    v100(v103, v25, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[43];
    v33 = v0[35];
    v35 = v0[31];
    v34 = v0[32];
    v36 = v0[19];
    v37 = v0[20];
    v38 = v0[18];
    if (v31)
    {
      log = v29;
      v39 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v39 = 136446466;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v32;
      v42 = v38;
      v43 = v37;
      v44 = v40;
      v90 = v30;
      v46 = v45;
      v41(v33, v35);
      v47 = sub_1000136BC(v44, v46, &v106);

      *(v39 + 4) = v47;
      *(v39 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v98 = *(v36 + 8);
      v98(v43, v42);
      v51 = sub_1000136BC(v48, v50, &v106);

      *(v39 + 14) = v51;
      _os_log_impl(&_mh_execute_header, log, v90, "Pencil attached: uuid: %{public}s (%{public}s)", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v98 = *(v36 + 8);
      v98(v37, v38);
      v32(v33, v35);
    }

    v62 = v0[41];
    v85 = v0[42];
    v63 = v0[31];
    v64 = v0[29];
    v86 = v0[28];
    v87 = v0[44];
    loga = v0[25];
    v95 = v0[27];
    v89 = v0[23];
    v91 = v0[26];
    v65 = v0[21];
    v67 = v0[17];
    v66 = v0[18];
    v68 = v0[15];
    v88 = v0[16];
    v69 = v0[13];
    v70 = *(sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60) + 48);
    v62(v64, v69, v63);
    v71 = v65;
    v100(v64 + v70, v65, v66);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100DD6A88(v64, v68 + v87);
    swift_endAccess();
    v72 = *(v68 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_peripheralStreamProvider);
    v100(v67, v71, v66);
    type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    AsyncStreamProvider.yield(value:transaction:)();
    sub_10000B3A8(v67, &qword_10169A068, &qword_1013933F0);
    v98(v71, v66);
    sub_10000B3A8(v89, &qword_1016BB8D8, &unk_1013E8A50);
    (*(v91 + 8))(v95, loga);
  }

  v74 = v0[38];
  v73 = v0[39];
  v76 = v0[36];
  v75 = v0[37];
  v78 = v0[34];
  v77 = v0[35];
  v79 = v0[33];
  v80 = v0[29];
  v81 = v0[30];
  v82 = v0[27];
  logb = v0[24];
  v96 = v0[23];
  v97 = v0[22];
  v99 = v0[21];
  v101 = v0[20];
  v105 = v0[17];

  v83 = v0[1];

  return v83();
}

uint64_t sub_100D94F40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100D94F60, v1, 0);
}

uint64_t sub_100D94F60()
{
  if (qword_101694EA8 != -1)
  {
    swift_once();
  }

  v1 = off_1016BB4A8;
  *(v0 + 32) = off_1016BB4A8;
  v2 = v1[32];
  *(v0 + 72) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 7);

  if (v5)
  {
    v7 = 0;
LABEL_10:
    *(v0 + 40) = v5;
    *(v0 + 48) = v7;
    v9 = *(v0 + 16);
    v10 = (*(v6 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    *(v0 + 56) = *v10;
    *(v0 + 64) = v10[1];
    type metadata accessor for Peripheral();
    sub_100D97688(&unk_1016C11B0, &type metadata accessor for Peripheral);

    v12 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100D95138, v12, v11);
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 64);
      if (v5)
      {
        goto LABEL_10;
      }
    }

    v13 = *(v0 + 8);

    return v13(0);
  }
}

uint64_t sub_100D95138()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 73) = dispatch thunk of Peripheral.hasTag(_:)() & 1;

  return _swift_task_switch(sub_100D951C0, v4, 0);
}

uint64_t sub_100D951C0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 73);
  if (v4)
  {
LABEL_2:
    v5 = *(v3 + 32);

    v6 = *(v3 + 8);

    return v6(v4);
  }

  else
  {
    v8 = *(v3 + 48);
    v9 = (*(v3 + 40) - 1) & *(v3 + 40);
    if (v9)
    {
      v10 = *(v3 + 32);
LABEL_11:
      *(v3 + 40) = v9;
      *(v3 + 48) = v8;
      v12 = *(v3 + 16);
      v13 = (*(v10 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v9)))));
      *(v3 + 56) = *v13;
      *(v3 + 64) = v13[1];
      type metadata accessor for Peripheral();
      sub_100D97688(&unk_1016C11B0, &type metadata accessor for Peripheral);

      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      a1 = sub_100D95138;
      a2 = v14;
      a3 = v16;
    }

    else
    {
      while (1)
      {
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v11 >= (((1 << *(v3 + 72)) + 63) >> 6))
        {
          goto LABEL_2;
        }

        v10 = *(v3 + 32);
        v9 = *(v10 + 8 * v11 + 56);
        ++v8;
        if (v9)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    return _swift_task_switch(a1, a2, a3);
  }
}

uint64_t sub_100D95354(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100D9545C, v2, 0);
}

uint64_t sub_100D9545C()
{
  v1 = v0[13];
  v0[2] = _swiftEmptyArrayStorage;
  v0[14] = type metadata accessor for CentralManager();
  static CentralManager.Options.needsRestrictedStateOperation.getter();
  v2 = type metadata accessor for CentralManager.Options();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = async function pointer to CentralManager.__allocating_init(options:)[1];
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100D95560;
  v5 = v0[13];

  return CentralManager.__allocating_init(options:)(v5);
}

uint64_t sub_100D95560(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100D95678, v3, 0);
}

uint64_t sub_100D95678()
{
  v26 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  v0[17] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136446210;
    sub_100D97688(&qword_1016A4210, &type metadata accessor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Looking for CBPeripheral for attached accessory by MAC address: %{public}s", v13, 0xCu);
    sub_100007BAC(v24);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[20] = v17;
  v19 = v0[16];
  v20 = async function pointer to withTimeout<A>(_:block:)[1];

  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  v21[1] = sub_100D95938;
  v22 = v0[16];

  return withTimeout<A>(_:block:)(v21, 1000000000000000000, 0, &unk_1013E8A30, v22, &type metadata for () + 8);
}

uint64_t sub_100D95938()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 176) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_100D964CC;
  }

  else
  {
    v7 = sub_100D95A80;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100D95A80()
{
  v18 = v0;
  v2 = v0[16];
  v1 = v0[17];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101371020, &v17);
    *(v7 + 12) = 2080;
    v0[5] = v5;
    sub_100D97688(&qword_1016B8628, &type metadata accessor for CentralManager);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v17);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %s has powered on!", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
  v16 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_100D95CA0;
  v13 = v0[16];
  v14 = v0[7];

  return v16(v14);
}

uint64_t sub_100D95CA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v7 = *(v3 + 64);
  if (v1)
  {
    v8 = sub_100D9669C;
  }

  else
  {
    v8 = sub_100D95DD4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D95DD4()
{
  v36 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 192);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v35 = v7;
      *v6 = 136446210;
      *(v0 + 32) = v1;
      type metadata accessor for Peripheral();
      sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = sub_1000136BC(v8, v9, &v35);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Found peripheral by MAC address: %{public}s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v11 = *(v0 + 16);
  }

  else
  {
    v12 = *(v0 + 152);
    v13 = *(v0 + 136);
    (*(v0 + 144))(*(v0 + 88), *(v0 + 56), *(v0 + 72));
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 160);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 72);
    if (v16)
    {
      v34 = *(v0 + 160);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136446210;
      sub_100D97688(&qword_1016A4210, &type metadata accessor for MACAddress);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v34(v18, v20);
      v26 = sub_1000136BC(v23, v25, &v35);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "No CBPeripheral found for %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      v17(v18, v20);
    }

    v11 = _swiftEmptyArrayStorage;
  }

  *(v0 + 208) = v11;
  *(v0 + 24) = v11;
  v27 = async function pointer to Sequence.asyncFilter(_:)[1];

  v28 = swift_task_alloc();
  *(v0 + 216) = v28;
  v29 = sub_1000BC4D4(&qword_1016BB8C8, &qword_1013E8A48);
  v30 = sub_1000041A4(&qword_1016BB8D0, &qword_1016BB8C8, &qword_1013E8A48);
  *v28 = v0;
  v28[1] = sub_100D9620C;
  v31 = *(v0 + 64);

  return Sequence.asyncFilter(_:)(&unk_1013E8A40, v31, v29, v30);
}

uint64_t sub_100D9620C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *v2;
  *(*v2 + 224) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = *(v3 + 208);
    v8 = *(v3 + 64);
    swift_bridgeObjectRelease_n();

    return _swift_task_switch(sub_100D96354, v8, 0);
  }
}

uint64_t sub_100D96354()
{
  v1 = v0[28];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[28];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = v0[28];
    v9 = v0[16];

    v6 = 1;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v16 = v0[28];
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v17 = v0[28];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[28] + 32);
  }

  v4 = v0[16];
  v5 = v0[6];

  Peripheral.id.getter();

  v6 = 0;
LABEL_11:

  v10 = v0[6];
  v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  (*(*(v11 - 8) + 56))(v10, v6, 1, v11);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D964CC()
{
  v1 = v0[16];

  v2 = v0[22];
  v3 = v0[17];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error while retrieving peripheral: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[6];
  v10 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100D9669C()
{
  v1 = v0[16];

  v2 = v0[25];
  v3 = v0[17];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error while retrieving peripheral: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[6];
  v10 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100D9688C()
{
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[3] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v9 = swift_task_alloc();
  v0[4] = v9;
  v10 = type metadata accessor for CentralManager();
  v11 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v9 = v0;
  v9[1] = sub_100D96A60;
  v12 = v0[2];

  return CentralManagerProtocol.await(states:)(v5, v10, v11);
}

uint64_t sub_100D96A60()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D96B9C, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100D96B9C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_100D96C00(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1003EA5F8;

  return sub_100D94F40(v2);
}

void *sub_100D96C98()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[20];

  v6 = v0[21];

  v7 = v0[22];

  sub_100DD92EC(v0 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  v8 = *(v0 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_peripheralStreamProvider);

  v9 = *(v0 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);

  v10 = *(v0 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationPublisher);

  v11 = *(v0 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationsFetcher);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100D96D54()
{
  sub_100D96C98();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100D96DA8()
{
  result = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100D96EC4()
{
  sub_100D96F24();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100D96F24()
{
  if (!qword_1016BB768)
  {
    type metadata accessor for Peripheral();
    v0 = type metadata accessor for Identifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BB768);
    }
  }
}

void sub_100D96F7C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100D96FF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100D96FF4()
{
  if (!qword_1016BB818)
  {
    type metadata accessor for UUID();
    sub_1000BC580(&qword_10169A060, &unk_10139DB00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016BB818);
    }
  }
}

uint64_t sub_100D97070(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PencilPairingService(0);
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100D9711C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PencilPairingService(0);
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100D971E4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PencilPairingService(0);
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100D97290(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PencilPairingService(0);
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100D9733C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D78484();
}

uint64_t sub_100D973C8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100D973E8, v3, 0);
}

uint64_t sub_100D973E8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationPublisher);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100D9748C;
  v3 = v0[2];

  return sub_1011E111C(v3);
}

uint64_t sub_100D9748C(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100D9758C()
{
  v1 = *v0;
  type metadata accessor for PencilPairingService(0);
  sub_100D97688(&qword_10169A090, type metadata accessor for PencilPairingService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100D97688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D976D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v48 = a3;
  v54 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v38 = v9;
  v58 = *(v9 - 8);
  v10 = v58[8];
  v11 = __chkstk_darwin(v9);
  v49 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v39 = &v38 - v12;
  v14 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v53 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v56 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  v40 = &v38 - v18;
  v51 = *(a2 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);
  v50 = type metadata accessor for WorkItemQueue.WorkItem();
  v55 = swift_allocObject();
  swift_weakInit();
  v47 = *(v15 + 16);
  v47(v19, a3, v14);
  v20 = v58;
  v46 = v58[2];
  v46(v13, v54, v9);
  v21 = *(v15 + 80);
  v22 = (v21 + 24) & ~v21;
  v23 = *(v20 + 80);
  v45 = v16 + v23;
  v24 = (v16 + v23 + v22) & ~v23;
  v43 = v10 + 7;
  v44 = v21 | v23;
  v25 = (v10 + 7 + v24) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v55;
  v27 = *(v15 + 32);
  v41 = v15 + 32;
  v42 = v27;
  v28 = v53;
  v27(v26 + v22, v40, v53);
  v29 = v58[4];
  v58 += 4;
  v40 = v29;
  v30 = v38;
  (v29)(v26 + v24, v39, v38);
  v31 = v56;
  *(v26 + v25) = v57;
  v47(v31, v48, v28);
  v32 = v49;
  v46(v49, v54, v30);
  v33 = (v21 + 16) & ~v21;
  v34 = (v45 + v33) & ~v23;
  v35 = (v43 + v34) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v42(v36 + v33, v56, v53);
  (v40)(v36 + v34, v32, v30);
  *(v36 + v35) = v57;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100D97B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[13] = v7;
  v8 = *(v7 - 8);
  v4[14] = v8;
  v4[15] = *(v8 + 64);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100D97C74, 0, 0);
}

uint64_t sub_100D97C74()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v18 = v1;
  v20 = v0[11];
  v21 = v0[15];
  v5 = v0[9];
  v6 = v0[10];
  v22 = v0[8];
  v19 = v0[7];
  v8 = v0[5];
  v7 = v0[6];
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = v1;
  v11 = v3;
  (*(v2 + 16))(v10, v7, v3);
  (*(v6 + 16))(v4, v19, v5);
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = (v21 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v0[17] = v14;
  *(v14 + 16) = v9;
  (*(v2 + 32))(v14 + v12, v18, v11);
  (*(v6 + 32))(v14 + v13, v4, v5);
  *(v14 + ((v20 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v15 = async function pointer to withTimeout<A>(_:block:)[1];
  v16 = swift_task_alloc();
  v0[18] = v16;
  *v16 = v0;
  v16[1] = sub_100D97EA4;

  return withTimeout<A>(_:block:)(v16, 0x40AAD21B3B700000, 3, &unk_1013E8860, v14, &type metadata for () + 8);
}

uint64_t sub_100D97EA4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_100D98030;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_100D97FC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D97FC0()
{
  v1 = v0[16];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D98030()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_100D980A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v11 = type metadata accessor for CentralManager.State();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100D9826C, 0, 0);
}

uint64_t sub_100D9826C()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v0[25] = type metadata accessor for CentralManager();
    v3 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
    v4 = swift_task_alloc();
    v0[26] = v4;
    *v4 = v0;
    v4[1] = sub_100D983DC;

    return static CentralManager.pairingCentralManager.getter();
  }

  else
  {
    v5 = v0[23];
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v12 = v0[12];
    v11 = v0[13];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100D983DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_100D9B600;
  }

  else
  {
    v5 = sub_100D984F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D984F0()
{
  (*(v0[22] + 104))(v0[23], enum case for CentralManager.State.poweredOn(_:), v0[21]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[29] = v2;
  v3 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_100D985EC;
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[23];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_100D985EC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);
  if (v0)
  {
    v5 = sub_100D9B6CC;
  }

  else
  {
    v5 = sub_100D98754;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D98754()
{
  v33 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = type metadata accessor for Logger();
  v0[31] = sub_1000076D4(v2, qword_1016BB490);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v32);
    *(v7 + 12) = 2080;
    v0[6] = v5;
    sub_100D97688(&qword_1016B8628, &type metadata accessor for CentralManager);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v32);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %s has powered on!", v7, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v0[20];
  v11 = v0[15];
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[8];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v15 = *(v13 + 72);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v18 = *(v13 + 16);
  v0[32] = v18;
  v0[33] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v17 + v16, v14, v12);
  v32 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, 1, 0);
  v19 = v32;
  v18(v11, v17 + v16, v12);

  Identifier.id.getter();
  v20 = *(v13 + 8);
  v0[34] = v20;
  v0[35] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v11, v12);
  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    sub_101123D4C(v21 > 1, v22 + 1, 1);
    v19 = v32;
  }

  v0[36] = v19;
  v23 = v0[20];
  v24 = v0[16];
  v25 = v0[17];
  v19[2] = v22 + 1;
  (*(v25 + 32))(v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v23, v24);
  v26 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v31 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v27 = swift_task_alloc();
  v0[37] = v27;
  *v27 = v0;
  v27[1] = sub_100D98B24;
  v28 = v0[27];

  return v31(v19);
}

uint64_t sub_100D98B24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v8 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v5 = sub_100D9B7A4;
  }

  else
  {
    v6 = v3[36];

    v5 = sub_100D98C40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D98C40()
{
  v49 = v0;
  v1 = v0[38];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v13 = v0[38];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:
    v14 = v0[38];
    v16 = v0[32];
    v15 = v0[33];
    v17 = v0[31];
    v18 = v0[14];
    v19 = v0[10];
    v20 = v0[8];

    v16(v18, v20, v19);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[34];
    v25 = v0[14];
    v26 = v0[10];
    if (v23)
    {
      v47 = v0[35];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48[0] = v28;
      *v27 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v24(v25, v26);
      v32 = sub_1000136BC(v29, v31, v48);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing peripheral for %{public}s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {

      v24(v25, v26);
    }

    v33 = v0[27];
    v34 = v0[24];
    sub_100500BC4();
    swift_allocError();
    *v35 = xmmword_1013E84C0;
    *(v35 + 16) = 3;
    swift_willThrow();

    v36 = v0[23];
    v38 = v0[19];
    v37 = v0[20];
    v39 = v0[18];
    v41 = v0[14];
    v40 = v0[15];
    v43 = v0[12];
    v42 = v0[13];

    v44 = v0[1];

    return v44();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v45 = v0[38];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v46 = v0[38];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[38] + 32);
  }

  v0[40] = v3;
  v4 = v0[31];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, v48);
    *(v7 + 12) = 2080;
    v0[5] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, v48);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Retrieved peripheral: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = sub_100D99114;
  v12 = v0[24];

  return sub_100D94F40(v3);
}

uint64_t sub_100D99114(char a1)
{
  v2 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 464) = a1;

  return _swift_task_switch(sub_100D99214, 0, 0);
}

uint64_t sub_100D99214()
{
  v46 = v0;
  if (*(v0 + 464) == 1)
  {
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v1 = qword_10177C218;
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 isInternalBuild];

    if (v3 && (v4 = String._bridgeToObjectiveC()(), v5 = [v1 BOOLForKey:v4], v4, (v5 & 1) != 0))
    {
      v6 = *(v0 + 248);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Pairing notification is enabled! Proceed with pairing", v9, 2u);
      }

      v10 = swift_task_alloc();
      *(v0 + 448) = v10;
      *v10 = v0;
      v10[1] = sub_100D9B358;
      v11 = *(v0 + 320);
      v12 = *(v0 + 192);

      return sub_100D9BE04(v11);
    }

    else
    {
      v29 = swift_task_alloc();
      *(v0 + 336) = v29;
      *v29 = v0;
      v29[1] = sub_100D996BC;
      v30 = *(v0 + 320);
      v31 = *(v0 + 192);

      return sub_100DA5158(v30);
    }
  }

  else
  {
    v14 = *(v0 + 264);
    v15 = *(v0 + 248);
    (*(v0 + 256))(*(v0 + 96), *(v0 + 64), *(v0 + 80));
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v21 = *(v0 + 96);
    v22 = *(v0 + 80);
    if (v18)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v20(v21, v22);
      v28 = sub_1000136BC(v25, v27, &v45);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unsupported local findable accessory %{public}s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      v20(v21, v22);
    }

    v32 = *(v0 + 320);
    v33 = *(v0 + 216);
    v34 = *(v0 + 192);
    sub_100500BC4();
    swift_allocError();
    *v35 = xmmword_10139D960;
    *(v35 + 16) = 3;
    swift_willThrow();

    v36 = *(v0 + 184);
    v38 = *(v0 + 152);
    v37 = *(v0 + 160);
    v39 = *(v0 + 144);
    v41 = *(v0 + 112);
    v40 = *(v0 + 120);
    v43 = *(v0 + 96);
    v42 = *(v0 + 104);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_100D996BC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v7 = *v2;
  *(v3 + 465) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v5 = sub_100D9B96C;
  }

  else
  {
    v5 = sub_100D997D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D997D4()
{
  v55 = v0;
  v1 = *(v0 + 248);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 465);
    v5 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, v54);
    *(v5 + 12) = 2082;
    v6 = sub_100B9F190(v4);
    v8 = sub_1000136BC(v6, v7, v54);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s accountCheckResult: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v0 + 465);
  if (v9 <= 2)
  {
    if (v9 < 2)
    {
      v10 = *(v0 + 344);
      static Task<>.checkCancellation()();
      v11 = *(v0 + 320);
      v12 = *(v0 + 216);
      if (v10)
      {
        v13 = *(v0 + 192);
        v14 = *(v0 + 320);

        v15 = *(v0 + 184);
        v16 = *(v0 + 152);
        v17 = *(v0 + 160);
        v18 = *(v0 + 144);
        v20 = *(v0 + 112);
        v19 = *(v0 + 120);
        v22 = *(v0 + 96);
        v21 = *(v0 + 104);
      }

      else
      {
        v43 = *(v0 + 72);
        sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
        CheckedContinuation.resume(returning:)();

        v44 = *(v0 + 192);

        v45 = *(v0 + 184);
        v46 = *(v0 + 152);
        v47 = *(v0 + 160);
        v48 = *(v0 + 144);
        v50 = *(v0 + 112);
        v49 = *(v0 + 120);
        v52 = *(v0 + 96);
        v51 = *(v0 + 104);
      }

      v23 = *(v0 + 8);

      return v23();
    }

    goto LABEL_9;
  }

  if (v9 == 3)
  {
    v26 = *(v0 + 248);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v54[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, v54);
      _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s Paired to this account. Proceed with pairing", v29, 0xCu);
      sub_100007BAC(v30);
    }

    v31 = swift_task_alloc();
    *(v0 + 352) = v31;
    *v31 = v0;
    v31[1] = sub_100D99D10;
    v32 = *(v0 + 320);
    v33 = *(v0 + 192);

    return sub_100D9BE04(v32);
  }

  else
  {
    if (v9 == 4)
    {
LABEL_9:
      v24 = async function pointer to daemon.getter[1];
      v25 = swift_task_alloc();
      *(v0 + 368) = v25;
      *v25 = v0;
      v25[1] = sub_100D99FB8;

      return daemon.getter();
    }

    v34 = *(v0 + 320);
    v36 = *(v0 + 272);
    v35 = *(v0 + 280);
    v37 = *(v0 + 144);
    v38 = *(v0 + 120);
    v39 = *(v0 + 80);
    Peripheral.id.getter();
    Identifier.id.getter();
    v36(v38, v39);
    v40 = swift_task_alloc();
    *(v0 + 440) = v40;
    *v40 = v0;
    v40[1] = sub_100D9B06C;
    v41 = *(v0 + 192);
    v42 = *(v0 + 144);

    return sub_100DA6CF8(v42, 0, 0xF000000000000000);
  }
}

uint64_t sub_100D99D10()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_100D9BA50;
  }

  else
  {
    v3 = sub_100D99E24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D99E24()
{
  v1 = v0[45];
  static Task<>.checkCancellation()();
  v2 = v0[40];
  v3 = v0[27];
  if (v1)
  {
    v4 = v0[24];
    v5 = v0[40];

    v6 = v0[23];
    v7 = v0[19];
    v8 = v0[20];
    v9 = v0[18];
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
  }

  else
  {
    v15 = v0[9];
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();

    v16 = v0[24];

    v17 = v0[23];
    v18 = v0[19];
    v19 = v0[20];
    v20 = v0[18];
    v22 = v0[14];
    v21 = v0[15];
    v24 = v0[12];
    v23 = v0[13];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100D99FB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v12 = *v1;
  *(v3 + 376) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 384) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalFindableLostModeDetectionService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016BC560, type metadata accessor for LocalFindableLostModeDetectionService);
  *v6 = v12;
  v6[1] = sub_100D9A194;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D9A194(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  if (v1)
  {
    v7 = sub_100D9BB34;
    v8 = 0;
  }

  else
  {
    v9 = v4[47];

    v7 = sub_100D9A2CC;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100D9A2CC()
{
  v1 = *(v0 + 392);
  if (*(v1 + 145) == 1)
  {
    v2 = sub_100D9A310;
  }

  else
  {
    *(v0 + 466) = *(v1 + 146);
    v2 = sub_100D9A580;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D9A310()
{
  v33 = v0;
  v1 = v0[31];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v32 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v32);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Onboarding is showing. Abort pairing.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[50];
  static Task<>.checkCancellation()();
  v7 = v0[49];
  v8 = v0[40];
  v9 = v0[27];
  if (v6)
  {
    v10 = v0[24];
    v11 = v0[49];

    v12 = v0[23];
    v13 = v0[19];
    v14 = v0[20];
    v15 = v0[18];
    v17 = v0[14];
    v16 = v0[15];
    v19 = v0[12];
    v18 = v0[13];
  }

  else
  {
    v21 = v0[9];
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();

    v22 = v0[24];

    v23 = v0[23];
    v24 = v0[19];
    v25 = v0[20];
    v26 = v0[18];
    v28 = v0[14];
    v27 = v0[15];
    v30 = v0[12];
    v29 = v0[13];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100D9A580()
{
  v42 = v0;
  if (*(v0 + 466))
  {
    v1 = *(v0 + 248);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v41 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v41);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Onboarding is showing. Abort pairing.", v4, 0xCu);
      sub_100007BAC(v5);
    }

    v6 = *(v0 + 400);
    static Task<>.checkCancellation()();
    v7 = *(v0 + 392);
    v8 = *(v0 + 320);
    v9 = *(v0 + 216);
    if (v6)
    {
      v10 = *(v0 + 192);
      v11 = *(v0 + 392);

      v12 = *(v0 + 184);
      v13 = *(v0 + 152);
      v14 = *(v0 + 160);
      v15 = *(v0 + 144);
      v17 = *(v0 + 112);
      v16 = *(v0 + 120);
      v19 = *(v0 + 96);
      v18 = *(v0 + 104);
    }

    else
    {
      v31 = *(v0 + 72);
      sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
      CheckedContinuation.resume(returning:)();

      v32 = *(v0 + 192);

      v33 = *(v0 + 184);
      v34 = *(v0 + 152);
      v35 = *(v0 + 160);
      v36 = *(v0 + 144);
      v38 = *(v0 + 112);
      v37 = *(v0 + 120);
      v40 = *(v0 + 96);
      v39 = *(v0 + 104);
    }

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v21 = *(v0 + 320);
    v23 = *(v0 + 272);
    v22 = *(v0 + 280);
    v24 = *(v0 + 152);
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);
    Peripheral.id.getter();
    Identifier.id.getter();
    v23(v25, v26);
    v27 = swift_task_alloc();
    *(v0 + 408) = v27;
    *v27 = v0;
    v27[1] = sub_100D9A8B0;
    v28 = *(v0 + 192);
    v29 = *(v0 + 152);

    return sub_100D8FD14(v29);
  }
}

uint64_t sub_100D9A8B0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *(*v2 + 136);
  v7 = *v2;
  *(v4 + 416) = v1;

  v8 = (v6 + 8);
  v9 = *(v4 + 152);
  v10 = *(v4 + 128);
  if (v1)
  {
    (*v8)(v9, v10);
    v11 = sub_100D9BC24;
  }

  else
  {
    *(v4 + 467) = a1 & 1;
    (*v8)(v9, v10);
    v11 = sub_100D9AA40;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100D9AA40()
{
  v38 = v0;
  v1 = *(v0 + 467);
  v2 = *(v0 + 248);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v1 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, v37);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_1000136BC(1702195828, 0xE400000000000000, v37);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Not paired, isFindMyEnabled = %s. Proceed with pairing", v6, 0x16u);
      swift_arrayDestroy();
    }

    v7 = swift_task_alloc();
    *(v0 + 424) = v7;
    *v7 = v0;
    v7[1] = sub_100D9ADBC;
    v8 = *(v0 + 320);
    v9 = *(v0 + 192);

    return sub_100D9BE04(v8);
  }

  else
  {
    if (v5)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "FindMy pairing was declined previously. Ignoring.", v11, 2u);
    }

    v12 = *(v0 + 416);

    static Task<>.checkCancellation()();
    v13 = *(v0 + 392);
    v14 = *(v0 + 320);
    v15 = *(v0 + 216);
    if (v12)
    {
      v16 = *(v0 + 192);
      v17 = *(v0 + 392);

      v18 = *(v0 + 184);
      v19 = *(v0 + 152);
      v20 = *(v0 + 160);
      v21 = *(v0 + 144);
      v23 = *(v0 + 112);
      v22 = *(v0 + 120);
      v25 = *(v0 + 96);
      v24 = *(v0 + 104);
    }

    else
    {
      v27 = *(v0 + 72);
      sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
      CheckedContinuation.resume(returning:)();

      v28 = *(v0 + 192);

      v29 = *(v0 + 184);
      v30 = *(v0 + 152);
      v31 = *(v0 + 160);
      v32 = *(v0 + 144);
      v34 = *(v0 + 112);
      v33 = *(v0 + 120);
      v36 = *(v0 + 96);
      v35 = *(v0 + 104);
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_100D9ADBC()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_100D9BD14;
  }

  else
  {
    v3 = sub_100D9AED0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D9AED0()
{
  v1 = v0[49];

  v2 = v0[54];
  static Task<>.checkCancellation()();
  v3 = v0[40];
  v4 = v0[27];
  if (v2)
  {
    v5 = v0[24];
    v6 = v0[40];

    v7 = v0[23];
    v8 = v0[19];
    v9 = v0[20];
    v10 = v0[18];
    v12 = v0[14];
    v11 = v0[15];
    v14 = v0[12];
    v13 = v0[13];
  }

  else
  {
    v16 = v0[9];
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();

    v17 = v0[24];

    v18 = v0[23];
    v19 = v0[19];
    v20 = v0[20];
    v21 = v0[18];
    v23 = v0[14];
    v22 = v0[15];
    v25 = v0[12];
    v24 = v0[13];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D9B06C()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100D9B1C4, 0, 0);
}

uint64_t sub_100D9B1C4()
{
  v1 = v0[43];
  static Task<>.checkCancellation()();
  v2 = v0[40];
  v3 = v0[27];
  if (v1)
  {
    v4 = v0[24];
    v5 = v0[40];

    v6 = v0[23];
    v7 = v0[19];
    v8 = v0[20];
    v9 = v0[18];
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
  }

  else
  {
    v15 = v0[9];
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();

    v16 = v0[24];

    v17 = v0[23];
    v18 = v0[19];
    v19 = v0[20];
    v20 = v0[18];
    v22 = v0[14];
    v21 = v0[15];
    v24 = v0[12];
    v23 = v0[13];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100D9B358()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_100D9B888;
  }

  else
  {
    v3 = sub_100D9B46C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D9B46C()
{
  v1 = v0[57];
  static Task<>.checkCancellation()();
  v2 = v0[40];
  v3 = v0[27];
  if (v1)
  {
    v4 = v0[24];
    v5 = v0[40];

    v6 = v0[23];
    v7 = v0[19];
    v8 = v0[20];
    v9 = v0[18];
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
  }

  else
  {
    v15 = v0[9];
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();

    v16 = v0[24];

    v17 = v0[23];
    v18 = v0[19];
    v19 = v0[20];
    v20 = v0[18];
    v22 = v0[14];
    v21 = v0[15];
    v24 = v0[12];
    v23 = v0[13];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100D9B600()
{
  v1 = v0[24];

  v2 = v0[28];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D9B6CC()
{
  v1 = v0[27];
  v2 = v0[24];

  v3 = v0[30];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100D9B7A4()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[24];

  v4 = v0[39];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100D9B888()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[24];

  v4 = v0[57];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100D9B96C()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[24];

  v4 = v0[43];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100D9BA50()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[24];

  v4 = v0[45];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100D9BB34()
{
  v1 = v0[47];
  v2 = v0[40];
  v3 = v0[27];
  v4 = v0[24];

  v5 = v0[50];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  v13 = v0[12];
  v12 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100D9BC24()
{
  v1 = v0[49];
  v2 = v0[40];
  v3 = v0[27];
  v4 = v0[24];

  v5 = v0[52];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  v13 = v0[12];
  v12 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100D9BD14()
{
  v1 = v0[49];
  v2 = v0[40];
  v3 = v0[27];
  v4 = v0[24];

  v5 = v0[54];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  v13 = v0[12];
  v12 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100D9BE04(uint64_t a1)
{
  v2[423] = v1;
  v2[422] = a1;
  v2[424] = *v1;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[425] = swift_task_alloc();
  v4 = type metadata accessor for BinaryDecoder();
  v2[426] = v4;
  v5 = *(v4 - 8);
  v2[427] = v5;
  v6 = *(v5 + 64) + 15;
  v2[428] = swift_task_alloc();
  v7 = type metadata accessor for BinaryEncoder();
  v2[429] = v7;
  v8 = *(v7 - 8);
  v2[430] = v8;
  v9 = *(v8 + 64) + 15;
  v2[431] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[432] = v10;
  v11 = *(v10 - 8);
  v2[433] = v11;
  v12 = *(v11 + 64) + 15;
  v2[434] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[435] = v13;
  v14 = *(v13 - 8);
  v2[436] = v14;
  v15 = *(v14 + 64) + 15;
  v2[437] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[438] = swift_task_alloc();
  v17 = type metadata accessor for AccessoryProductInfo();
  v2[439] = v17;
  v18 = *(v17 - 8);
  v2[440] = v18;
  v19 = *(v18 + 64) + 15;
  v2[441] = swift_task_alloc();
  v2[442] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v2[443] = swift_task_alloc();
  v2[444] = swift_task_alloc();
  v2[445] = swift_task_alloc();
  v21 = *(*(type metadata accessor for RawAccessoryMetadata(0) - 8) + 64) + 15;
  v2[446] = swift_task_alloc();
  v22 = type metadata accessor for AccessoryMetadata(0);
  v2[447] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v2[448] = swift_task_alloc();
  v2[449] = swift_task_alloc();
  v2[450] = swift_task_alloc();
  v2[451] = swift_task_alloc();
  v24 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v2[452] = swift_task_alloc();
  v25 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[453] = v25;
  v26 = *(v25 - 8);
  v2[454] = v26;
  v27 = *(v26 + 64) + 15;
  v2[455] = swift_task_alloc();
  v2[456] = swift_task_alloc();
  v28 = type metadata accessor for UUID();
  v2[457] = v28;
  v29 = *(v28 - 8);
  v2[458] = v29;
  v30 = *(v29 + 64) + 15;
  v2[459] = swift_task_alloc();
  v2[460] = swift_task_alloc();
  v2[461] = swift_task_alloc();
  v2[462] = swift_task_alloc();

  return _swift_task_switch(sub_100D9C2F0, v1, 0);
}

uint64_t sub_100D9C2F0()
{
  My = type metadata accessor for Feature.FindMy();
  v0[407] = My;
  v0[408] = sub_100D97688(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 404);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 404);
  if (My)
  {
    v3 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    v0[463] = v4;
    *v4 = v0;
    v4[1] = sub_100D9C6A0;

    return daemon.getter();
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016BB490);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Feature.FindMy.lineUp is disabled!", v8, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v9 = xmmword_10139D960;
    *(v9 + 16) = 3;
    swift_willThrow();
    v10 = v0[462];
    v11 = v0[461];
    v12 = v0[460];
    v13 = v0[459];
    v14 = v0[456];
    v15 = v0[455];
    v16 = v0[452];
    v17 = v0[451];
    v18 = v0[450];
    v19 = v0[449];
    v22 = v0[448];
    v23 = v0[446];
    v24 = v0[445];
    v25 = v0[444];
    v26 = v0[443];
    v27 = v0[442];
    v28 = v0[441];
    v29 = v0[438];
    v30 = v0[437];
    v31 = v0[434];
    v32 = v0[431];
    v33 = v0[428];
    v34 = v0[425];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100D9C6A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 3704);
  v12 = *v1;
  *(v3 + 3712) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 3720) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100D9C87C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D9C87C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3720);
  v10 = *v2;
  v3[466] = a1;
  v3[467] = v1;

  if (v1)
  {
    v5 = v3[423];
    v6 = sub_100D9CC94;
  }

  else
  {
    v7 = v3[464];
    v8 = v3[423];

    v6 = sub_100D9C9A8;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D9C9A8()
{
  v1 = v0[466];
  v2 = v0[462];
  v3 = v0[456];
  v4 = v0[454];
  v5 = v0[453];
  v6 = v0[422];
  v0[468] = type metadata accessor for Peripheral();
  v0[469] = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();
  v7 = *(v4 + 8);
  v0[470] = v7;
  v0[471] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return _swift_task_switch(sub_100D9CAC8, v1, 0);
}

uint64_t sub_100D9CAC8()
{
  v1 = *(v0[466] + 128);
  v2 = swift_task_alloc();
  v0[472] = v2;
  *v2 = v0;
  v2[1] = sub_100D9CB68;
  v3 = v0[462];
  v4 = v0[452];

  return sub_100C57B00(v4, v3);
}

uint64_t sub_100D9CB68()
{
  v2 = *v1;
  v3 = *(*v1 + 3776);
  v4 = *v1;
  *(*v1 + 3784) = v0;

  v5 = *(v2 + 3384);
  if (v0)
  {
    v6 = sub_100D9DE04;
  }

  else
  {
    v6 = sub_100D9CE4C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D9CC94()
{
  v1 = v0[464];

  v27 = v0[467];
  v2 = v0[462];
  v3 = v0[461];
  v4 = v0[460];
  v5 = v0[459];
  v6 = v0[456];
  v7 = v0[455];
  v8 = v0[452];
  v9 = v0[451];
  v10 = v0[450];
  v11 = v0[449];
  v14 = v0[448];
  v15 = v0[446];
  v16 = v0[445];
  v17 = v0[444];
  v18 = v0[443];
  v19 = v0[442];
  v20 = v0[441];
  v21 = v0[438];
  v22 = v0[437];
  v23 = v0[434];
  v24 = v0[431];
  v25 = v0[428];
  v26 = v0[425];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100D9CE4C()
{
  v162 = v0;
  v1 = *(v0 + 3616);
  v2 = type metadata accessor for LocalFindableAccessoryRecord();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
  if (v3 != 1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 3696);
    v17 = *(v0 + 3688);
    v18 = *(v0 + 3664);
    v19 = *(v0 + 3656);
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_1016BB490);
    (*(v18 + 16))(v17, v16, v19);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 3688);
    v25 = *(v0 + 3664);
    v26 = *(v0 + 3656);
    if (v23)
    {
      v159 = v22;
      v27 = swift_slowAlloc();
      v161[0] = swift_slowAlloc();
      *v27 = 136446466;
      *(v27 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, v161);
      *(v27 + 12) = 2082;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v24, v26);
      v32 = sub_1000136BC(v28, v30, v161);

      *(v27 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v21, v159, "%{public}s Found existing record for %{public}s. Not pairing", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v31 = *(v25 + 8);
      v31(v24, v26);
    }

    v80 = *(v0 + 3728);
    v81 = *(v0 + 3696);
    v82 = *(v0 + 3656);
    sub_100500BC4();
    swift_allocError();
    *v83 = xmmword_10139D920;
    *(v83 + 16) = 3;
    swift_willThrow();

    v31(v81, v82);
    goto LABEL_19;
  }

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 3376);
  v5 = type metadata accessor for Logger();
  *(v0 + 3792) = sub_1000076D4(v5, qword_1016BB490);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 3744);
    v9 = *(v0 + 3376);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v161[0] = v11;
    *v10 = 136315138;
    *(v0 + 3336) = v9;
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;

    v15 = sub_1000136BC(v12, v14, v161);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Reading DIS from peripheral: %s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {
    v33 = *(v0 + 3376);
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 3800) = qword_1016BFE70;
  *(v0 + 3320) = 0x7365547265646E75;
  *(v0 + 3328) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 4106) == 1)
  {
    v34 = *(v0 + 3768);
    v35 = *(v0 + 3760);
    v36 = *(v0 + 3752);
    v37 = *(v0 + 3744);
    v38 = *(v0 + 3680);
    v39 = *(v0 + 3640);
    v40 = *(v0 + 3624);
    v41 = *(v0 + 3376);
    dispatch thunk of PeripheralProtocol.id.getter();
    Identifier.id.getter();
    v35(v39, v40);
    v42 = sub_100314604(76, 1106);
    if (v43 >> 60 == 15)
    {
      __break(1u);
      return withTimeout<A>(_:block:)(v42, v43, v44, v45, v46, v47);
    }

    v48 = v42;
    v49 = v43;
    v50 = *(v0 + 3680);
    v51 = *(v0 + 3664);
    v52 = *(v0 + 3656);
    v53 = *(v0 + 3600);
    v54 = *(v0 + 3576);
    v55 = v54[9];
    v56 = type metadata accessor for AirTagVersionNumber();
    (*(*(v56 - 8) + 56))(v53 + v55, 1, 1, v56);
    v57 = v53 + v54[11];
    *v57 = 0;
    *(v57 + 8) = 0;
    *(v57 + 16) = 1;
    v58 = (v53 + v54[16]);
    *v58 = 0;
    v58[1] = 0xE000000000000000;
    (*(v51 + 32))(v53, v50, v52);
    v59 = (v53 + v54[5]);
    *v59 = v48;
    v59[1] = v49;
    *(v53 + v54[8]) = 4063235;
    v60 = (v53 + v54[7]);
    *v60 = 0;
    v60[1] = 0;
    v61 = (v53 + v54[6]);
    *v61 = 0;
    v61[1] = 0;
    v62 = v53 + v54[10];
    *v62 = 0;
    *(v62 + 4) = 1;
    v63 = v53 + v54[12];
    *v63 = 0;
    *(v63 + 8) = 1;
    v64 = v53 + v54[13];
    *v64 = 0;
    *(v64 + 4) = 1;
    *(v53 + v54[14]) = 4;
    *(v53 + v54[15]) = 5;
    v65 = v53 + v54[17];
    *v65 = 0;
    *(v65 + 4) = 1;
    v66 = *(v0 + 3784);
    v67 = *(v0 + 3792);
    v68 = *(v0 + 3608);
    v69 = *(v0 + 3584);
    sub_100DD921C(*(v0 + 3600), v68, type metadata accessor for AccessoryMetadata);
    sub_100DD9284(v68, v69, type metadata accessor for AccessoryMetadata);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 3584);
    if (v72)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v161[0] = v75;
      *v74 = 136446210;
      v76 = sub_100230E34();
      v78 = v77;
      sub_100DD92EC(v73, type metadata accessor for AccessoryMetadata);
      v79 = sub_1000136BC(v76, v78, v161);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "DIS: %{public}s", v74, 0xCu);
      sub_100007BAC(v75);
    }

    else
    {

      sub_100DD92EC(v73, type metadata accessor for AccessoryMetadata);
    }

    v99 = *(v0 + 3800);
    *(v0 + 3272) = 0x7365547265646E75;
    *(v0 + 3280) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 4105) == 1)
    {
      v100 = *(v0 + 3672);
      v101 = *(v0 + 3664);
      v102 = *(v0 + 3656);
      v103 = *(v0 + 3560);
      v104 = *(v0 + 3520);
      v105 = *(v0 + 3512);
      type metadata accessor for BeaconStore(0);
      UUID.init()();
      sub_10110F124(0, v103);
      (*(v101 + 8))(v100, v102);
      (*(v104 + 56))(v103, 0, 1, v105);
      v106 = *(v0 + 3544);
      v107 = *(v0 + 3520);
      v108 = *(v0 + 3512);
      sub_1000D2A70(*(v0 + 3560), v106, &qword_101697268, &qword_101394FE0);
      v109 = (*(v107 + 48))(v106, 1, v108);
      v110 = *(v0 + 3792);
      v111 = *(v0 + 3544);
      if (v109 == 1)
      {
        sub_10000B3A8(v111, &qword_101697268, &qword_101394FE0);
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&_mh_execute_header, v112, v113, "Missing product info!", v114, 2u);
        }

        v115 = *(v0 + 3728);
        v116 = *(v0 + 3696);
        v117 = *(v0 + 3664);
        v118 = *(v0 + 3656);
        v119 = *(v0 + 3608);
        v120 = *(v0 + 3560);

        sub_100500BC4();
        swift_allocError();
        *v121 = xmmword_1013E84D0;
        *(v121 + 16) = 3;
        swift_willThrow();

        sub_10000B3A8(v120, &qword_101697268, &qword_101394FE0);
        sub_100DD92EC(v119, type metadata accessor for AccessoryMetadata);
        (*(v117 + 8))(v116, v118);
        goto LABEL_19;
      }

      v125 = *(v0 + 3536);
      v126 = *(v0 + 3528);
      sub_100DD921C(v111, v125, type metadata accessor for AccessoryProductInfo);
      sub_100DD9284(v125, v126, type metadata accessor for AccessoryProductInfo);
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();
      v129 = os_log_type_enabled(v127, v128);
      v130 = *(v0 + 3528);
      if (v129)
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v161[0] = v132;
        *v131 = 136446210;
        v133 = sub_1011A0624(v132);
        v135 = v134;
        sub_100DD92EC(v130, type metadata accessor for AccessoryProductInfo);
        v136 = sub_1000136BC(v133, v135, v161);

        *(v131 + 4) = v136;
        _os_log_impl(&_mh_execute_header, v127, v128, "Product info: %{public}s)", v131, 0xCu);
        sub_100007BAC(v132);
      }

      else
      {

        sub_100DD92EC(v130, type metadata accessor for AccessoryProductInfo);
      }

      v137 = *(v0 + 3384);
      sub_100DBD674(*(v0 + 3608), *(v0 + 3536));
      if (v66)
      {
        v138 = *(v0 + 3728);
        v139 = *(v0 + 3696);
        v140 = *(v0 + 3664);
        v141 = *(v0 + 3656);
        v142 = *(v0 + 3608);
        v143 = *(v0 + 3560);
        v144 = *(v0 + 3536);

        sub_100DD92EC(v144, type metadata accessor for AccessoryProductInfo);
        sub_10000B3A8(v143, &qword_101697268, &qword_101394FE0);
        sub_100DD92EC(v142, type metadata accessor for AccessoryMetadata);
        (*(v140 + 8))(v139, v141);
LABEL_19:
        v84 = *(v0 + 3696);
        v85 = *(v0 + 3688);
        v86 = *(v0 + 3680);
        v87 = *(v0 + 3672);
        v88 = *(v0 + 3648);
        v89 = *(v0 + 3640);
        v90 = *(v0 + 3616);
        v91 = *(v0 + 3608);
        v92 = *(v0 + 3600);
        v93 = *(v0 + 3592);
        v147 = *(v0 + 3584);
        v148 = *(v0 + 3568);
        v149 = *(v0 + 3560);
        v150 = *(v0 + 3552);
        v151 = *(v0 + 3544);
        v152 = *(v0 + 3536);
        v153 = *(v0 + 3528);
        v154 = *(v0 + 3504);
        v155 = *(v0 + 3496);
        v156 = *(v0 + 3472);
        v157 = *(v0 + 3448);
        v158 = *(v0 + 3424);
        v160 = *(v0 + 3400);

        v94 = *(v0 + 8);

        return v94();
      }

      v145 = *(v0 + 3376);
      v146 = async function pointer to withTimeout<A>(_:block:)[1];

      v42 = swift_task_alloc();
      *(v0 + 3856) = v42;
      *v42 = v0;
      v42[1] = sub_100D9ED54;
      v46 = *(v0 + 3376);
      v45 = &unk_1013E8898;
      v43 = 0xA055690D9DB80000;
      v47 = &type metadata for () + 8;
      v44 = 1;

      return withTimeout<A>(_:block:)(v42, v43, v44, v45, v46, v47);
    }

    type metadata accessor for AccessoryMetadataManager();
    v122 = swift_task_alloc();
    *(v0 + 3840) = v122;
    *v122 = v0;
    v122[1] = sub_100D9EC28;
    v123 = *(v0 + 3608);
    v124 = *(v0 + 3552);

    return sub_100359F48(v124, v123, 3);
  }

  else
  {
    v96 = swift_task_alloc();
    *(v0 + 3808) = v96;
    *v96 = v0;
    v96[1] = sub_100D9DFE0;
    v97 = *(v0 + 3568);
    v98 = *(v0 + 3376);

    return sub_100D6D190(v97, v98);
  }
}

uint64_t sub_100D9DE04()
{
  v1 = v0[466];
  v2 = v0[462];
  v3 = v0[458];
  v4 = v0[457];

  (*(v3 + 8))(v2, v4);
  v30 = v0[473];
  v5 = v0[462];
  v6 = v0[461];
  v7 = v0[460];
  v8 = v0[459];
  v9 = v0[456];
  v10 = v0[455];
  v11 = v0[452];
  v12 = v0[451];
  v13 = v0[450];
  v14 = v0[449];
  v17 = v0[448];
  v18 = v0[446];
  v19 = v0[445];
  v20 = v0[444];
  v21 = v0[443];
  v22 = v0[442];
  v23 = v0[441];
  v24 = v0[438];
  v25 = v0[437];
  v26 = v0[434];
  v27 = v0[431];
  v28 = v0[428];
  v29 = v0[425];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D9DFE0()
{
  v2 = *(*v1 + 3808);
  v5 = *v1;
  *(*v1 + 3816) = v0;

  if (v0)
  {
    v3 = sub_100D9E18C;
  }

  else
  {
    v3 = sub_100D9E0F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D9E0F4()
{
  v1 = v0[477];
  sub_100231DE4(v0[446], v0[449]);
  v0[478] = v1;
  if (v1)
  {
    v0[479] = v1;
    v2 = v0[423];
    v3 = sub_100D9EA4C;
  }

  else
  {
    v2 = v0[423];
    v3 = sub_100D9E1B0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100D9E1B0()
{
  v91 = v0;
  v1 = *(v0 + 3824);
  v2 = *(v0 + 3792);
  v3 = *(v0 + 3608);
  v4 = *(v0 + 3584);
  sub_100DD921C(*(v0 + 3592), v3, type metadata accessor for AccessoryMetadata);
  sub_100DD9284(v3, v4, type metadata accessor for AccessoryMetadata);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 3584);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v90[0] = v10;
    *v9 = 136446210;
    v11 = sub_100230E34();
    v13 = v12;
    sub_100DD92EC(v8, type metadata accessor for AccessoryMetadata);
    v14 = sub_1000136BC(v11, v13, v90);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "DIS: %{public}s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100DD92EC(v8, type metadata accessor for AccessoryMetadata);
  }

  v15 = *(v0 + 3800);
  *(v0 + 3272) = 0x7365547265646E75;
  *(v0 + 3280) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 4105) == 1)
  {
    v16 = *(v0 + 3672);
    v17 = *(v0 + 3664);
    v18 = *(v0 + 3656);
    v19 = *(v0 + 3560);
    v20 = *(v0 + 3520);
    v21 = *(v0 + 3512);
    type metadata accessor for BeaconStore(0);
    UUID.init()();
    sub_10110F124(0, v19);
    (*(v17 + 8))(v16, v18);
    (*(v20 + 56))(v19, 0, 1, v21);
    v22 = *(v0 + 3544);
    v23 = *(v0 + 3520);
    v24 = *(v0 + 3512);
    sub_1000D2A70(*(v0 + 3560), v22, &qword_101697268, &qword_101394FE0);
    v25 = (*(v23 + 48))(v22, 1, v24);
    v26 = *(v0 + 3792);
    v27 = *(v0 + 3544);
    if (v25 == 1)
    {
      sub_10000B3A8(v27, &qword_101697268, &qword_101394FE0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Missing product info!", v30, 2u);
      }

      v31 = *(v0 + 3728);
      v32 = *(v0 + 3696);
      v33 = *(v0 + 3664);
      v34 = *(v0 + 3656);
      v35 = *(v0 + 3608);
      v36 = *(v0 + 3560);

      sub_100500BC4();
      swift_allocError();
      *v37 = xmmword_1013E84D0;
      *(v37 + 16) = 3;
      swift_willThrow();

      sub_10000B3A8(v36, &qword_101697268, &qword_101394FE0);
      sub_100DD92EC(v35, type metadata accessor for AccessoryMetadata);
      (*(v33 + 8))(v32, v34);
      goto LABEL_17;
    }

    v42 = *(v0 + 3536);
    v43 = *(v0 + 3528);
    sub_100DD921C(v27, v42, type metadata accessor for AccessoryProductInfo);
    sub_100DD9284(v42, v43, type metadata accessor for AccessoryProductInfo);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 3528);
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v90[0] = v49;
      *v48 = 136446210;
      v50 = sub_1011A0624(v49);
      v52 = v51;
      sub_100DD92EC(v47, type metadata accessor for AccessoryProductInfo);
      v53 = sub_1000136BC(v50, v52, v90);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, "Product info: %{public}s)", v48, 0xCu);
      sub_100007BAC(v49);
    }

    else
    {

      sub_100DD92EC(v47, type metadata accessor for AccessoryProductInfo);
    }

    v54 = *(v0 + 3384);
    sub_100DBD674(*(v0 + 3608), *(v0 + 3536));
    if (v1)
    {
      v55 = *(v0 + 3728);
      v56 = *(v0 + 3696);
      v57 = *(v0 + 3664);
      v58 = *(v0 + 3656);
      v59 = *(v0 + 3608);
      v60 = *(v0 + 3560);
      v61 = *(v0 + 3536);

      sub_100DD92EC(v61, type metadata accessor for AccessoryProductInfo);
      sub_10000B3A8(v60, &qword_101697268, &qword_101394FE0);
      sub_100DD92EC(v59, type metadata accessor for AccessoryMetadata);
      (*(v57 + 8))(v56, v58);
LABEL_17:
      v62 = *(v0 + 3696);
      v63 = *(v0 + 3688);
      v64 = *(v0 + 3680);
      v65 = *(v0 + 3672);
      v66 = *(v0 + 3648);
      v67 = *(v0 + 3640);
      v68 = *(v0 + 3616);
      v69 = *(v0 + 3608);
      v70 = *(v0 + 3600);
      v71 = *(v0 + 3592);
      v77 = *(v0 + 3584);
      v78 = *(v0 + 3568);
      v79 = *(v0 + 3560);
      v80 = *(v0 + 3552);
      v81 = *(v0 + 3544);
      v82 = *(v0 + 3536);
      v83 = *(v0 + 3528);
      v84 = *(v0 + 3504);
      v85 = *(v0 + 3496);
      v86 = *(v0 + 3472);
      v87 = *(v0 + 3448);
      v88 = *(v0 + 3424);
      v89 = *(v0 + 3400);

      v72 = *(v0 + 8);

      return v72();
    }

    v73 = *(v0 + 3376);
    v74 = async function pointer to withTimeout<A>(_:block:)[1];

    v75 = swift_task_alloc();
    *(v0 + 3856) = v75;
    *v75 = v0;
    v75[1] = sub_100D9ED54;
    v76 = *(v0 + 3376);

    return withTimeout<A>(_:block:)(v75, 0xA055690D9DB80000, 1, &unk_1013E8898, v76, &type metadata for () + 8);
  }

  else
  {
    type metadata accessor for AccessoryMetadataManager();
    v38 = swift_task_alloc();
    *(v0 + 3840) = v38;
    *v38 = v0;
    v38[1] = sub_100D9EC28;
    v39 = *(v0 + 3608);
    v40 = *(v0 + 3552);

    return sub_100359F48(v40, v39, 3);
  }
}

uint64_t sub_100D9EA4C()
{
  v1 = v0[466];
  v2 = v0[462];
  v3 = v0[458];
  v4 = v0[457];

  (*(v3 + 8))(v2, v4);
  v30 = v0[479];
  v5 = v0[462];
  v6 = v0[461];
  v7 = v0[460];
  v8 = v0[459];
  v9 = v0[456];
  v10 = v0[455];
  v11 = v0[452];
  v12 = v0[451];
  v13 = v0[450];
  v14 = v0[449];
  v17 = v0[448];
  v18 = v0[446];
  v19 = v0[445];
  v20 = v0[444];
  v21 = v0[443];
  v22 = v0[442];
  v23 = v0[441];
  v24 = v0[438];
  v25 = v0[437];
  v26 = v0[434];
  v27 = v0[431];
  v28 = v0[428];
  v29 = v0[425];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D9EC28()
{
  v2 = *v1;
  v3 = *(*v1 + 3840);
  v4 = *v1;
  *(*v1 + 3848) = v0;

  v5 = *(v2 + 3384);
  if (v0)
  {
    v6 = sub_100DA4F5C;
  }

  else
  {
    v6 = sub_100DA4964;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D9ED54()
{
  v2 = *v1;
  v3 = *(*v1 + 3856);
  v4 = *v1;
  *(*v1 + 3864) = v0;

  v5 = *(v2 + 3384);
  v6 = *(v2 + 3376);

  if (v0)
  {
    v7 = sub_100D9F0D0;
  }

  else
  {
    v7 = sub_100D9EE9C;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100D9EE9C()
{
  v27 = v0;
  v1 = v0[474];
  v2 = v0[422];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[468];
    v6 = v0[422];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    v0[421] = v6;
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;

    v12 = sub_1000136BC(v9, v11, &v26);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connected to peripheral: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = v0[422];
  }

  v14 = v0[469];
  v15 = v0[468];
  v16 = v0[458];
  v17 = v0[457];
  v18 = v0[456];
  v19 = v0[438];
  v20 = v0[422];
  dispatch thunk of PeripheralProtocol.id.getter();
  (*(v16 + 56))(v19, 1, 1, v17);
  v21 = swift_task_alloc();
  v0[484] = v21;
  *v21 = v0;
  v21[1] = sub_100D9F308;
  v22 = v0[456];
  v23 = v0[438];
  v24 = v0[423];

  return sub_100D70938(v22, v23);
}

uint64_t sub_100D9F0D0()
{
  v1 = v0[466];
  v2 = v0[462];
  v3 = v0[458];
  v4 = v0[457];
  v5 = v0[451];
  v6 = v0[445];
  v7 = v0[442];

  sub_100DD92EC(v7, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v6, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v5, type metadata accessor for AccessoryMetadata);
  (*(v3 + 8))(v2, v4);
  v33 = v0[483];
  v8 = v0[462];
  v9 = v0[461];
  v10 = v0[460];
  v11 = v0[459];
  v12 = v0[456];
  v13 = v0[455];
  v14 = v0[452];
  v15 = v0[451];
  v16 = v0[450];
  v17 = v0[449];
  v20 = v0[448];
  v21 = v0[446];
  v22 = v0[445];
  v23 = v0[444];
  v24 = v0[443];
  v25 = v0[442];
  v26 = v0[441];
  v27 = v0[438];
  v28 = v0[437];
  v29 = v0[434];
  v30 = v0[431];
  v31 = v0[428];
  v32 = v0[425];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100D9F308()
{
  v1 = *(*v0 + 3872);
  v2 = *(*v0 + 3768);
  v3 = *(*v0 + 3760);
  v4 = *(*v0 + 3648);
  v5 = *(*v0 + 3624);
  v6 = *(*v0 + 3504);
  v7 = *(*v0 + 3384);
  v9 = *v0;

  sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
  v3(v4, v5);

  return _swift_task_switch(sub_100D9F4B0, v7, 0);
}

uint64_t sub_100D9F4B0()
{
  v1 = *(v0 + 3800);
  *(v0 + 3288) = 0x7365547265646E75;
  *(v0 + 3296) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 4104))
  {
    v2 = *(v0 + 3496);
    *(v0 + 3896) = type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    v3 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
    v4 = swift_task_alloc();
    *(v0 + 3904) = v4;
    *v4 = v0;
    v4[1] = sub_100D9F78C;
    v5 = *(v0 + 3752);
    v6 = *(v0 + 3744);
    v7 = *(v0 + 3496);
    v8 = *(v0 + 3376);

    return dispatch thunk of PeripheralProtocol.subscript.getter(v7, v6, v5);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 3880) = v9;
    *v9 = v0;
    v9[1] = sub_100D9F64C;
    v10 = *(v0 + 3384);
    v11 = *(v0 + 3376);

    return sub_100DA5158(v11);
  }
}

uint64_t sub_100D9F64C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3880);
  v6 = *v2;
  *(v4 + 3888) = v1;

  v7 = *(v4 + 3384);
  if (v1)
  {
    v8 = sub_100DA472C;
  }

  else
  {
    *(v4 + 4107) = a1;
    v8 = sub_100DA432C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D9F78C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3904);
  v6 = *v2;
  v4[489] = a1;
  v4[490] = v1;

  v7 = v3[437];
  v8 = v3[436];
  v9 = v3[435];
  v10 = v3[423];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100D9FBC0;
  }

  else
  {
    v11 = sub_100D9F914;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100D9F914()
{
  v1 = v0[434];
  v0[491] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service);
  v3 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v4 = swift_task_alloc();
  v0[492] = v4;
  *v4 = v0;
  v4[1] = sub_100D9FA1C;
  v5 = v0[489];
  v6 = v0[487];
  v7 = v0[434];

  return dispatch thunk of ServiceProtocol.subscript.getter(v7, v6, v2);
}

uint64_t sub_100D9FA1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3936);
  v6 = *v2;
  v4[493] = a1;
  v4[494] = v1;

  v7 = v3[489];
  v8 = v3[434];
  v9 = v3[433];
  v10 = v3[432];
  v11 = v3[423];
  (*(v9 + 8))(v8, v10);

  if (v1)
  {
    v12 = sub_100DA0064;
  }

  else
  {
    v12 = sub_100D9FDF8;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100D9FBC0()
{
  v1 = v0[466];
  v2 = v0[462];
  v3 = v0[458];
  v4 = v0[457];
  v5 = v0[451];
  v6 = v0[445];
  v7 = v0[442];

  sub_100DD92EC(v7, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v6, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v5, type metadata accessor for AccessoryMetadata);
  (*(v3 + 8))(v2, v4);
  v33 = v0[490];
  v8 = v0[462];
  v9 = v0[461];
  v10 = v0[460];
  v11 = v0[459];
  v12 = v0[456];
  v13 = v0[455];
  v14 = v0[452];
  v15 = v0[451];
  v16 = v0[450];
  v17 = v0[449];
  v20 = v0[448];
  v21 = v0[446];
  v22 = v0[445];
  v23 = v0[444];
  v24 = v0[443];
  v25 = v0[442];
  v26 = v0[441];
  v27 = v0[438];
  v28 = v0[437];
  v29 = v0[434];
  v30 = v0[431];
  v31 = v0[428];
  v32 = v0[425];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100D9FDF8()
{
  v25 = v0;
  v1 = v0[474];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy services and Pairing characteristic.", v4, 2u);
  }

  v5 = v0[474];
  v6 = v0[422];

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[468];
    v10 = v0[422];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v0[420] = v10;
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;

    v16 = sub_1000136BC(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pairing peripheral: %s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {
    v17 = v0[422];
  }

  v18 = async function pointer to dispatch thunk of PeripheralProtocol.pair()[1];
  v19 = swift_task_alloc();
  v0[495] = v19;
  *v19 = v0;
  v19[1] = sub_100DA029C;
  v20 = v0[469];
  v21 = v0[468];
  v22 = v0[422];

  return dispatch thunk of PeripheralProtocol.pair()(v21, v20);
}

uint64_t sub_100DA0064()
{
  v1 = v0[466];
  v2 = v0[462];
  v3 = v0[458];
  v4 = v0[457];
  v5 = v0[451];
  v6 = v0[445];
  v7 = v0[442];

  sub_100DD92EC(v7, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v6, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v5, type metadata accessor for AccessoryMetadata);
  (*(v3 + 8))(v2, v4);
  v33 = v0[494];
  v8 = v0[462];
  v9 = v0[461];
  v10 = v0[460];
  v11 = v0[459];
  v12 = v0[456];
  v13 = v0[455];
  v14 = v0[452];
  v15 = v0[451];
  v16 = v0[450];
  v17 = v0[449];
  v20 = v0[448];
  v21 = v0[446];
  v22 = v0[445];
  v23 = v0[444];
  v24 = v0[443];
  v25 = v0[442];
  v26 = v0[441];
  v27 = v0[438];
  v28 = v0[437];
  v29 = v0[434];
  v30 = v0[431];
  v31 = v0[428];
  v32 = v0[425];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DA029C()
{
  v2 = *v1;
  v3 = *(*v1 + 3960);
  v4 = *v1;
  *(*v1 + 3968) = v0;

  v5 = *(v2 + 3384);
  if (v0)
  {
    v6 = sub_100DA0D9C;
  }

  else
  {
    v6 = sub_100DA03C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DA03C8()
{
  v102 = v0;
  v1 = *(v0 + 3792);
  v2 = *(v0 + 3376);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3744);
    v6 = *(v0 + 3376);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v101[0] = v8;
    *v7 = 136315138;
    *(v0 + 3352) = v6;
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;

    v12 = sub_1000136BC(v9, v11, v101);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Paired peripheral: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = *(v0 + 3376);
  }

  v14 = *(v0 + 3968);
  v15 = *(v0 + 3448);
  v16 = *(v0 + 3424);
  v17 = *(v0 + 3384);
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  sub_100DBDD8C(&v92);
  if (v14)
  {
    v18 = *(v0 + 3944);
    v19 = *(v0 + 3728);
    v20 = *(v0 + 3664);
    v88 = *(v0 + 3656);
    v90 = *(v0 + 3696);
    v84 = *(v0 + 3560);
    v86 = *(v0 + 3608);
    v21 = *(v0 + 3536);
    v22 = *(v0 + 3448);
    v23 = *(v0 + 3440);
    v24 = *(v0 + 3432);
    v25 = *(v0 + 3424);
    v26 = *(v0 + 3416);
    v27 = *(v0 + 3408);

    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
    sub_100DD92EC(v21, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v84, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v86, type metadata accessor for AccessoryMetadata);
    (*(v20 + 8))(v90, v88);
    v58 = *(v0 + 3696);
    v59 = *(v0 + 3688);
    v60 = *(v0 + 3680);
    v61 = *(v0 + 3672);
    v62 = *(v0 + 3648);
    v63 = *(v0 + 3640);
    v64 = *(v0 + 3616);
    v65 = *(v0 + 3608);
    v66 = *(v0 + 3600);
    v67 = *(v0 + 3592);
    v75 = *(v0 + 3584);
    v76 = *(v0 + 3568);
    v77 = *(v0 + 3560);
    v78 = *(v0 + 3552);
    v79 = *(v0 + 3544);
    v80 = *(v0 + 3536);
    v81 = *(v0 + 3528);
    v82 = *(v0 + 3504);
    v83 = *(v0 + 3496);
    v85 = *(v0 + 3472);
    v87 = *(v0 + 3448);
    v89 = *(v0 + 3424);
    v91 = *(v0 + 3400);

    v68 = *(v0 + 8);

    return v68();
  }

  else
  {
    v28 = v99;
    *(v0 + 256) = v98;
    *(v0 + 272) = v28;
    *(v0 + 288) = v100;
    v29 = v95;
    *(v0 + 192) = v94;
    *(v0 + 208) = v29;
    v30 = v97;
    *(v0 + 224) = v96;
    *(v0 + 240) = v30;
    v31 = v93;
    *(v0 + 160) = v92;
    *(v0 + 176) = v31;
    SharingCircleWildAdvertisementKey.init(key:)(v0 + 160);
    v32 = v99;
    *(v0 + 544) = v98;
    *(v0 + 560) = v32;
    *(v0 + 576) = v100;
    v33 = v95;
    *(v0 + 480) = v94;
    *(v0 + 496) = v33;
    v34 = v97;
    *(v0 + 512) = v96;
    *(v0 + 528) = v34;
    v35 = v93;
    *(v0 + 448) = v92;
    *(v0 + 464) = v35;
    v36 = *(v0 + 272);
    *(v0 + 2128) = *(v0 + 256);
    *(v0 + 2144) = v36;
    *(v0 + 2160) = *(v0 + 288);
    v37 = *(v0 + 208);
    *(v0 + 2064) = *(v0 + 192);
    *(v0 + 2080) = v37;
    v38 = *(v0 + 240);
    *(v0 + 2096) = *(v0 + 224);
    *(v0 + 2112) = v38;
    v39 = *(v0 + 176);
    *(v0 + 2032) = *(v0 + 160);
    *(v0 + 2048) = v39;
    v40 = *(v0 + 3792);
    sub_100DD93E8(v0 + 448, v0 + 592);
    sub_100DD93E8(v0 + 448, v0 + 736);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    sub_100DD9444(v0 + 448);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v101[0] = v44;
      *v43 = 136315138;
      v45 = *(v0 + 560);
      *(v0 + 2416) = *(v0 + 544);
      *(v0 + 2432) = v45;
      *(v0 + 2448) = *(v0 + 576);
      v46 = *(v0 + 496);
      *(v0 + 2352) = *(v0 + 480);
      *(v0 + 2368) = v46;
      v47 = *(v0 + 528);
      *(v0 + 2384) = *(v0 + 512);
      *(v0 + 2400) = v47;
      v48 = *(v0 + 464);
      *(v0 + 2320) = *(v0 + 448);
      *(v0 + 2336) = v48;
      sub_100DD93E8(v0 + 448, v0 + 2176);
      v49 = String.init<A>(describing:)();
      v51 = sub_1000136BC(v49, v50, v101);

      *(v43 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "Sending command: %s", v43, 0xCu);
      sub_100007BAC(v44);
    }

    v52 = *(v0 + 3448);
    v53 = *(v0 + 560);
    *(v0 + 976) = *(v0 + 544);
    *(v0 + 992) = v53;
    *(v0 + 1008) = *(v0 + 576);
    v54 = *(v0 + 496);
    *(v0 + 912) = *(v0 + 480);
    *(v0 + 928) = v54;
    v55 = *(v0 + 528);
    *(v0 + 944) = *(v0 + 512);
    *(v0 + 960) = v55;
    v56 = *(v0 + 464);
    *(v0 + 880) = *(v0 + 448);
    *(v0 + 896) = v56;
    *(v0 + 3976) = sub_100DD9498();
    *(v0 + 3984) = BinaryEncoder.encode<A>(_:)();
    *(v0 + 3992) = v57;
    v70 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic);
    v71 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v72 = swift_task_alloc();
    *(v0 + 4000) = v72;
    *v72 = v0;
    v72[1] = sub_100DA0FE0;
    v73 = *(v0 + 3944);
    v74 = *(v0 + 3928);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v74, v70);
  }
}
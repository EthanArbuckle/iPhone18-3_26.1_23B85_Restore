uint64_t sub_1005380F0()
{
  v33 = v0;
  v1 = *(v0 + 2288);
  v2 = *(v0 + 1920);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 2288);
  v7 = *(v0 + 2264);
  v8 = *(v0 + 2256);
  if (v5)
  {
    v9 = *(v0 + 1920);
    v10 = *(v0 + 1912);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v32);
    _os_log_impl(&_mh_execute_header, v3, v4, "Pre-generating assessment for workflow ID %{public}s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v7 + 8);
  v13(v6, v8);
  *(v0 + 2296) = v13;
  v14 = *(v0 + 1936);
  v15 = *(v0 + 1928);
  sub_10053CD68(*(v0 + 2248));
  v16 = *(v0 + 2248);
  v17 = *(v0 + 2232);
  sub_10053D32C(v16);
  sub_10000BBC4(v16, v17, &qword_1008350C0, &unk_1006C0B30);
  v18 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  *(v0 + 2304) = v18;
  v19 = *(v18 - 8);
  *(v0 + 2312) = v19;
  v20 = *(v19 + 48);
  *(v0 + 2320) = v20;
  *(v0 + 2328) = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v21 = v20(v17, 1, v18);
  v22 = *(v0 + 2232);
  if (v21 == 1)
  {
    sub_10000BE18(*(v0 + 2232), &qword_1008350C0, &unk_1006C0B30);
    v23 = 0;
  }

  else
  {
    JWSSignedJSON.payload.getter();
    v24 = *(v0 + 368);
    *(v0 + 464) = *(v0 + 352);
    *(v0 + 480) = v24;
    *(v0 + 493) = *(v0 + 381);
    v25 = *(v0 + 304);
    *(v0 + 400) = *(v0 + 288);
    *(v0 + 416) = v25;
    v26 = *(v0 + 336);
    *(v0 + 432) = *(v0 + 320);
    *(v0 + 448) = v26;
    (*(v19 + 8))(v22, v18);
    sub_10009E858(v0 + 400);
    v23 = *(v0 + 507);
  }

  v27 = *(v0 + 1952);
  v28 = *(v0 + 1944);
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  *(v0 + 1832) = type metadata accessor for DeviceInformationProvider();
  *(v0 + 1840) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 1808));

  DeviceInformationProvider.init()();
  sub_10004D91C((v0 + 1808), v23, &unk_1006E7958, v29, (v0 + 736));
  v30 = swift_task_alloc();
  *(v0 + 2336) = v30;
  *v30 = v0;
  v30[1] = sub_10053860C;

  return sub_10004ADF8(v0 + 152);
}

uint64_t sub_10053860C()
{
  v2 = *(*v1 + 2336);
  v5 = *v1;
  *(*v1 + 2344) = v0;

  if (v0)
  {
    v3 = sub_10053AFFC;
  }

  else
  {
    v3 = sub_100538720;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100538720()
{
  v1 = v0[35];
  v0[294] = v0[34];
  v0[295] = v1;

  v2 = swift_task_alloc();
  v0[296] = v2;
  *v2 = v0;
  v2[1] = sub_1005387CC;

  return sub_10004BA48((v0 + 2));
}

uint64_t sub_1005387CC()
{
  v2 = *v1;
  v3 = *(*v1 + 2368);
  v7 = *v1;
  *(*v1 + 2376) = v0;

  if (v0)
  {
    v4 = *(v2 + 2360);
    sub_10004D8EC(v2 + 152);

    v5 = sub_10053B1E4;
  }

  else
  {
    v5 = sub_1005388F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005388F4()
{
  v344 = v0;
  v1 = v0;
  v2 = v0[17];
  v3 = v0[18];
  v4 = (v0[281] + *(v0[280] + 20));
  v5 = *v4;
  v6 = v4[1];

  v7 = Data.init(base64Encoded:options:)();
  if (v8 >> 60 == 15)
  {
    v9 = v1[295];
    v10 = v1[281];
    v11 = v1[247];
    v12 = v1[246];
    v13 = v1[245];

    sub_10004D8EC((v1 + 2));
    sub_10004D8EC((v1 + 19));

    (*(v12 + 104))(v11, enum case for DIPError.Code.internalError(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10004DEF0((v1 + 92));
LABEL_15:
    v23 = v10;
    goto LABEL_16;
  }

  v332 = v7;
  v335 = v8;
  if (qword_100832C98 != -1)
  {
    swift_once();
  }

  v14 = v1[297];
  v15 = v1[295];
  v16 = v1[294];
  v17 = off_1008475C8;
  os_unfair_lock_lock(off_1008475C8 + 6);
  v18 = *(v17 + 2);

  os_unfair_lock_unlock(v17 + 6);
  v19 = sub_100544838(v16, v15);
  v329 = v20;
  if (v14)
  {
    v21 = v1[295];
    v22 = v1[281];

    sub_10004DEF0((v1 + 92));

    sub_10004D8EC((v1 + 2));
    sub_10004D8EC((v1 + 19));
    sub_10000BD94(v332, v335);

    v23 = v22;
LABEL_16:
    sub_100537B90(v23, type metadata accessor for AugmentedProfile);
    v37 = v1[286];
    v38 = v1[285];
    v39 = v1[284];
    v40 = v1[281];
    v41 = v1[279];
    v42 = v1[278];
    v43 = v1[277];
    v44 = v1;
    v45 = v1[274];
    v46 = v44[273];
    v47 = v44[272];
    v292 = v44[269];
    v295 = v44[268];
    v299 = v44[267];
    v302 = v44[266];
    v305 = v44[265];
    v308 = v44[262];
    v313 = v44[261];
    v317 = v44[260];
    v320 = v44[257];
    v323 = v44[255];
    v327 = v44[254];
    v330 = v44[251];
    v333 = v44[250];
    v336 = v44[247];

    v48 = v44[1];
    goto LABEL_17;
  }

  v326 = v19;

  if (v329 >> 60 == 15)
  {
    v24 = v1[295];
    v10 = v1[281];
    v25 = v1[247];
    v26 = v1[246];
    v27 = v1[245];

    sub_10004D8EC((v1 + 2));
    sub_10004D8EC((v1 + 19));

    (*(v26 + 104))(v25, enum case for DIPError.Code.internalError(_:), v27);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10004DEF0((v1 + 92));
LABEL_14:
    sub_10000BD94(v332, v335);
    goto LABEL_15;
  }

  v10 = v1[281];
  v28 = (v10 + *(v1[280] + 24));
  if (!v28[1])
  {
    v32 = v329;
    goto LABEL_13;
  }

  v29 = *v28;
  v30 = Data.init(base64Encoded:options:)();
  if (v31 >> 60 == 15)
  {
    v32 = v329;
    v10 = v1[281];
LABEL_13:
    v33 = v1[295];
    v34 = v1[247];
    v35 = v1[246];
    v36 = v1[245];

    sub_10004D8EC((v1 + 2));
    sub_10004D8EC((v1 + 19));

    (*(v35 + 104))(v34, enum case for DIPError.Code.internalError(_:), v36);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10004DEF0((v1 + 92));
    sub_10000BD94(v326, v32);
    goto LABEL_14;
  }

  v324 = v31;
  v318 = v30;
  v50 = v1[277];
  v51 = *(v1 + 397);
  UUID.init()();
  v314 = UUID.uuidString.getter();
  v53 = v52;
  if (v51 == 1)
  {
    v54 = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
    v55.super.super.isa = NSNumber.init(integerLiteral:)(2).super.super.isa;
  }

  else
  {
    v54 = &type metadata for Int;
    v55.super.super.isa = 1;
  }

  v56 = v1[277];
  v1[238] = v54;
  v1[235] = v55.super.super.isa;
  sub_10001F348(v1 + 235, v1 + 231);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v343 = &_swiftEmptyDictionarySingleton;
  sub_10016CC40(v1 + 231, 0xD000000000000012, 0x800000010071DEF0, isUniquelyReferenced_nonNull_native);
  v58 = UUID.uuidString.getter();
  v60 = v59;
  v61 = type metadata accessor for JSONEncoder();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();

  JSONEncoder.init()();
  v1[220] = v58;
  v1[221] = v60;
  v1[222] = v314;
  v1[223] = v53;
  v1[224] = v2;
  v1[225] = v3;
  sub_10053B49C();
  v64 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v296 = v60;
  v280 = v61;
  v309 = v53;
  v65 = v1[274];
  v66 = v1[269];
  v67 = v1[259];
  v290 = v1[258];
  v293 = *(v1 + 397);
  v68 = v64;
  v70 = v69;

  sub_100007224(&qword_10083C068, &qword_1006DEC10);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1006BF520;
  *(v71 + 32) = v68;
  *(v71 + 40) = v70;
  v300 = v71;
  v72 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v282 = *(v72 - 8);
  v285 = v72;
  (*(v282 + 56))(v65, 1, 1);
  (*(v67 + 56))(v66, 1, 1, v290);
  v303 = v68;
  v306 = v70;
  if (v293 == 1)
  {
    v73 = v1[291];
    v74 = v1[290];
    v75 = v1[288];
    v76 = v1[278];
    sub_10000BBC4(v1[281], v76, &qword_1008350C0, &unk_1006C0B30);
    if (v74(v76, 1, v75) == 1)
    {
      v77 = v1[278];
      sub_10000B8B8(v68, v306);
      sub_10000BE18(v77, &qword_1008350C0, &unk_1006C0B30);
      v78 = 0;
      v79 = 0;
    }

    else
    {
      v115 = v1[289];
      v116 = v1[288];
      v117 = v1[278];
      sub_10000B8B8(v303, v306);
      JWSSignedJSON.payload.getter();
      v118 = *(v1 + 37);
      *(v1 + 43) = *(v1 + 36);
      *(v1 + 44) = v118;
      *(v1 + 717) = *(v1 + 605);
      v119 = *(v1 + 33);
      *(v1 + 39) = *(v1 + 32);
      *(v1 + 40) = v119;
      v120 = *(v1 + 35);
      *(v1 + 41) = *(v1 + 34);
      *(v1 + 42) = v120;
      (*(v115 + 8))(v117, v116);
      sub_10000BBC4((v1 + 78), (v1 + 198), &qword_100835658, &qword_1006C1A50);
      sub_10009E858((v1 + 78));
      if (v1[79])
      {
        v79 = v1[85];
        v121 = v1[84];

        sub_10000BE18((v1 + 78), &qword_100835658, &qword_1006C1A50);
        v78 = v121;
      }

      else
      {
        v78 = 0;
        v79 = 0;
      }
    }

    sub_1005259FC(v1[273], v1[268], v78, v79, v58, v296, v1[294], v1[295]);
    v159 = v1[274];
    v160 = v1[273];
    v161 = v1[269];
    v162 = v1[268];

    sub_1000B2764(v160, v159, &qword_100835180, &unk_1006C0CE0);
    sub_1000B2764(v162, v161, &qword_100835248, &unk_1006E7940);
    if (!(*(v282 + 48))(v159, 1, v285))
    {
      v163 = v1[274];
      EncryptedDataContainer.data.getter();
      if (v164)
      {
        v165 = v1[265];
        v166 = v1[264];
        v167 = v1[263];
        static String.Encoding.utf8.getter();
        v168 = String.data(using:allowLossyConversion:)();
        v170 = v169;

        v171 = *(v166 + 8);
        v172 = v165;
        v173 = v170;
        v171(v172, v167);
        if (v170 >> 60 != 15)
        {
          v291 = v168;
          if ((*(v1[259] + 48))(v1[269], 1, v1[258]) || (EncryptedDataContainer.data.getter(), !v200))
          {
            sub_10000BD94(v168, v170);
          }

          else
          {
            v201 = v1[265];
            v342 = v1;
            v202 = v1[263];
            static String.Encoding.utf8.getter();
            v203 = String.data(using:allowLossyConversion:)();
            v205 = v204;

            v171(v201, v202);
            if (v205 >> 60 == 15)
            {
              sub_10000BD94(v291, v173);
            }

            else
            {
              v219 = v205;
              sub_10000B8B8(v291, v173);
              v221 = *(v300 + 2);
              v220 = *(v300 + 3);
              v222 = v220 >> 1;
              v223 = v221 + 1;
              if (v220 >> 1 <= v221)
              {
                v300 = sub_1003C55E4((v220 > 1), v221 + 1, 1, v300);
                v220 = *(v300 + 3);
                v222 = v220 >> 1;
              }

              *(v300 + 2) = v223;
              v224 = &v300[16 * v221];
              *(v224 + 4) = v291;
              *(v224 + 5) = v173;
              v225 = v221 + 2;
              if (v222 < v225)
              {
                v300 = sub_1003C55E4((v220 > 1), v225, 1, v300);
              }

              sub_10000BD94(v291, v173);
              *(v300 + 2) = v225;
              v226 = &v300[16 * v223];
              *(v226 + 4) = v203;
              *(v226 + 5) = v219;
            }

            v1 = v342;
          }
        }
      }
    }
  }

  else
  {
    sub_10000B8B8(v68, v70);
  }

  v80 = v1 + 214;
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v81 = v1[295];
  v82 = v1[240];
  v83 = v1;
  v84 = v1[239];
  LODWORD(v291) = MKBGetDeviceLockState();
  os_unfair_lock_lock(v17 + 6);
  v85 = *(v17 + 2);

  os_unfair_lock_unlock(v17 + 6);

  *(v83 + 55) = xmmword_1006BF650;
  *(v83 + 56) = xmmword_1006DE2A0;
  *(v83 + 57) = xmmword_1006BF650;
  *(v83 + 232) = 0;
  v83[117] = 0xBFF0000000000000;
  v338 = v85[4];
  v86 = swift_allocObject();
  v86[2] = v85;
  v86[3] = v84;
  v86[4] = v82;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_10053B4F4;
  *(v87 + 24) = v86;
  v83[218] = sub_10021E8E8;
  v83[219] = v87;
  v83[214] = _NSConcreteStackBlock;
  v83[215] = 1107296256;
  v83[216] = sub_10057E264;
  v83[217] = &unk_100816060;
  v88 = _Block_copy(v80);
  v89 = v83[219];

  v297 = v85;

  sub_1000363B4(v318, v324);
  v90 = v338;

  dispatch_sync(v90, v88);

  _Block_release(v88);
  LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

  if (v88)
  {
    __break(1u);
LABEL_69:
    swift_once();
LABEL_67:
    v245 = v85[257];
    v246 = v85[255];
    v247 = qword_1008823D8;
    v248 = *(qword_1008823D8 + 16);
    static DispatchWorkItemFlags.barrier.getter();
    v249 = swift_task_alloc();
    *(v249 + 16) = v247;
    *(v249 + 24) = v245;
    v250 = v85;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    v251 = v85[267];
    v277 = v85[262];
    v279 = v85[257];
    v252 = v85[255];
    v253 = v85[253];
    v254 = v85[252];
    v281 = v85[251];
    v284 = v85[254];
    v255 = v85[250];
    v256 = v85[249];
    v316 = v250[248];
    v311 = v250[240];
    v288 = v250[239];

    sub_10004D8EC((v250 + 2));
    sub_10004D8EC((v250 + 19));

    v322 = *(v253 + 8);
    v322(v252, v254);
    sub_10000BE18(v251, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v277, &qword_100847540, &qword_1006E7938);
    sub_100537B90(v279, type metadata accessor for DIPPregeneratedAssessment);
    Date.init()();
    static Date.- infix(_:_:)();
    v257 = *(v256 + 8);
    v257(v255, v316);
    v258 = *(v247 + 16);
    static DispatchWorkItemFlags.barrier.getter();
    v259 = swift_task_alloc();
    v259[2] = v247;
    v259[3] = v288;
    v259[4] = v311;
    v259[5] = v281;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    v312 = v250[281];
    v289 = v250[277];
    v260 = v250[276];
    v261 = v250;
    v262 = v250[275];
    v263 = v250;
    v264 = v250[254];
    v265 = v250[252];
    v266 = v261[251];
    v267 = v261[248];
    sub_10004DEF0((v261 + 92));
    sub_10000BD94(v326, v329);
    sub_10000BD94(v332, v335);
    sub_10000B90C(v291, v297);
    sub_10053B540(v300);
    sub_10000BD94(v318, v324);
    sub_10000B90C(v303, v306);

    v268 = v264;
    v129 = v263;
    v322(v268, v265);
    (*(v260 + 8))(v289, v262);
    v257(v266, v267);
    v150 = v312;
    goto LABEL_40;
  }

  v91 = (v83 + 110);
  v92 = v83[240];
  v93 = v83[239];
  v94 = *(v297 + 16);
  v95 = swift_task_alloc();
  *(v95 + 16) = v297;
  *(v95 + 24) = v93;
  *(v95 + 32) = v92;
  *(v95 + 40) = 9;
  *(v95 + 48) = v326;
  *(v95 + 56) = v329;
  *(v95 + 64) = v332;
  *(v95 + 72) = v335;
  *(v95 + 80) = v318;
  *(v95 + 88) = v324;
  *(v95 + 96) = &_swiftEmptyDictionarySingleton;
  *(v95 + 104) = v300;
  *(v95 + 112) = 0;
  *(v95 + 120) = 0;
  *(v95 + 128) = 0;
  *(v95 + 136) = 0;
  *(v95 + 144) = v83 + 110;
  OS_dispatch_queue.sync<A>(execute:)();
  v96 = v83;
  v97 = v83 + 126;
  v98 = (v83 + 134);
  v339 = v96 + 206;
  v286 = v291 - 1;
  v99 = v96;
  v100 = v96[285];
  v101 = v99[240];

  sub_10000BD94(v318, v324);

  v102 = *v91;
  v103 = v91[1];
  *v98 = *v91;
  *(v98 + 1) = v103;
  v104 = v91[2];
  v105 = v91[3];
  *(v98 + 2) = v104;
  *(v98 + 3) = v105;
  *v97 = v102;
  v97[1] = v103;
  v97[2] = v104;
  v97[3] = v105;
  v300 = v98;
  sub_10053B594(v98, (v99 + 102));
  sub_10053B540(v97);
  v278 = *(v99 + 280);
  v291 = v99[136];
  v297 = v99[137];
  sub_10000B8B8(v291, v297);
  defaultLogger()();

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();

  v108 = os_log_type_enabled(v106, v107);
  v109 = v99[287];
  v110 = v99[285];
  v111 = v99[283];
  v283 = v99[282];
  if (v108)
  {
    v273 = v99[239];
    v274 = v99[240];
    v275 = v99[287];
    v112 = swift_slowAlloc();
    v113 = v110;
    v114 = swift_slowAlloc();
    v343 = v114;
    *v112 = 136446210;
    *(v112 + 4) = sub_100141FE4(v273, v274, &v343);
    _os_log_impl(&_mh_execute_header, v106, v107, "Successfully pre-generated an assessment for workflow ID %{public}s", v112, 0xCu);
    sub_10000BB78(v114);

    v275(v113, v283);
  }

  else
  {

    v109(v110, v283);
  }

  v122 = *(v99 + 397);
  v123 = *(v300 + 1);
  *v339 = *v300;
  v339[1] = v123;
  v124 = *(v300 + 3);
  v339[2] = *(v300 + 2);
  v339[3] = v124;
  sub_10053B594(v300, (v99 + 142));
  v125 = sub_100536E08(v339, 0, v286 < 2);
  v127 = v126;
  sub_10053B540(v300);
  v128 = v122 == 1;
  v129 = v99;
  if (v128)
  {
    v276 = v125;
    v340 = v127;
    v130 = v99;
    v131 = v99 + 150;
    v132 = v99[274];
    v133 = v99[271];
    v134 = v99[270];
    v135 = v99[269];
    v136 = v99[267];
    v137 = v130[262];
    sub_10000BBC4(v132, v137, &qword_100835180, &unk_1006C0CE0);
    (*(v133 + 56))(v137, 0, 1, v134);
    sub_10000BBC4(v135, v136, &qword_100835248, &unk_1006E7940);
    v138 = Data.base64EncodedString(options:)(0);
    v139 = *(v280 + 48);
    v140 = *(v280 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v141 = 49;
    if (*(v130 + 152))
    {
      v141 = 50;
    }

    v142 = v130[28];
    v143 = v130[29];
    v144 = v130[30];
    v145 = v130[31];
    v146 = v130[32];
    v147 = v130[33];
    v130[150] = v141;
    v130[151] = 0xE100000000000000;
    v130[152] = v142;
    v130[153] = v143;
    v130[154] = v144;
    v130[155] = v145;
    v130[156] = v146;
    v130[157] = v147;
    sub_10009F038();

    v148 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v174 = v131[1];
    *(v130 + 83) = *v131;
    *(v130 + 84) = v174;
    v175 = v131[3];
    *(v130 + 85) = v131[2];
    *(v130 + 86) = v175;
    v176 = v148;
    v178 = v177;
    sub_10004D770((v130 + 166));
    v179 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v176, v178);
    v180 = 49;
    if (*(v130 + 16))
    {
      v180 = 50;
    }

    v182 = v130[11];
    v181 = v130[12];
    v183 = v130[13];
    v184 = v130[14];
    v185 = v130[15];
    v186 = v130[16];
    v130[174] = v180;
    v130[175] = 0xE100000000000000;
    v130[176] = v182;
    v130[177] = v181;
    v130[178] = v183;
    v130[179] = v184;
    v130[180] = v185;
    v130[181] = v186;

    v187 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v189 = v130[271];
    v190 = v130[270];
    v271 = v130[262];
    v191 = v130[261];
    v192 = *(v130 + 88);
    *(v130 + 95) = *(v130 + 87);
    *(v130 + 96) = v192;
    v193 = *(v130 + 90);
    *(v130 + 97) = *(v130 + 89);
    *(v130 + 98) = v193;
    v194 = v187;
    v195 = v188;
    sub_10004D770((v130 + 190));
    v196 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v194, v195);
    sub_10000BBC4(v271, v191, &qword_100847540, &qword_1006E7938);
    if ((*(v189 + 48))(v191, 1, v190) == 1)
    {
      sub_10000BE18(v130[261], &qword_100847540, &qword_1006E7938);
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      v197 = v130[270];
      sub_1000B1FC8(v130[261], v130[272], &qword_100835180, &unk_1006C0CE0);
      sub_10053B62C();
      v198 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v199 = v130[272];
      v206 = v198;
      v208 = v207;
      v209 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v209._countAndFlagsBits;
      object = v209._object;
      sub_10000B90C(v206, v208);
      sub_10000BE18(v199, &qword_100835180, &unk_1006C0CE0);
    }

    v210 = v130[266];
    v211 = v130[259];
    v212 = v130[258];
    sub_10000BBC4(v130[267], v210, &qword_100835248, &unk_1006E7940);
    v213 = (*(v211 + 48))(v210, 1, v212);
    v214 = v130[266];
    if (v213 == 1)
    {

      sub_10000BE18(v214, &qword_100835248, &unk_1006E7940);
      v287 = 0;
      v270 = 0;
    }

    else
    {
      (*(v130[259] + 32))(v130[260], v130[266], v130[258]);
      sub_1000BA30C(&qword_1008357B0, &qword_1008352C8, &qword_1006C0D50);
      v215 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v216 = v130[260];
      v217 = v130[259];
      v218 = v130[258];
      v227 = v215;
      v229 = v228;
      v230 = Data.base64EncodedString(options:)(0);
      v287 = v230._countAndFlagsBits;
      v270 = v230._object;

      sub_10000B90C(v227, v229);
      (*(v217 + 8))(v216, v218);
    }

    v231 = v130[295];
    v232 = v130[294];
    v233 = v130[257];
    v234 = v130[256];
    v235 = v130[240];
    v85 = v130;
    v236 = v130[239];
    v237 = v234[5];

    Date.init()();
    *v233 = v236;
    v233[1] = v235;
    *(v233 + v234[6]) = v138;
    v238 = (v233 + v234[7]);
    *v238 = v276;
    v238[1] = v340;
    v239 = (v233 + v234[8]);
    *v239 = v232;
    v239[1] = v231;
    *(v233 + v234[9]) = v179;
    v240 = (v233 + v234[10]);
    *v240 = v2;
    v240[1] = v3;
    *(v233 + v234[11]) = v196;
    v241 = (v233 + v234[12]);
    *v241 = v314;
    v241[1] = v309;
    *(v233 + v234[13]) = v278;
    *(v233 + v234[14]) = &_swiftEmptyDictionarySingleton;
    v242 = (v233 + v234[15]);
    *v242 = countAndFlagsBits;
    v242[1] = object;
    v243 = (v233 + v234[16]);
    *v243 = v287;
    v243[1] = v270;
    v244 = qword_100832CA8;

    if (v244 == -1)
    {
      goto LABEL_67;
    }

    goto LABEL_69;
  }

  v149 = v99[281];
  (*(v99[276] + 8))(v99[277], v99[275]);
  sub_10000B90C(v303, v306);
  sub_10000BD94(v318, v324);
  sub_10004DEF0((v99 + 92));
  sub_10004D8EC((v99 + 2));
  sub_10004D8EC((v99 + 19));

  sub_10000B90C(v291, v297);
  sub_10053B540(v300);
  sub_10000BD94(v326, v329);
  sub_10000BD94(v332, v335);

  v150 = v149;
LABEL_40:
  sub_100537B90(v150, type metadata accessor for AugmentedProfile);
  v151 = v129[286];
  v152 = v129[285];
  v153 = v129[284];
  v154 = v129[281];
  v155 = v129[279];
  v156 = v129[278];
  v157 = v129[277];
  v158 = v129[274];
  v294 = v129[273];
  v298 = v129[272];
  v301 = v129[268];
  v304 = v129[267];
  v307 = v129[266];
  v310 = v129[265];
  v315 = v129[262];
  v319 = v129[261];
  v321 = v129[260];
  v325 = v129[257];
  v328 = v129[255];
  v331 = v129[254];
  v334 = v129[251];
  v337 = v129[250];
  v341 = v129[247];
  sub_10000BE18(v129[269], &qword_100835248, &unk_1006E7940);
  sub_10000BE18(v158, &qword_100835180, &unk_1006C0CE0);

  v48 = v129[1];
LABEL_17:

  return v48();
}

uint64_t sub_10053AFFC()
{
  v1 = v0[281];
  sub_10004DEF0((v0 + 92));
  sub_100537B90(v1, type metadata accessor for AugmentedProfile);
  v28 = v0[293];
  v2 = v0[286];
  v3 = v0[285];
  v4 = v0[284];
  v5 = v0[281];
  v6 = v0[279];
  v7 = v0[278];
  v8 = v0[277];
  v9 = v0[274];
  v10 = v0[273];
  v11 = v0[272];
  v14 = v0[269];
  v15 = v0[268];
  v16 = v0[267];
  v17 = v0[266];
  v18 = v0[265];
  v19 = v0[262];
  v20 = v0[261];
  v21 = v0[260];
  v22 = v0[257];
  v23 = v0[255];
  v24 = v0[254];
  v25 = v0[251];
  v26 = v0[250];
  v27 = v0[247];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10053B1E4()
{
  v1 = v0[281];
  sub_10004DEF0((v0 + 92));
  sub_100537B90(v1, type metadata accessor for AugmentedProfile);
  v28 = v0[297];
  v2 = v0[286];
  v3 = v0[285];
  v4 = v0[284];
  v5 = v0[281];
  v6 = v0[279];
  v7 = v0[278];
  v8 = v0[277];
  v9 = v0[274];
  v10 = v0[273];
  v11 = v0[272];
  v14 = v0[269];
  v15 = v0[268];
  v16 = v0[267];
  v17 = v0[266];
  v18 = v0[265];
  v19 = v0[262];
  v20 = v0[261];
  v21 = v0[260];
  v22 = v0[257];
  v23 = v0[255];
  v24 = v0[254];
  v25 = v0[251];
  v26 = v0[250];
  v27 = v0[247];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10053B3CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10053B404()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10053CD48;

  return sub_100532CB4(v2, v3);
}

unint64_t sub_10053B49C()
{
  result = qword_100847548;
  if (!qword_100847548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847548);
  }

  return result;
}

uint64_t sub_10053B510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10053B62C()
{
  result = qword_100847550;
  if (!qword_100847550)
  {
    sub_10000B870(&qword_100835180, &unk_1006C0CE0);
    sub_1000BA30C(&qword_100835738, &unk_100835208, &unk_1006C0D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847550);
  }

  return result;
}

unint64_t sub_10053B6DC()
{
  result = qword_100847558;
  if (!qword_100847558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847558);
  }

  return result;
}

unint64_t sub_10053B730()
{
  result = qword_100847560;
  if (!qword_100847560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847560);
  }

  return result;
}

unint64_t sub_10053B784()
{
  result = qword_100847568;
  if (!qword_100847568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847568);
  }

  return result;
}

unint64_t sub_10053B7D8()
{
  result = qword_100847570;
  if (!qword_100847570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847570);
  }

  return result;
}

unint64_t sub_10053B82C()
{
  result = qword_100847588;
  if (!qword_100847588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847588);
  }

  return result;
}

unint64_t sub_10053B880()
{
  result = qword_100847590;
  if (!qword_100847590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847590);
  }

  return result;
}

unint64_t sub_10053B8D4()
{
  result = qword_10084A1B0;
  if (!qword_10084A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10084A1B0);
  }

  return result;
}

uint64_t sub_10053B928()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10053B9C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10053BA08()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10053BA54()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10053BAA0()
{
  v1 = *(sub_100007224(&unk_10084A160, &unk_1006E7978) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100007224(&unk_10084A130, &qword_1006E9ED0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = v0 + v3;
  v10 = type metadata accessor for AugmentedProfile(0);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    v11 = sub_100007224(&qword_100835138, &qword_1006C0B58);
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v9, 1, v11))
    {
      (*(v12 + 8))(v9, v11);
    }

    v13 = *(v9 + v10[5] + 8);

    v14 = *(v9 + v10[6] + 8);

    v15 = *(v9 + v10[7] + 8);
  }

  v16 = *(v0 + v4);

  v17 = v0 + v7;
  v18 = type metadata accessor for DIPPregeneratedAssessment(0);
  if (!(*(*(v18 - 1) + 48))(v0 + v7, 1, v18))
  {
    v19 = *(v17 + 8);

    v20 = v18[5];
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 8))(v17 + v20, v21);
    v22 = *(v17 + v18[6] + 8);

    v23 = *(v17 + v18[7] + 8);

    v24 = *(v17 + v18[8] + 8);

    v25 = *(v17 + v18[9] + 8);

    v26 = *(v17 + v18[10] + 8);

    v27 = *(v17 + v18[11] + 8);

    v28 = *(v17 + v18[12] + 8);

    v29 = *(v17 + v18[14]);

    v30 = *(v17 + v18[15] + 8);

    v31 = *(v17 + v18[16] + 8);
  }

  v32 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *(v0 + v32);

  return _swift_deallocObject(v0, v32 + 8, v2 | v6 | 7);
}

uint64_t sub_10053BE1C()
{
  v1 = *(sub_100007224(&unk_10084A160, &unk_1006E7978) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_100007224(&unk_10084A130, &qword_1006E9ED0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10052FF0C(v0 + v2, v6, v0 + v5, v7);
}

uint64_t sub_10053BF3C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_100521BB4(a1, v1);
}

uint64_t sub_10053BFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AugmentedProfile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10053C03C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10053C0AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10053C11C()
{
  result = qword_1008475B0;
  if (!qword_1008475B0)
  {
    sub_10000B870(&qword_1008475A8, &unk_1006E79C0);
    sub_10053B49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008475B0);
  }

  return result;
}

uint64_t sub_10053C1C0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10053C230(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_100525798(a1, v1);
}

uint64_t sub_10053C2CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10052596C();
}

uint64_t sub_10053C368()
{
  v1 = *(sub_100007224(&qword_100835180, &unk_1006C0CE0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(sub_100007224(&qword_100835248, &unk_1006E7940) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = (v7 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 2);

  v10 = *(v0 + 4);

  v11 = *(v0 + 6);

  v12 = *(v0 + 7);

  v13 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v0[v3], 1, v13))
  {
    (*(v14 + 8))(&v0[v3], v13);
  }

  v15 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(&v0[v7], 1, v16))
  {
    (*(v17 + 8))(&v0[v7], v16);
  }

  v18 = *&v0[v8 + 16];

  v19 = *&v0[v8 + 32];

  v20 = *&v0[v8 + 48];

  if (*&v0[v15 + 32] != 1)
  {

    v21 = *&v0[v15 + 48];
  }

  return _swift_deallocObject(v0, v15 + 57, v2 | v6 | 7);
}

void sub_10053C600(_OWORD *a1, int a2, uint64_t a3)
{
  v7 = *(sub_100007224(&qword_100835180, &unk_1006C0CE0) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_100007224(&qword_100835248, &unk_1006E7940) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  sub_10052625C(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), v3 + v8, v3 + v11, *(v3 + v11 + *(v10 + 64)), (v3 + ((v11 + *(v10 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), (v3 + ((((v11 + *(v10 + 64)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_10053C7B8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10053C7D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_10052B2CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10053C89C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_100521BB4(a1, v1);
}

unint64_t sub_10053C938()
{
  result = qword_1008475C0;
  if (!qword_1008475C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008475C0);
  }

  return result;
}

uint64_t sub_10053C98C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10053C9CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027B9C;

  return sub_10051DE94(a1, v4, v5, v7, v6);
}

uint64_t sub_10053CA8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041F04;

  return sub_10051E200(a1);
}

uint64_t sub_10053CB28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10053CBB8;

  return sub_10051E3B4();
}

uint64_t sub_10053CBB8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_10053CD68@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AugmentedProfile(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Data.init(base64Encoded:options:)();
  if (v16 >> 60 == 15)
  {
    (*(v3 + 104))(v6, enum case for DIPError.Code.assessmentProfileDecodingFailed(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  else
  {
    v32 = v14;
    v18 = v15;
    v19 = v16;
    v20 = type metadata accessor for JSONDecoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100545850(&qword_100847750, type metadata accessor for AugmentedProfile);
    v33 = v19;
    v34 = v18;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v1)
    {

      (*(v3 + 104))(v6, enum case for DIPError.Code.invalidAssessmentProfile(_:), v2);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return sub_10000BD94(v34, v33);
    }

    else
    {
      v23 = v33;

      v24 = v32;
      defaultLogger()();
      sub_10053BFD8(v37, v10);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v38 = v28;
        *v27 = 136446210;
        v29 = &v10[*(v7 + 28)];
        v30 = v29[1];
        v37 = *v29;

        sub_100544BA4(v10);
        v31 = sub_100141FE4(v37, v30, &v38);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Decoded profile %{public}s", v27, 0xCu);
        sub_10000BB78(v28);

        sub_10000BD94(v34, v23);
      }

      else
      {
        sub_10000BD94(v34, v23);

        sub_100544BA4(v10);
      }

      return (*(v35 + 8))(v24, v36);
    }
  }
}

uint64_t sub_10053D32C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v81 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v81 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v81 - v15;
  __chkstk_darwin(v14);
  v18 = &v81 - v17;
  v19 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v81 - v21;
  result = _isInternalBuild.getter();
  if (result)
  {
    v84 = v7;
    sub_100545898(a1, v22);
    v24 = sub_100007224(&qword_100835138, &qword_1006C0B58);
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v22, 1, v24) == 1)
    {
      return sub_10000BE18(v22, &qword_1008350C0, &unk_1006C0B30);
    }

    else
    {
      JWSSignedJSON.payload.getter();
      v93 = v87[4];
      *v94 = v88[0];
      *&v94[13] = *(v88 + 13);
      v89 = v87[0];
      v90 = v87[1];
      v91 = v87[2];
      v92 = v87[3];
      (*(v25 + 8))(v22, v24);
      defaultLogger()();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Printing Augmented Profile Information:", v28, 2u);
      }

      v29 = *(v3 + 8);
      v29(v18, v2);
      defaultLogger()();
      sub_10009E820(&v89, v87);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      sub_10009E858(&v89);
      v32 = os_log_type_enabled(v30, v31);
      v82 = v2;
      v85 = v3 + 8;
      v83 = v29;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v87[0] = v34;
        *v33 = 136315138;
        v35 = *(&v89 + 1);
        if (*(&v89 + 1))
        {
          v36 = v89;
        }

        else
        {
          v35 = 0xE300000000000000;
          v36 = 4271950;
        }

        v39 = sub_100141FE4(v36, v35, v87);

        *(v33 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v31, "  ord destination %s", v33, 0xCu);
        sub_10000BB78(v34);

        v37 = v16;
        v2 = v82;
        v38 = v82;
        v29 = v83;
      }

      else
      {

        v37 = v16;
        v38 = v2;
      }

      v29(v37, v38);
      defaultLogger()();
      sub_10009E820(&v89, v87);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      sub_10009E858(&v89);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v87[0] = v43;
        *v42 = 136315138;
        if (*(&v89 + 1))
        {
          v45 = *(&v90 + 1);
          v44 = v90;
        }

        else
        {
          v45 = 0xE300000000000000;
          v44 = 4271950;
        }

        v48 = sub_100141FE4(v44, v45, v87);

        *(v42 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v40, v41, "  otd destination %s", v42, 0xCu);
        sub_10000BB78(v43);

        v46 = v13;
        v47 = v2;
        v29 = v83;
      }

      else
      {

        v46 = v13;
        v47 = v2;
      }

      v29(v46, v47);
      defaultLogger()();
      sub_10009E820(&v89, v87);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      sub_10009E858(&v89);
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v87[0] = v52;
        *v51 = 136315138;
        if (*(&v89 + 1))
        {
          v54 = *(&v92 + 1);
          v53 = v92;
        }

        else
        {
          v54 = 0xE300000000000000;
          v53 = 4271950;
        }

        v55 = sub_100141FE4(v53, v54, v87);

        *(v51 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v49, v50, "  tsid enc cert   %s", v51, 0xCu);
        sub_10000BB78(v52);

        v29(v10, v2);
      }

      else
      {

        v29(v10, v2);
      }

      v56 = *(&v93 + 1) + 64;
      v57 = 1 << *(*(&v93 + 1) + 32);
      v58 = -1;
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      v59 = v58 & *(*(&v93 + 1) + 64);
      v60 = (v57 + 63) >> 6;
      v86 = *(&v93 + 1);
      result = swift_bridgeObjectRetain_n();
      v61 = 0;
      v62 = _swiftEmptyArrayStorage;
      if (v59)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v63 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          __break(1u);
          return result;
        }

        if (v63 >= v60)
        {
          break;
        }

        v59 = *(v56 + 8 * v63);
        ++v61;
        if (v59)
        {
          v61 = v63;
          do
          {
LABEL_31:
            v64 = __clz(__rbit64(v59)) | (v61 << 6);
            v65 = (*(v86 + 48) + 16 * v64);
            v66 = *v65;
            v67 = v65[1];
            v68 = *(*(v86 + 56) + 8 * v64);
            swift_bridgeObjectRetain_n();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = sub_1003C5110(0, *(v62 + 2) + 1, 1, v62);
            }

            v70 = *(v62 + 2);
            v69 = *(v62 + 3);
            if (v70 >= v69 >> 1)
            {
              v62 = sub_1003C5110((v69 > 1), v70 + 1, 1, v62);
            }

            v59 &= v59 - 1;

            *(v62 + 2) = v70 + 1;
            v71 = &v62[16 * v70];
            *(v71 + 4) = v66;
            *(v71 + 5) = v67;
          }

          while (v59);
        }
      }

      sub_10009E858(&v89);

      v72 = v84;
      defaultLogger()();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v87[0] = v76;
        *v75 = 136315138;

        v77 = Array.description.getter();
        v79 = v78;

        v80 = sub_100141FE4(v77, v79, v87);

        *(v75 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v73, v74, "  bindings keys   %s", v75, 0xCu);
        sub_10000BB78(v76);
      }

      v83(v72, v82);
    }
  }

  return result;
}

uint64_t sub_10053DCAC()
{
  type metadata accessor for DIPODNHelper();
  v0 = swift_allocObject();
  sub_100543BE0();
  sub_100007224(&qword_100847748, &qword_1006E7AA0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1008475C8 = result;
  return result;
}

uint64_t sub_10053DD10()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 16);
  aBlock[4] = sub_10053DFA0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1008166F0;
  v10 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100545850(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  return (*(v6 + 8))(v9, v13);
}

void sub_10053DFA0()
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
    _os_log_impl(&_mh_execute_header, v5, v6, "Waking up odn", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v8 = [objc_allocWithZone(OZRXp7MLSzffIeLD) init];
  v9 = [objc_allocWithZone(cSPXWY2zzg2zwzaR) initWithQAy7FB3BSYJUwsIc:0 Zwvxi3fDtAHqlF0d:0 KufCqgU8RstLzBzT:1 BGiN5h2SLMRO6B9R:0 Jf7L4ypvXegQqMcE:0 zeXRCfLmM5cdkEtz:0];
  aBlock[4] = nullsub_7;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10053E1B8;
  aBlock[3] = &unk_100816718;
  v10 = _Block_copy(aBlock);
  [v8 MypqGKKWznx4xnYa:v9 l8OCYbP9LFIvnTwG:0 ygOPXTiKN0J02x0j:v10];
  _Block_release(v10);
}

uint64_t sub_10053E1B8(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  v9 = a2;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {

    v12 = v9;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v14 = 0xF000000000000000;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = a3;
  a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (a4)
  {
LABEL_4:
    v18 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0xF000000000000000;
LABEL_8:
  v21 = a6;
  v11(v9, v14, a3, v17, a4, v20, a5, a6);

  sub_10000BD94(a4, v20);
  sub_10000BD94(a3, v17);
  sub_10000BD94(v9, v14);
}

void *sub_10053E304(uint64_t a1, uint64_t a2, NSObject *a3, void *a4, NSObject *a5, unint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9, void *a10, void (*a11)(char *, uint64_t), char *a12, NSObject *a13, unsigned __int8 a14, uint64_t a15, char *a16, __int128 *a17)
{
  v262 = a7;
  v263 = a8;
  v275 = a6;
  v278 = a5;
  v296 = a4;
  v286 = a3;
  v281 = a2;
  v290 = a1;
  v17 = type metadata accessor for Date();
  v252 = *(v17 - 8);
  v253 = v17;
  v18 = *(v252 + 64);
  __chkstk_darwin(v17);
  v251 = &v229 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for DispatchTime();
  v265 = *(v270 - 8);
  v20 = *(v265 + 64);
  v21 = __chkstk_darwin(v270);
  v267 = &v229 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v256 = &v229 - v24;
  v260 = v25;
  __chkstk_darwin(v23);
  v269 = &v229 - v26;
  v27 = type metadata accessor for DIPError.Code();
  v271 = *(v27 - 8);
  v272 = v27;
  v28 = *(v271 + 64);
  __chkstk_darwin(v27);
  v273 = &v229 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Logger();
  v288 = *(v30 - 8);
  v289 = v30;
  v31 = *(v288 + 64);
  v32 = __chkstk_darwin(v30);
  v268 = &v229 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v246 = &v229 - v35;
  v36 = __chkstk_darwin(v34);
  v242 = &v229 - v37;
  v38 = __chkstk_darwin(v36);
  v250 = &v229 - v39;
  v40 = __chkstk_darwin(v38);
  v259 = &v229 - v41;
  v42 = __chkstk_darwin(v40);
  v255 = &v229 - v43;
  v44 = __chkstk_darwin(v42);
  v254 = &v229 - v45;
  __chkstk_darwin(v44);
  v276 = &v229 - v46;
  v47 = type metadata accessor for DIPSignpost.Config();
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v50 = &v229 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DIPSignpost();
  v283 = *(v51 - 8);
  v284 = v51;
  v52 = *(v283 + 64);
  v53 = __chkstk_darwin(v51);
  v264 = &v229 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v266 = &v229 - v56;
  v258 = v57;
  __chkstk_darwin(v55);
  v59 = &v229 - v58;
  static DaemonSignposts.fetchAssessment.getter();
  v274 = v59;
  v257 = v50;
  DIPSignpost.init(_:)();
  v60 = swift_allocObject();
  v291 = xmmword_1006BF650;
  v279 = v60;
  *(v60 + 16) = xmmword_1006BF650;
  v245 = v60 + 16;
  v61 = swift_allocObject();
  v285 = v61;
  *(v61 + 16) = v291;
  v247 = v61 + 16;
  v62 = swift_allocObject();
  v280 = v62;
  *(v62 + 16) = 0;
  v249 = (v62 + 16);
  v63 = swift_allocObject();
  v282 = v63;
  *(v63 + 16) = 0;
  v244 = v63 + 16;
  v64 = swift_allocObject();
  v287 = v64;
  *(v64 + 16) = v291;
  v248 = v64 + 16;
  v65 = swift_allocObject();
  *&v291 = v65;
  *(v65 + 16) = 0xBFF0000000000000;
  v243 = v65 + 16;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v66 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v67 = *(v66 - 8);
  v277 = *(v67 + 72);
  v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1006BF740;
  v70 = v69 + v68;
  v71 = (v69 + v68 + *(v66 + 48));
  v72 = enum case for DIPError.PropertyKey.spWorkflowID(_:);
  v73 = type metadata accessor for DIPError.PropertyKey();
  v74 = *(*(v73 - 8) + 104);
  (v74)(v70, v72, v73);
  v71[3] = &type metadata for String;
  v71[4] = &protocol witness table for String;
  v75 = v286;
  *v71 = v281;
  v71[1] = v75;
  v76 = (v70 + v277 + *(v66 + 48));
  v74();
  v77 = v275;
  v78 = v296;
  v76[3] = &type metadata for Int;
  v76[4] = &protocol witness table for Int;
  *v76 = v78;

  v277 = sub_10003C9C0(v69);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v80 = v77 >> 62;
  if ((v77 >> 62) > 1)
  {
    v82 = v278;
    v81 = v276;
    if (v80 != 2)
    {
      goto LABEL_17;
    }

    isa = v278[2].isa;
    v83 = v278[3].isa;
    v85 = __OFSUB__(v83, isa);
    v86 = v83 - isa;
    if (!v85)
    {
      if (v86 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  v81 = v276;
  if (v80)
  {
    v82 = v278;
    if (!__OFSUB__(HIDWORD(v278), v278))
    {
      if (HIDWORD(v278) - v278 == 16)
      {
        goto LABEL_8;
      }

LABEL_17:
      v99 = v268;
      defaultLogger()();
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&_mh_execute_header, v100, v101, "invalid nonce size", v102, 2u);
      }

      (*(v288 + 8))(v99, v289);
      (*(v271 + 104))(v273, enum case for DIPError.Code.invalidAssessmentGUID(_:), v272);
      type metadata accessor for DIPError();
      sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v283 + 8))(v274, v284);
      goto LABEL_20;
    }

    goto LABEL_60;
  }

  v82 = v278;
  if (BYTE6(v77) != 16)
  {
    goto LABEL_17;
  }

LABEL_8:
  v268 = a12;
  v87 = a10;
  v88 = a11;
  defaultLogger()();
  sub_10000B8B8(v82, v77);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.debug.getter();
  sub_10000B90C(v82, v77);
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v241 = a10;
    v93 = v92;
    *&aBlock = v92;
    *v91 = 136446210;
    v94 = Data.base64EncodedString(options:)(0);
    v240 = a11;
    v95 = sub_100141FE4(v94._countAndFlagsBits, v94._object, &aBlock);
    v88 = v240;

    *(v91 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v89, v90, "odn nonce %{public}s", v91, 0xCu);
    sub_10000BB78(v93);
    v87 = v241;
  }

  v276 = *(v288 + 8);
  (v276)(v81, v289);
  if (v296 == 9)
  {
    v96 = 2;
  }

  else
  {
    v96 = 1;
  }

  sub_10054C46C(v88);
  v97.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (v87 >> 60 == 15)
  {
    v98 = 0;
  }

  else
  {
    v98 = Data._bridgeToObjectiveC()().super.isa;
  }

  v108 = objc_allocWithZone(cSPXWY2zzg2zwzaR);
  v109 = Dictionary._bridgeToObjectiveC()().super.isa;

  v110 = Array._bridgeToObjectiveC()().super.isa;
  v111 = Data._bridgeToObjectiveC()().super.isa;
  v112 = [v108 initWithQAy7FB3BSYJUwsIc:v97.super.isa Zwvxi3fDtAHqlF0d:v98 KufCqgU8RstLzBzT:v96 BGiN5h2SLMRO6B9R:v109 Jf7L4ypvXegQqMcE:v110 zeXRCfLmM5cdkEtz:v111];

  if (!v112)
  {
    (*(v271 + 104))(v273, enum case for DIPError.Code.odnInitialize(_:), v272);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v283 + 8))(v274, v284);
    goto LABEL_20;
  }

  v241 = v112;
  v113 = a13;
  v114 = v290;
  v115 = *(v290 + 24);
  v116 = v256;
  static DispatchTime.now()();
  v117 = v269;
  + infix(_:_:)();
  v118 = (v265 + 8);
  v119 = *(v265 + 8);
  v120 = v270;
  v119(v116, v270);
  OS_dispatch_semaphore.wait(timeout:)();

  v256 = v118;
  v240 = v119;
  v119(v117, v120);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0 || (v121 = *(v114 + 56)) == 0)
  {
    v138 = v255;
    defaultLogger()();
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.debug.getter();
    v141 = os_log_type_enabled(v139, v140);
    v136 = v267;
    v131 = v259;
    if (v141)
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v139, v140, "passing nil as NF data", v142, 2u);
    }

    (v276)(v138, v289);
    v135 = v266;
    v137 = a14;
    if (!a13)
    {
      goto LABEL_28;
    }

LABEL_32:
    v262 = v113;
    goto LABEL_33;
  }

  v278 = a13;
  v122 = v114;
  v123 = *(v114 + 80);
  v124 = *(v122 + 64);
  v125 = *(v122 + 72);
  v126 = v121;
  v127 = v124;

  defaultLogger()();
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.debug.getter();
  v130 = os_log_type_enabled(v128, v129);
  v131 = v259;
  if (v130)
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    _os_log_impl(&_mh_execute_header, v128, v129, "using collected NF data", v132, 2u);
  }

  (v276)(v254, v289);
  v133 = v241;
  [v241 setHostChallenge:v126];
  [v133 setChallengeResponse:v127];

  v134 = String._bridgeToObjectiveC()();

  [v133 setSeid:v134];

  v135 = v266;
  v136 = v267;
  v113 = v278;
  v137 = a14;
  if (v278)
  {
    goto LABEL_32;
  }

LABEL_28:
  v262 = dispatch_semaphore_create(0);
LABEL_33:
  v268 = a16;
  v263 = a15;
  v143 = objc_allocWithZone(OZRXp7MLSzffIeLD);
  v144 = v113;
  v145 = [v143 init];
  static DaemonSignposts.odnMypg.getter();
  DIPSignpost.init(_:)();
  static DispatchTime.now()();
  v146 = swift_allocObject();
  v275 = v146;
  *(v146 + 16) = 0;
  v230 = (v146 + 16);
  v147 = swift_allocObject();
  v278 = v147;
  *(v147 + 16) = 0;
  v231 = (v147 + 16);
  defaultLogger()();
  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.debug.getter();
  v150 = os_log_type_enabled(v148, v149);
  v259 = v145;
  v255 = v137;
  if (v150)
  {
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    *&aBlock = v152;
    *v151 = 136315138;
    if (v137)
    {
      v153 = 49;
    }

    else
    {
      v153 = 48;
    }

    v154 = sub_100141FE4(v153, 0xE100000000000000, &aBlock);

    *(v151 + 4) = v154;
    v135 = v266;
    _os_log_impl(&_mh_execute_header, v148, v149, "Calling with option = %s", v151, 0xCu);
    sub_10000BB78(v152);
    v136 = v267;
  }

  (v276)(v131, v289);
  v155 = v283;
  v156 = v284;
  LODWORD(v276) = v113 != 0;
  (*(v283 + 16))(v264, v135, v284);
  v157 = v265;
  v158 = v270;
  (*(v265 + 16))(v269, v136, v270);
  v235 = (*(v155 + 80) + 16) & ~*(v155 + 80);
  v254 = ((v235 + v258 + 7) & 0xFFFFFFFFFFFFFFF8);
  v258 = (v235 + v258 + 31) & 0xFFFFFFFFFFFFFFF8;
  v257 = (v258 + 15) & 0xFFFFFFFFFFFFFFF8;
  v239 = (v257 + 15) & 0xFFFFFFFFFFFFFFF8;
  v238 = (v239 + 15) & 0xFFFFFFFFFFFFFFF8;
  v159 = (*(v157 + 80) + v238 + 8) & ~*(v157 + 80);
  v260 = (v260 + v159 + 7) & 0xFFFFFFFFFFFFFFF8;
  v236 = (v260 + 15) & 0xFFFFFFFFFFFFFFF8;
  v237 = v159;
  v234 = (v236 + 15) & 0xFFFFFFFFFFFFFFF8;
  v233 = (v234 + 15) & 0xFFFFFFFFFFFFFFF8;
  v232 = (v233 + 15) & 0xFFFFFFFFFFFFFFF8;
  v160 = (v232 + 15) & 0xFFFFFFFFFFFFFFF8;
  v161 = (v160 + 23) & 0xFFFFFFFFFFFFFFF8;
  v162 = swift_allocObject();
  (*(v155 + 32))(v162 + v235, v264, v156);
  v163 = &v254[v162];
  v164 = v286;
  *v163 = v281;
  *(v163 + 1) = v164;
  v163[16] = v296;
  v165 = v257;
  *(v162 + v258) = v278;
  *(v162 + v165) = v262;
  v166 = v291;
  *(v162 + v239) = v290;
  v167 = v237;
  *(v162 + v238) = v166;
  (*(v157 + 32))(v162 + v167, v269, v158);
  v168 = v279;
  *(v162 + v260) = v280;
  *(v162 + v236) = v282;
  v169 = v233;
  *(v162 + v234) = v168;
  *(v162 + v169) = v285;
  *(v162 + v232) = v287;
  v170 = (v162 + v160);
  v171 = v268;
  *v170 = v263;
  v170[1] = v171;
  v172 = v277;
  *(v162 + v161) = v277;
  *(v162 + ((v161 + 15) & 0xFFFFFFFFFFFFFFF8)) = v275;
  *&v294 = sub_100544F68;
  *(&v294 + 1) = v162;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v293 = sub_10053E1B8;
  *(&v293 + 1) = &unk_100816510;
  v173 = _Block_copy(&aBlock);

  v174 = v241;

  v286 = v262;

  sub_10001F640(v263);

  v175 = v172;

  v176 = v255;
  v177 = v259;
  [v259 MypqGKKWznx4xnYa:v174 l8OCYbP9LFIvnTwG:v255 & 1 ygOPXTiKN0J02x0j:v173];
  v178 = v173;
  v179 = v286;
  v180 = v174;
  _Block_release(v178);

  v181 = v261;
  sub_100543F04(v179, v296, v175, v276);
  if (v181)
  {

    v240(v267, v270);
    v182 = v284;
    v183 = *(v283 + 8);
    v183(v266, v284);
    v183(v274, v182);

LABEL_40:

LABEL_20:

    v103 = v290;
    v104 = *(v290 + 56);
    v105 = *(v290 + 64);
    v106 = *(v290 + 72);
    v107 = *(v290 + 80);
    *(v290 + 56) = 0u;
    *(v103 + 72) = 0u;
    return sub_100544CA0(v104, v105);
  }

  v184 = v176;
  v185 = v231;
  swift_beginAccess();
  if ((*v185 & 1) == 0)
  {
    v192 = v174;
    v193 = v250;
    defaultLogger()();
    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      *v196 = 0;
      _os_log_impl(&_mh_execute_header, v194, v195, "Timed out waiting for ODN data with semaphoreSignaledByODN = false", v196, 2u);
    }

    (*(v288 + 8))(v193, v289);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    *&aBlock = 0xD000000000000022;
    *(&aBlock + 1) = 0x800000010071EC10;
    v197 = v251;
    static Date.now.getter();
    sub_100545850(&qword_10083ACE0, &type metadata accessor for Date);
    v198 = v253;
    v199._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v199);

    (*(v252 + 8))(v197, v198);
    (*(v271 + 104))(v273, enum case for DIPError.Code.odnTimeoutWithPrecompute(_:), v272);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_48;
  }

  v186 = v230;
  swift_beginAccess();
  *v186 = 1;
  v187 = v249;
  swift_beginAccess();
  v188 = *v187;
  v189 = v270;
  if (v188)
  {
    swift_errorRetain();
    sub_10054518C(v188, v175);

    swift_willThrow();

    v240(v267, v189);
    v190 = v284;
    v191 = *(v283 + 8);
    v191(v266, v284);
    v191(v274, v190);

    goto LABEL_40;
  }

  v202 = v284;
  if (v184)
  {
    swift_beginAccess();
    if (*(v287 + 24) >> 60 == 15)
    {
      v203 = v242;
      defaultLogger()();
      v204 = Logger.logObject.getter();
      v205 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        *v206 = 0;
        _os_log_impl(&_mh_execute_header, v204, v205, "ODN no error and no cbor assessments", v206, 2u);
      }

      (*(v288 + 8))(v203, v289);
      (*(v271 + 104))(v273, enum case for DIPError.Code.odnNoCBORAssessmentData(_:), v272);
      type metadata accessor for DIPError();
      sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

LABEL_48:
      v240(v267, v270);
      v200 = v284;
      v201 = *(v283 + 8);
      v201(v266, v284);
      v201(v274, v200);

      goto LABEL_20;
    }
  }

  swift_beginAccess();
  v207 = *(v285 + 24);
  if (v207 >> 60 == 15)
  {
    v296 = v174;
    v208 = v246;
    defaultLogger()();
    v209 = Logger.logObject.getter();
    v210 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      *v211 = 0;
      _os_log_impl(&_mh_execute_header, v209, v210, "ODN no error and no assessments", v211, 2u);
    }

    (*(v288 + 8))(v208, v289);
    (*(v271 + 104))(v273, enum case for DIPError.Code.odnNoAssessmentData(_:), v272);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_48;
  }

  v289 = *(v285 + 16);
  sub_10000B8B8(v289, v207);

  v240(v267, v270);
  v212 = *(v283 + 8);
  v283 += 8;
  v296 = v212;
  (v212)(v266, v202);
  swift_beginAccess();
  v213 = *(v279 + 24);
  v288 = *(v279 + 16);
  v286 = v213;
  swift_beginAccess();
  v214 = v291;
  v215 = *(v287 + 16);
  v216 = *(v287 + 24);
  swift_beginAccess();
  LODWORD(v281) = *(v282 + 16);
  swift_beginAccess();
  v217 = a17[1];
  aBlock = *a17;
  v218 = a17[2];
  v219 = a17[3];
  v293 = v217;
  v294 = v218;
  *&v218 = *(v214 + 16);
  v295 = v219;
  v220 = v288;
  v221 = v289;
  v222 = v286;
  *a17 = v288;
  *(a17 + 1) = v222;
  *(a17 + 2) = v221;
  *(a17 + 3) = v207;
  *(a17 + 4) = v215;
  *(a17 + 5) = v216;
  *(a17 + 12) = v281;
  *(a17 + 7) = v218;
  sub_1000363B4(v220, v222);
  sub_1000363B4(v215, v216);
  sub_10053B540(&aBlock);

  v223 = v290;
  v224 = *(v290 + 56);
  v225 = *(v290 + 64);
  v226 = *(v290 + 72);
  v227 = *(v290 + 80);
  *(v290 + 56) = 0u;
  *(v223 + 72) = 0u;
  sub_100544CA0(v224, v225);
  v228 = v274;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return (v296)(v228, v284);
}

unint64_t sub_100540128(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26)
{
  v176 = a8;
  v153 = a7;
  v158 = a5;
  v159 = a6;
  v156 = a3;
  v157 = a4;
  v154 = a1;
  v155 = a2;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v169 = *(v26 - 8);
  v170 = v26;
  v27 = *(v169 + 64);
  __chkstk_darwin(v26);
  v167 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DispatchQoS();
  v166 = *(v168 - 8);
  v29 = *(v166 + 64);
  __chkstk_darwin(v168);
  v165 = &v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v177 = v31;
  v178 = v32;
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v162 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v161 = &v151 - v37;
  v38 = __chkstk_darwin(v36);
  v160 = &v151 - v39;
  v40 = __chkstk_darwin(v38);
  v171 = &v151 - v41;
  __chkstk_darwin(v40);
  v43 = &v151 - v42;
  v44 = type metadata accessor for DispatchTime();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49.value._countAndFlagsBits = a10;
  v49.value._object = a11;
  DIPSignpost.end(workflowID:isBackground:)(v49, (a12 == 9));
  v50 = *(a15 + 32);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_100545778;
  *(v51 + 24) = a15;
  v186 = sub_10021E8E8;
  v187 = v51;
  aBlock = _NSConcreteStackBlock;
  v183 = 1107296256;
  v184 = sub_10057E264;
  v185 = &unk_100816560;
  v52 = _Block_copy(&aBlock);
  v53 = v50;

  dispatch_sync(v53, v52);

  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();
  v164 = a15;

  if (v52)
  {
    __break(1u);
  }

  else
  {
    static DispatchTime.now()();
    v55 = DispatchTime.uptimeNanoseconds.getter();
    (*(v45 + 8))(v48, v44);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v55 >= result)
    {
      v56 = a23;
      v180 = a22;
      v57 = a21;
      v179 = a20;
      v175 = a19;
      v174 = a14;
      v173 = a13;
      v58 = (v55 - result) / 1000000000.0;
      swift_beginAccess();
      *(a16 + 16) = v58;
      v59 = v176;
      v163 = a16;
      v172 = a21;
      if (v176)
      {
        swift_beginAccess();
        v60 = *(a18 + 16);
        *(a18 + 16) = v59;
        swift_errorRetain();
        swift_errorRetain();

        defaultLogger()();
        swift_errorRetain();
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = v59;
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v152 = a23;
          v66 = v65;
          aBlock = v65;
          *v64 = 134349314;
          v67 = _convertErrorToNSError(_:)();
          v68 = [v67 code];

          *(v64 + 4) = v68;

          *(v64 + 12) = 2082;
          swift_getErrorValue();
          v69 = Error.localizedDescription.getter();
          v71 = sub_100141FE4(v69, v70, &aBlock);

          *(v64 + 14) = v71;
          _os_log_impl(&_mh_execute_header, v61, v62, "error retrieving ODIN data. %{public}ld - %{public}s", v64, 0x16u);
          sub_10000BB78(v66);
          v56 = v152;

          v59 = v63;
        }

        else
        {
        }

        (*(v178 + 8))(v43, v177);
        if (!v56)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v152 = a23;
        v72 = v175;
        swift_beginAccess();
        *(v72 + 16) = v153;
        v73 = v179;
        swift_beginAccess();
        v74 = *(v73 + 16);
        v75 = *(v73 + 24);
        v76 = v154;
        v77 = v155;
        *(v73 + 16) = v154;
        *(v73 + 24) = v77;
        sub_1000363B4(v76, v77);
        sub_10000BD94(v74, v75);
        swift_beginAccess();
        v78 = *(a21 + 16);
        v79 = *(a21 + 24);
        v80 = v156;
        v81 = v157;
        *(a21 + 16) = v156;
        *(a21 + 24) = v81;
        sub_1000363B4(v80, v81);
        sub_10000BD94(v78, v79);
        v82 = v180;
        swift_beginAccess();
        v83 = *(v82 + 16);
        v84 = *(v82 + 24);
        v85 = v158;
        v86 = v159;
        *(v82 + 16) = v158;
        *(v82 + 24) = v86;
        sub_1000363B4(v85, v86);
        sub_10000BD94(v83, v84);
        defaultLogger()();

        sub_10000CCA8();
        sub_10000CCA8();
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.debug.getter();

        v89 = os_log_type_enabled(v87, v88);
        v90 = v178;
        if (v89)
        {
          v91 = swift_slowAlloc();
          *v91 = 67109632;
          v92 = v175;
          swift_beginAccess();
          *(v91 + 4) = *(v92 + 16);

          *(v91 + 8) = 1040;
          *(v91 + 10) = 3;
          *(v91 + 14) = 2048;
          swift_beginAccess();
          *(v91 + 16) = *(a16 + 16);
          _os_log_impl(&_mh_execute_header, v87, v88, "ODIN returned index %u, after %.*f seconds", v91, 0x18u);
        }

        else
        {
        }

        v104 = v160;
        v105 = *(v90 + 8);
        v106 = v177;
        v105(v171, v177);
        defaultLogger()();

        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.debug.getter();

        v109 = v108;
        v110 = v108;
        v111 = v107;
        v112 = os_log_type_enabled(v107, v110);
        v178 = v90 + 8;
        v171 = v105;
        if (v112)
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          aBlock = v114;
          *v113 = 136315138;
          v115 = v179;
          swift_beginAccess();
          v116 = *(v115 + 24);
          if (v116 >> 60 == 15)
          {
            object = 0xE300000000000000;
            countAndFlagsBits = 7104878;
          }

          else
          {
            v120 = *(v179 + 16);
            sub_10000B8B8(v120, *(v115 + 24));
            v121 = Data.base16EncodedString()();
            countAndFlagsBits = v121._countAndFlagsBits;
            object = v121._object;
            sub_10000BD94(v120, v116);
          }

          v122 = v172;
          v123 = sub_100141FE4(countAndFlagsBits, object, &aBlock);

          *(v113 + 4) = v123;
          _os_log_impl(&_mh_execute_header, v111, v109, " tdata   %s", v113, 0xCu);
          sub_10000BB78(v114);

          v106 = v177;
          v124 = v171;
          (v171)(v160, v177);
          v59 = v176;
          v119 = v161;
          v57 = v122;
          v105 = v124;
        }

        else
        {

          v105(v104, v106);
          v119 = v161;
        }

        defaultLogger()();

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = v59;
          v128 = v57;
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          aBlock = v130;
          *v129 = 136315138;
          swift_beginAccess();
          v131 = *(v128 + 24);
          if (v131 >> 60 == 15)
          {
            v132 = 0xE300000000000000;
            v133 = 7104878;
          }

          else
          {
            v135 = *(v128 + 16);
            sub_10000B8B8(v135, *(v128 + 24));
            v136 = Data.base16EncodedString()();
            v132 = v136._object;
            sub_10000BD94(v135, v131);
            v133 = v136._countAndFlagsBits;
            v105 = v171;
          }

          v59 = v127;
          v137 = sub_100141FE4(v133, v132, &aBlock);

          *(v129 + 4) = v137;
          _os_log_impl(&_mh_execute_header, v125, v126, " assessment %s", v129, 0xCu);
          sub_10000BB78(v130);

          v134 = v161;
          v106 = v177;
        }

        else
        {

          v134 = v119;
        }

        v105(v134, v106);
        v138 = v162;
        defaultLogger()();

        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = v140;
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          aBlock = v143;
          *v142 = 136315138;
          v144 = v180;
          swift_beginAccess();
          v145 = *(v144 + 24);
          if (v145 >> 60 == 15)
          {
            v146 = 0xE300000000000000;
            v59 = v176;
            v147 = 7104878;
          }

          else
          {
            v148 = *(v180 + 16);
            sub_10000B8B8(v148, *(v144 + 24));
            v149 = Data.base16EncodedString()();
            v147 = v149._countAndFlagsBits;
            v146 = v149._object;
            sub_10000BD94(v148, v145);
            v59 = v176;
          }

          v150 = sub_100141FE4(v147, v146, &aBlock);

          *(v142 + 4) = v150;
          _os_log_impl(&_mh_execute_header, v139, v141, " cdata   %s", v142, 0xCu);
          sub_10000BB78(v143);

          (v171)(v162, v177);
        }

        else
        {

          v105(v138, v106);
        }

        v56 = v152;
        if (!v152)
        {
          goto LABEL_11;
        }
      }

      v171 = a25;
      v93 = v175;
      v94 = v164;
      v178 = *(v164 + 16);
      v95 = swift_allocObject();
      v97 = v179;
      v96 = v180;
      v95[2] = v172;
      v95[3] = v97;
      v95[4] = v96;
      v95[5] = v93;
      v95[6] = v163;
      v95[7] = v59;
      v95[8] = v94;
      v95[9] = a25;
      v95[10] = v56;
      v95[11] = a24;
      v95[12] = a26;
      v186 = sub_100545810;
      v187 = v95;
      aBlock = _NSConcreteStackBlock;
      v183 = 1107296256;
      v184 = sub_100503A7C;
      v185 = &unk_1008165B0;
      v177 = _Block_copy(&aBlock);
      sub_10001F640(v56);

      swift_errorRetain();

      sub_10001F640(v56);

      v98 = v165;
      static DispatchQoS.unspecified.getter();
      v181 = _swiftEmptyArrayStorage;
      sub_100545850(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
      v99 = v56;
      sub_100007224(&qword_100848A40, &unk_1006BF8C0);
      sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
      v100 = v167;
      v101 = v170;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v102 = v177;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v102);
      sub_10001FE8C(v99);
      (*(v169 + 8))(v100, v101);
      (*(v166 + 8))(v98, v168);

LABEL_11:
      v103 = v173;
      swift_beginAccess();
      *(v103 + 16) = 1;
      return OS_dispatch_semaphore.signal()();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100541080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(_OWORD *, void, uint64_t), uint64_t a10, uint64_t a11)
{
  v45 = a8;
  v46 = a4;
  v50 = a6;
  v47 = a5;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Preparing to call odn completion function", v21, 2u);
  }

  v48 = a10;
  v49 = a9;

  (*(v15 + 8))(v18, v14);
  swift_beginAccess();
  v22 = *(a1 + 24);
  if (v22 >> 60 == 15)
  {
    swift_beginAccess();
    v23 = *(a3 + 24);
    if (v23 >> 60 == 15)
    {
      v51 = 0uLL;
      *&v52 = 0;
      *(&v52 + 1) = 0xF000000000000000;
      v53 = 0u;
      v54 = 0u;
      goto LABEL_9;
    }

    v35 = *(a3 + 16);
    swift_beginAccess();
    v36 = *(a2 + 16);
    v37 = *(a2 + 24);
    v38 = v46;
    swift_beginAccess();
    v30 = *(v38 + 16);
    v39 = v47;
    swift_beginAccess();
    v32 = *(v39 + 16);
    sub_1000363B4(v35, v23);
    sub_1000363B4(v36, v37);
    v40._countAndFlagsBits = 0x3632636634373131;
    v41._countAndFlagsBits = 0xD000000000000016;
    v41._object = 0x800000010071ED90;
    v40._object = 0xE800000000000000;
    logMilestone(tag:description:)(v40, v41);
    *&v51 = v36;
    *(&v51 + 1) = v37;
    v52 = xmmword_1006DE2A0;
    *&v53 = v35;
    *(&v53 + 1) = v23;
  }

  else
  {
    v24 = *(a1 + 16);
    swift_beginAccess();
    v25 = *(a2 + 16);
    v26 = *(a2 + 24);
    swift_beginAccess();
    v27 = *(a3 + 16);
    v28 = *(a3 + 24);
    v29 = v46;
    swift_beginAccess();
    v30 = *(v29 + 16);
    v31 = v47;
    swift_beginAccess();
    v32 = *(v31 + 16);
    sub_1000363B4(v24, v22);
    sub_1000363B4(v25, v26);
    sub_1000363B4(v27, v28);
    v33._countAndFlagsBits = 0x3962363931376166;
    v34._object = 0x800000010071EDB0;
    v33._object = 0xE800000000000000;
    v34._countAndFlagsBits = 0xD000000000000011;
    logMilestone(tag:description:)(v33, v34);
    *&v51 = v25;
    *(&v51 + 1) = v26;
    *&v52 = v24;
    *(&v52 + 1) = v22;
    *&v53 = v27;
    *(&v53 + 1) = v28;
  }

  LODWORD(v54) = v30;
  *(&v54 + 1) = v32;
LABEL_9:
  v55[0] = v51;
  v55[1] = v52;
  v55[2] = v53;
  v55[3] = v54;
  v42 = v50;
  if (v50)
  {
    swift_errorRetain();
    v43 = sub_10054518C(v42, v45);

    swift_errorRetain();
  }

  else
  {
    v43 = 0;
  }

  swift_beginAccess();
  v49(v55, *(a11 + 16), v43);

  return sub_10000BE18(&v51, &qword_100847578, &qword_1006E7968);
}

uint64_t sub_100541484(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v3 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  aBlock[4] = sub_1005459E8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_100816678;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100545850(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v20);
}

void sub_10054174C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &_swiftEmptyDictionarySingleton;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = &_swiftEmptyDictionarySingleton;
    sub_10016CAB8(49, 0xE100000000000000, 7105633, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v11 = aBlock[0];
  }

  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Starting to clean ODN cache", v15, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v16 = [objc_allocWithZone(OZRXp7MLSzffIeLD) init];
  sub_10054CC30(v11);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_100545A2C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100541DB0;
  aBlock[3] = &unk_1008166C8;
  v19 = _Block_copy(aBlock);

  [v16 t5yVezCKaX2Zrwrw:isa uXxcS3vcKdsH38zZ:v19];
  _Block_release(v19);
}

uint64_t sub_1005419F8(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  if (a3)
  {
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v18, v19))
    {

      (*(v11 + 8))(v17, v10);
      return a4(a3);
    }

    v20 = swift_slowAlloc();
    v40 = v10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v39 = a5;
    v23 = v22;
    v41 = v22;
    *v21 = 136446210;
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    v26 = sub_100141FE4(v24, v25, &v41);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Error cleaning ODN cache: = %{public}s", v21, 0xCu);
    sub_10000BB78(v23);

    v27 = *(v11 + 8);
    v28 = v17;
LABEL_10:
    v27(v28, v40);
    return a4(a3);
  }

  v40 = v10;
  defaultLogger()();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v29, v30))
  {

    v27 = *(v11 + 8);
    v28 = v15;
    goto LABEL_10;
  }

  v38 = a4;
  v39 = a5;
  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v41 = v32;
  *v31 = 67240450;
  *(v31 + 4) = a1;
  *(v31 + 8) = 2080;
  if (!a2)
  {
    sub_10003DB20(_swiftEmptyArrayStorage);
  }

  v33 = Dictionary.description.getter();
  v35 = v34;

  v36 = sub_100141FE4(v33, v35, &v41);

  *(v31 + 10) = v36;
  _os_log_impl(&_mh_execute_header, v29, v30, "Successfully finished cleaning ODN cache. Records purged = %{public}u, metadata = %s", v31, 0x12u);
  sub_10000BB78(v32);

  (*(v11 + 8))(v15, v40);
  return v38(0);
}

uint64_t sub_100541DB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a4;
  v7(a2, v8, a4);
}

uint64_t sub_100541E64(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100541484(a3, sub_10002F6E8, v11);
}

uint64_t sub_100541FB4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 16);
  aBlock[4] = sub_100545908;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1008165D8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100545850(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void sub_100542254(void *a1)
{
  v84 = a1;
  v78 = type metadata accessor for TimeoutError();
  v73 = *(v78 - 8);
  v1 = *(v73 + 64);
  __chkstk_darwin(v78);
  v83 = type metadata accessor for DIPError();
  v75 = *(v83 - 1);
  v2 = *(v75 + 64);
  __chkstk_darwin(v83);
  v74 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPError.Code();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  __chkstk_darwin(v4);
  v81 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Logger();
  v7 = *(v86 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v86);
  v10 = __chkstk_darwin(v9);
  v82 = &v72 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v72 - v13;
  v15 = __chkstk_darwin(v12);
  v76 = &v72 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v72 - v21;
  __chkstk_darwin(v20);
  v24 = &v72 - v23;
  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "START getting NF data", v27, 2u);
  }

  v28 = *(v7 + 8);
  v29 = v86;
  v85 = v7 + 8;
  v28(v24, v86);
  v30 = objc_opt_self();
  v88 = 0;
  v31 = [v30 embeddedSecureElementWithError:&v88];
  v32 = v88;
  if (!v31)
  {
    v34 = v88;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v28;
      v39 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "No Embedded SE with error: %@", v37, 0xCu);
      sub_10000BE18(v39, &unk_100833B50, &unk_1006D8FB0);
      v28 = v38;
    }

    else
    {
    }

    v28(v14, v29);
    goto LABEL_24;
  }

  v77 = v31;
  sub_10001F8D4(0, &qword_100847758, NFSecureElementManagerSession_ptr);
  v33 = v32;
  v72 = "invalid assessmentGUID format";
  runAsyncAndBlock<A>(timeout:file:function:line:_:)();
  v83 = v28;
  v41 = v88;
  v88 = 0;
  v87 = 0;
  v42 = [v41 getCryptogram:&v88 challengeResponse:&v87];
  v43 = v87;
  v44 = v88;
  v45 = v87;
  v46 = v44;
  [v41 endSession];
  if ((v42 & 1) == 0)
  {
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, " error getting NF challenge / cryptogram, resetting everything", v59, 2u);
    }

    v60 = v86;
    v83(v22, v86);
    v47 = 0;
    v61 = 0;
    goto LABEL_18;
  }

  if (!v46 || !v45)
  {
    v60 = v86;
    v62 = v76;
    goto LABEL_20;
  }

  v47 = v45;
  v45 = v46;
  v48 = [v77 serialNumber];
  if (!v48)
  {
    v46 = v47;
    v61 = v45;
    v60 = v86;
LABEL_18:
    v62 = v76;

    v45 = v47;
    v46 = v61;
LABEL_20:
    defaultLogger()();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "No NF data available", v65, 2u);
    }

    else
    {
    }

    v83(v62, v60);
LABEL_24:
    v66 = v84;
    goto LABEL_25;
  }

  v49 = v48;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  defaultLogger()();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v82 = v52;
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Retrieved NF seid and challenge/response", v55, 2u);
    v52 = v82;

    v56 = v41;
  }

  else
  {
    v56 = v53;
    v53 = v41;
  }

  v83(v19, v86);
  v67 = v84;
  v68 = v84[7];
  v69 = v84[8];
  v70 = v84[9];
  v71 = v84[10];
  v84[7] = v44;
  v67[8] = v43;
  v67[9] = v50;
  v67[10] = v52;
  sub_100544CA0(v68, v69);

  v66 = v67;
LABEL_25:
  sub_100542FCC(v66);
}

void sub_100542FCC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "END getting NF data", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(a1 + 24);
  OS_dispatch_semaphore.signal()();
}

uint64_t sub_100543120(uint64_t a1)
{
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_10001F8D4(0, &qword_100847758, NFSecureElementManagerSession_ptr);
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, 0, 0, 0x657250636E797361, 0xEE0029286D726157, sub_100543218, 0, v5);
}

void sub_100543218(uint64_t a1)
{
  v2 = sub_100007224(&qword_100847760, &qword_1006E7AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() sharedHardwareManager];
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_100545924;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001335C;
  aBlock[3] = &unk_100816628;
  v10 = _Block_copy(aBlock);

  v11 = [v7 startSecureElementManagerSessionWithPriority:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

uint64_t sub_100543400(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  if (a2)
  {
    v12 = a2;
    swift_errorRetain();
LABEL_3:
    sub_100007224(&qword_100847760, &qword_1006E7AB0);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    (*(v7 + 104))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.nearfieldInconsistentCallbackError(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
    v10 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v12 = v10;
    goto LABEL_3;
  }

  v12 = a1;
  v9 = a1;
  sub_100007224(&qword_100847760, &qword_1006E7AB0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100543628(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);

    defaultLogger()();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v19 = 136446466;
      *(v19 + 4) = sub_100141FE4(a2, a3, &v28);
      *(v19 + 12) = 2082;
      v20 = sub_100141FE4(v15, v14, &v28);

      *(v19 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v17, v18, "ODN asked to compute assessment for %{public}s but assessment computation for %{public}s is already in progress!", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v7 + 8))(v13, v6);
  }

  else
  {
    defaultLogger()();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_100141FE4(a2, a3, &v28);
      _os_log_impl(&_mh_execute_header, v21, v22, "ODN asked to compute assessment for %{public}s; no assessment computation is in progress", v23, 0xCu);
      sub_10000BB78(v24);
    }

    (*(v7 + 8))(v11, v6);
    v25 = *(a1 + 48);
    *(a1 + 40) = a2;
    *(a1 + 48) = a3;
  }
}

uint64_t sub_100543968(uint64_t a1)
{
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
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    if (*(a1 + 48))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
    }

    else
    {
      v12 = 0xE500000000000000;
      v11 = 0x3E6C696E3CLL;
    }

    v13 = sub_100141FE4(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "ODN finished computing assessment for %{public}s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v3 + 8))(v6, v2);
  v14 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

uint64_t sub_100543B4C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  sub_100544CA0(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_100543BE0()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  v18 = v1;
  v19 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v17 = "currentWorkflowID";
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  v16 = sub_100545850(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v15 = sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10001F484(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v11 = *(v19 + 104);
  v19 += 104;
  v14 = v5;
  v11(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = dispatch_semaphore_create(0);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11(v14, v10, v18);
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return v0;
}

uint64_t sub_100543F04(uint64_t a1, unsigned __int8 a2, uint64_t a3, int a4)
{
  v69 = a4;
  v77 = a3;
  v82 = a1;
  v4 = a2;
  v5 = type metadata accessor for DIPError.Code();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  __chkstk_darwin(v5);
  v76 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Date();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  __chkstk_darwin(v8);
  v71 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchTime();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  v13 = __chkstk_darwin(v11);
  v78 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v79 = &v68[-v15];
  v84 = type metadata accessor for Logger();
  v83 = *(v84 - 8);
  v16 = *(v83 + 64);
  v17 = __chkstk_darwin(v84);
  v70 = &v68[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v21 = &v68[-v20];
  v22 = __chkstk_darwin(v19);
  v24 = &v68[-v23];
  v25 = __chkstk_darwin(v22);
  v27 = &v68[-v26];
  __chkstk_darwin(v25);
  v29 = &v68[-v28];
  if (v4 == 9)
  {
    v30 = 60.0;
  }

  else
  {
    v30 = 3.0;
  }

  v31 = objc_opt_self();
  v32 = [v31 standardUserDefaults];
  v33._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODNTimeout.getter();
  v34 = NSUserDefaults.internalBool(forKey:)(v33);

  if (v34)
  {
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Disabling ODN timeout due to user defaults setting", v37, 2u);
    }

    v38 = v83;
    v39 = v84;
    (*(v83 + 8))(v29, v84);
    v30 = 9999999.0;
  }

  else
  {
    v40 = [v31 standardUserDefaults];
    v41._countAndFlagsBits = static DaemonInternalDefaultsKeys.alwaysTimeoutODN.getter();
    v42 = NSUserDefaults.internalBool(forKey:)(v41);

    if (v42)
    {
      defaultLogger()();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      v45 = os_log_type_enabled(v43, v44);
      v38 = v83;
      if (v45)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Forcing ODN timeout due to user defaults settings", v46, 2u);
      }

      v39 = v84;
      (*(v38 + 8))(v27, v84);
      v30 = 0.0001;
    }

    else
    {
      v39 = v84;
      v38 = v83;
      if (v69)
      {
        defaultLogger()();
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "ODN triggered at proofing time, setting time out to a default value", v49, 2u);
        }

        (*(v38 + 8))(v24, v39);
        v50._countAndFlagsBits = 0x6233346566333836;
        v51._countAndFlagsBits = 0xD000000000000043;
        v51._object = 0x800000010071ED40;
        v50._object = 0xE800000000000000;
        logMilestone(tag:description:)(v50, v51);
        v30 = 15.0;
      }
    }
  }

  defaultLogger()();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134349056;
    *(v54 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v52, v53, "now we wait %{public}f seconds for ODN", v54, 0xCu);
  }

  v55 = *(v38 + 8);
  v55(v21, v39);
  v56 = v78;
  static DispatchTime.now()();
  v57 = v79;
  + infix(_:_:)();
  v58 = v81;
  v59 = *(v80 + 8);
  v59(v56, v81);
  OS_dispatch_semaphore.wait(timeout:)();
  v59(v57, v58);
  result = static DispatchTimeoutResult.== infix(_:_:)();
  if (result)
  {
    v61 = v70;
    defaultLogger()();
    sub_10000CCA8();
    sub_10000CCA8();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 68157952;
      *(v64 + 4) = 2;
      *(v64 + 8) = 2048;
      *(v64 + 10) = v30;
      _os_log_impl(&_mh_execute_header, v62, v63, "Timed out waiting for ODN data after %.*f seconds", v64, 0x12u);
    }

    v55(v61, v84);
    v85 = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v85 = 0xD000000000000022;
    v86 = 0x800000010071EC10;
    v65 = v71;
    static Date.now.getter();
    sub_100545850(&qword_10083ACE0, &type metadata accessor for Date);
    v66 = v73;
    v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v67);

    (*(v72 + 8))(v65, v66);
    (*(v74 + 104))(v76, enum case for DIPError.Code.odnTimeout(_:), v75);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100544838(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Data.init(base64Encoded:options:)();
  if (v15 >> 60 == 15)
  {
    v25 = v5;
    v26 = result;
    v27 = v15;
    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v24 = v8;
      v19 = v18;
      v20 = swift_slowAlloc();
      v23 = v4;
      v21 = v20;
      v28 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100141FE4(a1, a2, &v28);
      _os_log_impl(&_mh_execute_header, v16, v17, "Invalid assessment GUID: %{public}s", v19, 0xCu);
      sub_10000BB78(v21);
      v4 = v23;

      v8 = v24;
    }

    (*(v10 + 8))(v13, v9);
    (*(v25 + 104))(v8, enum case for DIPError.Code.invalidAssessmentGUID(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v26;
  }

  return result;
}

uint64_t sub_100544BA4(uint64_t a1)
{
  v2 = type metadata accessor for AugmentedProfile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100544C00()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100544C48()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100544CA0(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100544CF8()
{
  v30 = type metadata accessor for DIPSignpost();
  v1 = *(v30 - 8);
  v34 = *(v1 + 80);
  v2 = (v34 + 16) & ~v34;
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = type metadata accessor for DispatchTime();
  v6 = *(v32 - 8);
  v33 = *(v6 + 80);
  v7 = (v33 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v33;
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2, v30);
  v11 = *(v0 + v26 + 8);

  v12 = *(v0 + v4);

  v13 = *(v0 + v28);

  v14 = *(v0 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));

  (*(v6 + 8))(v0 + v7, v32);
  v15 = *(v0 + v8);

  v16 = *(v0 + v9);

  v17 = *(v0 + v27);

  v18 = *(v0 + v29);

  v19 = *(v0 + v31);

  if (*(v0 + v10))
  {
    v20 = *(v0 + v10 + 8);
  }

  v21 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v0 + v21);

  v24 = *(v0 + v22);

  return _swift_deallocObject(v0, v22 + 8, v34 | v33 | 7);
}

unint64_t sub_100544F68(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8)
{
  v12 = *(type metadata accessor for DIPSignpost() - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = v13 + *(v12 + 64);
  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(type metadata accessor for DispatchTime() - 8);
  v21 = (*(v20 + 80) + v19 + 8) & ~*(v20 + 80);
  v22 = (*(v20 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100540128(a1, a2, a3, a4, a5, a6, a7, a8, v8 + v13, *(v8 + v15), *(v8 + v15 + 8), *(v8 + v15 + 16), *(v8 + v16), *(v8 + v17), *(v8 + v18), *(v8 + v19), v8 + v21, *(v8 + v22), *(v8 + v23), *(v8 + v24), *(v8 + v25), *(v8 + v26), *(v8 + v27), *(v8 + v27 + 8), *(v8 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v8 + ((((v27 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100545174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10054518C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DIPError.Code();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v37 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DIPError.PropertyKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v34 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];

  defaultLogger()();
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v10;
    v18 = v17;
    v32 = swift_slowAlloc();
    *&v40 = v32;
    *v18 = 136446210;
    swift_getErrorValue();
    v31 = v16;
    v19 = Error.localizedDescription.getter();
    v21 = sub_100141FE4(v19, v20, &v40);

    *(v18 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v31, "ODN error : %{public}s", v18, 0xCu);
    sub_10000BB78(v32);

    (*(v11 + 8))(v14, v33);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v22 = v34;
  (*(v7 + 104))(v34, enum case for DIPError.PropertyKey.underlyingErrno(_:), v6);
  v23 = _convertErrorToNSError(_:)();
  v24 = [v23 code];

  v41 = &type metadata for Int;
  v42 = &protocol witness table for Int;
  *&v40 = v24;
  sub_10001F358(&v40, v39);
  LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
  v38 = a2;
  v25 = sub_10001F370(v39, v39[3]);
  sub_100658C24(*v25, v22, v23, &v38);
  (*(v7 + 8))(v22, v6);
  sub_10000BB78(v39);
  v26 = _convertErrorToNSError(_:)();
  v27 = [v26 code];

  if (v27 == -31)
  {
    (*(v35 + 104))(v37, enum case for DIPError.Code.odnDisconnected(_:), v36);
  }

  else
  {
    (*(v35 + 104))(v37, enum case for DIPError.Code.odnError(_:), v36);
  }

  type metadata accessor for DIPError();
  sub_100545850(&qword_100834130, &type metadata accessor for DIPError);
  v28 = swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return v28;
}

uint64_t sub_100545790()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[11];

  v10 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100545850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100545898(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100545924(void *a1, uint64_t a2)
{
  v4 = *(*(sub_100007224(&qword_100847760, &qword_1006E7AB0) - 8) + 80);

  return sub_100543400(a1, a2);
}

uint64_t sub_1005459B0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005459F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100545A34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100545A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100545B38()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100545D04, 0, 0);
}

uint64_t sub_100545D04()
{
  v93 = v0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceFallbackProfile.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0[18];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "User settings forcing fallback profile", v7, 2u);
    }

    v8 = v0[18];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[2];

    v12 = *(v10 + 8);
    v12(v8, v9);
    sub_100549828();
    if (v14)
    {
      v90 = v13;
      v91 = v14;
      v45 = v0[17];
      v46 = v0[2];
      defaultLogger()();

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = v0[2];
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v92[0] = v51;
        *v50 = 136446210;
        v52 = v0[2];
        if (*(v49 + 32))
        {
          v53 = *(v52 + 24);
          v54 = *(v49 + 32);
        }

        else
        {
          v85 = *(v52 + 16);
          if (v85)
          {
            v86 = *(v85 + 24);
            if (v86)
            {
              v53 = *(v86 + 16);
              v54 = *(v86 + 24);
              v87 = *(v49 + 32);
            }

            else
            {
              v53 = 0x414C494156414E55;
              v54 = 0xEB00000000454C42;
            }
          }

          else
          {
            v53 = 0x6E776F6E6B6E753CLL;
            v54 = 0xE90000000000003ELL;
          }
        }

        v88 = v0[17];
        v55 = v0[9];
        v56 = v0[10];

        v57 = sub_100141FE4(v53, v54, v92);

        *(v50 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v47, v48, "Using fallback assessment profile for %{public}s due to user defaults setting", v50, 0xCu);
        sub_10000BB78(v51);

        v58 = v88;
        v59 = v55;
      }

      else
      {
        v67 = v0[17];
        v69 = v0[9];
        v68 = v0[10];

        v58 = v67;
        v59 = v69;
      }

      v12(v58, v59);
      goto LABEL_34;
    }

    v15 = v0[16];
    v16 = v0[2];
    defaultLogger()();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[2];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v92[0] = v21;
      *v20 = 136446210;
      v22 = *(v19 + 32);
      v23 = v0[2];
      v89 = v12;
      if (v22)
      {
        v24 = *(v23 + 24);
        v25 = v22;
      }

      else
      {
        v63 = *(v23 + 16);
        if (v63)
        {
          v64 = *(v63 + 24);
          if (v64)
          {
            v24 = *(v64 + 16);
            v25 = *(v64 + 24);
          }

          else
          {
            v24 = 0x414C494156414E55;
            v25 = 0xEB00000000454C42;
          }
        }

        else
        {
          v24 = 0x6E776F6E6B6E753CLL;
          v25 = 0xE90000000000003ELL;
        }
      }

      v26 = v0[16];
      v27 = v0[9];
      v28 = v0[10];

      v29 = sub_100141FE4(v24, v25, v92);

      *(v20 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to get a fallback profile for %{public}s despite user defaults setting; falling back to normal profile flow", v20, 0xCu);
      sub_10000BB78(v21);

      v89(v26, v27);
    }

    else
    {
      v30 = v0[16];
      v31 = v0[9];
      v32 = v0[10];

      v12(v30, v31);
    }
  }

  v33 = *(v0[2] + 16);
  v0[19] = v33;
  if (v33 && v33[1078])
  {
    v90 = v33[1077];
    v91 = v33[1078];
    v34 = v0[15];

    defaultLogger()();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v0[2];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v92[0] = v39;
      *v38 = 136446210;
      if (*(v37 + 32))
      {
        v40 = *(v0[2] + 24);
        v41 = *(v37 + 32);
      }

      else
      {
        v65 = v33[3];
        if (v65)
        {
          v40 = *(v65 + 16);
          v41 = *(v65 + 24);
          v66 = *(v37 + 32);
        }

        else
        {
          v40 = 0x414C494156414E55;
          v41 = 0xEB00000000454C42;
        }
      }

      v70 = v0[15];
      v72 = v0[9];
      v71 = v0[10];

      v73 = sub_100141FE4(v40, v41, v92);

      *(v38 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v35, v36, "Using assessment profile from workflow for %{public}s", v38, 0xCu);
      sub_10000BB78(v39);

      (*(v71 + 8))(v70, v72);
    }

    else
    {
      v60 = v0[15];
      v62 = v0[9];
      v61 = v0[10];

      (*(v61 + 8))(v60, v62);
    }

LABEL_34:
    v75 = v0[17];
    v74 = v0[18];
    v77 = v0[15];
    v76 = v0[16];
    v79 = v0[13];
    v78 = v0[14];
    v81 = v0[11];
    v80 = v0[12];
    v82 = v0[8];
    v83 = v0[5];

    v84 = v0[1];

    return v84(v90, v91);
  }

  v42 = swift_task_alloc();
  v0[20] = v42;
  *v42 = v0;
  v42[1] = sub_100546598;
  v43 = v0[2];

  return sub_100548A44();
}

uint64_t sub_100546598(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 160);
  v8 = *v3;
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = v2;

  if (v2)
  {
    v6 = sub_100546E24;
  }

  else
  {
    v6 = sub_1005466B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005466B0()
{
  v85 = v0;
  v1 = v0[2];
  if (v0[22])
  {
    v2 = v0[14];
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v84[0] = v7;
      *v6 = 136446210;
      v8 = *(v5 + 32);
      if (v8)
      {
        v9 = *(v0[2] + 24);
        v10 = v8;
      }

      else
      {
        v71 = v0[19];
        if (v71)
        {
          v72 = *(v71 + 24);
          if (v72)
          {
            v9 = *(v72 + 16);
            v10 = *(v72 + 24);
          }

          else
          {
            v9 = 0x414C494156414E55;
            v10 = 0xEB00000000454C42;
          }
        }

        else
        {
          v9 = 0x6E776F6E6B6E753CLL;
          v10 = 0xE90000000000003ELL;
        }
      }

      v11 = v0[14];
      v12 = v0[9];
      v13 = v0[10];

      v14 = sub_100141FE4(v9, v10, v84);

      *(v6 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Using assessment profile from CDN for %{public}s", v6, 0xCu);
      sub_10000BB78(v7);

      (*(v13 + 8))(v11, v12);
    }

    else
    {
      v40 = v0[14];
      v41 = v0[9];
      v42 = v0[10];

      (*(v42 + 8))(v40, v41);
    }

    v82 = v0[22];
    v83 = v0[21];
  }

  else
  {
    v15 = v0[23];
    v16 = v0[2];
    sub_100549828();
    if (v15)
    {
      v20 = v0[10];
      v19 = v0[11];
      v21 = v0[8];
      v22 = v0[9];
      v23 = v0[6];
      v24 = v0[7];
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_100037214();
      swift_allocError();
      (*(v24 + 16))(v25, v21, v23);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      (*(v20 + 8))(v19, v22);
      (*(v24 + 8))(v21, v23);
    }

    else if (v18)
    {
      v83 = v17;
      v58 = v18;
      v59 = v0[13];
      v60 = v0[2];
      defaultLogger()();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();

      v82 = v58;
      if (os_log_type_enabled(v61, v62))
      {
        v63 = v0[2];
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v84[0] = v65;
        *v64 = 136446210;
        if (*(v63 + 32))
        {
          v66 = *(v0[2] + 24);
          v67 = *(v63 + 32);
        }

        else
        {
          v78 = v0[19];
          if (v78)
          {
            v79 = *(v78 + 24);
            if (v79)
            {
              v66 = *(v79 + 16);
              v67 = *(v79 + 24);
              v80 = *(v63 + 32);
            }

            else
            {
              v66 = 0x414C494156414E55;
              v67 = 0xEB00000000454C42;
            }
          }

          else
          {
            v66 = 0x6E776F6E6B6E753CLL;
            v67 = 0xE90000000000003ELL;
          }
        }

        v81 = v0[13];
        v69 = v0[9];
        v68 = v0[10];

        v70 = sub_100141FE4(v66, v67, v84);

        *(v64 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v61, v62, "Using fallback assessment profile for %{public}s", v64, 0xCu);
        sub_10000BB78(v65);

        (*(v68 + 8))(v81, v69);
      }

      else
      {
        v75 = v0[13];
        v77 = v0[9];
        v76 = v0[10];

        (*(v76 + 8))(v75, v77);
      }

      goto LABEL_16;
    }

    v26 = v0[12];
    v27 = v0[2];
    defaultLogger()();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[2];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v84[0] = v32;
      *v31 = 136446210;
      v33 = *(v30 + 32);
      if (v33)
      {
        v34 = *(v0[2] + 24);
        v35 = v33;
      }

      else
      {
        v73 = v0[19];
        if (v73)
        {
          v74 = *(v73 + 24);
          if (v74)
          {
            v34 = *(v74 + 16);
            v35 = *(v74 + 24);
          }

          else
          {
            v34 = 0x414C494156414E55;
            v35 = 0xEB00000000454C42;
          }
        }

        else
        {
          v34 = 0x6E776F6E6B6E753CLL;
          v35 = 0xE90000000000003ELL;
        }
      }

      v36 = v0[12];
      v37 = v0[9];
      v38 = v0[10];

      v39 = sub_100141FE4(v34, v35, v84);

      *(v31 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "No profile available for %{public}s", v31, 0xCu);
      sub_10000BB78(v32);

      (*(v38 + 8))(v36, v37);
    }

    else
    {
      v43 = v0[12];
      v44 = v0[9];
      v45 = v0[10];

      (*(v45 + 8))(v43, v44);
    }

    v82 = 0;
    v83 = 0;
  }

LABEL_16:
  v47 = v0[17];
  v46 = v0[18];
  v49 = v0[15];
  v48 = v0[16];
  v51 = v0[13];
  v50 = v0[14];
  v53 = v0[11];
  v52 = v0[12];
  v54 = v0[8];
  v55 = v0[5];

  v56 = v0[1];

  return v56(v83, v82);
}

uint64_t sub_100546E24()
{
  v68 = v0;
  v1 = v0[23];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[3];
  v63 = v4;
  v65 = v0[2];
  (*(v0[4] + 104))(v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v6 + 16))(v9, v5, v7);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v63);
  (*(v6 + 8))(v5, v7);

  sub_100549828();
  if (v11)
  {
    v66 = v11;
    v41 = v10;
    v42 = v0[13];
    v43 = v0[2];
    defaultLogger()();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    v64 = v41;
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v0[2];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67[0] = v48;
      *v47 = 136446210;
      if (*(v46 + 32))
      {
        v49 = *(v0[2] + 24);
        v50 = *(v46 + 32);
      }

      else
      {
        v59 = v0[19];
        if (v59)
        {
          v60 = *(v59 + 24);
          if (v60)
          {
            v49 = *(v60 + 16);
            v50 = *(v60 + 24);
            v61 = *(v46 + 32);
          }

          else
          {
            v49 = 0x414C494156414E55;
            v50 = 0xEB00000000454C42;
          }
        }

        else
        {
          v49 = 0x6E776F6E6B6E753CLL;
          v50 = 0xE90000000000003ELL;
        }
      }

      v62 = v0[13];
      v52 = v0[9];
      v51 = v0[10];

      v53 = sub_100141FE4(v49, v50, v67);

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, "Using fallback assessment profile for %{public}s", v47, 0xCu);
      sub_10000BB78(v48);

      (*(v51 + 8))(v62, v52);
    }

    else
    {
      v56 = v0[13];
      v58 = v0[9];
      v57 = v0[10];

      (*(v57 + 8))(v56, v58);
    }
  }

  else
  {
    v12 = v0[12];
    v13 = v0[2];
    defaultLogger()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[2];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v67[0] = v18;
      *v17 = 136446210;
      v19 = *(v16 + 32);
      if (v19)
      {
        v20 = *(v0[2] + 24);
        v21 = v19;
      }

      else
      {
        v54 = v0[19];
        if (v54)
        {
          v55 = *(v54 + 24);
          if (v55)
          {
            v20 = *(v55 + 16);
            v21 = *(v55 + 24);
          }

          else
          {
            v20 = 0x414C494156414E55;
            v21 = 0xEB00000000454C42;
          }
        }

        else
        {
          v20 = 0x6E776F6E6B6E753CLL;
          v21 = 0xE90000000000003ELL;
        }
      }

      v22 = v0[12];
      v23 = v0[9];
      v24 = v0[10];

      v25 = sub_100141FE4(v20, v21, v67);

      *(v17 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "No profile available for %{public}s", v17, 0xCu);
      sub_10000BB78(v18);

      (*(v24 + 8))(v22, v23);
    }

    else
    {
      v26 = v0[12];
      v27 = v0[9];
      v28 = v0[10];

      (*(v28 + 8))(v26, v27);
    }

    v64 = 0;
    v66 = 0;
  }

  v30 = v0[17];
  v29 = v0[18];
  v32 = v0[15];
  v31 = v0[16];
  v34 = v0[13];
  v33 = v0[14];
  v36 = v0[11];
  v35 = v0[12];
  v37 = v0[8];
  v38 = v0[5];

  v39 = v0[1];

  return v39(v64, v66);
}

uint64_t sub_100547540()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for TimeoutError();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100547720, 0, 0);
}

uint64_t sub_100547720()
{
  v1 = *(v0[5] + 64);
  v0[19] = v1;
  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
LABEL_2:
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[14];
    v7 = v0[11];
    v8 = v0[8];

    v9 = v0[1];

    return v9(v3, v2);
  }

  v11 = *(v0[5] + 56);
  v0[20] = v11;
  if (!v11)
  {
    v15 = v0[18];
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[18];
    v20 = v0[15];
    v21 = v0[16];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Cannot fetch server time seed because no web service was provided", v22, 2u);
    }

    (*(v21 + 8))(v19, v20);
    v3 = 0;
    goto LABEL_2;
  }

  v12 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  swift_retain_n();
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_100547958;
  v14.n128_u64[0] = 4.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 2, &unk_1006E7CE8, v11, &type metadata for String, v14);
}

uint64_t sub_100547958()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_100547BA0;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_100547A74;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100547A74()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[2];
  v4 = v0[3];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  os_unfair_lock_lock((v2 + 32));
  sub_10054B89C((v2 + 16));
  if (v1)
  {
    v6 = (v0[19] + 32);

    os_unfair_lock_unlock(v6);
  }

  else
  {
    v7 = v0[20];
    os_unfair_lock_unlock((v0[19] + 32));

    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v11 = v0[11];
    v12 = v0[8];

    v13 = v0[1];

    v13(v3, v4);
  }
}

uint64_t sub_100547BA0()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[14];
  v4 = v0[12];

  v0[4] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v5 = swift_dynamicCast();
  v6 = v0[22];
  v7 = v0[20];
  v8 = v0[16];
  v9 = v0[17];
  v36 = v0[15];
  if (v5)
  {
    v31 = v0[13];
    v10 = v0[11];
    v32 = v0[12];
    v34 = v0[14];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[7];
    v14 = v0[8];
    v15 = v0[6];

    (*(v13 + 104))(v14, enum case for DIPError.Code.timeoutNetworkFetchSTS(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    (*(v11 + 16))(v16, v10, v12);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v8 + 8))(v9, v36);
    (*(v11 + 8))(v10, v12);

    (*(v31 + 8))(v34, v32);
    v17 = v0[4];
  }

  else
  {
    v18 = v0[10];
    v19 = v0[8];
    v33 = v0[11];
    v35 = v0[9];
    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[4];

    (*(v20 + 104))(v19, enum case for DIPError.Code.internalError(_:), v21);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    (*(v18 + 16))(v23, v33, v35);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v8 + 8))(v9, v36);
    (*(v18 + 8))(v33, v35);
  }

  v25 = v0[17];
  v24 = v0[18];
  v26 = v0[14];
  v27 = v0[11];
  v28 = v0[8];

  v29 = v0[1];

  return v29(0, 0);
}

uint64_t sub_100547F8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100548024;

  return sub_1005A58C4(0);
}

uint64_t sub_100548024(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_10054B8E4, 0, 0);
  }
}

uint64_t sub_100548180()
{
  v1[14] = v0;
  v2 = type metadata accessor for Logger();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10054824C, 0, 0);
}

uint64_t sub_10054824C()
{
  v1 = v0[14];
  v2 = v1[7];
  v0[19] = v2;
  if (v2)
  {
    if (v1[4])
    {
      v3 = v1[3];
      v4 = v1[4];
      goto LABEL_4;
    }

    v18 = v1[2];
    if (v18)
    {
      v19 = *(v18 + 24);
      if (v19)
      {
        v3 = *(v19 + 16);
        v4 = *(v19 + 24);
      }

      else
      {
        v4 = 0xEB00000000454C42;
        v3 = 0x414C494156414E55;
      }

LABEL_4:

      sub_10054AA0C(v3, v4, 1, v0 + 2);

      v5 = swift_task_alloc();
      v0[20] = v5;
      *v5 = v0;
      v5[1] = sub_10054851C;

      return sub_1005A770C((v0 + 2));
    }

    v20 = v0[18];

    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[18];
    v25 = v0[15];
    v26 = v0[16];
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No workflow or workflow ID provided; skipping profile refresh", v27, 2u);
    }

    (*(v26 + 8))(v24, v25);
  }

  else
  {
    v7 = v0[17];
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No assessment static web service provided; skipping profile refresh", v14, 2u);
    }

    (*(v12 + 8))(v11, v13);
  }

  v16 = v0[17];
  v15 = v0[18];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10054851C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v4 = *v0;

  sub_10054B698(v1 + 16);

  return _swift_task_switch(sub_100548620, 0, 0);
}

uint64_t sub_100548620()
{
  v1 = v0[19];

  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100548690()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100548750, 0, 0);
}

uint64_t sub_100548750()
{
  v1 = *(v0[2] + 56);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1005488E0;

    return sub_1005A80B8();
  }

  else
  {
    v4 = v0[5];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[3];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No assessment static web service provided; skipping sts refresh", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);
    v12 = v0[5];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1005488E0()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_1005489DC, 0, 0);
}

uint64_t sub_1005489DC()
{
  v1 = v0[6];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100548A44()
{
  v1[17] = v0;
  v2 = type metadata accessor for DIPError();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for TimeoutError();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v1[24] = v8;
  v9 = *(v8 - 8);
  v1[25] = v9;
  v10 = *(v9 + 64) + 15;
  v1[26] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v1[27] = v11;
  v12 = *(v11 - 8);
  v1[28] = v12;
  v13 = *(v12 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_100548C24, 0, 0);
}

uint64_t sub_100548C24()
{
  v1 = *(v0 + 136);
  if (v1[4])
  {
    v2 = v1[3];
    v3 = v1[4];
    goto LABEL_3;
  }

  v12 = v1[2];
  if (v12)
  {
    v13 = *(v12 + 24);
    if (v13)
    {
      v2 = *(v13 + 16);
      v3 = *(v13 + 24);
      v14 = v1[4];
    }

    else
    {
      v3 = 0xEB00000000454C42;
      v2 = 0x414C494156414E55;
    }

LABEL_3:

    sub_10054AA0C(v2, v3, 0, (v0 + 16));

    v4 = v1[7];
    *(v0 + 248) = v4;
    if (v4)
    {
      v5 = swift_allocObject();
      v6 = *(v0 + 64);
      *(v5 + 56) = *(v0 + 48);
      *(v5 + 72) = v6;
      v7 = *(v0 + 96);
      *(v5 + 88) = *(v0 + 80);
      *(v5 + 104) = v7;
      v8 = *(v0 + 32);
      *(v5 + 24) = *(v0 + 16);
      *(v0 + 256) = v5;
      *(v5 + 16) = v4;
      *(v5 + 40) = v8;
      v9 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
      swift_retain_n();
      v10 = swift_task_alloc();
      *(v0 + 264) = v10;
      *v10 = v0;
      v10[1] = sub_100549028;
      v11.n128_u64[0] = 4.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 112, &unk_1006E7CD8, v5, &type metadata for String, v11);
    }

    else
    {
      v15 = *(v0 + 240);
      sub_10054B698(v0 + 16);
      defaultLogger()();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 240);
      v20 = *(v0 + 216);
      v21 = *(v0 + 224);
      if (v18)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "No assessment static web service provided; skipping profile fetch", v22, 2u);
      }

      (*(v21 + 8))(v19, v20);
      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      v25 = *(v0 + 208);
      v26 = *(v0 + 184);
      v27 = *(v0 + 160);

      v28 = *(v0 + 8);

      return v28(0, 0);
    }
  }

  v29 = *(v0 + 144);
  (*(*(v0 + 200) + 104))(*(v0 + 208), enum case for DIPError.Code.badLogic(_:), *(v0 + 192));
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v31 = *(v0 + 232);
  v30 = *(v0 + 240);
  v32 = *(v0 + 208);
  v33 = *(v0 + 184);
  v34 = *(v0 + 160);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100549028()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_1005491F8;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_100549144;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100549144()
{
  v1 = v0[31];

  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[20];

  v9 = v0[1];

  return v9(v3, v2);
}

uint64_t sub_1005491F8()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[23];
  v4 = v0[21];

  v0[16] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v5 = swift_dynamicCast();
  v6 = v0[34];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[27];
  v11 = v0[24];
  v12 = v0[25];
  if (v5)
  {
    v34 = v0[27];
    v35 = v0[22];
    v13 = v0[20];
    v36 = v0[21];
    v37 = v0[23];
    v33 = v0[31];
    v15 = v0[18];
    v14 = v0[19];

    (*(v12 + 104))(v9, enum case for DIPError.Code.timeoutNetworkFetchProfile(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    (*(v14 + 16))(v16, v13, v15);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v7 + 8))(v8, v34);
    (*(v14 + 8))(v13, v15);

    (*(v35 + 8))(v37, v36);
    v17 = v0[16];

    v19 = v0[29];
    v18 = v0[30];
    v20 = v0[26];
    v21 = v0[23];
    v22 = v0[20];

    v23 = v0[1];

    return v23(0, 0);
  }

  else
  {
    v25 = v0[18];
    v26 = v0[16];

    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v7 + 8))(v8, v10);
    (*(v12 + 104))(v9, enum case for DIPError.Code.internalError(_:), v11);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v28 = v0[29];
    v27 = v0[30];
    v29 = v0[26];
    v30 = v0[23];
    v31 = v0[20];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_100549604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1005496A8;

  return sub_1005A8714(a3, 0);
}

uint64_t sub_1005496A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100549804, 0, 0);
  }
}

uint64_t sub_100549804()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

void sub_100549828()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v66 = *(v6 - 8);
  v7 = v66[8];
  v8 = __chkstk_darwin(v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = v0[6];
  if (v15)
  {
    v65 = v6;
    v67 = v0[5];
    v68 = v5;
    v16 = v15;
  }

  else
  {
    v37 = v0[2];
    if (!v37)
    {
      defaultLogger()();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Skipping fallback profile because no provider ID is available", v57, 2u);
      }

      (v66[1])(v10, v6);
      return;
    }

    v68 = v5;
    v38 = *(v37 + 24);
    v65 = v6;
    if (v38)
    {
      v16 = *(v38 + 72);
      v67 = *(v38 + 64);
    }

    else
    {
      v16 = 0xEB00000000454C42;
      v67 = 0x414C494156414E55;
    }
  }

  v17 = objc_allocWithZone(NSBundle);

  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithPath:v18];

  if (!v19)
  {

    v69 = "s/CoreIDVShared.framework";
    (*(v2 + 104))(v68, enum case for DIPError.Code.filesystemError(_:), v1);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v39 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v40 = *(*v39 + 72);
    v41 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1006BF520;
    v43 = v42 + v41;
    v44 = (v43 + v39[14]);
    v45 = enum case for DIPError.PropertyKey.filesystemPath(_:);
    v46 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v46 - 8) + 104))(v43, v45, v46);
    v44[3] = &type metadata for String;
    v44[4] = &protocol witness table for String;
    *v44 = 0xD000000000000039;
    v44[1] = 0x800000010071EF10;
    sub_10003C9C0(v42);
    swift_setDeallocating();
    sub_10000BE18(v43, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v20 = v67;
  sub_10054A688(v67, v16);
  if (!v21)
  {
    v69 = "getFallbackProfile()";
    (*(v2 + 104))(v68, enum case for DIPError.Code.badLogic(_:), v1);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v66 = v19;
    v47 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v48 = *(*v47 + 72);
    v49 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1006BF520;
    v51 = v50 + v49;
    v52 = (v51 + v47[14]);
    v53 = enum case for DIPError.PropertyKey.spProviderID(_:);
    v54 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v54 - 8) + 104))(v51, v53, v54);
    v52[3] = &type metadata for String;
    v52[4] = &protocol witness table for String;
    *v52 = v20;
    v52[1] = v16;
    sub_10003C9C0(v50);
    swift_setDeallocating();
    sub_10000BE18(v51, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_13;
  }

  v22 = String._bridgeToObjectiveC()();

  v23 = String._bridgeToObjectiveC()();
  v24 = [v19 pathForResource:v22 ofType:0 inDirectory:v23];

  if (v24)
  {

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    static String.Encoding.utf8.getter();
    v28 = v69;
    String.init(contentsOfFile:encoding:)();
    if (v28)
    {
      v67 = "e fallback profile filename";
      (*(v2 + 104))(v68, enum case for DIPError.Code.filesystemError(_:), v1);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v66 = v19;
      v69 = v28;
      v29 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v30 = *(*v29 + 72);
      v31 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1006BF520;
      v33 = v32 + v31;
      v34 = (v33 + v29[14]);
      v35 = enum case for DIPError.PropertyKey.filesystemPath(_:);
      v36 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v36 - 8) + 104))(v33, v35, v36);
      v34[3] = &type metadata for String;
      v34[4] = &protocol witness table for String;
      *v34 = v25;
      v34[1] = v27;
      sub_10003C9C0(v32);
      swift_setDeallocating();
      sub_10000BE18(v33, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

LABEL_13:

      return;
    }
  }

  else
  {
    defaultLogger()();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v19;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v61 = 136446210;
      v63 = sub_100141FE4(v67, v16, &v70);

      *(v61 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v58, v59, "No fallback profile was found for workflow %{public}s", v61, 0xCu);
      sub_10000BB78(v62);
    }

    else
    {
    }

    (v66[1])(v12, v65);
  }
}

uint64_t sub_10054A390()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_10054A40C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10054A498(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10054A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v10 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v10 + 54);
  sub_100031B5C(&v10[4], v15);
  os_unfair_lock_unlock(v10 + 54);
  v11 = v16;
  sub_10001F640(v16);
  sub_100031918(v15);
  if (v11)
  {
    v12 = v11(a1, a2, a5);
    sub_10001FE8C(v11);
  }

  else
  {
    type metadata accessor for ProfileManager();
    v12 = swift_allocObject();
    sub_100007224(&unk_100848980, &qword_1006E7CC8);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    v12[7] = a5;
    v12[8] = v13;
    v12[2] = 0;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a4;
  }

  return v12;
}

uint64_t sub_10054A688(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for Logger();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = a2;

  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._object = 0x800000010071F010;
  v17._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v17);
  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;

  (*(v12 + 8))(v15, v11);
  if (v20 >> 60 == 15)
  {
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error converting fallback provider ID to data", v23, 2u);
    }

    (*(v4 + 8))(v8, v35);
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25 = DigestSha256();

    if (v25)
    {
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      countAndFlagsBits = Data.base16EncodedString()()._countAndFlagsBits;
      sub_10000B90C(v26, v28);
      sub_10000BD94(v18, v20);
      return countAndFlagsBits;
    }

    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error hashing fallback provider ID", v33, 2u);
    }

    sub_10000BD94(v18, v20);

    (*(v4 + 8))(v10, v35);
  }

  return 0;
}

uint64_t sub_10054AA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v90 = a3;
  v103 = a1;
  v104 = a2;
  v102 = a4;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v100 = v4;
  v101 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v89 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v87 = &v87 - v10;
  v11 = __chkstk_darwin(v9);
  v91 = &v87 - v12;
  v13 = __chkstk_darwin(v11);
  v88 = &v87 - v14;
  __chkstk_darwin(v13);
  v94 = &v87 - v15;
  v16 = type metadata accessor for Locale.Language();
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = *(v92 + 64);
  __chkstk_darwin(v16);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100007224(&qword_10083DC48, &unk_1006DB7B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v87 - v22;
  v105 = type metadata accessor for Locale();
  v24 = *(v105 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v105);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v87 - v29;
  v31 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v87 - v33;
  v35 = [objc_opt_self() mainBundle];
  v36 = [v35 infoDictionary];

  if (!v36 || (v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v36, !v37))
  {
    v98 = 0x6E776F6E6B6E75;
    v99 = 0xE700000000000000;
    goto LABEL_15;
  }

  if (*(v37 + 16))
  {

    v38 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556);
    if (v39)
    {
      sub_10001F2EC(*(v37 + 56) + 32 * v38, v108);

      if (swift_dynamicCast())
      {
        v98 = v106;
        v99 = v107;
        if (!*(v37 + 16))
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v98 = 0x6E776F6E6B6E75;
  v99 = 0xE700000000000000;
  if (!*(v37 + 16))
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_11:
  v40 = sub_10003ADCC(0xD000000000000011, 0x8000000100706F10);
  if ((v41 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10001F2EC(*(v37 + 56) + 32 * v40, v108);

  if (swift_dynamicCast())
  {
    v42 = 0x6E776F6E6B6E75;
    v96 = v106;
    v97 = v107;
    goto LABEL_16;
  }

LABEL_15:
  v96 = 0x6E776F6E6B6E75;
  v97 = 0xE700000000000000;
  v42 = 0x6E776F6E6B6E75;
LABEL_16:
  static Locale.current.getter();
  Locale.region.getter();
  v43 = *(v24 + 8);
  v43(v30, v105);
  v44 = type metadata accessor for Locale.Region();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v34, 1, v44) == 1)
  {
    sub_10000BE18(v34, &unk_100849BA0, &qword_1006D95F0);
    v95 = 0xE700000000000000;
    v46 = 0x6E776F6E6B6E75;
  }

  else
  {
    v47 = Locale.Region.identifier.getter();
    v95 = v48;
    (*(v45 + 8))(v34, v44);
    v46 = 0x6E776F6E6B6E75;
    v42 = v47;
  }

  static Locale.current.getter();
  Locale.language.getter();
  v43(v28, v105);
  Locale.Language.languageCode.getter();
  (*(v92 + 8))(v19, v93);
  v49 = type metadata accessor for Locale.LanguageCode();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v23, 1, v49) == 1)
  {
    sub_10000BE18(v23, &qword_10083DC48, &unk_1006DB7B0);
    v51 = 0xE700000000000000;
  }

  else
  {
    v46 = Locale.LanguageCode.identifier.getter();
    v51 = v52;
    (*(v50 + 8))(v23, v49);
  }

  v53 = v94;
  v54 = [objc_opt_self() standardUserDefaults];
  v55._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceProfileBucket.getter();
  v56 = NSUserDefaults.internalString(forKey:)(v55);
  countAndFlagsBits = v56.value._countAndFlagsBits;
  object = v56.value._object;

  if (v56.value._object)
  {
    defaultLogger()();

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v108[0] = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_100141FE4(v56.value._countAndFlagsBits, v56.value._object, v108);
      _os_log_impl(&_mh_execute_header, v59, v60, "Forcing assessment bucket %{public}s due to user settings", v61, 0xCu);
      sub_10000BB78(v62);
    }

    (*(v101 + 8))(v53, v100);
    goto LABEL_26;
  }

  if (isInternalBuild()())
  {
    v69 = experimentalGroup()();
    v70 = v91;
    if (v69.value._object)
    {
      if (v69.value._countAndFlagsBits == 0x7972726163 && v69.value._object == 0xE500000000000000)
      {

LABEL_38:
        v76 = v88;
        defaultLogger()();
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&_mh_execute_header, v77, v78, "Selected assessment bucket 4", v79, 2u);
        }

        (*(v101 + 8))(v76, v100);
        object = 0xE100000000000000;
        countAndFlagsBits = 52;
        goto LABEL_26;
      }

      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v75)
      {
        goto LABEL_38;
      }
    }

    defaultLogger()();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Selected assessment bucket 3", v82, 2u);
    }

    (*(v101 + 8))(v70, v100);
    object = 0xE100000000000000;
    countAndFlagsBits = 51;
  }

  else if ((v90 & 1) != 0 || sub_10054A498(0x64uLL))
  {
    v71 = v89;
    defaultLogger()();
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Selected assessment bucket 1", v74, 2u);
    }

    (*(v101 + 8))(v71, v100);
    object = 0xE100000000000000;
    countAndFlagsBits = 49;
  }

  else
  {
    v83 = v87;
    defaultLogger()();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Selected assessment bucket 0", v86, 2u);
    }

    (*(v101 + 8))(v83, v100);
    object = 0xE100000000000000;
    countAndFlagsBits = 48;
  }

LABEL_26:
  v63 = v102;
  v64 = v104;
  *v102 = v103;
  v63[1] = v64;
  v65 = v97;
  v63[2] = v96;
  v63[3] = v65;
  v66 = v99;
  v63[4] = v98;
  v63[5] = v66;
  v67 = v95;
  v63[6] = v42;
  v63[7] = v67;
  v63[8] = v46;
  v63[9] = v51;
  v63[10] = countAndFlagsBits;
  v63[11] = object;
}

void *sub_10054B4F4(uint64_t a1, uint64_t a2)
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v4 + 54);
  sub_1000318FC(&v4[4], v14);
  os_unfair_lock_unlock(v4 + 54);
  v5 = v15;
  sub_10001F640(v15);
  sub_100031918(v14);
  if (v5)
  {
    v6 = v5(a1, a2);
    sub_10001FE8C(v5);
  }

  else
  {
    type metadata accessor for ProfileManager();
    v6 = swift_allocObject();
    sub_100007224(&unk_100848980, &qword_1006E7CC8);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    v6[2] = a1;
    v6[7] = a2;
    v6[8] = v7;
    if (a1)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v10 = v8[2];
        v9 = v8[3];
        v12 = v8[8];
        v11 = v8[9];
      }

      else
      {
        v9 = 0xEB00000000454C42;
        v10 = 0x414C494156414E55;
        v12 = 0x414C494156414E55;
        v11 = 0xEB00000000454C42;
      }

      v6[3] = v10;
      v6[4] = v9;
      v6[5] = v12;
      v6[6] = v11;
    }

    else
    {
      *(v6 + 5) = 0u;
      *(v6 + 3) = 0u;
    }
  }

  return v6;
}

uint64_t sub_10054B6EC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10054B754(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_100549604(a1, v4, v1 + 24);
}

uint64_t sub_10054B800(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041F04;

  return sub_100547F8C(a1);
}

uint64_t sub_10054B89C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1[1];

  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_10054B8E8(int a1)
{
  v31 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_10054FA40(&v28 - v15);
  (*(v4 + 8))(v16, v3);
  if (qword_100832B68 != -1)
  {
    swift_once();
  }

  sub_10003170C(v3, qword_100881E80);
  URL.appendingPathComponent(_:)();
  static URL.coreidvdBiomeManagedObjectModel.getter();
  (*(v4 + 16))(v8, v14, v3);
  v17 = type metadata accessor for AsyncCoreDataStore();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore__container;
  sub_100007224(&qword_100847928, &unk_1006E7D20);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  v30 = v8;
  v23 = v11;
  v24 = *(v4 + 8);
  v29 = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
  v24(v14, v3);
  *(v20 + v21) = v22;
  *(v22 + 16) = 0;
  v25 = v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_persistentStoreName;
  strcpy((v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_persistentStoreName), "coreidvd-biome");
  *(v25 + 15) = -18;
  v26 = *(v4 + 32);
  v26(v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_modelURL, v23, v3);
  v26(v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_databaseURL, v30, v3);
  *(v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_urlFileProtection) = v29;
  *(v20 + 16) = v31 & 1;
  *(v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_automaticallyRemoveIncompatibleStoresOnMigrationError) = 0;
  result = v32;
  *(v32 + 16) = v20;
  return result;
}

uint64_t sub_10054BCA8()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + 16) + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore__container);
  os_unfair_lock_lock((v7 + 24));
  sub_10054BEA0((v7 + 16), &v10);
  os_unfair_lock_unlock((v7 + 24));
  if (!v1)
  {
    return v10;
  }

  (*(v3 + 104))(v6, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10054BEBC(int a1)
{
  v31 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_10054FA40(&v28 - v15);
  (*(v4 + 8))(v16, v3);
  if (qword_100832B68 != -1)
  {
    swift_once();
  }

  sub_10003170C(v3, qword_100881E80);
  URL.appendingPathComponent(_:)();
  static URL.coreidvdManagedObjectModel.getter();
  (*(v4 + 16))(v8, v14, v3);
  v17 = type metadata accessor for AsyncCoreDataStore();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore__container;
  sub_100007224(&qword_100847928, &unk_1006E7D20);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  v30 = v8;
  v23 = v11;
  v24 = *(v4 + 8);
  v29 = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
  v24(v14, v3);
  *(v20 + v21) = v22;
  *(v22 + 16) = 0;
  v25 = (v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_persistentStoreName);
  *v25 = 0x6476646965726F63;
  v25[1] = 0xE800000000000000;
  v26 = *(v4 + 32);
  v26(v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_modelURL, v23, v3);
  v26(v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_databaseURL, v30, v3);
  *(v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_urlFileProtection) = v29;
  *(v20 + 16) = v31 & 1;
  *(v20 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_automaticallyRemoveIncompatibleStoresOnMigrationError) = 1;
  result = v32;
  *(v32 + 16) = v20;
  return result;
}

uint64_t sub_10054C274()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + 16) + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore__container);
  os_unfair_lock_lock((v7 + 24));
  sub_10054BEA0((v7 + 16), &v10);
  os_unfair_lock_unlock((v7 + 24));
  if (!v1)
  {
    return v10;
  }

  (*(v3 + 104))(v6, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10054C46C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100834718, &qword_1006C0018);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10001F2EC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10001F348(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10001F348(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10001F348(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10001F348(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_10054C734(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_1008346F8, &qword_1006DA530);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

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
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_10001F348(&v27, v29);
        sub_10001F348(v29, v30);
        sub_10001F348(v30, &v28);
        result = sub_10003ADCC(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000BB78(v12);
          result = sub_10001F348(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_10001F348(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10054C98C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100847D88, &unk_1006E7FB0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v13 = (*(a1 + 56) + 16 * v11);
    v14 = v13[1];
    v27 = *v13;
    v28 = v14;
    v15 = v12;

    swift_dynamicCast();
    sub_10001F348((v29 + 8), v26);
    sub_10001F348(v26, v29);
    v16 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v15;
    result = sub_10001F348(v29, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10054CC30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100834718, &qword_1006C0018);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_10001F348(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_10001F348(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_10001F348(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10054CEF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100847D78, &qword_1006E7F98);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_dynamicCast();
    sub_10001F348((v26 + 8), v24);
    sub_10001F348(v24, v26);
    v14 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v13;
    result = sub_10001F348(v26, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10054D194(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x44454C4542414CLL;
  if (v2 != 1)
  {
    v4 = 0x44454C494146;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 5719374;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x44454C4542414CLL;
  if (*a2 != 1)
  {
    v8 = 0x44454C494146;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 5719374;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10054D288()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10054D320()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10054D3A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10054D438@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10054EE88(*a1);
  *a2 = result;
  return result;
}

void sub_10054D468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x44454C4542414CLL;
  if (v2 != 1)
  {
    v5 = 0x44454C494146;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5719374;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *sub_10054D4C0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_10054F450(v0 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim);
  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);

  v5 = *(v0 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);

  v6 = *(v0 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData);

  v7 = *(v0 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_serviceName + 8);

  v8 = *(v0 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_acl);

  return v0;
}

uint64_t sub_10054D554()
{
  sub_10054D4C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10054D5D4()
{
  result = type metadata accessor for VerifiedClaim(319);
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

uint64_t sub_10054D690()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 1752392040;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_10054D6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10054EED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10054D70C(uint64_t a1)
{
  v2 = sub_10054E7FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054D748(uint64_t a1)
{
  v2 = sub_10054E7FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054D784()
{
  v1 = OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_value;
  v2 = sub_100007224(&unk_100849C00, &unk_1006BFC20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_publicKey + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_hash + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10054D87C()
{
  sub_10054DB2C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10054D918(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100847D80, &unk_1006E7FA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10054E7FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  sub_100007224(&unk_100849C00, &unk_1006BFC20);
  sub_1000BA30C(&qword_10084A0A0, &unk_100849C00, &unk_1006BFC20);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_publicKey);
  v12 = *(v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_publicKey + 8);
  v18 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = *(v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_hash);
  v15 = *(v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_hash + 8);
  v17 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

void sub_10054DB2C()
{
  if (!qword_100847BD8)
  {
    sub_10000B870(&unk_10084A070, &unk_1006E7DF0);
    sub_1000AB6CC();
    sub_1000AB81C();
    v0 = type metadata accessor for EncryptedMessage();
    if (!v1)
    {
      atomic_store(v0, &qword_100847BD8);
    }
  }
}

uint64_t sub_10054DBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10054DC84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10054DD48()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100133F18(319, &qword_100835140);
    if (v1 <= 0x3F)
    {
      sub_100133F18(319, &unk_100847CE0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10054DE50(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_100007224(&unk_100849C00, &unk_1006BFC20);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v28 = sub_100007224(&qword_100847D40, &unk_1006E7F70);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v28);
  v12 = &v26 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v29 = a1;
  sub_10000BA08(a1, v14);
  sub_10054E7FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for VerifiedEncryptedDataWrapper(0);
    v19 = *(*v3 + 48);
    v20 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = 0;
    sub_1000BA30C(&qword_100847D50, &unk_100849C00, &unk_1006BFC20);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 32))(v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_value, v8, v5);
    v31 = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v5;
    v16 = (v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_publicKey);
    *v16 = v15;
    v16[1] = v17;
    v30 = 2;
    v18 = v28;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    (*(v9 + 8))(v12, v18);
    v25 = (v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_hash);
    *v25 = v22;
    v25[1] = v24;
  }

  sub_10000BB78(v29);
  return v3;
}

uint64_t sub_10054E1EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for VerifiedEncryptedDataWrapper(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_10054DE50(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

Swift::Int sub_10054E26C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10054E2D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10054E328@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FC1C8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10054E3B0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1007FC200, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10054E408(uint64_t a1)
{
  v2 = sub_10054F3FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054E444(uint64_t a1)
{
  v2 = sub_10054F3FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054E480(void *a1)
{
  v2 = sub_100007224(&qword_100847D70, &qword_1006E7F90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-1] - v5;
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10054F3FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v18[0] = 0;
  v10 = [v8 dataWithJSONObject:isa options:0 error:v18];

  v11 = v18[0];
  if (v10)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v18[0] = v12;
    v18[1] = v14;
    sub_10000B9B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v3 + 8))(v6, v2);
    return sub_10000B90C(v12, v14);
  }

  else
  {
    v16 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v3 + 8))(v6, v2);
  }
}

id sub_10054E6BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10054C46C(*a1);
  v3 = objc_allocWithZone(NSDictionary);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithDictionary:isa];

  sub_10054C46C(v2);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v5 isEqualToDictionary:v6];

  return v7;
}

id sub_10054E7B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10054EFF0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10054E7FC()
{
  result = qword_100847D48;
  if (!qword_100847D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847D48);
  }

  return result;
}

uint64_t sub_10054E850(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_1000363B4(*a1, v4);
      sub_1000363B4(v7, v6);
      sub_10000BD94(v5, v4);
      goto LABEL_8;
    }

LABEL_5:
    sub_1000363B4(*a1, v4);
    sub_1000363B4(v7, v6);
    sub_10000BD94(v5, v4);
    sub_10000BD94(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1000363B4(*a1, v4);
  sub_1000363B4(v7, v6);
  v9 = sub_1000C31A0(v5, v4, v7, v6);
  sub_10000BD94(v7, v6);
  sub_10000BD94(v5, v4);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (*(a1 + 64) != *(a2 + 64) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 88);
  v13 = *(a2 + 88);
  if (v12)
  {
    if (!v13 || (*(a1 + 80) != *(a2 + 80) || v12 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((*(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = 5719374;
  if (*(a1 + 128))
  {
    if (*(a1 + 128) == 1)
    {
      v15 = 0xE700000000000000;
      v16 = 0x44454C4542414CLL;
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x44454C494146;
    }
  }

  else
  {
    v15 = 0xE300000000000000;
    v16 = 5719374;
  }

  if (*(a2 + 128))
  {
    if (*(a2 + 128) == 1)
    {
      v17 = 0xE700000000000000;
      v14 = 0x44454C4542414CLL;
    }

    else
    {
      v17 = 0xE600000000000000;
      v14 = 0x44454C494146;
    }
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  if (v16 == v14 && v15 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *(a1 + 144);
  v20 = *(a2 + 144);
  if (v19)
  {
    if (v20 && (*(a1 + 136) == *(a2 + 136) && v19 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_52;
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_52:
  if (*(a1 + 152) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_10054EBA4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for DIPPregeneratedAssessment(0);
  v6 = v5[5];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *v13 == *v15 && v14 == v16;
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v5[8];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v23 = v5[9];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if ((v24 != *v26 || v25 != v26[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v27 = v5[10];
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  if ((v28 != *v30 || v29 != v30[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v31 = v5[11];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if ((v32 != *v34 || v33 != v34[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v35 = v5[12];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  if ((v36 != *v38 || v37 != v38[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[13]) != *(a2 + v5[13]))
  {
    return 0;
  }

  v39 = v5[14];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  result = (v40 | v41) == 0;
  if (v40)
  {
    if (v41)
    {

      sub_10054C46C(v40);
      v43 = objc_allocWithZone(NSDictionary);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v45 = [v43 initWithDictionary:isa];

      sub_10054C46C(v41);
      v46 = Dictionary._bridgeToObjectiveC()().super.isa;

      v47 = [v45 isEqualToDictionary:v46];

      return v47;
    }
  }

  return result;
}

unint64_t sub_10054EE88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FC160, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10054EED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752392040 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_10054EFF0(uint64_t *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100847D58, &qword_1006E7F80);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = a1[4];
  v12 = sub_10000BA08(a1, a1[3]);
  sub_10054F3FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_10;
  }

  v23 = v6;
  v24 = a1;
  v22 = v3;
  sub_10000B960();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v28[0];
  v13 = v28[1];
  v15 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v28[0] = 0;
  v17 = [v15 JSONObjectWithData:isa options:0 error:v28];

  v12 = v28[0];
  if (!v17)
  {
    v19 = v28[0];
    _convertNSErrorToError(_:)();

    goto LABEL_8;
  }

  v18 = v28[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100007224(&qword_100847D68, &qword_1006E7F88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v25 + 104))(v23, enum case for DIPError.Code.internalError(_:), v22);
    v12 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
LABEL_8:
    swift_willThrow();
    sub_10000B90C(v14, v13);
    (*(v26 + 8))(v10, v7);
    a1 = v24;
LABEL_10:
    sub_10000BB78(a1);
    return v12;
  }

  (*(v26 + 8))(v10, v7);
  sub_10000B90C(v14, v13);
  v12 = v27;
  sub_10000BB78(v24);
  return v12;
}

unint64_t sub_10054F3FC()
{
  result = qword_100847D60;
  if (!qword_100847D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847D60);
  }

  return result;
}

uint64_t sub_10054F450(uint64_t a1)
{
  v2 = type metadata accessor for VerifiedClaim(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10054F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_100847538, &unk_1006E83A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10054F590(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100847538, &unk_1006E83A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10054F660()
{
  sub_100133F18(319, &qword_10083AA40);
  if (v0 <= 0x3F)
  {
    sub_100133F18(319, &qword_100835140);
    if (v1 <= 0x3F)
    {
      sub_10054F750();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10054F750()
{
  if (!qword_100846C08)
  {
    type metadata accessor for OTDRequest(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100846C08);
    }
  }
}

unint64_t sub_10054F7DC()
{
  result = qword_100847E48;
  if (!qword_100847E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E48);
  }

  return result;
}

unint64_t sub_10054F834()
{
  result = qword_100847E50;
  if (!qword_100847E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E50);
  }

  return result;
}

unint64_t sub_10054F88C()
{
  result = qword_100847E58;
  if (!qword_100847E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E58);
  }

  return result;
}

unint64_t sub_10054F8E4()
{
  result = qword_100847E60;
  if (!qword_100847E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E60);
  }

  return result;
}

unint64_t sub_10054F93C()
{
  result = qword_100847E68;
  if (!qword_100847E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E68);
  }

  return result;
}

unint64_t sub_10054F994()
{
  result = qword_100847E70;
  if (!qword_100847E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E70);
  }

  return result;
}

unint64_t sub_10054F9EC()
{
  result = qword_100847E78;
  if (!qword_100847E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E78);
  }

  return result;
}

uint64_t sub_10054FA40@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v62 = *(v1 - 8);
  v63 = v1;
  v2 = *(v62 + 64);
  __chkstk_darwin(v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v57 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() defaultManager];
  if (qword_100832B68 != -1)
  {
    swift_once();
  }

  v18 = sub_10003170C(v12, qword_100881E80);
  (*(v13 + 16))(v16, v18, v12);
  v70 = 0;
  URL.path.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v17 fileExistsAtPath:v19 isDirectory:&v70];

  if (v20)
  {
    if (v70 == 1)
    {

      return (*(v13 + 32))(v65, v16, v12);
    }

    URL._bridgeToObjectiveC()(v70);
    v22 = v21;
    v71 = 0;
    v23 = [v17 removeItemAtURL:v21 error:&v71];

    if (!v23)
    {
      v56 = v71;
      _convertNSErrorToError(_:)();

      goto LABEL_17;
    }

    v24 = v71;
  }

  v60 = v17;
  v61 = v16;
  v64 = v4;
  v25 = URL.path.getter();
  v27 = v26;
  defaultLogger()();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v58 = v9;
    v32 = v25;
    v33 = v27;
    v34 = v31;
    v71 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_100141FE4(v32, v33, &v71);
    _os_log_impl(&_mh_execute_header, v28, v29, "Creating directory %s", v30, 0xCu);
    sub_10000BB78(v34);
    v27 = v33;
    v25 = v32;
    v9 = v58;
  }

  v35 = *(v67 + 8);
  v35(v11, v68);
  S_IRUSR.getter();
  S_IWUSR.getter();
  S_IXUSR.getter();
  String.utf8CString.getter();
  v36 = rootless_mkdir_datavault();

  if (!v36)
  {

    v16 = v61;
    return (*(v13 + 32))(v65, v16, v12);
  }

  v65 = v13;
  v66 = v12;
  v37 = errno.getter();
  defaultLogger()();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 67109120;
    *(v40 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "error creating directory : %d", v40, 8u);
  }

  v59 = v27;

  v35(v9, v68);
  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v71 = 0xD000000000000019;
  v72 = 0x800000010071F4C0;
  v41._countAndFlagsBits = v25;
  v41._object = v27;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x206F742065756420;
  v42._object = 0xEE00206F6E727265;
  String.append(_:)(v42);
  v69 = v37;
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v67 = v72;
  v68 = v71;
  (*(v62 + 104))(v64, enum case for DIPError.Code.filesystemError(_:), v63);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v44 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v45 = *(v44 - 8);
  v63 = *(v45 + 72);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1006BF740;
  v48 = v47 + v46;
  v49 = v47 + v46 + *(v44 + 48);
  v50 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v51 = type metadata accessor for DIPError.PropertyKey();
  v52 = *(*(v51 - 8) + 104);
  v62 = v25;
  (v52)(v48, v50, v51);
  *(v49 + 24) = &type metadata for Int32;
  *(v49 + 32) = &protocol witness table for Int32;
  *v49 = v37;
  v53 = (v48 + v63 + *(v44 + 48));
  v52();
  v53[3] = &type metadata for String;
  v53[4] = &protocol witness table for String;
  v54 = v59;
  *v53 = v62;
  v53[1] = v54;
  sub_10003C9C0(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v13 = v65;
  v12 = v66;
  v17 = v60;
  v16 = v61;
LABEL_17:
  swift_willThrow();

  return (*(v13 + 8))(v16, v12);
}

void *sub_100550300()
{
  type metadata accessor for DIPSqliteLocalStore();
  swift_allocObject();
  result = sub_10055033C();
  qword_1008823D8 = result;
  return result;
}

void *sub_10055033C()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10017ABC8();
  v12[0] = "deleteDatabase()";
  v12[1] = v9;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10057628C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  v0[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[3] = 0xD000000000000011;
  v0[4] = 0x800000010071F4A0;
  v0[5] = 0;
  v10 = [objc_opt_self() defaultManager];
  v0[7] = 0;
  v0[8] = 0;
  v0[6] = v10;
  sub_1005507F8();
  return v0;
}

uint64_t sub_1005505EC()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10057621C;
  *(v2 + 24) = v0;
  v8[4] = sub_10026CBB8;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10057E264;
  v8[3] = &unk_100816B00;
  v3 = _Block_copy(v8);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {

    v6 = *(v0 + 32);

    v7 = *(v0 + 64);

    return v0;
  }

  return result;
}

sqlite3 *sub_100550754(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 40);
  if (result)
  {
    result = sqlite3_close_v2(result);
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t sub_1005507A0()
{
  sub_1005505EC();

  return swift_deallocClassInstance();
}

uint64_t sub_1005507F8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v47 - v7;
  v8 = type metadata accessor for DIPError.Code();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  __chkstk_darwin(v8);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  __chkstk_darwin(v11);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for URL();
  v14 = *(v60 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v60);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  sub_10054FA40(&v47 - v19);
  v21 = v0[3];
  v22 = v0[4];
  URL.appendingPathComponent(_:)();
  v23 = URL.path.getter();
  v24 = v0[8];
  v0[7] = v23;
  v0[8] = v25;

  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v61 = 0;
  v29 = [v27 setResourceValue:NSURLFileProtectionCompleteUntilFirstUserAuthentication forKey:NSURLFileProtectionKey error:&v61];

  if (v29)
  {
    v30 = v61;
  }

  else
  {
    v52 = v1;
    v31 = v2;
    v32 = v61;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    v51 = v34;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v50 = v31;
      v36 = v35;
      v49 = swift_slowAlloc();
      v61 = v49;
      *v36 = 136315138;
      swift_getErrorValue();
      v47 = v33;
      v37 = Error.localizedDescription.getter();
      v39 = sub_100141FE4(v37, v38, &v61);
      v48 = v6;
      v40 = v39;

      *(v36 + 4) = v40;
      v41 = v52;
      v42 = v47;
      _os_log_impl(&_mh_execute_header, v47, v51, "Ignoring error when changing file protection: %s", v36, 0xCu);
      sub_10000BB78(v49);

      v43 = v50;

      (*(v43 + 8))(v48, v41);
    }

    else
    {

      (*(v31 + 8))(v6, v52);
    }
  }

  sub_100550E88(v18);
  v44 = *(v14 + 8);
  v45 = v60;
  v44(v18, v60);
  return (v44)(v20, v45);
}

const char *sub_100550E88(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  __chkstk_darwin(v2);
  v81 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v82 = &v72 - v16;
  v17 = __chkstk_darwin(v15);
  v76 = &v72 - v18;
  v19 = __chkstk_darwin(v17);
  v74 = &v72 - v20;
  v21 = __chkstk_darwin(v19);
  v77 = &v72 - v22;
  v23 = __chkstk_darwin(v21);
  v78 = &v72 - v24;
  v25 = __chkstk_darwin(v23);
  v83 = &v72 - v26;
  __chkstk_darwin(v25);
  v28 = &v72 - v27;
  defaultLogger()();
  v29 = *(v6 + 16);
  v88 = a1;
  v85 = v5;
  v29(v9, a1, v5);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v72 = v11;
    v33 = v32;
    v34 = swift_slowAlloc();
    v87 = v34;
    *v33 = 136315138;
    v35 = URL.path.getter();
    v73 = v10;
    v37 = v36;
    (*(v6 + 8))(v9, v85);
    v38 = sub_100141FE4(v35, v37, &v87);
    v10 = v73;

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "coreidvd: database at %s", v33, 0xCu);
    sub_10000BB78(v34);

    v39 = *(v72 + 8);
  }

  else
  {

    (*(v6 + 8))(v9, v85);
    v39 = *(v11 + 8);
  }

  v39(v28, v10);
  URL.path.getter();
  v40 = String.utf8CString.getter();

  v41 = v86;
  swift_beginAccess();
  v42 = sqlite3_open_v2((v40 + 32), (v41 + 40), 3145730, 0);
  swift_endAccess();

  if (v42)
  {
    if (v42 == 23)
    {
      (*(v79 + 104))(v81, enum case for DIPError.Code.deviceLocked(_:), v80);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      defaultLogger()();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 67109120;
        *(v50 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v48, v49, "coreidvd: error opening file, removing and recreating database: sqlite error code %d", v50, 8u);
      }

      v39(v83, v10);
      v51 = v84;
      result = sub_100551CDC(v88);
      if (!v51)
      {
        v52 = v78;
        defaultLogger()();
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "coreidvd: finished creating tables", v55, 2u);
        }

        return (v39)(v52, v10);
      }
    }
  }

  else
  {
    v44 = v84;
    sub_100553BD0();
    if (v44)
    {
      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "coreidvd: error during schema migration, re-creating database", v47, 2u);
      }

      v39(v82, v10);
      sub_100551CDC(v88);
      v67 = v75;
      defaultLogger()();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "coreidvd: finished reloading tables", v71, 2u);
      }

      return (v39)(v67, v10);
    }

    else
    {
      if ((sub_100555910() & 1) == 0)
      {
        defaultLogger()();
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "coreidvd: invalid tables, re-creating", v58, 2u);
        }

        v39(v77, v10);
        sub_100551CDC(v88);
        v59 = v74;
        defaultLogger()();
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "coreidvd: finished reloading tables", v62, 2u);
        }

        v39(v59, v10);
      }

      v63 = v76;
      defaultLogger()();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "coreidvd: successfully retrieved database", v66, 2u);
      }

      return (v39)(v63, v10);
    }
  }

  return result;
}

id sub_1005518C8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  if (*(a1 + 64))
  {
    v11 = *(a1 + 56);
    swift_beginAccess();
    v12 = *(a1 + 40);

    if (v12)
    {
      sqlite3_close_v2(v12);
      *(a1 + 40) = 0;
    }

    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = v11;
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "coreidvd: deleting database", v15, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v16 = *(a1 + 48);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 fileExistsAtPath:v17];

    if (!v18)
    {
    }

    v19 = *(a1 + 48);
    v20 = String._bridgeToObjectiveC()();

    v25 = 0;
    v21 = [v19 removeItemAtPath:v20 error:&v25];

    if (v21)
    {
      return v25;
    }

    v23 = v25;
    _convertNSErrorToError(_:)();
  }

  else
  {
    (*(v10 + 104))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.unexpectedDaemonState(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  }

  return swift_willThrow();
}

const char *sub_100551CDC(uint64_t a1)
{
  v3 = v1;
  v104 = type metadata accessor for URLResourceValues();
  v103 = *(v104 - 8);
  v5 = *(v103 + 64);
  __chkstk_darwin(v104);
  v113 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DIPError.Code();
  v109 = *(v110 - 8);
  v7 = *(v109 + 64);
  __chkstk_darwin(v110);
  v114 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Logger();
  v107 = *(v108 - 1);
  v9 = *(v107 + 64);
  v10 = __chkstk_darwin(v108);
  v99 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v100 = &v99 - v13;
  __chkstk_darwin(v12);
  v105 = &v99 - v14;
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v19;
  v20 = *(v19 + 16);
  v116 = v21;
  v112 = v19 + 16;
  v111 = v20;
  (v20)(v18, a1);
  swift_beginAccess();
  v22 = *(v3 + 40);
  if (v22)
  {
    sqlite3_close_v2(v22);
    *(v3 + 40) = 0;
  }

  v23 = *(v3 + 48);
  URL.path.getter();
  v24 = String._bridgeToObjectiveC()();

  v117 = 0;
  v25 = [v23 removeItemAtPath:v24 error:&v117];

  if (v25)
  {
    v106 = v2;
    v26 = v117;
  }

  else
  {
    v27 = v117;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v106 = 0;
  }

  v102 = v3;
  v28 = *(v3 + 48);
  URL.path.getter();
  v29 = String._bridgeToObjectiveC()();

  sub_100007224(&qword_1008480B8, &unk_1006E8390);
  inited = swift_initStackObject();
  v101 = xmmword_1006BF740;
  *(inited + 16) = xmmword_1006BF740;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  *(inited + 64) = v31;
  *(inited + 72) = NSFilePosixPermissions;
  v32 = NSFileProtectionKey;
  v33 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v34 = NSFilePosixPermissions;
  v35 = S_IRUSR.getter();
  v36 = S_IWUSR.getter();
  *(inited + 104) = &type metadata for UInt16;
  *(inited + 80) = v36 | v35;
  sub_10003D8B8(inited);
  swift_setDeallocating();
  sub_100007224(&qword_100834870, &qword_1006C00C0);
  swift_arrayDestroy();
  type metadata accessor for FileAttributeKey(0);
  sub_10057628C(&unk_1008341B0, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  LOBYTE(v35) = [v28 createFileAtPath:v29 contents:0 attributes:isa];

  if ((v35 & 1) == 0)
  {
    v40 = v18;
    v42 = v105;
    defaultLogger()();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "coreidvd: error creating new database", v45, 2u);
    }

    (*(v107 + 8))(v42, v108);
    v113 = "PRAGMA user_version=1.0";
    (*(v109 + 104))(v114, enum case for DIPError.Code.sqliteError(_:), v110);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v46 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v47 = *(*v46 + 72);
    v48 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1006BF520;
    v50 = (v49 + v48 + v46[14]);
    v51 = enum case for DIPError.PropertyKey.filesystemPath(_:);
    v52 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v52 - 8) + 104))(v49 + v48, v51, v52);
    v41 = v116;
    v50[3] = v116;
    v50[4] = sub_10057628C(&qword_1008418B0, &type metadata accessor for URL);
    v53 = sub_100032DBC(v50);
    v111(v53, v40, v41);
    sub_10003C9C0(v49);
    swift_setDeallocating();
    sub_10000BE18(v49 + v48, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return (*(v115 + 8))(v40, v41);
  }

  v38 = v113;
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  v39 = v106;
  URL.setResourceValues(_:)();
  v40 = v18;
  if (v39)
  {
    (*(v103 + 8))(v38, v104);
    v41 = v116;
    return (*(v115 + 8))(v40, v41);
  }

  URL.path.getter();
  v54 = String.utf8CString.getter();

  v55 = v102;
  swift_beginAccess();
  v56 = sqlite3_open_v2((v54 + 32), (v55 + 40), 3145730, 0);
  swift_endAccess();

  if (v56)
  {
    result = sqlite3_errmsg(*(v55 + 40));
    if (result)
    {
      v106 = v40;
      v58 = String.init(cString:)();
      v60 = v59;
      v61 = v100;
      defaultLogger()();
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "coreidvd: error creating database", v64, 2u);
      }

      (*(v107 + 8))(v61, v108);
      v117 = 0;
      v118 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v117 = 0xD00000000000001CLL;
      v118 = 0x8000000100721570;
      v65._countAndFlagsBits = v58;
      v65._object = v60;
      String.append(_:)(v65);

      v108 = v117;
      v107 = v118;
      (*(v109 + 104))(v114, enum case for DIPError.Code.sqliteError(_:), v110);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v66 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v67 = *(*(v66 - 8) + 72);
      v68 = (*(*(v66 - 8) + 80) + 32) & ~*(*(v66 - 8) + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = v101;
      v70 = v69 + v68;
      v71 = v70 + *(v66 + 48);
      v72 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v73 = type metadata accessor for DIPError.PropertyKey();
      v74 = *(*(v73 - 8) + 104);
      (v74)(v70, v72, v73);
      v75 = sqlite3_errcode(*(v102 + 40));
      *(v71 + 24) = &type metadata for Int32;
      *(v71 + 32) = &protocol witness table for Int32;
      *v71 = v75;
      v76 = (v70 + v67 + *(v66 + 48));
      v74();
      v77 = v116;
      v76[3] = v116;
      v76[4] = sub_10057628C(&qword_1008418B0, &type metadata accessor for URL);
      v78 = sub_100032DBC(v76);
      v40 = v106;
      v111(v78, v106, v77);
      sub_10003C9C0(v69);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_17:
      v41 = v77;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v103 + 8))(v113, v104);
      return (*(v115 + 8))(v40, v41);
    }

    __break(1u);
  }

  else
  {
    sub_100553BD0();
    if (!sqlite3_exec(*(v55 + 40), "PRAGMA cache_size=512;", 0, 0, 0))
    {
      (*(v103 + 8))(v38, v104);
      return (*(v115 + 8))(v40, v116);
    }

    result = sqlite3_errmsg(*(v55 + 40));
    if (result)
    {
      v106 = v40;
      v79 = String.init(cString:)();
      v81 = v80;
      v82 = v99;
      defaultLogger()();
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "coreidvd: error setting cache size", v85, 2u);
      }

      (*(v107 + 8))(v82, v108);
      v117 = 0;
      v118 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v117 = 0xD00000000000001ALL;
      v118 = 0x80000001007215B0;
      v86._countAndFlagsBits = v79;
      v86._object = v81;
      String.append(_:)(v86);

      v108 = v117;
      v107 = v118;
      (*(v109 + 104))(v114, enum case for DIPError.Code.sqliteError(_:), v110);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v87 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v110 = v87;
      v88 = *(*(v87 - 8) + 72);
      v89 = (*(*(v87 - 8) + 80) + 32) & ~*(*(v87 - 8) + 80);
      v90 = swift_allocObject();
      *(v90 + 16) = v101;
      v91 = v90 + v89;
      v92 = v91 + *(v87 + 48);
      v93 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v94 = type metadata accessor for DIPError.PropertyKey();
      v95 = *(*(v94 - 8) + 104);
      (v95)(v91, v93, v94);
      v96 = sqlite3_errcode(*(v55 + 40));
      *(v92 + 24) = &type metadata for Int32;
      *(v92 + 32) = &protocol witness table for Int32;
      *v92 = v96;
      v97 = (v91 + v88 + *(v110 + 48));
      v95();
      v77 = v116;
      v97[3] = v116;
      v97[4] = sub_10057628C(&qword_1008418B0, &type metadata accessor for URL);
      v98 = sub_100032DBC(v97);
      v40 = v106;
      v111(v98, v106, v77);
      sub_10003C9C0(v90);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100552F38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v38 = v10;
      v43 = v12;
      goto LABEL_11;
    }

    if (a1 == 4)
    {
      v38 = v10;
      v43 = v12;
      goto LABEL_11;
    }

LABEL_8:
    v41 = 0;
    v42 = 0xE000000000000000;
    v15 = v12;
    _StringGuts.grow(_:)(28);

    v41 = 0xD00000000000001ALL;
    v42 = 0x8000000100721450;
    v39 = a1;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    (*(v10 + 104))(v14, enum case for DIPError.Code.badLogic(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_16;
  }

  if (a1 == 1)
  {
    v38 = v10;
    v43 = v12;
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    goto LABEL_8;
  }

  v38 = v10;
  v43 = v12;
LABEL_11:
  swift_beginAccess();
  v17 = *(v2 + 40);
  v18 = String.utf8CString.getter();

  LODWORD(v17) = sqlite3_exec(v17, (v18 + 32), 0, 0, 0);

  if (!v17)
  {
    return result;
  }

  v37 = v14;
  result = sqlite3_errmsg(*(v2 + 40));
  if (!result)
  {
    __break(1u);
    return result;
  }

  v20 = String.init(cString:)();
  v22 = v21;
  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "coreidvd: error updating user version", v25, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v39 = 0xD00000000000001DLL;
  v40 = 0x80000001007214B0;
  v26._countAndFlagsBits = v20;
  v26._object = v22;
  String.append(_:)(v26);

  v36 = v39;
  (*(v38 + 104))(v37, enum case for DIPError.Code.sqliteError(_:), v43);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v27 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v28 = *(*v27 + 72);
  v29 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1006BF520;
  v31 = v30 + v29;
  v32 = v31 + v27[14];
  v33 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v34 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v34 - 8) + 104))(v31, v33, v34);
  v35 = sqlite3_errcode(*(v2 + 40));
  *(v32 + 24) = &type metadata for Int32;
  *(v32 + 32) = &protocol witness table for Int32;
  *v32 = v35;
  sub_10003C9C0(v30);
  swift_setDeallocating();
  sub_10000BE18(v31, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
LABEL_16:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}
uint64_t sub_10020E2D8()
{
  sub_1000752F4(v0 + 123);
  v1 = v0[212];
  v2 = v0[153];
  v3 = v0[152];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[187];
  v5 = v0[186];
  v6 = v0[185];
  v7 = v0[184];
  v8 = v0[183];
  v9 = v0[182];
  v10 = v0[179];
  v11 = v0[176];
  v12 = v0[173];
  v13 = v0[170];
  v16 = v0[168];
  v17 = v0[165];
  v18 = v0[162];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10020E464()
{
  v1 = *(v0 + 1448) + 8;
  (*(v0 + 1552))(*(v0 + 1480), *(v0 + 1440));
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1216);
  swift_errorRetain();
  v4(0, v2);

  v5 = *(v0 + 1496);
  v6 = *(v0 + 1488);
  v7 = *(v0 + 1480);
  v8 = *(v0 + 1472);
  v9 = *(v0 + 1464);
  v10 = *(v0 + 1456);
  v11 = *(v0 + 1432);
  v12 = *(v0 + 1408);
  v13 = *(v0 + 1384);
  v14 = *(v0 + 1360);
  v17 = *(v0 + 1344);
  v18 = *(v0 + 1320);
  v19 = *(v0 + 1296);
  v20 = *(v0 + 1272);
  v21 = *(v0 + 1264);
  v22 = *(v0 + 1256);
  v23 = *(v0 + 1248);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10020E608(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10020E6D4, 0, 0);
}

uint64_t sub_10020E6D4()
{
  isa = v0[22].isa;
  v1 = v0[23].isa;
  v3 = v0[21].isa;
  (*(isa + 2))(v1, v0[20].isa + OBJC_IVAR____TtC10seserviced14SECUserSession__bypassRegistration, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(isa + 1))(v1, v3);
  isa_low = LOBYTE(v0[26].isa);
  if (isa_low)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B2C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Bypassing registration, only CAM should be using this!!!", v8, 2u);
    }

    goto LABEL_11;
  }

  v9 = v0[19].isa;
  v10 = [objc_allocWithZone(PKDeviceRegistrationService) init];
  v0[24].isa = v10;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return _swift_continuation_await(v10);
  }

  v6 = v10;
  if (v0[19].isa)
  {
    v0[25].isa = 0;
    v0[2].isa = v0;
    v0[7].isa = &v0[18];
    v0[3].isa = sub_10020E988;
    v11 = swift_continuation_init();
    v0[17].isa = sub_100068FC4(&unk_100507470, &qword_10040FA28);
    v0[10].isa = _NSConcreteStackBlock;
    v0[11].isa = 1107296256;
    v0[12].isa = sub_1002175F4;
    v0[13].isa = &unk_1004CC290;
    v0[14].isa = v11;
    [v6 performDeviceRegistrationWithCompletion:&v0[10]];
    v10 = v0 + 2;

    return _swift_continuation_await(v10);
  }

LABEL_11:
  v12 = v0[23].isa;

  v13 = v0[1].isa;

  return v13(isa_low);
}

uint64_t sub_10020E988()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10020EA68, 0, 0);
}

uint64_t sub_10020EA68()
{
  v1 = *(v0 + 144);
  switch(v1)
  {
    case 16:
      goto LABEL_4;
    case 64:
      v10 = *(v0 + 184);
      v11 = *(v0 + 192);
      sub_10009591C();
      swift_allocError();
      *v12 = 28;
      swift_willThrow();

      v8 = *(v0 + 8);
      v9 = 0;
      goto LABEL_11;
    case 32:
LABEL_4:
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000958E4(v2, qword_10051B2C8);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Registration succeeded", v5, 2u);
      }

      v6 = 1;
      goto LABEL_9;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_10051B2C8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 200);
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v15, v16, "Registration failed, attempt %ld", v18, 0xCu);
  }

  v19 = *(v0 + 200);
  v20 = *(v0 + 152);

  if (v19 + 1 == v20)
  {
    v6 = 0;
LABEL_9:
    v7 = *(v0 + 184);

    v8 = *(v0 + 8);
    v9 = v6;
LABEL_11:

    return v8(v9);
  }

  v21 = *(v0 + 192);
  ++*(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10020E988;
  v22 = swift_continuation_init();
  *(v0 + 136) = sub_100068FC4(&unk_100507470, &qword_10040FA28);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1002175F4;
  *(v0 + 104) = &unk_1004CC290;
  *(v0 + 112) = v22;
  [v21 performDeviceRegistrationWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10020EDE8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = UUID.uuidString.getter();
  a1[1] = v2;
  v3 = enum case for CredentialType.Vienna(_:);
  v4 = type metadata accessor for CredentialType();
  v5 = *(v4 - 8);
  (*(v5 + 104))(a1, v3, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_10020EEAC(uint64_t (*a1)(char a1, uint64_t a2), void *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v245 = a5;
  v263 = a4;
  v236 = a2;
  v246 = a1;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v233 = &v223 - v8;
  v242 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v241 = *(v242 - 8);
  v9 = *(v241 + 64);
  v10 = __chkstk_darwin(v242);
  v226 = &v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v237 = &v223 - v13;
  __chkstk_darwin(v12);
  v224 = &v223 - v14;
  v15 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v234 = (&v223 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v225 = &v223 - v20;
  __chkstk_darwin(v19);
  v240 = &v223 - v21;
  v268 = type metadata accessor for CredentialType();
  v22 = *(v268 - 1);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v268);
  v267 = &v223 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v266 = &v223 - v26;
  v265 = type metadata accessor for SEStorageManagementSheet.ProposedCredentialType();
  v27 = *(v265 - 1);
  v28 = *(v27 + 64);
  __chkstk_darwin(v265);
  v239 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v258 = *(v30 - 8);
  v31 = *(v258 + 64);
  v32 = __chkstk_darwin(v30);
  v34 = &v223 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v259 = &v223 - v36;
  v244 = v37;
  __chkstk_darwin(v35);
  v243 = (&v223 - v38);
  v39 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v256 = *(v39 - 8);
  v40 = *(v256 + 64);
  v41 = __chkstk_darwin(v39);
  v232 = &v223 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = v42;
  __chkstk_darwin(v41);
  v44 = &v223 - v43;
  v45 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v45);
  v231 = &v223 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v227 = &v223 - v51;
  v52 = __chkstk_darwin(v50);
  v230 = (&v223 - v53);
  v228 = v54;
  __chkstk_darwin(v52);
  v56 = (&v223 - v55);
  v252 = type metadata accessor for UUID();
  v251 = *(v252 - 8);
  v57 = *(v251 + 64);
  v58 = __chkstk_darwin(v252);
  v238 = &v223 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v250 = &v223 - v60;
  UUID.init()();
  v61 = *a3;
  *v56 = v61;
  v248 = v46;
  v62 = v46;
  v63 = v263;
  v64 = *(v62 + 104);
  v247 = v56;
  v235 = enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:);
  v249 = v45;
  v64(v56);
  v65 = *(v63 + 16);
  v257 = v30;
  v254 = v39;
  v253 = v34;
  v255 = v44;
  if (v65)
  {
    v270 = _swiftEmptyArrayStorage;
    v66 = v61;
    sub_10019F84C(0, v65, 0);
    v67 = v270;
    v69 = *(v22 + 16);
    v68 = v22 + 16;
    v70 = v63 + ((*(v68 + 64) + 32) & ~*(v68 + 64));
    v263 = *(v68 + 56);
    v264 = v69;
    v261 = v27 + 32;
    v262 = (v68 - 8);
    v71 = v239;
    v260 = v68;
    v72 = v69;
    do
    {
      v73 = v266;
      v74 = v268;
      v72(v266, v70, v268);
      v72(v267, v73, v74);
      SEStorageManagementSheet.ProposedCredentialType.init(snapshotType:)();
      (*v262)(v73, v74);
      v270 = v67;
      v76 = v67[2];
      v75 = v67[3];
      if (v76 >= v75 >> 1)
      {
        sub_10019F84C(v75 > 1, v76 + 1, 1);
        v67 = v270;
      }

      v67[2] = v76 + 1;
      (*(v27 + 32))(v67 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v76, v71, v265);
      v70 += v263;
      --v65;
    }

    while (v65);
    v268 = v67;
    v77 = v257;
    v78 = v258;
    v39 = v254;
    v79 = v256;
    v80 = v253;
    v81 = v255;
  }

  else
  {
    v82 = v61;
    v268 = _swiftEmptyArrayStorage;
    v79 = v256;
    v81 = v44;
    v80 = v34;
    v77 = v30;
    v78 = v258;
  }

  v84 = *(v245 + 16);
  v83 = *(v245 + 24);
  (*(v79 + 104))(v81, enum case for SEStorageManagementSheet.DisplayConfiguration.currentSystemConfiguration(_:), v39);
  v85 = *(v78 + 16);
  v86 = v243;
  v85(v243, v246, v77);
  v85(v259, v86, v77);
  v85(v80, v86, v77);
  v87 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v88 = swift_allocObject();
  v89 = v77;
  v90 = v88;
  (*(v78 + 32))(v88 + v87, v86, v89);
  if (qword_10051B4D8)
  {

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_1000958E4(v91, qword_10051B240);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v267 = v90;
      v95 = v94;
      v96 = swift_slowAlloc();
      v270 = v96;
      *v95 = 136315138;
      v97 = UUID.uuidString.getter();
      v99 = sub_1002FFA0C(v97, v98, &v270);

      *(v95 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v92, v93, "Presentation is already in progress for %s", v95, 0xCu);
      sub_1000752F4(v96);
      v100 = v256;
      v101 = v253;

      v102 = v249;
      v103 = v242;
    }

    else
    {
      v100 = v79;

      v102 = v249;
      v103 = v242;
      v101 = v253;
    }

    v114 = v241;
    v115 = v240;
    (*(v241 + 104))(v240, enum case for SEStorageManagementInternal.Types.ErrorCode.presentationInProgress(_:), v103);
    (*(v114 + 56))(v115, 0, 1, v103);
    v116 = v259;
    sub_100210A14(0, v115);

    v117 = v257;
    v118 = *(v258 + 8);
    v118(v101, v257);

    sub_100075768(v115, &unk_100506F00, &qword_10040BE90);
    v118(v116, v117);
    v119 = v102;
    v120 = v254;
    v121 = v255;
    goto LABEL_16;
  }

  v263 = v84;
  v264 = v83;
  v267 = v90;
  v104 = *(v251 + 16);
  v105 = v238;
  v106 = v250;
  v107 = v252;
  v104(v238, v250, v252);
  v108 = type metadata accessor for SEStorageManagementUIClient(0);
  v109 = *(v108 + 48);
  v110 = *(v108 + 52);
  swift_allocObject();
  v111 = sub_1001E0E8C(v105);
  qword_10051B4D8 = v111;

  v104(v105, v106, v107);
  v112 = objc_allocWithZone(type metadata accessor for SEStorageManagementPresenter(0));

  v113 = sub_1001E2868(v105, 0);
  v266 = v111;
  sub_1001E1140(v113);
  v125 = *(v78 + 8);
  v124 = v78 + 8;
  v123 = v125;
  v125(v259, v257);
  v126 = *&v113[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession];
  v127 = v236;
  *&v113[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession] = v236;

  v128 = qword_100501938;
  v129 = v127;
  if (v128 != -1)
  {
    swift_once();
  }

  v130 = type metadata accessor for Logger();
  sub_1000958E4(v130, qword_10051B240);
  v131 = v113;
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.info.getter();

  v134 = os_log_type_enabled(v132, v133);
  v258 = v124;
  v261 = 0;
  v262 = v123;
  if (v134)
  {
    v135 = swift_slowAlloc();
    v265 = swift_slowAlloc();
    v270 = v265;
    *v135 = 136315138;
    v136 = v131;
    v137 = [v136 description];
    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    v141 = sub_1002FFA0C(v138, v140, &v270);

    *(v135 + 4) = v141;
    _os_log_impl(&_mh_execute_header, v132, v133, "SharedUIClient: Starting presenter %s", v135, 0xCu);
    sub_1000752F4(v265);
  }

  v142 = v266;
  v143 = *(v266 + 4);
  *(v266 + 4) = v131;
  v144 = v131;

  v145 = swift_allocObject();
  v145[2] = v142;
  v145[3] = sub_10021B8B4;
  v145[4] = v267;
  v265 = v144;
  v146 = *(v144 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state);
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock((v146 + 20));
  v147 = *(v146 + 16);
  os_unfair_lock_unlock((v146 + 20));

  v119 = v249;
  v148 = v237;
  if (v147)
  {
    v149 = v265;
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v270 = v153;
      *v152 = 136315138;
      v154 = v149;
      v155 = [v154 description];
      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v158 = v157;

      v142 = v266;
      v159 = sub_1002FFA0C(v156, v158, &v270);

      *(v152 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v150, v151, "%s Unable to start presentation out of pending state", v152, 0xCu);
      sub_1000752F4(v153);
    }

    v160 = v257;
    v120 = v254;
    v161 = v253;
    v162 = v255;
    v163 = v242;
    v164 = v241;
    v165 = v234;
    *v234 = 0xD00000000000001ALL;
    *(v165 + 8) = 0x8000000100464520;
    (*(v164 + 104))(v165, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v163);
    (*(v164 + 56))(v165, 0, 1, v163);
    v166 = *(v142 + 4);
    if (v166)
    {
      v167 = *(v166 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
      *(v166 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
    }

    sub_100210A14(0, v165);
    sub_100075768(v165, &unk_100506F00, &qword_10040BE90);

    v100 = v256;
    v168 = v162;
    v119 = v249;
    goto LABEL_37;
  }

  v260 = v145;
  v169 = v248;
  v170 = *(v248 + 16);
  v171 = v230;
  v170(v230, v247, v249);
  v172 = (*(v169 + 88))(v171, v119);
  v173 = v172;
  if (v172 == v235 || v172 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.pairedWatch(_:))
  {
    (*(v248 + 96))(v171, v119);
    v259 = *v171;
    swift_beginAccess();
    sub_100068FC4(&unk_100504880, &unk_10040A5B0);
    UserDefaultBacked.wrappedValue.getter();
    v174 = v269;
    swift_endAccess();
    if (v174 == 1)
    {
      v175 = v119;
      v271 = &type metadata for SEStorageManagementMockPassProvider;
      v272 = sub_10014D3B4();
    }

    else
    {
      v176 = v227;
      v170(v227, v247, v119);
      v177 = type metadata accessor for SEStorageManagementPassProvider(0);
      v178 = *(v177 + 48);
      v179 = *(v177 + 52);
      swift_allocObject();
      v180 = v176;
      v181 = v261;
      v182 = sub_1001BAACC(v180, v148);
      if (v181)
      {
        v183 = v241;
        v184 = *(v241 + 32);
        v185 = v224;
        v186 = v242;
        v184(v224, v148, v242);
        v187 = v226;
        v184(v226, v185, v186);
        v188 = v225;
        (*(v183 + 16))(v225, v187, v186);
        (*(v183 + 56))(v188, 0, 1, v186);
        v189 = *(v142 + 4);
        if (v189)
        {
          v190 = *(v189 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
          *(v189 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
        }

        v161 = v253;
        sub_100210A14(0, v188);

        sub_100075768(v188, &unk_100506F00, &qword_10040BE90);
        (*(v183 + 8))(v187, v186);

        v160 = v257;
        v120 = v254;
        v168 = v255;
        v100 = v256;
        goto LABEL_37;
      }

      v191 = v182;
      v175 = v119;
      v271 = v177;
      v272 = sub_10021C09C(&unk_100507430, type metadata accessor for SEStorageManagementPassProvider);
      v270 = v191;
    }

    v192 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider;
    v193 = v265;
    swift_beginAccess();
    sub_100147EA4(&v270, v193 + v192, &qword_100504A50, &unk_10040F9F0);
    swift_endAccess();
    LODWORD(v261) = v173 == v235;
    v194 = swift_allocObject();
    v195 = v260;
    *(v194 + 16) = sub_10014CFE0;
    *(v194 + 24) = v195;
    sub_100068FC4(&unk_100507440, &unk_10040BEB0);
    v196 = swift_allocObject();
    sub_100068FC4(&qword_100504A58, &unk_10040FA00);
    v197 = swift_allocObject();
    *(v197 + 16) = 0;
    v196[3] = v194;
    v196[4] = v197;
    v196[2] = sub_10021B9B8;
    v198 = swift_allocObject();
    *(v198 + 16) = sub_10014D09C;
    *(v198 + 24) = v196;
    v199 = v198;
    v200 = type metadata accessor for TaskPriority();
    v201 = *(*(v200 - 8) + 56);
    v202 = v233;
    v201(v233, 1, 1, v200);
    v203 = swift_allocObject();
    *(v203 + 16) = 0;
    *(v203 + 24) = 0;
    *(v203 + 32) = xmmword_10040BE60;
    v204 = v265;
    v246 = sub_10021B9E8;
    *(v203 + 48) = v265;
    *(v203 + 56) = sub_10021B9E8;
    v245 = v199;
    *(v203 + 64) = v199;
    v243 = v204;

    v244 = sub_100201B44(0, 0, v202, &unk_10040BEC0, v203);
    v201(v202, 1, 1, v200);
    v170(v231, v247, v175);
    v205 = v256;
    v120 = v254;
    (*(v256 + 16))(v232, v255, v254);
    v206 = v248;
    v207 = (*(v248 + 80) + 40) & ~*(v248 + 80);
    v208 = (v228 + *(v205 + 80) + v207) & ~*(v205 + 80);
    v241 = (v208 + v229 + 7) & 0xFFFFFFFFFFFFFFF8;
    v240 = ((v208 + v229 + 23) & 0xFFFFFFFFFFFFFFF8);
    v209 = (v240 + 15) & 0xFFFFFFFFFFFFFFF8;
    v210 = (v209 + 23) & 0xFFFFFFFFFFFFFFF8;
    v242 = (v210 + 23) & 0xFFFFFFFFFFFFFFF8;
    v211 = (v242 + 15) & 0xFFFFFFFFFFFFFFF8;
    v212 = swift_allocObject();
    *(v212 + 16) = 0;
    *(v212 + 24) = 0;
    v213 = v243;
    *(v212 + 32) = v243;
    v214 = (v212 + v207);
    v100 = v205;
    (*(v206 + 32))(v214, v231, v249);
    (*(v205 + 32))(v212 + v208, v232, v120);
    v215 = (v212 + v241);
    *v215 = v268;
    v215[8] = v261;
    *&v240[v212] = v259;
    v216 = (v212 + v209);
    v217 = (v212 + v210);
    *v216 = 0;
    v216[1] = 0;
    v218 = v264;
    *v217 = v263;
    v217[1] = v218;
    *(v212 + v242) = v244;
    v219 = (v212 + v211);
    v119 = v249;
    v220 = v245;
    *v219 = v246;
    v219[1] = v220;
    v221 = v213;

    v222 = v212;
    v168 = v255;
    sub_1001F9BE8(0, 0, v233, &unk_10040FA10, v222);

    v160 = v257;
    v161 = v253;
LABEL_37:

    v262(v161, v160);

    v121 = v168;
LABEL_16:
    (*(v100 + 8))(v121, v120);
    (*(v248 + 8))(v247, v119);
    return (*(v251 + 8))(v250, v252);
  }

  v262(v253, v257);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100210A14(char a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000938D4(a2, v7, &unk_100506F00, &qword_10040BE90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100075768(v7, &unk_100506F00, &qword_10040BE90);
    v17 = a1 & 1;
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_10021C09C(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    v14 = swift_allocError();
    (*(v9 + 16))(v15, v12, v8);
    v16 = v14;
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    CheckedContinuation.resume(throwing:)();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_100210C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100210D14;

  return static Task<>.sleep(nanoseconds:)(3000000000);
}

uint64_t sub_100210D14()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100210E44, 0, 0);
  }
}

uint64_t sub_100210E44()
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B2C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Firing install complete notification after 3s", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_100210F90;
  v6 = *(v0 + 16);

  return sub_1002ADDD8();
}

uint64_t sub_100210F90()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100211358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[15] = v11;
  v12 = *(v11 - 8);
  v7[16] = v12;
  v7[17] = *(v12 + 64);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002114BC, 0, 0);
}

uint64_t sub_1002114BC()
{
  v87 = v0;
  v1 = v0[8];
  if (v1[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128])
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Deletion is not available on non-application clients", v5, 2u);
    }

    sub_10009591C();
    v7 = swift_allocError();
    v8 = 15;
    goto LABEL_36;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
    v1 = v0[8];
  }

  v9 = v0[22];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[9];
  v13 = type metadata accessor for Logger();
  v0[23] = sub_1000958E4(v13, qword_10051B2C8);
  v14 = *(v11 + 16);
  v0[24] = v14;
  v0[25] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v85 = v14;
  v14(v9, v12, v10);
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[22];
  v21 = v0[15];
  v20 = v0[16];
  if (v18)
  {
    v22 = v0[8];
    v23 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = UUID.uuidString.getter();
    v26 = sub_1002FFA0C(v24, v25, v86);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = UUID.uuidString.getter();
    v29 = v28;
    v30 = v19;
    v31 = *(v20 + 8);
    v31(v30, v21);
    v32 = sub_1002FFA0C(v27, v29, v86);

    *(v23 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "Session %s: Deleting credential %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v33 = v19;
    v31 = *(v20 + 8);
    v31(v33, v21);
  }

  v0[26] = v31;
  v34 = v0[8];
  v35 = &v34[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v36 = *&v34[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if ((v36 & 0x8000000000000000) == 0 || v36 != 0x8000000000000000 || *(v35 + 1) | *(v35 + 2) | *v35)
  {
    v37 = v34;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x8000000100467C40, v86);
      *(v40 + 12) = 2080;
      v41 = *(v35 + 3);
      if (v41 >> 62)
      {
        if (v41 >> 62 == 1)
        {
          v42 = 0xE500000000000000;
          v43 = 0x6465726957;
        }

        else
        {
          v57 = (*(v35 + 2) | *v35 | *(v35 + 1)) == 0;
          v58 = v41 == 0x8000000000000000;
          if (v58 && v57)
          {
            v43 = 0x656D6567616E614DLL;
          }

          else
          {
            v43 = 0x64696C61766E49;
          }

          if (v58 && v57)
          {
            v42 = 0xEA0000000000746ELL;
          }

          else
          {
            v42 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v42 = 0xED00006E6F697461;
        v43 = 0x6C756D4564726143;
      }

      v59 = sub_1002FFA0C(v43, v42, v86);

      *(v40 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s: Unexpected state %s, expected Management", v40, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    v7 = swift_allocError();
    v8 = 10;
    goto LABEL_36;
  }

  v44 = v0[9];
  v45 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v46 = *&v34[v45];
  v47 = swift_task_alloc();
  v47[2] = sub_10021C244;
  v47[3] = 0;
  v47[4] = v44;

  v48 = sub_10033322C(sub_10021C27C, v47, v46);

  if (v48 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_21;
    }

LABEL_40:
    v69 = v0[18];
    v70 = v0[15];
    v71 = v0[9];

    v85(v69, v71, v70);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[18];
    v76 = v0[15];
    v77 = v0[16];
    if (v74)
    {
      v78 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v78 = 136315394;
      *(v78 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x8000000100467C40, v86);
      *(v78 + 12) = 2080;
      v79 = UUID.uuidString.getter();
      v80 = v31;
      v81 = v79;
      v83 = v82;
      v80(v75, v76);
      v84 = sub_1002FFA0C(v81, v83, v86);

      *(v78 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v72, v73, "%s: Attempted to delete a credential %s that does not exist or no access", v78, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v31(v75, v76);
    }

    sub_10009591C();
    v7 = swift_allocError();
    v8 = 1;
LABEL_36:
    *v6 = v8;
    swift_willThrow();
    v61 = v0[10];
    v60 = v0[11];
    swift_errorRetain();
    v61(v7);

    v63 = v0[21];
    v62 = v0[22];
    v65 = v0[19];
    v64 = v0[20];
    v66 = v0[18];
    v67 = v0[14];

    v68 = v0[1];

    return v68();
  }

  result = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_40;
  }

LABEL_21:
  if ((v48 & 0xC000000000000001) != 0)
  {
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v50 = *(v48 + 32);
  }

  v51 = v50;
  v0[27] = v50;
  v52 = v0[21];

  v53 = v51;
  CredentialInternal.identifier.getter();
  v54 = swift_task_alloc();
  v0[28] = v54;
  *v54 = v0;
  v54[1] = sub_100211DC8;
  v55 = v0[21];
  v56 = v0[8];

  return sub_1002AEC78(v55);
}

uint64_t sub_100211DC8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v15 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v5 = v2[26];
    v4 = v2[27];
    v6 = v2[21];
    v9 = v2 + 15;
    v7 = v2[15];
    v8 = v9[1];

    v5(v6, v7);
    v10 = sub_10021293C;
  }

  else
  {
    v11 = v2[26];
    v12 = v2[21];
    v13 = v2[15];
    v2[30] = (v2[16] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v12, v13);
    v10 = sub_100211F34;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100211F34()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = OBJC_IVAR____TtC10seserviced14SECUserSession__useNetworkShim;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 312) == 1)
  {
    if (qword_100501C90 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 216);
    v7 = *(v0 + 160);
    CredentialInternal.identifier.getter();
    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_100212274;
    v9 = *(v0 + 160);

    return sub_1002E7C64(v9);
  }

  else
  {
    v27 = *(v0 + 216);
    v11 = *(v0 + 192);
    v26 = *(v0 + 200);
    v12 = *(v0 + 152);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    _StringGuts.grow(_:)(28);

    v18._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v18);

    v19._object = 0x8000000100467C60;
    v19._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v19);
    *(v0 + 272) = 0xE800000000000000;
    v11(v12, v16, v15);
    v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v0 + 280) = v22;
    (*(v14 + 32))(v22 + v20, v12, v15);
    *(v22 + v21) = v17;
    *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v23 = v17;
    v24 = v27;
    v25 = swift_task_alloc();
    *(v0 + 288) = v25;
    *v25 = v0;
    v25[1] = sub_100212608;

    return (sub_1001FB560)();
  }
}

uint64_t sub_100212274()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(v2 + 256) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 160);
    v8 = *(v2 + 120);

    v6(v7, v8);
    v9 = sub_100212A14;
  }

  else
  {
    (*(v2 + 208))(*(v2 + 160), *(v2 + 120));
    v9 = sub_1002123D8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002123D8()
{
  v19 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 216);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = *(v0 + 240);
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 152);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    CredentialInternal.identifier.getter();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    v6(v7, v8);
    v14 = sub_1002FFA0C(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully deleted credential %s with SHIM", v9, 0xCu);
    sub_1000752F4(v10);
  }

  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B858;
  *(v0 + 264) = qword_10051B858;

  return _swift_task_switch(sub_1002125A0, v15, 0);
}

uint64_t sub_1002125A0()
{
  v1 = *(v0 + 264);
  sub_10032C9E4();

  return _swift_task_switch(sub_10021C2B0, 0, 0);
}

uint64_t sub_100212608()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(v2 + 296) = v0;

  v5 = *(v2 + 280);
  v6 = *(v2 + 272);
  if (v0)
  {

    v7 = sub_100212AEC;
  }

  else
  {

    v7 = sub_10021277C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10021277C()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 304) = qword_10051B858;

  return _swift_task_switch(sub_100212814, v1, 0);
}

uint64_t sub_100212814()
{
  v1 = *(v0 + 304);
  sub_10032C9E4();

  return _swift_task_switch(sub_10021287C, 0, 0);
}

uint64_t sub_10021287C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 88);
  (*(v0 + 80))(0);

  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 112);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10021293C()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  swift_errorRetain();
  v3(v1);

  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = *(v0 + 112);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100212A14()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  swift_errorRetain();
  v3(v1);

  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = *(v0 + 112);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100212AEC()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  swift_errorRetain();
  v3(v1);

  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = *(v0 + 112);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100212BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v6 = type metadata accessor for UUID();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100212CC4, 0, 0);
}

uint64_t sub_100212CC4()
{
  v68 = v0;
  *(v0 + 40) = 0;
  v1 = [*(v0 + 64) listAppletsAndRefreshCache:0 outError:v0 + 40];
  v2 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = v1;
  v4 = *(v0 + 72);
  sub_10009393C(0, &qword_100504280, NFApplet_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v2;

  v7 = swift_task_alloc();
  v7[2] = v4;
  v8 = sub_10033322C(sub_10021B430, v7, v5);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 104);
    v47 = *(v0 + 112);
    v49 = *(v0 + 96);
    v50 = *(v0 + 72);
    v51 = type metadata accessor for Logger();
    sub_1000958E4(v51, qword_10051B2C8);
    (*(v48 + 16))(v47, v50, v49);
    v18 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    v53 = os_log_type_enabled(v18, v52);
    v55 = *(v0 + 104);
    v54 = *(v0 + 112);
    v56 = *(v0 + 96);
    if (!v53)
    {

      (*(v55 + 8))(v54, v56);
      goto LABEL_22;
    }

    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v67 = v58;
    *v57 = 136315138;
    v59 = UUID.uuidString.getter();
    v61 = v60;
    (*(v55 + 8))(v54, v56);
    v62 = sub_1002FFA0C(v59, v61, &v67);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v18, v52, "Nothing to delete in the SE when deleting %s", v57, 0xCu);
    sub_1000752F4(v58);
    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = *(v0 + 64);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 56) = 0;
  LODWORD(v9) = [v9 deleteApplets:isa queueServerConnection:1 outError:v0 + 56];

  v2 = *(v0 + 56);
  if (v9)
  {
    v11 = qword_1005019D8;
    v12 = v2;
    if (v11 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2C8);
    v16 = v14;
    v17 = v13;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v18, v19))
    {

LABEL_22:
      v64 = *(v0 + 112);
      v63 = *(v0 + 120);

      v46 = *(v0 + 8);
      goto LABEL_23;
    }

    v20 = *(v0 + 120);
    v21 = *(v0 + 104);
    v66 = *(v0 + 96);
    v22 = *(v0 + 80);
    v23 = *(v0 + 88);
    v24 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = UUID.uuidString.getter();
    v27 = sub_1002FFA0C(v25, v26, &v67);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    CredentialInternal.identifier.getter();
    v28 = UUID.uuidString.getter();
    v30 = v29;
    (*(v21 + 8))(v20, v66);
    v31 = sub_1002FFA0C(v28, v30, &v67);

    *(v24 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "Session %s: Successfully MFD credential %s", v24, 0x16u);
    swift_arrayDestroy();
LABEL_20:

    goto LABEL_22;
  }

LABEL_9:
  v32 = v2;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000958E4(v33, qword_10051B2C8);
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x8000000100467C40, &v67);
    *(v36 + 12) = 2080;
    swift_getErrorValue();
    v38 = *(v0 + 16);
    v37 = *(v0 + 24);
    v39 = *(v0 + 32);
    v40 = Error.localizedDescription.getter();
    v42 = sub_1002FFA0C(v40, v41, &v67);

    *(v36 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s: Nearfield error %s encountered when deleting applets", v36, 0x16u);
    swift_arrayDestroy();
  }

  v44 = *(v0 + 112);
  v43 = *(v0 + 120);
  sub_10009591C();
  swift_allocError();
  *v45 = 8;
  swift_willThrow();

  v46 = *(v0 + 8);
LABEL_23:

  return v46();
}

uint64_t sub_1002133C0(void **a1)
{
  v2 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_10013070C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100075768(v5, &unk_10050BE80, &unk_10040B360);
    v12 = 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if ([v11 managedBySP])
    {
      v12 = static UUID.== infix(_:_:)();
    }

    else
    {
      v12 = 0;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v12 & 1;
}

uint64_t sub_100213828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v4 = *(*(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[22] = v5;
  v6 = *(v5 - 8);
  v3[23] = v6;
  v7 = *(v6 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_100213958, 0, 0);
}

uint64_t sub_100213958()
{
  v0[4].type = 0;
  v1 = [*&v0[4].align listAppletsAndRefreshCache:0 outError:&v0[4].type];
  type = v0[4].type;
  if (!v1)
  {
    v45 = type;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    offs = v0[6].offs;
    name = v0[6].name;
    v48 = v0[5].name;

    v49 = v0->name;
    goto LABEL_65;
  }

  v3 = v1;
  sub_10009393C(0, &qword_100504280, NFApplet_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = type;

  if (v4 >> 62)
  {
LABEL_48:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  v7 = 0;
  v75 = v4 & 0xC000000000000001;
  v65 = *&v0[5].align;
  v73 = v4 + 32;
  v74 = v4 & 0xFFFFFFFFFFFFFF8;
  v68 = v0[5].offs;
  v69 = (v65 + 8);
  v67 = v68 + 14;
  v71 = v0;
  v72 = (v65 + 56);
  v70 = v6;
  while (1)
  {
    while (1)
    {
LABEL_7:
      if (v75)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v74 + 16))
        {
          goto LABEL_46;
        }

        v9 = *(v73 + 8 * v7);
      }

      v10 = v9;
      if (__OFADD__(v7++, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v12 = objc_opt_self();
      v13 = [v10 discretionaryData];
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v14, v16);
      v4 = [v12 TLVsWithData:isa];

      if (v4)
      {
        break;
      }

      v4 = v0[5].name;
      v8 = v0[5].type;

      (*v72)(v4, 1, 1, v8);
LABEL_6:
      sub_100075768(v0[5].name, &unk_10050BE80, &unk_10040B360);
      if (v7 == v6)
      {
        goto LABEL_49;
      }
    }

    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v10;
    if (!(v18 >> 62))
    {
      v4 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0 = &stru_1004F5000;
      if (v4)
      {
        goto LABEL_14;
      }

LABEL_40:
      v0 = v71;
      v44 = v71[5].name;
      v4 = v71[5].type;

      (*v72)(v44, 1, 1, v4);
LABEL_41:
      v6 = v70;
      goto LABEL_6;
    }

    v43 = _CocoaArrayWrapper.endIndex.getter();
    if (v43 < 0)
    {
      goto LABEL_47;
    }

    v4 = v43;
    v0 = &stru_1004F5000;
    if (!v43)
    {
      goto LABEL_40;
    }

LABEL_14:
    v19 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v20 = *(v18 + 8 * v19 + 32);
      }

      v21 = v20;
      if ([v20 tag] == 254)
      {
        v22 = [v21 v0[113].type];
        if (v22)
        {
          break;
        }
      }

      ++v19;

      if (v4 == v19)
      {
        goto LABEL_40;
      }
    }

    v23 = v22;
    v24 = [v22 value];
    if (!v24)
    {
      __break(1u);
    }

    v4 = v24;
    v0 = v71;
    v25 = v71[5].name;
    v26 = v71[5].type;

    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    sub_1001E0778(v27, v29, v25);
    if ((*(v65 + 48))(v25, 1, v26) == 1)
    {

      goto LABEL_41;
    }

    (*(v65 + 32))(v71[6].name, v71[5].name, v71[5].type);
    if (([v76 managedBySP] & 1) == 0)
    {
      break;
    }

    if (!*(v68 + 2) || (v30 = v71[6].name, v31 = v71[5].type, v32 = *(v68 + 5), sub_10021C09C(&unk_100507480, &type metadata accessor for UUID), v33 = dispatch thunk of Hashable._rawHashValue(seed:)(), v34 = -1 << *(v68 + 32), v35 = v33 & ~v34, ((*(v67 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0))
    {
LABEL_31:
      v42 = v0[6].name;
      v4 = v0[5].type;

      goto LABEL_33;
    }

    v66 = ~v34;
    v36 = *(v65 + 72);
    v37 = *(v65 + 16);
    while (1)
    {
      v38 = v0[6].offs;
      v39 = v0[5].type;
      v37(v38, *(v68 + 6) + v35 * v36, v39);
      sub_10021C09C(&qword_100502C18, &type metadata accessor for UUID);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *v69;
      (*v69)(v38, v39);
      if (v40)
      {
        break;
      }

      v35 = (v35 + 1) & v66;
      v0 = v71;
      if (((*(v67 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    v0 = v71;
    v41(v71[6].name, v71[5].type);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v6 = v70;
    if (v7 == v70)
    {
      goto LABEL_49;
    }
  }

  v42 = v71[6].name;
  v4 = v71[5].type;

LABEL_33:
  (*v69)(v42, v4);
  v6 = v70;
  if (v7 != v70)
  {
    goto LABEL_7;
  }

LABEL_49:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_60;
    }

LABEL_52:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    v0[6].type = sub_1000958E4(v50, qword_10051B2C8);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "deleting applets with TSM", v53, 2u);
    }

    v54 = *&v0[4].align;

    v55 = Array._bridgeToObjectiveC()().super.isa;
    *&v0[6].align = v55;

    v0->type = v0;
    *&v0->align = sub_100214358;
    v56 = swift_continuation_init();
    v0[4].name = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    v0[2].type = _NSConcreteStackBlock;
    *&v0[2].align = 1107296256;
    v0[3].offs = sub_1001E95B0;
    v0[3].name = &unk_1004CC380;
    v0[3].type = v56;
    [v54 deleteAppletsAndConnectToServer:v55 completion:&v0[2].type];

    return _swift_continuation_await(&v0->type);
  }

  else
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_52;
    }

LABEL_60:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000958E4(v57, qword_10051B2C8);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Nothing to delete in the SE when deleting ", v60, 2u);
    }

    v62 = v0[6].offs;
    v61 = v0[6].name;
    v63 = v0[5].name;

    v49 = v0->name;
LABEL_65:

    return v49();
  }
}

uint64_t sub_100214358()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1002145C0;
  }

  else
  {
    v3 = sub_100214494;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100214494()
{
  v1 = *(v0 + 208);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deletion successful with TSM", v4, 2u);
  }

  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002145C0()
{
  v1 = v0[27];
  v2 = v0[28];
  swift_willThrow();

  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[21];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100214678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v15;
  *(v8 + 272) = v14;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 296) = v9;
  v10 = *(v9 - 8);
  *(v8 + 304) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_10021476C, 0, 0);
}

uint64_t sub_10021476C()
{
  v212 = v0;
  v1 = *(v0 + 232);
  if (v1[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128])
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Edit access is not available on non-application clients", v5, 2u);
    }

    sub_10009591C();
    v7 = swift_allocError();
    v8 = 15;
    goto LABEL_41;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
    v1 = *(v0 + 232);
  }

  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = type metadata accessor for Logger();
  v14 = sub_1000958E4(v13, qword_10051B2C8);
  *(v0 + 336) = v14;
  v15 = v1;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v204 = *(v0 + 256);
    v206 = *(v0 + 264);
    v18 = *(v0 + 240);
    v19 = *(v0 + 248);
    v20 = *(v0 + 232);
    v21 = swift_slowAlloc();
    v211[0] = swift_slowAlloc();
    *v21 = 136316162;
    v22 = UUID.uuidString.getter();
    v207 = v14;
    v24 = sub_1002FFA0C(v22, v23, v211);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = Array.description.getter();
    v27 = sub_1002FFA0C(v25, v26, v211);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v28 = Array.description.getter();
    v30 = sub_1002FFA0C(v28, v29, v211);

    *(v21 + 24) = v30;
    *(v21 + 32) = 2080;
    v31 = Array.description.getter();
    v33 = sub_1002FFA0C(v31, v32, v211);

    *(v21 + 34) = v33;
    *(v21 + 42) = 2080;
    v34 = Array.description.getter();
    v36 = sub_1002FFA0C(v34, v35, v211);

    *(v21 + 44) = v36;
    _os_log_impl(&_mh_execute_header, v16, v17, "Session %s: Modifying access: addingOwners %s, removingOwners %s, addingUsers %s, removingUsers %s", v21, 0x34u);
    swift_arrayDestroy();
  }

  v37 = *(v0 + 232);
  v38 = &v37[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v39 = *&v37[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if (v39 < 0 && v39 == 0x8000000000000000 && !(*(v38 + 1) | *(v38 + 2) | *v38))
  {
    v48 = *(v0 + 272);
    v49 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
    swift_beginAccess();
    v50 = *&v37[v49];
    v51 = swift_task_alloc();
    v51[2] = sub_10021C244;
    v51[3] = 0;
    v51[4] = v48;

    v52 = sub_10033322C(sub_10012E2D4, v51, v50);

    if (v52 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (v53)
      {
LABEL_20:
        if ((v52 & 0xC000000000000001) != 0)
        {
          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_68:
            v135 = v53;
            v90 = _CocoaArrayWrapper.endIndex.getter();
            v53 = v135;
            if (v90)
            {
LABEL_47:
              v91 = v53;
              v211[0] = _swiftEmptyArrayStorage;
              result = sub_10019F3C0(0, v90 & ~(v90 >> 63), 0);
              if (v90 < 0)
              {
LABEL_134:
                __break(1u);
                goto LABEL_135;
              }

              v92 = 0;
              v93 = v211[0];
              v94 = v91;
              v201 = v91 & 0xC000000000000001;
              v95 = v91;
              do
              {
                if (v201)
                {
                  v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v96 = *(v94 + 8 * v92 + 32);
                }

                v97 = v96;
                v98 = ApplicationInfoInternal.applicationId.getter();
                v100 = v99;

                v211[0] = v93;
                v102 = *(v93 + 2);
                v101 = *(v93 + 3);
                if (v102 >= v101 >> 1)
                {
                  sub_10019F3C0((v101 > 1), v102 + 1, 1);
                  v93 = v211[0];
                }

                ++v92;
                *(v93 + 2) = v102 + 1;
                v103 = &v93[16 * v102];
                *(v103 + 4) = v98;
                *(v103 + 5) = v100;
                v94 = v95;
              }

              while (v90 != v92);

LABEL_70:
              v136 = *(v0 + 240);
              v137 = *(v136 + 16);
              if (v137)
              {
                v138 = (v136 + 40);
                do
                {
                  v141 = *(v138 - 1);
                  v140 = *v138;
                  *(v0 + 168) = v141;
                  *(v0 + 176) = v140;
                  v142 = swift_task_alloc();
                  *(v142 + 16) = v207;

                  v143 = sub_1002F784C(sub_10021AFCC, v142, v93);

                  if ((v143 & 1) == 0)
                  {

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v93 = sub_10012EA44(0, *(v93 + 2) + 1, 1, v93);
                    }

                    v145 = *(v93 + 2);
                    v144 = *(v93 + 3);
                    if (v145 >= v144 >> 1)
                    {
                      v93 = sub_10012EA44((v144 > 1), v145 + 1, 1, v93);
                    }

                    *(v93 + 2) = v145 + 1;
                    v139 = &v93[16 * v145];
                    *(v139 + 4) = v141;
                    *(v139 + 5) = v140;
                  }

                  v138 += 2;
                  --v137;
                }

                while (v137);
              }

              v146 = *(v93 + 2);
              v147 = _swiftEmptyArrayStorage;
              if (v146)
              {
                v148 = 0;
                v149 = -v146;
                v150 = v93 + 40;
                v151 = _swiftEmptyArrayStorage;
LABEL_81:
                v202 = v151;
                v152 = &v150[16 * v148++];
                while ((v148 - 1) < *(v93 + 2))
                {
                  v153 = *(v0 + 248);
                  v154 = *(v152 - 1);
                  v155 = *v152;
                  *(v0 + 184) = v154;
                  *(v0 + 192) = v155;
                  v147 = swift_task_alloc();
                  v147[2] = v204;

                  LOBYTE(v153) = sub_1002F784C(sub_10012E558, v147, v153);

                  if ((v153 & 1) == 0)
                  {
                    v151 = v202;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v211[0] = v202;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = sub_10019F3C0(0, *(v202 + 16) + 1, 1);
                      v151 = v211[0];
                    }

                    v157 = v151[2];
                    v156 = v151[3];
                    v147 = (v157 + 1);
                    if (v157 >= v156 >> 1)
                    {
                      isUniquelyReferenced_nonNull_native = sub_10019F3C0((v156 > 1), v157 + 1, 1);
                      v151 = v211[0];
                    }

                    v151[2] = v147;
                    v158 = &v151[2 * v157];
                    v158[4] = v154;
                    v158[5] = v155;
                    v150 = v93 + 40;
                    if (!(v149 + v148))
                    {
                      goto LABEL_91;
                    }

                    goto LABEL_81;
                  }

                  ++v148;
                  v152 += 16;
                  if (v149 + v148 == 1)
                  {
                    v151 = v202;
LABEL_91:
                    v147 = _swiftEmptyArrayStorage;
                    goto LABEL_93;
                  }
                }

                __break(1u);
              }

              else
              {
                v151 = _swiftEmptyArrayStorage;
LABEL_93:
                *(v0 + 352) = v151;

                v202 = v151;

                isUniquelyReferenced_nonNull_native = CredentialInternal.userApplications.getter();
                if (!(isUniquelyReferenced_nonNull_native >> 62))
                {
                  v159 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!v159)
                  {
LABEL_106:

                    v162 = _swiftEmptyArrayStorage;
LABEL_107:
                    v174 = *(v0 + 256);
                    v175 = *(v174 + 16);
                    if (v175)
                    {
                      v176 = (v174 + 40);
                      do
                      {
                        v179 = *(v176 - 1);
                        v178 = *v176;
                        *(v0 + 200) = v179;
                        *(v0 + 208) = v178;
                        v180 = swift_task_alloc();
                        *(v180 + 16) = v206;

                        v181 = sub_1002F784C(sub_10021C2D4, v180, v162);

                        if ((v181 & 1) == 0)
                        {

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v162 = sub_10012EA44(0, *(v162 + 2) + 1, 1, v162);
                          }

                          v183 = *(v162 + 2);
                          v182 = *(v162 + 3);
                          if (v183 >= v182 >> 1)
                          {
                            v162 = sub_10012EA44((v182 > 1), v183 + 1, 1, v162);
                          }

                          *(v162 + 2) = v183 + 1;
                          v177 = &v162[16 * v183];
                          *(v177 + 4) = v179;
                          *(v177 + 5) = v178;
                        }

                        v176 += 2;
                        --v175;
                      }

                      while (v175);
                    }

                    v184 = *(v162 + 2);
                    if (v184)
                    {
                      v185 = 0;
                      v186 = -v184;
                      v187 = v162 + 40;
                      v188 = _swiftEmptyArrayStorage;
                      do
                      {
                        v210 = v188;
                        v189 = &v187[16 * v185++];
                        while (1)
                        {
                          if ((v185 - 1) >= *(v162 + 2))
                          {
                            __break(1u);
                            goto LABEL_134;
                          }

                          v190 = *(v0 + 264);
                          v192 = *(v189 - 1);
                          v191 = *v189;
                          *(v0 + 216) = v192;
                          *(v0 + 224) = v191;
                          v193 = swift_task_alloc();
                          *(v193 + 16) = v203;

                          LOBYTE(v190) = sub_1002F784C(sub_10021C254, v193, v190);

                          if ((v190 & 1) == 0)
                          {
                            break;
                          }

                          ++v185;
                          v189 += 16;
                          if (v186 + v185 == 1)
                          {
                            v188 = v210;
                            goto LABEL_130;
                          }
                        }

                        v188 = v210;
                        result = swift_isUniquelyReferenced_nonNull_native();
                        v211[0] = v210;
                        if ((result & 1) == 0)
                        {
                          result = sub_10019F3C0(0, *(v210 + 16) + 1, 1);
                          v188 = v211[0];
                        }

                        v195 = v188[2];
                        v194 = v188[3];
                        if (v195 >= v194 >> 1)
                        {
                          result = sub_10019F3C0((v194 > 1), v195 + 1, 1);
                          v188 = v211[0];
                        }

                        v188[2] = v195 + 1;
                        v196 = &v188[2 * v195];
                        v196[4] = v192;
                        v196[5] = v191;
                        v187 = v162 + 40;
                      }

                      while (v186 + v185);
                    }

                    else
                    {
                      v188 = _swiftEmptyArrayStorage;
                    }

LABEL_130:
                    *(v0 + 360) = v188;

                    v197 = swift_task_alloc();
                    *(v0 + 368) = v197;
                    *v197 = v0;
                    v197[1] = sub_100215A54;
                    v198 = *(v0 + 272);
                    v199 = v188;
                    v200 = *(v0 + 232);

                    return sub_1002AF224(v198, v202, v199);
                  }

                  goto LABEL_95;
                }
              }

              v173 = isUniquelyReferenced_nonNull_native;
              v159 = _CocoaArrayWrapper.endIndex.getter();
              isUniquelyReferenced_nonNull_native = v173;
              if (!v159)
              {
                goto LABEL_106;
              }

LABEL_95:
              v160 = isUniquelyReferenced_nonNull_native;
              v211[0] = v147;
              result = sub_10019F3C0(0, v159 & ~(v159 >> 63), 0);
              if ((v159 & 0x8000000000000000) == 0)
              {
                v161 = 0;
                v162 = v211[0];
                v163 = v160;
                v205 = v160 & 0xC000000000000001;
                v209 = v160;
                v164 = v159;
                do
                {
                  if (v205)
                  {
                    v165 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v165 = *(v163 + 8 * v161 + 32);
                  }

                  v166 = v165;
                  v167 = ApplicationInfoInternal.applicationId.getter();
                  v169 = v168;

                  v211[0] = v162;
                  v171 = *(v162 + 2);
                  v170 = *(v162 + 3);
                  if (v171 >= v170 >> 1)
                  {
                    sub_10019F3C0((v170 > 1), v171 + 1, 1);
                    v162 = v211[0];
                  }

                  ++v161;
                  *(v162 + 2) = v171 + 1;
                  v172 = &v162[16 * v171];
                  *(v172 + 4) = v167;
                  *(v172 + 5) = v169;
                  v163 = v209;
                }

                while (v164 != v161);

                goto LABEL_107;
              }

LABEL_135:
              __break(1u);
              return result;
            }

LABEL_69:

            v93 = _swiftEmptyArrayStorage;
            goto LABEL_70;
          }

          v54 = *(v52 + 32);
        }

        v55 = v54;
        *(v0 + 344) = v54;
        v56 = *(v0 + 232);

        v55;
        sub_1001FF418((v0 + 16));
        v206 = v0 + 200;
        v207 = v0 + 168;
        v203 = v0 + 216;
        v204 = v0 + 184;
        v57 = *(v0 + 248);
        *(v0 + 152) = *(v0 + 16);
        v59 = *(v0 + 152);
        v58 = *(v0 + 160);

        sub_10012E450(v0 + 16);
        v60 = *(v57 + 16);
        v61 = (v57 + 40);
        v62 = v60 + 1;
        while (--v62)
        {
          if (*(v61 - 1) != v59 || *v61 != v58)
          {
            v61 += 2;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              continue;
            }
          }

          v64 = *(v0 + 328);
          v65 = *(v0 + 296);
          v66 = *(v0 + 304);
          v67 = *(v0 + 272);
          sub_1000B6B54(v0 + 152);
          (*(v66 + 16))(v64, v67, v65);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();
          v70 = os_log_type_enabled(v68, v69);
          v71 = *(v0 + 328);
          v72 = *(v0 + 296);
          v73 = *(v0 + 304);
          if (v70)
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v211[0] = v75;
            *v74 = 136315138;
            v76 = UUID.uuidString.getter();
            v78 = v77;
            (*(v73 + 8))(v71, v72);
            v79 = sub_1002FFA0C(v76, v78, v211);

            *(v74 + 4) = v79;
            _os_log_impl(&_mh_execute_header, v68, v69, "Attempted to remove current client as owner of credential %s", v74, 0xCu);
            sub_1000752F4(v75);
          }

          else
          {

            (*(v73 + 8))(v71, v72);
          }

          sub_10009591C();
          v7 = swift_allocError();
          *v104 = 18;
          swift_willThrow();
          v105 = *(v0 + 336);
          (*(*(v0 + 304) + 16))(*(v0 + 312), *(v0 + 272), *(v0 + 296));
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.info.getter();
          v108 = os_log_type_enabled(v106, v107);
          v110 = *(v0 + 304);
          v109 = *(v0 + 312);
          v111 = *(v0 + 296);
          if (v108)
          {
            v112 = swift_slowAlloc();
            v208 = swift_slowAlloc();
            v211[0] = v208;
            *v112 = 136315138;
            v113 = UUID.uuidString.getter();
            v115 = v114;
            (*(v110 + 8))(v109, v111);
            v116 = sub_1002FFA0C(v113, v115, v211);

            *(v112 + 4) = v116;
            _os_log_impl(&_mh_execute_header, v106, v107, "Failed to update access to credential %s, rebuilding credential cache", v112, 0xCu);
            sub_1000752F4(v208);
          }

          else
          {

            (*(v110 + 8))(v109, v111);
          }

          v117 = *(v0 + 344);
          swift_willThrow();

          goto LABEL_42;
        }

        sub_1000B6B54(v0 + 152);
        v53 = CredentialInternal.ownerApplications.getter();
        if (v53 >> 62)
        {
          goto LABEL_68;
        }

        v90 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v90)
        {
          goto LABEL_47;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        goto LABEL_20;
      }
    }

    v119 = *(v0 + 320);
    v120 = *(v0 + 296);
    v121 = *(v0 + 304);
    v122 = *(v0 + 272);

    (*(v121 + 16))(v119, v122, v120);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();
    v125 = os_log_type_enabled(v123, v124);
    v126 = *(v0 + 320);
    v127 = *(v0 + 296);
    v128 = *(v0 + 304);
    if (v125)
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v211[0] = v130;
      *v129 = 136315138;
      v131 = UUID.uuidString.getter();
      v133 = v132;
      (*(v128 + 8))(v126, v127);
      v134 = sub_1002FFA0C(v131, v133, v211);

      *(v129 + 4) = v134;
      _os_log_impl(&_mh_execute_header, v123, v124, "Adding owner to credential %s that does not exist", v129, 0xCu);
      sub_1000752F4(v130);
    }

    else
    {

      (*(v128 + 8))(v126, v127);
    }

    sub_10009591C();
    v7 = swift_allocError();
    v8 = 1;
    goto LABEL_41;
  }

  v40 = v37;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v211[0] = v44;
    *v43 = 136315138;
    v45 = *(v38 + 3);
    if (v45 >> 62)
    {
      if (v45 >> 62 == 1)
      {
        v46 = 0xE500000000000000;
        v47 = 0x6465726957;
      }

      else
      {
        v80 = (*(v38 + 2) | *v38 | *(v38 + 1)) == 0;
        v81 = v45 == 0x8000000000000000;
        if (v81 && v80)
        {
          v47 = 0x656D6567616E614DLL;
        }

        else
        {
          v47 = 0x64696C61766E49;
        }

        if (v81 && v80)
        {
          v46 = 0xEA0000000000746ELL;
        }

        else
        {
          v46 = 0xE700000000000000;
        }
      }
    }

    else
    {
      v46 = 0xED00006E6F697461;
      v47 = 0x6C756D4564726143;
    }

    v82 = sub_1002FFA0C(v47, v46, v211);

    *(v43 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v41, v42, "modifyAccessForCredential: Unexpected state %s, expected Management", v43, 0xCu);
    sub_1000752F4(v44);
  }

  sub_10009591C();
  v7 = swift_allocError();
  v8 = 10;
LABEL_41:
  *v6 = v8;
  swift_willThrow();
LABEL_42:
  v83 = *(v0 + 280);
  v84 = *(v0 + 288);
  swift_errorRetain();
  v83(v7);

  v86 = *(v0 + 320);
  v85 = *(v0 + 328);
  v87 = *(v0 + 312);

  v88 = *(v0 + 8);

  return v88();
}

uint64_t sub_100215A54()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v8 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_100215C18;
  }

  else
  {
    v6 = *(v2 + 352);
    v5 = *(v2 + 360);

    v4 = sub_100215B8C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100215B8C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 288);
  (*(v0 + 280))(0);

  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 312);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100215C18()
{
  v26 = v0;
  v2 = v0[44];
  v1 = v0[45];

  v3 = v0[47];
  v4 = v0[42];
  (*(v0[38] + 16))(v0[39], v0[34], v0[37]);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[37];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v11 = 136315138;
    v12 = UUID.uuidString.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_1002FFA0C(v12, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update access to credential %s, rebuilding credential cache", v11, 0xCu);
    sub_1000752F4(v24);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v16 = v0[43];
  swift_willThrow();

  v18 = v0[35];
  v17 = v0[36];
  swift_errorRetain();
  v18(v3);

  v20 = v0[40];
  v19 = v0[41];
  v21 = v0[39];

  v22 = v0[1];

  return v22();
}

BOOL sub_100215E28()
{
  CredentialInternal.accessLevel.getter();
  v0 = AccessLevelInternal.rawValue.getter();
  return v0 == AccessLevelInternal.rawValue.getter();
}

uint64_t sub_100216174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100216198, 0, 0);
}

uint64_t sub_100216198()
{
  v33 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    v9 = *(v6 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24);
    if (v9 >> 62)
    {
      if (v9 >> 62 == 1)
      {
        v10 = 0xE500000000000000;
        v11 = 0x6465726957;
      }

      else
      {
        v12 = (*(v6 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16) | *(v6 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState) | *(v6 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8)) == 0;
        v13 = v9 == 0x8000000000000000;
        if (v13 && v12)
        {
          v11 = 0x656D6567616E614DLL;
        }

        else
        {
          v11 = 0x64696C61766E49;
        }

        if (v13 && v12)
        {
          v10 = 0xEA0000000000746ELL;
        }

        else
        {
          v10 = 0xE700000000000000;
        }
      }
    }

    else
    {
      v10 = 0xED00006E6F697461;
      v11 = 0x6C756D4564726143;
    }

    v14 = sub_1002FFA0C(v11, v10, &v32);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Getting SECSession State = %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v15 = *(v0 + 16) + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState;
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  if (v19 >> 62)
  {
    if (v19 >> 62 != 1)
    {
      v27 = *(v0 + 32);
      v29 = v19 == 0x8000000000000000 && (v18 | v16 | v17) == 0;
      (*(v0 + 24))(v29, 0);
      goto LABEL_27;
    }

    v21 = *(v0 + 24);
    v20 = *(v0 + 32);
    v22 = (v19 & 0x3FFFFFFFFFFFFFFFLL);
    sub_100218E94(v17, v16, v18, v19);
    v23 = v17;
    v21(2, v17);
  }

  else
  {
    v25 = *(v0 + 24);
    v24 = *(v0 + 32);
    sub_100218E94(v17, v16, v18, v19);
    v26 = v17;
    v25(3, v17);
  }

LABEL_27:
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002164F4(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a6;
  v18[6] = v16;
  v19 = a1;
  sub_1001F9BE8(0, 0, v14, a7, v18);
}

uint64_t sub_100216634()
{
  v1[46] = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[47] = v2;
  v3 = *(v2 - 8);
  v1[48] = v3;
  v4 = *(v3 + 64) + 15;
  v1[49] = swift_task_alloc();

  return _swift_task_switch(sub_100216700, 0, 0);
}

uint64_t sub_100216700()
{
  v1 = *(v0 + 368);
  sub_1001FF418((v0 + 192));
  v2 = *(v0 + 368);
  v3 = *(v0 + 200);
  *(v0 + 400) = *(v0 + 192);
  *(v0 + 408) = v3;

  sub_10012E450(v0 + 192);
  sub_1001FF418((v0 + 80));
  *(v0 + 416) = 0;
  v4 = *(v0 + 104);
  *(v0 + 424) = *(v0 + 96);
  *(v0 + 432) = v4;

  sub_10012E450(v0 + 80);
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B858;
  *(v0 + 440) = qword_10051B858;

  return _swift_task_switch(sub_10021683C, v5, 0);
}

uint64_t sub_10021683C()
{
  v1 = v0[55];
  v2 = v0[52];
  v0[56] = sub_100137A14(v0[50], v0[51]);
  v0[57] = v2;
  if (v2)
  {
    v3 = sub_100217484;
  }

  else
  {
    v3 = sub_1002168CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002168CC()
{
  v1 = v0[56];
  if (v1)
  {
    v2 = v0[55];

    return _swift_task_switch(sub_1002169B0, v2, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[59] = v3;
    *v3 = v0;
    v3[1] = sub_100216DF8;
    v4 = v0[54];
    v5 = v0[55];
    v6 = v0[53];
    v8 = v0[50];
    v7 = v0[51];

    return sub_100135850(v8, v7, v6, v4);
  }
}

uint64_t sub_1002169B0()
{
  v1 = v0[57];
  v2 = v0[55];
  v3 = sub_10035E904();
  if (v1)
  {
    v4 = v0[54];
    v5 = v0[51];

    v13 = v0[49];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v6 = v3;
    v8 = v0[54];
    v7 = v0[55];
    v9 = v0[53];
    v11 = v0[50];
    v10 = v0[51];
    v12 = swift_task_alloc();
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v11;
    v12[5] = v10;
    v12[6] = v9;
    v12[7] = v8;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v0[58] = 0;

    return _swift_task_switch(sub_100216B28, 0, 0);
  }
}

uint64_t sub_100216B28()
{
  *(v0 + 488) = *(v0 + 464);
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  (*(v2 + 16))(v1, *(v0 + 368) + OBJC_IVAR____TtC10seserviced14SECUserSession__bypassGDPR, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 528))
  {
    v4 = *(v0 + 432);
    v5 = *(v0 + 408);

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Bypassing GDPR preentment because of User defaults", v9, 2u);
    }

    v10 = *(v0 + 392);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 424);
    v14 = *(v0 + 432);
    v15 = [objc_opt_self() sharedInstance];
    *(v0 + 496) = v15;
    v16 = String._bridgeToObjectiveC()();
    *(v0 + 504) = v16;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1002171DC;
    v17 = swift_continuation_init();
    *(v0 + 360) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 304) = _NSConcreteStackBlock;
    *(v0 + 312) = 1107296256;
    *(v0 + 320) = sub_1001E95B0;
    *(v0 + 328) = &unk_1004CBC78;
    *(v0 + 336) = v17;
    [v15 presentGDPRinAppWithBundleId:v16 completion:v0 + 304];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100216DF8()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_1002174FC;
  }

  else
  {
    v3 = sub_100216F0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100216F0C()
{
  *(v0 + 488) = *(v0 + 480);
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  (*(v2 + 16))(v1, *(v0 + 368) + OBJC_IVAR____TtC10seserviced14SECUserSession__bypassGDPR, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 528))
  {
    v4 = *(v0 + 432);
    v5 = *(v0 + 408);

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Bypassing GDPR preentment because of User defaults", v9, 2u);
    }

    v10 = *(v0 + 392);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 424);
    v14 = *(v0 + 432);
    v15 = [objc_opt_self() sharedInstance];
    *(v0 + 496) = v15;
    v16 = String._bridgeToObjectiveC()();
    *(v0 + 504) = v16;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1002171DC;
    v17 = swift_continuation_init();
    *(v0 + 360) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 304) = _NSConcreteStackBlock;
    *(v0 + 312) = 1107296256;
    *(v0 + 320) = sub_1001E95B0;
    *(v0 + 328) = &unk_1004CBC78;
    *(v0 + 336) = v17;
    [v15 presentGDPRinAppWithBundleId:v16 completion:v0 + 304];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1002171DC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 512) = v3;
  if (v3)
  {
    v4 = *(v1 + 408);

    v5 = sub_100217574;
  }

  else
  {
    v5 = sub_1002172F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002172F4()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 440);

  *(v0 + 520) = sub_1002194C0();

  return _swift_task_switch(sub_10021736C, v2, 0);
}

uint64_t sub_10021736C()
{
  v1 = v0[61];
  v2 = v0[55];
  v3 = sub_10035E904();
  if (v1)
  {
    v4 = v0[51];
  }

  else
  {
    v5 = v3;
    v6 = v0[65];
    v7 = v0[55];
    v9 = v0[50];
    v8 = v0[51];
    v10 = swift_task_alloc();
    v10[2] = v5;
    v10[3] = v7;
    v10[4] = v9;
    v10[5] = v8;
    v10[6] = v6;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v11 = v0[51];
  }

  v12 = v0[49];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100217484()
{
  v1 = v0[54];
  v2 = v0[51];

  v3 = v0[57];
  v4 = v0[49];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002174FC()
{
  v1 = v0[54];
  v2 = v0[51];

  v3 = v0[60];
  v4 = v0[49];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100217574()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[62];
  swift_willThrow();

  v4 = v0[64];
  v5 = v0[49];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002175F4(uint64_t a1, uint64_t a2)
{
  **(*(*sub_1000752B0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_100217650(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100068FC4(&qword_1005073F8, &qword_10040F958);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = off_10050A868;

  os_unfair_lock_lock(v15 + 6);
  v16 = *&v15[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v15 + 6);

  if (v16)
  {
    v27 = *(v16 + 72);
    (*(v11 + 16))(v14, a1, v10);
    v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v18 = swift_allocObject();
    (*(v11 + 32))(v18 + v17, v14, v10);
    *(v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
    aBlock[4] = sub_10021AA30;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CBF98;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_10021C09C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_1000BA838();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v30 + 8))(v5, v2);
    (*(v28 + 8))(v9, v29);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000958E4(v21, qword_10051B2C8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error while acquiring assertion: presentmentIntentManager is nil", v24, 2u);
    }

    sub_10009591C();
    v25 = swift_allocError();
    *v26 = 6;
    aBlock[0] = v25;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100217B48()
{
  sub_100306B98(0x100000000);
  sub_100068FC4(&qword_1005073F8, &qword_10040F958);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100217D2C()
{
  v1 = v0[3];
  if (!(v1 >> 62))
  {
    return 0x6C756D4564726143;
  }

  if (v1 >> 62 == 1)
  {
    return 0x6465726957;
  }

  if (v1 == 0x8000000000000000 && (v0[2] | *v0 | v0[1]) == 0)
  {
    return 0x656D6567616E614DLL;
  }

  return 0x64696C61766E49;
}

uint64_t sub_100217DD8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = *a1;
  v13 = *a2;
  CredentialInternal.identifier.getter();
  CredentialInternal.identifier.getter();
  LOBYTE(v13) = static UUID.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  return v13 & 1;
}

id sub_10021810C()
{
  v1 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  sub_100068FC4(&qword_100507400, &qword_10040F960);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  sub_100068FC4(&qword_100507408, &qword_10040F968);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *&v0[v3] = v4;
  v5 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  sub_100068FC4(&unk_100507410, &qword_10040F970);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *&v0[v5] = v6;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SECUserSession.NearFieldEventDelegate();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_100218208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SECUserSession.NearFieldEventDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SECUserSession()
{
  result = qword_1005072F8;
  if (!qword_1005072F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100218554()
{
  sub_1002186C8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100218718();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002186C8()
{
  if (!qword_100506E70)
  {
    v0 = type metadata accessor for UserDefaultBacked();
    if (!v1)
    {
      atomic_store(v0, &qword_100506E70);
    }
  }
}

void sub_100218718()
{
  if (!qword_100507310)
  {
    _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100507310);
    }
  }
}

unint64_t sub_100218794(void *a1)
{
  v1 = a1[3];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1002187B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 32))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 24) >> 50) >> 12) | (4 * ((*(a1 + 24) >> 50) & 0xC00 | ((*(a1 + 24) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100218830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002188B4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[3] = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0x8000000000000000;
  }

  return result;
}

__n128 sub_100218900@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112);
  v18 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96);
  v19 = v3;
  v20 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128);
  v4 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 48);
  v14 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 32);
  v15 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80);
  v16 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 64);
  v17 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 16);
  v12 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
  v13 = v6;
  sub_10012E344(&v12, v11);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002189AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10012E598;

  return sub_10020253C();
}

uint64_t sub_100218A38(uint64_t a1, uint64_t a2)
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  sub_1001F9BE8(0, 0, v8, &unk_10040F890, v10);
}

uint64_t sub_100218B58(char a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_100206FE8(a1, a2);
}

uint64_t sub_100218BFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C288C;

  return sub_1002ADDD8();
}

uint64_t sub_100218C8C(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_100507458, &qword_10040FA18);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v10 - v5;
  v7 = *(a1 + 8);
  *v6 = **a1;
  v10[0] = v6;
  v8 = &v6[*(v4 + 56)];
  sub_1000938D4(v7, v8, &unk_100506F00, &qword_10040BE90);
  v10[1] = v8;
  sub_100218D6C(v10);
  return sub_100075768(v6, &unk_100507458, &qword_10040FA18);
}

atomic_uchar *sub_100218D6C(uint64_t a1)
{
  v3 = sub_100068FC4(&unk_100507458, &qword_10040FA18);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v14 - v6;
  result = (*(**(v1 + 32) + 136))(v5);
  v9 = 0;
  atomic_compare_exchange_strong(result, &v9, 1u);
  if (!v9)
  {
    v11 = *(v1 + 16);
    v10 = *(v1 + 24);
    v12 = *(a1 + 8);
    *v7 = **a1;
    v14[0] = v7;
    v13 = &v7[*(v3 + 48)];
    sub_1000938D4(v12, v13, &unk_100506F00, &qword_10040BE90);
    v14[1] = v13;
    v11(v14);
    return sub_100075768(v7, &unk_100507458, &qword_10040FA18);
  }

  return result;
}

id sub_100218E94(id result, void *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v5 = result;
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      return result;
    }

    v9 = a2;
    v4 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v9 = a2;
  }

  v6 = a3;
  v7 = v4;
  v8 = v5;

  return v9;
}

uint64_t sub_100218F50(uint64_t a1)
{
  v2 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100218FD8(void *a1, void *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      return;
    }

    v6 = a3;
    v4 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v6 = a3;
  }
}

uint64_t sub_100219058(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100206DEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100219120()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100219158(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_100204558(a1, a2, v6, v7, v8);
}

uint64_t sub_10021921C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100219254(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100505218, &qword_10040CA90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002192C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v29 = a7;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v28 - v22;
  if (!(a4 >> 62))
  {
    if (a8 >> 62)
    {
LABEL_18:
      v25 = 0;
      return v25 & 1;
    }

    goto LABEL_6;
  }

  if (a4 >> 62 == 1)
  {
    if (a8 >> 62 != 1)
    {
      goto LABEL_18;
    }

LABEL_6:
    v24 = v21;
    CredentialInternal.identifier.getter();
    CredentialInternal.identifier.getter();
    v25 = static UUID.== infix(_:_:)();
    v26 = *(v16 + 8);
    v26(v20, v24);
    v26(v23, v24);
    return v25 & 1;
  }

  if (a3 | a2 | a1 || a4 != 0x8000000000000000)
  {
    if (a8 >> 62 != 2 || a8 != 0x8000000000000000 || a5 != 8 || v29 | a6)
    {
      goto LABEL_18;
    }
  }

  else if (a8 >> 62 != 2 || v29 | a6 | a5 || a8 != 0x8000000000000000)
  {
    goto LABEL_18;
  }

  v25 = 1;
  return v25 & 1;
}

unint64_t sub_1002194C0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  v2 = [objc_opt_self() flowWithBundle:v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 contentVersion];

    result = v4;
    if ((v4 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return 0;
}

uint64_t sub_100219590()
{
  v1[80] = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[81] = v2;
  v3 = *(v2 - 8);
  v1[82] = v3;
  v4 = *(v3 + 64) + 15;
  v1[83] = swift_task_alloc();

  return _swift_task_switch(sub_10021965C, 0, 0);
}

uint64_t sub_10021965C()
{
  v1 = *(v0 + 640);
  sub_1001FF418((v0 + 464));
  *(v0 + 672) = 0;
  v2 = *(v0 + 472);
  *(v0 + 680) = *(v0 + 464);
  *(v0 + 688) = v2;

  sub_10012E450(v0 + 464);
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B858;
  *(v0 + 696) = qword_10051B858;

  return _swift_task_switch(sub_10021976C, v3, 0);
}

uint64_t sub_10021976C()
{
  v1 = v0[87];
  v2 = v0[84];
  v0[88] = sub_1001362D4(v0[85], v0[86]);
  v0[89] = v2;
  if (v2)
  {
    v3 = sub_10021A250;
  }

  else
  {
    v3 = sub_100219804;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100219804()
{
  v58 = v0;
  v1 = *(v0 + 704);
  if (!v1)
  {
    v10 = *(v0 + 688);

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 640);
    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 640);
      v17 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v17 = 136315394;
      v18 = UUID.uuidString.getter();
      v20 = sub_1002FFA0C(v18, v19, v57);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1002FFA0C(0xD000000000000023, 0x8000000100467B20, v57);
      _os_log_impl(&_mh_execute_header, v14, v15, "Session %s %s: App Entity does not exist", v17, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v21 = 6;
    swift_willThrow();
    goto LABEL_21;
  }

  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  (*(v3 + 16))(v2, *(v0 + 640) + OBJC_IVAR____TtC10seserviced14SECUserSession__bypassGDPR, v4);
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  if (*(v0 + 209))
  {
    v5 = *(v0 + 688);

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Bypassing GDPR preentment because of User defaults", v9, 2u);
    }

    goto LABEL_21;
  }

  v22 = [v1 gdprVersionShown];
  if (v22 >= sub_1002194C0())
  {
    v27 = *(v0 + 688);

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 640);
    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_10051B2C8);
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 640);
      v34 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v34 = 136315394;
      v35 = UUID.uuidString.getter();
      v37 = sub_1002FFA0C(v35, v36, v57);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = v33 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
      *(v0 + 80) = *(v33 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
      v39 = *(v38 + 64);
      v41 = *(v38 + 16);
      v40 = *(v38 + 32);
      *(v0 + 128) = *(v38 + 48);
      *(v0 + 144) = v39;
      *(v0 + 96) = v41;
      *(v0 + 112) = v40;
      v43 = *(v38 + 96);
      v42 = *(v38 + 112);
      v44 = *(v38 + 80);
      *(v0 + 208) = *(v38 + 128);
      *(v0 + 176) = v43;
      *(v0 + 192) = v42;
      *(v0 + 160) = v44;
      v45 = sub_10012E344(v0 + 80, v0 + 216);
      v46 = sub_10013F33C(v45);
      v48 = v47;
      sub_10012E3A0(v0 + 80);
      v49 = sub_1002FFA0C(v46, v48, v57);

      *(v34 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v31, v32, "Session %s: GDPR sheet has been displayed for %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_21;
  }

  v23 = *(v0 + 712);
  v24 = *(v0 + 640);
  v25 = [objc_opt_self() sharedInstance];
  *(v0 + 720) = v25;
  sub_1001FF418((v0 + 352));
  *(v0 + 728) = v23;
  if (v23)
  {
    v26 = *(v0 + 688);

LABEL_21:
    v50 = *(v0 + 664);

    v51 = *(v0 + 8);

    return v51();
  }

  v53 = *(v0 + 368);
  v54 = *(v0 + 376);

  sub_10012E450(v0 + 352);
  v55 = String._bridgeToObjectiveC()();
  *(v0 + 736) = v55;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100219ED0;
  v56 = swift_continuation_init();
  *(v0 + 632) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  *(v0 + 608) = v56;
  *(v0 + 576) = _NSConcreteStackBlock;
  *(v0 + 584) = 1107296256;
  *(v0 + 592) = sub_1001E95B0;
  *(v0 + 600) = &unk_1004CBC50;
  [v25 presentGDPRinAppWithBundleId:v55 completion:v0 + 576];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100219ED0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 744) = v3;
  if (v3)
  {
    v4 = *(v1 + 688);

    v5 = sub_10021A2BC;
  }

  else
  {
    v5 = sub_100219FE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100219FE8()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 696);

  *(v0 + 752) = sub_1002194C0();

  return _swift_task_switch(sub_10021A064, v2, 0);
}

uint64_t sub_10021A064()
{
  v1 = v0[91];
  v2 = v0[87];
  v3 = sub_10035E904();
  if (v1)
  {
    v4 = v0[86];

    v0[95] = v1;
    v12 = sub_10021A1E4;
  }

  else
  {
    v5 = v3;
    v6 = v0[94];
    v7 = v0[87];
    v8 = v0[86];
    v9 = v0[85];
    v10 = swift_task_alloc();
    v10[2] = v5;
    v10[3] = v7;
    v10[4] = v9;
    v10[5] = v8;
    v10[6] = v6;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v11 = v0[86];

    v12 = sub_10021A178;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10021A178()
{
  v1 = *(v0 + 664);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10021A1E4()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 664);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10021A250()
{
  v1 = v0[86];

  v2 = v0[89];
  v3 = v0[83];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10021A2BC()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[90];
  v4 = v0[88];
  swift_willThrow();

  v5 = v0[93];
  v6 = v0[83];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10021A3B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021A3F8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10021A42C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_10021A46C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10021A494(void *a1, void (*a2)(void, void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *v6;
  v8 = v6[1];
  a2(*a1, a1[1]);
  *a1 = v7;
  a1[1] = v8;
  return a3(v7, v8);
}

uint64_t sub_10021A508(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1002069C0(a1, v4, v5, v7, v6);
}

uint64_t sub_10021A5C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  sub_10006A178(v0[5], v0[6]);
  sub_10006A178(v0[7], v0[8]);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10021A618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10012E598;

  return sub_100206384(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10021A6FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  v4 = *(v1 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10021A750(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100205D6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10021A818()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021A868(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100205710(a1, v4, v5, v6, v7, v8);
}

void sub_10021A930(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_10021A988()
{
  v1 = sub_100068FC4(&qword_1005073F8, &qword_10040F958);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10021AA30()
{
  v1 = *(sub_100068FC4(&qword_1005073F8, &qword_10040F958) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100217B48();
}

uint64_t sub_10021AAC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10021AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  swift_beginAccess();
  v10 = *(v4 + v9);

  os_unfair_lock_lock((v10 + 32));
  v11 = *(v10 + 16);
  sub_100113B54(v11);
  os_unfair_lock_unlock((v10 + 32));

  if (v11)
  {
    v14[0] = a1;
    v14[1] = a2;
    v13[0] = a3;
    v13[1] = a4;
    v11(v14, v13);
    return sub_1000B2A4C(v11);
  }

  return result;
}

uint64_t sub_10021ABA8(char a1)
{
  v3 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  swift_beginAccess();
  v4 = *(v1 + v3);

  os_unfair_lock_lock((v4 + 32));
  v5 = *(v4 + 16);
  sub_100113B54(v5);
  os_unfair_lock_unlock((v4 + 32));

  if (v5)
  {
    v7 = a1 & 1;
    v5(&v7);
    return sub_1000B2A4C(v5);
  }

  return result;
}

uint64_t sub_10021AC4C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021AC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000C288C;

  return sub_100216174(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10021AD64()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = *(v0 + 56);

  v10 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10021AE68(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[3];
  v15 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 72) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10012E598;

  return sub_100214678(a1, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10021AFE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*v2 == *a1 && v2[1] == a1[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10021B038()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10021B11C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10012E598;

  return sub_100211358(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10021B258()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10021B304(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10012E598;

  return sub_100212BC8(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_10021B450()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10021B550(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = (v1 + v6);
  v12 = *v11;
  v13 = v11[1];
  v15 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10012E598;

  return sub_100209694(a1, v8, v9, v10, v1 + v5, v12, v13, v15);
}

uint64_t sub_10021B704()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021B744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100210C78(a1, v4, v5, v6);
}

uint64_t sub_10021B820()
{
  v1 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10021B8B4(char a1, uint64_t a2)
{
  v4 = *(*(sub_100068FC4(&qword_100506F78, &qword_10040F300) - 8) + 80);

  return sub_100210A14(a1, a2);
}

uint64_t sub_10021B940()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021B980()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021B9B8(unsigned __int8 **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(**a1, a1[1]);
}

uint64_t sub_10021B9E8(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7[0] = &v6;
  v7[1] = a2;
  return v3(v7);
}

uint64_t sub_10021BA28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10021BA70()
{
  v23 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v1 = *(v23 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v8 + *(v6 + 64);
  v24 = v2 | v7;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v3, v23);
  (*(v6 + 8))(v0 + v8, v5);
  v15 = *(v0 + v22);

  v16 = *(v0 + v11 + 8);

  v17 = *(v0 + v12 + 8);

  v18 = *(v0 + v13);

  v19 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v19 + 8);

  return _swift_deallocObject(v0, v19 + 16, v24 | 7);
}

uint64_t sub_10021BC54(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v32 = v5;
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for SEStorageManagementSheet.DisplayConfiguration() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = v1[3];
  v31 = v1[2];
  v15 = v1 + v10;
  v28 = *v15;
  v29 = v1[4];
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = v15[8];
  v26 = *(v1 + v11);
  v17 = *(v1 + v12);
  v18 = *(v1 + v12 + 8);
  v19 = *(v1 + v14);
  v20 = *(v1 + v13);
  v21 = *(v1 + v13 + 8);
  v22 = *(v1 + v16);
  v23 = *(v1 + v16 + 8);
  v24 = swift_task_alloc();
  *(v3 + 16) = v24;
  *v24 = v3;
  v24[1] = sub_10012E598;

  return sub_1001E3C40(a1, v31, v30, v29, v1 + v32, v1 + v8, v28, v27);
}

uint64_t sub_10021BE74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100208128(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10021BF4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021BF94()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021BFCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000C288C;

  return sub_100213828(a1, a2, v6);
}

uint64_t sub_10021C09C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021C0E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021C12C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10021C2F0()
{
  result = [objc_allocWithZone(type metadata accessor for JPKIXPCServer()) init];
  qword_10051B578 = result;
  return result;
}

id sub_10021C324()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC10seserviced13JPKIXPCServer_listener] = 0;
  v13 = OBJC_IVAR____TtC10seserviced13JPKIXPCServer_queue;
  v12[1] = sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100221968(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  LOBYTE(v17) = 0;
  v16 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v17) = 0;
  v16 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v10 = &v0[OBJC_IVAR____TtC10seserviced13JPKIXPCServer_serviceName];
  *v10 = 0xD000000000000027;
  *(v10 + 1) = 0x8000000100468120;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_10021C6C0(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

double sub_10021C74C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a2;
  v115 = a3;
  v103 = sub_100068FC4(&qword_100507510, &qword_10040FB40);
  v4 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v104 = &v87 - v5;
  v6 = type metadata accessor for JPKIInternalTypes.InternalError();
  v113 = *(v6 - 8);
  v114 = v6;
  v7 = *(v113 + 64);
  v8 = __chkstk_darwin(v6);
  v107 = (&v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v106 = &v87 - v10;
  v111 = type metadata accessor for XPCReceivedMessage();
  v109 = *(v111 - 8);
  v11 = *(v109 + 64);
  v12 = __chkstk_darwin(v111);
  v112 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v105 = &v87 - v13;
  v14 = type metadata accessor for JPKIXPCRequest();
  v116 = *(v14 - 8);
  v15 = *(v116 + 64);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v19 = &v87 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v87 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v87 - v24;
  __chkstk_darwin(v23);
  v27 = &v87 - v26;
  sub_100221968(&qword_100507518, &type metadata accessor for JPKIXPCRequest);
  XPCReceivedMessage.decode<A>(as:)();
  v98 = v22;
  v96 = v19;
  v97 = v11;
  v99 = a1;
  v100 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = 0;
  v28 = v116;
  v29 = *(v116 + 32);
  v95 = v116 + 32;
  v94 = v29;
  v29(v27, v25, v14);
  v30 = v27;
  if (qword_100501B50 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_1005074A0);
  v32 = v98;
  v93 = *(v28 + 16);
  v93(v98, v27, v14);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v102 = v27;
  v110 = v14;
  if (v35)
  {
    v36 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    v92 = v15;
    v37 = aBlock[0];
    *v36 = 136315138;
    sub_100221968(&qword_100507528, &type metadata accessor for JPKIXPCRequest);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v98 = *(v28 + 8);
    v98(v32, v14);
    v41 = sub_1002FFA0C(v38, v40, aBlock);
    v30 = v102;

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "Decoded request %s", v36, 0xCu);
    sub_1000752F4(v37);
  }

  else
  {

    v98 = *(v28 + 8);
    v98(v32, v14);
  }

  v42 = v99;
  XPCReceivedMessage.detachHandoff()();
  v99 = JPKIXPCRequest.passIdentifier.getter();
  v88 = v43;
  v92 = XPCReceivedMessage.auditToken.getter();
  v91 = v44;
  v90 = v45;
  v89 = v46;
  v47 = v109;
  v48 = *(v109 + 16);
  v49 = v105;
  v50 = v42;
  v51 = v111;
  v48(v105, v50, v111);
  v52 = v96;
  v53 = v30;
  v54 = v110;
  v55 = v93;
  v93(v96, v53, v110);
  v48(v112, v49, v51);
  v56 = v47;
  v57 = v100;
  v55(v100, v52, v54);
  v58 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v59 = (v97 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (*(v116 + 80) + v59 + 8) & ~*(v116 + 80);
  v61 = swift_allocObject();
  (*(v56 + 32))(v61 + v58, v49, v51);
  v62 = v108;
  *(v61 + v59) = v108;
  v63 = v52;
  v64 = v88;
  v94(v61 + v60, v63, v54);
  v65 = v62;
  v66 = v101;
  v67 = v107;
  sub_10021EB60(v99, v64, v92, v91, v90, v89, v107);
  v70 = v106;
  if (v66)
  {

    v71 = v114;
    v72 = *(v113 + 32);
    v72(v70, v67, v114);
    v73 = v56;
    v74 = v104;
    v72(v104, v70, v71);
    swift_storeEnumTagMultiPayload();
    v75 = v112;
    sub_10021D334(v74, v112, v65, v57);

    sub_100075768(v74, &qword_100507510, &qword_10040FB40);
    v76 = v98;
    v98(v57, v110);
    (*(v73 + 8))(v75, v111);
  }

  else
  {
    v77 = v51;
    v78 = v68;
    v79 = v69;

    v76 = v98;
    v98(v57, v110);
    (*(v56 + 8))(v112, v77);
    v80 = objc_opt_self();
    v81 = String._bridgeToObjectiveC()();
    v82 = swift_allocObject();
    v82[2] = v65;
    v82[3] = sub_100221B0C;
    v82[4] = v61;
    v82[5] = v78;
    v82[6] = v79;
    aBlock[4] = sub_100221C38;
    aBlock[5] = v82;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BBFA0;
    aBlock[3] = &unk_1004CC4D0;
    v83 = _Block_copy(aBlock);
    v84 = v65;

    sub_100069E2C(v78, v79);

    sub_1003AF710(v80, v81, v83);
    _Block_release(v83);

    sub_10006A178(v78, v79);
  }

  v76(v102, v110);
  v85 = v115;
  *(v115 + 32) = 0;
  result = 0.0;
  *v85 = 0u;
  v85[1] = 0u;
  return result;
}

uint64_t sub_10021D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[1] = a4;
  v30 = a3;
  v31 = a2;
  v5 = type metadata accessor for JPKIXPCRequest.JPKIOperation();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JPKIXPCResponse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for JPKIInternalTypes.InternalError();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100068FC4(&qword_100507510, &qword_10040FB40);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v27 - v21;
  sub_100221CC0(a1, v27 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v18, v22, v14);
    (*(v15 + 16))(v13, v18, v14);
    (*(v10 + 104))(v13, enum case for JPKIXPCResponse.error(_:), v9);
    sub_100221968(&qword_100507520, &type metadata accessor for JPKIXPCResponse);
    XPCReceivedMessage.reply<A>(_:)();
    (*(v10 + 8))(v13, v9);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v24 = *v22;
    v25 = *(v22 + 1);
    v26 = *(v22 + 2);
    JPKIXPCRequest.operation.getter();
    sub_10021D6F8(v24, v25, v26, v8, v13);
    (*(v28 + 8))(v8, v29);
    sub_100221968(&qword_100507520, &type metadata accessor for JPKIXPCResponse);
    XPCReceivedMessage.reply<A>(_:)();
    sub_10006A178(v25, v26);

    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_10021D6F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v153 = a2;
  v154 = a3;
  v155 = a5;
  v156 = a1;
  v145 = type metadata accessor for JPKIInternalTypes.UserAuthentication();
  v144 = *(v145 - 8);
  v6 = *(v144 + 64);
  v7 = __chkstk_darwin(v145);
  v142 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v143 = &v133 - v9;
  v10 = type metadata accessor for JPKIInternalTypes.UserAuthenticationInternal();
  v151 = *(v10 - 8);
  v11 = *(v151 + 64);
  v12 = __chkstk_darwin(v10);
  v141 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v147 = &v133 - v14;
  v15 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v152 = *(v15 - 8);
  v16 = *(v152 + 64);
  v17 = __chkstk_darwin(v15);
  v137 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v140 = &v133 - v20;
  v21 = __chkstk_darwin(v19);
  v146 = &v133 - v22;
  __chkstk_darwin(v21);
  v24 = &v133 - v23;
  v150 = type metadata accessor for JPKIInternalTypes.InternalError();
  v149 = *(v150 - 8);
  v25 = *(v149 + 64);
  v26 = __chkstk_darwin(v150);
  v148 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v135 = &v133 - v29;
  v30 = __chkstk_darwin(v28);
  v139 = (&v133 - v31);
  v32 = __chkstk_darwin(v30);
  v138 = (&v133 - v33);
  v34 = __chkstk_darwin(v32);
  v36 = (&v133 - v35);
  v37 = __chkstk_darwin(v34);
  v39 = (&v133 - v38);
  __chkstk_darwin(v37);
  v41 = (&v133 - v40);
  v42 = type metadata accessor for JPKIXPCRequest.JPKIOperation();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v46 = &v133 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v43 + 16);
  v136 = a4;
  v47(v46, a4, v42);
  v48 = (*(v43 + 88))(v46, v42);
  if (v48 == enum case for JPKIXPCRequest.JPKIOperation.readCertificate(_:))
  {
    (*(v43 + 96))(v46, v42);
    v49 = *(sub_100068FC4(&qword_100507548, &qword_10040FB58) + 48);
    v50 = v152;
    (*(v152 + 32))(v24, v46, v15);
    v51 = v151;
    v52 = v147;
    (*(v151 + 32))(v147, &v46[v49], v10);
    v74 = sub_1001CC040(v156, v153, v154, v24, v52, v39);
    (*(v51 + 8))(v52, v10);
    (*(v50 + 8))(v24, v15);
    v75 = v155;
    *v155 = v74;
    v76 = &enum case for JPKIXPCResponse.readCertificate(_:);
LABEL_25:
    v113 = *v76;
    v114 = type metadata accessor for JPKIXPCResponse();
    return (*(*(v114 - 8) + 104))(v75, v113, v114);
  }

  v134 = v10;
  v147 = v15;
  if (v48 == enum case for JPKIXPCRequest.JPKIOperation.changeAuthorization(_:))
  {
    (*(v43 + 96))(v46, v42);
    v53 = sub_100068FC4(&qword_100507540, &qword_10040FB50);
    v54 = *(v53 + 48);
    v55 = *(v53 + 64);
    v56 = v152;
    v57 = v146;
    (*(v152 + 32))(v146, v46, v147);
    v58 = v144;
    v59 = *(v144 + 32);
    v60 = &v46[v54];
    v61 = v143;
    v62 = v145;
    v59(v143, v60, v145);
    v63 = &v46[v55];
    v64 = v142;
    v59(v142, v63, v62);
    sub_1001CCDF8(v156, v153, v154, v57, v61, v64, v36);
    v78 = *(v58 + 8);
    v78(v64, v62);
    v78(v61, v62);
    (*(v56 + 8))(v57, v147);
    v79 = enum case for JPKIXPCResponse.changeAuthorization(_:);
    v80 = type metadata accessor for JPKIXPCResponse();
    return (*(*(v80 - 8) + 104))(v155, v79, v80);
  }

  if (v48 != enum case for JPKIXPCRequest.JPKIOperation.sign(_:))
  {
    if (v48 == enum case for JPKIXPCRequest.JPKIOperation.getInstalledCertificateTypes(_:))
    {
      v77 = sub_1001CB188(v156, v153, v154, v41);
      v75 = v155;
      *v155 = v77;
      v76 = &enum case for JPKIXPCResponse.getInstalledCertificateTypes(_:);
      goto LABEL_25;
    }

    if (v48 == enum case for JPKIXPCRequest.JPKIOperation.getACL(_:))
    {
      v82 = sub_1001D014C(v135);
      v75 = v155;
      *v155 = v82;
      v75[1] = v132;
      v76 = &enum case for JPKIXPCResponse.getACL(_:);
      goto LABEL_25;
    }

    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
    v99 = v150;
    v100 = swift_allocError();
    v102 = v101;
    v158 = 0;
    v159 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v158 = 0xD000000000000010;
    v159 = 0x80000001004682C0;
    sub_100221968(&qword_100507530, &type metadata accessor for JPKIXPCRequest.JPKIOperation);
    v103._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v103);

    v104 = v159;
    *v102 = v158;
    v102[1] = v104;
    v105 = v149;
    (*(v149 + 104))(v102, enum case for JPKIInternalTypes.InternalError.typeMismatch(_:), v99);
    swift_willThrow();
    v106 = v105;
    (*(v43 + 8))(v46, v42);
    v107 = v148;
LABEL_22:
    v158 = v100;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {

      v108 = v155;
      (*(v106 + 32))(v155, v107, v99);
      v109 = enum case for JPKIXPCResponse.error(_:);
      v110 = type metadata accessor for JPKIXPCResponse();
      (*(*(v110 - 8) + 104))(v108, v109, v110);
    }

    v158 = 0;
    v159 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v158 = 0xD000000000000013;
    v159 = 0x80000001004682E0;
    swift_getErrorValue();
    swift_getDynamicType();
    v111._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v111);

    v112 = v159;
    v75 = v155;
    *v155 = v158;
    v75[1] = v112;
    (*(v106 + 104))(v75, enum case for JPKIInternalTypes.InternalError.typeMismatch(_:), v99);
    v76 = &enum case for JPKIXPCResponse.error(_:);
    goto LABEL_25;
  }

  (*(v43 + 96))(v46, v42);
  v65 = *v46;
  v66 = sub_100068FC4(&qword_100507538, &qword_10040FB48);
  v67 = *(v66 + 64);
  v68 = v152;
  v69 = v140;
  v70 = v147;
  (*(v152 + 32))(v140, &v46[*(v66 + 48)], v147);
  v71 = v141;
  v72 = v134;
  (*(v151 + 32))(v141, &v46[v67], v134);
  v154 = sub_1001CC040(v156, v153, v154, v69, v71, v139);
  v83 = v137;
  (*(v68 + 16))(v137, v69, v70);
  v84 = (*(v68 + 88))(v83, v70);
  v85 = v84;
  v86 = enum case for JPKIInternalTypes.CertificateType.user(_:);
  if (v84 == enum case for JPKIInternalTypes.CertificateType.user(_:) || v84 == enum case for JPKIInternalTypes.CertificateType.signing(_:))
  {
    v87 = *(v65 + 2);
    if (!v87)
    {

      v98 = _swiftEmptyArrayStorage;
LABEL_27:
      (*(v151 + 8))(v71, v72);
      (*(v68 + 8))(v69, v70);
      v75 = v155;
      *v155 = v98;
      v76 = &enum case for JPKIXPCResponse.sign(_:);
      goto LABEL_25;
    }

    v158 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v85 == v86)
    {
      v88 = -105;
    }

    else
    {
      v88 = -102;
    }

    LODWORD(v153) = v88;
    v146 = v65;
    v89 = (v65 + 40);
    while (1)
    {
      v90 = *(v89 - 1);
      v91 = *v89;
      sub_100069E2C(v90, *v89);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v157 = 0;
      v93 = sub_1003AEF50();

      v94 = v157;
      if (!v93)
      {
        break;
      }

      v89 += 2;
      type metadata accessor for JPKIInternalTypes.DigitalSignature();
      v95 = v94;

      v96 = sub_1003B0934(v93);
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      JPKIInternalTypes.DigitalSignature.__allocating_init(certificate:signature:)();
      sub_10006A178(v90, v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v97 = v158[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v87)
      {

        v98 = v158;
        v70 = v147;
        v68 = v152;
        v72 = v134;
        v71 = v141;
        v69 = v140;
        goto LABEL_27;
      }
    }

    v115 = v157;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006A178(v90, v91);

    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_1000958E4(v116, qword_1005064B8);
    swift_errorRetain();
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();

    v119 = os_log_type_enabled(v117, v118);
    v120 = v147;
    v121 = v152;
    v122 = v134;
    if (v119)
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v158 = v124;
      *v123 = 136315138;
      swift_getErrorValue();
      v125 = Error.localizedDescription.getter();
      v127 = sub_1002FFA0C(v125, v126, &v158);

      *(v123 + 4) = v127;
      _os_log_impl(&_mh_execute_header, v117, v118, "Unable to perform compute digital signature operation with error %s", v123, 0xCu);
      sub_1000752F4(v124);
    }

    v128 = v140;
    v129 = v138;
    swift_getErrorValue();
    *v129 = Error.localizedDescription.getter();
    v129[1] = v130;
    v106 = v149;
    v99 = v150;
    (*(v149 + 104))(v129, enum case for JPKIInternalTypes.InternalError.signingFailed(_:), v150);
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
    swift_willThrowTypedImpl();

    v107 = v148;
    v131 = v141;
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
    v100 = swift_allocError();
    (*(v106 + 32))(v73, v129, v99);
    (*(v151 + 8))(v131, v122);
    (*(v121 + 8))(v128, v120);
    goto LABEL_22;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10021EB60(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t *a7)
{
  v162 = a7;
  v163 = a1;
  v159 = a2;
  v11 = HIDWORD(a3);
  v12 = HIDWORD(a4);
  v165 = HIDWORD(a5);
  v166 = HIDWORD(a6);
  v13 = type metadata accessor for JPKIInternalTypes.InternalError();
  v160 = *(v13 - 8);
  v161 = v13;
  v14 = *(v160 + 64);
  __chkstk_darwin(v13);
  v156 = &v146[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v20 = &v146[-v19];
  v154 = a3;
  token.val[0] = a3;
  token.val[1] = v11;
  v155 = a4;
  token.val[2] = a4;
  token.val[3] = v12;
  v157 = a5;
  token.val[4] = a5;
  token.val[5] = v165;
  v165 = a6;
  token.val[6] = a6;
  token.val[7] = v166;
  v21 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (v21)
  {
    v22 = v21;
    v23 = v17[2];
    v23(v20, v164 + OBJC_IVAR____TtC10seserviced13JPKIXPCServer__debugSkipPassLookup, v16);
    UserDefaultBacked.wrappedValue.getter();
    v153 = v17[1];
    v153(v20, v16);
    if (LOBYTE(token.val[0]) == 1)
    {
      if (qword_100501B50 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000958E4(v24, qword_1005074A0);
      v25 = v159;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      v28 = os_log_type_enabled(v26, v27);
      v29 = v163;
      if (v28)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *token.val = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_1002FFA0C(v29, v25, &token);
        _os_log_impl(&_mh_execute_header, v26, v27, "INTERNAL -- using passIdentifier as AID %s", v30, 0xCu);
        sub_1000752F4(v31);
      }

      sub_10013044C(v29, v25);
      if (v32 >> 60 != 15)
      {

        return;
      }

      __break(1u);
      goto LABEL_87;
    }

    v39 = v16;
    v40 = v20;
    v41 = sub_1002206A0(v22, 0xD000000000000016, 0x80000001004645D0);
    v166 = v42;
    if (v42)
    {
      v149 = v41;
      v152 = v22;
      v43 = [objc_allocWithZone(PKPassLibrary) init];
      v44 = String._bridgeToObjectiveC()();
      v151 = v43;
      v45 = [v43 passWithUniqueID:v44];

      if (!v45)
      {

        v61 = v152;
        if (qword_100501B50 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_1000958E4(v62, qword_1005074A0);
        v63 = v159;

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        v66 = os_log_type_enabled(v64, v65);
        v67 = v151;
        if (v66)
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *token.val = v69;
          *v68 = 136315138;
          v70 = v163;
          *(v68 + 4) = sub_1002FFA0C(v163, v63, &token);
          _os_log_impl(&_mh_execute_header, v64, v65, "Failed pass lookup for pass(withUniqueID:) %s", v68, 0xCu);
          sub_1000752F4(v69);
        }

        else
        {

          v70 = v163;
        }

        v90 = v161;
        v89 = v162;
        *v162 = v70;
        v89[1] = v63;
        (*(v160 + 104))(v89, enum case for JPKIInternalTypes.InternalError.passLookupFailed(_:), v90);
        sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);

        swift_willThrowTypedImpl();

        goto LABEL_66;
      }

      v150 = v45;
      v46 = sub_100220B04(v152, 0xD00000000000002FLL, 0x80000001004681E0);
      if (qword_100501B50 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      v48 = sub_1000958E4(v47, qword_1005074A0);

      v148 = v48;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = v49;
        v147 = v50;
        v53 = v51;
        v54 = swift_slowAlloc();
        *token.val = v54;
        *v53 = 136315394;
        *(v53 + 4) = sub_1002FFA0C(v149, v166, &token);
        *(v53 + 12) = 1024;
        *(v53 + 14) = v46 & 1;
        _os_log_impl(&_mh_execute_header, v52, v147, "Connection from %s privateEntitlement %{BOOL}d", v53, 0x12u);
        sub_1000752F4(v54);
      }

      else
      {
      }

      if (v46)
      {
        v61 = v152;
        goto LABEL_31;
      }

      v23(v40, v164 + OBJC_IVAR____TtC10seserviced13JPKIXPCServer__debugSkipAssociatedApplicationCheck, v39);
      UserDefaultBacked.wrappedValue.getter();
      v153(v40, v39);
      v81 = v151;
      if ((token.val[0] & 1) == 0)
      {
        v82 = String._bridgeToObjectiveC()();
        v83 = [v81 passUniqueIDsForAssociatedApplicationIdentifier:v82];

        if (v83)
        {
          v84 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v85 = v159;
          if (sub_1000C6B9C(v163, v159, v84))
          {

            goto LABEL_39;
          }

          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            *token.val = swift_slowAlloc();
            *v122 = 136315650;
            LODWORD(v165) = v121;
            v123 = v149;
            *(v122 + 4) = sub_1002FFA0C(v149, v166, &token);
            *(v122 + 12) = 2080;
            v124 = v163;
            *(v122 + 14) = sub_1002FFA0C(v163, v85, &token);
            *(v122 + 22) = 2080;
            v125 = Set.description.getter();
            v127 = sub_1002FFA0C(v125, v126, &token);
            v81 = v151;

            *(v122 + 24) = v127;
            _os_log_impl(&_mh_execute_header, v120, v165, "Application %s not permitted for pass %s -- allowed %s", v122, 0x20u);
            swift_arrayDestroy();

            v128 = v166;
          }

          else
          {

            v128 = v166;
            v124 = v163;
            v123 = v149;
          }

          v142 = v162;
          *v162 = v123;
          v142[1] = v128;
          v142[2] = v124;
          v142[3] = v85;
          v142[4] = v84;
          (*(v160 + 104))(v142, enum case for JPKIInternalTypes.InternalError.passAccessForbidden(_:), v161);
          sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
        }

        else
        {

          v117 = v162;
          v119 = v159;
          v118 = v160;
          *v162 = v163;
          v117[1] = v119;
          (*(v118 + 104))(v117, enum case for JPKIInternalTypes.InternalError.passLookupFailed(_:), v161);
          sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
        }

        swift_willThrowTypedImpl();

        return;
      }

LABEL_39:
      v86 = v158;
      v87 = v156;
      v88 = sub_100220F68(v154, v155, v157, v165, v156);
      v61 = v152;
      if (v86)
      {

        (*(v160 + 32))(v162, v87, v161);
        return;
      }

      v158 = 0;
      if ((v88 & 1) == 0)
      {

        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *token.val = v114;
          *v113 = 136315138;
          v115 = v149;
          *(v113 + 4) = sub_1002FFA0C(v149, v166, &token);
          _os_log_impl(&_mh_execute_header, v111, v112, "Process %s is not in the foreground", v113, 0xCu);
          sub_1000752F4(v114);

          v116 = v151;
        }

        else
        {

          v116 = v151;
          v115 = v149;
        }

        v144 = v161;
        v143 = v162;
        v145 = v166;
        *v162 = v115;
        v143[1] = v145;
        (*(v160 + 104))(v143, enum case for JPKIInternalTypes.InternalError.processNotForeground(_:), v144);
        sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
        swift_willThrowTypedImpl();

LABEL_65:
LABEL_66:

        return;
      }

LABEL_31:
      v71 = [v150 secureElementPass];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 paymentApplications];

        if (!v73)
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          return;
        }

        v74 = sub_10009393C(0, &qword_100505CA8, PKPaymentApplication_ptr);
        sub_1001BC678();
        v75 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v165 = v74;
        if ((v75 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v77 = v168;
          v76 = v169;
          v78 = v170;
          v79 = v171;
          v80 = v172;
        }

        else
        {
          v91 = -1 << *(v75 + 32);
          v76 = v75 + 56;
          v78 = ~v91;
          v92 = -v91;
          if (v92 < 64)
          {
            v93 = ~(-1 << v92);
          }

          else
          {
            v93 = -1;
          }

          v80 = v93 & *(v75 + 56);

          v79 = 0;
          v77 = v75;
        }

        v164 = v78;
        if ((v77 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

LABEL_49:
        v94 = __CocoaSet.Iterator.next()();
        if (v94)
        {
          v173 = v94;
          swift_dynamicCast();
          v95 = *token.val;
          v96 = v79;
          v97 = v80;
          if (*token.val)
          {
            while ([v95 paymentNetworkIdentifier] != 138)
            {

              v79 = v96;
              v80 = v97;
              if (v77 < 0)
              {
                goto LABEL_49;
              }

LABEL_52:
              v98 = v79;
              v99 = v80;
              v96 = v79;
              if (!v80)
              {
                while (1)
                {
                  v96 = v98 + 1;
                  if (__OFADD__(v98, 1))
                  {
                    break;
                  }

                  if (v96 >= ((v78 + 64) >> 6))
                  {
                    goto LABEL_60;
                  }

                  v99 = *(v76 + 8 * v96);
                  ++v98;
                  if (v99)
                  {
                    goto LABEL_56;
                  }
                }

                __break(1u);
                goto LABEL_85;
              }

LABEL_56:
              v97 = (v99 - 1) & v99;
              v95 = *(*(v77 + 48) + ((v96 << 9) | (8 * __clz(__rbit64(v99)))));
              if (!v95)
              {
                goto LABEL_60;
              }
            }

            sub_100093854();

            v129 = [v95 applicationIdentifier];

            if (!v129)
            {
              goto LABEL_61;
            }

            v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v132 = v131;

            v133 = v159;

            v134 = Logger.logObject.getter();
            v135 = static os_log_type_t.info.getter();

            v136 = os_log_type_enabled(v134, v135);
            v137 = v152;
            if (v136)
            {
              v138 = swift_slowAlloc();
              *token.val = swift_slowAlloc();
              *v138 = 136315394;
              *(v138 + 4) = sub_1002FFA0C(v163, v133, &token);
              *(v138 + 12) = 2080;
              *(v138 + 14) = sub_1002FFA0C(v130, v132, &token);
              _os_log_impl(&_mh_execute_header, v134, v135, "Resolved passID %s -> %s", v138, 0x16u);
              swift_arrayDestroy();
            }

            v139 = v151;
            v140 = v150;

            sub_10013044C(v130, v132);
            if (v141 >> 60 != 15)
            {

              return;
            }

            goto LABEL_88;
          }
        }

LABEL_60:
        sub_100093854();

LABEL_61:

        v61 = v152;
      }

      else
      {
      }

      v100 = v151;
      v101 = v159;
      v102 = v163;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Couldn't find .typeJPKI payment application", v105, 2u);
      }

      *token.val = 0;
      *&token.val[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(81);
      v106._countAndFlagsBits = 0xD00000000000004FLL;
      v106._object = 0x8000000100468210;
      String.append(_:)(v106);
      v107._countAndFlagsBits = v102;
      v107._object = v101;
      String.append(_:)(v107);
      v108 = *&token.val[2];
      v110 = v161;
      v109 = v162;
      *v162 = *token.val;
      v109[1] = v108;
      (*(v160 + 104))(v109, enum case for JPKIInternalTypes.InternalError.passInvalid(_:), v110);
      sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
      swift_willThrowTypedImpl();

      goto LABEL_65;
    }

    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000958E4(v55, qword_1005074A0);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Couldn't lookup kSecEntitlementApplicationIdentifier", v58, 2u);
    }

    v60 = v161;
    v59 = v162;
    *v162 = 0xD000000000000034;
    v59[1] = 0x80000001004681A0;
    (*(v160 + 104))(v59, enum case for JPKIInternalTypes.InternalError.internalError(_:), v60);
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
    swift_willThrowTypedImpl();
  }

  else
  {
    if (qword_100501B50 != -1)
    {
LABEL_85:
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000958E4(v33, qword_1005074A0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to SecTaskCreateWithAuditToken", v36, 2u);
    }

    v38 = v161;
    v37 = v162;
    *v162 = 0xD000000000000025;
    v37[1] = 0x8000000100468170;
    (*(v160 + 104))(v37, enum case for JPKIInternalTypes.InternalError.internalError(_:), v38);
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_10021FFF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v14 - 8);
  v15 = *(v29 + 64);
  __chkstk_darwin(v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v27 = *(v18 - 8);
  v28 = v18;
  v19 = *(v27 + 64);
  __chkstk_darwin(v18);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *(a3 + OBJC_IVAR____TtC10seserviced13JPKIXPCServer_queue);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a7;
  aBlock[4] = sub_100221CB0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CC520;
  v23 = _Block_copy(aBlock);
  sub_100069E2C(a6, a7);
  v24 = a1;
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100221968(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v29 + 8))(v17, v14);
  (*(v27 + 8))(v21, v28);
}

uint64_t sub_1002202F0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t **), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = sub_100068FC4(&qword_100507510, &qword_10040FB40);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = (&v35 - v16);
  if (a1)
  {
    *v17 = a1;
    v17[1] = a5;
    v17[2] = a6;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    sub_100069E2C(a5, a6);
    a3(v17);

    v15 = v17;
  }

  else
  {
    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_1005074A0);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v36 = a3;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v24 = Error.localizedDescription.getter();
        v26 = v25;
      }

      else
      {
        v26 = 0xEB000000003E726FLL;
        v24 = 0x727265206C696E3CLL;
      }

      v27 = sub_1002FFA0C(v24, v26, &v39);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get secureElement %s", v22, 0xCu);
      sub_1000752F4(v23);

      a3 = v36;
    }

    else
    {
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v39 = 0xD000000000000013;
    v40 = 0x8000000100468150;
    if (a2)
    {
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v37 = v28;
    v38 = v29;
    sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    v30._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v30);

    v31 = v40;
    *v15 = v39;
    v15[1] = v31;
    v32 = enum case for JPKIInternalTypes.InternalError.internalError(_:);
    v33 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v33 - 8) + 104))(v15, v32, v33);
    swift_storeEnumTagMultiPayload();
    a3(v15);
  }

  return sub_100075768(v15, &qword_100507510, &qword_10040FB40);
}

uint64_t sub_1002206A0(__SecTask *a1, uint64_t a2, unint64_t a3)
{
  error = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(a1, v6, &error);

  if (v7)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v26;
    }

    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_1005074A0);
    swift_unknownObjectRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1002FFA0C(a2, a3, &v26);
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v22 = _typeName(_:qualified:)();
      v24 = sub_1002FFA0C(v22, v23, &v26);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1002FFA0C(0x676E69727453, 0xE600000000000000, &v26);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to cast result of entitlement %s from %s to %s", v21, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = error;
    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_1005074A0);
    v11 = v9;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1002FFA0C(a2, a3, &v26);
      *(v14 + 12) = 2080;
      if (v9)
      {
        type metadata accessor for CFError(0);
        sub_100221968(&qword_100504A60, type metadata accessor for CFError);
        v15 = Error.localizedDescription.getter();
        v17 = v16;
      }

      else
      {
        v17 = 0xE500000000000000;
        v15 = 0x3E6C696E3CLL;
      }

      v25 = sub_1002FFA0C(v15, v17, &v26);

      *(v14 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to SecTaskCopyValueForEntitlement %s : %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_100220B04(__SecTask *a1, uint64_t a2, unint64_t a3)
{
  error = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(a1, v6, &error);

  if (v7)
  {
    v28 = v7;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v27;
    }

    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_1005074A0);
    swift_unknownObjectRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1002FFA0C(a2, a3, &v28);
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v22 = _typeName(_:qualified:)();
      v24 = sub_1002FFA0C(v22, v23, &v28);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1002FFA0C(1819242306, 0xE400000000000000, &v28);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to cast result of entitlement %s from %s to %s", v21, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 2;
  }

  v9 = error;
  if (qword_100501B50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_1005074A0);
  v11 = v9;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v12, v13))
  {

    return 2;
  }

  v14 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  *v14 = 136315394;
  *(v14 + 4) = sub_1002FFA0C(a2, a3, &v28);
  *(v14 + 12) = 2080;
  if (v9)
  {
    type metadata accessor for CFError(0);
    sub_100221968(&qword_100504A60, type metadata accessor for CFError);
    v15 = Error.localizedDescription.getter();
    v17 = v16;
  }

  else
  {
    v17 = 0xE500000000000000;
    v15 = 0x3E6C696E3CLL;
  }

  v25 = sub_1002FFA0C(v15, v17, &v28);

  *(v14 + 14) = v25;
  _os_log_impl(&_mh_execute_header, v12, v13, "Failed to SecTaskCopyValueForEntitlement %s : %s", v14, 0x16u);
  v8 = 2;
  swift_arrayDestroy();

  return v8;
}

uint64_t sub_100220F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *v40.val = a1;
  *&v40.val[2] = a2;
  *&v40.val[4] = a3;
  *&v40.val[6] = a4;
  v7 = audit_token_to_pid(&v40);
  v8 = [objc_opt_self() identifierWithPid:v7];
  if (v8)
  {
    v9 = v8;
    sub_10009393C(0, &qword_100506F80, RBSProcessHandle_ptr);
    v10 = v9;
    v11 = sub_1000B5544(v10);
    if (v5)
    {

      if (qword_100501B50 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000958E4(v12, qword_1005074A0);
      v13 = v10;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v9;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unable to create RBSProcessHandle for identifier %@", v16, 0xCu);
        sub_100075768(v17, &unk_100503F70, &unk_10040B2E0);
      }

      *a5 = 0xD000000000000021;
      a5[1] = 0x8000000100468290;
      v19 = enum case for JPKIInternalTypes.InternalError.internalError(_:);
      v20 = type metadata accessor for JPKIInternalTypes.InternalError();
      (*(*(v20 - 8) + 104))(a5, v19, v20);
      sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
      swift_willThrowTypedImpl();
    }

    else
    {
      v27 = v11;

      if (qword_100501B50 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000958E4(v28, qword_1005074A0);
      v29 = v27;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = [v29 currentState];
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "Got RBSProcessState %@", v32, 0xCu);
        sub_100075768(v33, &unk_100503F70, &unk_10040B2E0);
      }

      v35 = [v29 currentState];
      if (v35)
      {
        v36 = v35;
        v19 = [v35 endowmentNamespaces];

        if (v19)
        {
          v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          LOBYTE(v19) = sub_1000C6B9C(v38, v39, v37);
        }

        else
        {
        }
      }

      else
      {

        LOBYTE(v19) = 0;
      }
    }
  }

  else
  {
    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000958E4(v21, qword_1005074A0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to create RBSProcessIdentifier", v24, 2u);
    }

    *a5 = 0xD000000000000025;
    a5[1] = 0x8000000100468260;
    v25 = enum case for JPKIInternalTypes.InternalError.internalError(_:);
    v19 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v19 - 8) + 104))(a5, v25, v19);
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError);
    swift_willThrowTypedImpl();
  }

  return v19 & 1;
}

uint64_t type metadata accessor for JPKIXPCServer()
{
  result = qword_100507500;
  if (!qword_100507500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100221684()
{
  sub_1002186C8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100221738()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_1005074A0);
  sub_1000958E4(v0, qword_1005074A0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100221920()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100221968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002219B0()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for JPKIXPCRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100221B0C(uint64_t a1)
{
  v3 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for JPKIXPCRequest() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_10021D334(a1, v1 + v4, v7, v8);
}

uint64_t sub_100221BF0()
{
  v1 = *(v0 + 32);

  sub_10006A178(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100221C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100221C60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_10006A178(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100221CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100507510, &qword_10040FB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100221D3C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *(v1 + 16);
    v10 = Logger.logObject.getter();
    if (v9)
    {
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "LyonBLE is already running", v12, 2u);
      }
    }

    else
    {
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, v13, "Starting LyonBLE", v14, 2u);
      }

      *(v1 + 16) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100221F6C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  i = *(v2 - 1);
  v4 = *(i + 64);
  __chkstk_darwin(v2);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(i + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(i + 8))(v6, v2);
    if ((v7 & 1) == 0)
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_7;
    }

    v9 = *(v1 + 16);
    v10 = Logger.logObject.getter();
    if (v9 != 1)
    {
      break;
    }

    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopping LyonBLE", v12, 2u);
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_39;
    }

LABEL_7:
    v2 = off_10050B110;
    v34 = v1;
    v35 = off_10050B110;
    v13 = sub_1000CAAC4();
    v33[1] = v13;
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      v2 = __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_10022D9C4(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v15 = v37[2];
      v14 = v37[3];
      v16 = v37[4];
      v17 = v37[5];
      v18 = v37[6];
    }

    else
    {
      v21 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v16 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v18 = v23 & *(v13 + 56);
      v17 = 0;
    }

    v6 = 0;
    v33[0] = v16;
    for (i = (v16 + 64) >> 6; v15 < 0; v18 = v1)
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28)
      {
        goto LABEL_31;
      }

      v36 = v28;
      type metadata accessor for Peer();
      swift_dynamicCast();
      v27 = v37[0];
      v26 = v17;
      v1 = v18;
      if (!v37[0])
      {
        goto LABEL_31;
      }

LABEL_25:
      if (*v27 == _TtC10seserviced8LyonPeer)
      {
        *(v27 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 256;
      }

      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000E67E4(v27);
      v37[0] = v27;
      v29 = v35[3];
      __chkstk_darwin(v30);
      v2 = &v33[-4];
      v33[-2] = v37;
      v33[-1] = v31;
      os_unfair_lock_lock((v29 + 32));
      sub_10022DA2C((v29 + 16));
      os_unfair_lock_unlock((v29 + 32));

      v17 = v26;
    }

    v24 = v17;
    v25 = v18;
    v26 = v17;
    if (v18)
    {
LABEL_21:
      v1 = (v25 - 1) & v25;
      v27 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

      if (v27)
      {
        goto LABEL_25;
      }

LABEL_31:
      sub_100093854();

      v32 = v34;
      if (*(v34 + 17) == 1)
      {
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E8C60(843466310, 0xE400000000000000);
        *(v32 + 17) = 0;
      }

      *(v32 + 16) = 0;
      return;
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= i)
      {
        goto LABEL_31;
      }

      v25 = *(v14 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v10, v19, "LyonBLE is not running", v20, 2u);
  }
}

uint64_t sub_100222504(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v46);
  v45 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v44);
  v43 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  v48 = a3;
  v13 = sub_1002230A4();
  LOBYTE(a3) = sub_1000D5D24(aBlock, v13);

  if (a3)
  {
    v36[2] = v3;
    v15 = *a1;
    if ((v15 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&qword_1005076B8, &unk_10040FBE0);
      sub_100075C60(&qword_1005076C0, &qword_1005076B8, &unk_10040FBE0);
      result = Set.Iterator.init(_cocoa:)();
      v15 = v53[4];
      v16 = v53[5];
      v17 = v53[6];
      v18 = v53[7];
      v19 = v53[8];
    }

    else
    {
      v20 = -1 << *(v15 + 32);
      v16 = v15 + 56;
      v17 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v15 + 56);

      v18 = 0;
    }

    v36[1] = v17;
    v37 = (v17 + 64) >> 6;
    v40 = v53;
    v39 = (v7 + 8);
    v38 = (v10 + 8);
    v42 = v15;
    v41 = v16;
    if (v15 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v23 = v18;
      v24 = v19;
      v25 = v18;
      if (!v19)
      {
        break;
      }

LABEL_13:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v15 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (!v27)
      {
        return sub_100093854();
      }

      while (1)
      {
        v50 = v26;
        v29 = swift_allocObject();
        v31 = v47;
        v30 = v48;
        v29[2] = v27;
        v29[3] = v31;
        v29[4] = v30;
        v49 = *(v27 + 32);
        v53[2] = sub_10022D9B4;
        v53[3] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v53[0] = sub_100080830;
        v53[1] = &unk_1004CC5C0;
        v32 = _Block_copy(aBlock);

        v33 = v43;
        static DispatchQoS.unspecified.getter();
        v51 = _swiftEmptyArrayStorage;
        sub_10022D9C4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v34 = v45;
        v35 = v46;
        v16 = v41;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v32);
        v15 = v42;

        (*v39)(v34, v35);
        (*v38)(v33, v44);

        v18 = v25;
        v19 = v50;
        if ((v15 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v28 = __CocoaSet.Iterator.next()();
        if (v28)
        {
          v51 = v28;
          sub_100068FC4(&qword_1005076B8, &unk_10040FBE0);
          swift_dynamicCast();
          v27 = aBlock[0];
          v25 = v18;
          v26 = v19;
          if (aBlock[0])
          {
            continue;
          }
        }

        return sub_100093854();
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v37)
      {
        return sub_100093854();
      }

      v24 = *(v16 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100222AA0(int64_t *a1, uint64_t a2, void *a3)
{
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v49);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v47);
  v46 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  if (*(a2 + 16))
  {
    v13 = a3;
  }

  else
  {
    [a3 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v13 = v58;
  }

  v14 = sub_1000D5130(aBlock, v13);

  if (v14)
  {
    v53 = v10;
    v45 = a3;
    v40[2] = v3;
    v15 = *a1;
    if ((v15 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      sub_100075C60(&qword_100504AA8, &unk_100503FA0, &unk_10040B2F0);
      Set.Iterator.init(_cocoa:)();
      v15 = v58;
      v54 = v59;
      v16 = v60;
      v17 = v61;
      v18 = v62;
    }

    else
    {
      v19 = -1 << *(v15 + 32);
      v20 = *(v15 + 56);
      v54 = v15 + 56;
      v16 = ~v19;
      v21 = -v19;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v18 = v22 & v20;

      v17 = 0;
    }

    v40[1] = v16;
    v23 = (v16 + 64) >> 6;
    v43 = v57;
    v42 = (v7 + 8);
    v41 = (v53 + 8);
    v44 = v15;
    if (v15 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v24 = v17;
      v25 = v18;
      v26 = v17;
      if (!v18)
      {
        break;
      }

LABEL_16:
      v27 = (v25 - 1) & v25;
      v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

      if (!v28)
      {
LABEL_22:
        sub_100093854();
        return;
      }

      while (1)
      {
        v53 = v27;
        v30 = swift_allocObject();
        v31 = v50;
        v30[2] = v28;
        v30[3] = v31;
        v32 = v45;
        v30[4] = v45;
        v52 = v28[4];
        v57[2] = sub_10014E498;
        v57[3] = v30;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v57[0] = sub_100080830;
        v57[1] = &unk_1004CC688;
        v51 = _Block_copy(aBlock);
        v33 = v32;

        v34 = v46;
        static DispatchQoS.unspecified.getter();
        v55 = _swiftEmptyArrayStorage;
        sub_10022D9C4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v35 = v23;
        v36 = v48;
        v37 = v49;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v38 = v51;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v38);
        v15 = v44;

        v39 = v36;
        v23 = v35;
        (*v42)(v39, v37);
        (*v41)(v34, v47);

        v17 = v26;
        v18 = v53;
        if ((v15 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v29 = __CocoaSet.Iterator.next()();
        if (v29)
        {
          v55 = v29;
          sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
          swift_dynamicCast();
          v28 = aBlock[0];
          v26 = v17;
          v27 = v18;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        goto LABEL_22;
      }

      v25 = *(v54 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002230A4()
{
  if (*(v0 + 16))
  {
  }

  type metadata accessor for Peer();

  sub_100068FC4(&qword_100503600, &qword_10040A9D8);
  swift_dynamicCast();
  [v2 copyWithZone:0];
  swift_unknownObjectRelease();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v3;
}

uint64_t sub_100223184(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v43);
  v42 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v41);
  v40 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10010DAA4();
  v45 = result;
  if (result)
  {
    v33[2] = v3;
    v12 = *a1;
    if ((v12 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&qword_1005076B8, &unk_10040FBE0);
      sub_100075C60(&qword_1005076C0, &qword_1005076B8, &unk_10040FBE0);
      result = Set.Iterator.init(_cocoa:)();
      v12 = v50[4];
      v13 = v50[5];
      v14 = v50[6];
      v15 = v50[7];
      v16 = v50[8];
    }

    else
    {
      v17 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v12 + 56);

      v15 = 0;
    }

    v33[1] = v14;
    v34 = (v14 + 64) >> 6;
    v37 = v50;
    v36 = (v5 + 8);
    v35 = (v8 + 8);
    v39 = v12;
    v38 = v13;
    if (v12 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v20 = v15;
      v21 = v16;
      v22 = v15;
      if (!v16)
      {
        break;
      }

LABEL_13:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v12 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

      if (!v24)
      {
LABEL_19:
        sub_100093854();
      }

      while (1)
      {
        v47 = v23;
        v26 = swift_allocObject();
        v27 = v44;
        v28 = v45;
        v26[2] = v24;
        v26[3] = v27;
        v26[4] = v28;
        v46 = *(v24 + 32);
        v50[2] = sub_10022D928;
        v50[3] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v50[0] = sub_100080830;
        v50[1] = &unk_1004CC570;
        v29 = _Block_copy(aBlock);

        v30 = v40;
        static DispatchQoS.unspecified.getter();
        v48 = _swiftEmptyArrayStorage;
        sub_10022D9C4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v31 = v42;
        v32 = v43;
        v13 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);
        v12 = v39;

        (*v36)(v31, v32);
        (*v35)(v30, v41);

        v15 = v22;
        v16 = v47;
        if ((v12 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v25 = __CocoaSet.Iterator.next()();
        if (v25)
        {
          v48 = v25;
          sub_100068FC4(&qword_1005076B8, &unk_10040FBE0);
          swift_dynamicCast();
          v24 = aBlock[0];
          v22 = v15;
          v23 = v16;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v34)
      {
        goto LABEL_19;
      }

      v21 = *(v13 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10022370C(uint64_t *a1, void *a2, uint64_t a3)
{
  v46 = a3;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v43);
  v42 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10010E8DC(a2);
  v47 = result;
  if (result)
  {
    v35[2] = v3;
    v13 = *a1;
    if ((v13 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      sub_100075C60(&qword_100504AA8, &unk_100503FA0, &unk_10040B2F0);
      result = Set.Iterator.init(_cocoa:)();
      v13 = v52[4];
      v14 = v52[5];
      v15 = v52[6];
      v16 = v52[7];
      v17 = v52[8];
    }

    else
    {
      v18 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v15 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(v13 + 56);

      v16 = 0;
    }

    v35[1] = v15;
    v36 = (v15 + 64) >> 6;
    v39 = v52;
    v38 = (v6 + 8);
    v37 = (v9 + 8);
    v41 = v13;
    v40 = v14;
    if (v13 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v21 = v16;
      v22 = v17;
      v23 = v16;
      if (!v17)
      {
        break;
      }

LABEL_13:
      v24 = (v22 - 1) & v22;
      v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));

      if (!v25)
      {
LABEL_19:

        return sub_100093854();
      }

      while (1)
      {
        v49 = v24;
        v27 = swift_allocObject();
        v28 = v46;
        v29 = v47;
        v27[2] = v25;
        v27[3] = v28;
        v27[4] = v29;
        v48 = *(v25 + 32);
        v52[2] = sub_10022DA10;
        v52[3] = v27;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v52[0] = sub_100080830;
        v52[1] = &unk_1004CC638;
        v30 = _Block_copy(aBlock);

        v31 = v29;

        v32 = v42;
        static DispatchQoS.unspecified.getter();
        v50 = _swiftEmptyArrayStorage;
        sub_10022D9C4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v33 = v44;
        v34 = v45;
        v14 = v40;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);
        v13 = v41;

        (*v38)(v33, v34);
        (*v37)(v32, v43);

        v16 = v23;
        v17 = v49;
        if ((v13 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v26 = __CocoaSet.Iterator.next()();
        if (v26)
        {
          v50 = v26;
          sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
          swift_dynamicCast();
          v25 = aBlock[0];
          v23 = v16;
          v24 = v17;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v36)
      {
        goto LABEL_19;
      }

      v22 = *(v14 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100223C90(uint64_t a1, uint64_t a2, id a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (*(a2 + 16))
  {
    v8 = a3;
    v5 = a3;
  }

  else
  {
    [a3 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v5 = v8;
  }

  ObjectType = swift_getObjectType();
  v7[0] = v5;
  (*(v3 + 32))(v7, ObjectType, v3);
}

void sub_100223D5C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v1 + 16) == 1)
  {
    if (qword_100501960 == -1)
    {
LABEL_6:
      sub_1000F3B5C(-80, -85, 0, *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_peripheralTXPower), a1);
      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "LyonBLE is not running", v12, 2u);
  }
}

uint64_t sub_100223F84(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v83 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v94 = a2 + 56;
  v84 = v7;
  v85 = a1;
  while (1)
  {
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v86 = (v6 - 1) & v6;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
        }

        if (v3 >= v7)
        {
          return 1;
        }

        v11 = *(v83 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v86 = (v11 - 1) & v11;
    }

    v12 = (*(a1 + 48) + 16 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v2 + 40);
    Hasher.init(_seed:)();
    sub_100069E2C(v14, v13);
    Data.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_157:
      sub_10006A178(v14, v13);
      return 0;
    }

    v19 = ~v17;
    v20 = v13 >> 62;
    v21 = !v14 && v13 == 0xC000000000000000;
    v22 = !v21;
    v97 = v22;
    v23 = __OFSUB__(HIDWORD(v14), v14);
    v93 = v23;
    v91 = (v14 >> 32) - v14;
    v92 = v14 >> 32;
    v96 = v19;
LABEL_27:
    v24 = (*(v2 + 48) + 16 * v18);
    v26 = *v24;
    v25 = v24[1];
    v27 = v25 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v26)
      {
        v28 = 0;
      }

      else
      {
        v28 = v25 == 0xC000000000000000;
      }

      v30 = !v28 || v13 >> 62 != 3;
      if (((v30 | v97) & 1) == 0)
      {
        v79 = 0;
        v80 = 0xC000000000000000;
LABEL_154:
        sub_10006A178(v79, v80);
        v7 = v84;
        a1 = v85;
        v6 = v86;
        continue;
      }

LABEL_49:
      v31 = 0;
      if (v20 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_49;
      }

      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_163;
      }

      if (v20 <= 1)
      {
        goto LABEL_46;
      }
    }

    else if (v27)
    {
      LODWORD(v31) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_162;
      }

      v31 = v31;
      if (v20 <= 1)
      {
LABEL_46:
        v35 = BYTE6(v13);
        if (v20)
        {
          v35 = HIDWORD(v14) - v14;
          if (v93)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v31 = BYTE6(v25);
      if (v20 <= 1)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    if (v20 != 2)
    {
      if (!v31)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v37 = *(v14 + 16);
    v36 = *(v14 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      goto LABEL_160;
    }

LABEL_52:
    if (v31 != v35)
    {
      goto LABEL_26;
    }

    if (v31 < 1)
    {
      goto LABEL_153;
    }

    if (v27 <= 1)
    {
      break;
    }

    if (v27 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (!v20)
      {
LABEL_82:
        __s2 = v14;
        v99 = v13;
        v100 = BYTE2(v13);
        v101 = BYTE3(v13);
        v102 = BYTE4(v13);
        v103 = BYTE5(v13);
        v54 = memcmp(__s1, &__s2, BYTE6(v13));
        v19 = v96;
        if (!v54)
        {
          goto LABEL_153;
        }

        goto LABEL_26;
      }

      if (v20 == 2)
      {
        v50 = *(v14 + 16);
        v89 = *(v14 + 24);
        sub_100069E2C(v26, v25);
        v51 = __DataStorage._bytes.getter();
        if (v51)
        {
          v52 = __DataStorage._offset.getter();
          if (__OFSUB__(v50, v52))
          {
            goto LABEL_178;
          }

          v51 += v50 - v52;
        }

        v34 = __OFSUB__(v89, v50);
        v53 = &v89[-v50];
        if (v34)
        {
          goto LABEL_169;
        }

        result = __DataStorage._length.getter();
        if (!v51)
        {
          goto LABEL_190;
        }

        goto LABEL_113;
      }

      if (v92 < v14)
      {
        goto LABEL_167;
      }

      sub_100069E2C(v26, v25);
      v65 = __DataStorage._bytes.getter();
      if (!v65)
      {
        goto LABEL_187;
      }

      v66 = v65;
      v67 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v67))
      {
        goto LABEL_173;
      }

      v41 = (v14 - v67 + v66);
      result = __DataStorage._length.getter();
      if (!v41)
      {
        goto LABEL_188;
      }

      goto LABEL_121;
    }

    v43 = *(v26 + 16);
    sub_100069E2C(v26, v25);
    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v45 = v44;
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_165;
      }

      v87 = (v43 - v46 + v45);
    }

    else
    {
      v87 = 0;
    }

    __DataStorage._length.getter();
    v8 = v94;
    v2 = a2;
    if (v20 != 2)
    {
      if (v20 == 1)
      {
        if (v92 < v14)
        {
          goto LABEL_170;
        }

        v55 = __DataStorage._bytes.getter();
        if (v55)
        {
          v56 = __DataStorage._offset.getter();
          if (__OFSUB__(v14, v56))
          {
            goto LABEL_181;
          }

          v55 += v14 - v56;
        }

        v57 = __DataStorage._length.getter();
        v58 = (v14 >> 32) - v14;
        if (v57 < v91)
        {
          v58 = v57;
        }

        result = v87;
        if (!v87)
        {
          goto LABEL_198;
        }

        if (!v55)
        {
          goto LABEL_197;
        }

        goto LABEL_147;
      }

      result = v87;
      *__s1 = v14;
      *&__s1[8] = v13;
      __s1[10] = BYTE2(v13);
      __s1[11] = BYTE3(v13);
      __s1[12] = BYTE4(v13);
      __s1[13] = BYTE5(v13);
      if (!v87)
      {
        goto LABEL_184;
      }

LABEL_152:
      v78 = memcmp(result, __s1, BYTE6(v13));
      sub_10006A178(v26, v25);
      v19 = v96;
      if (!v78)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v70 = *(v14 + 16);
    v81 = *(v14 + 24);
    v55 = __DataStorage._bytes.getter();
    if (v55)
    {
      v71 = __DataStorage._offset.getter();
      if (__OFSUB__(v70, v71))
      {
        goto LABEL_179;
      }

      v55 += v70 - v71;
    }

    v34 = __OFSUB__(v81, v70);
    v72 = v81 - v70;
    if (v34)
    {
      goto LABEL_174;
    }

    v73 = __DataStorage._length.getter();
    if (v73 >= v72)
    {
      v58 = v72;
    }

    else
    {
      v58 = v73;
    }

    result = v87;
    if (!v87)
    {
      goto LABEL_194;
    }

    v2 = a2;
    if (!v55)
    {
      goto LABEL_193;
    }

LABEL_147:
    if (result != v55)
    {
      v64 = memcmp(result, v55, v58);
      sub_10006A178(v26, v25);
      goto LABEL_149;
    }

    sub_10006A178(v26, v25);
    sub_10006A178(v14, v13);
    v7 = v84;
    a1 = v85;
    v8 = v94;
    v6 = v86;
  }

  if (v27)
  {
    if (v26 > v26 >> 32)
    {
      goto LABEL_164;
    }

    sub_100069E2C(v26, v25);
    v47 = __DataStorage._bytes.getter();
    if (v47)
    {
      v48 = v47;
      v49 = __DataStorage._offset.getter();
      if (__OFSUB__(v26, v49))
      {
        goto LABEL_166;
      }

      v88 = (v26 - v49 + v48);
    }

    else
    {
      v88 = 0;
    }

    __DataStorage._length.getter();
    v8 = v94;
    v2 = a2;
    if (v20 == 2)
    {
      v74 = *(v14 + 16);
      v82 = *(v14 + 24);
      v55 = __DataStorage._bytes.getter();
      if (v55)
      {
        v75 = __DataStorage._offset.getter();
        if (__OFSUB__(v74, v75))
        {
          goto LABEL_180;
        }

        v55 += v74 - v75;
      }

      v34 = __OFSUB__(v82, v74);
      v76 = v82 - v74;
      if (v34)
      {
        goto LABEL_176;
      }

      v77 = __DataStorage._length.getter();
      if (v77 >= v76)
      {
        v58 = v76;
      }

      else
      {
        v58 = v77;
      }

      result = v88;
      if (!v88)
      {
        goto LABEL_196;
      }

      v2 = a2;
      if (!v55)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v20 != 1)
      {
        result = v88;
        *__s1 = v14;
        *&__s1[8] = v13;
        __s1[10] = BYTE2(v13);
        __s1[11] = BYTE3(v13);
        __s1[12] = BYTE4(v13);
        __s1[13] = BYTE5(v13);
        if (!v88)
        {
          goto LABEL_189;
        }

        goto LABEL_152;
      }

      if (v92 < v14)
      {
        goto LABEL_175;
      }

      v55 = __DataStorage._bytes.getter();
      if (v55)
      {
        v59 = __DataStorage._offset.getter();
        if (__OFSUB__(v14, v59))
        {
          goto LABEL_182;
        }

        v55 += v14 - v59;
      }

      v60 = __DataStorage._length.getter();
      v58 = (v14 >> 32) - v14;
      if (v60 < v91)
      {
        v58 = v60;
      }

      result = v88;
      if (!v88)
      {
        goto LABEL_192;
      }

      if (!v55)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_147;
  }

  *__s1 = v26;
  *&__s1[8] = v25;
  __s1[10] = BYTE2(v25);
  __s1[11] = BYTE3(v25);
  __s1[12] = BYTE4(v25);
  __s1[13] = BYTE5(v25);
  if (!v20)
  {
    goto LABEL_82;
  }

  if (v20 != 1)
  {
    v61 = *(v14 + 16);
    v90 = *(v14 + 24);
    sub_100069E2C(v26, v25);
    v51 = __DataStorage._bytes.getter();
    if (v51)
    {
      v62 = __DataStorage._offset.getter();
      if (__OFSUB__(v61, v62))
      {
        goto LABEL_177;
      }

      v51 += v61 - v62;
    }

    v34 = __OFSUB__(v90, v61);
    v53 = &v90[-v61];
    if (v34)
    {
      goto LABEL_171;
    }

    result = __DataStorage._length.getter();
    if (!v51)
    {
      goto LABEL_186;
    }

LABEL_113:
    if (result >= v53)
    {
      v63 = v53;
    }

    else
    {
      v63 = result;
    }

    v64 = memcmp(__s1, v51, v63);
    sub_10006A178(v26, v25);
    v2 = a2;
LABEL_149:
    v8 = v94;
    v19 = v96;
    if (!v64)
    {
      goto LABEL_153;
    }

    goto LABEL_26;
  }

  if (v92 < v14)
  {
    goto LABEL_168;
  }

  sub_100069E2C(v26, v25);
  v38 = __DataStorage._bytes.getter();
  if (v38)
  {
    v39 = v38;
    v40 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v40))
    {
      goto LABEL_172;
    }

    v41 = (v14 - v40 + v39);
    result = __DataStorage._length.getter();
    if (!v41)
    {
      goto LABEL_185;
    }

LABEL_121:
    if (result >= v91)
    {
      v68 = (v14 >> 32) - v14;
    }

    else
    {
      v68 = result;
    }

    v69 = memcmp(__s1, v41, v68);
    sub_10006A178(v26, v25);
    v2 = a2;
    v19 = v96;
    if (!v69)
    {
LABEL_153:
      v79 = v14;
      v80 = v13;
      goto LABEL_154;
    }

LABEL_26:
    v18 = (v18 + 1) & v19;
    if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_27;
  }

  __DataStorage._length.getter();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  result = __DataStorage._length.getter();
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

uint64_t sub_1002249A8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v84 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v98 = a2 + 56;
  v85 = v7;
  v86 = a1;
  while (1)
  {
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v87 = (v6 - 1) & v6;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
        }

        if (v3 >= v7)
        {
          return 1;
        }

        v11 = *(v84 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v87 = (v11 - 1) & v11;
    }

    v12 = (*(a1 + 48) + 32 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = *(v2 + 40);
    Hasher.init(_seed:)();
    v88 = v14;
    v89 = v13;
    sub_100069E2C(v14, v13);
    sub_100069E2C(v16, v15);
    v105 = v15;
    Data.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_157:
      sub_10006A178(v88, v89);
      sub_10006A178(v16, v105);
      return 0;
    }

    v21 = ~v19;
    v22 = v15 >> 62;
    v23 = !v16 && v15 == 0xC000000000000000;
    v24 = !v23;
    v100 = v24;
    v25 = __OFSUB__(HIDWORD(v16), v16);
    v97 = v25;
    v96 = v21;
    v94 = (v16 >> 32) - v16;
    v95 = v16 >> 32;
LABEL_27:
    v26 = (*(v2 + 48) + 32 * v20);
    v27 = *v26;
    v28 = v26[1];
    v30 = v26[2];
    v29 = v26[3];
    v31 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      if (v30)
      {
        v32 = 0;
      }

      else
      {
        v32 = v29 == 0xC000000000000000;
      }

      v34 = !v32 || v22 < 3;
      if (((v34 | v100) & 1) == 0)
      {
        sub_10006A178(v88, v89);
        v80 = 0;
        v81 = 0xC000000000000000;
LABEL_154:
        sub_10006A178(v80, v81);
        v7 = v85;
        a1 = v86;
        v6 = v87;
        continue;
      }

LABEL_49:
      v35 = 0;
      if (v22 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_49;
      }

      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v38)
      {
        goto LABEL_163;
      }

      if (v22 <= 1)
      {
        goto LABEL_46;
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_162;
      }

      v35 = v35;
      if (v22 <= 1)
      {
LABEL_46:
        v39 = BYTE6(v105);
        if (v22)
        {
          v39 = HIDWORD(v16) - v16;
          if (v97)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v35 = BYTE6(v29);
      if (v22 <= 1)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    if (v22 != 2)
    {
      if (!v35)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v41 = *(v16 + 16);
    v40 = *(v16 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      goto LABEL_160;
    }

LABEL_52:
    if (v35 != v39)
    {
      goto LABEL_26;
    }

    if (v35 < 1)
    {
      goto LABEL_153;
    }

    if (v31 <= 1)
    {
      break;
    }

    if (v31 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (!v22)
      {
LABEL_82:
        __s2 = v16;
        v107 = v105;
        v108 = WORD2(v105);
        if (!memcmp(__s1, &__s2, BYTE6(v105)))
        {
          goto LABEL_153;
        }

        goto LABEL_26;
      }

      v101 = v27;
      v103 = v28;
      if (v22 == 2)
      {
        v54 = *(v16 + 16);
        v92 = *(v16 + 24);
        sub_100069E2C(v27, v28);
        sub_100069E2C(v30, v29);
        v55 = __DataStorage._bytes.getter();
        if (v55)
        {
          v56 = __DataStorage._offset.getter();
          if (__OFSUB__(v54, v56))
          {
            goto LABEL_178;
          }

          v55 += v54 - v56;
        }

        v21 = v96;
        v38 = __OFSUB__(v92, v54);
        v57 = &v92[-v54];
        if (v38)
        {
          goto LABEL_169;
        }

        result = __DataStorage._length.getter();
        if (!v55)
        {
          goto LABEL_190;
        }

        goto LABEL_113;
      }

      if (v95 < v16)
      {
        goto LABEL_167;
      }

      sub_100069E2C(v27, v28);
      sub_100069E2C(v30, v29);
      v68 = __DataStorage._bytes.getter();
      if (!v68)
      {
        goto LABEL_187;
      }

      v69 = v68;
      v70 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v70))
      {
        goto LABEL_173;
      }

      v45 = (v16 - v70 + v69);
      result = __DataStorage._length.getter();
      if (!v45)
      {
        goto LABEL_188;
      }

      goto LABEL_121;
    }

    v47 = *(v30 + 16);
    v102 = v27;
    v104 = v28;
    sub_100069E2C(v27, v28);
    sub_100069E2C(v30, v29);
    v48 = __DataStorage._bytes.getter();
    if (v48)
    {
      v49 = v48;
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_165;
      }

      v90 = (v47 - v50 + v49);
    }

    else
    {
      v90 = 0;
    }

    __DataStorage._length.getter();
    v8 = v98;
    v2 = a2;
    if (v22 != 2)
    {
      if (v22 == 1)
      {
        if (v95 < v16)
        {
          goto LABEL_170;
        }

        v58 = __DataStorage._bytes.getter();
        if (v58)
        {
          v59 = __DataStorage._offset.getter();
          if (__OFSUB__(v16, v59))
          {
            goto LABEL_181;
          }

          v58 += v16 - v59;
        }

        v21 = v96;
        v60 = __DataStorage._length.getter();
        v61 = (v16 >> 32) - v16;
        if (v60 < v94)
        {
          v61 = v60;
        }

        result = v90;
        if (!v90)
        {
          goto LABEL_198;
        }

        if (!v58)
        {
          goto LABEL_197;
        }

        goto LABEL_147;
      }

      result = v90;
      *__s1 = v16;
      *&__s1[8] = v105;
      *&__s1[12] = WORD2(v105);
      if (!v90)
      {
        goto LABEL_184;
      }

LABEL_152:
      v79 = memcmp(result, __s1, BYTE6(v105));
      sub_10006A178(v102, v104);
      sub_10006A178(v30, v29);
      if (!v79)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v73 = *(v16 + 16);
    v82 = *(v16 + 24);
    v58 = __DataStorage._bytes.getter();
    if (v58)
    {
      v74 = __DataStorage._offset.getter();
      if (__OFSUB__(v73, v74))
      {
        goto LABEL_179;
      }

      v58 += v73 - v74;
    }

    if (__OFSUB__(v82, v73))
    {
      goto LABEL_174;
    }

    v75 = __DataStorage._length.getter();
    if (v75 >= v82 - v73)
    {
      v61 = v82 - v73;
    }

    else
    {
      v61 = v75;
    }

    result = v90;
    v21 = v96;
    if (!v90)
    {
      goto LABEL_194;
    }

    v2 = a2;
    if (!v58)
    {
      goto LABEL_193;
    }

LABEL_147:
    if (result != v58)
    {
      v67 = memcmp(result, v58, v61);
      sub_10006A178(v102, v104);
      sub_10006A178(v30, v29);
      goto LABEL_149;
    }

    sub_10006A178(v88, v89);
    sub_10006A178(v16, v105);
    sub_10006A178(v102, v104);
    sub_10006A178(v30, v29);
    v7 = v85;
    a1 = v86;
    v8 = v98;
    v6 = v87;
  }

  if (v31)
  {
    if (v30 > v30 >> 32)
    {
      goto LABEL_164;
    }

    v102 = v27;
    v104 = v28;
    sub_100069E2C(v27, v28);
    sub_100069E2C(v30, v29);
    v51 = __DataStorage._bytes.getter();
    if (v51)
    {
      v52 = v51;
      v53 = __DataStorage._offset.getter();
      if (__OFSUB__(v30, v53))
      {
        goto LABEL_166;
      }

      v91 = (v30 - v53 + v52);
    }

    else
    {
      v91 = 0;
    }

    __DataStorage._length.getter();
    v8 = v98;
    v2 = a2;
    if (v22 == 2)
    {
      v76 = *(v16 + 16);
      v83 = *(v16 + 24);
      v58 = __DataStorage._bytes.getter();
      if (v58)
      {
        v77 = __DataStorage._offset.getter();
        if (__OFSUB__(v76, v77))
        {
          goto LABEL_180;
        }

        v58 += v76 - v77;
      }

      if (__OFSUB__(v83, v76))
      {
        goto LABEL_176;
      }

      v78 = __DataStorage._length.getter();
      if (v78 >= v83 - v76)
      {
        v61 = v83 - v76;
      }

      else
      {
        v61 = v78;
      }

      result = v91;
      v21 = v96;
      if (!v91)
      {
        goto LABEL_196;
      }

      v2 = a2;
      if (!v58)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v22 != 1)
      {
        result = v91;
        *__s1 = v16;
        *&__s1[8] = v105;
        *&__s1[12] = WORD2(v105);
        if (!v91)
        {
          goto LABEL_189;
        }

        goto LABEL_152;
      }

      if (v95 < v16)
      {
        goto LABEL_175;
      }

      v58 = __DataStorage._bytes.getter();
      if (v58)
      {
        v62 = __DataStorage._offset.getter();
        if (__OFSUB__(v16, v62))
        {
          goto LABEL_182;
        }

        v58 += v16 - v62;
      }

      v21 = v96;
      v63 = __DataStorage._length.getter();
      v61 = (v16 >> 32) - v16;
      if (v63 < v94)
      {
        v61 = v63;
      }

      result = v91;
      if (!v91)
      {
        goto LABEL_192;
      }

      if (!v58)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_147;
  }

  *__s1 = v30;
  *&__s1[8] = v29;
  __s1[10] = BYTE2(v29);
  __s1[11] = BYTE3(v29);
  __s1[12] = BYTE4(v29);
  __s1[13] = BYTE5(v29);
  if (!v22)
  {
    goto LABEL_82;
  }

  v101 = v27;
  v103 = v28;
  if (v22 != 1)
  {
    v64 = *(v16 + 16);
    v93 = *(v16 + 24);
    sub_100069E2C(v27, v28);
    sub_100069E2C(v30, v29);
    v55 = __DataStorage._bytes.getter();
    if (v55)
    {
      v65 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v65))
      {
        goto LABEL_177;
      }

      v55 += v64 - v65;
    }

    v21 = v96;
    v38 = __OFSUB__(v93, v64);
    v57 = &v93[-v64];
    if (v38)
    {
      goto LABEL_171;
    }

    result = __DataStorage._length.getter();
    if (!v55)
    {
      goto LABEL_186;
    }

LABEL_113:
    if (result >= v57)
    {
      v66 = v57;
    }

    else
    {
      v66 = result;
    }

    v67 = memcmp(__s1, v55, v66);
    sub_10006A178(v101, v103);
    sub_10006A178(v30, v29);
    v2 = a2;
LABEL_149:
    v8 = v98;
    if (!v67)
    {
      goto LABEL_153;
    }

    goto LABEL_26;
  }

  if (v95 < v16)
  {
    goto LABEL_168;
  }

  sub_100069E2C(v27, v28);
  sub_100069E2C(v30, v29);
  v42 = __DataStorage._bytes.getter();
  if (v42)
  {
    v43 = v42;
    v44 = __DataStorage._offset.getter();
    if (__OFSUB__(v16, v44))
    {
      goto LABEL_172;
    }

    v45 = (v16 - v44 + v43);
    result = __DataStorage._length.getter();
    if (!v45)
    {
      goto LABEL_185;
    }

LABEL_121:
    if (result >= v94)
    {
      v71 = (v16 >> 32) - v16;
    }

    else
    {
      v71 = result;
    }

    v72 = memcmp(__s1, v45, v71);
    sub_10006A178(v101, v103);
    sub_10006A178(v30, v29);
    v2 = a2;
    v21 = v96;
    if (!v72)
    {
LABEL_153:
      sub_10006A178(v88, v89);
      v80 = v16;
      v81 = v105;
      goto LABEL_154;
    }

LABEL_26:
    v20 = (v20 + 1) & v21;
    if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_27;
  }

  __DataStorage._length.getter();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  result = __DataStorage._length.getter();
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

uint64_t sub_1002254AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v35 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_10022D9C4(&unk_100507480, &type metadata accessor for UUID);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_10022D9C4(&qword_100502C18, &type metadata accessor for UUID);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}
uint64_t sub_1004DBC50()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v16 + 56), v7, &qword_10097A7F0, &unk_1007FB600);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100005508(v18, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_10000FF90(v0 + *(v16 + 60), v5, &qword_10097A7F0, &unk_1007FB600);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_1004DBF10()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v16 + 64), v7, &qword_10097A7F0, &unk_1007FB600);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100005508(v18, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_10000FF90(v0, v5, &qword_10097A7F0, &unk_1007FB600);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v20(v13, v5, v8);
  Date.timeIntervalSince(_:)();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v13, v8);
  v24(v15, v8);
  return v23;
}

uint64_t sub_1004DC1C0()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  sub_10000FF90(v0, v7, &qword_10097A7F0, &unk_1007FB600);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    v17 = v7;
LABEL_5:
    sub_100005508(v17, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v18 = v7;
  v19 = *(v9 + 32);
  v19(v15, v18, v8);
  v20 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v20 + 68), v5, &qword_10097A7F0, &unk_1007FB600);
  if (v16(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v17 = v5;
    goto LABEL_5;
  }

  v19(v13, v5, v8);
  Date.timeIntervalSince(_:)();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v13, v8);
  v24(v15, v8);
  return v23;
}

uint64_t sub_1004DC470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_1004D6D00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1004DC544(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v292 = &v286 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v294 = &v286 - v9;
  v10 = __chkstk_darwin(v8);
  v289 = &v286 - v11;
  __chkstk_darwin(v10);
  v291 = &v286 - v12;
  v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v295 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v286 - v17;
  v19 = sub_10028088C(&qword_100980B08, &qword_100810330);
  v302 = *(v19 - 1);
  v303 = v19;
  v20 = v302[8];
  __chkstk_darwin(v19);
  v22 = &v286 - v21;
  v23 = sub_10028088C(&qword_100980B10, &unk_1008070F0);
  v297 = *(v23 - 8);
  v298 = v23;
  v24 = *(v297 + 64);
  __chkstk_darwin(v23);
  v296 = &v286 - v25;
  v26 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v286 - v28;
  v30 = type metadata accessor for UUID();
  v307 = *(v30 - 8);
  v308 = v30;
  v31 = *(v307 + 64);
  v32 = __chkstk_darwin(v30);
  v290 = &v286 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v306 = &v286 - v34;
  v35 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v304 = &v286 - v37;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = (&v286 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325[3] = type metadata accessor for SDAuthenticationPairingLockSession();
  v325[4] = &off_1008E5AB0;
  v325[0] = a1;
  v43 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
  *v42 = v43;
  (*(v39 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v38);
  v309 = a1;
  v44 = v43;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v42, v38);
  if (a1)
  {
    if (qword_100973C48 == -1)
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
  v45 = type metadata accessor for Logger();
  v46 = sub_10000C4AC(v45, qword_1009895D8);
  sub_1002A9938(v325, v322);
  v305 = v46;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v301 = v29;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v315 = v51;
    *v50 = 136315138;
    sub_1002A9938(v322, &v318);
    sub_10028088C(&unk_10097F090, &unk_100804740);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    sub_10000C60C(v322);
    v55 = sub_10000C4E4(v52, v54, &v315);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v47, v48, "Session did complete: %s", v50, 0xCu);
    sub_10000C60C(v51);
  }

  else
  {

    sub_10000C60C(v322);
  }

  v56 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  v57 = v309;
  swift_beginAccess();
  sub_10000FF90(v57 + v56, v322, &qword_100982080, &unk_1007FDD30);
  v58 = v323;
  if (v323)
  {
    v59 = v324;
    sub_10002CDC0(v322, v323);
    v60 = (*(v59 + 8))(v58, v59);
    v62 = v61;
    sub_10000C60C(v322);
    if (v62)
    {
      if (*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager])
      {
        v63 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager];

        sub_100344E30(v60, v62);
      }
    }
  }

  else
  {
    sub_100005508(v322, &qword_100982080, &unk_1007FDD30);
  }

  sub_1002A9938(v325, &v318);
  sub_10028088C(&unk_10097F090, &unk_100804740);
  sub_10028088C(&qword_100974FA0, &unk_100804C70);
  v64 = swift_dynamicCast();
  v300 = v56;
  if (v64)
  {
    v65 = sub_1000121F8(&v315, v322);
    __chkstk_darwin(v65);
    *(&v286 - 2) = v322;
    v66 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
    swift_beginAccess();
    v67 = sub_10045D8D4(sub_1004E5A9C, (&v286 - 4));
    v68 = *(*&a2[v66] + 16);
    v69 = v308;
    if (v68 >= v67)
    {
      sub_10057ED58(v67, v68);
      swift_endAccess();
      v70 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
      v71 = swift_beginAccess();
      v72 = *&a2[v70];
      __chkstk_darwin(v71);
      *(&v286 - 2) = v322;

      v73 = sub_1002D8B74(sub_1004E5A9C, (&v286 - 4), v72);
      v75 = v74;
      v299 = 0;

      if (v75)
      {
LABEL_22:
        v82 = type metadata accessor for TaskPriority();
        v83 = v304;
        (*(*(v82 - 8) + 56))(v304, 1, 1, v82);
        sub_1002A9938(v325, &v318);
        v84 = swift_allocObject();
        v84[2] = 0;
        v84[3] = 0;
        v84[4] = a2;
        sub_1000121F8(&v318, (v84 + 5));
        a2;
        sub_1002B3098(0, 0, v83, &unk_100807160, v84);

        v86 = v323;
        v85 = v324;
        sub_10002CDC0(v322, v323);
        (*(*(v85 + 8) + 88))(v86);
        v88 = v323;
        v87 = v324;
        sub_10002CDC0(v322, v323);
        v89 = v306;
        (*(*(v87 + 8) + 32))(v88);
        sub_100695FD8(v89, 0, 0);
        (*(v307 + 8))(v89, v69);
        sub_10000C60C(v322);
        v90 = v309;
        goto LABEL_90;
      }

      if ((v73 & 0x8000000000000000) == 0)
      {
        v76 = *&a2[v70];
        if (v73 < *(v76 + 16))
        {
          sub_1002A9938(v76 + 40 * v73 + 32, &v318);
          v78 = v320;
          v77 = v321;
          sub_10002CDC0(&v318, v320);
          if ((*(*(*(v77 + 8) + 8) + 40))(v78) == 1)
          {
            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&_mh_execute_header, v79, v80, "Posting authenticated notification", v81, 2u);
            }

            sub_1006D1230();
          }

          swift_beginAccess();
          sub_1002CD1F4(v73, &v315);
          swift_endAccess();
          sub_10000C60C(&v315);
          sub_10000C60C(&v318);
          goto LABEL_22;
        }

        goto LABEL_110;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v317 = 0;
  v315 = 0u;
  v316 = 0u;
  sub_100005508(&v315, &qword_100980B18, &unk_100807100);
  sub_1002A9938(v325, &v318);
  sub_10028088C(&qword_10097C6B0, &unk_100804750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v317 = 0;
    v315 = 0u;
    v316 = 0u;
    sub_100005508(&v315, &qword_100980B20, &qword_100807110);
    v299 = 0;
    v69 = v308;
    v90 = v309;
    goto LABEL_90;
  }

  v91 = sub_1000121F8(&v315, v322);
  __chkstk_darwin(v91);
  *(&v286 - 2) = v322;
  v92 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v93 = sub_10045D5D4(sub_1004E5A9C, (&v286 - 4));
  v94 = *(*&a2[v92] + 16);
  if (v94 < v93)
  {
    goto LABEL_107;
  }

  sub_10057EF98(v93, v94);
  v95 = swift_endAccess();
  __chkstk_darwin(v95);
  *(&v286 - 2) = v322;
  v96 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v97 = sub_10045D628(sub_1004E5A9C, (&v286 - 4));
  v98 = *(*&a2[v96] + 16);
  if (v98 < v97)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v287 = v18;
  v299 = 0;
  sub_10057EE90(v97, v98);
  swift_endAccess();
  v100 = v323;
  v99 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v99 + 8) + 88))(v100);
  v101 = type metadata accessor for TaskPriority();
  v102 = v304;
  (*(*(v101 - 8) + 56))(v304, 1, 1, v101);
  sub_1002A9938(v325, &v318);
  v103 = swift_allocObject();
  v103[2] = 0;
  v103[3] = 0;
  v103[4] = a2;
  sub_1000121F8(&v318, (v103 + 5));
  v104 = a2;
  sub_1002B3098(0, 0, v102, &unk_100807158, v103);

  v106 = v323;
  v105 = v324;
  sub_10002CDC0(v322, v323);
  if ((*(*(v105 + 8) + 40))(v106) == 5)
  {
    sub_10069579C();
  }

  (v302[2])(v22, &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedContinuation], v303);
  v90 = v309;
  v304 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v107 = *(v309 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v109 = v323;
  v108 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v108 + 8) + 64))(&v318, v109);
  v110 = v320;
  if (!v320)
  {
    sub_100005508(&v318, &qword_100982080, &unk_1007FDD30);
LABEL_33:
    v114 = 0xE90000000000003ELL;
    v112 = 0x676E697373696D3CLL;

    goto LABEL_34;
  }

  v111 = v321;
  sub_10002CDC0(&v318, v320);
  v112 = (*(v111 + 8))(v110, v111);
  v114 = v113;
  sub_10000C60C(&v318);
  if (!v114)
  {
    goto LABEL_33;
  }

LABEL_34:
  *&v318 = v107;
  *(&v318 + 1) = v112;
  v319 = v114;
  LOBYTE(v320) = 0;
  v115 = v296;
  v116 = v303;
  AsyncStream.Continuation.yield(_:)();
  (v302[1])(v22, v116);
  (*(v297 + 8))(v115, v298);
  v118 = v323;
  v117 = v324;
  sub_10002CDC0(v322, v323);
  v119 = (*(*(v117 + 8) + 40))(v118);
  v69 = v308;
  v288 = v104;
  if (v119 != 8)
  {
    v121 = v323;
    v120 = v324;
    sub_10002CDC0(v322, v323);
    if ((*(*(v120 + 8) + 40))(v121) != 5)
    {
LABEL_60:
      v181 = v323;
      v180 = v324;
      sub_10002CDC0(v322, v323);
      if ((*(*(v180 + 8) + 40))(v181) == 8)
      {
        if ((sub_1004FE8E0(*&v304[v90]) & 1) == 0)
        {
          v182 = v323;
          v183 = v324;
          sub_10002CDC0(v322, v323);
          if (((*(v183 + 16))(v182, v183) & 1) != 0 || (v184 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI, swift_beginAccess(), v185 = v291, sub_10000FF90(&v104[v184], v291, &unk_100976120, &qword_1007F9260), LODWORD(v184) = (*(v307 + 48))(v185, 1, v69), sub_100005508(v185, &unk_100976120, &qword_1007F9260), v184 != 1))
          {
            sub_1002A9938(v322, &v318);
            v192 = v104;
            v193 = Logger.logObject.getter();
            v194 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v193, v194))
            {
              v195 = swift_slowAlloc();
              *v195 = 67109376;
              v196 = v320;
              v197 = v321;
              sub_10002CDC0(&v318, v320);
              v198 = (*(v197 + 16))(v196, v197) & 1;
              sub_10000C60C(&v318);
              *(v195 + 4) = v198;
              *(v195 + 8) = 1024;
              v199 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
              swift_beginAccess();
              v200 = a2;
              v201 = v90;
              v202 = v289;
              sub_10000FF90(&v192[v199], v289, &unk_100976120, &qword_1007F9260);
              v203 = v307;
              LODWORD(v199) = (*(v307 + 48))(v202, 1, v308) != 1;
              v204 = v202;
              v90 = v201;
              a2 = v200;
              sub_100005508(v204, &unk_100976120, &qword_1007F9260);
              *(v195 + 10) = v199;

              _os_log_impl(&_mh_execute_header, v193, v194, "Request arming UI as requested by Mac (%{BOOL}d) or ongoing unlock session during registration (%{BOOL}d)", v195, 0xEu);
              v69 = v308;
            }

            else
            {
              sub_10000C60C(&v318);

              v203 = v307;
            }

            sub_1006D05EC();
            v205 = *(v203 + 56);
            v206 = v294;
            v205(v294, 1, 1, v69);
            v207 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            sub_10000C788(v206, &v192[v207], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            goto LABEL_87;
          }
        }

        if (sub_1004FE8E0(*&v304[v90]))
        {
          v186 = v104;
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            *&v318 = v190;
            *v189 = 67109378;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              v191 = 1;
            }

            else
            {
              v191 = 0;
            }

            *(v189 + 4) = v191;

            *(v189 + 8) = 2080;
            v209 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            v210 = v307;
            v211 = v308;
            if ((*(v307 + 48))(&v186[v209], 1, v308))
            {
              v212 = 7104878;
              v213 = 0xE300000000000000;
            }

            else
            {
              v214 = *(v210 + 16);
              v304 = v190;
              v215 = v306;
              v214(v306, &v186[v209], v211);
              v303 = UUID.uuidString.getter();
              v213 = v216;
              v217 = v215;
              v190 = v304;
              (*(v210 + 8))(v217, v211);
              v212 = v303;
            }

            v218 = sub_10000C4E4(v212, v213, &v318);

            *(v189 + 10) = v218;
            _os_log_impl(&_mh_execute_header, v187, v188, "Calling back to delegate (exists: %{BOOL}d), for sessionID: %s", v189, 0x12u);
            sub_10000C60C(v190);

            v90 = v309;
            v208 = v292;
          }

          else
          {

            v208 = v292;
          }

          v219 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
          swift_beginAccess();
          sub_10000FF90(&v186[v219], v208, &unk_100976120, &qword_1007F9260);
          v220 = v307;
          v69 = v308;
          v221 = *(v307 + 48);
          if ((v221)(v208, 1, v308) == 1)
          {
            sub_100005508(v208, &unk_100976120, &qword_1007F9260);
          }

          else
          {
            v304 = v221;
            v222 = v290;
            (*(v220 + 32))(v290, v208, v69);
            v223 = v294;
            (*(v220 + 56))(v294, 1, 1, v69);
            swift_beginAccess();
            sub_10000C788(v223, &v186[v219], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v224 = sub_100010F88(11, 0, 0xE000000000000000);
              sub_100695FD8(v222, v224, v225);
              swift_unknownObjectRelease();

              (*(v220 + 8))(v222, v69);
            }

            else
            {
              v226 = v186;
              v227 = Logger.logObject.getter();
              v228 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v227, v228))
              {
                LODWORD(v303) = v228;
                v229 = swift_slowAlloc();
                v302 = swift_slowAlloc();
                *&v315 = v302;
                *v229 = 67109378;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  swift_unknownObjectRelease();
                  v230 = 1;
                }

                else
                {
                  v230 = 0;
                }

                v274 = v227;
                *(v229 + 4) = v230;

                *(v229 + 8) = 2080;
                v275 = v308;
                v276 = (v304)(&v186[v219], 1, v308);
                v90 = v309;
                if (v276)
                {
                  v277 = 7104878;
                  v278 = 0xE300000000000000;
                  v279 = v307;
                }

                else
                {
                  v280 = v306;
                  v281 = &v186[v219];
                  v279 = v307;
                  (*(v307 + 16))(v306, v281, v275);
                  v282 = UUID.uuidString.getter();
                  v278 = v283;
                  (*(v279 + 8))(v280, v275);
                  v277 = v282;
                }

                v284 = v290;
                v285 = sub_10000C4E4(v277, v278, &v315);

                *(v229 + 10) = v285;
                _os_log_impl(&_mh_execute_header, v274, v303, "Could not call back to delegate (exists: %{BOOL}d), for sessionID: %s", v229, 0x12u);
                sub_10000C60C(v302);

                (*(v279 + 8))(v284, v275);
                v69 = v275;
                goto LABEL_87;
              }

              (*(v307 + 8))(v290, v69);
            }

            v90 = v309;
          }
        }
      }

LABEL_87:
      v232 = v323;
      v231 = v324;
      sub_10002CDC0(v322, v323);
      if ((*(*(v231 + 8) + 40))(v232) != 8)
      {
        v234 = v323;
        v233 = v324;
        sub_10002CDC0(v322, v323);
        v235 = v306;
        (*(*(v233 + 8) + 32))(v234);
        sub_100695FD8(v235, 0, 0);
        (*(v307 + 8))(v235, v69);
      }

      sub_10000C60C(v322);
LABEL_90:
      v236 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
      v237 = *(v90 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
      v238 = SFDeviceClassCodeGet();
      v239 = sub_100027628(v237);
      v240 = sub_10000EF9C(8u, v239);

      if (v240)
      {
        if (!SFDeviceIsRealityDevice())
        {
LABEL_92:
          sub_1002A9938(v325, v322);
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            v308 = v243;
            v309 = swift_slowAlloc();
            v314 = v309;
            *v243 = 136315138;
            v244 = sub_10002CDC0(v322, v323);
            v245 = v69;
            v246 = v306;
            v247 = v307;
            (*(v307 + 16))(v306, *v244 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v245);
            sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
            v248 = v90;
            v249 = dispatch thunk of CustomStringConvertible.description.getter();
            v251 = v250;
            (*(v247 + 8))(v246, v245);
            sub_10000C60C(v322);
            v252 = v249;
            v90 = v248;
            v253 = sub_10000C4E4(v252, v251, &v314);

            v254 = v308;
            *(v308 + 1) = v253;
            _os_log_impl(&_mh_execute_header, v241, v242, "Removing session %s record", v254, 0xCu);
            sub_10000C60C(v309);
          }

          else
          {

            sub_10000C60C(v322);
          }

          v271 = v301;
          v272 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
          swift_beginAccess();
          sub_1000124A0(v90 + v272);
          swift_endAccess();
          v269 = &qword_100976308;
          v270 = &unk_1007F94E0;
          v268 = v271;
          goto LABEL_98;
        }
      }

      else
      {
        v255 = sub_100027628(v237);
        v256 = sub_10000EF9C(v238, v255);

        if (!v256)
        {
          goto LABEL_92;
        }
      }

      v257 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v258 = sub_1004FE08C(*(v90 + v236));
      sub_10000FF90(v90 + v300, v322, &qword_100982080, &unk_1007FDD30);
      v259 = sub_1005CCA8C(v258, v322);
      v261 = v260;
      v262 = swift_getObjectType();
      v263 = (*(v261 + 56))(v262, v261);
      v264 = *(v257 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v265 = __chkstk_darwin(v263);
      *(&v286 - 4) = v259;
      *(&v286 - 3) = v261;
      *(&v286 - 2) = v322;
      *(&v286 - 1) = v257;
      __chkstk_darwin(v265);
      *(&v286 - 2) = sub_100465400;
      *(&v286 - 1) = v266;
      os_unfair_lock_lock(v264 + 4);
      sub_1003206A8(v267);
      os_unfair_lock_unlock(v264 + 4);
      swift_unknownObjectRelease();
      v268 = v322;
      v269 = &qword_100982080;
      v270 = &unk_1007FDD30;
LABEL_98:
      sub_100005508(v268, v269, v270);
      return sub_10000C60C(v325);
    }
  }

  v123 = v323;
  v122 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v122 + 8) + 64))(&v315, v123);
  if (!*(&v316 + 1))
  {
    sub_100005508(&v315, &qword_100982080, &unk_1007FDD30);
    sub_1002A9938(v325, &v318);
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      *&v315 = v303;
      *v154 = 136315138;
      v155 = sub_10002CDC0(&v318, v320);
      v156 = v307;
      v157 = v90;
      v158 = v306;
      (*(v307 + 16))(v306, *v155 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v308);
      sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = v160;
      v162 = v158;
      v90 = v157;
      (*(v156 + 8))(v162, v308);
      sub_10000C60C(&v318);
      v163 = sub_10000C4E4(v159, v161, &v315);

      *(v154 + 4) = v163;
      _os_log_impl(&_mh_execute_header, v152, v153, "No peer device for session: %s", v154, 0xCu);
      sub_10000C60C(v303);
      v69 = v308;

      v104 = v288;

      goto LABEL_58;
    }

LABEL_57:
    sub_10000C60C(&v318);
LABEL_58:
    v174 = v323;
    v173 = v324;
    sub_10002CDC0(v322, v323);
    if ((*(*(v173 + 8) + 40))(v174) == 5)
    {
      v175 = v295;
      Date.init()();
      v176 = type metadata accessor for Date();
      (*(*(v176 - 8) + 56))(v175, 0, 1, v176);
      v177 = &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager];
      swift_beginAccess();
      v178 = *(v177 + 24);
      v179 = *(v177 + 32);
      sub_10002F5B4(v177, v178);
      (*(v179 + 16))(v175, v178, v179);
      swift_endAccess();
    }

    goto LABEL_60;
  }

  sub_1000121F8(&v315, &v318);
  v124 = v320;
  v125 = v321;
  sub_10002CDC0(&v318, v320);
  v126 = (*(v125 + 8))(v124, v125);
  if (!v127)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_1006D23E0(v126, v127);

  v128 = v320;
  v129 = v321;
  sub_10002CDC0(&v318, v320);
  v130 = (*(v129 + 8))(v128, v129);
  if (!v131)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v132 = v130;
  v133 = v131;
  swift_beginAccess();
  v134 = sub_10056CE1C(&v315, v132, v133);
  v136 = v135;
  v137 = type metadata accessor for RegistrationState(0);
  if (!(*(*(v137 - 8) + 48))(v136, 1, v137))
  {
    *(v136 + *(v137 + 20)) = 0;
  }

  (v134)(&v315, 0);
  swift_endAccess();

  sub_1002A9938(&v318, &v315);
  sub_1002A9938(&v318, v310);
  v104 = v288;
  v138 = v288;
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v139, v140))
  {

    sub_10000C60C(v310);
    sub_10000C60C(&v315);
    v90 = v309;
    goto LABEL_57;
  }

  v141 = swift_slowAlloc();
  v303 = swift_slowAlloc();
  v313[0] = v303;
  *v141 = 136315394;
  v143 = *(&v316 + 1);
  v142 = v317;
  sub_10002CDC0(&v315, *(&v316 + 1));
  v144 = (*(v142 + 8))(v143, v142);
  v146 = v145;

  if (v146)
  {
    v147 = v287;
    sub_10069F7E4(v144, v146, v287);

    v148 = type metadata accessor for Date();
    v149 = *(v148 - 8);
    if ((*(v149 + 48))(v147, 1, v148) == 1)
    {
      v150 = 0x676E697373696D3CLL;
      sub_100005508(v147, &qword_10097A7F0, &unk_1007FB600);
      v151 = 0xE90000000000003ELL;
    }

    else
    {
      v150 = Date.description.getter();
      v151 = v164;
      (*(v149 + 8))(v147, v148);
    }

    v90 = v309;
    sub_10000C60C(&v315);
    v165 = sub_10000C4E4(v150, v151, v313);

    *(v141 + 4) = v165;
    *(v141 + 12) = 2080;
    v166 = v311;
    v167 = v312;
    sub_10002CDC0(v310, v311);
    v168 = (*(v167 + 8))(v166, v167);
    if (v169)
    {
      v170 = v168;
    }

    else
    {
      v170 = 0xD000000000000015;
    }

    if (v169)
    {
      v171 = v169;
    }

    else
    {
      v171 = 0x8000000100789F30;
    }

    sub_10000C60C(v310);
    v172 = sub_10000C4E4(v170, v171, v313);

    *(v141 + 14) = v172;
    _os_log_impl(&_mh_execute_header, v139, v140, "Recording last registration date as %s for device: %s", v141, 0x16u);
    swift_arrayDestroy();

    v69 = v308;
    v104 = v288;
    goto LABEL_57;
  }

LABEL_113:
  sub_10000C60C(v310);
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1004DE8AC(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v292 = &v286 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v294 = &v286 - v9;
  v10 = __chkstk_darwin(v8);
  v289 = &v286 - v11;
  __chkstk_darwin(v10);
  v291 = &v286 - v12;
  v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v295 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v286 - v17;
  v19 = sub_10028088C(&qword_100980B08, &qword_100810330);
  v302 = *(v19 - 1);
  v303 = v19;
  v20 = v302[8];
  __chkstk_darwin(v19);
  v22 = &v286 - v21;
  v23 = sub_10028088C(&qword_100980B10, &unk_1008070F0);
  v297 = *(v23 - 8);
  v298 = v23;
  v24 = *(v297 + 64);
  __chkstk_darwin(v23);
  v296 = &v286 - v25;
  v26 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v286 - v28;
  v30 = type metadata accessor for UUID();
  v307 = *(v30 - 8);
  v308 = v30;
  v31 = *(v307 + 64);
  v32 = __chkstk_darwin(v30);
  v290 = &v286 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v306 = &v286 - v34;
  v35 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v304 = &v286 - v37;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = (&v286 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325[3] = type metadata accessor for SDAuthenticationKeySession();
  v325[4] = &off_1008E5AB0;
  v325[0] = a1;
  v43 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
  *v42 = v43;
  (*(v39 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v38);
  v309 = a1;
  v44 = v43;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v42, v38);
  if (a1)
  {
    if (qword_100973C48 == -1)
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
  v45 = type metadata accessor for Logger();
  v46 = sub_10000C4AC(v45, qword_1009895D8);
  sub_1002A9938(v325, v322);
  v305 = v46;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v301 = v29;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v315 = v51;
    *v50 = 136315138;
    sub_1002A9938(v322, &v318);
    sub_10028088C(&unk_10097F090, &unk_100804740);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    sub_10000C60C(v322);
    v55 = sub_10000C4E4(v52, v54, &v315);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v47, v48, "Session did complete: %s", v50, 0xCu);
    sub_10000C60C(v51);
  }

  else
  {

    sub_10000C60C(v322);
  }

  v56 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  v57 = v309;
  swift_beginAccess();
  sub_10000FF90(v57 + v56, v322, &qword_100982080, &unk_1007FDD30);
  v58 = v323;
  if (v323)
  {
    v59 = v324;
    sub_10002CDC0(v322, v323);
    v60 = (*(v59 + 8))(v58, v59);
    v62 = v61;
    sub_10000C60C(v322);
    if (v62)
    {
      if (*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager])
      {
        v63 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager];

        sub_100344E30(v60, v62);
      }
    }
  }

  else
  {
    sub_100005508(v322, &qword_100982080, &unk_1007FDD30);
  }

  sub_1002A9938(v325, &v318);
  sub_10028088C(&unk_10097F090, &unk_100804740);
  sub_10028088C(&qword_100974FA0, &unk_100804C70);
  v64 = swift_dynamicCast();
  v300 = v56;
  if (v64)
  {
    v65 = sub_1000121F8(&v315, v322);
    __chkstk_darwin(v65);
    *(&v286 - 2) = v322;
    v66 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
    swift_beginAccess();
    v67 = sub_10045D8D4(sub_1004E5A9C, (&v286 - 4));
    v68 = *(*&a2[v66] + 16);
    v69 = v308;
    if (v68 >= v67)
    {
      sub_10057ED58(v67, v68);
      swift_endAccess();
      v70 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
      v71 = swift_beginAccess();
      v72 = *&a2[v70];
      __chkstk_darwin(v71);
      *(&v286 - 2) = v322;

      v73 = sub_1002D8B74(sub_1004E5A9C, (&v286 - 4), v72);
      v75 = v74;
      v299 = 0;

      if (v75)
      {
LABEL_22:
        v82 = type metadata accessor for TaskPriority();
        v83 = v304;
        (*(*(v82 - 8) + 56))(v304, 1, 1, v82);
        sub_1002A9938(v325, &v318);
        v84 = swift_allocObject();
        v84[2] = 0;
        v84[3] = 0;
        v84[4] = a2;
        sub_1000121F8(&v318, (v84 + 5));
        a2;
        sub_1002B3098(0, 0, v83, &unk_100807170, v84);

        v86 = v323;
        v85 = v324;
        sub_10002CDC0(v322, v323);
        (*(*(v85 + 8) + 88))(v86);
        v88 = v323;
        v87 = v324;
        sub_10002CDC0(v322, v323);
        v89 = v306;
        (*(*(v87 + 8) + 32))(v88);
        sub_100695FD8(v89, 0, 0);
        (*(v307 + 8))(v89, v69);
        sub_10000C60C(v322);
        v90 = v309;
        goto LABEL_90;
      }

      if ((v73 & 0x8000000000000000) == 0)
      {
        v76 = *&a2[v70];
        if (v73 < *(v76 + 16))
        {
          sub_1002A9938(v76 + 40 * v73 + 32, &v318);
          v78 = v320;
          v77 = v321;
          sub_10002CDC0(&v318, v320);
          if ((*(*(*(v77 + 8) + 8) + 40))(v78) == 1)
          {
            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&_mh_execute_header, v79, v80, "Posting authenticated notification", v81, 2u);
            }

            sub_1006D1230();
          }

          swift_beginAccess();
          sub_1002CD1F4(v73, &v315);
          swift_endAccess();
          sub_10000C60C(&v315);
          sub_10000C60C(&v318);
          goto LABEL_22;
        }

        goto LABEL_110;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v317 = 0;
  v315 = 0u;
  v316 = 0u;
  sub_100005508(&v315, &qword_100980B18, &unk_100807100);
  sub_1002A9938(v325, &v318);
  sub_10028088C(&qword_10097C6B0, &unk_100804750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v317 = 0;
    v315 = 0u;
    v316 = 0u;
    sub_100005508(&v315, &qword_100980B20, &qword_100807110);
    v299 = 0;
    v69 = v308;
    v90 = v309;
    goto LABEL_90;
  }

  v91 = sub_1000121F8(&v315, v322);
  __chkstk_darwin(v91);
  *(&v286 - 2) = v322;
  v92 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v93 = sub_10045D5D4(sub_1004E5A9C, (&v286 - 4));
  v94 = *(*&a2[v92] + 16);
  if (v94 < v93)
  {
    goto LABEL_107;
  }

  sub_10057EF98(v93, v94);
  v95 = swift_endAccess();
  __chkstk_darwin(v95);
  *(&v286 - 2) = v322;
  v96 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v97 = sub_10045D628(sub_1004E5A9C, (&v286 - 4));
  v98 = *(*&a2[v96] + 16);
  if (v98 < v97)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v287 = v18;
  v299 = 0;
  sub_10057EE90(v97, v98);
  swift_endAccess();
  v100 = v323;
  v99 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v99 + 8) + 88))(v100);
  v101 = type metadata accessor for TaskPriority();
  v102 = v304;
  (*(*(v101 - 8) + 56))(v304, 1, 1, v101);
  sub_1002A9938(v325, &v318);
  v103 = swift_allocObject();
  v103[2] = 0;
  v103[3] = 0;
  v103[4] = a2;
  sub_1000121F8(&v318, (v103 + 5));
  v104 = a2;
  sub_1002B3098(0, 0, v102, &unk_100807168, v103);

  v106 = v323;
  v105 = v324;
  sub_10002CDC0(v322, v323);
  if ((*(*(v105 + 8) + 40))(v106) == 5)
  {
    sub_10069579C();
  }

  (v302[2])(v22, &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedContinuation], v303);
  v90 = v309;
  v304 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v107 = *(v309 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v109 = v323;
  v108 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v108 + 8) + 64))(&v318, v109);
  v110 = v320;
  if (!v320)
  {
    sub_100005508(&v318, &qword_100982080, &unk_1007FDD30);
LABEL_33:
    v114 = 0xE90000000000003ELL;
    v112 = 0x676E697373696D3CLL;

    goto LABEL_34;
  }

  v111 = v321;
  sub_10002CDC0(&v318, v320);
  v112 = (*(v111 + 8))(v110, v111);
  v114 = v113;
  sub_10000C60C(&v318);
  if (!v114)
  {
    goto LABEL_33;
  }

LABEL_34:
  *&v318 = v107;
  *(&v318 + 1) = v112;
  v319 = v114;
  LOBYTE(v320) = 0;
  v115 = v296;
  v116 = v303;
  AsyncStream.Continuation.yield(_:)();
  (v302[1])(v22, v116);
  (*(v297 + 8))(v115, v298);
  v118 = v323;
  v117 = v324;
  sub_10002CDC0(v322, v323);
  v119 = (*(*(v117 + 8) + 40))(v118);
  v69 = v308;
  v288 = v104;
  if (v119 != 8)
  {
    v121 = v323;
    v120 = v324;
    sub_10002CDC0(v322, v323);
    if ((*(*(v120 + 8) + 40))(v121) != 5)
    {
LABEL_60:
      v181 = v323;
      v180 = v324;
      sub_10002CDC0(v322, v323);
      if ((*(*(v180 + 8) + 40))(v181) == 8)
      {
        if ((sub_1004FE8E0(*&v304[v90]) & 1) == 0)
        {
          v182 = v323;
          v183 = v324;
          sub_10002CDC0(v322, v323);
          if (((*(v183 + 16))(v182, v183) & 1) != 0 || (v184 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI, swift_beginAccess(), v185 = v291, sub_10000FF90(&v104[v184], v291, &unk_100976120, &qword_1007F9260), LODWORD(v184) = (*(v307 + 48))(v185, 1, v69), sub_100005508(v185, &unk_100976120, &qword_1007F9260), v184 != 1))
          {
            sub_1002A9938(v322, &v318);
            v192 = v104;
            v193 = Logger.logObject.getter();
            v194 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v193, v194))
            {
              v195 = swift_slowAlloc();
              *v195 = 67109376;
              v196 = v320;
              v197 = v321;
              sub_10002CDC0(&v318, v320);
              v198 = (*(v197 + 16))(v196, v197) & 1;
              sub_10000C60C(&v318);
              *(v195 + 4) = v198;
              *(v195 + 8) = 1024;
              v199 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
              swift_beginAccess();
              v200 = a2;
              v201 = v90;
              v202 = v289;
              sub_10000FF90(&v192[v199], v289, &unk_100976120, &qword_1007F9260);
              v203 = v307;
              LODWORD(v199) = (*(v307 + 48))(v202, 1, v308) != 1;
              v204 = v202;
              v90 = v201;
              a2 = v200;
              sub_100005508(v204, &unk_100976120, &qword_1007F9260);
              *(v195 + 10) = v199;

              _os_log_impl(&_mh_execute_header, v193, v194, "Request arming UI as requested by Mac (%{BOOL}d) or ongoing unlock session during registration (%{BOOL}d)", v195, 0xEu);
              v69 = v308;
            }

            else
            {
              sub_10000C60C(&v318);

              v203 = v307;
            }

            sub_1006D05EC();
            v205 = *(v203 + 56);
            v206 = v294;
            v205(v294, 1, 1, v69);
            v207 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            sub_10000C788(v206, &v192[v207], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            goto LABEL_87;
          }
        }

        if (sub_1004FE8E0(*&v304[v90]))
        {
          v186 = v104;
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            *&v318 = v190;
            *v189 = 67109378;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              v191 = 1;
            }

            else
            {
              v191 = 0;
            }

            *(v189 + 4) = v191;

            *(v189 + 8) = 2080;
            v209 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            v210 = v307;
            v211 = v308;
            if ((*(v307 + 48))(&v186[v209], 1, v308))
            {
              v212 = 7104878;
              v213 = 0xE300000000000000;
            }

            else
            {
              v214 = *(v210 + 16);
              v304 = v190;
              v215 = v306;
              v214(v306, &v186[v209], v211);
              v303 = UUID.uuidString.getter();
              v213 = v216;
              v217 = v215;
              v190 = v304;
              (*(v210 + 8))(v217, v211);
              v212 = v303;
            }

            v218 = sub_10000C4E4(v212, v213, &v318);

            *(v189 + 10) = v218;
            _os_log_impl(&_mh_execute_header, v187, v188, "Calling back to delegate (exists: %{BOOL}d), for sessionID: %s", v189, 0x12u);
            sub_10000C60C(v190);

            v90 = v309;
            v208 = v292;
          }

          else
          {

            v208 = v292;
          }

          v219 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
          swift_beginAccess();
          sub_10000FF90(&v186[v219], v208, &unk_100976120, &qword_1007F9260);
          v220 = v307;
          v69 = v308;
          v221 = *(v307 + 48);
          if ((v221)(v208, 1, v308) == 1)
          {
            sub_100005508(v208, &unk_100976120, &qword_1007F9260);
          }

          else
          {
            v304 = v221;
            v222 = v290;
            (*(v220 + 32))(v290, v208, v69);
            v223 = v294;
            (*(v220 + 56))(v294, 1, 1, v69);
            swift_beginAccess();
            sub_10000C788(v223, &v186[v219], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v224 = sub_100010F88(11, 0, 0xE000000000000000);
              sub_100695FD8(v222, v224, v225);
              swift_unknownObjectRelease();

              (*(v220 + 8))(v222, v69);
            }

            else
            {
              v226 = v186;
              v227 = Logger.logObject.getter();
              v228 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v227, v228))
              {
                LODWORD(v303) = v228;
                v229 = swift_slowAlloc();
                v302 = swift_slowAlloc();
                *&v315 = v302;
                *v229 = 67109378;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  swift_unknownObjectRelease();
                  v230 = 1;
                }

                else
                {
                  v230 = 0;
                }

                v274 = v227;
                *(v229 + 4) = v230;

                *(v229 + 8) = 2080;
                v275 = v308;
                v276 = (v304)(&v186[v219], 1, v308);
                v90 = v309;
                if (v276)
                {
                  v277 = 7104878;
                  v278 = 0xE300000000000000;
                  v279 = v307;
                }

                else
                {
                  v280 = v306;
                  v281 = &v186[v219];
                  v279 = v307;
                  (*(v307 + 16))(v306, v281, v275);
                  v282 = UUID.uuidString.getter();
                  v278 = v283;
                  (*(v279 + 8))(v280, v275);
                  v277 = v282;
                }

                v284 = v290;
                v285 = sub_10000C4E4(v277, v278, &v315);

                *(v229 + 10) = v285;
                _os_log_impl(&_mh_execute_header, v274, v303, "Could not call back to delegate (exists: %{BOOL}d), for sessionID: %s", v229, 0x12u);
                sub_10000C60C(v302);

                (*(v279 + 8))(v284, v275);
                v69 = v275;
                goto LABEL_87;
              }

              (*(v307 + 8))(v290, v69);
            }

            v90 = v309;
          }
        }
      }

LABEL_87:
      v232 = v323;
      v231 = v324;
      sub_10002CDC0(v322, v323);
      if ((*(*(v231 + 8) + 40))(v232) != 8)
      {
        v234 = v323;
        v233 = v324;
        sub_10002CDC0(v322, v323);
        v235 = v306;
        (*(*(v233 + 8) + 32))(v234);
        sub_100695FD8(v235, 0, 0);
        (*(v307 + 8))(v235, v69);
      }

      sub_10000C60C(v322);
LABEL_90:
      v236 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
      v237 = *(v90 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
      v238 = SFDeviceClassCodeGet();
      v239 = sub_100027628(v237);
      v240 = sub_10000EF9C(8u, v239);

      if (v240)
      {
        if (!SFDeviceIsRealityDevice())
        {
LABEL_92:
          sub_1002A9938(v325, v322);
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            v308 = v243;
            v309 = swift_slowAlloc();
            v314 = v309;
            *v243 = 136315138;
            v244 = sub_10002CDC0(v322, v323);
            v245 = v69;
            v246 = v306;
            v247 = v307;
            (*(v307 + 16))(v306, *v244 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v245);
            sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
            v248 = v90;
            v249 = dispatch thunk of CustomStringConvertible.description.getter();
            v251 = v250;
            (*(v247 + 8))(v246, v245);
            sub_10000C60C(v322);
            v252 = v249;
            v90 = v248;
            v253 = sub_10000C4E4(v252, v251, &v314);

            v254 = v308;
            *(v308 + 1) = v253;
            _os_log_impl(&_mh_execute_header, v241, v242, "Removing session %s record", v254, 0xCu);
            sub_10000C60C(v309);
          }

          else
          {

            sub_10000C60C(v322);
          }

          v271 = v301;
          v272 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
          swift_beginAccess();
          sub_1000124A0(v90 + v272);
          swift_endAccess();
          v269 = &qword_100976308;
          v270 = &unk_1007F94E0;
          v268 = v271;
          goto LABEL_98;
        }
      }

      else
      {
        v255 = sub_100027628(v237);
        v256 = sub_10000EF9C(v238, v255);

        if (!v256)
        {
          goto LABEL_92;
        }
      }

      v257 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v258 = sub_1004FE08C(*(v90 + v236));
      sub_10000FF90(v90 + v300, v322, &qword_100982080, &unk_1007FDD30);
      v259 = sub_1005CCA8C(v258, v322);
      v261 = v260;
      v262 = swift_getObjectType();
      v263 = (*(v261 + 56))(v262, v261);
      v264 = *(v257 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v265 = __chkstk_darwin(v263);
      *(&v286 - 4) = v259;
      *(&v286 - 3) = v261;
      *(&v286 - 2) = v322;
      *(&v286 - 1) = v257;
      __chkstk_darwin(v265);
      *(&v286 - 2) = sub_100465400;
      *(&v286 - 1) = v266;
      os_unfair_lock_lock(v264 + 4);
      sub_1003206A8(v267);
      os_unfair_lock_unlock(v264 + 4);
      swift_unknownObjectRelease();
      v268 = v322;
      v269 = &qword_100982080;
      v270 = &unk_1007FDD30;
LABEL_98:
      sub_100005508(v268, v269, v270);
      return sub_10000C60C(v325);
    }
  }

  v123 = v323;
  v122 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v122 + 8) + 64))(&v315, v123);
  if (!*(&v316 + 1))
  {
    sub_100005508(&v315, &qword_100982080, &unk_1007FDD30);
    sub_1002A9938(v325, &v318);
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      *&v315 = v303;
      *v154 = 136315138;
      v155 = sub_10002CDC0(&v318, v320);
      v156 = v307;
      v157 = v90;
      v158 = v306;
      (*(v307 + 16))(v306, *v155 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v308);
      sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = v160;
      v162 = v158;
      v90 = v157;
      (*(v156 + 8))(v162, v308);
      sub_10000C60C(&v318);
      v163 = sub_10000C4E4(v159, v161, &v315);

      *(v154 + 4) = v163;
      _os_log_impl(&_mh_execute_header, v152, v153, "No peer device for session: %s", v154, 0xCu);
      sub_10000C60C(v303);
      v69 = v308;

      v104 = v288;

      goto LABEL_58;
    }

LABEL_57:
    sub_10000C60C(&v318);
LABEL_58:
    v174 = v323;
    v173 = v324;
    sub_10002CDC0(v322, v323);
    if ((*(*(v173 + 8) + 40))(v174) == 5)
    {
      v175 = v295;
      Date.init()();
      v176 = type metadata accessor for Date();
      (*(*(v176 - 8) + 56))(v175, 0, 1, v176);
      v177 = &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager];
      swift_beginAccess();
      v178 = *(v177 + 24);
      v179 = *(v177 + 32);
      sub_10002F5B4(v177, v178);
      (*(v179 + 16))(v175, v178, v179);
      swift_endAccess();
    }

    goto LABEL_60;
  }

  sub_1000121F8(&v315, &v318);
  v124 = v320;
  v125 = v321;
  sub_10002CDC0(&v318, v320);
  v126 = (*(v125 + 8))(v124, v125);
  if (!v127)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_1006D23E0(v126, v127);

  v128 = v320;
  v129 = v321;
  sub_10002CDC0(&v318, v320);
  v130 = (*(v129 + 8))(v128, v129);
  if (!v131)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v132 = v130;
  v133 = v131;
  swift_beginAccess();
  v134 = sub_10056CE1C(&v315, v132, v133);
  v136 = v135;
  v137 = type metadata accessor for RegistrationState(0);
  if (!(*(*(v137 - 8) + 48))(v136, 1, v137))
  {
    *(v136 + *(v137 + 20)) = 0;
  }

  (v134)(&v315, 0);
  swift_endAccess();

  sub_1002A9938(&v318, &v315);
  sub_1002A9938(&v318, v310);
  v104 = v288;
  v138 = v288;
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v139, v140))
  {

    sub_10000C60C(v310);
    sub_10000C60C(&v315);
    v90 = v309;
    goto LABEL_57;
  }

  v141 = swift_slowAlloc();
  v303 = swift_slowAlloc();
  v313[0] = v303;
  *v141 = 136315394;
  v143 = *(&v316 + 1);
  v142 = v317;
  sub_10002CDC0(&v315, *(&v316 + 1));
  v144 = (*(v142 + 8))(v143, v142);
  v146 = v145;

  if (v146)
  {
    v147 = v287;
    sub_10069F7E4(v144, v146, v287);

    v148 = type metadata accessor for Date();
    v149 = *(v148 - 8);
    if ((*(v149 + 48))(v147, 1, v148) == 1)
    {
      v150 = 0x676E697373696D3CLL;
      sub_100005508(v147, &qword_10097A7F0, &unk_1007FB600);
      v151 = 0xE90000000000003ELL;
    }

    else
    {
      v150 = Date.description.getter();
      v151 = v164;
      (*(v149 + 8))(v147, v148);
    }

    v90 = v309;
    sub_10000C60C(&v315);
    v165 = sub_10000C4E4(v150, v151, v313);

    *(v141 + 4) = v165;
    *(v141 + 12) = 2080;
    v166 = v311;
    v167 = v312;
    sub_10002CDC0(v310, v311);
    v168 = (*(v167 + 8))(v166, v167);
    if (v169)
    {
      v170 = v168;
    }

    else
    {
      v170 = 0xD000000000000015;
    }

    if (v169)
    {
      v171 = v169;
    }

    else
    {
      v171 = 0x8000000100789F30;
    }

    sub_10000C60C(v310);
    v172 = sub_10000C4E4(v170, v171, v313);

    *(v141 + 14) = v172;
    _os_log_impl(&_mh_execute_header, v139, v140, "Recording last registration date as %s for device: %s", v141, 0x16u);
    swift_arrayDestroy();

    v69 = v308;
    v104 = v288;
    goto LABEL_57;
  }

LABEL_113:
  sub_10000C60C(v310);
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1004E0C14(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v292 = &v286 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v294 = &v286 - v9;
  v10 = __chkstk_darwin(v8);
  v289 = &v286 - v11;
  __chkstk_darwin(v10);
  v291 = &v286 - v12;
  v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v295 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v286 - v17;
  v19 = sub_10028088C(&qword_100980B08, &qword_100810330);
  v302 = *(v19 - 1);
  v303 = v19;
  v20 = v302[8];
  __chkstk_darwin(v19);
  v22 = &v286 - v21;
  v23 = sub_10028088C(&qword_100980B10, &unk_1008070F0);
  v297 = *(v23 - 8);
  v298 = v23;
  v24 = *(v297 + 64);
  __chkstk_darwin(v23);
  v296 = &v286 - v25;
  v26 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v286 - v28;
  v30 = type metadata accessor for UUID();
  v307 = *(v30 - 8);
  v308 = v30;
  v31 = *(v307 + 64);
  v32 = __chkstk_darwin(v30);
  v290 = &v286 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v306 = &v286 - v34;
  v35 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v304 = &v286 - v37;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = (&v286 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325[3] = type metadata accessor for SDAuthenticationLockSession(0);
  v325[4] = &off_1008E5AB0;
  v325[0] = a1;
  v43 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
  *v42 = v43;
  (*(v39 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v38);
  v309 = a1;
  v44 = v43;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v42, v38);
  if (a1)
  {
    if (qword_100973C48 == -1)
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
  v45 = type metadata accessor for Logger();
  v46 = sub_10000C4AC(v45, qword_1009895D8);
  sub_1002A9938(v325, v322);
  v305 = v46;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v301 = v29;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v315 = v51;
    *v50 = 136315138;
    sub_1002A9938(v322, &v318);
    sub_10028088C(&unk_10097F090, &unk_100804740);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    sub_10000C60C(v322);
    v55 = sub_10000C4E4(v52, v54, &v315);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v47, v48, "Session did complete: %s", v50, 0xCu);
    sub_10000C60C(v51);
  }

  else
  {

    sub_10000C60C(v322);
  }

  v56 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  v57 = v309;
  swift_beginAccess();
  sub_10000FF90(v57 + v56, v322, &qword_100982080, &unk_1007FDD30);
  v58 = v323;
  if (v323)
  {
    v59 = v324;
    sub_10002CDC0(v322, v323);
    v60 = (*(v59 + 8))(v58, v59);
    v62 = v61;
    sub_10000C60C(v322);
    if (v62)
    {
      if (*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager])
      {
        v63 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager];

        sub_100344E30(v60, v62);
      }
    }
  }

  else
  {
    sub_100005508(v322, &qword_100982080, &unk_1007FDD30);
  }

  sub_1002A9938(v325, &v318);
  sub_10028088C(&unk_10097F090, &unk_100804740);
  sub_10028088C(&qword_100974FA0, &unk_100804C70);
  v64 = swift_dynamicCast();
  v300 = v56;
  if (v64)
  {
    v65 = sub_1000121F8(&v315, v322);
    __chkstk_darwin(v65);
    *(&v286 - 2) = v322;
    v66 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
    swift_beginAccess();
    v67 = sub_10045D8D4(sub_1004E52F8, (&v286 - 4));
    v68 = *(*&a2[v66] + 16);
    v69 = v308;
    if (v68 >= v67)
    {
      sub_10057ED58(v67, v68);
      swift_endAccess();
      v70 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
      v71 = swift_beginAccess();
      v72 = *&a2[v70];
      __chkstk_darwin(v71);
      *(&v286 - 2) = v322;

      v73 = sub_1002D8B74(sub_1004E52F8, (&v286 - 4), v72);
      v75 = v74;
      v299 = 0;

      if (v75)
      {
LABEL_22:
        v82 = type metadata accessor for TaskPriority();
        v83 = v304;
        (*(*(v82 - 8) + 56))(v304, 1, 1, v82);
        sub_1002A9938(v325, &v318);
        v84 = swift_allocObject();
        v84[2] = 0;
        v84[3] = 0;
        v84[4] = a2;
        sub_1000121F8(&v318, (v84 + 5));
        a2;
        sub_1002B3098(0, 0, v83, &unk_100807120, v84);

        v86 = v323;
        v85 = v324;
        sub_10002CDC0(v322, v323);
        (*(*(v85 + 8) + 88))(v86);
        v88 = v323;
        v87 = v324;
        sub_10002CDC0(v322, v323);
        v89 = v306;
        (*(*(v87 + 8) + 32))(v88);
        sub_100695FD8(v89, 0, 0);
        (*(v307 + 8))(v89, v69);
        sub_10000C60C(v322);
        v90 = v309;
        goto LABEL_90;
      }

      if ((v73 & 0x8000000000000000) == 0)
      {
        v76 = *&a2[v70];
        if (v73 < *(v76 + 16))
        {
          sub_1002A9938(v76 + 40 * v73 + 32, &v318);
          v78 = v320;
          v77 = v321;
          sub_10002CDC0(&v318, v320);
          if ((*(*(*(v77 + 8) + 8) + 40))(v78) == 1)
          {
            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&_mh_execute_header, v79, v80, "Posting authenticated notification", v81, 2u);
            }

            sub_1006D1230();
          }

          swift_beginAccess();
          sub_1002CD1F4(v73, &v315);
          swift_endAccess();
          sub_10000C60C(&v315);
          sub_10000C60C(&v318);
          goto LABEL_22;
        }

        goto LABEL_110;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v317 = 0;
  v315 = 0u;
  v316 = 0u;
  sub_100005508(&v315, &qword_100980B18, &unk_100807100);
  sub_1002A9938(v325, &v318);
  sub_10028088C(&qword_10097C6B0, &unk_100804750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v317 = 0;
    v315 = 0u;
    v316 = 0u;
    sub_100005508(&v315, &qword_100980B20, &qword_100807110);
    v299 = 0;
    v69 = v308;
    v90 = v309;
    goto LABEL_90;
  }

  v91 = sub_1000121F8(&v315, v322);
  __chkstk_darwin(v91);
  *(&v286 - 2) = v322;
  v92 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v93 = sub_10045D5D4(sub_1004E52F8, (&v286 - 4));
  v94 = *(*&a2[v92] + 16);
  if (v94 < v93)
  {
    goto LABEL_107;
  }

  sub_10057EF98(v93, v94);
  v95 = swift_endAccess();
  __chkstk_darwin(v95);
  *(&v286 - 2) = v322;
  v96 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v97 = sub_10045D628(sub_1004E52F8, (&v286 - 4));
  v98 = *(*&a2[v96] + 16);
  if (v98 < v97)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v287 = v18;
  v299 = 0;
  sub_10057EE90(v97, v98);
  swift_endAccess();
  v100 = v323;
  v99 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v99 + 8) + 88))(v100);
  v101 = type metadata accessor for TaskPriority();
  v102 = v304;
  (*(*(v101 - 8) + 56))(v304, 1, 1, v101);
  sub_1002A9938(v325, &v318);
  v103 = swift_allocObject();
  v103[2] = 0;
  v103[3] = 0;
  v103[4] = a2;
  sub_1000121F8(&v318, (v103 + 5));
  v104 = a2;
  sub_1002B3098(0, 0, v102, &unk_100807118, v103);

  v106 = v323;
  v105 = v324;
  sub_10002CDC0(v322, v323);
  if ((*(*(v105 + 8) + 40))(v106) == 5)
  {
    sub_10069579C();
  }

  (v302[2])(v22, &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedContinuation], v303);
  v90 = v309;
  v304 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v107 = *(v309 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v109 = v323;
  v108 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v108 + 8) + 64))(&v318, v109);
  v110 = v320;
  if (!v320)
  {
    sub_100005508(&v318, &qword_100982080, &unk_1007FDD30);
LABEL_33:
    v114 = 0xE90000000000003ELL;
    v112 = 0x676E697373696D3CLL;

    goto LABEL_34;
  }

  v111 = v321;
  sub_10002CDC0(&v318, v320);
  v112 = (*(v111 + 8))(v110, v111);
  v114 = v113;
  sub_10000C60C(&v318);
  if (!v114)
  {
    goto LABEL_33;
  }

LABEL_34:
  *&v318 = v107;
  *(&v318 + 1) = v112;
  v319 = v114;
  LOBYTE(v320) = 0;
  v115 = v296;
  v116 = v303;
  AsyncStream.Continuation.yield(_:)();
  (v302[1])(v22, v116);
  (*(v297 + 8))(v115, v298);
  v118 = v323;
  v117 = v324;
  sub_10002CDC0(v322, v323);
  v119 = (*(*(v117 + 8) + 40))(v118);
  v69 = v308;
  v288 = v104;
  if (v119 != 8)
  {
    v121 = v323;
    v120 = v324;
    sub_10002CDC0(v322, v323);
    if ((*(*(v120 + 8) + 40))(v121) != 5)
    {
LABEL_60:
      v181 = v323;
      v180 = v324;
      sub_10002CDC0(v322, v323);
      if ((*(*(v180 + 8) + 40))(v181) == 8)
      {
        if ((sub_1004FE8E0(*&v304[v90]) & 1) == 0)
        {
          v182 = v323;
          v183 = v324;
          sub_10002CDC0(v322, v323);
          if (((*(v183 + 16))(v182, v183) & 1) != 0 || (v184 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI, swift_beginAccess(), v185 = v291, sub_10000FF90(&v104[v184], v291, &unk_100976120, &qword_1007F9260), LODWORD(v184) = (*(v307 + 48))(v185, 1, v69), sub_100005508(v185, &unk_100976120, &qword_1007F9260), v184 != 1))
          {
            sub_1002A9938(v322, &v318);
            v192 = v104;
            v193 = Logger.logObject.getter();
            v194 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v193, v194))
            {
              v195 = swift_slowAlloc();
              *v195 = 67109376;
              v196 = v320;
              v197 = v321;
              sub_10002CDC0(&v318, v320);
              v198 = (*(v197 + 16))(v196, v197) & 1;
              sub_10000C60C(&v318);
              *(v195 + 4) = v198;
              *(v195 + 8) = 1024;
              v199 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
              swift_beginAccess();
              v200 = a2;
              v201 = v90;
              v202 = v289;
              sub_10000FF90(&v192[v199], v289, &unk_100976120, &qword_1007F9260);
              v203 = v307;
              LODWORD(v199) = (*(v307 + 48))(v202, 1, v308) != 1;
              v204 = v202;
              v90 = v201;
              a2 = v200;
              sub_100005508(v204, &unk_100976120, &qword_1007F9260);
              *(v195 + 10) = v199;

              _os_log_impl(&_mh_execute_header, v193, v194, "Request arming UI as requested by Mac (%{BOOL}d) or ongoing unlock session during registration (%{BOOL}d)", v195, 0xEu);
              v69 = v308;
            }

            else
            {
              sub_10000C60C(&v318);

              v203 = v307;
            }

            sub_1006D05EC();
            v205 = *(v203 + 56);
            v206 = v294;
            v205(v294, 1, 1, v69);
            v207 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            sub_10000C788(v206, &v192[v207], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            goto LABEL_87;
          }
        }

        if (sub_1004FE8E0(*&v304[v90]))
        {
          v186 = v104;
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            *&v318 = v190;
            *v189 = 67109378;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              v191 = 1;
            }

            else
            {
              v191 = 0;
            }

            *(v189 + 4) = v191;

            *(v189 + 8) = 2080;
            v209 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            v210 = v307;
            v211 = v308;
            if ((*(v307 + 48))(&v186[v209], 1, v308))
            {
              v212 = 7104878;
              v213 = 0xE300000000000000;
            }

            else
            {
              v214 = *(v210 + 16);
              v304 = v190;
              v215 = v306;
              v214(v306, &v186[v209], v211);
              v303 = UUID.uuidString.getter();
              v213 = v216;
              v217 = v215;
              v190 = v304;
              (*(v210 + 8))(v217, v211);
              v212 = v303;
            }

            v218 = sub_10000C4E4(v212, v213, &v318);

            *(v189 + 10) = v218;
            _os_log_impl(&_mh_execute_header, v187, v188, "Calling back to delegate (exists: %{BOOL}d), for sessionID: %s", v189, 0x12u);
            sub_10000C60C(v190);

            v90 = v309;
            v208 = v292;
          }

          else
          {

            v208 = v292;
          }

          v219 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
          swift_beginAccess();
          sub_10000FF90(&v186[v219], v208, &unk_100976120, &qword_1007F9260);
          v220 = v307;
          v69 = v308;
          v221 = *(v307 + 48);
          if ((v221)(v208, 1, v308) == 1)
          {
            sub_100005508(v208, &unk_100976120, &qword_1007F9260);
          }

          else
          {
            v304 = v221;
            v222 = v290;
            (*(v220 + 32))(v290, v208, v69);
            v223 = v294;
            (*(v220 + 56))(v294, 1, 1, v69);
            swift_beginAccess();
            sub_10000C788(v223, &v186[v219], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v224 = sub_100010F88(11, 0, 0xE000000000000000);
              sub_100695FD8(v222, v224, v225);
              swift_unknownObjectRelease();

              (*(v220 + 8))(v222, v69);
            }

            else
            {
              v226 = v186;
              v227 = Logger.logObject.getter();
              v228 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v227, v228))
              {
                LODWORD(v303) = v228;
                v229 = swift_slowAlloc();
                v302 = swift_slowAlloc();
                *&v315 = v302;
                *v229 = 67109378;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  swift_unknownObjectRelease();
                  v230 = 1;
                }

                else
                {
                  v230 = 0;
                }

                v274 = v227;
                *(v229 + 4) = v230;

                *(v229 + 8) = 2080;
                v275 = v308;
                v276 = (v304)(&v186[v219], 1, v308);
                v90 = v309;
                if (v276)
                {
                  v277 = 7104878;
                  v278 = 0xE300000000000000;
                  v279 = v307;
                }

                else
                {
                  v280 = v306;
                  v281 = &v186[v219];
                  v279 = v307;
                  (*(v307 + 16))(v306, v281, v275);
                  v282 = UUID.uuidString.getter();
                  v278 = v283;
                  (*(v279 + 8))(v280, v275);
                  v277 = v282;
                }

                v284 = v290;
                v285 = sub_10000C4E4(v277, v278, &v315);

                *(v229 + 10) = v285;
                _os_log_impl(&_mh_execute_header, v274, v303, "Could not call back to delegate (exists: %{BOOL}d), for sessionID: %s", v229, 0x12u);
                sub_10000C60C(v302);

                (*(v279 + 8))(v284, v275);
                v69 = v275;
                goto LABEL_87;
              }

              (*(v307 + 8))(v290, v69);
            }

            v90 = v309;
          }
        }
      }

LABEL_87:
      v232 = v323;
      v231 = v324;
      sub_10002CDC0(v322, v323);
      if ((*(*(v231 + 8) + 40))(v232) != 8)
      {
        v234 = v323;
        v233 = v324;
        sub_10002CDC0(v322, v323);
        v235 = v306;
        (*(*(v233 + 8) + 32))(v234);
        sub_100695FD8(v235, 0, 0);
        (*(v307 + 8))(v235, v69);
      }

      sub_10000C60C(v322);
LABEL_90:
      v236 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
      v237 = *(v90 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
      v238 = SFDeviceClassCodeGet();
      v239 = sub_100027628(v237);
      v240 = sub_10000EF9C(8u, v239);

      if (v240)
      {
        if (!SFDeviceIsRealityDevice())
        {
LABEL_92:
          sub_1002A9938(v325, v322);
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            v308 = v243;
            v309 = swift_slowAlloc();
            v314 = v309;
            *v243 = 136315138;
            v244 = sub_10002CDC0(v322, v323);
            v245 = v69;
            v246 = v306;
            v247 = v307;
            (*(v307 + 16))(v306, *v244 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v245);
            sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
            v248 = v90;
            v249 = dispatch thunk of CustomStringConvertible.description.getter();
            v251 = v250;
            (*(v247 + 8))(v246, v245);
            sub_10000C60C(v322);
            v252 = v249;
            v90 = v248;
            v253 = sub_10000C4E4(v252, v251, &v314);

            v254 = v308;
            *(v308 + 1) = v253;
            _os_log_impl(&_mh_execute_header, v241, v242, "Removing session %s record", v254, 0xCu);
            sub_10000C60C(v309);
          }

          else
          {

            sub_10000C60C(v322);
          }

          v271 = v301;
          v272 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
          swift_beginAccess();
          sub_1000124A0(v90 + v272);
          swift_endAccess();
          v269 = &qword_100976308;
          v270 = &unk_1007F94E0;
          v268 = v271;
          goto LABEL_98;
        }
      }

      else
      {
        v255 = sub_100027628(v237);
        v256 = sub_10000EF9C(v238, v255);

        if (!v256)
        {
          goto LABEL_92;
        }
      }

      v257 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v258 = sub_1004FE08C(*(v90 + v236));
      sub_10000FF90(v90 + v300, v322, &qword_100982080, &unk_1007FDD30);
      v259 = sub_1005CCA8C(v258, v322);
      v261 = v260;
      v262 = swift_getObjectType();
      v263 = (*(v261 + 56))(v262, v261);
      v264 = *(v257 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v265 = __chkstk_darwin(v263);
      *(&v286 - 4) = v259;
      *(&v286 - 3) = v261;
      *(&v286 - 2) = v322;
      *(&v286 - 1) = v257;
      __chkstk_darwin(v265);
      *(&v286 - 2) = sub_100464E14;
      *(&v286 - 1) = v266;
      os_unfair_lock_lock(v264 + 4);
      sub_1002F5418(v267);
      os_unfair_lock_unlock(v264 + 4);
      swift_unknownObjectRelease();
      v268 = v322;
      v269 = &qword_100982080;
      v270 = &unk_1007FDD30;
LABEL_98:
      sub_100005508(v268, v269, v270);
      return sub_10000C60C(v325);
    }
  }

  v123 = v323;
  v122 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v122 + 8) + 64))(&v315, v123);
  if (!*(&v316 + 1))
  {
    sub_100005508(&v315, &qword_100982080, &unk_1007FDD30);
    sub_1002A9938(v325, &v318);
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      *&v315 = v303;
      *v154 = 136315138;
      v155 = sub_10002CDC0(&v318, v320);
      v156 = v307;
      v157 = v90;
      v158 = v306;
      (*(v307 + 16))(v306, *v155 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v308);
      sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = v160;
      v162 = v158;
      v90 = v157;
      (*(v156 + 8))(v162, v308);
      sub_10000C60C(&v318);
      v163 = sub_10000C4E4(v159, v161, &v315);

      *(v154 + 4) = v163;
      _os_log_impl(&_mh_execute_header, v152, v153, "No peer device for session: %s", v154, 0xCu);
      sub_10000C60C(v303);
      v69 = v308;

      v104 = v288;

      goto LABEL_58;
    }

LABEL_57:
    sub_10000C60C(&v318);
LABEL_58:
    v174 = v323;
    v173 = v324;
    sub_10002CDC0(v322, v323);
    if ((*(*(v173 + 8) + 40))(v174) == 5)
    {
      v175 = v295;
      Date.init()();
      v176 = type metadata accessor for Date();
      (*(*(v176 - 8) + 56))(v175, 0, 1, v176);
      v177 = &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager];
      swift_beginAccess();
      v178 = *(v177 + 24);
      v179 = *(v177 + 32);
      sub_10002F5B4(v177, v178);
      (*(v179 + 16))(v175, v178, v179);
      swift_endAccess();
    }

    goto LABEL_60;
  }

  sub_1000121F8(&v315, &v318);
  v124 = v320;
  v125 = v321;
  sub_10002CDC0(&v318, v320);
  v126 = (*(v125 + 8))(v124, v125);
  if (!v127)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_1006D23E0(v126, v127);

  v128 = v320;
  v129 = v321;
  sub_10002CDC0(&v318, v320);
  v130 = (*(v129 + 8))(v128, v129);
  if (!v131)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v132 = v130;
  v133 = v131;
  swift_beginAccess();
  v134 = sub_10056CE1C(&v315, v132, v133);
  v136 = v135;
  v137 = type metadata accessor for RegistrationState(0);
  if (!(*(*(v137 - 8) + 48))(v136, 1, v137))
  {
    *(v136 + *(v137 + 20)) = 0;
  }

  (v134)(&v315, 0);
  swift_endAccess();

  sub_1002A9938(&v318, &v315);
  sub_1002A9938(&v318, v310);
  v104 = v288;
  v138 = v288;
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v139, v140))
  {

    sub_10000C60C(v310);
    sub_10000C60C(&v315);
    v90 = v309;
    goto LABEL_57;
  }

  v141 = swift_slowAlloc();
  v303 = swift_slowAlloc();
  v313[0] = v303;
  *v141 = 136315394;
  v143 = *(&v316 + 1);
  v142 = v317;
  sub_10002CDC0(&v315, *(&v316 + 1));
  v144 = (*(v142 + 8))(v143, v142);
  v146 = v145;

  if (v146)
  {
    v147 = v287;
    sub_10069F7E4(v144, v146, v287);

    v148 = type metadata accessor for Date();
    v149 = *(v148 - 8);
    if ((*(v149 + 48))(v147, 1, v148) == 1)
    {
      v150 = 0x676E697373696D3CLL;
      sub_100005508(v147, &qword_10097A7F0, &unk_1007FB600);
      v151 = 0xE90000000000003ELL;
    }

    else
    {
      v150 = Date.description.getter();
      v151 = v164;
      (*(v149 + 8))(v147, v148);
    }

    v90 = v309;
    sub_10000C60C(&v315);
    v165 = sub_10000C4E4(v150, v151, v313);

    *(v141 + 4) = v165;
    *(v141 + 12) = 2080;
    v166 = v311;
    v167 = v312;
    sub_10002CDC0(v310, v311);
    v168 = (*(v167 + 8))(v166, v167);
    if (v169)
    {
      v170 = v168;
    }

    else
    {
      v170 = 0xD000000000000015;
    }

    if (v169)
    {
      v171 = v169;
    }

    else
    {
      v171 = 0x8000000100789F30;
    }

    sub_10000C60C(v310);
    v172 = sub_10000C4E4(v170, v171, v313);

    *(v141 + 14) = v172;
    _os_log_impl(&_mh_execute_header, v139, v140, "Recording last registration date as %s for device: %s", v141, 0x16u);
    swift_arrayDestroy();

    v69 = v308;
    v104 = v288;
    goto LABEL_57;
  }

LABEL_113:
  sub_10000C60C(v310);
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1004E2F7C(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v292 = &v286 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v294 = &v286 - v9;
  v10 = __chkstk_darwin(v8);
  v289 = &v286 - v11;
  __chkstk_darwin(v10);
  v291 = &v286 - v12;
  v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v295 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v286 - v17;
  v19 = sub_10028088C(&qword_100980B08, &qword_100810330);
  v302 = *(v19 - 1);
  v303 = v19;
  v20 = v302[8];
  __chkstk_darwin(v19);
  v22 = &v286 - v21;
  v23 = sub_10028088C(&qword_100980B10, &unk_1008070F0);
  v297 = *(v23 - 8);
  v298 = v23;
  v24 = *(v297 + 64);
  __chkstk_darwin(v23);
  v296 = &v286 - v25;
  v26 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v286 - v28;
  v30 = type metadata accessor for UUID();
  v307 = *(v30 - 8);
  v308 = v30;
  v31 = *(v307 + 64);
  v32 = __chkstk_darwin(v30);
  v290 = &v286 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v306 = &v286 - v34;
  v35 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v304 = &v286 - v37;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = (&v286 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325[3] = type metadata accessor for SDAuthenticationPairingKeySession();
  v325[4] = &off_1008E5AB0;
  v325[0] = a1;
  v43 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
  *v42 = v43;
  (*(v39 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v38);
  v309 = a1;
  v44 = v43;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v42, v38);
  if (a1)
  {
    if (qword_100973C48 == -1)
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
  v45 = type metadata accessor for Logger();
  v46 = sub_10000C4AC(v45, qword_1009895D8);
  sub_1002A9938(v325, v322);
  v305 = v46;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v301 = v29;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v315 = v51;
    *v50 = 136315138;
    sub_1002A9938(v322, &v318);
    sub_10028088C(&unk_10097F090, &unk_100804740);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    sub_10000C60C(v322);
    v55 = sub_10000C4E4(v52, v54, &v315);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v47, v48, "Session did complete: %s", v50, 0xCu);
    sub_10000C60C(v51);
  }

  else
  {

    sub_10000C60C(v322);
  }

  v56 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  v57 = v309;
  swift_beginAccess();
  sub_10000FF90(v57 + v56, v322, &qword_100982080, &unk_1007FDD30);
  v58 = v323;
  if (v323)
  {
    v59 = v324;
    sub_10002CDC0(v322, v323);
    v60 = (*(v59 + 8))(v58, v59);
    v62 = v61;
    sub_10000C60C(v322);
    if (v62)
    {
      if (*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager])
      {
        v63 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager];

        sub_100344E30(v60, v62);
      }
    }
  }

  else
  {
    sub_100005508(v322, &qword_100982080, &unk_1007FDD30);
  }

  sub_1002A9938(v325, &v318);
  sub_10028088C(&unk_10097F090, &unk_100804740);
  sub_10028088C(&qword_100974FA0, &unk_100804C70);
  v64 = swift_dynamicCast();
  v300 = v56;
  if (v64)
  {
    v65 = sub_1000121F8(&v315, v322);
    __chkstk_darwin(v65);
    *(&v286 - 2) = v322;
    v66 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
    swift_beginAccess();
    v67 = sub_10045D8D4(sub_1004E5A9C, (&v286 - 4));
    v68 = *(*&a2[v66] + 16);
    v69 = v308;
    if (v68 >= v67)
    {
      sub_10057ED58(v67, v68);
      swift_endAccess();
      v70 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
      v71 = swift_beginAccess();
      v72 = *&a2[v70];
      __chkstk_darwin(v71);
      *(&v286 - 2) = v322;

      v73 = sub_1002D8B74(sub_1004E5A9C, (&v286 - 4), v72);
      v75 = v74;
      v299 = 0;

      if (v75)
      {
LABEL_22:
        v82 = type metadata accessor for TaskPriority();
        v83 = v304;
        (*(*(v82 - 8) + 56))(v304, 1, 1, v82);
        sub_1002A9938(v325, &v318);
        v84 = swift_allocObject();
        v84[2] = 0;
        v84[3] = 0;
        v84[4] = a2;
        sub_1000121F8(&v318, (v84 + 5));
        a2;
        sub_1002B3098(0, 0, v83, &unk_100807150, v84);

        v86 = v323;
        v85 = v324;
        sub_10002CDC0(v322, v323);
        (*(*(v85 + 8) + 88))(v86);
        v88 = v323;
        v87 = v324;
        sub_10002CDC0(v322, v323);
        v89 = v306;
        (*(*(v87 + 8) + 32))(v88);
        sub_100695FD8(v89, 0, 0);
        (*(v307 + 8))(v89, v69);
        sub_10000C60C(v322);
        v90 = v309;
        goto LABEL_90;
      }

      if ((v73 & 0x8000000000000000) == 0)
      {
        v76 = *&a2[v70];
        if (v73 < *(v76 + 16))
        {
          sub_1002A9938(v76 + 40 * v73 + 32, &v318);
          v78 = v320;
          v77 = v321;
          sub_10002CDC0(&v318, v320);
          if ((*(*(*(v77 + 8) + 8) + 40))(v78) == 1)
          {
            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&_mh_execute_header, v79, v80, "Posting authenticated notification", v81, 2u);
            }

            sub_1006D1230();
          }

          swift_beginAccess();
          sub_1002CD1F4(v73, &v315);
          swift_endAccess();
          sub_10000C60C(&v315);
          sub_10000C60C(&v318);
          goto LABEL_22;
        }

        goto LABEL_110;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v317 = 0;
  v315 = 0u;
  v316 = 0u;
  sub_100005508(&v315, &qword_100980B18, &unk_100807100);
  sub_1002A9938(v325, &v318);
  sub_10028088C(&qword_10097C6B0, &unk_100804750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v317 = 0;
    v315 = 0u;
    v316 = 0u;
    sub_100005508(&v315, &qword_100980B20, &qword_100807110);
    v299 = 0;
    v69 = v308;
    v90 = v309;
    goto LABEL_90;
  }

  v91 = sub_1000121F8(&v315, v322);
  __chkstk_darwin(v91);
  *(&v286 - 2) = v322;
  v92 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v93 = sub_10045D5D4(sub_1004E5A9C, (&v286 - 4));
  v94 = *(*&a2[v92] + 16);
  if (v94 < v93)
  {
    goto LABEL_107;
  }

  sub_10057EF98(v93, v94);
  v95 = swift_endAccess();
  __chkstk_darwin(v95);
  *(&v286 - 2) = v322;
  v96 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v97 = sub_10045D628(sub_1004E5A9C, (&v286 - 4));
  v98 = *(*&a2[v96] + 16);
  if (v98 < v97)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v287 = v18;
  v299 = 0;
  sub_10057EE90(v97, v98);
  swift_endAccess();
  v100 = v323;
  v99 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v99 + 8) + 88))(v100);
  v101 = type metadata accessor for TaskPriority();
  v102 = v304;
  (*(*(v101 - 8) + 56))(v304, 1, 1, v101);
  sub_1002A9938(v325, &v318);
  v103 = swift_allocObject();
  v103[2] = 0;
  v103[3] = 0;
  v103[4] = a2;
  sub_1000121F8(&v318, (v103 + 5));
  v104 = a2;
  sub_1002B3098(0, 0, v102, &unk_100807148, v103);

  v106 = v323;
  v105 = v324;
  sub_10002CDC0(v322, v323);
  if ((*(*(v105 + 8) + 40))(v106) == 5)
  {
    sub_10069579C();
  }

  (v302[2])(v22, &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedContinuation], v303);
  v90 = v309;
  v304 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v107 = *(v309 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v109 = v323;
  v108 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v108 + 8) + 64))(&v318, v109);
  v110 = v320;
  if (!v320)
  {
    sub_100005508(&v318, &qword_100982080, &unk_1007FDD30);
LABEL_33:
    v114 = 0xE90000000000003ELL;
    v112 = 0x676E697373696D3CLL;

    goto LABEL_34;
  }

  v111 = v321;
  sub_10002CDC0(&v318, v320);
  v112 = (*(v111 + 8))(v110, v111);
  v114 = v113;
  sub_10000C60C(&v318);
  if (!v114)
  {
    goto LABEL_33;
  }

LABEL_34:
  *&v318 = v107;
  *(&v318 + 1) = v112;
  v319 = v114;
  LOBYTE(v320) = 0;
  v115 = v296;
  v116 = v303;
  AsyncStream.Continuation.yield(_:)();
  (v302[1])(v22, v116);
  (*(v297 + 8))(v115, v298);
  v118 = v323;
  v117 = v324;
  sub_10002CDC0(v322, v323);
  v119 = (*(*(v117 + 8) + 40))(v118);
  v69 = v308;
  v288 = v104;
  if (v119 != 8)
  {
    v121 = v323;
    v120 = v324;
    sub_10002CDC0(v322, v323);
    if ((*(*(v120 + 8) + 40))(v121) != 5)
    {
LABEL_60:
      v181 = v323;
      v180 = v324;
      sub_10002CDC0(v322, v323);
      if ((*(*(v180 + 8) + 40))(v181) == 8)
      {
        if ((sub_1004FE8E0(*&v304[v90]) & 1) == 0)
        {
          v182 = v323;
          v183 = v324;
          sub_10002CDC0(v322, v323);
          if (((*(v183 + 16))(v182, v183) & 1) != 0 || (v184 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI, swift_beginAccess(), v185 = v291, sub_10000FF90(&v104[v184], v291, &unk_100976120, &qword_1007F9260), LODWORD(v184) = (*(v307 + 48))(v185, 1, v69), sub_100005508(v185, &unk_100976120, &qword_1007F9260), v184 != 1))
          {
            sub_1002A9938(v322, &v318);
            v192 = v104;
            v193 = Logger.logObject.getter();
            v194 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v193, v194))
            {
              v195 = swift_slowAlloc();
              *v195 = 67109376;
              v196 = v320;
              v197 = v321;
              sub_10002CDC0(&v318, v320);
              v198 = (*(v197 + 16))(v196, v197) & 1;
              sub_10000C60C(&v318);
              *(v195 + 4) = v198;
              *(v195 + 8) = 1024;
              v199 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
              swift_beginAccess();
              v200 = a2;
              v201 = v90;
              v202 = v289;
              sub_10000FF90(&v192[v199], v289, &unk_100976120, &qword_1007F9260);
              v203 = v307;
              LODWORD(v199) = (*(v307 + 48))(v202, 1, v308) != 1;
              v204 = v202;
              v90 = v201;
              a2 = v200;
              sub_100005508(v204, &unk_100976120, &qword_1007F9260);
              *(v195 + 10) = v199;

              _os_log_impl(&_mh_execute_header, v193, v194, "Request arming UI as requested by Mac (%{BOOL}d) or ongoing unlock session during registration (%{BOOL}d)", v195, 0xEu);
              v69 = v308;
            }

            else
            {
              sub_10000C60C(&v318);

              v203 = v307;
            }

            sub_1006D05EC();
            v205 = *(v203 + 56);
            v206 = v294;
            v205(v294, 1, 1, v69);
            v207 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            sub_10000C788(v206, &v192[v207], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            goto LABEL_87;
          }
        }

        if (sub_1004FE8E0(*&v304[v90]))
        {
          v186 = v104;
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            *&v318 = v190;
            *v189 = 67109378;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              v191 = 1;
            }

            else
            {
              v191 = 0;
            }

            *(v189 + 4) = v191;

            *(v189 + 8) = 2080;
            v209 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            v210 = v307;
            v211 = v308;
            if ((*(v307 + 48))(&v186[v209], 1, v308))
            {
              v212 = 7104878;
              v213 = 0xE300000000000000;
            }

            else
            {
              v214 = *(v210 + 16);
              v304 = v190;
              v215 = v306;
              v214(v306, &v186[v209], v211);
              v303 = UUID.uuidString.getter();
              v213 = v216;
              v217 = v215;
              v190 = v304;
              (*(v210 + 8))(v217, v211);
              v212 = v303;
            }

            v218 = sub_10000C4E4(v212, v213, &v318);

            *(v189 + 10) = v218;
            _os_log_impl(&_mh_execute_header, v187, v188, "Calling back to delegate (exists: %{BOOL}d), for sessionID: %s", v189, 0x12u);
            sub_10000C60C(v190);

            v90 = v309;
            v208 = v292;
          }

          else
          {

            v208 = v292;
          }

          v219 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
          swift_beginAccess();
          sub_10000FF90(&v186[v219], v208, &unk_100976120, &qword_1007F9260);
          v220 = v307;
          v69 = v308;
          v221 = *(v307 + 48);
          if ((v221)(v208, 1, v308) == 1)
          {
            sub_100005508(v208, &unk_100976120, &qword_1007F9260);
          }

          else
          {
            v304 = v221;
            v222 = v290;
            (*(v220 + 32))(v290, v208, v69);
            v223 = v294;
            (*(v220 + 56))(v294, 1, 1, v69);
            swift_beginAccess();
            sub_10000C788(v223, &v186[v219], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v224 = sub_100010F88(11, 0, 0xE000000000000000);
              sub_100695FD8(v222, v224, v225);
              swift_unknownObjectRelease();

              (*(v220 + 8))(v222, v69);
            }

            else
            {
              v226 = v186;
              v227 = Logger.logObject.getter();
              v228 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v227, v228))
              {
                LODWORD(v303) = v228;
                v229 = swift_slowAlloc();
                v302 = swift_slowAlloc();
                *&v315 = v302;
                *v229 = 67109378;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  swift_unknownObjectRelease();
                  v230 = 1;
                }

                else
                {
                  v230 = 0;
                }

                v274 = v227;
                *(v229 + 4) = v230;

                *(v229 + 8) = 2080;
                v275 = v308;
                v276 = (v304)(&v186[v219], 1, v308);
                v90 = v309;
                if (v276)
                {
                  v277 = 7104878;
                  v278 = 0xE300000000000000;
                  v279 = v307;
                }

                else
                {
                  v280 = v306;
                  v281 = &v186[v219];
                  v279 = v307;
                  (*(v307 + 16))(v306, v281, v275);
                  v282 = UUID.uuidString.getter();
                  v278 = v283;
                  (*(v279 + 8))(v280, v275);
                  v277 = v282;
                }

                v284 = v290;
                v285 = sub_10000C4E4(v277, v278, &v315);

                *(v229 + 10) = v285;
                _os_log_impl(&_mh_execute_header, v274, v303, "Could not call back to delegate (exists: %{BOOL}d), for sessionID: %s", v229, 0x12u);
                sub_10000C60C(v302);

                (*(v279 + 8))(v284, v275);
                v69 = v275;
                goto LABEL_87;
              }

              (*(v307 + 8))(v290, v69);
            }

            v90 = v309;
          }
        }
      }

LABEL_87:
      v232 = v323;
      v231 = v324;
      sub_10002CDC0(v322, v323);
      if ((*(*(v231 + 8) + 40))(v232) != 8)
      {
        v234 = v323;
        v233 = v324;
        sub_10002CDC0(v322, v323);
        v235 = v306;
        (*(*(v233 + 8) + 32))(v234);
        sub_100695FD8(v235, 0, 0);
        (*(v307 + 8))(v235, v69);
      }

      sub_10000C60C(v322);
LABEL_90:
      v236 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
      v237 = *(v90 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
      v238 = SFDeviceClassCodeGet();
      v239 = sub_100027628(v237);
      v240 = sub_10000EF9C(8u, v239);

      if (v240)
      {
        if (!SFDeviceIsRealityDevice())
        {
LABEL_92:
          sub_1002A9938(v325, v322);
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            v308 = v243;
            v309 = swift_slowAlloc();
            v314 = v309;
            *v243 = 136315138;
            v244 = sub_10002CDC0(v322, v323);
            v245 = v69;
            v246 = v306;
            v247 = v307;
            (*(v307 + 16))(v306, *v244 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v245);
            sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
            v248 = v90;
            v249 = dispatch thunk of CustomStringConvertible.description.getter();
            v251 = v250;
            (*(v247 + 8))(v246, v245);
            sub_10000C60C(v322);
            v252 = v249;
            v90 = v248;
            v253 = sub_10000C4E4(v252, v251, &v314);

            v254 = v308;
            *(v308 + 1) = v253;
            _os_log_impl(&_mh_execute_header, v241, v242, "Removing session %s record", v254, 0xCu);
            sub_10000C60C(v309);
          }

          else
          {

            sub_10000C60C(v322);
          }

          v271 = v301;
          v272 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
          swift_beginAccess();
          sub_1000124A0(v90 + v272);
          swift_endAccess();
          v269 = &qword_100976308;
          v270 = &unk_1007F94E0;
          v268 = v271;
          goto LABEL_98;
        }
      }

      else
      {
        v255 = sub_100027628(v237);
        v256 = sub_10000EF9C(v238, v255);

        if (!v256)
        {
          goto LABEL_92;
        }
      }

      v257 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v258 = sub_1004FE08C(*(v90 + v236));
      sub_10000FF90(v90 + v300, v322, &qword_100982080, &unk_1007FDD30);
      v259 = sub_1005CCA8C(v258, v322);
      v261 = v260;
      v262 = swift_getObjectType();
      v263 = (*(v261 + 56))(v262, v261);
      v264 = *(v257 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v265 = __chkstk_darwin(v263);
      *(&v286 - 4) = v259;
      *(&v286 - 3) = v261;
      *(&v286 - 2) = v322;
      *(&v286 - 1) = v257;
      __chkstk_darwin(v265);
      *(&v286 - 2) = sub_100465400;
      *(&v286 - 1) = v266;
      os_unfair_lock_lock(v264 + 4);
      sub_1003206A8(v267);
      os_unfair_lock_unlock(v264 + 4);
      swift_unknownObjectRelease();
      v268 = v322;
      v269 = &qword_100982080;
      v270 = &unk_1007FDD30;
LABEL_98:
      sub_100005508(v268, v269, v270);
      return sub_10000C60C(v325);
    }
  }

  v123 = v323;
  v122 = v324;
  sub_10002CDC0(v322, v323);
  (*(*(v122 + 8) + 64))(&v315, v123);
  if (!*(&v316 + 1))
  {
    sub_100005508(&v315, &qword_100982080, &unk_1007FDD30);
    sub_1002A9938(v325, &v318);
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      *&v315 = v303;
      *v154 = 136315138;
      v155 = sub_10002CDC0(&v318, v320);
      v156 = v307;
      v157 = v90;
      v158 = v306;
      (*(v307 + 16))(v306, *v155 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v308);
      sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = v160;
      v162 = v158;
      v90 = v157;
      (*(v156 + 8))(v162, v308);
      sub_10000C60C(&v318);
      v163 = sub_10000C4E4(v159, v161, &v315);

      *(v154 + 4) = v163;
      _os_log_impl(&_mh_execute_header, v152, v153, "No peer device for session: %s", v154, 0xCu);
      sub_10000C60C(v303);
      v69 = v308;

      v104 = v288;

      goto LABEL_58;
    }

LABEL_57:
    sub_10000C60C(&v318);
LABEL_58:
    v174 = v323;
    v173 = v324;
    sub_10002CDC0(v322, v323);
    if ((*(*(v173 + 8) + 40))(v174) == 5)
    {
      v175 = v295;
      Date.init()();
      v176 = type metadata accessor for Date();
      (*(*(v176 - 8) + 56))(v175, 0, 1, v176);
      v177 = &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager];
      swift_beginAccess();
      v178 = *(v177 + 24);
      v179 = *(v177 + 32);
      sub_10002F5B4(v177, v178);
      (*(v179 + 16))(v175, v178, v179);
      swift_endAccess();
    }

    goto LABEL_60;
  }

  sub_1000121F8(&v315, &v318);
  v124 = v320;
  v125 = v321;
  sub_10002CDC0(&v318, v320);
  v126 = (*(v125 + 8))(v124, v125);
  if (!v127)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_1006D23E0(v126, v127);

  v128 = v320;
  v129 = v321;
  sub_10002CDC0(&v318, v320);
  v130 = (*(v129 + 8))(v128, v129);
  if (!v131)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v132 = v130;
  v133 = v131;
  swift_beginAccess();
  v134 = sub_10056CE1C(&v315, v132, v133);
  v136 = v135;
  v137 = type metadata accessor for RegistrationState(0);
  if (!(*(*(v137 - 8) + 48))(v136, 1, v137))
  {
    *(v136 + *(v137 + 20)) = 0;
  }

  (v134)(&v315, 0);
  swift_endAccess();

  sub_1002A9938(&v318, &v315);
  sub_1002A9938(&v318, v310);
  v104 = v288;
  v138 = v288;
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v139, v140))
  {

    sub_10000C60C(v310);
    sub_10000C60C(&v315);
    v90 = v309;
    goto LABEL_57;
  }

  v141 = swift_slowAlloc();
  v303 = swift_slowAlloc();
  v313[0] = v303;
  *v141 = 136315394;
  v143 = *(&v316 + 1);
  v142 = v317;
  sub_10002CDC0(&v315, *(&v316 + 1));
  v144 = (*(v142 + 8))(v143, v142);
  v146 = v145;

  if (v146)
  {
    v147 = v287;
    sub_10069F7E4(v144, v146, v287);

    v148 = type metadata accessor for Date();
    v149 = *(v148 - 8);
    if ((*(v149 + 48))(v147, 1, v148) == 1)
    {
      v150 = 0x676E697373696D3CLL;
      sub_100005508(v147, &qword_10097A7F0, &unk_1007FB600);
      v151 = 0xE90000000000003ELL;
    }

    else
    {
      v150 = Date.description.getter();
      v151 = v164;
      (*(v149 + 8))(v147, v148);
    }

    v90 = v309;
    sub_10000C60C(&v315);
    v165 = sub_10000C4E4(v150, v151, v313);

    *(v141 + 4) = v165;
    *(v141 + 12) = 2080;
    v166 = v311;
    v167 = v312;
    sub_10002CDC0(v310, v311);
    v168 = (*(v167 + 8))(v166, v167);
    if (v169)
    {
      v170 = v168;
    }

    else
    {
      v170 = 0xD000000000000015;
    }

    if (v169)
    {
      v171 = v169;
    }

    else
    {
      v171 = 0x8000000100789F30;
    }

    sub_10000C60C(v310);
    v172 = sub_10000C4E4(v170, v171, v313);

    *(v141 + 14) = v172;
    _os_log_impl(&_mh_execute_header, v139, v140, "Recording last registration date as %s for device: %s", v141, 0x16u);
    swift_arrayDestroy();

    v69 = v308;
    v104 = v288;
    goto LABEL_57;
  }

LABEL_113:
  sub_10000C60C(v310);
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_1004E52E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1004D7820();
}

uint64_t sub_1004E5318(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1004E53D0(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1004E5318(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1004E5480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1006D6364(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1004E5540()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_10000C60C((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1004E5588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1006D6220(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1004E5658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_1004D463C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1004E5770()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1004DA17C(v1, v2);
}

uint64_t sub_1004E57A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E5808(uint64_t a1)
{
  v4 = *(type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004D0D04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004E5900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004E5960()
{
  v1 = *(v0 + 16);
  sub_1004D1984();
  return sub_1004D1BE8();
}

uint64_t sub_1004E5988()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1004D2A30();
}

uint64_t sub_1004E5990()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1004D2760(v1);
}

uint64_t sub_1004E59BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1006D6220(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1004E5AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(**NameDropIdentity.shared.unsafeMutableAddressor() + 136);

  v10 = v8(v9);

  if (!v10)
  {
    if (qword_100973958 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_100980B28);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "User has no NameDrop identity, returning nil for myContactInfo", v30, 2u);
    }

    goto LABEL_21;
  }

  v11 = CNContact.boopDefaultHandle.getter();
  v13 = v12;
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    if (qword_100973958 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_100980B28);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "User's NameDrop identity has no handles, returning nil for myContactInfo", v34, 2u);
    }

LABEL_21:
    v35 = type metadata accessor for SFAirDrop.ContactInfo();
    v24 = *(*(v35 - 8) + 56);
    v25 = v35;
    v26 = a1;
LABEL_22:

    return v24(v26, 1, 1, v25);
  }

  v15 = v11;
  v45 = a1;
  v16 = CNContact.vCardForBoopingDefaultHandle()();
  if (v17 >> 60 == 15)
  {

    v18 = v45;
    if (qword_100973958 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100980B28);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "User's NameDrop identity could not be converted to a vCard, returning nil for myContactInfo", v22, 2u);
    }

    v23 = type metadata accessor for SFAirDrop.ContactInfo();
    v24 = *(*(v23 - 8) + 56);
    v25 = v23;
    v26 = v18;
    goto LABEL_22;
  }

  v44[2] = v16;
  v44[0] = CNContact.boopPresentedName.getter();
  v44[1] = v37;
  v38 = CNContact.boopDefaultHandleIsEmail.getter();
  v39 = [v1 myGivenName];
  v40 = v39;
  if (v38)
  {
    if (v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    *v7 = v15;
    v7[1] = v13;
    v41 = &enum case for SFAirDrop.ContactInfo.Handle.email(_:);
  }

  else
  {
    if (v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    *v7 = v15;
    v7[1] = v13;
    v41 = &enum case for SFAirDrop.ContactInfo.Handle.phone(_:);
  }

  (*(v4 + 104))(v7, *v41, v3);
  v42 = v45;
  SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)();

  v43 = type metadata accessor for SFAirDrop.ContactInfo();
  return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
}

id sub_1004E6014()
{
  v1 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v0, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v10 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_9:
    v13 = v10;
    v14 = v8;
    goto LABEL_10;
  }

  sub_1004E72B4(v8, v4);
  v11 = &v4[*(v1 + 56)];
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    v16 = *v11;
    v17 = objc_allocWithZone(PFMediaCapabilities);
    sub_100294008(v16, v12);
    sub_100294008(v16, v12);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = [v17 initWithOpaqueRepresentation:isa];

    sub_10028BCC0(v16, v12);
    sub_10032E5E4();
    if (v20)
    {
      v21 = String.lowercased()();

      v30 = v21;
      v29[10] = 6513005;
      v29[11] = 0xE300000000000000;
      sub_10001229C();
      v22 = StringProtocol.contains<A>(_:)();

      if ((v22 & 1) == 0)
      {
        sub_1002F96B0(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        sub_10028BCC0(v16, v12);
        return v19;
      }

      sub_10028088C(&qword_100981270, &qword_1008075E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      v24 = PFMediaCapabilitiesOutOfBandHintsPlatformKey;
      *(inited + 32) = PFMediaCapabilitiesOutOfBandHintsPlatformKey;
      v25 = objc_allocWithZone(NSNumber);
      v26 = v24;
      v27 = [v25 initWithInteger:1];
      *(inited + 64) = sub_1004E7318();
      *(inited + 40) = v27;
      sub_100281DB0(inited);
      swift_setDeallocating();
      sub_1004E7364(inited + 32);
      type metadata accessor for PFMediaCapabilitiesOutOfBandHintsKey(0);
      sub_1004E73CC(&qword_100974978, type metadata accessor for PFMediaCapabilitiesOutOfBandHintsKey);
      v28 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 setOutOfBandHints:v28];
    }

    sub_10028BCC0(v16, v12);
    sub_1002F96B0(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    return v19;
  }

  v13 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
  v14 = v4;
LABEL_10:
  sub_1002F96B0(v14, v13);
  return 0;
}

uint64_t sub_1004E63E0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100980B28);
  v1 = sub_10000C4AC(v0, qword_100980B28);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004E64A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004E6504(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _objc_release_x2();
}

uint64_t sub_1004E6514()
{
  sub_10004C60C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1004E6570(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1004E65B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  sub_1004E7244(a1, &v19 - v11);
  result = (*(v5 + 48))(v12, 1, v4);
  if (result == 1)
  {
    v14 = _swiftEmptyArrayStorage;
  }

  else
  {
    v16 = *(v5 + 32);
    v15 = v5 + 32;
    v16(v8, v12, v4);
    sub_10028088C(&qword_100976238, &qword_1008075E0);
    v17 = *(v15 + 40);
    v18 = (*(v15 + 48) + 32) & ~*(v15 + 48);
    v14 = swift_allocObject();
    *(v14 + 1) = xmmword_1007F5670;
    result = (v16)(v14 + v18, v8, v4);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_1004E6774()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1004E67D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1004E67EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004E68B4, v3, 0);
}

uint64_t sub_1004E68B4()
{
  v1 = v0[2];
  v2 = v0[3];
  UUID.init()();
  SFAirDropClient.BoopAtADistance.ServerInfo.init(applicationLabel:publicKeyData:bonjourUUID:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004E6940()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004E69CC@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_10028088C(&qword_100981248, &qword_1008075B8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = sub_10028088C(&qword_100981250, &unk_1008075C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - v6;
  v8 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  v12 = sub_10028088C(&qword_100981258, &unk_1008075D0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v19 - v15;
  v17 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  Just.init(_:)();
  sub_10028088C(&qword_100976218, &unk_1007F9370);
  Just.map<A>(_:)();
  sub_100011630(&qword_100981260, &qword_100981250, &unk_1008075C0);
  Publisher<>.values.getter();
  sub_100011630(&qword_100981268, &qword_100981248, &qword_1008075B8);
  SFNoThrowAsyncSequence.init<A>(_:)();
  (*(v4 + 8))(v7, v3);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1004E6D0C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_1004E6D9C()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v1 = result;
    v2 = [result deviceKeyBagLocked];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004E6DFC(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  sub_10002CDC0(a1, a1[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  if (qword_100973680 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v5 selector:a2 name:qword_1009A07D0 object:0];

  return swift_unknownObjectRelease();
}

uint64_t sub_1004E6ED4(void *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  sub_10002CDC0(a1, a1[3]);
  [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

  return swift_unknownObjectRelease();
}

uint64_t sub_1004E701C()
{
  v0 = type metadata accessor for SFPlatform();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SFAirDropUserDefaults();
  v6 = static SFAirDropUserDefaults.shared.getter();
  v7 = SFAirDropUserDefaults.walkAwayEnabled.getter();

  sub_10028088C(&qword_100981228, &qword_1008075A0);
  v8 = *(v1 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007F8830;
  static SFPlatform.iOS.getter();
  static SFPlatform.macOS.getter();
  static SFPlatform.visionOS.getter();
  v12[1] = v10;
  sub_1004E73CC(&qword_100981230, &type metadata accessor for SFPlatform);
  sub_10028088C(&qword_100981238, &qword_1008075A8);
  sub_100011630(&qword_100981240, &qword_100981238, &qword_1008075A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LOBYTE(v10) = static SFPlatform.isPlatform(_:)();
  (*(v2 + 8))(v5, v0);
  return (v7 & (SFDeviceClassCodeGet() != 4)) & v10;
}

uint64_t sub_1004E7244(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E72B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004E7318()
{
  result = qword_1009755C0;
  if (!qword_1009755C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009755C0);
  }

  return result;
}

uint64_t sub_1004E7364(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100974778, &unk_1008075F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004E73CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SDNearFieldTap()
{
  result = qword_1009812E8;
  if (!qword_1009812E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004E748C()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1002F2B90(319, qword_1009771F0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        sub_1002F2B90(319, &qword_100975790);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1004E75A8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [a1 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = type metadata accessor for SDNearFieldTap();
  v14 = (a4 + v13[5]);
  *v14 = v10;
  v14[1] = v12;
  v15 = [a1 contactID];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = (a4 + v13[6]);
  *v20 = v17;
  v20[1] = v19;
  v21 = sub_1001BC928(a1);
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = (a4 + v13[7]);
  *v26 = v23;
  v26[1] = v25;
  v27 = sub_1001BC98C(a1);
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = (a4 + v13[8]);
  *v32 = v29;
  v32[1] = v31;
  v33 = sub_1001BC9F0(a1);
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = (a4 + v13[9]);
  *v38 = v35;
  v38[1] = v37;
  v39 = [a1 applicationLabel];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = (a4 + v13[10]);
  *v43 = v40;
  v43[1] = v42;
  *(a4 + v13[12]) = [a1 isSameAccount];
  v44 = sub_1001BC8A8(a1);
  v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v48 = (a4 + v13[13]);
  *v48 = v45;
  v48[1] = v47;
  v49 = sub_1001BCA54(a1);
  v50 = a4 + v13[14];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  *(a4 + v13[16]) = [a1 shouldForceSingleBandAWDLMode];
  if (sub_1001BCAE8())
  {
    v51 = sub_1001BCB0C(a1);
  }

  else
  {
    v51 = 2;
  }

  *(a4 + v13[17]) = v51;
  if (sub_1001BCB5C())
  {
    v52 = sub_1001BCB80(a1);
  }

  else
  {
    v52 = 2;
  }

  *(a4 + v13[18]) = v52;
  v53 = [a1 flags];

  *(a4 + v13[19]) = v53 & 1;
  *(a4 + v13[11]) = a2 & 1;
  v54 = v13[15];
  v55 = type metadata accessor for UUID();
  v56 = *(*(v55 - 8) + 32);

  return v56(a4 + v54, a3, v55);
}

uint64_t sub_1004E78DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropClient.BoopAtADistance.TapEvent.date.getter();
  v11 = SFAirDropClient.BoopAtADistance.TapEvent.identifier.getter();
  v13 = v12;
  v14 = type metadata accessor for SDNearFieldTap();
  v15 = (a3 + v14[5]);
  *v15 = v11;
  v15[1] = v13;
  v16 = SFAirDropClient.BoopAtADistance.TapEvent.contactID.getter();
  v17 = (a3 + v14[6]);
  *v17 = v16;
  v17[1] = v18;
  v19 = SFAirDropClient.BoopAtADistance.TapEvent.deviceName.getter();
  v20 = (a3 + v14[7]);
  *v20 = v19;
  v20[1] = v21;
  v22 = SFAirDropClient.BoopAtADistance.TapEvent.deviceModel.getter();
  v23 = (a3 + v14[8]);
  *v23 = v22;
  v23[1] = v24;
  v25 = SFAirDropClient.BoopAtADistance.TapEvent.accountID.getter();
  v26 = (a3 + v14[9]);
  *v26 = v25;
  v26[1] = v27;
  v28 = SFAirDropClient.BoopAtADistance.TapEvent.applicationLabel.getter();
  v29 = (a3 + v14[10]);
  *v29 = v28;
  v29[1] = v30;
  *(a3 + v14[11]) = (SFAirDropClient.BoopAtADistance.Transaction.isInitiator.getter() & 1) == 0;
  *(a3 + v14[12]) = SFAirDropClient.BoopAtADistance.TapEvent.isSameAccount.getter() & 1;
  v31 = a3 + v14[15];
  SFAirDropClient.BoopAtADistance.Transaction.identifier.getter();
  SFAirDropClient.BoopAtADistance.TapEvent.remoteServerInfo.getter();
  v32 = SFAirDropClient.BoopAtADistance.ServerInfo.publicKeyData.getter();
  v34 = v33;
  v35 = *(v7 + 8);
  v35(v10, v6);
  v36 = (a3 + v14[13]);
  *v36 = v32;
  v36[1] = v34;
  SFAirDropClient.BoopAtADistance.TapEvent.remoteServerInfo.getter();
  v37 = a3 + v14[14];
  SFAirDropClient.BoopAtADistance.ServerInfo.bonjourUUID.getter();
  v35(v10, v6);
  *(a3 + v14[16]) = SFAirDropClient.BoopAtADistance.TapEvent.shouldForceSingleBandAWDLMode.getter() & 1;
  *(a3 + v14[17]) = SFAirDropClient.BoopAtADistance.TapEvent.isKnownIdentity.getter() & 1;
  LOBYTE(v32) = SFAirDropClient.BoopAtADistance.TapEvent.isUnsupportedApplicationLabel.getter();
  v38 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent();
  (*(*(v38 - 8) + 8))(a2, v38);
  v39 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction();
  result = (*(*(v39 - 8) + 8))(a1, v39);
  *(a3 + v14[18]) = v32 & 1;
  *(a3 + v14[19]) = 1;
  return result;
}

uint64_t sub_1004E7B84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v82 - v11;
  __chkstk_darwin(v10);
  v14 = &v82 - v13;
  v15 = type metadata accessor for SDNearFieldTap();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v82 - v20;
  sub_100337A04(a1);
  if (v22 || (sub_100337A1C(a1), v23))
  {
    v84 = v19;

    v24 = sub_100337A04(a1);
    v26 = v15;
    if (v25)
    {
      v27 = v24;
      v28 = v25;
      v83 = a1;
      if (qword_100973960 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000C4AC(v29, qword_100981278);
      sub_1004E9E1C(v2, v21);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v32 = 136315394;
        v33 = &v21[*(v15 + 20)];
        v82 = v27;
        v34 = v2;
        v35 = *v33;
        v36 = v33[1];

        sub_1004E9E80(v21);
        v37 = sub_10000C4E4(v35, v36, &v85);
        v26 = v15;

        *(v32 + 4) = v37;
        v2 = v34;
        v27 = v82;
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_10000C4E4(v27, v28, &v85);
        _os_log_impl(&_mh_execute_header, v30, v31, "SDAirDropNearFieldService Comparing tap with browser endpoint {tap: %s, endpointIdentifier: %s}", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004E9E80(v21);
      }

      v38 = (v2 + *(v26 + 20));
      a1 = v83;
      if (*v38 == v27 && v28 == v38[1])
      {
        goto LABEL_47;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        return 1;
      }
    }

    v40 = sub_100337A1C(a1);
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      if (qword_100973960 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000C4AC(v44, qword_100981278);
      v45 = v84;
      sub_1004E9E1C(v2, v84);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v83 = v42;
        v48 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v48 = 136315394;
        v49 = v45;
        v50 = (v45 + *(v26 + 24));
        if (v50[1])
        {
          v51 = *v50;
          v52 = v50[1];
        }

        else
        {
          v51 = 0xD000000000000015;
          v52 = 0x8000000100789F30;
        }

        sub_1004E9E80(v49);
        v77 = sub_10000C4E4(v51, v52, &v85);

        *(v48 + 4) = v77;
        *(v48 + 12) = 2080;
        v42 = v83;
        *(v48 + 14) = sub_10000C4E4(v83, v43, &v85);
        _os_log_impl(&_mh_execute_header, v46, v47, "SDAirDropNearFieldService Comparing tap with browser endpoint {tap: %s, endpointContactID: %s}", v48, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004E9E80(v45);
      }

      v78 = (v2 + *(v26 + 24));
      v79 = v78[1];
      if (v79)
      {
        if (*v78 == v42 && v79 == v43)
        {
LABEL_47:

          return 1;
        }

        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v81)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100973960 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000C4AC(v53, qword_100981278);
    v54 = v5[2];
    v54(v14, a1, v4);
    v54(v12, a1, v4);
    v54(v9, a1, v4);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      LODWORD(v83) = v56;
      v58 = v57;
      v84 = swift_slowAlloc();
      v85 = v84;
      *v58 = 136315650;
      v59 = sub_100337A34(v14);
      if (v60)
      {
        v61 = v59;
      }

      else
      {
        v61 = 0xD000000000000015;
      }

      if (v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = 0x8000000100789F30;
      }

      v82 = v55;
      v63 = v5[1];
      v63(v14, v4);
      v64 = sub_10000C4E4(v61, v62, &v85);

      *(v58 + 4) = v64;
      *(v58 + 12) = 2080;
      v65 = sub_100337A04(v12);
      if (v66)
      {
        v67 = v65;
      }

      else
      {
        v67 = 0xD000000000000015;
      }

      if (v66)
      {
        v68 = v66;
      }

      else
      {
        v68 = 0x8000000100789F30;
      }

      v63(v12, v4);
      v69 = sub_10000C4E4(v67, v68, &v85);

      *(v58 + 14) = v69;
      *(v58 + 22) = 2080;
      v70 = sub_100337A1C(v9);
      if (v71)
      {
        v72 = v70;
      }

      else
      {
        v72 = 0xD000000000000015;
      }

      if (v71)
      {
        v73 = v71;
      }

      else
      {
        v73 = 0x8000000100789F30;
      }

      v63(v9, v4);
      v74 = sub_10000C4E4(v72, v73, &v85);

      *(v58 + 24) = v74;
      v75 = v82;
      _os_log_impl(&_mh_execute_header, v82, v83, "SDAirDropNearFieldService Failed to get endpoint identifier from endpoint.deviceName:%s endpoint.deviceIdentifier:%s endpoint.contactID:%s ", v58, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v76 = v5[1];
      v76(v9, v4);
      v76(v12, v4);
      v76(v14, v4);
    }
  }

  return 0;
}

uint64_t sub_1004E83F0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981278);
  v1 = sub_10000C4AC(v0, qword_100981278);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1004E84B8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1004E858C()
{
  result = qword_100981358;
  if (!qword_100981358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981358);
  }

  return result;
}

unint64_t sub_1004E8B5C(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x614E656369766564;
      break;
    case 4:
      result = 0x6F4D656369766564;
      break;
    case 5:
      result = 0x49746E756F636361;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 1701869940;
      break;
    case 8:
      result = 0x6341656D61537369;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x746361736E617274;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0x496E776F6E4B7369;
      break;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1004E8D50(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100981380, &qword_1008077A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004E9F44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v41) = 0;
  type metadata accessor for Date();
  sub_1004EA040(&qword_10097FBE8, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for SDNearFieldTap();
  v12 = (v3 + v11[5]);
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v41) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = (v3 + v11[6]);
  v16 = *v15;
  v17 = v15[1];
  LOBYTE(v41) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v18 = (v3 + v11[7]);
  v19 = *v18;
  v20 = v18[1];
  LOBYTE(v41) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = (v3 + v11[8]);
  v22 = *v21;
  v23 = v21[1];
  LOBYTE(v41) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v24 = (v3 + v11[9]);
  v25 = *v24;
  v26 = v24[1];
  LOBYTE(v41) = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v27 = (v3 + v11[10]);
  v28 = *v27;
  v29 = v27[1];
  LOBYTE(v41) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v41) = *(v3 + v11[11]);
  v43 = 7;
  sub_1004E9FEC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v30 = *(v3 + v11[12]);
  LOBYTE(v41) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v31 = (v3 + v11[13]);
  v32 = v31[1];
  v41 = *v31;
  v42 = v32;
  v43 = 9;
  sub_100294008(v41, v32);
  sub_1002F3198();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v40 = v6;
  sub_100026AC0(v41, v42);
  v33 = v11[14];
  LOBYTE(v41) = 10;
  type metadata accessor for UUID();
  sub_1004EA040(&qword_1009772A8, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v34 = v11[15];
  LOBYTE(v41) = 11;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v35 = *(v3 + v11[16]);
  LOBYTE(v41) = 12;
  KeyedEncodingContainer.encode(_:forKey:)();
  v36 = *(v3 + v11[17]);
  LOBYTE(v41) = 13;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v37 = *(v3 + v11[18]);
  LOBYTE(v41) = 14;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v38 = *(v3 + v11[19]);
  LOBYTE(v41) = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v40 + 8))(v9, v5);
}

uint64_t sub_1004E924C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v86 = v3;
  v87 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v85 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v78 - v8;
  v10 = type metadata accessor for Date();
  v88 = *(v10 - 8);
  v11 = *(v88 + 64);
  __chkstk_darwin(v10);
  v90 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10028088C(&qword_100981368, &qword_100807798);
  v89 = *(v91 - 8);
  v13 = *(v89 + 64);
  __chkstk_darwin(v91);
  v15 = &v78 - v14;
  v16 = type metadata accessor for SDNearFieldTap();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004E9F44();
  v92 = v15;
  v21 = v93;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_10000C60C(a1);
  }

  v81 = v9;
  v82 = v16;
  v22 = v89;
  v93 = a1;
  v83 = v19;
  LOBYTE(v94) = 0;
  sub_1004EA040(&qword_10097FBD8, &type metadata accessor for Date);
  v23 = v90;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v83;
  (*(v88 + 32))(v83, v23, v10);
  LOBYTE(v94) = 1;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v80 = v10;
  v27 = v82;
  v28 = &v25[v82[5]];
  *v28 = v26;
  v28[1] = v29;
  LOBYTE(v94) = 2;
  v79 = 0;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = &v25[v27[6]];
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v94) = 3;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = &v25[v27[7]];
  *v34 = v33;
  v34[1] = v35;
  LOBYTE(v94) = 4;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = &v25[v27[8]];
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v94) = 5;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = &v25[v27[9]];
  *v40 = v39;
  v40[1] = v41;
  LOBYTE(v94) = 6;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = &v25[v27[10]];
  *v43 = v42;
  v43[1] = v44;
  v95 = 7;
  sub_1004E9F98();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v83[v27[11]] = v94;
  LOBYTE(v94) = 8;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v90 = 0;
  v83[v82[12]] = v45 & 1;
  v95 = 9;
  sub_1002F309C();
  v59 = v90;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v90 = v59;
  if (v59)
  {
    (*(v22 + 8))(v92, v91);
    v60 = 0;
    v61 = 0;
    LODWORD(v92) = 0;
    v62 = v93;
  }

  else
  {
    *&v83[v82[13]] = v94;
    LOBYTE(v94) = 10;
    sub_1004EA040(&qword_100977288, &type metadata accessor for UUID);
    v63 = v90;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v90 = v63;
    if (v63)
    {
      (*(v22 + 8))(v92, v91);
      v61 = 0;
      LODWORD(v92) = 0;
      v60 = 1;
      v62 = v93;
    }

    else
    {
      v64 = *(v87 + 32);
      v64(&v83[v82[14]], v81, v86);
      LOBYTE(v94) = 11;
      v65 = v90;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v90 = v65;
      if (v65)
      {
        (*(v22 + 8))(v92, v91);
        LODWORD(v92) = 0;
        v60 = 1;
        v61 = 1;
        v62 = v93;
      }

      else
      {
        v64(&v83[v82[15]], v85, v86);
        LOBYTE(v94) = 12;
        v66 = v90;
        v67 = KeyedDecodingContainer.decode(_:forKey:)();
        v90 = v66;
        if (!v66)
        {
          v83[v82[16]] = v67 & 1;
          LOBYTE(v94) = 13;
          v68 = v90;
          v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v90 = v68;
          if (!v68)
          {
            v83[v82[17]] = v69;
            LOBYTE(v94) = 14;
            v70 = v90;
            v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v90 = v70;
            if (!v70)
            {
              v83[v82[18]] = v71;
              LOBYTE(v94) = 15;
              v72 = v90;
              v73 = KeyedDecodingContainer.decode(_:forKey:)();
              v90 = v72;
              if (!v72)
              {
                v74 = v73;
                (*(v22 + 8))(v92, v91);
                v75 = v74 & 1;
                v77 = v83;
                v76 = v84;
                v83[v82[19]] = v75;
                sub_1004E9E1C(v77, v76);
                sub_10000C60C(v93);
                return sub_1004E9E80(v77);
              }
            }
          }
        }

        (*(v22 + 8))(v92, v91);
        v60 = 1;
        v61 = 1;
        LODWORD(v92) = 1;
        v62 = v93;
      }
    }
  }

  v46 = v88;
  v47 = v79;
  sub_10000C60C(v62);
  v48 = *(v46 + 8);
  v49 = v83;
  v48(v83, v80);
  if (!v47)
  {
    v56 = *&v49[v82[5] + 8];
  }

  v50 = v82;
  v51 = *&v49[v82[6] + 8];

  v57 = *&v49[v50[7] + 8];

  v52 = *&v49[v50[8] + 8];

  v58 = *&v49[v50[9] + 8];

  v53 = *&v49[v50[10] + 8];

  if (v60)
  {
    result = sub_100026AC0(*&v49[v50[13]], *&v49[v50[13] + 8]);
    if (v61)
    {
LABEL_9:
      v54 = v86;
      v55 = *(v87 + 8);
      result = v55(&v49[v50[14]], v86);
      if (v92)
      {
        return v55(&v49[v50[15]], v54);
      }

      return result;
    }
  }

  else if (v61)
  {
    goto LABEL_9;
  }

  if (v92)
  {
    v55 = *(v87 + 8);
    v54 = v86;
    return v55(&v49[v50[15]], v54);
  }

  return result;
}

uint64_t sub_1004E9D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004EA334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004E9D70(uint64_t a1)
{
  v2 = sub_1004E9F44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E9DAC(uint64_t a1)
{
  v2 = sub_1004E9F44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E9E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDNearFieldTap();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E9E80(uint64_t a1)
{
  v2 = type metadata accessor for SDNearFieldTap();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004E9EDC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009762D8, &qword_100807790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004E9F44()
{
  result = qword_100981370;
  if (!qword_100981370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981370);
  }

  return result;
}

unint64_t sub_1004E9F98()
{
  result = qword_100981378;
  if (!qword_100981378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981378);
  }

  return result;
}

unint64_t sub_1004E9FEC()
{
  result = qword_100981388;
  if (!qword_100981388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981388);
  }

  return result;
}

uint64_t sub_1004EA040(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004EA088()
{
  result = qword_100981390;
  if (!qword_100981390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDNearFieldTap.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDNearFieldTap.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004EA230()
{
  result = qword_100981398;
  if (!qword_100981398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981398);
  }

  return result;
}

unint64_t sub_1004EA288()
{
  result = qword_1009813A0;
  if (!qword_1009813A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009813A0);
  }

  return result;
}

unint64_t sub_1004EA2E0()
{
  result = qword_1009813A8;
  if (!qword_1009813A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009813A8);
  }

  return result;
}

uint64_t sub_1004EA334(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100793720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100793740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6341656D61537369 && a2 == 0xED0000746E756F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100793760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100793780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001007937A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x496E776F6E4B7369 && a2 == 0xEF797469746E6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001007937C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001007937E0 == a2)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1004EA84C(char a1)
{
  v2 = v1[3];
  if ((a1 & 1) == 0)
  {
    isEscapingClosureAtFileLocation = v2;
    v8 = 0;
    goto LABEL_5;
  }

  v3 = objc_opt_self();
  isEscapingClosureAtFileLocation = v2;
  v5 = [v3 tokenForCurrentProcess];
  [v5 realToken];
  v16 = v20;
  *v17 = aBlock;

  v6 = objc_allocWithZone(STActivityAttribution);
  aBlock = *v17;
  v20 = v16;
  v7 = [v6 initWithAuditToken:&aBlock];
  if (qword_100973970 != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v8 = [objc_allocWithZone(STStatusItemsStatusDomainStatusItemAttribution) initWithStatusItemIdentifier:qword_1009A0BC8 activityAttribution:v7];

LABEL_5:
    v18 = v1[2];
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1004EB060;
    *(v9 + 24) = v7;
    v21 = sub_1004EB068;
    v22 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v20 = sub_1004EAF20;
    *(&v20 + 1) = &unk_1008E53C0;
    v2 = _Block_copy(&aBlock);
    v10 = v8;

    v11 = isEscapingClosureAtFileLocation;

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v8;
    v21 = sub_1004EB090;
    v22 = v13;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v20 = sub_100011678;
    *(&v20 + 1) = &unk_1008E5438;
    v1 = _Block_copy(&aBlock);
    v14 = v10;

    [v18 updateVolatileData:v2 completion:v1];

    _Block_release(v1);
    _Block_release(v2);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  return result;
}

uint64_t sub_1004EAB70()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009813B0);
  v1 = sub_10000C4AC(v0, qword_1009813B0);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSString sub_1004EAC38()
{
  result = String._bridgeToObjectiveC()();
  qword_1009A0BC8 = result;
  return result;
}

id sub_1004EAC70(void *a1, id a2, void *a3, void *a4)
{
  if (a3)
  {
    v8 = qword_100973968;
    v9 = a3;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_1009813B0);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = a3;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "Removing attribution: %@", v14, 0xCu);
      sub_10028924C(v15);
    }

    [a1 removeAttribution:v11];
  }

  if (a4)
  {
    v17 = qword_100973968;
    v18 = a4;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_1009813B0);
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = a4;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Adding attribution: %@", v23, 0xCu);
      sub_10028924C(v24);
    }

    [a1 addAttribution:v20];
  }

  return [a2 setUserInitiated:1];
}

void sub_1004EAF20(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_1004EAF8C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);
    *(Strong + 24) = a2;
    v5 = a2;
  }
}

uint64_t sub_1004EAFFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004EB068()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1004EB0A0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981470);
  v1 = sub_10000C4AC(v0, qword_100981470);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004EB168(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[10];
  v8 = v3[11];
  v3[10] = a1;
  v3[11] = a2;
  v9 = v6;
  sub_1002A9924(a1, a2);
  sub_10028BCC0(v7, v8);
  v10 = v3[10];
  v11 = v3[11];
  if (v11 >> 60 == 15)
  {
    sub_10028BCC0(a1, a2);
  }

  else
  {
    v12 = type metadata accessor for __DataStorage();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_1002A9924(v10, v11);
    v21 = 0x2000000000;
    v22 = __DataStorage.init(length:)() | 0x4000000000000000;
    sub_1004ED714(v10, v11, v9, &v21);
    v15 = v21;
    v16 = v22;
    sub_100294008(v21, v22);
    sub_100026AC0(v15, v16);
    sub_10028BCC0(a1, a2);
    sub_10028BCC0(v10, v11);
    v10 = v15;
    v11 = v16;
  }

  v17 = (v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey);
  v18 = *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey);
  v19 = *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey + 8);
  *v17 = v10;
  v17[1] = v11;

  return sub_10028BCC0(v18, v19);
}

unint64_t sub_1004EB444()
{
  sub_10028088C(&qword_100978508, &unk_1007FB610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v2;
  *(inited + 72) = kSecAttrAccessGroup;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x8000000100788F10;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  *(inited + 120) = 0xD00000000000002CLL;
  *(inited + 128) = 0x8000000100793C40;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrService;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(inited + 160) = v3;
  *(inited + 168) = v4;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecUseDataProtectionKeychain;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v5 = kSecClass;
  v6 = kSecClassGenericPassword;
  v7 = kSecAttrAccessGroup;
  v8 = kSecAttrAccount;
  v9 = kSecAttrService;

  v10 = kSecUseDataProtectionKeychain;
  v11 = sub_100281720(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_100974638, &qword_1007FB620);
  swift_arrayDestroy();
  return v11;
}

unint64_t sub_1004EB5D4()
{
  sub_10028088C(&qword_100978508, &unk_1007FB610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v2;
  *(inited + 72) = kSecAttrAccessGroup;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x8000000100788F10;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  *(inited + 120) = 0xD00000000000002ALL;
  *(inited + 128) = 0x8000000100793C10;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrService;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(inited + 160) = v3;
  *(inited + 168) = v4;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecUseDataProtectionKeychain;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v5 = kSecClass;
  v6 = kSecClassGenericPassword;
  v7 = kSecAttrAccessGroup;
  v8 = kSecAttrAccount;
  v9 = kSecAttrService;

  v10 = kSecUseDataProtectionKeychain;
  v11 = sub_100281720(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_100974638, &qword_1007FB620);
  swift_arrayDestroy();
  return v11;
}

void *sub_1004EB764()
{
  result = String.utf8CString.getter();
  off_100981488 = result;
  return result;
}

void *sub_1004EB7A4()
{
  result = String.utf8CString.getter();
  off_100981490 = result;
  return result;
}

void sub_1004EB7E4()
{
  sub_1004EB444();
  type metadata accessor for CFString(0);
  sub_1004EDD68(&qword_100975630, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = SecItemDelete(isa);

  if (v1)
  {
    if (qword_100973978 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100981470);

    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412546;
      v6 = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v4 + 4) = v6;
      *v5 = v6;
      *(v4 + 12) = 1024;
      *(v4 + 14) = v1;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Failed to delete keychain item: %@, error: %d", v4, 0x12u);
      sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_1004EBA20()
{
  v1 = sub_1004EB2C4();
  v2 = (v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID);
  v3 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID + 8);
  *v2 = v1;
  v2[1] = v4;

  if (qword_100973978 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100981470);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_1004EB2C4();
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v9 = 0xD000000000000015;
      v11 = 0x8000000100789F30;
    }

    v12 = sub_10000C4E4(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Set invalidRegistrationID to %s", v7, 0xCu);
    sub_10000C60C(v8);
  }
}

uint64_t sub_1004EBBC8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_100294008(a1, a2);
  sub_1004EB168(a1, a2);
  v6 = v2[7];
  if (v6)
  {
    v7 = v3[6];
    sub_10028088C(&qword_100978508, &unk_1007FB610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007FA7E0;
    *(inited + 32) = kSecValueData;
    *(inited + 40) = a1;
    *(inited + 48) = a2;
    *(inited + 64) = &type metadata for Data;
    *(inited + 72) = kSecAttrAccessible;
    *(inited + 80) = v7;
    *(inited + 88) = v6;
    *(inited + 104) = &type metadata for String;
    *(inited + 112) = kSecAttrLabel;
    v9 = v3[3];
    v22 = v3[2];
    sub_100294008(a1, a2);

    v10 = kSecValueData;
    v11 = kSecAttrAccessible;
    v12 = kSecAttrLabel;
    v13._countAndFlagsBits = v22;
    v13._object = v9;
    String.append(_:)(v13);
    *(inited + 120) = 0x3A676E69676E6172;
    *(inited + 128) = 0xE900000000000020;
    *(inited + 144) = &type metadata for String;
    *(inited + 152) = kSecAttrIsInvisible;
    *(inited + 184) = &type metadata for Bool;
    *(inited + 160) = 1;
    v14 = kSecAttrIsInvisible;
    v15 = sub_100281720(inited);
    swift_setDeallocating();
    sub_10028088C(&qword_100974638, &qword_1007FB620);
    swift_arrayDestroy();
    v16 = sub_1004EB444();
    sub_10028776C(v16, v15);
  }

  else
  {
    v18 = sub_100010F88(10, 0xD00000000000002CLL, 0x8000000100793BE0);
    v20 = v19;
    sub_1000115C8();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    return swift_willThrow();
  }
}

void sub_1004EBE08(uint64_t a1, unint64_t a2)
{
  v3 = v2[12];
  v4 = v2[13];
  v2[12] = a1;
  v2[13] = a2;
  sub_100294008(a1, a2);
  sub_10028BCC0(v3, v4);
  v5 = [objc_allocWithZone(SDAutoUnlockEscrowSecretInfo) init];
  if (v5)
  {
    v6 = v5;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v6 setSecret:isa];

    v8 = [v6 data];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      v32 = v11;

      sub_10028088C(&qword_100978508, &unk_1007FB610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F8830;
      *(inited + 32) = kSecValueData;
      *(inited + 40) = v10;
      *(inited + 48) = v12;
      *(inited + 64) = &type metadata for Data;
      *(inited + 72) = kSecAttrAccessible;
      type metadata accessor for CFString(0);
      *(inited + 80) = kSecAttrAccessibleAfterFirstUnlock;
      *(inited + 104) = v14;
      *(inited + 112) = kSecAttrLabel;
      v15 = v2[3];
      v31 = v2[2];
      v16 = kSecValueData;
      sub_100294008(v10, v32);
      v17 = kSecAttrAccessible;
      v18 = kSecAttrAccessibleAfterFirstUnlock;
      v19 = kSecAttrLabel;
      v20._countAndFlagsBits = v31;
      v20._object = v15;
      String.append(_:)(v20);
      *(inited + 144) = &type metadata for String;
      *(inited + 120) = 0x203A776F72637365;
      *(inited + 128) = 0xE800000000000000;
      v21 = sub_100281720(inited);
      swift_setDeallocating();
      sub_10028088C(&qword_100974638, &qword_1007FB620);
      swift_arrayDestroy();
      v22 = sub_1004EB5D4();
      sub_10028776C(v22, v21);

      sub_100026AC0(v10, v32);
    }

    else
    {
      v27 = sub_100010F88(10, 0xD000000000000036, 0x8000000100793BA0);
      v29 = v28;
      sub_1000115C8();
      swift_allocError();
      *v30 = v27;
      *(v30 + 8) = v29;
      swift_willThrow();
    }
  }

  else
  {
    v23 = sub_100010F88(10, 0xD00000000000002DLL, 0x8000000100793B70);
    v25 = v24;
    sub_1000115C8();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    swift_willThrow();
  }
}

void sub_1004EC118()
{
  v1 = v0;
  sub_1004EB5D4();
  v2 = sub_100010858();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10028BCC0(v2, v4);
  }

  v21 = [objc_allocWithZone(SDAutoUnlockEscrowSecretInfo) initWithData:isa];

  if (v21 && (v6 = [v21 secret]) != 0)
  {
    v7 = v6;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v11 = *(v1 + 96);
  v12 = *(v1 + 104);
  *(v1 + 96) = v8;
  *(v1 + 104) = v10;
  sub_10028BCC0(v11, v12);
  if (qword_100973978 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100981470);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    sub_1002A9924(*(v1 + 96), *(v1 + 104));
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000C4E4(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Loaded escrow: %s", v16, 0xCu);
    sub_10000C60C(v17);
  }

  else
  {
  }
}

uint64_t sub_1004EC384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (qword_100973988 != -1)
  {
    swift_once();
  }

  v5 = *(off_100981490 + 2);
  if (qword_100973980 != -1)
  {
    swift_once();
  }

  v6 = *(off_100981488 + 2);
  return sub_1004ED8F8(a4);
}

void *sub_1004EC47C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_100026AC0(v0[8], v0[9]);
  sub_10028BCC0(v0[10], v0[11]);
  sub_10028BCC0(v0[12], v0[13]);
  v4 = v0[15];

  sub_100005508(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID, &unk_100976120, &qword_1007F9260);
  sub_100005508(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate, &qword_10097A7F0, &unk_1007FB600);
  sub_100005508(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID, &unk_100976120, &qword_1007F9260);
  sub_100005508(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate, &qword_10097A7F0, &unk_1007FB600);
  v5 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID + 8);

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey), *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey + 8));
  return v0;
}

uint64_t sub_1004EC58C()
{
  sub_1004EC47C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s9RemoteLTKCMa()
{
  result = qword_1009814D0;
  if (!qword_1009814D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004EC638()
{
  sub_1004EC778(319, &qword_100975F70, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1004EC778(319, &qword_10097DB80, &type metadata accessor for Date);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004EC778(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1004EC7CC()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v79 - v7;
  v85 = type metadata accessor for Date();
  v9 = *(v85 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v85);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v79 - v14;
  v15 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = type metadata accessor for UUID();
  v87 = *(v21 - 8);
  v88 = v21;
  v22 = *(v87 + 64);
  v23 = __chkstk_darwin(v21);
  v82 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v79 - v25;
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v93._countAndFlagsBits = 0xD000000000000015;
  v93._object = 0x8000000100793A50;
  String.append(_:)(*(v0 + 16));
  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x8000000100793A70;
  String.append(_:)(v27);
  v28 = *(v0 + 64);
  v29 = *(v0 + 72);
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    v31 = 0;
    if (v30 != 2)
    {
      goto LABEL_10;
    }

    v33 = v28 + 16;
    v28 = *(v28 + 16);
    v32 = *(v33 + 8);
    v34 = __OFSUB__(v32, v28);
    v31 = v32 - v28;
    if (!v34)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v31 = BYTE6(v29);
    goto LABEL_10;
  }

  v34 = __OFSUB__(HIDWORD(v28), v28);
  v35 = HIDWORD(v28) - v28;
  if (v34)
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v31 = v35;
LABEL_10:
  v80 = v13;
  v86 = v9;
  v92._countAndFlagsBits = v31;
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v36);

  v94 = v93;
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v93._countAndFlagsBits = 0xD000000000000010;
  v93._object = 0x8000000100793A90;
  String.append(_:)(*(v0 + 32));
  String.append(_:)(v93);

  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v37._object = 0x8000000100793AB0;
  v37._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v37);
  v38 = *(v0 + 88);
  v39 = v38 >> 60;
  if (v38 >> 60 == 15)
  {
    v40 = 0;
    v41 = v87;
  }

  else
  {
    v40 = *(v0 + 80);
    v53 = v38 >> 62;
    v41 = v87;
    if ((v38 >> 62) > 1)
    {
      if (v53 == 2)
      {
        v75 = v40 + 16;
        v73 = *(v40 + 16);
        v74 = *(v75 + 8);
        v34 = __OFSUB__(v74, v73);
        v40 = v74 - v73;
        if (v34)
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      if (v53)
      {
        goto LABEL_42;
      }

      v40 = BYTE6(v38);
    }
  }

  while (1)
  {
    v92._countAndFlagsBits = v40;
    LOBYTE(v92._object) = v39 > 0xE;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v42._countAndFlagsBits = 0x53776F7263736520;
    v42._object = 0xEC0000003D657A69;
    String.append(_:)(v42);
    v43 = *(v0 + 104);
    v39 = v43 >> 60;
    v83 = v6;
    if (v43 >> 60 == 15)
    {
LABEL_13:
      v40 = 0;
      goto LABEL_14;
    }

    v40 = *(v0 + 96);
    v53 = v43 >> 62;
    if ((v43 >> 62) <= 1)
    {
      break;
    }

LABEL_38:
    if (v53 != 2)
    {
      goto LABEL_13;
    }

    v78 = v40 + 16;
    v76 = *(v40 + 16);
    v77 = *(v78 + 8);
    v34 = __OFSUB__(v77, v76);
    v40 = v77 - v76;
    if (!v34)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_42:
    v34 = __OFSUB__(HIDWORD(v40), v40);
    LODWORD(v40) = HIDWORD(v40) - v40;
    if (v34)
    {
      goto LABEL_48;
    }

    v40 = v40;
  }

  if (v53)
  {
    v34 = __OFSUB__(HIDWORD(v40), v40);
    LODWORD(v40) = HIDWORD(v40) - v40;
    if (v34)
    {
      goto LABEL_49;
    }

    v40 = v40;
  }

  else
  {
    v40 = BYTE6(v43);
  }

LABEL_14:
  v92._countAndFlagsBits = v40;
  LOBYTE(v92._object) = v39 > 0xE;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v44._countAndFlagsBits = 0x676E697269617020;
  v44._object = 0xEB000000003D4449;
  String.append(_:)(v44);
  v92 = *(v0 + 112);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  String.append(_:)(v93);

  v45 = sub_1004EB2C4();
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v93._countAndFlagsBits = 0xD000000000000010;
    v93._object = 0x8000000100793B50;
    v49._countAndFlagsBits = v47;
    v49._object = v48;
    String.append(_:)(v49);

    String.append(_:)(v93);
  }

  v50 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  sub_10000FF90(v1 + v50, v20, &unk_100976120, &qword_1007F9260);
  v51 = *(v41 + 48);
  v52 = v88;
  if (v51(v20, 1, v88) == 1)
  {
    sub_100005508(v20, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    (*(v41 + 32))(v26, v20, v52);
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v92._countAndFlagsBits = 0xD000000000000011;
    v92._object = 0x8000000100793B30;
    sub_1004EDD68(&qword_100978CE0, &type metadata accessor for UUID);
    v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v54);

    String.append(_:)(v92);

    (*(v41 + 8))(v26, v52);
  }

  v55 = v86;
  v56 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
  swift_beginAccess();
  sub_10000FF90(v1 + v56, v8, &qword_10097A7F0, &unk_1007FB600);
  v57 = *(v55 + 48);
  v58 = v85;
  if (v57(v8, 1, v85) == 1)
  {
    sub_100005508(v8, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    v59 = v81;
    (*(v55 + 32))(v81, v8, v58);
    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v91._countAndFlagsBits = 0xD000000000000018;
    v91._object = 0x8000000100793B10;
    sub_1004EDD68(&qword_100983290, &type metadata accessor for Date);
    v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v60);

    String.append(_:)(v91);

    (*(v55 + 8))(v59, v58);
  }

  v61 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID;
  swift_beginAccess();
  v62 = v1 + v61;
  v63 = v84;
  sub_10000FF90(v62, v84, &unk_100976120, &qword_1007F9260);
  v64 = v88;
  if (v51(v63, 1, v88) == 1)
  {
    sub_100005508(v63, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    v65 = v87;
    v66 = v82;
    (*(v87 + 32))(v82, v63, v64);
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v90._countAndFlagsBits = 0xD000000000000017;
    v90._object = 0x8000000100793AF0;
    sub_1004EDD68(&qword_100978CE0, &type metadata accessor for UUID);
    v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v67);

    String.append(_:)(v90);

    (*(v65 + 8))(v66, v64);
  }

  v68 = v83;
  v69 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate;
  swift_beginAccess();
  sub_10000FF90(v1 + v69, v68, &qword_10097A7F0, &unk_1007FB600);
  if (v57(v68, 1, v58) == 1)
  {
    sub_100005508(v68, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    v70 = v86;
    v71 = v80;
    (*(v86 + 32))(v80, v68, v58);
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v89._countAndFlagsBits = 0xD000000000000017;
    v89._object = 0x8000000100793AD0;
    sub_1004EDD68(&qword_100983290, &type metadata accessor for Date);
    v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v72);

    String.append(_:)(v89);

    (*(v70 + 8))(v71, v58);
  }
}

uint64_t sub_1004ED380(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100981710, &qword_100807AE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004EE250();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + 2);
    v21 = v20;
    v19[23] = 2;
    sub_100320328(&v21, v19);
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v20, *(&v20 + 1));
    v15 = v3[6];
    v16 = v3[7];
    LOBYTE(v20) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004ED588()
{
  v1 = 0x696669746E656469;
  v2 = 0x654B64656E676973;
  if (*v0 != 2)
  {
    v2 = 0x49676E6972696170;
  }

  if (*v0)
  {
    v1 = 0x4449656369766564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1004ED618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004EDDC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004ED640(uint64_t a1)
{
  v2 = sub_1004EE250();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004ED67C(uint64_t a1)
{
  v2 = sub_1004EE250();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1004ED6B8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1004EDF3C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1004ED714(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v20, 0, 14);
      v6 = v20;
      v5 = v20;
      return sub_1004EC384(v6, v5, a3, a4);
    }

    v7 = a3;
    v8 = a4;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v11 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 += v9 - a1;
    }

    v12 = __OFSUB__(v10, v9);
    v13 = v10 - v9;
    if (!v12)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v20[0] = a1;
    LOWORD(v20[1]) = a2;
    BYTE2(v20[1]) = BYTE2(a2);
    BYTE3(v20[1]) = BYTE3(a2);
    BYTE4(v20[1]) = BYTE4(a2);
    BYTE5(v20[1]) = BYTE5(a2);
    v5 = v20 + BYTE6(a2);
    v6 = v20;
    return sub_1004EC384(v6, v5, a3, a4);
  }

  v14 = a1;
  v13 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = a3;
  v8 = a4;
  v11 = __DataStorage._bytes.getter();
  if (v11)
  {
    v15 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v15))
    {
      v11 += v14 - v15;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v16 = __DataStorage._length.getter();
  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v17 + v11);
  if (v11)
  {
    v5 = v18;
  }

  else
  {
    v5 = 0;
  }

  v6 = v11;
  a3 = v7;
  a4 = v8;
  return sub_1004EC384(v6, v5, a3, a4);
}

uint64_t sub_1004ED8F8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return CryptoHKDF();
    }

    sub_100026AC0(v3, v2);
    *a1 = xmmword_1007FAD30;
    sub_100026AC0(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_28;
    }

    if (!__OFSUB__(v6, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v7, v6))
      {
        __DataStorage._length.getter();
        result = CryptoHKDF();
        v8 = v2 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        *a1 = v3;
LABEL_20:
        a1[1] = v8;
        return result;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v4)
  {
    sub_100026AC0(v3, v2);
    LOWORD(v15) = v2;
    BYTE2(v15) = BYTE2(v2);
    HIBYTE(v15) = BYTE3(v2);
    LOBYTE(v16) = BYTE4(v2);
    HIBYTE(v16) = BYTE5(v2);
    result = CryptoHKDF();
    *a1 = v3;
    a1[1] = v15 | ((v16 | (BYTE6(v2) << 16)) << 32);
    return result;
  }

  v9 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100026AC0(v3, v2);
  *a1 = xmmword_1007FAD30;
  sub_100026AC0(0, 0xC000000000000000);
  v10 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v10 < v3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
    {
LABEL_26:
      __break(1u);
    }

    v11 = type metadata accessor for __DataStorage();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v9 = v14;
  }

  if (v10 < v3)
  {
    goto LABEL_22;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v3, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      CryptoHKDF();

      v8 = v9 | 0x4000000000000000;
      *a1 = v3;
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1004EDD68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004EDDC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B64656E676973 && a2 == 0xED00006174614479 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49676E6972696170 && a2 == 0xE900000000000044)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1004EDF3C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10028088C(&qword_100981700, &qword_100807AD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004EE250();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v32) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v12;
  LOBYTE(v32) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v26 + 1) = v14;
  *&v26 = v13;
  LOBYTE(v28) = 2;
  sub_1002F309C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v33;
  v25 = v32;
  v39 = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  v18 = v27;
  *&v28 = v11;
  *(&v28 + 1) = v27;
  v19 = v26;
  v29 = v26;
  v20 = v24;
  *&v30 = v25;
  *(&v30 + 1) = v24;
  *&v31 = v15;
  *(&v31 + 1) = v17;
  sub_1004EE2A4(&v28, &v32);
  sub_10000C60C(a1);
  v32 = v11;
  v33 = v18;
  v34 = __PAIR128__(*(&v26 + 1), v19);
  v35 = v25;
  v36 = v20;
  v37 = v15;
  v38 = v17;
  result = sub_1004EE2DC(&v32);
  v22 = v29;
  *a2 = v28;
  a2[1] = v22;
  v23 = v31;
  a2[2] = v30;
  a2[3] = v23;
  return result;
}

unint64_t sub_1004EE250()
{
  result = qword_100981708;
  if (!qword_100981708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981708);
  }

  return result;
}

unint64_t sub_1004EE320()
{
  result = qword_100981718;
  if (!qword_100981718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981718);
  }

  return result;
}

unint64_t sub_1004EE378()
{
  result = qword_100981720;
  if (!qword_100981720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981720);
  }

  return result;
}

unint64_t sub_1004EE3D0()
{
  result = qword_100981728;
  if (!qword_100981728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981728);
  }

  return result;
}

uint64_t sub_1004EE424()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981730);
  v1 = sub_10000C4AC(v0, qword_100981730);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004EE4EC(uint64_t a1)
{
  v2[133] = v1;
  v2[132] = a1;
  v3 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v2[134] = swift_task_alloc();
  v4 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v2[135] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();

  return _swift_task_switch(sub_1004EE5C8, v1, 0);
}

uint64_t sub_1004EE5C8()
{
  v75 = v0;
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  sub_1004F3F30();
  sub_10000FF90(v2, v0 + 696, &qword_1009819B8, &qword_100807D60);
  if (*(v0 + 720))
  {
    v3 = (v0 + 56);
    sub_1000121F8((v0 + 696), v0 + 56);
    if (qword_100973990 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100981730);
    sub_1002A9938(v0 + 56, v0 + 656);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v74[0] = v8;
      *v7 = 136315138;
      sub_1002A9938(v0 + 656, v0 + 16);
      sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      sub_10000C60C((v0 + 656));
      v12 = sub_10000C4E4(v9, v11, v74);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received input %s)", v7, 0xCu);
      sub_10000C60C(v8);
    }

    else
    {

      sub_10000C60C((v0 + 656));
    }

    v22 = *(v0 + 80);
    v23 = sub_10002CDC0((v0 + 56), v22);
    *(v0 + 880) = v22;
    v24 = sub_10002F604((v0 + 856));
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    sub_1004F492C(v0 + 856);
    v25 = *(v0 + 1064);
    sub_10000C60C((v0 + 856));
    sub_1002A9938(v25 + 112, v0 + 616);
    v26 = *(v0 + 640);
    v27 = *(v0 + 648);
    sub_10002CDC0((v0 + 616), v26);
    v28 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
    swift_beginAccess();
    sub_1002A9938(v25 + v28, v0 + 536);
    (*(v27 + 80))(v0 + 56, v0 + 536, v26, v27);
    sub_10000C60C((v0 + 536));
    sub_1000121F8((v0 + 576), v0 + 296);
    sub_10000C60C((v0 + 616));
    goto LABEL_18;
  }

  v13 = *(v0 + 1064);
  sub_100005508(v0 + 696, &qword_1009819B8, &qword_100807D60);
  v14 = v13[17];
  v15 = v13[18];
  v16 = sub_10002CDC0(v13 + 14, v14);
  v17 = *(v14 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  (*(v17 + 16))(v19, v16, v14);
  LOBYTE(v16) = (*(v15 + 16))(v14, v15);
  (*(v17 + 8))(v19, v14);

  if (v16)
  {
    v3 = (v0 + 256);
    sub_1002A9938((v13 + 14), v0 + 256);
    v20 = *(v0 + 280);
    v21 = *(v0 + 288);
    sub_10002CDC0((v0 + 256), v20);
    (*(v21 + 72))(v20, v21);
LABEL_18:
    sub_10000C60C(v3);
    v57 = *(v0 + 320);
    v58 = *(v0 + 328);
    sub_10002CDC0((v0 + 296), v57);
    v59 = (*(v58 + 16))(v57, v58);
    if ((v59 & 0x100000000) == 0)
    {
      v60 = v59;
      if (qword_100973990 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_10000C4AC(v61, qword_100981730);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 67109120;
        *(v64 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v62, v63, "Using userID for keybag: %u", v64, 8u);
      }
    }

    v65 = *(v0 + 1064);
    v66 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
    *(v0 + 1104) = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
    swift_beginAccess();
    sub_1004F43E0((v65 + v66), (v0 + 296));
    swift_endAccess();
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    v67 = *(v0 + 1064);
    v68 = *(v0 + 320);
    v69 = *(v0 + 328);
    sub_10002CDC0((v0 + 296), v68);
    v70 = (*(v69 + 16))(v68, v69);
    *(v0 + 1136) = v70;
    *(v0 + 1140) = BYTE4(v70) & 1;
    v71 = swift_task_alloc();
    *(v0 + 1112) = v71;
    *(v71 + 16) = v0 + 296;
    *(v71 + 24) = v67;
    sub_1004F48E4(&unk_100981990, type metadata accessor for SDAuthenticationSessionExecutor);
    v72 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];
    v73 = swift_task_alloc();
    *(v0 + 1120) = v73;
    *v73 = v0;
    v73[1] = sub_1004EF050;
    v77 = 56;
    v78 = &type metadata for () + 8;

    return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
  }

  v29 = *(v0 + 1064);
  v30 = *(v0 + 1056);
  v74[0] = 0;
  v74[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  *(v0 + 1016) = 0;
  *(v0 + 1024) = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD00000000000001CLL;
  v31._object = 0x8000000100793D20;
  String.append(_:)(v31);
  sub_1002A9938((v13 + 14), v0 + 136);
  sub_10002CDC0((v0 + 136), *(v0 + 160));
  swift_getDynamicType();
  sub_10000C60C((v0 + 136));
  v32._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v32);

  v33._object = 0x8000000100793D40;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  sub_10000FF90(v30, v0 + 176, &qword_1009819B8, &qword_100807D60);
  sub_10028088C(&qword_1009819B8, &qword_100807D60);
  v34._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0xD000000000000014;
  v35._object = 0x8000000100793D60;
  String.append(_:)(v35);
  v36 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
  swift_beginAccess();
  sub_1002A9938(v29 + v36, v0 + 216);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  _print_unlocked<A, B>(_:_:)();
  sub_10000C60C((v0 + 216));
  LODWORD(v36) = sub_100010F88(10, *(v0 + 1016), *(v0 + 1024));
  v38 = v37;
  sub_1000115C8();
  v39 = swift_allocError();
  *v40 = v36;
  *(v40 + 8) = v38;
  swift_willThrow();
  *(v0 + 1048) = v39;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v41 = *(v0 + 1064);

    sub_1004F1934(*(v0 + 1000), *(v0 + 1008));

    v42 = *(v0 + 1048);
  }

  else
  {
    v43 = *(v0 + 1048);

    *(v0 + 1040) = v39;
    swift_errorRetain();
    type metadata accessor for SFAuthenticationErrorCode(0);
    v44 = swift_dynamicCast();
    v45 = *(v0 + 1064);
    if (v44)
    {

      v46 = sub_100010F88(*(v0 + 1144), 0, 0xE000000000000000);
      sub_1004F1934(v46, v47);

      v48 = *(v0 + 1040);
    }

    else
    {
      v49 = *(v0 + 1040);

      *(v0 + 984) = 0;
      *(v0 + 992) = 0xE000000000000000;
      *(v0 + 1032) = v39;
      _print_unlocked<A, B>(_:_:)();
      v50 = sub_100010F88(10, *(v0 + 984), *(v0 + 992));
      sub_1004F1934(v50, v51);
    }
  }

  v52 = *(v0 + 1096);
  v53 = *(v0 + 1088);
  v54 = *(v0 + 1072);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1004EF050()
{
  v2 = *v1;
  v3 = *(*v1 + 1120);
  v8 = *v1;
  *(*v1 + 1128) = v0;

  v4 = *(v2 + 1112);
  if (v0)
  {
    v5 = *(v2 + 1064);

    v6 = sub_1004EFD10;
  }

  else
  {
    v5 = *(v2 + 1064);

    v6 = sub_1004EF17C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004EF17C()
{
  v98 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1064);
  swift_beginAccess();
  sub_1004F43E0((v2 + v1), (v0 + 296));
  swift_endAccess();
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_1004F48E4(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    v3 = swift_allocError();
    *v4 = 14;
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = *(v0 + 1096);
  v6 = *(v0 + 1064);
  v7 = v6[17];
  v8 = v6[18];
  v9 = sub_10002CDC0(v6 + 14, v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v7);
  (*(v8 + 24))(v7, v8);
  (*(v10 + 8))(v12, v7);

  sub_1002A9938(v0 + 296, v0 + 376);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&qword_1009819C0, &qword_100807D78);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 1128);
    v14 = *(v0 + 1096);
    sub_1000121F8((v0 + 416), v0 + 336);
    sub_1002A9938(v14, v0 + 736);
    v15 = sub_10002CDC0((v0 + 736), *(v0 + 760));
    v16 = *(v0 + 360);
    v17 = *(v0 + 368);
    sub_10002F5B4(v0 + 336, v16);
    v18 = (*(v17 + 8))(v16, v17);
    v3 = v13;
    v20 = *(v0 + 1096);
    if (v3)
    {
      sub_1004F4278(*(v0 + 1096));
      sub_10000C60C((v0 + 736));
      sub_10000C60C((v0 + 336));
LABEL_6:
      sub_10000C60C((v0 + 296));
      *(v0 + 1048) = v3;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      if (swift_dynamicCast())
      {
        v21 = *(v0 + 1064);

        sub_1004F1934(*(v0 + 1000), *(v0 + 1008));

        v22 = *(v0 + 1048);
      }

      else
      {
        v23 = *(v0 + 1048);

        *(v0 + 1040) = v3;
        swift_errorRetain();
        type metadata accessor for SFAuthenticationErrorCode(0);
        v24 = swift_dynamicCast();
        v25 = *(v0 + 1064);
        if (v24)
        {

          v26 = sub_100010F88(*(v0 + 1144), 0, 0xE000000000000000);
          sub_1004F1934(v26, v27);

          v28 = *(v0 + 1040);
        }

        else
        {
          v29 = *(v0 + 1040);

          *(v0 + 984) = 0;
          *(v0 + 992) = 0xE000000000000000;
          *(v0 + 1032) = v3;
          _print_unlocked<A, B>(_:_:)();
          v30 = sub_100010F88(10, *(v0 + 984), *(v0 + 992));
          sub_1004F1934(v30, v31);
        }
      }

      goto LABEL_44;
    }

    v32 = v18;
    v33 = v19;
    v34 = *(v0 + 1080);
    v35 = *(v0 + 360);
    v36 = *(v0 + 368);
    sub_10002CDC0((v0 + 336), v35);
    v37 = (*(v36 + 16))(v35, v36);
    v38 = *v15;
    v39 = sub_1004FE08C(*(v20 + *(v34 + 28)));
    if (qword_100973C48 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000C4AC(v40, qword_1009895D8);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v94 = v38;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v97[0] = v44;
      *v43 = 136315138;
      v45 = v39;
      v95 = v39;
      v96 = v37;
      v93 = v44;
      if (v39 <= 2u)
      {
        v46 = 0xEB0000000074656ELL;
        if (v45)
        {
          if (v45 == 1)
          {
            v46 = 0xE800000000000000;
            v47 = 0x6C61636F4C736469;
          }

          else
          {
            v47 = 0x7265746E49736469;
          }
        }

        else
        {
          v46 = 0xEB00000000746E65;
          v47 = 0x674179627261656ELL;
        }
      }

      else if (v39 > 4u)
      {
        if (v39 == 5)
        {
          v46 = 0x80000001007888E0;
          v47 = 0xD000000000000010;
        }

        else
        {
          v46 = 0xED000068746F6F74;
          v47 = 0x65756C4265726F63;
        }
      }

      else if (v39 == 3)
      {
        v46 = 0xE900000000000054;
        v47 = 0x4274726F70706172;
      }

      else
      {
        v46 = 0xEB000000004C4457;
        v47 = 0x4174726F70706172;
      }

      v48 = sub_10000C4E4(v47, v46, v97);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Using transport type %s", v43, 0xCu);
      sub_10000C60C(v93);

      v39 = v95;
      v37 = v96;
      v38 = v94;
    }

    else
    {
    }

    v49 = *(v38 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
    sub_1005CCC7C(v32, v33, v20 + 40, v37, v39);
    sub_100026AC0(v32, v33);
    sub_10000C60C((v0 + 736));
    sub_10000C60C((v0 + 336));
  }

  else
  {
    *(v0 + 448) = 0;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    sub_100005508(v0 + 416, &qword_1009819C8, &qword_100807D80);
  }

  sub_1002A9938(v0 + 296, v0 + 456);
  sub_10028088C(&qword_1009819D0, &qword_100807D88);
  if (swift_dynamicCast())
  {
    sub_10000C60C((v0 + 496));
    if (qword_100973990 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 1096);
    v51 = *(v0 + 1088);
    v52 = type metadata accessor for Logger();
    sub_10000C4AC(v52, qword_100981730);
    sub_1004F4880(v50, v51);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 1088);
    if (v55)
    {
      v57 = *(v0 + 1080);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v97[0] = v59;
      *v58 = 136315138;
      v60 = *(v57 + 24);
      type metadata accessor for UUID();
      sub_1004F48E4(&qword_100978CE0, &type metadata accessor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      sub_1004F4278(v56);
      v64 = sub_10000C4E4(v61, v63, v97);

      *(v58 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v53, v54, "sessionDidComplete for %s", v58, 0xCu);
      sub_10000C60C(v59);
    }

    else
    {

      sub_1004F4278(v56);
    }

    v66 = *(v0 + 1096);
    v78 = *(v0 + 1080);
    v79 = sub_10002CDC0(v66, v66[3]);
    v80 = *(v78 + 24);
    v81 = *v79;
    sub_1006D3D04(v66 + v80);
    goto LABEL_42;
  }

  sub_1002A9938(v0 + 296, v0 + 816);
  sub_10028088C(&qword_1009819D8, &qword_100807D90);
  v65 = swift_dynamicCast();
  v66 = *(v0 + 1096);
  v67 = *(v0 + 1072);
  v68 = *(v0 + 1064);
  if (!v65)
  {
    *(v0 + 808) = 0;
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0u;
    sub_100005508(v0 + 776, &unk_1009819E0, &qword_100807D98);
    v82 = *(v68 + 152);
    v83 = type metadata accessor for TaskPriority();
    (*(*(v83 - 8) + 56))(v67, 1, 1, v83);
    v84 = swift_allocObject();
    swift_weakInit();
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = 0;
    *(v85 + 32) = v82;
    *(v85 + 40) = v84;
    *(v85 + 48) = 12;
    v86 = sub_1002B281C(0, 0, v67, &unk_100807DA8, v85);
    v87 = *(v68 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_timer);
    *(v68 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_timer) = v86;

LABEL_42:
    sub_1004F4278(v66);
    goto LABEL_43;
  }

  sub_1000121F8((v0 + 776), v0 + 96);
  v69 = *(v0 + 120);
  v70 = *(v0 + 128);
  sub_10002CDC0((v0 + 96), v69);
  v71 = (*(v70 + 8))(v69, v70);
  v72 = *(v68 + 152);
  v73 = type metadata accessor for TaskPriority();
  (*(*(v73 - 8) + 56))(v67, 1, 1, v73);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  *(v75 + 32) = v72;
  *(v75 + 40) = v74;
  *(v75 + 48) = v71;
  v76 = sub_1002B281C(0, 0, v67, &unk_100807DB0, v75);
  v77 = *(v68 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_timer);
  *(v68 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_timer) = v76;

  sub_1004F4278(v66);
  sub_10000C60C((v0 + 96));
LABEL_43:
  sub_10000C60C((v0 + 296));
LABEL_44:
  v88 = *(v0 + 1096);
  v89 = *(v0 + 1088);
  v90 = *(v0 + 1072);

  v91 = *(v0 + 8);

  return v91();
}

uint64_t sub_1004EFD10()
{
  sub_10000C60C((v0 + 296));
  v1 = *(v0 + 1128);
  *(v0 + 1048) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1064);

    sub_1004F1934(*(v0 + 1000), *(v0 + 1008));

    v3 = *(v0 + 1048);
  }

  else
  {
    v4 = *(v0 + 1048);

    *(v0 + 1040) = v1;
    swift_errorRetain();
    type metadata accessor for SFAuthenticationErrorCode(0);
    v5 = swift_dynamicCast();
    v6 = *(v0 + 1064);
    if (v5)
    {

      v7 = sub_100010F88(*(v0 + 1144), 0, 0xE000000000000000);
      sub_1004F1934(v7, v8);

      v9 = *(v0 + 1040);
    }

    else
    {
      v10 = *(v0 + 1040);

      *(v0 + 984) = 0;
      *(v0 + 992) = 0xE000000000000000;
      *(v0 + 1032) = v1;
      _print_unlocked<A, B>(_:_:)();
      v11 = sub_100010F88(10, *(v0 + 984), *(v0 + 992));
      sub_1004F1934(v11, v12);
    }
  }

  v13 = *(v0 + 1096);
  v14 = *(v0 + 1088);
  v15 = *(v0 + 1072);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1004EFEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v5 = type metadata accessor for UUID();
  v3[24] = v5;
  v6 = *(v5 - 8);
  v3[25] = v6;
  v7 = *(v6 + 64) + 15;
  v3[26] = swift_task_alloc();
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v3[27] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_1004EFFE8, a3, 0);
}

uint64_t sub_1004EFFE8()
{
  v60 = v0;
  v1 = v0[22];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_10002CDC0(v1, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v8 = (*(v3 + 8))(v2, v3);
  v0[30] = v8;
  (*(v5 + 8))(v7, v2);

  v9 = *(v8 + 16);
  v0[31] = v9;
  if (v9)
  {
    v0[32] = 0;
    v10 = v0[30];
    if (*(v10 + 16))
    {
      sub_1002A9938(v10 + 32, (v0 + 2));
      if (qword_100973990 == -1)
      {
LABEL_4:
        v11 = v0[23];
        v12 = type metadata accessor for Logger();
        sub_10000C4AC(v12, qword_100981730);
        sub_1002A9938((v0 + 2), (v0 + 7));

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = v0[29];
          v16 = v0[26];
          v17 = v0[25];
          v53 = v0[27];
          v54 = v0[24];
          loga = v13;
          v18 = v0[23];
          v19 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v19 = 136315394;
          v21 = v18[17];
          v20 = v18[18];
          v22 = sub_10002CDC0(v18 + 14, v21);
          v55 = v14;
          v23 = *(v21 - 8);
          v24 = *(v23 + 64) + 15;
          v25 = swift_task_alloc();
          (*(v23 + 16))(v25, v22, v21);
          (*(v20 + 24))(v21, v20);
          (*(v23 + 8))(v25, v21);
          (*(v17 + 16))(v16, v15 + *(v53 + 24), v54);
          sub_1004F4278(v15);
          UUID.uuidString.getter();
          (*(v17 + 8))(v16, v54);
          sub_10054141C(8);

          v26 = static String._fromSubstring(_:)();
          v28 = v27;

          v29 = sub_10000C4E4(v26, v28, &v59);

          *(v19 + 4) = v29;
          *(v19 + 12) = 2080;
          sub_10002CDC0(v0 + 7, v0[10]);
          swift_getDynamicType();
          v30 = _typeName(_:qualified:)();
          v32 = v31;
          sub_10000C60C(v0 + 7);
          v33 = sub_10000C4E4(v30, v32, &v59);

          *(v19 + 14) = v33;
          _os_log_impl(&_mh_execute_header, loga, v55, "%s: Running step: %s", v19, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10000C60C(v0 + 7);
        }

        v39 = v0[28];
        v40 = v0[23];
        sub_1002A9938(v0[22], (v0 + 12));
        v41 = v0[15];
        v42 = sub_10002CDC0(v0 + 12, v41);
        v43 = v0[5];
        v56 = v42;
        log = v0[6];
        v44 = sub_10002CDC0(v0 + 2, v43);
        v45 = v40[17];
        v46 = v40[18];
        sub_10002CDC0(v40 + 14, v45);
        v47 = *(v45 - 8);
        v48 = *(v47 + 64) + 15;
        v49 = swift_task_alloc();
        v0[33] = v49;
        (*(v47 + 16))();
        (*(v46 + 24))(v45, v46);
        (*(v47 + 8))(v49, v45);
        v50 = swift_task_alloc();
        v0[34] = v50;
        *v50 = v0;
        v50[1] = sub_1004F0644;
        v51 = v0[28];
        v52 = v0[23];

        return sub_1004F1488((v0 + 17), v56, v44, v51, v43, v41, log);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  v35 = v0[28];
  v34 = v0[29];
  v36 = v0[26];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1004F0644()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  v2[35] = v0;

  v5 = v2[28];
  v6 = v2[23];
  if (v0)
  {
    v7 = v2[30];
    sub_1004F4278(v5);

    v8 = sub_1004F0D78;
  }

  else
  {
    v9 = v2[33];
    sub_1004F4278(v5);

    v8 = sub_1004F07A8;
  }

  return _swift_task_switch(v8, v6, 0);
}

uint64_t sub_1004F07A8()
{
  v56 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 176);
  v3 = *(v0 + 256) + 1;
  sub_10000C60C(v2);
  sub_1000121F8((v0 + 136), v2);
  sub_10000C60C((v0 + 96));
  sub_10000C60C((v0 + 16));
  if (v3 == v1)
  {
    v4 = *(v0 + 240);

    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 208);

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 256) + 1;
  *(v0 + 256) = v10;
  v11 = *(v0 + 240);
  if (v10 >= *(v11 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1002A9938(v11 + 40 * v10 + 32, v0 + 16);
  if (qword_100973990 != -1)
  {
LABEL_14:
    swift_once();
  }

  v12 = *(v0 + 184);
  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100981730);
  sub_1002A9938(v0 + 16, v0 + 56);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 232);
    v17 = *(v0 + 208);
    v18 = *(v0 + 200);
    v49 = *(v0 + 216);
    v50 = *(v0 + 192);
    loga = v14;
    v19 = *(v0 + 184);
    v20 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v20 = 136315394;
    v22 = v19[17];
    v21 = v19[18];
    v23 = sub_10002CDC0(v19 + 14, v22);
    v51 = v15;
    v24 = *(v22 - 8);
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    (*(v24 + 16))(v26, v23, v22);
    (*(v21 + 24))(v22, v21);
    (*(v24 + 8))(v26, v22);
    (*(v18 + 16))(v17, v16 + *(v49 + 24), v50);
    sub_1004F4278(v16);
    UUID.uuidString.getter();
    (*(v18 + 8))(v17, v50);
    sub_10054141C(8);

    v27 = static String._fromSubstring(_:)();
    v29 = v28;

    v30 = sub_10000C4E4(v27, v29, &v55);

    *(v20 + 4) = v30;
    *(v20 + 12) = 2080;
    sub_10002CDC0((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
    v31 = _typeName(_:qualified:)();
    v33 = v32;
    sub_10000C60C((v0 + 56));
    v34 = sub_10000C4E4(v31, v33, &v55);

    *(v20 + 14) = v34;
    _os_log_impl(&_mh_execute_header, loga, v51, "%s: Running step: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000C60C((v0 + 56));
  }

  v35 = *(v0 + 224);
  v36 = *(v0 + 184);
  sub_1002A9938(*(v0 + 176), v0 + 96);
  v37 = *(v0 + 120);
  v38 = sub_10002CDC0((v0 + 96), v37);
  v39 = *(v0 + 40);
  v52 = v38;
  log = *(v0 + 48);
  v40 = sub_10002CDC0((v0 + 16), v39);
  v41 = v36[17];
  v42 = v36[18];
  sub_10002CDC0(v36 + 14, v41);
  v43 = *(v41 - 8);
  v44 = *(v43 + 64) + 15;
  v45 = swift_task_alloc();
  *(v0 + 264) = v45;
  (*(v43 + 16))();
  (*(v42 + 24))(v41, v42);
  (*(v43 + 8))(v45, v41);
  v46 = swift_task_alloc();
  *(v0 + 272) = v46;
  *v46 = v0;
  v46[1] = sub_1004F0644;
  v47 = *(v0 + 224);
  v48 = *(v0 + 184);

  return sub_1004F1488(v0 + 136, v52, v40, v47, v39, v37, log);
}

uint64_t sub_1004F0D78()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[26];

  sub_10000C60C(v0 + 12);
  sub_10000C60C(v0 + 2);

  v5 = v0[1];
  v6 = v0[35];

  return v5();
}

uint64_t sub_1004F0E14()
{
  v1 = v0;
  v48 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v2 = *(*(v48 - 8) + 64);
  v3 = __chkstk_darwin(v48);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v43 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973990 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100981730);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v45 = v16;
    v46 = swift_slowAlloc();
    v53[0] = v46;
    *v16 = 136315138;
    v17 = v1[17];
    v18 = v1[18];
    v19 = sub_10002CDC0(v1 + 14, v17);
    v43 = &v43;
    v20 = *(v17 - 8);
    v47 = v5;
    v21 = v20;
    v22 = *(v20 + 64);
    __chkstk_darwin(v19);
    v44 = v15;
    v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    (*(v18 + 24))(v17, v18);
    (*(v21 + 8))(v24, v17);
    v5 = v47;
    (*(v9 + 16))(v12, &v7[*(v48 + 24)], v8);
    sub_1004F4278(v7);
    sub_1004F48E4(&qword_100978CE0, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v9 + 8))(v12, v8);
    v28 = sub_10000C4E4(v25, v27, v53);

    v29 = v45;
    *(v45 + 1) = v28;
    _os_log_impl(&_mh_execute_header, v14, v44, "Invalidating session %s", v29, 0xCu);
    sub_10000C60C(v46);
  }

  v30 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
  swift_beginAccess();
  sub_1002A9938(v1 + v30, &v51);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&qword_1009819A0, &qword_100807D48);
  if (swift_dynamicCast())
  {
    sub_1000121F8(v49, v53);
    v31 = v54;
    v32 = v55;
    sub_10002CDC0(v53, v54);
    (*(v32 + 16))(&v51, v31, v32);
    v33 = *sub_10002CDC0(&v51, v52);
    sub_100431124();
    sub_10000C60C(&v51);
    sub_10000C60C(v53);
  }

  else
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    sub_100005508(v49, &qword_1009819A8, &unk_100807D50);
  }

  v34 = v1[17];
  v35 = v1[18];
  v36 = sub_10002CDC0(v1 + 14, v34);
  v37 = *(v34 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v43 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v40);
  (*(v35 + 24))(v34, v35);
  (*(v37 + 8))(v40, v34);
  sub_10000FF90(&v5[*(v48 + 36)], &v51, &qword_1009819B0, &qword_100800360);
  if (v52)
  {
    sub_1004F4278(v5);
    sub_1000121F8(&v51, v53);
    v41 = *sub_10002CDC0(v53, v54);
    sub_1003FD950();
    return sub_10000C60C(v53);
  }

  else
  {
    sub_100005508(&v51, &qword_1009819B0, &qword_100800360);
    sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);

    return sub_1004F4278(v5);
  }
}

uint64_t sub_1004F1488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[11] = v11;
  v12 = *(v11 + 64) + 15;
  v8[12] = swift_task_alloc();
  v13 = *(a6 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004F15C4, v7, 0);
}

uint64_t sub_1004F15C4()
{
  v1 = v0[12];
  v2 = v0[10];
  v14 = v0[8];
  (*(v0[13] + 16))(v0[14], v0[3], v0[7]);
  swift_dynamicCast();
  v3 = *(v14 + 16);
  v13 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1004F1734;
  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v11, v6, v8, v9, v7);
}

uint64_t sub_1004F1734()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[9];

    return _swift_task_switch(sub_1004F18A8, v4, 0);
  }

  else
  {
    v5 = v3[14];
    (*(v3[11] + 8))(v3[12], v3[10]);

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1004F18A8()
{
  v1 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_1004F1934(unsigned int a1, uint64_t *a2)
{
  v3 = v2;
  v223 = a2;
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v207[-v7];
  v9 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v207[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v207[-v15];
  v17 = __chkstk_darwin(v14);
  v217 = &v207[-v18];
  __chkstk_darwin(v17);
  v218 = &v207[-v19];
  v222 = type metadata accessor for UUID();
  v220 = *(v222 - 8);
  v20 = *(v220 + 64);
  __chkstk_darwin(v222);
  v219 = &v207[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
  swift_beginAccess();
  sub_1002A9938(v3 + v22, &v226);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&qword_100981950, &qword_100807D08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v215 = v16;
    v225 = 0;
    memset(v224, 0, sizeof(v224));
    sub_100005508(v224, &qword_100981958, &unk_100807D10);
    goto LABEL_10;
  }

  sub_1000121F8(v224, v229);
  v23 = sub_10002CDC0(v229, v230);
  if (*(v23 + *(_s8KeyCheckV18InitialLockContextVMa(0) + 32)) != 1 || a1)
  {
    v215 = v16;
    sub_10000C60C(v229);
LABEL_10:
    v46 = swift_allocObject();
    sub_1002A9938(v3 + v22, v229);
    sub_10028088C(&unk_100981960, &qword_100800390);
    v47 = swift_dynamicCast();
    v221 = a1;
    v216 = v13;
    if (v47)
    {
      sub_1000121F8(&v226, v46 + 16);
      v48 = *(v46 + 40);
      v49 = *(v46 + 48);
      sub_10002F5B4(v46 + 16, v48);
      v50 = *(v49 + 32);
      v51 = v49;
      a1 = v221;
      v52 = v50(v229, v48, v51);
      *(v53 + 8) = a1;
      *(v53 + 12) = 0;
      v52(v229, 0);
      v54 = type metadata accessor for TaskPriority();
      (*(*(v54 - 8) + 56))(v8, 1, 1, v54);
      v55 = sub_1004F48E4(&unk_100981990, type metadata accessor for SDAuthenticationSessionExecutor);
      v56 = swift_allocObject();
      v56[2] = v3;
      v56[3] = v55;
      v56[4] = v46;
      v56[5] = v3;
      swift_retain_n();

      sub_1002B39A4(0, 0, v8, &unk_100807D40, v56);
    }

    else
    {
      v228 = 0;
      v226 = 0u;
      v227 = 0u;
      sub_100005508(&v226, &qword_10097BE90, &qword_100807D20);
      swift_deallocUninitializedObject();
    }

    sub_1002A9938(v3 + v22, v229);
    sub_10028088C(&unk_100981970, &unk_100807D28);
    v57 = swift_dynamicCast();
    v58 = v223;
    if (v57 && (sub_10000C60C(&v226), a1 == 12))
    {
      if (qword_100973990 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_10000C4AC(v59, qword_100981730);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        sub_1000115C8();
        swift_allocError();
        *v64 = 12;
        *(v64 + 8) = v58;

        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 4) = v65;
        *v63 = v65;
        _os_log_impl(&_mh_execute_header, v60, v61, "Not sending error: %@ to remote device because context should not send timeout errors", v62, 0xCu);
        sub_100005508(v63, &qword_100975400, &qword_1007F65D0);
      }

      v66 = 1;
    }

    else
    {
      v66 = 0;
    }

    v68 = v3[17];
    v67 = v3[18];
    v69 = sub_10002CDC0(v3 + 14, v68);
    v70 = *(v68 - 8);
    v71 = *(v70 + 64);
    __chkstk_darwin(v69);
    v73 = &v207[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v70 + 16))(v73);
    v74 = (*(v67 + 16))(v68, v67);
    (*(v70 + 8))(v73, v68);
    if (v66 & 1) != 0 || (v74)
    {
      goto LABEL_68;
    }

    v75 = [objc_allocWithZone(SDAuthenticationResponse) init];
    v76 = v75;
    if (v75)
    {
      [v75 setVersion:1];
      v77 = v3[17];
      v78 = v3[18];
      v79 = sub_10002CDC0(v3 + 14, v77);
      v212 = v207;
      v80 = v9;
      v81 = *(v77 - 8);
      v82 = *(v81 + 64);
      __chkstk_darwin(v79);
      v84 = &v207[-((v83 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v81 + 16))(v84);
      v85 = *(v78 + 24);
      v86 = v76;
      v214 = v3;
      v87 = v76;
      v88 = v218;
      v85(v77, v78);
      v58 = v223;
      (*(v81 + 8))(v84, v77);
      v9 = v80;
      v89 = v222;
      v90 = v220;
      v91 = v219;
      (*(v220 + 16))(v219, &v88[*(v9 + 24)], v222);
      v92 = v88;
      v76 = v87;
      v3 = v214;
      sub_1004F4278(v92);
      UUID.uuidString.getter();
      (*(v90 + 8))(v91, v89);
      v93 = String._bridgeToObjectiveC()();

      [v86 setSessionID:v93];

      [v86 setErrorCode:v221];
    }

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v58[2])
    {
      v96 = sub_100012854(v94, v95);
      v98 = v97;

      if (v98)
      {
        sub_10000C5B0(v58[7] + 32 * v96, v229);
        sub_1004F42D4();
        if (swift_dynamicCast())
        {
          v99 = v226;
          v100 = objc_opt_self();
          v229[0] = 0;
          v101 = v99;
          v102 = [v100 archivedDataWithRootObject:v101 requiringSecureCoding:1 error:v229];
          v103 = v229[0];
          if (v102)
          {
            v104 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v106 = v105;

            if (v76)
            {
              if (v106 >> 60 != 15)
              {
                v107 = v76;
                sub_1002A9924(v104, v106);
                v108.super.isa = Data._bridgeToObjectiveC()().super.isa;
                sub_10028BCC0(v104, v106);
LABEL_58:
                [v76 setUnderlyingError:v108.super.isa];

                sub_10028BCC0(v104, v106);
                goto LABEL_34;
              }

LABEL_57:
              v182 = v76;
              v108.super.isa = 0;
              goto LABEL_58;
            }
          }

          else
          {
            v181 = v103;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            v104 = 0;
            v106 = 0xF000000000000000;
            if (v76)
            {
              goto LABEL_57;
            }
          }

          sub_10028BCC0(v104, v106);
          goto LABEL_34;
        }
      }
    }

    else
    {
    }

    v101 = 0;
LABEL_34:
    if (qword_100973990 != -1)
    {
      swift_once();
    }

    v214 = type metadata accessor for Logger();
    v109 = sub_10000C4AC(v214, qword_100981730);

    v110 = v76;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v212 = v109;
      v115 = v114;
      *v113 = 138412546;
      sub_1000115C8();
      swift_allocError();
      *v116 = v221;
      *(v116 + 8) = v223;

      v117 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 4) = v117;
      *(v113 + 12) = 2112;
      *(v113 + 14) = v110;
      *v115 = v117;
      v115[1] = v76;
      v118 = v110;
      _os_log_impl(&_mh_execute_header, v111, v112, "Reporting error %@ to remote device as %@", v113, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();

      v58 = v223;
    }

    if (v76 && (v119 = [v110 data]) != 0)
    {
      v212 = v101;
      v120 = v119;
      v210 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v209 = v121;

      v122 = v3[17];
      v123 = v3[18];
      v124 = sub_10002CDC0(v3 + 14, v122);
      v211 = v207;
      v125 = *(v122 - 8);
      v126 = *(v125 + 64);
      __chkstk_darwin(v124);
      v128 = &v207[-((v127 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v125 + 16))(v128);
      v129 = v215;
      (*(v123 + 24))(v122, v123);
      (*(v125 + 8))(v128, v122);
      sub_1002A9938(v129, v229);
      sub_1004F4278(v129);
      v130 = sub_10002CDC0(v229, v230);
      v131 = v3[17];
      v132 = v3[18];
      v133 = sub_10002CDC0(v3 + 14, v131);
      v215 = v207;
      v134 = *(v131 - 8);
      v135 = *(v134 + 64);
      __chkstk_darwin(v133);
      v137 = &v207[-((v136 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v134 + 16))(v137);
      v138 = v216;
      (*(v132 + 24))(v131, v132);
      (*(v134 + 8))(v137, v131);
      sub_1002A9938(v138 + 40, &v226);
      sub_1004F4278(v138);
      v139 = v3[17];
      v140 = v3[18];
      v141 = sub_10002CDC0(v3 + 14, v139);
      v142 = *(v139 - 8);
      v143 = *(v142 + 64);
      __chkstk_darwin(v141);
      v145 = &v207[-((v144 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v142 + 16))(v145);
      v147 = (*(v140 + 8))(v139, v140);
      (*(v142 + 8))(v145, v139);
      v146 = *v130;
      LODWORD(v147) = sub_1004FE08C(v147);
      if (qword_100973C48 != -1)
      {
        swift_once();
      }

      sub_10000C4AC(v214, qword_1009895D8);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v148, v149))
      {
        v216 = v207;
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        *&v224[0] = v151;
        *v150 = 136315138;
        v208 = v147;
        if (v147 <= 2u)
        {
          v152 = 0xEB0000000074656ELL;
          if (v147)
          {
            if (v147 == 1)
            {
              v152 = 0xE800000000000000;
              v153 = 0x6C61636F4C736469;
            }

            else
            {
              v153 = 0x7265746E49736469;
            }
          }

          else
          {
            v152 = 0xEB00000000746E65;
            v153 = 0x674179627261656ELL;
          }
        }

        else if (v147 > 4u)
        {
          if (v147 == 5)
          {
            v152 = 0x80000001007888E0;
            v153 = 0xD000000000000010;
          }

          else
          {
            v152 = 0xED000068746F6F74;
            v153 = 0x65756C4265726F63;
          }
        }

        else if (v147 == 3)
        {
          v152 = 0xE900000000000054;
          v153 = 0x4274726F70706172;
        }

        else
        {
          v152 = 0xEB000000004C4457;
          v153 = 0x4174726F70706172;
        }

        v147 = sub_10000C4E4(v153, v152, v224);

        *(v150 + 4) = v147;
        _os_log_impl(&_mh_execute_header, v148, v149, "Using transport type %s", v150, 0xCu);
        sub_10000C60C(v151);

        v58 = v223;
        LOBYTE(v147) = v208;
      }

      else
      {
      }

      v183 = *(v146 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
      v184 = v210;
      v185 = v209;
      sub_1005CCC7C(v210, v209, &v226, 1u, v147);
      sub_100026AC0(v184, v185);

      sub_10000C60C(&v226);
      sub_10000C60C(v229);
    }

    else
    {
      v154 = v110;
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v159 = v76;
        v160 = v158;
        *v157 = 138412290;
        *(v157 + 4) = v154;
        *v158 = v159;
        v161 = v154;
        _os_log_impl(&_mh_execute_header, v155, v156, "Could not convert response to data: %@", v157, 0xCu);
        sub_100005508(v160, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }

LABEL_68:
    v186 = v3[17];
    v187 = v3[18];
    v188 = sub_10002CDC0(v3 + 14, v186);
    v189 = *(v186 - 8);
    v190 = *(v189 + 64);
    __chkstk_darwin(v188);
    v192 = &v207[-((v191 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v189 + 16))(v192);
    v193 = v218;
    (*(v187 + 24))(v186, v187);
    (*(v189 + 8))(v192, v186);
    sub_1002A9938(v193, v229);
    sub_1004F4278(v193);
    v194 = sub_10002CDC0(v229, v230);
    v195 = v3[17];
    v196 = v3[18];
    v197 = sub_10002CDC0(v3 + 14, v195);
    v198 = *(v195 - 8);
    v199 = *(v198 + 64);
    __chkstk_darwin(v197);
    v201 = &v207[-((v200 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v198 + 16))(v201);
    v202 = v217;
    (*(v196 + 24))(v195, v196);
    (*(v198 + 8))(v201, v195);
    v203 = v220;
    v204 = v219;
    v205 = v222;
    (*(v220 + 16))(v219, v202 + *(v9 + 24), v222);
    sub_1004F4278(v202);
    v206 = *v194;
    sub_1006D6440(v204, v221, v58);
    (*(v203 + 8))(v204, v205);
    return sub_10000C60C(v229);
  }

  if (qword_100973990 != -1)
  {
    swift_once();
  }

  v24 = v9;
  v25 = type metadata accessor for Logger();
  sub_10000C4AC(v25, qword_100981730);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v213 = v9;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    *&v226 = v223;
    *v29 = 136315138;
    v221 = v27;
    v30 = v3[17];
    v31 = v3[18];
    v32 = sub_10002CDC0(v3 + 14, v30);
    v216 = v207;
    v33 = *(v30 - 8);
    v34 = *(v33 + 64);
    __chkstk_darwin(v32);
    v36 = &v207[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v33 + 16))(v36);
    v37 = v218;
    (*(v31 + 24))(v30, v31);
    (*(v33 + 8))(v36, v30);
    v38 = v222;
    v39 = v220;
    v40 = v37 + *(v24 + 24);
    v41 = v219;
    (*(v220 + 16))(v219, v40, v222);
    sub_1004F4278(v37);
    sub_1004F48E4(&qword_100978CE0, &type metadata accessor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v39 + 8))(v41, v38);
    v45 = sub_10000C4E4(v42, v44, &v226);

    *(v29 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v26, v221, "ending early - sessionDidComplete for %s", v29, 0xCu);
    sub_10000C60C(v223);
  }

  else
  {

    v39 = v220;
    v41 = v219;
    v37 = v218;
  }

  v162 = v3[17];
  v163 = v3[18];
  v164 = sub_10002CDC0(v3 + 14, v162);
  v165 = *(v162 - 8);
  v166 = *(v165 + 64);
  __chkstk_darwin(v164);
  v168 = &v207[-((v167 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v165 + 16))(v168);
  (*(v163 + 24))(v162, v163);
  (*(v165 + 8))(v168, v162);
  sub_1002A9938(v37, &v226);
  sub_1004F4278(v37);
  v169 = sub_10002CDC0(&v226, *(&v227 + 1));
  v170 = v3[17];
  v171 = v3[18];
  v172 = sub_10002CDC0(v3 + 14, v170);
  v173 = *(v170 - 8);
  v174 = *(v173 + 64);
  __chkstk_darwin(v172);
  v176 = &v207[-((v175 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v173 + 16))(v176);
  v177 = v217;
  (*(v171 + 24))(v170, v171);
  (*(v173 + 8))(v176, v170);
  v178 = v222;
  (*(v39 + 16))(v41, v177 + *(v213 + 24), v222);
  sub_1004F4278(v177);
  v179 = *v169;
  sub_1006D3D04(v41);
  (*(v39 + 8))(v41, v178);
  sub_10000C60C(&v226);
  return sub_10000C60C(v229);
}

uint64_t sub_1004F3490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  v7 = *(*(type metadata accessor for SDAuthenticationCommonOperationInput() - 8) + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1004F3528, a5, 0);
}

uint64_t sub_1004F3528()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  swift_beginAccess();
  sub_1002A9938(v3 + 16, (v0 + 2));
  v4 = v0[5];
  v5 = sub_10002CDC0(v0 + 2, v4);
  v6 = v2[17];
  v7 = v2[18];
  sub_10002CDC0(v2 + 14, v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v0[14] = v10;
  (*(v8 + 16))();
  (*(v7 + 24))(v6, v7);
  (*(v8 + 8))(v10, v6);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1004F36F0;
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[10];

  return sub_1004F1488(v15, v5, v11, v13, &type metadata for SDAuthentication.Operation.RecordSessionFinished, v4, &off_10097BB00);
}

uint64_t sub_1004F36F0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *v1;

  if (v0)
  {
    v6 = v2 + 12;
    v4 = v2[12];
    v5 = v6[1];

    sub_1004F4278(v5);
    v7 = sub_1004F3898;
  }

  else
  {
    v8 = v2[13];
    v9 = v2[14];
    v4 = v2[12];
    sub_1004F4278(v8);

    v7 = sub_1004F3830;
  }

  return _swift_task_switch(v7, v4, 0);
}

uint64_t sub_1004F3830()
{
  sub_10000C60C(v0 + 2);
  v1 = v0[13];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004F3898()
{
  v1 = v0[14];
  v2 = v0[10];

  sub_10000C60C(v0 + 2);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004F3918(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 112) = a6;
  *(v6 + 48) = a5;
  *(v6 + 40) = a1;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1004F39E0, 0, 0);
}

uint64_t sub_1004F39E0()
{
  static Task<>.checkCancellation()();
  v1 = v0[9];
  v2 = v0[5];
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1004F3B08;
  v7 = v0[9];

  return sub_10002ED10(v3, v5, 0, 0, 1);
}

uint64_t sub_1004F3B08()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1004F3E48;
  }

  else
  {
    v6 = sub_1004F3C78;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004F3C78()
{
  v1 = *(v0 + 88);
  static Task<>.checkCancellation()();
  if (v1)
  {
    goto LABEL_2;
  }

  if (qword_100973990 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100981730);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Response timer fired", v8, 2u);
  }

  v9 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (!Strong)
  {
LABEL_2:
    v2 = *(v0 + 72);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 116) = sub_100010F88(*(v0 + 112), 0xD00000000000001ELL, 0x8000000100793DC0);
    *(v0 + 104) = v11;

    return _swift_task_switch(sub_1004F3EAC, Strong, 0);
  }
}

uint64_t sub_1004F3E48()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004F3EAC()
{
  v1 = *(v0 + 96);
  sub_1004F1934(*(v0 + 116), *(v0 + 104));

  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1004F3F30()
{
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_timer))
  {
    v1 = qword_100973990;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100981730);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Response timer cancelled", v5, 2u);
    }

    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    Task.cancel()();
  }
}

uint64_t sub_1004F4078()
{
  sub_10000C60C((v0 + 112));
  v1 = *(v0 + 160);
  swift_unknownObjectRelease();
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_responseTimerContinuation, &qword_100981A08, &qword_100807DD0);
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_timer);

  sub_10000C60C((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SDAuthenticationSessionExecutor()
{
  result = qword_100981790;
  if (!qword_100981790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004F414C()
{
  sub_1004F4214();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1004F4214()
{
  if (!qword_1009817A0[0])
  {
    sub_100280938(&qword_1009755D8, &qword_1007F8968);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_1009817A0);
    }
  }
}

uint64_t sub_1004F4278(uint64_t a1)
{
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004F42D4()
{
  result = qword_1009753F0;
  if (!qword_1009753F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009753F0);
  }

  return result;
}

uint64_t sub_1004F4320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_1004F3490(a1, v4, v5, v7, v6);
}

uint64_t *sub_1004F43E0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1004F45FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1004EFEE8(a1, v5, v4);
}

uint64_t sub_1004F46A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004F3918(v6, a1, v4, v5, v7, v8);
}

uint64_t sub_1004F4774()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 52);
}

uint64_t sub_1004F47B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_1004F3918(v6, a1, v4, v5, v7, v8);
}

uint64_t sub_1004F4880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAuthenticationCommonOperationInput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F48E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004F492C(uint64_t a1)
{
  sub_10000C5B0(a1, v17);
  if (swift_dynamicCast())
  {
    v3 = v13;
    v4 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      sub_1000115C8();
      swift_allocError();
      *v5 = v14;
      *(v5 + 8) = v4;
      swift_willThrow();

      sub_10028BCC0(v3, *(&v3 + 1));

      return;
    }

    sub_10028BCC0(v13, *(&v13 + 1));
  }

  sub_10000C5B0(a1, v16);
  sub_10028088C(&qword_1009819F8, &qword_100807DC0);
  if (swift_dynamicCast())
  {
    sub_1000121F8(&v13, v17);
    v6 = v18;
    v7 = v19;
    sub_10002CDC0(v17, v18);
    sub_1003FB088(v6, v7);
    if (!v1 && (static Task<>.isCancelled.getter() & 1) != 0)
    {
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_1004F48E4(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      *v8 = 14;
      swift_willThrow();
    }

    sub_10000C60C(v17);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_100005508(&v13, &qword_100981A00, &qword_100807DC8);
    if (qword_100973990 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100981730);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Message does not support error reporting", v12, 2u);
    }
  }
}
BOOL sub_1003510B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    return 1;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_pearlDevice);
    if (v6)
    {
      v7 = v6;

      v13 = 0;
      v5 = [v7 identitiesWithError:&v13];

      v8 = v13;
      if (!v5)
      {
        v12 = v13;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        return 0;
      }

      sub_1000276B4(0, &qword_10097A2A8, BKIdentity_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v9 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v11 != 0;
}

void sub_1003512A0(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator;
    v10 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = *(v9 + 8);

    v13 = v10(v12);
    sub_100015D04(v10);
    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }

    v14 = *(&v8->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator);
    if (v14 && (v15 = *(&v8[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator), v16 = , v17 = v14(v16), sub_100015D04(v14), v17 == 3))
    {
      (*(v3 + 16))(v6, a1, v2);
      v18 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes;
      v19 = *(&v8->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&v8->isa + v18) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_10028EAA4(0, *(v19 + 2) + 1, 1, v19);
        *(&v8->isa + v18) = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_10028EAA4(v21 > 1, v22 + 1, 1, v19);
      }

      *(v19 + 2) = v22 + 1;
      (*(v3 + 32))(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v6, v2);
      *(&v8->isa + v18) = v19;
      if (v22 >= 2)
      {
        sub_10057E950(0, 1);
      }
    }

    else
    {
LABEL_12:
      if (qword_100973660 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_10097A228);
      v24 = v8;
      v8 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 67109376;
        v27 = *v9;
        v28 = 1;
        if (*v9)
        {
          v29 = *(v9 + 8);

          v31 = v27(v30);
          sub_100015D04(v27);
          v28 = (v31 & 1) == 0;
        }

        *(v26 + 4) = v28;
        *(v26 + 8) = 1024;
        v32 = *(&v24->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator);
        if (v32)
        {
          v33 = *(&v24[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator);

          v35 = v32(v34);
          sub_100015D04(v32);
          v36 = v35 != 3;
        }

        else
        {
          v36 = 1;
        }

        *(v26 + 10) = v36;

        _os_log_impl(&_mh_execute_header, v8, v25, "Ignoring wake gesture because device is either locked (%{BOOL}d) or off wrist (%{BOOL}d)", v26, 0xEu);
      }

      else
      {

        v8 = v24;
      }
    }
  }
}

uint64_t sub_100351650()
{
  if (!sub_10005CF6C())
  {
    return 1;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

id sub_100351708()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v1 = result;
    v2 = [result deviceKeyBagState];

    return (v2 == 6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100351788()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097A228);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "### TESTING ONLY: pretendDeviceWaitingForGuestModeApproval is set, returning true", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8(v3);
}

uint64_t sub_100351944(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for AuthenticationSecurityRequest(0);
  v2[12] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100351AB4, 0, 0);
}

uint64_t sub_100351AB4()
{
  v207 = v0;
  v1 = *(v0 + 72);
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator + 8);

    v203 = v2(v4);
    sub_100015D04(v2);
    v1 = *(v0 + 72);
  }

  else
  {
    v203 = 0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8);

    v8 = v5(v7);
    sub_100015D04(v5);
    v1 = *(v0 + 72);
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 264) = v8 & 1;
  v9 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator + 8);

    v12 = v9(v11);
    sub_100015D04(v9);
    v198 = v12 ^ 1;
    v1 = *(v0 + 72);
  }

  else
  {
    v198 = 0;
  }

  v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator + 8);

    v16 = v13(v15);
    sub_100015D04(v13);
    v199 = v16 ^ 1;
    v1 = *(v0 + 72);
  }

  else
  {
    v199 = 1;
  }

  v17 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator);
  if (v17)
  {
    v18 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator + 8);

    v20 = v17(v19);
    sub_100015D04(v17);
    v21 = v20 ^ 1;
    v1 = *(v0 + 72);
  }

  else
  {
    v21 = 1;
  }

  *(v0 + 265) = v21 & 1;
  v22 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator);
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator + 8);

    v25 = v22(v24);
    sub_100015D04(v22);
    v1 = *(v0 + 72);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator);
  if (v26)
  {
    v27 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator + 8);

    v29 = v26(v28);
    sub_100015D04(v26);
    v1 = *(v0 + 72);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator);
  if (v30)
  {
    v31 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator + 8);

    v33 = v30(v32);
    sub_100015D04(v30);
    v1 = *(v0 + 72);
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator);
  if (v34)
  {
    v35 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator + 8);

    v37 = v34(v36);
    sub_100015D04(v34);
    v1 = *(v0 + 72);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator);
  if (v38)
  {
    v39 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator + 8);

    v41 = v38(v40);
    sub_100015D04(v38);
    v42 = v41 ^ 1;
    v1 = *(v0 + 72);
  }

  else
  {
    v42 = 1;
  }

  v43 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator;
  v44 = *v43;
  if (*v43)
  {
    v45 = *(v43 + 8);

    v47 = v44(v46);
    sub_100015D04(v44);
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v0 + 64);
  v49 = *v48;
  *(v0 + 176) = *v48;
  if (!(((v49 & 0x40) == 0) | v25 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v53 = 13;
LABEL_40:
    *v52 = v53;
LABEL_47:
    swift_willThrow();
LABEL_48:
    v55 = *(v0 + 160);
    v54 = *(v0 + 168);
    v57 = *(v0 + 144);
    v56 = *(v0 + 152);
    v58 = *(v0 + 136);
    v60 = *(v0 + 104);
    v59 = *(v0 + 112);
    v62 = *(v0 + 80);
    v61 = *(v0 + 88);

    v63 = *(v0 + 8);
LABEL_49:

    return v63();
  }

  if ((v49 & 1) != 0 && v203 != 3)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    if (v203 == 1)
    {
      v51 = 2;
    }

    else
    {
      v51 = 3;
    }

LABEL_46:
    *v50 = v51;
    goto LABEL_47;
  }

  if (!(((v49 & 2) == 0) | v8 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v53 = 4;
    goto LABEL_40;
  }

  if ((((v49 & 0x2000) != 0) & v8) == 1)
  {
    goto LABEL_43;
  }

  if (!(((v49 & 2) == 0) | v29 & 1) || !(((v49 & 0x800) == 0) | v29 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v53 = 5;
    goto LABEL_40;
  }

  if (!(((v49 & 0x80) == 0) | v42 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v53 = 26;
    goto LABEL_40;
  }

  if (!(((v49 & 0x100) == 0) | v33 & 1))
  {
LABEL_43:
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v53 = 21;
    goto LABEL_40;
  }

  if (!(((v49 & 0x8000) == 0) | v199 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v53 = 28;
    goto LABEL_40;
  }

  if (!(((v49 & 0x200) == 0) | v198 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v53 = 27;
    goto LABEL_40;
  }

  if (!(((v49 & 0x4000) == 0) | v37 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    if (v8)
    {
      v51 = 21;
    }

    else
    {
      v51 = 4;
    }

    goto LABEL_46;
  }

  if (!(((v49 & 0x20000) == 0) | v47 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v53 = 15;
    goto LABEL_40;
  }

  if ((v49 & 0x10000) != 0)
  {
    v65 = *(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator;
    v66 = *v65;
    *(v0 + 184) = *v65;
    *(v0 + 192) = *(v65 + 8);
    if (!v66)
    {
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v53 = 40;
      goto LABEL_40;
    }

    v204 = (v66 + *v66);
    v67 = v66[1];
    v68 = swift_task_alloc();
    *(v0 + 200) = v68;
    *v68 = v0;
    v69 = sub_100353228;
    goto LABEL_77;
  }

  if ((v49 & 0x80000) != 0)
  {
    v70 = *(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator;
    v71 = *v70;
    *(v0 + 208) = *v70;
    *(v0 + 216) = *(v70 + 8);
    if (!v71)
    {
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v53 = 43;
      goto LABEL_40;
    }

    v204 = (v71 + *v71);
    v72 = v71[1];
    v68 = swift_task_alloc();
    *(v0 + 224) = v68;
    *v68 = v0;
    v69 = sub_100354250;
LABEL_77:
    v68[1] = v69;
    goto LABEL_78;
  }

  if ((v49 & 8) != 0 && (*(v0 + 265) & 1) == 0)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v53 = 6;
    goto LABEL_40;
  }

  v73 = *(v0 + 160);
  v74 = *(v0 + 120);
  v75 = *(v0 + 128);
  v76 = *(v0 + 96);
  v77 = *(v0 + 72);
  sub_100355618(*(v0 + 168));
  v78 = *(v75 + 16);
  v78(v73, &v48[*(v76 + 20)], v74);
  v79 = static Date.< infix(_:_:)();
  if ((v49 & 4) != 0 && (v79 & 1) == 0)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v80 = *(v0 + 112);
    v81 = *(v0 + 64);
    v82 = *(v0 + 72);
    v83 = type metadata accessor for Logger();
    sub_10000C4AC(v83, qword_10097A228);
    sub_100356068(v81, v80);
    v84 = v82;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = *(v0 + 152);
      v89 = *(v0 + 120);
      v88 = *(v0 + 128);
      v200 = *(v0 + 112);
      v90 = *(v0 + 72);
      v91 = swift_slowAlloc();
      v206[0] = swift_slowAlloc();
      *v91 = 136315394;
      sub_100355618(v87);
      v92 = Date.description.getter();
      v94 = v93;
      (*(v88 + 8))(v87, v89);
      v95 = sub_10000C4E4(v92, v94, v206);

      *(v91 + 4) = v95;
      *(v91 + 12) = 2080;
      v96 = *(v76 + 20);
      sub_100013E70(&qword_100983290, &type metadata accessor for Date);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      sub_1003560CC(v200);
      v100 = sub_10000C4E4(v97, v99, v206);

      *(v91 + 14) = v100;
      v101 = "Local device unlocked (%s) is after remote device unlocked (%s)";
LABEL_88:
      _os_log_impl(&_mh_execute_header, v85, v86, v101, v91, 0x16u);
      swift_arrayDestroy();

LABEL_107:
      v134 = *(v0 + 160);
      v133 = *(v0 + 168);
      v135 = *(v0 + 120);
      v136 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v138 = 11;
LABEL_108:
      *v137 = v138;
      swift_willThrow();
      v139 = *(v136 + 8);
      v139(v134, v135);
      v139(v133, v135);
      goto LABEL_48;
    }

    v132 = *(v0 + 112);
    goto LABEL_106;
  }

  v103 = *(v0 + 160);
  v102 = *(v0 + 168);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    v111 = *(v0 + 168);
    v110 = *(v0 + 176);
    v112 = *(v0 + 160);
    Date.timeIntervalSince(_:)();
    if ((v110 & 0x1000) != 0 && fabs(v113) >= 1.0)
    {
      if (qword_100973660 != -1)
      {
        swift_once();
      }

      v114 = *(v0 + 104);
      v115 = *(v0 + 64);
      v116 = *(v0 + 72);
      v117 = type metadata accessor for Logger();
      sub_10000C4AC(v117, qword_10097A228);
      sub_100356068(v115, v114);
      v118 = v116;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v119 = *(v0 + 152);
        v121 = *(v0 + 120);
        v120 = *(v0 + 128);
        v201 = *(v0 + 104);
        v122 = *(v0 + 72);
        v91 = swift_slowAlloc();
        v206[0] = swift_slowAlloc();
        *v91 = 136315394;
        sub_100355618(v119);
        v123 = Date.description.getter();
        v125 = v124;
        (*(v120 + 8))(v119, v121);
        v126 = sub_10000C4E4(v123, v125, v206);

        *(v91 + 4) = v126;
        *(v91 + 12) = 2080;
        v127 = *(v76 + 20);
        sub_100013E70(&qword_100983290, &type metadata accessor for Date);
        v128 = dispatch thunk of CustomStringConvertible.description.getter();
        v130 = v129;
        sub_1003560CC(v201);
        v131 = sub_10000C4E4(v128, v130, v206);

        *(v91 + 14) = v131;
        v101 = "Local device unlocked (%s) is before remote device unlocked (%s)";
        goto LABEL_88;
      }

      v132 = *(v0 + 104);
LABEL_106:

      sub_1003560CC(v132);
      goto LABEL_107;
    }
  }

  v104 = *(v0 + 176);
  if ((v104 & 0x20) != 0)
  {
    v105 = *(v0 + 72);
    if (!sub_10034F8CC())
    {
      v134 = *(v0 + 160);
      v133 = *(v0 + 168);
      v135 = *(v0 + 120);
      v136 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v138 = 8;
      goto LABEL_108;
    }

    v104 = *(v0 + 176);
  }

  if ((v104 & 0x400) != 0 && (*(v0 + 264) & 1) == 0)
  {
    v106 = *(v0 + 72);
    if (!sub_10034FC18())
    {
      v134 = *(v0 + 160);
      v133 = *(v0 + 168);
      v135 = *(v0 + 120);
      v136 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v138 = 22;
      goto LABEL_108;
    }
  }

  Date.timeIntervalSinceNow.getter();
  v108 = v107;
  if (v107 >= -480.0)
  {
    v109 = 0;
LABEL_115:
    v147 = *(v0 + 72);
    v146 = v147 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
    if (*(v147 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions) == 1 && !v109)
    {
      if ((*(v0 + 176) & 0x10) != 0)
      {
LABEL_126:
        if (qword_100973660 != -1)
        {
          swift_once();
        }

        v164 = *(v0 + 72);
        v165 = type metadata accessor for Logger();
        sub_10000C4AC(v165, qword_10097A228);
        v166 = v164;
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.default.getter();
        v169 = os_log_type_enabled(v167, v168);
        v170 = *(v0 + 72);
        if (!v169)
        {

          v167 = v170;
LABEL_141:

          goto LABEL_142;
        }

        v171 = swift_slowAlloc();
        *v171 = 67109632;
        v172 = *(&v170->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
        v178 = 0;
        if (*(v172 + 16) == 2)
        {
          v173 = *(v0 + 152);
          v174 = *(v0 + 120);
          v175 = *(v0 + 128);
          v78(v173, (v172 + ((*(v175 + 80) + 32) & ~*(v175 + 80))), v174);
          Date.timeIntervalSinceNow.getter();
          v177 = v176;
          (*(v175 + 8))(v173, v174);
          if (v177 >= -480.0)
          {
            v178 = 1;
          }
        }

        v179 = *(v0 + 120);
        v180 = *(v0 + 128);
        v182 = *(v0 + 72);
        v181 = *(v0 + 80);
        *(v171 + 4) = v178;

        *(v171 + 8) = 1024;
        *(v171 + 10) = v108 >= -480.0;
        *(v171 + 14) = 1024;
        v183 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
        swift_beginAccess();
        sub_1002E4E88(v182 + v183, v181);
        if ((*(v180 + 48))(v181, 1, v179) == 1)
        {
          sub_100016C08(*(v0 + 80));
        }

        else
        {
          v185 = *(v0 + 128);
          v184 = *(v0 + 136);
          v186 = *(v0 + 120);
          (*(v185 + 32))(v184, *(v0 + 80), v186);
          Date.timeIntervalSinceNow.getter();
          v188 = v187;
          (*(v185 + 8))(v184, v186);
          if (v188 >= -480.0)
          {
            v189 = 1;
            goto LABEL_140;
          }
        }

        v189 = 0;
LABEL_140:
        v190 = *(v0 + 72);
        *(v171 + 16) = v189;

        _os_log_impl(&_mh_execute_header, v167, v168, "Skipping motion check because one of the following is true: hasEnoughWakeRaises = %{BOOL}d requestingDeviceUnlockedRecently = %{BOOL}d unlockedRecently = %{BOOL}d", v171, 0x14u);

        goto LABEL_141;
      }

LABEL_142:
      v191 = *(v0 + 168);
      v193 = *(v0 + 144);
      v192 = *(v0 + 152);
      v194 = *(v0 + 136);
      v195 = *(v0 + 120);
      v196 = *(v0 + 104);
      v202 = *(v0 + 88);
      v205 = *(v0 + 80);
      v197 = *(*(v0 + 128) + 8);
      v197(*(v0 + 160), v195);
      v197(v191, v195);

      v63 = *(v0 + 8);
      goto LABEL_49;
    }

    goto LABEL_119;
  }

  v140 = *(v0 + 120);
  v141 = *(v0 + 128);
  v142 = *(v0 + 88);
  v143 = *(v0 + 72);
  v144 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
  swift_beginAccess();
  sub_1002E4E88(v143 + v144, v142);
  if ((*(v141 + 48))(v142, 1, v140) != 1)
  {
    v148 = *(v0 + 144);
    v149 = *(v0 + 120);
    v150 = *(v0 + 128);
    (*(v150 + 32))(v148, *(v0 + 88), v149);
    Date.timeIntervalSinceNow.getter();
    v152 = v151;
    (*(v150 + 8))(v148, v149);
    v109 = v152 < -480.0;
    goto LABEL_115;
  }

  v145 = *(v0 + 72);
  sub_100016C08(*(v0 + 88));
  v146 = v145 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
  v147 = *(v0 + 72);
LABEL_119:
  *(v0 + 232) = v146;
  v153 = *(v147 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
  v154 = *(v0 + 176);
  if (*(v153 + 16) == 2)
  {
    v155 = *(v0 + 152);
    v156 = *(v0 + 120);
    v157 = *(v0 + 128);
    v78(v155, (v153 + ((*(v157 + 80) + 32) & ~*(v157 + 80))), v156);
    Date.timeIntervalSinceNow.getter();
    v159 = v158;
    (*(v157 + 8))(v155, v156);
    if ((v154 & 0x10) == 0)
    {
      goto LABEL_142;
    }

    if (v159 >= -480.0)
    {
      goto LABEL_126;
    }

    v147 = *(v0 + 72);
  }

  else if ((v154 & 0x10) == 0)
  {
    goto LABEL_142;
  }

  v160 = (v147 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator);
  v161 = *v160;
  *(v0 + 240) = *v160;
  if (!v161)
  {
    v134 = *(v0 + 160);
    v133 = *(v0 + 168);
    v135 = *(v0 + 120);
    v136 = *(v0 + 128);
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v138 = 7;
    goto LABEL_108;
  }

  *(v0 + 248) = v160[1];

  v204 = (v161 + *v161);
  v162 = v161[1];
  v163 = swift_task_alloc();
  *(v0 + 256) = v163;
  *v163 = v0;
  v163[1] = sub_100355154;
LABEL_78:

  return v204();
}

uint64_t sub_100353228(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v11 = *v2;

  if (v1)
  {
    v8 = v4 + 184;
    v7 = *(v4 + 184);
    v6 = *(v8 + 8);

    sub_100015D04(v7);
    v9 = sub_1003553A8;
  }

  else
  {
    *(v4 + 266) = a1 & 1;
    v9 = sub_100353364;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100353364()
{
  v155 = v0;
  v1 = *(v0 + 266);
  v2 = *(v0 + 192);
  sub_100015D04(*(v0 + 184));
  if ((v1 & 1) == 0)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v5 = 40;
    goto LABEL_7;
  }

  v3 = *(v0 + 176);
  if ((v3 & 0x80000) != 0)
  {
    v17 = *(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator;
    v18 = *v17;
    *(v0 + 208) = *v17;
    *(v0 + 216) = *(v17 + 8);
    if (!v18)
    {
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v5 = 43;
      goto LABEL_7;
    }

    v151 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 224) = v20;
    *v20 = v0;
    v20[1] = sub_100354250;
    goto LABEL_14;
  }

  if ((v3 & 8) != 0 && (*(v0 + 265) & 1) == 0)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v5 = 6;
LABEL_7:
    *v4 = v5;
    swift_willThrow();
LABEL_8:
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 136);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);

    v15 = *(v0 + 8);
LABEL_9:

    return v15();
  }

  v21 = *(v0 + 160);
  v22 = *(v0 + 120);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v26 = *(v0 + 64);
  v25 = *(v0 + 72);
  sub_100355618(*(v0 + 168));
  v152 = v24;
  v27 = *(v24 + 20);
  v28 = *(v23 + 16);
  v28(v21, v26 + v27, v22);
  v29 = static Date.< infix(_:_:)();
  if ((v3 & 4) != 0 && (v29 & 1) == 0)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 112);
    v31 = *(v0 + 64);
    v32 = *(v0 + 72);
    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_10097A228);
    sub_100356068(v31, v30);
    v34 = v32;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 152);
      v39 = *(v0 + 120);
      v38 = *(v0 + 128);
      v148 = *(v0 + 112);
      v40 = *(v0 + 72);
      v41 = swift_slowAlloc();
      v154[0] = swift_slowAlloc();
      *v41 = 136315394;
      sub_100355618(v37);
      v42 = Date.description.getter();
      v44 = v43;
      (*(v38 + 8))(v37, v39);
      v45 = sub_10000C4E4(v42, v44, v154);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = *(v152 + 20);
      sub_100013E70(&qword_100983290, &type metadata accessor for Date);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_1003560CC(v148);
      v50 = sub_10000C4E4(v47, v49, v154);

      *(v41 + 14) = v50;
      v51 = "Local device unlocked (%s) is after remote device unlocked (%s)";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v35, v36, v51, v41, 0x16u);
      swift_arrayDestroy();

LABEL_42:
      v84 = *(v0 + 160);
      v83 = *(v0 + 168);
      v85 = *(v0 + 120);
      v86 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v88 = 11;
LABEL_43:
      *v87 = v88;
      swift_willThrow();
      v89 = *(v86 + 8);
      v89(v84, v85);
      v89(v83, v85);
      goto LABEL_8;
    }

    v82 = *(v0 + 112);
    goto LABEL_41;
  }

  v53 = *(v0 + 160);
  v52 = *(v0 + 168);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    v61 = *(v0 + 168);
    v60 = *(v0 + 176);
    v62 = *(v0 + 160);
    Date.timeIntervalSince(_:)();
    if ((v60 & 0x1000) != 0 && fabs(v63) >= 1.0)
    {
      if (qword_100973660 != -1)
      {
        swift_once();
      }

      v64 = *(v0 + 104);
      v65 = *(v0 + 64);
      v66 = *(v0 + 72);
      v67 = type metadata accessor for Logger();
      sub_10000C4AC(v67, qword_10097A228);
      sub_100356068(v65, v64);
      v68 = v66;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v69 = *(v0 + 152);
        v71 = *(v0 + 120);
        v70 = *(v0 + 128);
        v149 = *(v0 + 104);
        v72 = *(v0 + 72);
        v41 = swift_slowAlloc();
        v154[0] = swift_slowAlloc();
        *v41 = 136315394;
        sub_100355618(v69);
        v73 = Date.description.getter();
        v75 = v74;
        (*(v70 + 8))(v69, v71);
        v76 = sub_10000C4E4(v73, v75, v154);

        *(v41 + 4) = v76;
        *(v41 + 12) = 2080;
        v77 = *(v152 + 20);
        sub_100013E70(&qword_100983290, &type metadata accessor for Date);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v79;
        sub_1003560CC(v149);
        v81 = sub_10000C4E4(v78, v80, v154);

        *(v41 + 14) = v81;
        v51 = "Local device unlocked (%s) is before remote device unlocked (%s)";
        goto LABEL_23;
      }

      v82 = *(v0 + 104);
LABEL_41:

      sub_1003560CC(v82);
      goto LABEL_42;
    }
  }

  v54 = *(v0 + 176);
  if ((v54 & 0x20) != 0)
  {
    v55 = *(v0 + 72);
    if (!sub_10034F8CC())
    {
      v84 = *(v0 + 160);
      v83 = *(v0 + 168);
      v85 = *(v0 + 120);
      v86 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v88 = 8;
      goto LABEL_43;
    }

    v54 = *(v0 + 176);
  }

  if ((v54 & 0x400) != 0 && (*(v0 + 264) & 1) == 0)
  {
    v56 = *(v0 + 72);
    if (!sub_10034FC18())
    {
      v84 = *(v0 + 160);
      v83 = *(v0 + 168);
      v85 = *(v0 + 120);
      v86 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v88 = 22;
      goto LABEL_43;
    }
  }

  Date.timeIntervalSinceNow.getter();
  v58 = v57;
  if (v57 < -480.0)
  {
    v90 = *(v0 + 120);
    v91 = *(v0 + 128);
    v92 = *(v0 + 88);
    v93 = *(v0 + 72);
    v94 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v93 + v94, v92);
    if ((*(v91 + 48))(v92, 1, v90) == 1)
    {
      v95 = *(v0 + 72);
      sub_100016C08(*(v0 + 88));
      v96 = v95 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
      v97 = *(v0 + 72);
      goto LABEL_54;
    }

    v98 = *(v0 + 144);
    v99 = *(v0 + 120);
    v100 = *(v0 + 128);
    (*(v100 + 32))(v98, *(v0 + 88), v99);
    Date.timeIntervalSinceNow.getter();
    v102 = v101;
    (*(v100 + 8))(v98, v99);
    v59 = v102 < -480.0;
  }

  else
  {
    v59 = 0;
  }

  v97 = *(v0 + 72);
  v96 = v97 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
  if (*(v97 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions) == 1 && !v59)
  {
    if ((*(v0 + 176) & 0x10) == 0)
    {
      goto LABEL_77;
    }

LABEL_61:
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v114 = *(v0 + 72);
    v115 = type metadata accessor for Logger();
    sub_10000C4AC(v115, qword_10097A228);
    v116 = v114;
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    v119 = os_log_type_enabled(v117, v118);
    v120 = *(v0 + 72);
    if (!v119)
    {

      v117 = v120;
LABEL_76:

      goto LABEL_77;
    }

    v121 = swift_slowAlloc();
    *v121 = 67109632;
    v122 = *(&v120->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
    v128 = 0;
    if (*(v122 + 16) == 2)
    {
      v123 = *(v0 + 152);
      v124 = *(v0 + 120);
      v125 = *(v0 + 128);
      v28(v123, v122 + ((*(v125 + 80) + 32) & ~*(v125 + 80)), v124);
      Date.timeIntervalSinceNow.getter();
      v127 = v126;
      (*(v125 + 8))(v123, v124);
      if (v127 >= -480.0)
      {
        v128 = 1;
      }
    }

    v129 = *(v0 + 120);
    v130 = *(v0 + 128);
    v132 = *(v0 + 72);
    v131 = *(v0 + 80);
    *(v121 + 4) = v128;

    *(v121 + 8) = 1024;
    *(v121 + 10) = v58 >= -480.0;
    *(v121 + 14) = 1024;
    v133 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v132 + v133, v131);
    if ((*(v130 + 48))(v131, 1, v129) == 1)
    {
      sub_100016C08(*(v0 + 80));
    }

    else
    {
      v135 = *(v0 + 128);
      v134 = *(v0 + 136);
      v136 = *(v0 + 120);
      (*(v135 + 32))(v134, *(v0 + 80), v136);
      Date.timeIntervalSinceNow.getter();
      v138 = v137;
      (*(v135 + 8))(v134, v136);
      if (v138 >= -480.0)
      {
        v139 = 1;
        goto LABEL_75;
      }
    }

    v139 = 0;
LABEL_75:
    v140 = *(v0 + 72);
    *(v121 + 16) = v139;

    _os_log_impl(&_mh_execute_header, v117, v118, "Skipping motion check because one of the following is true: hasEnoughWakeRaises = %{BOOL}d requestingDeviceUnlockedRecently = %{BOOL}d unlockedRecently = %{BOOL}d", v121, 0x14u);

    goto LABEL_76;
  }

LABEL_54:
  *(v0 + 232) = v96;
  v103 = *(v97 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
  v104 = *(v0 + 176);
  if (*(v103 + 16) == 2)
  {
    v105 = *(v0 + 152);
    v106 = *(v0 + 120);
    v107 = *(v0 + 128);
    v28(v105, v103 + ((*(v107 + 80) + 32) & ~*(v107 + 80)), v106);
    Date.timeIntervalSinceNow.getter();
    v109 = v108;
    (*(v107 + 8))(v105, v106);
    if ((v104 & 0x10) != 0)
    {
      if (v109 >= -480.0)
      {
        goto LABEL_61;
      }

      v97 = *(v0 + 72);
      goto LABEL_59;
    }

LABEL_77:
    v141 = *(v0 + 168);
    v143 = *(v0 + 144);
    v142 = *(v0 + 152);
    v144 = *(v0 + 136);
    v145 = *(v0 + 120);
    v146 = *(v0 + 104);
    v150 = *(v0 + 88);
    v153 = *(v0 + 80);
    v147 = *(*(v0 + 128) + 8);
    v147(*(v0 + 160), v145);
    v147(v141, v145);

    v15 = *(v0 + 8);
    goto LABEL_9;
  }

  if ((v104 & 0x10) == 0)
  {
    goto LABEL_77;
  }

LABEL_59:
  v110 = (v97 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator);
  v111 = *v110;
  *(v0 + 240) = *v110;
  if (!v111)
  {
    v84 = *(v0 + 160);
    v83 = *(v0 + 168);
    v85 = *(v0 + 120);
    v86 = *(v0 + 128);
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v88 = 7;
    goto LABEL_43;
  }

  *(v0 + 248) = v110[1];

  v151 = (v111 + *v111);
  v112 = v111[1];
  v113 = swift_task_alloc();
  *(v0 + 256) = v113;
  *v113 = v0;
  v113[1] = sub_100355154;
LABEL_14:

  return v151();
}

uint64_t sub_100354250(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v11 = *v2;

  if (v1)
  {
    v8 = v4 + 208;
    v7 = *(v4 + 208);
    v6 = *(v8 + 8);

    sub_100015D04(v7);
    v9 = sub_1003554E0;
  }

  else
  {
    *(v4 + 267) = a1 & 1;
    v9 = sub_10035438C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10035438C()
{
  v151 = v0;
  v1 = *(v0 + 267);
  v2 = *(v0 + 216);
  sub_100015D04(*(v0 + 208));
  if (v1 == 1)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v4 = 43;
LABEL_6:
    *v3 = v4;
    swift_willThrow();
LABEL_33:
    v76 = *(v0 + 160);
    v75 = *(v0 + 168);
    v78 = *(v0 + 144);
    v77 = *(v0 + 152);
    v79 = *(v0 + 136);
    v81 = *(v0 + 104);
    v80 = *(v0 + 112);
    v83 = *(v0 + 80);
    v82 = *(v0 + 88);

    v84 = *(v0 + 8);
LABEL_34:

    return v84();
  }

  v5 = *(v0 + 176);
  if ((v5 & 8) != 0 && (*(v0 + 265) & 1) == 0)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v4 = 6;
    goto LABEL_6;
  }

  v6 = *(v0 + 160);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 96);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  sub_100355618(*(v0 + 168));
  v147 = v9;
  v12 = *(v9 + 20);
  v13 = *(v8 + 16);
  v13(v6, v11 + v12, v7);
  v14 = static Date.< infix(_:_:)();
  if ((v5 & 4) != 0 && (v14 & 1) == 0)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 112);
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_10097A228);
    sub_100356068(v16, v15);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 152);
      v24 = *(v0 + 120);
      v23 = *(v0 + 128);
      v144 = *(v0 + 112);
      v25 = *(v0 + 72);
      v26 = swift_slowAlloc();
      v150[0] = swift_slowAlloc();
      *v26 = 136315394;
      sub_100355618(v22);
      v27 = Date.description.getter();
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_10000C4E4(v27, v29, v150);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = *(v147 + 20);
      sub_100013E70(&qword_100983290, &type metadata accessor for Date);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1003560CC(v144);
      v35 = sub_10000C4E4(v32, v34, v150);

      *(v26 + 14) = v35;
      v36 = "Local device unlocked (%s) is after remote device unlocked (%s)";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v20, v21, v36, v26, 0x16u);
      swift_arrayDestroy();

LABEL_31:
      v69 = *(v0 + 160);
      v68 = *(v0 + 168);
      v70 = *(v0 + 120);
      v71 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v73 = 11;
LABEL_32:
      *v72 = v73;
      swift_willThrow();
      v74 = *(v71 + 8);
      v74(v69, v70);
      v74(v68, v70);
      goto LABEL_33;
    }

    v67 = *(v0 + 112);
    goto LABEL_30;
  }

  v38 = *(v0 + 160);
  v37 = *(v0 + 168);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    v46 = *(v0 + 168);
    v45 = *(v0 + 176);
    v47 = *(v0 + 160);
    Date.timeIntervalSince(_:)();
    if ((v45 & 0x1000) != 0 && fabs(v48) >= 1.0)
    {
      if (qword_100973660 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 104);
      v50 = *(v0 + 64);
      v51 = *(v0 + 72);
      v52 = type metadata accessor for Logger();
      sub_10000C4AC(v52, qword_10097A228);
      sub_100356068(v50, v49);
      v53 = v51;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v54 = *(v0 + 152);
        v56 = *(v0 + 120);
        v55 = *(v0 + 128);
        v145 = *(v0 + 104);
        v57 = *(v0 + 72);
        v26 = swift_slowAlloc();
        v150[0] = swift_slowAlloc();
        *v26 = 136315394;
        sub_100355618(v54);
        v58 = Date.description.getter();
        v60 = v59;
        (*(v55 + 8))(v54, v56);
        v61 = sub_10000C4E4(v58, v60, v150);

        *(v26 + 4) = v61;
        *(v26 + 12) = 2080;
        v62 = *(v147 + 20);
        sub_100013E70(&qword_100983290, &type metadata accessor for Date);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        sub_1003560CC(v145);
        v66 = sub_10000C4E4(v63, v65, v150);

        *(v26 + 14) = v66;
        v36 = "Local device unlocked (%s) is before remote device unlocked (%s)";
        goto LABEL_13;
      }

      v67 = *(v0 + 104);
LABEL_30:

      sub_1003560CC(v67);
      goto LABEL_31;
    }
  }

  v39 = *(v0 + 176);
  if ((v39 & 0x20) != 0)
  {
    v40 = *(v0 + 72);
    if (!sub_10034F8CC())
    {
      v69 = *(v0 + 160);
      v68 = *(v0 + 168);
      v70 = *(v0 + 120);
      v71 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v73 = 8;
      goto LABEL_32;
    }

    v39 = *(v0 + 176);
  }

  if ((v39 & 0x400) != 0 && (*(v0 + 264) & 1) == 0)
  {
    v41 = *(v0 + 72);
    if (!sub_10034FC18())
    {
      v69 = *(v0 + 160);
      v68 = *(v0 + 168);
      v70 = *(v0 + 120);
      v71 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
      swift_allocError();
      v73 = 22;
      goto LABEL_32;
    }
  }

  Date.timeIntervalSinceNow.getter();
  v43 = v42;
  if (v42 < -480.0)
  {
    v86 = *(v0 + 120);
    v87 = *(v0 + 128);
    v88 = *(v0 + 88);
    v89 = *(v0 + 72);
    v90 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v89 + v90, v88);
    if ((*(v87 + 48))(v88, 1, v86) == 1)
    {
      v91 = *(v0 + 72);
      sub_100016C08(*(v0 + 88));
      v92 = v91 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
      v93 = *(v0 + 72);
      goto LABEL_47;
    }

    v94 = *(v0 + 144);
    v95 = *(v0 + 120);
    v96 = *(v0 + 128);
    (*(v96 + 32))(v94, *(v0 + 88), v95);
    Date.timeIntervalSinceNow.getter();
    v98 = v97;
    (*(v96 + 8))(v94, v95);
    v44 = v98 < -480.0;
  }

  else
  {
    v44 = 0;
  }

  v93 = *(v0 + 72);
  v92 = v93 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
  if (*(v93 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions) == 1 && !v44)
  {
    if ((*(v0 + 176) & 0x10) == 0)
    {
      goto LABEL_72;
    }

LABEL_56:
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v110 = *(v0 + 72);
    v111 = type metadata accessor for Logger();
    sub_10000C4AC(v111, qword_10097A228);
    v112 = v110;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    v115 = os_log_type_enabled(v113, v114);
    v116 = *(v0 + 72);
    if (!v115)
    {

      v113 = v116;
LABEL_71:

      goto LABEL_72;
    }

    v117 = swift_slowAlloc();
    *v117 = 67109632;
    v118 = *(&v116->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
    v124 = 0;
    if (*(v118 + 16) == 2)
    {
      v119 = *(v0 + 152);
      v120 = *(v0 + 120);
      v121 = *(v0 + 128);
      v13(v119, v118 + ((*(v121 + 80) + 32) & ~*(v121 + 80)), v120);
      Date.timeIntervalSinceNow.getter();
      v123 = v122;
      (*(v121 + 8))(v119, v120);
      if (v123 >= -480.0)
      {
        v124 = 1;
      }
    }

    v125 = *(v0 + 120);
    v126 = *(v0 + 128);
    v128 = *(v0 + 72);
    v127 = *(v0 + 80);
    *(v117 + 4) = v124;

    *(v117 + 8) = 1024;
    *(v117 + 10) = v43 >= -480.0;
    *(v117 + 14) = 1024;
    v129 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v128 + v129, v127);
    if ((*(v126 + 48))(v127, 1, v125) == 1)
    {
      sub_100016C08(*(v0 + 80));
    }

    else
    {
      v131 = *(v0 + 128);
      v130 = *(v0 + 136);
      v132 = *(v0 + 120);
      (*(v131 + 32))(v130, *(v0 + 80), v132);
      Date.timeIntervalSinceNow.getter();
      v134 = v133;
      (*(v131 + 8))(v130, v132);
      if (v134 >= -480.0)
      {
        v135 = 1;
        goto LABEL_70;
      }
    }

    v135 = 0;
LABEL_70:
    v136 = *(v0 + 72);
    *(v117 + 16) = v135;

    _os_log_impl(&_mh_execute_header, v113, v114, "Skipping motion check because one of the following is true: hasEnoughWakeRaises = %{BOOL}d requestingDeviceUnlockedRecently = %{BOOL}d unlockedRecently = %{BOOL}d", v117, 0x14u);

    goto LABEL_71;
  }

LABEL_47:
  *(v0 + 232) = v92;
  v99 = *(v93 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
  v100 = *(v0 + 176);
  if (*(v99 + 16) != 2)
  {
    if ((v100 & 0x10) != 0)
    {
      goto LABEL_52;
    }

LABEL_72:
    v137 = *(v0 + 168);
    v139 = *(v0 + 144);
    v138 = *(v0 + 152);
    v140 = *(v0 + 136);
    v141 = *(v0 + 120);
    v142 = *(v0 + 104);
    v146 = *(v0 + 88);
    v149 = *(v0 + 80);
    v143 = *(*(v0 + 128) + 8);
    v143(*(v0 + 160), v141);
    v143(v137, v141);

    v84 = *(v0 + 8);
    goto LABEL_34;
  }

  v101 = *(v0 + 152);
  v102 = *(v0 + 120);
  v103 = *(v0 + 128);
  v13(v101, v99 + ((*(v103 + 80) + 32) & ~*(v103 + 80)), v102);
  Date.timeIntervalSinceNow.getter();
  v105 = v104;
  (*(v103 + 8))(v101, v102);
  if ((v100 & 0x10) == 0)
  {
    goto LABEL_72;
  }

  if (v105 >= -480.0)
  {
    goto LABEL_56;
  }

  v93 = *(v0 + 72);
LABEL_52:
  v106 = (v93 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator);
  v107 = *v106;
  *(v0 + 240) = *v106;
  if (!v107)
  {
    v69 = *(v0 + 160);
    v68 = *(v0 + 168);
    v70 = *(v0 + 120);
    v71 = *(v0 + 128);
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    v73 = 7;
    goto LABEL_32;
  }

  *(v0 + 248) = v106[1];

  v148 = (v107 + *v107);
  v108 = v107[1];
  v109 = swift_task_alloc();
  *(v0 + 256) = v109;
  *v109 = v0;
  v109[1] = sub_100355154;

  return v148();
}

uint64_t sub_100355154()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v5 = *v0;

  sub_100015D04(v3);

  return _swift_task_switch(sub_100355284, 0, 0);
}

uint64_t sub_100355284()
{
  v1 = *(v0 + 72);
  **(v0 + 232) = 1;
  sub_100016CD0();
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v11 = *(v0 + 88);
  v12 = *(v0 + 80);
  v8 = *(*(v0 + 128) + 8);
  v8(*(v0 + 160), v6);
  v8(v2, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003553A8()
{
  type metadata accessor for SFAuthenticationErrorCode(0);
  sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
  swift_allocError();
  *v1 = 40;
  swift_willThrow();
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003554E0()
{
  type metadata accessor for SFAuthenticationErrorCode(0);
  sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
  swift_allocError();
  *v1 = 43;
  swift_willThrow();
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100355618@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  if (SFDeviceClassCodeGet() == 7)
  {
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedAndOnWristDate;
    swift_beginAccess();
    sub_1002E4E88(v1 + v10, v9);
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (v13(v9, 1, v11) == 1)
    {
      static Date.distantFuture.getter();
      result = v13(v9, 1, v11);
      if (result == 1)
      {
        return result;
      }

      v15 = v9;
      return sub_100016C08(v15);
    }

    return (*(v12 + 32))(a1, v9, v11);
  }

  else
  {
    v16 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v1 + v16, v7);
    v17 = type metadata accessor for Date();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (v19(v7, 1, v17) == 1)
    {
      static Date.distantFuture.getter();
      result = v19(v7, 1, v17);
      if (result == 1)
      {
        return result;
      }

      v15 = v7;
      return sub_100016C08(v15);
    }

    return (*(v18 + 32))(a1, v7, v17);
  }
}

void sub_100355864()
{
  if (qword_100973660 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097A228);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "On wrist state changed", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000163C8();
  }
}

void sub_1003559DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000163C8();
    sub_100016640();
    v2 = [objc_opt_self() availableDevices];
    sub_1000276B4(0, &qword_10097A2A0, BKDeviceDescriptor_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = v1;
      v5 = objc_opt_self();
      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v3 + 8 * v6 + 32);
        }

        v9 = v8;
        v1 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v17 = 0;
        v10 = [v5 deviceWithDescriptor:v8 error:&v17];
        if (v10)
        {
          v11 = v10;
          v12 = v17;

          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            v14 = v13;

            v15 = *&v16[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_pearlDevice];
            *&v16[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_pearlDevice] = v14;

            return;
          }
        }

        else
        {
          v7 = v17;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        ++v6;
        if (v1 == i)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_21:
  }
}

void sub_100355E60()
{
  sub_1002A6BEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100355F48(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
  swift_beginAccess();
  sub_1000168F4(a1, v3 + v4);
  swift_endAccess();
  sub_100016964();
  return sub_100016C08(a1);
}

uint64_t sub_100356068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationSecurityRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003560CC(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationSecurityRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100356128()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100350770(v2);
}

uint64_t sub_1003561CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10035624C()
{
  v1 = *(sub_10028088C(&qword_10097A2B0, &qword_1007FD370) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100350CF4(v3, v0 + v2, v4);
}

uint64_t sub_1003562E8()
{
  v0 = *(sub_10028088C(&qword_10097A2B0, &qword_1007FD370) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1003563C4()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100356444()
{
  result = qword_10097A348;
  if (!qword_10097A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A348);
  }

  return result;
}

unint64_t sub_10035649C()
{
  result = qword_10097A350;
  if (!qword_10097A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A350);
  }

  return result;
}

unint64_t sub_1003564F4()
{
  result = qword_10097A358;
  if (!qword_10097A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A358);
  }

  return result;
}

unint64_t sub_10035654C()
{
  result = qword_10097A360;
  if (!qword_10097A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A360);
  }

  return result;
}

id sub_1003565B8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A368);
  sub_10000C4AC(v0, qword_10097A368);
  result = airdrop_log();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

void sub_100356650()
{
  v1 = v0;
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    if (qword_1009736A0 != -1)
    {
LABEL_47:
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097A368);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_32;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "IPA Handler: Device running in store demo mode";
    goto LABEL_39;
  }

  v7 = [objc_opt_self() sharedConnection];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isAirDropAppInstallationAllowed];

    if (!v9)
    {
      if (qword_1009736A0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_10097A368);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_32;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "IPA Handler: AirDrop app installation not allowed";
      goto LABEL_39;
    }

    if (![v1 isJustFiles])
    {
      if (qword_1009736A0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097A368);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_32;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "IPA Handler: isJustFiles is false";
LABEL_39:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_32:

      return;
    }

    v10 = [v1 transfer];
    v11 = [v10 metaData];

    v12 = [v11 rawFiles];
    sub_10028088C(&unk_100974E50, &qword_1007FD600);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
    v15 = *(v13 + 16);
    v16 = kSFOperationFileNameKey;
    while (v15 != v14)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (!v16)
      {
        __break(1u);
        goto LABEL_49;
      }

      v18 = *(v13 + 8 * v14 + 32);
      sub_1000276B4(0, &qword_100974E28, NSString_ptr);
      sub_1002A5510();

      v19 = v16;
      AnyHashable.init<A>(_:)();
      if (!*(v18 + 16) || (v20 = sub_100570754(v38), (v21 & 1) == 0))
      {

        sub_100285E74(v38);
        goto LABEL_35;
      }

      sub_10000C5B0(*(v18 + 56) + 32 * v20, v39);
      sub_100285E74(v38);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_34:

LABEL_35:
        if (qword_1009736A0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000C4AC(v30, qword_10097A368);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          v6 = "IPA Handler: File is not IPA, ignoring...";
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      v22 = [v16 pathExtension];
      if (!v22)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String._bridgeToObjectiveC()();
      }

      v17 = SFIsIPA();

      ++v14;
      if ((v17 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v25 = [v1 transfer];
    v26 = [v25 metaData];

    LODWORD(v25) = [v26 senderIsMe];
    if (v25)
    {
      if (qword_1009736A0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000C4AC(v27, qword_10097A368);
      v3 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v3, v28, "IPA Handler: Transfer is me, can handle.", v29, 2u);
      }

      goto LABEL_32;
    }

    v31 = [objc_opt_self() defaultManager];
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 fileExistsAtPath:v32];

    if (qword_1009736A0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_10097A368);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      *(v37 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v35, v36, "IPA Handler: Developer settings bundle exists? %{BOOL}d", v37, 8u);
    }
  }

  else
  {
LABEL_49:
    __break(1u);
  }
}

uint64_t sub_100356E58()
{
  v1 = v0;
  v2 = [v0 transfer];
  v3 = [v2 metaData];

  if ([v1 totalSharedItemsCount] != 1)
  {
    v34[3] = &type metadata for UInt;
    v34[4] = &protocol witness table for UInt;
    v34[0] = [v1 totalSharedItemsCount];
    v13 = 0xE300000000000000;
    v14 = 4280393;
    goto LABEL_9;
  }

  if (!v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = [v3 rawFiles];
  sub_10028088C(&unk_100974E50, &qword_1007FD600);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {
LABEL_16:

    __break(1u);
    goto LABEL_17;
  }

  v6 = *(v5 + 32);

  v8 = kSFOperationFileNameKey;
  if (kSFOperationFileNameKey)
  {
    v34[0] = kSFOperationFileNameKey;
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    sub_1002A5510();
    v9 = v8;
    AnyHashable.init<A>(_:)();
    if (!*(v6 + 16))
    {
      goto LABEL_13;
    }

    v10 = sub_100570754(v29);
    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }

    v12 = v10;

    sub_10000C5B0(*(v6 + 56) + 32 * v12, v28);

    sub_100285E74(v29);
    sub_1000106E0(v28, &v30);
    v32 = &type metadata for String;
    v33 = sub_100026764();
    swift_dynamicCast();
    sub_1000121F8(&v31, v34);
    v13 = 0xEE00454C5449545FLL;
    v14 = 0x485449575F415049;
LABEL_9:
    sub_10028088C(&qword_10097A3C8, &qword_1007FD5D8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007F5670;
    sub_10028088C(&qword_10097A3D0, &qword_1007FD5E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = v14;
    *(inited + 40) = v13;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{objc_msgSend(v1, "totalSharedItemsCount")}];
    v17 = sub_100281A6C(inited);
    swift_setDeallocating();
    sub_100005508(inited + 32, &qword_10097A3D8, &qword_1007FD5E8);
    *(v15 + 32) = v17;
    sub_10028088C(&unk_10097A3E0, &unk_1007FD5F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v1 alertMessageLocalizedKeyForTypeDicts:isa];

    v20 = SFLocalizedStringForKey();
    if (v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007F8A70;
      v22 = [v1 senderName];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        *(v21 + 56) = &type metadata for String;
        *(v21 + 64) = sub_100026764();
        *(v21 + 32) = v24;
        *(v21 + 40) = v26;
        sub_1002A9938(v34, v21 + 72);
        v27 = static String.localizedStringWithFormat(_:_:)();

        sub_10000C60C(v34);
        return v27;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100357344()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "updatePossibleActions");
  v1 = [v0 transfer];
  v2 = [v1 identifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjectType();
  _typeName(_:qualified:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = SFLocalizedStringForKey();

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  if (v6)
  {
    v13 = String._bridgeToObjectiveC()();

    if (v10)
    {
LABEL_9:
      v14 = String._bridgeToObjectiveC()();

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_12:
  v15 = [objc_allocWithZone(SFAirDropAction) initWithTransferIdentifier:v11 actionIdentifier:v12 title:v13 singleItemTitle:v14 type:1];

  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    v23[4] = sub_100358B08;
    v23[5] = v16;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_10035835C;
    v23[3] = &unk_1008DD130;
    v17 = _Block_copy(v23);
    v18 = v0;

    [v15 setActionHandler:v17];
    _Block_release(v17);
    v19 = [v18 transfer];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1007FD580;
    *(v20 + 32) = v15;
    sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
    v21 = v15;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 setPossibleActions:isa];
  }
}

uint64_t sub_1003576C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v92 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v115 = *(v13 - 8);
  v116 = v13;
  v14 = *(v115 + 64);
  v15 = __chkstk_darwin(v13);
  v106 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v105 = (&v88 - v16);
  v17 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v119 = *(v17 - 8);
  v18 = *(v119 + 64);
  __chkstk_darwin(v17);
  v99 = (&v88 - v19);
  v20 = sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v114 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v112 = &v88 - v24;
  v97 = v4;
  v96 = v5;
  v95 = v9;
  v94 = v8;
  v93 = v10;
  if (a1)
  {
    v25 = sub_100358D10;
    v26 = a1;
    v27 = a2;
  }

  else
  {
    v28 = [v120 completionHandler];
    v27 = swift_allocObject();
    *(v27 + 16) = v28;
    v25 = sub_100358B5C;
    v26 = sub_100358B34;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = v29;
  v98 = v30;

  sub_1000387D0(a1);
  v31 = &selRef_shareUserDefaultsActivity;
  v32 = [v120 transfer];
  v33 = [v32 completedURLs];

  if (!v33)
  {
    v34 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage[2];
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_17:

    if (qword_1009736A0 == -1)
    {
LABEL_18:
      v79 = type metadata accessor for Logger();
      sub_10000C4AC(v79, qword_10097A368);
      v80 = v120;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = v25;
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138412290;
        v86 = [v80 v31[505]];
        *(v84 + 4) = v86;
        *v85 = v86;
        _os_log_impl(&_mh_execute_header, v81, v82, "No completedURLs to install for %@", v84, 0xCu);
        sub_100005508(v85, &qword_100975400, &qword_1007F65D0);

        v25 = v83;
      }

      LOBYTE(aBlock) = 0;
      LOBYTE(v122) = 0;
      v121 = 1;
      v25(&aBlock, &v122, &v121);
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = v34[2];
  if (!v35)
  {
    goto LABEL_17;
  }

LABEL_6:

  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v91 = static OS_dispatch_queue.main.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100358B60;
  v90 = v36;
  *(v36 + 24) = v98;
  v100 = v34;
  v37 = v34[2];

  v111 = dispatch_group_create();
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v110 = swift_allocObject();
  *(v110 + 16) = 0;
  v38 = _swiftEmptyArrayStorage;
  v89 = v37;
  if (v37)
  {
    sub_10028088C(&qword_10097A3C0, &qword_1007FD5D0);
    v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v38[2] = v37;
    memset(v38 + 4, 2, v37);
  }

  v39 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v38;
  v113 = v115 + 16;
  v108 = (v119 + 56);
  v107 = (v119 + 48);
  v120 = (v115 + 32);
  v103 = v14 + 7;
  v102 = &v125;
  v101 = v115 + 8;
  v104 = v35;
LABEL_9:
  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v39 >= v100[2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = v115;
  v40 = v116;
  v42 = v100 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v39;
  v43 = *(v17 + 48);
  v44 = v99;
  *v99 = v39;
  (*(v41 + 16))(v44 + v43, v42, v40);
  sub_10002C4E4(v44, v114, &qword_10097A3B0, &unk_1007FD5B0);
  v45 = 0;
  for (i = v39 + 1; ; i = v69)
  {
    v47 = v112;
    v48 = v114;
    (*v108)(v114, v45, 1, v17);
    sub_10002C4E4(v48, v47, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*v107)(v47, 1, v17) == 1)
    {
      break;
    }

    v49 = *v47;
    v50 = *(v17 + 48);
    v31 = v115;
    v51 = v116;
    v117 = *(v115 + 32);
    v25 = v105;
    v117(v105, v47 + v50, v116);
    v119 = i;
    v52 = v111;
    dispatch_group_enter(v111);
    v53 = swift_allocObject();
    v54 = v109;
    v53[2] = v110;
    v53[3] = v54;
    v53[4] = v49;
    v53[5] = v52;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_100358C08;
    *(v55 + 24) = v53;
    v118 = objc_opt_self();

    v56 = v52;
    URL._bridgeToObjectiveC()(v57);
    v59 = v58;
    v60 = v17;
    v61 = v106;
    (v31[2])(v106, v25, v51);
    v62 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v63 = (v103 + v62) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    v65 = v61;
    v17 = v60;
    v117((v64 + v62), v65, v51);
    v66 = (v64 + v63);
    v39 = v119;
    *v66 = sub_100358C14;
    v66[1] = v55;
    v127 = sub_100358C1C;
    v128 = v64;
    aBlock = _NSConcreteStackBlock;
    v124 = 1107296256;
    v125 = sub_1003E3364;
    v126 = &unk_1008DD2E8;
    v67 = _Block_copy(&aBlock);

    [v118 installApplication:v59 options:0 completion:v67];
    v68 = v67;
    v69 = v104;
    _Block_release(v68);

    (v31[1])(v25, v51);
    if (v39 != v69)
    {
      goto LABEL_9;
    }

    v45 = 1;
  }

  v70 = swift_allocObject();
  v71 = v89;
  v70[2] = v109;
  v70[3] = v71;
  v72 = v90;
  v70[4] = sub_100358BA8;
  v70[5] = v72;
  v127 = sub_100358BFC;
  v128 = v70;
  aBlock = _NSConcreteStackBlock;
  v124 = 1107296256;
  v125 = sub_100011678;
  v126 = &unk_1008DD248;
  v73 = _Block_copy(&aBlock);

  v74 = v92;
  static DispatchQoS.unspecified.getter();
  v122 = _swiftEmptyArrayStorage;
  sub_1000142E4(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  v75 = v94;
  v76 = v97;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v77 = v91;
  v78 = v111;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v73);

  (*(v96 + 8))(v75, v76);
  (*(v93 + 8))(v74, v95);
}

void sub_10035835C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100358410(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v52 - v17;
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  if (a3)
  {
    swift_errorRetain();
    if (qword_1009736A0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097A368);
    (*(v11 + 16))(v20, a4, v10);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = a3;
      v55 = v25;
      *v24 = 136315394;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v26 = String.init<A>(describing:)();
      v28 = sub_10000C4E4(v26, v27, &v55);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = URL.description.getter();
      v31 = v30;
      (*(v11 + 8))(v20, v10);
      v32 = sub_10000C4E4(v29, v31, &v55);

      *(v24 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "IPA Handler: Failed to install app with error (%s for URL %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v20, v10);
    }

LABEL_13:
    v41 = 0;
    return v53(v41);
  }

  if (!a2)
  {
    if (qword_1009736A0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000C4AC(v43, qword_10097A368);
    (*(v11 + 16))(v18, a4, v10);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v46 = 136315138;
      sub_1000142E4(&qword_100975160, &type metadata accessor for URL);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v11 + 8))(v18, v10);
      v51 = sub_10000C4E4(v48, v50, &v55);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "IPA Handler: No error or success bundle ID for installing: %s", v46, 0xCu);
      sub_10000C60C(v47);
    }

    else
    {

      (*(v11 + 8))(v18, v10);
    }

    goto LABEL_13;
  }

  if (qword_1009736A0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000C4AC(v33, qword_10097A368);
  (*(v11 + 16))(v15, a4, v10);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_10000C4E4(a1, a2, &v55);
    *(v36 + 12) = 2080;
    v37 = URL.description.getter();
    v39 = v38;
    (*(v11 + 8))(v15, v10);
    v40 = sub_10000C4E4(v37, v39, &v55);

    *(v36 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "IPA Handler: Successful app install '%s' for URL %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  v41 = 1;
  return v53(v41);
}

uint64_t sub_100358B60(char a1, char a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v9 = a1;
  v8 = a2;
  v7 = a3;
  return v4(&v9, &v8, &v7);
}

uint64_t sub_100358BA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v5 = (a1 + 32);
  do
  {
    v6 = v4;
    if (!v4)
    {
      break;
    }

    v7 = *v5++;
    --v4;
  }

  while ((v7 & 1) != 0);
  return v2(v6 == 0, 0, 1);
}

uint64_t sub_100358C1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_100358410(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_100358CD4(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

uint64_t sub_100358D1C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A3F0);
  v1 = sub_10000C4AC(v0, qword_10097A3F0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100358DE4()
{
  v1 = type metadata accessor for SFPlatform();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  if (![v6 discoverableLevel])
  {
    sub_10002A73C();
  }

  if ([v6 screenStateSupportsAirDrop] && objc_msgSend(v6, "discoverableLevel") && objc_msgSend(v6, "wirelessEnabled") && objc_msgSend(v6, "bluetoothEnabledIncludingRestricted"))
  {
    static SFPlatform.watchOS.getter();
    v7 = static SFPlatform.isPlatform(_:)();
    (*(v2 + 8))(v5, v1);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100358F30()
{
  v1 = type metadata accessor for SFPlatform();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  if ([v6 discoverableLevel])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10002A73C();
  }

  v8 = [v6 screenStateSupportsAirDrop];
  LOBYTE(v9) = 0;
  if (v8 && (v7 & 1) != 0)
  {
    if (![v6 wirelessEnabled] || !objc_msgSend(v6, "bluetoothEnabledIncludingRestricted"))
    {
      goto LABEL_11;
    }

    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes;
    swift_beginAccess();
    v9 = *(*(v0 + v10) + 16);
    if (v9)
    {
      v11 = [v6 bluetoothAddress];
      if (v11)
      {
        v12 = v11;
        v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        sub_100026AC0(v13, v15);
        static SFPlatform.watchOS.getter();
        LOBYTE(v12) = static SFPlatform.isPlatform(_:)();
        (*(v2 + 8))(v5, v1);
        LOBYTE(v9) = v12 ^ 1;
        return v9 & 1;
      }

LABEL_11:
      LOBYTE(v9) = 0;
    }
  }

  return v9 & 1;
}

void sub_1003590E8()
{
  v1 = v0;
  v2 = type metadata accessor for SFPlatform();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097A3F0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting AirDrop Receive Connection Manager", v10, 2u);
  }

  static SFPlatform.tvOS.getter();
  v11 = static SFPlatform.isPlatform(_:)();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    sub_100359310();
    if ([*(v1 + 48) screenStateSupportsAirDrop])
    {
      static SFPlatform.watchOS.getter();
      v13 = static SFPlatform.isPlatform(_:)();
      v12(v6, v2);
      if ((v13 & 1) == 0)
      {
        v14 = *(v1 + 120);
        v15 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID;

        sub_1005C1F1C(v1 + v15, sub_10037098C, v1);
      }

      sub_100359850(0);
    }
  }
}

void sub_100359310()
{
  v1 = v0;
  v2 = type metadata accessor for SFPlatform();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 104);
  [v7 addObserver:v0 selector:"screenStateChangedWithNotification:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
  [v7 addObserver:v0 selector:"screenStateChangedWithNotification:" name:@"com.apple.sharingd.MirroringStateChanged" object:0];
  [v7 addObserver:v0 selector:"appleIDChangedWithNotification:" name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
  [v7 addObserver:v0 selector:"discoverableModeChangedWithNotification:" name:@"com.apple.sharingd.DiscoverableModeChanged" object:0];
  [v7 addObserver:v0 selector:"deviceNameChangedWithNotification:" name:@"com.apple.sharingd.LocalHostNameChanged" object:0];
  [v7 addObserver:v0 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.WirelessModeChanged" object:0];
  [v7 addObserver:v0 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
  [v7 addObserver:v0 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.BluetoothPowerChanged" object:0];
  v8 = String._bridgeToObjectiveC()();
  [v7 addObserver:v0 selector:"contactHashsesChangedWithNotification:" name:v8 object:0];

  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  [v9 initWithSuiteName:v10];

  swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(type metadata accessor for SFUserDefaultObserver());
  v12 = SFUserDefaultObserver.init(key:storage:_:)();
  v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_togetherDefaultsObserver);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_togetherDefaultsObserver) = v12;

  static SFPlatform.macOS.getter();
  LOBYTE(v9) = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    [v7 addObserver:v1 selector:"consoleUserChangedWithNotification:" name:@"com.apple.sharingd.ConsoleUserChanged" object:0];
  }

  v14 = [SFNotificationAirDropCellularUsageChanged UTF8String];
  sub_1002DDC10();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100370A64;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006935D4;
  aBlock[3] = &unk_1008DD4D8;
  v17 = _Block_copy(aBlock);

  swift_beginAccess();
  v18 = notify_register_dispatch(v14, (v1 + 112), v15, v17);
  swift_endAccess();
  _Block_release(v17);

  if (v18)
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097A3F0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to register for cellular usage changed notifications with status %u", v22, 8u);
    }
  }
}

void sub_100359850(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_10035FAFC(a1);
  if (v3)
  {
    if (v3 != 1)
    {
      return;
    }

    if (!*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer))
    {
      goto LABEL_17;
    }
  }

  else if (!*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer))
  {
    if (!v3)
    {
      if (sub_100358DE4())
      {
        v34 = v1[6];
        v35 = v1[11];
        v36 = objc_allocWithZone(type metadata accessor for SDAirDropApplicationServiceServer());
        v37 = v34;

        v38 = sub_10040B974(v37, v35, v1, &off_1008DD350);

        v39 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer);
        v40 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer);
        *v39 = v38;
        v39[1] = &off_1008DFBE0;
        oslog = v38;
        swift_unknownObjectRelease();
        sub_100409758();
        goto LABEL_31;
      }

      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000C4AC(v41, qword_10097A3F0);
      oslog = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v31))
      {
        goto LABEL_31;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Ignoring Application Service Server Start";
LABEL_24:
      _os_log_impl(&_mh_execute_header, oslog, v31, v33, v32, 2u);

LABEL_31:

      return;
    }

LABEL_17:
    if (sub_100358F30())
    {
      v11 = v1[6];
      v12 = v1[7];
      v13 = v1[9];
      v14 = v1[11];
      v15 = v2[12];
      v16 = type metadata accessor for SDAirDropBonjourServer();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener] = 0;
      v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_serverType] = 1;
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_connections] = _swiftEmptyArrayStorage;
      v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility] = 0;
      v18 = &v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_delegate];
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceStatus] = v11;
      v19 = type metadata accessor for SDAirDropDeviceSupportManager();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_deviceStatus] = v11;
      *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_nearbyAgent] = v12;
      v45.receiver = v20;
      v45.super_class = v19;
      v21 = v11;
      v22 = v12;
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceSupportManager] = objc_msgSendSuper2(&v45, "init");
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_sessionLogger] = v14;
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_idmsService] = v13;
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_queue] = v15;
      *(v18 + 1) = &off_1008DD350;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SFAirDropUserDefaults();

      v23 = v13;
      v24 = v15;
      v25 = static SFAirDropUserDefaults.shared.getter();
      LOBYTE(v18) = SFAirDropUserDefaults.privacyImprovements.getter();

      v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_privacyImprovements] = v18 & 1;
      v44.receiver = v17;
      v44.super_class = v16;
      v26 = objc_msgSendSuper2(&v44, "init");
      v27 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer);
      v28 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer);
      *v27 = v26;
      v27[1] = &off_1008DD6B8;
      v29 = v26;
      swift_unknownObjectRelease();
      sub_1003710F8();

      return;
    }

    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_10097A3F0);
    oslog = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v31))
    {
      goto LABEL_31;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Ignoring Bonjour Server Start";
    goto LABEL_24;
  }

  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v5))
  {
    goto LABEL_31;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v43 = v7;
  *v6 = 136315138;
  if (v3)
  {
    v8 = 0x2072756F6A6E6F42;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v9 = 0xEE00726576726553;
  }

  else
  {
    v9 = 0x800000010078D790;
  }

  v10 = sub_10000C4E4(v8, v9, &v43);

  *(v6 + 4) = v10;
  _os_log_impl(&_mh_execute_header, oslog, v5, "Server already exists for type %s", v6, 0xCu);
  sub_10000C60C(v7);
}

uint64_t sub_100359E00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10028088C(&qword_10097A640, &qword_1007FD770);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for SDAirDropServerConnection(0);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v2[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_100359F68, v8, 0);
}

uint64_t sub_100359F68()
{
  v1 = v0[11];
  sub_1003708C4(v0[2], v1, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *v1;
  if (EnumCaseMultiPayload >= 2)
  {
    v4 = v0[11];
    v5 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  v7 = v0[9];
  v8 = *(v0[3] + 96);
  NWConnection.start(queue:)();

  v9 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v0[13] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v0[14] = v11;
  v0[15] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v7, 1, 1, v9);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_10035A100;
  v13 = v0[9];
  v14 = v0[2];
  v15 = v0[3];

  return sub_10035AD88(v13, v14);
}

uint64_t sub_10035A100()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 32);
  v6 = *v0;

  sub_100005508(v3, &qword_10097A648, &qword_1007FD778);
  v7 = *(v5 + 48);
  *(v1 + 168) = v7;
  v8 = swift_task_alloc();
  *(v1 + 136) = v8;
  *v8 = v6;
  v8[1] = sub_10035A2B0;
  v9 = *(v1 + 64);
  v10 = *(v1 + 16);

  return sub_1005ABEB8(v9, v4 + v7);
}

uint64_t sub_10035A2B0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_10035ABA8;
  }

  else
  {
    v6 = sub_10035A3DC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10035A3DC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[4];
  sub_10000FF90(v0[8], v5, &qword_10097A640, &qword_1007FD770);
  sub_10000ED10(v5 + *(v6 + 48), v4, type metadata accessor for SDAirDropServerConnectionIdentity);
  v2(v4, 0, 1, v3);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_10035A4E8;
  v8 = v0[9];
  v9 = v0[2];
  v10 = v0[3];

  return sub_10035AD88(v8, v9);
}

uint64_t sub_10035A4E8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 56);
  v6 = *v0;

  sub_100005508(v3, &qword_10097A648, &qword_1007FD778);
  sub_10037092C(v4, type metadata accessor for SDAirDropMessage);

  return _swift_task_switch(sub_10035A65C, v2, 0);
}

uint64_t sub_10035A65C()
{
  v34 = v0;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  sub_10000FF90(v1, v2, &qword_10097A640, &qword_1007FD770);
  sub_10000FF90(v1, v3, &qword_10097A640, &qword_1007FD770);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v31 = v10;
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v11 = 136315394;
    sub_10000FF90(v8, v7, &qword_10097A640, &qword_1007FD770);
    v12 = *(v10 + 48);
    v32 = v6;
    v13 = sub_1005ADA80();
    v15 = v14;
    sub_100005508(v8, &qword_10097A640, &qword_1007FD770);
    sub_10037092C(v7 + v12, type metadata accessor for SDAirDropServerConnectionIdentity);
    sub_10037092C(v7, type metadata accessor for SDAirDropMessage);
    v16 = sub_10000C4E4(v13, v15, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_10000FF90(v9, v7, &qword_10097A640, &qword_1007FD770);
    v17 = *(v31 + 48);
    v18 = sub_100562218();
    v20 = v19;
    sub_100005508(v9, &qword_10097A640, &qword_1007FD770);
    sub_10037092C(v7, type metadata accessor for SDAirDropMessage);
    sub_10037092C(v7 + v17, type metadata accessor for SDAirDropServerConnectionIdentity);
    v21 = sub_10000C4E4(v18, v20, &v33);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v32, "Message id: %s, message: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);

    sub_100005508(v23, &qword_10097A640, &qword_1007FD770);
    sub_100005508(v22, &qword_10097A640, &qword_1007FD770);
  }

  v24 = *(v0 + 168);
  v25 = *(v0 + 64);
  v26 = swift_task_alloc();
  *(v0 + 160) = v26;
  *v26 = v0;
  v26[1] = sub_10035A9DC;
  v27 = *(v0 + 64);
  v28 = *(v0 + 16);
  v29 = *(v0 + 24);

  return sub_10035B228(v27, v28, v25 + v24);
}

uint64_t sub_10035A9DC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_10035AAEC, v2, 0);
}

uint64_t sub_10035AAEC()
{
  sub_100005508(v0[8], &qword_10097A640, &qword_1007FD770);
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10035ABA8()
{
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097A3F0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error receiving message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10035AD88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for NWConnection.State();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v8 = type metadata accessor for SDAirDropServerConnection(0);
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v3[14] = *(v9 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;

  return _swift_task_switch(sub_10035AF6C, v10, 0);
}

uint64_t sub_10035AF6C()
{
  v1 = v0[16];
  v2 = v0[12];
  sub_1003708C4(v0[3], v1, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *v1;
  if (EnumCaseMultiPayload >= 2)
  {
    v5 = v0[16];
    v6 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  NWConnection.state.getter();
  (*(v11 + 104))(v9, enum case for NWConnection.State.ready(_:), v10);
  v12 = static NWConnection.State.== infix(_:_:)();
  v13 = *(v11 + 8);
  v13(v9, v10);
  v13(v8, v10);
  if (v12)
  {
    v14 = v0[4];
    sub_100367834(v0[2], v0[3]);
  }

  v15 = v0[15];
  v17 = v0[13];
  v16 = v0[14];
  v28 = v0[16];
  v29 = v0[11];
  v30 = v0[10];
  v18 = v0[6];
  v19 = v0[7];
  v20 = v0[4];
  v21 = v0[5];
  v22 = v0[3];
  sub_10000FF90(v0[2], v19, &qword_10097A648, &qword_1007FD778);
  sub_1003708C4(v22, v15, type metadata accessor for SDAirDropServerConnection);
  v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v24 = (v18 + *(v17 + 80) + v23) & ~*(v17 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  sub_10002C4E4(v19, v25 + v23, &qword_10097A648, &qword_1007FD778);
  sub_10000ED10(v15, v25 + v24, type metadata accessor for SDAirDropServerConnection);

  NWConnection.stateUpdateHandler.setter();

  v26 = v0[1];

  return v26();
}

uint64_t sub_10035B228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = *(*(_s12ErrorRequestVMa() - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v6 = *(*(_s15ExchangeRequestVMa(0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v7 = _s13UploadRequestVMa();
  v4[32] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v9 = *(*(_s10AskRequestVMa() - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v10 = _s12HelloRequestVMa();
  v4[36] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v12 = type metadata accessor for SDAirDropMessage();
  v4[40] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v4[42] = static AirDropActor.shared;

  return _swift_task_switch(sub_10035B41C, v14, 0);
}

uint64_t sub_10035B41C()
{
  v158 = v0;
  v1 = *(v0 + 320);
  sub_1003708C4(*(v0 + 192), *(v0 + 328), type metadata accessor for SDAirDropMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v49 = *(v0 + 208);
        v50 = *(v0 + 216);
        v52 = *(v0 + 192);
        v51 = *(v0 + 200);
        sub_10000ED10(*(v0 + 328), *(v0 + 312), _s12HelloRequestVMa);
        *(v0 + 384) = sub_10036463C(v49, v51, v52);
        if (qword_1009736A8 != -1)
        {
          swift_once();
        }

        v54 = *(v0 + 304);
        v53 = *(v0 + 312);
        v55 = type metadata accessor for Logger();
        sub_10000C4AC(v55, qword_10097A3F0);
        sub_1003708C4(v53, v54, _s12HelloRequestVMa);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        v58 = os_log_type_enabled(v56, v57);
        v59 = *(v0 + 304);
        if (v58)
        {
          v60 = *(v0 + 288);
          v61 = *(v0 + 296);
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v156 = v63;
          *v62 = 136315138;
          sub_1003708C4(v59, v61, _s12HelloRequestVMa);
          _StringGuts.grow(_:)(16);

          strcpy(v157, "HELLO request ");
          HIBYTE(v157[1]) = -18;
          *(v0 + 552) = *(v61 + *(v60 + 20));
          v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v64);

          sub_10037092C(v61, _s12HelloRequestVMa);
          sub_10037092C(v59, _s12HelloRequestVMa);
          v65 = sub_10000C4E4(v157[0], v157[1], &v156);

          *(v62 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v56, v57, "Received HELLO request %s", v62, 0xCu);
          sub_10000C60C(v63);
        }

        else
        {

          sub_10037092C(v59, _s12HelloRequestVMa);
        }

        v137 = swift_task_alloc();
        *(v0 + 392) = v137;
        *v137 = v0;
        v137[1] = sub_10035C918;
        v138 = *(v0 + 312);
        v139 = *(v0 + 200);

        return sub_10063A720(v138, v139);
      case 2:
        v121 = *(v0 + 328);
        v122 = *(v0 + 208);
        v123 = *(v0 + 216);
        v125 = *(v0 + 192);
        v124 = *(v0 + 200);
        v126 = *v121;
        *(v0 + 344) = *v121;
        v127 = *(v121 + 8);
        *(v0 + 352) = v127;
        v128 = *(v121 + 16);
        v129 = *(v121 + 24);
        *(v0 + 360) = sub_10036463C(v122, v124, v125);
        if (qword_1009736A8 != -1)
        {
          swift_once();
        }

        v130 = type metadata accessor for Logger();
        sub_10000C4AC(v130, qword_10097A3F0);
        sub_1002A9924(v126, v127);
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.default.getter();
        sub_10028BCC0(v126, v127);
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v157[0] = v134;
          *v133 = 136315138;
          v155 = v128;
          v153 = v129;
          if (v127 >> 60 == 15)
          {
            v135 = 0x800000010078D760;
            v136 = 0xD00000000000002ALL;
          }

          else
          {
            v136 = Data.description.getter();
            v135 = v149;
          }

          v150 = sub_10000C4E4(v136, v135, v157);

          *(v133 + 4) = v150;
          _os_log_impl(&_mh_execute_header, v131, v132, "Received DISCOVER request {senderRecordData: %s}", v133, 0xCu);
          sub_10000C60C(v134);

          v128 = v155;
          v129 = v153;
        }

        else
        {
        }

        v151 = swift_task_alloc();
        *(v0 + 368) = v151;
        *v151 = v0;
        v151[1] = sub_10035C6F0;
        v152 = *(v0 + 200);

        return sub_100638B44(v126, v127, v128, v129, v152);
      case 4:
        v20 = *(v0 + 208);
        v21 = *(v0 + 216);
        v23 = *(v0 + 192);
        v22 = *(v0 + 200);
        sub_10000ED10(*(v0 + 328), *(v0 + 280), _s10AskRequestVMa);
        *(v0 + 408) = sub_10036463C(v20, v22, v23);
        if (qword_1009736A8 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_10000C4AC(v24, qword_10097A3F0);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Received ASK request", v27, 2u);
        }

        v28 = swift_task_alloc();
        *(v0 + 416) = v28;
        *v28 = v0;
        v28[1] = sub_10035CB54;
        v29 = *(v0 + 280);
        v30 = *(v0 + 200);

        return sub_10063AECC(v29, v30);
    }

LABEL_29:
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_10000C4AC(v66, qword_10097A3F0);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Unsupported message type", v69, 2u);
    }

    v70 = *(v0 + 328);

    v71 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1000053E8(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v71 - 8) + 104))(v72, enum case for SFAirDropReceive.Failure.badRequest(_:), v71);
    swift_willThrow();
    sub_10037092C(v70, type metadata accessor for SDAirDropMessage);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Missing handler after failure", v75, 2u);
    }

    v76 = *(v0 + 200);

    sub_1005ADD74(0);

    v77 = *(v0 + 328);
    v78 = *(v0 + 304);
    v79 = *(v0 + 312);
    v80 = *(v0 + 296);
    v82 = *(v0 + 272);
    v81 = *(v0 + 280);
    v83 = *(v0 + 264);
    v85 = *(v0 + 240);
    v84 = *(v0 + 248);
    v86 = *(v0 + 232);
    v154 = *(v0 + 224);

    v87 = *(v0 + 8);

    return v87();
  }

  if (EnumCaseMultiPayload > 9)
  {
    if (EnumCaseMultiPayload == 10)
    {
      v102 = *(v0 + 328);
      v103 = *(v0 + 208);
      v104 = *(v0 + 216);
      v106 = *(v0 + 192);
      v105 = *(v0 + 200);
      v107 = *(v102 + 16);
      *(v0 + 16) = *v102;
      *(v0 + 32) = v107;
      v109 = *(v102 + 48);
      v108 = *(v102 + 64);
      v110 = *(v102 + 32);
      *(v0 + 96) = *(v102 + 80);
      *(v0 + 64) = v109;
      *(v0 + 80) = v108;
      *(v0 + 48) = v110;
      *(v0 + 480) = sub_10036463C(v103, v105, v106);
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      sub_10000C4AC(v111, qword_10097A3F0);
      sub_1003398A0(v0 + 16, v0 + 104);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.default.getter();
      sub_1003398D8(v0 + 16);
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v157[0] = v115;
        *v114 = 136315138;
        v116 = *(v0 + 80);
        v117 = *(v0 + 88);

        v118 = sub_10000C4E4(v116, v117, v157);

        *(v114 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v112, v113, "Received IDENTITY-SHARE request %s", v114, 0xCu);
        sub_10000C60C(v115);
      }

      v119 = swift_task_alloc();
      *(v0 + 488) = v119;
      *v119 = v0;
      v119[1] = sub_10035D208;
      v120 = *(v0 + 200);

      return sub_10063F5EC(v0 + 16, v120);
    }

    if (EnumCaseMultiPayload == 12)
    {
      v32 = *(v0 + 208);
      v33 = *(v0 + 216);
      v35 = *(v0 + 192);
      v34 = *(v0 + 200);
      sub_10000ED10(*(v0 + 328), *(v0 + 232), _s12ErrorRequestVMa);
      *(v0 + 504) = sub_10036463C(v32, v34, v35);
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 224);
      v36 = *(v0 + 232);
      v38 = type metadata accessor for Logger();
      sub_10000C4AC(v38, qword_10097A3F0);
      sub_1003708C4(v36, v37, _s12ErrorRequestVMa);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 224);
      if (v41)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v157[0] = v44;
        *v43 = 136315138;
        type metadata accessor for SFAirDrop.TransferIdentifier();
        sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        sub_10037092C(v42, _s12ErrorRequestVMa);
        v48 = sub_10000C4E4(v45, v47, v157);

        *(v43 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "Received ERROR request %s", v43, 0xCu);
        sub_10000C60C(v44);
      }

      else
      {

        sub_10037092C(v42, _s12ErrorRequestVMa);
      }

      v146 = swift_task_alloc();
      *(v0 + 512) = v146;
      *v146 = v0;
      v146[1] = sub_10035D430;
      v147 = *(v0 + 232);
      v148 = *(v0 + 200);

      return sub_10063FD30(v147, v148);
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v3 = *(v0 + 208);
      v4 = *(v0 + 216);
      v6 = *(v0 + 192);
      v5 = *(v0 + 200);
      sub_10000ED10(*(v0 + 328), *(v0 + 248), _s15ExchangeRequestVMa);
      *(v0 + 456) = sub_10036463C(v3, v5, v6);
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 240);
      v7 = *(v0 + 248);
      v9 = type metadata accessor for Logger();
      sub_10000C4AC(v9, qword_10097A3F0);
      sub_1003708C4(v7, v8, _s15ExchangeRequestVMa);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 240);
      if (v12)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v157[0] = v15;
        *v14 = 136315138;
        type metadata accessor for SFAirDrop.TransferIdentifier();
        sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        sub_10037092C(v13, _s15ExchangeRequestVMa);
        v19 = sub_10000C4E4(v16, v18, v157);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v10, v11, "Received EXCHANGE request %s", v14, 0xCu);
        sub_10000C60C(v15);
      }

      else
      {

        sub_10037092C(v13, _s15ExchangeRequestVMa);
      }

      v143 = swift_task_alloc();
      *(v0 + 464) = v143;
      *v143 = v0;
      v143[1] = sub_10035CFCC;
      v144 = *(v0 + 248);
      v145 = *(v0 + 200);

      return sub_10063EF58(v144, v145);
    }

    goto LABEL_29;
  }

  v88 = *(v0 + 208);
  v89 = *(v0 + 216);
  v91 = *(v0 + 192);
  v90 = *(v0 + 200);
  sub_10000ED10(*(v0 + 328), *(v0 + 272), _s13UploadRequestVMa);
  *(v0 + 432) = sub_10036463C(v88, v90, v91);
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v93 = *(v0 + 264);
  v92 = *(v0 + 272);
  v94 = type metadata accessor for Logger();
  sub_10000C4AC(v94, qword_10097A3F0);
  sub_1003708C4(v92, v93, _s13UploadRequestVMa);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  v97 = os_log_type_enabled(v95, v96);
  v98 = *(v0 + 264);
  if (v97)
  {
    v99 = *(v0 + 256);
    v100 = swift_slowAlloc();
    *v100 = 134217984;
    v101 = *(v98 + *(v99 + 20));
    sub_10037092C(v98, _s13UploadRequestVMa);
    *(v100 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v95, v96, "Received UPLOAD request %ld", v100, 0xCu);
  }

  else
  {
    sub_10037092C(*(v0 + 264), _s13UploadRequestVMa);
  }

  v140 = swift_task_alloc();
  *(v0 + 440) = v140;
  *v140 = v0;
  v140[1] = sub_10035CD90;
  v141 = *(v0 + 272);
  v142 = *(v0 + 200);

  return sub_10063C718(v141, v142);
}

uint64_t sub_10035C6F0()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    v6 = sub_10035D8A8;
  }

  else
  {
    v6 = sub_10035C81C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10035C81C()
{
  v1 = v0[45];
  sub_10028BCC0(v0[43], v0[44]);

  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v14 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10035C918()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    v6 = sub_10035DAA0;
  }

  else
  {
    v6 = sub_10035CA44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10035CA44()
{
  v1 = v0[48];
  sub_10037092C(v0[39], _s12HelloRequestVMa);

  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v14 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10035CB54()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    v6 = sub_10035DCAC;
  }

  else
  {
    v6 = sub_10035CC80;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10035CC80()
{
  v1 = v0[51];
  sub_10037092C(v0[35], _s10AskRequestVMa);

  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v14 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10035CD90()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    v6 = sub_10035DEB8;
  }

  else
  {
    v6 = sub_10035CEBC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10035CEBC()
{
  v1 = v0[54];
  sub_10037092C(v0[34], _s13UploadRequestVMa);

  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v14 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10035CFCC()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    v6 = sub_10035E0C4;
  }

  else
  {
    v6 = sub_10035D0F8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10035D0F8()
{
  v1 = v0[57];
  sub_10037092C(v0[31], _s15ExchangeRequestVMa);

  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v14 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10035D208()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    v6 = sub_10035E2D0;
  }

  else
  {
    v6 = sub_10035D334;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10035D334()
{
  v1 = v0[60];
  sub_1003398D8((v0 + 2));

  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v14 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10035D430()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    v6 = sub_10035E4C8;
  }

  else
  {
    v6 = sub_10035D55C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10035D55C()
{
  v1 = v0[63];
  sub_10037092C(v0[29], _s12ErrorRequestVMa);

  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v14 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10035D66C()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 336);
  v5 = *v0;

  return _swift_task_switch(sub_10035D798, v3, 0);
}

uint64_t sub_10035D798()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[25];

  sub_1005ADD74(0);

  v4 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[29];
  v16 = v0[28];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10035D8A8()
{
  sub_10028BCC0(v0[43], v0[44]);
  v1 = v0[47];
  v2 = v0[45];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];
  v12 = v0[27];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035DAA0()
{
  sub_10037092C(v0[39], _s12HelloRequestVMa);
  v1 = v0[50];
  v2 = v0[48];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];
  v12 = v0[27];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035DCAC()
{
  sub_10037092C(v0[35], _s10AskRequestVMa);
  v1 = v0[53];
  v2 = v0[51];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];
  v12 = v0[27];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035DEB8()
{
  sub_10037092C(v0[34], _s13UploadRequestVMa);
  v1 = v0[56];
  v2 = v0[54];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];
  v12 = v0[27];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035E0C4()
{
  sub_10037092C(v0[31], _s15ExchangeRequestVMa);
  v1 = v0[59];
  v2 = v0[57];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];
  v12 = v0[27];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035E2D0()
{
  sub_1003398D8((v0 + 2));
  v1 = v0[62];
  v2 = v0[60];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];
  v12 = v0[27];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035E4C8()
{
  sub_10037092C(v0[29], _s12ErrorRequestVMa);
  v1 = v0[65];
  v2 = v0[63];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];
  v12 = v0[27];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035E6D4(char a1, uint64_t a2)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = v2;
  *(v3 + 208) = a1;
  v4 = type metadata accessor for CodableError();
  *(v3 + 176) = v4;
  v5 = *(v4 - 8);
  *(v3 + 184) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_10035E7DC, v7, 0);
}

uint64_t sub_10035E7DC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v48 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  if (!*(v0 + 208))
  {
    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors;
    swift_beginAccess();
    v18 = *(v4 + v17);
    v19 = type metadata accessor for NWError();
    sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError);
    swift_allocError();
    v20 = (*(v19 - 8) + 16);
    v46 = *v20;
    (*v20)(v21, v3, v19);

    CodableError.init(_:)();
    v22 = sub_100569328(v1, v18);

    v23 = *(v2 + 8);
    v23(v1, v48);
    if (v22)
    {
      goto LABEL_10;
    }

    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    v44 = *(v0 + 176);
    v50 = *(v0 + 168);
    v26 = *(v0 + 160);
    swift_allocError();
    v46(v27, v26, v19);
    CodableError.init(_:)();
    swift_beginAccess();
    sub_10046E5C8(v25, v24);
    swift_endAccess();
    v23(v25, v44);
    v16 = 0;
    goto LABEL_7;
  }

  if (*(v0 + 208) == 1)
  {
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServerErrors;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = type metadata accessor for NWError();
    sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError);
    swift_allocError();
    v8 = (*(v7 - 8) + 16);
    v45 = *v8;
    (*v8)(v9, v3, v7);

    CodableError.init(_:)();
    v10 = sub_100569328(v1, v6);

    v11 = *(v2 + 8);
    v11(v1, v48);
    if (v10)
    {
      goto LABEL_10;
    }

    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v43 = *(v0 + 176);
    v49 = *(v0 + 168);
    v14 = *(v0 + 160);
    swift_allocError();
    v45(v15, v14, v7);
    CodableError.init(_:)();
    swift_beginAccess();
    sub_10046E5C8(v13, v12);
    swift_endAccess();
    v11(v13, v43);
    v16 = 1;
LABEL_7:
    sub_100359850(v16);
    goto LABEL_10;
  }

  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServerErrors;
  swift_beginAccess();
  v29 = *(v4 + v28);
  v30 = type metadata accessor for NWError();
  sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError);
  swift_allocError();
  v31 = (*(v30 - 8) + 16);
  v47 = *v31;
  (*v31)(v32, v3, v30);

  CodableError.init(_:)();
  v33 = sub_100569328(v1, v29);

  v34 = *(v2 + 8);
  v34(v1, v48);
  if ((v33 & 1) == 0)
  {
    v35 = *(v0 + 192);
    v36 = *(v0 + 200);
    v51 = *(v0 + 176);
    v37 = *(v0 + 160);
    swift_allocError();
    v47(v38, v37, v30);
    CodableError.init(_:)();
    swift_beginAccess();
    sub_10046E5C8(v36, v35);
    swift_endAccess();
    v34(v36, v51);
  }

LABEL_10:
  v40 = *(v0 + 192);
  v39 = *(v0 + 200);

  v41 = *(v0 + 8);

  return v41();
}

void sub_10035ED60(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v65 = a4;
  v66 = a5;
  v64 = a3;
  v58 = a2;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  __chkstk_darwin(v8);
  v61 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v60 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v54 - v22;
  __chkstk_darwin(v21);
  v25 = v54 - v24;
  v68 = v16[2];
  v69 = a1;
  v68(v23, a1, v15);
  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions;
  swift_beginAccess();
  sub_10046E0A4(v25, v23);
  swift_endAccess();
  v67 = v16[1];
  v67(v25, v15);
  v27 = *(v6 + 48);
  if (![v27 discoverableLevel])
  {
    sub_10002A73C();
  }

  if (![v27 screenStateSupportsAirDrop] || !objc_msgSend(v27, "wirelessEnabled") || !*(*(v6 + v26) + 16))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000C4AC(v39, qword_10097A3F0);
    v31 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v31, v40))
    {
      goto LABEL_17;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v31, v40, "Ignoring Near Field Server Start", v41, 2u);
LABEL_16:

LABEL_17:

    return;
  }

  v28 = (v6 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServersByTransactionID);
  swift_beginAccess();
  if (*(*v28 + 16) && (sub_10000EBD4(v69), (v29 & 1) != 0))
  {
    swift_endAccess();
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_10097A3F0);
    v68(v20, v69, v15);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v72 = v34;
      *v33 = 136315138;
      sub_1000053E8(&qword_100978CE0, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v67(v20, v15);
      v38 = sub_10000C4E4(v35, v37, &v72);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Near Field server already running for transaction %s", v33, 0xCu);
      sub_10000C60C(v34);

      goto LABEL_16;
    }

    v67(v20, v15);
  }

  else
  {
    swift_endAccess();
    v42 = v68;
    v68(v25, v69, v15);
    v42(v23, v58, v15);
    v58 = type metadata accessor for SDAirDropNearFieldServer();
    v43 = objc_allocWithZone(v58);
    *&v43[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener] = 0;
    *&v43[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_networkListener] = 0;
    v43[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_serverType] = 2;
    *&v43[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_connections] = _swiftEmptyArrayStorage;
    v56 = &v43[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_delegate];
    *(v56 + 1) = 0;
    swift_unknownObjectWeakInit();
    v55 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_queue;
    v54[3] = sub_1002DDC10();
    v54[2] = "togetherDefaultsObserver";
    static DispatchQoS.default.getter();
    v72 = _swiftEmptyArrayStorage;
    v54[1] = sub_1000053E8(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10028088C(&unk_10097A630, &unk_1007F5680);
    sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
    v57 = v28;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v62 + 104))(v61, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v63);
    *&v43[v55] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v56 + 1) = &off_1008DD350;
    swift_unknownObjectWeakAssign();
    v44 = v68;
    v68(&v43[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_transactionID], v25, v15);
    v45 = v65;
    *&v43[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_localIdentity] = v64;
    v46 = &v43[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_remotePublicKey];
    v47 = v66;
    *v46 = v45;
    v46[1] = v47;
    v44(&v43[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listenerUUID], v23, v15);
    swift_unknownObjectRetain();
    sub_100294008(v45, v47);
    v71.receiver = v43;
    v71.super_class = v58;
    v48 = objc_msgSendSuper2(&v71, "init");
    v49 = v67;
    v67(v23, v15);
    v49(v25, v15);
    v50 = v57;
    swift_beginAccess();
    v51 = v48;
    v52 = *v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *v50;
    *v50 = 0x8000000000000000;
    sub_10036FE24(v51, v69, isUniquelyReferenced_nonNull_native, &v70);
    *v50 = v70;
    swift_endAccess();
    sub_10050149C();
  }
}

void sub_10035F618(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v38[-v10];
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v38[-v14];
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServersByTransactionID;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (*(v17 + 16) && (v18 = sub_10000EBD4(a1), (v19 & 1) != 0))
  {
    v20 = (*(v17 + 56) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    swift_endAccess();
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_10036DC54(a1, v15);
    swift_endAccess();
    sub_100005508(v15, &unk_100976120, &qword_1007F9260);
    v23 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
    swift_beginAccess();
    if (*(*(v2 + v23) + 16))
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097A3F0);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Near Field server has active connections, not stopping", v27, 2u);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      ObjectType = swift_getObjectType();
      (*(v22 + 64))(ObjectType, v22);
      (*(v5 + 16))(v11, a1, v4);
      swift_beginAccess();
      sub_1002AFD8C(0, 0, v11);
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_endAccess();
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_10097A3F0);
    (*(v5 + 16))(v9, a1, v4);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315138;
      sub_1000053E8(&qword_100978CE0, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v5 + 8))(v9, v4);
      v36 = sub_10000C4E4(v33, v35, &v39);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Near Field server does not exist for transaction %s", v31, 0xCu);
      sub_10000C60C(v32);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

uint64_t sub_10035FAFC(uint64_t result)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v2 = &OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer;
  }

  v3 = (v1 + *v2);
  if (*v3)
  {
    v4 = result;
    v5 = v3[1];
    v6 = *v3;
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 48);
    swift_unknownObjectRetain();
    if (v8(ObjectType, v5))
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000C4AC(v9, qword_10097A3F0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v12 = 136315138;
        if (v4)
        {
          v14 = 0x2072756F6A6E6F42;
        }

        else
        {
          v14 = 0xD00000000000001ALL;
        }

        if (v4)
        {
          v15 = 0xEE00726576726553;
        }

        else
        {
          v15 = 0x800000010078D790;
        }

        v16 = sub_10000C4E4(v14, v15, &v18);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "AirDrop %s is down, force stopping", v12, 0xCu);
        sub_10000C60C(v13);
      }

      v17 = (*(v5 + 40))(ObjectType, v5);
      sub_10002B8D0(v17, 1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10035FD60(void *a1, char a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = qword_1009735E0;

  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v13 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  *(v14 + 48) = a2 & 1;

  sub_1002B3398(0, 0, v7, &unk_1007FD8B8, v14);
}

uint64_t sub_10035FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_10035FFE0, v7, 0);
}

uint64_t sub_10035FFE0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100360084(*(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

void sub_100360084(uint64_t a1, char a2)
{
  v3 = sub_100549548();
  v5 = v3;
  v6 = v4;
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v7)
  {
    if (v3 == v3 >> 32)
    {
LABEL_15:
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000C4AC(v16, qword_10097A3F0);
      oslog = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v17, "Empty AirDrop hashses in advertisement, ignoring", v18, 2u);
      }

      sub_100026AC0(v5, v6);

      return;
    }
  }

  else if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097A3F0);
    sub_100294008(v5, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    sub_100026AC0(v5, v6);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v31[0] = osloga;
      *v11 = 136380675;
      *&v32 = sub_100467BE4(v5, v6);
      v27 = v10;
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;

      v15 = sub_10000C4E4(v12, v14, v31);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v27, "Found BLE device - %{private}s", v11, 0xCu);
      sub_10000C60C(osloga);
    }

    if (sub_10036A1A4())
    {
      sub_100359850(1);
    }
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097A3F0);
    sub_100294008(v5, v6);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    sub_100026AC0(v5, v6);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      oslogb = swift_slowAlloc();
      v31[0] = oslogb;
      *v22 = 136380675;
      *&v32 = sub_100467BE4(v5, v6);
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
      v23 = BidirectionalCollection<>.joined(separator:)();
      v25 = v24;

      v26 = sub_10000C4E4(v23, v25, v31);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Lost BLE device - %{private}s", v22, 0xCu);
      sub_10000C60C(oslogb);
    }

    swift_beginAccess();
    sub_10036DF20(v5, v6, &v32);
    swift_endAccess();
    sub_10028BCC0(v32, *(&v32 + 1));
    if ((sub_100358F30() & 1) == 0)
    {
      sub_10002B8D0(1, 0);
    }
  }

  sub_100026AC0(v5, v6);
}

uint64_t sub_1003605F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_100360698, v5, 0);
}

uint64_t sub_100360698()
{
  v1 = v0[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_100360884;
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];

    return sub_10053B210(v6, v4, v5);
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097A3F0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Missing delegate for start receive", v11, 2u);
    }

    v12 = v0[2];

    v13 = enum case for SFAirDropReceive.AskResponse.error(_:);
    v14 = type metadata accessor for SFAirDropReceive.AskResponse();
    (*(*(v14 - 8) + 104))(v12, v13, v14);
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100360884()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100360994, v2, 0);
}

uint64_t sub_100360994()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003609F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_100360AC4, v5, 0);
}

uint64_t sub_100360AC4()
{
  v20 = v0;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097A3F0);
  sub_1003708C4(v2, v1, type metadata accessor for SDAirDropServerConnectionIdentity);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = sub_1005ADA80();
    v12 = v11;
    sub_10037092C(v7, type metadata accessor for SDAirDropServerConnectionIdentity);
    v13 = sub_10000C4E4(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Tearing down handler for server %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_10037092C(v7, type metadata accessor for SDAirDropServerConnectionIdentity);
  }

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_100360CF8;
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];

  return sub_100360E74(v17, v15);
}

uint64_t sub_100360CF8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100360E08, v2, 0);
}

uint64_t sub_100360E08()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_100362A30(v0[2]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100360E74(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v7 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v3[34] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v3[41] = static AirDropActor.shared;

  return _swift_task_switch(sub_100360FF8, v9, 0);
}

uint64_t sub_100360FF8()
{
  v123 = v0;
  v1 = v0[34];
  sub_1003708C4(v0[26], v0[40], type metadata accessor for SDAirDropServerConnectionIdentity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = v0[28];
      (*(v0[30] + 32))(v0[33], v0[40], v0[29]);
      v4 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
      v0[48] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
      swift_beginAccess();
      v5 = *(v3 + v4);
      if (*(v5 + 16))
      {
        v6 = sub_100570848(v0[33]);
        if (v7)
        {
          v8 = *(*(v5 + 56) + 8 * v6);
          v0[49] = v8;
          swift_endAccess();
          v8;
          v9 = swift_task_alloc();
          v0[50] = v9;
          *v9 = v0;
          v10 = sub_100362140;
LABEL_34:
          v9[1] = v10;
          v85 = v0[27];

          return sub_100641284(v85);
        }
      }

      swift_endAccess();
      v45 = v0[48];
      v46 = v0[32];
      v47 = v0[28];
      (*(v0[30] + 16))(v46, v0[33], v0[29]);
      swift_beginAccess();
      sub_1002AFA94(0, v46);
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v48 = v0[36];
      v49 = v0[28];
      v50 = v0[26];
      v51 = type metadata accessor for Logger();
      sub_10000C4AC(v51, qword_10097A3F0);
      sub_1003708C4(v50, v48, type metadata accessor for SDAirDropServerConnectionIdentity);
      swift_retain_n();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = v0[36];
        v120 = v0[33];
        v55 = v0[30];
        v116 = v0[48];
        log = v0[29];
        v56 = v0[28];
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v122 = v58;
        *v57 = 136315394;
        v59 = sub_1005ADA80();
        v61 = v60;
        sub_10037092C(v54, type metadata accessor for SDAirDropServerConnectionIdentity);
        v62 = sub_10000C4E4(v59, v61, &v122);

        *(v57 + 4) = v62;
        *(v57 + 12) = 2048;
        v63 = *(*(v56 + v116) + 16);

        *(v57 + 14) = v63;

        v64 = "Removed handler for bonjour connection %s count: %ld";
LABEL_29:
        _os_log_impl(&_mh_execute_header, v52, v53, v64, v57, 0x16u);
        sub_10000C60C(v58);

        (*(v55 + 8))(v120, log);
        goto LABEL_38;
      }

      v79 = v0[36];
      v80 = v0[33];
    }

    else
    {
      v39 = v0[28];
      (*(v0[30] + 32))(v0[31], v0[40], v0[29]);
      v40 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
      v0[51] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
      swift_beginAccess();
      v41 = *(v39 + v40);
      if (*(v41 + 16))
      {
        v42 = sub_100570848(v0[31]);
        if (v43)
        {
          v44 = *(*(v41 + 56) + 8 * v42);
          v0[52] = v44;
          swift_endAccess();
          v44;
          v9 = swift_task_alloc();
          v0[53] = v9;
          *v9 = v0;
          v10 = sub_1003625BC;
          goto LABEL_34;
        }
      }

      swift_endAccess();
      v65 = v0[51];
      v66 = v0[32];
      v67 = v0[28];
      (*(v0[30] + 16))(v66, v0[31], v0[29]);
      swift_beginAccess();
      sub_1002AFA94(0, v66);
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v68 = v0[35];
      v69 = v0[28];
      v70 = v0[26];
      v71 = type metadata accessor for Logger();
      sub_10000C4AC(v71, qword_10097A3F0);
      sub_1003708C4(v70, v68, type metadata accessor for SDAirDropServerConnectionIdentity);
      swift_retain_n();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v72 = v0[35];
        v55 = v0[30];
        v120 = v0[31];
        v73 = v0[28];
        v117 = v0[51];
        log = v0[29];
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v122 = v58;
        *v57 = 136315394;
        v74 = sub_1005ADA80();
        v76 = v75;
        sub_10037092C(v72, type metadata accessor for SDAirDropServerConnectionIdentity);
        v77 = sub_10000C4E4(v74, v76, &v122);

        *(v57 + 4) = v77;
        *(v57 + 12) = 2048;
        v78 = *(*(v73 + v117) + 16);

        *(v57 + 14) = v78;

        v64 = "Removed handler for quic connection %s count: %ld";
        goto LABEL_29;
      }

      v79 = v0[35];
      v80 = v0[31];
    }

    v81 = v0[29];
    v82 = v0[30];
    v83 = v0[28];

    sub_10037092C(v79, type metadata accessor for SDAirDropServerConnectionIdentity);
    (*(v82 + 8))(v80, v81);
    goto LABEL_38;
  }

  v11 = v0[28];
  v12 = *v0[40];
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers;
  v0[42] = v12;
  v0[43] = v13;
  swift_beginAccess();
  v14 = *(v11 + v13);
  v15 = *(v14 + 16);
  v0[44] = 0;
  if (v15)
  {
    v16 = (v14 + 40);
    v17 = -v15;
    v18 = 1;
    while (1)
    {
      v19 = *(v16 - 1);
      v0[45] = v19;
      if (v12 == v19)
      {
        break;
      }

      v0[44] = v18;
      v16 += 2;
      ++v18;
      if (v17 + v18 == 1)
      {
        goto LABEL_10;
      }
    }

    v84 = *v16;
    v0[46] = *v16;
    swift_unknownObjectRetain();
    v84;
    v9 = swift_task_alloc();
    v0[47] = v9;
    *v9 = v0;
    v10 = sub_100361BDC;
    goto LABEL_34;
  }

LABEL_10:
  v20 = v0[28];
  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourDiscoveryHandlers;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (v22 + 32);
    while (v12 != *v25)
    {
      ++v24;
      v25 += 2;
      if (v23 == v24)
      {
        goto LABEL_14;
      }
    }

    swift_beginAccess();
    sub_1002CD060(v24);
    v99 = v98;
    swift_endAccess();
    swift_unknownObjectRelease();

    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v100 = v0[38];
    v101 = v0[28];
    v102 = v0[26];
    v103 = type metadata accessor for Logger();
    sub_10000C4AC(v103, qword_10097A3F0);
    sub_1003708C4(v102, v100, type metadata accessor for SDAirDropServerConnectionIdentity);
    swift_retain_n();
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    v106 = os_log_type_enabled(v104, v105);
    v107 = v0[38];
    v108 = v0[28];
    if (v106)
    {
      v109 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122 = v121;
      *v109 = 136315394;
      loga = v104;
      v110 = sub_1005ADA80();
      v112 = v111;
      sub_10037092C(v107, type metadata accessor for SDAirDropServerConnectionIdentity);
      v113 = sub_10000C4E4(v110, v112, &v122);

      *(v109 + 4) = v113;
      *(v109 + 12) = 2048;
      v114 = *(*(v20 + v21) + 16);

      *(v109 + 14) = v114;

      _os_log_impl(&_mh_execute_header, loga, v105, "Removed handler for discovery bonjour connection %s count: %ld", v109, 0x16u);
      sub_10000C60C(v121);

      swift_unknownObjectRelease();
    }

    else
    {
      v115 = v0[28];

      swift_unknownObjectRelease();

      sub_10037092C(v107, type metadata accessor for SDAirDropServerConnectionIdentity);
    }

    goto LABEL_39;
  }

LABEL_14:
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v26 = v0[37];
  v27 = v0[26];
  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_10097A3F0);
  sub_1003708C4(v27, v26, type metadata accessor for SDAirDropServerConnectionIdentity);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[37];
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v122 = v34;
    *v33 = 136315138;
    v35 = sub_1005ADA80();
    v37 = v36;
    sub_10037092C(v32, type metadata accessor for SDAirDropServerConnectionIdentity);
    v38 = sub_10000C4E4(v35, v37, &v122);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unable to remove matching handler for connection %s, likely already removed", v33, 0xCu);
    sub_10000C60C(v34);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_10037092C(v32, type metadata accessor for SDAirDropServerConnectionIdentity);
  }

LABEL_38:
  v87 = v0[28];
  sub_100362A30(v0[26]);
LABEL_39:
  v89 = v0[39];
  v88 = v0[40];
  v91 = v0[37];
  v90 = v0[38];
  v93 = v0[35];
  v92 = v0[36];
  v95 = v0[32];
  v94 = v0[33];
  v96 = v0[31];

  v97 = v0[1];

  return v97();
}

uint64_t sub_100361BDC()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return _swift_task_switch(sub_100361CEC, v2, 0);
}

uint64_t sub_100361CEC()
{
  v53 = v0;
  v1 = v0[44];
  if (v1 >= *(*(v0[28] + v0[43]) + 16))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
      v48 = v0[28];
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_10097A3F0);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[43];
      v25 = v0[44];
      v27 = v0[42];
      v28 = v0[28];
      v29 = swift_slowAlloc();
      *v29 = 134218240;
      *(v29 + 4) = v25;
      *(v29 + 12) = 2048;
      *(v29 + 14) = *(*(v28 + v26) + 16);

      _os_log_impl(&_mh_execute_header, v23, v24, "Attempting to remove at index %ld but only have %ld handlers", v29, 0x16u);
    }

    else
    {
      v33 = v0[42];
      v34 = v0[28];
    }

    swift_unknownObjectRelease();

    v35 = v0[45];
    v36 = v0[46];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_beginAccess();
    sub_1002CD060(v1);
    v3 = v2;
    swift_endAccess();
    swift_unknownObjectRelease();

    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v4 = v0[39];
    v5 = v0[28];
    v6 = v0[26];
    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097A3F0);
    sub_1003708C4(v6, v4, type metadata accessor for SDAirDropServerConnectionIdentity);
    swift_retain_n();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[45];
    v12 = v0[46];
    if (v10)
    {
      v49 = v0[43];
      v50 = v0[42];
      v13 = v0[39];
      v14 = v0[28];
      v51 = v0[46];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v52 = v16;
      *v15 = 136315394;
      v17 = sub_1005ADA80();
      v19 = v18;
      sub_10037092C(v13, type metadata accessor for SDAirDropServerConnectionIdentity);
      v20 = sub_10000C4E4(v17, v19, &v52);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2048;
      v21 = *(*(v14 + v49) + 16);

      *(v15 + 14) = v21;

      _os_log_impl(&_mh_execute_header, v8, v9, "Removed handler for legacy bonjour connection %s count: %ld", v15, 0x16u);
      sub_10000C60C(v16);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      v30 = v0[42];
      v31 = v0[39];
      v32 = v0[28];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_10037092C(v31, type metadata accessor for SDAirDropServerConnectionIdentity);
    }
  }

  v38 = v0[39];
  v37 = v0[40];
  v40 = v0[37];
  v39 = v0[38];
  v42 = v0[35];
  v41 = v0[36];
  v44 = v0[32];
  v43 = v0[33];
  v45 = v0[31];

  v46 = v0[1];

  return v46();
}

uint64_t sub_100362140()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 328);
  v5 = *v0;

  return _swift_task_switch(sub_100362268, v3, 0);
}

uint64_t sub_100362268()
{
  v43 = v0;
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[32];
  v4 = v0[28];
  (*(v0[30] + 16))(v3, v0[33], v0[29]);
  swift_beginAccess();
  sub_1002AFA94(0, v3);
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v5 = v0[36];
  v6 = v0[28];
  v7 = v0[26];
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097A3F0);
  sub_1003708C4(v7, v5, type metadata accessor for SDAirDropServerConnectionIdentity);
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v38 = v0[48];
    v11 = v0[36];
    v12 = v0[30];
    v40 = v0[29];
    v41 = v0[33];
    v13 = v0[28];
    v39 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136315394;
    v16 = sub_1005ADA80();
    v18 = v17;
    sub_10037092C(v11, type metadata accessor for SDAirDropServerConnectionIdentity);
    v19 = sub_10000C4E4(v16, v18, &v42);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    v20 = *(*(v13 + v38) + 16);

    *(v14 + 14) = v20;

    _os_log_impl(&_mh_execute_header, v9, v10, "Removed handler for bonjour connection %s count: %ld", v14, 0x16u);
    sub_10000C60C(v15);

    (*(v12 + 8))(v41, v40);
  }

  else
  {
    v21 = v0[36];
    v22 = v0[33];
    v23 = v0[29];
    v24 = v0[30];
    v25 = v0[28];

    sub_10037092C(v21, type metadata accessor for SDAirDropServerConnectionIdentity);
    (*(v24 + 8))(v22, v23);
  }

  v26 = v0[28];
  sub_100362A30(v0[26]);
  v28 = v0[39];
  v27 = v0[40];
  v30 = v0[37];
  v29 = v0[38];
  v32 = v0[35];
  v31 = v0[36];
  v34 = v0[32];
  v33 = v0[33];
  v35 = v0[31];

  v36 = v0[1];

  return v36();
}

uint64_t sub_1003625BC()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 328);
  v5 = *v0;

  return _swift_task_switch(sub_1003626E4, v3, 0);
}

uint64_t sub_1003626E4()
{
  v43 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[32];
  v4 = v0[28];
  (*(v0[30] + 16))(v3, v0[31], v0[29]);
  swift_beginAccess();
  sub_1002AFA94(0, v3);
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v5 = v0[35];
  v6 = v0[28];
  v7 = v0[26];
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097A3F0);
  sub_1003708C4(v7, v5, type metadata accessor for SDAirDropServerConnectionIdentity);
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v38 = v0[51];
    v11 = v0[35];
    v12 = v0[30];
    v13 = v0[28];
    v40 = v0[29];
    v41 = v0[31];
    v39 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136315394;
    v16 = sub_1005ADA80();
    v18 = v17;
    sub_10037092C(v11, type metadata accessor for SDAirDropServerConnectionIdentity);
    v19 = sub_10000C4E4(v16, v18, &v42);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    v20 = *(*(v13 + v38) + 16);

    *(v14 + 14) = v20;

    _os_log_impl(&_mh_execute_header, v9, v10, "Removed handler for quic connection %s count: %ld", v14, 0x16u);
    sub_10000C60C(v15);

    (*(v12 + 8))(v41, v40);
  }

  else
  {
    v21 = v0[35];
    v23 = v0[30];
    v22 = v0[31];
    v24 = v0[28];
    v25 = v0[29];

    sub_10037092C(v21, type metadata accessor for SDAirDropServerConnectionIdentity);
    (*(v23 + 8))(v22, v25);
  }

  v26 = v0[28];
  sub_100362A30(v0[26]);
  v28 = v0[39];
  v27 = v0[40];
  v30 = v0[37];
  v29 = v0[38];
  v32 = v0[35];
  v31 = v0[36];
  v34 = v0[32];
  v33 = v0[33];
  v35 = v0[31];

  v36 = v0[1];

  return v36();
}

void sub_100362A30(uint64_t a1)
{
  v3 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003708C4(a1, v6, type metadata accessor for SDAirDropServerConnectionIdentity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10037092C(v6, type metadata accessor for SDAirDropServerConnectionIdentity);
    if (sub_100358F30())
    {
      return;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v8 - 8) + 8))(v6, v8);
    if (sub_100358F30())
    {
      return;
    }

LABEL_6:
    sub_10002B8D0(1, 0);
    return;
  }

  if ((sub_100358DE4() & 1) == 0)
  {
    sub_10002B8D0(0, 0);
  }

  v9 = *(v1 + 48);
  if (![v9 discoverableLevel])
  {
    sub_10002A73C();
  }

  if (![v9 screenStateSupportsAirDrop] || !objc_msgSend(v9, "wirelessEnabled") || (v10 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions, swift_beginAccess(), !*(*(v1 + v10) + 16)))
  {
    sub_10002B8D0(2, 0);
  }

  v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v11 - 8) + 8))(v6, v11);
}

uint64_t sub_100362C20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.Failure();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v2[16] = static AirDropActor.shared;

  return _swift_task_switch(sub_100362E30, v15, 0);
}

uint64_t sub_100362E30()
{
  v49 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[2];
  SFAirDropReceive.Transfer.state.getter();
  if ((*(v2 + 88))(v1, v3) == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    v6 = v0[14];
    v5 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    (*(v0[11] + 96))(v8, v0[10]);
    v9 = sub_10028088C(&qword_10097A670, &unk_100804290);
    (*(v6 + 32))(v5, v8 + *(v9 + 48), v7);
    v10 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    (*(*(v10 - 8) + 8))(v8, v10);
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    v14 = v0[2];
    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_10097A3F0);
    (*(v12 + 16))(v11, v14, v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[7];
    if (v18)
    {
      v45 = v0[7];
      v22 = v0[5];
      v23 = v0[6];
      v24 = v0[4];
      v25 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v25 = 136315138;
      v46 = v17;
      SFAirDropReceive.Transfer.id.getter();
      sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v22 + 8))(v23, v24);
      (*(v20 + 8))(v19, v45);
      v29 = sub_10000C4E4(v26, v28, &v48);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v16, v46, "Transfer failed, removing handler for transferID: %s", v25, 0xCu);
      sub_10000C60C(v47);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v36 = v0[14];
    v35 = v0[15];
    v37 = v0[13];
    v38 = v0[6];
    v39 = v0[2];
    SFAirDropReceive.Transfer.id.getter();
    sub_1000053E8(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    v40 = swift_allocError();
    v0[17] = v40;
    (*(v36 + 16))(v41, v35, v37);
    v42 = swift_task_alloc();
    v0[18] = v42;
    *v42 = v0;
    v42[1] = sub_1003632B4;
    v43 = v0[6];
    v44 = v0[3];

    return sub_1003634E8(v43, v40);
  }

  else
  {
    v30 = v0[15];
    v31 = v0[9];
    v32 = v0[6];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1003632B4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_100363444, v3, 0);
}

uint64_t sub_100363444()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003634E8(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[32] = static AirDropActor.shared;

  return _swift_task_switch(sub_10036360C, v7, 0);
}

uint64_t sub_10036360C()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
  v0[33] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = sub_100570848(v0[23]);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      v0[34] = v6;
      swift_endAccess();
      v6;
      v7 = swift_task_alloc();
      v0[35] = v7;
      *v7 = v0;
      v8 = sub_10036392C;
LABEL_14:
      v7[1] = v8;
      v32 = v0[24];

      return sub_100641284(v32);
    }
  }

  v9 = v0[25];
  swift_endAccess();
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
  v0[36] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_100570848(v0[23]);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      v0[37] = v14;
      swift_endAccess();
      v14;
      v7 = swift_task_alloc();
      v0[38] = v7;
      *v7 = v0;
      v8 = sub_100363DE8;
      goto LABEL_14;
    }
  }

  v15 = v0[25];
  v16 = v0[23];
  swift_endAccess();
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers;
  v0[39] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers;
  swift_beginAccess();
  v18 = *(v15 + v17);
  v19 = swift_task_alloc();
  *(v19 + 16) = v16;

  v20 = sub_1002CCDE4(sub_10036FFFC, v19, v18);
  v22 = v21;

  v0[40] = v20;

  if ((v22 & 1) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v29 = *(v15 + v17);
      if (v20 < *(v29 + 16))
      {
        v30 = v29 + 16 * v20;
        v0[41] = *(v30 + 32);
        v31 = *(v30 + 40);
        v0[42] = v31;
        swift_unknownObjectRetain();
        v31;
        v7 = swift_task_alloc();
        v0[43] = v7;
        *v7 = v0;
        v8 = sub_100364218;
        goto LABEL_14;
      }
    }

    __break(1u);
    return result;
  }

  v25 = v0[30];
  v24 = v0[31];
  v27 = v0[28];
  v26 = v0[29];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10036392C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_100363A3C, v2, 0);
}

uint64_t sub_100363A3C()
{
  v42 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[25];
  v4 = *(v0[27] + 16);
  v4(v2, v0[23], v0[26]);
  swift_beginAccess();
  sub_1002AFA94(0, v2);
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v5 = v0[30];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097A3F0);
  v4(v5, v8, v6);
  swift_retain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v39 = v0[33];
    v12 = v0[30];
    v14 = v0[26];
    v13 = v0[27];
    v15 = v0[25];
    v16 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v16 = 136315394;
    sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_10000C4E4(v17, v19, &v41);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    v21 = *(*(v15 + v39) + 16);

    *(v16 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v10, v11, "Removed quic handler for transferID: %s count: %ld", v16, 0x16u);
    sub_10000C60C(v40);
  }

  else
  {
    v22 = v0[30];
    v23 = v0[26];
    v24 = v0[27];
    v25 = v0[25];

    (*(v24 + 8))(v22, v23);
  }

  v26 = v0[25];
  if ((sub_100358DE4() & 1) == 0)
  {
    v27 = v0[25];
    sub_10002B8D0(0, 0);
  }

  v28 = *(v0[25] + 48);
  if (![v28 discoverableLevel])
  {
    sub_10002A73C();
  }

  if ([v28 screenStateSupportsAirDrop] && objc_msgSend(v28, "wirelessEnabled") && (v29 = v0[25], v30 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions, swift_beginAccess(), *(*(v29 + v30) + 16)))
  {
    v31 = v0[34];
  }

  else
  {
    v31 = v0[34];
    v32 = v0[25];
    sub_10002B8D0(2, 0);
  }

  v34 = v0[30];
  v33 = v0[31];
  v36 = v0[28];
  v35 = v0[29];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100363DE8()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_100363EF8, v2, 0);
}

uint64_t sub_100363EF8()
{
  v39 = v0;
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[25];
  v4 = *(v0[27] + 16);
  v4(v2, v0[23], v0[26]);
  swift_beginAccess();
  sub_1002AFA94(0, v2);
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097A3F0);
  v4(v5, v8, v6);
  swift_retain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v36 = v0[36];
    v12 = v0[29];
    v14 = v0[26];
    v13 = v0[27];
    v15 = v0[25];
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v16 = 136315394;
    sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_10000C4E4(v17, v19, &v38);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    v21 = *(*(v15 + v36) + 16);

    *(v16 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v10, v11, "Removed bonjour handler for transferID: %s count: %ld", v16, 0x16u);
    sub_10000C60C(v37);
  }

  else
  {
    v22 = v0[29];
    v23 = v0[26];
    v24 = v0[27];
    v25 = v0[25];

    (*(v24 + 8))(v22, v23);
  }

  v26 = v0[25];
  v27 = sub_100358F30();
  v28 = v0[37];
  if ((v27 & 1) == 0)
  {
    v29 = v0[25];
    sub_10002B8D0(1, 0);
  }

  v31 = v0[30];
  v30 = v0[31];
  v33 = v0[28];
  v32 = v0[29];

  v34 = v0[1];

  return v34();
}

uint64_t sub_100364218()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_100364328, v2, 0);
}

uint64_t sub_100364328()
{
  v42 = v0;
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[25];
  swift_beginAccess();
  sub_1002CD060(v1);
  v5 = v4;
  swift_endAccess();
  swift_unknownObjectRelease();

  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[23];
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097A3F0);
  (*(v7 + 16))(v6, v10, v8);
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v39 = v0[39];
    v15 = v0[27];
    v14 = v0[28];
    v16 = v0[25];
    v17 = v0[26];
    v18 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v18 = 136315394;
    sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v15 + 8))(v14, v17);
    v22 = sub_10000C4E4(v19, v21, &v41);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2048;
    v23 = *(*(v16 + v39) + 16);

    *(v18 + 14) = v23;

    _os_log_impl(&_mh_execute_header, v12, v13, "Removed legacy bonjour handler for transferID: %s count: %ld", v18, 0x16u);
    sub_10000C60C(v40);
  }

  else
  {
    v25 = v0[27];
    v24 = v0[28];
    v26 = v0[25];
    v27 = v0[26];

    (*(v25 + 8))(v24, v27);
  }

  v28 = v0[25];
  v29 = sub_100358F30();
  v30 = v0[41];
  v31 = v0[42];
  if ((v29 & 1) == 0)
  {
    v32 = v0[25];
    sub_10002B8D0(1, 0);
  }

  swift_unknownObjectRelease();

  v34 = v0[30];
  v33 = v0[31];
  v36 = v0[28];
  v35 = v0[29];

  v37 = v0[1];

  return v37();
}

id sub_10036463C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v301 = a3;
  v321 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v320 = *(v321 - 8);
  v6 = *(v320 + 64);
  __chkstk_darwin(v321);
  v319 = &v289 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for SFAirDrop.Progress();
  v313 = *(v316 - 8);
  v8 = *(v313 + 64);
  __chkstk_darwin(v316);
  v314 = &v289 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v317 = *(v318 - 8);
  v10 = *(v317 + 64);
  __chkstk_darwin(v318);
  v315 = &v289 - v11;
  v310 = type metadata accessor for SFAirDrop.AskProgress();
  v307 = *(v310 - 8);
  v12 = *(v307 + 64);
  __chkstk_darwin(v310);
  v308 = &v289 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_10028088C(&qword_10097A690, &qword_1007FD7E8);
  v311 = *(v312 - 8);
  v14 = *(v311 + 64);
  __chkstk_darwin(v312);
  v309 = &v289 - v15;
  v306 = sub_10028088C(&qword_10097A698, &unk_1007FD7F0);
  v305 = *(v306 - 8);
  v16 = *(v305 + 64);
  __chkstk_darwin(v306);
  v304 = &v289 - v17;
  v324 = type metadata accessor for UUID();
  v303 = *(v324 - 8);
  v18 = *(v303 + 64);
  __chkstk_darwin(v324);
  v302 = &v289 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v20 = *(v329 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v329);
  Strong = &v289 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v327 = (&v289 - v25);
  __chkstk_darwin(v24);
  v27 = &v289 - v26;
  v28 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28);
  v300 = (&v289 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __chkstk_darwin(v30);
  v299 = &v289 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v289 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = (&v289 - v38);
  v40 = __chkstk_darwin(v37);
  v42 = &v289 - v41;
  __chkstk_darwin(v40);
  v44 = (&v289 - v43);
  v45 = a1;
  sub_1003708C4(a1, &v289 - v43, type metadata accessor for SDAirDropServerConnectionIdentity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v322 = a1;
    if (EnumCaseMultiPayload == 1)
    {
      v47 = v327;
      (*(v20 + 32))(v327, v44, v329);
      v48 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
      swift_beginAccess();
      v49 = *(v4 + v48);
      if (*(v49 + 16) && (v50 = sub_100570848(v47), (v51 & 1) != 0))
      {
        v52 = *(*(v49 + 56) + 8 * v50);
        v53 = v47;
      }

      else
      {
        v328 = v20;
        v291 = *(v20 + 16);
        v326 = v27;
        (v291)(v27, v47, v329);
        v289 = type metadata accessor for SDAirDropServerConnectionIdentity;
        v325 = v42;
        sub_1003708C4(v45, v42, type metadata accessor for SDAirDropServerConnectionIdentity);
        v63 = v4[7];
        v293 = v4[6];
        v294 = v63;
        v295 = v4[8];
        v296 = v4[10];
        v297 = v4[12];
        Strong = swift_unknownObjectWeakLoadStrong();
        v298 = v4[5];
        v300 = type metadata accessor for SDAirDropReceiveHandler();
        v64 = objc_allocWithZone(v300);
        v292 = &v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_delegate];
        *(v292 + 1) = 0;
        swift_unknownObjectWeakInit();
        v290 = &v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate];
        *&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v301 = v4;
        v65 = &v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID];
        v66 = v302;
        UUID.init()();
        v67 = UUID.uuidString.getter();
        v69 = v68;
        v70 = v303;
        v71 = v324;
        (*(v303 + 8))(v66, v324);
        *v65 = v67;
        v65[1] = v69;
        v72 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
        v73 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
        (*(*(v73 - 8) + 56))(&v64[v72], 1, 1, v73);
        v74 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
        v75 = _s12HelloRequestVMa();
        (*(*(v75 - 8) + 56))(&v64[v74], 1, 1, v75);
        v76 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
        v77 = _s10AskRequestVMa();
        (*(*(v77 - 8) + 56))(&v64[v76], 1, 1, v77);
        v78 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
        v79 = _s13UploadRequestVMa();
        (*(*(v79 - 8) + 56))(&v64[v78], 1, 1, v79);
        v80 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeRequest;
        v81 = _s15ExchangeRequestVMa(0);
        (*(*(v81 - 8) + 56))(&v64[v80], 1, 1, v81);
        v82 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
        v83 = type metadata accessor for SFAirDropReceive.FileInfo();
        (*(*(v83 - 8) + 56))(&v64[v82], 1, 1, v83);
        *&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter] = 0;
        v84 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloConnection;
        v85 = type metadata accessor for SDAirDropServerConnection(0);
        v86 = *(*(v85 - 8) + 56);
        v86(&v64[v84], 1, 1, v85);
        v86(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection], 1, 1, v85);
        v86(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection], 1, 1, v85);
        v86(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection], 1, 1, v85);
        v86(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection], 1, 1, v85);
        v87 = &v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes];
        *v87 = 0;
        v87[8] = 1;
        v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia] = 0;
        (v291)(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id], v326, v329);
        v20 = v328;
        UUID.init()();
        (*(v70 + 32))(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID], v66, v71);
        sub_1003708C4(v325, &v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity], v289);
        v88 = v293;
        *&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus] = v293;
        v89 = v294;
        *&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent] = v294;
        v90 = v295;
        *&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_endpointService] = v295;
        *&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_pseudonymService] = v296;
        v91 = v297;
        *&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_queue] = v297;
        *(v292 + 1) = &off_1008DD338;
        swift_unknownObjectWeakAssign();
        *(v290 + 1) = v298;
        swift_unknownObjectWeakAssign();
        LOBYTE(v331) = 0;
        v92 = v88;
        v93 = v89;
        v94 = v90;

        v95 = v91;
        v96 = v304;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v305 + 32))(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation], v96, v306);
        (*(v307 + 104))(v308, enum case for SFAirDrop.AskProgress.notStarted(_:), v310);
        type metadata accessor for SFAirDropReceive.AskResponse();
        v97 = v309;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v311 + 32))(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation], v97, v312);
        (*(v313 + 104))(v314, enum case for SFAirDrop.Progress.notStarted(_:), v316);
        sub_10028088C(&qword_100975610, &qword_1007F89B0);
        v4 = v301;
        v98 = v315;
        v53 = v327;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v317 + 32))(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation], v98, v318);
        v99 = v319;
        SFAirDrop.NetworkMetrics.init()();
        (*(v320 + 32))(&v64[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics], v99, v321);
        v333.receiver = v64;
        v333.super_class = v300;
        v52 = objc_msgSendSuper2(&v333, "init");
        swift_unknownObjectRelease();
        sub_10037092C(v325, type metadata accessor for SDAirDropServerConnectionIdentity);
        (*(v20 + 8))(v326, v329);
      }

      v100 = v299;
      swift_endAccess();
      swift_beginAccess();
      v101 = v52;
      v102 = *(v4 + v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v331 = *(v4 + v48);
      *(v4 + v48) = 0x8000000000000000;
      sub_100578B14(v101, v53, isUniquelyReferenced_nonNull_native);
      *(v4 + v48) = v331;
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_10000C4AC(v104, qword_10097A3F0);
      sub_1003708C4(v322, v100, type metadata accessor for SDAirDropServerConnectionIdentity);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v335 = v108;
        *v107 = 136315138;
        v109 = sub_1005ADA80();
        v111 = v110;
        sub_10037092C(v100, type metadata accessor for SDAirDropServerConnectionIdentity);
        v112 = sub_10000C4E4(v109, v111, &v335);

        *(v107 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v105, v106, "Added bonjour connection %s", v107, 0xCu);
        sub_10000C60C(v108);
      }

      else
      {

        sub_10037092C(v100, type metadata accessor for SDAirDropServerConnectionIdentity);
      }

      (*(v20 + 8))(v327, v329);
    }

    else
    {
      v328 = v20;
      v57 = Strong;
      (*(v20 + 32))(Strong, v44, v329);
      v58 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
      swift_beginAccess();
      v59 = *(v4 + v58);
      if (*(v59 + 16) && (v60 = sub_100570848(v57), (v61 & 1) != 0))
      {
        v62 = *(*(v59 + 56) + 8 * v60);
      }

      else
      {
        v290 = *(v328 + 16);
        v326 = v27;
        (v290)(v27, Strong, v329);
        v292 = type metadata accessor for SDAirDropServerConnectionIdentity;
        v325 = v42;
        sub_1003708C4(v45, v42, type metadata accessor for SDAirDropServerConnectionIdentity);
        v113 = v4[7];
        v293 = v4[6];
        v294 = v113;
        v295 = v4[8];
        v296 = v4[10];
        v297 = v4[12];
        v299 = swift_unknownObjectWeakLoadStrong();
        v298 = v4[5];
        v327 = type metadata accessor for SDAirDropReceiveHandler();
        v114 = objc_allocWithZone(v327);
        v291 = &v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_delegate];
        *(v291 + 1) = 0;
        swift_unknownObjectWeakInit();
        v115 = &v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate];
        *&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v301 = v4;
        v116 = &v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID];
        v117 = v302;
        UUID.init()();
        v118 = UUID.uuidString.getter();
        v120 = v119;
        v121 = v303;
        (*(v303 + 8))(v117, v324);
        *v116 = v118;
        v116[1] = v120;
        v122 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
        v123 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
        (*(*(v123 - 8) + 56))(&v114[v122], 1, 1, v123);
        v124 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
        v125 = _s12HelloRequestVMa();
        (*(*(v125 - 8) + 56))(&v114[v124], 1, 1, v125);
        v126 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
        v127 = _s10AskRequestVMa();
        (*(*(v127 - 8) + 56))(&v114[v126], 1, 1, v127);
        v128 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
        v129 = _s13UploadRequestVMa();
        (*(*(v129 - 8) + 56))(&v114[v128], 1, 1, v129);
        v130 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeRequest;
        v131 = _s15ExchangeRequestVMa(0);
        (*(*(v131 - 8) + 56))(&v114[v130], 1, 1, v131);
        v132 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
        v133 = type metadata accessor for SFAirDropReceive.FileInfo();
        (*(*(v133 - 8) + 56))(&v114[v132], 1, 1, v133);
        *&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter] = 0;
        v134 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloConnection;
        v135 = type metadata accessor for SDAirDropServerConnection(0);
        v136 = *(*(v135 - 8) + 56);
        v136(&v114[v134], 1, 1, v135);
        v136(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection], 1, 1, v135);
        v136(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection], 1, 1, v135);
        v136(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection], 1, 1, v135);
        v136(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection], 1, 1, v135);
        v137 = &v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes];
        *v137 = 0;
        v137[8] = 1;
        v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia] = 0;
        (v290)(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id], v326, v329);
        UUID.init()();
        (*(v121 + 32))(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID], v117, v324);
        sub_1003708C4(v325, &v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity], v292);
        v138 = v293;
        *&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus] = v293;
        v139 = v294;
        *&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent] = v294;
        v140 = v295;
        *&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_endpointService] = v295;
        *&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_pseudonymService] = v296;
        v141 = v297;
        *&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_queue] = v297;
        *(v291 + 1) = &off_1008DD338;
        swift_unknownObjectWeakAssign();
        *(v115 + 1) = v298;
        swift_unknownObjectWeakAssign();
        LOBYTE(v331) = 0;
        v142 = v138;
        v143 = v139;
        v144 = v140;

        v145 = v141;
        v146 = v304;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v305 + 32))(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation], v146, v306);
        (*(v307 + 104))(v308, enum case for SFAirDrop.AskProgress.notStarted(_:), v310);
        type metadata accessor for SFAirDropReceive.AskResponse();
        v147 = v309;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v311 + 32))(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation], v147, v312);
        (*(v313 + 104))(v314, enum case for SFAirDrop.Progress.notStarted(_:), v316);
        sub_10028088C(&qword_100975610, &qword_1007F89B0);
        v4 = v301;
        v148 = v315;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v317 + 32))(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation], v148, v318);
        v149 = v319;
        SFAirDrop.NetworkMetrics.init()();
        (*(v320 + 32))(&v114[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics], v149, v321);
        v334.receiver = v114;
        v334.super_class = v327;
        v62 = objc_msgSendSuper2(&v334, "init");
        swift_unknownObjectRelease();
        sub_10037092C(v325, type metadata accessor for SDAirDropServerConnectionIdentity);
        v57 = Strong;
        (*(v328 + 8))(v326, v329);
      }

      v150 = v300;
      swift_endAccess();
      swift_beginAccess();
      v101 = v62;
      v151 = *(v4 + v58);
      v152 = swift_isUniquelyReferenced_nonNull_native();
      v331 = *(v4 + v58);
      *(v4 + v58) = 0x8000000000000000;
      sub_100578B14(v101, v57, v152);
      *(v4 + v58) = v331;
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v153 = type metadata accessor for Logger();
      sub_10000C4AC(v153, qword_10097A3F0);
      sub_1003708C4(v322, v150, type metadata accessor for SDAirDropServerConnectionIdentity);
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v335 = v157;
        *v156 = 136315138;
        v158 = sub_1005ADA80();
        v160 = v159;
        sub_10037092C(v150, type metadata accessor for SDAirDropServerConnectionIdentity);
        v161 = sub_10000C4E4(v158, v160, &v335);

        *(v156 + 4) = v161;
        _os_log_impl(&_mh_execute_header, v154, v155, "Added quic connection %s", v156, 0xCu);
        sub_10000C60C(v157);
      }

      else
      {

        sub_10037092C(v150, type metadata accessor for SDAirDropServerConnectionIdentity);
      }

      (*(v328 + 8))(v57, v329);
    }

    return v101;
  }

  v327 = v39;
  v328 = v20;
  Strong = v36;
  v54 = *v44;
  if (sub_100674748() == 0x65766F637369442FLL && v55 == 0xE900000000000072)
  {

    v56 = v45;
  }

  else
  {
    v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v56 = v45;
    if ((v162 & 1) == 0)
    {
      v226 = v4 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers;
      swift_beginAccess();
      v227 = (*v226 + 32);
      v228 = *(*v226 + 16) + 1;
      while (--v228)
      {
        v166 = v227 + 2;
        v229 = *v227;
        v227 += 2;
        if (v54 == v229)
        {
LABEL_42:
          v230 = *(v166 - 1);
          swift_unknownObjectRelease();
          return v230;
        }
      }

      v232 = v302;
      UUID.init()();
      v326 = v27;
      SFAirDrop.TransferIdentifier.init(_:)();
      v291 = type metadata accessor for SDAirDropServerConnectionIdentity;
      v325 = v42;
      sub_1003708C4(v45, v42, type metadata accessor for SDAirDropServerConnectionIdentity);
      v233 = v4[7];
      v294 = v4[6];
      v295 = v233;
      v296 = v4[8];
      v297 = v4[10];
      v298 = v4[12];
      v327 = swift_unknownObjectWeakLoadStrong();
      v299 = v4[5];
      v300 = type metadata accessor for SDAirDropReceiveHandler();
      v234 = objc_allocWithZone(v300);
      v301 = v226;
      v235 = v234;
      v293 = &v234[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_delegate];
      *(v293 + 1) = 0;
      swift_unknownObjectWeakInit();
      v292 = &v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate];
      *&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v322 = v56;
      v236 = &v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID];
      UUID.init()();
      v237 = UUID.uuidString.getter();
      v239 = v238;
      v240 = v303;
      v241 = v324;
      (*(v303 + 8))(v232, v324);
      *v236 = v237;
      v236[1] = v239;
      v242 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
      v243 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
      (*(*(v243 - 8) + 56))(&v235[v242], 1, 1, v243);
      v244 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
      v245 = _s12HelloRequestVMa();
      (*(*(v245 - 8) + 56))(&v235[v244], 1, 1, v245);
      v246 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
      v247 = _s10AskRequestVMa();
      (*(*(v247 - 8) + 56))(&v235[v246], 1, 1, v247);
      v248 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
      v249 = _s13UploadRequestVMa();
      (*(*(v249 - 8) + 56))(&v235[v248], 1, 1, v249);
      v250 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeRequest;
      v251 = _s15ExchangeRequestVMa(0);
      (*(*(v251 - 8) + 56))(&v235[v250], 1, 1, v251);
      v252 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
      v253 = type metadata accessor for SFAirDropReceive.FileInfo();
      (*(*(v253 - 8) + 56))(&v235[v252], 1, 1, v253);
      *&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter] = 0;
      v254 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloConnection;
      v255 = type metadata accessor for SDAirDropServerConnection(0);
      v256 = *(*(v255 - 8) + 56);
      v256(&v235[v254], 1, 1, v255);
      v256(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection], 1, 1, v255);
      v256(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection], 1, 1, v255);
      v256(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection], 1, 1, v255);
      v256(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection], 1, 1, v255);
      v257 = &v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes];
      *v257 = 0;
      v257[8] = 1;
      v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia] = 0;
      (*(v328 + 16))(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id], v326, v329);
      UUID.init()();
      (*(v240 + 32))(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID], v232, v241);
      sub_1003708C4(v325, &v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity], v291);
      v258 = v294;
      *&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus] = v294;
      v259 = v295;
      *&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent] = v295;
      v260 = v296;
      *&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_endpointService] = v296;
      *&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_pseudonymService] = v297;
      v261 = v298;
      *&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_queue] = v298;
      *(v293 + 1) = &off_1008DD338;
      swift_unknownObjectWeakAssign();
      *(v292 + 1) = v299;
      swift_unknownObjectWeakAssign();
      LOBYTE(v331) = 0;
      v262 = v258;
      v263 = v259;
      v264 = v260;

      v265 = v261;
      v266 = v304;
      SFProgressContinuation.init(_:initialProgress:file:line:)();
      (*(v305 + 32))(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation], v266, v306);
      (*(v307 + 104))(v308, enum case for SFAirDrop.AskProgress.notStarted(_:), v310);
      type metadata accessor for SFAirDropReceive.AskResponse();
      v267 = v309;
      SFProgressContinuation.init(_:initialProgress:file:line:)();
      (*(v311 + 32))(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation], v267, v312);
      (*(v313 + 104))(v314, enum case for SFAirDrop.Progress.notStarted(_:), v316);
      sub_10028088C(&qword_100975610, &qword_1007F89B0);
      v268 = v315;
      SFProgressContinuation.init(_:initialProgress:file:line:)();
      (*(v317 + 32))(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation], v268, v318);
      v269 = v319;
      SFAirDrop.NetworkMetrics.init()();
      (*(v320 + 32))(&v235[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics], v269, v321);
      v332.receiver = v235;
      v270 = v301;
      v332.super_class = v300;
      v271 = objc_msgSendSuper2(&v332, "init");
      swift_unknownObjectRelease();
      sub_10037092C(v325, type metadata accessor for SDAirDropServerConnectionIdentity);
      (*(v328 + 8))(v326, v329);
      swift_beginAccess();
      v272 = *v270;
      swift_unknownObjectRetain();
      v101 = v271;
      v273 = swift_isUniquelyReferenced_nonNull_native();
      *v270 = v272;
      v274 = v322;
      if ((v273 & 1) == 0)
      {
        v272 = sub_10028E320(0, v272[2] + 1, 1, v272);
        *v270 = v272;
      }

      v276 = v272[2];
      v275 = v272[3];
      if (v276 >= v275 >> 1)
      {
        v272 = sub_10028E320((v275 > 1), v276 + 1, 1, v272);
      }

      v272[2] = v276 + 1;
      v277 = &v272[2 * v276];
      v277[4] = v54;
      v277[5] = v101;
      *v270 = v272;
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v278 = type metadata accessor for Logger();
      sub_10000C4AC(v278, qword_10097A3F0);
      v279 = v274;
      v280 = Strong;
      sub_1003708C4(v279, Strong, type metadata accessor for SDAirDropServerConnectionIdentity);
      swift_retain_n();
      v217 = Logger.logObject.getter();
      v281 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v217, v281))
      {

        swift_unknownObjectRelease();

        sub_10037092C(v280, type metadata accessor for SDAirDropServerConnectionIdentity);
        return v101;
      }

      v282 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      v331 = v283;
      *v282 = 136315394;
      v284 = sub_1005ADA80();
      v286 = v285;
      sub_10037092C(v280, type metadata accessor for SDAirDropServerConnectionIdentity);
      v287 = sub_10000C4E4(v284, v286, &v331);

      *(v282 + 4) = v287;
      *(v282 + 12) = 2048;
      v288 = *(*v301 + 16);

      *(v282 + 14) = v288;

      _os_log_impl(&_mh_execute_header, v217, v281, "Added legacy bonjour connection %s count: %ld", v282, 0x16u);
      sub_10000C60C(v283);

      goto LABEL_52;
    }
  }

  v163 = v4 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourDiscoveryHandlers;
  swift_beginAccess();
  v164 = (*v163 + 32);
  v165 = *(*v163 + 16) + 1;
  while (--v165)
  {
    v166 = v164 + 2;
    v167 = *v164;
    v164 += 2;
    if (v54 == v167)
    {
      goto LABEL_42;
    }
  }

  v168 = v302;
  UUID.init()();
  v326 = v27;
  v169 = v168;
  SFAirDrop.TransferIdentifier.init(_:)();
  v293 = type metadata accessor for SDAirDropServerConnectionIdentity;
  v325 = v42;
  sub_1003708C4(v56, v42, type metadata accessor for SDAirDropServerConnectionIdentity);
  v170 = v4[7];
  v294 = v4[6];
  v295 = v170;
  v296 = v4[8];
  v297 = v4[10];
  v298 = v4[12];
  Strong = swift_unknownObjectWeakLoadStrong();
  v299 = v4[5];
  v300 = type metadata accessor for SDAirDropReceiveHandler();
  v171 = objc_allocWithZone(v300);
  v301 = v163;
  v172 = v171;
  v292 = &v171[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_delegate];
  *(v292 + 1) = 0;
  swift_unknownObjectWeakInit();
  v291 = &v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate];
  *&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v173 = &v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID];
  UUID.init()();
  v174 = UUID.uuidString.getter();
  v176 = v175;
  v177 = v303;
  v178 = v324;
  (*(v303 + 8))(v169, v324);
  *v173 = v174;
  v173[1] = v176;
  v179 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
  v180 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
  (*(*(v180 - 8) + 56))(&v172[v179], 1, 1, v180);
  v181 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
  v182 = _s12HelloRequestVMa();
  (*(*(v182 - 8) + 56))(&v172[v181], 1, 1, v182);
  v183 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
  v184 = _s10AskRequestVMa();
  (*(*(v184 - 8) + 56))(&v172[v183], 1, 1, v184);
  v185 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
  v186 = _s13UploadRequestVMa();
  (*(*(v186 - 8) + 56))(&v172[v185], 1, 1, v186);
  v187 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeRequest;
  v188 = _s15ExchangeRequestVMa(0);
  (*(*(v188 - 8) + 56))(&v172[v187], 1, 1, v188);
  v189 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
  v190 = type metadata accessor for SFAirDropReceive.FileInfo();
  (*(*(v190 - 8) + 56))(&v172[v189], 1, 1, v190);
  *&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter] = 0;
  v191 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloConnection;
  v192 = type metadata accessor for SDAirDropServerConnection(0);
  v193 = *(*(v192 - 8) + 56);
  v322 = v56;
  v193(&v172[v191], 1, 1, v192);
  v193(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection], 1, 1, v192);
  v193(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection], 1, 1, v192);
  v193(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection], 1, 1, v192);
  v193(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection], 1, 1, v192);
  v194 = &v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes];
  *v194 = 0;
  v194[8] = 1;
  v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia] = 0;
  (*(v328 + 16))(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id], v326, v329);
  UUID.init()();
  (*(v177 + 32))(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID], v169, v178);
  sub_1003708C4(v325, &v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity], v293);
  v195 = v294;
  *&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus] = v294;
  v196 = v295;
  *&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent] = v295;
  v197 = v296;
  *&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_endpointService] = v296;
  *&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_pseudonymService] = v297;
  v198 = v298;
  *&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_queue] = v298;
  *(v292 + 1) = &off_1008DD338;
  swift_unknownObjectWeakAssign();
  *(v291 + 1) = v299;
  swift_unknownObjectWeakAssign();
  LOBYTE(v331) = 0;
  v199 = v195;
  v200 = v196;
  v201 = v197;

  v202 = v198;
  v203 = v304;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v305 + 32))(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation], v203, v306);
  (*(v307 + 104))(v308, enum case for SFAirDrop.AskProgress.notStarted(_:), v310);
  type metadata accessor for SFAirDropReceive.AskResponse();
  v204 = v309;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v311 + 32))(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation], v204, v312);
  (*(v313 + 104))(v314, enum case for SFAirDrop.Progress.notStarted(_:), v316);
  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  v205 = v315;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v317 + 32))(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation], v205, v318);
  v206 = v319;
  SFAirDrop.NetworkMetrics.init()();
  (*(v320 + 32))(&v172[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics], v206, v321);
  v330.receiver = v172;
  v207 = v301;
  v330.super_class = v300;
  v208 = objc_msgSendSuper2(&v330, "init");
  swift_unknownObjectRelease();
  sub_10037092C(v325, type metadata accessor for SDAirDropServerConnectionIdentity);
  (*(v328 + 8))(v326, v329);
  swift_beginAccess();
  v209 = *v207;
  swift_unknownObjectRetain();
  v101 = v208;
  v210 = swift_isUniquelyReferenced_nonNull_native();
  *v207 = v209;
  v211 = v322;
  if ((v210 & 1) == 0)
  {
    v209 = sub_10028E320(0, v209[2] + 1, 1, v209);
    *v207 = v209;
  }

  v212 = v327;
  v214 = v209[2];
  v213 = v209[3];
  if (v214 >= v213 >> 1)
  {
    v209 = sub_10028E320((v213 > 1), v214 + 1, 1, v209);
  }

  v209[2] = v214 + 1;
  v215 = &v209[2 * v214];
  v215[4] = v54;
  v215[5] = v101;
  *v207 = v209;
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v216 = type metadata accessor for Logger();
  sub_10000C4AC(v216, qword_10097A3F0);
  sub_1003708C4(v211, v212, type metadata accessor for SDAirDropServerConnectionIdentity);
  swift_retain_n();
  v217 = Logger.logObject.getter();
  v218 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v217, v218))
  {
    v219 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v331 = v220;
    *v219 = 136315394;
    v221 = sub_1005ADA80();
    v223 = v222;
    sub_10037092C(v212, type metadata accessor for SDAirDropServerConnectionIdentity);
    v224 = sub_10000C4E4(v221, v223, &v331);

    *(v219 + 4) = v224;
    *(v219 + 12) = 2048;
    v225 = *(*v301 + 16);

    *(v219 + 14) = v225;

    _os_log_impl(&_mh_execute_header, v217, v218, "Added discovery bonjour connection %s count: %ld", v219, 0x16u);
    sub_10000C60C(v220);

LABEL_52:

    swift_unknownObjectRelease();
    return v101;
  }

  swift_unknownObjectRelease();

  sub_10037092C(v212, type metadata accessor for SDAirDropServerConnectionIdentity);
  return v101;
}

uint64_t sub_100367834(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v38 = type metadata accessor for SDAirDropServerConnection(0);
  v43 = *(v38 - 8);
  v3 = *(v43 + 64);
  v4 = __chkstk_darwin(v38);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v39 = &v37 - v5;
  v6 = sub_10028088C(&qword_10097A648, &qword_1007FD778);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v37 - v15;
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  sub_10000FF90(a1, v9, &qword_10097A648, &qword_1007FD778);
  v40 = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100005508(v9, &qword_10097A648, &qword_1007FD778);
  }

  sub_10000ED10(v9, v18, type metadata accessor for SDAirDropServerConnectionIdentity);
  sub_1003708C4(v18, v16, type metadata accessor for SDAirDropServerConnectionIdentity);
  v20 = v18;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v21 - 8) + 8))(v16, v21);
    v22 = v42;
    v23 = v39;
    sub_1003708C4(v42, v39, type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = *v23;
    if (EnumCaseMultiPayload >= 2)
    {
      v26 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v27 = type metadata accessor for UUID();
      (*(*(v27 - 8) + 8))(&v23[v26], v27);
    }

    NWConnection.nw.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v44;
    sub_1003708C4(v22, v44, type metadata accessor for SDAirDropServerConnection);
    v30 = v41;
    sub_1003708C4(v20, v41, type metadata accessor for SDAirDropServerConnectionIdentity);
    v31 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v32 = (v3 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (*(v40 + 80) + v32 + 8) & ~*(v40 + 80);
    v34 = swift_allocObject();
    sub_10000ED10(v29, v34 + v31, type metadata accessor for SDAirDropServerConnection);
    *(v34 + v32) = v28;
    sub_10000ED10(v30, v34 + v33, type metadata accessor for SDAirDropServerConnectionIdentity);
    aBlock[4] = sub_100370124;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DD3E8;
    v35 = _Block_copy(aBlock);

    nw_connection_set_read_close_handler();
    _Block_release(v35);
    swift_unknownObjectRelease();
    v36 = v20;
  }

  else
  {
    sub_10037092C(v18, type metadata accessor for SDAirDropServerConnectionIdentity);
    v36 = v16;
  }

  return sub_10037092C(v36, type metadata accessor for SDAirDropServerConnectionIdentity);
}

uint64_t sub_100367D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v28 = a2;
  v32 = a1;
  v29 = type metadata accessor for NWConnection.State();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropServerConnection(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_10097A648, &qword_1007FD778);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_10000FF90(v30, v12, &qword_10097A648, &qword_1007FD778);
  sub_1003708C4(v31, v8, type metadata accessor for SDAirDropServerConnection);
  v19 = v29;
  (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v29);
  v20 = (*(v26 + 80) + 40) & ~*(v26 + 80);
  v21 = (v10 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = (v7 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v18;
  sub_10002C4E4(v12, &v23[v20], &qword_10097A648, &qword_1007FD778);
  sub_10000ED10(v8, &v23[v21], type metadata accessor for SDAirDropServerConnection);
  (*(v4 + 32))(&v23[v22], v25, v19);
  sub_1002B2844(0, 0, v16, &unk_1007FD818, v23);
}

uint64_t sub_100368138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_100368160, 0, 0);
}

uint64_t sub_100368160()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_100368260;
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);

    return sub_10036840C(v6, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100368260()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1003683A8;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_10036837C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003683A8()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_10036840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = type metadata accessor for NWError();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v12 = type metadata accessor for NWConnection.State();
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;

  return _swift_task_switch(sub_100368628, v15, 0);
}

uint64_t sub_100368628()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v2 + 16))(v1, v0[4], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for NWConnection.State.waiting(_:))
  {
    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[11];
    v8 = v0[12];
    (*(v0[18] + 96))(v5, v0[17]);
    (*(v8 + 32))(v6, v5, v7);
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[11];
    v12 = v0[12];
    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097A3F0);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[11];
    v21 = v0[12];
    if (v17)
    {
      v99 = v14;
      v22 = swift_slowAlloc();
      v101 = v18;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v99(v24, v19, v20);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v21 + 8);
      v26(v19, v20);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "AirDrop connection waiting with error %@", v22, 0xCu);
      sub_100005508(v23, &qword_100975400, &qword_1007F65D0);

      v26(v101, v20);
    }

    else
    {

      v47 = *(v21 + 8);
      v47(v19, v20);
      v47(v18, v20);
    }

    goto LABEL_26;
  }

  if (v4 == enum case for NWConnection.State.failed(_:))
  {
    v27 = v0[19];
    v28 = v0[14];
    v29 = v0[11];
    v30 = v0[12];
    (*(v0[18] + 96))(v27, v0[17]);
    (*(v30 + 32))(v28, v27, v29);
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v31 = v0[13];
    v32 = v0[14];
    v33 = v0[11];
    v34 = v0[12];
    v35 = type metadata accessor for Logger();
    sub_10000C4AC(v35, qword_10097A3F0);
    v36 = *(v34 + 16);
    v36(v31, v32, v33);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v41 = v0[12];
    v40 = v0[13];
    v42 = v0[11];
    v100 = v36;
    if (v39)
    {
      v43 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v43 = 138412290;
      sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v36(v44, v40, v42);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v46 = *(v41 + 8);
      v46(v40, v42);
      *(v43 + 4) = v45;
      *v98 = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop connection failed with error %@", v43, 0xCu);
      sub_100005508(v98, &qword_100975400, &qword_1007F65D0);
    }

    else
    {

      v46 = *(v41 + 8);
      v46(v40, v42);
    }

    v53 = v0[14];
    v54 = v0[11];
    v55 = v0[5];
    v57 = v0[2];
    v56 = v0[3];
    sub_1005ADD74(0);
    sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError);
    v58 = swift_allocError();
    v100(v59, v53, v54);
    sub_10036918C(v57, v58);
    v46(v53, v54);

    goto LABEL_26;
  }

  if (v4 == enum case for NWConnection.State.setup(_:))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000C4AC(v48, qword_10097A3F0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_25;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "AirDrop connection setting up";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

LABEL_25:

    goto LABEL_26;
  }

  if (v4 == enum case for NWConnection.State.preparing(_:))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000C4AC(v60, qword_10097A3F0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_25;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "AirDrop connection preparing";
    goto LABEL_24;
  }

  if (v4 == enum case for NWConnection.State.ready(_:))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_10000C4AC(v71, qword_10097A3F0);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "AirDrop connection ready", v74, 2u);
    }

    v75 = v0[8];
    v76 = v0[9];
    v77 = v0[7];
    v78 = v0[2];

    sub_10000FF90(v78, v77, &qword_10097A648, &qword_1007FD778);
    if ((*(v76 + 48))(v77, 1, v75) == 1)
    {
      sub_100005508(v0[7], &qword_10097A648, &qword_1007FD778);
    }

    else
    {
      v86 = v0[9];
      v85 = v0[10];
      v87 = v0[8];
      v88 = v0[5];
      v89 = v0[6];
      v90 = v0[3];
      sub_10000ED10(v0[7], v85, type metadata accessor for SDAirDropServerConnectionIdentity);
      sub_1003708C4(v85, v89, type metadata accessor for SDAirDropServerConnectionIdentity);
      (*(v86 + 56))(v89, 0, 1, v87);
      sub_100367834(v89, v90);
      sub_100005508(v89, &qword_10097A648, &qword_1007FD778);
      sub_10037092C(v85, type metadata accessor for SDAirDropServerConnectionIdentity);
    }
  }

  else if (v4 == enum case for NWConnection.State.cancelled(_:))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000C4AC(v79, qword_10097A3F0);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "AirDrop connection invalidated", v82, 2u);
    }

    v83 = v0[5];
    v84 = v0[2];

    sub_100369520(v84);
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_10000C4AC(v91, qword_10097A3F0);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Unknown AirDrop connection state", v94, 2u);
    }

    v96 = v0[18];
    v95 = v0[19];
    v97 = v0[17];

    (*(v96 + 8))(v95, v97);
  }

LABEL_26:
  v61 = v0[19];
  v62 = v0[15];
  v63 = v0[16];
  v65 = v0[13];
  v64 = v0[14];
  v66 = v0[10];
  v68 = v0[6];
  v67 = v0[7];

  v69 = v0[1];

  return v69();
}

uint64_t sub_10036918C(uint64_t a1, uint64_t a2)
{
  v27[0] = a2;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v27 - v5;
  v7 = sub_10028088C(&qword_10097A648, &qword_1007FD778);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v27 - v9;
  v11 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v27 - v16;
  sub_10000FF90(a1, v10, &qword_10097A648, &qword_1007FD778);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100005508(v10, &qword_10097A648, &qword_1007FD778);
  }

  sub_10000ED10(v10, v17, type metadata accessor for SDAirDropServerConnectionIdentity);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1003708C4(v17, v15, type metadata accessor for SDAirDropServerConnectionIdentity);
  v20 = v27[1];

  v21 = v27[0];
  swift_errorRetain();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v22 = static AirDropActor.shared;
  v23 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor);
  v24 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v26[2] = v22;
  v26[3] = v23;
  v26[4] = v20;
  sub_10000ED10(v15, v26 + v24, type metadata accessor for SDAirDropServerConnectionIdentity);
  *(v26 + v25) = v21;

  sub_1002B3098(0, 0, v6, &unk_1007FD830, v26);

  return sub_10037092C(v17, type metadata accessor for SDAirDropServerConnectionIdentity);
}

uint64_t sub_100369520(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - v4;
  v5 = sub_10028088C(&qword_10097A648, &qword_1007FD778);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - v15;
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_10000FF90(a1, v8, &qword_10097A648, &qword_1007FD778);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100005508(v8, &qword_10097A648, &qword_1007FD778);
  }

  sub_10000ED10(v8, v18, type metadata accessor for SDAirDropServerConnectionIdentity);
  sub_1003708C4(v18, v16, type metadata accessor for SDAirDropServerConnectionIdentity);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v20 - 8) + 8))(v16, v20);
    v21 = type metadata accessor for TaskPriority();
    v22 = v31;
    (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
    sub_1003708C4(v18, v13, type metadata accessor for SDAirDropServerConnectionIdentity);
    v23 = qword_1009735E0;
    v24 = v30;

    if (v23 != -1)
    {
      swift_once();
    }

    v25 = static AirDropActor.shared;
    v26 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor);
    v27 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v28 = swift_allocObject();
    v28[2] = v25;
    v28[3] = v26;
    v28[4] = v24;
    sub_10000ED10(v13, v28 + v27, type metadata accessor for SDAirDropServerConnectionIdentity);

    sub_1002B3098(0, 0, v22, &unk_1007FD840, v28);

    v29 = v18;
  }

  else
  {
    sub_10037092C(v18, type metadata accessor for SDAirDropServerConnectionIdentity);
    v29 = v16;
  }

  return sub_10037092C(v29, type metadata accessor for SDAirDropServerConnectionIdentity);
}

uint64_t sub_100369958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097A3F0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "AirDrop connection read close event", v16, 2u);
  }

  sub_1005ADD74(0);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_1003708C4(a3, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SDAirDropServerConnectionIdentity);
  v18 = qword_1009735E0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;
  v20 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor);
  v21 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = a2;
  sub_10000ED10(v8, v22 + v21, type metadata accessor for SDAirDropServerConnectionIdentity);

  sub_1002B3398(0, 0, v12, &unk_1007FD808, v22);
}

uint64_t sub_100369C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_100369D20, v6, 0);
}

uint64_t sub_100369D20()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    type metadata accessor for CancellationError();
    sub_1000053E8(&unk_10097A6B0, &type metadata accessor for CancellationError);
    v3 = swift_allocError();
    *(v0 + 80) = v3;
    CancellationError.init()();
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_100369E84;
    v5 = *(v0 + 56);

    return sub_100360E74(v5, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100369E84()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v6 = *v0;

  return _swift_task_switch(sub_100369FD4, v4, 0);
}

uint64_t sub_100369FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100005C04;

  return sub_100360E74(a5, a6);
}

uint64_t sub_10036A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_100360E74(a5, 0);
}

uint64_t sub_10036A1A4()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if ([v2 discoverableLevel] || (sub_10002A73C() & 1) != 0)
  {
    if ([v2 discoverableLevel] == 2)
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000C4AC(v3, qword_10097A3F0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Device in everyone mode", v6, 2u);
      }

LABEL_16:
      v11 = sub_100549548();
      v13 = v12;
      swift_beginAccess();
      sub_10046E8A8(v19, v11, v13);
      swift_endAccess();
      sub_100026AC0(v19[0], v19[1]);
      return 1;
    }

    if (sub_10046A478() & 1) != 0 || (sub_10002A73C())
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_10097A3F0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Device found needs contact check", v10, 2u);
      }

      if (sub_100549664(v2, *(v1 + 56)))
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_10097A3F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Device has AirDrop discovery OFF", v18, 2u);
    }
  }

  return 0;
}

uint64_t sub_10036A4B8()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1002B3098(0, 0, v3, &unk_1007FD8E0, v7);
  }

  return result;
}

uint64_t sub_10036A5D8()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1002B3098(0, 0, v3, &unk_1007FD8C8, v7);
  }

  return result;
}

void sub_10036A6F8(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState);
  v4 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState + 8);
  if (v4)
  {
    if (v4 == 1)
    {
      if (a2 == 1)
      {
        return;
      }
    }

    else if (a2 >= 2)
    {
      if (*v3 == a1 && v4 == a2)
      {
        return;
      }

      v14 = a1;
      v15 = *v3;
      v16 = a2;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v16;
      v18 = v17;
      a1 = v14;
      if (v18)
      {
        return;
      }
    }

    v5 = a1;
    v6 = a2;
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097A3F0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "AppleID change detected, stopping servers", v10, 2u);
    }

    v11 = *v3;
    v12 = v3[1];
    *v3 = v5;
    v3[1] = v6;
    sub_100371020(v5, v6);
    sub_10037100C(v11, v12);
    sub_10002B8D0(1, 1);
    sub_10002B8D0(0, 1);

    sub_10002B8D0(2, 1);
  }

  else
  {
    *v3 = a1;
    v3[1] = a2;

    sub_100371020(a1, a2);
  }
}

uint64_t sub_10036A914()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = [v1 wirelessEnabled];
  *(v0 + 24) = v2;
  v3 = [v1 bluetoothEnabledIncludingRestricted];
  *(v0 + 25) = v3;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v2;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Wireless/Bluetooth state changed - Wireless: %{BOOL}d Bluetooth: %{BOOL}d", v7, 0xEu);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_10036AAC0, v8, 0);
}

uint64_t sub_10036AAC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) & *(v0 + 25) & 1;
  if (v2 != *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastWirelessBluetoothStateEnabled))
  {
    *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastWirelessBluetoothStateEnabled) = v2;
    sub_10002A290();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10036AB88()
{
  v1 = [*(v0[2] + 48) myAppleID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 1;
  }

  v0[3] = v3;
  v0[4] = v5;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_10036AC6C, v6, 0);
}

uint64_t sub_10036AC6C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_10036A6F8(v2, v1);
  sub_10037100C(v2, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10036AD2C()
{
  v17 = v0;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097A3F0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = [*(v5 + 48) localHostName];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0x8000000100789F30;
      v10 = 0xD000000000000015;
    }

    v13 = sub_10000C4E4(v10, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Device name changed %s", v6, 0xCu);
    sub_10000C60C(v7);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  *(v0 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10036AF4C, v14, 0);
}

uint64_t sub_10036AF4C()
{
  v1 = *(v0 + 16);
  sub_10002B8D0(1, 1);
  sub_10002B8D0(0, 1);
  sub_10002B8D0(2, 1);
  if (sub_100358DE4())
  {
    v2 = *(v0 + 16);
    sub_100359850(0);
    if (sub_100358F30())
    {
      v3 = *(v0 + 16);
      sub_100359850(1);
    }
  }

  v4 = *(v0 + 24);

  return _swift_task_switch(sub_10036AFFC, v4, 0);
}

uint64_t sub_10036AFFC()
{
  v1 = *(v0 + 16);
  sub_10002A290();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10036B09C()
{
  *(v0 + 24) = [*(*(v0 + 16) + 48) discoverableLevel];
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_10036B14C, v1, 0);
}

uint64_t sub_10036B14C()
{
  v1 = v0[2];
  sub_10036B1AC(v0[3]);
  v2 = v0[1];

  return v2();
}

void sub_10036B1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32[-v6];
  v8 = type metadata accessor for SFPlatform();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastDiscoverableLevel) != a1)
  {
    *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastDiscoverableLevel) = a1;
    static SFPlatform.watchOS.getter();
    v13 = static SFPlatform.isPlatform(_:)();
    (*(v9 + 8))(v12, v8);
    if ((v13 & 1) == 0)
    {
      v14 = *(v2 + 120);
      sub_1005C1F44(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID);
      v15 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes;
      swift_beginAccess();
      v16 = *(v2 + v15);
      *(v2 + v15) = &_swiftEmptySetSingleton;
    }

    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes;
    swift_beginAccess();
    v18 = *(v2 + v17);
    *(v2 + v17) = &_swiftEmptySetSingleton;

    sub_10002B8D0(1, 1);
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097A3F0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v20, v21, "Discoverability mode changed stopping server - new mode: %ld", v22, 0xCu);
    }

    sub_10002A290();
    v23 = *(v2 + 72);
    type metadata accessor for SFAirDropUserDefaults();
    v24 = static SFAirDropUserDefaults.shared.getter();
    v25 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v25)
    {
      v26 = type metadata accessor for TaskPriority();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
      v27 = qword_1009735E0;
      v28 = v23;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = static AirDropActor.shared;
      v30 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor);
      v31 = swift_allocObject();
      v31[2] = v29;
      v31[3] = v30;
      v31[4] = v28;

      sub_1002B3098(0, 0, v7, &unk_100805190, v31);
    }
  }
}

uint64_t sub_10036B5B4()
{
  if ([*(*(v0 + 16) + 48) currentConsoleUser])
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097A3F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "User is logged in, starting app service server if needed", v4, 2u);
    }

    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v5 = static AirDropActor.shared;
    v6 = sub_10036B894;
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097A3F0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "User logged out, stopping servers", v10, 2u);
    }

    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v5 = static AirDropActor.shared;
    v6 = sub_10036B814;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10036B814()
{
  v1 = *(v0 + 16);
  sub_10002B8D0(1, 1);
  sub_10002B8D0(0, 1);
  sub_10002B8D0(2, 1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10036B894()
{
  v1 = *(v0 + 16);
  sub_100359850(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10036B918()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  v6 = Notification.userInfo.getter();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v13[1] = 0xD000000000000037;
  v13[2] = 0x800000010078D8C0;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = sub_100570754(v14), (v9 & 1) == 0))
  {

    sub_100285E74(v14);
LABEL_9:
    v15 = 0u;
    v16 = 0u;
    return sub_100005508(&v15, &unk_1009746F0, &qword_1007F90B0);
  }

  sub_10000C5B0(*(v7 + 56) + 32 * v8, &v15);
  sub_100285E74(v14);

  if (!*(&v16 + 1))
  {
    return sub_100005508(&v15, &unk_1009746F0, &qword_1007F90B0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    if (v14[0])
    {
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v1;

      sub_1002B3098(0, 0, v5, &unk_1007FD8F8, v12);
    }
  }

  return result;
}

uint64_t sub_10036BB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10036BBAC, 0, 0);
}

uint64_t sub_10036BBAC()
{
  v0[4] = *(v0[2] + 72);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  v0[5] = static AirDropActor.shared;

  return _swift_task_switch(sub_10036BC54, v1, 0);
}

uint64_t sub_10036BC54()
{
  type metadata accessor for SFAirDropUserDefaults();
  v1 = static SFAirDropUserDefaults.shared.getter();
  v2 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v2)
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = v4;
    v9 = v4;

    sub_1002B3098(0, 0, v5, &unk_1007FD900, v8);
  }

  v10 = v0[3];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10036BECC()
{
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A3F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    type metadata accessor for SFAirDropUserDefaults();
    v5 = static SFAirDropUserDefaults.shared.getter();
    v6 = SFAirDropUserDefaults.cellularUsageEnabled.getter();

    *(v4 + 4) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cellular usage changed to %{BOOL}d", v4, 8u);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  *(v0 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10036C05C, v7, 0);
}

uint64_t sub_10036C05C()
{
  v1 = *(v0 + 16);
  sub_10002B8D0(1, 1);
  sub_10002B8D0(0, 1);
  sub_10002B8D0(2, 1);
  if (sub_100358DE4())
  {
    v2 = *(v0 + 16);
    sub_100359850(0);
    if (sub_100358F30())
    {
      v3 = *(v0 + 16);
      sub_100359850(1);
    }
  }

  v4 = *(v0 + 24);

  return _swift_task_switch(sub_1003710F4, v4, 0);
}

uint64_t sub_10036C12C()
{
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A3F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Together defaults changed", v4, 2u);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  *(v0 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10036C05C, v5, 0);
}

uint64_t sub_10036C284()
{
  sub_10004C60C(v0 + 16);
  sub_10004C60C(v0 + 32);

  v1 = *(v0 + 80);

  v2 = *(v0 + 88);

  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes);

  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors);

  v8 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer);
  swift_unknownObjectRelease();
  v9 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServerErrors);

  v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions);

  v11 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServersByTransactionID);

  v12 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServerErrors);

  v13 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers);

  v14 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers);

  v15 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers);

  v16 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourDiscoveryHandlers);

  sub_10037100C(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState + 8));

  return v0;
}
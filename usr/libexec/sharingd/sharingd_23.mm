uint64_t Sequence<>.fileCoordinatorReadingOptions()()
{
  if (Sequence.contains(where:)())
  {
    return 8;
  }

  else
  {
    return 131074;
  }
}

uint64_t sub_1003CEFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for URL();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for SFSecurityScopedURL();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v5[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CF150, v12, 0);
}

uint64_t sub_1003CF150()
{
  v1 = v0[2].i64[1];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = *(v1 + 16);
  v29 = v0[2].i64[1];
  if (v2)
  {
    v3 = v0[7].i64[0];
    v4 = *(v3 + 16);
    v3 += 16;
    v33 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = *(v3 + 56);
    v7 = (v0[5].i64[1] + 8);
    v30 = (v3 - 8);
    v31 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    v32 = (v3 + 16);
    do
    {
      v8 = v0[6].i64[0];
      v9 = v0[5].i64[0];
      v33(v0[8].i64[0], v5, v0[6].i64[1]);
      SFSecurityScopedURL.url.getter();
      v10 = URL.isFileURL.getter();
      (*v7)(v8, v9);
      v11 = v0[8].i64[0];
      if (v10)
      {
        v12 = *v32;
        (*v32)(v0[7].i64[1], v0[8].i64[0], v0[6].i64[1]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FE08(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10028FE08(v13 > 1, v14 + 1, 1);
        }

        v15 = v0[7].i64[1];
        v16 = v0[6].i64[1];
        _swiftEmptyArrayStorage[2] = v14 + 1;
        v12(_swiftEmptyArrayStorage + v31 + v14 * v6, v15, v16);
      }

      else
      {
        (*v30)(v0[8].i64[0], v0[6].i64[1]);
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v17 = _swiftEmptyArrayStorage[2];

  if (v17)
  {
    v19 = v0[3].i64[0];
    v18 = v0[3].i64[1];
    v20 = swift_task_alloc();
    v0[9].i64[0] = v20;
    v20[1] = vextq_s8(v0[4], v0[4], 8uLL);
    v20[2].i64[0] = v19;
    v20[2].i64[1] = v18;
    v20[3].i64[0] = v29;
    v21 = async function pointer to static SFSecurityScopedURL.withAccess<A>(to:body:)[1];
    v22 = swift_task_alloc();
    v0[9].i64[1] = v22;
    v23 = sub_10028088C(&qword_10097B618, &qword_1007FEA88);
    *v22 = v0;
    v22[1] = sub_1003CF474;

    return static SFSecurityScopedURL.withAccess<A>(to:body:)(&v0[1], v29, &unk_1007FEA80, v20, v23);
  }

  else
  {
LABEL_16:
    v25 = v0[7].i64[1];
    v24 = v0[8].i64[0];
    v26 = v0[6].i64[0];

    v27 = v0->i64[1];

    return v27(0, 0, 0);
  }
}

uint64_t sub_1003CF474()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_1003CF634;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);

    v5 = sub_1003CF598;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003CF598()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];

  v7 = v0[1];

  return v7(v2, v1, v3);
}

uint64_t sub_1003CF634()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_1003CF6C0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B528);
  v1 = sub_10000C4AC(v0, qword_10097B528);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003CF788()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100010780(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10097B540 = result;
  return result;
}

uint64_t sub_1003CF9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 200) = a5;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v10 = type metadata accessor for SFPlatform();
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  *(v5 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v13 = type metadata accessor for URL();
  *(v5 + 120) = v13;
  v14 = *(v13 - 8);
  *(v5 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CFC84, v16, 0);
}

uint64_t sub_1003CFC84()
{
  v154 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  v135 = v2;
  if (v2)
  {
    v3 = *(v0 + 128);
    v6 = *(v3 + 16);
    v5 = v3 + 16;
    v4 = v6;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v8 = *(v5 + 56);
    v141 = (*(v5 + 64) + 32) & ~*(v5 + 64);
    v9 = (v5 + 16);
    v10 = _swiftEmptyArrayStorage;
    v145 = v6;
    v6(*(v0 + 192), v7, *(v0 + 120));
    while (1)
    {
      v11 = URL.isFileURL.getter();
      v12 = *(v0 + 192);
      if (v11)
      {
        v13 = *v9;
        (*v9)(*(v0 + 184), *(v0 + 192), *(v0 + 120));
        v153[0] = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, v10[2] + 1, 1);
          v10 = v153[0];
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          sub_10028FAB4(v14 > 1, v15 + 1, 1);
          v10 = v153[0];
        }

        v16 = *(v150 + 184);
        v17 = *(v150 + 120);
        v10[2] = v15 + 1;
        v18 = v10 + v141 + v15 * v8;
        v0 = v150;
        v13(v18, v16, v17);
        v4 = v145;
      }

      else
      {
        (*(v5 - 8))(*(v0 + 192), *(v0 + 120));
      }

      v7 += v8;
      if (!--v2)
      {
        break;
      }

      v4(*(v0 + 192), v7, *(v0 + 120));
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v19 = v10[2];

  if (!v19)
  {
LABEL_44:
    **(v0 + 24) = *(v0 + 48);

    goto LABEL_45;
  }

  v20 = *(v0 + 112);
  v21 = *(v150 + 104);
  v22 = *(v150 + 96);
  static SFPlatform.visionOS.getter();
  v23 = static SFPlatform.isPlatform(_:)();
  (*(v21 + 8))(v20, v22);
  v0 = v150;
  v24 = *(v150 + 200);
  if (v23)
  {
    if (!*(v150 + 200))
    {
      goto LABEL_39;
    }

    sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
    v25 = static NSUserDefaults.airdrop.getter();
    v26 = SFAirDropUserDefaults.overrideReceivedFilesPathiOS.getter();

    if (v26)
    {
      goto LABEL_39;
    }
  }

  else if (!*(v150 + 200) || (sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr), v27 = static NSUserDefaults.airdrop.getter(), v28 = SFAirDropUserDefaults.overrideReceivedFilesPathiOS.getter(), v27, (v28 & 1) != 0) || (v29 = static NSUserDefaults.airdrop.getter(), v30 = SFAirDropUserDefaults.moveToAppEnabled.getter(), v29, (v30 & 1) == 0))
  {
LABEL_39:
    sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
    v71 = static NSUserDefaults.airdrop.getter();
    v72 = SFAirDropUserDefaults.overrideReceivedFilesPathiOS.getter();

    if (v72)
    {
      if (qword_1009737B0 != -1)
      {
LABEL_69:
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_10000C4AC(v73, qword_10097B528);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "Not saving files to Downloads because path was overridden", v76, 2u);
      }
    }

    goto LABEL_44;
  }

  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000C4AC(v31, qword_10097B528);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Saving files to Downloads", v34, 2u);
  }

  v35 = *(v150 + 128);
  v36 = *(v150 + 64);
  v133 = *(v150 + 56);

  v37 = 0;
  v129 = (v36 + 56);
  v130 = [objc_opt_self() defaultManager];
  v128 = (v36 + 48);
  v0 = v150;
  v139 = (v35 + 16);
  v142 = (v35 + 32);
  v38 = v135;
  v146 = _swiftEmptyArrayStorage;
  v39 = (v35 + 8);
  v131 = (v35 + 8);
  v132 = v35;
  v40 = v135 == 0;
  if (v135)
  {
    goto LABEL_27;
  }

LABEL_26:
  v41 = 1;
  v42 = v38;
  while (1)
  {
    v49 = *(v0 + 80);
    v48 = *(v0 + 88);
    v50 = *(v0 + 56);
    (*v129)(v49, v41, 1, v50);
    sub_10002C4E4(v49, v48, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*v128)(v48, 1, v50) == 1)
    {
      break;
    }

    v51 = *(v0 + 88);
    v52 = *v51;
    v53 = *v142;
    (*v142)(*(v0 + 160), &v51[*(v133 + 48)], *(v0 + 120));
    URL._bridgeToObjectiveC()(v54);
    v56 = v55;
    *(v0 + 16) = 0;
    v57 = [v130 _doc_importItemAtURL:v55 toDestination:1 error:v0 + 16];

    v58 = *(v0 + 16);
    if (!v57)
    {
      v105 = *(v0 + 160);
      v106 = *(v0 + 136);
      v107 = *(v0 + 120);
      v108 = v58;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*v139)(v106, v105, v107);
      swift_errorRetain();
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();

      v111 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 136);
      v113 = *(v0 + 120);
      if (v111)
      {
        v114 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v153[0] = v148;
        *v114 = 136315394;
        sub_100010780(&qword_100975160, &type metadata accessor for URL);
        v115 = dispatch thunk of CustomStringConvertible.description.getter();
        v117 = v116;
        v152 = *v131;
        (*v131)(v112, v113);
        v118 = sub_10000C4E4(v115, v117, v153);

        *(v114 + 4) = v118;
        *(v114 + 12) = 2112;
        swift_errorRetain();
        v119 = _swift_stdlib_bridgeErrorToNSError();
        *(v114 + 14) = v119;
        *v143 = v119;
        _os_log_impl(&_mh_execute_header, v109, v110, "Failed to save file %s to Downloads: %@", v114, 0x16u);
        sub_100005508(v143, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v148);
      }

      else
      {

        v152 = *v131;
        (*v131)(v112, v113);
      }

      v121 = *(v0 + 184);
      v120 = *(v0 + 192);
      v123 = *(v0 + 168);
      v122 = *(v0 + 176);
      v124 = *(v0 + 152);
      v125 = *(v0 + 160);
      v134 = *(v0 + 144);
      v136 = *(v0 + 136);
      v126 = *(v0 + 120);
      v138 = *(v0 + 112);
      v140 = *(v0 + 88);
      v144 = *(v0 + 80);
      v149 = *(v0 + 72);
      swift_willThrow();

      v152(v125, v126);

      v87 = *(v0 + 8);
      goto LABEL_46;
    }

    v60 = *(v0 + 144);
    v59 = *(v0 + 152);
    v61 = *(v0 + 120);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v58;

    (*v139)(v60, v59, v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_10028E2D4(0, v146[2] + 1, 1, v146);
    }

    v0 = v146[2];
    v63 = v146[3];
    v137 = v42;
    if (v0 >= v63 >> 1)
    {
      v146 = sub_10028E2D4(v63 > 1, v0 + 1, 1, v146);
    }

    v64 = *(v150 + 144);
    v65 = *(v150 + 120);
    v39 = v131;
    v66 = *(v132 + 8);
    v66(*(v150 + 152), v65);
    v146[2] = v0 + 1;
    v53(v146 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v0, v64, v65);
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v67 = *(v150 + 160);
    v68 = *(v150 + 120);
    v69 = *(v150 + 32);
    v70 = *(v150 + 40);
    *v153 = (v52 + 1) / v135;
    v69(v153);
    v66(v67, v68);
    v0 = v150;
    v38 = v135;
    v37 = v137;
    v40 = v137 >= v135;
    if (v137 == v135)
    {
      goto LABEL_26;
    }

LABEL_27:
    if (v40)
    {
      goto LABEL_67;
    }

    v0 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_68;
    }

    v43 = *(v150 + 120);
    v45 = *(v150 + 72);
    v44 = *(v150 + 80);
    v46 = *(v150 + 48) + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v37;
    v47 = *(v133 + 48);
    *v45 = v37;
    (*(v132 + 16))(&v45[v47], v46, v43);
    sub_10002C4E4(v45, v44, &qword_10097A3B0, &unk_1007FD5B0);
    v41 = 0;
    v42 = v37 + 1;
    v0 = v150;
  }

  v89 = v135;
  if (v135)
  {
    v90 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v91 = *(v0 + 48) + v90;
    v92 = *(v132 + 72);
    v93 = *(v132 + 16);
    v94 = _swiftEmptyArrayStorage;
    v93(*(v0 + 176), v91, *(v0 + 120));
    while (1)
    {
      v95 = URL.isFileURL.getter();
      v96 = *(v0 + 176);
      if (v95)
      {
        (*v39)(*(v0 + 176), *(v0 + 120));
      }

      else
      {
        v97 = *(v0 + 168);
        v98 = *(v0 + 120);
        v99 = *v142;
        (*v142)(v97, v96, v98);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153[0] = v94;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, *(v94 + 2) + 1, 1);
          v94 = v153[0];
        }

        v102 = *(v94 + 2);
        v101 = *(v94 + 3);
        if (v102 >= v101 >> 1)
        {
          sub_10028FAB4(v101 > 1, v102 + 1, 1);
          v94 = v153[0];
        }

        v103 = *(v150 + 168);
        v104 = *(v150 + 120);
        *(v94 + 2) = v102 + 1;
        v99(&v94[v90 + v102 * v92], v103, v104);
        v0 = v150;
        v39 = v131;
      }

      v91 += v92;
      if (!--v89)
      {
        break;
      }

      v93(*(v0 + 176), v91, *(v0 + 120));
    }
  }

  else
  {
    v94 = _swiftEmptyArrayStorage;
  }

  v127 = *(v150 + 24);
  v153[0] = v146;
  sub_100403790(v94);

  *v127 = v153[0];
  v0 = v150;
LABEL_45:
  v78 = *(v0 + 184);
  v77 = *(v0 + 192);
  v80 = *(v0 + 168);
  v79 = *(v0 + 176);
  v82 = *(v0 + 152);
  v81 = *(v0 + 160);
  v84 = *(v0 + 136);
  v83 = *(v0 + 144);
  v85 = *(v0 + 112);
  v86 = *(v0 + 88);
  v147 = *(v0 + 80);
  v151 = *(v0 + 72);

  v87 = *(v0 + 8);
LABEL_46:

  return v87();
}

uint64_t sub_1003D0964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a4;
  *(v6 + 80) = a6;
  *(v6 + 120) = a5;
  *(v6 + 64) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  *(v6 + 88) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D0A0C, v7, 0);
}

uint64_t sub_1003D0A0C()
{
  v1 = *(v0 + 72);
  if (v1 && *(v0 + 120) == 1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_1003D0B58;
    v4 = *(v0 + 80);

    return (sub_1003DB480)(v2, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_1003D0D64;
    v7 = *(v0 + 80);

    return (sub_1003DC438)(v7);
  }
}

uint64_t sub_1003D0B58(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = v1;
  *(v4 + 24) = a1;
  *(v4 + 16) = v2;
  v5 = *(v3 + 96);
  v6 = *v2;
  *(v4 + 104) = v1;

  v7 = *(v3 + 88);
  if (v1)
  {
    v8 = sub_1003D0D00;
  }

  else
  {
    v8 = sub_1003D0C90;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003D0C90()
{
  **(v0 + 64) = *(v0 + 24);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D0D00()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003D0D64(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 56) = v1;
  *(v4 + 48) = a1;
  *(v4 + 40) = v2;
  v5 = *(v3 + 112);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 88);

    return _swift_task_switch(sub_1003D0EB4, v9, 0);
  }
}

uint64_t sub_1003D0ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = type metadata accessor for SFSandboxTokenURLPair();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for SFSecurityScopedURL();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D1120, v16, 0);
}

uint64_t sub_1003D1120()
{
  v96 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_10000FF90(v0[4], v3, &unk_100974E00, &qword_1007F8940);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v0[16] + 32))(v0[19], v0[14], v0[15]);
    if (qword_1009737B8 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    (*(v0[16] + 16))(v0[18], v0[19], v0[15]);
    SFSecurityScopedURL.init(_:readWrite:)();
    v20 = v0[13];
    v21 = v0[10];
    static SFSecurityScopedURL.consumeSandboxToken(item:)();
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[6];
    v26 = v0[7];
    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_10097B528);
    v28 = *(v26 + 16);
    v28(v24, v23, v25);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v90 = v28;
      v31 = v0[16];
      v32 = v0[17];
      v33 = v0[15];
      v85 = v0[9];
      v34 = v0[7];
      v93 = v0[6];
      v35 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v95 = v87;
      *v35 = 136315138;
      SFSandboxTokenURLPair.url.getter();
      sub_100010780(&qword_100975160, &type metadata accessor for URL);
      v36 = v33;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = v32;
      v28 = v90;
      (*(v31 + 8))(v40, v36);
      v41 = v93;
      v94 = *(v34 + 8);
      v94(v85, v41);
      v42 = sub_10000C4E4(v37, v39, &v95);

      *(v35 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "Moving downloaded files to folder %s", v35, 0xCu);
      sub_10000C60C(v87);
    }

    else
    {
      v43 = v0[9];
      v44 = v0[6];
      v45 = v0[7];

      v94 = *(v45 + 8);
      v94(v43, v44);
    }

    v47 = v0[16];
    v46 = v0[17];
    v48 = v0[15];
    v49 = v0[10];
    v50 = v0[5];
    isa = Array._bridgeToObjectiveC()().super.isa;
    SFSandboxTokenURLPair.url.getter();
    URL._bridgeToObjectiveC()(v52);
    v54 = v53;
    v92 = *(v47 + 8);
    v92(v46, v48);
    v0[2] = 0;
    v55 = sub_1001F1DAC(isa, v54, 0, v0 + 2);

    v56 = v0[2];
    v91 = v56;
    if (v55)
    {
      v57 = v0[15];
      v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v56;

      if (*(v58 + 16))
      {
LABEL_27:
        v75 = v0[19];
        v76 = v0[15];
        v78 = v0[12];
        v77 = v0[13];
        v79 = v0[10];
        v80 = v0[11];
        v81 = v0[6];
        v82 = v0[7];
        v89 = v0[3];
        SFSandboxTokenURLPair.releaseSandboxExtension()();
        v94(v79, v81);
        (*(v78 + 8))(v77, v80);
        v92(v75, v76);

        *v89 = v58;
        goto LABEL_7;
      }
    }

    else
    {
      v60 = v56;
    }

    v28(v0[8], v0[10], v0[6]);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v0[17];
      v64 = v0[15];
      v65 = v0[8];
      v83 = v0[7];
      v84 = v0[6];
      v66 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v95 = v88;
      *v66 = 136315394;
      SFSandboxTokenURLPair.url.getter();
      sub_100010780(&qword_100975160, &type metadata accessor for URL);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v92(v63, v64);
      v94(v65, v84);
      v70 = sub_10000C4E4(v67, v69, &v95);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2112;
      *(v66 + 14) = v91;
      *v86 = v91;
      v71 = v91;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to save files to %s: %@", v66, 0x16u);
      sub_100005508(v86, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v88);
    }

    else
    {
      v73 = v0[7];
      v72 = v0[8];
      v74 = v0[6];

      v94(v72, v74);
    }

    v58 = v0[5];

    goto LABEL_27;
  }

  sub_100005508(v0[14], &unk_100974E00, &qword_1007F8940);
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097B528);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not move files to nil folder", v7, 2u);
  }

  v8 = v0[5];
  v9 = v0[3];

  *v9 = v8;

LABEL_7:
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  v14 = v0[13];
  v13 = v0[14];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003D19DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = type metadata accessor for URL();
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v8 = *(v7 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v5[35] = v9;
  v10 = *(v9 - 8);
  v5[36] = v10;
  v11 = *(v10 + 64) + 15;
  v5[37] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0) - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v5[40] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D1B98, v13, 0);
}

id sub_1003D1B98()
{
  v96 = v0;
  v1 = *(*(v0 + 232) + 16);
  *(v0 + 328) = v1;
  if (!v1)
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097B528);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cannot open empty list of URLs", v19, 2u);
    }

    v20 = 0;
LABEL_46:
    v88 = *(v0 + 304);
    v87 = *(v0 + 312);
    v89 = *(v0 + 296);
    v91 = *(v0 + 264);
    v90 = *(v0 + 272);
    **(v0 + 208) = v20;

    v92 = *(v0 + 8);

    return v92();
  }

  v2 = *(v0 + 240);
  if (v2)
  {
    v3 = qword_1009737B0;
    v4 = v2;
    if (v3 != -1)
    {
LABEL_52:
      swift_once();
      v93 = *(v0 + 232);
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097B528);

    v6 = v4;
    v4 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v4, v7))
    {

      goto LABEL_26;
    }

    v8 = *(v0 + 248);
    v9 = *(v0 + 232);
    v10 = swift_slowAlloc();
    v95 = COERCE_DOUBLE(swift_slowAlloc());
    *v10 = 136315394;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v12 = SFCompactStringFromCollection();

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0xD000000000000015;
      v15 = 0x8000000100789F30;
    }

    v32 = sub_10000C4E4(v13, v15, &v95);

    *(v10 + 4) = v32;
    *(v10 + 12) = 2080;
    v33 = [v6 bundleIdentifier];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0xD000000000000015;
      v37 = 0x8000000100789F30;
    }

    v38 = sub_10000C4E4(v35, v37, &v95);

    *(v10 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v4, v7, "Opening URLs: %s in %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
      v94 = *(v0 + 232);
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097B528);

    v4 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v22))
    {
      v23 = *(v0 + 248);
      v24 = *(v0 + 232);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v95 = *&v26;
      *v25 = 136315138;
      v27 = Array._bridgeToObjectiveC()().super.isa;
      v28 = SFCompactStringFromCollection();

      if (v28)
      {
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v29 = 0xD000000000000015;
        v31 = 0x8000000100789F30;
      }

      v39 = sub_10000C4E4(v29, v31, &v95);

      *(v25 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v4, v22, "Opening URLs: %s", v25, 0xCu);
      sub_10000C60C(v26);
    }
  }

LABEL_26:
  v40 = 0;
  v41 = 0;
  *(v0 + 336) = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  while (1)
  {
    v42 = *(v0 + 328);
    if (v41 == v42)
    {
      v43 = 1;
    }

    else
    {
      if (v41 >= v42)
      {
        goto LABEL_50;
      }

      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_51;
      }

      v46 = *(v0 + 296);
      v45 = *(v0 + 304);
      v47 = *(v0 + 248);
      v48 = *(v0 + 256);
      v49 = *(v48 + 16);
      v50 = *(v0 + 232) + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v41;
      v51 = *(*(v0 + 280) + 48);
      *v46 = v41;
      v49(v46 + v51, v50, v47);
      sub_10002C4E4(v46, v45, &qword_10097A3B0, &unk_1007FD5B0);
      v43 = 0;
      v41 = v44;
    }

    *(v0 + 344) = v41;
    v53 = *(v0 + 304);
    v52 = *(v0 + 312);
    v55 = *(v0 + 280);
    v54 = *(v0 + 288);
    (*(v54 + 56))(v53, v43, 1, v55);
    sub_10002C4E4(v53, v52, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*(v54 + 48))(v52, 1, v55) == 1)
    {
      goto LABEL_45;
    }

    v56 = *(v0 + 336);
    v57 = *(v0 + 312);
    v59 = *(v0 + 272);
    v58 = *(v0 + 280);
    v60 = *(v0 + 248);
    v61 = *(v0 + 256);
    *(v0 + 352) = *v57;
    (*(v61 + 32))(v59, &v57[*(v58 + 48)], v60);
    sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v63;
    *(inited + 48) = 1;
    v64 = sub_100281D9C(inited);
    *(v0 + 360) = v64;
    swift_setDeallocating();
    sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
    if ((sub_1003DDA98() & 1) == 0)
    {
      break;
    }

    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v67 = result;
    v68 = *(v0 + 272);
    URL._bridgeToObjectiveC()(v66);
    v70 = v69;
    sub_1003CE73C(v64);

    v71 = Dictionary._bridgeToObjectiveC()().super.isa;

    v72 = [v67 openSensitiveURL:v70 withOptions:v71];

    if ((v72 & 1) == 0)
    {
      (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
      v40 = 0;
LABEL_45:
      v20 = v40;
      goto LABEL_46;
    }

    v73 = *(v0 + 240);
    if (!v73 || (v74 = [v73 bundleIdentifier]) == 0)
    {
      v74 = 0;
    }

    v75 = *(v0 + 352);
    v76 = *(v0 + 272);
    v77 = objc_opt_self();
    URL._bridgeToObjectiveC()(v78);
    v4 = v79;
    [v77 logReceiverBundleID:v74 forURL:v79];

    v80 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v81 = *(v0 + 272);
    v83 = *(v0 + 248);
    v82 = *(v0 + 256);
    v84 = *(v0 + 216);
    v4 = *(v0 + 224);
    v95 = v80 / (*(v0 + 328) + 1);
    v84(&v95);
    (*(v82 + 8))(v81, v83);
    v41 = *(v0 + 344);
    v40 = 1;
  }

  v85 = swift_task_alloc();
  *(v0 + 368) = v85;
  *v85 = v0;
  v85[1] = sub_1003D24B4;
  v86 = *(v0 + 272);

  return sub_1003DDCC0(v86);
}

uint64_t sub_1003D24B4(char a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_1003D25CC, v3, 0);
}

uint64_t sub_1003D25CC()
{
  v87 = v0;
  v1 = *(v0 + 360);
  if (*(v0 + 408))
  {
    v2 = *(v0 + 360);

    if (qword_1009737B0 != -1)
    {
LABEL_33:
      swift_once();
    }

    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097B528);
    (*(v6 + 16))(v3, v4, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 248);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v86 = *&v15;
      *v14 = 136315138;
      sub_100010780(&qword_100975160, &type metadata accessor for URL);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = sub_10000C4E4(v16, v18, &v86);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Handled AppClip url %s", v14, 0xCu);
      sub_10000C60C(v15);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    do
    {
      v30 = *(v0 + 240);
      if (!v30 || (v31 = [v30 bundleIdentifier]) == 0)
      {
        v31 = 0;
      }

      v32 = *(v0 + 352);
      v33 = *(v0 + 272);
      v34 = objc_opt_self();
      URL._bridgeToObjectiveC()(v35);
      v37 = v36;
      [v34 logReceiverBundleID:v31 forURL:v36];

      v38 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v39 = *(v0 + 272);
      v40 = *(v0 + 248);
      v41 = *(v0 + 256);
      v42 = *(v0 + 216);
      v43 = *(v0 + 224);
      v86 = v38 / (*(v0 + 328) + 1);
      v42(&v86);
      (*(v41 + 8))(v39, v40);
      v44 = *(v0 + 344);
      v45 = *(v0 + 328);
      if (v44 == v45)
      {
        v46 = 1;
      }

      else
      {
        if (v44 >= v45)
        {
          goto LABEL_31;
        }

        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_32;
        }

        v48 = *(v0 + 296);
        v49 = *(v0 + 304);
        v50 = *(v0 + 248);
        v51 = *(v0 + 256);
        v52 = *(v51 + 16);
        v53 = *(v0 + 232) + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v44;
        v54 = *(*(v0 + 280) + 48);
        *v48 = v44;
        v52(v48 + v54, v53, v50);
        sub_10002C4E4(v48, v49, &qword_10097A3B0, &unk_1007FD5B0);
        v46 = 0;
        v44 = v47;
      }

      *(v0 + 344) = v44;
      v55 = *(v0 + 304);
      v56 = *(v0 + 312);
      v57 = *(v0 + 280);
      v58 = *(v0 + 288);
      (*(v58 + 56))(v55, v46, 1, v57);
      sub_10002C4E4(v55, v56, &qword_10097A3B8, &qword_1007FE9C0);
      v59 = (*(v58 + 48))(v56, 1, v57);
      if (v59 == 1)
      {
        goto LABEL_24;
      }

      v60 = *(v0 + 336);
      v61 = *(v0 + 312);
      v63 = *(v0 + 272);
      v62 = *(v0 + 280);
      v64 = *(v0 + 248);
      v65 = *(v0 + 256);
      *(v0 + 352) = *v61;
      (*(v65 + 32))(v63, &v61[*(v62 + 48)], v64);
      sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v67;
      *(inited + 48) = 1;
      v68 = sub_100281D9C(inited);
      *(v0 + 360) = v68;
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
      if ((sub_1003DDA98() & 1) == 0)
      {
        v84 = swift_task_alloc();
        *(v0 + 368) = v84;
        *v84 = v0;
        v84[1] = sub_1003D24B4;
        v85 = *(v0 + 272);

        return sub_1003DDCC0(v85);
      }

      v22 = [objc_opt_self() defaultWorkspace];
      if (!v22)
      {
        __break(1u);
        goto LABEL_35;
      }

      v70 = v22;
      v71 = *(v0 + 272);
      URL._bridgeToObjectiveC()(v69);
      v73 = v72;
      sub_1003CE73C(v68);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v75 = [v70 openSensitiveURL:v73 withOptions:isa];
    }

    while ((v75 & 1) != 0);
    (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
LABEL_24:
    v76 = v59 == 1;
    v78 = *(v0 + 304);
    v77 = *(v0 + 312);
    v79 = *(v0 + 296);
    v81 = *(v0 + 264);
    v80 = *(v0 + 272);
    **(v0 + 208) = v76;

    v82 = *(v0 + 8);

    return v82();
  }

  else
  {
    v20 = [objc_allocWithZone(_LSOpenConfiguration) init];
    *(v0 + 376) = v20;
    sub_1003CE73C(v1);
    v21 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 setFrontBoardOptions:v21];

    v22 = [objc_opt_self() defaultWorkspace];
    *(v0 + 384) = v22;
    if (v22)
    {
      v23 = v22;
      v24 = *(v0 + 360);
      v25 = *(v0 + 272);

      URL._bridgeToObjectiveC()(v26);
      v28 = v27;
      *(v0 + 392) = v27;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 200;
      *(v0 + 24) = sub_1003D2DC0;
      v29 = swift_continuation_init();
      *(v0 + 136) = sub_10028088C(&qword_10097B5F8, &unk_1007FE9E0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1003D3474;
      *(v0 + 104) = &unk_1008DE6A8;
      *(v0 + 112) = v29;
      [v23 openURL:v28 configuration:v20 completionHandler:v0 + 80];
      v22 = (v0 + 16);
    }

    else
    {
LABEL_35:
      __break(1u);
    }

    return _swift_continuation_await(v22);
  }
}

uint64_t sub_1003D2DC0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 320);
  if (v3)
  {
    v5 = sub_1003D3388;
  }

  else
  {
    v5 = sub_1003D2EE0;
  }

  return _swift_task_switch(v5, v4, 0);
}

void sub_1003D2EE0()
{
  v61 = v0;
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);

  v4 = *(v0 + 200);

  if (v4)
  {
    while (1)
    {
      v5 = *(v0 + 240);
      if (!v5 || (v6 = [v5 bundleIdentifier]) == 0)
      {
        v6 = 0;
      }

      v7 = *(v0 + 352);
      v8 = *(v0 + 272);
      v9 = objc_opt_self();
      URL._bridgeToObjectiveC()(v10);
      v12 = v11;
      [v9 logReceiverBundleID:v6 forURL:v11];

      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v14 = *(v0 + 272);
      v16 = *(v0 + 248);
      v15 = *(v0 + 256);
      v17 = *(v0 + 216);
      v18 = *(v0 + 224);
      v60 = v13 / (*(v0 + 328) + 1);
      v17(&v60);
      (*(v15 + 8))(v14, v16);
      v19 = *(v0 + 344);
      v20 = *(v0 + 328);
      if (v19 == v20)
      {
        v21 = 1;
      }

      else
      {
        if (v19 >= v20)
        {
          goto LABEL_23;
        }

        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_24;
        }

        v24 = *(v0 + 296);
        v23 = *(v0 + 304);
        v25 = *(v0 + 248);
        v26 = *(v0 + 256);
        v27 = *(v26 + 16);
        v28 = *(v0 + 232) + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19;
        v29 = *(*(v0 + 280) + 48);
        *v24 = v19;
        v27(v24 + v29, v28, v25);
        sub_10002C4E4(v24, v23, &qword_10097A3B0, &unk_1007FD5B0);
        v21 = 0;
        v19 = v22;
      }

      *(v0 + 344) = v19;
      v31 = *(v0 + 304);
      v30 = *(v0 + 312);
      v33 = *(v0 + 280);
      v32 = *(v0 + 288);
      v34 = 1;
      (*(v32 + 56))(v31, v21, 1, v33);
      sub_10002C4E4(v31, v30, &qword_10097A3B8, &qword_1007FE9C0);
      if ((*(v32 + 48))(v30, 1, v33) == 1)
      {
        goto LABEL_16;
      }

      v35 = *(v0 + 336);
      v36 = *(v0 + 312);
      v38 = *(v0 + 272);
      v37 = *(v0 + 280);
      v39 = *(v0 + 248);
      v40 = *(v0 + 256);
      *(v0 + 352) = *v36;
      (*(v40 + 32))(v38, &v36[*(v37 + 48)], v39);
      sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v42;
      *(inited + 48) = 1;
      v43 = sub_100281D9C(inited);
      *(v0 + 360) = v43;
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
      if ((sub_1003DDA98() & 1) == 0)
      {
        break;
      }

      v44 = [objc_opt_self() defaultWorkspace];
      if (!v44)
      {
        goto LABEL_25;
      }

      v46 = v44;
      v47 = *(v0 + 272);
      URL._bridgeToObjectiveC()(v45);
      v49 = v48;
      sub_1003CE73C(v43);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v51 = [v46 openSensitiveURL:v49 withOptions:isa];

      if ((v51 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v58 = swift_task_alloc();
    *(v0 + 368) = v58;
    *v58 = v0;
    v58[1] = sub_1003D24B4;
    v59 = *(v0 + 272);

    sub_1003DDCC0(v59);
  }

  else
  {
LABEL_15:
    (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
    v34 = 0;
LABEL_16:
    v53 = *(v0 + 304);
    v52 = *(v0 + 312);
    v54 = *(v0 + 296);
    v56 = *(v0 + 264);
    v55 = *(v0 + 272);
    **(v0 + 208) = v34;

    v57 = *(v0 + 8);

    v57();
  }
}

uint64_t sub_1003D3388()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[34];
  v13 = v0[37];
  v14 = v0[33];
  v9 = v0[31];
  v8 = v0[32];
  swift_willThrow();

  (*(v8 + 8))(v7, v9);

  v10 = v0[1];
  v11 = v0[50];

  return v10();
}

uint64_t sub_1003D3474(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1003D3570(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9)
{
  v100 = a8;
  v116 = a7;
  v114 = a6;
  v108 = a4;
  v109 = a3;
  v95 = a1;
  v99 = a9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v98 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v94 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v93 = *(v94 - 8);
  v91[1] = *(v93 + 64);
  __chkstk_darwin(v94);
  v92 = v91 - v18;
  v19 = *(a2 + 16);
  if (!v19)
  {
LABEL_32:
    v84 = v93;
    v85 = v92;
    v86 = v94;
    (*(v93 + 16))(v92, v95, v94);
    v87 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v88 = swift_allocObject();
    v89 = v116;
    *(v88 + 16) = v114;
    *(v88 + 24) = v89;
    (*(v84 + 32))(v88 + v87, v85, v86);
    v122 = sub_1003DE6B8;
    v123 = v88;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v121 = sub_100011678;
    *(&v121 + 1) = &unk_1008DE7C0;
    v90 = _Block_copy(&aBlock);

    [v99 addBarrierBlock:v90];
    _Block_release(v90);
    return;
  }

  v107 = sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
  v106 = v109 ^ 1;
  v105 = LSMoveDocumentOnOpenKey;
  v104 = LSRequireOpenInPlaceKey;
  v20 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v103 = sub_10028088C(&unk_100975640, &unk_1007F64E0);
  v22 = *(v12 + 16);
  v21 = v12 + 16;
  v111 = v22;
  v110 = (v21 - 8);
  v97 = LSFileProviderStringKey;
  v112 = v21;
  v102 = *(v21 + 56);
  *&v23 = 136315394;
  v96 = v23;
  v101 = a5;
  v113 = v11;
  v117 = v17;
  while (1)
  {
    v115 = v19;
    v111(v17, v20, v11);
    v124.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124._urlString = v26;
    v27 = v107;
    v28.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v106 & 1).super.super.isa;
    v125 = v27;
    v124._baseURL = v28.super.super.isa;
    v126[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126[1] = v29;
    v30.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v109 & 1).super.super.isa;
    v126[5] = v27;
    v126[2] = v30.super.super.isa;
    v31 = static _DictionaryStorage.allocate(capacity:)();

    sub_10000FF90(&v124, &aBlock, &qword_1009744D0, &qword_1007F8A20);
    v32 = aBlock;
    v33 = sub_100012854(aBlock, *(&aBlock + 1));
    if (v34)
    {
      break;
    }

    *(v31 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
    *(v31[6] + 16 * v33) = v32;
    sub_1000106E0(&v121, (v31[7] + 32 * v33));
    v35 = v31[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_34;
    }

    v31[2] = v37;
    sub_10000FF90(v126, &aBlock, &qword_1009744D0, &qword_1007F8A20);
    v38 = aBlock;
    v39 = sub_100012854(aBlock, *(&aBlock + 1));
    if (v40)
    {
      break;
    }

    *(v31 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v39;
    *(v31[6] + 16 * v39) = v38;
    sub_1000106E0(&v121, (v31[7] + 32 * v39));
    v41 = v31[2];
    v36 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v36)
    {
      goto LABEL_34;
    }

    v31[2] = v42;

    sub_10028088C(&qword_1009744D0, &qword_1007F8A20);
    swift_arrayDestroy();
    v43 = *v108;
    if (!*(*v108 + 16))
    {
      v45 = &v127;
      v17 = v117;
LABEL_16:
      if (a5)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    }

    v17 = v117;
    v44 = sub_100570988(v117);
    if ((v46 & 1) == 0)
    {
      goto LABEL_16;
    }

    v47 = (*(v43 + 56) + 16 * v44);
    v48 = *v47;
    v49 = v47[1];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = String._bridgeToObjectiveC()();

    *(&v121 + 1) = sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    *&aBlock = v53;
    sub_1000106E0(&aBlock, &v119);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118 = v31;
    v55 = sub_100012854(v50, v52);
    v57 = v31[2];
    v58 = (v56 & 1) == 0;
    v36 = __OFADD__(v57, v58);
    v59 = v57 + v58;
    if (v36)
    {
      goto LABEL_35;
    }

    v60 = v56;
    if (v31[3] >= v59)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = v55;
        sub_1002CDFF4();
        v55 = v83;
      }
    }

    else
    {
      sub_100011310(v59, isUniquelyReferenced_nonNull_native);
      v55 = sub_100012854(v50, v52);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_37;
      }
    }

    v17 = v117;
    if (v60)
    {
      v62 = v55;

      v63 = (v118[7] + 32 * v62);
      sub_10000C60C(v63);
      sub_1000106E0(&v119, v63);
    }

    else
    {
      v64 = v118;
      v118[(v55 >> 6) + 8] |= 1 << v55;
      v65 = (v64[6] + 16 * v55);
      *v65 = v50;
      v65[1] = v52;
      sub_1000106E0(&v119, (v64[7] + 32 * v55));
      v66 = v64[2];
      v36 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v36)
      {
        goto LABEL_36;
      }

      v64[2] = v67;
    }

    v45 = &v124;
    a5 = v101;
    if (v101)
    {
LABEL_25:
      URL._bridgeToObjectiveC()(v45);
      v69 = v68;
      v70 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_1003CE73C(v100);
      v72 = Dictionary._bridgeToObjectiveC()().super.isa;

      v73 = [a5 operationToOpenResource:v69 usingApplication:v70 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:isa options:v72 delegate:0];

      v17 = v117;
      v11 = v113;
      if (v73)
      {
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_10000C4AC(v74, qword_10097B528);
        v75 = v98;
        v111(v98, v17, v11);

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v78 = v96;
          *(v78 + 4) = sub_10000C4E4(v114, v116, &aBlock);
          *(v78 + 12) = 2080;
          sub_100010780(&qword_100975160, &type metadata accessor for URL);
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v80;
          (*v110)(v75, v113);
          v82 = sub_10000C4E4(v79, v81, &aBlock);

          *(v78 + 14) = v82;
          _os_log_impl(&_mh_execute_header, v76, v77, "Enqueuing resource open operation for %s, with URL: %s", v78, 0x16u);
          swift_arrayDestroy();

          v11 = v113;
        }

        else
        {

          (*v110)(v75, v11);
        }

        [v99 addOperation:v73];

        a5 = v101;
        v17 = v117;
      }

      goto LABEL_4;
    }

LABEL_3:

    v11 = v113;
LABEL_4:
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();
    [v24 logReceiverBundleID:v25 forURL:0];

    (*v110)(v17, v11);
    v20 += v102;
    v19 = v115 - 1;
    if (v115 == 1)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1003D411C(uint64_t a1, unint64_t a2)
{
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097B528);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C4E4(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "Resource open operation completed for %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v11 = 1;
  sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  return CheckedContinuation.resume(returning:)();
}

void sub_1003D429C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097B608, &unk_1007FEA48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (aBlock - v5);
  URL._bridgeToObjectiveC()(v5);
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  (*(v3 + 16))(v6, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v6, v2);
  aBlock[4] = sub_1003DE614;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D4678;
  aBlock[3] = &unk_1008DE770;
  v12 = _Block_copy(aBlock);

  FPExtendBookmarkForDocumentURL();
  _Block_release(v12);
}

uint64_t sub_1003D4478(uint64_t a1, void *a2)
{
  if (!a1 || a2)
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097B528);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = 0;
      if (a2)
      {
        type metadata accessor for CFError(0);
        sub_100010780(&unk_100987420, type metadata accessor for CFError);
        swift_allocError();
        *v10 = v4;
        v11 = v4;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      *(v7 + 4) = v9;
      *v8 = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch FileProvider bookmark - %@", v7, 0xCu);
      sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10028088C(&qword_10097B608, &unk_1007FEA48);
  return CheckedContinuation.resume(returning:)();
}

void sub_1003D4678(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1003D4704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v4 = type metadata accessor for URL.DirectoryHint();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v10 = *(*(sub_10028088C(&unk_1009755F0, &unk_1007FE9A0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[26] = v11;
  v12 = *(v11 - 8);
  v3[27] = v12;
  v13 = *(v12 + 64) + 15;
  v3[28] = swift_task_alloc();
  v14 = type metadata accessor for SFPlatform();
  v3[29] = v14;
  v15 = *(v14 - 8);
  v3[30] = v15;
  v16 = *(v15 + 64) + 15;
  v3[31] = swift_task_alloc();
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3[32] = v17;
  v18 = *(v17 - 8);
  v3[33] = v18;
  v19 = *(v18 + 64) + 15;
  v3[34] = swift_task_alloc();
  v20 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3[35] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v22 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v23 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D4A44, v23, 0);
}

uint64_t sub_1003D4A44()
{
  v112 = v0;
  v102 = v0[36];
  v105 = v0[37];
  v1 = v0[35];
  v2 = v0[33];
  v107 = v0[34];
  v108 = v0[32];
  v3 = v0[30];
  v4 = v0[31];
  v109 = v0[29];
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  v0[12] = _swiftEmptyArrayStorage;
  sub_100010780(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v107, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v108);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static SFPlatform.macOS.getter();
  LOBYTE(v1) = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v4, v109);
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (v1)
  {
    v7 = v0[27];
    v8 = v0[28];
    v9 = v0[26];
    v10 = v0[15];
    SFAirDropReceive.Transfer.state.getter();
    LOBYTE(v10) = SFAirDropReceive.Transfer.State.completedSuccessfully.getter();
    (*(v7 + 8))(v8, v9);
    if ((v10 & 1) == 0)
    {
      v11 = v0[15];
      if (SFAirDropReceive.Transfer.didReceiverAccept.getter())
      {
        v12 = v0[25];
        v13 = v0[15];
        SFAirDropReceive.Transfer.fileInfo.getter();
        v14 = type metadata accessor for SFAirDropReceive.FileInfo();
        v15 = *(v14 - 8);
        v16 = (*(v15 + 48))(v12, 1, v14);
        v17 = v0[25];
        if (v16 == 1)
        {
          sub_100005508(v0[25], &unk_1009755F0, &unk_1007FE9A0);
          if (qword_1009737B0 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_10000C4AC(v18, qword_10097B528);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v19, v20, "No placeholder file URLs to cleanup", v21, 2u);
          }

          v22 = type metadata accessor for SFAirDropReceive.Failure();
          sub_100010780(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
          swift_allocError();
          v24 = v23;
          v25 = &enum case for SFAirDropReceive.Failure.incompleteTransfer(_:);
          goto LABEL_15;
        }

        v81 = SFAirDropReceive.FileInfo.placeholderURLs.getter();
        (*(v15 + 8))(v17, v14);
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v110 = v5;
        v82 = type metadata accessor for Logger();
        sub_10000C4AC(v82, qword_10097B528);

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = v0[20];
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v111 = v87;
          *v86 = 136315138;
          v88 = Array.description.getter();
          v90 = sub_10000C4E4(v88, v89, &v111);

          *(v86 + 4) = v90;
          _os_log_impl(&_mh_execute_header, v83, v84, "Removing placeholder files %s", v86, 0xCu);
          sub_10000C60C(v87);
        }

        v91 = *(v81 + 16);
        if (!v91)
        {
LABEL_37:

          goto LABEL_25;
        }

        v92 = 0;
        p_opt_class_meths = v0[21];
        while (v92 < *(v81 + 16))
        {
          v93 = v0[24];
          v94 = v0[20];
          (p_opt_class_meths[2])(v93, v81 + ((*(p_opt_class_meths + 80) + 32) & ~*(p_opt_class_meths + 80)) + p_opt_class_meths[9] * v92, v94);
          v95 = [objc_opt_self() defaultManager];
          URL._bridgeToObjectiveC()(v96);
          v98 = v97;
          (p_opt_class_meths[1])(v93, v94);
          v0[14] = 0;
          LODWORD(v94) = [v95 removeItemAtURL:v98 error:v0 + 14];

          v99 = v0[14];
          if (!v94)
          {
            v101 = v99;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            v5 = v110;
            p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
            goto LABEL_20;
          }

          ++v92;
          v100 = v99;
          if (v91 == v92)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
        goto LABEL_40;
      }
    }
  }

  v26 = sub_1001F17F4();
  if (v26)
  {
    v110 = v5;
    v27 = v0[22];
    v28 = v0[23];
    v29 = v0[21];
    v103 = v0[20];
    v30 = v0[18];
    v31 = v0[19];
    v32 = v0[17];
    v106 = v0[16];
    v33 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v29 + 32))(v28, v27, v103);
    v0[8] = 0xD000000000000011;
    v0[9] = 0x8000000100788A20;
    v34 = enum case for URL.DirectoryHint.isDirectory(_:);
    v104 = *(v30 + 104);
    v104(v31, enum case for URL.DirectoryHint.isDirectory(_:), v32);
    sub_10001229C();
    URL.append<A>(path:directoryHint:)();
    v35 = *(v30 + 8);
    v35(v31, v32);
    v0[10] = UUID.uuidString.getter();
    v0[11] = v36;
    v104(v31, v34, v32);
    URL.append<A>(path:directoryHint:)();
    v37 = v32;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    v35(v31, v37);

    if (qword_1009737B0 == -1)
    {
LABEL_12:
      v38 = v0;
      v39 = type metadata accessor for Logger();
      sub_10000C4AC(v39, qword_10097B528);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v0 + 12;
        v43 = v38[23];
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v111 = v45;
        *v44 = 136315138;
        swift_beginAccess();
        v46 = URL.path.getter();
        v48 = sub_10000C4E4(v46, v47, &v111);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v40, v41, "Cleaning up transfer folder %s", v44, 0xCu);
        sub_10000C60C(v45);

        v49 = v110;
      }

      else
      {

        v49 = v110;
        v42 = v0 + 12;
      }

      v51 = v38[23];
      v52 = [objc_opt_self() defaultManager];
      swift_beginAccess();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      v38[13] = 0;
      v56 = [v52 removeItemAtURL:v54 error:v42 + 1];

      v57 = v38[13];
      v58 = v38[23];
      v59 = v38[20];
      v60 = v38[21];
      v0 = v38;
      if (v56)
      {
        v61 = v57;

        (*(v60 + 8))(v58, v59);
        goto LABEL_25;
      }

      v62 = v57;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v60 + 8))(v58, v59);
      v5 = v49;
      goto LABEL_20;
    }

LABEL_40:
    swift_once();
    goto LABEL_12;
  }

  v22 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100010780(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  v24 = v50;
  v25 = &enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:);
LABEL_15:
  (*(*(v22 - 8) + 104))(v24, *v25, v22);
  swift_willThrow();
LABEL_20:
  if (p_opt_class_meths[246] != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_10000C4AC(v63, qword_10097B528);
  swift_errorRetain();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    swift_errorRetain();
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 4) = v68;
    *v67 = v68;
    _os_log_impl(&_mh_execute_header, v64, v65, "Remove URL failed with error %@", v66, 0xCu);
    sub_100005508(v67, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

LABEL_25:
  v70 = v0[36];
  v69 = v0[37];
  v71 = v0[34];
  v72 = v0[31];
  v73 = v0[28];
  v75 = v0[24];
  v74 = v0[25];
  v77 = v0[22];
  v76 = v0[23];
  v78 = v0[19];

  v79 = v0[1];

  return v79();
}

uint64_t sub_1003D568C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[20] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D572C, v3, 0);
}

uint64_t sub_1003D572C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_1003D5848;
  v2 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097B600, &unk_1007FEA10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003D59F8;
  v0[13] = &unk_1008DE720;
  v0[14] = v2;
  [v1 requestClipWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003D5848()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_1003D598C;
  }

  else
  {
    v5 = sub_1003D5968;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003D598C()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_1003D59F8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1003D5AC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D5BC0, v6, 0);
}

uint64_t sub_1003D5BC0()
{
  v1 = *(v0 + 48);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1003D5C8C;
  v3 = *(v0 + 48);

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003D5C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 56);
  if (v0)
  {
    v9 = sub_1003C13E4;
  }

  else
  {
    v9 = sub_1003D5E14;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003D5E14()
{
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097B528);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ClipServices request timed out", v4, 2u);
  }

  v5 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  [v6 cancel];
  *v7 = 0;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003D5F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v8 = type metadata accessor for URL();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003D6024, 0, 0);
}

uint64_t sub_1003D6024()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    v19 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v9 = (v4 + 16);
    v20 = v6;
    do
    {
      v5(v0[11], v7, v0[8]);
      v10 = URL.isFileURL.getter();
      v11 = v0[11];
      if (v10)
      {
        v12 = *v9;
        (*v9)(v0[10], v0[11], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10028FAB4(v13 > 1, v14 + 1, 1);
        }

        v15 = v0[10];
        v16 = v0[8];
        _swiftEmptyArrayStorage[2] = v14 + 1;
        v12(_swiftEmptyArrayStorage + v19 + v14 * v8, v15, v16);
        v5 = v20;
      }

      else
      {
        (*(v4 - 8))(v0[11], v0[8]);
      }

      v7 += v8;
      --v2;
    }

    while (v2);
  }

  v0[12] = _swiftEmptyArrayStorage;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D6220, v17, 0);
}

uint64_t sub_1003D6220()
{
  *(v0 + 104) = sub_1003DE840(*(v0 + 32));
  *(v0 + 136) = v1;

  return _swift_task_switch(sub_1003D6290, 0, 0);
}

uint64_t sub_1003D6290()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v12 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = v12;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  *(v6 + 56) = v1 & 1;
  *(v6 + 57) = BYTE1(v1) & 1;
  *(v6 + 58) = BYTE2(v1) & 1;
  *(v6 + 64) = v4;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  v9 = sub_10028088C(&qword_10097B618, &qword_1007FEA88);
  *v8 = v0;
  v8[1] = sub_1003D63E0;
  v10 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000023, 0x800000010078EA20, sub_1003DEA1C, v6, v9);
}

uint64_t sub_1003D63E0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1003D6580;
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 96);

    v4 = sub_1003D6508;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003D6508()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003D6580()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  v6 = v0[1];
  v7 = v0[16];

  return v6();
}

void sub_1003D6610(objc_class *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, uint64_t a10)
{
  v56 = a7;
  v57 = a8;
  v58 = a6;
  v59 = a5;
  v51 = a3;
  v13 = sub_10028088C(&qword_10097B620, &qword_1007FEA90);
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  __chkstk_darwin(v13);
  v53 = &v47 - v15;
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16 - 8);
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_10097B528);
  sub_1002940CC(a2, v21);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    isa = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v48 = v17;
    aBlock[0] = v27;
    *v26 = 136315394;
    v28 = sub_10032B99C();
    v49 = a2;
    v29 = v14;
    v31 = v30;
    sub_1003DEB88(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v32 = sub_10000C4E4(v28, v31, aBlock);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    if (a4)
    {
      v33 = v51;
    }

    else
    {
      v33 = 0xD000000000000015;
    }

    if (a4)
    {
      v34 = a4;
    }

    else
    {
      v34 = 0x8000000100789F30;
    }

    v35 = sub_10000C4E4(v33, v34, aBlock);
    v14 = v29;
    a2 = v49;

    *(v26 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v23, v24, "Converting media items for endpoint %s from requestSource %s", v26, 0x16u);
    swift_arrayDestroy();
    v17 = v48;

    a1 = isa;
  }

  else
  {

    sub_1003DEB88(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  LODWORD(v51) = a9;
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v49 = String._bridgeToObjectiveC()();
  }

  else
  {
    v49 = 0;
  }

  v48 = objc_opt_self();
  v36 = v52;
  sub_1002940CC(a2, v52);
  v37 = v53;
  v38 = v54;
  v39 = v55;
  (*(v54 + 16))(v53, a1, v55);
  v40 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v41 = (v18 + *(v38 + 80) + v40) & ~*(v38 + 80);
  v42 = (v14 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_10000EDE0(v36, v43 + v40, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v38 + 32))(v43 + v41, v37, v39);
  *(v43 + v42) = v59;
  *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = a10;
  aBlock[4] = sub_1003DEA60;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D7F44;
  aBlock[3] = &unk_1008DE860;
  v44 = _Block_copy(aBlock);

  v45 = v49;
  v46 = isa;
  [v48 convertMediaItemsWithFileURLs:isa clientBundleID:v49 mediaCapabilities:v58 supportsLivePhoto:v56 & 1 supportsAssetBundles:v57 & 1 supportsWideGamut:v51 & 1 completionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_1003D6B6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(char *, uint64_t))
{
  v120 = a6;
  v121 = a5;
  v114 = a4;
  v113 = a3;
  v124 = a1;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFSecurityScopedURL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v109 - v18;
  v20 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v26 = __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v30 = &v109 - v29;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1009737B0 != -1)
    {
LABEL_56:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_10097B528);
    sub_1002940CC(v113, v30);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v128[0] = v36;
      *v34 = 136315394;
      v37 = sub_10032B99C();
      v39 = v38;
      sub_1003DEB88(v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v40 = sub_10000C4E4(v37, v39, v128);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v41;
      *v35 = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Conversion of media items for endpoint %s failed: %@", v34, 0x16u);
      sub_100005508(v35, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v36);
    }

    else
    {

      sub_1003DEB88(v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v128[0] = a2;
    sub_10028088C(&qword_10097B620, &qword_1007FEA90);
    return CheckedContinuation.resume(throwing:)();
  }

  v119 = v8;
  v43 = v120;
  v42 = v121;
  v122 = v19;
  v123 = v17;
  v116 = v13;
  v112 = v12;
  v118 = v11;
  v44 = v124;
  if (!v124)
  {
    v59 = v113;
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000C4AC(v60, qword_10097B528);
    sub_1002940CC(v59, v24);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v128[0] = v64;
      *v63 = 136315138;
      v65 = sub_10032B99C();
      v67 = v66;
      sub_1003DEB88(v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v68 = sub_10000C4E4(v65, v67, v128);

      *(v63 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v61, v62, "Conversion of media items for endpoint %s failed", v63, 0xCu);
      sub_10000C60C(v64);
    }

    else
    {

      sub_1003DEB88(v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v69 = type metadata accessor for SFAirDropSend.Failure();
    sub_100010780(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    v70 = swift_allocError();
    (*(*(v69 - 8) + 104))(v71, enum case for SFAirDropSend.Failure.badRequest(_:), v69);
    v128[0] = v70;
    sub_10028088C(&qword_10097B620, &qword_1007FEA90);
    return CheckedContinuation.resume(throwing:)();
  }

  v45 = v28;
  v46 = v27;
  v129 = sub_100281ED8(_swiftEmptyArrayStorage);
  v47 = sub_1003CEC3C(v44, &v129);
  v109 = 0;
  v111 = v47;
  v48 = v113;
  if (!*(v47 + 2) && v42[2])
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000C4AC(v49, qword_10097B528);
    v50 = v45;
    sub_1002940CC(v48, v45);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v128[0] = v54;
      *v53 = 136315138;
      v121 = sub_10032B99C();
      v56 = v55;
      sub_1003DEB88(v50, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v57 = sub_10000C4E4(v121, v56, v128);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "Conversion of media items for endpoint %s returned no results, falling back to initial URLs", v53, 0xCu);
      sub_10000C60C(v54);
    }

    else
    {

      sub_1003DEB88(v50, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    memset(v128, 0, 24);
    sub_10028088C(&qword_10097B620, &qword_1007FEA90);
    CheckedContinuation.resume(returning:)();
  }

  v110 = v46;
  v72 = v43[2];
  v117 = v7;
  if (v72)
  {
    v73 = v116 + 16;
    v74 = *(v116 + 16);
    v116 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v75 = v43 + v116;
    v76 = *(v73 + 56);
    v120 = (v119 + 1);
    v121 = v74;
    v119 = (v73 + 16);
    v115 = (v73 - 8);
    v30 = _swiftEmptyArrayStorage;
    v77 = v118;
    v78 = v112;
    v79 = v122;
    do
    {
      v80 = v73;
      (v121)(v79, v75, v78);
      v81 = v78;
      SFSecurityScopedURL.url.getter();
      v82 = URL.isFileURL.getter();
      (*v120)(v77, v7);
      if (v82)
      {
        (*v115)(v79, v81);
        v78 = v81;
      }

      else
      {
        v83 = *v119;
        (*v119)(v123, v79, v81);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128[0] = v30;
        if (isUniquelyReferenced_nonNull_native)
        {
          v78 = v81;
        }

        else
        {
          sub_10028FE08(0, *(v30 + 2) + 1, 1);
          v78 = v112;
          v30 = v128[0];
        }

        v86 = *(v30 + 2);
        v85 = *(v30 + 3);
        if (v86 >= v85 >> 1)
        {
          sub_10028FE08(v85 > 1, v86 + 1, 1);
          v78 = v112;
          v30 = v128[0];
        }

        *(v30 + 2) = v86 + 1;
        v83(&v30[v116 + v86 * v76], v123, v78);
        v7 = v117;
        v77 = v118;
      }

      v75 += v76;
      v72 = (v72 - 1);
      v73 = v80;
    }

    while (v72);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v128[0] = v30;
  sub_1004038AC(v111);
  v87 = v128[0];
  v128[0] = _swiftEmptyArrayStorage;
  a2 = v124;
  v88 = v124 & 0xFFFFFFFFFFFFFF8;
  if (v124 >> 62)
  {
    v89 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v89 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = 0;
  v91 = a2 & 0xC000000000000001;
  v92 = _swiftEmptyArrayStorage;
  while (v89 != v90)
  {
    if (v91)
    {
      v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v90 >= *(v88 + 16))
      {
        goto LABEL_55;
      }

      v93 = *(v124 + 8 * v90 + 32);
    }

    v30 = v93;
    v94 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    a2 = [v93 conversionDestination];

    ++v90;
    if (a2)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v92 = v128[0];
      v90 = v94;
    }
  }

  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_10000C4AC(v95, qword_10097B528);
  v96 = v110;
  sub_1002940CC(v113, v110);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v128[0] = v100;
    *v99 = 136315394;
    v101 = sub_10032DA30(v100);
    v103 = v102;
    sub_1003DEB88(v96, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v104 = sub_10000C4E4(v101, v103, v128);

    *(v99 + 4) = v104;
    *(v99 + 12) = 2080;
    swift_beginAccess();
    sub_100010780(&unk_100975170, &type metadata accessor for URL);

    v105 = Dictionary.description.getter();
    v107 = v106;

    v108 = sub_10000C4E4(v105, v107, v128);

    *(v99 + 14) = v108;
    _os_log_impl(&_mh_execute_header, v97, v98, "Conversion of media items for endpoint %s returned map of conversion needed: %s", v99, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1003DEB88(v96, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  swift_beginAccess();
  v125 = v87;
  v126 = v129;
  v127 = v92;
  sub_10028088C(&qword_10097B620, &qword_1007FEA90);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1003D7928@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10028088C(&qword_10097B548, &qword_1007FE968);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v66 = &v60 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v65 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v60 - v19;
  __chkstk_darwin(v18);
  v22 = &v60 - v21;
  v23 = *a1;
  v24 = [v23 url];
  if (v24)
  {
    v62 = v3;
    v64 = a3;
    v25 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v11[2];
    v67 = v22;
    v63 = v10;
    v26(v20);
    v27 = [v23 conversionNeeded];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 BOOLValue];
    }

    else
    {
      v29 = 0;
    }

    v32 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *a2;
    *a2 = 0x8000000000000000;
    sub_10057B0E4(v29, v20, isUniquelyReferenced_nonNull_native);
    v34 = v11[1];
    v35 = v20;
    v36 = v63;
    v34(v35, v63);
    v37 = *a2;
    *a2 = v68;

    v38 = v67;
    (v26)(v17, v67, v36);
    v39 = v66;
    v40 = v62;
    SFSecurityScopedURL.init(_:readWrite:)();
    if (v40)
    {
      v62 = v34;
      v66 = (v11 + 1);
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000C4AC(v41, qword_10097B528);
      v42 = v65;
      v43 = v67;
      (v26)(v65, v67, v36);
      swift_errorRetain();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = v36;
        v47 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v68 = v61;
        *v47 = 136315394;
        sub_100010780(&qword_100975160, &type metadata accessor for URL);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v42;
        v51 = v50;
        v52 = v62;
        v62(v49, v46);
        v53 = sub_10000C4E4(v48, v51, &v68);

        *(v47 + 4) = v53;
        *(v47 + 12) = 2112;
        swift_errorRetain();
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 14) = v54;
        v55 = v60;
        *v60 = v54;
        _os_log_impl(&_mh_execute_header, v44, v45, "Failed to get security scoped URL for URL: %s. Error: %@", v47, 0x16u);
        sub_100005508(v55, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v61);

        v52(v67, v46);
      }

      else
      {

        v57 = v62;
        v62(v42, v36);
        v57(v43, v36);
      }

      v58 = v64;
      v59 = type metadata accessor for SFSecurityScopedURL();
      return (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    }

    else
    {
      v34(v38, v36);
      v56 = type metadata accessor for SFSecurityScopedURL();
      (*(*(v56 - 8) + 56))(v39, 0, 1, v56);
      return sub_10002C4E4(v39, v64, &qword_10097B548, &qword_1007FE968);
    }
  }

  else
  {
    v30 = type metadata accessor for SFSecurityScopedURL();
    return (*(*(v30 - 8) + 56))(a3, 1, 1, v30);
  }
}

uint64_t sub_1003D7F44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1000276B4(0, &qword_10097B628, off_1008C8CE8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_1003D7FE8@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  v3 = [v1 isiWorkDocument];

  return v3;
}

uint64_t Sequence<>.markAllRecent()(void (**a1)(char *, char *, uint64_t), uint64_t a2)
{
  v4 = sub_10028088C(&unk_100989330, &qword_1007FE960);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v107 = &v90 - v6;
  v105 = type metadata accessor for SFSandboxTokenURLPair();
  v99 = *(v105 - 8);
  v7 = *(v99 + 64);
  v8 = __chkstk_darwin(v105);
  v96 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v94 = &v90 - v11;
  __chkstk_darwin(v10);
  v93 = &v90 - v12;
  v13 = sub_10028088C(&qword_10097B548, &qword_1007FE968);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v106 = &v90 - v15;
  v108 = type metadata accessor for SFSecurityScopedURL();
  v110 = *(v108 - 8);
  v16 = *(v110 + 64);
  __chkstk_darwin(v108);
  v103 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v120 = *(v18 - 8);
  v19 = *(v120 + 64);
  v20 = __chkstk_darwin(v18);
  v97 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v118 = &v90 - v23;
  __chkstk_darwin(v22);
  v25 = &v90 - v24;
  v26 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v119 = &v90 - v29;
  v30 = *(a1 - 1);
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a2;
  v121 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v35 = *(v98 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v37 = &v90 - v36;
  v38 = type metadata accessor for SFPlatform();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.macOS.getter();
  v43 = static SFPlatform.isPlatform(_:)();
  result = (*(v39 + 8))(v42, v38);
  if (v43)
  {
    (*(v30 + 16))(v33, v116, v121);
    dispatch thunk of Sequence.makeIterator()();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v46 = v119;
    v47 = v37;
    v117 = AssociatedConformanceWitness;
    dispatch thunk of IteratorProtocol.next()();
    v48 = v120;
    v115 = *(v120 + 48);
    v116 = v120 + 48;
    if (v115(v46, 1, v18) == 1)
    {
      v95 = _swiftEmptyArrayStorage;
    }

    else
    {
      v50 = 0;
      v52 = *(v48 + 32);
      v51 = v48 + 32;
      v121 = (v51 - 16);
      v111 = (v110 + 56);
      v112 = v52;
      v102 = (v110 + 32);
      v101 = (v110 + 8);
      v100 = (v99 + 56);
      v110 = v51 - 24;
      v92 = (v99 + 32);
      v91 = (v99 + 16);
      v95 = _swiftEmptyArrayStorage;
      v90 = v99 + 8;
      *&v49 = 136315138;
      v104 = v49;
      v54 = v106;
      v53 = v107;
      v122 = v25;
      v120 = v51;
      v113 = v47;
      v114 = AssociatedTypeWitness;
      do
      {
        v55 = v108;
        v56 = v97;
        while (1)
        {
          v112(v25, v46, v18);
          v59 = *v121;
          (*v121)(v118, v25, v18);
          SFSecurityScopedURL.init(_:readWrite:)();
          if (!v50)
          {
            break;
          }

          (*v111)(v54, 1, 1, v55);
          sub_100005508(v54, &qword_10097B548, &qword_1007FE968);
          v50 = 0;
          if (qword_1009737B0 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_10000C4AC(v60, qword_10097B528);
          v59(v56, v25, v18);
          v61 = Logger.logObject.getter();
          v62 = v56;
          v63 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v61, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v123 = v65;
            *v64 = v104;
            sub_100010780(&qword_100975160, &type metadata accessor for URL);
            v66 = dispatch thunk of CustomStringConvertible.description.getter();
            v68 = v67;
            v109 = 0;
            v69 = *v110;
            (*v110)(v62, v18);
            v70 = sub_10000C4E4(v66, v68, &v123);
            v55 = v108;

            *(v64 + 4) = v70;
            _os_log_impl(&_mh_execute_header, v61, v63, "Failed to get security scoped url %s", v64, 0xCu);
            sub_10000C60C(v65);
            v53 = v107;

            v69(v122, v18);
            v50 = v109;
            v54 = v106;
          }

          else
          {

            v57 = *v110;
            (*v110)(v62, v18);
            v57(v122, v18);
          }

          v56 = v62;
          v46 = v119;
          dispatch thunk of IteratorProtocol.next()();
          v58 = v115(v46, 1, v18);
          v51 = v120;
          v25 = v122;
          if (v58 == 1)
          {
            v47 = v113;
            AssociatedTypeWitness = v114;
            goto LABEL_22;
          }
        }

        (*v111)(v54, 0, 1, v55);
        (*v102)(v103, v54, v55);
        static SFSecurityScopedURL.consumeSandboxToken(item:)();
        v71 = v105;
        (*v100)(v53, 0, 1, v105);
        v72 = *v92;
        v73 = v93;
        (*v92)(v93, v53, v71);
        (*v91)(v94, v73, v71);
        v74 = v95;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_10028E7D4(0, v74[2] + 1, 1, v74);
        }

        v95 = v74;
        v76 = v74[2];
        v75 = v74[3];
        v109 = 0;
        v77 = v51;
        if (v76 >= v75 >> 1)
        {
          v95 = sub_10028E7D4(v75 > 1, v76 + 1, 1, v95);
        }

        v78 = v99;
        v79 = v105;
        (*(v99 + 8))(v93, v105);
        (*v101)(v103, v108);
        v80 = v122;
        (*v110)(v122, v18);
        v81 = v95;
        v95[2] = v76 + 1;
        v72(&v81[((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v76], v94, v79);
        v46 = v119;
        v47 = v113;
        AssociatedTypeWitness = v114;
        dispatch thunk of IteratorProtocol.next()();
        v82 = v115(v46, 1, v18);
        v51 = v77;
        v25 = v80;
        v50 = v109;
      }

      while (v82 != 1);
    }

LABEL_22:
    (*(v98 + 8))(v47, AssociatedTypeWitness);
    v83 = v95[2];
    if (v83)
    {
      v84 = *(v99 + 16);
      v85 = v95 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v86 = *(v99 + 72);
      v87 = (v99 + 8);
      v88 = v105;
      v89 = v96;
      do
      {
        v84(v89, v85, v88);
        SFSandboxTokenURLPair.releaseSandboxExtension()();
        (*v87)(v89, v88);
        v85 += v86;
        --v83;
      }

      while (v83);
    }
  }

  return result;
}

uint64_t sub_1003D8D18(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      v9._countAndFlagsBits = 95;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = v6;
      v10._object = v7;
      String.append(_:)(v10);

      if (v8 > 1 || (a2 & 1) != 0)
      {
        v5._countAndFlagsBits = 0x4C4152554C505FLL;
        v5._object = 0xE700000000000000;
        String.append(_:)(v5);
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  if (a2)
  {
    v11._countAndFlagsBits = 0x4C4154495041435FLL;
    v11._object = 0xEC00000044455A49;
    String.append(_:)(v11);
  }

  v12._countAndFlagsBits = 0x545845545FLL;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  return 0x545F4E5245444F4DLL;
}

void sub_1003D8E44(uint64_t a1, char a2)
{
  v3 = type metadata accessor for SFPlatform();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v13 == 1)
  {
    v14 = SFAirDropReceive.AskRequest.files.getter();
    if (*(v14 + 16))
    {
      (*(v9 + 16))(v12, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

      v15 = SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
      v17 = v16;
      (*(v9 + 8))(v12, v8);
      static SFPlatform.macOS.getter();
      v18 = static SFPlatform.isPlatform(_:)();
      (*(v4 + 8))(v7, v3);
      if ((v18 & 1) != 0 || (v19 = String._bridgeToObjectiveC()(), v20 = SFTruncateAirDropFilenameForUI(), v19, !v20))
      {

        v22 = v17;
      }

      else
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      inited = swift_initStackObject();
      v33 = xmmword_1007F5670;
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = 0xD000000000000017;
      v24 = inited + 32;
      *(inited + 40) = 0x800000010078E8F0;
      *(inited + 48) = 1;
      sub_1003D8D18(inited, a2 & 1);
      swift_setDeallocating();
      sub_100005508(v24, &qword_100981D40, &unk_1007FA6C0);
      v25 = String._bridgeToObjectiveC()();
      v26 = SFLocalizedStringForKey();

      if (v26)
      {

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v27 = swift_allocObject();
        *(v27 + 16) = v33;
        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = sub_100026764();
        *(v27 + 32) = v15;
        *(v27 + 40) = v22;
LABEL_12:
        static String.localizedStringWithFormat(_:_:)();

        return;
      }

      goto LABEL_14;
    }
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v28 = swift_initStackObject();
  v33 = xmmword_1007F5670;
  *(v28 + 16) = xmmword_1007F5670;
  *(v28 + 32) = 0x5F434952454E4547;
  v29 = v28 + 32;
  *(v28 + 40) = 0xEC000000454C4946;
  *(v28 + 48) = v13;
  sub_1003D8D18(v28, a2 & 1);
  swift_setDeallocating();
  sub_100005508(v29, &qword_100981D40, &unk_1007FA6C0);
  v30 = String._bridgeToObjectiveC()();
  v31 = SFLocalizedStringForKey();

  if (v31)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v32 = swift_allocObject();
    *(v32 + 16) = v33;
    *(v32 + 56) = &type metadata for Int;
    *(v32 + 64) = &protocol witness table for Int;
    *(v32 + 32) = v13;
    goto LABEL_12;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void *sub_1003D92E8()
{
  v0 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSMutableOrderedSet) init];
  v6 = SFAirDropReceive.AskRequest.files.getter();
  v98 = *(v6 + 16);
  if (v98)
  {
    v96 = objc_opt_self();
    v97 = v0;
    v7 = 0;
    v88 = 0;
    v95 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v93 = v1 + 8;
    v94 = v1 + 16;
    *&v8 = 138412290;
    v87 = v8;
    v91 = v6;
    v92 = v1;
    v90 = v4;
    while (v7 < *(v6 + 16))
    {
      v12 = v5;
      v13 = v97;
      (*(v1 + 16))(v4, v95 + *(v1 + 72) * v7, v97);
      v100 = [objc_allocWithZone(NSMutableOrderedSet) init];
      SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
      v14 = v4;
      v15 = v1;
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      v16 = String._bridgeToObjectiveC()();

      v17 = String._bridgeToObjectiveC()();

      v18 = [v96 documentProxyForName:v16 type:v17 MIMEType:0];

      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      v19 = *(v15 + 8);
      v4 = v14;
      v19(v14, v13);
      v20 = String._bridgeToObjectiveC()();

      LOBYTE(v16) = SFIsCoreType();

      v99 = v7;
      v101 = v18;
      if (v16)
      {
        v5 = v12;
        v21 = v100;
      }

      else
      {
        v102 = 0;
        v22 = [v18 availableClaimBindingsForMode:1 error:&v102];
        v23 = v102;
        v5 = v12;
        if (v22)
        {
          v24 = v22;
          sub_1000276B4(0, &qword_10097B610, LSClaimBinding_ptr);
          v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v23;

          v102 = _swiftEmptyArrayStorage;
          if (v25 >> 62)
          {
            v27 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v28 = 0;
          v29 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v27 == v28)
            {

              sub_100468200(v29);

              isa = Array._bridgeToObjectiveC()().super.isa;

              v21 = v100;
              [v100 addObjectsFromArray:isa];

              v4 = v90;
              v6 = v91;
              v18 = v101;
              goto LABEL_29;
            }

            if ((v25 & 0xC000000000000001) != 0)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v30 = *(v25 + 8 * v28 + 32);
            }

            v31 = v30;
            v32 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            v33 = [v30 bundleRecord];

            ++v28;
            if (v33)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v34 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v29 = v102;
              v28 = v32;
            }
          }

          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          break;
        }

        v36 = v102;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v88 = 0;
        v37 = type metadata accessor for Logger();
        sub_10000C4AC(v37, qword_10097B528);
        swift_errorRetain();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = v87;
          swift_errorRetain();
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v42;
          *v41 = v42;
          _os_log_impl(&_mh_execute_header, v38, v39, "Failed to get airdrop available applications for opening: %@", v40, 0xCu);
          sub_100005508(v41, &qword_100975400, &qword_1007F65D0);
        }

        else
        {
        }

        v6 = v91;
        v21 = v100;
        v4 = v14;
      }

LABEL_29:
      v43 = v21;
      v44 = [v43 set];
      v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = *(v45 + 16);

      if (!v46)
      {
        v102 = 0;
        v47 = [v18 availableClaimBindingsReturningError:&v102];
        v48 = v102;
        if (v47)
        {
          v49 = v47;
          sub_1000276B4(0, &qword_10097B610, LSClaimBinding_ptr);
          v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v48;

          v102 = _swiftEmptyArrayStorage;
          v89 = v5;
          if (v50 >> 62)
          {
            v52 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v53 = 0;
          v54 = _swiftEmptyArrayStorage;
          while (v52 != v53)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v53 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_67;
              }

              v55 = *(v50 + 8 * v53 + 32);
            }

            v56 = v55;
            v5 = (v53 + 1);
            if (__OFADD__(v53, 1))
            {
              goto LABEL_66;
            }

            v57 = [v55 bundleRecord];

            ++v53;
            if (v57)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v58 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v54 = v102;
              v53 = v5;
            }
          }

          sub_100468200(v54);

          v59 = Array._bridgeToObjectiveC()().super.isa;

          [v43 addObjectsFromArray:v59];

          v5 = v89;
          v4 = v90;
          v6 = v91;
        }

        else
        {
          v60 = v102;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1009737B0 != -1)
          {
            swift_once();
          }

          v88 = 0;
          v61 = type metadata accessor for Logger();
          sub_10000C4AC(v61, qword_10097B528);
          swift_errorRetain();
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *v64 = v87;
            swift_errorRetain();
            v66 = _swift_stdlib_bridgeErrorToNSError();
            *(v64 + 4) = v66;
            *v65 = v66;
            _os_log_impl(&_mh_execute_header, v62, v63, "Failed to get airdrop available applications for opening: %@", v64, 0xCu);
            sub_100005508(v65, &qword_100975400, &qword_1007F65D0);
          }

          else
          {
          }

          v6 = v91;
        }
      }

      v67 = [v5 set];
      v68 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = *(v68 + 16);

      if (v69)
      {
        v70 = [v43 set];

        static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = Set._bridgeToObjectiveC()().super.isa;

        [v5 intersectSet:v10];
        v9 = v43;
        v11 = v101;
      }

      else
      {
        v9 = v5;
        v10 = v101;
        v11 = v43;
        v5 = v43;
      }

      v7 = v99 + 1;

      v1 = v92;
      if (v7 == v98)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_55:

    if (qword_1009737B0 == -1)
    {
      goto LABEL_56;
    }
  }

  swift_once();
LABEL_56:
  v71 = type metadata accessor for Logger();
  sub_10000C4AC(v71, qword_10097B528);
  v72 = v5;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v102 = v76;
    *v75 = 136315138;
    v77 = [v72 array];
    if (!v77)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = Array._bridgeToObjectiveC()().super.isa;
    }

    v78 = SFCompactStringFromCollection();

    if (v78)
    {
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;
    }

    else
    {
      v81 = 0x8000000100789F30;
      v79 = 0xD000000000000015;
    }

    v82 = sub_10000C4E4(v79, v81, &v102);

    *(v75 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v73, v74, "Generic handler found available applications %s", v75, 0xCu);
    sub_10000C60C(v76);
  }

  v83 = [v72 array];
  v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = sub_100468214(v84);

  return v85;
}

id sub_1003D9F30(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v40[-v8];
  __chkstk_darwin(v7);
  v11 = &v40[-v10];
  v12 = objc_opt_self();
  result = [v12 defaultWorkspace];
  if (!result)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v15 = result;
  URL._bridgeToObjectiveC()(v14);
  v17 = v16;
  v18 = [v15 URLOverrideForURL:v16];

  if (v18)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  }

  sub_10002C4E4(v9, v11, &unk_100974E00, &qword_1007F8940);
  result = [v12 defaultWorkspace];
  if (!result)
  {
    goto LABEL_27;
  }

  v21 = result;
  sub_10000FF90(v11, v6, &unk_100974E00, &qword_1007F8940);
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v25 = 0;
  if ((*(v23 + 48))(v6, 1, v22) != 1)
  {
    URL._bridgeToObjectiveC()(v24);
    v25 = v26;
    (*(v23 + 8))(v6, v22);
  }

  v27 = [v21 applicationsAvailableForOpeningURL:v25];

  if (!v27)
  {
    goto LABEL_21;
  }

  sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v28 >> 62))
  {
    result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_20:

    goto LABEL_21;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v28 & 0xC000000000000001) == 0)
  {
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v28 + 32);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_26;
  }

  v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v30 = v29;

  v31 = [v30 correspondingApplicationRecord];

  if (!v31)
  {
LABEL_21:
    sub_100005508(v11, &unk_100974E00, &qword_1007F8940);
    return 0;
  }

  v32 = v31;
  v33 = [v31 bundleIdentifier];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v41[0] = v35;
    v41[1] = v37;
    __chkstk_darwin(v38);
    *&v40[-16] = v41;
    v39 = sub_10039026C(sub_100345B28, &v40[-32], a1);
    sub_100005508(v11, &unk_100974E00, &qword_1007F8940);

    result = v32;
    if (v39)
    {
      return result;
    }
  }

  else
  {
    sub_100005508(v11, &unk_100974E00, &qword_1007F8940);
  }

  return 0;
}

void sub_1003DA3B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = a4;
  v56[1] = a3;
  v57 = type metadata accessor for URL();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v57);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v56 - v10;
  v12 = type metadata accessor for SFAirDrop.TransferType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropSend.Request.type.getter();
  v17 = (*(v13 + 88))(v16, v12);
  v18 = enum case for SFAirDrop.TransferType.links(_:);
  (*(v13 + 8))(v16, v12);
  if (v17 == v18 && *(a2 + 16))
  {
    v19 = *(type metadata accessor for SFSecurityScopedURL() - 8);
    v20 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    SFSecurityScopedURL.url.getter();
    v21 = v5;
    v22 = v11;
    v23 = v57;
    (*(v5 + 32))(v11, v9, v57);
    URL.scheme.getter();
    if (v24)
    {
      String.lowercased()();

      v25 = String._bridgeToObjectiveC()();

      v26 = SFIsCredential();

      if ((v26 & 1) != 0 || (URL._bridgeToObjectiveC()(v27), v29 = v28, v30 = SFIsPasskeyCredentialLink(), v29, v30))
      {
        if ((sub_10032F010() & 1) == 0)
        {
          if (qword_1009737B0 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000C4AC(v44, qword_10097B528);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v45, v46, "AirDrop unavailable - password / passkey unsupported", v47, 2u);
          }

          URL._bridgeToObjectiveC()(v48);
          v50 = v49;
          v51 = SFIsPasskeyCredentialLink();

          _sSo11SFUserAlertC16DaemoniOSLibraryE015credentialShareB09isPasskeyABSb_tFZ_0(v51);
          v53 = v52;
          [v52 present];
          v54 = type metadata accessor for SFAirDropSend.Failure();
          sub_100010780(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
          swift_allocError();
          (*(*(v54 - 8) + 104))(v55, enum case for SFAirDropSend.Failure.badRequest(_:), v54);
          swift_willThrow();

          (*(v21 + 8))(v22, v23);
          return;
        }
      }
    }

    (*(v5 + 8))(v11, v23);
  }

  v31 = v58;
  if ([v58 wirelessCarPlay])
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_10097B528);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "AirDrop unavailable - wireless CarPlay connected", v35, 2u);
    }

    _sSo11SFUserAlertC16DaemoniOSLibraryE07carPlayB0AByFZ_0();
  }

  else
  {
    if ([v31 isAirDropAllowed])
    {
      return;
    }

    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000C4AC(v37, qword_10097B528);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "AirDrop unavailable - MDM restricted", v40, 2u);
    }

    _sSo11SFUserAlertC16DaemoniOSLibraryE03mdmB0AByFZ_0();
  }

  v41 = v36;
  [v36 present];
  v42 = type metadata accessor for SFAirDropSend.Failure();
  sub_100010780(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v42 - 8) + 104))(v43, enum case for SFAirDropSend.Failure.badRequest(_:), v42);
  swift_willThrow();
}

uint64_t sub_1003DAA70(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032F010();
  sub_1002940CC(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      goto LABEL_6;
    }

    sub_1003DEB88(v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return 0;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_6:
      sub_1003DEB88(v9, v11);
      return 0;
    }

    sub_10000EDE0(v9, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v13 = v5 + *(v2 + 24);
    if ((v13[8] & 1) == 0)
    {
      v14 = *v13 & 1;
    }

    v15 = *v5;
    v16 = v5[1];

    sub_1003DEB88(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    return v15;
  }
}

uint64_t sub_1003DAC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for SFSecurityScopedURL();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DADD8, v13, 0);
}

uint64_t sub_1003DADD8()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
LABEL_31:
    v56 = v0[14];
    v57 = v0[11];

    v58 = v0[1];

    return v58(v3);
  }

  v4 = v0[13];
  v5 = v0[10];
  sub_10028FAB4(0, v2, 0);
  v6 = *(v5 + 16);
  v5 += 16;
  v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
  v60 = *(v5 + 56);
  v61 = v6;
  v8 = (v5 - 8);
  v59 = v2;
  v9 = v0;
  do
  {
    v10 = v9;
    v11 = v9[14];
    v12 = v10[11];
    v13 = v10[9];
    v61(v12, v7, v13);
    SFSecurityScopedURL.url.getter();
    (*v8)(v12, v13);
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      sub_10028FAB4(v14 > 1, v15 + 1, 1);
    }

    v16 = v10[14];
    v17 = v10[12];
    _swiftEmptyArrayStorage[2] = v15 + 1;
    (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v16, v17);
    v7 += v60;
    --v2;
    v9 = v10;
  }

  while (v2);
  sub_1003DA3B0(v10[3], v10[4], v10[7], v10[8]);
  v18 = v10[6];
  sub_1003DAA70(v9[7]);
  v20 = v19;
  v22 = v21;
  sub_100467F54(_swiftEmptyArrayStorage);

  v23 = v9;
  v24.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (!v18)
  {
    v0 = v23;
    v27 = 0;
    if (v20)
    {
      goto LABEL_8;
    }

LABEL_10:
    v28 = 0;
    goto LABEL_11;
  }

  v25 = v23[5];
  v26 = v23[6];
  v0 = v23;
  v27 = String._bridgeToObjectiveC()();
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_8:
  v28 = String._bridgeToObjectiveC()();

LABEL_11:
  v29 = [objc_opt_self() preprocessItems:v24.super.isa forClientBundleID:v27 receiverIdentifier:v28 receiverSupportsURLs:v22 & 1 receiverIsUnknown:(v22 >> 8) & 1];

  if ([v29 success])
  {
    v30 = [v29 files];
    if (v30)
    {
      v31 = v0[12];
      v32 = v30;
      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = [v29 links];
      if (v34)
      {
        v35 = v0[12];
        v36 = v34;
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100403790(v33);
        v0[2] = v37;
        sub_10028088C(&qword_100975610, &qword_1007F89B0);
        sub_100011630(&qword_100977C10, &qword_100975610, &qword_1007F89B0);
        v3 = RandomAccessCollection<>.securityScopedURLs.getter();

        if (v3[2])
        {
        }

        else
        {

          if (qword_1009737B0 != -1)
          {
            swift_once();
          }

          v48 = v0[4];
          v49 = type metadata accessor for Logger();
          sub_10000C4AC(v49, qword_10097B528);

          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.error.getter();
          v52 = os_log_type_enabled(v50, v51);
          v53 = v0[4];
          if (v52)
          {
            v54 = swift_slowAlloc();
            *v54 = 134217984;
            *(v54 + 4) = v59;

            _os_log_impl(&_mh_execute_header, v50, v51, "Preprocessing URLs returned no items, although we were given %ld URLs. Falling back to initial URLs", v54, 0xCu);
          }

          else
          {
            v55 = v0[4];
          }

          v3 = v0[4];
        }

        goto LABEL_31;
      }
    }
  }

  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000C4AC(v38, qword_10097B528);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Failed to preprocess items", v41, 2u);
  }

  v42 = type metadata accessor for SFAirDropSend.Failure();
  sub_100010780(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v42 - 8) + 104))(v43, enum case for SFAirDropSend.Failure.badRequest(_:), v42);
  swift_willThrow();

  v44 = v0[14];
  v45 = v0[11];

  v46 = v0[1];

  return v46();
}

uint64_t sub_1003DB480(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = type metadata accessor for URL();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[20] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DB588, v6, 0);
}

uint64_t sub_1003DB588()
{
  v1 = *(v0 + 112);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 112);
    v5 = [v3 applicationState];
    v6 = [v5 isInstalled];

    v7 = *(v0 + 112);
    if (v6)
    {
      v8 = [v3 applicationState];
      v9 = [v8 isRestricted];

      v10 = v9 ^ 1;
    }

    else
    {

      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = [*(v0 + 112) bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    *(v0 + 168) = v13;
    *(v0 + 176) = v15;
    if (v10)
    {
      v16 = sub_100292D28(&off_1008D78B8);
      sub_10032B298(&unk_1008D78D8);
      sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v18;
      *(inited + 48) = 1;
      *(v0 + 184) = sub_100281D9C(inited);
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
      *(v0 + 192) = [objc_allocWithZone(NSOperationQueue) init];
      *(v0 + 200) = [objc_opt_self() defaultWorkspace];
      v19 = sub_100569230(v13, v15, v16);
      *(v0 + 301) = v19 & 1;

      *(v0 + 88) = &_swiftEmptyDictionarySingleton;
      if ((v19 & 1) == 0)
      {
        goto LABEL_23;
      }

      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_10097B528);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Receive needs openInPlace - fetching URL bookmarks", v23, 2u);
      }

      v24 = *(v0 + 120);

      v25 = *(v24 + 16);
      *(v0 + 208) = v25;
      if (v25)
      {
        v26 = *(v0 + 136);
        v27 = *(v0 + 120);
        v28 = sub_100010780(&qword_100977C00, type metadata accessor for AirDropActor);
        *(v0 + 216) = v28;
        v29 = *(v26 + 16);
        v26 += 16;
        v30 = *(v26 + 64);
        *(v0 + 296) = v30;
        *(v0 + 224) = *(v26 + 56);
        *(v0 + 232) = v29;
        *(v0 + 240) = 0;
        *(v0 + 248) = &_swiftEmptyDictionarySingleton;
        v31 = *(v0 + 168);
        v32 = *(v0 + 176);
        v34 = *(v0 + 152);
        v33 = *(v0 + 160);
        v35 = *(v0 + 128);
        *(v0 + 256) = v26 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v29(v34, v27 + ((v30 + 32) & ~v30), v35);
        v36 = swift_task_alloc();
        *(v0 + 264) = v36;
        v36[2] = v34;
        v36[3] = v31;
        v36[4] = v32;
        v37 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
        v38 = swift_task_alloc();
        *(v0 + 272) = v38;
        v39 = sub_10028088C(&qword_100975100, &qword_1007FBA10);
        *v38 = v0;
        v38[1] = sub_1003DBBFC;
        v40 = sub_1003DE608;
        v41 = (v0 + 72);
        v42 = 0xD00000000000001CLL;
        v43 = 0x800000010078E9B0;
        v44 = v33;
        v45 = v28;
        v46 = v36;
      }

      else
      {
LABEL_23:
        v57 = *(v0 + 301);
        v59 = *(v0 + 192);
        v58 = *(v0 + 200);
        v60 = *(v0 + 168);
        v67 = *(v0 + 160);
        v61 = *(v0 + 120);
        v62 = sub_100010780(&qword_100977C00, type metadata accessor for AirDropActor);
        v63 = swift_task_alloc();
        *(v0 + 280) = v63;
        v64 = *(v0 + 176);
        *(v63 + 16) = v61;
        *(v63 + 24) = v57;
        *(v63 + 32) = v0 + 88;
        *(v63 + 40) = v58;
        *(v63 + 48) = v60;
        *(v63 + 56) = v64;
        *(v63 + 72) = v59;
        v65 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
        v66 = swift_task_alloc();
        *(v0 + 288) = v66;
        *v66 = v0;
        v66[1] = sub_1003DC244;
        v39 = &type metadata for Bool;
        v40 = sub_1003DE5D0;
        v41 = (v0 + 300);
        v43 = 0x800000010078E990;
        v44 = v67;
        v45 = v62;
        v42 = 0xD00000000000001ALL;
        v46 = v63;
      }

      return withCheckedContinuation<A>(isolation:function:_:)(v41, v44, v45, v42, v43, v40, v46, v39);
    }
  }

  v41 = [objc_opt_self() defaultWorkspace];
  if (!v41)
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v41, v44, v45, v42, v43, v40, v46, v39);
  }

  v47 = v41;
  v48 = *(v0 + 120);
  if (v48->_baseURL)
  {
    v49 = *(*(v0 + 136) + 80);
    URL._bridgeToObjectiveC()(v48);
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v52 = [*(v0 + 112) bundleIdentifier];
  [v47 _LSFailedToOpenURL:v51 withBundle:v52];

  v54 = *(v0 + 144);
  v53 = *(v0 + 152);

  v55 = *(v0 + 8);

  return v55(1);
}

uint64_t sub_1003DBBFC()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 160);
  v5 = *v0;

  return _swift_task_switch(sub_1003DBD28, v3, 0);
}

uint64_t sub_1003DBD28()
{
  v1 = *(v0 + 72);
  v2 = (v0 + 88);
  v3 = *(v0 + 256);
  v4 = *(v0 + 80);
  (*(v0 + 232))(*(v0 + 144), *(v0 + 152), *(v0 + 128));
  if (v4)
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 104) = v6;
    v8 = sub_100570988(v5);
    v10 = *(v6 + 16);
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v5) = v9;
      if (*(v6 + 24) < v13)
      {
        v14 = *(v0 + 144);
        sub_100575798(v13, isUniquelyReferenced_nonNull_native);
        v15 = *(v0 + 104);
        v8 = sub_100570988(v14);
        if ((v5 & 1) != (v16 & 1))
        {
          v17 = *(v0 + 128);

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_12:
        v23 = *(v0 + 104);
        if (v5)
        {
LABEL_13:
          v30 = *(v0 + 136);
          v29 = *(v0 + 144);
          v31 = *(v0 + 128);
          v32 = (v23[7] + 16 * v8);
          v33 = v32[1];
          *v32 = v1;
          v32[1] = v4;

          v27 = *(v30 + 8);
          v27(v29, v31);
LABEL_19:
          *v2 = v23;
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v34 = v8;
    sub_1002D0A58();
    v8 = v34;
    v23 = *(v0 + 104);
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_17:
    v35 = *(v0 + 256);
    v36 = *(v0 + 224);
    v37 = *(v0 + 232);
    v38 = *(v0 + 136);
    v22 = *(v0 + 144);
    v39 = *(v0 + 128);
    v23[(v8 >> 6) + 8] |= 1 << v8;
    v40 = v8;
    v37(v23[6] + v36 * v8, v22, v39);
    v41 = (v23[7] + 16 * v40);
    *v41 = v1;
    v41[1] = v4;
    v27 = *(v38 + 8);
    v27(v22, v39);
    v42 = v23[2];
    v12 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (!v12)
    {
      v23[2] = v43;
      goto LABEL_19;
    }

    __break(1u);
LABEL_27:
    sub_1002D0A58();
    v23 = *(v0 + 96);
    goto LABEL_10;
  }

  v19 = *(v0 + 248);
  v20 = sub_100570988(*(v0 + 144));
  if ((v21 & 1) == 0)
  {
    v27 = *(*(v0 + 136) + 8);
    v27(*(v0 + 144), *(v0 + 128));
    v23 = *(v0 + 248);
    goto LABEL_20;
  }

  v22 = v20;
  v23 = *v2;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 96) = v23;
  if (!v24)
  {
    goto LABEL_27;
  }

LABEL_10:
  v25 = *(v0 + 144);
  v26 = *(v0 + 128);
  v27 = *(*(v0 + 136) + 8);
  v27(v23[6] + *(v0 + 224) * v22, v26);
  v28 = *(v23[7] + 16 * v22 + 8);

  sub_1002D4E90(v22, v23);
  v27(v25, v26);
  *(v0 + 88) = v23;
LABEL_20:
  v44 = *(v0 + 208);
  v45 = *(v0 + 240) + 1;
  v46 = *(v0 + 136) + 8;
  v27(*(v0 + 152), *(v0 + 128));
  if (v45 == v44)
  {
    v47 = *(v0 + 301);
    v49 = *(v0 + 192);
    v48 = *(v0 + 200);
    v50 = *(v0 + 168);
    v77 = *(v0 + 160);
    v51 = *(v0 + 120);
    v52 = sub_100010780(&qword_100977C00, type metadata accessor for AirDropActor);
    v53 = swift_task_alloc();
    *(v0 + 280) = v53;
    v54 = *(v0 + 176);
    *(v53 + 16) = v51;
    *(v53 + 24) = v47;
    *(v53 + 32) = v2;
    *(v53 + 40) = v48;
    *(v53 + 48) = v50;
    *(v53 + 56) = v54;
    *(v53 + 72) = v49;
    v55 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v56 = swift_task_alloc();
    *(v0 + 288) = v56;
    *v56 = v0;
    v56[1] = sub_1003DC244;
    v57 = &type metadata for Bool;
    v58 = sub_1003DE5D0;
    v59 = v0 + 300;
    v60 = 0x800000010078E990;
    v61 = v77;
    v62 = v52;
    v63 = 0xD00000000000001ALL;
    v64 = v53;
  }

  else
  {
    v65 = *(v0 + 232);
    v66 = *(v0 + 240) + 1;
    *(v0 + 240) = v66;
    *(v0 + 248) = v23;
    v67 = *(v0 + 216);
    v69 = *(v0 + 168);
    v68 = *(v0 + 176);
    v71 = *(v0 + 152);
    v70 = *(v0 + 160);
    v72 = *(v0 + 128);
    v73 = *(v0 + 120) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 224) * v66;
    *(v0 + 256) = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v65(v71, v73, v72);
    v74 = swift_task_alloc();
    *(v0 + 264) = v74;
    v74[2] = v71;
    v74[3] = v69;
    v74[4] = v68;
    v75 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v76 = swift_task_alloc();
    *(v0 + 272) = v76;
    v57 = sub_10028088C(&qword_100975100, &qword_1007FBA10);
    *v76 = v0;
    v76[1] = sub_1003DBBFC;
    v58 = sub_1003DE608;
    v63 = 0xD00000000000001CLL;
    v60 = 0x800000010078E9B0;
    v59 = v0 + 72;
    v61 = v70;
    v62 = v67;
    v64 = v74;
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v59, v61, v62, v63, v60, v58, v64, v57);
}

uint64_t sub_1003DC244()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 160);
  v7 = *v0;

  return _swift_task_switch(sub_1003DC3B0, v5, 0);
}

uint64_t sub_1003DC3B0()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 300);
  v3 = *(v0 + 88);

  v5 = *(v0 + 144);
  v4 = *(v0 + 152);

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_1003DC438(uint64_t a1)
{
  v1[11] = a1;
  v2 = type metadata accessor for URLQueryItem();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for URLComponents();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v8 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v1[19] = v8;
  v9 = *(v8 - 8);
  v1[20] = v9;
  v10 = *(v9 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v1[23] = v11;
  v12 = *(v11 - 8);
  v1[24] = v12;
  v13 = *(v12 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v14 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v1[32] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DC6E0, v15, 0);
}

uint64_t sub_1003DC6E0()
{
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097B528);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opening files with Files App for transfer", v4, 2u);
  }

  v5 = v0[11];

  v6 = *(v5 + 16);
  if (!v6)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No items to open with Files App", v21, 2u);
    }

    goto LABEL_28;
  }

  if (v6 == 1)
  {
    v7 = v0[30];
    v8 = v0[31];
    v10 = v0[23];
    v9 = v0[24];
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = v0[11] + v11;
    v0[2] = URL.absoluteString.getter();
    v0[3] = v13;
    v0[4] = 0x2F2F3A656C6966;
    v0[5] = 0xE700000000000000;
    v0[6] = 0xD000000000000012;
    v0[7] = 0x800000010078EA00;
    sub_10001229C();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    URL.init(string:)();

    sub_10000FF90(v8, v7, &unk_100974E00, &qword_1007F8940);
    if ((*(v9 + 48))(v7, 1, v10) == 1)
    {
      sub_100005508(v0[30], &unk_100974E00, &qword_1007F8940);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = v0[31];
      if (v16)
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Could not create Files launch URL", v18, 2u);
      }

      sub_100005508(v17, &unk_100974E00, &qword_1007F8940);
      goto LABEL_28;
    }

    v61 = v0[27];
    v62 = v0[23];
    v63 = v0[24];
    v64 = v0[22];
    (*(v63 + 32))(v61, v0[30], v62);
    sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
    v65 = *(v63 + 72);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1007F5670;
    (*(v63 + 16))(v66 + v11, v61, v62);
    v0[10] = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = 0;
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    v68 = async function pointer to SFProgressTask.finalValue.getter[1];
    v69 = swift_task_alloc();
    v0[33] = v69;
    *v69 = v0;
    v69[1] = sub_1003DD210;
    v70 = v0[22];
    v71 = v0[19];
    v72 = (v0 + 313);
  }

  else
  {
    v22 = v0[24];
    v23 = v0[18];
    v24 = v0[15];
    v103 = v0;
    v25 = v0[11];
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLQueryItem.init(name:value:)();
    sub_10028FBDC(0, v6, 0);
    v26 = *(v22 + 16);
    v22 += 16;
    v94 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v27 = v25 + v94;
    v99 = *(v22 + 56);
    v100 = v26;
    v28 = (v22 - 8);
    v29 = (v22 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v30 = v103[25];
      v31 = v103[23];
      v100(v30, v27, v31);
      v32 = URL.lastPathComponent.getter();
      v34 = v33;
      v35 = *v28;
      v103[35] = *v28;
      v103[36] = v29;
      v35(v30, v31);
      v37 = _swiftEmptyArrayStorage[2];
      v36 = _swiftEmptyArrayStorage[3];
      if (v37 >= v36 >> 1)
      {
        sub_10028FBDC((v36 > 1), v37 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v37 + 1;
      v38 = &_swiftEmptyArrayStorage[2 * v37];
      v38[4] = v32;
      v38[5] = v34;
      v27 += v99;
      --v6;
    }

    while (v6);
    v0 = v103;
    v39 = v103[28];
    v40 = v103[24];
    v97 = v103[29];
    v98 = v103[23];
    v41 = v103[14];
    v95 = v103[15];
    v96 = v103[18];
    v42 = v103[12];
    v43 = v103[13];
    v103[8] = _swiftEmptyArrayStorage;
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
    BidirectionalCollection<>.joined(separator:)();

    URLQueryItem.init(name:value:)();

    sub_10028088C(&unk_100975000, &unk_1007FD260);
    v44 = *(v43 + 72);
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007F8A70;
    v47 = v46 + v45;
    v48 = *(v43 + 16);
    v48(v47, v95, v42);
    v48(v47 + v44, v41, v42);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    sub_10000FF90(v97, v39, &unk_100974E00, &qword_1007F8940);
    if ((*(v40 + 48))(v39, 1, v98) == 1)
    {
      sub_100005508(v103[28], &unk_100974E00, &qword_1007F8940);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = v103[29];
      v53 = v103[17];
      v54 = v103[18];
      v55 = v103[15];
      v101 = v103[16];
      v56 = v103[13];
      v57 = v103[14];
      v58 = v103[12];
      if (v51)
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Could not create Files launch URL", v59, 2u);
        v0 = v103;

        sub_100005508(v52, &unk_100974E00, &qword_1007F8940);
        v60 = *(v56 + 8);
        v60(v57, v58);
        v60(v55, v58);
      }

      else
      {

        sub_100005508(v52, &unk_100974E00, &qword_1007F8940);
        v81 = *(v56 + 8);
        v81(v57, v58);
        v81(v55, v58);
      }

      (*(v53 + 8))(v54, v101);
LABEL_28:
      v83 = v0[30];
      v82 = v0[31];
      v85 = v0[28];
      v84 = v0[29];
      v87 = v0[26];
      v86 = v0[27];
      v88 = v0[25];
      v90 = v0[21];
      v89 = v0[22];
      v91 = v0[18];
      v102 = v0[15];
      v104 = v0[14];

      v92 = v0[1];

      return v92(0);
    }

    v73 = v103[26];
    v74 = v103[23];
    v75 = v103[21];
    (*(v103[24] + 32))(v73, v103[28], v74);
    sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1007F5670;
    v100(v76 + v94, v73, v74);
    v103[9] = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v76;
    *(v77 + 24) = 0;
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    v78 = async function pointer to SFProgressTask.finalValue.getter[1];
    v79 = swift_task_alloc();
    v103[37] = v79;
    *v79 = v103;
    v79[1] = sub_1003DD4D0;
    v80 = v103[21];
    v71 = v103[19];
    v72 = v103 + 39;
  }

  return SFProgressTask.finalValue.getter(v72, v71);
}

uint64_t sub_1003DD210()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 272) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 256);
  if (v0)
  {
    v9 = sub_1003DD7DC;
  }

  else
  {
    v9 = sub_1003DD398;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003DD398()
{
  v1 = *(v0 + 248);
  (*(*(v0 + 192) + 8))(*(v0 + 216), *(v0 + 184));
  sub_100005508(v1, &unk_100974E00, &qword_1007F8940);
  v16 = *(v0 + 313);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 200);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 112);

  v12 = *(v0 + 8);

  return v12(v16);
}

uint64_t sub_1003DD4D0()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 304) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 256);
  if (v0)
  {
    v9 = sub_1003DD914;
  }

  else
  {
    v9 = sub_1003DD658;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003DD658()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 96);
  (*(v0 + 280))(*(v0 + 208), *(v0 + 184));
  sub_100005508(v2, &unk_100974E00, &qword_1007F8940);
  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  (*(v4 + 8))(v3, v5);
  v25 = *(v0 + 312);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v19 = *(v0 + 168);
  v18 = *(v0 + 176);
  v20 = *(v0 + 144);
  v23 = *(v0 + 120);
  v24 = *(v0 + 112);

  v21 = *(v0 + 8);

  return v21(v25);
}

uint64_t sub_1003DD7DC()
{
  v1 = v0[31];
  (*(v0[24] + 8))(v0[27], v0[23]);
  sub_100005508(v1, &unk_100974E00, &qword_1007F8940);
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[18];
  v14 = v0[15];
  v15 = v0[14];
  v16 = v0[34];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1003DD914()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 96);
  (*(v0 + 280))(*(v0 + 208), *(v0 + 184));
  sub_100005508(v2, &unk_100974E00, &qword_1007F8940);
  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  (*(v4 + 8))(v3, v5);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v19 = *(v0 + 168);
  v18 = *(v0 + 176);
  v20 = *(v0 + 144);
  v23 = *(v0 + 120);
  v24 = *(v0 + 112);
  v25 = *(v0 + 304);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_1003DDA98()
{
  URL.scheme.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = String.lowercased()();

  if (v1._countAndFlagsBits == 0x6D656D6563696F76 && v1._object == 0xEA0000000000736FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1._countAndFlagsBits == 0x736F746F6870 && v1._object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1._countAndFlagsBits == 0xD000000000000010 && 0x800000010078E930 == v1._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1._countAndFlagsBits == 0x786F62656F6873 && v1._object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1._countAndFlagsBits == 0x736B636F7473 && v1._object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1._countAndFlagsBits == 0x6870656C69626F6DLL && v1._object == 0xEB00000000656E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1._countAndFlagsBits == 0x746361746E6F63 && v1._object == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v3 & 1;
  }
}

uint64_t sub_1003DDCC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v1[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DDDF4, v6, 0);
}

uint64_t sub_1003DDDF4()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = objc_allocWithZone(CPSClipRequest);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 initWithURL:v5];
  v0[8] = v7;

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = v7;
  v11 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
  v12 = v7;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1003DDF9C;
  v14 = v0[6];

  return concurrentRace<A>(priority:operation:against:)(v0 + 13, v14, &unk_1007FE9F8, v9, &unk_1007FEA08, v10, &type metadata for Bool);
}

uint64_t sub_1003DDF9C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 96) = v0;

  sub_100005508(v6, &qword_100976160, &qword_1007F8770);

  v8 = *(v2 + 56);
  if (v0)
  {
    v9 = sub_1003DE1AC;
  }

  else
  {
    v9 = sub_1003DE134;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003DE134()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_1003DE1AC()
{
  v28 = v0;
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097B528);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 96);
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  v13 = *(v0 + 24);
  if (v9)
  {
    v26 = *(v0 + 64);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 136315394;
    sub_100010780(&qword_100975160, &type metadata accessor for URL);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_10000C4E4(v16, v18, &v27);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to open AppClip for %s - %@", v14, 0x16u);
    sub_100005508(v15, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v25);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = *(v0 + 40);
  v21 = *(v0 + 48);

  v23 = *(v0 + 8);

  return v23(0);
}

uint64_t sub_1003DE490(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003D568C(a1, v4);
}

uint64_t sub_1003DE530(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_1003D5AC4(a1, v4);
}

void sub_1003DE608(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1003D429C(a1);
}

uint64_t sub_1003DE614(uint64_t a1, void *a2)
{
  v4 = *(*(sub_10028088C(&qword_10097B608, &unk_1007FEA48) - 8) + 80);

  return sub_1003D4478(a1, a2);
}

uint64_t sub_1003DE6A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003DE6B8()
{
  v1 = *(*(sub_10028088C(&qword_10097A2B0, &qword_1007FD370) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1003D411C(v2, v3);
}

uint64_t sub_1003DE728()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1003DE768(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C00;

  return sub_1003D5F50(a1, a2, v6, v7, v8, v9, v10);
}

id sub_1003DE840(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v11 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_10000EDE0(v9, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v12 = sub_1004E6014();
      v13 = &v5[*(v2 + 24)];
      v14 = *v13;
      v15 = v13[8];
      sub_1003DEB88(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      return v12;
    }

    v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
  }

  sub_1003DEB88(v9, v11);
  return 0;
}

uint64_t sub_1003DEA60(unint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10028088C(&qword_10097B620, &qword_1007FEA90) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003D6B6C(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

uint64_t sub_1003DEB88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DEBE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1003DEC30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003DEC98()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B630);
  v1 = sub_10000C4AC(v0, qword_10097B630);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003DED60(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097B720, &qword_1007FEB70);
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.TransferType();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v2[18] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DEF7C, v15, 0);
}

uint64_t sub_1003DEF7C()
{
  v24 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[4];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    v12 = v0[17];
    v13 = v0[14];
    v14 = v0[11];
    v15 = v0[8];

    v16 = v0[1];

    return v16(0);
  }

  v5 = v0[4];
  v6 = SFAirDropReceive.AskRequest.urlItems.getter();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = sub_10028F660(*(v6 + 16), 0);
    v10 = *(type metadata accessor for URL() - 8);
    v11 = sub_100291948(&v23, &v9[(*(v10 + 80) + 32) & ~*(v10 + 80)], v8, v7);
    sub_100027D64();
    if (v11 != v8)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  v18 = v0[14];
  v0[2] = 0;
  *(swift_allocObject() + 16) = v9;
  sub_10028088C(&qword_10097B728, &qword_1007FEB88);
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v19 = async function pointer to SFProgressTask.finalValue.getter[1];
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_1003DF214;
  v21 = v0[14];
  v22 = v0[12];

  return SFProgressTask.finalValue.getter(v0 + 3, v22);
}

uint64_t sub_1003DF214()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 144);
  if (v0)
  {
    v9 = sub_1003DF450;
  }

  else
  {
    v9 = sub_1003DF39C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003DF39C()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[3];

  v3 = *(v0[5] + 16) != 0;
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];

  v8 = v0[1];

  return v8(v3);
}

uint64_t sub_1003DF450()
{
  v36 = v0;
  if (qword_1009737C0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097B630);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[9];
  if (v9)
  {
    v34 = v8;
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[6];
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v17 = 136315394;
    v31 = v7;
    SFAirDropReceive.AskRequest.id.getter();
    sub_1003E1B3C(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v14 + 8))(v15, v16);
    (*(v11 + 8))(v12, v13);
    v21 = sub_10000C4E4(v18, v20, &v35);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    *v32 = v22;
    _os_log_impl(&_mh_execute_header, v31, v34, "Failed to get handling app for ask request %s: %@", v17, 0x16u);
    sub_100005508(v32, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v33);
  }

  else
  {
    v23 = v0[20];

    (*(v11 + 8))(v12, v13);
  }

  v24 = *(v0[5] + 16) != 0;
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[11];
  v28 = v0[8];

  v29 = v0[1];

  return v29(v24);
}

void sub_1003DF790(uint64_t a1, char a2)
{
  v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = [v5 localizedName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x5F434952454E4547;
  v11 = inited + 32;
  *(inited + 40) = 0xEC0000004B4E494CLL;
  *(inited + 48) = v4;
  sub_1003D8D18(inited, a2 & 1);
  swift_setDeallocating();
  sub_100005508(v11, &qword_100981D40, &unk_1007FA6C0);
  v12 = String._bridgeToObjectiveC()();
  v13 = SFLocalizedStringForKey();

  if (v13)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1007F8A70;
    *(v14 + 56) = &type metadata for Int;
    *(v14 + 64) = &protocol witness table for Int;
    *(v14 + 32) = v4;
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = sub_100026764();
    *(v14 + 72) = v7;
    *(v14 + 80) = v9;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003DF97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1003DFDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[26] = v6;
  v7 = *(v6 - 8);
  v4[27] = v7;
  v8 = *(v7 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v4[30] = v9;
  v10 = *(v9 - 8);
  v4[31] = v10;
  v11 = *(v10 + 64) + 15;
  v4[32] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v4[35] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DFFCC, v13, 0);
}

uint64_t sub_1003DFFCC(id a1)
{
  v77 = v1;
  v2 = 0;
  v3 = 0;
  v4 = *(v1[22] + 16);
  for (v1[36] = v4; ; v4 = v1[36])
  {
    v1[37] = v2;
    if (v3 == v4)
    {
      v5 = 1;
    }

    else
    {
      if (v3 >= v4)
      {
        goto LABEL_44;
      }

      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_45;
      }

      v7 = v1[32];
      v6 = v1[33];
      v8 = v1[26];
      v9 = v1[27];
      v10 = *(v9 + 16);
      v11 = v1[22] + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v3;
      v12 = *(v1[30] + 48);
      *v7 = v3;
      v10(v7 + v12, v11, v8);
      sub_10002C4E4(v7, v6, &qword_10097A3B0, &unk_1007FD5B0);
      v5 = 0;
    }

    v1[38] = v4;
    v14 = v1[33];
    v13 = v1[34];
    v16 = v1[30];
    v15 = v1[31];
    (*(v15 + 56))(v14, v5, 1, v16);
    sub_10002C4E4(v14, v13, &qword_10097A3B8, &qword_1007FE9C0);
    v17 = (*(v15 + 48))(v13, 1, v16);
    v18 = v1[34];
    if (v17 == 1)
    {
      break;
    }

    v20 = v1[29];
    v19 = v1[30];
    v21 = v1[26];
    v22 = v1[27];
    v1[39] = *v18;
    (*(v22 + 32))(v20, &v18[*(v19 + 48)], v21);
    URL.scheme.getter();
    if (v23)
    {
      v24 = String.lowercased()();

      if (v24._countAndFlagsBits == 1886680168 && v24._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v24._countAndFlagsBits == 0x7370747468 && v24._object == 0xE500000000000000)
      {

LABEL_36:
        v61 = v1[29];
        v62 = objc_opt_self();
        URL._bridgeToObjectiveC()(v63);
        v65 = v64;
        v1[40] = v64;
        v1[2] = v1;
        v1[7] = v1 + 18;
        v1[3] = sub_1003E0680;
        v66 = swift_continuation_init();
        v1[17] = sub_10028088C(&qword_10097B730, &qword_1007FEB90);
        v1[10] = _NSConcreteStackBlock;
        v1[11] = 1107296256;
        v1[12] = sub_1003E1858;
        v1[13] = &unk_1008DEA00;
        v1[14] = v66;
        [v62 getAppLinksWithURL:v65 completionHandler:v1 + 10];
        a1 = v1 + 2;

        return _swift_continuation_await(a1);
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_36;
      }
    }

    v26 = objc_opt_self();
    a1 = [v26 defaultWorkspace];
    if (!a1)
    {
      goto LABEL_47;
    }

    v28 = a1;
    v29 = v1[29];
    URL._bridgeToObjectiveC()(v27);
    v31 = v30;
    v32 = [v28 URLOverrideForURL:v30];

    if (v32)
    {
      v33 = v1[24];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v36 = v1[24];
    v35 = v1[25];
    (*(v1[27] + 56))(v36, v34, 1, v1[26]);
    sub_10002C4E4(v36, v35, &unk_100974E00, &qword_1007F8940);
    a1 = [v26 defaultWorkspace];
    if (!a1)
    {
      goto LABEL_48;
    }

    v37 = a1;
    v38 = v1[26];
    v39 = v1[27];
    v40 = v1[23];
    sub_100333278(v1[25], v40);
    if ((*(v39 + 48))(v40, 1, v38) == 1)
    {
      v42 = 0;
    }

    else
    {
      v44 = v1[26];
      v43 = v1[27];
      v45 = v1[23];
      URL._bridgeToObjectiveC()(v41);
      v42 = v46;
      (*(v43 + 8))(v45, v44);
    }

    v47 = [v37 applicationsAvailableForOpeningURL:v42];

    if (!v47)
    {
      goto LABEL_46;
    }

    sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v48 >> 62)
    {
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (!a1)
      {
LABEL_31:
        sub_100005508(v1[25], &unk_100974E00, &qword_1007F8940);

        v2 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      a1 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_31;
      }
    }

    if ((v48 & 0xC000000000000001) != 0)
    {
      v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v49 = *(v48 + 32);
    }

    v50 = v49;
    v51 = v1[25];

    v52 = [v50 correspondingApplicationRecord];

    a1 = sub_100005508(v51, &unk_100974E00, &qword_1007F8940);
    v2 = v52;
LABEL_32:
    v53 = v1[39];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return _swift_continuation_await(a1);
    }

    v56 = v1[29];
    v58 = v1[26];
    v57 = v1[27];
    v59 = v1[20];
    v60 = v1[21];
    v76 = v55 / (v1[36] + 1);
    v59(&v76);
    a1 = (*(v57 + 8))(v56, v58);
    v3 = v1[38];
  }

  v67 = v1[32];
  v68 = v1[33];
  v70 = v1[28];
  v69 = v1[29];
  v72 = v1[24];
  v71 = v1[25];
  v73 = v1[23];
  *v1[19] = v2;

  v74 = v1[1];

  return v74();
}

uint64_t sub_1003E0680()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  v4 = *(v1 + 280);
  if (v3)
  {
    v5 = sub_1003E0F10;
  }

  else
  {
    v5 = sub_1003E07A0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003E07A0()
{
  v85 = v0;
  v1 = *(v0 + 144);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v83 = v0 + 144;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = *(v0 + 296);

    v6 = 0;
    goto LABEL_9;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  v83 = v0 + 144;
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v1 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v4 = i;
      v5 = *(v0 + 296);

      v6 = [v4 targetApplicationRecord];

LABEL_9:
      v8 = *(v0 + 312);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        break;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      ;
    }

    while (1)
    {
      v12 = *(v0 + 232);
      v14 = *(v0 + 208);
      v13 = *(v0 + 216);
      v15 = *(v0 + 160);
      v16 = *(v0 + 168);
      v84 = v10 / (*(v0 + 288) + 1);
      v15(&v84);
      (*(v13 + 8))(v12, v14);
      v17 = *(v0 + 304);
      *(v0 + 296) = v6;
      v18 = *(v0 + 288);
      if (v17 == v18)
      {
        v19 = 1;
      }

      else
      {
        if (v17 >= v18)
        {
          goto LABEL_53;
        }

        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_54;
        }

        v22 = *(v0 + 256);
        v21 = *(v0 + 264);
        v23 = *(v0 + 208);
        v24 = *(v0 + 216);
        v25 = *(v24 + 16);
        v26 = *(v0 + 176) + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v17;
        v27 = *(*(v0 + 240) + 48);
        *v22 = v17;
        v25(v22 + v27, v26, v23);
        sub_10002C4E4(v22, v21, &qword_10097A3B0, &unk_1007FD5B0);
        v19 = 0;
        v17 = v20;
      }

      *(v0 + 304) = v17;
      v29 = *(v0 + 264);
      v28 = *(v0 + 272);
      v31 = *(v0 + 240);
      v30 = *(v0 + 248);
      (*(v30 + 56))(v29, v19, 1, v31);
      sub_10002C4E4(v29, v28, &qword_10097A3B8, &qword_1007FE9C0);
      v32 = (*(v30 + 48))(v28, 1, v31);
      v33 = *(v0 + 272);
      if (v32 == 1)
      {
        v75 = *(v0 + 256);
        v74 = *(v0 + 264);
        v77 = *(v0 + 224);
        v76 = *(v0 + 232);
        v79 = *(v0 + 192);
        v78 = *(v0 + 200);
        v80 = *(v0 + 184);
        **(v0 + 152) = v6;

        v81 = *(v0 + 8);

        return v81();
      }

      v35 = *(v0 + 232);
      v34 = *(v0 + 240);
      v36 = *(v0 + 208);
      v37 = *(v0 + 216);
      *(v0 + 312) = *v33;
      (*(v37 + 32))(v35, &v33[*(v34 + 48)], v36);
      URL.scheme.getter();
      if (v38)
      {
        v39 = String.lowercased()();

        if (v39._countAndFlagsBits == 1886680168 && v39._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v39._countAndFlagsBits == 0x7370747468 && v39._object == 0xE500000000000000)
        {

LABEL_45:
          v68 = *(v0 + 232);
          v69 = objc_opt_self();
          URL._bridgeToObjectiveC()(v70);
          v72 = v71;
          *(v0 + 320) = v71;
          *(v0 + 16) = v0;
          *(v0 + 56) = v83;
          *(v0 + 24) = sub_1003E0680;
          v73 = swift_continuation_init();
          *(v0 + 136) = sub_10028088C(&qword_10097B730, &qword_1007FEB90);
          *(v0 + 80) = _NSConcreteStackBlock;
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_1003E1858;
          *(v0 + 104) = &unk_1008DEA00;
          *(v0 + 112) = v73;
          [v69 getAppLinksWithURL:v72 completionHandler:v0 + 80];
          v2 = (v0 + 16);

          return _swift_continuation_await(v2);
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v40)
        {
          goto LABEL_45;
        }
      }

      v41 = objc_opt_self();
      v2 = [v41 defaultWorkspace];
      if (!v2)
      {
        goto LABEL_57;
      }

      v43 = v2;
      v44 = *(v0 + 232);
      URL._bridgeToObjectiveC()(v42);
      v46 = v45;
      v47 = [v43 URLOverrideForURL:v45];

      if (v47)
      {
        v48 = *(v0 + 192);
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = 0;
      }

      else
      {
        v49 = 1;
      }

      v51 = *(v0 + 192);
      v50 = *(v0 + 200);
      (*(*(v0 + 216) + 56))(v51, v49, 1, *(v0 + 208));
      sub_10002C4E4(v51, v50, &unk_100974E00, &qword_1007F8940);
      v2 = [v41 defaultWorkspace];
      if (!v2)
      {
        goto LABEL_58;
      }

      v52 = v2;
      v53 = *(v0 + 208);
      v54 = *(v0 + 216);
      v55 = *(v0 + 184);
      sub_100333278(*(v0 + 200), v55);
      if ((*(v54 + 48))(v55, 1, v53) == 1)
      {
        v57 = 0;
      }

      else
      {
        v59 = *(v0 + 208);
        v58 = *(v0 + 216);
        v60 = *(v0 + 184);
        URL._bridgeToObjectiveC()(v56);
        v57 = v61;
        (*(v58 + 8))(v60, v59);
      }

      v62 = [v52 applicationsAvailableForOpeningURL:v57];

      if (!v62)
      {
        goto LABEL_59;
      }

      sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
      v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v63 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_11:
          sub_100005508(*(v0 + 200), &unk_100974E00, &qword_1007F8940);

          v6 = 0;
          goto LABEL_12;
        }
      }

      else if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      if ((v63 & 0xC000000000000001) != 0)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v64 = *(v63 + 32);
      }

      v65 = v64;
      v66 = *(v0 + 200);

      v67 = [v65 correspondingApplicationRecord];

      sub_100005508(v66, &unk_100974E00, &qword_1007F8940);
      v6 = v67;
LABEL_12:
      v11 = *(v0 + 312);
      v9 = __OFADD__(v11, 1);
      v10 = v11 + 1;
      if (v9)
      {
        goto LABEL_51;
      }
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return _swift_continuation_await(v2);
}

uint64_t sub_1003E0F10()
{
  v106 = v0;
  v1 = v0[40];
  v2 = v0[41];
  swift_willThrow();

  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 code];

  if (v4 != -10814)
  {
    if (qword_1009737C0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_53;
  }

  v5 = v0[41];

  while (1)
  {
    v26 = v0[39];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
      break;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
LABEL_4:
    v6 = v0[41];
    v7 = v0[28];
    v8 = v0[29];
    v9 = v0[26];
    v10 = v0[27];
    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097B630);
    (*(v10 + 16))(v7, v8, v9);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[41];
    v16 = v0[28];
    v17 = v0[26];
    v18 = (v0[27] + 8);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105[0] = v104;
      *v19 = 136315394;
      sub_1003E1B3C(&qword_100975160, &type metadata accessor for URL);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*v18)(v16, v17);
      v23 = sub_10000C4E4(v20, v22, v105);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v24;
      *v103 = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to generate app link for %s (%@)", v19, 0x16u);
      sub_100005508(v103, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v104);
    }

    else
    {
      v25 = v0[41];

      (*v18)(v16, v17);
    }
  }

  v29 = v0[37];
  while (1)
  {
    v31 = v0[29];
    v33 = v0[26];
    v32 = v0[27];
    v34 = v0[20];
    v35 = v0[21];
    *v105 = v28 / (v0[36] + 1);
    v34(v105);
    (*(v32 + 8))(v31, v33);
    v36 = v0[38];
    v0[37] = v29;
    v37 = v0[36];
    if (v36 == v37)
    {
      v38 = 1;
    }

    else
    {
      if (v36 >= v37)
      {
        goto LABEL_51;
      }

      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_52;
      }

      v41 = v0[32];
      v40 = v0[33];
      v42 = v0[26];
      v43 = v0[27];
      v44 = *(v43 + 16);
      v45 = v0[22] + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v36;
      v46 = *(v0[30] + 48);
      *v41 = v36;
      v44(v41 + v46, v45, v42);
      sub_10002C4E4(v41, v40, &qword_10097A3B0, &unk_1007FD5B0);
      v38 = 0;
      v36 = v39;
    }

    v0[38] = v36;
    v48 = v0[33];
    v47 = v0[34];
    v50 = v0[30];
    v49 = v0[31];
    (*(v49 + 56))(v48, v38, 1, v50);
    sub_10002C4E4(v48, v47, &qword_10097A3B8, &qword_1007FE9C0);
    v51 = (*(v49 + 48))(v47, 1, v50);
    v52 = v0[34];
    if (v51 == 1)
    {
      break;
    }

    v54 = v0[29];
    v53 = v0[30];
    v55 = v0[26];
    v56 = v0[27];
    v0[39] = *v52;
    (*(v56 + 32))(v54, &v52[*(v53 + 48)], v55);
    URL.scheme.getter();
    if (v57)
    {
      v58 = String.lowercased()();

      if (v58._countAndFlagsBits == 1886680168 && v58._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v58._countAndFlagsBits == 0x7370747468 && v58._object == 0xE500000000000000)
      {

LABEL_43:
        v88 = v0[29];
        v89 = objc_opt_self();
        URL._bridgeToObjectiveC()(v90);
        v92 = v91;
        v0[40] = v91;
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_1003E0680;
        v93 = swift_continuation_init();
        v0[17] = sub_10028088C(&qword_10097B730, &qword_1007FEB90);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_1003E1858;
        v0[13] = &unk_1008DEA00;
        v0[14] = v93;
        [v89 getAppLinksWithURL:v92 completionHandler:v0 + 10];
        v61 = v0 + 2;

        return _swift_continuation_await(v61);
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v59)
      {
        goto LABEL_43;
      }
    }

    v60 = objc_opt_self();
    v61 = [v60 defaultWorkspace];
    if (!v61)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return _swift_continuation_await(v61);
    }

    v63 = v61;
    v64 = v0[29];
    URL._bridgeToObjectiveC()(v62);
    v66 = v65;
    v67 = [v63 URLOverrideForURL:v65];

    if (v67)
    {
      v68 = v0[24];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = 0;
    }

    else
    {
      v69 = 1;
    }

    v71 = v0[24];
    v70 = v0[25];
    (*(v0[27] + 56))(v71, v69, 1, v0[26]);
    sub_10002C4E4(v71, v70, &unk_100974E00, &qword_1007F8940);
    v61 = [v60 defaultWorkspace];
    if (!v61)
    {
      goto LABEL_55;
    }

    v72 = v61;
    v73 = v0[26];
    v74 = v0[27];
    v75 = v0[23];
    sub_100333278(v0[25], v75);
    if ((*(v74 + 48))(v75, 1, v73) == 1)
    {
      v77 = 0;
    }

    else
    {
      v79 = v0[26];
      v78 = v0[27];
      v80 = v0[23];
      URL._bridgeToObjectiveC()(v76);
      v77 = v81;
      (*(v78 + 8))(v80, v79);
    }

    v82 = [v72 applicationsAvailableForOpeningURL:v77];

    if (!v82)
    {
      goto LABEL_56;
    }

    sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
    v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v83 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        sub_100005508(v0[25], &unk_100974E00, &qword_1007F8940);

        v29 = 0;
        goto LABEL_10;
      }
    }

    else if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    if ((v83 & 0xC000000000000001) != 0)
    {
      v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v84 = *(v83 + 32);
    }

    v85 = v84;
    v86 = v0[25];

    v87 = [v85 correspondingApplicationRecord];

    sub_100005508(v86, &unk_100974E00, &qword_1007F8940);
    v29 = v87;
LABEL_10:
    v30 = v0[39];
    v27 = __OFADD__(v30, 1);
    v28 = v30 + 1;
    if (v27)
    {
      goto LABEL_49;
    }
  }

  v94 = v0[32];
  v95 = v0[33];
  v97 = v0[28];
  v96 = v0[29];
  v99 = v0[24];
  v98 = v0[25];
  v100 = v0[23];
  *v0[19] = v29;

  v101 = v0[1];

  return v101();
}

uint64_t sub_1003E1858(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000276B4(0, &qword_10097B738, LSAppLink_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1003E196C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerGenericLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1003E19A4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1003DED60(a1);
}

uint64_t sub_1003E1A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C00;

  return sub_1003DFDC4(a1, a2, a3, v8);
}

uint64_t sub_1003E1B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003E1B84()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B740);
  v1 = sub_10000C4AC(v0, qword_10097B740);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1003E1C4C()
{
  v0 = objc_allocWithZone(_s10LTKManagerCMa());
  result = sub_1003E1C88(0, 0);
  qword_1009A0B08 = result;
  return result;
}

char *sub_1003E1C88(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v76 - v12;
  v14 = __chkstk_darwin(v11);
  v84 = &v76 - v15;
  v16 = __chkstk_darwin(v14);
  v83 = &v76 - v17;
  v18 = __chkstk_darwin(v16);
  v82 = &v76 - v19;
  __chkstk_darwin(v18);
  v81 = &v76 - v20;
  v21 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_lockStateMonitor;
  v22 = type metadata accessor for SFLockStateMonitor();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *&v2[v21] = SFLockStateMonitor.init()();
  v25 = v2;
  v26 = IDSCopyLocalDeviceUniqueID();
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v30 = 0x800000010078EC00;
    v28 = 0xD000000000000014;
  }

  v31 = &v25[OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localDeviceID];
  *v31 = v28;
  v31[1] = v30;
  if (a2)
  {
    v85 = a1;
    v86 = a2;
    swift_bridgeObjectRetain_n();
    v32._countAndFlagsBits = 0x6B746C6C2DLL;
    v32._object = 0xE500000000000000;
    String.append(_:)(v32);
    v33 = v86;
    v34 = &v25[OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKBasename];
    *v34 = v85;
    *(v34 + 1) = v33;
    v85 = a1;
    v86 = a2;
    v35._countAndFlagsBits = 0x6C6E556F7475412DLL;
    v35._object = 0xEB000000006B636FLL;
    String.append(_:)(v35);
  }

  else
  {
    v36 = &v25[OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKBasename];
    *v36 = 1802792044;
    *(v36 + 1) = 0xE400000000000000;
  }

  v80 = v25;
  result = sub_1001F149C();
  if (result)
  {
    v38 = result;

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    v39 = v82;
    URL.appendingPathComponent(_:isDirectory:)();

    v40 = v83;
    URL.appendingPathComponent(_:isDirectory:)();
    v41 = v84;
    URL.appendingPathComponent(_:isDirectory:)();
    URL.appendingPathComponent(_:isDirectory:)();
    sub_1003E2D44(v39);
    sub_1003E2D44(v40);
    sub_1003E2D44(v41);
    sub_1003E2D44(v13);
    sub_10028088C(&qword_10097B7A0, &qword_1007FEBD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F8830;
    *(inited + 32) = 0;
    v78 = v6;
    v43 = *(v6 + 16);
    v43(v10, v40, v5);
    v44 = _s13LTKCollectionCMa();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    *(inited + 40) = sub_1004F4CA4(0, v10);
    *(inited + 48) = 1;
    v43(v10, v41, v5);
    v47 = *(v44 + 48);
    v48 = *(v44 + 52);
    swift_allocObject();
    *(inited + 56) = sub_1004F4CA4(1, v10);
    *(inited + 64) = 2;
    v77 = v13;
    v79 = v5;
    v43(v10, v13, v5);
    v49 = *(v44 + 48);
    v50 = *(v44 + 52);
    swift_allocObject();
    *(inited + 72) = sub_1004F4CA4(2, v10);
    v51 = sub_100280758(inited);
    swift_setDeallocating();
    sub_10028088C(&qword_10097B7A8, &qword_1007FEBD8);
    swift_arrayDestroy();
    v52 = 1 << *(v51 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & v51[8];
    v55 = (v52 + 63) >> 6;

    for (i = 0; v54; result = )
    {
      v57 = i;
LABEL_16:
      v58 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v59 = *(v51[7] + ((v57 << 9) | (8 * v58)));
      v60 = swift_allocObject();
      *(v60 + 16) = v51;
      v61 = (v59 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock);
      v62 = *(v59 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock);
      v63 = *(v59 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock + 8);
      *v61 = sub_1003E31FC;
      v61[1] = v60;

      sub_100015D04(v62);
      v64 = swift_allocObject();
      *(v64 + 16) = v51;
      v65 = (v59 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock);
      v66 = *(v59 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock);
      v67 = *(v59 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock + 8);
      *v65 = sub_1003E3204;
      v65[1] = v64;

      sub_100015D04(v66);
    }

    while (1)
    {
      v57 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v57 >= v55)
      {

        v68 = v80;
        *&v80[OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass] = v51;
        v69 = _s10LTKManagerCMa();
        v87.receiver = v68;
        v87.super_class = v69;
        v70 = objc_msgSendSuper2(&v87, "init");
        v71 = *&v70[OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_lockStateMonitor];
        sub_1003E320C(&qword_10097B7B0, v72, _s10LTKManagerCMa);
        v73 = v70;

        dispatch thunk of SFLockStateMonitor.delegate.setter();

        v74 = v79;
        v75 = *(v78 + 8);
        v75(v77, v79);
        v75(v84, v74);
        v75(v83, v74);
        v75(v82, v74);
        v75(v81, v74);
        return v73;
      }

      v54 = v51[v57 + 8];
      ++i;
      if (v54)
      {
        i = v57;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E23B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a2;
  v32 = a5;
  v8 = type metadata accessor for UTType();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL.DirectoryHint();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + 16) && (v31 = v19, v22 = sub_10000DA98(a3), v19 = v31, (v23 & 1) != 0))
  {
    v24 = *(*(a4 + 56) + 8 * v22);
    v33 = a1;
    v34 = v29;
    (*(v13 + 104))(v16, enum case for URL.DirectoryHint.notDirectory(_:), v12);
    sub_10001229C();

    URL.appending<A>(path:directoryHint:)();
    (*(v13 + 8))(v16, v12);
    static UTType.propertyList.getter();
    v25 = v32;
    URL.appendingPathExtension(for:)();

    (*(v30 + 8))(v11, v8);
    (*(v31 + 8))(v21, v17);
    return (*(v31 + 56))(v25, 0, 1, v17);
  }

  else
  {
    v27 = *(v19 + 56);
    v28 = v32;

    return v27(v28, 1, 1, v17);
  }
}

uint64_t sub_1003E26E4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10000DA98(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (!*(*(*(a2 + 56) + 8 * v3) + 16))
  {
    return 0x20000000;
  }

  if (*(*(*(a2 + 56) + 8 * v3) + 16) == 1)
  {
    return 0x40000000;
  }

  return 0x10000000;
}

void sub_1003E2768()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedMonitor];
  if (v2)
  {
    v3 = v2;
    if ([v2 deviceKeyBagUnlocked])
    {
      v4 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
      if (!*(v4 + 16))
      {
        goto LABEL_23;
      }

      v5 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
      v6 = sub_10000DA98(0);
      if (v7)
      {
        v8 = *(*(*(v4 + 56) + 8 * v6) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
        __chkstk_darwin(v6);

        os_unfair_lock_lock(v8 + 4);
        sub_1003E32FC(&v25);
        os_unfair_lock_unlock(v8 + 4);
        if (v25 == 1)
        {
          sub_100014D7C();
        }
      }

      if (!*(v4 + 16))
      {
        goto LABEL_23;
      }

      v9 = sub_10000DA98(1u);
      if ((v10 & 1) == 0)
      {
        goto LABEL_23;
      }

      v11 = *(*(*(v4 + 56) + 8 * v9) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
      __chkstk_darwin(v9);

      os_unfair_lock_lock(v11 + 4);
      sub_1003E32FC(&v26);
      os_unfair_lock_unlock(v11 + 4);
      v12 = v26;
    }

    else
    {
      if (![v3 deviceWasUnlockedOnce] || (v17 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass), !*(v17 + 16)) || (v18 = sub_10000DA98(1u), (v19 & 1) == 0))
      {
LABEL_23:

        goto LABEL_24;
      }

      v20 = *(*(*(v17 + 56) + 8 * v18) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
      __chkstk_darwin(v18);

      os_unfair_lock_lock(v20 + 4);
      sub_1003E32FC(v27);
      os_unfair_lock_unlock(v20 + 4);
      v12 = v27[0];
    }

    if (v12 == 1)
    {
      sub_100014D7C();
    }

    goto LABEL_23;
  }

  if (qword_1009737C8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097B740);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to get SDStatusMonitor to check lock state, only class D local LTKs will be loaded", v16, 2u);
  }

LABEL_24:
  v21 = *(v1 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
  if (*(v21 + 16))
  {
    v22 = sub_10000DA98(2u);
    if (v23)
    {
      v24 = *(*(*(v21 + 56) + 8 * v22) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
      __chkstk_darwin(v22);

      os_unfair_lock_lock(v24 + 4);
      sub_1003E32FC(&v28);
      os_unfair_lock_unlock(v24 + 4);
      if (v28 == 1)
      {
        sub_100014D7C();
      }
    }
  }
}

id sub_1003E2B78()
{
  v2.receiver = v0;
  v2.super_class = _s10LTKManagerCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1003E2D00@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1003E2D44(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v33 directoryExistsAtPath:v7];

  if (v8)
  {
    v9 = v33;
  }

  else
  {
    if (qword_1009737C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    v11 = sub_10000C4AC(v10, qword_10097B740);
    (*(v3 + 16))(v6, a1, v2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32[1] = v11;
      v16 = v15;
      v34 = v15;
      *v14 = 136315138;
      sub_1003E320C(&qword_100975160, 255, &type metadata accessor for URL);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v3 + 8))(v6, v2);
      v20 = sub_10000C4E4(v17, v19, &v34);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Create LTK directory: %s", v14, 0xCu);
      sub_10000C60C(v16);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v34 = 0;
    v24 = [v33 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v34];

    if (v24)
    {
      v25 = v34;
    }

    else
    {
      v26 = v34;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "Create LTK directory failed: %@", v29, 0xCu);
        sub_10028924C(v30);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1003E320C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1003E3254@<X0>(void *a1@<X8>)
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

unint64_t sub_1003E3298()
{
  result = qword_10097B7C0;
  if (!qword_10097B7C0)
  {
    sub_100280938(&qword_10097B7B8, &qword_1007FEBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B7C0);
  }

  return result;
}

uint64_t sub_1003E3364(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_1003E33FC(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(a1 + 16);

    v8 = _swiftEmptyArrayStorage;
    v9 = 32;
    do
    {
      v10 = *(v5 + v9);
      if (v10 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10028E848(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_10028E848((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v8[v12 + 32] = v10 & 1;
      }

      ++v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  a3(v8);
}

uint64_t sub_1003E3530()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B7C8);
  v1 = sub_10000C4AC(v0, qword_10097B7C8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E35F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003E3698, v6, 0);
}

uint64_t sub_1003E3698()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1003E5C78(&qword_100977C00, type metadata accessor for AirDropActor);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1003E37D0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, v1, v3, 0x496C6C6174736E69, 0xEF293A5F28734150, sub_1003E5B04, v4, &type metadata for Bool);
}

uint64_t sub_1003E37D0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_1003E38FC, v3, 0);
}

uint64_t sub_1003E3920(uint64_t a1, uint64_t a2)
{
  v107 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v3 - 8);
  v4 = *(v86 + 64);
  __chkstk_darwin(v3);
  v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v83 = *(v85 - 8);
  v6 = *(v83 + 64);
  __chkstk_darwin(v85);
  v82 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for URL();
  v8 = *(v103 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v103);
  v94 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v11;
  __chkstk_darwin(v10);
  v93 = &v78 - v12;
  v13 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v105 = *(v13 - 8);
  v14 = *(v105 + 8);
  __chkstk_darwin(v13);
  v87 = (&v78 - v15);
  v16 = sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v78 - v21;
  v23 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v78 - v26;
  v88 = a2;
  v28 = *(a2 + 16);
  if (!v28)
  {
    if (qword_1009737D8 == -1)
    {
LABEL_11:
      v74 = type metadata accessor for Logger();
      sub_10000C4AC(v74, qword_10097B7C8);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "No completedURLs to install", v77, 2u);
      }

      LOBYTE(aBlock) = 0;
      return CheckedContinuation.resume(returning:)();
    }

LABEL_16:
    swift_once();
    goto LABEL_11;
  }

  v101 = v22;
  v81 = v3;
  sub_1002DDC10();
  v80 = static OS_dispatch_queue.main.getter();
  (*(v24 + 16))(v27, v107, v23);
  v29 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v30 = swift_allocObject();
  v31 = *(v24 + 32);
  v79 = v30;
  v31(v30 + v29, v27, v23);
  v100 = dispatch_group_create();
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  sub_10028088C(&qword_10097A3C0, &qword_1007FD5D0);
  v32 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v32 + 16) = v28;
  memset((v32 + 32), 2, v28);
  v33 = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v32;
  v102 = v8 + 16;
  v96 = (v105 + 56);
  v95 = (v105 + 48);
  v107 = v8 + 32;
  v91 = v106 + 7;
  v90 = &v111;
  v89 = v8 + 8;
  v97 = v28;
  v92 = v13;
  v34 = v28 == 0;
LABEL_3:
  if (v34)
  {
    __break(1u);
    goto LABEL_15;
  }

  v35 = v101;
  if (__OFADD__(v33, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v36 = v88 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v33;
  v37 = *(v13 + 48);
  v38 = v87;
  *v87 = v33;
  (*(v8 + 16))(v38 + v37, v36, v103);
  sub_10002C4E4(v38, v20, &qword_10097A3B0, &unk_1007FD5B0);
  v39 = 0;
  v40 = v33 + 1;
  while (1)
  {
    (*v96)(v20, v39, 1, v13);
    sub_10002C4E4(v20, v35, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*v95)(v35, 1, v13) == 1)
    {
      break;
    }

    v41 = *v35;
    v42 = *(v13 + 48);
    v104 = *(v8 + 32);
    v106 = v40;
    v43 = v93;
    v44 = v103;
    v104(v93, v35 + v42, v103);
    v45 = v100;
    dispatch_group_enter(v100);
    v46 = swift_allocObject();
    v47 = v98;
    v46[2] = v99;
    v46[3] = v47;
    v46[4] = v41;
    v46[5] = v45;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_100358C08;
    *(v48 + 24) = v46;
    v105 = objc_opt_self();

    v49 = v45;
    URL._bridgeToObjectiveC()(v50);
    v52 = v51;
    v53 = v20;
    v54 = v94;
    (*(v8 + 16))(v94, v43, v44);
    v55 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v56 = v8;
    v57 = (v91 + v55) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v59 = v54;
    v20 = v53;
    v104((v58 + v55), v59, v44);
    v60 = (v58 + v57);
    v8 = v56;
    *v60 = sub_1003E5B88;
    v60[1] = v48;
    v113 = sub_1003E5BC0;
    v114 = v58;
    aBlock = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = sub_1003E3364;
    v112 = &unk_1008DEC30;
    v61 = _Block_copy(&aBlock);

    [v105 installApplication:v52 options:0 completion:v61];
    _Block_release(v61);

    v62 = v43;
    v33 = v106;
    v63 = v44;
    v13 = v92;
    (*(v56 + 8))(v62, v63);
    v34 = v33 >= v97;
    if (v33 != v97)
    {
      goto LABEL_3;
    }

    v39 = 1;
    v40 = v97;
    v35 = v101;
  }

  v64 = swift_allocObject();
  v65 = v97;
  v64[2] = v98;
  v64[3] = v65;
  v66 = v79;
  v64[4] = sub_1003E5B0C;
  v64[5] = v66;
  v113 = sub_100358BFC;
  v114 = v64;
  aBlock = _NSConcreteStackBlock;
  v110 = 1107296256;
  v111 = sub_100011678;
  v112 = &unk_1008DEB90;
  v67 = _Block_copy(&aBlock);

  v68 = v82;
  static DispatchQoS.unspecified.getter();
  v108 = _swiftEmptyArrayStorage;
  sub_1003E5C78(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  v69 = v84;
  v70 = v81;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v71 = v80;
  v72 = v100;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v67);

  (*(v86 + 8))(v69, v70);
  (*(v83 + 8))(v68, v85);
}

uint64_t sub_1003E4418(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
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
    if (qword_1009737D8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097B7C8);
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
    if (qword_1009737D8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000C4AC(v43, qword_10097B7C8);
    (*(v11 + 16))(v18, a4, v10);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v46 = 136315138;
      sub_1003E5C78(&qword_100975160, &type metadata accessor for URL);
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

  if (qword_1009737D8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000C4AC(v33, qword_10097B7C8);
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

uint64_t sub_1003E4A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  do
  {
    if (!v1)
    {
      break;
    }

    v3 = *v2++;
    --v1;
  }

  while ((v3 & 1) != 0);
  sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1003E4B28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerIPA();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1003E4B5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1003E51F4(a1);
}

uint64_t sub_1003E4C08(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_1003E4CE8(char *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v7 = *a1;
  os_unfair_lock_lock(a2 + 4);
  sub_1003E5CE0();
  os_unfair_lock_unlock(a2 + 4);
  dispatch_group_leave(a5);
}

uint64_t sub_1003E4D70(uint64_t *a1, unint64_t a2, char *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1002D64D0(v6);
  v6 = result;
  *a1 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v6 + 16) > a2)
  {
    *(v6 + a2 + 32) = v5;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1003E4E18(uint64_t a1, char a2)
{
  v3 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v11 == 1)
  {
    v12 = SFAirDropReceive.AskRequest.files.getter();
    if (*(v12 + 16))
    {
      (*(v4 + 16))(v8, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

      (*(v4 + 32))(v10, v8, v3);
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      inited = swift_initStackObject();
      v26 = xmmword_1007F5670;
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = 0x485449575F415049;
      v14 = inited + 32;
      *(inited + 40) = 0xEE00454C5449545FLL;
      *(inited + 48) = 1;
      sub_1003D8D18(inited, a2 & 1);
      swift_setDeallocating();
      sub_1003470A0(v14);
      v15 = String._bridgeToObjectiveC()();
      v16 = SFLocalizedStringForKey();

      if (v16)
      {

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v17 = swift_allocObject();
        *(v17 + 16) = v26;
        v18 = SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
        v20 = v19;
        *(v17 + 56) = &type metadata for String;
        *(v17 + 64) = sub_100026764();
        *(v17 + 32) = v18;
        *(v17 + 40) = v20;
        static String.localizedStringWithFormat(_:_:)();

        (*(v4 + 8))(v10, v3);
        return;
      }

      goto LABEL_9;
    }
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v21 = swift_initStackObject();
  v26 = xmmword_1007F5670;
  *(v21 + 16) = xmmword_1007F5670;
  *(v21 + 32) = 4280393;
  v22 = v21 + 32;
  *(v21 + 40) = 0xE300000000000000;
  *(v21 + 48) = v11;
  sub_1003D8D18(v21, a2 & 1);
  swift_setDeallocating();
  sub_1003470A0(v22);
  v23 = String._bridgeToObjectiveC()();
  v24 = SFLocalizedStringForKey();

  if (v24)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v25 = swift_allocObject();
    *(v25 + 16) = v26;
    *(v25 + 56) = &type metadata for Int;
    *(v25 + 64) = &protocol witness table for Int;
    *(v25 + 32) = v11;
    static String.localizedStringWithFormat(_:_:)();

    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_1003E51F4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v1[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003E52F0, v5, 0);
}

uint64_t sub_1003E52F0()
{
  *(v0 + 56) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E5394, v2, v1);
}

uint64_t sub_1003E5394()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  *(v0 + 72) = [v2 isRunningInStoreDemoMode];

  return _swift_task_switch(sub_1003E5414, v3, 0);
}

id sub_1003E5414()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result isAirDropAppInstallationAllowed];

    if (v10)
    {
      v11 = *(v0 + 16);
      v12 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

      if (v12 && (v13 = *(v0 + 16), v14 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16), , !v14))
      {
        v17 = *(v0 + 16);
        v18 = SFAirDropReceive.AskRequest.files.getter();
        v19 = v18;
        v20 = *(v18 + 16);
        if (!v20)
        {
LABEL_25:
          v28 = *(v0 + 16);

          if (SFAirDropReceive.AskRequest.senderIsMe.getter())
          {
            if (qword_1009737D8 != -1)
            {
              swift_once();
            }

            v29 = type metadata accessor for Logger();
            sub_10000C4AC(v29, qword_10097B7C8);
            v2 = Logger.logObject.getter();
            v3 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v2, v3))
            {
              v6 = 1;
              goto LABEL_39;
            }

            v4 = 2;
            v5 = swift_slowAlloc();
            *v5 = 0;
            v6 = 1;
            v7 = "IPA Handler: Transfer is me, can handle.";
          }

          else
          {
            v30 = [objc_opt_self() defaultManager];
            v31 = String._bridgeToObjectiveC()();
            v6 = [v30 fileExistsAtPath:v31];

            if (qword_1009737D8 != -1)
            {
              swift_once();
            }

            v32 = type metadata accessor for Logger();
            sub_10000C4AC(v32, qword_10097B7C8);
            v2 = Logger.logObject.getter();
            v3 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v2, v3))
            {
              goto LABEL_39;
            }

            v4 = 8;
            v5 = swift_slowAlloc();
            *v5 = 67109120;
            *(v5 + 4) = v6;
            v7 = "IPA Handler: Developer settings bundle exists? %{BOOL}d";
          }

          goto LABEL_17;
        }

        v21 = 0;
        v22 = *(v0 + 32);
        v36 = v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        while (1)
        {
          if (v21 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          (*(v22 + 16))(*(v0 + 40), v36 + *(v22 + 72) * v21, *(v0 + 24));
          SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
          v23 = String._bridgeToObjectiveC()();

          v24 = [v23 pathExtension];

          if (!v24)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = String._bridgeToObjectiveC()();
          }

          v25 = *(v0 + 40);
          v26 = *(v0 + 24);
          v27 = SFIsIPA();

          (*(v22 + 8))(v25, v26);
          if ((v27 & 1) == 0)
          {
            break;
          }

          if (v20 == ++v21)
          {
            goto LABEL_25;
          }
        }

        if (qword_1009737D8 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000C4AC(v33, qword_10097B7C8);
        v2 = Logger.logObject.getter();
        v3 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = 2;
          v5 = swift_slowAlloc();
          v6 = 0;
          *v5 = 0;
          v7 = "IPA Handler: File is not IPA, ignoring...";
          goto LABEL_17;
        }
      }

      else
      {
        if (qword_1009737D8 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_10000C4AC(v15, qword_10097B7C8);
        v2 = Logger.logObject.getter();
        v3 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = 2;
          v5 = swift_slowAlloc();
          v6 = 0;
          *v5 = 0;
          v7 = "IPA Handler: isJustFiles is false";
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (qword_1009737D8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000C4AC(v16, qword_10097B7C8);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = 2;
        v5 = swift_slowAlloc();
        v6 = 0;
        *v5 = 0;
        v7 = "IPA Handler: AirDrop app installation not allowed";
        goto LABEL_17;
      }
    }

LABEL_38:
    v6 = 0;
    goto LABEL_39;
  }

  if (qword_1009737D8 != -1)
  {
LABEL_44:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097B7C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_38;
  }

  v4 = 2;
  v5 = swift_slowAlloc();
  v6 = 0;
  *v5 = 0;
  v7 = "IPA Handler: Device running in store demo mode";
LABEL_17:
  _os_log_impl(&_mh_execute_header, v2, v3, v7, v5, v4);

LABEL_39:
  v34 = *(v0 + 40);

  v35 = *(v0 + 8);

  return v35(v6);
}

uint64_t sub_1003E5A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005C04;

  return sub_1003E35F8(a1, a2, a3, v9, v8);
}

uint64_t sub_1003E5B0C(uint64_t a1)
{
  v2 = *(*(sub_10028088C(&qword_10097A2B0, &qword_1007FD370) - 8) + 80);

  return sub_1003E4A94(a1);
}

uint64_t sub_1003E5B88(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1003E5BC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1003E4418(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_1003E5C78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003E5CE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1003E5D28()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B8A0);
  v1 = sub_10000C4AC(v0, qword_10097B8A0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E5DF0(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.TransferType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FB3B4(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1002F94BC(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_10029418C(v10, v15);
    SFAirDropSend.Request.type.getter();
    v16 = sub_1003E67D8(v6);
    (*(v3 + 8))(v6, v2);
    sub_1003DEB88(v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return v16;
  }

  return result;
}

uint64_t sub_1003E6060(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v18 - v13;
  if (*(v12 + 16) != 1)
  {
    return 2;
  }

  sub_1002FB3B4(v12, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_10029418C(v5, v14);
    sub_10029418C(v14, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = qword_1007FEC98[EnumCaseMultiPayload];
    sub_1003DEB88(v11, off_1008DEC58[EnumCaseMultiPayload]);
    return v16;
  }

  sub_1002F94BC(v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003E6260(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FB3B4(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1002F94BC(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_10029418C(v10, v15);
    sub_10032C154(v6);
    v16 = SFAirDrop.DeviceRelationship.rawValue.getter();
    (*(v3 + 8))(v6, v2);
    sub_1003DEB88(v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return v16;
  }

  return result;
}

uint64_t sub_1003E64C0()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDropSend.Failure();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v9, v14, v2);
    v16 = *(v3 + 104);
    v16(v7, enum case for SFAirDropSend.Failure.cancelled(_:), v2);
    v17 = static SFAirDropSend.Failure.== infix(_:_:)();
    v18 = *(v3 + 8);
    v18(v7, v2);
    if (v17)
    {
      v18(v9, v2);
      return 2;
    }

    else
    {
      v16(v7, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v2);
      v20 = static SFAirDropSend.Failure.== infix(_:_:)();
      v18(v7, v2);
      v18(v9, v2);
      if (v20)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else if (v15 == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.success(_:))
  {
    return 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E67D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = type metadata accessor for SDAirDropDiscoveredEndpoint;
  if (EnumCaseMultiPayload == 2)
  {
    (*(v5 + 16))(v8, a1, v4);
    v15 = (*(v5 + 88))(v8, v4);
    if (v15 == enum case for SFAirDrop.TransferType.exchange(_:))
    {
      v16 = 0x706F7264656D616ELL;
LABEL_8:
      (*(v5 + 8))(v8, v4);
      v14 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      goto LABEL_9;
    }

    v14 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    if (v15 != enum case for SFAirDrop.TransferType.peerPayment(_:))
    {
      v16 = 0x2D706F7264726961;
      goto LABEL_8;
    }

    v16 = 0x6D79615072656570;
  }

  else
  {
    v16 = 0x706F7264726961;
  }

LABEL_9:
  sub_1003DEB88(v12, v14);
  return v16;
}

void sub_1003E6A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v31 = a2;
  v29 = a1;
  v32 = type metadata accessor for SFAirDrop.TransferType();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SFAirDropSend.Failure();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_10097B1C8, &unk_1007FE4F0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "failureSubType");
  *(inited + 16) = xmmword_1007F8830;
  *(inited + 47) = -18;
  (*(v11 + 16))(v14, v26, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v16 + 32))(v19, v14, v15);
    SFAirDropSend.Failure.errorDescription.getter();
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  v21 = String._bridgeToObjectiveC()();

  *(inited + 48) = v21;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x800000010078E320;
  sub_10032C154(v9);
  SFAirDrop.DeviceRelationship.rawValue.getter();
  (*(v27 + 8))(v9, v28);
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  SFAirDropSend.Request.type.getter();
  sub_1003E67D8(v5);
  (*(v30 + 8))(v5, v32);
  v22 = String._bridgeToObjectiveC()();

  *(inited + 96) = v22;
  sub_1002812CC(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_10097B1D0, &qword_1007FEC90);
  swift_arrayDestroy();
  v23 = String._bridgeToObjectiveC()();
  sub_100332530();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();
}

void sub_1003E6F1C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    sub_10028088C(&qword_10097B1C8, &unk_1007FE4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F8220;
    *(inited + 32) = 0x726566736E617274;
    v25 = (inited + 32);
    *(inited + 40) = 0xEA00000000004449;
    v24[1] = a3;
    SFAirDropSend.Request.id.getter();
    SFAirDrop.TransferIdentifier.id.getter();
    (*(v11 + 8))(v14, v10);
    UUID.uuidString.getter();
    (*(v6 + 8))(v9, v5);
    v16 = String._bridgeToObjectiveC()();

    *(inited + 48) = v16;
    *(inited + 56) = 1701869940;
    *(inited + 64) = 0xE400000000000000;
    sub_1003E5DF0(a2);
    v17 = String._bridgeToObjectiveC()();

    *(inited + 72) = v17;
    *(inited + 80) = 0x6C6F636F746F7270;
    *(inited + 88) = 0xE800000000000000;
    sub_1003E6060(a2);
    *(inited + 96) = Int._bridgeToObjectiveC()();
    *(inited + 104) = 0xD000000000000010;
    *(inited + 112) = 0x800000010078E320;
    sub_1003E6260(a2);
    *(inited + 120) = Int._bridgeToObjectiveC()();
    *(inited + 128) = 0xD000000000000015;
    *(inited + 136) = 0x800000010078EE50;
    *(inited + 144) = Bool._bridgeToObjectiveC()();
    sub_1002812CC(inited);
    swift_setDeallocating();
    sub_10028088C(&qword_10097B1D0, &qword_1007FEC90);
    swift_arrayDestroy();
    v18 = String._bridgeToObjectiveC()();
    sub_100332530();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SFMetricsLog();
  }

  else
  {
    if (qword_1009737E0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097B8A0);
    v25 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v25, v21, "No send endpoints for logging send start", v22, 2u);
    }

    v23 = v25;
  }
}

uint64_t sub_1003E7360(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003E74B4, v9, 0);
}

void sub_1003E74B4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[5];
    v6 = v0[2];
    v7 = v0[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v25 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v0[6];
      v17 = v0[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v5 + 16))(v16, *(v25 + 48) + *(v5 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6EF8);
      (*(v5 + 8))(v16, v17);
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      if (!*(v7 + 16))
      {

        sub_10032B298(&unk_1008D6F18);
        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        sub_10032B298(&unk_1008D6F18);

        v21 = 1;
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:
    v22 = v0[9];
    v23 = v0[6];

    v24 = v0[1];

    v24(v21);
  }
}
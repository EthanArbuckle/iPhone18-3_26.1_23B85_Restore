uint64_t sub_100088560()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100088670, v2, 0);
}

uint64_t sub_100088670()
{
  v187 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);

  if (v1 + 1 != v2)
  {
    v31 = *(v0 + 272) + 1;
    *(v0 + 272) = v31;
    v32 = *(v0 + 240);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v32 + 8 * v31 + 32);
    }

    v56 = v33;
    *(v0 + 280) = v33;
    v57 = *(v0 + 264);
    v181 = (*(v0 + 256) + **(v0 + 256));
    v58 = *(*(v0 + 256) + 4);
    v59 = swift_task_alloc();
    *(v0 + 288) = v59;
    *v59 = v0;
    v59[1] = sub_100088560;
    v60 = *(v0 + 264);
    v61 = *(v0 + 64);

    return v181(v56);
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 56);

  v5 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  v6 = *(v5 + 16);
  if (!v6)
  {

    v55 = 0;
    v7 = 0;
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v7 = 0;
  v8 = *(v0 + 160);
  v9 = *(v8 + 16);
  v8 += 16;
  v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v173 = *(v8 + 56);
  v175 = v9;
  v172 = (v8 - 8);
  v169 = (*(v0 + 104) + 104);
  v11 = _swiftEmptyArrayStorage;
  v168 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  v12 = 0;
  v170 = *(v0 + 104);
  do
  {
    v179 = v7;
    v175(*(v0 + 176), v10, *(v0 + 152));
    v7 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v18 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v0 + 16) = v18;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 24) == 25)
    {
      if (!v179)
      {
        goto LABEL_5;
      }

      v19 = [v179 size];
      v20 = [v7 size];
      v21 = *(v0 + 96);
      v171 = v12;
      if (v19 < v20)
      {
        v22 = *(v0 + 144);
        *v22 = [v179 recordID];
        (*v169)(v22, v168, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100092358(0, v11[2] + 1, 1, v11, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v24 = v11[2];
        v23 = v11[3];
        if (v24 >= v23 >> 1)
        {
          v11 = sub_100092358(v23 > 1, v24 + 1, 1, v11, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v13 = *(v0 + 144);
        v14 = *(v0 + 96);

        v11[2] = v24 + 1;
        (*(v170 + 32))(v11 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v24, v13, v14);
        v12 = v171;
LABEL_5:
        v15 = *(v0 + 176);
        v16 = *(v0 + 152);
        v17 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();

        (*v172)(v15, v16);
        v12 = v17;
        goto LABEL_6;
      }

      v25 = *(v0 + 136);
      *v25 = [v7 recordID];
      (*v169)(v25, v168, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100092358(0, v11[2] + 1, 1, v11, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v27 = v11[2];
      v26 = v11[3];
      if (v27 >= v26 >> 1)
      {
        v11 = sub_100092358(v26 > 1, v27 + 1, 1, v11, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v28 = *(v0 + 176);
      v29 = *(v0 + 152);
      v167 = *(v0 + 136);
      v30 = *(v0 + 96);

      (*v172)(v28, v29);
      v11[2] = v27 + 1;
      (*(v170 + 32))(v11 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v27, v167, v30);
      v12 = v171;
    }

    else
    {
      (*v172)(*(v0 + 176), *(v0 + 152));
    }

    v7 = v179;
LABEL_6:
    *(v0 + 304) = v7;
    *(v0 + 312) = v11;
    v10 += v173;
    *(v0 + 296) = v12;
    --v6;
  }

  while (v6);

  if (v7)
  {
    if (v12)
    {
      v34 = qword_100129980;
      v35 = v7;
      v36 = v12;
      if (v34 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100066000(v37, qword_100129988);
      v38 = v35;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v186 = v43;
        *v41 = 138412546;
        v44 = [v38 recordID];
        *(v41 + 4) = v44;
        *v42 = v44;
        *(v41 + 12) = 2080;
        *(v0 + 48) = [v38 size];
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = sub_100065658(v45, v46, &v186);

        *(v41 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "Quota exceeded saving %@ size %s", v41, 0x16u);
        sub_100066C80(v42, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v43);
      }

      v48 = *(**(v0 + 64) + 352);
      v180 = (v48 + *v48);
      v49 = v48[1];
      v50 = swift_task_alloc();
      *(v0 + 320) = v50;
      *v50 = v0;
      v50[1] = sub_100089D8C;
      v51 = *(v0 + 64);
      v52 = v38;
      v53 = v36;
      v54 = v180;

      return v54(v52, v53);
    }

    v55 = 0;
  }

  else
  {
    v55 = v12;
  }

LABEL_39:
  *(v0 + 328) = v55;
  *(v0 + 336) = v7;
  v63 = *(v0 + 56);
  v64 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v0 + 344) = v64;
  v65 = *(v64 + 16);
  *(v0 + 352) = v65;
  if (!v65)
  {

    v68 = _swiftEmptyArrayStorage;
LABEL_81:
    *(v0 + 456) = v68;
    *(v0 + 464) = v11;
    v119 = *(v0 + 56);
    v120 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
    *(v0 + 472) = v120;
    v121 = *(v120 + 32);
    *(v0 + 599) = v121;
    v122 = -1;
    v123 = -1 << v121;
    if (-(-1 << v121) < 64)
    {
      v122 = ~(-1 << -(-1 << v121));
    }

    v124 = v122 & *(v120 + 64);
    if (!v124)
    {
      v126 = 0;
      v127 = ((63 - v123) >> 6) - 1;
      while (v127 != v126)
      {
        v125 = v126 + 1;
        v124 = *(v120 + 8 * v126++ + 72);
        if (v124)
        {
          goto LABEL_88;
        }
      }

      v149 = *(v0 + 64);

      v150 = *(*v149 + 192);
      v178 = *v149 + 192;
      *(v0 + 480) = v150;
      *(v0 + 488) = v178 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
      v183 = (v150 + *v150);
      v151 = v150[1];
      v152 = swift_task_alloc();
      *(v0 + 496) = v152;
      *v152 = v0;
      v152[1] = sub_10008DF7C;
      v153 = *(v0 + 64);

      return v183();
    }

    v125 = 0;
LABEL_88:
    *(v0 + 520) = v125;
    *(v0 + 512) = v124;
    v128 = (v125 << 9) | (8 * __clz(__rbit64(v124)));
    v129 = *(*(v120 + 48) + v128);
    *(v0 + 528) = v129;
    v130 = *(*(v120 + 56) + v128);
    *(v0 + 536) = v130;
    v131 = qword_100129980;
    v132 = v129;
    v133 = v130;
    if (v131 != -1)
    {
      swift_once();
    }

    v134 = type metadata accessor for Logger();
    sub_100066000(v134, qword_100129988);
    v135 = v132;
    v136 = v133;
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v139 = 138412546;
      *(v139 + 4) = v135;
      *v140 = v135;
      *(v139 + 12) = 2112;
      v141 = v135;
      v142 = v136;
      v143 = _swift_stdlib_bridgeErrorToNSError();
      *(v139 + 14) = v143;
      v140[1] = v143;
      _os_log_impl(&_mh_execute_header, v137, v138, "Error deleting recordID %@ error: %@", v139, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v144 = *(v0 + 64);

    v145 = *(*v144 + 312);
    v182 = (v145 + *v145);
    v146 = v145[1];
    v147 = swift_task_alloc();
    *(v0 + 544) = v147;
    *v147 = v0;
    v147[1] = sub_10008E0C4;
    v148 = *(v0 + 64);
    v52 = v135;
    v53 = v136;
    v54 = v182;

    return v54(v52, v53);
  }

  v66 = 0;
  v67 = *(v0 + 160);
  v68 = _swiftEmptyArrayStorage;
  *(v0 + 584) = *(v67 + 80);
  *(v0 + 360) = *(v67 + 72);
  *(v0 + 368) = *(v67 + 16);
  *(v0 + 588) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v0 + 592) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
  while (2)
  {
    v69 = v11;
    *(v0 + 384) = v68;
    *(v0 + 392) = v11;
    *(v0 + 376) = v66;
    v71 = *(v0 + 160);
    v70 = *(v0 + 168);
    v72 = *(v0 + 152);
    (*(v0 + 368))(v70, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v66, v72);
    v73 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    *(v0 + 400) = v73;
    v74 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v0 + 408) = v74;
    (*(v71 + 8))(v70, v72);
    *(v0 + 32) = v74;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    v75 = *(v0 + 40);
    if (v75 > 13)
    {
      if (v75 <= 22)
      {
        if (v75 == 14)
        {
          v108 = related decl 'e' for CKErrorCode.serverRecord.getter();
          *(v0 + 416) = v108;
          if (v108)
          {
            v162 = *(**(v0 + 64) + 336);
            v185 = (v162 + *v162);
            v163 = v162[1];
            v164 = v108;
            v165 = swift_task_alloc();
            *(v0 + 424) = v165;
            *v165 = v0;
            v165[1] = sub_10008AD4C;
            v166 = *(v0 + 64);
            v52 = v73;
            v53 = v164;
            v54 = v185;

            return v54(v52, v53);
          }

          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for Logger();
          sub_100066000(v109, qword_100129988);
          v110 = v74;
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            *v113 = 138412290;
            v115 = v110;
            v116 = _swift_stdlib_bridgeErrorToNSError();
            *(v113 + 4) = v116;
            *v114 = v116;
            _os_log_impl(&_mh_execute_header, v111, v112, "No server record for conflict %@", v113, 0xCu);
            sub_100066C80(v114, &qword_1001287F0, &qword_1000E6C40);

            v117 = v73;
          }

          else
          {
            v117 = v111;
            v111 = v73;
          }

          goto LABEL_42;
        }

        if (v75 != 20)
        {
          goto LABEL_102;
        }
      }

      else if (v75 != 23)
      {
        if (v75 != 25)
        {
          if (v75 != 26)
          {
            goto LABEL_102;
          }

          v176 = *(v0 + 592);
          v77 = *(v0 + 80);
          v76 = *(v0 + 88);
          v78 = *(v0 + 72);
          v79 = [v73 recordID];
          v80 = v68;
          v81 = [v79 zoneID];

          v82 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v81];
          *v76 = v82;
          (*(v77 + 104))(v76, v176, v78);
          v174 = v82;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_100092358(0, v80[2] + 1, 1, v80, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
          }

          v84 = v80[2];
          v83 = v80[3];
          if (v84 >= v83 >> 1)
          {
            v177 = sub_100092358(v83 > 1, v84 + 1, 1, v80, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
          }

          else
          {
            v177 = v80;
          }

          v85 = *(v0 + 588);
          v86 = *(v0 + 120);
          v88 = *(v0 + 96);
          v87 = *(v0 + 104);
          v90 = *(v0 + 80);
          v89 = *(v0 + 88);
          v91 = *(v0 + 72);
          *(v177 + 16) = v84 + 1;
          (*(v90 + 32))(v177 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v84, v89, v91);
          *v86 = [v73 recordID];
          (*(v87 + 104))(v86, v85, v88);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_100092358(0, v69[2] + 1, 1, v69, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v93 = v69[2];
          v92 = v69[3];
          if (v93 >= v92 >> 1)
          {
            v69 = sub_100092358(v92 > 1, v93 + 1, 1, v69, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v94 = *(v0 + 120);
          v96 = *(v0 + 96);
          v95 = *(v0 + 104);

          v11 = v69;
          v69[2] = v93 + 1;
          (*(v95 + 32))(v69 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v93, v94, v96);
          v68 = v177;
          goto LABEL_43;
        }

LABEL_42:
        v11 = v69;
LABEL_43:
        v66 = *(v0 + 376) + 1;
        if (v66 == *(v0 + 352))
        {
          v118 = *(v0 + 344);

          goto LABEL_81;
        }

        continue;
      }

      goto LABEL_66;
    }

    break;
  }

  if (v75 <= 5)
  {
    if ((v75 - 3) >= 2)
    {
      goto LABEL_102;
    }

    goto LABEL_66;
  }

  if (v75 == 6 || v75 == 9)
  {
LABEL_66:
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100066000(v97, qword_100129988);
    v98 = v74;
    v99 = v73;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 138412546;
      v104 = [v99 recordID];
      *(v102 + 4) = v104;
      *v103 = v104;
      *(v102 + 12) = 2112;
      v105 = v68;
      v106 = v98;
      v107 = _swift_stdlib_bridgeErrorToNSError();
      *(v102 + 14) = v107;
      v103[1] = v107;
      _os_log_impl(&_mh_execute_header, v100, v101, "Retryable error saving %@: %@", v102, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();

      v68 = v105;
    }

    else
    {
    }

    goto LABEL_42;
  }

  if (v75 != 11)
  {
LABEL_102:
    v158 = [v73 recordID];
    v159 = [v158 zoneID];
    *(v0 + 440) = v159;

    v160 = swift_task_alloc();
    *(v0 + 448) = v160;
    *v160 = v0;
    v160[1] = sub_10008CE84;
    v161 = *(v0 + 64);

    return sub_10007EEB0(v74, v159);
  }

  v154 = *(**(v0 + 64) + 344);
  v184 = (v154 + *v154);
  v155 = v154[1];
  v156 = swift_task_alloc();
  *(v0 + 432) = v156;
  *v156 = v0;
  v156[1] = sub_10008BDF0;
  v157 = *(v0 + 64);

  return v184(v73);
}

uint64_t sub_100089D8C()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100089E9C, v2, 0);
}

uint64_t sub_100089E9C()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 312);
  *(v0 + 328) = *(v0 + 296);
  v3 = *(v0 + 56);
  v4 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v0 + 344) = v4;
  v6 = *(v4 + 16);
  *(v0 + 352) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 160);
    v9 = _swiftEmptyArrayStorage;
    *(v0 + 584) = *(v8 + 80);
    *(v0 + 360) = *(v8 + 72);
    *(v0 + 368) = *(v8 + 16);
    *(v0 + 588) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    *(v0 + 592) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
    *&v5 = 138412290;
    v114 = v5;
    while (1)
    {
      *(v0 + 384) = v9;
      *(v0 + 392) = v2;
      *(v0 + 376) = v7;
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);
      v12 = *(v0 + 152);
      (*(v0 + 368))(v11, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v7, v12);
      v13 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      *(v0 + 400) = v13;
      v14 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      *(v0 + 408) = v14;
      (*(v10 + 8))(v11, v12);
      *(v0 + 32) = v14;
      type metadata accessor for CKError(0);
      sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      v15 = *(v0 + 40);
      if (v15 <= 13)
      {
        break;
      }

      if (v15 <= 22)
      {
        if (v15 != 14)
        {
          if (v15 != 20)
          {
            goto LABEL_62;
          }

LABEL_27:
          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          sub_100066000(v40, qword_100129988);
          v41 = v14;
          v42 = v13;
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = v2;
            v47 = swift_slowAlloc();
            *v45 = 138412546;
            v48 = [v42 recordID];
            *(v45 + 4) = v48;
            *v47 = v48;
            *(v45 + 12) = 2112;
            v49 = v41;
            v50 = _swift_stdlib_bridgeErrorToNSError();
            *(v45 + 14) = v50;
            v47[1] = v50;
            _os_log_impl(&_mh_execute_header, v43, v44, "Retryable error saving %@: %@", v45, 0x16u);
            sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
            swift_arrayDestroy();
            v2 = v46;
          }

          else
          {
          }

          goto LABEL_4;
        }

        v51 = related decl 'e' for CKErrorCode.serverRecord.getter();
        *(v0 + 416) = v51;
        if (v51)
        {
          v109 = *(**(v0 + 64) + 336);
          v121 = (v109 + *v109);
          v110 = v109[1];
          v111 = v51;
          v112 = swift_task_alloc();
          *(v0 + 424) = v112;
          *v112 = v0;
          v112[1] = sub_10008AD4C;
          v113 = *(v0 + 64);
          v92 = v13;
          v93 = v111;
          v94 = v121;

          return v94(v92, v93);
        }

        if (qword_100129980 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_100066000(v52, qword_100129988);
        v53 = v14;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v56 = v114;
          v58 = v53;
          v59 = _swift_stdlib_bridgeErrorToNSError();
          *(v56 + 4) = v59;
          *v57 = v59;
          _os_log_impl(&_mh_execute_header, v54, v55, "No server record for conflict %@", v56, 0xCu);
          sub_100066C80(v57, &qword_1001287F0, &qword_1000E6C40);

          v60 = v13;
        }

        else
        {
          v60 = v54;
          v54 = v13;
        }
      }

      else
      {
        switch(v15)
        {
          case 23:
            goto LABEL_27;
          case 25:

            break;
          case 26:
            v116 = v2;
            v16 = *(v0 + 592);
            v17 = *(v0 + 80);
            v18 = *(v0 + 88);
            v19 = *(v0 + 72);
            v20 = [v13 recordID];
            v21 = [v20 zoneID];

            v22 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v21];
            *v18 = v22;
            (*(v17 + 104))(v18, v16, v19);
            v23 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_100092358(0, v9[2] + 1, 1, v9, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v25 = v9[2];
            v24 = v9[3];
            v115 = v23;
            if (v25 >= v24 >> 1)
            {
              v9 = sub_100092358(v24 > 1, v25 + 1, 1, v9, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v26 = *(v0 + 588);
            v27 = *(v0 + 120);
            v29 = *(v0 + 96);
            v28 = *(v0 + 104);
            v31 = *(v0 + 80);
            v30 = *(v0 + 88);
            v32 = *(v0 + 72);
            v9[2] = v25 + 1;
            (*(v31 + 32))(v9 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, v30, v32);
            *v27 = [v13 recordID];
            (*(v28 + 104))(v27, v26, v29);
            v33 = v116;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_100092358(0, v116[2] + 1, 1, v116, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v35 = v33[2];
            v34 = v33[3];
            if (v35 >= v34 >> 1)
            {
              v33 = sub_100092358(v34 > 1, v35 + 1, 1, v33, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v36 = *(v0 + 120);
            v38 = *(v0 + 96);
            v37 = *(v0 + 104);

            v33[2] = v35 + 1;
            v39 = v36;
            v2 = v33;
            (*(v37 + 32))(v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, v39, v38);
            break;
          default:
            goto LABEL_62;
        }
      }

LABEL_4:
      v7 = *(v0 + 376) + 1;
      if (v7 == *(v0 + 352))
      {
        v61 = *(v0 + 344);

        goto LABEL_41;
      }
    }

    if (v15 <= 5)
    {
      if ((v15 - 3) >= 2)
      {
        goto LABEL_62;
      }
    }

    else if (v15 != 6 && v15 != 9)
    {
      if (v15 != 11)
      {
LABEL_62:
        v105 = [v13 recordID];
        v106 = [v105 zoneID];
        *(v0 + 440) = v106;

        v107 = swift_task_alloc();
        *(v0 + 448) = v107;
        *v107 = v0;
        v107[1] = sub_10008CE84;
        v108 = *(v0 + 64);

        return sub_10007EEB0(v14, v106);
      }

      v101 = *(**(v0 + 64) + 344);
      v120 = (v101 + *v101);
      v102 = v101[1];
      v103 = swift_task_alloc();
      *(v0 + 432) = v103;
      *v103 = v0;
      v103[1] = sub_10008BDF0;
      v104 = *(v0 + 64);

      return v120(v13);
    }

    goto LABEL_27;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_41:
  *(v0 + 456) = v9;
  *(v0 + 464) = v2;
  v62 = *(v0 + 56);
  v63 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 472) = v63;
  v64 = *(v63 + 32);
  *(v0 + 599) = v64;
  v65 = -1;
  v66 = -1 << v64;
  if (-(-1 << v64) < 64)
  {
    v65 = ~(-1 << -(-1 << v64));
  }

  v67 = v65 & *(v63 + 64);
  if (v67)
  {
    v68 = 0;
LABEL_48:
    *(v0 + 520) = v68;
    *(v0 + 512) = v67;
    v71 = (v68 << 9) | (8 * __clz(__rbit64(v67)));
    v72 = *(*(v63 + 48) + v71);
    *(v0 + 528) = v72;
    v73 = *(*(v63 + 56) + v71);
    *(v0 + 536) = v73;
    v74 = qword_100129980;
    v75 = v72;
    v76 = v73;
    if (v74 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100066000(v77, qword_100129988);
    v78 = v75;
    v79 = v76;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412546;
      *(v82 + 4) = v78;
      *v83 = v78;
      *(v82 + 12) = 2112;
      v84 = v78;
      v85 = v79;
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 14) = v86;
      v83[1] = v86;
      _os_log_impl(&_mh_execute_header, v80, v81, "Error deleting recordID %@ error: %@", v82, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v87 = *(v0 + 64);

    v88 = *(*v87 + 312);
    v118 = (v88 + *v88);
    v89 = v88[1];
    v90 = swift_task_alloc();
    *(v0 + 544) = v90;
    *v90 = v0;
    v90[1] = sub_10008E0C4;
    v91 = *(v0 + 64);
    v92 = v78;
    v93 = v79;
    v94 = v118;

    return v94(v92, v93);
  }

  else
  {
    v69 = 0;
    v70 = ((63 - v66) >> 6) - 1;
    while (v70 != v69)
    {
      v68 = v69 + 1;
      v67 = *(v63 + 8 * v69++ + 72);
      if (v67)
      {
        goto LABEL_48;
      }
    }

    v96 = *(v0 + 64);

    v97 = *(*v96 + 192);
    v117 = *v96 + 192;
    *(v0 + 480) = v97;
    *(v0 + 488) = v117 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v119 = (v97 + *v97);
    v98 = v97[1];
    v99 = swift_task_alloc();
    *(v0 + 496) = v99;
    *v99 = v0;
    v99[1] = sub_10008DF7C;
    v100 = *(v0 + 64);

    return v119();
  }
}

uint64_t sub_10008AD4C(char a1)
{
  v2 = *(*v1 + 424);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 596) = a1;

  return _swift_task_switch(sub_10008AE64, v3, 0);
}

uint64_t sub_10008AE64()
{
  if (*(v0 + 596))
  {
    v1 = *(v0 + 392);
    v2 = *(v0 + 588);
    v3 = *(v0 + 128);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    *v3 = [*(v0 + 400) recordID];
    (*(v5 + 104))(v3, v2, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_100092358(0, v7[2] + 1, 1, *(v0 + 392), &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_100092358(v8 > 1, v9 + 1, 1, v7, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v10 = *(v0 + 416);
    v11 = *(v0 + 400);
    v12 = *(v0 + 128);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);

    v7[2] = v9 + 1;
    (*(v14 + 32))(v7 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v9, v12, v13);
  }

  else
  {
    v15 = *(v0 + 416);
    v16 = *(v0 + 400);

    v7 = *(v0 + 392);
  }

  v17 = *(v0 + 384);
  v18 = *(v0 + 376) + 1;
  if (v18 != *(v0 + 352))
  {
    while (1)
    {
      *(v0 + 384) = v17;
      *(v0 + 392) = v7;
      *(v0 + 376) = v18;
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);
      v29 = *(v0 + 152);
      (*(v0 + 368))(v27, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v18, v29);
      v30 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      *(v0 + 400) = v30;
      v31 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      *(v0 + 408) = v31;
      (*(v28 + 8))(v27, v29);
      *(v0 + 32) = v31;
      type metadata accessor for CKError(0);
      sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      v32 = *(v0 + 40);
      if (v32 <= 13)
      {
        break;
      }

      if (v32 <= 22)
      {
        if (v32 != 14)
        {
          if (v32 != 20)
          {
            goto LABEL_67;
          }

LABEL_29:
          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          sub_100066000(v33, qword_100129988);
          v34 = v31;
          v35 = v30;
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v38 = 138412546;
            v40 = [v35 recordID];
            *(v38 + 4) = v40;
            *v39 = v40;
            *(v38 + 12) = 2112;
            v41 = v34;
            v42 = _swift_stdlib_bridgeErrorToNSError();
            *(v38 + 14) = v42;
            v39[1] = v42;
            _os_log_impl(&_mh_execute_header, v36, v37, "Retryable error saving %@: %@", v38, 0x16u);
            sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
            swift_arrayDestroy();
          }

          else
          {
          }

          goto LABEL_15;
        }

        v43 = related decl 'e' for CKErrorCode.serverRecord.getter();
        *(v0 + 416) = v43;
        if (v43)
        {
          v110 = *(**(v0 + 64) + 336);
          v124 = (v110 + *v110);
          v111 = v110[1];
          v112 = v43;
          v113 = swift_task_alloc();
          *(v0 + 424) = v113;
          *v113 = v0;
          v113[1] = sub_10008AD4C;
          v114 = *(v0 + 64);
          v93 = v30;
          v94 = v112;
          v95 = v124;

          return v95(v93, v94);
        }

        if (qword_100129980 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_100066000(v44, qword_100129988);
        v45 = v31;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v45;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&_mh_execute_header, v46, v47, "No server record for conflict %@", v48, 0xCu);
          sub_100066C80(v49, &qword_1001287F0, &qword_1000E6C40);

          v52 = v30;
        }

        else
        {
          v52 = v46;
          v46 = v30;
        }
      }

      else
      {
        switch(v32)
        {
          case 23:
            goto LABEL_29;
          case 25:

            break;
          case 26:
            v118 = *(v0 + 592);
            v54 = *(v0 + 80);
            v53 = *(v0 + 88);
            v116 = *(v0 + 72);
            v55 = [v30 recordID];
            v56 = [v55 zoneID];

            v57 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v56];
            *v53 = v57;
            (*(v54 + 104))(v53, v118, v116);
            v119 = v57;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_100092358(0, v17[2] + 1, 1, v17, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v59 = v17[2];
            v58 = v17[3];
            if (v59 >= v58 >> 1)
            {
              v17 = sub_100092358(v58 > 1, v59 + 1, 1, v17, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v117 = *(v0 + 588);
            v60 = *(v0 + 120);
            v61 = *(v0 + 104);
            v115 = *(v0 + 96);
            v63 = *(v0 + 80);
            v62 = *(v0 + 88);
            v64 = *(v0 + 72);
            v17[2] = v59 + 1;
            (*(v63 + 32))(v17 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v59, v62, v64);
            *v60 = [v30 recordID];
            (*(v61 + 104))(v60, v117, v115);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_100092358(0, v7[2] + 1, 1, v7, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v66 = v7[2];
            v65 = v7[3];
            if (v66 >= v65 >> 1)
            {
              v7 = sub_100092358(v65 > 1, v66 + 1, 1, v7, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v67 = *(v0 + 120);
            v68 = *(v0 + 96);
            v69 = *(v0 + 104);

            v7[2] = v66 + 1;
            (*(v69 + 32))(v7 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v66, v67, v68);
            break;
          default:
            goto LABEL_67;
        }
      }

LABEL_15:
      v18 = *(v0 + 376) + 1;
      if (v18 == *(v0 + 352))
      {
        goto LABEL_9;
      }
    }

    if (v32 <= 5)
    {
      if ((v32 - 3) >= 2)
      {
        goto LABEL_67;
      }
    }

    else if (v32 != 6 && v32 != 9)
    {
      if (v32 == 11)
      {
        v102 = *(**(v0 + 64) + 344);
        v123 = (v102 + *v102);
        v103 = v102[1];
        v104 = swift_task_alloc();
        *(v0 + 432) = v104;
        *v104 = v0;
        v104[1] = sub_10008BDF0;
        v105 = *(v0 + 64);

        return v123(v30);
      }

LABEL_67:
      v106 = [v30 recordID];
      v107 = [v106 zoneID];
      *(v0 + 440) = v107;

      v108 = swift_task_alloc();
      *(v0 + 448) = v108;
      *v108 = v0;
      v108[1] = sub_10008CE84;
      v109 = *(v0 + 64);

      return sub_10007EEB0(v31, v107);
    }

    goto LABEL_29;
  }

LABEL_9:
  v19 = *(v0 + 344);

  *(v0 + 456) = v17;
  *(v0 + 464) = v7;
  v20 = *(v0 + 56);
  v21 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 472) = v21;
  v22 = *(v21 + 32);
  *(v0 + 599) = v22;
  v23 = -1;
  v24 = -1 << v22;
  if (-(-1 << v22) < 64)
  {
    v23 = ~(-1 << -(-1 << v22));
  }

  v25 = v23 & *(v21 + 64);
  if (v25)
  {
    v26 = 0;
LABEL_53:
    *(v0 + 520) = v26;
    *(v0 + 512) = v25;
    v72 = (v26 << 9) | (8 * __clz(__rbit64(v25)));
    v73 = *(*(v21 + 48) + v72);
    *(v0 + 528) = v73;
    v74 = *(*(v21 + 56) + v72);
    *(v0 + 536) = v74;
    v75 = qword_100129980;
    v76 = v73;
    v77 = v74;
    if (v75 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100066000(v78, qword_100129988);
    v79 = v76;
    v80 = v77;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138412546;
      *(v83 + 4) = v79;
      *v84 = v79;
      *(v83 + 12) = 2112;
      v85 = v79;
      v86 = v80;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 14) = v87;
      v84[1] = v87;
      _os_log_impl(&_mh_execute_header, v81, v82, "Error deleting recordID %@ error: %@", v83, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v88 = *(v0 + 64);

    v89 = *(*v88 + 312);
    v121 = (v89 + *v89);
    v90 = v89[1];
    v91 = swift_task_alloc();
    *(v0 + 544) = v91;
    *v91 = v0;
    v91[1] = sub_10008E0C4;
    v92 = *(v0 + 64);
    v93 = v79;
    v94 = v80;
    v95 = v121;

    return v95(v93, v94);
  }

  else
  {
    v70 = 0;
    v71 = ((63 - v24) >> 6) - 1;
    while (v71 != v70)
    {
      v26 = v70 + 1;
      v25 = *(v21 + 8 * v70++ + 72);
      if (v25)
      {
        goto LABEL_53;
      }
    }

    v97 = *(v0 + 64);

    v98 = *(*v97 + 192);
    v120 = *v97 + 192;
    *(v0 + 480) = v98;
    *(v0 + 488) = v120 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v122 = (v98 + *v98);
    v99 = v98[1];
    v100 = swift_task_alloc();
    *(v0 + 496) = v100;
    *v100 = v0;
    v100[1] = sub_10008DF7C;
    v101 = *(v0 + 64);

    return v122();
  }
}

uint64_t sub_10008BDF0(char a1)
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 597) = a1;

  return _swift_task_switch(sub_10008BF08, v3, 0);
}

uint64_t sub_10008BF08()
{
  if (*(v0 + 597))
  {
    v1 = *(v0 + 392);
    v2 = *(v0 + 588);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    *v3 = [*(v0 + 400) recordID];
    (*(v4 + 104))(v3, v2, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_100092358(0, v7[2] + 1, 1, *(v0 + 392), &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_100092358(v8 > 1, v9 + 1, 1, v7, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v10 = *(v0 + 400);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 96);

    v7[2] = v9 + 1;
    (*(v12 + 32))(v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, v11, v13);
  }

  else
  {
    v14 = *(v0 + 400);

    v7 = *(v0 + 392);
  }

  v15 = *(v0 + 384);
  v16 = *(v0 + 376) + 1;
  if (v16 != *(v0 + 352))
  {
    while (1)
    {
      *(v0 + 384) = v15;
      *(v0 + 392) = v7;
      *(v0 + 376) = v16;
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = *(v0 + 152);
      (*(v0 + 368))(v25, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v16, v27);
      v28 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      *(v0 + 400) = v28;
      v29 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      *(v0 + 408) = v29;
      (*(v26 + 8))(v25, v27);
      *(v0 + 32) = v29;
      type metadata accessor for CKError(0);
      sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      v30 = *(v0 + 40);
      if (v30 <= 13)
      {
        break;
      }

      if (v30 <= 22)
      {
        if (v30 != 14)
        {
          if (v30 != 20)
          {
            goto LABEL_67;
          }

LABEL_29:
          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          sub_100066000(v31, qword_100129988);
          v32 = v29;
          v33 = v28;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412546;
            v38 = [v33 recordID];
            *(v36 + 4) = v38;
            *v37 = v38;
            *(v36 + 12) = 2112;
            v39 = v32;
            v40 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 14) = v40;
            v37[1] = v40;
            _os_log_impl(&_mh_execute_header, v34, v35, "Retryable error saving %@: %@", v36, 0x16u);
            sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
            swift_arrayDestroy();
          }

          else
          {
          }

          goto LABEL_15;
        }

        v41 = related decl 'e' for CKErrorCode.serverRecord.getter();
        *(v0 + 416) = v41;
        if (v41)
        {
          v108 = *(**(v0 + 64) + 336);
          v122 = (v108 + *v108);
          v109 = v108[1];
          v110 = v41;
          v111 = swift_task_alloc();
          *(v0 + 424) = v111;
          *v111 = v0;
          v111[1] = sub_10008AD4C;
          v112 = *(v0 + 64);
          v91 = v28;
          v92 = v110;
          v93 = v122;

          return v93(v91, v92);
        }

        if (qword_100129980 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100066000(v42, qword_100129988);
        v43 = v29;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          v48 = v43;
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v49;
          *v47 = v49;
          _os_log_impl(&_mh_execute_header, v44, v45, "No server record for conflict %@", v46, 0xCu);
          sub_100066C80(v47, &qword_1001287F0, &qword_1000E6C40);

          v50 = v28;
        }

        else
        {
          v50 = v44;
          v44 = v28;
        }
      }

      else
      {
        switch(v30)
        {
          case 23:
            goto LABEL_29;
          case 25:

            break;
          case 26:
            v116 = *(v0 + 592);
            v52 = *(v0 + 80);
            v51 = *(v0 + 88);
            v114 = *(v0 + 72);
            v53 = [v28 recordID];
            v54 = [v53 zoneID];

            v55 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v54];
            *v51 = v55;
            (*(v52 + 104))(v51, v116, v114);
            v117 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_100092358(0, v15[2] + 1, 1, v15, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v57 = v15[2];
            v56 = v15[3];
            if (v57 >= v56 >> 1)
            {
              v15 = sub_100092358(v56 > 1, v57 + 1, 1, v15, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v115 = *(v0 + 588);
            v58 = *(v0 + 120);
            v59 = *(v0 + 104);
            v113 = *(v0 + 96);
            v61 = *(v0 + 80);
            v60 = *(v0 + 88);
            v62 = *(v0 + 72);
            v15[2] = v57 + 1;
            (*(v61 + 32))(v15 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v57, v60, v62);
            *v58 = [v28 recordID];
            (*(v59 + 104))(v58, v115, v113);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_100092358(0, v7[2] + 1, 1, v7, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v64 = v7[2];
            v63 = v7[3];
            if (v64 >= v63 >> 1)
            {
              v7 = sub_100092358(v63 > 1, v64 + 1, 1, v7, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v65 = *(v0 + 120);
            v66 = *(v0 + 96);
            v67 = *(v0 + 104);

            v7[2] = v64 + 1;
            (*(v67 + 32))(v7 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v64, v65, v66);
            break;
          default:
            goto LABEL_67;
        }
      }

LABEL_15:
      v16 = *(v0 + 376) + 1;
      if (v16 == *(v0 + 352))
      {
        goto LABEL_9;
      }
    }

    if (v30 <= 5)
    {
      if ((v30 - 3) >= 2)
      {
        goto LABEL_67;
      }
    }

    else if (v30 != 6 && v30 != 9)
    {
      if (v30 == 11)
      {
        v100 = *(**(v0 + 64) + 344);
        v121 = (v100 + *v100);
        v101 = v100[1];
        v102 = swift_task_alloc();
        *(v0 + 432) = v102;
        *v102 = v0;
        v102[1] = sub_10008BDF0;
        v103 = *(v0 + 64);

        return v121(v28);
      }

LABEL_67:
      v104 = [v28 recordID];
      v105 = [v104 zoneID];
      *(v0 + 440) = v105;

      v106 = swift_task_alloc();
      *(v0 + 448) = v106;
      *v106 = v0;
      v106[1] = sub_10008CE84;
      v107 = *(v0 + 64);

      return sub_10007EEB0(v29, v105);
    }

    goto LABEL_29;
  }

LABEL_9:
  v17 = *(v0 + 344);

  *(v0 + 456) = v15;
  *(v0 + 464) = v7;
  v18 = *(v0 + 56);
  v19 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 472) = v19;
  v20 = *(v19 + 32);
  *(v0 + 599) = v20;
  v21 = -1;
  v22 = -1 << v20;
  if (-(-1 << v20) < 64)
  {
    v21 = ~(-1 << -(-1 << v20));
  }

  v23 = v21 & *(v19 + 64);
  if (v23)
  {
    v24 = 0;
LABEL_53:
    *(v0 + 520) = v24;
    *(v0 + 512) = v23;
    v70 = (v24 << 9) | (8 * __clz(__rbit64(v23)));
    v71 = *(*(v19 + 48) + v70);
    *(v0 + 528) = v71;
    v72 = *(*(v19 + 56) + v70);
    *(v0 + 536) = v72;
    v73 = qword_100129980;
    v74 = v71;
    v75 = v72;
    if (v73 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_100066000(v76, qword_100129988);
    v77 = v74;
    v78 = v75;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412546;
      *(v81 + 4) = v77;
      *v82 = v77;
      *(v81 + 12) = 2112;
      v83 = v77;
      v84 = v78;
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 14) = v85;
      v82[1] = v85;
      _os_log_impl(&_mh_execute_header, v79, v80, "Error deleting recordID %@ error: %@", v81, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v86 = *(v0 + 64);

    v87 = *(*v86 + 312);
    v119 = (v87 + *v87);
    v88 = v87[1];
    v89 = swift_task_alloc();
    *(v0 + 544) = v89;
    *v89 = v0;
    v89[1] = sub_10008E0C4;
    v90 = *(v0 + 64);
    v91 = v77;
    v92 = v78;
    v93 = v119;

    return v93(v91, v92);
  }

  else
  {
    v68 = 0;
    v69 = ((63 - v22) >> 6) - 1;
    while (v69 != v68)
    {
      v24 = v68 + 1;
      v23 = *(v19 + 8 * v68++ + 72);
      if (v23)
      {
        goto LABEL_53;
      }
    }

    v95 = *(v0 + 64);

    v96 = *(*v95 + 192);
    v118 = *v95 + 192;
    *(v0 + 480) = v96;
    *(v0 + 488) = v118 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v120 = (v96 + *v96);
    v97 = v96[1];
    v98 = swift_task_alloc();
    *(v0 + 496) = v98;
    *v98 = v0;
    v98[1] = sub_10008DF7C;
    v99 = *(v0 + 64);

    return v120();
  }
}

uint64_t sub_10008CE84(char a1)
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 598) = a1;

  return _swift_task_switch(sub_10008CFB4, v4, 0);
}

uint64_t sub_10008CFB4()
{
  p_prots = &OBJC_PROTOCOL___CKRecordValue.prots;
  if (*(v0 + 598))
  {
    v2 = *(v0 + 400);
    v3 = *(v0 + 408);
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = type metadata accessor for Logger();
    sub_100066000(v6, qword_100129988);
    v7 = v4;
    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 400);
      v12 = *(v0 + 408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      v15 = [v11 recordID];
      *(v13 + 4) = v15;
      *v14 = v15;
      *(v13 + 12) = 2112;
      v16 = v12;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      v14[1] = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unknown error saving record %@: %@", v13, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();

      v2 = *(v0 + 400);
    }

    else
    {
      v2 = v9;
      v9 = *(v0 + 400);
    }

    v3 = *(v0 + 408);
  }

  v19 = *(v0 + 384);
  v18 = *(v0 + 392);
  v20 = *(v0 + 376) + 1;
  while (v20 != *(v0 + 352))
  {
    while (1)
    {
      *(v0 + 384) = v19;
      *(v0 + 392) = v18;
      *(v0 + 376) = v20;
      v30 = *(v0 + 160);
      v29 = *(v0 + 168);
      v31 = *(v0 + 152);
      (*(v0 + 368))(v29, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v20, v31);
      v32 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      *(v0 + 400) = v32;
      v33 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      *(v0 + 408) = v33;
      (*(v30 + 8))(v29, v31);
      *(v0 + 32) = v33;
      type metadata accessor for CKError(0);
      sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      v34 = *(v0 + 40);
      if (v34 <= 13)
      {
        if (v34 <= 5)
        {
          if ((v34 - 3) >= 2)
          {
            goto LABEL_70;
          }
        }

        else if (v34 != 6 && v34 != 9)
        {
          if (v34 == 11)
          {
            v104 = *(**(v0 + 64) + 344);
            v125 = (v104 + *v104);
            v105 = v104[1];
            v106 = swift_task_alloc();
            *(v0 + 432) = v106;
            *v106 = v0;
            v106[1] = sub_10008BDF0;
            v107 = *(v0 + 64);

            return v125(v32);
          }

LABEL_70:
          v108 = [v32 recordID];
          v109 = [v108 zoneID];
          *(v0 + 440) = v109;

          v110 = swift_task_alloc();
          *(v0 + 448) = v110;
          *v110 = v0;
          v110[1] = sub_10008CE84;
          v111 = *(v0 + 64);

          return sub_10007EEB0(v33, v109);
        }

        goto LABEL_31;
      }

      if (v34 > 22)
      {
        break;
      }

      if (v34 != 14)
      {
        if (v34 != 20)
        {
          goto LABEL_70;
        }

LABEL_31:
        if (p_prots[304] != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_100066000(v35, qword_100129988);
        v36 = v33;
        v37 = v32;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412546;
          v42 = [v37 recordID];
          *(v40 + 4) = v42;
          *v41 = v42;
          *(v40 + 12) = 2112;
          v43 = v36;
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 14) = v44;
          v41[1] = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "Retryable error saving %@: %@", v40, 0x16u);
          sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
          swift_arrayDestroy();
        }

        else
        {
        }

        p_prots = &OBJC_PROTOCOL___CKRecordValue.prots;
        goto LABEL_17;
      }

      v45 = related decl 'e' for CKErrorCode.serverRecord.getter();
      *(v0 + 416) = v45;
      if (v45)
      {
        v112 = *(**(v0 + 64) + 336);
        v126 = (v112 + *v112);
        v113 = v112[1];
        v114 = v45;
        v115 = swift_task_alloc();
        *(v0 + 424) = v115;
        *v115 = v0;
        v115[1] = sub_10008AD4C;
        v116 = *(v0 + 64);
        v95 = v32;
        v96 = v114;
        v97 = v126;

        return v97(v95, v96);
      }

      if (p_prots[304] != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100066000(v46, qword_100129988);
      v47 = v33;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v47;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&_mh_execute_header, v48, v49, "No server record for conflict %@", v50, 0xCu);
        sub_100066C80(v51, &qword_1001287F0, &qword_1000E6C40);

        p_prots = (&OBJC_PROTOCOL___CKRecordValue + 16);

        v54 = v32;
      }

      else
      {
        v54 = v48;
        v48 = v32;
      }

LABEL_17:
      v20 = *(v0 + 376) + 1;
      if (v20 == *(v0 + 352))
      {
        goto LABEL_10;
      }
    }

    if (v34 == 23)
    {
      goto LABEL_31;
    }

    if (v34 == 25)
    {

      goto LABEL_17;
    }

    if (v34 != 26)
    {
      goto LABEL_70;
    }

    v120 = *(v0 + 592);
    v56 = *(v0 + 80);
    v55 = *(v0 + 88);
    v118 = *(v0 + 72);
    v57 = [v32 recordID];
    v58 = [v57 zoneID];

    v59 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v58];
    *v55 = v59;
    (*(v56 + 104))(v55, v120, v118);
    v121 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100092358(0, v19[2] + 1, 1, v19, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
    }

    v61 = v19[2];
    v60 = v19[3];
    if (v61 >= v60 >> 1)
    {
      v19 = sub_100092358(v60 > 1, v61 + 1, 1, v19, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
    }

    v119 = *(v0 + 588);
    v62 = *(v0 + 120);
    v63 = *(v0 + 104);
    v117 = *(v0 + 96);
    v65 = *(v0 + 80);
    v64 = *(v0 + 88);
    v66 = *(v0 + 72);
    v19[2] = v61 + 1;
    (*(v65 + 32))(v19 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v61, v64, v66);
    *v62 = [v32 recordID];
    (*(v63 + 104))(v62, v119, v117);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100092358(0, v18[2] + 1, 1, v18, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v68 = v18[2];
    v67 = v18[3];
    if (v68 >= v67 >> 1)
    {
      v18 = sub_100092358(v67 > 1, v68 + 1, 1, v18, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v69 = *(v0 + 120);
    v70 = *(v0 + 96);
    v71 = *(v0 + 104);

    v18[2] = v68 + 1;
    (*(v71 + 32))(v18 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v68, v69, v70);
    v20 = *(v0 + 376) + 1;
    p_prots = (&OBJC_PROTOCOL___CKRecordValue + 16);
  }

LABEL_10:
  v21 = *(v0 + 344);

  *(v0 + 456) = v19;
  *(v0 + 464) = v18;
  v22 = *(v0 + 56);
  v23 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 472) = v23;
  v24 = *(v23 + 32);
  *(v0 + 599) = v24;
  v25 = -1;
  v26 = -1 << v24;
  if (-(-1 << v24) < 64)
  {
    v25 = ~(-1 << -(-1 << v24));
  }

  v27 = v25 & *(v23 + 64);
  if (v27)
  {
    v28 = 0;
LABEL_56:
    *(v0 + 520) = v28;
    *(v0 + 512) = v27;
    v74 = (v28 << 9) | (8 * __clz(__rbit64(v27)));
    v75 = *(*(v23 + 48) + v74);
    *(v0 + 528) = v75;
    v76 = *(*(v23 + 56) + v74);
    *(v0 + 536) = v76;
    v77 = p_prots[304];
    v78 = v75;
    v79 = v76;
    if (v77 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_100066000(v80, qword_100129988);
    v81 = v78;
    v82 = v79;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412546;
      *(v85 + 4) = v81;
      *v86 = v81;
      *(v85 + 12) = 2112;
      v87 = v81;
      v88 = v82;
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 14) = v89;
      v86[1] = v89;
      _os_log_impl(&_mh_execute_header, v83, v84, "Error deleting recordID %@ error: %@", v85, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v90 = *(v0 + 64);

    v91 = *(*v90 + 312);
    v123 = (v91 + *v91);
    v92 = v91[1];
    v93 = swift_task_alloc();
    *(v0 + 544) = v93;
    *v93 = v0;
    v93[1] = sub_10008E0C4;
    v94 = *(v0 + 64);
    v95 = v81;
    v96 = v82;
    v97 = v123;

    return v97(v95, v96);
  }

  else
  {
    v72 = 0;
    v73 = ((63 - v26) >> 6) - 1;
    while (v73 != v72)
    {
      v28 = v72 + 1;
      v27 = *(v23 + 8 * v72++ + 72);
      if (v27)
      {
        goto LABEL_56;
      }
    }

    v99 = *(v0 + 64);

    v100 = *(*v99 + 192);
    v122 = *v99 + 192;
    *(v0 + 480) = v100;
    *(v0 + 488) = v122 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v124 = (v100 + *v100);
    v101 = v100[1];
    v102 = swift_task_alloc();
    *(v0 + 496) = v102;
    *v102 = v0;
    v102[1] = sub_10008DF7C;
    v103 = *(v0 + 64);

    return v124();
  }
}

uint64_t sub_10008DF7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v7 = v4[57];
    v8 = v4[58];
    v9 = v4[8];

    v10 = sub_10008E974;
    v11 = v9;
  }

  else
  {
    v11 = v4[8];
    v4[69] = a1;
    v10 = sub_10008E608;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_10008E0C4()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_10008E1D4, v2, 0);
}

uint64_t sub_10008E1D4()
{
  v2 = *(v1 + 528);

  v3 = *(v1 + 520);
  v4 = (*(v1 + 512) - 1) & *(v1 + 512);
  if (v4)
  {
    v5 = *(v1 + 472);
LABEL_7:
    *(v1 + 520) = v3;
    *(v1 + 512) = v4;
    v7 = (v3 << 9) | (8 * __clz(__rbit64(v4)));
    v8 = *(*(v5 + 48) + v7);
    *(v1 + 528) = v8;
    v9 = *(*(v5 + 56) + v7);
    *(v1 + 536) = v9;
    v10 = qword_100129980;
    v2 = v8;
    v0 = v9;
    if (v10 != -1)
    {
LABEL_17:
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100066000(v11, qword_100129988);
    v12 = v2;
    v13 = v0;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v12;
      *v17 = v12;
      *(v16 + 12) = 2112;
      v18 = v12;
      v19 = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      v17[1] = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error deleting recordID %@ error: %@", v16, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v21 = *(v1 + 64);

    v22 = *(*v21 + 312);
    v33 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v1 + 544) = v24;
    *v24 = v1;
    v24[1] = sub_10008E0C4;
    v25 = *(v1 + 64);

    return v33(v12, v13);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(v1 + 472);
      if (v6 >= (((1 << *(v1 + 599)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v27 = *(v1 + 64);

    v28 = *(*v27 + 192);
    v32 = *v27 + 192;
    *(v1 + 480) = v28;
    *(v1 + 488) = v32 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v34 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    *(v1 + 496) = v30;
    *v30 = v1;
    v30[1] = sub_10008DF7C;
    v31 = *(v1 + 64);

    return v34();
  }
}

uint64_t sub_10008E608()
{
  v1 = v0[69];
  v2 = v0[60];
  v3 = v0[61];
  v4._rawValue = v0[57];
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingDatabaseChanges:)(v4);

  v10 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[70] = v6;
  *v6 = v0;
  v6[1] = sub_10008E734;
  v7 = v0[61];
  v8 = v0[8];

  return v10();
}

uint64_t sub_10008E734(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v7 = v4[58];
    v8 = v4[8];

    v9 = sub_10008EB80;
    v10 = v8;
  }

  else
  {
    v10 = v4[8];
    v4[72] = a1;
    v9 = sub_10008E874;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10008E874()
{
  v1 = v0[72];
  v2._rawValue = v0[58];
  v4 = v0[41];
  v3 = v0[42];
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v2);

  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10008E974()
{
  v1 = v0[63];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  v7 = v0[42];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error adding pending changes to SyncEngine, error: %@", v8, 0xCu);
    sub_100066C80(v9, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v12 = v0[21];
  v11 = v0[22];
  v14 = v0[17];
  v13 = v0[18];
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];
  v18 = v0[11];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10008EB80()
{
  v1 = v0[71];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  v7 = v0[42];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error adding pending changes to SyncEngine, error: %@", v8, 0xCu);
    sub_100066C80(v9, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v12 = v0[21];
  v11 = v0[22];
  v14 = v0[17];
  v13 = v0[18];
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];
  v18 = v0[11];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10008ED8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10008EE64, v1, 0);
}

uint64_t sub_10008EE64()
{
  v92 = v0;
  v2 = v0[2];
  v3 = CKSyncEngine.Event.SentDatabaseChanges.savedZones.getter();
  v4 = v3;
  if (v3 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  p_prots = (&OBJC_PROTOCOL___CKRecordValue + 16);
  v87 = v4 & 0xC000000000000001;
  do
  {
    if (v7)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v4 + 8 * v6 + 32);
    }

    v19 = v18;
    if (p_prots[304] != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v0 = sub_100066000(v20, qword_100129988);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v9 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v91 = v88;
      *v9 = 136315138;
      v10 = [v21 zoneID];
      v11 = [v10 zoneName];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v4;
      v14 = v5;
      v16 = v15;

      v17 = sub_100065658(v12, v16, &v91);
      v5 = v14;
      v4 = v13;

      *(v9 + 4) = v17;
      v7 = v87;
      _os_log_impl(&_mh_execute_header, v22, v23, "Zone %s saved", v9, 0xCu);
      v0 = v88;
      sub_10005D588(v88);

      p_prots = &OBJC_PROTOCOL___CKRecordValue.prots;
    }

    else
    {
    }

    ++v6;
  }

  while (v5 != v6);
LABEL_15:
  v1 = v86;
  v24 = *(v86 + 16);

  v25 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneSaves.getter();
  *(v86 + 72) = v25;
  v26 = *(v25 + 16);
  *(v86 + 80) = v26;
  if (v26)
  {
    v27 = *(v86 + 32);
    v28 = *(v86 + 40);
    v29 = *(v28 + 16);
    v28 += 16;
    v30 = *(v28 + 64);
    *(v86 + 248) = v30;
    *(v86 + 88) = *(v28 + 56);
    *(v86 + 96) = v29;
    v31 = *(v86 + 64);
    *(v86 + 104) = 0;
    *(v86 + 112) = v28 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v31, v25 + ((v30 + 32) & ~v30), v27);
    v32 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.error.getter();
    *(v86 + 120) = v32;
    v33 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.zone.getter();
    v34 = [v33 zoneID];
    *(v86 + 128) = v34;

    v35 = swift_task_alloc();
    *(v86 + 136) = v35;
    *v35 = v86;
    v35[1] = sub_10008F734;
    v36 = *(v86 + 24);

    return sub_10007EEB0(v32, v34);
  }

  v2 = *(v86 + 16);
  v38 = CKSyncEngine.Event.SentDatabaseChanges.deletedZoneIDs.getter();
  *(v86 + 144) = v38;
  if (v38 >> 62)
  {
LABEL_29:
    v39 = _CocoaArrayWrapper.endIndex.getter();
    *(v1 + 152) = v39;
    if (v39)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v86 + 152) = v39;
  if (v39)
  {
LABEL_21:
    if (v39 >= 1)
    {
      v40 = **(v1 + 24) + 320;
      v41 = *v40;
      *(v1 + 160) = *v40;
      *(v1 + 168) = v40 & 0xFFFFFFFFFFFFLL | 0xD83C000000000000;
      *(v1 + 176) = 0;
      v42 = *(v1 + 144);
      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v41 = *(v1 + 160);
        v44 = *(v1 + 168);
      }

      else
      {
        v43 = *(v42 + 32);
      }

      *(v1 + 184) = v43;
      v89 = (v41 + *v41);
      v45 = v41[1];
      v46 = swift_task_alloc();
      *(v1 + 192) = v46;
      *v46 = v1;
      v46[1] = sub_1000901C0;
      v47 = *(v1 + 168);
      v48 = *(v1 + 24);

      return v89(v43);
    }

    __break(1u);
LABEL_47:
    swift_once();
LABEL_38:
    v63 = type metadata accessor for Logger();
    sub_100066000(v63, qword_100129988);
    v64 = v2;
    v65 = v0;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v91 = v70;
      *v68 = 136315394;
      v71 = [v64 zoneName];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = sub_100065658(v72, v74, &v91);

      *(v68 + 4) = v75;
      *(v68 + 12) = 2112;
      v76 = v65;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 14) = v77;
      *v69 = v77;
      _os_log_impl(&_mh_execute_header, v66, v67, "Failed to delete zone %s: error: %@", v68, 0x16u);
      sub_100066C80(v69, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v70);
    }

    v78 = *(**(v86 + 24) + 328);
    v90 = (v78 + *v78);
    v79 = v78[1];
    v80 = swift_task_alloc();
    *(v86 + 240) = v80;
    *v80 = v86;
    v80[1] = sub_1000907FC;
    v81 = *(v86 + 24);

    return (v90)(v64, v65);
  }

LABEL_30:
  v49 = *(v1 + 144);
  v50 = *(v1 + 16);

  v51 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter();
  *(v1 + 200) = v51;
  v52 = *(v51 + 32);
  *(v1 + 253) = v52;
  v53 = -1;
  v54 = -1 << v52;
  if (-(-1 << v52) < 64)
  {
    v53 = ~(-1 << -(-1 << v52));
  }

  v55 = v53 & *(v51 + 64);
  if (v55)
  {
    v56 = 0;
LABEL_37:
    *(v1 + 208) = v55;
    *(v1 + 216) = v56;
    v59 = (v56 << 9) | (8 * __clz(__rbit64(v55)));
    v60 = *(*(v51 + 48) + v59);
    *(v1 + 224) = v60;
    v61 = *(*(v51 + 56) + v59);
    *(v1 + 232) = v61;
    v62 = qword_100129980;
    v2 = v60;
    v0 = v61;
    if (v62 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

  v57 = 0;
  v58 = ((63 - v54) >> 6) - 1;
  while (v58 != v57)
  {
    v56 = v57 + 1;
    v55 = *(v51 + 8 * v57++ + 72);
    if (v55)
    {
      goto LABEL_37;
    }
  }

  v83 = *(v1 + 56);
  v82 = *(v1 + 64);
  v84 = *(v1 + 48);

  v85 = *(v1 + 8);

  return v85();
}

uint64_t sub_10008F734(char a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 252) = a1;

  return _swift_task_switch(sub_10008F884, v5, 0);
}

uint64_t sub_10008F884()
{
  v100 = v1;
  if (*(v1 + 252))
  {
    (*(*(v1 + 40) + 8))(*(v1 + 64), *(v1 + 32));
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v2 = *(v1 + 112);
    v3 = *(v1 + 96);
    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
    v6 = *(v1 + 48);
    v7 = *(v1 + 32);
    v8 = type metadata accessor for Logger();
    sub_100066000(v8, qword_100129988);
    v3(v4, v5, v7);
    v3(v6, v5, v7);
    v0 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v0, v9);
    v11 = *(v1 + 56);
    v12 = *(v1 + 64);
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    v15 = *(v1 + 32);
    if (v10)
    {
      v95 = *(v1 + 64);
      v16 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v99 = v94;
      *v16 = 136315394;
      v92 = v9;
      v17 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.zone.getter();
      v18 = [v17 zoneID];

      v19 = [v18 zoneName];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = *(v13 + 8);
      v23(v11, v15);
      v24 = sub_100065658(v20, v22, &v99);

      *(v16 + 4) = v24;
      *(v16 + 12) = 2112;
      CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.error.getter();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v23(v14, v15);
      *(v16 + 14) = v25;
      *v93 = v25;
      _os_log_impl(&_mh_execute_header, v0, v92, "Zone %s failed to save, error: %@", v16, 0x16u);
      sub_100066C80(v93, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v94);

      v23(v95, v15);
    }

    else
    {

      v26 = *(v13 + 8);
      v26(v14, v15);
      v26(v11, v15);
      v26(v12, v15);
    }
  }

  v27 = *(v1 + 104) + 1;
  if (v27 == *(v1 + 80))
  {
    v28 = *(v1 + 72);

    v29 = *(v1 + 16);
    v30 = CKSyncEngine.Event.SentDatabaseChanges.deletedZoneIDs.getter();
    *(v1 + 144) = v30;
    if (v30 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      *(v1 + 152) = v31;
      if (v31)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v1 + 152) = v31;
      if (v31)
      {
LABEL_11:
        if (v31 >= 1)
        {
          v32 = **(v1 + 24) + 320;
          v33 = *v32;
          *(v1 + 160) = *v32;
          *(v1 + 168) = v32 & 0xFFFFFFFFFFFFLL | 0xD83C000000000000;
          *(v1 + 176) = 0;
          v34 = *(v1 + 144);
          if ((v34 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v33 = *(v1 + 160);
            v36 = *(v1 + 168);
          }

          else
          {
            v35 = *(v34 + 32);
          }

          *(v1 + 184) = v35;
          v96 = (v33 + *v33);
          v48 = v33;
          v49 = v33[1];
          v50 = v35;
          v51 = v48[1];
          v52 = swift_task_alloc();
          *(v1 + 192) = v52;
          *v52 = v1;
          v52[1] = sub_1000901C0;
          v53 = *(v1 + 168);
          v54 = *(v1 + 24);

          return v96(v50);
        }

        __break(1u);
LABEL_39:
        swift_once();
LABEL_30:
        v69 = type metadata accessor for Logger();
        sub_100066000(v69, qword_100129988);
        v70 = v29;
        v71 = v0;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v99 = v97;
          *v74 = 136315394;
          v76 = [v70 zoneName];
          v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v70;
          v80 = v79;

          v81 = sub_100065658(v77, v80, &v99);
          v70 = v78;

          *(v74 + 4) = v81;
          *(v74 + 12) = 2112;
          v82 = v71;
          v83 = _swift_stdlib_bridgeErrorToNSError();
          *(v74 + 14) = v83;
          *v75 = v83;
          _os_log_impl(&_mh_execute_header, v72, v73, "Failed to delete zone %s: error: %@", v74, 0x16u);
          sub_100066C80(v75, &qword_1001287F0, &qword_1000E6C40);

          sub_10005D588(v97);
        }

        v84 = *(**(v1 + 24) + 328);
        v98 = (v84 + *v84);
        v85 = v84[1];
        v86 = swift_task_alloc();
        *(v1 + 240) = v86;
        *v86 = v1;
        v86[1] = sub_1000907FC;
        v87 = *(v1 + 24);

        return v98(v70, v71);
      }
    }

    v55 = *(v1 + 144);
    v56 = *(v1 + 16);

    v57 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter();
    *(v1 + 200) = v57;
    v58 = *(v57 + 32);
    *(v1 + 253) = v58;
    v59 = -1;
    v60 = -1 << v58;
    if (-(-1 << v58) < 64)
    {
      v59 = ~(-1 << -(-1 << v58));
    }

    v61 = v59 & *(v57 + 64);
    if (v61)
    {
      v62 = 0;
LABEL_29:
      *(v1 + 208) = v61;
      *(v1 + 216) = v62;
      v65 = (v62 << 9) | (8 * __clz(__rbit64(v61)));
      v66 = *(*(v57 + 48) + v65);
      *(v1 + 224) = v66;
      v67 = *(*(v57 + 56) + v65);
      *(v1 + 232) = v67;
      v68 = qword_100129980;
      v29 = v66;
      v0 = v67;
      if (v68 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }

    v63 = 0;
    v64 = ((63 - v60) >> 6) - 1;
    while (v64 != v63)
    {
      v62 = v63 + 1;
      v61 = *(v57 + 8 * v63++ + 72);
      if (v61)
      {
        goto LABEL_29;
      }
    }

    v88 = *(v1 + 56);
    v89 = *(v1 + 64);
    v90 = *(v1 + 48);

    v91 = *(v1 + 8);

    return v91();
  }

  else
  {
    v37 = *(v1 + 96);
    v38 = *(v1 + 64);
    v39 = *(v1 + 32);
    v40 = *(v1 + 72) + ((*(v1 + 248) + 32) & ~*(v1 + 248)) + *(v1 + 88) * v27;
    v41 = (*(v1 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v1 + 104) = v27;
    *(v1 + 112) = v41;
    v37(v38, v40, v39);
    v42 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.error.getter();
    *(v1 + 120) = v42;
    v43 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.zone.getter();
    v44 = [v43 zoneID];
    *(v1 + 128) = v44;

    v45 = swift_task_alloc();
    *(v1 + 136) = v45;
    *v45 = v1;
    v45[1] = sub_10008F734;
    v46 = *(v1 + 24);

    return sub_10007EEB0(v42, v44);
  }
}

uint64_t sub_1000901C0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000902D0, v2, 0);
}

uint64_t sub_1000902D0()
{
  v56 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 16);

    v5 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter();
    *(v0 + 200) = v5;
    v6 = *(v5 + 32);
    *(v0 + 253) = v6;
    v7 = -1;
    v8 = -1 << v6;
    if (-(-1 << v6) < 64)
    {
      v7 = ~(-1 << -(-1 << v6));
    }

    v9 = v7 & *(v5 + 64);
    if (v9)
    {
      v10 = 0;
LABEL_11:
      *(v0 + 208) = v9;
      *(v0 + 216) = v10;
      v16 = (v10 << 9) | (8 * __clz(__rbit64(v9)));
      v17 = *(*(v5 + 48) + v16);
      *(v0 + 224) = v17;
      v18 = *(*(v5 + 56) + v16);
      *(v0 + 232) = v18;
      v19 = qword_100129980;
      v20 = v17;
      v21 = v18;
      if (v19 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100066000(v22, qword_100129988);
      v23 = v20;
      v24 = v21;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v55 = v52;
        *v27 = 136315394;
        v29 = [v23 zoneName];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v23;
        v33 = v32;

        v34 = sub_100065658(v30, v33, &v55);
        v23 = v31;

        *(v27 + 4) = v34;
        *(v27 + 12) = 2112;
        v35 = v24;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v36;
        *v28 = v36;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to delete zone %s: error: %@", v27, 0x16u);
        sub_100066C80(v28, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v52);
      }

      v37 = *(**(v0 + 24) + 328);
      v53 = (v37 + *v37);
      v38 = v37[1];
      v39 = swift_task_alloc();
      *(v0 + 240) = v39;
      *v39 = v0;
      v39[1] = sub_1000907FC;
      v40 = *(v0 + 24);

      return v53(v23, v24);
    }

    else
    {
      v14 = 0;
      v15 = ((63 - v8) >> 6) - 1;
      while (v15 != v14)
      {
        v10 = v14 + 1;
        v9 = *(v5 + 8 * v14++ + 72);
        if (v9)
        {
          goto LABEL_11;
        }
      }

      v48 = *(v0 + 56);
      v49 = *(v0 + 64);
      v50 = *(v0 + 48);

      v51 = *(v0 + 8);

      return v51();
    }
  }

  else
  {
    v11 = *(v0 + 176) + 1;
    *(v0 + 176) = v11;
    v12 = *(v0 + 144);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
    }

    v42 = v13;
    *(v0 + 184) = v13;
    v43 = *(v0 + 168);
    v54 = (*(v0 + 160) + **(v0 + 160));
    v44 = *(*(v0 + 160) + 4);
    v45 = swift_task_alloc();
    *(v0 + 192) = v45;
    *v45 = v0;
    v45[1] = sub_1000901C0;
    v46 = *(v0 + 168);
    v47 = *(v0 + 24);

    return v54(v42);
  }
}

uint64_t sub_1000907FC()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10009090C, v2, 0);
}

uint64_t sub_10009090C()
{
  v38 = v1;
  v2 = *(v1 + 224);

  v3 = *(v1 + 216);
  v4 = (*(v1 + 208) - 1) & *(v1 + 208);
  if (v4)
  {
    v5 = *(v1 + 200);
LABEL_7:
    *(v1 + 208) = v4;
    *(v1 + 216) = v3;
    v7 = (v3 << 9) | (8 * __clz(__rbit64(v4)));
    v8 = *(*(v5 + 48) + v7);
    *(v1 + 224) = v8;
    v9 = *(*(v5 + 56) + v7);
    *(v1 + 232) = v9;
    v10 = qword_100129980;
    v2 = v8;
    v0 = v9;
    if (v10 != -1)
    {
LABEL_17:
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100066000(v11, qword_100129988);
    v12 = v2;
    v13 = v0;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v16 = 136315394;
      v18 = [v12 zoneName];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v12;
      v22 = v21;

      v23 = sub_100065658(v19, v22, &v37);
      v12 = v20;

      *(v16 + 4) = v23;
      *(v16 + 12) = 2112;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v25;
      *v17 = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to delete zone %s: error: %@", v16, 0x16u);
      sub_100066C80(v17, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v35);
    }

    v26 = *(**(v1 + 24) + 328);
    v36 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    *(v1 + 240) = v28;
    *v28 = v1;
    v28[1] = sub_1000907FC;
    v29 = *(v1 + 24);

    return v36(v12, v13);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(v1 + 200);
      if (v6 >= (((1 << *(v1 + 253)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v31 = *(v1 + 56);
    v32 = *(v1 + 64);
    v33 = *(v1 + 48);

    v34 = *(v1 + 8);

    return v34();
  }
}

uint64_t sub_100090CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for CKSyncEngine.SendChangesContext();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100090E78, v3, 0);
}

uint64_t sub_100090E78()
{
  v33 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_100129988);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315138;
    sub_100092BD4(&qword_100128540, 255, &type metadata accessor for CKSyncEngine.SendChangesContext);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100065658(v14, v16, &v32);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Returning next record change batch for context: %s", v12, 0xCu);
    sub_10005D588(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[11];
  v20 = v0[7];
  v19 = v0[8];
  v21 = v0[6];
  v22 = v0[3];
  v23 = v0[4];
  CKSyncEngine.SendChangesContext.options.getter();
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v20 + 8))(v19, v21);
  CKSyncEngine.state.getter();
  v24 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  v25 = swift_task_alloc();
  *(v25 + 16) = v18;
  v26 = sub_10009134C(sub_100093230, v25, v24);

  v27 = async function pointer to CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:recordProvider:)[1];
  v28 = swift_task_alloc();
  v0[15] = v28;
  *v28 = v0;
  v28[1] = sub_1000911A4;
  v29 = v0[5];
  v30 = v0[2];

  return CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:recordProvider:)(v30, v26, &unk_1000E6558, v29);
}

uint64_t sub_1000911A4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1000912B4, v2, 0);
}

uint64_t sub_1000912B4()
{
  v1 = v0[14];
  v2 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10009134C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v7 = *(*(v40 - 8) + 64);
  v8 = __chkstk_darwin(v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = _swiftEmptyArrayStorage;
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10009265C(0, v24[2] + 1, 1);
          v24 = v41;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_10009265C(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        v24[2] = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_10009161C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 288);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10007FAFC;

  return v8(a1);
}

uint64_t sub_100091748(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000625FC;

  return sub_10007FBF8(a1, a2);
}

uint64_t sub_1000917EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100067294;

  return sub_100090CFC(a1, a2, a3);
}

uint64_t sub_10009189C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for MACloudSyncedDatabase();
  *v11 = v5;
  v11[1] = sub_100067294;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(a1, a2, a3, v12, a5);
}

uint64_t sub_100091968(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100093B24;

  return (sub_100093060)(a1);
}

uint64_t sub_100091A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for MACloudSyncedDatabase();
  *v11 = v5;
  v11[1] = sub_100093B24;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, v12, a5);
}

uint64_t sub_100091AE8(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128758, 255, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100091B58(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128758, 255, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100091BC8(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100091C38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100091C64(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100091CD4(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100091D44(void *a1, uint64_t a2)
{
  v4 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100091DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100091E90(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100091F00(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100091F70(void *a1, uint64_t a2)
{
  v4 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100092004(uint64_t a1, uint64_t a2)
{
  v4 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100092084()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000920E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100092180(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128790, 255, type metadata accessor for CKUnderlyingError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000921F0(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128790, 255, type metadata accessor for CKUnderlyingError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100092260(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000922D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

size_t sub_100092358(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005F5CC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100092534(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

size_t sub_10009265C(size_t a1, int64_t a2, char a3)
{
  result = sub_10009267C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10009267C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005F5CC(&qword_1001284E8, &qword_1000E64E8);
  v10 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100092854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 112) = a1;
  *(v3 + 128) = a2;
  v6 = objc_allocWithZone(NSUserDefaults);

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithSuiteName:v7];

  if (v8 && (v9 = v8, v10 = String._bridgeToObjectiveC()(), v11 = [v9 BOOLForKey:v10], v9, v10, v11))
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100066000(v12, qword_100129988);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Using sandbox environment for CKContainer", v15, 2u);
    }

    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = objc_allocWithZone(CKContainerID);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithContainerIdentifier:v18 environment:v16];

  v20 = [objc_allocWithZone(CKContainer) initWithContainerID:v19];
  *(v3 + 120) = v20;
  *(v3 + 136) = 1;
  return v3;
}

unint64_t sub_100092A98()
{
  result = qword_100128810;
  if (!qword_100128810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128810);
  }

  return result;
}

uint64_t sub_100092B40()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000625FC;

  return sub_1000699AC(v3, v4, v5, v2);
}

uint64_t sub_100092BD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100092C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_100128470, &qword_1000E6408);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100092C8C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100092CD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092D0C()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (([v1 isFinished] & 1) == 0 && (objc_msgSend(v1, "isCancelled") & 1) == 0)
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100066000(v2, qword_100129988);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "cancel %@ operation because timeout", v6, 0xCu);
      sub_100066C80(v7, &qword_1001287F0, &qword_1000E6C40);
    }

    [v3 cancel];
  }
}

uint64_t sub_100092EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100092F08()
{
  result = qword_1001284D8;
  if (!qword_1001284D8)
  {
    sub_100060420(&qword_1001284D0, &qword_1000E64D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001284D8);
  }

  return result;
}

uint64_t sub_100092F7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100092FE0(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100093080()
{
  v1 = *(v0 + 16);
  v2 = CKRecordZoneID.validForPlatform.getter();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 16);
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v2;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "Handling shouldFetchChanges %@, return: %{BOOL}d", v9, 0x12u);
    sub_100066C80(v10, &qword_1001287F0, &qword_1000E6C40);
  }

  v12 = *(v0 + 8);

  return v12(v2);
}

uint64_t sub_100093260(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007FAFC;

  return sub_10009161C(a1, v1);
}

unint64_t sub_1000935BC()
{
  result = qword_100128780;
  if (!qword_100128780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128780);
  }

  return result;
}

void sub_1000937EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10009391C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_100093928(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100093934(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100093940(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_100092C8C(0, &qword_1001284B8, CKRecordZoneID_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1000939A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005F5CC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100093A10()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100093A48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000625FC;

  return sub_10006535C(a1, v5);
}

uint64_t sub_100093B4C()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012A3A8);
  sub_100066000(v0, qword_10012A3A8);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0xD000000000000011, 0x80000001000F13B0);
}

uint64_t sub_100093BCC()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_100093C10()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100093C40(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_100093C98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_100093CC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_100093D20()
{
  if (v0[34])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[33])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[32] | v1;
}

uint64_t sub_100093D50(uint64_t result)
{
  v1[32] = result;
  v1[33] = BYTE1(result) & 1;
  v1[34] = BYTE2(result) & 1;
  return result;
}

uint64_t sub_100093D88()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_100093DB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_100093E10()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_100093E40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_100093E98()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_100093EC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t sub_100093F20()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t sub_100093F50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_100093FB4()
{
  v1 = *(v0 + 120);
  sub_100093FE8(v1, *(v0 + 128));
  return v1;
}

uint64_t sub_100093FE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005F304(a1, a2);
  }

  return a1;
}

uint64_t sub_100093FFC(uint64_t a1, uint64_t a2)
{
  result = sub_10005F69C(*(v2 + 120), *(v2 + 128));
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t sub_100094054()
{
  v1 = *(v0 + 136);
  sub_10005F304(v1, *(v0 + 144));
  return v1;
}

uint64_t sub_100094098()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t sub_1000940C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 176);

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t type metadata accessor for MACloudMAAsset()
{
  result = qword_10012A5C0;
  if (!qword_10012A5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000941B4(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset() + 68);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000941F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000942F8(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset() + 72);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094384()
{
  v1 = (v0 + *(type metadata accessor for MACloudMAAsset() + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1000943C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset() + 76));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094454()
{
  v1 = (v0 + *(type metadata accessor for MACloudMAAsset() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_100094494(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset() + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094524()
{
  v1 = (v0 + *(type metadata accessor for MACloudMAAsset() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_100094564(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset() + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094618(uint64_t a1)
{
  result = type metadata accessor for MACloudMAAsset();
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t sub_100094690()
{
  v1 = (v0 + *(type metadata accessor for MACloudMAAsset() + 92));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1000946D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset() + 92));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094784()
{
  v1 = v0 + *(type metadata accessor for MACloudMAAsset() + 100);
  v2 = *v1;
  sub_100093FE8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1000947C8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MACloudMAAsset() + 100);
  result = sub_10005F69C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_100094858()
{
  v1 = v0 + *(type metadata accessor for MACloudMAAsset() + 104);
  v2 = *v1;
  sub_100093FE8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_10009489C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MACloudMAAsset() + 104);
  result = sub_10005F69C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_10009492C()
{
  v1 = (v0 + *(type metadata accessor for MACloudMAAsset() + 108));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_10009496C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset() + 108));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094A44(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset() + 112);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094B18(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset() + 116);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094BF0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset() + 120);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100094D30(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset() + 124);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 120) = xmmword_1000E6BC0;
  v50 = type metadata accessor for MACloudMAAsset();
  v51 = a9 + v50[17];
  v52 = type metadata accessor for Date();
  v53 = *(*(v52 - 8) + 56);
  v68 = v51;
  (v53)(v51, 1, 1, v52);
  v64 = a9 + v50[18];
  v53();
  v54 = a9 + v50[25];
  *v54 = xmmword_1000E6BC0;
  v55 = a9 + v50[26];
  *v55 = xmmword_1000E6BC0;
  v69 = a9 + v50[28];
  v53();
  v67 = a9 + v50[29];
  v53();
  v66 = a9 + v50[30];
  v53();
  v65 = a9 + v50[31];
  v53();
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  if (a4)
  {
    v56 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v56 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      *(a9 + 16) = a3;
      *(a9 + 24) = a4;
    }

    else
    {
    }
  }

  v57 = (a9 + v50[19]);
  v58 = (a9 + v50[20]);
  v59 = v50[22];
  v60 = (a9 + v50[21]);
  v61 = (a9 + v50[23]);
  v62 = (a9 + v50[27]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 32) = a5;
  *(a9 + 33) = BYTE1(a5) & 1;
  *(a9 + 34) = BYTE2(a5) & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a16;
  sub_10005F69C(*(a9 + 120), *(a9 + 128));
  *(a9 + 120) = a17;
  *(a9 + 128) = a18;
  *(a9 + 136) = a19;
  *(a9 + 144) = a20;
  *(a9 + 152) = a21;
  *(a9 + 160) = a22;
  *(a9 + 168) = a23;
  *(a9 + 176) = a24;
  sub_1000941F8(a25, v68);
  sub_1000941F8(a26, v64);
  *v57 = a27;
  v57[1] = a28;
  *v58 = a29;
  v58[1] = a30;
  *v60 = a31;
  v60[1] = a32;
  *(a9 + v50[24]) = a33;
  *v61 = a34;
  v61[1] = a35;
  *(a9 + v59) = a36;
  sub_10005F69C(*v54, *(v54 + 8));
  *v54 = a37;
  *(v54 + 8) = a38;
  sub_10005F69C(*v55, *(v55 + 8));
  *v55 = a39;
  *(v55 + 8) = a40;
  *v62 = a41;
  v62[1] = a42;
  sub_1000941F8(a43, v69);
  sub_1000941F8(a44, v67);
  sub_1000941F8(a45, v66);

  return sub_1000941F8(a46, v65);
}

BOOL sub_1000951B4(void *a1, int a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v63 - v12;
  v14 = sub_10005F5CC(&qword_1001287D8, &qword_1000E6C38);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v63 - v16;
  v18 = *(v2 + 136);
  v19 = *(v2 + 144);
  v66 = v2;
  if ((sub_1000AF4B8(v18, v19, a1[17], a1[18]) & 1) == 0 || *(v66 + 160) != a1[20])
  {
    return 0;
  }

  v65 = a2;
  v64 = type metadata accessor for MACloudMAAsset();
  v20 = v6;
  v21 = *(v64 + 72);
  v22 = *(v14 + 48);
  sub_1000939A8(v66 + v21, v17, &qword_1001287D0, &qword_1000E6C30);
  v63 = a1;
  sub_1000939A8(a1 + v21, &v17[v22], &qword_1001287D0, &qword_1000E6C30);
  v23 = *(v20 + 48);
  if (v23(v17, 1, v5) == 1)
  {
    if (v23(&v17[v22], 1, v5) == 1)
    {
      sub_100066C80(v17, &qword_1001287D0, &qword_1000E6C30);
      goto LABEL_11;
    }

LABEL_8:
    sub_100066C80(v17, &qword_1001287D8, &qword_1000E6C38);
    return 0;
  }

  sub_1000939A8(v17, v13, &qword_1001287D0, &qword_1000E6C30);
  if (v23(&v17[v22], 1, v5) == 1)
  {
    (*(v20 + 8))(v13, v5);
    goto LABEL_8;
  }

  (*(v20 + 32))(v9, &v17[v22], v5);
  sub_1000AF620(&unk_1001287E0, 255, &type metadata accessor for Date);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v20 + 8);
  v26(v9, v5);
  v26(v13, v5);
  sub_100066C80(v17, &qword_1001287D0, &qword_1000E6C30);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v27 = v63;
  v28 = v64;
  v29 = *(v64 + 76);
  v30 = (v66 + v29);
  v31 = *(v66 + v29 + 8);
  v32 = (v63 + v29);
  v33 = v32[1];
  if (v31)
  {
    v34 = v65;
    if (!v33 || (*v30 != *v32 || v31 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = v65;
    if (v33)
    {
      return 0;
    }
  }

  v35 = v28[20];
  v36 = (v66 + v35);
  v37 = *(v66 + v35 + 8);
  v38 = (v27 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = v28[21];
  v41 = (v66 + v40);
  v42 = *(v66 + v40 + 8);
  v43 = (v27 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  if (*(v66 + v28[24]) != *(v27 + v28[24]))
  {
    return 0;
  }

  if ((v34 & 1) == 0)
  {
    if (*(v66 + v28[22]) != *(v27 + v28[22]))
    {
      return 0;
    }

    v45 = v28[25];
    v46 = v66 + v45;
    v48 = *(v66 + v45);
    v47 = *(v66 + v45 + 8);
    v49 = (v27 + v45);
    v51 = *v49;
    v50 = v49[1];
    if (v47 >> 60 == 15)
    {
      if (v50 >> 60 == 15)
      {
        sub_100093FE8(*v46, *(v46 + 8));
        sub_100093FE8(v51, v50);
        sub_10005F69C(v48, v47);
LABEL_42:
        v55 = v28[26];
        v56 = v66 + v55;
        v58 = *(v66 + v55);
        v57 = *(v66 + v55 + 8);
        v59 = (v27 + v55);
        v61 = *v59;
        v60 = v59[1];
        if (v57 >> 60 == 15)
        {
          if (v60 >> 60 == 15)
          {
            sub_100093FE8(*v56, *(v56 + 8));
            sub_100093FE8(v61, v60);
            sub_10005F69C(v58, v57);
            return 1;
          }

          goto LABEL_46;
        }

        if (v60 >> 60 == 15)
        {
LABEL_46:
          sub_100093FE8(*v56, *(v56 + 8));
          sub_100093FE8(v61, v60);
          sub_10005F69C(v58, v57);
          v52 = v61;
          v53 = v60;
          goto LABEL_47;
        }

        sub_100093FE8(*v56, *(v56 + 8));
        sub_100093FE8(v61, v60);
        v62 = sub_1000AF4B8(v58, v57, v61, v60);
        sub_10005F69C(v61, v60);
        sub_10005F69C(v58, v57);
        return (v62 & 1) != 0;
      }
    }

    else if (v50 >> 60 != 15)
    {
      sub_100093FE8(*v46, *(v46 + 8));
      sub_100093FE8(v51, v50);
      v54 = sub_1000AF4B8(v48, v47, v51, v50);
      sub_10005F69C(v51, v50);
      sub_10005F69C(v48, v47);
      if ((v54 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_42;
    }

    sub_100093FE8(*v46, *(v46 + 8));
    sub_100093FE8(v51, v50);
    sub_10005F69C(v48, v47);
    v52 = v51;
    v53 = v50;
LABEL_47:
    sub_10005F69C(v52, v53);
    return 0;
  }

  return 1;
}

uint64_t sub_100096018(uint64_t a1)
{
  v2 = (v1 + *(a1 + 108));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_100096050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 108));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_100096090(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 108);
  return result;
}

uint64_t sub_100096120@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a3;
  v5 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v146 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v145 = &v109 - v10;
  v11 = __chkstk_darwin(v9);
  v144 = &v109 - v12;
  v13 = __chkstk_darwin(v11);
  v143 = &v109 - v14;
  v15 = __chkstk_darwin(v13);
  v142 = &v109 - v16;
  __chkstk_darwin(v15);
  v141 = &v109 - v17;
  v18 = type metadata accessor for URL();
  v139 = *(v18 - 8);
  v19 = *(v139 + 64);
  __chkstk_darwin(v18);
  v21 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 assetMetadata];
  v23 = [v22 ckrecordIdentifier];

  if (v23)
  {
    v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v148 = v24;
  }

  else
  {
    v140 = 0;
    v148 = 0xE000000000000000;
  }

  *&v151 = [a1 assetMetadata];
  v25 = [a1 assetHandle];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = [a2 assetPath:v25];

  v27 = v26;
  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100066000(v30, qword_10012A3A8);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  v33 = os_log_type_enabled(v31, v32);
  v149 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v153 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_100065658(v147, v29, &v153);
    _os_log_impl(&_mh_execute_header, v31, v32, "assetPath = %s", v34, 0xCu);
    sub_10005D588(v35);
  }

  v36 = [objc_opt_self() defaultManager];
  v153 = 0;
  v37 = [v36 attributesOfItemAtPath:v27 error:&v153];

  v38 = v153;
  if (!v37)
  {
    v51 = v153;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v151;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      swift_errorRetain();
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v58;
      *v57 = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to get asset file attributes, or calculate asset hash %@", v56, 0xCu);
      sub_100066C80(v57, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {
    }

LABEL_24:
    v59 = type metadata accessor for MACloudMAAsset();
    return (*(*(v59 - 8) + 56))(v150, 1, 1, v59);
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1000AF620(&qword_1001287F8, 255, type metadata accessor for FileAttributeKey);
  v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v38;

  if (!*(v39 + 16) || (v41 = sub_1000AE2CC(NSFileSize), (v42 & 1) == 0))
  {

LABEL_18:

    v45 = v149;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v151;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to get asset file size", v50, 2u);
    }

    goto LABEL_24;
  }

  sub_100066130(*(v39 + 56) + 32 * v41, &v153);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v43 = v152;
  v44 = sub_10005D098();
  v137 = static MADigest.hash(fileAtPath:hashType:)(v147, v29, v44);
  v138 = v61;
  v136 = v43;
  if (v43 > 0x10000 || (sub_1000C616C([v151 type]) & 1) != 0)
  {
    v135 = 0;
    v134 = 0xF000000000000000;
  }

  else
  {
    URL.init(fileURLWithPath:)();
    v107 = Data.init(contentsOf:options:)();
    v134 = v108;
    v135 = v107;
    (*(v139 + 8))(v21, v18);
  }

  LODWORD(v139) = sub_1000C182C(0, 0, 0);
  v62 = [a1 assetHandle];
  v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v131 = v63;

  v64 = v151;
  v133 = [v151 type];
  v65 = [v64 label];
  if (v65)
  {
    v66 = v65;
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v67;
  }

  else
  {
    v130 = 0;
    v129 = 0;
  }

  v68 = [v64 creationTime];
  v69 = v141;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v70 = type metadata accessor for Date();
  v71 = *(*(v70 - 8) + 56);
  v71(v69, 0, 1, v70);
  v72 = [v64 lastUpdatedTime];
  v73 = v142;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v71(v73, 0, 1, v70);
  v74 = [v64 lastUpdatedOSVersion];
  v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v75;

  v76 = [v64 lastUpdatedAlgorithmVersion];
  if (v76)
  {
    v77 = v76;
    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v78;
  }

  else
  {
    v126 = 0;
    v125 = 0;
  }

  v79 = [v64 enrollmentIdentifier];
  if (v79)
  {
    v80 = v79;
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v81;
  }

  else
  {
    v124 = 0;
    v123 = 0;
  }

  v82 = [a1 assetOwner];
  v122 = [v82 profileType];

  v83 = [a1 assetProcess];
  v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = v84;

  v119 = sub_1000BF344([v64 syncOption]);
  v71(v143, 1, 1, v70);
  v71(v144, 1, 1, v70);
  v71(v145, 1, 1, v70);
  v71(v146, 1, 1, v70);
  v85 = v150;
  *(v150 + 16) = 0;
  *(v85 + 24) = 0;
  v151 = xmmword_1000E6BC0;
  *(v85 + 120) = xmmword_1000E6BC0;
  v86 = type metadata accessor for MACloudMAAsset();
  v115 = v86[17];
  v71(v85 + v115, 1, 1, v70);
  v112 = v86[18];
  v71(v85 + v112, 1, 1, v70);
  v87 = (v85 + v86[19]);
  v111 = (v85 + v86[20]);
  v88 = v86[21];
  v114 = v86[22];
  v89 = (v85 + v88);
  v110 = (v85 + v86[23]);
  v90 = v85 + v86[25];
  v91 = v151;
  *v90 = v151;
  v92 = v85 + v86[26];
  *v92 = v91;
  v93 = v86[27];
  v149 = v86[28];
  v117 = (v85 + v93);
  v71(v149 + v85, 1, 1, v70);
  v118 = v86[29];
  v71(v85 + v118, 1, 1, v70);
  v116 = v86[30];
  v71(v85 + v116, 1, 1, v70);
  v113 = v86[31];
  v71(v85 + v113, 1, 1, v70);
  v94 = v131;
  *(v85 + 40) = v132;
  *(v85 + 48) = v94;
  v95 = v148;
  *v85 = v140;
  *(v85 + 8) = v95;
  LODWORD(v95) = v139;
  *(v85 + 32) = v139;
  *(v85 + 33) = BYTE1(v95) & 1;
  *(v85 + 34) = BYTE2(v95) & 1;
  *(v85 + 56) = 0;
  *(v85 + 64) = 0;
  *(v85 + 72) = v147;
  *(v85 + 80) = v29;
  *(v85 + 88) = 0u;
  *(v85 + 104) = 0u;
  sub_10005F69C(*(v85 + 120), *(v85 + 128));
  v96 = v134;
  *(v85 + 120) = v135;
  *(v85 + 128) = v96;
  v97 = v138;
  *(v85 + 136) = v137;
  *(v85 + 144) = v97;
  v98 = v133;
  *(v85 + 152) = v136;
  *(v85 + 160) = v98;
  v99 = v129;
  *(v85 + 168) = v130;
  *(v85 + 176) = v99;
  sub_1000941F8(v141, v85 + v115);
  sub_1000941F8(v142, v85 + v112);
  v100 = v127;
  *v87 = v128;
  v87[1] = v100;
  v101 = v111;
  v102 = v125;
  *v111 = v126;
  v101[1] = v102;
  v103 = v123;
  *v89 = v124;
  v89[1] = v103;
  *(v85 + v86[24]) = v122;
  v104 = v110;
  v105 = v120;
  *v110 = v121;
  v104[1] = v105;
  *(v85 + v114) = v119;
  sub_10005F69C(*v90, *(v90 + 8));
  *v90 = v151;
  sub_10005F69C(*v92, *(v92 + 8));
  *v92 = v151;
  v106 = v117;
  *v117 = 0;
  v106[1] = 0;
  sub_1000941F8(v143, v149 + v85);
  sub_1000941F8(v144, v85 + v118);
  sub_1000941F8(v145, v85 + v116);
  sub_1000941F8(v146, v85 + v113);
  return (*(*(v86 - 1) + 56))(v85, 0, 1, v86);
}

double sub_10009705C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100065A98(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100066130(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

id sub_1000970C0()
{
  v1 = v0;
  v81 = type metadata accessor for MACloudMAAsset();
  v2 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v82 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v79 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v80 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v79 - v16;
  v18 = sub_1000AF6B8(_swiftEmptyArrayStorage);
  *&v85 = 0x657079745FLL;
  *(&v85 + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v19 = v1[20];
  v86 = &type metadata for UInt;
  *&v85 = v19;
  sub_1000AF7F4(&v85, v84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = v18;
  sub_1000AED34(v84, v87, isUniquelyReferenced_nonNull_native);
  sub_1000AF804(v87);
  v21 = v83;
  v22 = v1[22];
  if (v22)
  {
    v23 = v1[21];
    *&v85 = 0x6C6562616C5FLL;
    *(&v85 + 1) = 0xE600000000000000;

    AnyHashable.init<A>(_:)();
    v86 = &type metadata for String;
    *&v85 = v23;
    *(&v85 + 1) = v22;
    sub_1000AF7F4(&v85, v84);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v21;
    sub_1000AED34(v84, v87, v24);
    sub_1000AF804(v87);
    v21 = v83;
  }

  v25 = v81;
  sub_1000939A8(v1 + *(v81 + 68), v10, &qword_1001287D0, &qword_1000E6C30);
  v26 = *(v12 + 48);
  if (v26(v10, 1, v11) == 1)
  {
    sub_100066C80(v10, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    strcpy(&v85, "_creationTime");
    HIWORD(v85) = -4864;
    AnyHashable.init<A>(_:)();
    v86 = v11;
    v27 = sub_10005D4D0(&v85);
    (*(v12 + 16))(v27, v17, v11);
    sub_1000AF7F4(&v85, v84);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v21;
    sub_1000AED34(v84, v87, v28);
    sub_1000AF804(v87);
    (*(v12 + 8))(v17, v11);
    v21 = v83;
  }

  sub_1000939A8(v1 + v25[18], v8, &qword_1001287D0, &qword_1000E6C30);
  v29 = v26(v8, 1, v11);
  v30 = v82;
  if (v29 == 1)
  {
    sub_100066C80(v8, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v31 = v80;
    (*(v12 + 32))(v80, v8, v11);
    *&v85 = 0xD000000000000010;
    *(&v85 + 1) = 0x80000001000F1180;
    AnyHashable.init<A>(_:)();
    v86 = v11;
    v32 = sub_10005D4D0(&v85);
    (*(v12 + 16))(v32, v31, v11);
    sub_1000AF7F4(&v85, v84);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v21;
    sub_1000AED34(v84, v87, v33);
    sub_1000AF804(v87);
    (*(v12 + 8))(v31, v11);
    v21 = v83;
  }

  v34 = (v1 + v25[19]);
  v35 = v34[1];
  if (v35)
  {
    v36 = *v34;
    *&v85 = 0xD000000000000015;
    *(&v85 + 1) = 0x80000001000F1160;

    AnyHashable.init<A>(_:)();
    v86 = &type metadata for String;
    *&v85 = v36;
    *(&v85 + 1) = v35;
    sub_1000AF7F4(&v85, v84);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v21;
    sub_1000AED34(v84, v87, v37);
    sub_1000AF804(v87);
    v21 = v83;
  }

  v38 = (v1 + v25[20]);
  v39 = v38[1];
  if (v39)
  {
    v40 = *v38;
    *&v85 = 0xD00000000000001CLL;
    *(&v85 + 1) = 0x80000001000F1140;

    AnyHashable.init<A>(_:)();
    v86 = &type metadata for String;
    *&v85 = v40;
    *(&v85 + 1) = v39;
    sub_1000AF7F4(&v85, v84);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v21;
    sub_1000AED34(v84, v87, v41);
    sub_1000AF804(v87);
    v21 = v83;
  }

  *&v85 = 0xD000000000000013;
  *(&v85 + 1) = 0x80000001000F1100;
  AnyHashable.init<A>(_:)();
  v42 = *v1;
  v43 = v1[1];
  v86 = &type metadata for String;
  *&v85 = v42;
  *(&v85 + 1) = v43;
  sub_1000AF7F4(&v85, v84);

  v44 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v21;
  sub_1000AED34(v84, v87, v44);
  sub_1000AF804(v87);
  v45 = v83;
  strcpy(&v85, "_syncOption");
  HIDWORD(v85) = -352321536;
  AnyHashable.init<A>(_:)();
  v46 = *(v1 + v25[22]);
  v47 = sub_1000BF33C();
  v86 = &type metadata for UInt;
  *&v85 = v47 & v46;
  sub_1000AF7F4(&v85, v84);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v45;
  sub_1000AED34(v84, v87, v48);
  sub_1000AF804(v87);
  v49 = v83;
  strcpy(&v85, "_assetState");
  HIDWORD(v85) = -352321536;
  AnyHashable.init<A>(_:)();
  v86 = &type metadata for UInt;
  *&v85 = 32;
  sub_1000AF7F4(&v85, v84);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v49;
  sub_1000AED34(v84, v87, v50);
  sub_1000AF804(v87);
  v51 = v83;
  v52 = (v1 + v25[21]);
  v53 = v52[1];
  if (v53)
  {
    v54 = *v52;
    *&v85 = 0xD000000000000015;
    *(&v85 + 1) = 0x80000001000F1120;

    AnyHashable.init<A>(_:)();
    v86 = &type metadata for String;
    *&v85 = v54;
    *(&v85 + 1) = v53;
    sub_1000AF7F4(&v85, v84);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v51;
    sub_1000AED34(v84, v87, v55);
    sub_1000AF804(v87);
  }

  v56 = objc_allocWithZone(MASDAssetMetadata);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v58 = [v56 initAssetMetadataWithInfoDictionary:isa];

  v59 = [objc_allocWithZone(MASDAsset) init];
  [v59 setAssetMetadata:v58];
  if (*(v1 + v25[24]) == -1)
  {
  }

  else
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100066000(v60, qword_10012A3A8);
    sub_1000AF858(v1, v30);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134217984;
      v64 = *(v30 + v25[24]);
      sub_1000AF8BC(v30);
      *(v63 + 4) = v64;

      _os_log_impl(&_mh_execute_header, v61, v62, "expect only default profile, not type %lu", v63, 0xCu);
    }

    else
    {
      sub_1000AF8BC(v30);
    }
  }

  v65 = [objc_allocWithZone(MASDUserProfile) initNewProfileWith:0 name:kMASDDefaultLocalUser type:-1];
  [v59 setAssetOwner:v65];

  v66 = (v1 + v25[23]);
  if (v66[1])
  {
    v67 = *v66;
    v68 = v66[1];
  }

  else
  {
    v67 = 0;
    v68 = 0xE000000000000000;
  }

  swift_bridgeObjectRetain_n();
  v69._countAndFlagsBits = 0x756F6C436D6F7266;
  v69._object = 0xEA00000000003A64;
  v70 = String.hasPrefix(_:)(v69);

  if (!v70)
  {
    v87[0] = 0x756F6C436D6F7266;
    v87[1] = 0xEA00000000003A64;
    v71._countAndFlagsBits = v67;
    v71._object = v68;
    String.append(_:)(v71);
  }

  v72 = String._bridgeToObjectiveC()();

  [v59 setAssetProcess:v72];

  if (v1[6])
  {
    v73 = v1[5];
    v74 = String._bridgeToObjectiveC()();
    [v59 setAssetHandle:v74];
  }

  v75 = v1[16];
  if (v75 >> 60 == 15)
  {
  }

  else
  {
    v76 = v1[15];
    sub_10005F304(v76, v75);
    v77 = Data._bridgeToObjectiveC()().super.isa;
    [v59 setAssetData:v77];

    sub_10005F69C(v76, v75);
  }

  return v59;
}

void sub_100097C44()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = [objc_opt_self() defaultManager];
    v4 = String._bridgeToObjectiveC()();
    v26 = 0;
    v5 = [v3 removeItemAtPath:v4 error:&v26];

    if (v5)
    {
      v6 = qword_10012A3A0;
      v7 = v26;
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100066000(v8, qword_10012A3A8);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v26 = v12;
        *v11 = 136315138;
        v13 = sub_100065658(v2, v1, &v26);

        *(v11 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Removed sync down tmp asset file: %s", v11, 0xCu);
        sub_10005D588(v12);
      }

      else
      {
      }

      goto LABEL_19;
    }

    v17 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100066000(v18, qword_10012A3A8);

    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v20 = 136315394;
      v23 = sub_100065658(v2, v1, &v26);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&_mh_execute_header, v9, v19, "Failed to remove sync down assetPath %s, error: %@", v20, 0x16u);
      sub_100066C80(v21, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v22);

LABEL_19:

      return;
    }
  }

  else
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100066000(v14, qword_10012A3A8);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "No tmp asset file to drop", v16, 2u);
    }
  }
}

uint64_t sub_1000980EC@<X0>(uint64_t a1@<X8>)
{
  if (v1[12])
  {
    v3 = v1[11];
    v4 = v1[12];
  }

  else
  {
    v4 = v1[10];
    if (!v4)
    {
      if (qword_10012A3A0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100066000(v20, qword_10012A3A8);
      v15 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v15, v21))
      {
        goto LABEL_17;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v15, v21, "No assetPath to create CKAsset", v22, 2u);
      goto LABEL_16;
    }

    v3 = v1[9];
    v5 = v1[10];
  }

  v6 = objc_opt_self();

  v7 = [v6 defaultManager];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v10 fileURLWithPath:v11];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = 0;
    goto LABEL_18;
  }

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100066000(v14, qword_10012A3A8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = sub_100065658(v3, v4, &v26);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "assetPath %s to create CKAsset does not exist", v17, 0xCu);
    sub_10005D588(v18);

LABEL_16:

    goto LABEL_17;
  }

LABEL_17:

  v13 = 1;
LABEL_18:
  v23 = type metadata accessor for URL();
  v24 = *(*(v23 - 8) + 56);

  return v24(a1, v13, 1, v23);
}

uint64_t sub_100098440(void *a1)
{
  v2 = v1;
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v128 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v120 - v8;
  v10 = type metadata accessor for Date();
  v130 = *(v10 - 8);
  v131 = v10;
  v11 = *(v130 + 64);
  v12 = __chkstk_darwin(v10);
  v123 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v122 = &v120 - v14;
  v15 = sub_10005F5CC(&qword_100128800, &qword_1000E6C48);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v120 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v121 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for MACloudMAAsset();
  v23 = *(*(v132 - 1) + 64);
  v24 = __chkstk_darwin(v132);
  p_type = (&v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = &v120 - v27;
  v129 = v2[20];
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v125 = v20;
  v126 = v19;
  v127 = v9;
  v29 = type metadata accessor for Logger();
  v30 = sub_100066000(v29, qword_10012A3A8);
  sub_1000AF858(v2, v28);
  sub_1000AF858(v2, p_type);
  v124 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v31, v32))
  {
    sub_1000AF8BC(p_type);

    sub_1000AF8BC(v28);
    goto LABEL_8;
  }

  v120 = a1;
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v33 = 136315650;
  v133 = *(v28 + 20);
  v134 = v34;
  type metadata accessor for MASDAssetType(0);
  sub_1000AF620(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  v37 = v36;
  sub_1000AF8BC(v28);
  v38 = sub_100065658(v35, v37, &v134);

  *(v33 + 4) = v38;
  *(v33 + 6) = 2048;
  *(v33 + 14) = v129;
  *(v33 + 11) = 2048;
  v40 = p_type[16];
  if (v40 >> 60 == 15)
  {
    v41 = 0;
    a1 = v120;
  }

  else
  {
    v46 = p_type[15];
    v47 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      a1 = v120;
      if (v47 == 2)
      {
        v54 = (v46 + 16);
        v45 = *(v46 + 16);
        v53 = *(v54 + 1);
        v41 = v53 - v45;
        if (__OFSUB__(v53, v45))
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      a1 = v120;
      if (v47)
      {
        goto LABEL_27;
      }

      v41 = BYTE6(v40);
    }
  }

  while (1)
  {
    sub_1000AF8BC(p_type);
    *(v33 + 3) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "Populate CKRecord, asset type: %s - %lu, assetData size = %ld", v33, 0x20u);
    sub_10005D588(v34);

LABEL_8:
    v31 = v2[16];
    p_type = &stru_100124FF0.type;
    v33 = &type metadata for Data;
    v34 = &protocol witness table for Data;
    if (v31 >> 60 == 15)
    {
      sub_1000980EC(v18);
      v43 = v125;
      v42 = v126;
      if ((*(v125 + 48))(v18, 1, v126) == 1)
      {
        sub_100066C80(v18, &qword_100128800, &qword_1000E6C48);
        return 0;
      }

      v48 = v121;
      (*(v43 + 32))(v121, v18, v42);
      v49 = objc_allocWithZone(CKAsset);
      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      [v49 initWithFileURL:v51];

      CKRecord.subscript.setter();
      (*(v43 + 8))(v48, v42);
      v18 = v128;
      goto LABEL_35;
    }

    v32 = v2[15];
    sub_10005F304(v32, v2[16]);
    v41 = Logger.logObject.getter();
    LOBYTE(v28) = static os_log_type_t.info.getter();
    v44 = os_log_type_enabled(v41, v28);
    v18 = v128;
    if (!v44)
    {
      goto LABEL_34;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v45 = v31 >> 62;
    if ((v31 >> 62) <= 1)
    {
      break;
    }

LABEL_23:
    if (v45 != 2)
    {
      v46 = 0;
      goto LABEL_33;
    }

    v56 = *(v32 + 16);
    v55 = *(v32 + 24);
    v57 = __OFSUB__(v55, v56);
    v46 = v55 - v56;
    if (!v57)
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_27:
    v57 = __OFSUB__(HIDWORD(v46), v46);
    v58 = HIDWORD(v46) - v46;
    if (v57)
    {
      __break(1u);
      goto LABEL_59;
    }

    v41 = v58;
  }

  if (v45)
  {
    LODWORD(v46) = HIDWORD(v32) - v32;
    if (__OFSUB__(HIDWORD(v32), v32))
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v46 = v46;
  }

  else
  {
    v46 = BYTE6(v31);
  }

LABEL_33:
  *(result + 4) = v46;
  _os_log_impl(&_mh_execute_header, v41, v28, "populateCKRecord with small size asset, data size: %ld", result, 0xCu);

LABEL_34:

  v59 = [a1 p_type[251]];
  swift_getObjectType();
  v136 = v33;
  v137 = v34;
  v134 = v32;
  v135 = v31;
  sub_10005F304(v32, v31);
  CKRecordKeyValueSetting.subscript.setter();
  sub_10005F69C(v32, v31);
  swift_unknownObjectRelease();
LABEL_35:
  v60 = [a1 p_type[251]];
  swift_getObjectType();
  v136 = &type metadata for UInt;
  v137 = &protocol witness table for UInt;
  v134 = v129;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v61 = v2[22];
  if (v61)
  {
    v62 = v2[21];
    v63 = v2[22];

    v64 = [a1 p_type[251]];
    swift_getObjectType();
    v136 = &type metadata for String;
    v137 = &protocol witness table for String;
    v134 = v62;
    v135 = v61;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v65 = a1;
  v66 = v127;
  sub_1000939A8(v2 + v132[17], v127, &qword_1001287D0, &qword_1000E6C30);
  v68 = v130;
  v67 = v131;
  v69 = *(v130 + 48);
  if (v69(v66, 1, v131) == 1)
  {
    sub_100066C80(v66, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v70 = v122;
    (*(v68 + 32))(v122, v66, v67);
    v71 = [v65 p_type[251]];
    swift_getObjectType();
    v136 = v131;
    v137 = &protocol witness table for Date;
    v72 = sub_10005D4D0(&v134);
    (*(v130 + 16))(v72, v70, v131);
    v67 = v131;
    CKRecordKeyValueSetting.subscript.setter();
    v68 = v130;
    swift_unknownObjectRelease();
    (*(v68 + 8))(v70, v67);
  }

  sub_1000939A8(v2 + v132[18], v18, &qword_1001287D0, &qword_1000E6C30);
  if (v69(v18, 1, v67) == 1)
  {
    sub_100066C80(v18, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v73 = v18;
    v74 = v123;
    (*(v68 + 32))(v123, v73, v67);
    v75 = [v65 p_type[251]];
    swift_getObjectType();
    v136 = v67;
    v137 = &protocol witness table for Date;
    v76 = sub_10005D4D0(&v134);
    (*(v68 + 16))(v76, v74, v67);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v74, v67);
  }

  v77 = (v2 + v132[19]);
  v78 = v77[1];
  if (v78)
  {
    v79 = *v77;
    v80 = v77[1];

    v81 = [v65 p_type[251]];
    swift_getObjectType();
    v136 = &type metadata for String;
    v137 = &protocol witness table for String;
    v134 = v79;
    v135 = v78;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v82 = (v2 + v132[20]);
  v83 = v82[1];
  if (v83)
  {
    v84 = *v82;
    v85 = v82[1];

    v86 = [v65 p_type[251]];
    swift_getObjectType();
    v136 = &type metadata for String;
    v137 = &protocol witness table for String;
    v134 = v84;
    v135 = v83;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v87 = (v2 + v132[21]);
  v88 = v87[1];
  v89 = v65;
  if (v88)
  {
    v90 = *v87;
    v91 = v87[1];

    v92 = [v65 p_type[251]];
    swift_getObjectType();
    v136 = &type metadata for String;
    v137 = &protocol witness table for String;
    v134 = v90;
    v135 = v88;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v93 = [v65 p_type[251]];
  swift_getObjectType();
  v94 = v132;
  v95 = sub_1000BF320(*(v2 + v132[24]));
  v136 = &type metadata for UInt;
  v137 = &protocol witness table for UInt;
  v134 = v95;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v96 = (v2 + v94[23]);
  v97 = v96[1];
  if (v97)
  {
    v98 = *v96;
    v99 = v96[1];

    v100 = [v89 p_type[251]];
    swift_getObjectType();
    v136 = &type metadata for String;
    v137 = &protocol witness table for String;
    v134 = v98;
    v135 = v97;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v101 = [v89 p_type[251]];
  swift_getObjectType();
  v102 = v132;
  v103 = *(v2 + v132[22]);
  v136 = &type metadata for UInt;
  v137 = &protocol witness table for UInt;
  v134 = v103;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v104 = [v89 p_type[251]];
  swift_getObjectType();
  v105 = v2[17];
  v106 = v2[18];
  v136 = &type metadata for Data;
  v137 = &protocol witness table for Data;
  v134 = v105;
  v135 = v106;
  sub_10005F304(v105, v106);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v107 = [v89 p_type[251]];
  swift_getObjectType();
  v108 = v2[19];
  v136 = &type metadata for UInt64;
  v137 = &protocol witness table for UInt64;
  v134 = v108;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v109 = v2 + v102[25];
  v110 = *(v109 + 1);
  if (v110 >> 60 != 15)
  {
    v111 = *v109;
    sub_10005F304(*v109, *(v109 + 1));
    v112 = [v89 p_type[251]];
    swift_getObjectType();
    v136 = &type metadata for Data;
    v137 = &protocol witness table for Data;
    v134 = v111;
    v135 = v110;
    sub_10005F304(v111, v110);
    CKRecordKeyValueSetting.subscript.setter();
    sub_10005F69C(v111, v110);
    swift_unknownObjectRelease();
  }

  v113 = v2 + v132[26];
  v114 = *(v113 + 1);
  if (v114 >> 60 != 15)
  {
    v115 = *v113;
    sub_10005F304(*v113, *(v113 + 1));
    v116 = [v89 p_type[251]];
    swift_getObjectType();
    v136 = &type metadata for Data;
    v137 = &protocol witness table for Data;
    v134 = v115;
    v135 = v114;
    sub_10005F304(v115, v114);
    CKRecordKeyValueSetting.subscript.setter();
    sub_10005F69C(v115, v114);
    swift_unknownObjectRelease();
  }

  v117 = (v2 + v132[27]);
  if (v117[1])
  {
    v118 = *v117;
    v119 = String._bridgeToObjectiveC()();
    [v89 setEtag:v119];
  }

  return 1;
}

uint64_t sub_1000993E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v289 = a4;
  *&v290 = a5;
  v287 = a3;
  v274 = a2;
  v278 = a6;
  v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v285 = &v242 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v284 = &v242 - v12;
  v13 = __chkstk_darwin(v11);
  v283 = &v242 - v14;
  v15 = __chkstk_darwin(v13);
  v282 = &v242 - v16;
  v17 = __chkstk_darwin(v15);
  v281 = &v242 - v18;
  __chkstk_darwin(v17);
  v280 = &v242 - v19;
  v20 = sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v276 = &v242 - v22;
  v23 = sub_10005F5CC(&qword_100128800, &qword_1000E6C48);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v242 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v242 - v28;
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v242 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v275 = &v242 - v36;
  v37 = [a1 recordID];
  v38 = [v37 recordName];

  v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v286 = v39;

  v40 = [a1 encryptedValues];
  v41 = String._bridgeToObjectiveC()();
  v42 = [v40 objectForKeyedSubscript:v41];
  swift_unknownObjectRelease();

  if (v42)
  {
    v291 = v42;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    if (swift_dynamicCast())
    {
      v43 = v292;
      v44 = v293;
      sub_10005F304(v292, v293);
      v45 = sub_10005D098();
      v46 = static MADigest.hash(data:hashType:)(v43, v44, v45);
      v48 = v47;
      v275 = v43;
      v268 = v44;
      sub_10005F358(v43, v44);
      v272 = 0;
      v279 = 0;
      v273 = 0;
      v49 = 0;
      v50 = v288;
      v51 = v289;
      p_type = &stru_100124FF0.type;
      goto LABEL_4;
    }
  }

  v71 = [objc_opt_self() randomDataInHex:32];
  if (!v71)
  {

    v81 = nullsub_1(7, 0xD000000000000020, 0x80000001000F1200);
    v83 = v82;
    v85 = v84;
    sub_100092A98();
    swift_allocError();
    *v86 = v81;
    *(v86 + 8) = v83;
    *(v86 + 16) = v85;
    swift_willThrow();

    return sub_100066C80(v289, &qword_100128808, &unk_1000E6C50);
  }

  v72 = v71;
  v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v279 = v73;
  v74 = [v290 tempAssetPath:v72];

  v75 = v74;
  if (!v74)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = String._bridgeToObjectiveC()();
  }

  v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  if (!CKRecord.subscript.getter())
  {

LABEL_21:

    (*(v31 + 56))(v29, 1, 1, v30);
LABEL_25:
    v89 = v289;
    sub_100066C80(v29, &qword_100128800, &qword_1000E6C48);
    v292 = 0;
    v293 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v292 = 0xD00000000000001ELL;
    v293 = 0x80000001000F1230;
    v90 = [a1 description];
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    v94._countAndFlagsBits = v91;
    v94._object = v93;
    String.append(_:)(v94);

    LOBYTE(v90) = nullsub_1(9, v292, v293);
    v96 = v95;
    v98 = v97;
    sub_100092A98();
    swift_allocError();
    *v99 = v90;
    *(v99 + 8) = v96;
    *(v99 + 16) = v98;
    swift_willThrow();

    return sub_100066C80(v89, &qword_100128808, &unk_1000E6C50);
  }

  objc_opt_self();
  v78 = swift_dynamicCastObjCClass();
  if (!v78)
  {

    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v271 = v77;
  v79 = [v78 fileURL];
  swift_unknownObjectRelease();
  if (v79)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  v88 = v275;
  (*(v31 + 56))(v27, v80, 1, v30);
  sub_1000AF918(v27, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {

    goto LABEL_25;
  }

  (*(v31 + 32))(v88, v29, v30);
  v100 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v101);
  v103 = v102;
  v104 = [objc_opt_self() fileURLWithPath:v75];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL._bridgeToObjectiveC()(v105);
  v107 = v106;
  v110 = *(v31 + 8);
  v109 = v31 + 8;
  v108 = v110;
  v110(v35, v30);
  v292 = 0;
  v111 = [v100 moveItemAtURL:v103 toURL:v107 error:&v292];

  if (!v111)
  {
    v117 = v292;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100066C80(v289, &qword_100128808, &unk_1000E6C50);
    return v108(v275, v30);
  }

  v268 = v109;
  v112 = v292;
  v113 = sub_10005D098();
  v114 = v288;
  v115 = static MADigest.hash(fileAtPath:hashType:)(v273, v271, v113);
  v50 = v114;
  v51 = v289;
  if (v114)
  {

    sub_100066C80(v51, &qword_100128808, &unk_1000E6C50);
    return v108(v275, v30);
  }

  v269 = v116;
  v270 = v115;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v235 = type metadata accessor for Logger();
  sub_100066000(v235, qword_10012A3A8);
  v236 = v271;

  v237 = Logger.logObject.getter();
  v238 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v237, v238))
  {
    v239 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    v288 = 0;
    v241 = v240;
    v292 = v240;
    *v239 = 136315138;
    *(v239 + 4) = sub_100065658(v273, v236, &v292);
    _os_log_impl(&_mh_execute_header, v237, v238, "Asset from Cloud stored at %s", v239, 0xCu);
    sub_10005D588(v241);
    v50 = v288;
  }

  v108(v275, v30);
  p_type = (&stru_100124FF0 + 16);
  v275 = 0;
  v268 = 0xF000000000000000;
  v49 = v271;
  v46 = v270;
  v48 = v269;
LABEL_4:
  v271 = v49;
  v53 = [a1 p_type[251]];
  v54 = String._bridgeToObjectiveC()();
  v55 = [v53 objectForKeyedSubscript:v54];
  swift_unknownObjectRelease();

  v270 = v46;
  v288 = v50;
  v269 = v48;
  if (v55)
  {
    v291 = v55;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    if (swift_dynamicCast())
    {
      v57 = v292;
      v56 = v293;
      sub_10005F304(v46, v48);
      v58 = sub_1000AF4B8(v46, v48, v57, v56);
      sub_10005F358(v46, v48);
      if ((v58 & 1) == 0)
      {
        if (qword_10012A3A0 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_100066000(v59, qword_10012A3A8);
        sub_10005F304(v46, v48);
        sub_10005F304(v57, v56);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        sub_10005F358(v57, v56);
        v62 = v48;
        v63 = v60;
        sub_10005F358(v46, v62);
        if (os_log_type_enabled(v60, v61))
        {
          v64 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          v292 = v267;
          *v64 = 136315394;
          v65 = sub_10005FFFC(v57, v56);
          v67 = sub_100065658(v65, v66, &v292);

          *(v64 + 4) = v67;
          *(v64 + 12) = 2080;
          v68 = sub_10005FFFC(v270, v269);
          v70 = sub_100065658(v68, v69, &v292);

          *(v64 + 14) = v70;
          v51 = v289;
          _os_log_impl(&_mh_execute_header, v63, v61, "assetHash in Cloud %s is different than calculated %s", v64, 0x16u);
          swift_arrayDestroy();

          sub_10005F358(v57, v56);

          goto LABEL_32;
        }
      }

      sub_10005F358(v57, v56);
    }
  }

LABEL_32:
  LODWORD(v267) = sub_1000C182C(3u, 1, 0);
  v118 = v276;
  sub_1000939A8(v51, v276, &qword_100128808, &unk_1000E6C50);
  v119 = type metadata accessor for MACloudMAAsset();
  if ((*(*(v119 - 1) + 48))(v118, 1) == 1)
  {
    sub_100066C80(v118, &qword_100128808, &unk_1000E6C50);
    v266 = 0;
    v265 = 0;
  }

  else
  {
    v120 = *(v118 + 48);
    v266 = *(v118 + 40);
    v265 = v120;

    sub_1000AF8BC(v118);
  }

  v121 = &selRef_getBaseStoreName_baseGroup_baseProfile_error_;
  v122 = [a1 p_type[251]];
  v123 = String._bridgeToObjectiveC()();
  v124 = [v122 objectForKeyedSubscript:v123];
  swift_unknownObjectRelease();

  if (v124 && (v292 = v124, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v276 = v291;
  }

  else
  {
    v276 = 0;
  }

  v125 = [a1 p_type[251]];
  v126 = String._bridgeToObjectiveC()();
  v127 = [v125 objectForKeyedSubscript:v126];
  swift_unknownObjectRelease();

  if (v127 && (v292 = v127, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v264 = v291;
  }

  else
  {
    v264 = 0;
  }

  v128 = [a1 p_type[251]];
  v129 = String._bridgeToObjectiveC()();
  v130 = [v128 objectForKeyedSubscript:v129];
  swift_unknownObjectRelease();

  if (v130)
  {
    v291 = v130;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v131 = swift_dynamicCast();
    v132 = v292;
    if (!v131)
    {
      v132 = 0;
    }

    v263 = v132;
    if (v131)
    {
      v133 = v293;
    }

    else
    {
      v133 = 0;
    }

    v262 = v133;
  }

  else
  {
    v263 = 0;
    v262 = 0;
  }

  v134 = [a1 p_type[251]];
  v135 = String._bridgeToObjectiveC()();
  v136 = [v134 objectForKeyedSubscript:v135];
  swift_unknownObjectRelease();

  if (v136)
  {
    v292 = v136;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v137 = type metadata accessor for Date();
    v138 = v280;
    v139 = swift_dynamicCast() ^ 1;
    v140 = v138;
    v121 = &selRef_getBaseStoreName_baseGroup_baseProfile_error_;
    (*(*(v137 - 8) + 56))(v140, v139, 1, v137);
  }

  else
  {
    v141 = type metadata accessor for Date();
    (*(*(v141 - 8) + 56))(v280, 1, 1, v141);
  }

  v142 = [a1 p_type[251]];
  v143 = String._bridgeToObjectiveC()();
  v144 = [v142 v121[134]];
  swift_unknownObjectRelease();

  if (v144)
  {
    v292 = v144;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v145 = type metadata accessor for Date();
    v146 = v281;
    v147 = swift_dynamicCast();
    (*(*(v145 - 8) + 56))(v146, v147 ^ 1u, 1, v145);
  }

  else
  {
    v148 = type metadata accessor for Date();
    (*(*(v148 - 8) + 56))(v281, 1, 1, v148);
  }

  v149 = [a1 p_type[251]];
  v150 = String._bridgeToObjectiveC()();
  v151 = [v149 objectForKeyedSubscript:v150];
  swift_unknownObjectRelease();

  if (v151)
  {
    v291 = v151;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v152 = swift_dynamicCast();
    v153 = v292;
    if (!v152)
    {
      v153 = 0;
    }

    v261 = v153;
    if (v152)
    {
      v154 = v293;
    }

    else
    {
      v154 = 0;
    }

    v260 = v154;
  }

  else
  {
    v261 = 0;
    v260 = 0;
  }

  v155 = [a1 p_type[251]];
  v156 = String._bridgeToObjectiveC()();
  v157 = [v155 objectForKeyedSubscript:v156];
  swift_unknownObjectRelease();

  if (v157)
  {
    v291 = v157;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v158 = swift_dynamicCast();
    v159 = v292;
    if (!v158)
    {
      v159 = 0;
    }

    v259 = v159;
    if (v158)
    {
      v160 = v293;
    }

    else
    {
      v160 = 0;
    }

    v258 = v160;
  }

  else
  {
    v259 = 0;
    v258 = 0;
  }

  v161 = [a1 p_type[251]];
  v162 = String._bridgeToObjectiveC()();
  v163 = [v161 objectForKeyedSubscript:v162];
  swift_unknownObjectRelease();

  if (v163)
  {
    v291 = v163;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v164 = swift_dynamicCast();
    v165 = v292;
    if (!v164)
    {
      v165 = 0;
    }

    v257 = v165;
    if (v164)
    {
      v166 = v293;
    }

    else
    {
      v166 = 0;
    }

    v256 = v166;
  }

  else
  {
    v257 = 0;
    v256 = 0;
  }

  v167 = [a1 p_type[251]];
  v168 = String._bridgeToObjectiveC()();
  v169 = [v167 objectForKeyedSubscript:v168];
  swift_unknownObjectRelease();

  if (v169 && (v292 = v169, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v170 = v291;
  }

  else
  {
    v170 = sub_1000BF320(-2);
  }

  v255 = sub_1000BF304(v170);
  v171 = [a1 p_type[251]];
  v172 = String._bridgeToObjectiveC()();
  v173 = [v171 objectForKeyedSubscript:v172];
  swift_unknownObjectRelease();

  if (v173)
  {
    v291 = v173;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v174 = swift_dynamicCast();
    v175 = v292;
    if (!v174)
    {
      v175 = 0;
    }

    v254 = v175;
    if (v174)
    {
      v176 = v293;
    }

    else
    {
      v176 = 0;
    }

    v253 = v176;
  }

  else
  {
    v254 = 0;
    v253 = 0;
  }

  v177 = [a1 p_type[251]];
  v178 = String._bridgeToObjectiveC()();
  v179 = [v177 objectForKeyedSubscript:v178];
  swift_unknownObjectRelease();

  if (v179)
  {
    v292 = v179;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v180 = swift_dynamicCast();
    v181 = v282;
    if (v180)
    {
      v252 = v291;
    }

    else
    {
      v252 = 0;
    }
  }

  else
  {
    v252 = 0;
    v181 = v282;
  }

  v182 = [a1 p_type[251]];
  v183 = String._bridgeToObjectiveC()();
  v184 = [v182 objectForKeyedSubscript:v183];
  swift_unknownObjectRelease();

  v185 = 0xF000000000000000;
  if (v184)
  {
    v291 = v184;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v186 = swift_dynamicCast();
    v187 = v292;
    if (!v186)
    {
      v187 = 0;
    }

    v250 = v187;
    if (v186)
    {
      v185 = v293;
    }

    v251 = v185;
  }

  else
  {
    v251 = 0xF000000000000000;
    v250 = 0;
  }

  v188 = [a1 p_type[251]];
  v189 = String._bridgeToObjectiveC()();
  v190 = [v188 objectForKeyedSubscript:v189];
  swift_unknownObjectRelease();

  v191 = 0xF000000000000000;
  if (v190)
  {
    v291 = v190;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v192 = swift_dynamicCast();
    v193 = v292;
    if (!v192)
    {
      v193 = 0;
    }

    v248 = v193;
    if (v192)
    {
      v191 = v293;
    }
  }

  else
  {
    v248 = 0;
  }

  v194 = [a1 etag];
  if (v194)
  {
    v195 = v194;
    v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v246 = v196;
  }

  else
  {
    v247 = 0;
    v246 = 0;
  }

  v197 = [a1 creationDate];
  v249 = v191;
  if (v197)
  {
    v198 = v197;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v199 = 0;
  }

  else
  {
    v199 = 1;
  }

  v200 = type metadata accessor for Date();
  v201 = *(*(v200 - 8) + 56);
  v202 = 1;
  (v201)(v181, v199, 1, v200);
  v203 = [a1 modificationDate];
  v204 = v283;
  if (v203)
  {
    v205 = v203;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v202 = 0;
  }

  (v201)(v204, v202, 1, v200);
  v206 = v284;
  Date.init()();

  sub_100066C80(v289, &qword_100128808, &unk_1000E6C50);
  (v201)(v206, 0, 1, v200);
  (v201)(v285, 1, 1, v200);
  v207 = v278;
  *(v278 + 16) = 0;
  *(v207 + 24) = 0;
  v290 = xmmword_1000E6BC0;
  *(v207 + 120) = xmmword_1000E6BC0;
  v244 = v207 + v119[17];
  v201();
  v242 = v207 + v119[18];
  v201();
  v208 = v207 + v119[25];
  v209 = v290;
  *v208 = v290;
  v210 = v207 + v119[26];
  *v210 = v209;
  *&v290 = v207 + v119[28];
  v201();
  v289 = v207 + v119[29];
  v201();
  v245 = v207 + v119[30];
  v201();
  v243 = v207 + v119[31];
  v201();
  v211 = v265;
  *(v207 + 40) = v266;
  *(v207 + 48) = v211;
  v212 = v287;
  if (v287)
  {
    v213 = HIBYTE(v287) & 0xF;
    if ((v287 & 0x2000000000000000) == 0)
    {
      v213 = v274 & 0xFFFFFFFFFFFFLL;
    }

    if (v213)
    {
      *(v207 + 16) = v274;
      *(v207 + 24) = v212;
    }

    else
    {
    }
  }

  v214 = (v207 + v119[19]);
  v215 = (v207 + v119[20]);
  v216 = v119[21];
  v287 = v119[22];
  v217 = (v207 + v216);
  v218 = (v207 + v119[23]);
  v219 = (v207 + v119[27]);
  v220 = v286;
  *v207 = v277;
  *(v207 + 8) = v220;
  v221 = v267;
  *(v207 + 32) = v267;
  *(v207 + 33) = BYTE1(v221) & 1;
  *(v207 + 34) = BYTE2(v221) & 1;
  v222 = v279;
  *(v207 + 56) = v272;
  *(v207 + 64) = v222;
  *(v207 + 72) = 0u;
  *(v207 + 88) = 0u;
  v223 = v271;
  *(v207 + 104) = v273;
  *(v207 + 112) = v223;
  sub_10005F69C(*(v207 + 120), *(v207 + 128));
  v224 = v268;
  *(v207 + 120) = v275;
  *(v207 + 128) = v224;
  v225 = v269;
  *(v207 + 136) = v270;
  *(v207 + 144) = v225;
  v226 = v264;
  *(v207 + 152) = v276;
  *(v207 + 160) = v226;
  v227 = v262;
  *(v207 + 168) = v263;
  *(v207 + 176) = v227;
  sub_1000941F8(v280, v244);
  sub_1000941F8(v281, v242);
  v228 = v260;
  *v214 = v261;
  v214[1] = v228;
  v229 = v258;
  *v215 = v259;
  v215[1] = v229;
  v230 = v256;
  *v217 = v257;
  v217[1] = v230;
  *(v207 + v119[24]) = v255;
  v231 = v253;
  *v218 = v254;
  v218[1] = v231;
  *(v207 + v287) = v252;
  sub_10005F69C(*v208, *(v208 + 8));
  v232 = v251;
  *v208 = v250;
  *(v208 + 8) = v232;
  sub_10005F69C(*v210, *(v210 + 8));
  v233 = v249;
  *v210 = v248;
  *(v210 + 8) = v233;
  v234 = v246;
  *v219 = v247;
  v219[1] = v234;
  sub_1000941F8(v282, v290);
  sub_1000941F8(v283, v289);
  sub_1000941F8(v284, v245);
  return sub_1000941F8(v285, v243);
}

uint64_t sub_10009B378()
{
  v0 = sub_1000C549C();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

uint64_t sub_10009B3AC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t sub_10009B3DC()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
}

uint64_t sub_10009B414(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t sub_10009B4AC()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t sub_10009B4F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t sub_10009B5D0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 176) = a1;
  return result;
}

uint64_t sub_10009B660()
{
  sub_10005F5CC(&qword_100128820, &qword_1000E6C68);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000E6BD0;
  sub_10005F5CC(&qword_100128828, &unk_1000E6C70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000E6BE0;
  *(v1 + 32) = 0x614E64726F636572;
  *(v1 + 40) = 0xEA0000000000656DLL;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = 3;
  *(v1 + 120) = &type metadata for UInt;
  *(v1 + 88) = &type metadata for UInt;
  *(v1 + 96) = 1;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000E6BE0;
  strcpy((v2 + 32), "recordAccount");
  *(v2 + 46) = -4864;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = 3;
  *(v2 + 120) = &type metadata for Int;
  *(v2 + 88) = &type metadata for UInt;
  *(v2 + 96) = 0;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000E6BE0;
  *(v3 + 32) = 0x6E61487465737361;
  *(v3 + 40) = 0xEB00000000656C64;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = 3;
  *(v3 + 120) = &type metadata for Int;
  *(v3 + 88) = &type metadata for UInt;
  *(v3 + 96) = 0;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000E6BE0;
  *(v4 + 32) = 0x74617453636E7973;
  *(v4 + 40) = 0xE900000000000065;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = 1;
  *(v4 + 120) = &type metadata for Int;
  *(v4 + 88) = &type metadata for UInt;
  *(v4 + 96) = 0;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E6BE0;
  *(v5 + 32) = 0x756F6C436D6F7266;
  *(v5 + 40) = 0xE900000000000064;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = 1;
  *(v5 + 120) = &type metadata for Int;
  *(v5 + 88) = &type metadata for UInt;
  *(v5 + 96) = 0;
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E6BE0;
  *(v6 + 32) = 0x6B63416C61636F6CLL;
  *(v6 + 40) = 0xEA00000000006465;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = 1;
  *(v6 + 120) = &type metadata for Int;
  *(v6 + 88) = &type metadata for UInt;
  *(v6 + 96) = 0;
  *(v0 + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000E6BE0;
  strcpy((v7 + 32), "sessionToken");
  *(v7 + 45) = 0;
  *(v7 + 46) = -5120;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = 3;
  *(v7 + 120) = &type metadata for Int;
  *(v7 + 88) = &type metadata for UInt;
  *(v7 + 96) = 0;
  *(v0 + 80) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000E6BE0;
  *(v8 + 32) = 0x7461507465737361;
  *(v8 + 40) = 0xE900000000000068;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = 3;
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 88) = &type metadata for UInt;
  *(v8 + 96) = 0;
  *(v0 + 88) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E6BE0;
  *(v9 + 32) = 0xD000000000000012;
  *(v9 + 40) = 0x80000001000F1250;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = 3;
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 88) = &type metadata for UInt;
  *(v9 + 96) = 0;
  *(v0 + 96) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000E6BE0;
  *(v10 + 32) = 0xD000000000000014;
  *(v10 + 40) = 0x80000001000F1270;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = 3;
  *(v10 + 120) = &type metadata for Int;
  *(v10 + 88) = &type metadata for UInt;
  *(v10 + 96) = 0;
  *(v0 + 104) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000E6BE0;
  *(v11 + 32) = 0x7461447465737361;
  *(v11 + 40) = 0xE900000000000061;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = 4;
  *(v11 + 120) = &type metadata for Int;
  *(v11 + 88) = &type metadata for UInt;
  *(v11 + 96) = 0;
  *(v0 + 112) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000E6BE0;
  *(v12 + 32) = 0x7361487465737361;
  *(v12 + 40) = 0xE900000000000068;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = 4;
  *(v12 + 120) = &type metadata for Int;
  *(v12 + 88) = &type metadata for UInt;
  *(v12 + 96) = 0;
  *(v0 + 120) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000E6BE0;
  *(v13 + 32) = 0x7A69537465737361;
  *(v13 + 40) = 0xE900000000000065;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 1;
  *(v13 + 120) = &type metadata for Int;
  *(v13 + 88) = &type metadata for UInt;
  *(v13 + 96) = 0;
  *(v0 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0x7079547465737361;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = 1;
  *(v14 + 120) = &type metadata for Int;
  *(v14 + 88) = &type metadata for UInt;
  *(v14 + 96) = 0;
  *(v0 + 136) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000E6BE0;
  *(v15 + 32) = 0x62614C7465737361;
  *(v15 + 40) = 0xEA00000000006C65;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = 3;
  *(v15 + 120) = &type metadata for Int;
  *(v15 + 88) = &type metadata for UInt;
  *(v15 + 96) = 0;
  *(v0 + 144) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000E6BE0;
  strcpy((v16 + 32), "creationTime");
  *(v16 + 45) = 0;
  *(v16 + 46) = -5120;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = 2;
  *(v16 + 120) = &type metadata for Int;
  *(v16 + 88) = &type metadata for UInt;
  *(v16 + 96) = 0;
  *(v0 + 152) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000E6BE0;
  *(v17 + 32) = 0x616470557473616CLL;
  *(v17 + 40) = 0xEF656D6954646574;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 2;
  *(v17 + 120) = &type metadata for Int;
  *(v17 + 88) = &type metadata for UInt;
  *(v17 + 96) = 0;
  *(v0 + 160) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000E6BE0;
  *(v18 + 32) = 0xD00000000000001BLL;
  *(v18 + 40) = 0x80000001000F11C0;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = 3;
  *(v18 + 120) = &type metadata for Int;
  *(v18 + 88) = &type metadata for UInt;
  *(v18 + 96) = 0;
  *(v0 + 168) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000E6BE0;
  *(v19 + 32) = 0xD000000000000014;
  *(v19 + 40) = 0x80000001000F11E0;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = 3;
  *(v19 + 120) = &type metadata for Int;
  *(v19 + 88) = &type metadata for UInt;
  *(v19 + 96) = 0;
  *(v0 + 176) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000E6BE0;
  *(v20 + 32) = 0xD000000000000014;
  *(v20 + 40) = 0x80000001000F11A0;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = 3;
  *(v20 + 120) = &type metadata for Int;
  *(v20 + 88) = &type metadata for UInt;
  *(v20 + 96) = 0;
  *(v0 + 184) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000E6BE0;
  *(v21 + 32) = 0x54656C69666F7270;
  *(v21 + 40) = 0xEB00000000657079;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = 1;
  *(v21 + 120) = &type metadata for Int;
  *(v21 + 88) = &type metadata for UInt;
  *(v21 + 96) = 0;
  *(v0 + 192) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000E6BE0;
  strcpy((v22 + 32), "assetProcess");
  *(v22 + 45) = 0;
  *(v22 + 46) = -5120;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = 3;
  *(v22 + 120) = &type metadata for Int;
  *(v22 + 88) = &type metadata for UInt;
  *(v22 + 96) = 0;
  *(v0 + 200) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000E6BE0;
  *(v23 + 32) = 0x6974704F636E7973;
  *(v23 + 40) = 0xEA00000000006E6FLL;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = 1;
  *(v23 + 120) = &type metadata for Int;
  *(v23 + 88) = &type metadata for UInt;
  *(v23 + 96) = 0;
  *(v0 + 208) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000E6BE0;
  strcpy((v24 + 32), "creatorAttest");
  *(v24 + 46) = -4864;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = 4;
  *(v24 + 120) = &type metadata for Int;
  *(v24 + 88) = &type metadata for UInt;
  *(v24 + 96) = 0;
  *(v0 + 216) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000E6BE0;
  strcpy((v25 + 32), "serverAttest");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = 4;
  *(v25 + 120) = &type metadata for Int;
  *(v25 + 88) = &type metadata for UInt;
  *(v25 + 96) = 0;
  *(v0 + 224) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000E6BE0;
  *(v26 + 32) = 0x676154456B63;
  *(v26 + 40) = 0xE600000000000000;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = 3;
  *(v26 + 120) = &type metadata for Int;
  *(v26 + 88) = &type metadata for UInt;
  *(v26 + 96) = 0;
  *(v0 + 232) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000E6BE0;
  strcpy((v27 + 32), "ckCreatedDate");
  *(v27 + 46) = -4864;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = 2;
  *(v27 + 120) = &type metadata for Int;
  *(v27 + 88) = &type metadata for UInt;
  *(v27 + 96) = 0;
  *(v0 + 240) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000E6BE0;
  strcpy((v28 + 32), "ckModifiedDate");
  *(v28 + 47) = -18;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = 2;
  *(v28 + 120) = &type metadata for Int;
  *(v28 + 88) = &type metadata for UInt;
  *(v28 + 96) = 0;
  *(v0 + 248) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000E6BE0;
  *(v29 + 32) = 0x6144636E79536B63;
  *(v29 + 40) = 0xEA00000000006574;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = 2;
  *(v29 + 120) = &type metadata for Int;
  *(v29 + 88) = &type metadata for UInt;
  *(v29 + 96) = 0;
  *(v0 + 256) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000E6BE0;
  *(v30 + 32) = 0xD000000000000010;
  *(v30 + 40) = 0x80000001000F1290;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = 2;
  *(v30 + 120) = &type metadata for Int;
  *(v30 + 88) = &type metadata for UInt;
  *(v30 + 96) = 0;
  *(v0 + 264) = v30;
  return v0;
}

uint64_t sub_10009BF48(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_10009BF98(a1, a2);
  return v4;
}

uint64_t sub_10009BF98(void *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v3 = sub_1000C549C();
  v4 = *(v3 + 1);
  *(v2 + 136) = *v3;
  *(v2 + 144) = v4;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0;
  *(v2 + 176) = 0;
  sub_10005F5CC(&qword_100128820, &qword_1000E6C68);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E6BD0;
  sub_10005F5CC(&qword_100128828, &unk_1000E6C70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E6BE0;
  *(v6 + 32) = 0x614E64726F636572;
  *(v6 + 40) = 0xEA0000000000656DLL;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = 3;
  *(v6 + 120) = &type metadata for UInt;
  *(v6 + 88) = &type metadata for UInt;
  *(v6 + 96) = 1;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000E6BE0;
  strcpy((v7 + 32), "recordAccount");
  *(v7 + 46) = -4864;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = 3;
  *(v7 + 120) = &type metadata for Int;
  *(v7 + 88) = &type metadata for UInt;
  *(v7 + 96) = 0;
  *(v5 + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000E6BE0;
  *(v8 + 32) = 0x6E61487465737361;
  *(v8 + 40) = 0xEB00000000656C64;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = 3;
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 88) = &type metadata for UInt;
  *(v8 + 96) = 0;
  *(v5 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E6BE0;
  *(v9 + 32) = 0x74617453636E7973;
  *(v9 + 40) = 0xE900000000000065;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = 1;
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 88) = &type metadata for UInt;
  *(v9 + 96) = 0;
  *(v5 + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000E6BE0;
  *(v10 + 32) = 0x756F6C436D6F7266;
  *(v10 + 40) = 0xE900000000000064;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = 1;
  *(v10 + 120) = &type metadata for Int;
  *(v10 + 88) = &type metadata for UInt;
  *(v10 + 96) = 0;
  *(v5 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000E6BE0;
  *(v11 + 32) = 0x6B63416C61636F6CLL;
  *(v11 + 40) = 0xEA00000000006465;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = 1;
  *(v11 + 120) = &type metadata for Int;
  *(v11 + 88) = &type metadata for UInt;
  *(v11 + 96) = 0;
  *(v5 + 72) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000E6BE0;
  strcpy((v12 + 32), "sessionToken");
  *(v12 + 45) = 0;
  *(v12 + 46) = -5120;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = 3;
  *(v12 + 120) = &type metadata for Int;
  *(v12 + 88) = &type metadata for UInt;
  *(v12 + 96) = 0;
  *(v5 + 80) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000E6BE0;
  *(v13 + 32) = 0x7461507465737361;
  *(v13 + 40) = 0xE900000000000068;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 3;
  *(v13 + 120) = &type metadata for Int;
  *(v13 + 88) = &type metadata for UInt;
  *(v13 + 96) = 0;
  *(v5 + 88) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0xD000000000000012;
  *(v14 + 40) = 0x80000001000F1250;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = 3;
  *(v14 + 120) = &type metadata for Int;
  *(v14 + 88) = &type metadata for UInt;
  *(v14 + 96) = 0;
  *(v5 + 96) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000E6BE0;
  *(v15 + 32) = 0xD000000000000014;
  *(v15 + 40) = 0x80000001000F1270;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = 3;
  *(v15 + 120) = &type metadata for Int;
  *(v15 + 88) = &type metadata for UInt;
  *(v15 + 96) = 0;
  *(v5 + 104) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000E6BE0;
  *(v16 + 32) = 0x7461447465737361;
  *(v16 + 40) = 0xE900000000000061;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = 4;
  *(v16 + 120) = &type metadata for Int;
  *(v16 + 88) = &type metadata for UInt;
  *(v16 + 96) = 0;
  *(v5 + 112) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000E6BE0;
  *(v17 + 32) = 0x7361487465737361;
  *(v17 + 40) = 0xE900000000000068;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 4;
  *(v17 + 120) = &type metadata for Int;
  *(v17 + 88) = &type metadata for UInt;
  *(v17 + 96) = 0;
  *(v5 + 120) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000E6BE0;
  *(v18 + 32) = 0x7A69537465737361;
  *(v18 + 40) = 0xE900000000000065;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = 1;
  *(v18 + 120) = &type metadata for Int;
  *(v18 + 88) = &type metadata for UInt;
  *(v18 + 96) = 0;
  *(v5 + 128) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000E6BE0;
  *(v19 + 32) = 0x7079547465737361;
  *(v19 + 40) = 0xE900000000000065;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = 1;
  *(v19 + 120) = &type metadata for Int;
  *(v19 + 88) = &type metadata for UInt;
  *(v19 + 96) = 0;
  *(v5 + 136) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000E6BE0;
  *(v20 + 32) = 0x62614C7465737361;
  *(v20 + 40) = 0xEA00000000006C65;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = 3;
  *(v20 + 120) = &type metadata for Int;
  *(v20 + 88) = &type metadata for UInt;
  *(v20 + 96) = 0;
  *(v5 + 144) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000E6BE0;
  strcpy((v21 + 32), "creationTime");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = 2;
  *(v21 + 120) = &type metadata for Int;
  *(v21 + 88) = &type metadata for UInt;
  *(v21 + 96) = 0;
  *(v5 + 152) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000E6BE0;
  *(v22 + 32) = 0x616470557473616CLL;
  *(v22 + 40) = 0xEF656D6954646574;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = 2;
  *(v22 + 120) = &type metadata for Int;
  *(v22 + 88) = &type metadata for UInt;
  *(v22 + 96) = 0;
  *(v5 + 160) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000E6BE0;
  *(v23 + 32) = 0xD00000000000001BLL;
  *(v23 + 40) = 0x80000001000F11C0;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = 3;
  *(v23 + 120) = &type metadata for Int;
  *(v23 + 88) = &type metadata for UInt;
  *(v23 + 96) = 0;
  *(v5 + 168) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000E6BE0;
  *(v24 + 32) = 0xD000000000000014;
  *(v24 + 40) = 0x80000001000F11E0;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = 3;
  *(v24 + 120) = &type metadata for Int;
  *(v24 + 88) = &type metadata for UInt;
  *(v24 + 96) = 0;
  *(v5 + 176) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000E6BE0;
  *(v25 + 32) = 0xD000000000000014;
  *(v25 + 40) = 0x80000001000F11A0;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = 3;
  *(v25 + 120) = &type metadata for Int;
  *(v25 + 88) = &type metadata for UInt;
  *(v25 + 96) = 0;
  *(v5 + 184) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000E6BE0;
  *(v26 + 32) = 0x54656C69666F7270;
  *(v26 + 40) = 0xEB00000000657079;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = 1;
  *(v26 + 120) = &type metadata for Int;
  *(v26 + 88) = &type metadata for UInt;
  *(v26 + 96) = 0;
  *(v5 + 192) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000E6BE0;
  strcpy((v27 + 32), "assetProcess");
  *(v27 + 45) = 0;
  *(v27 + 46) = -5120;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = 3;
  *(v27 + 120) = &type metadata for Int;
  *(v27 + 88) = &type metadata for UInt;
  *(v27 + 96) = 0;
  *(v5 + 200) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000E6BE0;
  *(v28 + 32) = 0x6974704F636E7973;
  *(v28 + 40) = 0xEA00000000006E6FLL;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = 1;
  *(v28 + 120) = &type metadata for Int;
  *(v28 + 88) = &type metadata for UInt;
  *(v28 + 96) = 0;
  *(v5 + 208) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000E6BE0;
  strcpy((v29 + 32), "creatorAttest");
  *(v29 + 46) = -4864;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = 4;
  *(v29 + 120) = &type metadata for Int;
  *(v29 + 88) = &type metadata for UInt;
  *(v29 + 96) = 0;
  *(v5 + 216) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000E6BE0;
  strcpy((v30 + 32), "serverAttest");
  *(v30 + 45) = 0;
  *(v30 + 46) = -5120;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = 4;
  *(v30 + 120) = &type metadata for Int;
  *(v30 + 88) = &type metadata for UInt;
  *(v30 + 96) = 0;
  *(v5 + 224) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000E6BE0;
  *(v31 + 32) = 0x676154456B63;
  *(v31 + 40) = 0xE600000000000000;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = 3;
  *(v31 + 120) = &type metadata for Int;
  *(v31 + 88) = &type metadata for UInt;
  *(v31 + 96) = 0;
  *(v5 + 232) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000E6BE0;
  strcpy((v32 + 32), "ckCreatedDate");
  *(v32 + 46) = -4864;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = 2;
  *(v32 + 120) = &type metadata for Int;
  *(v32 + 88) = &type metadata for UInt;
  *(v32 + 96) = 0;
  *(v5 + 240) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000E6BE0;
  strcpy((v33 + 32), "ckModifiedDate");
  *(v33 + 47) = -18;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = 2;
  *(v33 + 120) = &type metadata for Int;
  *(v33 + 88) = &type metadata for UInt;
  *(v33 + 96) = 0;
  *(v5 + 248) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000E6BE0;
  *(v34 + 32) = 0x6144636E79536B63;
  *(v34 + 40) = 0xEA00000000006574;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = 2;
  *(v34 + 120) = &type metadata for Int;
  *(v34 + 88) = &type metadata for UInt;
  *(v34 + 96) = 0;
  *(v5 + 256) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000E6BE0;
  *(v35 + 32) = 0xD000000000000010;
  *(v35 + 40) = 0x80000001000F1290;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = 2;
  *(v35 + 120) = &type metadata for Int;
  *(v35 + 88) = &type metadata for UInt;
  *(v35 + 96) = 0;
  *(v5 + 264) = v35;
  *(v2 + 184) = v5;
  type metadata accessor for MAKVStoreBase();

  v36 = a1;
  v37 = sub_100061BEC();
  v38 = sub_1000C450C(0xD000000000000011, 0x80000001000F1080, v5, v36, 0x6144636E79536B63, 0xEA00000000006574, 0, 0, 1, v37 & 1);
  *(v2 + 112) = v36;
  *(v2 + 120) = a2;
  *(v2 + 128) = v38;
  return v2;
}

unint64_t sub_10009C938(uint64_t a1)
{
  v2 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v169 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v168 = &v162 - v7;
  v8 = __chkstk_darwin(v6);
  v167 = &v162 - v9;
  __chkstk_darwin(v8);
  v166 = &v162 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v165 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v164 = &v162 - v17;
  v18 = __chkstk_darwin(v16);
  v163 = &v162 - v19;
  __chkstk_darwin(v18);
  v162 = &v162 - v20;
  v172 = type metadata accessor for MACloudMAAsset();
  v21 = *(*(v172 - 1) + 64);
  __chkstk_darwin(v172);
  v23 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000AF988(_swiftEmptyArrayStorage);
  v25 = *a1;
  v26 = *(a1 + 8);
  v176 = &type metadata for String;
  *&v175 = v25;
  *(&v175 + 1) = v26;
  sub_1000AF7F4(&v175, v174);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v173 = v24;
  sub_1000AEE80(v174, 0x614E64726F636572, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
  v28 = v173;
  v177 = v173;
  v29 = *(a1 + 24);
  v171 = v11;
  if (v29)
  {
    v30 = *(a1 + 16);
    v176 = &type metadata for String;
    *&v175 = v30;
    *(&v175 + 1) = v29;
    sub_1000AF7F4(&v175, v174);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v28;
    sub_1000AEE80(v174, 0x634164726F636572, 0xED0000746E756F63, v31);
    v28 = v173;
    v177 = v173;
  }

  v32 = *(a1 + 48);
  if (v32)
  {
    v33 = *(a1 + 40);
    v176 = &type metadata for String;
    *&v175 = v33;
    *(&v175 + 1) = v32;
    sub_1000AF7F4(&v175, v174);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v28;
    sub_1000AEE80(v174, 0x6E61487465737361, 0xEB00000000656C64, v34);
    v35 = v173;
  }

  else
  {
    sub_1000AE570(0x6E61487465737361, 0xEB00000000656C64, &v175);
    sub_100066C80(&v175, &unk_100128830, &qword_1000E7D40);
    v35 = v177;
  }

  v170 = v12;
  v36 = sub_1000C1778(*(a1 + 32));
  v176 = &type metadata for Int;
  *&v175 = v36;
  sub_1000AF7F4(&v175, v174);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v35;
  sub_1000AEE80(v174, 0x74617453636E7973, 0xE900000000000065, v37);
  v38 = v173;
  v176 = &type metadata for Int;
  v177 = v173;
  *&v175 = *(a1 + 33);
  sub_1000AF7F4(&v175, v174);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v38;
  sub_1000AEE80(v174, 0x756F6C436D6F7266, 0xE900000000000064, v39);
  v40 = v173;
  v41 = *(a1 + 34);
  v176 = &type metadata for Int;
  *&v175 = v41;
  sub_1000AF7F4(&v175, v174);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v40;
  sub_1000AEE80(v174, 0x6B63416C61636F6CLL, 0xEA00000000006465, v42);
  v177 = v173;
  v43 = *(a1 + 160);
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100066000(v44, qword_10012A3A8);
  sub_1000AF858(a1, v23);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v175 = v48;
    *v47 = 136315394;
    *&v174[0] = *(v23 + 20);
    type metadata accessor for MASDAssetType(0);
    sub_1000AF620(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    sub_1000AF8BC(v23);
    v52 = sub_100065658(v49, v51, &v175);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2048;
    *(v47 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v45, v46, "Asset type %s - %lu to store in local db", v47, 0x16u);
    sub_10005D588(v48);
  }

  else
  {

    sub_1000AF8BC(v23);
  }

  v176 = &type metadata for UInt;
  *&v175 = v43;
  sub_1000AF7F4(&v175, v174);
  v53 = v177;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v53;
  sub_1000AEE80(v174, 0x7079547465737361, 0xE900000000000065, v54);
  v56 = v172;
  v55 = v173;
  v177 = v173;
  v57 = *(a1 + 176);
  if (v57)
  {
    v58 = *(a1 + 168);
    v176 = &type metadata for String;
    *&v175 = v58;
    *(&v175 + 1) = v57;
    sub_1000AF7F4(&v175, v174);

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v55;
    sub_1000AEE80(v174, 0x62614C7465737361, 0xEA00000000006C65, v59);
    v177 = v173;
  }

  type metadata accessor for MAKVStoreBase();
  v60 = sub_1000C4C10(a1 + v56[17]);
  if ((v61 & 1) == 0)
  {
    v176 = &type metadata for Double;
    *&v175 = v60;
    sub_1000AF7F4(&v175, v174);
    v62 = v177;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v62;
    sub_1000AEE80(v174, 0x6E6F697461657263, 0xEC000000656D6954, v63);
    v177 = v173;
  }

  v64 = sub_1000C4C10(a1 + v56[18]);
  if ((v65 & 1) == 0)
  {
    v176 = &type metadata for Double;
    *&v175 = v64;
    sub_1000AF7F4(&v175, v174);
    v66 = v177;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v66;
    sub_1000AEE80(v174, 0x616470557473616CLL, 0xEF656D6954646574, v67);
    v177 = v173;
  }

  v68 = (a1 + v56[19]);
  v69 = v68[1];
  if (v69)
  {
    v70 = *v68;
    v176 = &type metadata for String;
    *&v175 = v70;
    *(&v175 + 1) = v69;
    sub_1000AF7F4(&v175, v174);

    v71 = v177;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v71;
    sub_1000AEE80(v174, 0xD000000000000014, 0x80000001000F11E0, v72);
    v177 = v173;
  }

  v73 = (a1 + v56[20]);
  v74 = v73[1];
  if (v74)
  {
    v75 = *v73;
    v176 = &type metadata for String;
    *&v175 = v75;
    *(&v175 + 1) = v74;
    sub_1000AF7F4(&v175, v174);

    v76 = v177;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v76;
    sub_1000AEE80(v174, 0xD00000000000001BLL, 0x80000001000F11C0, v77);
    v177 = v173;
  }

  v78 = (a1 + v56[21]);
  v79 = v78[1];
  if (v79)
  {
    v80 = *v78;
    v176 = &type metadata for String;
    *&v175 = v80;
    *(&v175 + 1) = v79;
    sub_1000AF7F4(&v175, v174);

    v81 = v177;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v81;
    sub_1000AEE80(v174, 0xD000000000000014, 0x80000001000F11A0, v82);
    v83 = v173;
    v177 = v173;
  }

  else
  {
    v83 = v177;
  }

  v84 = sub_1000BF320(*(a1 + v56[24]));
  v176 = &type metadata for UInt;
  *&v175 = v84;
  sub_1000AF7F4(&v175, v174);
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v83;
  sub_1000AEE80(v174, 0x54656C69666F7270, 0xEB00000000657079, v85);
  v86 = v173;
  v87 = (a1 + v56[23]);
  v88 = v87[1];
  if (v88)
  {
    v89 = *v87;
    v176 = &type metadata for String;
    *&v175 = v89;
    *(&v175 + 1) = v88;
    sub_1000AF7F4(&v175, v174);

    v90 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v86;
    sub_1000AEE80(v174, 0x6F72507465737361, 0xEC00000073736563, v90);
    v86 = v173;
  }

  v91 = *(a1 + v56[22]);
  v176 = &type metadata for UInt;
  *&v175 = v91;
  sub_1000AF7F4(&v175, v174);
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v86;
  sub_1000AEE80(v174, 0x6974704F636E7973, 0xEA00000000006E6FLL, v92);
  v93 = v173;
  v177 = v173;
  v94 = *(a1 + 64);
  if (v94)
  {
    v95 = *(a1 + 56);
    v176 = &type metadata for String;
    *&v175 = v95;
    *(&v175 + 1) = v94;
    sub_1000AF7F4(&v175, v174);

    v96 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v93;
    sub_1000AEE80(v174, 0x546E6F6973736573, 0xEC0000006E656B6FLL, v96);
    v93 = v173;
    v177 = v173;
  }

  v97 = *(a1 + 96);
  if (v97)
  {
    v98 = *(a1 + 88);
    v176 = &type metadata for String;
    *&v175 = v98;
    *(&v175 + 1) = v97;
    sub_1000AF7F4(&v175, v174);

    v99 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v93;
    sub_1000AEE80(v174, 0xD000000000000012, 0x80000001000F1250, v99);
    v93 = v173;
    v177 = v173;
  }

  v100 = *(a1 + 112);
  if (v100)
  {
    v101 = *(a1 + 104);
    v176 = &type metadata for String;
    *&v175 = v101;
    *(&v175 + 1) = v100;
    sub_1000AF7F4(&v175, v174);

    v102 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v93;
    sub_1000AEE80(v174, 0xD000000000000014, 0x80000001000F1270, v102);
    v93 = v173;
    v177 = v173;
  }

  v103 = *(a1 + 136);
  v104 = *(a1 + 144);
  v176 = &type metadata for Data;
  *&v175 = v103;
  *(&v175 + 1) = v104;
  sub_1000AF7F4(&v175, v174);
  sub_10005F304(v103, v104);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v93;
  sub_1000AEE80(v174, 0x7361487465737361, 0xE900000000000068, v105);
  v106 = v173;
  v107 = *(a1 + 152);
  v176 = &type metadata for UInt64;
  *&v175 = v107;
  sub_1000AF7F4(&v175, v174);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v106;
  sub_1000AEE80(v174, 0x7A69537465737361, 0xE900000000000065, v108);
  v109 = v173;
  v110 = [objc_allocWithZone(NSNull) init];
  v111 = sub_100092C8C(0, &qword_1001290A0, NSNull_ptr);
  v176 = v111;
  *&v175 = v110;
  sub_1000AF7F4(&v175, v174);
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v109;
  sub_1000AEE80(v174, 0x7461447465737361, 0xE900000000000061, v112);
  v113 = v173;
  v114 = [objc_allocWithZone(NSNull) init];
  v176 = v111;
  *&v175 = v114;
  sub_1000AF7F4(&v175, v174);
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v113;
  sub_1000AEE80(v174, 0x7461507465737361, 0xE900000000000068, v115);
  v116 = v173;
  v177 = v173;
  v117 = *(a1 + 128);
  if (v117 >> 60 == 15)
  {
    v118 = *(a1 + 80);
    v119 = v166;
    if (v118)
    {
      v120 = *(a1 + 72);
      v176 = &type metadata for String;
      *&v175 = v120;
      *(&v175 + 1) = v118;
      sub_1000AF7F4(&v175, v174);

      v121 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v116;
      sub_1000AEE80(v174, 0x7461507465737361, 0xE900000000000068, v121);
      v116 = v173;
      v177 = v173;
    }

    v122 = v171;
  }

  else
  {
    v123 = *(a1 + 120);
    v176 = &type metadata for Data;
    *&v175 = v123;
    *(&v175 + 1) = v117;
    sub_1000AF7F4(&v175, v174);
    sub_100093FE8(v123, v117);
    sub_10005F304(v123, v117);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v116;
    sub_1000AEE80(v174, 0x7461447465737361, 0xE900000000000061, v124);
    sub_10005F69C(v123, v117);
    v116 = v173;
    v177 = v173;
    v122 = v171;
    v119 = v166;
  }

  v125 = v172;
  v126 = (a1 + v172[25]);
  v127 = v126[1];
  v128 = v170;
  if (v127 >> 60 != 15)
  {
    v129 = *v126;
    v176 = &type metadata for Data;
    *&v175 = v129;
    *(&v175 + 1) = v127;
    sub_1000AF7F4(&v175, v174);
    sub_100093FE8(v129, v127);
    sub_10005F304(v129, v127);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v116;
    sub_1000AEE80(v174, 0x41726F7461657263, 0xED00007473657474, v130);
    sub_10005F69C(v129, v127);
    v116 = v173;
    v177 = v173;
  }

  v131 = (a1 + v125[26]);
  v132 = v131[1];
  if (v132 >> 60 != 15)
  {
    v133 = *v131;
    v176 = &type metadata for Data;
    *&v175 = v133;
    *(&v175 + 1) = v132;
    sub_1000AF7F4(&v175, v174);
    sub_100093FE8(v133, v132);
    sub_10005F304(v133, v132);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v116;
    sub_1000AEE80(v174, 0x7441726576726573, 0xEC00000074736574, v134);
    sub_10005F69C(v133, v132);
    v116 = v173;
    v177 = v173;
  }

  v135 = v167;
  v136 = (a1 + v125[27]);
  v137 = v136[1];
  if (v137)
  {
    v138 = *v136;
    v176 = &type metadata for String;
    *&v175 = v138;
    *(&v175 + 1) = v137;
    sub_1000AF7F4(&v175, v174);

    v139 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v116;
    sub_1000AEE80(v174, 0x676154456B63, 0xE600000000000000, v139);
    v116 = v173;
    v177 = v173;
  }

  sub_1000939A8(a1 + v125[28], v119, &qword_1001287D0, &qword_1000E6C30);
  v140 = *(v128 + 48);
  if (v140(v119, 1, v122) == 1)
  {
    sub_100066C80(v119, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v141 = v162;
    (*(v128 + 32))(v162, v119, v122);
    Date.timeIntervalSinceReferenceDate.getter();
    v176 = &type metadata for Double;
    *&v175 = v142;
    sub_1000AF7F4(&v175, v174);
    v143 = v177;
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v143;
    sub_1000AEE80(v174, 0x6574616572436B63, 0xED00006574614464, v144);
    v145 = v141;
    v125 = v172;
    (*(v128 + 8))(v145, v122);
    v116 = v173;
    v177 = v173;
  }

  sub_1000939A8(a1 + v125[29], v135, &qword_1001287D0, &qword_1000E6C30);
  if (v140(v135, 1, v122) == 1)
  {
    sub_100066C80(v135, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v146 = v163;
    (*(v128 + 32))(v163, v135, v122);
    Date.timeIntervalSinceReferenceDate.getter();
    v176 = &type metadata for Double;
    *&v175 = v147;
    sub_1000AF7F4(&v175, v174);
    v148 = v177;
    v149 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v148;
    sub_1000AEE80(v174, 0x696669646F4D6B63, 0xEE00657461446465, v149);
    (*(v128 + 8))(v146, v122);
    v116 = v173;
    v177 = v173;
  }

  v151 = v168;
  v150 = v169;
  sub_1000939A8(a1 + v172[30], v168, &qword_1001287D0, &qword_1000E6C30);
  if (v140(v151, 1, v122) == 1)
  {
    sub_100066C80(v151, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v152 = v151;
    v153 = v164;
    (*(v128 + 32))(v164, v152, v122);
    Date.timeIntervalSinceReferenceDate.getter();
    v176 = &type metadata for Double;
    *&v175 = v154;
    sub_1000AF7F4(&v175, v174);
    v155 = v177;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v155;
    sub_1000AEE80(v174, 0x6144636E79536B63, 0xEA00000000006574, v156);
    (*(v128 + 8))(v153, v122);
    v116 = v173;
    v177 = v173;
  }

  sub_1000939A8(a1 + v172[31], v150, &qword_1001287D0, &qword_1000E6C30);
  if (v140(v150, 1, v122) == 1)
  {
    sub_100066C80(v150, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v157 = v165;
    (*(v128 + 32))(v165, v150, v122);
    Date.timeIntervalSinceReferenceDate.getter();
    v176 = &type metadata for Double;
    *&v175 = v158;
    sub_1000AF7F4(&v175, v174);
    v159 = v177;
    v160 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v159;
    sub_1000AEE80(v174, 0xD000000000000010, 0x80000001000F1290, v160);
    (*(v128 + 8))(v157, v122);
    return v173;
  }

  return v116;
}

uint64_t sub_10009DD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v248 = a2;
  v3 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v261 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v254 = &v199 - v8;
  v9 = __chkstk_darwin(v7);
  v253 = &v199 - v10;
  v11 = __chkstk_darwin(v9);
  v252 = &v199 - v12;
  v13 = __chkstk_darwin(v11);
  v251 = &v199 - v14;
  __chkstk_darwin(v13);
  v250 = &v199 - v15;
  v249 = type metadata accessor for MACloudMAAsset();
  v16 = *(*(v249 - 1) + 64);
  v17 = __chkstk_darwin(v249);
  v19 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v199 - v21;
  __chkstk_darwin(v20);
  v24 = &v199 - v23;
  if (*(a1 + 16) && (v25 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL), (v26 & 1) != 0) && (sub_100066130(*(a1 + 56) + 32 * v25, &v259), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v258;
    v245 = v257;
  }

  else
  {
    v245 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = *(a1 + 16);
  v246 = v19;
  v247 = v24;
  if (!v28)
  {
    v31 = 0;
    goto LABEL_17;
  }

  v29 = sub_100065A98(0x74617453636E7973, 0xE900000000000065);
  if ((v30 & 1) == 0 || (sub_100066130(*(a1 + 56) + 32 * v29, &v259), !swift_dynamicCast()))
  {
    v31 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

LABEL_17:
    v34 = 0;
LABEL_18:
    v35 = 0;
    goto LABEL_19;
  }

  v31 = v257;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

LABEL_12:
  v32 = sub_100065A98(0x756F6C436D6F7266, 0xE900000000000064);
  if ((v33 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v32, &v259), swift_dynamicCast()))
  {
    v34 = v257 == 1;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  v47 = sub_100065A98(0x6B63416C61636F6CLL, 0xEA00000000006465);
  if ((v48 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100066130(*(a1 + 56) + 32 * v47, &v259);
  if (!swift_dynamicCast())
  {
    goto LABEL_18;
  }

  v35 = v257 == 1;
LABEL_19:
  v36 = sub_1000C1780(v31);
  if (v36 == 11)
  {

    *&v259 = 0;
    *(&v259 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *&v259 = 0xD000000000000020;
    *(&v259 + 1) = 0x80000001000F12B0;
    v37._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v37);

    v39 = *(&v259 + 1);
    v38 = v259;
    v40 = 10;
LABEL_33:
    v50 = nullsub_1(v40, v38, v39);
    v52 = v51;
    v54 = v53;
    sub_100092A98();
    swift_allocError();
    *v55 = v50;
    *(v55 + 8) = v52;
    *(v55 + 16) = v54;
    return swift_willThrow();
  }

  if (!*(a1 + 16) || (v41 = v36, v244 = v27, v42 = sub_100065A98(0x7361487465737361, 0xE900000000000068), (v43 & 1) == 0) || (sub_100066130(*(a1 + 56) + 32 * v42, &v259), (swift_dynamicCast() & 1) == 0))
  {

    *&v259 = 0;
    *(&v259 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v259 = 0xD000000000000021;
    *(&v259 + 1) = 0x80000001000F12E0;
    v49._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v49);

    v39 = *(&v259 + 1);
    v38 = v259;
    v40 = 13;
    goto LABEL_33;
  }

  v243 = v257;
  v242 = v258;
  if (!*(a1 + 16))
  {
    goto LABEL_42;
  }

  v44 = sub_100065A98(0x7461447465737361, 0xE900000000000061);
  if ((v45 & 1) == 0 || (sub_100066130(*(a1 + 56) + 32 * v44, &v259), (swift_dynamicCast() & 1) == 0))
  {
    if (*(a1 + 16))
    {
      v57 = sub_100065A98(0x7461507465737361, 0xE900000000000068);
      if (v58)
      {
        sub_100066130(*(a1 + 56) + 32 * v57, &v259);
        v59 = swift_dynamicCast();
        v60 = v257;
        if (!v59)
        {
          v60 = 0;
        }

        v238 = v60;
        if (v59)
        {
          v61 = v258;
        }

        else
        {
          v61 = 0;
        }

        v237 = v61;
        goto LABEL_43;
      }
    }

LABEL_42:
    v238 = 0;
    v237 = 0;
LABEL_43:
    v241 = 0;
    v46 = 0xF000000000000000;
    goto LABEL_44;
  }

  v238 = 0;
  v237 = 0;
  v46 = v258;
  v241 = v257;
LABEL_44:
  v240 = v46;
  v236 = sub_1000C182C(v41, v34, v35);
  if (*(a1 + 16) && (v62 = sub_100065A98(0x634164726F636572, 0xED0000746E756F63), (v63 & 1) != 0))
  {
    sub_100066130(*(a1 + 56) + 32 * v62, &v259);
    if (swift_dynamicCast())
    {
      v64 = v258;
      if (!v258)
      {
        goto LABEL_51;
      }

      v65 = HIBYTE(v258) & 0xF;
      if ((v258 & 0x2000000000000000) == 0)
      {
        v65 = v257 & 0xFFFFFFFFFFFFLL;
      }

      if (!v65)
      {
        v257 = 0;
        v258 = 0;

        v64 = v258;
        v200 = v257;
      }

      else
      {
LABEL_51:
        v200 = v257;
      }
    }

    else
    {
      v200 = 0;
      v64 = 0;
      v257 = 0;
      v258 = 0;
    }
  }

  else
  {
    v200 = 0;
    v257 = 0;
    v258 = 0;
    v64 = 0;
  }

  v66 = *(a1 + 16);

  if (!v66)
  {
    v232 = 0;
    v233 = 0;
LABEL_71:
    v235 = 0;
    v234 = 0;
    goto LABEL_72;
  }

  v67 = sub_100065A98(0x6E61487465737361, 0xEB00000000656C64);
  if (v68)
  {
    sub_100066130(*(a1 + 56) + 32 * v67, &v259);
    v69 = swift_dynamicCast();
    v70 = v255;
    if (!v69)
    {
      v70 = 0;
    }

    v233 = v70;
    if (v69)
    {
      v71 = v256;
    }

    else
    {
      v71 = 0;
    }

    v232 = v71;
  }

  else
  {
    v233 = 0;
    v232 = 0;
  }

  if (!*(a1 + 16))
  {
    v234 = 0;
    v235 = 0;
LABEL_81:
    v231 = 0;
    v230 = 0;
    goto LABEL_82;
  }

  v72 = sub_100065A98(0x546E6F6973736573, 0xEC0000006E656B6FLL);
  if ((v73 & 1) == 0)
  {
    goto LABEL_71;
  }

  sub_100066130(*(a1 + 56) + 32 * v72, &v259);
  v74 = swift_dynamicCast();
  v75 = v255;
  if (!v74)
  {
    v75 = 0;
  }

  v235 = v75;
  if (v74)
  {
    v76 = v256;
  }

  else
  {
    v76 = 0;
  }

  v234 = v76;
LABEL_72:
  if (!*(a1 + 16))
  {
    goto LABEL_81;
  }

  v77 = sub_100065A98(0xD000000000000012, 0x80000001000F1250);
  if ((v78 & 1) == 0)
  {
    goto LABEL_81;
  }

  sub_100066130(*(a1 + 56) + 32 * v77, &v259);
  v79 = swift_dynamicCast();
  v80 = v255;
  if (!v79)
  {
    v80 = 0;
  }

  v231 = v80;
  if (v79)
  {
    v81 = v256;
  }

  else
  {
    v81 = 0;
  }

  v230 = v81;
LABEL_82:
  if (!*(a1 + 16))
  {
    v228 = 0;
    v229 = 0;
LABEL_96:
    v227 = 0;
    goto LABEL_97;
  }

  v82 = sub_100065A98(0xD000000000000014, 0x80000001000F1270);
  if (v83)
  {
    sub_100066130(*(a1 + 56) + 32 * v82, &v259);
    v84 = swift_dynamicCast();
    v85 = v255;
    if (!v84)
    {
      v85 = 0;
    }

    v229 = v85;
    if (v84)
    {
      v86 = v256;
    }

    else
    {
      v86 = 0;
    }

    v228 = v86;
  }

  else
  {
    v229 = 0;
    v228 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_96;
  }

  v87 = sub_100065A98(0x7A69537465737361, 0xE900000000000065);
  if ((v88 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v87, &v259), swift_dynamicCast()))
  {
    v227 = v255;
  }

  else
  {
    v227 = 0;
  }

  if (!*(a1 + 16))
  {
    v226 = 0;
    goto LABEL_113;
  }

  v94 = sub_100065A98(0x7079547465737361, 0xE900000000000065);
  if (v95)
  {
    sub_100066130(*(a1 + 56) + 32 * v94, &v259);
    if (swift_dynamicCast())
    {
      v226 = v255;
      if (!*(a1 + 16))
      {
        goto LABEL_113;
      }

      goto LABEL_98;
    }
  }

LABEL_97:
  v226 = 0;
  if (!*(a1 + 16))
  {
LABEL_113:
    v225 = 0;
    v224 = 0;
    goto LABEL_114;
  }

LABEL_98:
  v89 = sub_100065A98(0x62614C7465737361, 0xEA00000000006C65);
  if ((v90 & 1) == 0)
  {
    goto LABEL_113;
  }

  sub_100066130(*(a1 + 56) + 32 * v89, &v259);
  v91 = swift_dynamicCast();
  v92 = v255;
  if (!v91)
  {
    v92 = 0;
  }

  v225 = v92;
  if (v91)
  {
    v93 = v256;
  }

  else
  {
    v93 = 0;
  }

  v224 = v93;
LABEL_114:
  if (*(a1 + 16) && (v96 = sub_100065A98(0x6E6F697461657263, 0xEC000000656D6954), (v97 & 1) != 0))
  {
    sub_100066130(*(a1 + 56) + 32 * v96, &v259);
    v98 = swift_dynamicCast() ^ 1;
  }

  else
  {
    v98 = 1;
  }

  type metadata accessor for MAKVStoreBase();
  sub_1000C4EA0(v98, v250);
  if (*(a1 + 16))
  {
    v99 = sub_100065A98(0x616470557473616CLL, 0xEF656D6954646574);
    v100 = v241;
    if (v101)
    {
      sub_100066130(*(a1 + 56) + 32 * v99, &v259);
      v102 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v102 = 1;
    }
  }

  else
  {
    v102 = 1;
    v100 = v241;
  }

  sub_1000C4EA0(v102, v251);
  if (!*(a1 + 16))
  {
    v222 = 0;
    v223 = 0;
LABEL_141:
    v220 = 0;
    v221 = 0;
    goto LABEL_142;
  }

  v103 = sub_100065A98(0xD000000000000014, 0x80000001000F11E0);
  if (v104)
  {
    sub_100066130(*(a1 + 56) + 32 * v103, &v259);
    v105 = swift_dynamicCast();
    v106 = v255;
    if (!v105)
    {
      v106 = 0;
    }

    v223 = v106;
    if (v105)
    {
      v107 = v256;
    }

    else
    {
      v107 = 0;
    }

    v222 = v107;
  }

  else
  {
    v223 = 0;
    v222 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_141;
  }

  v108 = sub_100065A98(0xD00000000000001BLL, 0x80000001000F11C0);
  if (v109)
  {
    sub_100066130(*(a1 + 56) + 32 * v108, &v259);
    v110 = swift_dynamicCast();
    v111 = v255;
    if (!v110)
    {
      v111 = 0;
    }

    v221 = v111;
    if (v110)
    {
      v112 = v256;
    }

    else
    {
      v112 = 0;
    }

    v220 = v112;
  }

  else
  {
    v221 = 0;
    v220 = 0;
  }

  if (!*(a1 + 16) || (v116 = sub_100065A98(0xD000000000000014, 0x80000001000F11A0), (v117 & 1) == 0))
  {
LABEL_142:
    v219 = 0;
    v218 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_155;
    }

    goto LABEL_143;
  }

  sub_100066130(*(a1 + 56) + 32 * v116, &v259);
  v118 = swift_dynamicCast();
  v119 = v255;
  if (!v118)
  {
    v119 = 0;
  }

  v219 = v119;
  if (v118)
  {
    v120 = v256;
  }

  else
  {
    v120 = 0;
  }

  v218 = v120;
  if (!*(a1 + 16))
  {
    goto LABEL_155;
  }

LABEL_143:
  v113 = sub_100065A98(0x54656C69666F7270, 0xEB00000000657079);
  if (v114)
  {
    sub_100066130(*(a1 + 56) + 32 * v113, &v259);
    if (swift_dynamicCast())
    {
      v115 = v255;
      goto LABEL_156;
    }
  }

LABEL_155:
  v115 = sub_1000BF320(-2);
LABEL_156:
  v217 = sub_1000BF304(v115);
  if (!*(a1 + 16))
  {
    v215 = 0;
    v216 = 0;
LABEL_170:
    v214 = 0;
LABEL_171:
    v212 = 0;
    v128 = 0xF000000000000000;
    goto LABEL_172;
  }

  v121 = sub_100065A98(0x6F72507465737361, 0xEC00000073736563);
  if (v122)
  {
    sub_100066130(*(a1 + 56) + 32 * v121, &v259);
    v123 = swift_dynamicCast();
    v124 = v255;
    if (!v123)
    {
      v124 = 0;
    }

    v216 = v124;
    if (v123)
    {
      v125 = v256;
    }

    else
    {
      v125 = 0;
    }

    v215 = v125;
  }

  else
  {
    v216 = 0;
    v215 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_170;
  }

  v126 = sub_100065A98(0x6974704F636E7973, 0xEA00000000006E6FLL);
  if ((v127 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v126, &v259), swift_dynamicCast()))
  {
    v214 = v255;
  }

  else
  {
    v214 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_171;
  }

  v156 = sub_100065A98(0x41726F7461657263, 0xED00007473657474);
  v128 = 0xF000000000000000;
  if (v157)
  {
    sub_100066130(*(a1 + 56) + 32 * v156, &v259);
    v158 = swift_dynamicCast();
    v159 = v255;
    if (!v158)
    {
      v159 = 0;
    }

    v212 = v159;
    if (v158)
    {
      v128 = v256;
    }
  }

  else
  {
    v212 = 0;
  }

LABEL_172:
  if (!*(a1 + 16))
  {
    v210 = 0;
    v130 = 0xF000000000000000;
LABEL_189:
    v211 = v130;
    v208 = 0;
    v209 = 0;
    goto LABEL_190;
  }

  v129 = sub_100065A98(0x7441726576726573, 0xEC00000074736574);
  v130 = 0xF000000000000000;
  if (v131)
  {
    sub_100066130(*(a1 + 56) + 32 * v129, &v259);
    v132 = swift_dynamicCast();
    v133 = v255;
    if (!v132)
    {
      v133 = 0;
    }

    v210 = v133;
    if (v132)
    {
      v130 = v256;
    }
  }

  else
  {
    v210 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_189;
  }

  v211 = v130;
  v134 = sub_100065A98(0x676154456B63, 0xE600000000000000);
  if (v135)
  {
    sub_100066130(*(a1 + 56) + 32 * v134, &v259);
    v136 = swift_dynamicCast();
    v137 = v255;
    if (!v136)
    {
      v137 = 0;
    }

    v209 = v137;
    if (v136)
    {
      v138 = v256;
    }

    else
    {
      v138 = 0;
    }

    v208 = v138;
  }

  else
  {
    v209 = 0;
    v208 = 0;
  }

  if (*(a1 + 16))
  {
    v197 = sub_100065A98(0x6574616572436B63, 0xED00006574614464);
    if (v198)
    {
      sub_100066130(*(a1 + 56) + 32 * v197, &v259);
      v139 = swift_dynamicCast() ^ 1;
      goto LABEL_191;
    }
  }

LABEL_190:
  v139 = 1;
LABEL_191:
  sub_1000C4EA0(v139, v252);
  if (*(a1 + 16) && (v140 = sub_100065A98(0x696669646F4D6B63, 0xEE00657461446465), (v141 & 1) != 0))
  {
    sub_100066130(*(a1 + 56) + 32 * v140, &v259);
    v142 = swift_dynamicCast() ^ 1;
  }

  else
  {
    v142 = 1;
  }

  sub_1000C4EA0(v142, v253);
  sub_10009705C(0x6144636E79536B63, 0xEA00000000006574, a1, &v259);
  if (v260)
  {
    v143 = swift_dynamicCast() ^ 1;
  }

  else
  {
    sub_100066C80(&v259, &unk_100128830, &qword_1000E7D40);
    v143 = 1;
  }

  sub_1000C4EA0(v143, v254);
  sub_10009705C(0xD000000000000010, 0x80000001000F1290, a1, &v259);
  if (v260)
  {
    v144 = swift_dynamicCast() ^ 1;
  }

  else
  {
    sub_100066C80(&v259, &unk_100128830, &qword_1000E7D40);
    v144 = 1;
  }

  sub_1000C4EA0(v144, v261);
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v239 = xmmword_1000E6BC0;
  *(v22 + 120) = xmmword_1000E6BC0;
  v145 = v249;
  v146 = &v22[v249[17]];
  v147 = type metadata accessor for Date();
  v148 = *(*(v147 - 8) + 56);
  v206 = v146;
  (v148)(v146, 1, 1, v147);
  v201 = &v22[v145[18]];
  v148();
  v204 = &v22[v145[25]];
  v149 = v239;
  *v204 = v239;
  v207 = &v22[v145[26]];
  *v207 = v149;
  *&v239 = &v22[v145[28]];
  v148();
  v205 = &v22[v145[29]];
  v148();
  v203 = &v22[v145[30]];
  v148();
  v202 = &v22[v145[31]];
  v148();
  v150 = v232;
  *(v22 + 5) = v233;
  *(v22 + 6) = v150;
  v213 = v128;
  if (v64)
  {
    v151 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v151 = v200 & 0xFFFFFFFFFFFFLL;
    }

    v152 = v243;
    v153 = v240;
    if (!v151)
    {
      v154 = v242;
      sub_10005F304(v243, v242);
      sub_100093FE8(v100, v153);

      goto LABEL_217;
    }

    *(v22 + 2) = v200;
    *(v22 + 3) = v64;
    v154 = v242;
    sub_10005F304(v152, v242);
    v155 = v100;
  }

  else
  {
    v154 = v242;
    sub_10005F304(v243, v242);
    v155 = v100;
    v153 = v240;
  }

  sub_100093FE8(v155, v153);
LABEL_217:
  v160 = v100;
  v161 = v249;
  v162 = &v22[v249[19]];
  v163 = &v22[v249[20]];
  v164 = v249[21];
  v232 = v249[22];
  v165 = v22;
  v166 = &v22[v164];
  v167 = (v165 + v249[23]);
  v233 = (v165 + v249[27]);
  v168 = v244;
  *v165 = v245;
  *(v165 + 8) = v168;
  v169 = v236;
  *(v165 + 32) = v236;
  *(v165 + 33) = BYTE1(v169) & 1;
  *(v165 + 34) = BYTE2(v169) & 1;
  v170 = v234;
  *(v165 + 56) = v235;
  *(v165 + 64) = v170;
  v171 = v237;
  *(v165 + 72) = v238;
  *(v165 + 80) = v171;
  v172 = v230;
  *(v165 + 88) = v231;
  *(v165 + 96) = v172;
  v173 = v228;
  *(v165 + 104) = v229;
  *(v165 + 112) = v173;
  sub_10005F69C(*(v165 + 120), *(v165 + 128));
  *(v165 + 120) = v160;
  *(v165 + 128) = v153;
  *(v165 + 136) = v243;
  *(v165 + 144) = v154;
  v174 = v226;
  *(v165 + 152) = v227;
  *(v165 + 160) = v174;
  v175 = v224;
  *(v165 + 168) = v225;
  *(v165 + 176) = v175;
  sub_1000941F8(v250, v206);
  sub_1000941F8(v251, v201);
  v176 = v222;
  *v162 = v223;
  *(v162 + 1) = v176;
  v177 = v220;
  *v163 = v221;
  *(v163 + 1) = v177;
  v178 = v218;
  *v166 = v219;
  *(v166 + 1) = v178;
  *(v165 + v161[24]) = v217;
  v179 = v215;
  *v167 = v216;
  v167[1] = v179;
  *(v165 + v232) = v214;
  v180 = v204;
  sub_10005F69C(*v204, *(v204 + 1));
  v181 = v213;
  *v180 = v212;
  *(v180 + 1) = v181;
  v182 = v207;
  sub_10005F69C(*v207, *(v207 + 1));
  v183 = v211;
  *v182 = v210;
  *(v182 + 1) = v183;
  v184 = v233;
  v185 = v208;
  *v233 = v209;
  v184[1] = v185;
  sub_1000941F8(v252, v239);
  sub_1000941F8(v253, v205);
  sub_1000941F8(v254, v203);
  sub_1000941F8(v261, v202);
  v186 = v247;
  sub_1000AFAB8(v165, v247);
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v187 = type metadata accessor for Logger();
  sub_100066000(v187, qword_10012A3A8);
  v188 = v246;
  sub_1000AF858(v186, v246);
  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    *&v259 = v192;
    *v191 = 136315138;
    v193 = sub_100095824();
    v195 = v194;
    sub_1000AF8BC(v188);
    v196 = sub_100065658(v193, v195, &v259);

    *(v191 + 4) = v196;
    _os_log_impl(&_mh_execute_header, v189, v190, "read from localDB: %s", v191, 0xCu);
    sub_10005D588(v192);

    sub_10005F69C(v241, v240);
    sub_10005F358(v243, v242);
  }

  else
  {
    sub_10005F358(v243, v242);
    sub_10005F69C(v241, v240);

    sub_1000AF8BC(v188);
  }

  sub_1000AFAB8(v186, v248);
}

uint64_t sub_10009F7FC(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  v4 = *(*(sub_10005F5CC(&qword_100128808, &unk_1000E6C50) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v5 = type metadata accessor for MACloudMAAsset();
  v3[45] = v5;
  v6 = *(v5 - 8);
  v3[46] = v6;
  v7 = *(v6 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return _swift_task_switch(sub_10009F938, v2, 0);
}

uint64_t sub_10009F938()
{
  v78 = v0;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = *(v0 + 328);
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_10012A3A8);
  sub_1000AF858(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 384);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v77 = v9;
    *v8 = 136315138;
    v10 = sub_100095824();
    v12 = v11;
    sub_1000AF8BC(v7);
    v13 = sub_100065658(v10, v12, &v77);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "saveAssetFromCloud: %s", v8, 0xCu);
    sub_10005D588(v9);
  }

  else
  {

    sub_1000AF8BC(v7);
  }

  v14 = *(v0 + 360);
  v15 = *(v0 + 368);
  v16 = *(v0 + 352);
  sub_1000939A8(*(v0 + 336), v16, &qword_100128808, &unk_1000E6C50);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    sub_100066C80(*(v0 + 352), &qword_100128808, &unk_1000E6C50);
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0;
  }

  else
  {
    v17 = *(v0 + 352);
    *(v0 + 296) = *(v0 + 360);
    *(v0 + 304) = sub_1000AF620(&unk_100128840, 255, type metadata accessor for MACloudMAAsset);
    v18 = sub_10005D4D0((v0 + 272));
    sub_1000AFAB8(v17, v18);
  }

  v19 = *(v0 + 360);
  v20 = *(v0 + 328);
  v21 = sub_1000AF620(&unk_100128840, 255, type metadata accessor for MACloudMAAsset);
  LOBYTE(v20) = sub_1000C1850(v0 + 272, v19, v21);
  v22 = sub_100066C80(v0 + 272, &unk_100129080, &qword_1000E7D60);
  if (v20)
  {
    v23 = (**(v0 + 344) + 352);
    v24 = *v23;
    v25 = (*v23)(v22);
    (*(**(v0 + 344) + 264))(*(v0 + 328));
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 312) = 0;
    v27 = [v25 putDictionay:isa attributes:0 error:v0 + 312];

    v28 = *(v0 + 312);
    if (v27)
    {
      v29 = *(v0 + 328);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(*(v0 + 344) + 120);

      v33 = v28;
      v34 = sub_1000970C0();
      if (v29[8])
      {
        v35 = *(*(v0 + 328) + 56);
        v36 = String._bridgeToObjectiveC()();
      }

      else
      {
        v36 = 0;
      }

      v39 = [v32 didReceiveAsset:v34 sessionToken:v36];

      if (v39)
      {
        v40 = v31;
        v41 = *(v0 + 344);
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;
        v44 = [*(v41 + 112) assetPath:v39];

        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v59 = v24();
        sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000E61E0;
        v61 = v43;
        *(inited + 32) = 0x614E64726F636572;
        v62 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = 0xEA0000000000656DLL;
        *(inited + 48) = v40;
        *(inited + 56) = v30;
        sub_1000AF988(inited);
        swift_setDeallocating();
        sub_100066C80(v62, &qword_100129070, &qword_1000E7440);
        v63 = Dictionary._bridgeToObjectiveC()().super.isa;

        v64 = swift_initStackObject();
        *(v64 + 16) = xmmword_1000E6BE0;
        *(v64 + 32) = 0x6B63416C61636F6CLL;
        *(v64 + 40) = 0xEA00000000006465;
        *(v64 + 48) = 1;
        *(v64 + 72) = &type metadata for Int;
        *(v64 + 80) = 0x6E61487465737361;
        *(v64 + 88) = 0xEB00000000656C64;
        *(v64 + 96) = v76;
        *(v64 + 104) = v61;
        *(v64 + 120) = &type metadata for String;
        *(v64 + 128) = 0x7461507465737361;
        *(v64 + 168) = &type metadata for String;
        *(v64 + 136) = 0xE900000000000068;
        *(v64 + 144) = v75;
        *(v64 + 152) = v46;
        sub_1000AF988(v64);
        swift_setDeallocating();
        sub_10005F5CC(&qword_100129070, &qword_1000E7440);
        swift_arrayDestroy();
        v65 = Dictionary._bridgeToObjectiveC()().super.isa;

        *(v0 + 320) = 0;
        v66 = [v59 updateFor:v63 value:v65 attributes:0 error:v0 + 320];

        v67 = *(v0 + 320);
        if (v66)
        {
          v68 = v67;
        }

        else
        {
          v69 = v67;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      else
      {
        v47 = *(v0 + 376);
        v48 = *(v0 + 328);

        sub_1000AF858(v48, v47);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();
        v51 = os_log_type_enabled(v49, v50);
        v52 = *(v0 + 376);
        if (v51)
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v77 = v54;
          *v53 = 136315138;
          v55 = sub_100095824();
          v57 = v56;
          sub_1000AF8BC(v52);
          v58 = sub_100065658(v55, v57, &v77);

          *(v53 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v49, v50, "Delegate failed to process didReceive for %s", v53, 0xCu);
          sub_10005D588(v54);
        }

        else
        {

          sub_1000AF8BC(v52);
        }
      }
    }

    else
    {
      v38 = v28;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v37 = *(v0 + 328);
    sub_100097C44();
  }

  v71 = *(v0 + 376);
  v70 = *(v0 + 384);
  v72 = *(v0 + 352);

  v73 = *(v0 + 8);

  return v73();
}
CKRecord_optional __swiftcall REMCDHashtag.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v172 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v180 = &v169 - v11;
  v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v169 - v18;
  v191.receiver = v1;
  v191.super_class = REMCDHashtag;
  v20 = objc_msgSendSuper2(&v191, "newlyCreatedRecord", v17);
  v23 = v20;
  if (v20)
  {
    v178 = v9;
    v179 = v2;
    v24 = 0;
    v182 = "account.identifier";
    v176 = (v3 + 48);
    v177 = (v3 + 56);
    v171 = (v3 + 16);
    v170 = (v3 + 8);
    *&v22 = 136446210;
    v173 = v22;
    *&v22 = 136446722;
    v175 = v22;
    *&v22 = 136446466;
    v169 = v22;
    *&v22 = 136446978;
    v174 = v22;
    v183 = v1;
    v184 = v15;
    v185 = v19;
    v187 = v20;
    while (1)
    {
      v26 = *(&off_1008E28C8 + v24 + 32);
      if (v26 <= 1)
      {
        break;
      }

      if (v26 == 2)
      {
        v50 = [v1 reminder];
        if (!v50)
        {
          if ([v1 markedForDeletion])
          {
            if (qword_100935CF8 != -1)
            {
              swift_once();
            }

            v74 = type metadata accessor for Logger();
            sub_100006654(v74, qword_10093E840);
            v75 = v1;
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              *&v188 = v79;
              *v78 = v173;
              v80 = [v75 remObjectID];
              if (v80)
              {
                v81 = v80;
                v82 = [v80 description];

                v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v85 = v84;

                v15 = v184;
              }

              else
              {
                v85 = 0xE300000000000000;
                v83 = 7104878;
              }

              v152 = sub_10000668C(v83, v85, &v188);

              *(v78 + 4) = v152;
              _os_log_impl(&_mh_execute_header, v76, v77, "REMCDHashtag+CloudKit: newlyCreatedRecord() (key=.reminder) unsetting reminder CK reference as the hashtag is markedForDeletion and no longer connected to its reminder {hashtag: %{public}s}", v78, 0xCu);
              sub_10000607C(v79);
            }

            else
            {
            }

            v23 = v187;
            CKRecord.subscript.setter();
            goto LABEL_5;
          }

          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v105 = type metadata accessor for Logger();
          sub_100006654(v105, qword_10093E840);
          v106 = v1;
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            *&v188 = v110;
            *v109 = v173;
            v111 = [v106 remObjectID];
            if (v111)
            {
              v112 = v111;
              v113 = [v111 description];

              v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v115;

              v15 = v184;
            }

            else
            {
              v116 = 0xE300000000000000;
              v114 = 7104878;
            }

            v153 = sub_10000668C(v114, v116, &v188);

            *(v109 + 4) = v153;
            _os_log_impl(&_mh_execute_header, v107, v108, "REMCDHashtag+CloudKit: Unexpectedly got cdHashtag.reminder == nil for a hashtag not marked for deletion in newlyCreatedRecord() (key=.reminder) {hashtag: %{public}s}", v109, 0xCu);
            sub_10000607C(v110);

            goto LABEL_97;
          }

          goto LABEL_79;
        }

        v51 = v50;
        v52 = [v50 isOwnedByCurrentUser];
        if (qword_100935CF8 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_10093E840);
        v54 = v1;
        v55 = v51;
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          *&v188 = v181;
          *v58 = v175;
          v186 = v52;
          v59 = Bool.yesno.getter();
          v61 = sub_10000668C(v59, v60, &v188);

          *(v58 + 4) = v61;
          *(v58 + 12) = 2082;
          v62 = [v54 remObjectID];
          if (v62)
          {
            v63 = v62;
            v64 = [v62 description];

            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;
          }

          else
          {
            v67 = 0xE300000000000000;
            v65 = 7104878;
          }

          v127 = sub_10000668C(v65, v67, &v188);

          *(v58 + 14) = v127;
          *(v58 + 22) = 2082;
          v128 = [v55 remObjectID];
          if (v128)
          {
            v129 = v128;
            v130 = [v128 description];

            v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v133 = v132;
          }

          else
          {
            v133 = 0xE300000000000000;
            v131 = 7104878;
          }

          v134 = sub_10000668C(v131, v133, &v188);

          *(v58 + 24) = v134;
          _os_log_impl(&_mh_execute_header, v56, v57, "REMCDHashtag+CloudKit: newlyCreatedRecord() will set up a CK reference only if the tag was created by the owner {owner?: %{public}s, hashtag: %{public}s, reminder: %{public}s}", v58, 0x20u);
          swift_arrayDestroy();

          v1 = v183;
          v15 = v184;
          v23 = v187;
          if (v186)
          {
LABEL_65:
            v135 = [v55 recordID];
            v136 = [v54 cloudKitReferenceWithRecordIDAndValidateAction:v135];

            CKRecord.subscript.setter();
          }
        }

        else
        {

          if (v52)
          {
            goto LABEL_65;
          }
        }

        v19 = v185;
        goto LABEL_5;
      }

      if (v26 != 3)
      {
        v25 = [v1 type];
        *(&v189 + 1) = &type metadata for Int16;
        v190 = &protocol witness table for Int16;
        LOWORD(v188) = v25;
        sub_10018E134();
LABEL_4:
        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_5;
      }

      v27 = [v1 reminder];
      if (!v27)
      {
        if ([v1 markedForDeletion])
        {
          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v86 = type metadata accessor for Logger();
          sub_100006654(v86, qword_10093E840);
          v87 = v1;
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            *&v188 = v91;
            *v90 = v173;
            v92 = [v87 remObjectID];
            if (v92)
            {
              v93 = v92;
              v94 = [v92 description];

              v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v97 = v96;

              v15 = v184;
            }

            else
            {
              v97 = 0xE300000000000000;
              v95 = 7104878;
            }

            v154 = sub_10000668C(v95, v97, &v188);

            *(v90 + 4) = v154;
            _os_log_impl(&_mh_execute_header, v88, v89, "REMCDHashtag+CloudKit: newlyCreatedRecord() (key=.sharedToMeReminderCKIdentifier) unsetting SharedToMeReminderCKIdentifier as the hashtag is markedForDeletion and no longer connected to its reminder {hashtag: %{public}s}", v90, 0xCu);
            sub_10000607C(v91);
          }

          else
          {
          }

          v23 = v187;
          v155 = [v187 encryptedValues];
          v156 = String._bridgeToObjectiveC()();
          [v155 setObject:0 forKeyedSubscript:v156];
          swift_unknownObjectRelease();

          goto LABEL_5;
        }

        if (qword_100935CF8 != -1)
        {
          swift_once();
        }

        v117 = type metadata accessor for Logger();
        sub_100006654(v117, qword_10093E840);
        v118 = v1;
        v107 = Logger.logObject.getter();
        v119 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v107, v119))
        {
          v120 = swift_slowAlloc();
          *&v188 = swift_slowAlloc();
          *v120 = v169;
          v121 = [v118 remObjectID];
          if (v121)
          {
            v122 = v121;
            v123 = [v121 description];

            v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v126 = v125;
          }

          else
          {
            v126 = 0xE300000000000000;
            v124 = 7104878;
          }

          v157 = sub_10000668C(v124, v126, &v188);

          *(v120 + 4) = v157;
          *(v120 + 12) = 2082;
          v158 = [v118 reminder];
          if (v158)
          {
            v159 = v158;
            v160 = [v158 remObjectID];
            v19 = v185;
            if (v160)
            {
              v161 = v160;
              v162 = [v160 description];

              v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v165 = v164;

              v166 = v163;
            }

            else
            {

              v165 = 0xE300000000000000;
              v166 = 7104878;
            }
          }

          else
          {
            v165 = 0xE300000000000000;
            v166 = 7104878;
            v19 = v185;
          }

          v167 = sub_10000668C(v166, v165, &v188);

          *(v120 + 14) = v167;
          _os_log_impl(&_mh_execute_header, v107, v119, "REMCDHashtag+CloudKit: Unexpectedly got cdHashtag.reminder == nil for a hashtag not marked for deletion in newlyCreatedRecord() (key=.sharedToMeReminderCKIdentifier) {hashtag: %{public}s, reminder: %{public}s}", v120, 0x16u);
          swift_arrayDestroy();

          v1 = v183;
          v15 = v184;
LABEL_97:
          v23 = v187;
          goto LABEL_5;
        }

LABEL_79:

        v23 = v187;
        goto LABEL_5;
      }

      v28 = v27;
      v186 = [v27 isOwnedByCurrentUser];
      if (qword_100935CF8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100006654(v29, qword_10093E840);
      v30 = v1;
      v31 = v28;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        *&v188 = v181;
        *v34 = v174;
        v35 = Bool.yesno.getter();
        v37 = sub_10000668C(v35, v36, &v188);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2082;
        [v31 isSharedViaICloud];
        v38 = Bool.yesno.getter();
        v40 = sub_10000668C(v38, v39, &v188);

        *(v34 + 14) = v40;
        *(v34 + 22) = 2082;
        v41 = [v30 remObjectID];
        if (v41)
        {
          v42 = v41;
          v43 = [v41 description];

          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
        }

        else
        {
          v46 = 0xE300000000000000;
          v44 = 7104878;
        }

        v137 = sub_10000668C(v44, v46, &v188);

        *(v34 + 24) = v137;
        *(v34 + 32) = 2082;
        v138 = [v31 remObjectID];
        if (v138)
        {
          v139 = v138;
          v140 = [v138 description];

          v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v143 = v142;
        }

        else
        {
          v143 = 0xE300000000000000;
          v141 = 7104878;
        }

        v19 = v185;
        v146 = sub_10000668C(v141, v143, &v188);

        *(v34 + 34) = v146;
        _os_log_impl(&_mh_execute_header, v32, v33, "REMCDHashtag+CloudKit: newlyCreatedRecord() will write to SharedToMeReminderCKIdentifier only if the tag was created by a participant {owner?: %{public}s, isShared?: %{public}s, hashtag: %{public}s, reminder: %{public}s}", v34, 0x2Au);
        swift_arrayDestroy();

        v1 = v183;
        v15 = v184;
        v23 = v187;
        if ((v186 & 1) == 0)
        {
LABEL_48:
          [v23 encryptedValues];
          v101 = [v30 reminderIdentifier];
          if (v101)
          {
            v102 = v178;
            v103 = v101;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v104 = 0;
          }

          else
          {
            v104 = 1;
            v102 = v178;
          }

          v144 = v179;
          (*v177)(v102, v104, 1, v179);
          v145 = v180;
          sub_100031B58(v102, v180, &unk_100939D90, "8\n\r");
          if ((*v176)(v145, 1, v144))
          {
            sub_1000050A4(v145, &unk_100939D90, "8\n\r");
            v188 = 0u;
            v189 = 0u;
            v190 = 0;
          }

          else
          {
            v147 = v172;
            (*v171)(v172, v145, v144);
            sub_1000050A4(v145, &unk_100939D90, "8\n\r");
            v148 = UUID.uuidString.getter();
            v150 = v149;
            v151 = v147;
            v23 = v187;
            (*v170)(v151, v144);
            *(&v189 + 1) = &type metadata for String;
            v190 = &protocol witness table for String;
            *&v188 = v148;
            *(&v188 + 1) = v150;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();

          swift_unknownObjectRelease();
          v19 = v185;
          goto LABEL_5;
        }
      }

      else
      {

        if ((v186 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

LABEL_5:
      if (++v24 == 5)
      {
        goto LABEL_98;
      }
    }

    if (*(&off_1008E28C8 + v24 + 32))
    {
      v68 = [v23 encryptedValues];
      v69 = [v1 name];
      if (v69)
      {
        v70 = v69;
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        *(&v189 + 1) = &type metadata for String;
        v190 = &protocol witness table for String;
        *&v188 = v71;
        *(&v188 + 1) = v73;
      }

      else
      {
        v190 = 0;
        v188 = 0u;
        v189 = 0u;
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    v47 = [v1 creationDate];
    if (v47)
    {
      v48 = v47;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v98 = type metadata accessor for Date();
    v99 = *(v98 - 8);
    (*(v99 + 56))(v15, v49, 1, v98);
    sub_100031B58(v15, v19, &unk_100938850, qword_100795AE0);
    if ((*(v99 + 48))(v19, 1, v98) == 1)
    {
      sub_1000050A4(v19, &unk_100938850, qword_100795AE0);
      v188 = 0u;
      v189 = 0u;
      v190 = 0;
    }

    else
    {
      *(&v189 + 1) = v98;
      v190 = &protocol witness table for Date;
      v100 = sub_1000103CC(&v188);
      (*(v99 + 32))(v100, v19, v98);
    }

    sub_10018E134();
    goto LABEL_4;
  }

LABEL_98:
  v168 = v23;
  result.value.super.isa = v168;
  result.is_nil = v21;
  return result;
}

Swift::Void __swiftcall REMCDHashtag.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935CF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10093E840);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v45 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v47);

  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v16 = [v4 reminder];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 remObjectID];
  if (!v18)
  {

LABEL_12:
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

LABEL_13:
  v23 = sub_10000668C(v7, v22, &v47);

  *(v8 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for hashtag {hashtagID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 reminder];
  if (v24)
  {
    v46 = v24;
    if ([v24 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v25 = v4;
      v26 = v46;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v29 = 136446466;
        v30 = &selRef_persistentStoreForIdentifier_;
        v31 = [v25 remObjectID];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 description];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v30 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v36 = 0xE300000000000000;
          v34 = 7104878;
        }

        v37 = sub_10000668C(v34, v36, &v47);

        *(v29 + 4) = v37;
        *(v29 + 12) = 2082;
        v38 = [v26 v30[106]];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 description];

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        v44 = sub_10000668C(v41, v43, &v47);

        *(v29 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v27, v28, "Reminder is marked for deletion but hashtag is not {hashtagID: %{public}s, reminderID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      [v25 markForDeletion];
    }

    [v46 forcePushToCloud];
  }
}

Swift::Void __swiftcall REMCDHashtag.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093E840);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093E858, qword_10079CB30);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

uint64_t _sSo12REMCDHashtagC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093E840);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093E858, qword_10079CB30);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo12REMCDHashtagC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093E840);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093E858, qword_10079CB30);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_10024653C(void *a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  v13 = _swiftEmptyArrayStorage;
  sub_1000F5104(qword_10094ECA0, &unk_1007B4A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  KeyPath = swift_getKeyPath();
  v8 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = sub_100392340(KeyPath, v5);

  *(inited + 32) = v10;
  sub_100272378(inited);
  return sub_10000C2B0(v13);
}

uint64_t sub_100246698()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E860);
  v1 = sub_100006654(v0, qword_10093E860);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Class sub_100246760(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  swift_bridgeObjectRelease_n();
  return v4.super.isa;
}

id sub_100246808(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1000F5104(&qword_10093E970, &unk_10079CC50);
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = *(v44 + 64);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = sub_100392DF0(_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = _swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cancellables] = v16;
  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList] = 0;
  v17 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedEditingSessionID;
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = &v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedMLModels];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  *(v19 + 5) = 255;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 73) = 0u;
  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedContacts] = _swiftEmptyDictionarySingleton;
  v20 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_contactStore;
  *&v4[v20] = [objc_allocWithZone(CNContactStore) init];
  v21 = a3;
  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_queue] = a3;
  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_storePerformer] = a1;
  v22 = *(a2 + 8);
  v23 = *(a2 + 24);
  v24 = *(a2 + 40);
  v25 = a1;
  v26 = *(a2 + 56);
  v27 = &v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource];
  v28 = *(a2 + 16);
  *v27 = *a2;
  *(v27 + 1) = v28;
  v29 = *(a2 + 48);
  *(v27 + 2) = *(a2 + 32);
  *(v27 + 3) = v29;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v30 = v21;
  v39 = v25;
  v43 = v22;

  v42 = v23;

  v41 = v24;

  v40 = v26;

  v31 = objc_msgSendSuper2(&v49, "init");
  v32 = qword_100935D08;
  v33 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v47 = qword_10093E878;
  v48 = v30;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v34 - 8) + 56))(v11, 1, 1, v34);

  v38 = v30;
  sub_1000F5104(&unk_10093E978, &qword_1007A1070);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_10093E988, &unk_10093E978, &qword_1007A1070);
  sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr);
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v11, &qword_100939980, &unk_10079ADA0);

  sub_10000CB48(&qword_10093E998, &qword_10093E970, &unk_10079CC50);
  v35 = v45;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v44 + 8))(v15, v35);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v33;
}

uint64_t sub_100246D50()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v1 = v0 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedMLModels;
  swift_beginAccess();
  v9 = ~*(v1 + 40);
  if (*(v1 + 40) != 0xFF)
  {
    v10 = *(v1 + 80);
    v11 = *(v1 + 88);
    v17[1] = v10;
    v18 = v11;
    sub_1002490E8(v10, v11);
    sub_1000F5104(&qword_10093E9A8, &qword_1007A8A70);
    Result<>.tryMap<A>(transform:)();
    sub_100249154(v10, v11);
    sub_100138D4C(*&v19[0], SBYTE8(v19[0]));
  }

  if (qword_100935D00 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10093E860);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "SuggestedAttributesPerformer.cachedMLModels invalidating cache", v15, 2u);
  }

  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v21 = 255;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  swift_beginAccess();
  sub_100249770(v19, v1);
  return swift_endAccess();
}

id sub_100247000()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100935D00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10093E860);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deallocating SuggestedAttributesPerformer", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t type metadata accessor for RDXPCSuggestedAttributesPerformer()
{
  result = qword_10093E948;
  if (!qword_10093E948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100247294()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_100935D00 == -1)
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
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093E860);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Prewarming models", v13, 2u);
  }

  sub_100247474(v15);
  return sub_1002497E0(v15);
}

double sub_100247474@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_4:
    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10093E860);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "SuggestedAttributesPerformer.cachedMLModels cache miss, loaded and set cache";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = &v27;
  v12 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedMLModels;
  swift_beginAccess();
  sub_100010364(v1 + v12, v23, &qword_10093E9A0, &unk_10079CC60);
  if (BYTE8(v24) == 0xFF)
  {
    sub_1000050A4(v23, &qword_10093E9A0, &unk_10079CC60);
    sub_100247988(&v27);
    sub_100249810(&v27, v23);
    swift_beginAccess();
    sub_100249770(v23, v1 + v12);
    swift_endAccess();
    if (qword_100935D00 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v29 = v24;
  v30 = v25;
  v31[0] = v26[0];
  *(v31 + 9) = *(v26 + 9);
  v27 = v23[0];
  v28 = v23[1];
  if (qword_100935D00 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10093E860);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "SuggestedAttributesPerformer.cachedMLModels cache hit";
    goto LABEL_10;
  }

LABEL_11:

  v19 = v30;
  a1[2] = v29;
  a1[3] = v19;
  a1[4] = v31[0];
  *(a1 + 73) = *(v11 + 73);
  result = *&v27;
  v21 = v28;
  *a1 = v27;
  a1[1] = v21;
  return result;
}

uint64_t sub_100247988@<X0>(_OWORD *a1@<X8>)
{
  v78 = a1;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v68 - v7;
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  sub_1000060C8(0, &qword_10093E9B0, REMPaths_ptr);
  static REMPaths.mlModelURL()();
  sub_1002487A0(v11, v83);
  v83[40] = 0;
  v81 = *&v83[8];
  v82 = *&v83[24];
  v86 = *v83;
  v87 = *&v83[8];
  v88 = *&v83[24];
  v89 = 0;
  v77 = v3;
  v12 = v2;
  v73 = *(v3 + 16);
  v74 = v3 + 16;
  v73(v8, v11, v2);
  v13 = type metadata accessor for REMkNNByTitleEmbedding();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = REMkNNByTitleEmbedding.init(from:with:)();
  v69 = 0;
  v75 = v16;
  __chkstk_darwin(v16);
  v70 = v11;
  *(&v68 - 2) = v11;
  sub_1000F5104(&unk_10093E960, &qword_10079CC10);
  type metadata accessor for RDIntentClusterModel();
  v17 = Result<>.tryMap<A>(transform:)();
  v72 = *v83;
  v71 = v83[8];
  v18 = v1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource;
  v19 = *(v1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 56);
  v20 = (*(v18 + 48))(v17);
  if (!v20)
  {
    memset(v83, 0, 32);
LABEL_11:
    v24 = sub_1000050A4(v83, &qword_100939ED0, &qword_100791B10);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 valueForKey:v22];

  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  *v83 = v81;
  *&v83[16] = v82;
  if (!*(&v82 + 1))
  {
    goto LABEL_11;
  }

  sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  v24 = swift_dynamicCast();
  if ((v24 & 1) == 0)
  {
LABEL_12:
    v29 = 0;
    v28 = 0;
    v30 = 1;
    v31 = 1;
    goto LABEL_13;
  }

  v25 = v81;
  if (*(v81 + 16))
  {
    v26 = sub_100005F4C(0x65766974616C6572, 0xEF74726F70707553);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
    }

    else
    {
      v28 = 0;
    }

    v31 = v27 ^ 1;
    if (*(v25 + 16))
    {
      v44 = sub_100005F4C(0x6E656469666E6F63, 0xEA00000000006563);
      if (v45)
      {
        v29 = *(*(v25 + 56) + 8 * v44);

        v30 = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v28 = 0;
    v31 = 1;
  }

  v29 = 0;
  v30 = 1;
LABEL_13:
  v32 = *(v18 + 40);
  v33 = (*(v18 + 32))(v24);
  if (!v33)
  {
    memset(v83, 0, 32);
    v37 = v70;
    v38 = v28;
    v39 = v12;
LABEL_23:
    sub_1000050A4(v83, &qword_100939ED0, &qword_100791B10);
    v40 = v37;
    goto LABEL_36;
  }

  v34 = v33;
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 valueForKey:v35];

  if (v36)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  v37 = v70;
  v38 = v28;
  *v83 = v81;
  *&v83[16] = v82;
  v39 = v12;
  if (!*(&v82 + 1))
  {
    goto LABEL_23;
  }

  sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  v40 = v37;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v41 = v81;
  if (*(v81 + 16))
  {
    v42 = sub_100005F4C(0x65766974616C6572, 0xEF74726F70707553);
    if (v43)
    {
      v38 = *(*(v41 + 56) + 8 * v42);
    }

    else
    {
      v38 = 0;
    }

    v31 = v43 ^ 1;
    if (*(v41 + 16))
    {
      v46 = sub_100005F4C(0x6E656469666E6F63, 0xEA00000000006563);
      if (v47)
      {
        v29 = *(*(v41 + 56) + 8 * v46);

        v30 = 0;
        goto LABEL_36;
      }
    }
  }

  else
  {
    v38 = 0;
    v31 = 1;
  }

  v29 = 0;
  v30 = 1;
LABEL_36:
  v48 = v69 != 0;
  v49 = v76;
  v73(v76, v40, v39);
  v50 = type metadata accessor for RDCoreBehaviorModel(0);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_1004C9A28(v49, v38, v31 & 1, v29, v30);
  sub_100010364(&v86, v83, &unk_10093E960, &qword_10079CC10);
  *&v84 = v75;
  BYTE8(v84) = v48;
  *v85 = v72;
  v85[8] = v71;
  *&v85[16] = v53;
  v85[24] = 0;
  if (qword_100935D00 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100006654(v54, qword_10093E860);
  sub_100249810(v83, &v81);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v80 = v58;
    *v57 = 136446210;
    sub_100249810(&v81, &v79);
    v59 = String.init<A>(describing:)();
    v61 = v60;
    sub_1002497E0(&v81);
    v62 = sub_10000668C(v59, v61, &v80);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "Loaded MLModels {models: %{public}s}", v57, 0xCu);
    sub_10000607C(v58);
  }

  else
  {

    sub_1002497E0(&v81);
  }

  sub_1000050A4(&v86, &unk_10093E960, &qword_10079CC10);
  v63 = v84;
  v64 = v77;
  v65 = v78;
  v78[2] = *&v83[32];
  v65[3] = v63;
  v65[4] = *v85;
  *(v65 + 73) = *&v85[9];
  v66 = *&v83[16];
  *v65 = *v83;
  v65[1] = v66;
  return (*(v64 + 8))(v40, v39);
}

uint64_t sub_1002481DC(unint64_t a1)
{
  isUniquelyReferenced_nonNull_native = v1;
  v3 = a1;
  v71 = _swiftEmptyDictionarySingleton;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_61:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000F5104(&qword_10093E9E0, &qword_10079CC78);
  Dictionary.reserveCapacity(_:)(v5);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100799D70;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  *(v6 + 40) = CNContactPhoneNumbersKey;
  *(v6 + 48) = CNContactEmailAddressesKey;
  if (v4)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_52:
    v59 = CNContactPhoneNumbersKey;
    v60 = CNContactEmailAddressesKey;
LABEL_53:

    return v71;
  }

  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_52;
  }

LABEL_5:
  v64 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_contactStore;
  v69 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedContacts;
  v70 = v3 & 0xC000000000000001;
  v67 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = CNContactPhoneNumbersKey;
  v9 = CNContactEmailAddressesKey;
  v10 = 0;
  v62 = isUniquelyReferenced_nonNull_native;
  v63 = v3;
  v68 = v7;
  while (1)
  {
    if (v70)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v67 + 16))
      {
        goto LABEL_55;
      }

      v11 = *(v3 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v14 = [v11 address];
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v16;

      sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
      v17 = REMContactRepresentation.init(address:)();
      if (v17)
      {
        break;
      }
    }

LABEL_7:
    ++v10;
    if (v13 == v7)
    {
      goto LABEL_53;
    }
  }

  v4 = v17;
  swift_beginAccess();
  v18 = *(isUniquelyReferenced_nonNull_native + v69);
  if (*(v18 + 16))
  {
    v19 = sub_100364588(v4);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
      v22 = v21;
      if (v21)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }
  }

  swift_endAccess();
  v23 = *(isUniquelyReferenced_nonNull_native + v64);
  v24 = CNContactStore.contact(matching:keysToFetch:)();
  if (!v24)
  {
LABEL_25:

    v7 = v68;
    goto LABEL_7;
  }

  v21 = v24;
  v25 = v4;
  v4 = v69;
  swift_beginAccess();
  v65 = v21;
  v66 = v25;
  v26 = v25;
  v27 = isUniquelyReferenced_nonNull_native;
  v3 = v26;
  v28 = *(isUniquelyReferenced_nonNull_native + v69);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v27 + v69);
  *(v27 + v69) = 0x8000000000000000;
  v31 = sub_100364588(v3);
  v32 = v29[2];
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    goto LABEL_57;
  }

  v4 = v30;
  if (v29[3] >= v34)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v30 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_100375348();
      if ((v4 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    sub_10036DD94(v34, isUniquelyReferenced_nonNull_native);
    v35 = sub_100364588(v3);
    if ((v4 & 1) != (v36 & 1))
    {
      goto LABEL_62;
    }

    v31 = v35;
    if ((v4 & 1) == 0)
    {
LABEL_30:
      v29[(v31 >> 6) + 8] |= 1 << v31;
      *(v29[6] + 8 * v31) = v3;
      *(v29[7] + 8 * v31) = v21;
      v39 = v29[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_60;
      }

      v29[2] = v41;
      goto LABEL_32;
    }
  }

  v37 = v29[7];
  v38 = *(v37 + 8 * v31);
  *(v37 + 8 * v31) = v21;

LABEL_32:
  isUniquelyReferenced_nonNull_native = v62;
  *(v62 + v69) = v29;
  swift_endAccess();

  v4 = v66;
LABEL_33:
  v42 = [v12 objectID];
  v43 = v71;
  if ((v71 & 0xC000000000000001) != 0)
  {
    if (v71 < 0)
    {
      v44 = v71;
    }

    else
    {
      v44 = v71 & 0xFFFFFFFFFFFFFF8;
    }

    v45 = v21;
    v46 = __CocoaDictionary.count.getter();
    if (__OFADD__(v46, 1))
    {
      goto LABEL_58;
    }

    v3 = v4;
    v43 = sub_10021D964(v44, v46 + 1);
    v71 = v43;
  }

  else
  {
    v3 = v4;
    v47 = v21;
  }

  v4 = swift_isUniquelyReferenced_nonNull_native();
  v48 = sub_10002B924(v42);
  v50 = v43[2];
  v51 = (v49 & 1) == 0;
  v40 = __OFADD__(v50, v51);
  v52 = v50 + v51;
  if (v40)
  {
    goto LABEL_56;
  }

  v53 = v49;
  if (v43[3] >= v52)
  {
    if ((v4 & 1) == 0)
    {
      v4 = v48;
      sub_1003754A8();
      v48 = v4;
      if (v53)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    }

LABEL_45:
    if (v53)
    {
LABEL_46:
      v55 = v43[7];
      v56 = *(v55 + 8 * v48);
      *(v55 + 8 * v48) = v21;

LABEL_50:
      v71 = v43;
      v7 = v68;
      v3 = v63;
      goto LABEL_7;
    }

LABEL_48:
    v43[(v48 >> 6) + 8] |= 1 << v48;
    *(v43[6] + 8 * v48) = v42;
    *(v43[7] + 8 * v48) = v21;

    v57 = v43[2];
    v40 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v40)
    {
      goto LABEL_59;
    }

    v43[2] = v58;
    goto LABEL_50;
  }

  sub_10036DFFC(v52, v4);
  v48 = sub_10002B924(v42);
  if ((v53 & 1) == (v54 & 1))
  {
    goto LABEL_45;
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002487A0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a1;
  v52 = a2;
  v53 = sub_1000F5104(&qword_10093E9C8, &qword_10079CC70);
  v2 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v54 = &v49 - v3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_10093E9D0, &qword_10079E220);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v56 = type metadata accessor for REMTitleEmbeddingConfig();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v56);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  __chkstk_darwin(v20);
  v22 = &v49 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = &v49 - v25;
  (*(v5 + 16))(v8, v55, v4, v24);
  v27 = v59;
  REMTitleEmbeddingConfig.init(url:)();
  if (v27)
  {

    (*(v13 + 56))(v12, 1, 1, v56);
    sub_1000050A4(v12, &unk_10093E9D0, &qword_10079E220);
    v28 = objc_opt_self();
    v29 = String._bridgeToObjectiveC()();
    [v28 internalErrorWithDebugDescription:v29];

    return swift_willThrow();
  }

  v55 = v19;
  v50 = v22;
  v51 = v16;
  v59 = 0;
  v31 = v56;
  (*(v13 + 56))(v12, 0, 1, v56);
  (*(v13 + 32))(v26, v12, v31);
  REMTitleEmbeddingConfig.currentMethod.getter();
  v32 = v54;
  REMTitleEmbeddingMethods.init(rawValue:)();
  v33 = type metadata accessor for REMTitleEmbeddingMethods();
  v34 = *(v33 - 8);
  v35 = v13;
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v36 = objc_opt_self();
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v37._object = 0x80000001007F2170;
    v37._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v37);
    v38._countAndFlagsBits = REMTitleEmbeddingConfig.currentMethod.getter();
    String.append(_:)(v38);

    v39._countAndFlagsBits = 0xD000000000000021;
    v39._object = 0x80000001007F2190;
    String.append(_:)(v39);
    v40 = String._bridgeToObjectiveC()();

    [v36 internalErrorWithDebugDescription:v40];

    swift_willThrow();
    return (*(v13 + 8))(v26, v31);
  }

  v41 = (*(v34 + 88))(v32, v33);
  if (v41 == enum case for REMTitleEmbeddingMethods.Sentence2Vec(_:))
  {
    v42 = type metadata accessor for REMSentence2VecTitleEmbedding();
    (*(v13 + 16))(v55, v26, v31);
    v43 = v59;
    v44 = REMSentence2VecTitleEmbedding.__allocating_init(from:)();
    if (!v43)
    {
      v45 = &protocol witness table for REMSentence2VecTitleEmbedding;
      v46 = v52;
LABEL_14:
      v46[3] = v42;
      v46[4] = v45;
      *v46 = v44;
    }
  }

  else if (v41 == enum case for REMTitleEmbeddingMethods.UniversalGrammar(_:))
  {
    v42 = type metadata accessor for REMUniversalGrammarTitleEmbedding();
    (*(v13 + 16))(v51, v26, v31);
    v47 = v59;
    v44 = REMUniversalGrammarTitleEmbedding.__allocating_init(from:)();
    v46 = v52;
    if (!v47)
    {
      v45 = &protocol witness table for REMUniversalGrammarTitleEmbedding;
      goto LABEL_14;
    }
  }

  else
  {
    v46 = v52;
    if (v41 != enum case for REMTitleEmbeddingMethods.FilteredStopWords(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v42 = type metadata accessor for REMFilteredTitleEmbedding();
    (*(v35 + 16))(v50, v26, v31);
    v48 = v59;
    v44 = REMFilteredTitleEmbedding.__allocating_init(from:)();
    if (!v48)
    {
      v45 = &protocol witness table for REMFilteredTitleEmbedding;
      goto LABEL_14;
    }
  }

  return (*(v35 + 8))(v26, v31);
}

uint64_t sub_100248DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for RDIntentClusterModel();
  (*(v8 + 16))(v11, a2, v7);
  sub_10000A87C(a1, v14);
  result = RDIntentClusterModel.__allocating_init(url:embedding:)();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100248EFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1004C51D8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100248F3C()
{
  v0 = sub_1000F5104(&unk_10093E978, &qword_1007A1070);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = PassthroughSubject.init()();
  qword_10093E878 = result;
  return result;
}

void sub_100248FB8()
{
  sub_100249090();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100249090()
{
  if (!qword_10093ADC0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10093ADC0);
    }
  }
}

uint64_t sub_1002490E8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t destroy for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *a1;
  }

  else
  {
    sub_10000607C(a1);
  }

  sub_100249154(*(a1 + 48), *(a1 + 56));
  sub_100249154(*(a1 + 64), *(a1 + 72));
  return sub_100249154(*(a1 + 80), *(a1 + 88));
}

uint64_t sub_100249154(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t initializeWithCopy for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *a2;
    swift_errorRetain();
    *a1 = v5;
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1, a2);
  }

  *(a1 + 40) = v4;
  v7 = a2[6];
  v8 = *(a2 + 56);
  sub_1002490E8(v7, v8);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  v9 = a2[8];
  v10 = *(a2 + 72);
  sub_1002490E8(v9, v10);
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  v11 = a2[10];
  v12 = *(a2 + 88);
  sub_1002490E8(v11, v12);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  return a1;
}

uint64_t assignWithCopy for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_1000050A4(a1, &unk_10093E960, &qword_10079CC10);
    v4 = *(a2 + 40);
    if (v4)
    {
      v5 = *a2;
      swift_errorRetain();
      *a1 = v5;
    }

    else
    {
      v6 = a2[3];
      *(a1 + 24) = v6;
      *(a1 + 32) = a2[4];
      (**(v6 - 8))(a1, a2);
    }

    *(a1 + 40) = v4;
  }

  v7 = a2[6];
  v8 = *(a2 + 56);
  sub_1002490E8(v7, v8);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  sub_100249154(v9, v10);
  v11 = a2[8];
  v12 = *(a2 + 72);
  sub_1002490E8(v11, v12);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  sub_100249154(v13, v14);
  v15 = a2[10];
  v16 = *(a2 + 88);
  sub_1002490E8(v15, v16);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  sub_100249154(v17, v18);
  return a1;
}

__n128 initializeWithTake for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1000050A4(a1, &unk_10093E960, &qword_10079CC10);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 25) = *(a2 + 25);
  }

  v5 = *(a2 + 56);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  sub_100249154(v6, v7);
  v8 = *(a2 + 72);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;
  sub_100249154(v9, v10);
  v11 = *(a2 + 88);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v11;
  sub_100249154(v12, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destroy for RDXPCSuggestedAttributesPerformer.ConfigurationSource(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];

  v5 = a1[7];
}

uint64_t initializeWithCopy for RDXPCSuggestedAttributesPerformer.ConfigurationSource(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v3;

  return a1;
}

void *assignWithCopy for RDXPCSuggestedAttributesPerformer.ConfigurationSource(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  v8 = a2[5];
  v9 = a1[5];
  a1[4] = a2[4];
  a1[5] = v8;

  v11 = a2[6];
  v10 = a2[7];
  v12 = a1[7];
  a1[6] = v11;
  a1[7] = v10;

  return a1;
}

__n128 initializeWithTake for RDSavedReminders(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDXPCSuggestedAttributesPerformer.ConfigurationSource(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 24);
  *(a1 + 16) = a2[1];

  v6 = *(a1 + 40);
  *(a1 + 32) = a2[2];

  v7 = *(a1 + 56);
  *(a1 + 48) = a2[3];

  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedReminders(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for RDSavedReminders(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100249770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093E9A0, &unk_10079CC60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1002498B4(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_100249958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDDispatchQueue_ObjC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002499B0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100007F54();
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100974CA8 = result;
  return result;
}

NSObject *sub_100249BB8()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.xpc.default");
  qword_100974CB0 = result;
  return result;
}

NSObject *sub_100249BE8()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.xpc.notification");
  qword_100974CB8 = result;
  return result;
}

uint64_t sub_100249C18()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007F54();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100974CC0 = result;
  return result;
}

uint64_t sub_100249E18()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100007F54();
  static DispatchQoS.utility.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  if (qword_100935D40 != -1)
  {
    swift_once();
  }

  v9 = qword_100974CD8;
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100974CC8 = result;
  return result;
}

uint64_t sub_10024A05C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100007F54();
  static DispatchQoS.background.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  if (qword_100935D40 != -1)
  {
    swift_once();
  }

  v9 = qword_100974CD8;
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100974CD0 = result;
  return result;
}

NSObject *sub_10024A2A0()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.discretionary");
  qword_100974CD8 = result;
  return result;
}

uint64_t sub_10024A2D0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EA10);
  v1 = sub_100006654(v0, qword_10093EA10);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10024A398(void *a1)
{
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDGroceryOperationQueueItem();
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setPredicate:0];
  [v3 setResultType:1];
  sub_10024AC98();
  v5 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a1; v6; i = a1)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        a1 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        sub_10024A614(i, v9, &v14);
        objc_autoreleasePoolPop(v10);

        ++v7;
        if (a1 == v6)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_16:

    if ([i hasChanges])
    {
      v14 = 0;
      if ([i save:&v14])
      {
        v11 = v14;
        [i refreshAllObjects];
      }

      else
      {
        v12 = v14;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

void sub_10024A614(void *a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for UUID();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  *&v13 = __chkstk_darwin(v10).n128_u64[0];
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = 0;
  v16 = [a1 existingObjectWithID:a2 error:{&v54, v13}];
  v17 = v54;
  if (v16)
  {
    v18 = v16;
    type metadata accessor for REMCDGroceryOperationQueueItem();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for REMCDOperationQueueItem();
      v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v22 = v17;
      v23 = [v21 initWithContext:a1];
      [v23 setOperationTypeRawValue:{objc_msgSend(v20, "operationTypeRawValue")}];
      [v23 setPriorityRawValue:{objc_msgSend(v20, "priorityRawValue")}];
      v24 = [v20 creationDate];
      if (v24)
      {
        v25 = v24;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v26.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v11 + 8))(v15, v10);
      }

      else
      {
        v26.super.isa = 0;
      }

      [v23 setCreationDate:{v26.super.isa, v51, v52}];

      [v23 setIsCompleted:{objc_msgSend(v20, "isCompleted")}];
      v41 = [v20 listIdentifier];
      if (v41)
      {
        v42 = v41;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v43.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v51 + 8))(v9, v52);
      }

      else
      {
        v43.super.isa = 0;
      }

      [v23 setEntityIdentifier:v43.super.isa];

      v44 = [v20 configurationData];
      if (v44)
      {
        v45 = v44;
        v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v46, v48);
      }

      else
      {
        v49.super.isa = 0;
      }

      [v23 setConfigurationData:v49.super.isa];

      v50 = [v20 account];
      [v23 setAccount:v50];
    }

    else
    {
      v29 = v17;

      if (qword_100935D48 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006654(v30, qword_10093EA10);
      v31 = a2;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v34 = 136315650;
        v53 = &_s75MigrateOperationQueueItemsFromGroceryOperationQueueItemToOperationQueueItemON;
        v54 = v36;
        sub_1000F5104(&qword_10093EA50, &qword_10079CCC8);
        v37 = String.init<A>(describing:)();
        v39 = sub_10000668C(v37, v38, &v54);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_10000668C(0xD000000000000022, 0x80000001007F2340, &v54);
        *(v34 + 22) = 2114;
        *(v34 + 24) = v31;
        *v35 = v31;
        v40 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "[%s|%s] Failed to process list of {groceryOperationQueueItemMOID: %{public}@} since its managed object could not be fetched", v34, 0x20u);
        sub_100039860(v35);

        swift_arrayDestroy();
      }
    }
  }

  else
  {
    v27 = v54;
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *a3 = v28;
  }
}

id sub_10024AC34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDGroceryOperationQueueItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10024AC98()
{
  result = qword_100943230;
  if (!qword_100943230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100943230);
  }

  return result;
}

uint64_t sub_10024ACF4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EA58);
  v1 = sub_100006654(v0, qword_10093EA58);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10024ADE0(uint64_t a1)
{
  v2 = v1;
  if (qword_100935D50 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093EA58);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v26 = v2;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "RDAlarmCoreSuggestionsConsumer consume %ld producerAlarms", v7, 0xCu);
  }

  else
  {
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003C4C();
    v27 = objc_opt_self();
    v9 = (a1 + 64);
    do
    {
      v14 = *(v9 - 3);
      v16 = *(v9 - 2);
      v15 = *(v9 - 1);
      v17 = *v9;
      v18 = *(v9 - 4);
      sub_1001A3944(v14, v16, v15, v17);
      v19 = [v18 list];
      v20 = [v19 objectID];

      v21 = [v27 siriFoundInAppsListID];
      LOBYTE(v19) = static NSObject.== infix(_:_:)();

      if (v19)
      {
        if (v17 <= 1)
        {
          if (!v17)
          {
            v22 = v18;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v23 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            sub_1001A39AC(v14, v16, v15, 0);
            goto LABEL_10;
          }

          v10 = v14;
          v11 = v16;
          v12 = v15;
          v13 = 1;
        }

        else if (v17 == 2)
        {

          v10 = v14;
          v11 = v16;
          v12 = v15;
          v13 = 2;
        }

        else
        {

          v10 = v14;
          v11 = v16;
          v12 = v15;
          if (v17 == 3)
          {
            v13 = 3;
          }

          else
          {
            v13 = 4;
          }
        }
      }

      else
      {

        v10 = v14;
        v11 = v16;
        v12 = v15;
        v13 = v17;
      }

      sub_1001A39AC(v10, v11, v12, v13);
LABEL_10:
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  v24 = *sub_10000F61C((v26 + 16), *(v26 + 40));
  sub_1003E60E8(_swiftEmptyArrayStorage);
}

uint64_t sub_10024B16C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EB10);
  v1 = sub_100006654(v0, qword_10093EB10);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10024B234(void *a1)
{
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDListWithSharedOwnerIdentifier();
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setPredicate:0];
  [v3 setResultType:1];
  sub_10024AC98();
  v5 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a1; v6; i = a1)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        a1 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        sub_10024B4B0(i, v9, &v14);
        objc_autoreleasePoolPop(v10);

        ++v7;
        if (a1 == v6)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_16:

    if ([i hasChanges])
    {
      v14 = 0;
      if ([i save:&v14])
      {
        v11 = v14;
        [i refreshAllObjects];
      }

      else
      {
        v12 = v14;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

void sub_10024B4B0(void *a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  *&v9 = __chkstk_darwin(v6).n128_u64[0];
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v12 = [a1 existingObjectWithID:a2 error:{&v35, v9}];
  v13 = v35;
  if (v12)
  {
    v14 = v12;
    type metadata accessor for REMCDListWithSharedOwnerIdentifier();
    v15 = swift_dynamicCastClass();
    v16 = v13;
    if (v15)
    {
      v17 = [v15 sharedOwner];
      if (v17)
      {
        v18 = v17;
        isa = [v17 remObjectID];

        if (isa)
        {
          v20 = [(objc_class *)isa uuid];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v7 + 8))(v11, v6);
        }
      }

      else
      {
        isa = 0;
      }

      [v15 setSharedOwnerIdentifier:isa];
    }

    else
    {

      if (qword_100935D58 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10093EB10);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v27 = 136315650;
        v34[1] = &_s50MigrateListsFromSharedOwnerToSharedOwnerIdentifierON;
        v35 = v29;
        sub_1000F5104(&qword_10093EB50, &unk_10079CD90);
        v30 = String.init<A>(describing:)();
        v32 = sub_10000668C(v30, v31, &v35);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_10000668C(0xD000000000000014, 0x80000001007F2410, &v35);
        *(v27 + 22) = 2114;
        *(v27 + 24) = v24;
        *v28 = v24;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "[%s|%s] Failed to process list of {listMOID: %{public}@} since its managed object could not be fetched", v27, 0x20u);
        sub_100039860(v28);

        swift_arrayDestroy();
      }
    }
  }

  else
  {
    v21 = v35;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *a3 = v22;
  }
}

id sub_10024B8F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDListWithSharedOwnerIdentifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

size_t sub_10024B964(unint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v46 = _swiftEmptyArrayStorage;
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      KeyPath = swift_getKeyPath();
      if (a1 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = _swiftEmptyArrayStorage;
      if (v13)
      {
        v43 = KeyPath;
        v44 = v11;
        v45 = _swiftEmptyArrayStorage;
        result = sub_100253218(0, v13 & ~(v13 >> 63), 0);
        if (v13 < 0)
        {
          __break(1u);
          return result;
        }

        v16 = 0;
        v14 = v45;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v17 = *(a1 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = [v17 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v20 = type metadata accessor for UUID();
          (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
          v45 = v14;
          v22 = v14[2];
          v21 = v14[3];
          if (v22 >= v21 >> 1)
          {
            sub_100253218(v21 > 1, v22 + 1, 1);
            v14 = v45;
          }

          ++v16;
          v14[2] = v22 + 1;
          sub_100100FB4(v9, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22);
        }

        while (v13 != v16);
        KeyPath = v43;
        v11 = v44;
      }

      sub_1003EB84C(KeyPath, v14);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v46[2] >= v46[3] >> 1)
      {
        v42 = v46[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v23 = swift_getKeyPath();
    v24 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
    sub_1003915A0(v23, v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v46[2] >= v46[3] >> 1)
    {
      v41 = v46[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_100023B44(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v46[2] >= v46[3] >> 1)
  {
    v38 = v46[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_10093EB58, qword_10079CE08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  v28 = swift_getKeyPath();
  v29 = sub_1003EB870(v28);

  *(inited + 32) = v29;
  v30 = swift_getKeyPath();
  v31 = sub_1003EB89C(v30);

  *(inited + 40) = v31;
  sub_100025060(inited);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v46[2] >= v46[3] >> 1)
  {
    v39 = v46[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_28:
  v32 = swift_getKeyPath();
  sub_1003EB89C(v32);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v46[2] >= v46[3] >> 1)
  {
    v37 = v46[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v26)
  {
    v33 = swift_getKeyPath();
    v34 = [objc_opt_self() localInternalAccountID];
    v35 = [v34 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = type metadata accessor for UUID();
    (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
    sub_1003EB8C4(v33, v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v46[2] >= v46[3] >> 1)
    {
      v40 = v46[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return sub_10000C2B0(v46);
}

id sub_10024BF98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 smartList];
  *a2 = result;
  return result;
}

void sub_10024BFE8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

uint64_t sub_10024C124()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100974CE0 = v0;
  return result;
}

uint64_t sub_10024C19C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_10012DF40();
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_100974CE8 = v0;
  return result;
}

uint64_t sub_10024C22C@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_10024C2E4(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

void *sub_10024C42C()
{
  sub_100026EF4(0, 5, 0);
  result = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 0xD000000000000023;
  v4[5] = 0x80000001007F2430;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 0x696669746E656469;
  v7[5] = 0xEA00000000007265;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100026EF4((v8 > 1), v9 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v10;
  v11 = &_swiftEmptyArrayStorage[2 * v9];
  v11[4] = 0xD00000000000001ALL;
  v11[5] = 0x80000001007EA730;
  v12 = _swiftEmptyArrayStorage[3];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v13;
  v14 = &_swiftEmptyArrayStorage[2 * v10];
  v14[4] = 0xD00000000000001ELL;
  v14[5] = 0x80000001007EC560;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_100026EF4((v15 > 1), v16 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = 0x4E79616C70736964;
  v17[5] = 0xEB00000000656D61;
  return result;
}

uint64_t sub_10024C888()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v1 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v2)
  {
LABEL_12:
    _StringGuts.grow(_:)(46);
    v11._object = 0x80000001007EC120;
    v11._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v11);
    sub_1000F5104(&qword_1009435E0, &qword_1007A3F10);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = v1;
  v4 = v2;

  v5 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100365788(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100365788((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v3;
  *(v8 + 5) = v4;
  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  return v5;
}

void sub_10024CAF0(void (*a1)(id *), void **a2, unint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v25 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v9 = &v19 - v8;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = a3;
    v29 = _swiftEmptyArrayStorage;
    a3 = &v29;
    sub_10025346C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v29;
    v14 = v11;
    v23 = v11;
    v24 = v11 & 0xC000000000000001;
    v20 = v11 & 0xFFFFFFFFFFFFFF8;
    v21 = v6 + 32;
    v22 = i;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      i = v16;
      v28 = v16;
      a3 = v27;
      v26(&v28);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v29 = v13;
      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        a3 = &v29;
        sub_10025346C(v17 > 1, v18 + 1, 1);
        v13 = v29;
      }

      v13[2] = v18 + 1;
      (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v9, v25);
      ++v12;
      v14 = v23;
      if (v15 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_10024CD40(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v7 = v5;
  v28 = a1;
  v29 = a2;
  v27 = a4(0);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v27);
  v30 = &v21 - v12;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v14;
    }

    v33 = _swiftEmptyArrayStorage;
    result = (a5)(0, i & ~(i >> 63), 0, v11);
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    v14 = v33;
    v25 = i;
    v26 = a3 & 0xC000000000000001;
    v22 = a5;
    v23 = a3 & 0xFFFFFFFFFFFFFF8;
    v24 = v9 + 32;
    while (1)
    {
      a5 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v26)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v23 + 16))
        {
          goto LABEL_19;
        }

        v17 = *(a3 + 8 * v16 + 32);
      }

      v18 = v17;
      v32 = v17;
      v28(&v32, &v31);
      if (v7)
      {

        return v14;
      }

      v7 = 0;

      v33 = v14;
      v20 = v14[2];
      v19 = v14[3];
      if (v20 >= v19 >> 1)
      {
        v22(v19 > 1, v20 + 1, 1);
        v14 = v33;
      }

      v14[2] = v20 + 1;
      (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v30, v27);
      ++v16;
      if (a5 == v25)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_10024CF9C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v23 = _swiftEmptyArrayStorage;
  sub_100253530(0, v10, 0);
  v11 = v23;
  v12 = *(type metadata accessor for UUID() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_100253530(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    v11[2] = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024D1A0(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v16 = v9;
    a1(v17, &v16);
    if (v3)
    {
      break;
    }

    v10 = v17[0];
    v11 = v17[1];
    v18 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      sub_100026EF4((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    v5[2] = v13 + 1;
    v14 = &v5[2 * v13];
    v14[4] = v10;
    v14[5] = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_10024D2B0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v35 = _swiftEmptyArrayStorage;
    sub_100253968(0, v5, 0);
    v7 = _swiftEmptyArrayStorage;
    for (i = (a3 + 48); ; i += 3)
    {
      v9 = *(i - 1);
      v10 = *i;
      v28[0] = *(i - 2);
      v28[1] = v9;
      v28[2] = v10;
      v11 = v28[0];
      v12 = v9;
      v13 = v10;
      a1(&v29, v28);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v14 = v29;
      v15 = v30;
      v16 = v31;
      v17 = v32;
      v18 = v33;
      v19 = v34;
      v35 = v7;
      v21 = v7[2];
      v20 = v7[3];
      if (v21 >= v20 >> 1)
      {
        v26 = v30;
        v23 = v32;
        v24 = v34;
        v25 = v33;
        sub_100253968((v20 > 1), v21 + 1, 1);
        v19 = v24;
        v18 = v25;
        v17 = v23;
        v15 = v26;
        v7 = v35;
      }

      v7[2] = v21 + 1;
      v22 = &v7[5 * v21];
      v22[4] = v14;
      *(v22 + 5) = v15;
      v22[7] = v16;
      *(v22 + 64) = v17;
      *(v22 + 65) = v18;
      *(v22 + 66) = v19;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10024D43C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_100253A0C(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_100253A0C(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    v12[2] = v16 + 1;
    sub_10025C608(v10, v12 + v19 + v16 * v14);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

void *sub_10024D5D0(void (*a1)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = v1;
  v4 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  sub_10000CB48(&qword_10093EE00, &qword_10093EDF8, &qword_10079D5B0);
  v5 = dispatch thunk of Collection.count.getter();
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_100253A94(0, v5 & ~(v5 >> 63), 0);
    v18 = _swiftEmptyArrayStorage;
    dispatch thunk of Collection.startIndex.getter();
    if ((v5 & 0x8000000000000000) == 0)
    {
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        v17 = i + 1;
        v8 = v3;
        v9 = v4;
        v10 = dispatch thunk of Collection.subscript.read();
        v19 = *v11;
        v10(v20, 0);
        a1(&v21, &v19);
        if (v2)
        {
          goto LABEL_13;
        }

        v12 = v21;
        v13 = v18;
        v22 = v18;
        v15 = v18[2];
        v14 = v18[3];
        if (v15 >= v14 >> 1)
        {
          sub_100253A94((v14 > 1), v15 + 1, 1);
          v13 = v22;
        }

        v13[2] = v15 + 1;
        v18 = v13;
        v13[v15 + 4] = v12;
        v3 = v8;
        v4 = v9;
        dispatch thunk of Collection.formIndex(after:)();
        if (v17 == v5)
        {
          return v18;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:

    __break(1u);
  }

  return result;
}

uint64_t sub_10024D7DC(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v30 = _swiftEmptyArrayStorage;
  sub_100253968(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = *(sub_1000F5104(&unk_1009464C0, &qword_10079D360) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v22 = *(v7 + 72);
  while (1)
  {
    a1(&v24, v8);
    if (v3)
    {
      break;
    }

    v9 = v24;
    v10 = v25;
    v11 = v26;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v30 = v5;
    v16 = v5[2];
    v15 = v5[3];
    if (v16 >= v15 >> 1)
    {
      v20 = v26;
      v21 = v25;
      v18 = v29;
      sub_100253968((v15 > 1), v16 + 1, 1);
      v14 = v18;
      v11 = v20;
      v10 = v21;
      v5 = v30;
    }

    v5[2] = v16 + 1;
    v17 = &v5[5 * v16];
    v17[4] = v9;
    *(v17 + 5) = v10;
    v17[7] = v11;
    *(v17 + 64) = v12;
    *(v17 + 65) = v13;
    *(v17 + 66) = v14;
    v8 += v22;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024D9F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EB60);
  v1 = sub_100006654(v0, qword_10093EB60);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t REMGroceryModelType.modelFileName.getter(unsigned __int8 a1)
{
  v1 = 0x736A2E7865676572;
  v2 = 0xD000000000000016;
  if (a1 == 3)
  {
    v2 = 0;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t REMGroceryModelType.description.getter(unsigned __int8 a1)
{
  v1 = 1953654114;
  v2 = 0x7865676572;
  v3 = 0x796D6D7564;
  if (a1 != 3)
  {
    v3 = 0x6C774F69726973;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6465726F68636E61;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10024DBF4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7remindd19REMGroceryModelTypeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10024DC60(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7079546C65646F6DLL;
      break;
    case 3:
      result = 0x6E656B6F5478616DLL;
      break;
    case 4:
      result = 0x6C6F687365726874;
      break;
    case 5:
      result = 1315991412;
      break;
    case 6:
      result = 0x69726F6765746163;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0x6C6E4F6969637361;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10024DE0C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x6E656B6F5478616DLL;
    if (a1 != 2)
    {
      v6 = 0x6C6F687365726874;
    }

    if (a1)
    {
      v5 = 0x7079546C65646F6DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0xD000000000000022;
    if (a1 != 7)
    {
      v2 = 0x6C6E4F6969637361;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1315991412;
    if (a1 != 4)
    {
      v3 = 0x69726F6765746163;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_10024DF48()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x6974636572726F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10024DFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002571D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024DFD8(uint64_t a1)
{
  v2 = sub_10025C264();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024E014(uint64_t a1)
{
  v2 = sub_10025C264();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10024E050@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100257300(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10024E088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002574FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024E0BC(uint64_t a1)
{
  v2 = sub_10025CDC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024E0F8(uint64_t a1)
{
  v2 = sub_10025CDC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10024E134@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100257968(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_10024E1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002581D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024E1D8(uint64_t a1)
{
  v2 = sub_10025CEBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024E214(uint64_t a1)
{
  v2 = sub_10025CEBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10024E250@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002584D0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

void sub_10024E2C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_10024E338(uint64_t a1, uint64_t a2, void *a3, const char *a4, const char *a5, const char *a6, const char *a7)
{
  if (a2)
  {
    if (qword_100935D70 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10093EB60);
    v10 = a3;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v42 = v14;
      *v12 = 136315394;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = sub_10000668C(v15, v16, &v42);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v18;
      *v13 = v18;
      _os_log_impl(&_mh_execute_header, oslog, v11, a7, v12, 0x16u);
      sub_100039860(v13);

      sub_10000607C(v14);
LABEL_6:

LABEL_18:

      return;
    }

    goto LABEL_24;
  }

  switch(a1)
  {
    case 0:
      return;
    case 2:
      a4 = a5;
      if (qword_100935D70 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10093EB60);
      v21 = a3;
      oslog = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
LABEL_16:
      v24 = v22;

      if (os_log_type_enabled(oslog, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v42 = v26;
        *v25 = 136315138;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = sub_10000668C(v27, v28, &v42);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, oslog, v24, a4, v25, 0xCu);
        sub_10000607C(v26);

        goto LABEL_18;
      }

      goto LABEL_24;
    case 1:
      if (qword_100935D70 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_10093EB60);
      v21 = a3;
      oslog = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      goto LABEL_16;
  }

  if (qword_100935D70 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_10093EB60);
  v32 = a3;
  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v33))
  {
    v34 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = sub_10000668C(v35, v36, &v42);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    type metadata accessor for AssetsResult(0);
    v38 = String.init<A>(describing:)();
    v40 = sub_10000668C(v38, v39, &v42);

    *(v34 + 14) = v40;
    _os_log_impl(&_mh_execute_header, oslog, v33, a6, v34, 0x16u);
    swift_arrayDestroy();
    goto LABEL_6;
  }

LABEL_24:
}

uint64_t REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 248) = v15;
  *(v9 + 256) = v8;
  *(v9 + 65) = v18;
  *(v9 + 59) = v17;
  *(v9 + 58) = v16;
  *(v9 + 232) = a7;
  *(v9 + 240) = a8;
  *(v9 + 216) = a4;
  *(v9 + 224) = a6;
  *(v9 + 57) = a5;
  *(v9 + 200) = a2;
  *(v9 + 208) = a3;
  *(v9 + 192) = a1;
  v10 = type metadata accessor for Date();
  *(v9 + 264) = v10;
  v11 = *(v10 - 8);
  *(v9 + 272) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_10024E904, 0, 0);
}

uint64_t sub_10024E904()
{
  v108 = v0;
  if (qword_100935D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = type metadata accessor for Logger();
  *(v0 + 296) = sub_100006654(v3, qword_10093EB60);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v104 = *(v0 + 59);
    v105 = *(v0 + 65);
    v103 = *(v0 + 58);
    v101 = *(v0 + 224);
    v102 = *(v0 + 232);
    v100 = *(v0 + 57);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v10 = 136316674;
    *(v10 + 4) = sub_10000668C(v9, v8, &v107);
    *(v10 + 12) = 2080;
    *(v0 + 60) = v6;
    *(v0 + 64) = BYTE4(v6) & 1;
    sub_1000F5104(&qword_10093EBA8, &qword_10079D078);
    v11 = Optional.descriptionOrNil.getter();
    v13 = sub_10000668C(v11, v12, &v107);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2080;
    *(v0 + 152) = v7;
    *(v0 + 160) = v100 & 1;
    sub_1000F5104(&qword_10093EBB0, &unk_10079D080);
    v14 = Optional.descriptionOrNil.getter();
    v16 = sub_10000668C(v14, v15, &v107);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2080;
    *(v0 + 136) = v101;
    *(v0 + 144) = v102;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v17 = Optional.descriptionOrNil.getter();
    v19 = sub_10000668C(v17, v18, &v107);

    *(v10 + 34) = v19;
    *(v10 + 42) = 1024;
    *(v10 + 44) = v103;
    *(v10 + 48) = 1024;
    *(v10 + 50) = v104;
    *(v10 + 54) = 1024;
    *(v10 + 56) = v105;
    _os_log_impl(&_mh_execute_header, v4, v5, "REMGroceryClassifier predicting {title: %s, threshold: %s, topN: %s, localeReason: %s, withGlobalCorrections: %{BOOL}d, includeMisc: %{BOOL}d, shouldPostGroceryPredictionAnalytics: %{BOOL}d}", v10, 0x3Cu);
    swift_arrayDestroy();
  }

  v20 = *(v0 + 288);
  v21 = *(v0 + 256);
  v23 = *(v0 + 192);
  v22 = *(v0 + 200);
  Date.init()();
  v24 = sub_10024FF38();
  *(v0 + 304) = v24;
  *(v0 + 312) = v25;
  *(v0 + 320) = sub_1002501E4(v24, v25);
  *(v0 + 328) = v26;
  v27 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  *(v0 + 336) = v27;
  v28 = String._bridgeToObjectiveC()();
  [v27 setString:v28];

  v29 = NLTokenizer.tokens(for:)();
  v30 = *(v29 + 16);
  if (v30)
  {
    v107 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v30, 0);
    v31 = v107;
    v32 = (v29 + 40);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      String.subscript.getter();
      static String._fromSubstring(_:)();

      v35 = String.lowercased()();

      v107 = v31;
      v37 = v31[2];
      v36 = v31[3];
      if (v37 >= v36 >> 1)
      {
        sub_100026EF4((v36 > 1), v37 + 1, 1);
        v31 = v107;
      }

      v32 += 2;
      v31[2] = v37 + 1;
      *&v31[2 * v37 + 4] = v35;
      --v30;
    }

    while (v30);
  }

  v38 = *(v0 + 256);
  v39 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v41 = *(v38 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
  v42 = *(v38 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8);
  v43 = String._bridgeToObjectiveC()();
  LOBYTE(v39) = [v39 profanityInTokens:isa forLocaleIdentifier:v43];

  if (v39)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "REMGroceryClassifier predict func triggered profanity", v50, 2u);
    }

    v51 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  v52 = *(v0 + 256);
  if (*(v0 + 212))
  {
    v64 = *(v52 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_thresholds);

    goto LABEL_32;
  }

  v53 = *(v52 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_labels);
  v54 = *(v53 + 16);
  if (v54)
  {
    v55 = (v0 + 208);
    v56 = *(v53 + 16);
    v57 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v57[1].i64[0] = v54;
    v58 = v57 + 2;
    if (v54 > 0xB && (v58 < v0 + 216 ? (v59 = v55 >= &v57[2].f32[v54]) : (v59 = 1), v59))
    {
      v60 = v54 & 0x7FFFFFFFFFFFFFF8;
      v58 = (v58 + 4 * (v54 & 0x7FFFFFFFFFFFFFF8));
      v61 = vld1q_dup_f32(v55);
      v62 = v57 + 3;
      v63 = v54 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v62[-1] = v61;
        *v62 = v61;
        v62 += 2;
        v63 -= 8;
      }

      while (v63);
      if (v54 == v60)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v60 = 0;
    }

    v65 = v54 - v60;
    do
    {
      v58->i32[0] = *v55;
      v58 = (v58 + 4);
      --v65;
    }

    while (v65);
LABEL_30:
    v52 = *(v0 + 256);
    goto LABEL_32;
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_32:
  *(v0 + 344) = v57;
  v66 = *(v52 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_models);
  *(v0 + 352) = v66;
  v67 = *(v52 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes);
  *(v0 + 360) = v67;
  v68 = *(v66 + 16);
  *(v0 + 368) = v68;
  *(v0 + 376) = _swiftEmptyArrayStorage;
  if (v68)
  {
    *(v0 + 384) = 0;
    if (!*(v66 + 16))
    {
      __break(1u);
      return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v57, v44, v45, v46, v47);
    }

    sub_10000A87C(v66 + 32, v0 + 72);
    if (*(v67 + 16))
    {
      *(v0 + 66) = *(*(v0 + 360) + 32);
      sub_100054B6C((v0 + 72), v0 + 16);
      v69 = *(v0 + 40);
      v70 = *(v0 + 48);
      sub_10000F61C((v0 + 16), v69);
      v71 = async function pointer to dispatch thunk of REMGroceryModel.predict(_:thresholds:)[1];
      v72 = swift_task_alloc();
      *(v0 + 392) = v72;
      *v72 = v0;
      v72[1] = sub_10024F2AC;
      v45 = *(v0 + 344);
      v44 = *(v0 + 328);
      v57 = *(v0 + 320);
      v46 = v69;
      v47 = v70;

      return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v57, v44, v45, v46, v47);
    }

    sub_10000607C((v0 + 72));
    v73 = *(v0 + 344);
  }

  v51 = *(v0 + 376);
LABEL_40:
  v74 = *(v0 + 296);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v107 = v78;
    *v77 = 136315138;
    v79 = Array.description.getter();
    v81 = sub_10000668C(v79, v80, &v107);

    *(v77 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v75, v76, "REMGroceryClassifier: prediction from model pipeline before filtering and correction: %s", v77, 0xCu);
    sub_10000607C(v78);
  }

  if (*(v0 + 57))
  {
    v82 = (*(v0 + 256) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_topN);
  }

  else
  {
    v82 = (v0 + 216);
    v83 = *(v0 + 256);
  }

  v85 = *(v0 + 288);
  v84 = *(v0 + 296);
  v86 = *(v0 + 272);
  v87 = *(v0 + 280);
  v88 = *(v0 + 264);
  v106 = sub_100250768(v51, *(v0 + 59), *v82, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 58), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 65));

  Date.init()();
  Date.timeIntervalSince(_:)();
  v90 = v89;
  v91 = *(v86 + 8);
  v91(v87, v88);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 134217984;
    *(v94 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v92, v93, "REMGroceryClassifier model prediction time: %f", v94, 0xCu);
  }

  v96 = *(v0 + 280);
  v95 = *(v0 + 288);
  v97 = *(v0 + 264);

  v91(v95, v97);

  v98 = *(v0 + 8);

  return v98(v106);
}

uint64_t sub_10024F2AC(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[49];
  v9 = *v2;
  (*v2)[50] = v1;

  if (v1)
  {
    sub_10000607C(v4 + 2);
    v6 = sub_10024F96C;
  }

  else
  {
    v7 = v4[47];
    v4[51] = a1;
    sub_10000607C(v4 + 2);

    v6 = sub_10024F3EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10024F3EC()
{
  v72 = v0;
  v1 = v0;
  v2 = *(v0 + 408);
  v3 = *(v2 + 16);
  if (v3)
  {
    *(v0 + 184) = _swiftEmptyArrayStorage;
    sub_1002538E4(0, v3, 0);
    v4 = (v2 + 56);
    v5 = *(v0 + 184);
    do
    {
      v6 = *(v1 + 66);
      v69 = *(v4 - 6);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = 0x796D6D7564;
      if (v6 != 3)
      {
        v9 = 0x6C774F69726973;
      }

      v10 = 0xE700000000000000;
      if (v6 == 3)
      {
        v10 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v9 = 0x7865676572;
        v10 = 0xE500000000000000;
      }

      v11 = 1953654114;
      if (*(v1 + 66))
      {
        v11 = 0x6465726F68636E61;
      }

      v12 = 0xE400000000000000;
      if (*(v1 + 66))
      {
        v12 = 0xEE00656C62627542;
      }

      if (*(v1 + 66) <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*(v1 + 66) <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      v15 = v1;
      *(v1 + 184) = v5;
      v17 = v5[2];
      v16 = v5[3];

      if (v17 >= v16 >> 1)
      {
        sub_1002538E4((v16 > 1), v17 + 1, 1);
        v5 = *(v15 + 184);
      }

      v5[2] = v17 + 1;
      v18 = &v5[6 * v17];
      *(v18 + 2) = v69;
      v18[6] = v7;
      *(v18 + 14) = v8;
      v18[8] = v13;
      v18[9] = v14;
      v4 += 8;
      --v3;
      v1 = v15;
    }

    while (v3);
    v19 = *(v15 + 408);

    if (v5[2])
    {
      goto LABEL_23;
    }

LABEL_25:
    v27 = *(v1 + 384) + 1;
    *(v1 + 376) = v5;
    if (v27 == *(v1 + 368))
    {
LABEL_29:
      v31 = *(v1 + 344);

      v5 = *(v1 + 376);
      goto LABEL_30;
    }

    *(v1 + 384) = v27;
    v28 = *(v1 + 352);
    if (v27 >= *(v28 + 16))
    {
      __break(1u);
    }

    else
    {
      v29 = *(v1 + 360);
      v20 = sub_10000A87C(v28 + 40 * v27 + 32, v1 + 72);
      v30 = *(v29 + 16);
      if (v27 == v30)
      {
        sub_10000607C((v1 + 72));
        goto LABEL_29;
      }

      if (v27 < v30)
      {
        *(v1 + 66) = *(*(v1 + 360) + v27 + 32);
        sub_100054B6C((v1 + 72), v1 + 16);
        v65 = *(v1 + 40);
        v66 = *(v1 + 48);
        sub_10000F61C((v1 + 16), v65);
        v67 = async function pointer to dispatch thunk of REMGroceryModel.predict(_:thresholds:)[1];
        v68 = swift_task_alloc();
        *(v1 + 392) = v68;
        *v68 = v1;
        v68[1] = sub_10024F2AC;
        v22 = *(v1 + 344);
        v21 = *(v1 + 328);
        v20 = *(v1 + 320);
        v23 = v65;
        v24 = v66;

        return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v20, v21, v22, v23, v24);
      }
    }

    __break(1u);
    return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v20, v21, v22, v23, v24);
  }

  v26 = *(v0 + 408);

  v5 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_25;
  }

LABEL_23:
  v25 = *(v1 + 344);

LABEL_30:
  v32 = *(v1 + 296);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v71 = v36;
    *v35 = 136315138;
    v37 = Array.description.getter();
    v39 = sub_10000668C(v37, v38, &v71);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "REMGroceryClassifier: prediction from model pipeline before filtering and correction: %s", v35, 0xCu);
    sub_10000607C(v36);
  }

  if (*(v1 + 57))
  {
    v40 = (*(v1 + 256) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_topN);
  }

  else
  {
    v40 = (v1 + 216);
    v41 = *(v1 + 256);
  }

  v42 = *v40;
  v43 = *(v1 + 320);
  v44 = *(v1 + 328);
  v45 = *(v1 + 304);
  v46 = *(v1 + 312);
  v48 = *(v1 + 288);
  v47 = *(v1 + 296);
  v49 = *(v1 + 272);
  v50 = *(v1 + 280);
  v51 = v1;
  v52 = *(v1 + 264);
  v53 = v51;
  v70 = sub_100250768(v5, *(v51 + 59), v42, *(v51 + 224), *(v51 + 232), *(v51 + 240), *(v51 + 248), *(v51 + 58), v45, v46, v43, v44, *(v51 + 65));

  Date.init()();
  Date.timeIntervalSince(_:)();
  v55 = v54;
  v56 = *(v49 + 8);
  v56(v50, v52);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134217984;
    *(v59 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v57, v58, "REMGroceryClassifier model prediction time: %f", v59, 0xCu);
  }

  v61 = *(v53 + 280);
  v60 = *(v53 + 288);
  v62 = *(v53 + 264);

  v56(v60, v62);

  v63 = *(v53 + 8);

  return v63(v70);
}

uint64_t sub_10024F96C()
{
  v67 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 296);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 66);
    v6 = swift_slowAlloc();
    *(v0 + 168) = swift_slowAlloc();
    v7 = 0xE400000000000000;
    v8 = 1953654114;
    *v6 = 136315394;
    v9 = 0xE500000000000000;
    v10 = 0x7865676572;
    v11 = 0xE500000000000000;
    v12 = 0x796D6D7564;
    if (v5 != 3)
    {
      v12 = 0x6C774F69726973;
      v11 = 0xE700000000000000;
    }

    if (v5 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    if (v5)
    {
      v8 = 0x6465726F68636E61;
      v7 = 0xEE00656C62627542;
    }

    if (v5 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    if (v5 <= 1)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    v15 = *(v0 + 400);
    v16 = sub_10000668C(v13, v14, (v0 + 168));

    *(v6 + 4) = v16;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 128);
    v20 = Error.rem_errorDescription.getter();
    v22 = sub_10000668C(v20, v21, (v0 + 168));

    *(v6 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v3, v4, "REMGroceryClassifier of type %s failed to make prediction %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = *(v0 + 400);
  }

  v29 = *(v0 + 384) + 1;
  if (v29 == *(v0 + 368))
  {
    goto LABEL_20;
  }

  *(v0 + 384) = v29;
  v30 = *(v0 + 352);
  if (v29 >= *(v30 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v31 = *(v0 + 360);
  v23 = sub_10000A87C(v30 + 40 * v29 + 32, v0 + 72);
  v32 = *(v31 + 16);
  if (v29 != v32)
  {
    if (v29 < v32)
    {
      *(v0 + 66) = *(*(v0 + 360) + v29 + 32);
      sub_100054B6C((v0 + 72), v0 + 16);
      v61 = *(v0 + 40);
      v62 = *(v0 + 48);
      sub_10000F61C((v0 + 16), v61);
      v63 = async function pointer to dispatch thunk of REMGroceryModel.predict(_:thresholds:)[1];
      v64 = swift_task_alloc();
      *(v0 + 392) = v64;
      *v64 = v0;
      v64[1] = sub_10024F2AC;
      v25 = *(v0 + 344);
      v24 = *(v0 + 328);
      v23 = *(v0 + 320);
      v26 = v61;
      v27 = v62;

      return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v23, v24, v25, v26, v27);
    }

LABEL_35:
    __break(1u);
    return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v23, v24, v25, v26, v27);
  }

  sub_10000607C((v0 + 72));
LABEL_20:
  v33 = *(v0 + 344);

  v34 = *(v0 + 376);
  v35 = *(v0 + 296);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v66 = v39;
    *v38 = 136315138;
    v40 = Array.description.getter();
    v42 = sub_10000668C(v40, v41, &v66);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "REMGroceryClassifier: prediction from model pipeline before filtering and correction: %s", v38, 0xCu);
    sub_10000607C(v39);
  }

  if (*(v0 + 57))
  {
    v43 = (*(v0 + 256) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_topN);
  }

  else
  {
    v43 = (v0 + 216);
    v44 = *(v0 + 256);
  }

  v46 = *(v0 + 288);
  v45 = *(v0 + 296);
  v47 = *(v0 + 272);
  v48 = *(v0 + 280);
  v49 = *(v0 + 264);
  v65 = sub_100250768(v34, *(v0 + 59), *v43, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 58), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 65));

  Date.init()();
  Date.timeIntervalSince(_:)();
  v51 = v50;
  v52 = *(v47 + 8);
  v52(v48, v49);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v53, v54, "REMGroceryClassifier model prediction time: %f", v55, 0xCu);
  }

  v57 = *(v0 + 280);
  v56 = *(v0 + 288);
  v58 = *(v0 + 264);

  v52(v56, v58);

  v59 = *(v0 + 8);

  return v59(v65);
}

uint64_t sub_10024FF38()
{
  v1 = type metadata accessor for CharacterSet();
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale.Components();
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale;
  v10 = *(v0 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
  v11 = *(v9 + 8);

  Locale.Components.init(identifier:)();
  rawValue = Locale.Components.rem_language()()._rawValue;
  type metadata accessor for REMFilteredTitleEmbedding();
  v20 = static REMFilteredTitleEmbedding.decodeEmojiInText(_:language:)();
  v21 = v13;
  v19 = &off_1008E28F0;
  sub_10025C528(&qword_10093EE60, &type metadata accessor for CharacterSet);
  sub_1000F5104(&qword_10093EE68, &qword_10079D610);
  sub_10000CB48(&qword_10093EE70, &qword_10093EE68, &qword_10079D610);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10013BCF4();
  v14 = StringProtocol.trimmingCharacters(in:)();

  (*(v18 + 8))(v4, v1);
  (*(v5 + 8))(v8, v17);

  return v14;
}

uint64_t sub_1002501E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale.Components();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale;
  v16 = *(v2 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
  v17 = *(v15 + 8);

  Locale.Components.init(identifier:)();
  v18._rawValue = Locale.Components.rem_language()()._rawValue;
  if (!sub_10018F9A4(0, *(v3 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes)) && ((v41 = v7, v19 = *(v3 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireLemmatization), (v19 & 1) != 0) || (*(v3 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireRemovingNumbers) & 1) != 0))
  {
    LODWORD(v37) = *(v3 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireRemovingNumbers);
    rawValue = v18._rawValue;

    v38 = objc_autoreleasePoolPush();
    sub_1000F5104(&qword_10093EE58, &unk_10079E1F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100791300;
    *(v21 + 32) = NLTagSchemeNameTypeOrLexicalClass;
    v39 = v6;
    v36[1] = NLTagSchemeNameTypeOrLexicalClass;
    v22 = NLTagSchemeNameTypeOrLexicalClass;
    if (v19)
    {
      v23 = NLTagSchemeLemma;
      v24 = sub_1003669BC(1, 2, 1, v21);
      v24[2] = 2;
      v24[5] = v23;
    }

    v25 = objc_allocWithZone(NLTagger);
    type metadata accessor for NLTagScheme(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v25 initWithTagSchemes:isa];

    v28 = String._bridgeToObjectiveC()();
    [v27 setString:v28];

    v29 = NLTagger.setLanguage(_:range:)();
    v46 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v29);
    LOBYTE(v36[-6]) = v37 & 1;
    BYTE1(v36[-6]) = v19 & 1;
    v36[-5] = v27;
    v36[-4] = &v46;
    v36[-3] = a1;
    v36[-2] = a2;
    NLTagger.enumerateTags(in:unit:scheme:options:using:)();
    v44 = v46;

    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;
    v37 = v31;

    v44 = v30;
    v45 = v32;
    v43 = &off_1008E2920;
    sub_10025C528(&qword_10093EE60, &type metadata accessor for CharacterSet);
    sub_1000F5104(&qword_10093EE68, &qword_10079D610);
    sub_10000CB48(&qword_10093EE70, &qword_10093EE68, &qword_10079D610);
    v33 = v42;
    v34 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_10013BCF4();
    a1 = StringProtocol.trimmingCharacters(in:)();

    (*(v41 + 8))(v33, v34);

    objc_autoreleasePoolPop(v38);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v20 = *(v11 + 8);

    v20(v14, v10);
  }

  return a1;
}

uint64_t sub_100250768(void *a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v216 = a7;
  v215 = a5;
  v217 = type metadata accessor for REMAnalyticsEvent();
  v199 = *(v217 - 8);
  v19 = *(v199 + 64);
  __chkstk_darwin(v217);
  __chkstk_darwin(v20);
  v204 = (&v191 - v21);
  v198 = v22;
  v214 = a6;
  v213 = a4;
  LODWORD(v211) = a2;
  LODWORD(v212) = a8;
  if (a2)
  {
  }

  else
  {
    v210 = a3;
    v23 = a1[2];

    v209 = a1;
    if (v23)
    {
      v24 = v23;
      v25 = a1;
      v26 = 0;
      v27 = 0xED000073756F656ELL;
      v28 = 0x616C6C656373694DLL;
      v29 = v25 + 9;
      v30 = _swiftEmptyArrayStorage;
      v207 = v29;
      do
      {
        v208 = v30;
        v31 = &v29[6 * v26];
        v32 = v26;
        while (1)
        {
          if (v32 >= v24)
          {
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          v26 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_140;
          }

          v33 = *(v31 - 3);
          if (*(v31 - 4) != v28 || v33 != v27)
          {
            v35 = *(v31 - 5);
            v36 = *(v31 - 4);
            v38 = *(v31 - 1);
            v37 = *v31;
            v39 = *(v31 - 3);
            a3 = v28;
            v23 = v27;
            v40 = v24;
            v218 = *(v31 - 4);
            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v28 = a3;
            v24 = v40;
            v27 = v23;
            if ((v41 & 1) == 0)
            {
              break;
            }
          }

          ++v32;
          v31 += 6;
          if (v26 == v24)
          {
            v30 = v208;
            goto LABEL_22;
          }
        }

        v206 = v38;

        v30 = v208;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v226 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002538E4(0, v30[2] + 1, 1);
          v30 = v226;
        }

        v43 = v206;
        v45 = v30[2];
        v44 = v30[3];
        v27 = v23;
        v24 = v40;
        v28 = a3;
        if (v45 >= v44 >> 1)
        {
          sub_1002538E4((v44 > 1), v45 + 1, 1);
          v43 = v206;
          v28 = a3;
          v24 = v40;
          v27 = v23;
          v30 = v226;
        }

        v30[2] = v45 + 1;
        v46 = &v30[6 * v45];
        v47 = v218;
        v46[4] = v35;
        v46[5] = v47;
        v46[6] = v33;
        *(v46 + 14) = v36;
        v46[8] = v43;
        v46[9] = v37;
        v29 = v207;
      }

      while (v26 != v24);
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

LABEL_22:

    a1 = v30;
    a3 = v210;
  }

  v31 = sub_1002F36CC(a3, a1);
  if ((v50 & 1) == 0)
  {
    goto LABEL_24;
  }

  a3 = v50;
  v32 = v49;
  v23 = v48;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v53 = swift_dynamicCastClass();
  if (!v53)
  {
    swift_unknownObjectRelease();
    v53 = _swiftEmptyArrayStorage;
  }

  v54 = v53[2];

  if (__OFSUB__(a3 >> 1, v32))
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v54 != (a3 >> 1) - v32)
  {
LABEL_142:
    swift_unknownObjectRelease();
    v50 = a3;
    v49 = v32;
    v48 = v23;
LABEL_24:
    sub_10027836C(v31, v48, v49, v50);
    v52 = v51;
    goto LABEL_31;
  }

  v52 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v52)
  {
    goto LABEL_32;
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_31:
  swift_unknownObjectRelease();
LABEL_32:
  v201 = a10;
  v200 = a9;
  v202 = v52;
  v220 = v52;
  v55 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_corrections + 16);
  v56 = String.lowercased()();
  v57._countAndFlagsBits = 115;
  v57._object = 0xE100000000000000;
  v58 = String.hasSuffix(_:)(v57);

  countAndFlagsBits = v56._countAndFlagsBits;
  object = v56._object;
  if (v58)
  {
    sub_1006C1AFC(1);

    countAndFlagsBits = static String._fromSubstring(_:)();
    object = v61;
  }

  v62 = a13;
  if ((v212 & 1) == 0)
  {

    v67 = v202;
LABEL_42:

LABEL_43:
    if ((a13 & 1) == 0)
    {
      goto LABEL_76;
    }

    v68 = *(v67 + 2);
    if (v68)
    {
      v195 = a13;
      v212 = type metadata accessor for REMAnalyticsManager();
      v69 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8);
      v211 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
      v210 = v69;
      v70 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID + 8);
      v209 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID);
      v208 = v70;
      LODWORD(v207) = enum case for REMAnalyticsEvent.groceryPrediction(_:);
      v206 = (v199 + 104);
      v205 = (v199 + 8);
      v71 = (v67 + 72);
      v72 = v204;
      do
      {
        v74 = *(v71 - 4);
        v73 = *(v71 - 3);
        v76 = *(v71 - 1);
        v75 = *v71;

        v218 = static REMAnalyticsManager.shared.getter();
        *v72 = v76;
        v72[1] = v75;
        *(v72 + 16) = 0;
        *(v72 + 17) = v226;
        *(v72 + 5) = *(&v226 + 3);
        v77 = v210;
        v72[3] = v211;
        v72[4] = v77;
        v78 = v215;
        v72[5] = v213;
        v72[6] = v78;
        v79 = v216;
        v72[7] = v214;
        v72[8] = v79;
        v72[9] = v74;
        v72[10] = v73;
        v80 = v208;
        v72[11] = v209;
        v72[12] = v80;
        v81 = v217;
        (*v206)(v72, v207, v217);

        REMAnalyticsManager.post(event:)();

        (*v205)(v72, v81);
        v71 += 6;
        --v68;
      }

      while (v68);
      v67 = v202;
      v62 = v195;
    }

    v82 = *(v67 + 2);
    if (v82)
    {
      goto LABEL_77;
    }

LABEL_49:
    if ((v62 & 1) == 0)
    {
LABEL_77:
      if (v82)
      {
        v219 = _swiftEmptyArrayStorage;
        sub_1002538A4(0, v82, 0);
        v114 = v219;
        v115 = v67 + 56;
        do
        {
          v116 = *(v115 - 3);
          v117 = *(v115 - 2);
          v118 = *(v115 - 1);
          v119 = *v115;
          v219 = v114;
          v121 = v114[2];
          v120 = v114[3];

          if (v121 >= v120 >> 1)
          {
            sub_1002538A4((v120 > 1), v121 + 1, 1);
            v114 = v219;
          }

          v114[2] = v121 + 1;
          v122 = &v114[4 * v121];
          v122[4] = v116;
          v122[5] = v117;
          v122[6] = v118;
          *(v122 + 14) = v119;
          v115 += 12;
          --v82;
        }

        while (v82);

        return v114;
      }

      return _swiftEmptyArrayStorage;
    }

    v202 = v67;
    type metadata accessor for REMAnalyticsManager();
    v83 = static REMAnalyticsManager.shared.getter();
    v84 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes);
    v85 = *(v84 + 16);
    v86 = _swiftEmptyArrayStorage;
    if (v85)
    {
      v218 = v83;
      v219 = _swiftEmptyArrayStorage;
      sub_100026EF4(0, v85, 0);
      v87 = (v84 + 32);
      v86 = v219;
      v88 = 0x796D6D7564;
      do
      {
        v90 = *v87++;
        v89 = v90;
        v91 = v90 == 3;
        if (v90 == 3)
        {
          v92 = v88;
        }

        else
        {
          v92 = 0x6C774F69726973;
        }

        if (v91)
        {
          v93 = 0xE500000000000000;
        }

        else
        {
          v93 = 0xE700000000000000;
        }

        if (v89 == 2)
        {
          v92 = 0x7865676572;
          v93 = 0xE500000000000000;
        }

        if (v89)
        {
          v94 = 0x6465726F68636E61;
        }

        else
        {
          v94 = 1953654114;
        }

        if (v89)
        {
          v95 = 0xEE00656C62627542;
        }

        else
        {
          v95 = 0xE400000000000000;
        }

        if (v89 <= 1)
        {
          v96 = v94;
        }

        else
        {
          v96 = v92;
        }

        if (v89 <= 1)
        {
          v97 = v95;
        }

        else
        {
          v97 = v93;
        }

        v219 = v86;
        v99 = v86[2];
        v98 = v86[3];
        if (v99 >= v98 >> 1)
        {
          v101 = v88;
          sub_100026EF4((v98 > 1), v99 + 1, 1);
          v88 = v101;
          v86 = v219;
        }

        v86[2] = v99 + 1;
        v100 = &v86[2 * v99];
        v100[4] = v96;
        v100[5] = v97;
        --v85;
      }

      while (v85);
    }

    v219 = v86;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v102 = BidirectionalCollection<>.joined(separator:)();
    v104 = v103;

    v105 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
    v106 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8);
    v107 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID);
    v108 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID + 8);
    v109 = v198;
    *v198 = v102;
    v109[1] = v104;
    *(v109 + 16) = 1;
    *(v109 + 17) = v219;
    *(v109 + 5) = *(&v219 + 3);
    v109[3] = v105;
    v109[4] = v106;
    v110 = v215;
    v109[5] = v213;
    v109[6] = v110;
    v111 = v216;
    v109[7] = v214;
    v109[8] = v111;
    v109[9] = 0;
    v109[10] = 0;
    v109[11] = v107;
    v109[12] = v108;
    v112 = v199;
    v113 = v217;
    (*(v199 + 104))(v109, enum case for REMAnalyticsEvent.groceryPrediction(_:), v217);

    REMAnalyticsManager.post(event:)();

    (*(v112 + 8))(v109, v113);
    type metadata accessor for Analytics();
    static Analytics.postBiomeEventForUncategorizedGroceryItem(item:locale:)();
    v67 = v202;
LABEL_76:
    v82 = *(v67 + 2);
    goto LABEL_77;
  }

  if (!*(v55 + 16))
  {
    goto LABEL_87;
  }

  v63 = sub_100005F4C(v200, v201);
  if (v64)
  {
LABEL_39:
    v66 = v63;

    v67 = v202;
LABEL_40:

    goto LABEL_90;
  }

  if (!*(v55 + 16))
  {
    goto LABEL_87;
  }

  v63 = sub_100005F4C(a11, a12);
  if (v65)
  {
    goto LABEL_39;
  }

  if (*(v55 + 16))
  {
    v66 = sub_100005F4C(v56._countAndFlagsBits, v56._object);
    v124 = v123;

    v67 = v202;
    if (v124)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_87:

    v67 = v202;
  }

  if (!*(v55 + 16))
  {
    goto LABEL_42;
  }

  v66 = sub_100005F4C(countAndFlagsBits, object);
  v126 = v125;

  if ((v126 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_90:
  v127 = *(*(v55 + 56) + 8 * v66);
  v128 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_labels);
  v221 = v128;
  *&v225 = v127;

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093EE30, &unk_10093B300, &unk_100797780);
  Collection.subscript.getter();
  v129 = *(&v226 + 1);
  if (!*(&v226 + 1))
  {
    if (qword_100935D70 != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    sub_100006654(v140, qword_10093EB60);

    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 134218240;
      *(v143 + 4) = v127;
      *(v143 + 12) = 2048;
      v144 = *(v128 + 16);

      *(v143 + 14) = v144;

      _os_log_impl(&_mh_execute_header, v141, v142, "REMGroceryClassifier topNFilteredCorrected asked for %ld in intelligentCategoryNames with count %ld", v143, 0x16u);

      v145 = *(v67 + 2);
      if (v145)
      {
        goto LABEL_105;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v145 = *(v67 + 2);
      if (v145)
      {
LABEL_105:
        *&v226 = _swiftEmptyArrayStorage;
        sub_1002538A4(0, v145, 0);
        v114 = v226;
        v146 = v67 + 56;
        do
        {
          v147 = *(v146 - 3);
          v148 = *(v146 - 2);
          v149 = *(v146 - 1);
          v150 = *v146;
          *&v226 = v114;
          v152 = v114[2];
          v151 = v114[3];

          if (v152 >= v151 >> 1)
          {
            sub_1002538A4((v151 > 1), v152 + 1, 1);
            v114 = v226;
          }

          v114[2] = v152 + 1;
          v153 = &v114[4 * v152];
          v153[4] = v147;
          v153[5] = v148;
          v153[6] = v149;
          *(v153 + 14) = v150;
          v146 += 12;
          --v145;
        }

        while (v145);
        goto LABEL_109;
      }
    }

LABEL_124:

    return _swiftEmptyArrayStorage;
  }

  v130 = v226;

  if (v130 == 0x616C6C656373694DLL && v129 == 0xED000073756F656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v211 & 1) == 0)
  {

    v131 = *(v67 + 2);
    if (v131)
    {
      *&v226 = _swiftEmptyArrayStorage;
      sub_1002538A4(0, v131, 0);
      v114 = v226;
      v132 = v67 + 56;
      do
      {
        v133 = *(v132 - 3);
        v134 = *(v132 - 2);
        v135 = *(v132 - 1);
        v136 = *v132;
        *&v226 = v114;
        v138 = v114[2];
        v137 = v114[3];

        if (v138 >= v137 >> 1)
        {
          sub_1002538A4((v137 > 1), v138 + 1, 1);
          v114 = v226;
        }

        v114[2] = v138 + 1;
        v139 = &v114[4 * v138];
        v139[4] = v133;
        v139[5] = v134;
        v139[6] = v135;
        *(v139 + 14) = v136;
        v132 += 12;
        --v131;
      }

      while (v131);
LABEL_109:

      return v114;
    }

    goto LABEL_124;
  }

  v154 = *(v67 + 2);
  if (v154)
  {
    v155 = 0;
    v156 = v67 + 48;
    while (1)
    {
      v157 = *(v156 - 1) == v130 && v129 == *v156;
      if (v157 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v155;
      v156 += 6;
      if (v154 == v155)
      {
        goto LABEL_119;
      }
    }

    sub_10042C970(v155, &v221);
    v225 = v222;
    sub_100034610(&v225);
    v224 = v223;
    sub_100034610(&v224);
LABEL_128:
    if (a13)
    {
      v195 = a13;
      v197 = type metadata accessor for REMAnalyticsManager();
      v218 = static REMAnalyticsManager.shared.getter();
      v164 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
      v165 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8);
      v166 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID);
      v167 = *(v203 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID + 8);
      v168 = v204;
      *v204 = 0xD000000000000010;
      v168[1] = 0x80000001007F26D0;
      *(v168 + 16) = 0;
      *(v168 + 17) = v226;
      v208 = (v168 + 17);
      *(v168 + 5) = *(&v226 + 3);
      v212 = v164;
      v168[3] = v164;
      v168[4] = v165;
      v169 = v215;
      v168[5] = v213;
      v168[6] = v169;
      v170 = v216;
      v168[7] = v214;
      v168[8] = v170;
      v168[9] = v130;
      v168[10] = v129;
      v210 = v166;
      v168[11] = v166;
      v168[12] = v167;
      v171 = v199;
      v172 = *(v199 + 104);
      LODWORD(v207) = enum case for REMAnalyticsEvent.groceryPrediction(_:);
      v173 = v217;
      v206 = (v199 + 104);
      v205 = v172;
      v172(v168);
      v209 = v167;

      v211 = v165;

      REMAnalyticsManager.post(event:)();

      v174 = *(v171 + 8);
      v202 = (v171 + 8);
      v174(v168, v173);
      v175 = *(v220 + 2);
      if (v175)
      {
        v192 = v130;
        v193 = v129;
        v194 = v127;
        v176 = (v220 + 72);
        v196 = v174;
        v177 = v211;
        v178 = v216;
        do
        {
          v180 = *(v176 - 4);
          v179 = *(v176 - 3);
          v181 = *(v176 - 1);
          v182 = *v176;

          v218 = static REMAnalyticsManager.shared.getter();
          *v204 = v181;
          v183 = v204;
          v204[1] = v182;
          *(v183 + 16) = 0;
          v184 = v208;
          *v208 = v219;
          *(v184 + 3) = *(&v219 + 3);
          v183[3] = v212;
          v183[4] = v177;
          v185 = v215;
          v183[5] = v213;
          v183[6] = v185;
          v183[7] = v214;
          v183[8] = v178;
          v183[9] = v180;
          v183[10] = v179;
          v186 = v209;
          v183[11] = v210;
          v183[12] = v186;
          v187 = v217;
          (v205)(v183, v207, v217);

          REMAnalyticsManager.post(event:)();

          v188 = v196;

          v188(v183, v187);
          v176 += 6;
          --v175;
        }

        while (v175);
        v62 = v195;
        v127 = v194;
        v129 = v193;
        v130 = v192;
      }

      else
      {
        v62 = v195;
      }
    }

    v67 = v220;
    v189 = *(v220 + 2);
    v190 = swift_isUniquelyReferenced_nonNull_native();
    if (!v190 || v189 >= *(v67 + 3) >> 1)
    {
      v67 = sub_100366D1C(v190, v189 + 1, 1, v67);
      v220 = v67;
    }

    *&v226 = v127;
    *(&v226 + 1) = v130;
    v227 = v129;
    v228 = 1065353216;
    v229 = 0xD000000000000010;
    v230 = 0x80000001007F26D0;
    sub_100260A0C(0, 0, 1, &v226);
    v82 = *(v67 + 2);
    if (v82)
    {
      goto LABEL_77;
    }

    goto LABEL_49;
  }

LABEL_119:
  if (!*(v67 + 2))
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v159 = *(v67 + 2);
    if (v159)
    {
LABEL_122:
      v160 = v159 - 1;
      v161 = &v67[48 * v159];
      v162 = *v161;
      v163 = *(v161 + 3);
      *(v67 + 2) = v160;

      v220 = v67;
      goto LABEL_128;
    }
  }

  else
  {
    result = sub_100260B98(v67);
    v67 = result;
    v159 = *(result + 16);
    if (v159)
    {
      goto LABEL_122;
    }
  }

  __break(1u);
  return result;
}

uint64_t REMGroceryClassifier.shouldSuggestConvertToGrocery(titles:listName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_100251B94, 0, 0);
}

uint64_t sub_100251B94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = *(v7 + 80);
  v9 = *(*(v7 + 56) + 16);
  if (v9 > 4)
  {
    v10 = *(v8 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_groceryListScoreThreshold);
LABEL_10:
    v18 = *(v8 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_groceryListScoreExcludedCategories);
    v19 = *(v18 + 16);
    if (v19)
    {
      v38 = v9;
      v39 = v7;
      v20 = *(v8 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_labels);
      a1 = sub_100026EF4(0, v19, 0);
      v21 = (v18 + 32);
      while (1)
      {
        v23 = *v21++;
        v22 = v23;
        if ((v23 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v22 >= *(v20 + 16))
        {
          goto LABEL_29;
        }

        v24 = (v20 + 32 + 16 * v22);
        v26 = *v24;
        v25 = v24[1];
        v28 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];

        if (v28 >= v27 >> 1)
        {
          a1 = sub_100026EF4((v27 > 1), v28 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v28 + 1;
        v29 = &_swiftEmptyArrayStorage[2 * v28];
        v29[4] = v26;
        v29[5] = v25;
        if (!--v19)
        {
          v9 = v38;
          v7 = v39;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
LABEL_18:
      *(v7 + 88) = _swiftEmptyArrayStorage;
      v30 = ceilf(v10 * v9);
      *(v7 + 112) = v30;
      if ((LODWORD(v30) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v30 > -9.2234e18)
        {
          if (v30 < 9.2234e18)
          {
            v31 = *(v7 + 80);
            *(v7 + 40) = *(v7 + 56);
            *(v7 + 48) = 0;
            v32 = swift_task_alloc();
            *(v7 + 96) = v32;
            *(v32 + 16) = v31;
            *(v32 + 24) = _swiftEmptyArrayStorage;
            v33 = async function pointer to Sequence.asyncReduce<A>(_:_:)[1];
            v34 = swift_task_alloc();
            *(v7 + 104) = v34;
            v35 = sub_1000F5104(&unk_10093B300, &unk_100797780);
            a7 = sub_10000CB48(&unk_100945250, &unk_10093B300, &unk_100797780);
            *v34 = v7;
            v34[1] = sub_100251F30;
            a6 = &type metadata for Int;
            a3 = &unk_10079D0A0;
            a1 = v7 + 32;
            a2 = v7 + 48;
            a4 = v32;
            a5 = v35;

            return Sequence.asyncReduce<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7);
          }

LABEL_32:
          __break(1u);
          return Sequence.asyncReduce<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7);
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v10 = 1.0;
  if (!*(v7 + 72))
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 64);
  *(v7 + 16) = 0x65697265636F7247;
  *(v7 + 24) = 0xE900000000000073;
  sub_10013BCF4();
  v12 = StringProtocol.localizedLowercase.getter();
  v14 = v13;
  v15 = String.lowercased()();
  if (v12 == v15._countAndFlagsBits && v14 == v15._object)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v8 = *(v7 + 80);
      goto LABEL_10;
    }
  }

  v36 = *(v7 + 8);

  return v36(1);
}

uint64_t sub_100251F30()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 96);

    return _swift_task_switch(sub_100252074, 0, 0);
  }
}

uint64_t sub_1002520A0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v8 = *(*(sub_1000F5104(&qword_100936FA8, &qword_100791B70) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v5[5] = v9;
  v5[6] = v10;
  v11 = a3[1];
  v5[7] = *a3;
  v5[8] = v11;

  return _swift_task_switch(sub_100252154, 0, 0);
}

uint64_t sub_100252154()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v2;
  v8[6] = v1;
  v8[7] = v5;
  v8[8] = v4;
  v9 = v6;

  v10 = sub_1001958C4(0, 0, v3, &unk_10079D5F8, v8);
  v0[9] = v10;
  v11 = async function pointer to Task<>.value.getter[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1002522C8;
  v13 = v0[2];

  return Task<>.value.getter(v13, v10, &type metadata for Int);
}

uint64_t sub_1002522C8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1002523F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[8] = a1;
  v11 = swift_task_alloc();
  v8[11] = v11;
  *v11 = v8;
  v11[1] = sub_1002524FC;

  return REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(a5, a6, 0x100000000, 1, 0, 0, 0, 0xD000000000000017);
}

uint64_t sub_1002524FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_10025271C;
  }

  else
  {
    v5 = sub_100252610;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100252610()
{
  v1 = *(v0 + 96);
  if (!v1[2])
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  v5 = v1[5];
  v4 = v1[6];

  *(v0 + 40) = v5;
  *(v0 + 48) = v4;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 40;
  LOBYTE(v3) = sub_100040A74(sub_100040B20, v6, v3);

  v7 = *(v0 + 80);
  if ((v3 & 1) == 0 && __OFADD__(v7++, 1))
  {
    __break(1u);
LABEL_6:

    v7 = *(v0 + 80);
  }

  **(v0 + 64) = v7;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10025271C()
{
  v18 = v0;
  if (qword_100935D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093EB60);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = Error.rem_errorDescription.getter();
    v14 = sub_10000668C(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "REMGroceryClassifier.shouldSuggestConvertToGrocery: predict failed with {error: %s}", v7, 0xCu);
    sub_10000607C(v8);
  }

  else
  {
  }

  **(v0 + 64) = *(v0 + 80);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t REMGroceryClassifier.modelTypesDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100026EF4(0, v2, 0);
    v3 = (v1 + 32);
    v4 = _swiftEmptyArrayStorage;
    v5 = 0x796D6D7564;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = v7 == 3;
      if (v7 == 3)
      {
        v9 = v5;
      }

      else
      {
        v9 = 0x6C774F69726973;
      }

      if (v8)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      if (v6 == 2)
      {
        v9 = 0x7865676572;
        v10 = 0xE500000000000000;
      }

      if (v6)
      {
        v11 = 0x6465726F68636E61;
      }

      else
      {
        v11 = 1953654114;
      }

      if (v6)
      {
        v12 = 0xEE00656C62627542;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      v21 = v4;
      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        v18 = v5;
        sub_100026EF4((v15 > 1), v16 + 1, 1);
        v5 = v18;
        v4 = v21;
      }

      v4[2] = v16 + 1;
      v17 = &v4[2 * v16];
      v17[4] = v13;
      v17[5] = v14;
      --v2;
    }

    while (v2);
  }

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
  v19 = BidirectionalCollection<>.joined(separator:)();

  return v19;
}

char *REMGroceryClassifier.__allocating_init(baseURL:modelLocale:trialDeploymentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v20 - v15;
  v17 = *(v9 + 16);
  v17(&v20 - v15, a1, v8, v14);
  (v17)(v12, a1, v8);
  v18 = sub_100258DC0(v16, v12, a2, a3, v20, v21);
  (*(v9 + 8))(a1, v8);
  return v18;
}

uint64_t sub_100252C70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, char **a7)
{
  if ((a4 & 1) == 0 || !a1)
  {
    goto LABEL_8;
  }

  v8 = a5;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    return 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  a5 = v8;
  if ((v14 & 1) == 0)
  {
LABEL_8:
    if (a5)
    {
      v15 = NLTagger.tags(in:unit:scheme:options:)();
      if (*(v15 + 16))
      {
        v16 = *(v15 + 32);
        v17 = v16;

        if (v16)
        {
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

LABEL_15:
          v22 = *a7;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_100365788(0, *(v22 + 2) + 1, 1, v22);
            *a7 = v22;
          }

          v25 = *(v22 + 2);
          v24 = *(v22 + 3);
          if (v25 >= v24 >> 1)
          {
            v22 = sub_100365788((v24 > 1), v25 + 1, 1, v22);
            *a7 = v22;
          }

          *(v22 + 2) = v25 + 1;
          v26 = &v22[16 * v25];
          *(v26 + 4) = v18;
          *(v26 + 5) = v20;
          return 1;
        }
      }

      else
      {
      }
    }

    String.subscript.getter();
    v18 = static String._fromSubstring(_:)();
    v20 = v21;

    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_100252F80()
{
  v2 = *v0;
  v3 = sub_10025B218();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_100253068(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

void *sub_1002530F8(void *a1, int64_t a2, char a3)
{
  result = sub_100254A30(a1, a2, a3, *v3, &qword_10093EEA0, &qword_10079D668, &qword_10093EEA8, &qword_10079D670);
  *v3 = result;
  return result;
}

void *sub_100253138(void *a1, int64_t a2, char a3)
{
  result = sub_100253E24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100253158(void *a1, int64_t a2, char a3)
{
  result = sub_100254A30(a1, a2, a3, *v3, &qword_10093EC70, &qword_10079D3A8, &qword_10093EC78, &qword_10079D3B0);
  *v3 = result;
  return result;
}

void *sub_100253198(void *a1, int64_t a2, char a3)
{
  result = sub_100253F90(a1, a2, a3, *v3, &unk_1009439E0, &unk_1007A11F0, &qword_10093EC60, &unk_10079D390);
  *v3 = result;
  return result;
}

void *sub_1002531D8(void *a1, int64_t a2, char a3)
{
  result = sub_1002540D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002531F8(char *a1, int64_t a2, char a3)
{
  result = sub_100254200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100253218(size_t a1, int64_t a2, char a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &qword_10093EC20, &unk_10079D338, &unk_100939D90, "8\n\r");
  *v3 = result;
  return result;
}

size_t sub_100253258(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093D000, &qword_10079D320, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

char *sub_10025329C(char *a1, int64_t a2, char a3)
{
  result = sub_100254320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002532BC(void *a1, int64_t a2, char a3)
{
  result = sub_100254420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1002532DC(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093B448, &qword_10079D400, &type metadata accessor for REMRemindersListDataView.SectionLite);
  *v3 = result;
  return result;
}

void *sub_100253320(void *a1, int64_t a2, char a3)
{
  result = sub_100254A30(a1, a2, a3, *v3, &qword_10093ECD0, &qword_10079D408, &qword_10093ECD8, &qword_10079D410);
  *v3 = result;
  return result;
}

size_t sub_100253360(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED68, &qword_10079D4E0, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder);
  *v3 = result;
  return result;
}

size_t sub_1002533A4(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED60, &qword_1007A4560, &type metadata accessor for REMAccountsListDataView.Model.PinnedList);
  *v3 = result;
  return result;
}

size_t sub_1002533E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &qword_10093EDA0, &qword_10079D528, &qword_10093EDA8, &qword_10079D530);
  *v3 = result;
  return result;
}

size_t sub_100253428(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_100943D40, &qword_10079D538, &type metadata accessor for REMRemindersListDataView.ListsModel.Sublist);
  *v3 = result;
  return result;
}

size_t sub_10025346C(size_t a1, int64_t a2, char a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &unk_100943AB0, &unk_1007A4320, &qword_100939860, &unk_10079D480);
  *v3 = result;
  return result;
}

size_t sub_1002534AC(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED50, &unk_10079D4C0, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List);
  *v3 = result;
  return result;
}

size_t sub_1002534F0(size_t a1, int64_t a2, char a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &qword_10093ED40, &qword_10079D4B0, &qword_10093ED48, &qword_10079D4B8);
  *v3 = result;
  return result;
}

size_t sub_100253530(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &unk_1009430D0, &qword_10079D4F0, &type metadata accessor for REMRemindersListDataView.ReminderLite);
  *v3 = result;
  return result;
}

size_t sub_100253574(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &unk_1009431B0, &qword_10079D490, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

void *sub_1002535B8(void *a1, int64_t a2, char a3)
{
  result = sub_10025457C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1002535D8(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EDB0, &qword_10079D540, &type metadata accessor for REMSmartListSection.PredefinedSectionType.Today);
  *v3 = result;
  return result;
}

char *sub_10025361C(char *a1, int64_t a2, char a3)
{
  result = sub_10025492C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10025363C(void *a1, int64_t a2, char a3)
{
  result = sub_1002555F0(a1, a2, a3, *v3, &qword_10093EDE8, &unk_10079D590, &qword_10094EC10, &qword_1007AD5B0);
  *v3 = result;
  return result;
}

void *sub_10025367C(void *a1, int64_t a2, char a3)
{
  result = sub_1002555F0(a1, a2, a3, *v3, &unk_1009439D0, &unk_10079D5A0, &qword_10093EDF0, &qword_10079E620);
  *v3 = result;
  return result;
}

void *sub_1002536BC(void *a1, int64_t a2, char a3)
{
  result = sub_100254A30(a1, a2, a3, *v3, &qword_10093ED38, &qword_10079D4A0, &unk_10093F690, &qword_10079D4A8);
  *v3 = result;
  return result;
}

char *sub_1002536FC(char *a1, int64_t a2, char a3)
{
  result = sub_100254B78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10025371C(char *a1, int64_t a2, char a3)
{
  result = sub_100254CA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10025373C(char *a1, int64_t a2, char a3)
{
  result = sub_100254DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10025375C(size_t a1, int64_t a2, char a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &unk_100942E80, &unk_10079D310, &qword_10093A700, &qword_100797B40);
  *v3 = result;
  return result;
}

size_t sub_10025379C(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &unk_100943C70, &qword_10079D498, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
  *v3 = result;
  return result;
}

char *sub_1002537E0(char *a1, int64_t a2, char a3)
{
  result = sub_100254EE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100253800(char *a1, int64_t a2, char a3)
{
  result = sub_100255AB0(a1, a2, a3, *v3, &qword_10093ECF8, &qword_10079D430);
  *v3 = result;
  return result;
}

char *sub_100253830(char *a1, int64_t a2, char a3)
{
  result = sub_1002561E8(a1, a2, a3, *v3, &unk_100943FC0, &unk_10079D380);
  *v3 = result;
  return result;
}

size_t sub_100253860(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ECE8, &qword_10079D420, &type metadata accessor for REMManualOrdering.PinnedList);
  *v3 = result;
  return result;
}

void *sub_1002538A4(void *a1, int64_t a2, char a3)
{
  result = sub_100254FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002538C4(char *a1, int64_t a2, char a3)
{
  result = sub_10025511C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002538E4(char *a1, int64_t a2, char a3)
{
  result = sub_10025521C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100253904(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_100942E90, &qword_10079D620, type metadata accessor for RDXPCEventStream.AlarmHandler);
  *v3 = result;
  return result;
}

void *sub_100253948(void *a1, int64_t a2, char a3)
{
  result = sub_10025533C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100253968(char *a1, int64_t a2, char a3)
{
  result = sub_100255484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100253988(void *a1, int64_t a2, char a3)
{
  result = sub_1002555F0(a1, a2, a3, *v3, &qword_10093EE78, &qword_10079D628, &qword_10093EE80, &unk_10079D630);
  *v3 = result;
  return result;
}

size_t sub_1002539C8(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_100944150, &qword_10079D658, type metadata accessor for RDTimelineEngineReminder);
  *v3 = result;
  return result;
}

size_t sub_100253A0C(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EE98, &qword_10079D650, type metadata accessor for RDTimelineEngineDueReminder);
  *v3 = result;
  return result;
}

size_t sub_100253A50(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EE90, &qword_1007A48A0, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
  *v3 = result;
  return result;
}

void *sub_100253A94(void *a1, int64_t a2, char a3)
{
  result = sub_1002555F0(a1, a2, a3, *v3, &qword_10093EE08, &qword_10079D5B8, &qword_10093EE10, &qword_10079D5C0);
  *v3 = result;
  return result;
}

char *sub_100253AD4(char *a1, int64_t a2, char a3)
{
  result = sub_100255724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100253AF4(char *a1, int64_t a2, char a3)
{
  result = sub_1002561E8(a1, a2, a3, *v3, &qword_10093E1A0, &qword_10079D450);
  *v3 = result;
  return result;
}

void *sub_100253B24(void *a1, int64_t a2, char a3)
{
  result = sub_10025585C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100253B44(char *a1, int64_t a2, char a3)
{
  result = sub_100255AB0(a1, a2, a3, *v3, &qword_10093ED10, &qword_10079D448);
  *v3 = result;
  return result;
}

char *sub_100253B74(char *a1, int64_t a2, char a3)
{
  result = sub_100255990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100253B94(char *a1, int64_t a2, char a3)
{
  result = sub_100255AB0(a1, a2, a3, *v3, &qword_10093EDC0, &qword_10079D550);
  *v3 = result;
  return result;
}

size_t sub_100253BC4(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EDB8, &qword_10079D548, &type metadata accessor for REMSuggestedAttributeOutput);
  *v3 = result;
  return result;
}

void *sub_100253C08(void *a1, int64_t a2, char a3)
{
  result = sub_100255BAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100253C28(char *a1, int64_t a2, char a3)
{
  result = sub_100255E28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100253C48(void *a1, int64_t a2, char a3)
{
  result = sub_1002560A0(a1, a2, a3, *v3, &qword_10093ED20, &unk_10079D460, &unk_10093F810, &qword_10079CAB0);
  *v3 = result;
  return result;
}

size_t sub_100253C88(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &unk_10093F800, &qword_1007A48D0, &type metadata accessor for REMAccountsListDataView.Model.GroupChild);
  *v3 = result;
  return result;
}

size_t sub_100253CCC(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EC48, &qword_1007B1D60, &type metadata accessor for Locale);
  *v3 = result;
  return result;
}

char *sub_100253D10(char *a1, int64_t a2, char a3)
{
  result = sub_100255F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100253D30(void *a1, int64_t a2, char a3)
{
  result = sub_1002560A0(a1, a2, a3, *v3, &qword_10093ED78, &qword_10079D4F8, &qword_10093ED80, &unk_10079D500);
  *v3 = result;
  return result;
}

char *sub_100253D70(char *a1, int64_t a2, char a3)
{
  result = sub_1002561E8(a1, a2, a3, *v3, &unk_100944050, &unk_1007A4780);
  *v3 = result;
  return result;
}

size_t sub_100253DA0(size_t a1, int64_t a2, char a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &qword_10093ECB0, &qword_10079D3D8, &qword_1009431C0, &qword_10079D3E0);
  *v3 = result;
  return result;
}

size_t sub_100253DE0(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ECA8, &qword_10079D3D0, &type metadata accessor for REMRemindersListDataView.DatesModel.Group);
  *v3 = result;
  return result;
}

void *sub_100253E24(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_100936E88, &unk_100791AC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&unk_10093F7E0, &qword_10079D618);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100253F90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1002540D8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_10093EC30, &unk_1007B60C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for NLLanguage(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100254200(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EE18, &qword_10079D5C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100254320(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EC28, &unk_10079D350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 4 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_100254420(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_100942E70, &qword_10079D348);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10025457C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_10093EDD8, &qword_10079D580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&qword_10093EDE0, &qword_10079D588);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002546B0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_100943E90, &qword_1007A4620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&qword_10093ED98, &qword_10079D520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002547F8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_10093ED88, &qword_1007A45B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&qword_10093ED90, &unk_10079D510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10025492C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED18, &qword_10079D458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100254A30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100254B78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED00, &qword_10079D438);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100254CA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ECF0, &qword_10079D428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100254DC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED08, &qword_10079D440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100254EE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ECB8, &qword_10079D3E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_100254FE8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_10093EE20, &qword_10079D5D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&qword_1009440E0, &qword_10079D5D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10025511C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EE28, &unk_10079D5E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_10025521C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093F7B0, &unk_10079D600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10025533C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_10093EE88, &unk_1007A3940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&unk_100942EA0, &unk_10079D640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100255484(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EC18, &unk_10079D328);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002555F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100255724(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&unk_100943F80, &unk_1007A46D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10025585C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_10093ECC0, &unk_10079D3F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&qword_10093ECC8, &qword_1007B4CD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100255990(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED30, &qword_10079D478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100255AB0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000F5104(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_100255BAC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_10093EDC8, &qword_10079D558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&qword_100943F30, &qword_10079D560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100255CF4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F5104(&qword_10093EDD0, &qword_10079D568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&unk_100943F50, &unk_10079D570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100255E28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EC38, &qword_10079D368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100255F94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ECE0, &qword_10079D418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002560A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1002561E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000F5104(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}